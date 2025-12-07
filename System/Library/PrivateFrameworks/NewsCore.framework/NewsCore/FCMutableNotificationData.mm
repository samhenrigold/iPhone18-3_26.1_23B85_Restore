@interface FCMutableNotificationData
- (FCMutableNotificationData)init;
- (FCMutableNotificationData)initWithDictionary:(id)dictionary;
- (void)setBaseURLString:(id)string;
- (void)setDeviceDigestMode:(int)mode;
- (void)setDeviceToken:(id)token;
- (void)setNotificationUserID:(id)d;
- (void)setStorefrontID:(id)d;
@end

@implementation FCMutableNotificationData

- (FCMutableNotificationData)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCMutableNotificationData init]";
    v10 = 2080;
    v11 = "FCFileCoordinatedNotificationDropbox.m";
    v12 = 1024;
    v13 = 159;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCMutableNotificationData init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCMutableNotificationData)initWithDictionary:(id)dictionary
{
  v17 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  if (!dictionaryCopy && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "dictionary"];
    *buf = 136315906;
    v10 = "[FCMutableNotificationData initWithDictionary:]";
    v11 = 2080;
    v12 = "FCFileCoordinatedNotificationDropbox.m";
    v13 = 1024;
    v14 = 164;
    v15 = 2114;
    v16 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v8.receiver = self;
  v8.super_class = FCMutableNotificationData;
  v5 = [(FCNotificationDropboxData *)&v8 initWithDictionary:dictionaryCopy];

  return v5;
}

- (void)setBaseURLString:(id)string
{
  stringCopy = string;
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  [dictionary fc_safelySetObjectAllowingNil:stringCopy forKey:@"FCNotificationDropboxDataBaseURLDictionaryKey"];
}

- (void)setNotificationUserID:(id)d
{
  dCopy = d;
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  [dictionary fc_safelySetObjectAllowingNil:dCopy forKey:@"FCNotificationDropboxDataNotificationUserIDDictionaryKey"];
}

- (void)setDeviceToken:(id)token
{
  tokenCopy = token;
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  [dictionary fc_safelySetObjectAllowingNil:tokenCopy forKey:@"FCNotificationDropboxDataDeviceTokenDictionaryKey"];
}

- (void)setStorefrontID:(id)d
{
  dCopy = d;
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  [dictionary fc_safelySetObjectAllowingNil:dCopy forKey:@"FCNotificationDropboxDataStorefrontIDDictionaryKey"];
}

- (void)setDeviceDigestMode:(int)mode
{
  v3 = *&mode;
  dictionary = [(FCNotificationDropboxData *)self dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:v3];
  [dictionary fc_safelySetObjectAllowingNil:v4 forKey:@"FCNotificationDropboxDataDeviceDigestModeKey"];
}

@end