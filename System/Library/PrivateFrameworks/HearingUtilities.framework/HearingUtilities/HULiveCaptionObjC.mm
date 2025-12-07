@interface HULiveCaptionObjC
- (HULiveCaptionObjC)init;
- (HULiveCaptionObjC)initWithRootObject:(id)object;
- (id)text;
- (int64_t)resultType;
@end

@implementation HULiveCaptionObjC

- (HULiveCaptionObjC)initWithRootObject:(id)object
{
  *(&self->super.isa + OBJC_IVAR___HULiveCaptionObjC_rootObject) = object;
  v6.receiver = self;
  v6.super_class = type metadata accessor for HULiveCaptionObjC();
  objectCopy = object;
  return [(HULiveCaptionObjC *)&v6 init];
}

- (id)text
{
  selfCopy = self;
  sub_1DA67E4F4();

  v3 = sub_1DA67E574();

  return v3;
}

- (int64_t)resultType
{
  selfCopy = self;
  sub_1DA67E4E4();
  v3 = sub_1DA67E544();

  return v3;
}

- (HULiveCaptionObjC)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end