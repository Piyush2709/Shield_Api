<?php

namespace App\Controllers\Api;

use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;
use App\Models\CustomuserModel; //import custom  userModel. 
use CodeIgniter\Shield\Entities\User; //import userEntity.
use CodeIgniter\Shield\Models\UserModel; //import shield userModel.

/**
 * @OA\OpenApi(
 *     @OA\Info(
 *         title="Author Api",
 *         version="1.0.0",
 *         description="API Documentation"
 *     ),
 * @OA\Server(
 *      url="https://api.karmacraft.in",
 *      description="this is Local Server"
 * ),
 *     @OA\Components(
 *         @OA\SecurityScheme(
 *             securityScheme="bearerAuth",
 *             type="http",
 *             scheme="bearer"
 *         )
 *     )
 * )
 */


class AuthController extends ResourceController
{
    protected $format="json";

    //Start Writing Annotations above Method.
    /**
 * @OA\Post(
 *      path="/api/registeruser",
 *      summary="User Registration API",
 *      description="Registers a new user",
 *      tags={"Author"},
 *      @OA\RequestBody(
 *          required=true,
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="name", type="string", example="Piyush"),
 *              @OA\Property(property="email", type="string", example="Piyush@gmail.com"),
 *              @OA\Property(property="username", type="string", example="Piyuu"),
 *              @OA\Property(property="password", type="string", format="password", example="PA@123"),
 *              @OA\Property(property="gender", type="string", example="Male"),
 *              @OA\Property(property="ph_no", type="string", example="7038001197")
 *          )
 *      ),
 *      @OA\Response(
 *          response=200,
 *          description="User Registered Successfully",
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="status", type="boolean", example=true),
 *              @OA\Property(property="message", type="string", example="User Register Successful")
 *          )
 *      ),
 *      @OA\Response(
 *          response=400,
 *          description="Validation Error",
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="status", type="boolean", example=false),
 *              @OA\Property(property="message", type="string", example="Fail to Register Due to Incomplete Fields"),
 *              @OA\Property(property="error", type="object")
 *          )
 *      )
 * )
 */

    public function registeruser()
    {
        $validationrule=[
            "username"=>"required",
            "email"=>"required",
            "password"=>"required",
            "name"=>"required",
            "gender"=>"required"
        ];
        if(!$this->validate($validationrule))
        {
            return $this->respond([
                 "ststus"=>false,
                 "message"=>"Fail to Register Due to Incomplete Fields",
                 "error"=>$this->validator->getErrors()
            ]);
        }
        $modelobj =new CustomuserModel();
        $entityobj =new User([
            "name"=>$this->request->getVar("name"),
            "username"=>$this->request->getVar("username"),
            "password"=>$this->request->getVar("password"),
            "gender"=>$this->request->getVar("gender"),
            "email"=>$this->request->getVar("email"),
            "ph_no"=>$this->request->getVar("ph_no")
        ]);
        if($modelobj->save($entityobj))
        {
            return $this->respond([
                "status"=>true,
                "message"=>"User Register Successfull"
            ]);
        }
        else{
            return $this->respond([
                "status"=>false,
                "message"=>"Fail to Register"
            ]);
        }
    }

    /**
 * @OA\Post(
 *      path="/api/login",
 *      summary="User Login API",
 *      description="Allows a user to log in",
 *      tags={"Author"},
 *      @OA\RequestBody(
 *          required=true,
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="email", type="string", example="Piyush@gmail.com"),
 *              @OA\Property(property="password", type="string", format="password", example="PA@123")
 *          )
 *      ),
 *      @OA\Response(
 *          response=200,
 *          description="User Login Successful",
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="status", type="boolean", example=true),
 *              @OA\Property(property="message", type="string", example="Login Success"),
 *              @OA\Property(property="Token", type="string", example="Bearer eyJhbGciOiJIUzI1...")
 *          )
 *      ),
 *      @OA\Response(
 *          response=401,
 *          description="Unauthorized",
 *          @OA\JsonContent(
 *              type="object",
 *              @OA\Property(property="status", type="boolean", example=false),
 *              @OA\Property(property="message", type="string", example="Login Fail")
 *          )
 *      )
 * )
 */

    public function login()
    {
        $validationrule=[
            "email"=> "required",
            "password"=> "required",
        ];
        if(!$this->validate($validationrule))
        {
            return $this->respond([
                "status"=>false,
                "message"=> "Fill Required Fillls",
                "Errors"=>$this->validator->getErrors()
            ]);
        }
        $creadentials=[
            "email"=>$this->request->getVar("email"),
            "password"=>$this->request->getVar("password"),
        ];
        try{
            if(auth()->loggedIn())
            {
                auth()->logout();
            }
            $loginAttempt = auth()->attempt($creadentials);
            if(!$loginAttempt->isOK())
            {
                return $this->respond([
                    "status"=>false,
                    "message"=> "Login Fail"
                    ]);
            }
            else
            {
                $userID=auth()->user()->id;
                $shieldModelobj = new UserModel;
                $userInfo =$shieldModelobj->findById($userID);
                $tokenInfo= $userInfo->generateAccessToken("123Piy26Adake");
                $raw_toekn=$tokenInfo->raw_token;
                return $this->respond([
                    "status"=>true,
                    "message"=> "Login Success",
                    "Token"=>$raw_toekn
                 ]);
            }
        }
        catch(Exception $e)
        {
            return $this->respond([
                "status"=>false,
                "message"=> $e->getMessage()
                ]);
        }
    }
        /**
     * @OA\Get(
     *      path="/api/profile",
     *      summary="User Profile API",
     *      description="Fetches the authenticated user's profile information",
     *      tags={"Author"},
     *      security={{"bearerAuth":{}}},
     *      @OA\Response(
     *          response=200,
     *          description="Profile Information Retrieved Successfully",
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="status", type="boolean", example=true),
     *              @OA\Property(property="message", type="string", example="Profile Information"),
     *              @OA\Property(property="Data", type="object")
     *          )
     *      ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthorized",
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="status", type="boolean", example=false),
     *              @OA\Property(property="message", type="string", example="Unauthorized")
     *          )
     *      )
     * )
     */
    public function profile()
    {
        $userdata = auth("tokens")->user();
        return $this->respond([
            "status" => true,
            "message" => "Profile Information",
            "Data" => $userdata
        ]);
    }

    /**
     * @OA\Get(
     *      path="/api/logout",
     *      summary="User Logout API",
     *      description="Logs out the authenticated user and revokes all access tokens",
     *      tags={"Author"},
     *      security={{"bearerAuth":{}}},
     *      @OA\Response(
     *          response=200,
     *          description="User Logged Out Successfully",
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="status", type="boolean", example=true),
     *              @OA\Property(property="message", type="string", example="User Logged Out")
     *          )
     *      ),
     *      @OA\Response(
     *          response=401,
     *          description="Unauthorized",
     *          @OA\JsonContent(
     *              type="object",
     *              @OA\Property(property="status", type="boolean", example=false),
     *              @OA\Property(property="message", type="string", example="Unauthorized")
     *          )
     *      )
     * )
     */
    public function logout()
    {
        auth()->logout();
        auth()->user()->revokeAllAccessTokens();
        return $this->respond([
            "status" => true,
            "message" => "User Logged Out"
        ]);
    }
}