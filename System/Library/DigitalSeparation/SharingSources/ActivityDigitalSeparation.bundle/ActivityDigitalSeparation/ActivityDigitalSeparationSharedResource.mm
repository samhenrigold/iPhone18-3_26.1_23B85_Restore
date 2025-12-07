@interface ActivityDigitalSeparationSharedResource
- (NSArray)participants;
- (_TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource)init;
@end

@implementation ActivityDigitalSeparationSharedResource

- (_TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource)init
{
  *(&self->super.isa + OBJC_IVAR____TtC25ActivityDigitalSeparation39ActivityDigitalSeparationSharedResource_digitalSeparationFriends) = &_swiftEmptyArrayStorage;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActivityDigitalSeparationSharedResource();
  return [(ActivityDigitalSeparationSharedResource *)&v3 init];
}

- (NSArray)participants
{
  selfCopy = self;

  sub_15E8(v3);

  sub_2084(&qword_11370, &qword_A260);
  v4.super.isa = sub_8E34().super.isa;

  return v4.super.isa;
}

@end