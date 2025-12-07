@interface ADClientIdentifierProvider
- (ADClientIdentifierProvider)init;
- (id)getIdentifiersWithType:(int64_t)type;
- (void)notificationReceived;
@end

@implementation ADClientIdentifierProvider

- (ADClientIdentifierProvider)init
{
  ObjectType = swift_getObjectType();
  sub_264E56344();
  swift_allocObject();
  v3 = sub_264E56334();
  sub_264E56324();
  swift_allocObject();
  v4 = sub_264E56314();
  v5 = sub_264E536C4(v3, v4, objc_allocWithZone(ObjectType));
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

- (id)getIdentifiersWithType:(int64_t)type
{
  sub_264E560B4();
  selfCopy = self;

  sub_264E51798(&qword_27FFB6EF8, &qword_264E57E10);
  sub_264E560C4();

  type metadata accessor for ClientRotatingIdentifier();
  v5 = sub_264E563C4();

  return v5;
}

- (void)notificationReceived
{
  sub_264E560B4();
  selfCopy = self;

  sub_264E560C4();
}

@end