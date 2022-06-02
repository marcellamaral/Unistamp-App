class TimeLine {
  int year;
  String url;
  String text;
  TimeLine({
    required this.year,
    required this.url,
    required this.text,
  });

  factory TimeLine.fromJson(Map json) {
    return TimeLine(year: json['year'], url: json['url'], text: json['text']);
  }
}
