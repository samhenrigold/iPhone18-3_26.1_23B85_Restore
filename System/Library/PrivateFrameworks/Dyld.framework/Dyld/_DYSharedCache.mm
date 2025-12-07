@interface _DYSharedCache
+ (id)installedSharedCaches;
+ (id)installedSharedCachesForSystemPath:(id)path;
- (BOOL)mappedPrivate;
- (BOOL)pinMappings;
- (NSArray)filePaths;
- (NSArray)images;
- (NSArray)subCaches;
- (NSData)localSymbolData;
- (NSUUID)aotUuid;
- (NSUUID)uuid;
- (_DYSharedCache)init;
- (_DYSharedCache)initWithInternal:(BOOL)internal;
- (unint64_t)address;
- (unint64_t)aotAddress;
- (unint64_t)preferredLoadAddress;
- (unint64_t)vmsize;
- (void)unpinMappings;
@end

@implementation _DYSharedCache

- (_DYSharedCache)initWithInternal:(BOOL)internal
{
  *(&self->super.isa + OBJC_IVAR____DYSharedCache____lazy_storage___images) = 0;
  *(&self->super.isa + OBJC_IVAR____DYSharedCache____lazy_storage___subCaches) = 0;
  v3 = (&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  *v3 = 0;
  v3[1] = 0;
  v5.receiver = self;
  v5.super_class = _DYSharedCache;
  return [(_DYSharedCache *)&v5 init];
}

- (unint64_t)vmsize
{
  selfCopy = self;
  v6 = sub_1AE4B5228(selfCopy, v3, v4, v5);

  return v6;
}

- (unint64_t)address
{
  selfCopy = self;
  v6 = sub_1AE4B5380(selfCopy, v3, v4, v5);

  return v6;
}

- (NSUUID)uuid
{
  v3 = sub_1AE4EAB10();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  sub_1AE4BD300(selfCopy, v8, v9, v10);

  v11 = sub_1AE4EAAD0();
  (*(v4 + 8))(v6, v3);

  return v11;
}

- (BOOL)mappedPrivate
{
  if (!*(&self->super.isa + OBJC_IVAR____DYSharedCache_impl))
  {
    __break(1u);
    goto LABEL_5;
  }

  self = swift_weakLoadStrong();
  if (!self)
  {
LABEL_5:
    __break(1u);
    return self;
  }

  v2 = *(&self->super.isa + OBJC_IVAR____TtCV4Dyld8Snapshot14DecoderContext_privateSharedRegion);

  LOBYTE(self) = v2;
  return self;
}

- (unint64_t)preferredLoadAddress
{
  selfCopy = self;
  v6 = sub_1AE4E2FC4(selfCopy, v3, v4, v5);

  return v6;
}

- (NSArray)filePaths
{
  v2 = *(&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  if (v2)
  {
    v3 = *(&self[1].super.isa + OBJC_IVAR____DYSharedCache_impl);
    selfCopy = self;
    sub_1AE4BD9A8(v2, v3);
    sub_1AE4CE2F8();

    v5 = sub_1AE4EAE70();

    return v5;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSUUID)aotUuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5DD4B8, "R3");
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  selfCopy = self;
  sub_1AE4E329C(v7, v8, v5);

  v9 = sub_1AE4EAB10();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v5, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    v13 = sub_1AE4EAAD0();
    (*(v10 + 8))(v5, v9);
    v12 = v13;
  }

  return v12;
}

- (unint64_t)aotAddress
{
  v2 = *(self + OBJC_IVAR____DYSharedCache_impl);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR____DYSharedCache_impl + 8);
    selfCopy = self;
    sub_1AE4BD9A8(v2, v3);
    v5 = sub_1AE4DDCF4(v2);
    v7 = v6;

    if (v7)
    {
      return 0;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSData)localSymbolData
{
  v2 = *(&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  if (v2)
  {
    v3 = *(&self[1].super.isa + OBJC_IVAR____DYSharedCache_impl);
    selfCopy = self;
    sub_1AE4BD9A8(v2, v3);
    v5 = sub_1AE4CEF4C();
    v7 = v6;

    if (v7 >> 60 == 15)
    {
      v8 = 0;
    }

    else
    {
      v9 = sub_1AE4EAA70();
      sub_1AE4ABE40(v5, v7);
      v8 = v9;
    }

    return v8;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (NSArray)images
{
  selfCopy = self;
  sub_1AE4E3A80(&OBJC_IVAR____DYSharedCache____lazy_storage___images, sub_1AE4DDCD4, off_1E7A260D0, &OBJC_IVAR____DYImage_impl);

  type metadata accessor for _DYImage(v3);
  v4 = sub_1AE4EAE70();

  return v4;
}

- (BOOL)pinMappings
{
  v2 = *(&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  if (!v2)
  {
    __break(1u);
    goto LABEL_5;
  }

  v3 = *&self->$__lazy_storage_$_images[OBJC_IVAR____DYSharedCache_impl];
  selfCopy = self;
  sub_1AE4BD9A8(v2, v3);
  sub_1AE4DC0D0();
  self = swift_weakLoadStrong();
  if (!self)
  {
LABEL_5:
    __break(1u);
    return self;
  }

  selfCopy2 = self;

  v6 = sub_1AE4D6498(selfCopy2);

  LOBYTE(self) = v6 & 1;
  return self;
}

- (void)unpinMappings
{
  v2 = *(&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  if (v2)
  {
    v3 = *&self->$__lazy_storage_$_images[OBJC_IVAR____DYSharedCache_impl];
    selfCopy = self;
    sub_1AE4BD9A8(v2, v3);
    v5 = sub_1AE4DC0D0();

    v6 = *(v5 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping);
    v7 = *(v5 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping + 8);
    *(v5 + OBJC_IVAR____TtC4Dyld17SharedCacheMapper_pinnedMapping) = xmmword_1AE4ED4C0;
    sub_1AE4ABE40(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

- (NSArray)subCaches
{
  selfCopy = self;
  sub_1AE4E3A80(&OBJC_IVAR____DYSharedCache____lazy_storage___subCaches, sub_1AE4DDE10, &off_1E7A260F8, &OBJC_IVAR____DYSubCache_impl);

  type metadata accessor for _DYSubCache(v3);
  v4 = sub_1AE4EAE70();

  return v4;
}

+ (id)installedSharedCaches
{
  v2 = sub_1AE4E4FE8();
  type metadata accessor for _DYSharedCache(v2);
  v3 = sub_1AE4EAE70();

  return v3;
}

+ (id)installedSharedCachesForSystemPath:(id)path
{
  v3 = sub_1AE4EAD40();
  sub_1AE4E51C4(v3, v4);

  type metadata accessor for _DYSharedCache(v5);
  v6 = sub_1AE4EAE70();

  return v6;
}

- (_DYSharedCache)init
{
  *(&self->super.isa + OBJC_IVAR____DYSharedCache____lazy_storage___images) = 0;
  *(&self->super.isa + OBJC_IVAR____DYSharedCache____lazy_storage___subCaches) = 0;
  v2 = (&self->super.isa + OBJC_IVAR____DYSharedCache_impl);
  *v2 = 0;
  v2[1] = 0;
  result = sub_1AE4EB140();
  __break(1u);
  return result;
}

@end