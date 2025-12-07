@interface LSApplicationIdentity(RBSWrappedLSInfoProvider)
- (id)fetchWrappedInfoWithError:()RBSWrappedLSInfoProvider;
@end

@implementation LSApplicationIdentity(RBSWrappedLSInfoProvider)

- (id)fetchWrappedInfoWithError:()RBSWrappedLSInfoProvider
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = [self findApplicationRecordWithError:?];
  v6 = v5;
  if (v5)
  {
    bundleIdentifier = [v5 bundleIdentifier];
    personaUniqueString = [self personaUniqueString];
    jobLabel = [v6 jobLabel];
    v10 = +[RBSWrappedLSInfo infoWithBundleID:personaString:persistentJobLabel:platform:bundleInode:execInode:](RBSWrappedLSInfo, "infoWithBundleID:personaString:persistentJobLabel:platform:bundleInode:execInode:", bundleIdentifier, personaUniqueString, jobLabel, [v6 platform], 0, 0);
  }

  else
  {
    v11 = rbs_general_log(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      if (a3)
      {
        v12 = [*a3 description];
      }

      else
      {
        v12 = @"<>";
      }

      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_18E8AD000, v11, OS_LOG_TYPE_INFO, "fetchWrappedInfoWithError failed due to %{public}@", &v14, 0xCu);
      if (a3)
      {
      }
    }

    v10 = 0;
  }

  return v10;
}

@end