@interface APRotatingIdentifierProvider
- (APRotatingIdentifierProvider)init;
- (id)getIdentifiersWithType:(int64_t)type source:(int64_t)source processId:(id)id;
- (void)notificationReceived;
@end

@implementation APRotatingIdentifierProvider

- (id)getIdentifiersWithType:(int64_t)type source:(int64_t)source processId:(id)id
{
  sub_1BB014B48();
  sub_1BB014488();
  selfCopy = self;

  sub_1BAFD86D0(&qword_1EBC3B220, &qword_1BB019180);
  sub_1BB014698();

  type metadata accessor for RotatingIdentifier(0);
  v7 = sub_1BB014C68();

  return v7;
}

- (void)notificationReceived
{
  selfCopy = self;
  RotatingIdentifierProvider.notificationReceived()();
}

- (APRotatingIdentifierProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end