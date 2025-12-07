@interface DDAddToRecentsService
- (DDAddToRecentsService)initWithClientProcessIdentifier:(int)identifier;
- (void)addResultToRecents:(id)recents eventDate:(id)date subject:(id)subject weight:(id)weight metadata:(id)metadata userInitiated:(BOOL)initiated completionBlock:(id)block;
@end

@implementation DDAddToRecentsService

- (DDAddToRecentsService)initWithClientProcessIdentifier:(int)identifier
{
  v3 = __chkstk_darwin(self, a2, *&identifier);
  v5 = v4;
  v16.receiver = v3;
  v16.super_class = DDAddToRecentsService;
  v6 = [(DDAddToRecentsService *)&v16 init];
  v7 = v6;
  if (v6)
  {
    bundleIdentifier = v6->_bundleIdentifier;
    v6->_bundleIdentifier = 0;

    if (proc_pidpath(v5, buffer, 0x1000u) <= 0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_100001A38();
      }
    }

    else
    {
      v9 = [NSURL fileURLWithFileSystemRepresentation:buffer isDirectory:0 relativeToURL:0];
      v10 = _CFBundleCreateWithExecutableURLIfMightBeBundle();
      if (v10)
      {
        v11 = v10;
        Identifier = CFBundleGetIdentifier(v10);
        if (Identifier)
        {
          v13 = CFRetain(Identifier);
          v14 = v7->_bundleIdentifier;
          v7->_bundleIdentifier = v13;
        }

        else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
        {
          sub_100001940();
        }

        CFRelease(v11);
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
      {
        sub_1000019BC();
      }
    }
  }

  return v7;
}

- (void)addResultToRecents:(id)recents eventDate:(id)date subject:(id)subject weight:(id)weight metadata:(id)metadata userInitiated:(BOOL)initiated completionBlock:(id)block
{
  initiatedCopy = initiated;
  recentsCopy = recents;
  dateCopy = date;
  subjectCopy = subject;
  weightCopy = weight;
  blockCopy = block;
  v20 = [metadata mutableCopy];
  if (!v20)
  {
    v20 = objc_alloc_init(NSMutableDictionary);
  }

  if (dateCopy)
  {
    [v20 setObject:dateCopy forKeyedSubscript:CRRecentContactMetadataEventTime];
  }

  if (subjectCopy)
  {
    [v20 setObject:subjectCopy forKeyedSubscript:CRRecentContactMetadataSubject];
  }

  [recentsCopy coreResult];
  Category = DDResultGetCategory();
  if (Category == 2)
  {
    v32 = [recentsCopy url];
    v29 = v32 != 0;
    if (v32)
    {
      v51 = 0;
      [recentsCopy getMailValue:&v51 label:0];
      v47 = weightCopy;
      v33 = v51;
      v34 = TUFormattedPhoneNumber();
      v45 = v32;
      v35 = initiatedCopy;
      v36 = v34;
      if (v34)
      {
        v37 = v34;
      }

      else
      {
        v37 = v33;
      }

      v44 = v37;

      v38 = CRAddressKindPhoneNumber;
      +[NSDate date];
      v39 = v49 = self;
      v40 = [CRRecentContactsLibrary recentEventForAddress:v44 displayName:0 kind:v38 date:v39 weight:0 metadata:v20 options:v35];

      v41 = +[CRRecentContactsLibrary defaultInstance];
      v52 = v40;
      v42 = [NSArray arrayWithObjects:&v52 count:1];
      v43 = v35;
      v32 = v45;
      [v41 recordContactEvents:v42 recentsDomain:CRRecentsDomainMessages sendingAddress:0 source:v49->_bundleIdentifier userInitiated:v43];

      weightCopy = v47;
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100001AB4();
    }
  }

  else if (Category == 3)
  {
    [recentsCopy matchedString];
    v46 = subjectCopy;
    v22 = v48 = self;
    v23 = initiatedCopy;
    v24 = CRAddressKindMapLocation;
    +[NSDate date];
    v50 = dateCopy;
    v26 = v25 = weightCopy;
    v27 = [CRRecentContactsLibrary recentEventForAddress:v22 displayName:0 kind:v24 date:v26 weight:v25 metadata:v20 options:initiatedCopy];

    v28 = +[CRRecentContactsLibrary defaultInstance];
    v53 = v27;
    v29 = 1;
    v30 = [NSArray arrayWithObjects:&v53 count:1];
    v31 = v23;
    subjectCopy = v46;
    [v28 recordContactEvents:v30 recentsDomain:CRRecentsDomainMaps sendingAddress:0 source:v48->_bundleIdentifier userInitiated:v31];

    weightCopy = v25;
    dateCopy = v50;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_100001B30();
    }

    v29 = 0;
  }

  blockCopy[2](blockCopy, v29);
}

@end