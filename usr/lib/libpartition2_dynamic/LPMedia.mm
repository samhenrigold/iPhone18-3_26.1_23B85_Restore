@interface LPMedia
+ (BOOL)hasEmbeddedDeviceTypeRoot;
+ (NSDictionary)contentTypeToSubclassMap;
+ (id)allMedia;
+ (id)liveMediaForSnapshotAtPath:(id)path;
+ (id)mediaForBSDNameOrDeviceNode:(id)node;
+ (id)mediaForPath:(id)path isSnapshot:(BOOL *)snapshot;
+ (id)mediaForPath:(id)path snapshotName:(id *)name;
+ (id)mediaForUUID:(id)d;
+ (id)mediaOfCorrectTypeGivenIOMedia:(unsigned int)media;
+ (id)snapshotNameForMediaForPath:(id)path;
+ (unsigned)_copyIOMediaForDiskWithPath:(id)path;
+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot;
+ (void)waitForBlockStorage;
+ (void)waitForIOMediaWithDevNode:(id)node;
- (BOOL)getBoolPropertyWithName:(id)name;
- (BOOL)isEmbeddedDeviceTypeRoot;
- (BOOL)isEqual:(id)equal;
- (BOOL)isInternal;
- (BOOL)isJournaled;
- (BOOL)isReadOnly;
- (BOOL)setName:(id)name withError:(id *)error;
- (LPMedia)initWithIOMediaObject:(unsigned int)object;
- (id)_deviceCharacteristicStringForKey:(id)key;
- (id)description;
- (id)devNodePath;
- (id)deviceModel;
- (id)getPropertyWithName:(id)name;
- (id)mountPoint;
- (id)name;
- (id)wholeMediaForMedia;
- (int)storageMedium;
- (void)dealloc;
@end

@implementation LPMedia

+ (BOOL)hasEmbeddedDeviceTypeRoot
{
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], &unk_2A1F8C6A0);
  v3 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  return v3 != 0;
}

+ (id)allMedia
{
  v12[1] = *MEMORY[0x29EDCA608];
  v2 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:10];
  +[LPMedia waitForBlockStorage];
  HIDWORD(v12[0]) = 0;
  v3 = IOServiceMatching("IOMedia");
  if (IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v3, v12 + 1))
  {
    v4 = _os_log_pack_size();
    v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    v6 = _os_log_pack_fill(v5, v4, 0, &dword_2997D0000, "%s: Failed to get IOMedia objects", v12[0]);
    *v6 = 136315138;
    *(v6 + 4) = "+[LPMedia allMedia]";
    _LPLogPack(1, v5);
    v7 = MEMORY[0x29EDB8E90];
  }

  else
  {
    v8 = IOIteratorNext(HIDWORD(v12[0]));
    if (v8)
    {
      v9 = v8;
      do
      {
        v10 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v9];
        if (v10)
        {
          [v2 addObject:v10];
        }

        IOObjectRelease(v9);

        v9 = IOIteratorNext(HIDWORD(v12[0]));
      }

      while (v9);
    }

    if (HIDWORD(v12[0]))
    {
      IOObjectRelease(HIDWORD(v12[0]));
    }

    v7 = [MEMORY[0x29EDB8D80] arrayWithArray:v2];
  }

  return v7;
}

+ (id)mediaForPath:(id)path isSnapshot:(BOOL *)snapshot
{
  v7 = 0;
  v5 = [self mediaForPath:path snapshotName:&v7];
  if (snapshot && v5)
  {
    *snapshot = v7 != 0;
  }

  return v5;
}

+ (id)mediaForPath:(id)path snapshotName:(id *)name
{
  v53 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  bzero(&v52, 0x878uLL);
  if (statfs([pathCopy fileSystemRepresentation], &v52))
  {
    v7 = *__error();
    _os_log_pack_size();
    v8 = &v42 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v10 = _os_log_pack_fill(v8, v9, 0, &dword_2997D0000, "%s: no filesystem for %@ (%d): %s");
    v11 = strerror(v7);
    *v10 = 136315906;
    *(v10 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
    *(v10 + 12) = 2112;
    *(v10 + 14) = pathCopy;
    *(v10 + 22) = 1024;
    *(v10 + 24) = v7;
    *(v10 + 28) = 2080;
    *(v10 + 30) = v11;
    _LPLogPack(1, v8);
    v12 = 0;
LABEL_3:
    v13 = 0;
    goto LABEL_24;
  }

  v14 = v52.f_fsid.val[0];
  v50[0] = @"IOProviderClass";
  v50[1] = @"IOPropertyMatch";
  v51[0] = @"IOMedia";
  v48[0] = @"BSD Major";
  v15 = [MEMORY[0x29EDBA070] numberWithInt:HIBYTE(v52.f_fsid.val[0])];
  v48[1] = @"BSD Minor";
  v49[0] = v15;
  0xFFFFFF = [MEMORY[0x29EDBA070] numberWithInt:v14 & 0xFFFFFF];
  v49[1] = 0xFFFFFF;
  v17 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  v51[1] = v17;
  v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v51 forKeys:v50 count:2];

  LODWORD(v15) = *MEMORY[0x29EDBB118];
  v18 = CFRetain(v12);
  MatchingService = IOServiceGetMatchingService(v15, v18);
  if (!MatchingService)
  {
    _os_log_pack_size();
    v23 = &v42 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v25 = _os_log_pack_fill(v23, v24, 0, &dword_2997D0000, "%s: no IOMedia for %@ (device 0x%lx)");
    *v25 = 136315650;
    *(v25 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
    *(v25 + 12) = 2112;
    *(v25 + 14) = pathCopy;
    *(v25 + 22) = 2048;
    *(v25 + 24) = v14;
    _LPLogPack(1, v23);
    goto LABEL_3;
  }

  v20 = MatchingService;
  v21 = [self mediaOfCorrectTypeGivenIOMedia:MatchingService];
  v13 = v21;
  if (name && v21)
  {
    if ((v52.f_flags & 0x40000000) == 0)
    {
      v22 = 0;
LABEL_22:
      v40 = v22;
      *name = v22;

      goto LABEL_23;
    }

    v26 = strrchr(v52.f_mntfromname, 64);
    if (v26)
    {
      v22 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:v52.f_mntfromname length:v26 - v52.f_mntfromname encoding:4];
      goto LABEL_20;
    }

    if (!IOObjectConformsTo(v20, "AppleAPFSSnapshot"))
    {
      v22 = 0;
      goto LABEL_20;
    }

    memset(v47, 0, 37);
    CFProperty = IORegistryEntryCreateCFProperty(v20, @"UUID", 0, 0);
    [CFProperty getCString:v47 maxLength:37 encoding:4];
    v46 = 0;
    memset(v45, 0, sizeof(v45));
    v44 = 2;
    if (uuid_parse(v47, v45))
    {
      _os_log_pack_size();
      v28 = &v42 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v28, v29, 0, &dword_2997D0000, "%s: could not parse %s %{private}s: %{private}@");
      *v30 = 136315907;
      *(v30 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v30 + 12) = 2080;
      *(v30 + 14) = "AppleAPFSSnapshot";
      *(v30 + 22) = 2081;
      *(v30 + 24) = "UUID";
      *(v30 + 32) = 2113;
      *(v30 + 34) = CFProperty;
      _LPLogPack(1, v28);
    }

    else
    {
      if (!fsctl(v52.f_mntonname, 0xC1204A43uLL, &v44, 0))
      {
        v22 = [objc_alloc(MEMORY[0x29EDBA0F8]) initWithBytes:&v45[24] length:strnlen(&v45[24] encoding:{0xFFuLL), 4}];
        goto LABEL_19;
      }

      _os_log_pack_size();
      v43 = &v42;
      v31 = &v42 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v33 = _os_log_pack_fill(v31, v32, 0, &dword_2997D0000, "%s: could not look up snapshot by UUID: %d (%s)", v42, v43, v44);
      v34 = *__error();
      v35 = __error();
      v36 = strerror(*v35);
      *v33 = 136315650;
      *(v33 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v33 + 12) = 1024;
      *(v33 + 14) = v34;
      *(v33 + 18) = 2080;
      *(v33 + 20) = v36;
      _LPLogPack(1, v31);
    }

    v22 = 0;
LABEL_19:

LABEL_20:
    if (![v22 length])
    {
      _os_log_pack_size();
      v37 = &v42 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
      v39 = _os_log_pack_fill(v37, v38, 0, &dword_2997D0000, "%s: path is a snapshot, but has no name: %{private}@");
      *v39 = 136315395;
      *(v39 + 4) = "+[LPMedia mediaForPath:snapshotName:]";
      *(v39 + 12) = 2113;
      *(v39 + 14) = pathCopy;
      _LPLogPack(1, v37);
    }

    goto LABEL_22;
  }

LABEL_23:
  IOObjectRelease(v20);
LABEL_24:

  return v13;
}

+ (id)snapshotNameForMediaForPath:(id)path
{
  v54 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  v52 = 0;
  v5 = [self mediaForPath:pathCopy snapshotName:&v52];
  v6 = v52;
  v7 = v6;
  if (!v5)
  {
    v9 = _os_log_pack_size();
    v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v11 = _os_log_pack_fill(v10, v9, 0, &dword_2997D0000, "%s: No media found for path: %{private}@");
    *v11 = 136315395;
    *(v11 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
    *(v11 + 12) = 2113;
    *(v11 + 14) = pathCopy;
    _LPLogPack(1, v10);
    v8 = 0;
    goto LABEL_32;
  }

  if (v6)
  {
    v8 = v6;
    goto LABEL_32;
  }

  v12 = [self liveMediaForSnapshotAtPath:@"/"];
  if (!v12 || ![v5 isEqual:v12])
  {
    goto LABEL_10;
  }

  v51 = 0;
  v13 = [self mediaForPath:@"/" snapshotName:&v51];
  v8 = v51;

  if (!v13 || !v8)
  {

LABEL_10:
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v5;
      v50 = 0;
      v15 = [v14 snapshotInfoWithError:&v50];
      v16 = v50;
      v17 = v16;
      if (v15)
      {
        v41 = v16;
        v43 = v14;
        v44 = v12;
        v45 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v15, "count")}];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v42 = v15;
        v18 = v15;
        v19 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v47;
          while (2)
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v47 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v46 + 1) + 8 * i);
              v8 = [v23 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
              v24 = [v23 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyMarkedForRoot[0]];
              if ([v24 BOOLValue])
              {

                v12 = v44;
                v14 = v43;
                v15 = v42;
                v25 = v45;
                goto LABEL_29;
              }

              if ([v8 hasPrefix:@"com.apple.os.update-"])
              {
                [v45 addObject:v23];
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        v25 = v45;
        if ([v45 count])
        {
          v26 = [v45 sortedArrayUsingComparator:&__block_literal_global_1];
          lastObject = [v26 lastObject];
          v8 = [lastObject objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyName[0]];
        }

        else
        {
          v36 = _os_log_pack_size();
          v37 = &v40 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
          v38 = _os_log_pack_fill(v37, v36, 0, &dword_2997D0000, "%s: No snapshot is tagged for boot and none match the naming scheme", v40);
          *v38 = 136315138;
          *(v38 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
          _LPLogPack(1, v37);
          v8 = 0;
        }

        v12 = v44;
        v14 = v43;
        v15 = v42;
LABEL_29:

        v17 = v41;
      }

      else
      {
        v32 = _os_log_pack_size();
        v33 = &v40 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
        v34 = _os_log_pack_fill(v33, v32, 0, &dword_2997D0000, "%s: Error getting snapshot info for %@: %@");
        devNodePath = [v14 devNodePath];
        *v34 = 136315650;
        *(v34 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
        *(v34 + 12) = 2112;
        *(v34 + 14) = devNodePath;
        *(v34 + 22) = 2112;
        *(v34 + 24) = v17;

        _LPLogPack(1, v33);
        v8 = 0;
      }
    }

    else
    {
      v28 = _os_log_pack_size();
      v29 = &v40 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
      v30 = _os_log_pack_fill(v29, v28, 0, &dword_2997D0000, "%s: %@ isn't an APFS volume");
      devNodePath2 = [v5 devNodePath];
      *v30 = 136315394;
      *(v30 + 4) = "+[LPMedia snapshotNameForMediaForPath:]";
      *(v30 + 12) = 2112;
      *(v30 + 14) = devNodePath2;

      _LPLogPack(1, v29);
      v8 = 0;
    }
  }

LABEL_32:

  return v8;
}

uint64_t __39__LPMedia_snapshotNameForMediaForPath___block_invoke(int a1, void *a2, id a3)
{
  v4 = LPAPFSSnapshotPropertyKeyXID[0];
  v5 = a3;
  v6 = [a2 objectForKeyedSubscript:v4];
  v7 = [v5 objectForKeyedSubscript:LPAPFSSnapshotPropertyKeyXID[0]];

  v8 = [v6 compare:v7];
  return v8;
}

+ (id)liveMediaForSnapshotAtPath:(id)path
{
  v24 = *MEMORY[0x29EDCA608];
  pathCopy = path;
  if (([pathCopy isEqualToString:@"/"] & 1) == 0)
  {
    selfCopy = self;
LABEL_9:
    v9 = [(__objc2_class *)selfCopy mediaForPath:pathCopy];
    goto LABEL_20;
  }

  v5 = [LPMedia _copyIOMediaForDiskWithPath:pathCopy];
  if (!v5)
  {
    if (![pathCopy isEqualToString:@"/"] || (v10 = +[LPMedia _copyLiveFilesystemIOMediaForRootedSnapshot](LPMedia, "_copyLiveFilesystemIOMediaForRootedSnapshot"), !v10))
    {
      v11 = _os_log_pack_size();
      v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
      v13 = _os_log_pack_fill(v12, v11, 0, &dword_2997D0000, "%s: No disk for %{private}@");
      *v13 = 136315395;
      *(v13 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
      *(v13 + 12) = 2113;
      *(v13 + 14) = pathCopy;
      _LPLogPack(1, v12);
      v9 = 0;
      goto LABEL_20;
    }

    v6 = v10;
    v7 = v10;
    goto LABEL_13;
  }

  v6 = v5;
  if (!IOObjectConformsTo(v5, "AppleAPFSSnapshot"))
  {
    v14 = _os_log_pack_size();
    v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v16 = _os_log_pack_fill(v15, v14, 0, &dword_2997D0000, "%s: Not on a rooted snapshot disk, will return self: %{private}@");
    *v16 = 136315395;
    *(v16 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
    *(v16 + 12) = 2113;
    *(v16 + 14) = pathCopy;
    _LPLogPack(1, v15);
    IOObjectRelease(v6);
    selfCopy = LPMedia;
    goto LABEL_9;
  }

  parent = 0;
  if (IORegistryEntryGetParentEntry(v6, "IOService", &parent) || !parent)
  {
    v17 = _os_log_pack_size();
    v18 = &v22[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v19 = _os_log_pack_fill(v18, v17, 0, &dword_2997D0000, "%s: Failed to obtain parent IOMedia for disk at path %{private}@");
LABEL_18:
    *v19 = 136315395;
    *(v19 + 4) = "+[LPMedia liveMediaForSnapshotAtPath:]";
    *(v19 + 12) = 2113;
    *(v19 + 14) = pathCopy;
    _LPLogPack(1, v18);
    v9 = 0;
    goto LABEL_19;
  }

  if (!IOObjectConformsTo(parent, "AppleAPFSVolume"))
  {
    v20 = _os_log_pack_size();
    v18 = &v22[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v19 = _os_log_pack_fill(v18, v20, 0, &dword_2997D0000, "%s: Parent of disk backing %{private}@ is not an APFS volume");
    goto LABEL_18;
  }

  v7 = parent;
LABEL_13:
  v9 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v7];
LABEL_19:
  IOObjectRelease(v6);
LABEL_20:

  return v9;
}

+ (id)mediaForUUID:(id)d
{
  v3 = *MEMORY[0x29EDB8ED8];
  dCopy = d;
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  CFDictionarySetValue(Mutable, @"IOProviderClass", @"IOMedia");
  CFDictionarySetValue(Mutable, @"UUID", dCopy);

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], Mutable);
  if (MatchingService)
  {
    v7 = MatchingService;
    v8 = [LPMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
    IOObjectRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)mediaForBSDNameOrDeviceNode:(id)node
{
  nodeCopy = node;
  v4 = nodeCopy;
  if (nodeCopy)
  {
    if ([nodeCopy length])
    {
      v5 = v4;
      if ([v4 hasPrefix:@"/dev/"])
      {
        v5 = [v4 substringFromIndex:5];
      }

      v6 = *MEMORY[0x29EDBB118];
      v7 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v5 fileSystemRepresentation]);
      MatchingService = IOServiceGetMatchingService(v6, v7);
      if (MatchingService)
      {
        v9 = MatchingService;
        v10 = [LPMedia mediaOfCorrectTypeGivenIOMedia:MatchingService];
        IOObjectRelease(v9);
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
      v5 = v4;
    }
  }

  else
  {
    v10 = 0;
    v5 = 0;
  }

  return v10;
}

- (id)wholeMediaForMedia
{
  v16[1] = *MEMORY[0x29EDCA608];
  if ([(LPMedia *)self isWhole])
  {
    selfCopy = self;
  }

  else
  {
    HIDWORD(v16[0]) = 0;
    if (MEMORY[0x29C29F270]([(LPMedia *)self ioMedia], "IOService", 3, v16 + 4))
    {
      v4 = _os_log_pack_size();
      v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v6 = _os_log_pack_fill(v5, v4, 0, &dword_2997D0000, "%s : Unable to get parent iterator", v16[0]);
      *v6 = 136315138;
      *(v6 + 4) = "[LPMedia wholeMediaForMedia]";
      _LPLogPack(1, v5);
      selfCopy = 0;
    }

    else
    {
      v7 = IOIteratorNext(HIDWORD(v16[0]));
      if (v7)
      {
        v8 = v7;
        selfCopy = 0;
        do
        {
          if (IOObjectConformsTo(v8, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v8, @"Whole", 0, 0)) != 0)
          {
            v10 = CFProperty;
            v11 = CFGetTypeID(CFProperty);
            if (v11 == CFBooleanGetTypeID() && CFBooleanGetValue(v10))
            {
              v12 = [LPMedia mediaOfCorrectTypeGivenIOMedia:v8];

              v13 = 1;
              selfCopy = v12;
            }

            else
            {
              v13 = 0;
            }

            CFRelease(v10);
          }

          else
          {
            v13 = 0;
          }

          IOObjectRelease(v8);
          v8 = IOIteratorNext(HIDWORD(v16[0]));
          if (v8)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 0;
          }
        }

        while (v14);
      }

      else
      {
        selfCopy = 0;
      }

      IOObjectRelease(HIDWORD(v16[0]));
    }
  }

  return selfCopy;
}

- (LPMedia)initWithIOMediaObject:(unsigned int)object
{
  v3 = *&object;
  v6.receiver = self;
  v6.super_class = LPMedia;
  v4 = [(LPMedia *)&v6 init];
  if (v4)
  {
    IOObjectRetain(v3);
    [(LPMedia *)v4 setIoMedia:v3];
  }

  return v4;
}

- (void)dealloc
{
  if ([(LPMedia *)self ioMedia])
  {
    IOObjectRelease([(LPMedia *)self ioMedia]);
  }

  v3.receiver = self;
  v3.super_class = LPMedia;
  [(LPMedia *)&v3 dealloc];
}

- (id)name
{
  v11 = *MEMORY[0x29EDCA608];
  mountPoint = [(LPMedia *)self mountPoint];
  if (!mountPoint || (bzero(v9, 0x40CuLL), v8[2] = 0, v8[0] = 5, v8[1] = 2147491840, getattrlist([mountPoint fileSystemRepresentation], v8, v9, 0x40CuLL, 0) == -1))
  {
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
    if (MEMORY[0x29C29F280]([(LPMedia *)self ioMedia], v9))
    {
      v6 = 0;
      goto LABEL_8;
    }

    HIBYTE(v10) = 0;
    v4 = MEMORY[0x29EDBA0F8];
    v5 = v9;
  }

  else
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = v9 + SDWORD1(v9[0]) + 4;
  }

  v6 = [v4 stringWithCString:v5 encoding:4];
LABEL_8:

  return v6;
}

- (BOOL)setName:(id)name withError:(id *)error
{
  v30 = *MEMORY[0x29EDCA608];
  nameCopy = name;
  bzero(v28, 0x408uLL);
  mountPoint = [(LPMedia *)self mountPoint];
  fileSystemRepresentation = [mountPoint fileSystemRepresentation];

  if (!fileSystemRepresentation)
  {
    v20 = _os_log_pack_size();
    v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill(v21, v20, 0, &dword_2997D0000, "%s: Volume is not mounted. Unable to set name\n", v26);
    *v22 = 136315138;
    *(v22 + 4) = "[LPMedia setName:withError:]";
    _LPLogPack(1, v21);
    if (error)
    {
      v18 = MEMORY[0x29EDB9FA0];
      v19 = *MEMORY[0x29EDB9EF8];
      v17 = 22;
      goto LABEL_7;
    }

LABEL_8:
    v23 = 0;
    goto LABEL_10;
  }

  v27 = 0;
  v26 = xmmword_2997DCB50;
  [nameCopy UTF8String];
  __strlcpy_chk();
  v28[0] = 8;
  v28[1] = strlen(v29) + 1;
  v9 = setattrlist(fileSystemRepresentation, &v26, v28, 0x408uLL, 0);
  v10 = _os_log_pack_size();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v9)
  {
    v24 = _os_log_pack_fill(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_2997D0000, "%s: Successfully set volume name to %{private}@\n");
    *v24 = 136315395;
    *(v24 + 4) = "[LPMedia setName:withError:]";
    *(v24 + 12) = 2113;
    *(v24 + 14) = nameCopy;
    _LPLogPack(3, v11);
    v23 = 1;
    goto LABEL_10;
  }

  v12 = _os_log_pack_fill(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v10, 0, &dword_2997D0000, "%s: Failed to set name for volume: %s\n", v26, *(&v26 + 1));
  v13 = __error();
  v14 = strerror(*v13);
  *v12 = 136315394;
  *(v12 + 4) = "[LPMedia setName:withError:]";
  *(v12 + 12) = 2080;
  *(v12 + 14) = v14;
  _LPLogPack(1, v11);
  if (!error)
  {
    goto LABEL_8;
  }

  v15 = MEMORY[0x29EDB9FA0];
  v16 = *MEMORY[0x29EDB9EF8];
  v17 = *__error();
  v18 = v15;
  v19 = v16;
LABEL_7:
  v23 = 0;
  *error = [v18 errorWithDomain:v19 code:v17 userInfo:0];
LABEL_10:

  return v23;
}

- (id)devNodePath
{
  bSDName = [(LPMedia *)self BSDName];
  if (bSDName)
  {
    v3 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"/dev/%@", bSDName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)mountPoint
{
  devNodePath = [(LPMedia *)self devNodePath];
  if (devNodePath)
  {
    v10 = 0;
    v3 = getmntinfo_r_np(&v10, 2);
    if (v3 < 1)
    {
LABEL_6:
      1024 = 0;
    }

    else
    {
      v4 = v3;
      v5 = 1112;
      while (1)
      {
        fileSystemRepresentation = [devNodePath fileSystemRepresentation];
        v7 = v10 + v5;
        if (!strcmp(fileSystemRepresentation, v10 + v5))
        {
          break;
        }

        v5 += 2168;
        if (!--v4)
        {
          goto LABEL_6;
        }
      }

      1024 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v7 - 1024];
    }

    if (v10)
    {
      free(v10);
    }
  }

  else
  {
    1024 = 0;
  }

  return 1024;
}

- (id)deviceModel
{
  v3 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  while (1)
  {
    v5 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", off_29EF6BAD0[v3], v4, 3u);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      break;
    }

    if (++v3 == 4)
    {
      v5 = 0;
      break;
    }
  }

  return v5;
}

- (int)storageMedium
{
  v2 = [(LPMedia *)self _deviceCharacteristicStringForKey:@"Medium Type"];
  if ([v2 isEqualToString:@"Rotational"])
  {
    v3 = 1;
  }

  else if ([v2 isEqualToString:@"Solid State"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isInternal
{
  v2 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"Protocol Characteristics", 0, 3u);
  v3 = [v2 objectForKeyedSubscript:@"Physical Interconnect Location"];
  v4 = [v3 isEqualToString:@"Internal"];

  return v4;
}

- (BOOL)isEmbeddedDeviceTypeRoot
{
  v2 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"EmbeddedDeviceTypeRoot", 0, 3u);
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)isReadOnly
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = objc_autoreleasePoolPush();
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    bzero(&v10, 0x878uLL);
    if (!statfs([mountPoint fileSystemRepresentation], &v10))
    {
      f_flags = v10.f_flags;
      goto LABEL_6;
    }

    v5 = _os_log_pack_size();
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_2997D0000, "%s: failed to get read-only status for %@\n");
    *v7 = 136315394;
    *(v7 + 4) = "[LPMedia isReadOnly]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = mountPoint;
    _LPLogPack(1, v6);
  }

  f_flags = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  return f_flags & 1;
}

- (BOOL)isJournaled
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = objc_autoreleasePoolPush();
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    bzero(&v10, 0x878uLL);
    if (!statfs([mountPoint fileSystemRepresentation], &v10))
    {
      v8 = BYTE2(v10.f_flags) >> 7;
      goto LABEL_6;
    }

    v5 = _os_log_pack_size();
    v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_2997D0000, "%s: failed to get journaled status for %@\n");
    *v7 = 136315394;
    *(v7 + 4) = "[LPMedia isJournaled]";
    *(v7 + 12) = 2112;
    *(v7 + 14) = mountPoint;
    _LPLogPack(1, v6);
  }

  LOBYTE(v8) = 0;
LABEL_6:

  objc_autoreleasePoolPop(v3);
  return v8;
}

- (id)description
{
  mountPoint = [(LPMedia *)self mountPoint];
  if (mountPoint)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v5 = objc_opt_class();
    mediaUUID = NSStringFromClass(v5);
    name = [(LPMedia *)self name];
    v8 = [v4 stringWithFormat:@"%@: %@, Mount: %@", mediaUUID, name, mountPoint];
  }

  else
  {
    mediaUUID = [(LPMedia *)self mediaUUID];
    v9 = MEMORY[0x29EDBA0F8];
    v10 = objc_opt_class();
    name = NSStringFromClass(v10);
    name2 = [(LPMedia *)self name];
    v12 = name2;
    if (mediaUUID)
    {
      v13 = [v9 stringWithFormat:@"%@: %@, UUID: %@", name, name2, mediaUUID];
    }

    else
    {
      v13 = [v9 stringWithFormat:@"%@: %@", name, name2, v15];
    }

    v8 = v13;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    ioMedia = [(LPMedia *)self ioMedia];
    ioMedia2 = [v5 ioMedia];

    v8 = IOObjectIsEqualTo(ioMedia, ioMedia2) == 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_deviceCharacteristicStringForKey:(id)key
{
  keyCopy = key;
  v5 = IORegistryEntrySearchCFProperty([(LPMedia *)self ioMedia], "IOService", @"Device Characteristics", 0, 3u);
  objc_opt_class();
  v6 = 0;
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (unsigned)_copyIOMediaForDiskWithPath:(id)path
{
  v16 = *MEMORY[0x29EDCA608];
  bzero(&v15, 0x878uLL);
  if (statfs([path fileSystemRepresentation], &v15))
  {
    v4 = *__error();
    v5 = _os_log_pack_size();
    v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_2997D0000, "%s: statfs failed: %d (%s)", *&v15.f_bsize, LODWORD(v15.f_blocks), v15.f_bfree);
    v8 = strerror(v4);
    *v7 = 136315650;
    *(v7 + 4) = "+[LPMedia _copyIOMediaForDiskWithPath:]";
    *(v7 + 12) = 1024;
    *(v7 + 14) = v4;
    *(v7 + 18) = 2080;
    *(v7 + 20) = v8;
    _LPLogPack(1, v6);
    return 0;
  }

  else
  {
    v10 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v15.f_mntfromname];
    if ([v10 hasPrefix:@"/dev/"])
    {
      v11 = [v10 substringFromIndex:5];

      v10 = v11;
    }

    v12 = *MEMORY[0x29EDBB118];
    v13 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v10 UTF8String]);
    MatchingService = IOServiceGetMatchingService(v12, v13);
  }

  return MatchingService;
}

+ (unsigned)_copyLiveFilesystemIOMediaForRootedSnapshot
{
  v18 = *MEMORY[0x29EDCA608];
  bzero(&v17, 0x878uLL);
  if (statfs("/", &v17))
  {
    v2 = *__error();
    v3 = _os_log_pack_size();
    v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
    v5 = _os_log_pack_fill(v4, v3, 0, &dword_2997D0000, "%s: statfs failed: %d (%s)", *&v17.f_bsize, LODWORD(v17.f_blocks), v17.f_bfree);
    v6 = strerror(v2);
    *v5 = 136315650;
    *(v5 + 4) = "+[LPMedia _copyLiveFilesystemIOMediaForRootedSnapshot]";
    *(v5 + 12) = 1024;
    *(v5 + 14) = v2;
    *(v5 + 18) = 2080;
    *(v5 + 20) = v6;
    _LPLogPack(1, v4);
    return 0;
  }

  else
  {
    v8 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v17.f_mntfromname];
    v9 = [v8 componentsSeparatedByString:@"@"];
    if ([v9 count] == 2 && (v10 = objc_msgSend(v9, "objectAtIndexedSubscript:", 1), v11 = objc_msgSend(v10, "hasPrefix:", @"/dev/"), v10, v11))
    {
      v12 = [v9 objectAtIndexedSubscript:1];
      v13 = [v12 substringFromIndex:5];

      v14 = *MEMORY[0x29EDBB118];
      v15 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v13 UTF8String]);
      MatchingService = IOServiceGetMatchingService(v14, v15);
      v8 = v13;
    }

    else
    {
      MatchingService = 0;
    }
  }

  return MatchingService;
}

+ (NSDictionary)contentTypeToSubclassMap
{
  if (contentTypeToSubclassMap_once != -1)
  {
    +[LPMedia(Private) contentTypeToSubclassMap];
  }

  v3 = contentTypeToSubclassMap_sharedMap;

  return v3;
}

void __44__LPMedia_Private__contentTypeToSubclassMap__block_invoke()
{
  v25[4] = *MEMORY[0x29EDCA608];
  context = objc_autoreleasePoolPush();
  v0 = [MEMORY[0x29EDB8E00] dictionary];
  v25[0] = objc_opt_class();
  v25[1] = objc_opt_class();
  v25[2] = objc_opt_class();
  v25[3] = objc_opt_class();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v1 = [MEMORY[0x29EDB8D80] arrayWithObjects:v25 count:4];
  v2 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v20;
    do
    {
      v5 = 0;
      do
      {
        if (*v20 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v19 + 1) + 8 * v5);
        v15 = 0u;
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v7 = [v6 supportedContentTypes];
        v8 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v16;
          do
          {
            v11 = 0;
            do
            {
              if (*v16 != v10)
              {
                objc_enumerationMutation(v7);
              }

              [v0 setObject:v6 forKeyedSubscript:*(*(&v15 + 1) + 8 * v11++)];
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v15 objects:v23 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [v1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v3);
  }

  v12 = [v0 copy];
  v13 = contentTypeToSubclassMap_sharedMap;
  contentTypeToSubclassMap_sharedMap = v12;

  objc_autoreleasePoolPop(context);
}

- (id)getPropertyWithName:(id)name
{
  v10[1] = *MEMORY[0x29EDCA608];
  nameCopy = name;
  CFProperty = IORegistryEntryCreateCFProperty([(LPMedia *)self ioMedia], nameCopy, 0, 0);
  if (!CFProperty)
  {
    _os_log_pack_size();
    v6 = v10 - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    v8 = _os_log_pack_fill(v6, v7, 0, &dword_2997D0000, "%s : failed to read value for property named: %@");
    *v8 = 136315394;
    *(v8 + 4) = "[LPMedia(Private) getPropertyWithName:]";
    *(v8 + 12) = 2112;
    *(v8 + 14) = nameCopy;
    _LPLogPack(3, v6);
  }

  return CFProperty;
}

- (BOOL)getBoolPropertyWithName:(id)name
{
  v3 = [(LPMedia *)self getPropertyWithName:name];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

+ (id)mediaOfCorrectTypeGivenIOMedia:(unsigned int)media
{
  v3 = *&media;
  v12 = *MEMORY[0x29EDCA608];
  waitTime = 5;
  if (IOServiceWaitQuiet(media, &waitTime) == -536870186)
  {
    _os_log_pack_size();
    v4 = &waitTime - ((MEMORY[0x2A1C7C4A8]() + 15) & 0xFFFFFFFFFFFFFFF0);
    *_os_log_pack_fill(v4, v5, 0, &dword_2997D0000, "IOKit wait timed out, volume for media may be stale.") = 0;
    _LPLogPack(2, v4);
  }

  CFProperty = IORegistryEntryCreateCFProperty(v3, @"Content", 0, 0);
  if (!CFProperty || (v7 = +[LPMedia contentTypeToSubclassMap], v8 = [(NSDictionary *)v7 objectForKeyedSubscript:CFProperty], v7, !v8))
  {
    v8 = objc_opt_class();
  }

  v9 = [[v8 alloc] initWithIOMediaObject:v3];

  return v9;
}

+ (void)waitForIOMediaWithDevNode:(id)node
{
  v16 = *MEMORY[0x29EDCA608];
  nodeCopy = node;
  v4 = nodeCopy;
  if ([nodeCopy hasPrefix:@"/dev/"])
  {
    v4 = [nodeCopy substringFromIndex:5];
  }

  v5 = *MEMORY[0x29EDBB118];
  v6 = IOBSDNameMatching(*MEMORY[0x29EDBB118], 0, [v4 fileSystemRepresentation]);
  MatchingService = IOServiceGetMatchingService(v5, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    waitTime = 5;
    if (IOServiceWaitQuiet(MatchingService, &waitTime) == -536870186)
    {
      v9 = _os_log_pack_size();
      v10 = &waitTime - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      v11 = _os_log_pack_fill(v10, v9, 0, &dword_2997D0000, "Timed out waiting for: %@");
      *v11 = 138412290;
      *(v11 + 4) = v4;
      _LPLogPack(1, v10);
    }

    IOObjectRelease(v8);
  }

  else
  {
    v12 = _os_log_pack_size();
    v13 = &waitTime - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = _os_log_pack_fill(v13, v12, 0, &dword_2997D0000, "Failed to find media for %@");
    *v14 = 138412290;
    *(v14 + 4) = v4;
    _LPLogPack(1, v13);
  }
}

+ (void)waitForBlockStorage
{
  v13 = *MEMORY[0x29EDCA608];
  existing = 0;
  v2 = IOServiceMatching("IOBlockStorageDevice");
  if (!IOServiceGetMatchingServices(*MEMORY[0x29EDBB118], v2, &existing))
  {
    v3 = 0;
    do
    {
      MEMORY[0x29C29F210](existing);
      waitTime = 5;
      v4 = IOIteratorNext(existing);
      if (v4)
      {
        v5 = v4;
        v6 = 0;
        do
        {
          v6 |= IOServiceWaitQuiet(v5, &waitTime) == -536870186;
          IOObjectRelease(v5);
          v5 = IOIteratorNext(existing);
        }

        while (v5);
      }

      else
      {
        v6 = 0;
      }

      if (IOIteratorIsValid(existing))
      {
        v7 = 1;
      }

      else
      {
        v7 = v3 >= 4;
      }

      ++v3;
    }

    while (!v7);
    if (v6)
    {
      v8 = _os_log_pack_size();
      v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      *_os_log_pack_fill(v9, v8, 0, &dword_2997D0000, "IOKit service wait timed out, volumes may be stale.") = 0;
      _LPLogPack(2, v9);
    }

    IOObjectRelease(existing);
  }
}

@end