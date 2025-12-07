@interface MSDDomainsPlistPatcher
+ (id)patchDomainsPlist:(id)plist;
@end

@implementation MSDDomainsPlistPatcher

+ (id)patchDomainsPlist:(id)plist
{
  plistCopy = plist;
  has_internal_content = os_variant_has_internal_content();
  v5 = [NSMutableDictionary dictionaryWithContentsOfFile:plistCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:@"SystemDomains"];
    v8 = v7;
    if (v7 && (objc_opt_class(), v7 = objc_opt_isKindOfClass(), (v7 & 1) != 0))
    {
      v9 = [v8 objectForKey:@"CameraRollDomain"];
      v50 = plistCopy;
      if (v9)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [v9 objectForKey:@"RelativePathsNotToBackup"];
          if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v10 removeObject:@"Media/PhotoData/Sync"];
            [v9 setObject:v10 forKey:@"RelativePathsNotToBackup"];
            [v8 setObject:v9 forKey:@"CameraRollDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C8E50();
            goto LABEL_172;
          }

          v11 = [v9 objectForKey:@"RelativePathsToRemoveOnRestore"];

          if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v11 removeObject:@"Media/PhotoData/Sync"];
            [v11 removeObject:@"Media/PhotoData/Metadata/PhotoData/Sync"];
            [v9 setObject:v11 forKey:@"RelativePathsToRemoveOnRestore"];
            [v8 setObject:v9 forKey:@"CameraRollDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C8DE8();
            goto LABEL_172;
          }

LABEL_16:
          v12 = [v8 objectForKey:@"HomeKitDomain"];

          if (v12)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v13 = [v12 objectForKey:@"RelativePathsToRemoveOnRestore"];

              if (v13 || (v13 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
              {
                [v13 addObject:@"Library/homed/protected-home.config"];
                [v13 addObject:@"Library/homed/datastore.sqlite"];
                [v13 addObject:@"Library/homed/datastore.sqlite-shm"];
                [v13 addObject:@"Library/homed/datastore.sqlite-wal"];
                [v12 setObject:v13 forKey:@"RelativePathsToRemoveOnRestore"];
                [v8 setObject:v12 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C9058();
                goto LABEL_172;
              }

              v14 = [v12 objectForKey:@"RelativePathsNotToBackupToService"];

              if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v14 removeObject:@"Library/homed/datastore.sqlite"];
                [v14 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v14 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v12 setObject:v14 forKey:@"RelativePathsNotToBackupToService"];
                [v8 setObject:v12 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8FF0();
                goto LABEL_172;
              }

              v15 = [v12 objectForKey:@"RelativePathsNotToBackupInMegaBackup"];

              if (v15 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v15 removeObject:@"Library/homed/datastore.sqlite"];
                [v15 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v15 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v12 setObject:v15 forKey:@"RelativePathsNotToBackupInMegaBackup"];
                [v8 setObject:v12 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8F88();
                goto LABEL_172;
              }

              v16 = [v12 objectForKey:@"RelativePathsToRestoreOnly"];

              if (v16 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v16 removeObject:@"Library/homed/protected-home.config"];
                [v16 removeObject:@"Library/homed/datastore.sqlite"];
                [v16 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v16 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v12 setObject:v16 forKey:@"RelativePathsToRestoreOnly"];
                [v8 setObject:v12 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8F20();
                goto LABEL_172;
              }

              v11 = [v12 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

              if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                [v11 removeObject:@"Library/homed/protected-home.config"];
                [v11 removeObject:@"Library/homed/datastore.sqlite"];
                [v11 removeObject:@"Library/homed/datastore.sqlite-shm"];
                [v11 removeObject:@"Library/homed/datastore.sqlite-wal"];
                [v12 setObject:v11 forKey:@"RelativePathsToOnlyBackupEncrypted"];
                [v8 setObject:v12 forKey:@"HomeKitDomain"];
              }

              else if (has_internal_content)
              {
                sub_1000C8EB8();
                goto LABEL_172;
              }
            }
          }

          v17 = [v8 objectForKey:@"HomeDomain"];

          if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v18 = [v17 objectForKey:@"RelativePathsNotToBackup"];

            if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v18 addObject:@"Library/Preferences/com.apple.identityservices.idstatuscache.plist"];
              [v18 addObject:@"Library/Preferences/com.apple.identityservicesd.plist"];
              [v18 addObject:@"Library/Preferences/com.apple.ids.deviceproperties.plist"];
              [v18 addObject:@"Library/Preferences/com.apple.ids.subservices.plist"];
              [v18 addObject:@"Library/Preferences/com.apple.ids.plist"];
              [v18 removeObject:@"Library/MobileBluetooth/com.apple.MobileBluetooth.ledevices.other.db"];
              [v17 setObject:v18 forKey:@"RelativePathsNotToBackup"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C941C();
              goto LABEL_172;
            }

            v20 = [v17 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v20 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v20 removeObject:@"Library/Accounts"];
              [v20 removeObject:@"Library/DeviceRegistry"];
              [v20 removeObject:@"Library/DeviceRegistry.state"];
              [v20 removeObject:@"Library/MobileBluetooth"];
              [v20 removeObject:@"Library/Mobile Documents"];
              [v20 addObject:@"Library/Application Support/ScreenSaverManager"];
              isKindOfClass = [v17 objectForKey:@"RelativePathsToBackupToDriveAndStandardAccount"];
              v19 = isKindOfClass;
              if (isKindOfClass && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) != 0))
              {
                v22 = [v20 arrayByAddingObjectsFromArray:v19];
                v23 = [v22 mutableCopy];

                v24 = +[NSMutableArray array];
                [v17 setObject:v24 forKey:@"RelativePathsToBackupToDriveAndStandardAccount"];

                v20 = v23;
              }

              else
              {
                v25 = sub_100063A54(isKindOfClass);
                if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Cannot find RelativePathsToBackupToDriveAndStandardAccount under HomeDomain.", buf, 2u);
                }
              }

              [v17 setObject:v20 forKey:@"RelativePathsToBackupAndRestore"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else
            {
              if (has_internal_content)
              {
                sub_1000C93B4();
                goto LABEL_172;
              }

              v19 = 0;
            }

            v26 = [v17 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v26 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v26 addObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v26 addObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v17 setObject:v26 forKey:@"RelativePathsToBackupAndRestore"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9348();
              goto LABEL_172;
            }

            v27 = [v17 objectForKey:@"RelativePathsToRestoreOnly"];

            if (v27 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v27 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v27 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v17 setObject:v27 forKey:@"RelativePathsToRestoreOnly"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C92DC();
              goto LABEL_172;
            }

            v28 = [v17 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

            if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v28 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurations.json"];
              [v28 removeObject:@"Library/DoNotDisturb/DB/ModeConfigurationsSecure.json"];
              [v17 setObject:v28 forKey:@"RelativePathsToOnlyBackupEncrypted"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9270();
              goto LABEL_172;
            }

            v29 = [v17 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v29 addObject:@"Library/Safari/SafariTabs.db"];
              [v17 setObject:v29 forKey:@"RelativePathsToBackupAndRestore"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9204();
              goto LABEL_172;
            }

            v30 = [v17 objectForKey:@"RelativePathsToRestoreOnly"];

            if (v30 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v30 removeObject:@"Library/Safari/SafariTabs.db"];
              [v17 setObject:v30 forKey:@"RelativePathsToRestoreOnly"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9198();
              goto LABEL_172;
            }

            v31 = [v17 objectForKey:@"RelativePathsToOnlyBackupEncrypted"];

            if (v31 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v31 removeObject:@"Library/Safari/SafariTabs.db"];
              [v17 setObject:v31 forKey:@"RelativePathsToOnlyBackupEncrypted"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C912C();
              goto LABEL_172;
            }

            v11 = [v17 objectForKey:@"RelativePathsNotToBackupToService"];

            if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v11 removeObject:@"Library/Safari/SafariTabs.db"];
              [v17 setObject:v11 forKey:@"RelativePathsNotToBackupToService"];
              [v8 setObject:v17 forKey:@"HomeDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C90C0();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9928();
              goto LABEL_172;
            }

            v19 = 0;
          }

          v32 = [v8 objectForKey:@"KeychainDomain"];

          if (v32 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v33 = +[NSMutableArray array];
            [v32 setObject:v33 forKey:@"RelativePathsToBackupAndRestore"];

            [v8 setObject:v32 forKey:@"KeychainDomain"];
          }

          else if (has_internal_content)
          {
            sub_1000C98BC();
            goto LABEL_172;
          }

          v34 = [v8 objectForKey:@"MediaDomain"];

          if (v34 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            [v34 removeObjectForKey:@"RelativePathsNotToBackupToDrive"];
            [v8 setObject:v34 forKey:@"MediaDomain"];
            v35 = [v34 objectForKey:@"RelativePathsToBackupAndRestore"];

            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v35 removeObject:@"Media/iTunes_Control/Device/Trainer"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/iTunesPrefs.plist"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/MobileSync.plist"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/iPhotoAlbumPrefs"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/ApertureAlbumPrefs"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/PSAlbumAlbums"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/PSElementsAlbums"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderPrefs"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderAlbums"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/PhotosFolderName"];
              [v35 removeObject:@"Media/iTunes_Control/iTunes/MediaLibrary.sqlitedb"];
              [v35 addObject:@"Media/iTunes_Control/iTunes"];
              [v35 addObject:@"Media/iTunes_Control/Music"];
              [v35 addObject:@"Media/iTunes_Control/Sync"];
              [v35 addObject:@"Media/iTunes_Control/Artwork"];
              [v35 addObject:@"Media/Books"];
              [v35 addObject:@"Media/ManagedPurchases"];
              [v35 addObject:@"Media/Music/Downloads"];
              [v34 setObject:v35 forKey:@"RelativePathsToBackupAndRestore"];
              [v8 setObject:v34 forKey:@"MediaDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9484();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9850();
              goto LABEL_172;
            }

            v35 = v11;
          }

          v36 = [v8 objectForKey:@"RootDomain"];

          if (v36 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v37 = [v36 objectForKey:@"RelativePathsToRemoveOnRestore"];

            if (v37 || (v37 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v37 addObject:@"Library/Preferences/com.apple.ASPCarryLog.plist"];
              [v36 setObject:v37 forKey:@"RelativePathsToRemoveOnRestore"];
              [v8 setObject:v36 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C9634();
              goto LABEL_172;
            }

            v38 = [v36 objectForKey:@"RelativePathsNotToRemoveIfNotRestored"];

            if (v38 || (v38 = objc_alloc_init(NSMutableArray)) != 0) && (objc_opt_class(), (objc_opt_isKindOfClass()))
            {
              [v38 addObject:@"Library/Preferences/com.apple.MobileAsset.plist"];
              [v36 setObject:v38 forKey:@"RelativePathsNotToRemoveIfNotRestored"];
              [v8 setObject:v36 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C95C8();
              goto LABEL_172;
            }

            v39 = [v36 objectForKey:@"RelativePathsNotToRestore"];

            if (v39 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v39 removeObject:@"Library/Preferences/com.apple.powerd.lowpowermode.state.plist"];
              [v39 removeObject:@"Library/Preferences/com.apple.osanalytics.internal.plist"];
              [v36 setObject:v39 forKey:@"RelativePathsNotToRestore"];
              [v8 setObject:v36 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C955C();
              goto LABEL_172;
            }

            v35 = [v36 objectForKey:@"RelativePathsNotToBackup"];

            if (v35 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v35 removeObject:@"Library/Preferences/com.apple.powerd.lowpowermode.state.plist"];
              [v35 removeObject:@"Library/Preferences/com.apple.osanalytics.internal.plist"];
              [v36 setObject:v35 forKey:@"RelativePathsNotToBackup"];
              [v8 setObject:v36 forKey:@"RootDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C94F0();
              goto LABEL_172;
            }
          }

          else if (has_internal_content)
          {
            sub_1000C97E4();
            goto LABEL_172;
          }

          v40 = [v8 objectForKey:@"SystemPreferencesDomain"];

          if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v41 = [v40 objectForKey:@"RelativePathsNotToBackup"];

            if (v41 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v41 addObject:@"SystemConfiguration/com.apple.wifi.plist"];
              [v41 addObject:@"SystemConfiguration/com.apple.wifi-networks.plist"];
              [v40 setObject:v41 forKey:@"RelativePathsNotToBackup"];
              [v8 setObject:v40 forKey:@"SystemPreferencesDomain"];
            }

            else if (has_internal_content)
            {
              sub_1000C96A0();
              goto LABEL_172;
            }
          }

          else
          {
            if (has_internal_content)
            {
              sub_1000C9778();
              goto LABEL_172;
            }

            v41 = v35;
          }

          v42 = [v8 objectForKey:@"KeyboardDomain"];

          if (v42)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v43 = [v42 objectForKey:@"RelativePathsToBackupAndRestore"];

              if (v43)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [v43 addObject:@"Library/KeyboardServices"];
                }
              }

              goto LABEL_135;
            }
          }

          if (!has_internal_content)
          {
            v43 = v41;
LABEL_135:
            v44 = objc_alloc_init(NSMutableDictionary);

            [v44 setObject:@"/var/MobileAsset" forKey:@"RootPath"];
            v45 = objc_alloc_init(NSMutableArray);

            [v45 addObject:@"AssetsV2/com_apple_MobileAsset_SystemEnvironmentAsset"];
            [v45 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_FM_GenerativeModels"];
            [v45 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_Siri_Understanding"];
            [v45 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_IF_Planner"];
            [v45 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_Photos_MagicCleanup"];
            [v45 addObject:@"PreinstalledAssetsV2/InstallWithOs/com_apple_MobileAsset_UAF_FM_Visual"];
            [v44 setObject:v45 forKey:@"RelativePathsToBackupAndRestore"];
            [v8 setObject:v44 forKey:@"MobileAssetDomain"];
            v46 = +[NSMutableDictionary dictionary];

            [v46 setObject:@"/var/mobile/XcodeBuiltProducts" forKey:@"RootPath"];
            v47 = +[NSMutableArray array];

            [v47 addObject:@"PressDemoScripts.xctestproducts"];
            [v46 setObject:v47 forKey:@"RelativePathsToBackupAndRestore"];
            [v8 setObject:v46 forKey:@"DemoPortalScriptsDomain"];
            [v6 setObject:v8 forKey:@"SystemDomains"];
            v48 = v6;

LABEL_136:
            plistCopy = v50;
            goto LABEL_137;
          }

          sub_1000C970C();
LABEL_172:
          v48 = 0;
          goto LABEL_136;
        }
      }

      if (!has_internal_content)
      {
        v11 = 0;
        goto LABEL_16;
      }

      sub_1000C9990(v9);
    }

    else
    {
      sub_1000C9A04(v7);
    }
  }

  else
  {
    v8 = sub_100063A54(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1000C9A6C(plistCopy, v8);
    }
  }

  v48 = 0;
LABEL_137:

  return v48;
}

@end