@interface LPStaticAPFSContainer
+ (id)_containerWithPhysticalStoreRole:(int)role;
+ (id)allAPFSContainers;
+ (id)supportedContentTypes;
- (id)_matchVolumesWithRole:(int)role group:(id)group;
- (id)addVolumeWithName:(id)name role:(int)role caseSensitive:(BOOL)sensitive reserveSize:(int64_t)size quotaSize:(int64_t)quotaSize pairedVolume:(id)volume error:(id *)error;
- (id)physicalStores;
- (id)volumeWithRole:(int)role group:(id)group;
- (id)volumesWithRole:(int)role group:(id)group;
@end

@implementation LPStaticAPFSContainer

+ (id)supportedContentTypes
{
  v4 = LPAPFSContainerMediaTypeUUID[0];
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

+ (id)allAPFSContainers
{
  v2 = +[LPStaticMedia allMedia];
  v3 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v2 count]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(NSMutableArray *)v3 addObject:v9, v12];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [NSArray arrayWithArray:v3];

  return v10;
}

+ (id)_containerWithPhysticalStoreRole:(int)role
{
  v4 = +[LPStaticPartitionMedia primaryMedia];
  v5 = v4;
  if (v4)
  {
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    children = [v4 children];
    v7 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(children);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v11 role] == role)
          {
            container = [v11 container];
            goto LABEL_14;
          }
        }

        v8 = [children countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    container = 0;
LABEL_14:
  }

  else
  {
    v13 = _os_log_pack_size();
    v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_0, "%s: Failed to find primary media", v17);
    *v15 = 136315138;
    *(v15 + 4) = "+[LPStaticAPFSContainer _containerWithPhysticalStoreRole:]";
    _LPLogPack(1, v14);
    container = 0;
  }

  return container;
}

- (id)addVolumeWithName:(id)name role:(int)role caseSensitive:(BOOL)sensitive reserveSize:(int64_t)size quotaSize:(int64_t)quotaSize pairedVolume:(id)volume error:(id *)error
{
  sensitiveCopy = sensitive;
  v13 = *&role;
  nameCopy = name;
  volumeCopy = volume;
  bSDName = [(LPStaticMedia *)self BSDName];
  v18 = [NSMutableDictionary dictionaryWithCapacity:5];
  v77 = volumeCopy;
  v78 = bSDName;
  if (!bSDName)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v22 = _os_log_pack_size();
    v20 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v22, 0, &dword_0, "%s : Container is somehow missing a BSD name.");
    goto LABEL_13;
  }

  if (!nameCopy)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v23 = _os_log_pack_size();
    v20 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v23, 0, &dword_0, "%s : You need to specify a volume name.");
    goto LABEL_13;
  }

  if ([nameCopy length] >= 0x80)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    }

    v19 = _os_log_pack_size();
    v20 = &v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_0, "%s : Volume name is invalid");
LABEL_13:
    *v21 = 136315138;
    *(v21 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v20);
LABEL_14:
    v24 = 0;
    v25 = v18;
LABEL_15:
    v26 = v78;
    goto LABEL_16;
  }

  if (volumeCopy)
  {
    bSDName2 = [volumeCopy BSDName];
    if (v13 != 1)
    {
      v35 = bSDName2;
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v36 = _os_log_pack_size();
      v37 = &v74 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
      v38 = _os_log_pack_fill(v37, v36, 0, &dword_0, "%s : Paired volume is not valid if role is not system.", v74);
      *v38 = 136315138;
      *(v38 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
      _LPLogPack(1, v37);
      v32 = v35;
      goto LABEL_31;
    }

    v76 = bSDName2;
    if (([bSDName2 hasPrefix:v78] & 1) == 0)
    {
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v29 = _os_log_pack_size();
      v30 = &v74 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
      v31 = _os_log_pack_fill(v30, v29, 0, &dword_0, "%s : Paired volume must be in the same container", v74);
      *v31 = 136315138;
      *(v31 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
      _LPLogPack(1, v30);
      v32 = v76;
LABEL_31:

      goto LABEL_14;
    }
  }

  else
  {
    v76 = 0;
  }

  v33 = [LPStaticAPFSVolume roleMetadataForRole:v13];
  v75 = nameCopy;
  if (v33)
  {
    var1 = v33->var1;
  }

  else
  {
    var1 = 0;
  }

  [(NSMutableDictionary *)v18 setObject:v75 forKey:kAPFSVolumeNameKey];
  v39 = [NSNumber numberWithUnsignedShort:var1];
  [(NSMutableDictionary *)v18 setObject:v39 forKey:kAPFSVolumeRoleKey];

  if (&kAPFSVolumeNoAutomountAtCreateKey)
  {
    v40 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v18 setObject:v40 forKey:kAPFSVolumeNoAutomountAtCreateKey];
  }

  if (sensitiveCopy)
  {
    v41 = [NSNumber numberWithBool:1];
    [(NSMutableDictionary *)v18 setObject:v41 forKey:kAPFSVolumeCaseSensitiveKey];
  }

  v25 = v18;
  nameCopy = v75;
  if (size)
  {
    v42 = [NSNumber numberWithLongLong:size];
    [(NSMutableDictionary *)v18 setObject:v42 forKey:kAPFSVolumeReserveSizeKey];
  }

  if (quotaSize)
  {
    v43 = [NSNumber numberWithLongLong:quotaSize];
    [(NSMutableDictionary *)v18 setObject:v43 forKey:kAPFSVolumeQuotaSizeKey];
  }

  if (v76)
  {
    if (&kAPFSVolumeGroupSiblingFSIndexKey)
    {
      v44 = [v76 substringFromIndex:4];
      v45 = [v44 componentsSeparatedByString:@"s"];
      if ([v45 count] > 1)
      {
        v74 = v44;
        v46 = [v45 objectAtIndex:{objc_msgSend(v45, "count") - 1}];
        intValue = [v46 intValue];

        v48 = intValue;
        v25 = v18;
        v49 = [NSNumber numberWithInt:v48];
        [(NSMutableDictionary *)v18 setObject:v49 forKey:kAPFSVolumeGroupSiblingFSIndexKey];

        goto LABEL_45;
      }

      v70 = v44;
      if (error)
      {
        *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      }

      v71 = _os_log_pack_size();
      v72 = &v74 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      v73 = _os_log_pack_fill(v72, v71, 0, &dword_0, "%s : Container isn't a container?!", v74);
      *v73 = 136315138;
      *(v73 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
      _LPLogPack(1, v72);

      v66 = v76;
    }

    else
    {
      v62 = v76;
      v63 = _os_log_pack_size();
      v64 = &v74 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      v65 = _os_log_pack_fill(v64, v63, 0, &dword_0, "%s : Requested system volume with sibling but the key is not supported.", v74);
      *v65 = 136315138;
      *(v65 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
      _LPLogPack(1, v64);
      v66 = v62;
    }

    v24 = 0;
    goto LABEL_15;
  }

LABEL_45:
  v50 = _os_log_pack_size();
  v51 = &v74 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = _os_log_pack_fill(v51, v50, 0, &dword_0, "%s : Creating APFS volume %s with options: %@");
  v26 = v78;
  fileSystemRepresentation = [v78 fileSystemRepresentation];
  *v52 = 136315650;
  *(v52 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
  *(v52 + 12) = 2080;
  *(v52 + 14) = fileSystemRepresentation;
  *(v52 + 22) = 2112;
  *(v52 + 24) = v25;
  _LPLogPack(1, v51);
  if (off_30600 && v13 == 1)
  {
    v54 = _os_log_pack_size();
    v55 = &v74 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v56 = _os_log_pack_fill(v55, v54, 0, &dword_0, "%s : APFSVolumeCreateForMSU exists and we're creating a System volume. Preferring it to APFSVolumeCreate.", v74);
    *v56 = 136315138;
    *(v56 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v55);
    [v26 fileSystemRepresentation];
    v57 = APFSVolumeCreateForMSU();
  }

  else
  {
    [v26 fileSystemRepresentation];
    v57 = APFSVolumeCreate();
  }

  v58 = v57;
  if (v57)
  {
    if (error)
    {
      *error = [NSError errorWithDomain:NSPOSIXErrorDomain code:v57 userInfo:0];
    }

    v59 = _os_log_pack_size();
    v60 = &v74 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    v61 = _os_log_pack_fill(v60, v59, 0, &dword_0, "%s : Add volume failed with error: %d.", v74, v75);
    *v61 = 136315394;
    *(v61 + 4) = "[LPStaticAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    *(v61 + 12) = 1024;
    *(v61 + 14) = v58;
    _LPLogPack(1, v60);

    v24 = 0;
  }

  else
  {
    v67 = [(NSMutableDictionary *)v25 objectForKey:kAPFSVolumeFSIndexKey];
    v68 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@s%d", v26, [v67 intValue] + 1);
    bSDName3 = [(LPStaticMedia *)self BSDName];
    [LPStaticMedia waitForIOMediaWithDevNode:bSDName3];

    v24 = [LPStaticMedia mediaForBSDNameOrDeviceNode:v68];
  }

LABEL_16:

  return v24;
}

- (id)_matchVolumesWithRole:(int)role group:(id)group
{
  v4 = *&role;
  groupCopy = group;
  v7 = +[NSMutableDictionary dictionary];
  v8 = v7;
  if (groupCopy)
  {
    [v7 setObject:groupCopy forKeyedSubscript:@"VolGroupUUID"];
  }

  v9 = [LPStaticAPFSVolume roleMetadataForRole:v4];
  if (v4)
  {
    v10 = v9;
    if (!v9)
    {
      v22 = @"IORegistryEntryID";
      v12 = [NSNumber numberWithInt:0];
      v23 = v12;
      v13 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      goto LABEL_12;
    }

    if (__isPlatformVersionAtLeast(2, 14, 0, 0))
    {
      v11 = [NSNumber numberWithUnsignedShort:v10->var1];
      [v8 setObject:v11 forKeyedSubscript:@"RoleValue"];
    }

    else
    {
      v11 = v10->var2;
      [(NSNumber *)v11 isEqualToString:@"Preboot"];
      if (v11)
      {
        v24 = v11;
        v14 = [NSArray arrayWithObjects:&v24 count:1];
        [v8 setObject:v14 forKeyedSubscript:@"Role"];
      }
    }
  }

  entryID = 0;
  IORegistryEntryGetRegistryEntryID([(LPStaticMedia *)self ioMedia], &entryID);
  v20[0] = @"IOParentMatch";
  v18 = @"IORegistryEntryID";
  v12 = [NSNumber numberWithUnsignedLongLong:entryID];
  v19 = v12;
  v15 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  v21[0] = v15;
  v21[1] = @"AppleAPFSVolume";
  v20[1] = @"IOProviderClass";
  v20[2] = @"IOPropertyMatch";
  v21[2] = v8;
  v13 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:3];

LABEL_12:

  return v13;
}

- (id)volumesWithRole:(int)role group:(id)group
{
  v4 = *&role;
  groupCopy = group;
  bSDName = [(LPStaticMedia *)self BSDName];
  [LPStaticMedia waitForIOMediaWithDevNode:bSDName];

  existing = 0;
  v8 = [NSMutableArray arrayWithCapacity:8];
  v9 = [(LPStaticAPFSContainer *)self _matchVolumesWithRole:v4 group:groupCopy];

  LODWORD(self) = +[LPStaticMedia IOMainPort];
  v10 = v9;
  IOServiceGetMatchingServices(self, v10, &existing);
  LODWORD(self) = existing;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3254779904;
  v16[2] = __47__LPStaticAPFSContainer_volumesWithRole_group___block_invoke;
  v16[3] = &__block_descriptor_40_e8_32s_e8_v12__0I8l;
  v17 = v8;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3254779904;
  v14[2] = __47__LPStaticAPFSContainer_volumesWithRole_group___block_invoke_46;
  v14[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  v15 = v17;
  v11 = v17;
  iterateSafely(self, 3, v16, v14);
  IOObjectRelease(existing);
  v12 = [NSArray arrayWithArray:v11];

  return v12;
}

void __47__LPStaticAPFSContainer_volumesWithRole_group___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LPStaticMedia *)[LPStaticAPFSVolume alloc] initWithIOMediaObject:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)physicalStores
{
  bSDName = [(LPStaticMedia *)self BSDName];
  [LPStaticMedia waitForIOMediaWithDevNode:bSDName];

  v4 = [NSMutableArray arrayWithCapacity:2];
  v18[1] = @"IOPropertyMatch";
  v19[0] = @"IOMedia";
  v18[0] = @"IOProviderClass";
  v16 = @"Content";
  v17 = LPAPFSPhysicalStoreMediaUUID[0];
  v5 = [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[1] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:2];

  HIDWORD(matches) = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &matches + 1))
  {
    v7 = _os_log_pack_size();
    v8 = &matches - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_0, "%s : Can not iterate over physical store services.", matches);
    *v9 = 136315138;
    *(v9 + 4) = "[LPStaticAPFSContainer physicalStores]";
    _LPLogPack(1, v8);
    v10 = 0;
  }

  else
  {
    v11 = IOIteratorNext(HIDWORD(matches));
    if (v11)
    {
      v12 = v11;
      do
      {
        if (IOObjectConformsTo(v12, "IOMedia"))
        {
          IORegistryIteratorExitEntry(HIDWORD(matches));
        }

        LODWORD(matches) = 0;
        IOServiceMatchPropertyTable(v12, v6, &matches);
        if (matches)
        {
          v13 = [(LPStaticMedia *)[LPStaticAPFSPhysicalStore alloc] initWithIOMediaObject:v12];
          if (v13)
          {
            [(NSMutableArray *)v4 addObject:v13];
          }
        }

        IOObjectRelease(v12);
        v12 = IOIteratorNext(HIDWORD(matches));
      }

      while (v12);
    }

    if (HIDWORD(matches))
    {
      IOObjectRelease(HIDWORD(matches));
    }

    v10 = [NSArray arrayWithArray:v4];
  }

  return v10;
}

- (id)volumeWithRole:(int)role group:(id)group
{
  v4 = [(LPStaticAPFSContainer *)self _matchVolumesWithRole:*&role group:group];
  v5 = +[LPStaticMedia IOMainPort];
  v6 = v4;
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [(LPStaticMedia *)[LPStaticAPFSVolume alloc] initWithIOMediaObject:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end