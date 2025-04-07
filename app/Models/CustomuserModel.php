<?php

namespace App\Models;

use CodeIgniter\Model;
use CodeIgniter\Shield\Models\UserModel as usermodel;
use CodeIgniter\Shield\Entities\User;
class CustomuserModel extends usermodel
{
    protected $primaryKey     = 'id';
    protected $returnType     = User::class;
    protected $useSoftDeletes = true;
    protected $allowedFields  = [
        'username',
        'status',
        'status_message',
        'active',
        'last_active',
        'gender',
        'ph_no'
    ];
}