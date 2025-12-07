@interface FairPlayKeySessionMock
- (BOOL)bypassCache;
- (NSString)id;
- (NSString)keyStoreFilePath;
- (PFFairPlayAsset)asset;
- (PFFairPlayKeyResponseData)keyResponseData;
- (void)deregister;
- (void)pauseAutomaticKeyRenewal;
- (void)processKeyWith:(id)with completion:(id)completion;
- (void)register;
- (void)renewKey;
- (void)resumeAutomaticKeyRenewal;
- (void)stopAndInvalidateKeysWithCompletion:(id)completion;
@end

@implementation FairPlayKeySessionMock

- (NSString)id
{

  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v2;
}

- (PFFairPlayAsset)asset
{

  v2 = sub_1D8E8F780();

  return v2;
}

- (BOOL)bypassCache
{
  v2 = *(self + 8);
  if (v2)
  {

    LOBYTE(v2) = v2(v3);
  }

  return v2 & 1;
}

- (NSString)keyStoreFilePath
{
  v2 = *(self + 10);
  if (v2 && (v3 = , v2(v3), v5 = v4, , v5))
  {
    v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PFFairPlayKeyResponseData)keyResponseData
{
  v2 = *(self + 12);
  if (v2)
  {

    v2 = v2(v3);
  }

  return v2;
}

- (void)pauseAutomaticKeyRenewal
{
  v2 = *(self + 14);
  if (v2)
  {

    v2(v3);
  }
}

- (void)resumeAutomaticKeyRenewal
{
  v2 = *(self + 16);
  if (v2)
  {

    v2(v3);
  }
}

- (void)register
{
  v2 = *(self + 18);
  if (v2)
  {

    v2(v3);
  }
}

- (void)deregister
{
  v2 = *(self + 20);
  if (v2)
  {

    v2(v3);
  }
}

- (void)processKeyWith:(id)with completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = *(self + 22);
  if (v10)
  {

    v10(v6, v8, sub_1D8E8B5C0, v9);
  }
}

- (void)renewKey
{
  v2 = *(self + 24);
  if (v2)
  {

    v2(v3);
  }
}

- (void)stopAndInvalidateKeysWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(self + 26);
  if (v6)
  {

    v6(sub_1D8E899BC, v5);
  }
}

@end