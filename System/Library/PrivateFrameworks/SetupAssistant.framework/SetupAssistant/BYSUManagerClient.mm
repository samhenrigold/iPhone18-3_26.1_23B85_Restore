@interface BYSUManagerClient
+ (id)createWithQueue:(id)queue clientType:(int)type;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BYSUManagerClient)initWithQueue:(id)queue clientType:(int)type;
- (void)cancelDownload:(id)download;
- (void)enableAutomaticDownload:(BOOL)download;
- (void)enableAutomaticUpdateV2:(BOOL)v2;
- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary;
- (void)scanForUpdates:(id)updates withScanResults:(id)results;
- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary;
@end

@implementation BYSUManagerClient

+ (id)createWithQueue:(id)queue clientType:(int)type
{
  v4 = *&type;
  queueCopy = queue;
  if (!os_variant_has_internal_ui() || (v6 = off_1E7D022C0, !+[BYSUManagerClientTestingSurrogate enabled]))
  {
    v6 = off_1E7D022B8;
  }

  v7 = [objc_alloc(*v6) initWithQueue:queueCopy clientType:v4];

  return v7;
}

- (BYSUManagerClient)initWithQueue:(id)queue clientType:(int)type
{
  v4 = *&type;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = BYSUManagerClient;
  v7 = [(BYSUManagerClient *)&v12 init];
  if (v7)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2050000000;
    v8 = getSUManagerClientClass_softClass;
    v17 = getSUManagerClientClass_softClass;
    if (!getSUManagerClientClass_softClass)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __getSUManagerClientClass_block_invoke;
      v13[3] = &unk_1E7D02730;
      v13[4] = &v14;
      __getSUManagerClientClass_block_invoke(v13);
      v8 = v15[3];
    }

    v9 = v8;
    _Block_object_dispose(&v14, 8);
    v10 = [[v8 alloc] initWithDelegate:0 queue:queueCopy clientType:v4];
    [(BYSUManagerClient *)v7 setUnderlyingManagerClient:v10];
  }

  return v7;
}

- (void)scanForUpdates:(id)updates withScanResults:(id)results
{
  resultsCopy = results;
  updatesCopy = updates;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient scanForUpdates:updatesCopy withScanResults:resultsCopy];
}

- (void)setMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient setMandatorySoftwareUpdateDictionary:dictionaryCopy];
}

- (void)getMandatorySoftwareUpdateDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient getMandatorySoftwareUpdateDictionary:dictionaryCopy];
}

- (void)cancelDownload:(id)download
{
  downloadCopy = download;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient cancelDownload:downloadCopy];
}

- (void)enableAutomaticDownload:(BOOL)download
{
  downloadCopy = download;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient enableAutomaticDownload:downloadCopy];
}

- (BOOL)isAutomaticDownloadEnabled
{
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  isAutomaticDownloadEnabled = [underlyingManagerClient isAutomaticDownloadEnabled];

  return isAutomaticDownloadEnabled;
}

- (void)enableAutomaticUpdateV2:(BOOL)v2
{
  v2Copy = v2;
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  [underlyingManagerClient enableAutomaticUpdateV2:v2Copy];
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  underlyingManagerClient = [(BYSUManagerClient *)self underlyingManagerClient];
  isAutomaticUpdateV2Enabled = [underlyingManagerClient isAutomaticUpdateV2Enabled];

  return isAutomaticUpdateV2Enabled;
}

@end