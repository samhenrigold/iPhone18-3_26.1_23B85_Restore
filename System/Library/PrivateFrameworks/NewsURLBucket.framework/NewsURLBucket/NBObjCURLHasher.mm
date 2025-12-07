@interface NBObjCURLHasher
- (NBObjCURLHasher)init;
- (id)hashForURL:(id)l maxLength:(int64_t)length;
@end

@implementation NBObjCURLHasher

- (NBObjCURLHasher)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___NBObjCURLHasher_urlHasher;
  type metadata accessor for URLHasher();
  v5 = swift_allocObject();
  type metadata accessor for StringHasher();
  *(v5 + 2) = swift_allocObject();
  *(&self->super.isa + v4) = v5;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(NBObjCURLHasher *)&v7 init];
}

- (id)hashForURL:(id)l maxLength:(int64_t)length
{
  v6 = sub_25C339C50();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C339BE0();
  selfCopy = self;
  v11 = sub_25C339BC0();
  v13 = _s13NewsURLBucket12StringHasherC4hash3for9maxLength10Foundation4DataVSS_SitF_0(v11, v12, length);
  v15 = v14;

  (*(v7 + 8))(v9, v6);

  v16 = sub_25C339CB0();
  sub_25C335C20(v13, v15);

  return v16;
}

@end