class Family {

  String? name;
  String? description;
  String? tel;
  String? images;

  double? latitude;
  double? longitude;

  bool? check1;
  bool? check2;
  bool? check3;
  bool? check4;
  bool? check5;
  int? rate;


  Family({
    this.name,
    this.description,
    this.tel,
    this.images,
    this.latitude,
    this.longitude,
    this.check1,
    this.check2,
    this.check3,
    this.check4,
    this.check5,
    this.rate,
  });
/*
  /// get model object from Json
  Flight.fromJson(Map<String, dynamic> json) {
    number = json['flight_number'];
    launchYear = json['launch_year'];
    missionName = json['mission_name'];
    missionPatch = json['links']['mission_patch_small'];
    source =json['links']["article_link"];
  }
*/
  //@override
  //String toString() {
    //return 'Flight{number: $number, launch_year: $launchYear}';
  //}
}
