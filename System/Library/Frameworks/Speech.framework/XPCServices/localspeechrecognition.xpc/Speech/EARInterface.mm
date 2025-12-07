@interface EARInterface
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)getJitProfileData:(id)data modelRoot:(id)root language:(id)language asrID:(id)d taskName:(id)name reply:(id)reply;
- (void)makeEARLanguageDetectorWithDetectorOptions:(id)options clientInfo:(id)info analysisOptions:(id)analysisOptions reply:(id)reply;
- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options sandboxExtensions:(id)extensions reply:(id)reply;
- (void)makeEuclidInstanceWithLocale:(id)locale clientID:(id)d encoderType:(int64_t)type initFlag:(int64_t)flag reply:(id)reply;
- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)locale clientID:(id)d reply:(id)reply;
- (void)makeLSRAssetsForAssetConfig:(id)config shouldSubscribe:(BOOL)subscribe clientID:(id)d modelOverridePath:(id)path isSpelling:(BOOL)spelling reply:(id)reply;
@end

@implementation EARInterface

- (void)makeEARSpeechRecognizerWithSupportedFeatures:(id)features clientInfo:(id)info analysisContext:(id)context analysisOptions:(id)options sandboxExtensions:(id)extensions reply:(id)reply
{
  v13 = _Block_copy(reply);
  v14 = sub_100046EFC();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  featuresCopy = features;
  infoCopy = info;
  contextCopy = context;
  optionsCopy = options;
  selfCopy = self;
  sub_10001CFC8(featuresCopy, infoCopy, contextCopy, options, v14, sub_10001FD08, v15);

  v14, v21, v22, v23, v24, v25, v26, v27;
}

- (void)makeLSRAssetsForAssetConfig:(id)config shouldSubscribe:(BOOL)subscribe clientID:(id)d modelOverridePath:(id)path isSpelling:(BOOL)spelling reply:(id)reply
{
  spellingCopy = spelling;
  subscribeCopy = subscribe;
  v14 = sub_10000ECEC(&qword_10006FED0, &qword_10004CF38);
  __chkstk_darwin(v14 - 8);
  v16 = &v32 - v15;
  v17 = _Block_copy(reply);
  v18 = sub_100046E5C();
  v20 = v19;
  if (path)
  {
    sub_100046ABC();
    v21 = sub_100046B0C();
    v22 = 0;
  }

  else
  {
    v21 = sub_100046B0C();
    v22 = 1;
  }

  sub_1000045DC(v16, v22, 1, v21);
  _Block_copy(v17);
  configCopy = config;
  selfCopy = self;
  sub_10001D8F8(configCopy, subscribeCopy, v18, v20, v16, spellingCopy, selfCopy, v17);
  _Block_release(v17);

  v20, v25, v26, v27, v28, v29, v30, v31;
  sub_100005808(v16, &qword_10006FED0, &qword_10004CF38);
}

- (void)makeEuclidInstanceWithLocale:(id)locale clientID:(id)d encoderType:(int64_t)type initFlag:(int64_t)flag reply:(id)reply
{
  v11 = sub_100046C3C();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(reply);
  sub_100046BFC();
  v16 = sub_100046E5C();
  v18 = v17;
  _Block_copy(v15);
  selfCopy = self;
  sub_10001DDA0(v14, v16, v18, type, flag, selfCopy, v15);
  _Block_release(v15);

  v18, v20, v21, v22, v23, v24, v25, v26;
  (*(v12 + 8))(v14, v11);
}

- (void)makeEARLanguageDetectorWithDetectorOptions:(id)options clientInfo:(id)info analysisOptions:(id)analysisOptions reply:(id)reply
{
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  optionsCopy = options;
  infoCopy = info;
  analysisOptionsCopy = analysisOptions;
  selfCopy = self;
  sub_10001E23C(optionsCopy, infoCopy, analysisOptions, sub_10001FC98, v11);
}

- (void)makeFullPayloadCorrectorInstanceWithLocale:(id)locale clientID:(id)d reply:(id)reply
{
  v7 = sub_100046C3C();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(reply);
  sub_100046BFC();
  v12 = sub_100046E5C();
  v14 = v13;
  _Block_copy(v11);
  selfCopy = self;
  sub_10001E98C(v10, v12, v14, selfCopy, v11);
  _Block_release(v11);

  v14, v16, v17, v18, v19, v20, v21, v22;
  (*(v8 + 8))(v10, v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_10001EF50(listenerCopy, connectionCopy);

  return v9 & 1;
}

- (void)getJitProfileData:(id)data modelRoot:(id)root language:(id)language asrID:(id)d taskName:(id)name reply:(id)reply
{
  v12 = sub_10000ECEC(&unk_10006FB00, &qword_10004C590);
  __chkstk_darwin(v12 - 8);
  v14 = &v43 - v13;
  v44 = sub_100046B0C();
  v15 = *(v44 - 8);
  __chkstk_darwin(v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(reply);
  sub_100046ABC();
  v19 = sub_100046E5C();
  v21 = v20;
  if (d)
  {
    sub_100046BAC();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_100046BBC();
  sub_1000045DC(v14, v22, 1, v23);
  v24 = sub_100046E5C();
  v26 = v25;
  _Block_copy(v18);
  dataCopy = data;
  selfCopy = self;
  sub_10001F2AC(dataCopy, v17, v19, v21, v14, v24, v26, selfCopy, v18);
  _Block_release(v18);

  v21, v29, v30, v31, v32, v33, v34, v35;
  v26, v36, v37, v38, v39, v40, v41, v42;
  sub_100005808(v14, &unk_10006FB00, &qword_10004C590);
  (*(v15 + 8))(v17, v44);
}

@end