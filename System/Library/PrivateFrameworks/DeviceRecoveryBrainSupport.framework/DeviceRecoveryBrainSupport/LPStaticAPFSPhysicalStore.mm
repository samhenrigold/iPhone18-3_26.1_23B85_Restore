@interface LPStaticAPFSPhysicalStore
+ (id)supportedContentTypes;
- (id)container;
- (id)parent;
- (int)role;
@end

@implementation LPStaticAPFSPhysicalStore

+ (id)supportedContentTypes
{
  if (objc_opt_class() == self)
  {
    v6[0] = LPAPFSPhysicalStoreMediaUUID[0];
    v6[1] = LPAPFSPhysicalStoreDiagsMediaUUID[0];
    v6[2] = LPAPFSPhysicalStoreRecoveryMediaUUID[0];
    v3 = [NSArray arrayWithObjects:v6 count:3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = &OBJC_METACLASS___LPStaticAPFSPhysicalStore;
    v3 = objc_msgSendSuper2(&v5, "supportedContentTypes");
  }

  return v3;
}

- (int)role
{
  content = [(LPStaticMedia *)self content];
  v3 = content;
  if (!content)
  {
    v5 = _os_log_pack_size();
    v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v7 = _os_log_pack_fill(v6, v5, 0, &dword_0, "%s : Failed to get content type.", v9);
    *v7 = 136315138;
    *(v7 + 4) = "[LPStaticAPFSPhysicalStore role]";
    _LPLogPack(1, v6);
    goto LABEL_7;
  }

  if (([content isEqualToString:LPAPFSPhysicalStoreDiagsMediaUUID[0]] & 1) == 0)
  {
    if ([v3 isEqualToString:LPAPFSPhysicalStoreRecoveryMediaUUID[0]])
    {
      v4 = 2;
      goto LABEL_8;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  v4 = 1;
LABEL_8:

  return v4;
}

- (id)parent
{
  iterator = 0;
  if (IORegistryEntryCreateIterator([(LPStaticMedia *)self ioMedia], "IOService", 3u, &iterator))
  {
    v2 = _os_log_pack_size();
    v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
    v4 = _os_log_pack_fill(v3, v2, 0, &dword_0, "%s : Unable to get the iterator for entry.", v20);
    *v4 = 136315138;
    *(v4 + 4) = "[LPStaticAPFSPhysicalStore parent]";
    _LPLogPack(1, v3);
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v7 = IOIteratorNext(iterator);
  if (!v7)
  {
    goto LABEL_3;
  }

  v8 = v7;
  v5 = 0;
  do
  {
    if (IOObjectConformsTo(v8, "IOMedia") && (CFProperty = IORegistryEntryCreateCFProperty(v8, @"Content", 0, 0)) != 0)
    {
      v10 = CFProperty;
      v11 = CFGetTypeID(CFProperty);
      if (v11 == CFStringGetTypeID())
      {
        v23 = 0u;
        v22 = 0u;
        v21 = 0u;
        v20 = 0u;
        v12 = +[LPStaticPartitionMedia contentTypesForPartitionMedia];
        v13 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = 0;
          v16 = *v21;
          do
          {
            for (i = 0; i != v14; i = i + 1)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v12);
              }

              if (CFStringCompare(*(*(&v20 + 1) + 8 * i), v10, 0) == kCFCompareEqualTo)
              {
                v18 = [(LPStaticMedia *)[LPStaticPartitionMedia alloc] initWithIOMediaObject:v8];

                v15 = 1;
                v5 = v18;
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v20 objects:v25 count:16];
          }

          while (v14);
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      v15 = 0;
    }

    v19 = IOIteratorNext(iterator);
    if (!v19)
    {
      break;
    }

    v8 = v19;
  }

  while ((v15 & 1) == 0);
LABEL_4:

  return v5;
}

- (id)container
{
  v11 = 0;
  IORegistryEntryGetRegistryEntryID([(LPStaticMedia *)self ioMedia], &v11);
  v16[0] = @"IOParentMatch";
  v14 = @"IORegistryEntryID";
  v2 = [NSNumber numberWithUnsignedLongLong:v11];
  v15 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17[0] = v3;
  v17[1] = @"IOMedia";
  v16[1] = @"IOProviderClass";
  v16[2] = @"IOPropertyMatch";
  v12 = @"Content";
  v13 = LPAPFSContainerMediaTypeUUID[0];
  v4 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v17[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v17 forKeys:v16 count:3];

  LODWORD(v3) = +[LPStaticMedia IOMainPort];
  v6 = v5;
  MatchingService = IOServiceGetMatchingService(v3, v6);
  if (MatchingService)
  {
    v8 = MatchingService;
    v9 = [(LPStaticMedia *)[LPStaticAPFSContainer alloc] initWithIOMediaObject:MatchingService];
    IOObjectRelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end