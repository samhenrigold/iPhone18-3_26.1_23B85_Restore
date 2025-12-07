@interface TPSAssetsDownloadOperation
- (NSString)assetIdentifier;
- (NSURL)downloadedURL;
- (TPSAssetsDownloadOperation)init;
- (TPSAssetsDownloadOperation)initWithAssetIdentifier:(id)identifier assetURLPath:(id)path;
- (void)main;
- (void)setAssetIdentifier:(id)identifier;
- (void)setDownloadedURL:(id)l;
@end

@implementation TPSAssetsDownloadOperation

- (NSString)assetIdentifier
{
  swift_beginAccess();

  v2 = sub_232E014C0();

  return v2;
}

- (void)setAssetIdentifier:(id)identifier
{
  v4 = sub_232E014D0();
  v6 = v5;
  v7 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (NSURL)downloadedURL
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  sub_232DAB3CC(self + v6, v5, &qword_27DDD7300, &qword_232E06830);
  v7 = sub_232E00BE0();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v5, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_232E00B70();
    (*(v8 + 8))(v5, v7);
    v10 = v11;
  }

  return v10;
}

- (void)setDownloadedURL:(id)l
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7300, &qword_232E06830);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  if (l)
  {
    sub_232E00BB0();
    v8 = sub_232E00BE0();
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v9 = sub_232E00BE0();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  }

  v10 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  swift_beginAccess();
  selfCopy = self;
  sub_232DDEBE0(v7, self + v10);
  swift_endAccess();
}

- (TPSAssetsDownloadOperation)initWithAssetIdentifier:(id)identifier assetURLPath:(id)path
{
  v5 = sub_232E014D0();
  v7 = v6;
  v8 = sub_232E014D0();
  v10 = v9;
  v11 = OBJC_IVAR___TPSAssetsDownloadOperation_downloadedURL;
  v12 = sub_232E00BE0();
  (*(*(v12 - 8) + 56))(self + v11, 1, 1, v12);
  *(self + OBJC_IVAR___TPSAssetsDownloadOperation_priority) = *MEMORY[0x277CCA790];
  *(self + OBJC_IVAR___TPSAssetsDownloadOperation_urlSessionItem) = 0;
  v13 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetIdentifier);
  *v13 = v5;
  v13[1] = v7;
  v14 = (self + OBJC_IVAR___TPSAssetsDownloadOperation_assetURLPath);
  *v14 = v8;
  v14[1] = v10;
  v16.receiver = self;
  v16.super_class = type metadata accessor for AssetsDownloadOperation(0);
  return [(TPSAsyncOperation *)&v16 init];
}

- (void)main
{
  selfCopy = self;
  sub_232DDE3C8();
}

- (TPSAssetsDownloadOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end