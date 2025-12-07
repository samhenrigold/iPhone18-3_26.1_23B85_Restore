@interface MFIMAPDownloadCache
- (id)downloadForMessage:(id)message;
- (id)downloadForUid:(unsigned int)uid section:(id)section expectedLength:(unint64_t)length consumer:(id)consumer;
- (id)downloadForUid:(unsigned int)uid section:(id)section length:(unint64_t)length consumer:(id)consumer;
- (id)downloadForUid:(unsigned int)uid section:(id)section range:(_NSRange)range consumer:(id)consumer;
- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline;
- (void)cleanUpDownloadsForUid:(unsigned int)uid;
- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid;
- (void)handleFetchResponses:(id)responses;
- (void)processResultsForUid:(unsigned int)uid;
@end

@implementation MFIMAPDownloadCache

- (id)downloadForMessage:(id)message
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [messageCopy uid];
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v5);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(NSMutableArray *)self->_downloads objectAtIndex:RangeOfDownloadsWithUid];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      goto LABEL_13;
    }

LABEL_4:
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_7:
    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      ef_publicDescription = [messageCopy ef_publicDescription];
      v14 = 138543362;
      v15 = ef_publicDescription;
      _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "uid of message %{public}@ is 0", &v14, 0xCu);
    }
  }

LABEL_10:
  v11 = [[MFIMAPMessageDownload alloc] initWithMessage:messageCopy];
  v12 = v11;
  if (v11)
  {
    [(MFIMAPMessageDownload *)v11 setAllowsPartialDownloads:1];
    v8 = v12;
    [(NSMutableArray *)self->_downloads insertObject:v12 atIndex:RangeOfDownloadsWithUid];
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  [(MFIMAPDownloadCache *)self mf_unlock];

  return v8;
}

- (id)downloadForUid:(unsigned int)uid section:(id)section length:(unint64_t)length consumer:(id)consumer
{
  v6 = _getDownload(self, *&uid, section, length, length, 0, 0x7FFFFFFFFFFFFFFFLL, consumer);

  return v6;
}

- (id)downloadForUid:(unsigned int)uid section:(id)section expectedLength:(unint64_t)length consumer:(id)consumer
{
  v6 = _getDownload(self, *&uid, section, 0xFFFFFFFFLL, length, 0, 0x7FFFFFFFFFFFFFFFLL, consumer);

  return v6;
}

- (id)downloadForUid:(unsigned int)uid section:(id)section range:(_NSRange)range consumer:(id)consumer
{
  v6 = _getDownload(self, *&uid, section, 0xFFFFFFFFLL, 0xFFFFFFFFLL, range.location, range.length, consumer);

  return v6;
}

- (void)handleFetchResponse:(id)response forUid:(unsigned int)uid
{
  responseCopy = response;
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  v8 = v7;
  fetchResults = [responseCopy fetchResults];
  _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v8, fetchResults);

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)handleFetchResponses:(id)responses
{
  v22 = *MEMORY[0x1E69E9840];
  responsesCopy = responses;
  if ([responsesCopy count])
  {
    [(MFIMAPDownloadCache *)self mf_lock];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = responsesCopy;
    v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v4)
    {
      v5 = 0;
      RangeOfDownloadsWithUid = 0;
      v7 = 0;
      v8 = *v18;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = [v10 fetchResultWithType:8];
          v12 = [v11 uid];

          if (v12)
          {
            if (v12 != v7)
            {
              RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, v12);
              v5 = v13;
              v7 = v12;
            }

            fetchResults = [v10 fetchResults];
            _lockedUpdateDownloadsInRange(self, RangeOfDownloadsWithUid, v5, fetchResults);
          }
        }

        v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v4);
    }

    [(MFIMAPDownloadCache *)self mf_unlock];
  }
}

- (void)processResultsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  if (RangeOfDownloadsWithUid < RangeOfDownloadsWithUid + v6)
  {
    v7 = RangeOfDownloadsWithUid;
    v8 = v6;
    do
    {
      v9 = [(NSMutableArray *)self->_downloads objectAtIndex:v7];
      [v9 processResults];

      ++v7;
      --v8;
    }

    while (v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)cleanUpDownloadsForUid:(unsigned int)uid
{
  [(MFIMAPDownloadCache *)self mf_lock];
  RangeOfDownloadsWithUid = _lockedFindRangeOfDownloadsWithUid(self, uid);
  v7 = RangeOfDownloadsWithUid + v6;
  if (RangeOfDownloadsWithUid + v6 > RangeOfDownloadsWithUid)
  {
    v8 = RangeOfDownloadsWithUid;
    do
    {
      v9 = [(NSMutableArray *)self->_downloads objectAtIndex:--v7];
      if ([v9 isComplete])
      {
        [(NSMutableArray *)self->_downloads removeObjectAtIndex:v7];
      }
    }

    while (v7 > v8);
  }

  [(MFIMAPDownloadCache *)self mf_unlock];
}

- (void)addCommandsForDownload:(id)download toPipeline:(id)pipeline
{
  downloadCopy = download;
  pipelineCopy = pipeline;
  [(MFIMAPDownloadCache *)self mf_lock];
  [downloadCopy addCommandsToPipeline:pipelineCopy withCache:self];
  [(MFIMAPDownloadCache *)self mf_unlock];
}

@end