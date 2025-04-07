<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return view("Swagger_ui/index.html");
    }
}
