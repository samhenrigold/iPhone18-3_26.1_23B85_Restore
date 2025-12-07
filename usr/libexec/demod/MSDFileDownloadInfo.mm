@interface MSDFileDownloadInfo
- (BOOL)entitlementCheckForFile:(id)file;
- (BOOL)hashCheckForFile:(id)file;
- (MSDFileDownloadInfo)init;
@end

@implementation MSDFileDownloadInfo

- (MSDFileDownloadInfo)init
{
  v7.receiver = self;
  v7.super_class = MSDFileDownloadInfo;
  v2 = [(MSDFileDownloadInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(MSDFileDownloadInfo *)v2 setFile:0];
    [(MSDFileDownloadInfo *)v3 setFileHash:0];
    v4 = +[MSDDemoManifestCheck sharedInstance];
    [(MSDFileDownloadInfo *)v3 setChecker:v4];

    [(MSDFileDownloadInfo *)v3 setSkipHashCheck:0];
    v5 = v3;
  }

  return v3;
}

- (BOOL)entitlementCheckForFile:(id)file
{
  fileCopy = file;
  checker = [(MSDFileDownloadInfo *)self checker];
  if (!checker || (v6 = checker, [(MSDFileDownloadInfo *)self file], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v13 = sub_100063A54(checker);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_1000D440C(fileCopy, v13);
    }

    v12 = 1;
    goto LABEL_11;
  }

  checker2 = [(MSDFileDownloadInfo *)self checker];
  file = [(MSDFileDownloadInfo *)self file];
  v10 = [checker2 checkFileForEntitlements:fileCopy forCorrespondingManifestEntry:file];

  if ((v10 & 1) == 0)
  {
    v13 = sub_100063A54(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1000D4394(fileCopy, v13);
    }

    v12 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v12 = 1;
LABEL_12:

  return v12;
}

- (BOOL)hashCheckForFile:(id)file
{
  fileCopy = file;
  skipHashCheck = [(MSDFileDownloadInfo *)self skipHashCheck];
  if (skipHashCheck)
  {
    hexStringRepresentation = sub_100063A54(skipHashCheck);
    if (os_log_type_enabled(hexStringRepresentation, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = fileCopy;
      _os_log_impl(&_mh_execute_header, hexStringRepresentation, OS_LOG_TYPE_DEFAULT, "Skipping file hash check for: %{public}@", &v14, 0xCu);
    }

    v9 = 1;
  }

  else
  {
    if (!fileCopy)
    {
      v9 = 1;
      goto LABEL_9;
    }

    v6 = [MSDFileMetadata fileHashWithPath:fileCopy];
    hexStringRepresentation = [v6 hexStringRepresentation];

    fileHash = [(MSDFileDownloadInfo *)self fileHash];
    v9 = [fileHash isEqualToString:hexStringRepresentation];

    if ((v9 & 1) == 0)
    {
      v11 = sub_100063A54(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        fileHash2 = [(MSDFileDownloadInfo *)self fileHash];
        v14 = 138543874;
        v15 = fileCopy;
        v16 = 2114;
        v17 = hexStringRepresentation;
        v18 = 2114;
        v19 = fileHash2;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "The file (%{public}@) is corrupted - File hash:  %{public}@ - Expected:  %{public}@", &v14, 0x20u);
      }
    }
  }

LABEL_9:
  return v9;
}

@end