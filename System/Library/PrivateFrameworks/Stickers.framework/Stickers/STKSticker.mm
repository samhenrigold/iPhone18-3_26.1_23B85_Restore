@interface STKSticker
+ (NSDate)kGenmojiFirstBetaReleaseDate;
- (BOOL)canDistribute;
- (BOOL)distributionIsRestricted;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGeneratedSticker;
- (BOOL)prefersAnimation;
- (NSArray)distributionRestrictions_ObjC;
- (NSArray)representations;
- (NSData)metadata;
- (NSString)description;
- (NSString)name;
- (NSUUID)_companionRecentUUID;
- (STKSticker)init;
- (STKStickerAttributionInfo)attributionInfo;
- (double)creationDate;
- (double)lastUsedDate;
- (double)libraryIndex;
- (int64_t)byteCount;
- (int64_t)effect;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAttributionInfo:(id)info;
- (void)setByteCount:(int64_t)count;
- (void)setCreationDate:(double)date;
- (void)setEffect:(int64_t)effect;
- (void)setLastUsedDate:(double)date;
- (void)setLibraryIndex:(double)index;
- (void)setMetadata:(id)metadata;
- (void)setName:(id)name;
- (void)setRepresentations:(id)representations;
- (void)set_companionRecentUUID:(id)d;
@end

@implementation STKSticker

- (NSArray)representations
{
  swift_beginAccess();
  type metadata accessor for Sticker.Representation(0);

  v2 = sub_1B8A240E4();

  return v2;
}

- (void)setRepresentations:(id)representations
{
  type metadata accessor for Sticker.Representation(0);
  v4 = sub_1B8A240F4();
  selfCopy = self;
  sub_1B89F9794(v4);
}

- (int64_t)byteCount
{
  v3 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setByteCount:(int64_t)count
{
  v5 = OBJC_IVAR___STKSticker_byteCount;
  swift_beginAccess();
  *(self + v5) = count;
}

- (NSString)name
{
  swift_beginAccess();

  v2 = sub_1B8A23EF4();

  return v2;
}

- (void)setName:(id)name
{
  v4 = sub_1B8A23F24();
  v6 = v5;
  v7 = (self + OBJC_IVAR___STKSticker_name);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (BOOL)isGeneratedSticker
{
  v2 = (self + OBJC_IVAR___STKSticker_searchText);
  swift_beginAccess();
  v3 = v2[1];
  if (!v3)
  {
    return 0;
  }

  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  else
  {
    v4 = *v2 & 0xFFFFFFFFFFFFLL;
  }

  return v4 != 0;
}

- (int64_t)effect
{
  v3 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setEffect:(int64_t)effect
{
  v5 = OBJC_IVAR___STKSticker_effect;
  swift_beginAccess();
  *(self + v5) = effect;
}

- (NSData)metadata
{
  v2 = (self + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v3 = 0;
  v4 = v2[1];
  if (v4 >> 60 != 15)
  {
    v5 = *v2;
    sub_1B89B4A18(v5, v4);
    v6 = sub_1B8A237A4();
    sub_1B89B4A04(v5, v4);
    v3 = v6;
  }

  return v3;
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  if (metadata)
  {
    selfCopy = self;
    v6 = metadataCopy;
    metadataCopy = sub_1B8A237C4();
    v8 = v7;
  }

  else
  {
    selfCopy2 = self;
    v8 = 0xF000000000000000;
  }

  v10 = (self + OBJC_IVAR___STKSticker_metadata);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = metadataCopy;
  v10[1] = v8;
  sub_1B89B4A04(v11, v12);
}

- (STKStickerAttributionInfo)attributionInfo
{
  v3 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setAttributionInfo:(id)info
{
  v5 = OBJC_IVAR___STKSticker_attributionInfo;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = info;
  infoCopy = info;
}

- (double)creationDate
{
  v3 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCreationDate:(double)date
{
  v5 = OBJC_IVAR___STKSticker_creationDate;
  swift_beginAccess();
  *(self + v5) = date;
}

- (double)lastUsedDate
{
  v3 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLastUsedDate:(double)date
{
  v5 = OBJC_IVAR___STKSticker_lastUsedDate;
  swift_beginAccess();
  *(self + v5) = date;
}

- (double)libraryIndex
{
  v3 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLibraryIndex:(double)index
{
  v5 = OBJC_IVAR___STKSticker_libraryIndex;
  swift_beginAccess();
  *(self + v5) = index;
}

- (NSUUID)_companionRecentUUID
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  sub_1B89AF268(self + v6, v5, &unk_1EBA92220, &unk_1B8A281A0);
  v7 = sub_1B8A23904();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B8A238B4();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)set_companionRecentUUID:(id)d
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA92220, &unk_1B8A281A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (d)
  {
    sub_1B8A238D4();
    v8 = sub_1B8A23904();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B8A23904();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___STKSticker__companionRecentUUID;
  swift_beginAccess();
  selfCopy = self;
  sub_1B89DD9E4(v7, self + v10);
  swift_endAccess();
}

- (BOOL)prefersAnimation
{
  selfCopy = self;
  v3 = sub_1B89FB424();

  return v3 & 1;
}

- (NSString)description
{
  selfCopy = self;
  sub_1B89FD71C();

  v3 = sub_1B8A23EF4();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1B8A244A4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1B89FE0BC(v8);

  sub_1B89A8A78(v8, &unk_1EBA91F50, &unk_1B8A26500);
  return v6;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B8A238E4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B89FFDE4(coderCopy);
}

- (STKSticker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (NSDate)kGenmojiFirstBetaReleaseDate
{
  if (qword_1EBA916E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B8A23884();
  __swift_project_value_buffer(v2, qword_1EBA92300);
  v3 = sub_1B8A23834();

  return v3;
}

- (BOOL)distributionIsRestricted
{
  selfCopy = self;
  if (os_variant_has_internal_content())
  {
    canDistribute = [(STKSticker *)selfCopy canDistribute];

    return canDistribute ^ 1;
  }

  else
  {

    return 0;
  }
}

- (BOOL)canDistribute
{
  selfCopy = self;
  if (os_variant_has_internal_content())
  {
    v3 = Sticker.distributionRestrictions.getter();

    v4 = *(v3 + 2);

    return v4 == 0;
  }

  else
  {

    return 1;
  }
}

- (NSArray)distributionRestrictions_ObjC
{
  selfCopy = self;
  Sticker.distributionRestrictions_ObjC.getter();

  v3 = sub_1B8A240E4();

  return v3;
}

@end