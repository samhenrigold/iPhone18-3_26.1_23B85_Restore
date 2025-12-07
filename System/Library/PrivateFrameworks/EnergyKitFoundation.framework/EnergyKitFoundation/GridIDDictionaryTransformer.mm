@interface GridIDDictionaryTransformer
+ (BOOL)allowsReverseTransformation;
+ (Class)transformedValueClass;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation GridIDDictionaryTransformer

+ (Class)transformedValueClass
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1D2057A80();
  return swift_getObjCClassFromMetadata();
}

+ (BOOL)allowsReverseTransformation
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  sub_1D2057AEC();
  return sub_1D208C18C() & 1;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  valueCopy2 = value;
  swift_unknownObjectRetain();
  v3 = selfCopy;
  if (valueCopy)
  {
    v20 = valueCopy2;
    v19 = valueCopy2;
    v18 = v24;
    sub_1D208C94C();
    sub_1D20553D8(v24, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  v17 = v25;
  sub_1D2057B50(v25, v26);
  sub_1D205539C(v25);

  if (v27)
  {
    v11 = v27;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v9 = *(v11 - 8);
    v10 = v9;
    v13 = &v8;
    v4 = MEMORY[0x1EEE9AC00](&v8);
    v12 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v4);
    v15 = sub_1D208CB3C();
    (*(v10 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v6 = v16;

  return v6;
}

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  selfCopy = self;
  valueCopy2 = value;
  swift_unknownObjectRetain();
  v3 = selfCopy;
  if (valueCopy)
  {
    v20 = valueCopy2;
    v19 = valueCopy2;
    v18 = v24;
    sub_1D208C94C();
    sub_1D20553D8(v24, v25);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  v17 = v25;
  sub_1D20583F0(v25, v26);
  sub_1D205539C(v25);

  if (v27)
  {
    v11 = v27;
    v14 = v26;
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v9 = *(v11 - 8);
    v10 = v9;
    v13 = &v8;
    v4 = MEMORY[0x1EEE9AC00](&v8);
    v12 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v4);
    v15 = sub_1D208CB3C();
    (*(v10 + 8))(v12, v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v6 = v16;

  return v6;
}

@end