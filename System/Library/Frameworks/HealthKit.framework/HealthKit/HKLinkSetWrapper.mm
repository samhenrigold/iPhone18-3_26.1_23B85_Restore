@interface HKLinkSetWrapper
- (HKLinkSetWrapper)init;
- (HKLinkSetWrapper)initWithLinks:(id)links;
- (HKLinkSetWrapper)initWithSerializedData:(id)data error:(id *)error;
- (NSArray)elements;
- (NSString)description;
- (id)appendingElement:(id)element;
- (id)insertingElement:(id)element index:(int64_t)index;
- (id)mergingLinkSet:(id)set;
- (id)movingElementFrom:(int64_t)from to:(int64_t)to;
- (id)removingAll;
- (id)removingAtIndex:(int64_t)index;
- (id)removingLinksWithUUID:(id)d;
- (id)replacingElementAt:(int64_t)at withElement:(id)element;
- (id)retargetingLinksWithUUID:(id)d newUUID:(id)iD;
- (id)serializedDataWithError:(id *)error;
- (id)swappingElementsAt:(int64_t)at andAt:(int64_t)andAt;
- (int64_t)count;
- (int64_t)hash;
@end

@implementation HKLinkSetWrapper

- (HKLinkSetWrapper)initWithLinks:(id)links
{
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  v3 = sub_191CC68E8();
  return LinkSetWrapper.init(_:)(v3);
}

- (HKLinkSetWrapper)initWithSerializedData:(id)data error:(id *)error
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  dataCopy = data;
  v13 = sub_191CC6048();
  v15 = v14;

  sub_191C0492C(v13, v15);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  sub_191CC6568();
  (*(v9 + 32))(self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v11, v8);
  v19.receiver = self;
  v19.super_class = ObjectType;
  v16 = [(HKLinkSetWrapper *)&v19 init];
  sub_191C049D8(v13, v15);
  return v16;
}

- (id)serializedDataWithError:(id *)error
{
  v4 = sub_191CC6548();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EADCA120;
  selfCopy = self;
  if (v8 != -1)
  {
    swift_once();
  }

  (*(v5 + 104))(v7, *MEMORY[0x1E6995288], v4);
  sub_191C0E22C(0);
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  v10 = sub_191CC6558();
  v12 = v11;

  (*(v5 + 8))(v7, v4);
  v13 = sub_191CC6028();
  sub_191C049D8(v10, v12);

  return v13;
}

- (NSArray)elements
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  selfCopy = self;
  sub_191CC6428();

  v4 = sub_191CC68D8();

  return v4;
}

- (int64_t)count
{
  sub_191C0E22C(0);
  selfCopy = self;
  v4 = sub_191CC6438();

  return v4;
}

- (id)appendingElement:(id)element
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  v13 = *(v7 + 16);
  v13(&v21 - v11, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  elementCopy = element;
  selfCopy = self;
  sub_191CC6458();
  v13(v10, v12, v6);
  v16 = ObjectType;
  v17 = objc_allocWithZone(ObjectType);
  v13(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v6);
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = [(HKLinkSetWrapper *)&v23 init];

  v19 = *(v7 + 8);
  v19(v10, v6);
  v19(v12, v6);

  return v18;
}

- (id)insertingElement:(id)element index:(int64_t)index
{
  indexCopy = index;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &indexCopy - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &indexCopy - v12;
  v14 = *(v8 + 16);
  v14(&indexCopy - v12, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v7);
  elementCopy = element;
  selfCopy = self;
  sub_191CC6468();
  v14(v11, v13, v7);
  v17 = ObjectType;
  v18 = objc_allocWithZone(ObjectType);
  v14(&v18[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11, v7);
  v24.receiver = v18;
  v24.super_class = v17;
  v19 = [(HKLinkSetWrapper *)&v24 init];

  v20 = *(v8 + 8);
  v20(v11, v7);
  v20(v13, v7);

  return v19;
}

- (id)movingElementFrom:(int64_t)from to:(int64_t)to
{
  selfCopy = self;
  v7 = LinkSetWrapper.movingElement(from:to:)(from, to);

  return v7;
}

- (id)removingAtIndex:(int64_t)index
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v19 - v11;
  v13 = *(v7 + 16);
  v13(&v19 - v11, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v6);
  selfCopy = self;
  sub_191CC6478();
  v13(v10, v12, v6);
  v15 = objc_allocWithZone(ObjectType);
  v13(&v15[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v6);
  v19.receiver = v15;
  v19.super_class = ObjectType;
  v16 = [(HKLinkSetWrapper *)&v19 init];

  v17 = *(v7 + 8);
  v17(v10, v6);
  v17(v12, v6);

  return v16;
}

- (id)removingLinksWithUUID:(id)d
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v24 = sub_191CC61A8();
  v12 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6188();
  v15 = *(v6 + 16);
  v15(v11, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  v25 = v14;
  selfCopy = self;
  sub_191CC64C8();
  v15(v9, v11, v5);
  v16 = ObjectType;
  v17 = objc_allocWithZone(ObjectType);
  v15(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v5);
  v26.receiver = v17;
  v26.super_class = v16;
  v18 = [(HKLinkSetWrapper *)&v26 init];
  v19 = *(v6 + 8);
  v19(v9, v5);
  v19(v11, v5);

  (*(v12 + 8))(v14, v24);

  return v18;
}

- (id)removingAll
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(v6 + 16);
  v12(&v18 - v10, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v5);
  selfCopy = self;
  sub_191CC64D8();
  v12(v9, v11, v5);
  v14 = objc_allocWithZone(ObjectType);
  v12(&v14[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v9, v5);
  v18.receiver = v14;
  v18.super_class = ObjectType;
  v15 = [(HKLinkSetWrapper *)&v18 init];

  v16 = *(v6 + 8);
  v16(v9, v5);
  v16(v11, v5);

  return v15;
}

- (id)replacingElementAt:(int64_t)at withElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v8 = LinkSetWrapper.replacingElementAt(_:withElement:)(at, elementCopy);

  return v8;
}

- (id)retargetingLinksWithUUID:(id)d newUUID:(id)iD
{
  v5 = sub_191CC61A8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  sub_191CC6188();
  sub_191CC6188();
  selfCopy = self;
  v13 = LinkSetWrapper.retargetingLinksWithUUID(_:newUUID:)(v11, v9);

  v14 = *(v6 + 8);
  v14(v9, v5);
  v14(v11, v5);

  return v13;
}

- (id)swappingElementsAt:(int64_t)at andAt:(int64_t)andAt
{
  v20[1] = andAt;
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = *(v8 + 16);
  v14(v20 - v12, self + OBJC_IVAR___HKLinkSetWrapper_orderedSet, v7);
  selfCopy = self;
  sub_191CC6498();
  v14(v11, v13, v7);
  v16 = objc_allocWithZone(ObjectType);
  v14(&v16[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v11, v7);
  v21.receiver = v16;
  v21.super_class = ObjectType;
  v17 = [(HKLinkSetWrapper *)&v21 init];

  v18 = *(v8 + 8);
  v18(v11, v7);
  v18(v13, v7);

  return v17;
}

- (id)mergingLinkSet:(id)set
{
  ObjectType = swift_getObjectType();
  sub_191C0E22C(0);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - v11;
  sub_191C0DD28(&qword_1EADCACA8, sub_191C0E22C, MEMORY[0x1E6995130]);
  setCopy = set;
  selfCopy = self;
  sub_191CC6578();
  v15 = *(v7 + 16);
  v15(v10, v12, v6);
  v16 = ObjectType;
  v17 = objc_allocWithZone(ObjectType);
  v15(&v17[OBJC_IVAR___HKLinkSetWrapper_orderedSet], v10, v6);
  v23.receiver = v17;
  v23.super_class = v16;
  v18 = [(HKLinkSetWrapper *)&v23 init];

  v19 = *(v7 + 8);
  v19(v10, v6);
  v19(v12, v6);

  return v18;
}

- (NSString)description
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  selfCopy = self;
  sub_191CC6428();
  MEMORY[0x193B02090]();

  v4 = sub_191CC6778();

  return v4;
}

- (int64_t)hash
{
  sub_191C0E22C(0);
  type metadata accessor for UserDomainConceptLinkStructWrapper(0);
  selfCopy = self;
  sub_191CC6428();
  sub_191C0DD28(&qword_1EADCACC8, type metadata accessor for UserDomainConceptLinkStructWrapper, MEMORY[0x1E69E81B8]);
  v4 = sub_191CC6998();

  return v4;
}

- (HKLinkSetWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end