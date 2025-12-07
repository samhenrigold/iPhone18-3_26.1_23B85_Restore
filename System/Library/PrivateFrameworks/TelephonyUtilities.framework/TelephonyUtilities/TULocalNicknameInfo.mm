@interface TULocalNicknameInfo
- (TULocalNicknameInfo)init;
- (id)appleTVNicknameForDeviceName:(id)name;
- (id)formattedDisplayNameForIMNickname:(id)nickname style:(int64_t)style;
- (id)nicknameWithFormatterStyle:(int64_t)style;
@end

@implementation TULocalNicknameInfo

- (TULocalNicknameInfo)init
{
  v6.receiver = self;
  v6.super_class = TULocalNicknameInfo;
  v2 = [(TULocalNicknameInfo *)&v6 init];
  if (v2)
  {
    v3 = CUTWeakLinkClass();
    if (v3)
    {
      sharedController = [v3 sharedController];
      [sharedController connectToDaemon];
    }
  }

  return v2;
}

- (id)appleTVNicknameForDeviceName:(id)name
{
  nameCopy = name;
  if (nameCopy && ([(TULocalNicknameInfo *)self shortNickname], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = MEMORY[0x1E696AEC0];
    v8 = TUBundle();
    v9 = [v8 localizedStringForKey:@"%@_APPLE_TV_DEVICE_NAME_%@" value:&stru_1F098C218 table:@"TelephonyUtilities"];
    nameCopy = [v7 stringWithFormat:v9, v6, nameCopy];
  }

  else
  {
    v6 = TUBundle();
    nameCopy = [v6 localizedStringForKey:@"APPLE_TV" value:&stru_1F098C218 table:@"TelephonyUtilities"];
  }

  return nameCopy;
}

- (id)nicknameWithFormatterStyle:(int64_t)style
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = CUTWeakLinkClass();
  if (!v5)
  {
    goto LABEL_11;
  }

  sharedInstance = [v5 sharedInstance];
  *&v37 = 0;
  *(&v37 + 1) = &v37;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__0;
  v40 = __Block_byref_object_dispose__0;
  personalNickname = [sharedInstance personalNickname];
  v7 = *(*(&v37 + 1) + 40);
  if (!v7)
  {
    v8 = dispatch_semaphore_create(0);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __50__TULocalNicknameInfo_nicknameWithFormatterStyle___block_invoke;
    v31[3] = &unk_1E7424CB0;
    v33 = &v37;
    v9 = v8;
    v32 = v9;
    [sharedInstance fetchPersonalNicknameWithCompletion:v31];
    v10 = dispatch_time(0, 1000000000);
    v11 = dispatch_semaphore_wait(v9, v10);
    if (v11)
    {
      v12 = TUDefaultLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [TULocalNicknameInfo nicknameWithFormatterStyle:v12];
      }
    }

    v7 = *(*(&v37 + 1) + 40);
  }

  v13 = [(TULocalNicknameInfo *)self formattedDisplayNameForIMNickname:v7 style:style];
  v14 = TUDefaultLog(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v13;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Local nickame info retrieved from SNaP: %@", buf, 0xCu);
  }

  _Block_object_dispose(&v37, 8);
  if (!v13)
  {
LABEL_11:
    v15 = MEMORY[0x1E695CE28];
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    if (bundleIdentifier)
    {
      v18 = [v15 tu_contactStoreConfigurationForBundleIdentifier:bundleIdentifier];
    }

    else
    {
      v19 = TUPreferredFaceTimeBundleIdentifier();
      v18 = [v15 tu_contactStoreConfigurationForBundleIdentifier:v19];
    }

    v20 = [objc_alloc(MEMORY[0x1E695CE18]) initWithConfiguration:v18];
    v34[0] = *MEMORY[0x1E695C258];
    v21 = [MEMORY[0x1E695CD80] descriptorForRequiredKeysForStyle:0];
    v34[1] = v21;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    v30 = 0;
    v23 = [v20 _crossPlatformUnifiedMeContactWithKeysToFetch:v22 error:&v30];
    v24 = v30;

    if (v24)
    {
      v26 = TUDefaultLog(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        [(TULocalNicknameInfo *)v24 nicknameWithFormatterStyle:v26];
      }

      v13 = 0;
    }

    else
    {
      v27 = TUNameForContactWithFormatterStyle(v23, 1);
      v13 = v27;
    }

    v28 = TUDefaultLog(v27);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v37) = 138412290;
      *(&v37 + 4) = v13;
      _os_log_impl(&dword_1956FD000, v28, OS_LOG_TYPE_DEFAULT, "Local nickame info retrieved from MeContact: %@", &v37, 0xCu);
    }
  }

  return v13;
}

void __50__TULocalNicknameInfo_nicknameWithFormatterStyle___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)formattedDisplayNameForIMNickname:(id)nickname style:(int64_t)style
{
  if (nickname)
  {
    nicknameCopy = nickname;
    v6 = objc_opt_new();
    firstName = [nicknameCopy firstName];
    [v6 setGivenName:firstName];

    lastName = [nicknameCopy lastName];

    [v6 setFamilyName:lastName];
    v9 = [MEMORY[0x1E696ADF8] localizedStringFromPersonNameComponents:v6 style:style options:0];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v11 = [v9 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)nicknameWithFormatterStyle:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1956FD000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch meContact for local nickname info with error: %@", &v2, 0xCu);
}

@end