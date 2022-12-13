<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Search</title>

        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Nunito:wght@400;600;700&display=swap" rel="stylesheet">

        <!-- Styles -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"/>

        <style>
            html, body {
                height:100%;
                background-color: #666699;
                }
            .w-5 {
                display:none;
            }
        </style>
        
    </head>
    <body>

    <div class="container">
        <div class="row">
            <div class="col-md-12 p-5">
                <div class="card text-center">
                    <div class="card-header">
                        API Search
                    </div>
                    <div class="card-body">
                        <div class="search-data ">
                            <form method="POST" action="{{ URL::to('api/search') }}">
                            @csrf
                                <div class="row justify-content-center">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input class="form-control" type='text' name="search" value="" placeholder="Type to search...">
                                        </div>
                                    </div>
                                    <div class="col-md-1">
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-outline-primary">Search</button>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>

                        

                        <div class="table-responsive p-5">
                            <table class="table table-striped table-bordered table-condensed">
                                <thead>
                                    <tr>
                                        <th>UUID</th>
                                        <th>Name</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach($items as $item)
                                        <tr>
                                            <td>{{ $item->uuid }}</td>
                                            <td>{{ $item->name }}</td>
                                        </tr> 
                                    @endforeach
                                </tbody>
                            </table>

                            <div class="pag">
                                <div class="col-md-3">
                                    <p>Showing {{($items->currentPage()-1)*$items->perPage()+1}} to 
                                        {{(($items->currentPage()-1)*$items->perPage()+1) + ($items->count()-1)}} out of  {{$items->total()}}</p>
                                </div>
                                <div class="col-md-9">
                                    <nav>
                                        <ul class="pagination flex-wrap pagination-sm">
                                        {!! $items->appends($_GET)->links() !!}
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                            
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
