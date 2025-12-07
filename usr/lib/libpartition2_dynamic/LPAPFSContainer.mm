@interface LPAPFSContainer
+ (id)_containerWithPhysticalStoreRole:(int)role;
+ (id)allAPFSContainers;
+ (id)supportedContentTypes;
- (id)_matchVolumesWithRole:(int)role group:(id)group;
- (id)addVolumeWithName:(id)name role:(int)role caseSensitive:(BOOL)sensitive reserveSize:(int64_t)size quotaSize:(int64_t)quotaSize pairedVolume:(id)volume error:(id *)error;
- (id)physicalStores;
- (id)volumeWithRole:(int)role group:(id)group;
- (id)volumesWithRole:(int)role group:(id)group;
@end

@implementation LPAPFSContainer

+ (id)supportedContentTypes
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = LPAPFSContainerMediaTypeUUID[0];
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)allAPFSContainers
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = +[LPMedia allMedia];
  v3 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v2, "count")}];
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
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 addObject:{v9, v12}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x29EDB8D80] arrayWithArray:v3];

  return v10;
}

+ (id)_containerWithPhysticalStoreRole:(int)role
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = +[LPPartitionMedia primaryMedia];
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
        for (i = 0; i != v8; ++i)
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
    v15 = _os_log_pack_fill(v14, v13, 0, &dword_2997D0000, "%s: Failed to find primary media", v17);
    *v15 = 136315138;
    *(v15 + 4) = "+[LPAPFSContainer _containerWithPhysticalStoreRole:]";
    _LPLogPack(1, v14);
    container = 0;
  }

  return container;
}

- (id)addVolumeWithName:(id)name role:(int)role caseSensitive:(BOOL)sensitive reserveSize:(int64_t)size quotaSize:(int64_t)quotaSize pairedVolume:(id)volume error:(id *)error
{
  sensitiveCopy = sensitive;
  v13 = *&role;
  v68 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  volumeCopy = volume;
  bSDName = [(LPMedia *)self BSDName];
  v18 = [MEMORY[0x29EDB8E00] dictionaryWithCapacity:5];
  v67 = volumeCopy;
  if (!bSDName)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v22 = _os_log_pack_size();
    v20 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v22, 0, &dword_2997D0000, "%s : Container is somehow missing a BSD name.");
    goto LABEL_13;
  }

  if (!nameCopy)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v23 = _os_log_pack_size();
    v20 = &v65 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v23, 0, &dword_2997D0000, "%s : You need to specify a volume name.");
    goto LABEL_13;
  }

  if ([nameCopy length] >= 0x80)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v19 = _os_log_pack_size();
    v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v21 = _os_log_pack_fill(v20, v19, 0, &dword_2997D0000, "%s : Volume name is invalid");
LABEL_13:
    *v21 = 136315138;
    *(v21 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v20);
LABEL_14:
    v24 = 0;
    goto LABEL_15;
  }

  if (volumeCopy)
  {
    bSDName2 = [volumeCopy BSDName];
    if (v13 != 1)
    {
      v32 = bSDName2;
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
      }

      v33 = _os_log_pack_size();
      v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      v35 = _os_log_pack_fill(v34, v33, 0, &dword_2997D0000, "%s : Paired volume is not valid if role is not system.");
      goto LABEL_53;
    }

    v66 = bSDName2;
    if (([bSDName2 hasPrefix:bSDName] & 1) == 0)
    {
      if (error)
      {
        *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
      }

      v27 = _os_log_pack_size();
      v28 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      v29 = _os_log_pack_fill(v28, v27, 0, &dword_2997D0000, "%s : Paired volume must be in the same container", v65);
      *v29 = 136315138;
      *(v29 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
LABEL_51:
      _LPLogPack(1, v28);
LABEL_58:
      v57 = v66;
      goto LABEL_59;
    }
  }

  else
  {
    v66 = 0;
  }

  v30 = [LPAPFSVolume roleMetadataForRole:v13];
  if (v30)
  {
    var1 = v30->var1;
  }

  else
  {
    var1 = 0;
  }

  [v18 setObject:nameCopy forKey:*MEMORY[0x29EDBD508]];
  v36 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:var1];
  [v18 setObject:v36 forKey:*MEMORY[0x29EDBD528]];

  if (MEMORY[0x29EDBD510])
  {
    [v18 setObject:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD510]];
  }

  if (sensitiveCopy)
  {
    [v18 setObject:MEMORY[0x29EDB8EB0] forKey:*MEMORY[0x29EDBD4F0]];
  }

  if (size)
  {
    v37 = [MEMORY[0x29EDBA070] numberWithLongLong:size];
    [v18 setObject:v37 forKey:*MEMORY[0x29EDBD520]];
  }

  if (quotaSize)
  {
    v38 = [MEMORY[0x29EDBA070] numberWithLongLong:quotaSize];
    [v18 setObject:v38 forKey:*MEMORY[0x29EDBD518]];
  }

  if (!v66)
  {
    goto LABEL_43;
  }

  v39 = MEMORY[0x29EDBD500];
  if (!MEMORY[0x29EDBD500])
  {
    v32 = v66;
    v56 = _os_log_pack_size();
    v34 = &v65 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
    v35 = _os_log_pack_fill(v34, v56, 0, &dword_2997D0000, "%s : Requested system volume with sibling but the key is not supported.");
LABEL_53:
    *v35 = 136315138;
    *(v35 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v34);
    v57 = v32;
LABEL_59:

    goto LABEL_14;
  }

  v40 = [v66 substringFromIndex:4];
  v41 = [v40 componentsSeparatedByString:@"s"];
  if ([v41 count] <= 1)
  {
    v61 = v40;
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:22 userInfo:0];
    }

    v62 = _os_log_pack_size();
    v63 = &v65 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
    v64 = _os_log_pack_fill(v63, v62, 0, &dword_2997D0000, "%s : Container isn't a container?!", v65);
    *v64 = 136315138;
    *(v64 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v63);

    goto LABEL_58;
  }

  v65 = v40;
  v42 = [v41 objectAtIndex:{objc_msgSend(v41, "count") - 1}];
  intValue = [v42 intValue];

  v44 = [MEMORY[0x29EDBA070] numberWithInt:intValue];
  [v18 setObject:v44 forKey:*v39];

LABEL_43:
  v45 = _os_log_pack_size();
  v46 = &v65 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = _os_log_pack_fill(v46, v45, 0, &dword_2997D0000, "%s : Creating APFS volume %s with options: %@");
  fileSystemRepresentation = [bSDName fileSystemRepresentation];
  *v47 = 136315650;
  *(v47 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
  *(v47 + 12) = 2080;
  *(v47 + 14) = fileSystemRepresentation;
  *(v47 + 22) = 2112;
  *(v47 + 24) = v18;
  _LPLogPack(1, v46);
  if (MEMORY[0x2A1C78518] && v13 == 1)
  {
    v49 = _os_log_pack_size();
    v50 = &v65 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
    v51 = _os_log_pack_fill(v50, v49, 0, &dword_2997D0000, "%s : APFSVolumeCreateForMSU exists and we're creating a System volume. Preferring it to APFSVolumeCreate.", v65);
    *v51 = 136315138;
    *(v51 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    _LPLogPack(1, v50);
    [bSDName fileSystemRepresentation];
    v52 = APFSVolumeCreateForMSU();
  }

  else
  {
    [bSDName fileSystemRepresentation];
    v52 = APFSVolumeCreate();
  }

  v53 = v52;
  if (v52)
  {
    if (error)
    {
      *error = [MEMORY[0x29EDB9FA0] errorWithDomain:*MEMORY[0x29EDB9EF8] code:v52 userInfo:0];
    }

    v54 = _os_log_pack_size();
    v28 = &v65 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    v55 = _os_log_pack_fill(v28, v54, 0, &dword_2997D0000, "%s : Add volume failed with error: %d.", v65, v66);
    *v55 = 136315394;
    *(v55 + 4) = "[LPAPFSContainer addVolumeWithName:role:caseSensitive:reserveSize:quotaSize:pairedVolume:error:]";
    *(v55 + 12) = 1024;
    *(v55 + 14) = v53;
    goto LABEL_51;
  }

  v58 = [v18 objectForKey:*MEMORY[0x29EDBD4F8]];
  v59 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@s%d", bSDName, objc_msgSend(v58, "intValue") + 1];
  bSDName3 = [(LPMedia *)self BSDName];
  [LPMedia waitForIOMediaWithDevNode:bSDName3];

  v24 = [LPMedia mediaForBSDNameOrDeviceNode:v59];
LABEL_15:

  return v24;
}

- (id)_matchVolumesWithRole:(int)role group:(id)group
{
  v4 = *&role;
  v19[3] = *MEMORY[0x29EDCA608];
  groupCopy = group;
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v8 = dictionary;
  if (groupCopy)
  {
    [dictionary setObject:groupCopy forKeyedSubscript:@"VolGroupUUID"];
  }

  v9 = [LPAPFSVolume roleMetadataForRole:v4];
  if (!v4)
  {
    goto LABEL_6;
  }

  if (v9)
  {
    v10 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:v9->var1];
    [v8 setObject:v10 forKeyedSubscript:@"RoleValue"];

LABEL_6:
    IORegistryEntryGetRegistryEntryID([(LPMedia *)self ioMedia], &v15);
    v18[0] = @"IOParentMatch";
    v16 = @"IORegistryEntryID";
    v11 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:v15];
    v17 = v11;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v19[0] = v12;
    v19[1] = @"AppleAPFSVolume";
    v18[1] = @"IOProviderClass";
    v18[2] = @"IOPropertyMatch";
    v19[2] = v8;
    v13 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:3];

    goto LABEL_8;
  }

  v13 = &unk_2A1F8C650;
LABEL_8:

  return v13;
}

- (id)volumesWithRole:(int)role group:(id)group
{
  v4 = *&role;
  groupCopy = group;
  bSDName = [(LPMedia *)self BSDName];
  [LPMedia waitForIOMediaWithDevNode:bSDName];

  existing = 0;
  v8 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:8];
  v9 = [(LPAPFSContainer *)self _matchVolumesWithRole:v4 group:groupCopy];

  LODWORD(self) = +[LPMedia IOMainPort];
  v10 = v9;
  IOServiceGetMatchingServices(self, v10, &existing);
  v11 = existing;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 3254779904;
  v17[2] = __41__LPAPFSContainer_volumesWithRole_group___block_invoke;
  v17[3] = &__block_descriptor_40_e8_32s_e8_v12__0I8l;
  v18 = v8;
  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3254779904;
  v15[2] = __41__LPAPFSContainer_volumesWithRole_group___block_invoke_48;
  v15[3] = &__block_descriptor_40_e8_32s_e5_v8__0l;
  v16 = v18;
  v12 = v18;
  iterateSafely(v11, 3, v17, v15);
  IOObjectRelease(existing);
  v13 = [MEMORY[0x29EDB8D80] arrayWithArray:v12];

  return v13;
}

void __41__LPAPFSContainer_volumesWithRole_group___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [(LPMedia *)[LPAPFSVolume alloc] initWithIOMediaObject:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)physicalStores
{
  v19[2] = *MEMORY[0x29EDCA608];
  bSDName = [(LPMedia *)self BSDName];
  [LPMedia waitForIOMediaWithDevNode:bSDName];

  v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:2];
  v18[1] = @"IOPropertyMatch";
  v19[0] = @"IOMedia";
  v18[0] = @"IOProviderClass";
  v16 = @"Content";
  v17 = LPAPFSPhysicalStoreMediaUUID[0];
  v5 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v19[1] = v5;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v19 forKeys:v18 count:2];

  HIDWORD(matches) = 0;
  if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, &matches + 4))
  {
    v7 = _os_log_pack_size();
    v8 = &matches - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    v9 = _os_log_pack_fill(v8, v7, 0, &dword_2997D0000, "%s : Can not iterate over physical store services.", matches);
    *v9 = 136315138;
    *(v9 + 4) = "[LPAPFSContainer physicalStores]";
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
          MEMORY[0x29C29F2C0](HIDWORD(matches));
        }

        LODWORD(matches) = 0;
        IOServiceMatchPropertyTable(v12, v6, &matches);
        if (matches)
        {
          v13 = [(LPMedia *)[LPAPFSPhysicalStore alloc] initWithIOMediaObject:v12];
          if (v13)
          {
            [v4 addObject:v13];
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

    v10 = [MEMORY[0x29EDB8D80] arrayWithArray:v4];
  }

  return v10;
}

- (id)volumeWithRole:(int)role group:(id)group
{
  v4 = [(LPAPFSContainer *)self _matchVolumesWithRole:*&role group:group];
  v5 = +[LPMedia IOMainPort];
  v6 = v4;
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [(LPMedia *)[LPAPFSVolume alloc] initWithIOMediaObject:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end