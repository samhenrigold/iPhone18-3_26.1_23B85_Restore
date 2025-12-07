@interface _DYImage
- (NSArray)segments;
- (NSUUID)uuid;
- (_DYImage)init;
- (_DYImage)initWithInternal:(BOOL)internal;
- (_DYSharedCache)sharedCache;
- (unint64_t)address;
- (unint64_t)pointerSize;
- (unint64_t)preferredLoadAddress;
- (void)getFastPathData:(_DYImageFastPathData *)data;
@end

@implementation _DYImage

- (void)getFastPathData:(_DYImageFastPathData *)data
{
  selfCopy = self;
  sub_1AE4B82C4(data);
}

- (_DYImage)initWithInternal:(BOOL)internal
{
  *(&self->super.isa + OBJC_IVAR____DYImage____lazy_storage___segments) = 0;
  *(&self->super.isa + OBJC_IVAR____DYImage_impl) = 0;
  v4.receiver = self;
  v4.super_class = _DYImage;
  return [(_DYImage *)&v4 init];
}

- (NSUUID)uuid
{
  v3 = type metadata accessor for Image.Info(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  result = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  if (*(&self->super.isa + OBJC_IVAR____DYImage_impl))
  {
    selfCopy = self;

    sub_1AE4B55F8(v5);

    sub_1AE4BA820(v5, v9);
    sub_1AE4BA56C(v5);
    v11 = sub_1AE4EAB10();
    v12 = *(v11 - 8);
    v13 = (*(v12 + 48))(v9, 1, v11);
    v14 = 0;
    if (v13 != 1)
    {
      v15 = sub_1AE4EAAD0();
      (*(v12 + 8))(v9, v11);
      v14 = v15;
    }

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (unint64_t)address
{
  if (*(self + OBJC_IVAR____DYImage_impl))
  {
    selfCopy = self;

    v3 = sub_1AE4BA6DC();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (unint64_t)pointerSize
{
  v2 = *(self + OBJC_IVAR____DYImage_impl);
  if (v2)
  {
    return *(*(v2 + OBJC_IVAR____TtCV4Dyld5Image4Impl_context) + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_pointerSize);
  }

  __break(1u);
  return self;
}

- (unint64_t)preferredLoadAddress
{
  v3 = type metadata accessor for Image.Info(0);
  result = MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(&self->super.isa + OBJC_IVAR____DYImage_impl))
  {
    selfCopy = self;

    sub_1AE4B55F8(v6);

    v8 = &v6[*(v3 + 28)];
    v9 = *v8;
    v10 = v8[8];
    sub_1AE4BA56C(v6);
    if (v10)
    {
      return 0;
    }

    else
    {
      return v9;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_DYSharedCache)sharedCache
{
  selfCopy = self;
  sub_1AE4E24FC();
  v4 = v3;

  return v4;
}

- (NSArray)segments
{
  selfCopy = self;
  sub_1AE4E2604();

  type metadata accessor for _DYSegment(v3);
  v4 = sub_1AE4EAE70();

  return v4;
}

- (_DYImage)init
{
  *(&self->super.isa + OBJC_IVAR____DYImage____lazy_storage___segments) = 0;
  *(&self->super.isa + OBJC_IVAR____DYImage_impl) = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end