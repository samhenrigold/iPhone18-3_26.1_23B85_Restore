@interface PowerTableAssetStore
+ (BOOL)directoryExistsAtPath:(id)path;
+ (BOOL)fileExistsAtPath:(id)path;
- (BOOL)commitStagedAsset:(id)asset;
- (BOOL)rejectStagedAsset:(id)asset;
- (BOOL)stageAsset:(id)asset;
- (BOOL)unstageStagedAsset:(id)asset;
- (PowerTableAssetStore)initWithSubsystem:(int64_t)subsystem;
- (id)loadAssetWithIdentifier:(id)identifier state:(int64_t)state;
- (id)pathForAsset:(id)asset;
- (id)pathForAssetWithIdentifier:(id)identifier state:(int64_t)state;
- (void)activate;
- (void)dealloc;
- (void)loadState;
- (void)log;
- (void)purgeAsset:(id)asset;
- (void)refresh;
- (void)saveState;
@end

@implementation PowerTableAssetStore

- (PowerTableAssetStore)initWithSubsystem:(int64_t)subsystem
{
  v5.receiver = self;
  v5.super_class = PowerTableAssetStore;
  result = [(PowerTableAssetStore *)&v5 init];
  if (result)
  {
    result->_subsystem = subsystem;
  }

  return result;
}

- (void)activate
{
  subsystem = self->_subsystem;
  if (subsystem)
  {
    if (subsystem != 1)
    {
      goto LABEL_6;
    }

    v4 = @"/private/var/db/ConnectivityPowerTableUpdates/Consumer/BT";
    v5 = @"/private/var/db/ConnectivityPowerTableUpdates/BT";
  }

  else
  {
    v4 = @"/private/var/db/ConnectivityPowerTableUpdates/Consumer/WiFi";
    v5 = @"/private/var/db/ConnectivityPowerTableUpdates/WiFi";
  }

  storePath = self->_storePath;
  self->_storePath = &v5->isa;

  stateDirPath = self->_stateDirPath;
  self->_stateDirPath = &v4->isa;

LABEL_6:
  v8 = [(NSString *)self->_stateDirPath stringByAppendingPathComponent:@"State.plist"];
  statePlistPath = self->_statePlistPath;
  self->_statePlistPath = v8;

  v10 = [(NSString *)self->_storePath stringByAppendingPathComponent:@"Latest.plist"];
  latestPlistPath = self->_latestPlistPath;
  self->_latestPlistPath = v10;

  [(PowerTableAssetStore *)self loadState];

  [(PowerTableAssetStore *)self refresh];
}

- (BOOL)stageAsset:(id)asset
{
  assetCopy = asset;
  v6 = sub_100025204(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v96 = v7;
    v97 = 2114;
    v98 = v8;
    v99 = 2114;
    v100 = assetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  subsystem = [(NSString *)assetCopy subsystem];
  if (subsystem != self->_subsystem)
  {
    v60 = sub_100025204(subsystem);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
LABEL_30:
      v38 = 0;
      v37 = 0;
      v58 = 0;
      v20 = 0;
LABEL_31:
      stagedAsset = 0;
LABEL_49:

      v53 = 0;
      v56 = v20;
      goto LABEL_26;
    }

    v61 = [objc_opt_class() description];
    NSStringFromSelector(a2);
    v63 = v62 = assetCopy;
    v64 = [PowerTableAsset subsystemAsString:[(NSString *)v62 subsystem]];
    *buf = 138543874;
    v96 = v61;
    v97 = 2114;
    v98 = v63;
    v99 = 2112;
    v100 = v64;
    v65 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_51:
    _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, v65, buf, 0x20u);

    assetCopy = v62;
    goto LABEL_30;
  }

  state = [(NSString *)assetCopy state];
  if (state)
  {
    v60 = sub_100025204(state);
    if (!os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    v61 = [objc_opt_class() description];
    NSStringFromSelector(a2);
    v63 = v62 = assetCopy;
    v64 = [PowerTableAsset stateAsString:[(NSString *)v62 state]];
    *buf = 138543874;
    v96 = v61;
    v97 = 2114;
    v98 = v63;
    v99 = 2112;
    v100 = v64;
    v65 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_51;
  }

  v11 = [objc_opt_class() directoryExistsAtPath:self->_stateDirPath];
  if (v11)
  {
    v12 = 0;
    goto LABEL_11;
  }

  v13 = sub_100025204(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    stateDirPath = self->_stateDirPath;
    *buf = 138543874;
    v96 = v14;
    v97 = 2114;
    v98 = v15;
    v99 = 2114;
    v100 = stateDirPath;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: creating %{public}@", buf, 0x20u);
  }

  v17 = +[NSFileManager defaultManager];
  v18 = self->_stateDirPath;
  v92 = 0;
  v19 = [v17 createDirectoryAtPath:v18 withIntermediateDirectories:1 attributes:0 error:&v92];
  v20 = v92;

  if ((v19 & 1) == 0)
  {
    v60 = sub_100025204(v21);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v76 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      v78 = v77 = assetCopy;
      v79 = self->_stateDirPath;
      *buf = 138544130;
      v96 = v76;
      v97 = 2114;
      v98 = v78;
      v99 = 2114;
      v100 = v79;
      v101 = 2114;
      v102 = v20;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to create %{public}@: %{public}@", buf, 0x2Au);

      assetCopy = v77;
    }

    v38 = 0;
    v37 = 0;
    v58 = 0;
    goto LABEL_31;
  }

  v22 = +[NSFileManager defaultManager];
  v105 = NSFilePosixPermissions;
  v106 = &off_10006D8D8;
  v23 = [NSDictionary dictionaryWithObjects:&v106 forKeys:&v105 count:1];
  v24 = self->_stateDirPath;
  v91 = v20;
  v25 = [v22 setAttributes:v23 ofItemAtPath:v24 error:&v91];
  v12 = v91;

  if ((v25 & 1) == 0)
  {
    v60 = sub_100025204(v26);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v80 = [objc_opt_class() description];
      NSStringFromSelector(a2);
      v82 = v81 = assetCopy;
      v83 = self->_stateDirPath;
      *buf = 138544130;
      v96 = v80;
      v97 = 2114;
      v98 = v82;
      v99 = 2114;
      v100 = v83;
      v101 = 2114;
      v102 = v12;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", buf, 0x2Au);

      assetCopy = v81;
    }

    v38 = 0;
    v37 = 0;
    v58 = 0;
    stagedAsset = 0;
    v20 = v12;
    goto LABEL_49;
  }

LABEL_11:
  stagedAsset = [(PowerTableAssetStore *)self stagedAsset];

  aSelector = a2;
  if (stagedAsset)
  {
    stagedAsset2 = [(PowerTableAssetStore *)self stagedAsset];
    stagedAsset = [(PowerTableAssetStore *)self pathForAsset:stagedAsset2];

    v30 = sub_100025204(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [objc_opt_class() description];
      v32 = NSStringFromSelector(a2);
      *buf = 138543874;
      v96 = v31;
      v97 = 2114;
      v98 = v32;
      v99 = 2114;
      v100 = stagedAsset;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v33 = +[NSFileManager defaultManager];
    v90 = v12;
    v34 = [v33 removeItemAtPath:stagedAsset error:&v90];
    v20 = v90;

    if ((v34 & 1) == 0)
    {
      v60 = sub_100025204(v35);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v73 = [objc_opt_class() description];
        NSStringFromSelector(a2);
        v75 = v74 = assetCopy;
        *buf = 138544130;
        v96 = v73;
        v97 = 2114;
        v98 = v75;
        v99 = 2114;
        v100 = stagedAsset;
        v101 = 2114;
        v102 = v20;
        _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);

        assetCopy = v74;
      }

      v38 = 0;
      v37 = 0;
      v58 = 0;
      goto LABEL_49;
    }

    v12 = v20;
  }

  v36 = [(NSString *)assetCopy assetByChangingState:1];
  v86 = assetCopy;
  v37 = [(PowerTableAssetStore *)self pathForAsset:assetCopy];
  v85 = v36;
  v38 = [(PowerTableAssetStore *)self pathForAsset:v36];
  v39 = [objc_opt_class() directoryExistsAtPath:v38];
  if (v39)
  {
    v40 = sub_100025204(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = [objc_opt_class() description];
      v42 = NSStringFromSelector(aSelector);
      *buf = 138543874;
      v96 = v41;
      v97 = 2114;
      v98 = v42;
      v99 = 2114;
      v100 = v38;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v43 = +[NSFileManager defaultManager];
    v89 = v12;
    v44 = [v43 removeItemAtPath:v38 error:&v89];
    v20 = v89;

    if ((v44 & 1) == 0)
    {
      v60 = sub_100025204(v39);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v66 = [objc_opt_class() description];
        v67 = NSStringFromSelector(aSelector);
        *buf = 138544130;
        v96 = v66;
        v97 = 2114;
        v98 = v67;
        v99 = 2114;
        v100 = v38;
        v101 = 2114;
        v102 = v20;
        v68 = "%{public}@::%{public}@: failed to remove %{public}@: %{public}@";
        v69 = v60;
        v70 = 42;
        goto LABEL_53;
      }

LABEL_47:
      assetCopy = v86;
LABEL_48:
      v58 = v85;
      goto LABEL_49;
    }

    v12 = v20;
  }

  v45 = sub_100025204(v39);
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    v46 = [objc_opt_class() description];
    v47 = NSStringFromSelector(aSelector);
    *buf = 138544130;
    v96 = v46;
    v97 = 2114;
    v98 = v47;
    v99 = 2114;
    v100 = v37;
    v101 = 2114;
    v102 = v38;
    _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: copying %{public}@ -> %{public}@", buf, 0x2Au);
  }

  v48 = +[NSFileManager defaultManager];
  v88 = v12;
  v49 = [v48 copyItemAtPath:v37 toPath:v38 error:&v88];
  v20 = v88;

  if ((v49 & 1) == 0)
  {
    v60 = sub_100025204(v50);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v66 = [objc_opt_class() description];
      v67 = NSStringFromSelector(aSelector);
      *buf = 138544386;
      v96 = v66;
      v97 = 2114;
      v98 = v67;
      v99 = 2114;
      v100 = v37;
      v101 = 2114;
      v102 = v38;
      v103 = 2114;
      v104 = v20;
      v68 = "%{public}@::%{public}@: failed to copy %{public}@ -> %{public}@: %{public}@";
      v69 = v60;
      v70 = 52;
LABEL_53:
      _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, v68, buf, v70);

      goto LABEL_47;
    }

    goto LABEL_47;
  }

  v51 = stagedAsset;
  v52 = +[NSFileManager defaultManager];
  v93 = NSFilePosixPermissions;
  v94 = &off_10006D8D8;
  v53 = 1;
  v54 = [NSDictionary dictionaryWithObjects:&v94 forKeys:&v93 count:1];
  v87 = v20;
  v55 = [v52 setAttributes:v54 ofItemAtPath:v38 error:&v87];
  v56 = v87;

  if ((v55 & 1) == 0)
  {
    v60 = sub_100025204(v57);
    assetCopy = v86;
    stagedAsset = v51;
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v71 = [objc_opt_class() description];
      v72 = NSStringFromSelector(aSelector);
      *buf = 138544130;
      v96 = v71;
      v97 = 2114;
      v98 = v72;
      v99 = 2114;
      v100 = v38;
      v101 = 2114;
      v102 = v56;
      _os_log_error_impl(&_mh_execute_header, v60, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", buf, 0x2Au);

      assetCopy = v86;
    }

    v20 = v56;
    goto LABEL_48;
  }

  assetCopy = v86;
  v58 = v85;
  stagedAsset = v51;
LABEL_26:
  [(PowerTableAssetStore *)self setStagedAsset:?];
  [(PowerTableAssetStore *)self saveState];
  [(PowerTableAssetStore *)self log];

  return v53;
}

- (BOOL)commitStagedAsset:(id)asset
{
  assetCopy = asset;
  v6 = sub_100025204(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    v12 = 138543874;
    v13 = v7;
    v14 = 2114;
    v15 = v8;
    v16 = 2114;
    v17 = assetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", &v12, 0x20u);
  }

  if ([assetCopy subsystem] != self->_subsystem)
  {
    sub_10002D7B0(self, a2, assetCopy);
LABEL_9:
    v10 = 0;
    goto LABEL_6;
  }

  if ([assetCopy state] != 1)
  {
    sub_10002D8B8(self, a2, assetCopy);
    goto LABEL_9;
  }

  v9 = [assetCopy assetByChangingState:2];
  [(PowerTableAssetStore *)self setActiveAsset:v9];

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v10 = 1;
LABEL_6:
  [(PowerTableAssetStore *)self refresh];

  return v10;
}

- (BOOL)rejectStagedAsset:(id)asset
{
  assetCopy = asset;
  v6 = sub_100025204(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v34 = v7;
    v35 = 2114;
    v36 = v8;
    v37 = 2114;
    v38 = assetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  subsystem = [assetCopy subsystem];
  if (subsystem != self->_subsystem)
  {
    v25 = sub_100025204(subsystem);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
LABEL_16:
      v21 = 0;
      v15 = 0;
      v11 = 0;
LABEL_19:

      v23 = 0;
      goto LABEL_12;
    }

    v26 = [objc_opt_class() description];
    v27 = NSStringFromSelector(a2);
    v28 = +[PowerTableAsset subsystemAsString:](PowerTableAsset, "subsystemAsString:", [assetCopy subsystem]);
    *buf = 138543874;
    v34 = v26;
    v35 = 2114;
    v36 = v27;
    v37 = 2112;
    v38 = v28;
    v29 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v29, buf, 0x20u);

    goto LABEL_16;
  }

  state = [assetCopy state];
  if (state != 1)
  {
    v25 = sub_100025204(state);
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v26 = [objc_opt_class() description];
    v27 = NSStringFromSelector(a2);
    v28 = +[PowerTableAsset stateAsString:](PowerTableAsset, "stateAsString:", [assetCopy state]);
    *buf = 138543874;
    v34 = v26;
    v35 = 2114;
    v36 = v27;
    v37 = 2112;
    v38 = v28;
    v29 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_21;
  }

  v11 = [assetCopy assetByChangingState:3];
  rejectedAssets = [(PowerTableAssetStore *)self rejectedAssets];

  if (rejectedAssets)
  {
    rejectedAssets2 = [(PowerTableAssetStore *)self rejectedAssets];
    v14 = [rejectedAssets2 setByAddingObject:v11];
    [(PowerTableAssetStore *)self setRejectedAssets:v14];
  }

  else
  {
    rejectedAssets2 = [NSSet setWithObject:v11];
    [(PowerTableAssetStore *)self setRejectedAssets:rejectedAssets2];
  }

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v15 = [(PowerTableAssetStore *)self pathForAsset:assetCopy];
  v16 = sub_100025204(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    *buf = 138543874;
    v34 = v17;
    v35 = 2114;
    v36 = v18;
    v37 = 2114;
    v38 = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
  }

  v19 = +[NSFileManager defaultManager];
  v32 = 0;
  v20 = [v19 removeItemAtPath:v15 error:&v32];
  v21 = v32;

  if ((v20 & 1) == 0)
  {
    v25 = sub_100025204(v22);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v30 = [objc_opt_class() description];
      v31 = NSStringFromSelector(a2);
      *buf = 138544130;
      v34 = v30;
      v35 = 2114;
      v36 = v31;
      v37 = 2114;
      v38 = v15;
      v39 = 2114;
      v40 = v21;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_19;
  }

  v23 = 1;
LABEL_12:
  [(PowerTableAssetStore *)self refresh];

  return v23;
}

- (BOOL)unstageStagedAsset:(id)asset
{
  assetCopy = asset;
  v6 = sub_100025204(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v30 = v7;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = assetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  subsystem = [assetCopy subsystem];
  if (subsystem != self->_subsystem)
  {
    v21 = sub_100025204(subsystem);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      v17 = 0;
      v11 = 0;
LABEL_16:

      v19 = 0;
      goto LABEL_9;
    }

    v22 = [objc_opt_class() description];
    v23 = NSStringFromSelector(a2);
    v24 = +[PowerTableAsset subsystemAsString:](PowerTableAsset, "subsystemAsString:", [assetCopy subsystem]);
    *buf = 138543874;
    v30 = v22;
    v31 = 2114;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    v25 = "%{public}@::%{public}@: wrong subsystem %@";
LABEL_18:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v25, buf, 0x20u);

    goto LABEL_13;
  }

  state = [assetCopy state];
  if (state != 1)
  {
    v21 = sub_100025204(state);
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v22 = [objc_opt_class() description];
    v23 = NSStringFromSelector(a2);
    v24 = +[PowerTableAsset stateAsString:](PowerTableAsset, "stateAsString:", [assetCopy state]);
    *buf = 138543874;
    v30 = v22;
    v31 = 2114;
    v32 = v23;
    v33 = 2112;
    v34 = v24;
    v25 = "%{public}@::%{public}@: wrong state %@";
    goto LABEL_18;
  }

  [(PowerTableAssetStore *)self setStagedAsset:0];
  [(PowerTableAssetStore *)self saveState];
  v11 = [(PowerTableAssetStore *)self pathForAsset:assetCopy];
  v12 = sub_100025204(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() description];
    v14 = NSStringFromSelector(a2);
    *buf = 138543874;
    v30 = v13;
    v31 = 2114;
    v32 = v14;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
  }

  v15 = +[NSFileManager defaultManager];
  v28 = 0;
  v16 = [v15 removeItemAtPath:v11 error:&v28];
  v17 = v28;

  if ((v16 & 1) == 0)
  {
    v21 = sub_100025204(v18);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v26 = [objc_opt_class() description];
      v27 = NSStringFromSelector(a2);
      *buf = 138544130;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2114;
      v34 = v11;
      v35 = 2114;
      v36 = v17;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  v19 = 1;
LABEL_9:
  [(PowerTableAssetStore *)self refresh];

  return v19;
}

- (void)purgeAsset:(id)asset
{
  assetCopy = asset;
  v6 = sub_100025204(assetCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [objc_opt_class() description];
    v8 = NSStringFromSelector(a2);
    *buf = 138543874;
    v32 = v7;
    v33 = 2114;
    v34 = v8;
    v35 = 2114;
    v36 = assetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@", buf, 0x20u);
  }

  if (assetCopy)
  {
    state = [assetCopy state];
    if (state > 1)
    {
      if (state != 2)
      {
        if (state == 3)
        {
          rejectedAssets = [(PowerTableAssetStore *)self rejectedAssets];
          v13 = [rejectedAssets mutableCopy];

          [v13 removeObject:assetCopy];
          if ([v13 count])
          {
            v14 = [v13 copy];
            [(PowerTableAssetStore *)self setRejectedAssets:v14];
          }

          else
          {
            [(PowerTableAssetStore *)self setRejectedAssets:0];
          }
        }

        goto LABEL_26;
      }

      activeAsset = [(PowerTableAssetStore *)self activeAsset];
      v18 = [activeAsset isEqual:assetCopy];

      if (v18)
      {
        [(PowerTableAssetStore *)self setActiveAsset:0];
      }
    }

    else
    {
      if (!state)
      {
        availableAsset = [(PowerTableAssetStore *)self availableAsset];
        v16 = [availableAsset isEqual:assetCopy];

        if (v16)
        {
          [(PowerTableAssetStore *)self setAvailableAsset:0];
        }

        goto LABEL_26;
      }

      if (state != 1)
      {
LABEL_26:
        [(PowerTableAssetStore *)self saveState];
        [(PowerTableAssetStore *)self log];
        goto LABEL_27;
      }

      stagedAsset = [(PowerTableAssetStore *)self stagedAsset];
      v11 = [stagedAsset isEqual:assetCopy];

      if (v11)
      {
        [(PowerTableAssetStore *)self setStagedAsset:0];
      }
    }

    v19 = [(PowerTableAssetStore *)self pathForAsset:assetCopy];
    v20 = sub_100025204(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = [objc_opt_class() description];
      v22 = NSStringFromSelector(a2);
      *buf = 138543874;
      v32 = v21;
      v33 = 2114;
      v34 = v22;
      v35 = 2114;
      v36 = v19;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: removing %{public}@", buf, 0x20u);
    }

    v23 = +[NSFileManager defaultManager];
    v30 = 0;
    v24 = [v23 removeItemAtPath:v19 error:&v30];
    v25 = v30;

    if ((v24 & 1) == 0)
    {
      v27 = sub_100025204(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = [objc_opt_class() description];
        v29 = NSStringFromSelector(a2);
        *buf = 138544130;
        v32 = v28;
        v33 = 2114;
        v34 = v29;
        v35 = 2114;
        v36 = v19;
        v37 = 2114;
        v38 = v25;
        _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: failed to remove %{public}@: %{public}@", buf, 0x2Au);
      }
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (id)pathForAsset:(id)asset
{
  assetCopy = asset;
  identifier = [assetCopy identifier];
  state = [assetCopy state];

  v7 = [(PowerTableAssetStore *)self pathForAssetWithIdentifier:identifier state:state];

  return v7;
}

- (void)log
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    v6 = NSStringFromSelector(a2);
    v7 = [objc_opt_class() subsystemAsString:self->_subsystem];
    storePath = self->_storePath;
    stateDirPath = self->_stateDirPath;
    v30 = 138544386;
    v31 = v5;
    v32 = 2114;
    v33 = v6;
    v34 = 2112;
    v35 = v7;
    v36 = 2114;
    v37 = storePath;
    v38 = 2114;
    v39 = stateDirPath;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: subsystem %@, store %{public}@, state %{public}@", &v30, 0x34u);
  }

  v11 = sub_100025204(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [objc_opt_class() description];
    v13 = NSStringFromSelector(a2);
    availableAsset = [(PowerTableAssetStore *)self availableAsset];
    v30 = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = v13;
    v34 = 2114;
    v35 = availableAsset;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: available %{public}@", &v30, 0x20u);
  }

  v16 = sub_100025204(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() description];
    v18 = NSStringFromSelector(a2);
    stagedAsset = [(PowerTableAssetStore *)self stagedAsset];
    v30 = 138543874;
    v31 = v17;
    v32 = 2114;
    v33 = v18;
    v34 = 2114;
    v35 = stagedAsset;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: staged %{public}@", &v30, 0x20u);
  }

  v21 = sub_100025204(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [objc_opt_class() description];
    v23 = NSStringFromSelector(a2);
    activeAsset = [(PowerTableAssetStore *)self activeAsset];
    v30 = 138543874;
    v31 = v22;
    v32 = 2114;
    v33 = v23;
    v34 = 2114;
    v35 = activeAsset;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: active %{public}@", &v30, 0x20u);
  }

  v26 = sub_100025204(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [objc_opt_class() description];
    v28 = NSStringFromSelector(a2);
    rejectedAssets = [(PowerTableAssetStore *)self rejectedAssets];
    v30 = 138543874;
    v31 = v27;
    v32 = 2114;
    v33 = v28;
    v34 = 2114;
    v35 = rejectedAssets;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: rejected %{public}@", &v30, 0x20u);
  }
}

- (id)pathForAssetWithIdentifier:(id)identifier state:(int64_t)state
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (state <= 3)
    {
      v4 = [*(&self->super.isa + qword_1000364E8[state]) stringByAppendingPathComponent:identifierCopy];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)fileExistsAtPath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:pathCopy isDirectory:&v13];

  if ((v6 & 1) == 0)
  {
    v10 = sub_100025204(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      v8 = 0;
      goto LABEL_4;
    }

    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = pathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ does not exist", buf, 0x20u);
LABEL_7:

    goto LABEL_9;
  }

  if (v13 == 1)
  {
    v10 = sub_100025204(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = pathCopy;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@ is a directory", buf, 0x20u);
    goto LABEL_7;
  }

  v8 = 1;
LABEL_4:

  return v8;
}

+ (BOOL)directoryExistsAtPath:(id)path
{
  pathCopy = path;
  v13 = 0;
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:pathCopy isDirectory:&v13];

  if ((v6 & 1) == 0)
  {
    v10 = sub_100025204(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_9:

      v8 = 0;
      goto LABEL_4;
    }

    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = pathCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@ does not exist", buf, 0x20u);
LABEL_7:

    goto LABEL_9;
  }

  if ((v13 & 1) == 0)
  {
    v10 = sub_100025204(v7);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    v11 = [objc_opt_class() description];
    v12 = NSStringFromSelector(a2);
    *buf = 138543874;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    v18 = 2114;
    v19 = pathCopy;
    _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: %{public}@ is not a directory", buf, 0x20u);
    goto LABEL_7;
  }

  v8 = 1;
LABEL_4:

  return v8;
}

- (void)dealloc
{
  v3 = sub_100025204(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}@::%{public}@: assertion failure: NO -- unexpected dealloc", &v8, 0x16u);
  }

  v6 = abort_report_np("assertion failure: NO -- unexpected dealloc");
  [(PowerTableAssetStore *)v6 availableAsset];
}

- (void)refresh
{
  v5 = sub_100025204(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v6 = sub_100004654();
    v7 = NSStringFromSelector(v6);
    v8 = [PowerTableAsset subsystemAsString:self->_subsystem];
    v33 = 138543874;
    v34 = v2;
    v35 = 2114;
    v36 = v7;
    v37 = 2112;
    v38 = v8;
    sub_10001B0E8(&_mh_execute_header, v5, v9, "%{public}@::%{public}@: %@", &v33);
  }

  if (![objc_opt_class() directoryExistsAtPath:self->_storePath] || !objc_msgSend(objc_opt_class(), "fileExistsAtPath:", self->_latestPlistPath))
  {
    goto LABEL_17;
  }

  v10 = [[NSDictionary alloc] initWithContentsOfFile:self->_latestPlistPath];
  if (!v10)
  {
    v25 = sub_100025204(0);
    if (sub_10001B0D0(v25))
    {
      [objc_opt_class() description];
      objc_claimAutoreleasedReturnValue();
      v30 = sub_100004654();
      v31 = NSStringFromSelector(v30);
      v33 = 138543874;
      v34 = v2;
      sub_10001B148();
      sub_10001B160(&_mh_execute_header, v5, v32, "%{public}@::%{public}@: failed to read %{public}@", &v33);
    }

LABEL_17:
    v24 = 0;
    v17 = 0;
    v12 = 0;
    v11 = 0;
    goto LABEL_13;
  }

  v11 = v10;
  v12 = [v10 objectForKey:@"latestAssetSubDir"];
  v13 = sub_100025204(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [objc_opt_class() description];
    v15 = NSStringFromSelector(a2);
    v33 = 138544386;
    v34 = v14;
    sub_10001B148();
    v39 = 2112;
    v40 = @"latestAssetSubDir";
    v41 = v16;
    v42 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %@=%{public}@", &v33, 0x34u);
  }

  if (!v12)
  {
    v24 = 0;
    v17 = 0;
    goto LABEL_13;
  }

  v17 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v12 state:0];
  if (!v17)
  {
LABEL_25:
    v24 = 0;
    goto LABEL_13;
  }

  activeAsset = [(PowerTableAssetStore *)self activeAsset];
  v19 = [v17 isEqual:activeAsset];

  if (v19)
  {
    v26 = sub_100025204(v20);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [objc_opt_class() description];
      v28 = NSStringFromSelector(a2);
      sub_10001B100();
      v29 = "%{public}@::%{public}@: latest already active";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, v29, &v33, 0x16u);
    }

LABEL_24:

    goto LABEL_25;
  }

  rejectedAssets = [(PowerTableAssetStore *)self rejectedAssets];
  v22 = [rejectedAssets containsObject:v17];

  if (v22)
  {
    v26 = sub_100025204(v23);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [objc_opt_class() description];
      v28 = NSStringFromSelector(a2);
      sub_10001B100();
      v29 = "%{public}@::%{public}@: latest already rejected";
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v24 = v17;
  v17 = v24;
LABEL_13:
  [(PowerTableAssetStore *)self setAvailableAsset:v24];
  [(PowerTableAssetStore *)self log];
}

- (id)loadAssetWithIdentifier:(id)identifier state:(int64_t)state
{
  identifierCopy = identifier;
  v12 = &airship_ch_interface_close_ptr;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v34 = sub_100025204(isKindOfClass);
    if (!sub_10001B0D0(v34))
    {
LABEL_26:
      sub_10001AFF4();
      v242 = 0;
      v243 = 0;
      v16 = 0;
      v244 = 0;
LABEL_33:
      v28 = 0;
      goto LABEL_21;
    }

    v35 = [objc_opt_class() description];
    v43 = sub_10001B03C(v35, v36, v37, v38, v39, v40, v41, v42, v206, v215, v224, a2);
    v44 = NSStringFromSelector(v43);
    sub_10001AFC4();
    v45 = "%{public}@::%{public}@: identifier has wrong type";
LABEL_55:
    _os_log_error_impl(&_mh_execute_header, &airship_ch_interface_close_ptr, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);

    v12 = &airship_ch_interface_close_ptr;
    goto LABEL_26;
  }

  v14 = [(PowerTableAssetStore *)self pathForAssetWithIdentifier:identifierCopy state:state];
  if (!v14)
  {
    v46 = sub_100025204(0);
    if (!sub_10001B0D0(v46))
    {
      goto LABEL_26;
    }

    v104 = [objc_opt_class() description];
    v112 = sub_10001B03C(v104, v105, v106, v107, v108, v109, v110, v111, v206, v215, v224, a2);
    v44 = NSStringFromSelector(v112);
    sub_10001AFC4();
    v45 = "%{public}@::%{public}@: no path";
    goto LABEL_55;
  }

  v8 = v14;
  v243 = v14;
  if (![objc_opt_class() directoryExistsAtPath:v14])
  {
    sub_10001AFF4();
    v242 = 0;
    v16 = 0;
    v244 = 0;
LABEL_29:
    v28 = 0;
    goto LABEL_22;
  }

  v6 = [v8 stringByAppendingPathComponent:@"Info.plist"];
  v244 = v6;
  if (![objc_opt_class() fileExistsAtPath:v6])
  {
    sub_10001AFF4();
    v242 = 0;
    v16 = 0;
    goto LABEL_29;
  }

  v15 = [[NSDictionary alloc] initWithContentsOfFile:v6];
  if (!v15)
  {
    v47 = sub_100025204(0);
    if (sub_10001B0D0(v47))
    {
      v113 = [objc_opt_class() description];
      v121 = sub_10001B03C(v113, v114, v115, v116, v117, v118, v119, v120, v206, v215, v224, a2);
      NSStringFromSelector(v121);
      v123 = v122 = identifierCopy;
      sub_10001AFC4();
      v248 = v124;
      v249 = v6;
      sub_10001B160(&_mh_execute_header, &airship_ch_interface_close_ptr, v125, "%{public}@::%{public}@: failed to read %{public}@", buf);

      identifierCopy = v122;
      v12 = &airship_ch_interface_close_ptr;
    }

    sub_10001AFF4();
    v242 = 0;
    v16 = 0;
    goto LABEL_33;
  }

  v16 = v15;
  v245 = identifierCopy;
  v7 = [v15 mutableCopy];
  v17 = sub_100025204([v7 removeObjectForKey:@"PowerTableVersionInfoDict"]);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [objc_opt_class() description];
    v5 = NSStringFromSelector(a2);
    *buf = 138544130;
    v247 = v18;
    sub_10001B068();
    v249 = v6;
    v250 = v19;
    v251 = v7;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %{public}@", buf, 0x2Au);
  }

  v4 = @"assetVersion";
  v20 = [v16 objectForKey:@"assetVersion"];
  v242 = v7;
  if (!v20)
  {
    v48 = sub_100025204(0);
    if (sub_10001B0D0(v48))
    {
      v126 = [objc_opt_class() description];
      v134 = sub_10001B03C(v126, v127, v128, v129, v130, v131, v132, v133, v206, v215, v224, a2);
      v135 = NSStringFromSelector(v134);
      sub_10001AFA4();
      v249 = @"assetVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v136, v137, "%{public}@::%{public}@: %@ missing from %{public}@", v138, v139, v140, v141, v210, v219, v228, aSelectora, v7, v243, v6, v245);
    }

    sub_10001AFF4();
    goto LABEL_53;
  }

  v5 = v20;
  objc_opt_class();
  v21 = objc_opt_isKindOfClass();
  if ((v21 & 1) == 0)
  {
    v49 = sub_100025204(v21);
    if (sub_10001B0D0(v49))
    {
      v142 = [objc_opt_class() description];
      v150 = sub_10001B03C(v142, v143, v144, v145, v146, v147, v148, v149, v206, v215, v224, a2);
      v151 = NSStringFromSelector(v150);
      sub_10001AFA4();
      v249 = @"assetVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v152, v153, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v154, v155, v156, v157, v211, v220, v229, aSelectorb, v7, v243, v6, v245);
    }

    v4 = 0;
    v8 = 0;
    v7 = 0;
    v6 = 0;
    goto LABEL_53;
  }

  v6 = [v16 objectForKey:@"_MinOSRestoreVersion"];
  if (v6)
  {
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();
    if ((v22 & 1) == 0)
    {
      v102 = sub_100025204(v22);
      if (sub_10001B0D0(v102))
      {
        v174 = [objc_opt_class() description];
        v182 = sub_10001B03C(v174, v175, v176, v177, v178, v179, v180, v181, v206, v215, v224, a2);
        v183 = NSStringFromSelector(v182);
        sub_10001AFA4();
        v249 = @"_MinOSRestoreVersion";
        sub_10001B00C();
        sub_10001B01C(&_mh_execute_header, v184, v185, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v186, v187, v188, v189, v213, v222, v231, aSelectorf, v7, v243, v244, v245);
      }

      v4 = 0;
      v8 = 0;
      v7 = 0;
      goto LABEL_53;
    }
  }

  v7 = [v16 objectForKey:@"_MaxOSRestoreVersion"];
  if (v7)
  {
    objc_opt_class();
    v23 = objc_opt_isKindOfClass();
    if ((v23 & 1) == 0)
    {
      v103 = sub_100025204(v23);
      if (sub_10001B0D0(v103))
      {
        v190 = [objc_opt_class() description];
        v198 = sub_10001B03C(v190, v191, v192, v193, v194, v195, v196, v197, v206, v215, v224, a2);
        v199 = NSStringFromSelector(v198);
        sub_10001AFA4();
        v249 = @"_MaxOSRestoreVersion";
        sub_10001B00C();
        sub_10001B01C(&_mh_execute_header, v200, v201, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v202, v203, v204, v205, v214, v223, v232, aSelectorh, v242, v243, v244, v245);

        goto LABEL_59;
      }

LABEL_52:
      v4 = 0;
      v8 = 0;
      goto LABEL_53;
    }
  }

  v24 = [v16 objectForKey:@"_MinOSVersion"];
  if (!v24)
  {
    v50 = sub_100025204(0);
    if (sub_10001B0D0(v50))
    {
      v51 = [objc_opt_class() description];
      v59 = sub_10001B03C(v51, v52, v53, v54, v55, v56, v57, v58, v206, v215, v224, a2);
      v60 = NSStringFromSelector(v59);
      sub_10001AFA4();
      v249 = @"_MinOSVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v61, v62, "%{public}@::%{public}@: %@ missing from %{public}@", v63, v64, v65, v66, v207, v216, v225, aSelectorc, v242, v243, v244, v245);

LABEL_59:
      goto LABEL_52;
    }

    goto LABEL_52;
  }

  v8 = v24;
  objc_opt_class();
  v25 = objc_opt_isKindOfClass();
  if ((v25 & 1) == 0)
  {
    v67 = sub_100025204(v25);
    if (!sub_10001B0D0(v67))
    {
LABEL_45:
      v4 = 0;
LABEL_53:
      v28 = 0;
      goto LABEL_20;
    }

    v68 = [objc_opt_class() description];
    v76 = sub_10001B03C(v68, v69, v70, v71, v72, v73, v74, v75, v206, v215, v224, a2);
    v77 = NSStringFromSelector(v76);
    sub_10001AFA4();
    v249 = @"_MinOSVersion";
    sub_10001B00C();
    sub_10001B01C(&_mh_execute_header, v78, v79, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v80, v81, v82, v83, v208, v217, v226, aSelectord, v242, v243, v244, v245);

LABEL_57:
    goto LABEL_45;
  }

  v26 = [v16 objectForKey:@"_MaxOSVersion"];
  if (!v26)
  {
    v84 = sub_100025204(0);
    if (!sub_10001B0D0(v84))
    {
      goto LABEL_45;
    }

    v158 = [objc_opt_class() description];
    v166 = sub_10001B03C(v158, v159, v160, v161, v162, v163, v164, v165, v206, v215, v224, a2);
    v167 = NSStringFromSelector(v166);
    sub_10001AFA4();
    v249 = @"_MaxOSVersion";
    sub_10001B00C();
    sub_10001B01C(&_mh_execute_header, v168, v169, "%{public}@::%{public}@: %@ missing from %{public}@", v170, v171, v172, v173, v212, v221, v230, aSelectorg, v242, v243, v244, v245);

    goto LABEL_57;
  }

  v4 = v26;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();
  if ((v27 & 1) == 0)
  {
    v85 = sub_100025204(v27);
    if (sub_10001B0D0(v85))
    {
      v86 = [objc_opt_class() description];
      v94 = sub_10001B03C(v86, v87, v88, v89, v90, v91, v92, v93, v206, v215, v224, a2);
      v95 = NSStringFromSelector(v94);
      sub_10001AFA4();
      v249 = @"_MaxOSVersion";
      sub_10001B00C();
      sub_10001B01C(&_mh_execute_header, v96, v97, "%{public}@::%{public}@: %@ has wrong type in %{public}@", v98, v99, v100, v101, v209, v218, v227, aSelectore, v242, v243, v244, v245);
    }

    goto LABEL_53;
  }

  identifierCopy = v245;
  v28 = [[PowerTableAsset alloc] initWithSubsystem:self->_subsystem identifier:v245 version:v5 state:state firstSupportedBuild:v6 lastSupportedBuild:v7 firstSupportedOS:v8 lastSupportedOS:v4];
  v12 = sub_100025204(v28);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v29 = [objc_opt_class() description];
    v30 = NSStringFromSelector(a2);
    *buf = 138543874;
    v247 = v29;
    sub_10001B068();
    v249 = v28;
    sub_10001B0E8(&_mh_execute_header, v12, v31, "%{public}@::%{public}@: %{public}@", buf);

LABEL_20:
    identifierCopy = v245;
  }

LABEL_21:

LABEL_22:
  v32 = v28;

  return v28;
}

- (void)loadState
{
  v8 = buf;
  v9 = sub_100025204(self);
  v10 = &off_100036000;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    [objc_opt_class() description];
    objc_claimAutoreleasedReturnValue();
    v11 = sub_100004654();
    v3 = NSStringFromSelector(v11);
    v12 = [PowerTableAsset subsystemAsString:self->_subsystem];
    *buf = 138543874;
    v37 = v2;
    v38 = 2114;
    v39 = v3;
    v40 = 2112;
    v41 = v12;
    sub_10001B0E8(&_mh_execute_header, v9, v13, "%{public}@::%{public}@: %@", buf);
  }

  if ([objc_opt_class() directoryExistsAtPath:self->_stateDirPath] && objc_msgSend(objc_opt_class(), "fileExistsAtPath:", self->_statePlistPath))
  {
    v9 = [[NSDictionary alloc] initWithContentsOfFile:self->_statePlistPath];
    v14 = sub_100025204(v9);
    v15 = v14;
    if (v9)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        [objc_opt_class() description];
        objc_claimAutoreleasedReturnValue();
        v16 = sub_100004654();
        v17 = NSStringFromSelector(v16);
        statePlistPath = self->_statePlistPath;
        *buf = 138544130;
        v37 = v2;
        sub_10001B130(v17, statePlistPath);
        v42 = v19;
        v43 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@::%{public}@: %{public}@: %{public}@", buf, 0x2Au);
      }

      v2 = [v9 objectForKey:@"activeAssetSubDir"];
      if (v2)
      {
        v3 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v2 state:2];
        LOBYTE(a2) = v3 == 0;
      }

      else
      {
        v3 = 0;
        LOBYTE(a2) = 0;
      }

      v5 = [v9 objectForKey:@"stagedAssetSubDir"];
      if (v5)
      {
        v8 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:v5 state:1];
        LOBYTE(a2) = (v8 == 0) | a2;
      }

      else
      {
        v8 = 0;
      }

      v4 = [v9 objectForKey:@"rejectedAssetSubDirs"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = 0;
        goto LABEL_29;
      }

      v10 = objc_alloc_init(NSMutableSet);
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v15 = v4;
      v20 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v20)
      {
        v21 = v20;
        v28 = v5;
        v29 = v3;
        v30 = v2;
        v22 = *v32;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v32 != v22)
            {
              objc_enumerationMutation(v15);
            }

            v24 = [(PowerTableAssetStore *)self loadAssetWithIdentifier:*(*(&v31 + 1) + 8 * i) state:3];
            if (v24)
            {
              [v10 addObject:v24];
            }

            else
            {
              LOBYTE(a2) = 1;
            }
          }

          v21 = [v15 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v21);
        v4 = v15;
        v3 = v29;
        v2 = v30;
        v5 = v28;
      }

      else
      {
        v4 = v15;
      }
    }

    else
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v9 = [objc_opt_class() description];
        a2 = NSStringFromSelector(a2);
        v26 = self->_statePlistPath;
        *buf = 138543874;
        v37 = v9;
        sub_10001B130(a2, v26);
        sub_10001B160(&_mh_execute_header, v15, v27, "%{public}@::%{public}@: failed to read %{public}@", buf);
      }

      sub_10001B0A0();
    }
  }

  else
  {
    sub_10001B0A0();
  }

LABEL_29:
  [(PowerTableAssetStore *)self setStagedAsset:v8];
  [sub_10001B19C() setActiveAsset:?];
  if ([v10 count])
  {
    v25 = v10;
  }

  else
  {
    v25 = 0;
  }

  [(PowerTableAssetStore *)self setRejectedAssets:v25];
  if (a2)
  {
    [(PowerTableAssetStore *)self saveState];
  }
}

- (void)saveState
{
  v4 = sub_100025204(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [objc_opt_class() description];
    identifier = NSStringFromSelector(a2);
    v6 = [PowerTableAsset subsystemAsString:self->_subsystem];
    *buf = 138543874;
    v169 = v5;
    v170 = 2114;
    v171 = identifier;
    v172 = 2112;
    v173 = v6;
    sub_10001B0E8(&_mh_execute_header, v4, v7, "%{public}@::%{public}@: %@", buf);
  }

  if (![objc_opt_class() directoryExistsAtPath:self->_storePath])
  {
    v39 = 0;
    v8 = 0;
    goto LABEL_40;
  }

  v8 = objc_alloc_init(NSMutableDictionary);
  activeAsset = [(PowerTableAssetStore *)self activeAsset];

  if (activeAsset)
  {
    activeAsset2 = [(PowerTableAssetStore *)self activeAsset];
    identifier = [activeAsset2 identifier];
    [sub_10001B19C() setObject:? forKey:?];
  }

  stagedAsset = [(PowerTableAssetStore *)self stagedAsset];

  if (stagedAsset)
  {
    stagedAsset2 = [(PowerTableAssetStore *)self stagedAsset];
    identifier = [stagedAsset2 identifier];
    [sub_10001B19C() setObject:? forKey:?];
  }

  rejectedAssets = [(PowerTableAssetStore *)self rejectedAssets];

  if (rejectedAssets)
  {
    rejectedAssets = objc_alloc_init(NSMutableArray);
    *v160 = 0u;
    v161 = 0u;
    *v162 = 0u;
    v163 = 0u;
    identifier = [(PowerTableAssetStore *)self rejectedAssets];
    v15 = [identifier countByEnumeratingWithState:v160 objects:v176 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v161;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v161 != v17)
          {
            objc_enumerationMutation(identifier);
          }

          identifier2 = [*(v160[1] + 8 * i) identifier];
          [rejectedAssets addObject:identifier2];
        }

        v16 = [identifier countByEnumeratingWithState:v160 objects:v176 count:16];
      }

      while (v16);
    }

    [v8 setObject:rejectedAssets forKey:@"rejectedAssetSubDirs"];
  }

  v20 = sub_100025204(v14);
  if (sub_10001B1C8(v20))
  {
    v21 = [objc_opt_class() description];
    v29 = sub_10001B190(v21, v22, v23, v24, v25, v26, v27, v28, aSelectora);
    v30 = NSStringFromSelector(v29);
    *buf = 138543874;
    v169 = identifier;
    v170 = 2114;
    v171 = v30;
    v172 = 2114;
    v173 = v8;
    sub_10001B048(&_mh_execute_header, v31, v32, "%{public}@::%{public}@: %{public}@", v33, v34, v35, v36, aSelectorb, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);
  }

  v37 = [v8 count];
  v38 = [objc_opt_class() directoryExistsAtPath:self->_stateDirPath];
  if (v37)
  {
    if (v38)
    {
      v39 = 0;
    }

    else
    {
      v61 = sub_100025204(v38);
      if (sub_10001B1C8(v61))
      {
        v62 = [objc_opt_class() description];
        v70 = sub_10001B190(v62, v63, v64, v65, v66, v67, v68, v69, aSelectora);
        v71 = NSStringFromSelector(v70);
        sub_10001B0C4();
        *(v72 + 4) = identifier;
        sub_10001AFDC(v73);
        sub_10001B048(&_mh_execute_header, v74, v75, "%{public}@::%{public}@: creating %{public}@", v76, v77, v78, v79, aSelectord, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);
      }

      identifier = +[NSFileManager defaultManager];
      stateDirPath = self->_stateDirPath;
      v158 = 0;
      v81 = [identifier createDirectoryAtPath:stateDirPath withIntermediateDirectories:1 attributes:0 error:&v158];
      v37 = v158;

      if ((v81 & 1) == 0)
      {
        v139 = sub_100025204(v82);
        if (!sub_10001B178(v139))
        {
          goto LABEL_27;
        }

        v124 = [objc_opt_class() description];
        v125 = NSStringFromSelector(aSelectora);
        sub_10001B0C4();
        *(v140 + 4) = v124;
        sub_10001AFDC(v141);
        v174 = v142;
        *(v143 + 34) = v37;
        v133 = "%{public}@::%{public}@: failed to create %{public}@: %{public}@";
        goto LABEL_42;
      }

      identifier = +[NSFileManager defaultManager];
      v166 = NSFilePosixPermissions;
      v167 = &off_10006D8D8;
      v83 = [NSDictionary dictionaryWithObjects:&v167 forKeys:&v166 count:1];
      v84 = self->_stateDirPath;
      v157 = v37;
      v85 = [identifier setAttributes:v83 ofItemAtPath:v84 error:&v157];
      v39 = v157;

      if ((v85 & 1) == 0)
      {
        v144 = sub_100025204(v38);
        if (!sub_10001B178(v144))
        {
LABEL_49:
          v37 = v39;
          goto LABEL_27;
        }

        v112 = [objc_opt_class() description];
        v113 = NSStringFromSelector(aSelectora);
        sub_10001B0C4();
        *(v145 + 4) = v112;
        sub_10001AFDC(v146);
        v174 = v147;
        *(v148 + 34) = v39;
LABEL_51:
        sub_10001B1A8(&_mh_execute_header, v116, v117, "%{public}@::%{public}@: failed to set permissions on %{public}@: %{public}@", v118, v119, v120, v121, aSelectora, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);

        goto LABEL_49;
      }
    }

    v86 = sub_100025204(v38);
    if (sub_10001B1C8(v86))
    {
      v87 = [objc_opt_class() description];
      v95 = sub_10001B190(v87, v88, v89, v90, v91, v92, v93, v94, aSelectora);
      v96 = NSStringFromSelector(v95);
      sub_10001B0C4();
      *(v97 + 4) = identifier;
      sub_10001AFDC(v98);
      sub_10001B048(&_mh_execute_header, v99, v100, "%{public}@::%{public}@: writing %{public}@", v101, v102, v103, v104, aSelectore, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);
    }

    identifier = [NSURL fileURLWithPath:self->_statePlistPath];
    v156 = v39;
    v105 = [sub_10001B19C() writeToURL:? error:?];
    v37 = v39;

    if (v105)
    {
      identifier = +[NSFileManager defaultManager];
      v164 = NSFilePosixPermissions;
      v165 = &off_10006D8F0;
      v107 = [NSDictionary dictionaryWithObjects:&v165 forKeys:&v164 count:1];
      statePlistPath = self->_statePlistPath;
      v155 = v37;
      v109 = [identifier setAttributes:v107 ofItemAtPath:statePlistPath error:&v155];
      v39 = v155;

      if (v109)
      {
        goto LABEL_40;
      }

      v111 = sub_100025204(v110);
      if (!sub_10001B178(v111))
      {
        goto LABEL_49;
      }

      v112 = [objc_opt_class() description];
      v113 = NSStringFromSelector(aSelectora);
      sub_10001B0C4();
      *(v114 + 4) = v112;
      sub_10001AFDC(v115);
      v174 = v122;
      *(v123 + 34) = v39;
      goto LABEL_51;
    }

    v134 = sub_100025204(v106);
    if (sub_10001B178(v134))
    {
      v124 = [objc_opt_class() description];
      v125 = NSStringFromSelector(aSelectora);
      sub_10001B0C4();
      *(v135 + 4) = v124;
      sub_10001AFDC(v136);
      v174 = v137;
      *(v138 + 34) = v37;
      v133 = "%{public}@::%{public}@: failed to write %{public}@: %{public}@";
      goto LABEL_42;
    }
  }

  else
  {
    if (!v38)
    {
      v39 = 0;
      goto LABEL_40;
    }

    v40 = sub_100025204(v38);
    if (sub_10001B1C8(v40))
    {
      v41 = [objc_opt_class() description];
      v49 = sub_10001B190(v41, v42, v43, v44, v45, v46, v47, v48, aSelectora);
      v50 = NSStringFromSelector(v49);
      *buf = 138543874;
      v169 = identifier;
      sub_10001B118(v50);
      sub_10001B048(&_mh_execute_header, v51, v52, "%{public}@::%{public}@: removing %{public}@", v53, v54, v55, v56, aSelectorc, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);
    }

    identifier = +[NSFileManager defaultManager];
    v57 = self->_stateDirPath;
    v159 = 0;
    v58 = [identifier removeItemAtPath:v57 error:&v159];
    v37 = v159;

    if (v58)
    {
      goto LABEL_28;
    }

    v60 = sub_100025204(v59);
    if (sub_10001B178(v60))
    {
      v124 = [objc_opt_class() description];
      v125 = NSStringFromSelector(aSelectora);
      *buf = 138544130;
      v169 = v124;
      sub_10001B118(v125);
      v174 = v132;
      v175 = v37;
      v133 = "%{public}@::%{public}@: failed to remove %{public}@: %{public}@";
LABEL_42:
      sub_10001B1A8(&_mh_execute_header, v126, v127, v133, v128, v129, v130, v131, aSelectora, v155, v156, v157, v158, v159, v160[0], v160[1], v161, *(&v161 + 1), v162[0], v162[1], v163, *(&v163 + 1), v164, v165, v166, v167);
    }
  }

LABEL_27:

LABEL_28:
  v39 = v37;
LABEL_40:
}

@end