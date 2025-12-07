@interface PlayerSourcedUserAction
- (id)timeStamp;
- (uint64_t)setTimeStamp:(uint64_t)stamp;
@end

@implementation PlayerSourcedUserAction

- (id)timeStamp
{
  v1 = swift_unknownObjectRetain();

  return v1;
}

- (uint64_t)setTimeStamp:(uint64_t)stamp
{
  *(self + 40) = stamp;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

@end