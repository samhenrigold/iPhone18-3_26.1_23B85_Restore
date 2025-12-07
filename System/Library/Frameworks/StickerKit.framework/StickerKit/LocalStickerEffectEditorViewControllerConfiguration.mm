@interface LocalStickerEffectEditorViewControllerConfiguration
- (BOOL)isEqual:(id)equal;
- (NSUUID)stickerIdentifier;
- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)init;
- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)setStickerIdentifier:(id)identifier;
@end

@implementation LocalStickerEffectEditorViewControllerConfiguration

- (NSUUID)stickerIdentifier
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  sub_19A60F0CC(self + v6, v5, &qword_1EAFCD800, &qword_19A7BCE60);
  v7 = sub_19A7A8F64();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_19A7A8F24();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setStickerIdentifier:(id)identifier
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAFCD800, &qword_19A7BCE60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  if (identifier)
  {
    sub_19A7A8F44();
    v8 = sub_19A7A8F64();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_19A7A8F64();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  swift_beginAccess();
  selfCopy = self;
  sub_19A6264EC(v7, self + v10);
  swift_endAccess();
}

- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration_stickerIdentifier;
  v5 = sub_19A7A8F64();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(LocalStickerEffectEditorViewControllerConfiguration *)&v7 init];
}

- (_TtC10StickerKit51LocalStickerEffectEditorViewControllerConfiguration)initWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  v5 = sub_19A745B74(coder, v4);
  swift_unknownObjectRelease();
  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_19A741528(coder);
  swift_unknownObjectRelease();
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_19A7ABB44();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  v7 = sub_19A74172C(v9, v5);

  sub_19A5F2B54(v9, &unk_1EAFCD750, &unk_19A7B87D0);
  return v7 & 1;
}

@end