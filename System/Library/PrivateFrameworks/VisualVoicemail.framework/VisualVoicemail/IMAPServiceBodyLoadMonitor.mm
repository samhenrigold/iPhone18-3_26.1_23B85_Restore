@interface IMAPServiceBodyLoadMonitor
+ (id)_headersToPreserve;
- (BOOL)progressiveBodyLoadHasStartedForRecord:(void *)record;
- (id)_createHeaderDictionaryForData:(id)data;
- (id)contextForLibraryId:(int)id create:(BOOL)create;
- (id)initForService:(id)service;
- (int)_libraryIdForRemoteUid:(unsigned int)uid inStore:(id)store;
- (void)_activityCompleted:(id)completed;
- (void)_postDataAvailableWithUserInfo:(id)info;
- (void)bodyLoadContinuedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section;
- (void)bodyLoadEndedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section;
- (void)bodyLoadStartedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section;
- (void)dealloc;
- (void)lengthsOfBodyLoadForRecord:(void *)record expected:(unsigned int *)expected current:(unsigned int *)current;
- (void)progressiveMimeParser:(id)parser beganDataForMimePart:(id)part;
- (void)progressiveMimeParser:(id)parser failedWithError:(id)error;
- (void)progressiveMimeParser:(id)parser finishedMimePart:(id)part;
@end

@implementation IMAPServiceBodyLoadMonitor

+ (id)_headersToPreserve
{
  [self mf_lock];
  if (!qword_10010D7A0)
  {
    v3 = [[NSArray alloc] initWithObjects:{@"x-applevm-duration", 0}];
    v4 = qword_10010D7A0;
    qword_10010D7A0 = v3;
  }

  [self mf_unlock];
  v5 = qword_10010D7A0;

  return v5;
}

- (id)initForService:(id)service
{
  serviceCopy = service;
  v18.receiver = self;
  v18.super_class = IMAPServiceBodyLoadMonitor;
  v5 = [(IMAPServiceBodyLoadMonitor *)&v18 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_service, serviceCopy);
    v6->mambaID = [serviceCopy getServiceObjLogPrefix];
    v7 = +[NSMapTable strongToStrongObjectsMapTable];
    loadContextsByLibraryId = v6->_loadContextsByLibraryId;
    v6->_loadContextsByLibraryId = v7;

    v10 = sub_100015F94(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = v6->mambaID;
      v12 = objc_opt_class();
      *buf = 136316162;
      v20 = mambaID;
      v21 = 2080;
      v22 = " ";
      v23 = 2112;
      v24 = v12;
      v25 = 2048;
      v26 = v6;
      v27 = 2112;
      v28 = serviceCopy;
      v13 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p with service %@ created", buf, 0x34u);
    }

    v14 = +[NSNotificationCenter defaultCenter];
    WeakRetained = objc_loadWeakRetained(&v6->_service);
    [v14 addObserver:v6 selector:"_activityCompleted:" name:@"VVServiceTaskEndedNotification" object:WeakRetained];

    v16 = objc_loadWeakRetained(&v6->_service);
    [v14 addObserver:v6 selector:"_activityCompleted:" name:@"VVServiceTaskCancelledNotification" object:v16];
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v5 = sub_100015F94(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136315906;
    v10 = mambaID;
    v11 = 2080;
    v12 = " ";
    v13 = 2112;
    v14 = objc_opt_class();
    v15 = 2048;
    selfCopy = self;
    v7 = v14;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s%@ %p deleted", buf, 0x2Au);
  }

  v8.receiver = self;
  v8.super_class = IMAPServiceBodyLoadMonitor;
  [(IMAPServiceBodyLoadMonitor *)&v8 dealloc];
}

- (int)_libraryIdForRemoteUid:(unsigned int)uid inStore:(id)store
{
  v4 = *&uid;
  storeCopy = store;
  mailboxUid = [storeCopy mailboxUid];
  name = [mailboxUid name];
  v9 = [name isEqualToString:@"Greetings"];

  if (v9)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    type = [mailboxUid type];
    WeakRetained = objc_loadWeakRetained(&self->_service);
    getAccountStore = [WeakRetained getAccountStore];
    v15 = getAccountStore;
    if (type == 7)
    {
      v16 = 24;
    }

    else
    {
      v16 = 16;
    }

    v17 = sub_1000931F0(getAccountStore, v4, 8 * (type != 7), v16);

    if (v17)
    {
      v19 = VMStoreRecordCopyDescription(v17);
      v20 = sub_100015F94(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        mambaID = self->mambaID;
        v29 = 136315906;
        v30 = mambaID;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = mailboxUid;
        v35 = 2112;
        v36 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%slibraryIdForRemoteUid for mailbox %@ record is %@", &v29, 0x2Au);
      }

      if (v19)
      {
        CFRelease(v19);
      }

      v22 = objc_loadWeakRetained(&self->_service);
      getAccountStore2 = [v22 getAccountStore];
      v11 = sub_100092784(getAccountStore2, v17);

      CFRelease(v17);
    }

    else
    {
      v24 = sub_100015F94(v18);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = self->mambaID;
        v29 = 136315906;
        v30 = v25;
        v31 = 2080;
        v32 = " ";
        v33 = 2112;
        v34 = mailboxUid;
        v35 = 2048;
        v36 = v4;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I %s%slibraryIdForRemoteUid for mailbox %@ record with UID %lu not found", &v29, 0x2Au);
      }

      v11 = -1;
    }
  }

  v26 = sub_100015F94(v10);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = self->mambaID;
    v29 = 136315906;
    v30 = v27;
    v31 = 2080;
    v32 = " ";
    v33 = 2112;
    v34 = mailboxUid;
    v35 = 1024;
    LODWORD(v36) = v11;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%slibraryIdForRemoteUid for mailbox %@ result is %d", &v29, 0x26u);
  }

  return v11;
}

- (id)_createHeaderDictionaryForData:(id)data
{
  dataCopy = data;
  v4 = [[MFMessageHeaders alloc] initWithHeaderData:dataCopy encoding:0xFFFFFFFFLL];
  v5 = objc_alloc_init(NSMutableDictionary);
  v6 = H_CONTENT_TYPE;
  v7 = [v4 firstHeaderForKey:H_CONTENT_TYPE];
  if (v7)
  {
    [v5 setObject:v7 forKey:v6];
  }

  v8 = H_CONTENT_TRANSFER_ENCODING;
  v9 = [v4 firstHeaderForKey:H_CONTENT_TRANSFER_ENCODING];

  if (v9)
  {
    [v5 setObject:v9 forKey:v8];
  }

  _headersToPreserve = [objc_opt_class() _headersToPreserve];
  v11 = [_headersToPreserve count];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      v13 = [_headersToPreserve objectAtIndex:i];
      v14 = [v4 firstHeaderForKey:v13];

      if (v14)
      {
        [v5 setObject:v14 forKey:v13];
      }

      v9 = v14;
    }
  }

  else
  {
    v14 = v9;
  }

  return v5;
}

- (void)_activityCompleted:(id)completed
{
  completedCopy = completed;
  userInfo = [completedCopy userInfo];
  v6 = userInfo;
  if (userInfo)
  {
    v7 = [userInfo objectForKey:@"VVTaskType"];
    intValue = [v7 intValue];

    v9 = [v6 objectForKey:@"VVRecord"];
    if (v9 && intValue == 2)
    {
      WeakRetained = objc_loadWeakRetained(&self->_service);
      getAccountStore = [WeakRetained getAccountStore];
      v13 = sub_100092784(getAccountStore, v9);

      [(IMAPServiceBodyLoadMonitor *)self mf_lock];
      if (v13 >= 1)
      {
        v14 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v13 create:0];
        v15 = v14;
        if (v14)
        {
          v16 = sub_100015F94(v14);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            mambaID = self->mambaID;
            v20 = 136315650;
            v21 = mambaID;
            v22 = 2080;
            v23 = " ";
            v24 = 2112;
            v25 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sBody context %@ left hanging around after activity completion - time to clean it up.", &v20, 0x20u);
          }

          [v15 cleanUpErroredFile];
          loadContextsByLibraryId = [(IMAPServiceBodyLoadMonitor *)self loadContextsByLibraryId];
          v19 = [NSNumber numberWithInt:v13];
          [loadContextsByLibraryId removeObjectForKey:v19];
        }
      }

      [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
    }
  }
}

- (id)contextForLibraryId:(int)id create:(BOOL)create
{
  createCopy = create;
  v5 = *&id;
  loadContextsByLibraryId = [(IMAPServiceBodyLoadMonitor *)self loadContextsByLibraryId];
  v8 = [NSNumber numberWithInt:v5];
  v9 = [loadContextsByLibraryId objectForKey:v8];

  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = !createCopy;
  }

  if (!v10)
  {
    v9 = [[IMAPServiceBodyLoadContext alloc] initWithMambaID:self->mambaID];
    v11 = sub_100015F94(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      v17 = 136315906;
      v18 = mambaID;
      v19 = 2080;
      v20 = " ";
      v21 = 2112;
      v22 = v9;
      v23 = 1024;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%sBody context %@ for libraryId %d created", &v17, 0x26u);
    }

    v9->_recordLibraryId = v5;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    objc_storeWeak(&v9->_service, WeakRetained);

    v9->_fd = -1;
    loadContextsByLibraryId2 = [(IMAPServiceBodyLoadMonitor *)self loadContextsByLibraryId];
    v15 = [NSNumber numberWithInt:v5];
    [loadContextsByLibraryId2 setObject:v9 forKey:v15];
  }

  return v9;
}

- (void)bodyLoadStartedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = [(IMAPServiceBodyLoadMonitor *)self _libraryIdForRemoteUid:v8 inStore:storeCopy];
  v14 = sub_100015F94(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v42 = 136316674;
    v43 = mambaID;
    v44 = 2080;
    v45 = " ";
    v46 = 1024;
    *v47 = v13;
    *&v47[4] = 2048;
    *&v47[6] = v8;
    *&v47[14] = 2048;
    *&v47[16] = [dataCopy length];
    v48 = 2112;
    v49 = sectionCopy;
    v50 = 2112;
    v51 = storeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sBODY LOAD STARTED FOR libraryId %d UID %lu WITH DATA OF LENGTH %lu SECTION %@, STORE:%@", &v42, 0x44u);
  }

  if (v13 >= 1)
  {
    [(IMAPServiceBodyLoadMonitor *)self mf_lock];
    v16 = [@"TEXT" isEqualToString:sectionCopy];
    v17 = [@"HEADER" isEqualToString:sectionCopy];
    v18 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v13 create:v16];
    v19 = v18;
    if (v16)
    {
      v20 = sub_100015F94(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = self->mambaID;
        v42 = 136315650;
        v43 = v21;
        v44 = 2080;
        v45 = " ";
        v46 = 1024;
        *v47 = v8;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Started receiving body", &v42, 0x1Cu);
      }

      v23 = sub_100015F94(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = self->mambaID;
        v25 = [dataCopy length];
        v42 = 136315906;
        v43 = v24;
        v44 = 2080;
        v45 = " ";
        v46 = 1024;
        *v47 = v8;
        *&v47[4] = 2048;
        *&v47[6] = v25;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Appending body data of length %llu", &v42, 0x26u);
      }

      v26 = [NSMutableData dataWithData:dataCopy];
      [v19 setBodyData:v26];

      v27 = [v19 parseWithDelegate:self];
      v28 = sub_100015F94(v27);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (v27)
      {
        if (v29)
        {
          v30 = self->mambaID;
          v42 = 136315906;
          v43 = v30;
          v44 = 2080;
          v45 = " ";
          v46 = 2112;
          *v47 = v19;
          *&v47[8] = 2112;
          *&v47[10] = v27;
          v31 = "#I %s%sbodyLoadStartedForRemoteUid, context:%@, parser:%@";
          v32 = v28;
          v33 = 42;
LABEL_22:
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, &v42, v33);
        }
      }

      else if (v29)
      {
        v39 = self->mambaID;
        v42 = 136315650;
        v43 = v39;
        v44 = 2080;
        v45 = " ";
        v46 = 2112;
        *v47 = v19;
        v31 = "#I %s%sbodyLoadStartedForRemoteUid, context:%@, *** NO PARSER";
        v32 = v28;
        v33 = 32;
        goto LABEL_22;
      }

      goto LABEL_27;
    }

    if (v17)
    {
      if (!v18 || !*(v18 + 16))
      {
        v40 = sub_100015F94(v18);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = self->mambaID;
          v42 = 136315650;
          v43 = v41;
          v44 = 2080;
          v45 = " ";
          v46 = 1024;
          *v47 = v8;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Started parsing header", &v42, 0x1Cu);
        }

        v27 = [NSMutableData dataWithData:dataCopy];
        [(IMAPServiceBodyLoadMonitor *)self setHeaderData:v27];
        goto LABEL_27;
      }

      v27 = sub_100015F94(v18);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v34 = self->mambaID;
        v42 = 136315650;
        v43 = v34;
        v44 = 2080;
        v45 = " ";
        v46 = 1024;
        *v47 = v8;
        v35 = "#I %s%sUID(%d) Received headers multiple times, skipping";
        v36 = v27;
        v37 = 28;
LABEL_19:
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, v35, &v42, v37);
      }
    }

    else
    {
      v27 = sub_100015F94(v18);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v38 = self->mambaID;
        v42 = 136315906;
        v43 = v38;
        v44 = 2080;
        v45 = " ";
        v46 = 1024;
        *v47 = v8;
        *&v47[4] = 2112;
        *&v47[6] = sectionCopy;
        v35 = "#I %s%sUID(%d, %@) Received data for an unexpected section";
        v36 = v27;
        v37 = 38;
        goto LABEL_19;
      }
    }

LABEL_27:

    [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
  }
}

- (void)bodyLoadContinuedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = +[MFActivityMonitor currentTracebleMonitor];
  error = [v13 error];

  if (!error)
  {
    v15 = [(IMAPServiceBodyLoadMonitor *)self _libraryIdForRemoteUid:v8 inStore:storeCopy];
    v16 = sub_100015F94(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      mambaID = self->mambaID;
      *buf = 136316674;
      v58 = mambaID;
      v59 = 2080;
      v60 = " ";
      v61 = 1024;
      *v62 = v15;
      *&v62[4] = 2048;
      *&v62[6] = v8;
      *&v62[14] = 2048;
      *&v62[16] = [dataCopy length];
      *&v62[24] = 2112;
      *&v62[26] = sectionCopy;
      *&v62[34] = 2112;
      *&v62[36] = storeCopy;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sBODY LOAD CONTINUED FOR libraryId %d UID %lu WITH DATA OF LENGTH %lu SECTION %@, STORE:%@", buf, 0x44u);
    }

    if (v15 >= 1)
    {
      [(IMAPServiceBodyLoadMonitor *)self mf_lock];
      v18 = [@"TEXT" isEqualToString:sectionCopy];
      v19 = [@"HEADER" isEqualToString:sectionCopy];
      v20 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v15 create:v18];
      v56 = v20;
      if (v18)
      {
        v21 = sub_100015F94(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = self->mambaID;
          v23 = [dataCopy length];
          bodyData = [v56 bodyData];
          v25 = [bodyData length];
          *buf = 136316162;
          v58 = v22;
          v59 = 2080;
          v60 = " ";
          v61 = 1024;
          *v62 = v8;
          *&v62[4] = 2048;
          *&v62[6] = v23;
          *&v62[14] = 2048;
          *&v62[16] = v25;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Appending body data of length %llu to previous length %llu", buf, 0x30u);
        }

        bodyData2 = [v56 bodyData];
        [bodyData2 appendData:dataCopy];

        headerData = [v56 parseWithDelegate:self];
        v28 = sub_100015F94(headerData);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (headerData)
        {
          if (v29)
          {
            v30 = self->mambaID;
            *buf = 136315906;
            v58 = v30;
            v59 = 2080;
            v60 = " ";
            v61 = 2112;
            *v62 = v56;
            *&v62[8] = 2112;
            *&v62[10] = headerData;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sbodyLoadContinuedForRemoteUid, context:%@, parser:%@", buf, 0x2Au);
          }

          bodyData3 = [v56 bodyData];
          -[NSObject noteDataLengthChanged:](headerData, "noteDataLengthChanged:", sub_10001E900([bodyData3 length]));

          bodyData4 = [v56 bodyData];
          v33 = [bodyData4 length];
          data = [headerData data];
          v35 = v33 == [data length];

          if (!v35)
          {
            v37 = sub_100015F94(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v55 = self->mambaID;
              bodyData5 = [v56 bodyData];
              v53 = [bodyData5 length];
              data2 = [headerData data];
              v38 = [data2 length];
              bodyData6 = [v56 bodyData];
              data3 = [headerData data];
              *buf = 136316418;
              v58 = v55;
              v59 = 2080;
              v60 = " ";
              v61 = 2048;
              *v62 = v53;
              *&v62[8] = 2048;
              *&v62[10] = v38;
              *&v62[18] = 2112;
              *&v62[20] = bodyData6;
              *&v62[28] = 2112;
              *&v62[30] = data3;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sAppend: Context body data length %lu does not match parser length %lu. %@ vs %@", buf, 0x3Eu);
            }

            v41 = +[VMABCReporter sharedInstance];
            [v41 reportIssueType:@"Incorrect body data size" description:@"Incorrect body data size on Continue"];
          }

          if ((v56[7] & 0x80000000) == 0)
          {
            error2 = [v13 error];
            v43 = error2 == 0;

            if (v43)
            {
              [v56 writeDataIfNeeded];
            }
          }
        }

        else
        {
          if (v29)
          {
            v49 = self->mambaID;
            *buf = 136315650;
            v58 = v49;
            v59 = 2080;
            v60 = " ";
            v61 = 2112;
            *v62 = v56;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I %s%sbodyLoadContinuedForRemoteUid, context:%@, *** NO PARSER", buf, 0x20u);
          }
        }

        goto LABEL_32;
      }

      if (v19)
      {
        if (!v20 || !*(v20 + 16))
        {
          v50 = sub_100015F94(v20);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = self->mambaID;
            *buf = 136315650;
            v58 = v51;
            v59 = 2080;
            v60 = " ";
            v61 = 1024;
            *v62 = v8;
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Header load continued", buf, 0x1Cu);
          }

          headerData = [(IMAPServiceBodyLoadMonitor *)self headerData];
          [headerData appendData:dataCopy];
          goto LABEL_32;
        }

        headerData = sub_100015F94(v20);
        if (os_log_type_enabled(headerData, OS_LOG_TYPE_DEFAULT))
        {
          v44 = self->mambaID;
          *buf = 136315650;
          v58 = v44;
          v59 = 2080;
          v60 = " ";
          v61 = 1024;
          *v62 = v8;
          v45 = "#I %s%sUID(%d) Continued receiving skipped additional headers";
          v46 = headerData;
          v47 = 28;
LABEL_25:
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, v45, buf, v47);
        }
      }

      else
      {
        headerData = sub_100015F94(v20);
        if (os_log_type_enabled(headerData, OS_LOG_TYPE_DEFAULT))
        {
          v48 = self->mambaID;
          *buf = 136315906;
          v58 = v48;
          v59 = 2080;
          v60 = " ";
          v61 = 1024;
          *v62 = v8;
          *&v62[4] = 2112;
          *&v62[6] = sectionCopy;
          v45 = "#I %s%sUID(%d, %@) Received data for an unexpected section";
          v46 = headerData;
          v47 = 38;
          goto LABEL_25;
        }
      }

LABEL_32:

      [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
    }
  }
}

- (void)bodyLoadEndedForRemoteUid:(unsigned int)uid inStore:(id)store data:(id)data section:(id)section
{
  v8 = *&uid;
  storeCopy = store;
  dataCopy = data;
  sectionCopy = section;
  v13 = [(IMAPServiceBodyLoadMonitor *)self _libraryIdForRemoteUid:v8 inStore:storeCopy];
  v14 = sub_100015F94(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    *buf = 136316674;
    v78 = mambaID;
    v79 = 2080;
    v80 = " ";
    v81 = 1024;
    *v82 = v13;
    *&v82[4] = 2048;
    *&v82[6] = v8;
    *&v82[14] = 2048;
    *&v82[16] = [dataCopy length];
    *&v82[24] = 2112;
    *&v82[26] = sectionCopy;
    *&v82[34] = 2112;
    *&v82[36] = storeCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s%sBODY LOAD ENDED FOR libraryId %d UID %lu WITH DATA OF LENGTH %lu SECTION %@, STORE:%@", buf, 0x44u);
  }

  if (v13 >= 1)
  {
    [(IMAPServiceBodyLoadMonitor *)self mf_lock];
    v16 = +[MFActivityMonitor currentTracebleMonitor];
    error = [v16 error];

    v17 = [@"TEXT" isEqualToString:sectionCopy];
    v18 = [@"HEADER" isEqualToString:sectionCopy];
    v19 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v13 create:(v18 | v17) & 1];
    v20 = v19;
    if (error)
    {
      v21 = sub_100015F94(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = self->mambaID;
        v23 = @"Unknown";
        *buf = 136316162;
        if (v17)
        {
          v23 = @"Body";
        }

        v78 = v22;
        v79 = 2080;
        v80 = " ";
        v24 = @"Header";
        v81 = 1024;
        if (!v18)
        {
          v24 = v23;
        }

        *v82 = v8;
        *&v82[4] = 2112;
        *&v82[6] = v24;
        *&v82[14] = 2112;
        *&v82[16] = error;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#W %s%sUID(%d) %@ load ended with error %@", buf, 0x30u);
      }

      [v20 cleanUpErroredFile];
      goto LABEL_41;
    }

    if (v18)
    {
      v25 = *(v19 + 16);
      v26 = sub_100015F94(v19);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (!v25)
      {
        if (v27)
        {
          v49 = self->mambaID;
          *buf = 136315650;
          v78 = v49;
          v79 = 2080;
          v80 = " ";
          v81 = 1024;
          *v82 = v8;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Header load ended", buf, 0x1Cu);
        }

        headerData = [(IMAPServiceBodyLoadMonitor *)self headerData];
        [headerData appendData:dataCopy];

        headerData2 = [(IMAPServiceBodyLoadMonitor *)self headerData];
        v52 = [(IMAPServiceBodyLoadMonitor *)self _createHeaderDictionaryForData:headerData2];
        v53 = v20[2];
        v20[2] = v52;

        v55 = sub_100015F94(v54);
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          v56 = self->mambaID;
          headerData3 = [(IMAPServiceBodyLoadMonitor *)self headerData];
          v58 = v20[2];
          *buf = 136316162;
          v78 = v56;
          v79 = 2080;
          v80 = " ";
          v81 = 1024;
          *v82 = v8;
          *&v82[4] = 2112;
          *&v82[6] = headerData3;
          *&v82[14] = 2112;
          *&v82[16] = v58;
          _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Finished receiving header data: %@ dict: %@", buf, 0x30u);
        }

        [(IMAPServiceBodyLoadMonitor *)self setHeaderData:0];
        v59 = [v20 parseWithDelegate:self];
        goto LABEL_41;
      }

      if (!v27)
      {
        goto LABEL_40;
      }

      v28 = self->mambaID;
      *buf = 136315650;
      v78 = v28;
      v79 = 2080;
      v80 = " ";
      v81 = 1024;
      *v82 = v8;
      v29 = "#I %s%sUID(%d) Finished receiving skipped additional headers";
      v30 = v26;
      v31 = 28;
      goto LABEL_28;
    }

    v26 = sub_100015F94(v19);
    v32 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
    if (!v17)
    {
      if (!v32)
      {
LABEL_40:

LABEL_41:
        if ([v20 mimePartFinishedLoading])
        {
          loadContextsByLibraryId = [(IMAPServiceBodyLoadMonitor *)self loadContextsByLibraryId];
          v66 = [NSNumber numberWithInt:v13];
          [loadContextsByLibraryId removeObjectForKey:v66];

          v68 = sub_100015F94(v67);
          if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
          {
            v69 = self->mambaID;
            *buf = 136315906;
            v78 = v69;
            v79 = 2080;
            v80 = " ";
            v81 = 2112;
            *v82 = v20;
            *&v82[8] = 1024;
            *&v82[10] = v13;
            _os_log_impl(&_mh_execute_header, v68, OS_LOG_TYPE_DEFAULT, "#I %s%sBody context %@ for libraryId %d removed", buf, 0x26u);
          }
        }

        [(IMAPServiceBodyLoadMonitor *)self mf_unlock];

        goto LABEL_46;
      }

      v48 = self->mambaID;
      *buf = 136315906;
      v78 = v48;
      v79 = 2080;
      v80 = " ";
      v81 = 1024;
      *v82 = v8;
      *&v82[4] = 2112;
      *&v82[6] = sectionCopy;
      v29 = "#I %s%sUID(%d, %@) Finished receiving data for an unexpected section";
      v30 = v26;
      v31 = 38;
LABEL_28:
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, v29, buf, v31);
      goto LABEL_40;
    }

    if (v32)
    {
      v33 = self->mambaID;
      loga = [dataCopy length];
      bodyData = [v20 bodyData];
      v35 = [bodyData length];
      *buf = 136316162;
      v78 = v33;
      v79 = 2080;
      v80 = " ";
      v81 = 1024;
      *v82 = v8;
      *&v82[4] = 2048;
      *&v82[6] = loga;
      *&v82[14] = 2048;
      *&v82[16] = v35;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sUID(%d) Appending body data of length %llu to previous length %llu", buf, 0x30u);
    }

    bodyData2 = [v20 bodyData];
    [bodyData2 appendData:dataCopy];

    v26 = [v20 parseWithDelegate:self];
    v37 = sub_100015F94(v26);
    v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      if (v38)
      {
        v39 = self->mambaID;
        *buf = 136315906;
        v78 = v39;
        v79 = 2080;
        v80 = " ";
        v81 = 2112;
        *v82 = v20;
        *&v82[8] = 2112;
        *&v82[10] = v26;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sbodyLoadEndedForRemoteUid, context:%@, parser:%@", buf, 0x2Au);
      }

      bodyData3 = [v20 bodyData];
      -[NSObject noteDataLengthChanged:](v26, "noteDataLengthChanged:", sub_10001E900([bodyData3 length]));

      bodyData4 = [v20 bodyData];
      v42 = [bodyData4 length];
      data = [v26 data];
      LOBYTE(v42) = v42 == [data length];

      if (v42)
      {
        goto LABEL_37;
      }

      log = sub_100015F94(v44);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        v73 = self->mambaID;
        bodyData5 = [v20 bodyData];
        v71 = [bodyData5 length];
        data2 = [v26 data];
        v45 = [data2 length];
        bodyData6 = [v20 bodyData];
        data3 = [v26 data];
        *buf = 136316418;
        v78 = v73;
        v79 = 2080;
        v80 = " ";
        v81 = 2048;
        *v82 = v71;
        *&v82[8] = 2048;
        *&v82[10] = v45;
        *&v82[18] = 2112;
        *&v82[20] = bodyData6;
        *&v82[28] = 2112;
        *&v82[30] = data3;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I %s%sEnd: Context body data length %lu does not match parser length %lu. %@ vs %@", buf, 0x3Eu);
      }

      v37 = +[VMABCReporter sharedInstance];
      [v37 reportIssueType:@"Incorrect body data size" description:@"Incorrect body data size on Ended"];
    }

    else if (v38)
    {
      v60 = self->mambaID;
      *buf = 136315650;
      v78 = v60;
      v79 = 2080;
      v80 = " ";
      v81 = 2112;
      *v82 = v20;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%sbodyLoadEndedForRemoteUid, context:%@, *** NO PARSER", buf, 0x20u);
    }

LABEL_37:
    v61 = sub_100015F94(v44);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      v62 = self->mambaID;
      bodyData7 = [v20 bodyData];
      v64 = [bodyData7 length];
      *buf = 136315650;
      v78 = v62;
      v79 = 2080;
      v80 = " ";
      v81 = 2048;
      *v82 = v64;
      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%sFinished loading body data, total bytes = %llu", buf, 0x20u);
    }

    goto LABEL_40;
  }

LABEL_46:
}

- (BOOL)progressiveBodyLoadHasStartedForRecord:(void *)record
{
  if (record)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    getAccountStore = [WeakRetained getAccountStore];
    v7 = sub_100092784(getAccountStore, record);

    if (v7 < 1)
    {
      return 0;
    }
  }

  else
  {
    v7 = 0x7FFFFFFFLL;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_lock];
  v9 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v7 create:0];
  v10 = v9;
  if (v9)
  {
    loadHasStarted = [v9 loadHasStarted];
  }

  else
  {
    loadHasStarted = 0;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_unlock];

  return loadHasStarted;
}

- (void)lengthsOfBodyLoadForRecord:(void *)record expected:(unsigned int *)expected current:(unsigned int *)current
{
  if (record)
  {
    WeakRetained = objc_loadWeakRetained(&self->_service);
    getAccountStore = [WeakRetained getAccountStore];
    v10 = sub_100092784(getAccountStore, record);

    if (v10 < 1)
    {
      return;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFLL;
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_lock];
  v12 = [(IMAPServiceBodyLoadMonitor *)self contextForLibraryId:v10 create:0];
  if (v12)
  {
    if (expected)
    {
      *expected = [v12 expectedLength];
    }

    if (current)
    {
      *current = [v12 currentOffset];
    }
  }

  [(IMAPServiceBodyLoadMonitor *)self mf_unlock];
}

- (void)progressiveMimeParser:(id)parser beganDataForMimePart:(id)part
{
  parserCopy = parser;
  partCopy = part;
  v8 = sub_100015F94(partCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    type = [partCopy type];
    *buf = 136315650;
    v58 = mambaID;
    v59 = 2080;
    v60 = " ";
    v61 = 2112;
    v62 = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE BEGIN DATA for type [%@]", buf, 0x20u);
  }

  type2 = [partCopy type];
  if ([type2 isEqualToString:@"audio"])
  {
    subtype = [partCopy subtype];
    v13 = [subtype isEqualToString:@"amr"];
  }

  else
  {
    v13 = 0;
  }

  v14 = +[MFAttachmentManager defaultManager];
  attachmentURLs = [partCopy attachmentURLs];
  firstObject = [attachmentURLs firstObject];
  v17 = [v14 attachmentForURL:firstObject error:0];

  if ((v13 & 1) != 0 || [partCopy isAttachment] && (objc_msgSend(v17, "inferredMimeType"), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "isEqualToString:", @"audio/amr"), v29, v30))
  {
    context = [parserCopy context];
    contentTransferEncoding = [partCopy contentTransferEncoding];
    v56 = [partCopy dispositionParameterForKey:@"size"];
    v55 = [partCopy preservedHeaderValueForKey:@"x-applevm-duration"];
    v20 = [contentTransferEncoding isEqualToString:@"base64"];
    *(context + 64) = *(context + 64) & 0xFE | v20;
    if (!((contentTransferEncoding == 0) | v20 & 1))
    {
      path = sub_100015F94(v20);
      if (os_log_type_enabled(path, OS_LOG_TYPE_DEFAULT))
      {
        v31 = self->mambaID;
        *buf = 136315394;
        v58 = v31;
        v59 = 2080;
        v60 = " ";
        _os_log_impl(&_mh_execute_header, path, OS_LOG_TYPE_DEFAULT, "#I %s%sBad content transfer encoding; skipping body load", buf, 0x16u);
      }

      goto LABEL_39;
    }

    v21 = *(context + 24) == 0x7FFFFFFF;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v23 = WeakRetained;
    if (v21)
    {
      accountDir = [WeakRetained accountDir];
      v26 = sub_1000856A8(accountDir, v25);
      path = [v26 path];

      v28 = 0;
    }

    else
    {
      getAccountStore = [WeakRetained getAccountStore];
      v28 = sub_1000931E8(getAccountStore, *(context + 24));

      if (!v28)
      {
        path = 0;
LABEL_39:

        goto LABEL_40;
      }

      intValue = [v55 intValue];
      if (intValue)
      {
        v34 = objc_loadWeakRetained(&self->_service);
        getAccountStore2 = [v34 getAccountStore];
        sub_100092944(getAccountStore2, v28, intValue);

        v36 = objc_loadWeakRetained(&self->_service);
        getAccountStore3 = [v36 getAccountStore];
        [getAccountStore3 save];
      }

      v23 = objc_loadWeakRetained(&self->_service);
      accountDir = [v23 getAccountStore];
      path = sub_100092DDC(accountDir, v28);
    }

    if (path)
    {
      v39 = sub_100015F94(v38);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = self->mambaID;
        *buf = 136315650;
        v58 = v40;
        v59 = 2080;
        v60 = " ";
        v61 = 2112;
        v62 = path;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE COPYING DATA TO %@", buf, 0x20u);
      }

      v41 = path;
      v42 = open([path fileSystemRepresentation], 1538, 448);
      *(context + 28) = v42;
      if (v42 < 0)
      {
        v48 = [[NSString alloc] initWithFormat:@"Unable to open file for writing: %@", path];
        v49 = [NSError errorWithDomain:kVVErrorDomain code:1010 localizedDescription:v48];
        v50 = +[MFActivityMonitor currentTracebleMonitor];
        [v50 setError:v49];
      }

      else
      {
        if ([v56 length])
        {
          v43 = objc_alloc_init(NSMutableDictionary);
          v44 = *(context + 48);
          *(context + 48) = v43;

          v45 = [NSNumber alloc];
          v46 = objc_loadWeakRetained(&self->_service);
          if (v46)
          {
            self = objc_loadWeakRetained(&self->_service);
            currentTaskType = [(IMAPServiceBodyLoadMonitor *)self currentTaskType];
          }

          else
          {
            currentTaskType = 0;
          }

          v51 = [v45 initWithInt:currentTaskType];
          if (v46)
          {
          }

          [*(context + 48) setObject:v51 forKey:@"VVTaskType"];
          intValue2 = [v56 intValue];
          v54 = [[NSNumber alloc] initWithUnsignedInt:intValue2];
          [*(context + 48) setObject:v54 forKey:@"VVExpectedDataLength"];
          [context setExpectedLength:intValue2];
          if (v28)
          {
            [*(context + 48) setObject:v28 forKey:@"VVRecord"];
          }
        }

        else
        {
          v51 = sub_100015F94(0);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
          {
            v52 = self->mambaID;
            *buf = 136315394;
            v58 = v52;
            v59 = 2080;
            v60 = " ";
            _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I %s%sNo size value; streaming disabled", buf, 0x16u);
          }
        }

        [context writeDataIfNeeded];
      }
    }

    if (v28)
    {
      CFRelease(v28);
    }

    goto LABEL_39;
  }

LABEL_40:
}

- (void)progressiveMimeParser:(id)parser finishedMimePart:(id)part
{
  parserCopy = parser;
  partCopy = part;
  v8 = sub_100015F94(partCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    type = [partCopy type];
    v16 = 136315650;
    v17 = mambaID;
    v18 = 2080;
    v19 = " ";
    v20 = 2112;
    v21 = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE FINISH for type [%@]", &v16, 0x20u);
  }

  context = [parserCopy context];
  v12 = context;
  if (context && (context[7] & 0x80000000) == 0)
  {
    [context setMimePartFinishedLoading:1];
    [v12 writeDataIfNeeded];
    close(v12[7]);
    v12[7] = -1;
    v13 = v12[6] == 0x7FFFFFFF;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v15 = WeakRetained;
    if (v13)
    {
      [WeakRetained _setGreetingCached:1];
    }

    else
    {
      [WeakRetained _setDataForRecordWithIdentifier:v12[6]];
    }
  }
}

- (void)_postDataAvailableWithUserInfo:(id)info
{
  infoCopy = info;
  v5 = sub_100015F94(infoCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    WeakRetained = objc_loadWeakRetained(&self->_service);
    v10 = 136315906;
    v11 = mambaID;
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = WeakRetained;
    v16 = 2112;
    v17 = infoCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sPosting VVServiceDataAvailableNotification service %@ with userInfo %@", &v10, 0x2Au);
  }

  v8 = +[NSNotificationCenter defaultCenter];
  v9 = objc_loadWeakRetained(&self->_service);
  [v8 postNotificationName:@"VVServiceDataAvailableNotification" object:v9 userInfo:infoCopy];
}

- (void)progressiveMimeParser:(id)parser failedWithError:(id)error
{
  parserCopy = parser;
  errorCopy = error;
  v8 = sub_100015F94(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mambaID = self->mambaID;
    v13 = 136315650;
    v14 = mambaID;
    v15 = 2080;
    v16 = " ";
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sVVPARSE FAIL with error %@", &v13, 0x20u);
  }

  v10 = +[MFActivityMonitor currentTracebleMonitor];
  [v10 setError:errorCopy];

  context = [parserCopy context];
  v12 = context;
  if (context && (context[7] & 0x80000000) == 0)
  {
    [context cleanUpErroredFile];
  }
}

@end