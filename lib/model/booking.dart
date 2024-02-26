class Booking {
  String id;
  String idHotel;
  String cover;
  String name;
  String date;
  int guest;
  String location;
  String breakfast;
  String checkInTime;
  int night;
  int serviceFee;
  int activities;
  int totalPayment;
  String status;
  bool isDone;

  Booking({
    required this.id,
    required this.idHotel,
    required this.cover,
    required this.name,
    required this.date,
    required this.guest,
    required this.location,
    required this.breakfast,
    required this.checkInTime,
    required this.night,
    required this.serviceFee,
    required this.activities,
    required this.totalPayment,
    required this.status,
    required this.isDone,
  });

  Booking copyWith({
    String? id,
    String? idHotel,
    String? cover,
    String? name,
    String? date,
    int? guest,
    String? location,
    String? breakfast,
    String? checkInTime,
    int? night,
    int? serviceFee,
    int? activities,
    int? totalPayment,
    String? status,
    bool? isDone,
  }) =>
      Booking(
        id: id ?? this.id,
        idHotel: idHotel ?? this.idHotel,
        cover: cover ?? this.cover,
        name: name ?? this.name,
        date: date ?? this.date,
        guest: guest ?? this.guest,
        location: location ?? this.location,
        breakfast: breakfast ?? this.breakfast,
        checkInTime: checkInTime ?? this.checkInTime,
        night: night ?? this.night,
        serviceFee: serviceFee ?? this.serviceFee,
        activities: activities ?? this.activities,
        totalPayment: totalPayment ?? this.totalPayment,
        status: status ?? this.status,
        isDone: isDone ?? this.isDone,
      );

  factory Booking.fromJson(Map<String, dynamic> json) => Booking(
        id: json["id"],
        idHotel: json["id_hotel"],
        cover: json["cover"],
        name: json["name"],
        date: json["date"],
        guest: json["guest"],
        location: json["location"],
        breakfast: json["breakfast"],
        checkInTime: json["check_in_time"],
        night: json["night"],
        serviceFee: json["service_fee"],
        activities: json["activities"],
        totalPayment: json["total_payment"],
        status: json["status"],
        isDone: json["is_done"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "id_hotel": idHotel,
        "cover": cover,
        "name": name,
        "date": date,
        "guest": guest,
        "location": location,
        "breakfast": breakfast,
        "check_in_time": checkInTime,
        "night": night,
        "service_fee": serviceFee,
        "activities": activities,
        "total_payment": totalPayment,
        "status": status,
        "is_done": isDone,
      };
}

Booking get initBooking => Booking(
      id: '',
      idHotel: '',
      cover: '',
      name: '',
      location: '',
      date: '',
      guest: 0,
      breakfast: '',
      checkInTime: '',
      night: 0,
      serviceFee: 0,
      activities: 0,
      totalPayment: 0,
      status: '',
      isDone: false,
    );
