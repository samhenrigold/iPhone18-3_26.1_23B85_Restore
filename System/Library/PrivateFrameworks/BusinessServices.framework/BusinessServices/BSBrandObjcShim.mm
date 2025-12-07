@interface BSBrandObjcShim
+ (NSString)placeholderName;
+ (id)mockBrand;
- (BOOL)isRCSChatBot;
- (BOOL)isVerified;
- (BSBrandObjcShim)init;
- (NSArray)categories;
- (NSData)logoFingerprint;
- (NSDictionary)brandInfo;
- (NSString)address;
- (NSString)brandURI;
- (NSString)emailAddress;
- (NSString)localizedDescription;
- (NSString)localizedResponseTime;
- (NSString)messageNumber;
- (NSString)name;
- (NSString)primaryBrandColorHexString;
- (NSString)primaryPhoneNumber;
- (NSString)secondaryBrandColorHexString;
- (NSString)verifiedBy;
- (NSURL)genericCSSTemplateURL;
- (NSURL)secondaryLogoURL;
- (NSURL)termsAndConditionsURL;
- (NSURL)website;
- (int64_t)brandType;
- (void)assetDataOfType:(int64_t)type usingSim:(id)sim completion:(id)completion;
- (void)clearCachedAssets:(id)assets;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion;
- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion;
- (void)logoFileURLOfType:(int64_t)type desiredSize:(CGSize)size completionHandler:(id)handler;
- (void)permissions:(NSString *)permissions completionHandler:(id)handler;
@end

@implementation BSBrandObjcShim

+ (NSString)placeholderName
{
  if (qword_27CA64B08 != -1)
  {
    swift_once();
  }

  v2 = sub_2155DA7DC();

  return v2;
}

- (NSString)brandURI
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 32);
  selfCopy = self;
  v6(v4, v5);

  v8 = sub_2155DA7DC();

  return v8;
}

- (int64_t)brandType
{
  selfCopy = self;
  v3 = sub_2155CC608();

  return v3;
}

- (NSDictionary)brandInfo
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 88);
  selfCopy = self;
  v8 = v6(v4, v5);
  if (v8)
  {
    sub_2155D003C(v8);

    v9 = sub_2155DA7AC();
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

- (BOOL)isRCSChatBot
{
  selfCopy = self;
  v3 = sub_2155CC810();

  return v3;
}

- (NSString)name
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 48);
  selfCopy = self;
  v6(v4, v5);

  v8 = sub_2155DA7DC();

  return v8;
}

- (NSArray)categories
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 56);
  selfCopy = self;
  v8 = v6(v4, v5);

  if (v8)
  {
    v9 = sub_2155DA8EC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)primaryPhoneNumber
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 96);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)secondaryLogoURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = *(v9 + 80);
  selfCopy = self;
  v10(v8, v9);

  v12 = sub_2155DA67C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2155DA63C();
    (*(v13 + 8))(v6, v12);
    v15 = v16;
  }

  return v15;
}

- (NSString)primaryBrandColorHexString
{
  sub_2155B0E68(*(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = *(v4 + 104);
  selfCopy = self;
  v5(v3, v4);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v11);

  if (v8)
  {
    v9 = sub_2155DA7DC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)secondaryBrandColorHexString
{
  sub_2155B0E68(*(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand) + 16, v11);
  v3 = v12;
  v4 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v5 = *(v4 + 112);
  selfCopy = self;
  v5(v3, v4);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v11);

  if (v8)
  {
    v9 = sub_2155DA7DC();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isVerified
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 120);
  selfCopy = self;
  v8 = v6(v4, v5);

  return v8 & 1;
}

- (NSString)verifiedBy
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 128);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)website
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = *(v9 + 136);
  selfCopy = self;
  v10(v8, v9);

  v12 = sub_2155DA67C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2155DA63C();
    (*(v13 + 8))(v6, v12);
    v15 = v16;
  }

  return v15;
}

- (NSString)messageNumber
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 144);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)emailAddress
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 152);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)address
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 160);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSURL)termsAndConditionsURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = *(v9 + 168);
  selfCopy = self;
  v10(v8, v9);

  v12 = sub_2155DA67C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2155DA63C();
    (*(v13 + 8))(v6, v12);
    v15 = v16;
  }

  return v15;
}

- (NSURL)genericCSSTemplateURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v8 = v7[5];
  v9 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v8);
  v10 = *(v9 + 176);
  selfCopy = self;
  v10(v8, v9);

  v12 = sub_2155DA67C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v6, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    v16 = sub_2155DA63C();
    (*(v13 + 8))(v6, v12);
    v15 = v16;
  }

  return v15;
}

- (NSString)localizedDescription
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 64);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSString)localizedResponseTime
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 184);
  selfCopy = self;
  v6(v4, v5);
  v9 = v8;

  if (v9)
  {
    v10 = sub_2155DA7DC();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (NSData)logoFingerprint
{
  v3 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  v4 = v3[5];
  v5 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v4);
  v6 = *(v5 + 192);
  selfCopy = self;
  v8 = v6(v4, v5);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v12 = sub_2155DA68C();
    sub_2155B4528(v8, v10);
    v11 = v12;
  }

  return v11;
}

- (void)logoFileURLOfType:(int64_t)type desiredSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65040, &qword_2155DD4C0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v20 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 2) = type;
  v15[3] = width;
  v15[4] = height;
  *(v15 + 5) = v14;
  *(v15 + 6) = self;
  v16 = sub_2155DA94C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_2155DD518;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_2155DD520;
  v18[5] = v17;
  selfCopy = self;
  sub_2155D057C(0, 0, v13, &unk_2155DD528, v18);
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size completion:(id)completion
{
  height = size.height;
  width = size.width;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  v10[2] = v9;
  v11 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);
  selfCopy = self;
  sub_2155D7894(type, 0, 0, v11, sub_2155D1ED0, v10, width, height);
}

- (void)logoDataOfType:(int64_t)type desiredSize:(CGSize)size usingSim:(id)sim completion:(id)completion
{
  height = size.height;
  width = size.width;
  v11 = _Block_copy(completion);
  if (sim)
  {
    v12 = sub_2155DA80C();
    sim = v13;
  }

  else
  {
    v12 = 0;
  }

  v14 = swift_allocObject();
  v14[2] = v11;
  v15 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);

  selfCopy = self;
  sub_2155D7894(type, v12, sim, v15, sub_2155D1ED0, v14, width, height);
}

- (void)assetDataOfType:(int64_t)type usingSim:(id)sim completion:(id)completion
{
  v8 = _Block_copy(completion);
  if (sim)
  {
    v9 = sub_2155DA80C();
    sim = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = swift_allocObject();
  v11[2] = v8;
  v12 = *(&self->super.isa + OBJC_IVAR___BSBrandObjcShim_brand);

  selfCopy = self;
  sub_2155D7F30(type, v9, sim, v12, sub_2155C5B44, v11);
}

- (void)clearCachedAssets:(id)assets
{
  v4 = _Block_copy(assets);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2155D1C24;
  *(v6 + 24) = v5;
  selfCopy = self;

  sub_2155D55D4();
}

+ (id)mockBrand
{
  v2 = _s16BusinessServices13BrandObjcShimC04mockC0ACyFZ_0();

  return v2;
}

- (BSBrandObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)permissions:(NSString *)permissions completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA65040, &qword_2155DD4C0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = permissions;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2155DA94C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2155DD4D0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2155DD4E0;
  v15[5] = v14;
  permissionsCopy = permissions;
  selfCopy = self;
  sub_2155D057C(0, 0, v10, &unk_2155DD4F0, v15);
}

@end