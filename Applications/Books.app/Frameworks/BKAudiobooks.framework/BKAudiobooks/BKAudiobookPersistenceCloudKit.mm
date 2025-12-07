@interface BKAudiobookPersistenceCloudKit
- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)manager;
- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion;
- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion;
@end

@implementation BKAudiobookPersistenceCloudKit

- (BKAudiobookPersistenceCloudKit)initWithAssetDetailManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = BKAudiobookPersistenceCloudKit;
  v6 = [(BKAudiobookPersistenceCloudKit *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assetDetailManager, manager);
  }

  return v7;
}

- (void)bookmarkTimeForAudiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_0, "Books/audiobook-query-cloud-bookmark", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1F000;
  block[3] = &unk_3D210;
  v12 = audiobookCopy;
  selfCopy = self;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = audiobookCopy;
  os_activity_apply(v8, block);
}

- (void)saveBookmarkTime:(double)time audiobook:(id)audiobook completion:(id)completion
{
  audiobookCopy = audiobook;
  completionCopy = completion;
  assetDetailManager = [(BKAudiobookPersistenceCloudKit *)self assetDetailManager];
  assetID = [audiobookCopy assetID];
  v12 = [assetID length];
  if (v12)
  {
    if (assetDetailManager)
    {
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1F4B0;
      v18[3] = &unk_3D260;
      v19 = assetID;
      timeCopy = time;
      v20 = audiobookCopy;
      v21 = assetDetailManager;
      v22 = completionCopy;
      [v21 assetDetailForAssetID:v19 completion:v18];

      v13 = v19;
      goto LABEL_13;
    }

    v16 = BKAudiobooksPersistenceCloudKitLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_226E0();
    }

    v13 = objc_retainBlock(completionCopy);
    if (v13)
    {
      v15 = 2;
      goto LABEL_12;
    }
  }

  else
  {
    v14 = BKAudiobooksPersistenceCloudKitLog(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_22720();
    }

    v13 = objc_retainBlock(completionCopy);
    if (v13)
    {
      v15 = 1;
LABEL_12:
      v17 = [NSError errorWithDomain:@"BKAudiobooksError" code:v15 userInfo:0];
      v13[2](v13, v17);
    }
  }

LABEL_13:
}

@end