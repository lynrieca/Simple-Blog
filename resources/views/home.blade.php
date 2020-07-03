@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 col-md-8 ">
            <div class="row">
                <div class="col-md-8 title">
                    <h1>Dashboard</h1>
                </div>
                <div class="col-md-4">
                    {!! Form::open(['action' => ['HomeController@search'], 'method' => 'GET'])  !!}
                    <div class="input-group">
                        <input type="search" name="search" class="form-control">
                        <span class="input-group-prepend">
                            <button type="submit" class="btn btn-primary" >Search</button>
                        </span>
                    </div>
                    {!! Form::close()!!}
                </div>
            </div>
            <div class="row">
                <div class="col-md-8">
                </div>
                
            </div>
            <div class="row">
                @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                @endif
                    @if(count($posts) > 0 )
                    <table class="table" style="color: #e7bd74; text-align: center;">
                        <thead class="thead-inverse">
                            <tr>
                                <th class="table-header">@sortablelink('title', 'Title')</th>
                                <th class="table-header">@sortablelink('desc', 'Description')</th>
                                <th class="table-header">@sortablelink('created_at', 'Created')</th>
                                <th class="table-header">@sortablelink('updated_at', 'Updated')</th>
                                <th class="table-header" colspan="2">Action</th>
                            </tr>
                        </thead>
                        @foreach($posts as $post)
                        <tbody >
                            <tr>
                                <td>{{ $post->title }}</td>
                                <td> {!!$post->desc!!} </td>
                                <td> {!!$post->created_at!!} </td>
                                <td> {!!$post->updated_at!!} </td>
                                <td>
                                    <a href='/SimpleBlog/public/posts/{{ $post->id }}/edit' class="btn btn-primary" >Edit</a> 
                                </td> 
                                 <td>
                                    {!! Form::open(['action' => ['PostsController@destroy', $post->id], 'method' => 'POST', 'class' => 'pull-right'])  !!}
                                        {{Form::hidden('_method', 'DELETE')}}
                                        {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                                    {!! Form::close()!!}
                                </td> 
                            </tr>
                        </tbody>
                        @endforeach
                    </table>
                    @else
                        <p>You have no post</p>
                    @endif
            </div>
            <div align="center">
                {{$posts->links()}}
            </div>
            <div align="right" class="">
                <a href="/SimpleBlog/public/posts/create" class="btn btn-primary">New</a>
            </div>
        </div>

    </div>
</div>
@endsection
