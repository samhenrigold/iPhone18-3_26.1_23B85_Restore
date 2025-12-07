@interface DCPresentmentRequestedElement
- (BOOL)isEqual:(id)equal;
- (DCPresentmentRequestedElement)init;
- (int64_t)hash;
- (int64_t)retentionPeriod;
- (unint64_t)intentToRetain;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DCPresentmentRequestedElement

- (unint64_t)intentToRetain
{
  selfCopy = self;
  v4 = DCPresentmentRequestedElement.__intentToRetain.getter(selfCopy, v3);

  return v4;
}

- (int64_t)retentionPeriod
{
  selfCopy = self;
  v4 = DCPresentmentRequestedElement.retentionPeriod.getter(selfCopy, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_24565BCF4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = DCPresentmentRequestedElement.isEqual(_:)(v8);

  sub_245638A1C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v4 = DCPresentmentRequestedElement.hash.getter(selfCopy, v3);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  DCPresentmentRequestedElement.encode(with:)(coderCopy);
}

- (DCPresentmentRequestedElement)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end