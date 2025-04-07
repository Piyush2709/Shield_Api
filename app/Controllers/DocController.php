<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use CodeIgniter\HTTP\ResponseInterface;
use OpenApi\Generator;
class DocController extends BaseController
{
    public function download_swagger()
    {
        $swagger = Generator::scan([ APPPATH ."Controllers"]);
          
//         //$swagger = Generator::scan([
//     APPPATH . "Controllers/MyController.php",
//     APPPATH . "Controllers/Api",
//     APPPATH . "Controllers/Admin/AdminController.php",
// ]);
        $jsonContent = $swagger->toJson();
        $filePath = FCPATH ."Swagger.json";
        file_put_contents($filePath, $jsonContent);
        return $this->response->download($filePath,null);
        

    }
}
?>