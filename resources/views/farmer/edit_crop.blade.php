
@extends('farmer.headerFooter')

@section('body')

    <div>
        <h1 class="text-center text-primary">Update here</h1>
    </div>
    <div class="col-lg-6 jumbotron mx-auto">

        <form method="POST" action="{{route('update_product_db')}}" enctype="multipart/form-data">
            @csrf
            <input type="hidden" name="id" class="form-control" value="{{$crop->id}}"/>
            <div class="form-group">
                <input type="hidden" name="username" class="form-control" value="{{Session::get('f_username')}}"/>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Crop Name</label>
                <input type="text" name="crop_name" class="form-control" value="{{$crop->crop_name}}"  required>
                <span>{{$errors->has('crop_name') ? $errors->first('crop_name'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Crop Type</label>
                <select class="form-control" name="crop_type" required>
                    <option value="">---Select a Name</option>
                    <option value="Fruits">Fruits</option>
                    <option value="vegetables">vegetables</option>
                    <option value="Food">Food Crops</option>
                    <option value="Others">Others crops</option>
                </select>
                <span>{{$errors->has('crop_type') ? $errors->first('crop_type'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Crop Quantity</label>
                <input type="number" name="crop_quantity" class="form-control" min="1" value="{{$crop->crop_quantity}}" required/>
                <span>{{$errors->has('crop_quantity') ? $errors->first('crop_quantity'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Crop Location</label>
                <input type="text" name="crop_location" class="form-control" min="1" value="{{$crop->crop_location}}" required/>
                <span>{{$errors->has('crop_location') ? $errors->first('crop_location'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder"> bidding Rate</label>
                <input type="number" name="bid_rate" class="form-control" value="{{$crop->bid_rate}}" min="1" required/>
                <span>{{$errors->has('bid_rate') ? $errors->first('bid_rate'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Crop Description</label>
                <input type="text" name="crop_description" class="form-control" value="{{$crop->crop_description}}" required/>
                <span>{{$errors->has('crop_description') ? $errors->first('crop_description'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Long Description</label>
                <textarea id="editor" class="form-control" name="long_description">{{$crop->long_description}}</textarea>
                <span>{{$errors->has('long_description') ? $errors->first('long_description'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder"> Date of Bidding</label>
                <input type="date" name="last_date_bidding" class="form-control" value="{{$crop->last_date_bidding}}" placeholder="" required/>
                <span>{{$errors->has('last_date_bidding') ? $errors->first('last_date_bidding'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Add Crop image-</label><br>
                <input type="file" name="crop_image" accept="image/*" ><img height="150" width="150" src="{{asset($crop->crop_image)}}">
                <span>{{$errors->has('crop_image') ? $errors->first('crop_image'): ' '}}</span>
            </div>

            <div class="form-group">
                <label class="font-weight-bolder">Another Crop image-</label><br>
                <input type="file" name="crop_image2" accept="image/*"><img height="150" width="150" src="{{asset($crop->crop_image2)}}">
                <span>{{$errors->has('crop_image2') ? $errors->first('crop_image2'): ' '}}</span>
            </div>

            <div class="form-group">
                <div class="">
                    <input class="btn-success" type="submit" name="btn" value="Update product Info">
                </div>
            </div>
        </form>

    </div>


@endsection
