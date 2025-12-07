@interface RMErSSOStore
+ (BOOL)isPreEnrollmentErSSOStore:(id)store;
- (RMErSSOStore)init;
- (id)appDetailsFromDeclarations:(id)declarations error:(id *)error;
- (void)createErSSOStoreWithDeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD isUserEnrollment:(BOOL)enrollment completionHandler:(id)handler;
- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler;
- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)timeout completionHandler:(id)handler;
@end

@implementation RMErSSOStore

- (id)appDetailsFromDeclarations:(id)declarations error:(id *)error
{
  v5 = sub_261E725C8();
  selfCopy = self;
  sub_261E665B4(v5);

  v7 = sub_261E72478();

  return v7;
}

- (void)createErSSOStoreWithDeclarations:(id)declarations chosenBundleID:(id)d personaID:(id)iD isUserEnrollment:(BOOL)enrollment completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = sub_261E725C8();
  v12 = sub_261E724D8();
  v14 = v13;
  if (iD)
  {
    v15 = sub_261E724D8();
    iD = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v10;
  selfCopy = self;
  sub_261E5EBB8(v11, v12, v14, v15, iD, enrollment, sub_261E6C5EC, v17);
}

- (void)waitForActiveAndValidDeclarationsInErSSOStoreWithTimeout:(double)timeout completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0);
  MEMORY[0x28223BE20]();
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_261E72628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = self;
  *(v13 + 40) = timeout;
  *(v13 + 48) = sub_261E6C5EC;
  *(v13 + 56) = v11;
  *(v13 + 64) = ObjectType;
  selfCopy = self;
  sub_261E5F950(0, 0, v9, &unk_261E757A8, v13);
}

- (void)linkErSSOStoreToMDMWithProfileIdentifier:(id)identifier accountIdentifier:(id)accountIdentifier completionHandler:(id)handler
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEF6260, &qword_261E756F0);
  MEMORY[0x28223BE20]();
  v10 = &v21 - v9;
  v11 = _Block_copy(handler);
  v12 = sub_261E724D8();
  v14 = v13;
  if (accountIdentifier)
  {
    accountIdentifier = sub_261E724D8();
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v18 = sub_261E72628();
  (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = self;
  v19[5] = v12;
  v19[6] = v14;
  v19[7] = accountIdentifier;
  v19[8] = v16;
  v19[9] = sub_261E6C5EC;
  v19[10] = v17;
  v19[11] = ObjectType;
  selfCopy = self;
  sub_261E5F950(0, 0, v10, &unk_261E75758, v19);
}

+ (BOOL)isPreEnrollmentErSSOStore:(id)store
{
  swift_unknownObjectRetain();
  v4 = sub_261E6C24C(store);
  swift_unknownObjectRelease();
  return v4 & 1;
}

- (RMErSSOStore)init
{
  v3.receiver = self;
  v3.super_class = RMErSSOStore;
  return [(RMErSSOStore *)&v3 init];
}

@end