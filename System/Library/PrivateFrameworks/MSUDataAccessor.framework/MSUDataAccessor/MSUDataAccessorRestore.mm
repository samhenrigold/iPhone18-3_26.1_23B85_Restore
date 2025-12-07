@interface MSUDataAccessorRestore
- (id)copyMountPointForVolumeType:(int)type error:(id *)error;
- (id)copyPathForPersonalizedData:(int)data error:(id *)error;
- (id)findVolumesWithRole:(int)role;
- (id)getVolumeWithUUID:(id)d;
- (id)specialCaseAPTicketForRamdiskWithError:(id *)error;
@end

@implementation MSUDataAccessorRestore

- (id)copyMountPointForVolumeType:(int)type error:(id *)error
{
  if (type)
  {
    if (type != 1)
    {
      [MSUDataAccessor buildErrorForRef:error code:6000 description:@"Unknown volume type"];
      return 0;
    }

    v5 = 13;
  }

  else
  {
    v5 = 6;
  }

  v6 = [(MSUDataAccessorRestore *)self findVolumesWithRole:v5];
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndex:0];
    mountPoint = [v7 mountPoint];
    v9 = mountPoint;
    if (mountPoint)
    {
      v10 = mountPoint;
    }

    else
    {
      [MSUDataAccessor buildErrorForRef:error code:6003 description:@"Volume not mounted"];
    }
  }

  else
  {
    if ([v6 count] < 2)
    {
      v11 = @"Missing volume";
    }

    else
    {
      v11 = @"Too many volumes";
    }

    [MSUDataAccessor buildErrorForRef:error code:6003 description:v11];
    v9 = 0;
  }

  return v9;
}

- (id)specialCaseAPTicketForRamdiskWithError:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:@"/private/var/Keychains/apticket.der"];

  if (v5)
  {
    if (error)
    {
      *error = 0;
    }

    v6 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:@"/private/var/Keychains/apticket.der" options:0 error:error];
    if (v6)
    {
      v7 = MGCopyAnswer();
      if (v7)
      {
        v8 = v7;
        v9 = CFGetTypeID(v7);
        if (v9 == CFDataGetTypeID())
        {
          v10 = MGCopyAnswer();
          if (v10)
          {
            v11 = v10;
            v12 = CFGetTypeID(v10);
            if (v12 != CFStringGetTypeID())
            {
              CFRelease(v11);
              [MSUDataAccessor buildErrorForRef:error code:6005 description:@"Bad type in response to crypto hash method query"];
              v13 = 0;
LABEL_27:

              goto LABEL_15;
            }
          }

          else
          {
            v11 = @"sha1";
          }

          v21 = 0u;
          v22 = 0u;
          *md = 0u;
          if ([(__CFString *)v11 isEqualToString:@"sha1"])
          {
            CC_SHA1([v6 bytes], objc_msgSend(v6, "length"), md);
            v16 = 20;
          }

          else
          {
            if (![(__CFString *)v11 isEqualToString:@"sha2-384"])
            {
              v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unsupported crypto hash method %@", v11];
              [MSUDataAccessor buildErrorForRef:error code:6005 description:v19];

              v13 = 0;
LABEL_26:

              goto LABEL_27;
            }

            CC_SHA384([v6 bytes], objc_msgSend(v6, "length"), md);
            v16 = 48;
          }

          v17 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:md length:v16 freeWhenDone:0];
          v13 = @"/private/var/Keychains/apticket.der";
          if (([v17 isEqualToData:v8] & 1) == 0)
          {
            v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found apticket at %@ but it does not match the boot manifest hash", @"/private/var/Keychains/apticket.der"];
            [MSUDataAccessor buildErrorForRef:error code:6006 description:v18];

            v13 = 0;
          }

          goto LABEL_26;
        }

        CFRelease(v8);
        v14 = @"Bad type in response to boot manifest hash query";
      }

      else
      {
        v14 = @"Failed to boot manifest hash";
      }

      [MSUDataAccessor buildErrorForRef:error code:6005 description:v14];
    }

    v13 = 0;
LABEL_15:

    return v13;
  }

  return 0;
}

- (id)copyPathForPersonalizedData:(int)data error:(id *)error
{
  v5 = *&data;
  if (data != 2 || (result = [(MSUDataAccessorRestore *)self specialCaseAPTicketForRamdiskWithError:error]) == 0)
  {
    v8.receiver = self;
    v8.super_class = MSUDataAccessorRestore;
    return [(MSUDataAccessor *)&v8 copyPathForPersonalizedData:v5 error:error];
  }

  return result;
}

- (id)getVolumeWithUUID:(id)d
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allMedia = [MEMORY[0x277D82BF8] allMedia];
  v5 = [allMedia countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allMedia);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          mediaUUID = [v10 mediaUUID];
          v12 = [mediaUUID isEqualToString:dCopy];

          if (v12)
          {
            goto LABEL_12;
          }
        }
      }

      v6 = [allMedia countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (id)findVolumesWithRole:(int)role
{
  v18 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allMedia = [MEMORY[0x277D82BF8] allMedia];
  v6 = [allMedia countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allMedia);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          if ([v11 role] == role)
          {
            [array addObject:v11];
          }
        }
      }

      v7 = [allMedia countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return array;
}

@end