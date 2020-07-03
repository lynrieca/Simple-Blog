@extends('layouts.app')

@section('content')
<div class="container" style="margin-top: 50px;">
    <div class="row justify-content-center">
      <div class="col-12 col-md-8 col-lg-8 col-xl-6">
        <div class="row">
          <div class="col text-center title">
            <h1>Edit Posts</h1>
          </div>
          </div>
          {!! Form::open(['action' => ['PostsController@update', $post->id], 'method' => 'POST']) !!}
              <div class="form-group">
                  {{Form::label('title','Title')}}
                  {{Form::text('title',$post->title, ['class'=>'form-control', 'placeholder'=>'Title'])}}
              </div>
              <div class="form-group">
                  {{Form::label('title','Description')}}
                  {{Form::textarea('desc',$post->desc, ['id'=> 'article-ckeditor', 'class'=>'form-control', 'placeholder'=>'Body'])}}
              </div>
              {{-- add this PUT refer to route method PUT|PATCH under posts.update --}}
              {{Form::hidden('_method', 'PUT')}}
              {{Form::submit('Submit', ['class'=>'btn btn-primary'])}}
          {!! Form::close() !!}
        </div>
    </div>
  </div>
@endsection