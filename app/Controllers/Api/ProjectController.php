<?php

namespace App\Controllers\Api;

use CodeIgniter\HTTP\ResponseInterface;
use CodeIgniter\RESTful\ResourceController;

class ProjectController extends ResourceController
{
    protected $modelName= "App\Models\ProjectModel";
    protected $format ="Json";
/**
 * @OA\Post(
 * path="/api/addproject",
 * summary="Add a new project",
 * tags={"Projects"},
 * @OA\RequestBody(
 * required=true,
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="project_name", type="string", example="Project A"),
 * @OA\Property(property="Project_buget", type="number", example=10000),
 * @OA\Property(property="project_description", type="string", example="Description of Project A")
 * )
 * ),
 * @OA\Response(
 * response=200,
 * description="Project added successfully",
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="Status", type="boolean", example=true),
 * @OA\Property(property="message", type="string", example="Project Added Successfully")
 * )
 * ),
 * @OA\Response(
 * response=400,
 * description="Validation errors",
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="ststus", type="boolean", example=false),
 * @OA\Property(property="message", type="string", example="Fail to Register Due to Incomplete Fields"),
 * @OA\Property(property="error", type="object", example={"project_name": "The project_name field is required."})
 * )
 * ),
 * @OA\Response(
 * response=500,
 * description="Cant add project",
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="Status", type="boolean", example=false),
 * @OA\Property(property="message", type="string", example="Cant Add Project")
 * )
 * ),
 * security={{"bearerAuth": {}}}
 * )
 */
    
    public function addproject()
    {
        $validationrule=[
            "project_name"=>"required",
            "Project_buget"=>"required",
            "project_description"=>"required"
        ];
        if(!$this->validate($validationrule))
        {
            return $this->respond([
                 "ststus"=>false,
                 "message"=>"Fail to Register Due to Incomplete Fields",
                 "error"=>$this->validator->getErrors()
            ]);
        }
        $userID = auth()->user()->id;
       if($this->model->insert([
            "user_id"=> $userID,
            "project_name"=>$this->request->getVar("project_name"),
            "Project_buget"=>$this->request->getVar("Project_buget"),
            "project_description"=>$this->request->getVar("project_description"),
        ]))
        {
            return $this->respond([
                "Status"=>true,
                "message"=> "Project Added Successfully"
                ]);
        }
        else{
            return $this->respond([
                "Status"=>false,
                "message"=> "Cant Add Project"
                ]);
        }
    }
/**
 * @OA\Get(
 * path="/api/getproject",
 * summary="Get projects for the authenticated user",
 * tags={"Projects"},
 * @OA\Response(
 * response=200,
 * description="Projects retrieved successfully",
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="Status", type="boolean", example=true),
 * @OA\Property(
 * property="projects",
 * type="array",
 * @OA\Items(
 * type="object",
 * @OA\Property(property="id", type="integer", example=1),
 * @OA\Property(property="user_id", type="integer", example=123),
 * @OA\Property(property="project_name", type="string", example="Project A"),
 * @OA\Property(property="Project_buget", type="number", example=10000),
 * @OA\Property(property="project_description", type="string", example="Description of Project A"),
 * @OA\Property(property="created_at", type="string", format="date-time", example="2024-10-26T10:00:00Z"),
 * @OA\Property(property="updated_at", type="string", format="date-time", example="2024-10-26T10:00:00Z")
 * )
 * )
 * )
 * ),
 * @OA\Response(
 * response=404,
 * description="No projects found",
 * @OA\JsonContent(
 * type="object",
 * @OA\Property(property="Status", type="boolean", example=false),
 * @OA\Property(property="Message", type="string", example="No Projects Founds")
 * )
 * ),
 * security={{"bearerAuth": {}}}
 * )
 */
    
    public function getproject()
    {
        $userId = auth()->user()->id;
        $project =$this->model->where("user_id",$userId)->findAll();
        if($project)
        {
            return $this->respond([
                "Status"=>true,
                "projects"=> $project
                ]);
        }
        else{
            return $this->respond([
                "Status"=>false,
                "Message"=>"No Projects Founds"
                ]);
        }
    }
}
//task and subtasks in crm.
// client invoice. create and shows due and all.