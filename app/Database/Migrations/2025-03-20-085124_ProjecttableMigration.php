<?php

namespace App\Database\Migrations;

use CodeIgniter\Database\Migration;

class ProjecttableMigration extends Migration
{
    public function up()
    {
        $this->forge->addField([
            "id"=> [
                "type"=> "INT",
                "auto_increment"=>true,
                "unsigned"=>true
                ],
                "user_id"=>[
                    "type"=> "INT",
                    "unsigned"=>true
                    ],
                "project_name"=> [
                    "type"=> "VARCHAR",
                    "constraint"=>100,
                    "null"=> false
                ],
                "Project_buget"=> [
                    "type"=> "VARCHAR",
                    "constraint"=>100,
                    "null"=> false
                ],
                "project_description"=>[
                    "type"=>"Text"
                ],
                "created_at datetime default current_timestamp"
            ]);
            $this->forge->addPrimaryKey("id");
            $this->forge->createTable("Projects");
    }

    public function down()
    {
        $this->forge->dropTable("Projects");
    }
}
