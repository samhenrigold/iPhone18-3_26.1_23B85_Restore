@interface VoicemailMessageWrapper
- (BOOL)isUnread;
- (NSDate)date;
- (NSString)description;
- (NSString)senderDestinationID;
- (NSString)vmIdentifier;
- (NSURL)dataURL;
- (_TtC18PhoneIntentHandler23VoicemailMessageWrapper)init;
- (double)duration;
@end

@implementation VoicemailMessageWrapper

- (NSString)vmIdentifier
{
  v3 = sub_100030E08();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100030E28();
  sub_100030DF8();

  (*(v4 + 8))(v6, v3);
  v8 = sub_100030F58();

  return v8;
}

- (NSDate)date
{
  v3 = sub_100030DD8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100030E38();

  v8.super.isa = sub_100030DB8().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (double)duration
{
  selfCopy = self;
  sub_100030E88();
  v4 = v3;

  return v4;
}

- (NSString)senderDestinationID
{
  selfCopy = self;
  sub_100030E68();

  v3 = sub_100030F58();

  return v3;
}

- (BOOL)isUnread
{
  selfCopy = self;
  v3 = sub_100030E78();

  return (v3 & 1) == 0;
}

- (NSURL)dataURL
{
  v3 = sub_100030DA8();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_100028B98(v6);

  sub_100030D88(v8);
  v10 = v9;
  (*(v4 + 8))(v6, v3);

  return v10;
}

- (NSString)description
{
  selfCopy = self;
  sub_100028E04();

  v3 = sub_100030F58();

  return v3;
}

- (_TtC18PhoneIntentHandler23VoicemailMessageWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end