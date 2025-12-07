@interface BSBrandManagerObjcShim
- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error;
- (BSBrandManagerObjcShim)init;
- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceWrapper:(id)wrapper;
- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
- (void)brandWithURI:(id)i completion:(id)completion;
- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion;
- (void)clearUnusedCachedLogos:(id)logos;
- (void)fetchAssetWithURL:(id)l assetType:(int64_t)type completion:(id)completion;
- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion;
@end

@implementation BSBrandManagerObjcShim

- (BSBrandManagerObjcShim)initWithCachingEnabled:(BOOL)enabled cacheURL:(id)l brandDataSourceWrapper:(id)wrapper
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA64B20, &qword_2155DBDC0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v17 - v10;
  if (l)
  {
    sub_2155DA64C();
    v12 = sub_2155DA67C();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = sub_2155DA67C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  wrapperCopy = wrapper;
  v15 = sub_2155B1194(enabled, v11, wrapperCopy);

  return v15;
}

- (void)brandWithURI:(id)i completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_2155DA80C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2155C5B54;
  *(v10 + 24) = v9;
  selfCopy = self;

  sub_2155BB7DC(v6, v8, 0, 0, sub_2155C5B60, v10);
}

- (void)brandWithURI:(id)i usingSim:(id)sim completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  if (sim)
  {
    v11 = sub_2155DA80C();
    sim = v12;
  }

  else
  {
    v11 = 0;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2155C5B54;
  *(v14 + 24) = v13;
  selfCopy = self;

  sub_2155BB7DC(v8, v10, v11, sim, sub_2155C5B60, v14);
}

- (void)clearUnusedCachedLogos:(id)logos
{
  v4 = _Block_copy(logos);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;

  sub_2155BE974(sub_2155C5B4C, v5);
}

- (void)fetchAssetWithURL:(id)l assetType:(int64_t)type completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA67C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2155DA64C();
  v13 = swift_allocObject();
  *(v13 + 16) = v7;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2155C5B44;
  *(v14 + 24) = v13;
  selfCopy = self;

  sub_2155BDB24(v12, type, sub_2155C5B5C, v14);

  (*(v9 + 8))(v12, v8);
}

- (void)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2155C5B28;
  *(v12 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BEABC(v8, v10, serviceCopy, sub_2155C5B64, v12);
}

- (BOOL)isBrandRegisteredWithIdentifier:(id)identifier forService:(id)service timeout:(double)timeout error:(id *)error
{
  v9 = sub_2155DA80C();
  v11 = v10;
  serviceCopy = service;
  selfCopy = self;
  v14 = sub_2155C5274(v9, v11, serviceCopy, timeout);

  return v14 & 1;
}

- (void)brandWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2155C5B10;
  *(v12 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BBD90(v8, v10, serviceCopy, sub_2155C5B60, v12);
}

- (void)brandAssetWithIdentifier:(id)identifier forService:(id)service completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_2155DA80C();
  v10 = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2155C5B54;
  *(v12 + 24) = v11;
  serviceCopy = service;
  selfCopy = self;

  sub_2155BBDB0(v8, v10, serviceCopy, sub_2155C5B58, v12);
}

- (BSBrandManagerObjcShim)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end