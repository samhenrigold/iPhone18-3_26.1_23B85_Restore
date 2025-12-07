@interface CRLayoutParagraph
- (BOOL)canWrapToNextGroup;
- (CRNormalizedQuad)boundingQuad;
- (NSArray)subregions;
- (NSString)text;
- (NSUUID)uuid;
- (_TtC15TextRecognition17CRLayoutParagraph)init;
- (unint64_t)layoutDirection;
- (void)setBoundingQuad:(id)quad;
- (void)setCanWrapToNextGroup:(BOOL)group;
- (void)setSubregions:(id)subregions;
- (void)setText:(id)text;
- (void)setUuid:(id)uuid;
@end

@implementation CRLayoutParagraph

- (NSUUID)uuid
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  sub_1B40DDA80(self + v6, v5);
  v7 = sub_1B429F6D8();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_1B429F6A8();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setUuid:(id)uuid
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870, &qword_1B42AC0A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (uuid)
  {
    sub_1B429F6B8();
    v8 = sub_1B429F6D8();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_1B429F6D8();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_uuid;
  swift_beginAccess();
  selfCopy = self;
  sub_1B41289B4(v7, self + v10);
  swift_endAccess();
}

- (NSString)text
{
  swift_beginAccess();

  v2 = sub_1B429FB88();

  return v2;
}

- (void)setText:(id)text
{
  v4 = sub_1B429FB98();
  v6 = v5;
  v7 = (self + OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_text);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSArray)subregions
{
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
  v2 = sub_1B429FDE8();

  return v2;
}

- (void)setSubregions:(id)subregions
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884BF0, &qword_1B42ACD90);
  v4 = sub_1B429FDF8();
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_subregions;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (CRNormalizedQuad)boundingQuad
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setBoundingQuad:(id)quad
{
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_boundingQuad;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = quad;
  quadCopy = quad;
}

- (BOOL)canWrapToNextGroup
{
  v3 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCanWrapToNextGroup:(BOOL)group
{
  v5 = OBJC_IVAR____TtC15TextRecognition17CRLayoutParagraph_canWrapToNextGroup;
  swift_beginAccess();
  *(self + v5) = group;
}

- (unint64_t)layoutDirection
{
  v2 = *((*MEMORY[0x1E69E7D40] & *self) + 0xA8);
  selfCopy = self;
  result = v2();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:

    layoutDirection = 0;
    goto LABEL_9;
  }

  v7 = result;
  v8 = sub_1B42A0518();
  result = v7;
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B8C72CD0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
    swift_unknownObjectRetain();
LABEL_6:

    layoutDirection = [v5 layoutDirection];
    swift_unknownObjectRelease();
LABEL_9:

    return layoutDirection;
  }

  __break(1u);
  return result;
}

- (_TtC15TextRecognition17CRLayoutParagraph)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end