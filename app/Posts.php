<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Kyslik\ColumnSortable\Sortable;

class Posts extends Model
{
    use Sortable;

    protected $fillabe = ['title', 'desc', 'created_at', 'updated_at'];

      
    public $sortable = ['title',
                        'desc',
                        'created_at',
                        'updated_at'];
    

    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }
}
