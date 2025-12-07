@interface HKUserDomainConceptLinkStructWrapper
- (HKUserDomainConceptLinkStructWrapper)init;
- (HKUserDomainConceptLinkStructWrapper)initWithLink:(id)link;
- (HKUserDomainConceptLinkStructWrapper)initWithTarget:(id)target type:(int64_t)type;
- (NSString)description;
- (NSUUID)target;
- (int64_t)hash;
@end

@implementation HKUserDomainConceptLinkStructWrapper

- (HKUserDomainConceptLinkStructWrapper)initWithLink:(id)link
{
  linkCopy = link;
  targetUUID = [linkCopy targetUUID];
  type = [linkCopy type];

  v7 = [(HKUserDomainConceptLinkStructWrapper *)self initWithTarget:targetUUID type:type];
  return v7;
}

- (NSUUID)target
{
  v3 = type metadata accessor for UserDomainConceptLinkStruct(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C0D3DC(self + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value, v6);
  (*(v8 + 32))(v10, &v6[*(v4 + 28)], v7);
  v11 = sub_191CC6168();
  (*(v8 + 8))(v10, v7);

  return v11;
}

- (HKUserDomainConceptLinkStructWrapper)initWithTarget:(id)target type:(int64_t)type
{
  ObjectType = swift_getObjectType();
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6188();
  v11 = (self + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  v12 = type metadata accessor for UserDomainConceptLinkStruct(0);
  (*(v8 + 16))(v11 + *(v12 + 20), v10, v7);
  *v11 = type;
  v15.receiver = self;
  v15.super_class = ObjectType;
  v13 = [(HKUserDomainConceptLinkStructWrapper *)&v15 init];
  (*(v8 + 8))(v10, v7);
  return v13;
}

- (NSString)description
{
  selfCopy = self;
  UserDomainConceptLinkStructWrapper.description.getter();

  v3 = sub_191CC6778();

  return v3;
}

- (int64_t)hash
{
  v3 = (&self->super.isa + OBJC_IVAR___HKUserDomainConceptLinkStructWrapper_value);
  sub_191CC74C8();
  MEMORY[0x193B02C70](*v3);
  type metadata accessor for UserDomainConceptLinkStruct(0);
  sub_191CC61A8();
  sub_191C0DD28(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  selfCopy = self;
  sub_191CC66A8();
  v5 = sub_191CC7508();

  return v5;
}

- (HKUserDomainConceptLinkStructWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end