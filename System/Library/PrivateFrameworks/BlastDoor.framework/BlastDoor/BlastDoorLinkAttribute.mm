@interface BlastDoorLinkAttribute
- (BlastDoorLinkAttribute)init;
- (NSURL)link;
- (_NSRange)range;
@end

@implementation BlastDoorLinkAttribute

- (_NSRange)range
{
  v2 = sub_21454F43C(self, a2, OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute);
  result.length = v3;
  result.location = v2;
  return result;
}

- (NSURL)link
{
  v3 = type metadata accessor for LinkAttribute(0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2146D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_213FB568C(self + OBJC_IVAR___BlastDoorLinkAttribute_linkAttribute[0], v6, type metadata accessor for LinkAttribute);
  (*(v8 + 32))(v10, &v6[*(v4 + 28)], v7);
  v11 = sub_2146D8898();
  (*(v8 + 8))(v10, v7);

  return v11;
}

- (BlastDoorLinkAttribute)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end