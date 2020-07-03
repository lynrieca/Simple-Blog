<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Posts;
class PostsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
        $this->middleware('auth', ['except'=>['index']]);

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Posts::all(); 
        $posts = Posts::orderBy('created_at', 'desc')->paginate(5);
        return view('index')->with('posts', $posts);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('posts.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
       //this is validation for submitting data
       $this->validate($request, [
        'title' => 'required',
        'desc' => 'required'
        ]);

        //Create Post
        $post = new Posts;
        $post->title = $request->input('title');
        $post->desc= $request->input('desc');
        $post->user_id = auth()->user()->id;
        $post->save();

        return redirect('home')->with('success', 'Successfully Added');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $showposts = Posts::find($id);
        return view ('posts.show')->with('showposts', $showposts);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $post = Posts::find($id);
        return view('posts.edit')->with('post', $post);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //this is validation for submitting data
        $this->validate($request, [
            'title' => 'required',
            'desc' => 'required'
        ]);

        //Create Post
        $post = Posts::find($id);
        $post->title = $request->input('title');
        $post->desc= $request->input('desc');
        $post->user_id = auth()->user()->id;
        $post->save();

        return redirect('home')->with('success', 'Successfully Updated');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $post = Posts::find($id);
        $post->delete();

        return redirect('home')->with('success', 'Successfully Deleted');
    }
}
