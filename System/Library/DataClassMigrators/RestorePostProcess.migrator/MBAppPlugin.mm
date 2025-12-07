@interface MBAppPlugin
- (NSArray)allAppGroupContainers;
- (NSArray)groups;
- (NSString)entitlementsRelativePath;
- (id)domain;
@end

@implementation MBAppPlugin

- (NSArray)groups
{
  v3 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(NSMutableDictionary *)self->super._plist objectForKeyedSubscript:@"GroupContainers", 0];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MBAppGroup alloc];
        volumeMountPoint = [(MBContainer *)self volumeMountPoint];
        v12 = [(MBContainer *)v10 initWithPropertyList:v9 volumeMountPoint:volumeMountPoint];
        [v3 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)domain
{
  identifier = [(MBContainer *)self identifier];
  volumeMountPoint = [(MBContainer *)self volumeMountPoint];
  containerDir = [(MBContainer *)self containerDir];
  v6 = [MBDomain appPluginDomainWithIdentifier:identifier volumeMountPoint:volumeMountPoint rootPath:containerDir];

  v8 = sub_2D38(v7);
  [v6 setRelativePathsToBackupAndRestore:v8];

  v10 = sub_2D7C(v9);
  [v6 setRelativePathsNotToBackup:v10];

  v12 = sub_2DC0(v11);
  [v6 setRelativePathsNotToRestore:v12];

  [v6 setShouldDigest:0];

  return v6;
}

- (NSString)entitlementsRelativePath
{
  bundleDir = [(MBAppPlugin *)self bundleDir];
  v3 = sub_2484(bundleDir);

  return v3;
}

- (NSArray)allAppGroupContainers
{
  v3 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  groups = [(MBAppPlugin *)self groups];
  v5 = [groups countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(groups);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier length];

        if (v11)
        {
          [v3 addObject:v9];
        }

        else
        {
          v12 = MBGetDefaultLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            identifier2 = [(MBContainer *)self identifier];
            *buf = 138412546;
            v21 = v9;
            v22 = 2112;
            v23 = identifier2;
            _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "Found empty app group container identifier for %@ (%@)", buf, 0x16u);

            identifier3 = [(MBContainer *)self identifier];
            _MBLog(@"Df", "Found empty app group container identifier for %@ (%@)", v9, identifier3);
          }
        }
      }

      v6 = [groups countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v6);
  }

  return v3;
}

@end