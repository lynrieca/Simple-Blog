@extends('layouts.main')


@section('content')
<div class="container" style="margin-top: 25px;">
    <div class="row justify-content-center">
        <div class="col-12 col-md-4 ">
            <div class="row">
            </div>
            <div class="row">
            @if(count($posts) > 0)
                @foreach($posts as $post)   
                    <div class="card" style="margin-bottom: 15px; width: 100%; background-color: transparent; border-color:white; text-align: center">
                        <div class="card-body">
                            <h5 class="card-title">{{$post->title}}</h5>
                            <small>Written on {{$post->created_at}}  </small>
                        </div>
                    </div>
                @endforeach
            </div>
            @else
                <div class="card" style="width: 100%; background-color: transparent; border-color:white; text-align: center">
                    <div class="card-body">
                        <p class="card-text">No posts found</p>
                    </div>
                </div>
            @endif
            <div align="center">
            {{$posts->links()}}
            </div>
        </div>
    </div>
</div>
@endsection