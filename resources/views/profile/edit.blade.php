@extends('layouts.app')

@section('content')
<div class="container" style="margin-top: 50px;">
    <div class="row justify-content-center">
      <div class="col-12 col-md-8 col-lg-8 col-xl-6">
        <div class="row">
          <div class="col text-center title">
            <h1>Update Profile</h1>
          </div>
          </div>
          {!! Form::open(['action' => ['ProfileController@update', $user->id], 'method' => 'POST']) !!}
              <div class="form-group">
                  {{Form::label('title','Name')}}
                  {{Form::text('name',$user->name, ['class'=>'form-control'])}}
              </div>
              <div class="form-group">
                {{Form::label('title','Email Address')}}
                {{Form::text('email',$user->email, ['class'=>'form-control'])}}
            </div>
            <div class="form-group">
                {{Form::label('title','Password')}}
                {{Form::text('password',$user->password, ['class'=>'form-control'])}}
                {{-- {{Form::input('password', 'password', $user->password), ['class'=>'form-control']}} --}}
                {{-- {{Form::password('password', $user->password, ['class' => 'awesome']);}} --}}
            </div>
            <div class="form-group">
                {{Form::label('title','Repeat Password')}}
                {{Form::text('password',$user->password, ['class'=>'form-control'])}}
            </div>
              {{-- add this PUT refer to route method PUT|PATCH under posts.update --}}
              {{Form::hidden('_method', 'PUT')}}
              {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
          {!! Form::close() !!}
        </div>
    </div>
  </div>
@endsection