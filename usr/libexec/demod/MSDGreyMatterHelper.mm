@interface MSDGreyMatterHelper
+ (BOOL)waitForGMAvailability;
+ (void)configureAutoUpdate:(BOOL)update;
+ (void)preservePrivateAccessTokens;
+ (void)purgeExistingAssetOfIdentifier:(id)identifier;
+ (void)purgeExistingAssets;
+ (void)restorePrivateAccessTokens;
+ (void)toggleAutoUpdate:(BOOL)update forAssetOfIdentifier:(id)identifier;
@end

@implementation MSDGreyMatterHelper

+ (BOOL)waitForGMAvailability
{
  v15 = 0;
  v2 = [@"/var/MobileAsset/AssetsV2" stringByAppendingPathComponent:@"com_apple_MobileAsset_UAF_FM_GenerativeModels"];
  v3 = +[NSFileManager defaultManager];
  v4 = [v3 fileExistsAtPath:v2 isDirectory:&v15];
  v5 = v15;

  if (v4 && (v5 & 1) != 0)
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 contentsOfDirectoryAtPath:v2 error:0];

    [v7 count];
  }

  v8 = +[MSDGreyMatterHelper isOptedIn];
  if (v8)
  {
    v9 = +[MSDGreyMatterAvailabilityChecker waitForGMAvailability];
    if (v9)
    {
      v10 = sub_100063A54(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v17 = "+[MSDGreyMatterHelper waitForGMAvailability]";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: Now wait for Generative Playground app to become available!", buf, 0xCu);
      }

      v11 = +[MSDAppHelper sharedInstance];
      v12 = [v11 waitForAppToInstall:@"com.apple.GenerativePlaygroundApp" withTimeout:600];
    }

    else
    {
      v12 = 0;
    }

    _CFPreferencesFlushCachesForIdentifier();
  }

  else
  {
    v13 = sub_100063A54(v8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "+[MSDGreyMatterHelper waitForGMAvailability]";
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s - Device is not opted-in to Apple Intelligence.  Skip waitForGMAvailability", buf, 0xCu);
    }

    v12 = 1;
  }

  return v12;
}

+ (void)preservePrivateAccessTokens
{
  v2 = +[MSDCryptoHandler sharedInstance];
  v3 = +[NSFileManager defaultManager];
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Preserving Thimble long-lived tokens stored in keychain!", buf, 2u);
  }

  if ([v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens"])
  {
    v10 = 0;
    v5 = [v3 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens" error:&v10];
    v6 = v10;
    v7 = v6;
    if ((v5 & 1) == 0)
    {
      v8 = sub_100063A54(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        sub_1000CFB3C(v7);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = [v2 preserveAndEncryptKeychainItemsForKey:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" toFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens"];
  if ((v9 & 1) == 0)
  {
    sub_1000CFBD4(v9);
  }
}

+ (void)restorePrivateAccessTokens
{
  v2 = +[MSDCryptoHandler sharedInstance];
  v3 = +[NSFileManager defaultManager];
  v4 = sub_100063A54(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Restoring Thimble long-lived tokens to keychain!", buf, 2u);
  }

  v5 = [v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens"];
  if ((v5 & 1) == 0)
  {
    v10 = sub_100063A54(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "No input file for Thimble long-lived tokens found.", v12, 2u);
    }

    v9 = 0;
    goto LABEL_13;
  }

  v6 = [v2 restoreAndDecryptKeychainItemsForKey:@"com.apple.NetworkServiceProxy.PrivateAccessTokens.LongLivedTokens" fromFile:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens"];
  if ((v6 & 1) == 0)
  {
    sub_1000CFC38(v6);
  }

  if (![v3 fileExistsAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens"])
  {
    v9 = 0;
    goto LABEL_15;
  }

  v11 = 0;
  v7 = [v3 removeItemAtPath:@"/private/var/mnt/com.apple.mobilestoredemo.storage/com.apple.mobilestoredemo.blob/Metadata/com.apple.MobileStoreDemo.ThimbleLongLivedTokens" error:&v11];
  v8 = v11;
  v9 = v8;
  if ((v7 & 1) == 0)
  {
    v10 = sub_100063A54(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFB3C(v9);
    }

LABEL_13:
  }

LABEL_15:
}

+ (void)configureAutoUpdate:(BOOL)update
{
  updateCopy = update;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [&off_10017BD00 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(&off_10017BD00);
        }

        [MSDGreyMatterHelper toggleAutoUpdate:updateCopy forAssetOfIdentifier:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [&off_10017BD00 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

+ (void)purgeExistingAssets
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v2 = [&off_10017BD18 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(&off_10017BD18);
        }

        [MSDGreyMatterHelper purgeExistingAssetOfIdentifier:*(*(&v6 + 1) + 8 * v5)];
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [&off_10017BD18 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

+ (void)toggleAutoUpdate:(BOOL)update forAssetOfIdentifier:(id)identifier
{
  updateCopy = update;
  identifierCopy = identifier;
  v6 = MAGetPallasUrlForType();
  v7 = [NSURL URLWithString:@"https://foobar.apple.com"];
  v8 = [v6 isEqual:v7];
  if (updateCopy)
  {
    if (v8)
    {
      v9 = sub_100063A54(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 138543362;
        v15 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Clearing bogus Pallas URL to enable update for asset: %{public}@", &v14, 0xCu);
      }

      v10 = MASetPallasUrlForType();
      if (v10)
      {
        v11 = sub_100063A54(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_1000CFD0C();
        }

LABEL_14:
      }
    }
  }

  else if ((v8 & 1) == 0)
  {
    v12 = sub_100063A54(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Applying bogus Pallas URL to disable update for asset: %{public}@", &v14, 0xCu);
    }

    v13 = MASetPallasUrlForType();
    if (v13)
    {
      v11 = sub_100063A54(v13);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1000CFC9C();
      }

      goto LABEL_14;
    }
  }
}

+ (void)purgeExistingAssetOfIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = dispatch_semaphore_create(0);
  v5 = sub_100063A54(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v19 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Purging existing asset: %{public}@", buf, 0xCu);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10004036C;
  v16[3] = &unk_10016AAE8;
  v6 = v4;
  v17 = v6;
  [MAAutoAssetSet eliminateAtomic:@"Demod purging GreyMatter assets" usingClientDomain:@"com.apple.mobilestoredemod" forAssetSetIdentifier:identifierCopy awaitingUnlocked:1 completion:v16];
  v7 = dispatch_time(0, 30000000000);
  v8 = dispatch_semaphore_wait(v6, v7);
  if (v8)
  {
    v9 = sub_100063A54(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFD7C();
    }
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000403D8;
  v14[3] = &unk_10016AB10;
  v10 = v6;
  v15 = v10;
  [MAAutoAsset eliminateAllForAssetType:identifierCopy completion:v14];
  v11 = dispatch_time(0, 30000000000);
  v12 = dispatch_semaphore_wait(v10, v11);
  if (v12)
  {
    v13 = sub_100063A54(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFDBC();
    }
  }
}

@end