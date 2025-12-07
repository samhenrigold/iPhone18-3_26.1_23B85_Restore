@interface ClipMetadataManager
- (ClipMetadataManager)initWithAppInfoFetcher:(id)fetcher;
- (void)_fetchMetadataForURL:(id)l sourceBundleID:(id)d downloadIcon:(BOOL)icon completion:(id)completion;
- (void)fetchClipURLForURLHash:(id)hash sourceBundleID:(id)d completion:(id)completion;
@end

@implementation ClipMetadataManager

- (ClipMetadataManager)initWithAppInfoFetcher:(id)fetcher
{
  fetcherCopy = fetcher;
  v12.receiver = self;
  v12.super_class = ClipMetadataManager;
  v6 = [(ClipMetadataManager *)&v12 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appInfoFetcher, fetcher);
    v8 = objc_alloc_init(CPSBusinessItemFetcher);
    businessItemFetcher = v7->_businessItemFetcher;
    v7->_businessItemFetcher = v8;

    v10 = v7;
  }

  return v7;
}

- (void)fetchClipURLForURLHash:(id)hash sourceBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  hashCopy = hash;
  v10 = sub_100004064(hashCopy, v9);
  if (os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "Start Fetching ABR metadata", buf, 2u);
  }

  businessItemFetcher = self->_businessItemFetcher;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100003A44;
  v13[3] = &unk_1000146C0;
  v14 = completionCopy;
  v12 = completionCopy;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURLHash:hashCopy completion:v13];
}

- (void)_fetchMetadataForURL:(id)l sourceBundleID:(id)d downloadIcon:(BOOL)icon completion:(id)completion
{
  lCopy = l;
  dCopy = d;
  completionCopy = completion;
  v14 = sub_100004064(completionCopy, v13);
  if (os_signpost_enabled(v14))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "ABRMetaData", "Start Fetching ABR metadata", buf, 2u);
  }

  businessItemFetcher = self->_businessItemFetcher;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100003C58;
  v19[3] = &unk_100014710;
  v19[4] = self;
  v20 = dCopy;
  iconCopy = icon;
  v21 = lCopy;
  v22 = completionCopy;
  v16 = lCopy;
  v17 = dCopy;
  v18 = completionCopy;
  [(CPSBusinessItemFetching *)businessItemFetcher fetchBusinessMetadataForURL:v16 availabilityHandler:0 completion:v19];
}

@end