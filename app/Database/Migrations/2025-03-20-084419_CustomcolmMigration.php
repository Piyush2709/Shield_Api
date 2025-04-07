<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class CustomcolmMigration extends Migration
{
    public function up()
    {
        $this->forge->addColumn("users",[
            "gender"=>[
                "type"=>"ENUM",
                "constraint"=>["male","female","other"],
                "null"=>true
            ],
            "ph_no"=>[
                "type"=> "VARCHAR",
                "constraint"=>25,
                "null"=>true
            ]
            ]);
    }

    public function down()
    {
        $this->forge->dropColumn("users",["gender","ph_no"]);
    }
}
