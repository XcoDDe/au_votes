class CandidatePosts{

  String _postImage='';
  String _message='';
  String _vision='';
  String _datePosted='';
  String _timePosted='';
  String _secondsPosted='';
  String _yearPosted='';


  //setting postImage
  set setPostImage(String image){
    _postImage=image;
  }
  //getting postImage to use
   get postImage{
    _postImage;
  }
  
  //setting message collected from user
   set setMessage(String message){
    _message=message;
  }

//getting message after setting message or collected message or calling setMessage to use for the app
   get message{
    _message;
  }

//setting vision collected from the user
   set setVision(String vision){
    _vision=vision;
  }

//getting vision after calling setVision method to use for the app
   get vision{
    _vision;
  }

  set setDatePosted(String dateposted){
    _datePosted=dateposted;
  }
  get datePosted{
    return _datePosted;
  }

  set setTimePosted(String timeposted){
    _timePosted=timeposted;
  }
  get timePosted{
    return _timePosted;
  }

  set setYearPosted(String yearposted){
    _yearPosted=yearposted;
  }
  get yearPosted{
    return _yearPosted;
  }

  set setSecondsPosted(String secondsposted){
    _secondsPosted=secondsposted;
  }
  get secondsPosted{
    return _secondsPosted;
  }


  
}