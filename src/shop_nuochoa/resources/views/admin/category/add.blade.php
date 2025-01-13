@extends('layouts.admin')
<title>Thêm danh mục</title>
@section('content')
    <div class="card">
        <div class="card-header">
            <h4>Thêm Danh Mục</h4>
        </div>
        <div class="card-body">
            <form action="{{ url('insert-category') }}" method="POST" enctype="multipart/form-data">
                @csrf

                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label for="">Tên</label>
                        <input type="text" class="form-control" name="name">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Từ Khóa</label>
                        <input type="text" class="form-control" name="slug">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Mô Tả</label>
                        <textarea name="description" id="content" rows="3" class="form-control"></textarea>                  
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Ẩn</label>
                        <input type="checkbox" name="status">
                    </div>

                    <div class="col-md-6 mb-3">
                        <label for="">Thịnh Hành</label>
                        <input type="checkbox" name="popular">
                    </div>

                    {{-- <div class="col-md-12 mb-3">
                        <label>Meta Title</label>
                        <input type="text" rows="3" class="form-control" name="meta_title">
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Meta Keywords</label>
                        <textarea name="meta_keywords" rows="3" class="form-control"></textarea>
                    </div>

                    <div class="col-md-12 mb-3">
                        <label for="">Meta Description</label>
                        <textarea name="meta_description" rows="3" class="form-control"></textarea>
                    </div> --}}
                    <div class="col-md-12">
                        <input type="file" name="image" class="form-control">
                    </div>

                    <div class="col-md-12">
                        <button type="submit" class="btn btn-primary"> Thêm </button>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection

@section('scripts')
    <!-- Thêm Trumbowyg -->
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/trumbowyg/dist/ui/trumbowyg.min.css">
    <script src="https://cdn.jsdelivr.net/npm/trumbowyg/dist/trumbowyg.min.js"></script>

    <script>
        var $jq = jQuery.noConflict();
        $jq(document).ready(function() {
            $jq('#content').trumbowyg({
                lang: 'vi',
                btns: [
                    ['viewHTML'],
                    ['formatting'],
                    ['strong', 'em', 'del'],
                    ['superscript', 'subscript'],
                    ['link'],
                    ['insertImage'],
                    ['unorderedList', 'orderedList'],
                    ['removeformat'],
                    ['fullscreen']
                ],
                autogrow: true
            });
        });
    </script>
@endsection
