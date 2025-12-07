@interface MSDComponentBuilder
- (BOOL)isDuplicateApp:(id)app;
- (MSDComponentBuilder)initWithSignedManifest:(id)manifest andOptions:(id)options;
- (id)_buildAppComponentsNotInManifest:(id)manifest;
- (id)buildComponentsFromManifest;
- (id)buildComponentsNotInManifest;
@end

@implementation MSDComponentBuilder

- (MSDComponentBuilder)initWithSignedManifest:(id)manifest andOptions:(id)options
{
  manifestCopy = manifest;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = MSDComponentBuilder;
  v8 = [(MSDComponentBuilder *)&v18 init];
  v9 = v8;
  if (v8)
  {
    [(MSDComponentBuilder *)v8 setSignedManifest:manifestCopy];
    [(MSDComponentBuilder *)v9 setIsCriticalUpdate:0];
    [(MSDComponentBuilder *)v9 setForBackgroundDownload:0];
    [(MSDComponentBuilder *)v9 setVerifyHashBeforeStaging:0];
    [(MSDComponentBuilder *)v9 setAppItemToDefer:0];
    v10 = [optionsCopy objectForKey:@"IsCriticalUpdate"];
    v11 = v10;
    if (v10)
    {
      -[MSDComponentBuilder setIsCriticalUpdate:](v9, "setIsCriticalUpdate:", [v10 BOOLValue]);
    }

    v12 = [optionsCopy objectForKey:@"ForBackgroundDownload"];
    v13 = v12;
    if (v12)
    {
      -[MSDComponentBuilder setForBackgroundDownload:](v9, "setForBackgroundDownload:", [v12 BOOLValue]);
    }

    v14 = [optionsCopy objectForKey:@"VerifyHashBeforeStaging"];
    v15 = v14;
    if (v14)
    {
      -[MSDComponentBuilder setVerifyHashBeforeStaging:](v9, "setVerifyHashBeforeStaging:", [v14 BOOLValue]);
    }

    v16 = [optionsCopy objectForKey:@"AppItemToDefer"];
    if (v16)
    {
      [(MSDComponentBuilder *)v9 setAppItemToDefer:v16];
    }
  }

  return v9;
}

- (id)buildComponentsFromManifest
{
  isCriticalUpdate = [(MSDComponentBuilder *)self isCriticalUpdate];
  signedManifest = [(MSDComponentBuilder *)self signedManifest];
  v5 = signedManifest;
  if (isCriticalUpdate)
  {
    [signedManifest criticalComponents];
  }

  else
  {
    [signedManifest installationOrder];
  }
  v6 = ;

  v7 = +[MSDAppHelper sharedInstance];
  installedApps = [v7 installedApps];

  signedManifest2 = [(MSDComponentBuilder *)self signedManifest];
  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [signedManifest2 getVersion]);

  v11 = +[MSDProgressUpdater sharedInstance];
  bundleInProgress = [v11 bundleInProgress];

  v48[0] = 0;
  v48[1] = v48;
  v48[2] = 0x3032000000;
  v48[3] = sub_100031BD8;
  v48[4] = sub_100031BE8;
  v13 = [MSDOperationBuilder alloc];
  signedManifest3 = [(MSDComponentBuilder *)self signedManifest];
  v49 = [(MSDOperationBuilder *)v13 initWithSignedManifest:signedManifest3 forBackgroundDownload:[(MSDComponentBuilder *)self forBackgroundDownload] verifyHashBeforeStaging:[(MSDComponentBuilder *)self verifyHashBeforeStaging]];

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_100031BD8;
  v46 = sub_100031BE8;
  v47 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v6 count]);
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_100031BD8;
  v40 = sub_100031BE8;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v20 = _NSConcreteStackBlock;
  v21 = 3221225472;
  v22 = sub_100031BF0;
  v23 = &unk_10016A780;
  v15 = v10;
  v24 = v15;
  v16 = bundleInProgress;
  v25 = v16;
  selfCopy = self;
  v28 = v48;
  v17 = installedApps;
  v27 = v17;
  v29 = &v36;
  v30 = &v42;
  v31 = &v32;
  [v6 enumerateObjectsUsingBlock:&v20];
  if (v33[3])
  {
    if (v37[5])
    {
      [v43[5] addObject:{v20, v21, v22, v23, v24, v25, selfCopy}];
    }

    v18 = [v43[5] copy];
  }

  else
  {
    v18 = 0;
  }

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(v48, 8);

  return v18;
}

- (BOOL)isDuplicateApp:(id)app
{
  appCopy = app;
  signedManifest = [(MSDComponentBuilder *)self signedManifest];
  v6 = [signedManifest getAppManifest:appCopy];

  if (!v6)
  {
    uniqueIdentifier = 0;
    v11 = 0;
    v9 = 0;
    v8 = 0;
    goto LABEL_7;
  }

  v7 = +[MSDAppHelper sharedInstance];
  v8 = [v7 bundlePathForInstalledApp:appCopy];

  v9 = [MSDiOSApp appWithPath:v8];
  uniqueIdentifier = [v9 uniqueIdentifier];
  v11 = [v6 objectForKey:@"Identifier"];
  v12 = [uniqueIdentifier isEqualToString:v11];
  if (v12)
  {
LABEL_7:
    v14 = 0;
    goto LABEL_8;
  }

  v13 = sub_100063A54(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = appCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "The app %{public}@ has a different version installed.  Will need to remove currently installed version in preparation for newer version.", &v16, 0xCu);
  }

  v14 = 1;
LABEL_8:

  return v14;
}

- (id)_buildAppComponentsNotInManifest:(id)manifest
{
  manifestCopy = manifest;
  v5 = objc_alloc_init(NSMutableArray);
  signedManifest = [(MSDComponentBuilder *)self signedManifest];
  getAppList = [signedManifest getAppList];

  v8 = +[MSDAppHelper sharedInstance];
  installedApps = [v8 installedApps];

  v11 = sub_100063A54(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Building components for removing app not in manifest...", buf, 2u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = installedApps;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v29;
    *&v14 = 138543362;
    v27 = v14;
    while (2)
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v28 + 1) + 8 * i);
        v19 = [getAppList objectForKey:{v18, v27, v28}];

        if (!v19)
        {
          v21 = sub_100063A54(v20);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v27;
            v33 = v18;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Building component for removing app: %{public}@", buf, 0xCu);
          }

          v22 = [manifestCopy buildAppRemovalOperationsWithIdentifier:v18];
          if (!v22 || (v23 = [[MSDComponent alloc] initWithName:v18 andOperations:v22]) == 0)
          {
            sub_1000CD394(v22, v12);
            v25 = 0;
            goto LABEL_17;
          }

          v24 = v23;
          [(MSDComponent *)v23 setForRemoval:1];
          [v5 addObject:v24];
        }
      }

      v15 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v25 = v5;
LABEL_17:

  return v25;
}

- (id)buildComponentsNotInManifest
{
  v3 = [MSDOperationBuilder alloc];
  signedManifest = [(MSDComponentBuilder *)self signedManifest];
  v5 = [(MSDOperationBuilder *)v3 initWithSignedManifest:signedManifest forBackgroundDownload:[(MSDComponentBuilder *)self forBackgroundDownload] verifyHashBeforeStaging:[(MSDComponentBuilder *)self verifyHashBeforeStaging]];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(MSDComponentBuilder *)self _buildAppComponentsNotInManifest:v5];
  if (v7)
  {
    [v6 addObjectsFromArray:v7];
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end