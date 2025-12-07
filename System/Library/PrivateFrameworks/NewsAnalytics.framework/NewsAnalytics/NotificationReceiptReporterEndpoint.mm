@interface NotificationReceiptReporterEndpoint
- (NSString)name;
- (NSURL)url;
- (id)endpointURLWithContentType:(int64_t)type;
@end

@implementation NotificationReceiptReporterEndpoint

- (NSString)name
{

  v2 = sub_217D8951C();

  return v2;
}

- (NSURL)url
{
  v3 = sub_217D87BAC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC13NewsAnalyticsP33_73410A717757B42F2A6F1BC37191285735NotificationReceiptReporterEndpoint_notificationReceiptURL, v3);
  v7 = sub_217D87B7C();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (id)endpointURLWithContentType:(int64_t)type
{
  sub_217A520D0(0, &qword_2811C8CA0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  if (type >= 8)
  {
    v13 = sub_217D87BAC();
    (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    v12 = 0;
  }

  else
  {
    v8 = *off_278232AA0[type];
    v9 = sub_217D87BAC();
    v10 = *(v9 - 8);
    (*(v10 + 16))(v7, self + v8, v9);
    sub_217D87BAC();
    (*(v10 + 56))(v7, 0, 1, v9);
    v11 = sub_217D87B7C();
    (*(v10 + 8))(v7, v9);
    v12 = v11;
  }

  return v12;
}

@end