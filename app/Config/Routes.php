<?php

use CodeIgniter\Router\RouteCollection;
use App\Controllers\Api\AuthController;
use App\Controllers\Api\ProjectController;
use App\Controllers\DocController;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');

//service('auth')->routes($routes);

//api route


$routes->post("api/registeruser",[AuthController::class,"registeruser"],['filter' => 'cors']);
$routes->post("api/login",[AuthController::class,"login"],['filter' => 'cors']);

$routes->options("api/registeruser", static function () {
    return service('response')->setStatusCode(204);
});
$routes->options("api/login", static function () {
    return service('response')->setStatusCode(204);
});

//protected Apis  need token/permission.
$routes->group("api",["namespace"=>"App\Controllers\Api","filter"=>"shield_auth","cors"],function($routes)
{
    $routes->options('(:any)', static function () {
        $response = service('response');
        return $response->setStatusCode(204); // No content response
    });

    $routes->get("profile",[AuthController::class,"profile"]);
    $routes->get("logout",[AuthController::class,"logout"]);

    $routes->post("addproject",[ProjectController::class,"addproject"]);
    $routes->get("getproject",[ProjectController::class,"getproject"]);
});
//  to Convert  Annotations and  download  Swagger.json file.
$routes->get("download_swagger",[DocController::class,"download_swagger"]);
?>