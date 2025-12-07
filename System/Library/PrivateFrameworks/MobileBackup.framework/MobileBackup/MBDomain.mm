@interface MBDomain
+ (BOOL)_BOOLFromValue:(id)value forKey:(id)key;
+ (BOOL)isContainerizedName:(id)name;
+ (double)doubleFromStringValueForKey:(id)key plist:(id)plist;
+ (id)_dictionaryOfStringsToStringFromValue:(id)value forKey:(id)key;
+ (id)_domainWithName:(id)name volumeMountPoint:(id)point rootPath:(id)path;
+ (id)_relativePathsByAddingSQLiteJournals:(id)journals;
+ (id)_setOfStringsFromValue:(id)value forKey:(id)key;
+ (id)_stringByRemovingCommentsFromValue:(id)value forKey:(id)key;
+ (id)appDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appGroupDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appPlaceholderDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)appPluginDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)containerIDWithName:(id)name;
+ (id)domainForTestingWithName:(id)name plist:(id)plist;
+ (id)nonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point;
+ (id)systemContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)systemSharedContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path;
+ (id)uninstalledDomainWithName:(id)name;
+ (int)containerTypeWithName:(id)name;
- (BOOL)_loadDomainFromExternalPlist:(id)plist;
- (BOOL)_loadSystemDomain:(id)domain plist:(id)plist volumeMountPoint:(id)point;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUninstalledAppDomain;
- (BOOL)shouldBackUpAnyChildOfRelativePath:(id)path;
- (BOOL)shouldBackupRelativePathFromLiveFileSystem:(id)system;
- (BOOL)shouldBackupRelativePathIgnoringProtectionClass:(id)class;
- (BOOL)supportsFSEventsForDetectingChanges;
- (NSString)rootPath;
- (NSString)rootPathRelativeToVolumeMountPoint;
- (id)_initNonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point;
- (id)_initWithName:(id)name volumeMountPoint:(id)point volumeType:(unint64_t)type rootPath:(id)path;
- (id)standardizedRelativePathFor:(id)for;
- (int)containerType;
- (int64_t)compare:(id)compare;
- (void)rootPath;
@end

@implementation MBDomain

+ (BOOL)_BOOLFromValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not a number: %@", keyCopy, valueCopy]);
  }

  bOOLValue = [valueCopy BOOLValue];

  return bOOLValue;
}

+ (id)_stringByRemovingCommentsFromValue:(id)value forKey:(id)key
{
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not a string: %@", keyCopy, valueCopy]);
  }

  v7 = [valueCopy componentsSeparatedByString:@"#"];
  v8 = [v7 objectAtIndexedSubscript:0];
  whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
  v10 = [v8 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v10;
}

+ (id)_setOfStringsFromValue:(id)value forKey:(id)key
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain %@ value not an array", keyCopy]);
  }

  v7 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(valueCopy, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = valueCopy;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [MBDomain _stringByRemovingCommentsFromValue:*(*(&v15 + 1) + 8 * i) forKey:keyCopy];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v7;
}

+ (id)_dictionaryOfStringsToStringFromValue:(id)value forKey:(id)key
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    keyCopy = [[MBException alloc] initWithCode:11 format:@"Domain %@ value not a dictionary", keyCopy];
LABEL_14:
    objc_exception_throw(keyCopy);
  }

  v7 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(valueCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = valueCopy;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v9)
  {
    goto LABEL_10;
  }

  v10 = v9;
  v11 = *v19;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v19 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v18 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        keyCopy = [[MBException alloc] initWithCode:11 format:@"Domain %@ item key not a string", keyCopy];
        goto LABEL_14;
      }

      v14 = [v8 objectForKeyedSubscript:v13];
      v15 = [MBDomain _stringByRemovingCommentsFromValue:v14 forKey:v13];
      [v7 setObject:v15 forKeyedSubscript:keyCopy];
    }

    v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v10);
LABEL_10:

  return v7;
}

+ (double)doubleFromStringValueForKey:(id)key plist:(id)plist
{
  keyCopy = key;
  v6 = [plist objectForKeyedSubscript:keyCopy];
  v7 = [MBDomain _stringByRemovingCommentsFromValue:v6 forKey:keyCopy];

  [v7 doubleValue];
  v9 = v8;

  return v9;
}

+ (id)_relativePathsByAddingSQLiteJournals:(id)journals
{
  v35 = *MEMORY[0x1E69E9840];
  journalsCopy = journals;
  v5 = MBSQLitePathExtensions(journalsCopy, v4);
  v6 = [journalsCopy mutableCopy];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = journalsCopy;
  v7 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      v10 = 0;
      v23 = v8;
      do
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * v10);
        pathExtension = [v11 pathExtension];
        v13 = [v5 containsObject:pathExtension];

        if (v13)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v16 = MBSQLiteJournalSuffixes(v14, v15);
          v17 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v26;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v26 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                v21 = [v11 stringByAppendingString:*(*(&v25 + 1) + 8 * i)];
                [v6 addObject:v21];
              }

              v18 = [v16 countByEnumeratingWithState:&v25 objects:v33 count:16];
            }

            while (v18);
          }

          v8 = v23;
        }

        ++v10;
      }

      while (v10 != v8);
      v8 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (BOOL)isContainerizedName:(id)name
{
  v3 = [self containerIDWithName:name];
  v4 = v3 != 0;

  return v4;
}

+ (id)containerIDWithName:(id)name
{
  v17 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [&unk_1F59DC790 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v13 != v6)
      {
        objc_enumerationMutation(&unk_1F59DC790);
      }

      v8 = *(*(&v12 + 1) + 8 * v7);
      if ([nameCopy hasPrefix:v8])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [&unk_1F59DC790 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v9 = [v8 length];
    if (v9 >= [nameCopy length])
    {
      goto LABEL_12;
    }

    v10 = [nameCopy substringFromIndex:{objc_msgSend(v8, "length") + 1}];
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  return v10;
}

+ (int)containerTypeWithName:(id)name
{
  nameCopy = name;
  if ([MBDomain isAppPluginName:nameCopy])
  {
    v4 = 2;
  }

  else if ([MBDomain isAppGroupName:nameCopy])
  {
    v4 = 3;
  }

  else if ([MBDomain isSystemContainerName:nameCopy])
  {
    v4 = 4;
  }

  else if ([MBDomain isSystemSharedContainerName:nameCopy])
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)_domainWithName:(id)name volumeMountPoint:(id)point rootPath:(id)path
{
  nameCopy = name;
  pointCopy = point;
  pathCopy = path;
  if (!nameCopy)
  {
    +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
  }

  v10 = pathCopy;
  if (pathCopy)
  {
    if (([pointCopy hasPrefix:@"/"] & 1) == 0)
    {
      +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
    }

    if ((MBPathHasVolumePrefix(v10, pointCopy) & 1) == 0)
    {
      [MBDomain _domainWithName:pointCopy volumeMountPoint:v10 rootPath:?];
    }
  }

  v11 = MBVolumeTypeFromMountPoint(pointCopy);
  if (!v11)
  {
    +[MBDomain _domainWithName:volumeMountPoint:rootPath:];
  }

  v12 = [[MBDomain alloc] _initWithName:nameCopy volumeMountPoint:pointCopy volumeType:v11 rootPath:v10];

  return v12;
}

+ (id)appDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appPlaceholderDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  pathCopy = path;
  pointCopy = point;
  v10 = [self placeholderNameWithAppID:identifier];
  v11 = [MBDomain _domainWithName:v10 volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appPluginDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomainPlugin", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)appGroupDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"AppDomainGroup", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)systemContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"SysContainerDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)systemSharedContainerDomainWithIdentifier:(id)identifier volumeMountPoint:(id)point rootPath:(id)path
{
  v7 = MEMORY[0x1E696AEC0];
  pathCopy = path;
  pointCopy = point;
  identifier = [v7 stringWithFormat:@"%@-%@", @"SysSharedContainerDomain", identifier];
  v11 = [MBDomain _domainWithName:identifier volumeMountPoint:pointCopy rootPath:pathCopy];

  return v11;
}

+ (id)uninstalledDomainWithName:(id)name
{
  nameCopy = name;
  v4 = [[MBDomain alloc] _initWithName:nameCopy volumeMountPoint:0 volumeType:0 rootPath:0];

  return v4;
}

+ (id)nonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point
{
  pointCopy = point;
  plistCopy = plist;
  nameCopy = name;
  v12 = [[MBDomain alloc] _initNonContainerizedDomainWithName:nameCopy plist:plistCopy accountType:type volumeMountPoint:pointCopy];

  return v12;
}

- (id)_initWithName:(id)name volumeMountPoint:(id)point volumeType:(unint64_t)type rootPath:(id)path
{
  nameCopy = name;
  pointCopy = point;
  pathCopy = path;
  if (!nameCopy)
  {
    [MBDomain _initWithName:volumeMountPoint:volumeType:rootPath:];
  }

  v14 = pathCopy;
  if ([nameCopy containsString:@"/"])
  {
    objc_exception_throw([[MBException alloc] initWithCode:11 format:@"Domain name cannot contain a slash"]);
  }

  v18.receiver = self;
  v18.super_class = MBDomain;
  v15 = [(MBDomain *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_volumeMountPoint, point);
    v16->_volumeType = type;
    objc_storeStrong(&v16->_rootPath, path);
    v16->_shouldDigest = 1;
    v16->_shouldRestoreRelativeSymlinks = [MBDomain _shouldRestoreRelativeSymlinksForDomainName:nameCopy];
  }

  return v16;
}

- (id)_initNonContainerizedDomainWithName:(id)name plist:(id)plist accountType:(int64_t)type volumeMountPoint:(id)point
{
  nameCopy = name;
  plistCopy = plist;
  pointCopy = point;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MBException alloc];
    v24 = @"Domain name not a string";
    goto LABEL_24;
  }

  if ([nameCopy containsString:@"/"])
  {
    v23 = [MBException alloc];
    v24 = @"Domain name cannot contain a slash";
    goto LABEL_24;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MBException alloc];
    v24 = @"Domain plist not a dictionary";
    goto LABEL_24;
  }

  if (!type)
  {
    [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
  }

  v14 = pointCopy;
  v15 = v14;
  if (type == 1)
  {
    v16 = [plistCopy objectForKeyedSubscript:@"RootPath"];
    v17 = v16;
    v15 = v14;
    if (v16)
    {
      v15 = v14;
      if ((MBPathHasVolumePrefix(v16, v14) & 1) == 0)
      {

        v15 = @"/private/var";
        if ((MBPathHasVolumePrefix(v17, @"/private/var") & 1) == 0)
        {
          [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
        }
      }
    }
  }

  v26.receiver = self;
  v26.super_class = MBDomain;
  v18 = [(MBDomain *)&v26 init];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_14;
  }

  objc_storeStrong(&v18->_name, name);
  v19->_shouldDigest = 1;
  v19->_shouldRestoreRelativeSymlinks = [MBDomain _shouldRestoreRelativeSymlinksForDomainName:nameCopy];
  if (![(MBDomain *)v19 _loadSystemDomain:nameCopy plist:plistCopy volumeMountPoint:v15])
  {
    v21 = 0;
    goto LABEL_16;
  }

  if (!v19->_rootPath)
  {
    v23 = [MBException alloc];
    v25 = nameCopy;
    v24 = @"Root path not specified for domain: %@";
LABEL_24:
    objc_exception_throw([(MBException *)v23 initWithCode:11 format:v24, v25]);
  }

  objc_storeStrong(&v19->_volumeMountPoint, v15);
  v20 = MBVolumeTypeFromMountPoint(v19->_volumeMountPoint);
  v19->_volumeType = v20;
  if (!v20)
  {
    [MBDomain _initNonContainerizedDomainWithName:plist:accountType:volumeMountPoint:];
  }

LABEL_14:
  v21 = v19;
LABEL_16:

  return v21;
}

+ (id)domainForTestingWithName:(id)name plist:(id)plist
{
  plistCopy = plist;
  nameCopy = name;
  v7 = [[MBDomain alloc] _initNonContainerizedDomainWithName:nameCopy plist:plistCopy accountType:1 volumeMountPoint:@"/private/var/mobile"];

  return v7;
}

- (BOOL)_loadSystemDomain:(id)domain plist:(id)plist volumeMountPoint:(id)point
{
  v95 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  plistCopy = plist;
  pointCopy = point;
  if (!domainCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  if (!plistCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  v11 = pointCopy;
  if (!pointCopy)
  {
    [MBDomain _loadSystemDomain:plist:volumeMountPoint:];
  }

  v12 = [plistCopy objectForKeyedSubscript:@"BackupRulesPath"];
  if (!v12)
  {
    goto LABEL_16;
  }

  self->_isExternalConfig = 1;
  v13 = [(MBDomain *)self _loadDomainFromExternalPlist:v12];
  if (!v13)
  {
    v21 = MBGetDefaultLog(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      name = self->_name;
      *buf = 138412546;
      v92 = name;
      v93 = 2112;
      v94 = v12;
      _os_log_impl(&dword_1DEB5D000, v21, OS_LOG_TYPE_DEFAULT, "Failed to load backup rules for '%@' from external plist at '%@'", buf, 0x16u);
      _MBLog(@"Df", "Failed to load backup rules for '%@' from external plist at '%@'", self->_name, v12);
    }

    v23 = [plistCopy objectForKeyedSubscript:@"HasFallbackConfig"];

    if (!v23)
    {
      v75 = [plistCopy objectForKeyedSubscript:@"RootPath"];
      v76 = [MBDomain _stringByRemovingCommentsFromValue:v75 forKey:@"RootPath"];
      rootPath = self->_rootPath;
      self->_rootPath = v76;

      v20 = 1;
      goto LABEL_99;
    }

    v25 = MBGetDefaultLog(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = self->_name;
      *buf = 138412290;
      v92 = v26;
      _os_log_impl(&dword_1DEB5D000, v25, OS_LOG_TYPE_DEFAULT, "Unable to load external config for domain '%@', falling back to system definition", buf, 0xCu);
      _MBLog(@"Df", "Unable to load external config for domain '%@', falling back to system definition", self->_name);
    }

    self->_isExternalConfig = 0;
LABEL_16:
    v27 = v11;
    v84 = domainCopy;
    v82 = v11;
    if ([v27 hasPrefix:@"/private"])
    {
      v28 = [v27 substringFromIndex:{objc_msgSend(@"/private", "length")}];

      v27 = v28;
    }

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v83 = plistCopy;
    v29 = plistCopy;
    v30 = [v29 countByEnumeratingWithState:&v86 objects:v90 count:16];
    if (!v30)
    {
LABEL_91:

      v20 = 1;
      plistCopy = v83;
      domainCopy = v84;
      v11 = v82;
      goto LABEL_99;
    }

    v31 = v30;
    v32 = *v87;
    v85 = v27;
LABEL_20:
    v33 = 0;
    while (1)
    {
      if (*v87 != v32)
      {
        objc_enumerationMutation(v29);
      }

      v34 = *(*(&v86 + 1) + 8 * v33);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v80 = [[MBException alloc] initWithCode:11 format:@"Domain plist key not a string", v81];
        goto LABEL_104;
      }

      v35 = [v29 objectForKeyedSubscript:v34];
      if ([v34 isEqualToString:@"RootPath"])
      {
        v36 = [MBDomain _stringByRemovingCommentsFromValue:v35 forKey:v34];
        relativePathsToOnlyBackupEncrypted = self->_rootPath;
        self->_rootPath = v36;
      }

      else
      {
        if ([v34 isEqualToString:@"RootPathRelativeToVolumeMountPoint"])
        {
          v38 = [MBDomain _stringByRemovingCommentsFromValue:v35 forKey:v34];
          v39 = [v27 stringByAppendingPathComponent:v38];
          relativePathsToBackupAndRestore = self->_rootPath;
          self->_rootPath = v39;
LABEL_29:

          goto LABEL_33;
        }

        if ([v34 isEqualToString:@"BackupRulesPlistPath"])
        {
          goto LABEL_33;
        }

        if ([v34 isEqualToString:@"ShouldDigest"])
        {
          self->_shouldDigest = [MBDomain _BOOLFromValue:v35 forKey:v34];
          goto LABEL_33;
        }

        if ([v34 isEqualToString:@"RelativePathsToBackupAndRestore"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v41 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsToBackupAndRestore;
          self->_relativePathsToBackupAndRestore = v41;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsToBackupLive"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v42 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsToBackupLive;
          self->_relativePathsToBackupLive = v42;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsNotToBackup"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v43 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackup;
          self->_relativePathsNotToBackup = v43;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsNotToBackupToDrive"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v44 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToDrive;
          self->_relativePathsNotToBackupToDrive = v44;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsNotToBackupToService"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v45 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToService;
          self->_relativePathsNotToBackupToService = v45;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsNotToBackupToLocal"])
        {
          v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          v27 = v85;
          v46 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
          relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToLocal;
          self->_relativePathsNotToBackupToLocal = v46;
          goto LABEL_29;
        }

        if ([v34 isEqualToString:@"RelativePathsToOnlyBackupEncrypted"])
        {
          v47 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          relativePathsToOnlyBackupEncrypted = self->_relativePathsToOnlyBackupEncrypted;
          self->_relativePathsToOnlyBackupEncrypted = v47;
        }

        else if ([v34 isEqualToString:@"RelativePathsNotToCheckIfModifiedDuringBackup"])
        {
          v48 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
          relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToCheckIfModifiedDuringBackup;
          self->_relativePathsNotToCheckIfModifiedDuringBackup = v48;
        }

        else
        {
          if ([v34 isEqualToString:@"RelativePathsToRestoreOnly"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v49 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsToRestoreOnly;
            self->_relativePathsToRestoreOnly = v49;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsToRestoreOnlyFromService"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v50 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsToRestoreOnlyFromService;
            self->_relativePathsToRestoreOnlyFromService = v50;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsToRemoveOnRestore"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v51 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsToRemoveOnRestore;
            self->_relativePathsToRemoveOnRestore = v51;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsOfSystemFilesToAlwaysRestore"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v52 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsOfSystemFilesToAlwaysRestore;
            self->_relativePathsOfSystemFilesToAlwaysRestore = v52;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsOfSystemFilesToAlwaysRemoveOnRestore"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v53 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsOfSystemFilesToAlwaysRemoveOnRestore;
            self->_relativePathsOfSystemFilesToAlwaysRemoveOnRestore = v53;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsNotToRestore"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v54 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsNotToRestore;
            self->_relativePathsNotToRestore = v54;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsNotToRestoreFromLocal"])
          {
            v38 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            v27 = v85;
            v55 = [MBDomain _relativePathsByAddingSQLiteJournals:v38];
            relativePathsToBackupAndRestore = self->_relativePathsNotToRestoreFromLocal;
            self->_relativePathsNotToRestoreFromLocal = v55;
            goto LABEL_29;
          }

          if ([v34 isEqualToString:@"RelativePathsNotToMigrate"])
          {
            v56 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToMigrate;
            self->_relativePathsNotToMigrate = v56;
          }

          else if ([v34 isEqualToString:@"RelativePathsToBackgroundRestore"])
          {
            v57 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsToBackgroundRestore;
            self->_relativePathsToBackgroundRestore = v57;
          }

          else if ([v34 isEqualToString:@"RelativePathsNotToRemoveIfNotRestored"])
          {
            v58 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
            relativePathsToOnlyBackupEncrypted = self->_relativePathsNotToRemoveIfNotRestored;
            self->_relativePathsNotToRemoveIfNotRestored = v58;
          }

          else
          {
            if (![v34 isEqualToString:@"RelativePathAggregateDictionaryGroups"])
            {
              if ([v34 isEqualToString:@"RelativePathDomainRedirects"])
              {
                v60 = [MBDomain _dictionaryOfStringsToStringFromValue:v35 forKey:v34];
                relativePathDomainRedirects = self->_relativePathDomainRedirects;
                self->_relativePathDomainRedirects = v60;
                goto LABEL_75;
              }

              if ([v34 isEqualToString:@"RelativePathsToBackupIgnoringProtectionClass"])
              {
                v62 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
                v63 = [MBDomain _relativePathsByAddingSQLiteJournals:v62];
                relativePathsToBackupIgnoringProtectionClass = self->_relativePathsToBackupIgnoringProtectionClass;
                self->_relativePathsToBackupIgnoringProtectionClass = v63;
                goto LABEL_78;
              }

              if ([v34 isEqualToString:@"RelativePathsToIgnoreExclusionsForDrive"])
              {
                v65 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
                relativePathDomainRedirects = self->_relativePathsToIgnoreExclusionsForDrive;
                self->_relativePathsToIgnoreExclusionsForDrive = v65;
LABEL_75:
              }

              else
              {
                v27 = v85;
                if ([v34 isEqualToString:@"BackupRulesPath"] & 1) != 0 || (objc_msgSend(v34, "isEqualToString:", @"HasFallbackConfig"))
                {
                  goto LABEL_33;
                }

                if ([v34 isEqualToString:@"RelativePathsToBackupToDriveAndStandardAccount"])
                {
                  v62 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
                  v66 = [MBDomain _relativePathsByAddingSQLiteJournals:v62];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsToBackupToDriveAndStandardAccount;
                  self->_relativePathsToBackupToDriveAndStandardAccount = v66;
                }

                else if ([v34 isEqualToString:@"RelativePathsNotToBackupInMegaBackup"])
                {
                  v62 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
                  v67 = [MBDomain _relativePathsByAddingSQLiteJournals:v62];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsNotToBackupInMegaBackup;
                  self->_relativePathsNotToBackupInMegaBackup = v67;
                }

                else
                {
                  if (![v34 isEqualToString:@"RelativePathsNotToTransferDeviceToDevice"])
                  {
                    v80 = [[MBException alloc] initWithCode:11 format:@"Unexpected domain plist key: %@", v34];
LABEL_104:
                    objc_exception_throw(v80);
                  }

                  v62 = [MBDomain _setOfStringsFromValue:v35 forKey:v34];
                  v68 = [MBDomain _relativePathsByAddingSQLiteJournals:v62];
                  relativePathsToBackupIgnoringProtectionClass = self->_relativePathsNotToTransferDeviceToDevice;
                  self->_relativePathsNotToTransferDeviceToDevice = v68;
                }

LABEL_78:
              }

              v27 = v85;
              goto LABEL_33;
            }

            v59 = [MBDomain _dictionaryOfStringsToStringFromValue:v35 forKey:v34];
            relativePathsToOnlyBackupEncrypted = self->_relativePathAggregateDictionaryGroups;
            self->_relativePathAggregateDictionaryGroups = v59;
          }
        }
      }

LABEL_33:
      if (v31 == ++v33)
      {
        v69 = [v29 countByEnumeratingWithState:&v86 objects:v90 count:16];
        v31 = v69;
        if (!v69)
        {
          goto LABEL_91;
        }

        goto LABEL_20;
      }
    }
  }

  v14 = self->_rootPath;
  v15 = [plistCopy objectForKeyedSubscript:@"RootPath"];
  LOBYTE(v14) = [(NSString *)v14 isEqualToString:v15];

  if (v14)
  {
    v18 = MBGetDefaultLog(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = self->_name;
      *buf = 138412546;
      v92 = v19;
      v93 = 2112;
      v94 = v12;
      _os_log_impl(&dword_1DEB5D000, v18, OS_LOG_TYPE_DEFAULT, "Loaded backup rules for '%@' from external plist at '%@'", buf, 0x16u);
      _MBLog(@"Df", "Loaded backup rules for '%@' from external plist at '%@'", self->_name, v12);
    }

    v20 = 1;
    self->_hasExternalConfig = 1;
  }

  else
  {
    v70 = MBIsInternalInstall(v16, v17);
    v71 = v70;
    v72 = MBGetDefaultLog(v70);
    v73 = v72;
    if (v71)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_FAULT))
      {
        v74 = self->_name;
        *buf = 138412546;
        v92 = v74;
        v93 = 2112;
        v94 = v12;
        _os_log_impl(&dword_1DEB5D000, v73, OS_LOG_TYPE_FAULT, "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", buf, 0x16u);
        _MBLog(@"F ", "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", self->_name, v12);
      }
    }

    else if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v78 = self->_name;
      *buf = 138412546;
      v92 = v78;
      v93 = 2112;
      v94 = v12;
      _os_log_impl(&dword_1DEB5D000, v73, OS_LOG_TYPE_ERROR, "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", buf, 0x16u);
      _MBLog(@"E ", "Backup rules plist does not match parent RootPath for '%@' at '%@'. Domain will be skipped.", self->_name, v12);
    }

    v20 = 0;
  }

LABEL_99:

  return v20;
}

- (BOOL)_loadDomainFromExternalPlist:(id)plist
{
  v85 = *MEMORY[0x1E69E9840];
  plistCopy = plist;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:plistCopy];

  if ((v6 & 1) == 0)
  {
    v47 = MBIsInternalInstall(v7, v8);
    v48 = v47;
    v49 = MBGetDefaultLog(v47);
    v12 = v49;
    if (v48)
    {
      if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v82 = plistCopy;
        _os_log_impl(&dword_1DEB5D000, v12, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", buf, 0xCu);
        _MBLog(@"F ", "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", plistCopy);
      }
    }

    else if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v82 = plistCopy;
      _os_log_impl(&dword_1DEB5D000, v12, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", buf, 0xCu);
      _MBLog(@"E ", "System plist specifies external plist at '%@' that DOES NOT EXIST on the filesystem. Domain will be skipped.", plistCopy);
    }

    v45 = 0;
    goto LABEL_66;
  }

  v9 = MEMORY[0x1E695DF20];
  v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:plistCopy];
  v78 = 0;
  v11 = [v9 dictionaryWithContentsOfURL:v10 error:&v78];
  v12 = v78;

  if (!v11)
  {
    v50 = MBIsInternalInstall(v13, v14);
    v51 = v50;
    v52 = MBGetDefaultLog(v50);
    v46 = v52;
    if (v51)
    {
      if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
      {
        *buf = 138412546;
        v82 = plistCopy;
        v83 = 2112;
        v84 = v12;
        _os_log_impl(&dword_1DEB5D000, v46, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", buf, 0x16u);
        _MBLog(@"F ", "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", plistCopy, v12);
      }
    }

    else if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v82 = plistCopy;
      v83 = 2112;
      v84 = v12;
      _os_log_impl(&dword_1DEB5D000, v46, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", buf, 0x16u);
      _MBLog(@"E ", "System plist specifies external plist at '%@' but error loading plist: %@. Domain will be skipped.", plistCopy, v12);
    }

    goto LABEL_64;
  }

  v69 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F59DC7A8];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v15 = v11;
  v16 = [v15 countByEnumeratingWithState:&v74 objects:v80 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v75;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v75 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v74 + 1) + 8 * i);
        v21 = [v69 containsObject:v20];
        if ((v21 & 1) == 0)
        {
          v53 = MBIsInternalInstall(v21, v22);
          v54 = v53;
          v55 = MBGetDefaultLog(v53);
          v56 = v55;
          if (v54)
          {
            if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
            {
LABEL_54:
              *buf = 138412546;
              v82 = plistCopy;
              v83 = 2112;
              v84 = v20;
              _os_log_impl(&dword_1DEB5D000, v56, OS_LOG_TYPE_FAULT, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", buf, 0x16u);
              v60 = @"F ";
              goto LABEL_61;
            }

LABEL_62:
            v46 = v69;
LABEL_63:

            goto LABEL_64;
          }

          if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

LABEL_60:
          *buf = 138412546;
          v82 = plistCopy;
          v83 = 2112;
          v84 = v20;
          _os_log_impl(&dword_1DEB5D000, v56, OS_LOG_TYPE_ERROR, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", buf, 0x16u);
          v60 = @"E ";
LABEL_61:
          v46 = v69;
          _MBLog(v60, "External plist at '%@' includes invalid key: '%@'. Domain will be skipped.", plistCopy, v20);
          goto LABEL_63;
        }

        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0)
        {
          v57 = MBIsInternalInstall(isKindOfClass, v24);
          v58 = v57;
          v59 = MBGetDefaultLog(v57);
          v56 = v59;
          if (v58)
          {
            if (os_log_type_enabled(v59, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_54;
            }

            goto LABEL_62;
          }

          if (!os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_62;
          }

          goto LABEL_60;
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v74 objects:v80 count:16];
    }

    while (v17);
  }

  v66 = v11;
  v67 = v12;
  v68 = plistCopy;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v25 = v15;
  v26 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (!v26)
  {
    goto LABEL_38;
  }

  v27 = v26;
  v28 = *v71;
  do
  {
    v29 = 0;
    do
    {
      if (*v71 != v28)
      {
        objc_enumerationMutation(v25);
      }

      v30 = *(*(&v70 + 1) + 8 * v29);
      v31 = [v25 objectForKeyedSubscript:v30];
      if ([v30 isEqualToString:@"RootPath"])
      {
        v32 = [MBDomain _stringByRemovingCommentsFromValue:v31 forKey:v30];
        rootPath = self->_rootPath;
        self->_rootPath = v32;
        goto LABEL_24;
      }

      if ([v30 isEqualToString:@"RelativePathsToBackupAndRestore"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        v34 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsToBackupAndRestore;
        self->_relativePathsToBackupAndRestore = v34;
        goto LABEL_21;
      }

      if ([v30 isEqualToString:@"RelativePathsToOnlyBackupEncrypted"])
      {
        v36 = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        rootPath = self->_relativePathsToOnlyBackupEncrypted;
        self->_relativePathsToOnlyBackupEncrypted = v36;
        goto LABEL_24;
      }

      if ([v30 isEqualToString:@"RelativePathsNotToBackup"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        v37 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToBackup;
        self->_relativePathsNotToBackup = v37;
        goto LABEL_21;
      }

      if ([v30 isEqualToString:@"RelativePathsNotToBackupToDrive"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        v38 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToBackupToDrive;
        self->_relativePathsNotToBackupToDrive = v38;
        goto LABEL_21;
      }

      if ([v30 isEqualToString:@"RelativePathsToBackgroundRestore"])
      {
        v39 = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        rootPath = self->_relativePathsToBackgroundRestore;
        self->_relativePathsToBackgroundRestore = v39;
        goto LABEL_24;
      }

      if ([v30 isEqualToString:@"RelativePathsToRemoveOnRestore"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        v40 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsToRemoveOnRestore;
        self->_relativePathsToRemoveOnRestore = v40;
        goto LABEL_21;
      }

      if ([v30 isEqualToString:@"RelativePathsNotToTransferDeviceToDevice"])
      {
        rootPath = [MBDomain _setOfStringsFromValue:v31 forKey:v30];
        v41 = [MBDomain _relativePathsByAddingSQLiteJournals:rootPath];
        relativePathsToBackupAndRestore = self->_relativePathsNotToTransferDeviceToDevice;
        self->_relativePathsNotToTransferDeviceToDevice = v41;
LABEL_21:

LABEL_24:
      }

      ++v29;
    }

    while (v27 != v29);
    v42 = [v25 countByEnumeratingWithState:&v70 objects:v79 count:16];
    v27 = v42;
  }

  while (v42);
LABEL_38:

  plistCopy = v68;
  if (self->_rootPath)
  {
    v45 = 1;
    v11 = v66;
    v12 = v67;
    v46 = v69;
    goto LABEL_65;
  }

  v62 = MBIsInternalInstall(v43, v44);
  v63 = v62;
  v64 = MBGetDefaultLog(v62);
  v65 = v64;
  v11 = v66;
  v12 = v67;
  v46 = v69;
  if (v63)
  {
    if (os_log_type_enabled(v64, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v82 = v68;
      _os_log_impl(&dword_1DEB5D000, v65, OS_LOG_TYPE_FAULT, "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", buf, 0xCu);
      _MBLog(@"F ", "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", v68);
    }
  }

  else if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v82 = v68;
    _os_log_impl(&dword_1DEB5D000, v65, OS_LOG_TYPE_ERROR, "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", buf, 0xCu);
    _MBLog(@"E ", "System plist specifies external plist at '%@' but plist is MALFORMED. Domain will be skipped.", v68);
  }

LABEL_64:
  v45 = 0;
LABEL_65:

LABEL_66:
  return v45;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(MBDomain *)self isEqualToDomain:equalCopy];

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(NSString *)self->_name compare:compareCopy[4]];
  }

  else
  {
    v5 = NSOrderedSame;
  }

  return v5;
}

- (int)containerType
{
  if ([(MBDomain *)self isPluginAppDomain])
  {
    return 2;
  }

  if ([(MBDomain *)self isGroupAppDomain])
  {
    return 3;
  }

  if ([(MBDomain *)self isSystemContainerDomain])
  {
    return 4;
  }

  if ([(MBDomain *)self isSystemSharedContainerDomain])
  {
    return 5;
  }

  return 1;
}

- (BOOL)isUninstalledAppDomain
{
  isAppDomain = [(MBDomain *)self isAppDomain];
  if (isAppDomain)
  {
    LOBYTE(isAppDomain) = self->_rootPath == 0;
  }

  return isAppDomain;
}

- (BOOL)supportsFSEventsForDetectingChanges
{
  if ([(MBDomain *)self isAppDomain]|| [(MBDomain *)self isPluginAppDomain]|| [(MBDomain *)self isGroupAppDomain]|| [(MBDomain *)self isSystemContainerDomain])
  {
    return 1;
  }

  return [(MBDomain *)self isSystemSharedContainerDomain];
}

- (NSString)rootPath
{
  rootPath = self->_rootPath;
  if (!rootPath)
  {
    [MBDomain rootPath];
    rootPath = v5;
  }

  return rootPath;
}

- (BOOL)shouldBackUpAnyChildOfRelativePath:(id)path
{
  v45 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v5 = [pathCopy length];
  if (v5)
  {
    v6 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    selfCopy = self;
    relativePathsNotToBackup = [(MBDomain *)self relativePathsNotToBackup];
    v8 = [relativePathsNotToBackup countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(relativePathsNotToBackup);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          v13 = pathCopy;
          v14 = v12;
          v15 = [v13 length];
          if (v15 == [v14 length])
          {
            v16 = [v13 isEqualToString:v14];

            if (v16)
            {
              goto LABEL_28;
            }
          }

          else
          {
            v17 = [v14 stringByAppendingString:@"/"];

            v18 = [v13 hasPrefix:v17];
            if (v18)
            {
              goto LABEL_28;
            }
          }
        }

        v9 = [relativePathsNotToBackup countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v9);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    relativePathsNotToBackup = [(MBDomain *)selfCopy relativePathsToBackup];
    v19 = [relativePathsNotToBackup countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v36;
      while (2)
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v36 != v21)
          {
            objc_enumerationMutation(relativePathsNotToBackup);
          }

          v23 = *(*(&v35 + 1) + 8 * j);
          v24 = [v23 length];
          if (!v24)
          {
LABEL_30:
            v32 = 1;
            goto LABEL_31;
          }

          if (v6 >= v24)
          {
            v25 = pathCopy;
            v26 = v23;
          }

          else
          {
            v25 = v23;
            v26 = pathCopy;
          }

          v27 = v26;
          v28 = [v25 length];
          if (v28 == [v27 length])
          {
            v29 = [v25 isEqualToString:v27];

            if (v29)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v30 = [v27 stringByAppendingString:@"/"];

            v31 = [v25 hasPrefix:v30];
            if (v31)
            {
              goto LABEL_30;
            }
          }
        }

        v20 = [relativePathsNotToBackup countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_28:
    v32 = 0;
LABEL_31:
  }

  else
  {
    v32 = 1;
  }

  return v32;
}

- (BOOL)shouldBackupRelativePathIgnoringProtectionClass:(id)class
{
  v22 = *MEMORY[0x1E69E9840];
  classCopy = class;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  relativePathsToBackupIgnoringProtectionClass = [(MBDomain *)self relativePathsToBackupIgnoringProtectionClass];
  v6 = [relativePathsToBackupIgnoringProtectionClass countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = *v18;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(relativePathsToBackupIgnoringProtectionClass);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = classCopy;
        v11 = v9;
        v12 = [v10 length];
        if (v12 == [v11 length])
        {
          v13 = [v10 isEqualToString:v11];

          if (v13)
          {
            goto LABEL_13;
          }
        }

        else
        {
          v14 = [v11 stringByAppendingString:@"/"];

          v15 = [v10 hasPrefix:v14];
          if (v15)
          {
LABEL_13:
            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }
      }

      v6 = [relativePathsToBackupIgnoringProtectionClass countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return v6;
}

- (BOOL)shouldBackupRelativePathFromLiveFileSystem:(id)system
{
  v27 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  name = [(MBDomain *)self name];
  v6 = [name isEqualToString:@"SkippedFilesDomain"];

  if (v6)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    v8 = self->_relativePathsToBackupLive;
    if ([(NSSet *)v8 count])
    {
      stringByStandardizingPath = [systemCopy stringByStandardizingPath];
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v10 = v8;
      v7 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v7)
      {
        v21 = v8;
        v11 = *v23;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v23 != v11)
            {
              objc_enumerationMutation(v10);
            }

            v13 = *(*(&v22 + 1) + 8 * i);
            v14 = stringByStandardizingPath;
            v15 = v13;
            v16 = [v14 length];
            if (v16 == [v15 length])
            {
              v17 = [v14 isEqualToString:v15];

              if (v17)
              {
                goto LABEL_16;
              }
            }

            else
            {
              v18 = [v15 stringByAppendingString:@"/"];

              v19 = [v14 hasPrefix:v18];
              if (v19)
              {
LABEL_16:
                LOBYTE(v7) = 1;
                goto LABEL_17;
              }
            }
          }

          v7 = [(NSSet *)v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }

LABEL_17:
        v8 = v21;
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (NSString)rootPathRelativeToVolumeMountPoint
{
  volumeMountPoint = [(MBDomain *)self volumeMountPoint];
  v4 = [volumeMountPoint hasPrefix:@"/private"];

  if (v4)
  {
    v5 = [@"/private" length];
    volumeMountPoint2 = [(MBDomain *)self volumeMountPoint];
    v7 = [volumeMountPoint2 length] - v5;
  }

  else
  {
    volumeMountPoint2 = [(MBDomain *)self volumeMountPoint];
    v7 = [volumeMountPoint2 length];
  }

  rootPath = [(MBDomain *)self rootPath];
  v9 = [rootPath substringFromIndex:v7 + 1];

  return v9;
}

- (id)standardizedRelativePathFor:(id)for
{
  stringByStandardizingPath = [for stringByStandardizingPath];
  if ([stringByStandardizingPath isAbsolutePath])
  {
    if (([stringByStandardizingPath hasPrefix:self->_rootPath] & 1) == 0)
    {
      [MBDomain standardizedRelativePathFor:];
    }

    v5 = [stringByStandardizingPath substringFromIndex:{-[NSString length](self->_rootPath, "length") + 1}];

    stringByStandardizingPath = v5;
  }

  return stringByStandardizingPath;
}

+ (void)_domainWithName:(uint64_t)a1 volumeMountPoint:(uint64_t)a2 rootPath:.cold.2(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[MBDomain _domainWithName:volumeMountPoint:rootPath:]"];
  [v5 handleFailureInFunction:v4 file:@"MBDomain.m" lineNumber:141 description:{@"%@ is not a prefix of %@", a1, a2}];
}

- (void)rootPath
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:v2 object:v3 file:@"MBDomain.m" lineNumber:540 description:{@"Domain has no root path (uninstalled app?): %@", *(v3 + 32)}];

  *v0 = *v1;
}

- (void)standardizedRelativePathFor:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v2 object:v1 file:@"MBDomain.m" lineNumber:625 description:{@"Absolute path doesn't have domain root %@ as prefix: %@", *v3, v0}];
}

@end