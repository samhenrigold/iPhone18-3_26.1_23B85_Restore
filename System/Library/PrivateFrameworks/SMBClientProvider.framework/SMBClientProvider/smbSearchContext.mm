@interface smbSearchContext
- (BOOL)checkSearchAborted;
- (BOOL)checkSearchDone;
- (id)makeStandardPath:(id)path;
- (id)parseSearchResults:(id)results;
- (int)doConnectMessage:(unsigned int)message PrimaryConnect:(BOOL)connect;
- (int)doDisconnect:(unsigned int)disconnect;
- (int)doFreeCursor:(unsigned int)cursor;
- (int)doGetRows:(unsigned int)rows EndOfRowSet:(BOOL *)set;
- (int)doQueryMessage:(unsigned int)message PrimaryQuery:(BOOL)query;
- (int)doQueryStatusExMessage:(unsigned int)message QueryStatExResults:(id)results;
- (int)doQueryStatusMessage:(unsigned int)message QTStatus:(unsigned int *)status;
- (int)doSetBindings:(unsigned int)bindings;
- (int)doTreeConnect;
- (int)doTreeDisconnect;
- (int)logoutDisconnect;
- (int)parseSearchCriteria:(id)criteria;
- (int)pipeClose:(unsigned int)close;
- (int)pipeOpen:(unsigned int)open;
- (int)pipeTransceive:(unsigned int)transceive DataIn:(id)in DataOut:(id)out;
- (int)pipeWait:(unsigned int)wait;
- (int)pipeWrite:(unsigned int)write WriteData:(id)data;
- (int)procCheckIndexingEnabled:(unsigned int)enabled IndexEnable:(BOOL *)enable;
- (int)procPrimaryQuery:(unsigned int)query QueryExResults:(id)results;
- (int)procSecondaryQuery:(unsigned int)query QueryExResults:(id)results;
- (smbSearchContext)init;
- (void)logConfig;
- (void)setSearchAborted;
- (void)setSearchDone;
@end

@implementation smbSearchContext

- (smbSearchContext)init
{
  v17.receiver = self;
  v17.super_class = smbSearchContext;
  v2 = [(smbSearchContext *)&v17 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    searchLock = v2->_searchLock;
    v2->_searchLock = v3;

    searchToken = v2->_searchToken;
    v2->_searchToken = 0;

    searchCriteria = v2->_searchCriteria;
    v2->_searchCriteria = 0;

    handler = v2->_handler;
    v2->_handler = 0;

    wctx = v2->_wctx;
    v2->_wctx = 0;

    v2->_isAborted = 0;
    v2->_searchReturnTypes = 0;
    v2->_treeIsConnected = 0;
    searchRows = v2->_searchRows;
    v2->_searchRows = 0;

    v10 = [[NSMutableData alloc] initWithCapacity:0x4000];
    replyData = v2->_replyData;
    v2->_replyData = v10;

    if (!v2->_replyData)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C760();
      }

      goto LABEL_11;
    }

    v12 = [[pipeChannel alloc] initWithName:@"MsFteWds" Channel:0];
    pipe0 = v2->_pipe0;
    v2->_pipe0 = v12;

    if (!v2->_pipe0)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C71C();
      }

      goto LABEL_11;
    }

    v14 = [[pipeChannel alloc] initWithName:@"MsFteWds" Channel:1];
    pipe1 = v2->_pipe1;
    v2->_pipe1 = v14;

    if (!v2->_pipe1)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004C6D8();
      }

LABEL_11:

      return 0;
    }
  }

  return v2;
}

- (BOOL)checkSearchAborted
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  LOBYTE(searchLock) = [(smbSearchContext *)self isAborted];
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];

  return searchLock;
}

- (void)setSearchAborted
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  self->_isAborted = 1;
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];
}

- (BOOL)checkSearchDone
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  LOBYTE(searchLock) = [(smbSearchContext *)self isFinished];
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];

  return searchLock;
}

- (void)setSearchDone
{
  searchLock = [(smbSearchContext *)self searchLock];
  [searchLock lock];

  self->_isFinished = 1;
  searchLock2 = [(smbSearchContext *)self searchLock];
  [searchLock2 unlock];
}

- (int)parseSearchCriteria:(id)criteria
{
  criteriaCopy = criteria;
  v5 = [criteriaCopy objectForKey:LISearchObjTypeReturnAll];
  if (v5)
  {
    v6 = v5;
    if (![v5 BOOLValue])
    {
      goto LABEL_22;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C7E0();
    }

    v7 = 3;
    goto LABEL_21;
  }

  v8 = [criteriaCopy objectForKey:LISearchObjTypeReturnDirs];
  v9 = v8;
  if (v8 && [v8 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C824();
    }

    self->_searchReturnTypes |= 1u;
  }

  v10 = [criteriaCopy objectForKey:LISearchObjTypeReturnFiles];

  if (v10 && [v10 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C868();
    }

    self->_searchReturnTypes |= 2u;
  }

  v6 = [criteriaCopy objectForKey:LISearchObjTypeReturnLinks];

  if (v6 && [v6 BOOLValue])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004C8AC();
    }

    v7 = self->_searchReturnTypes | 3;
LABEL_21:
    self->_searchReturnTypes = v7;
  }

LABEL_22:
  if (!self->_searchReturnTypes)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CAC0();
    }

    v13 = 0;
    v12 = 0;
    goto LABEL_30;
  }

  v11 = [criteriaCopy objectForKey:LISearchObjXattrsInclude];
  if (!v11)
  {
    v15 = [criteriaCopy objectForKey:LISearchFileNameContains];
    if (v15)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C934();
      }

      [(wspContext *)self->_wctx setFilenameSearch:v15];
      v16 = 1;
    }

    else
    {
      v16 = 0;
    }

    v12 = [criteriaCopy objectForKey:LISearchFileNameEndsWith];

    if (v12)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C978();
      }

      [(wspContext *)self->_wctx setFileExtSearch:v12];
      v16 = 1;
    }

    v13 = [criteriaCopy objectForKey:LISearchFileContentsInclude];
    if (v13)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004C9BC();
      }

      [(wspContext *)self->_wctx setContentSearch:v13];
      v16 = 1;
    }

    v17 = [criteriaCopy objectForKey:LISearchObjModifiedAfter];
    if (v17)
    {
      v18 = v17;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        sub_10004CA00();
      }

      [(wspContext *)self->_wctx setModDate:v18];

      goto LABEL_49;
    }

    if (v16)
    {
LABEL_49:
      v14 = 0;
      goto LABEL_50;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CA7C();
    }

LABEL_30:
    v14 = 22;
    goto LABEL_50;
  }

  v12 = v11;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004C8F0();
  }

  v13 = 0;
  v14 = 45;
LABEL_50:

  return v14;
}

- (int)doTreeConnect
{
  if (self->_pd)
  {
    if (self->_treeIsConnected)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004CB7C();
      }

      return 37;
    }

    else
    {
      v4 = [smb_subr sendTreeConnect:"sendTreeConnect:ShareName:Param:" ShareName:? Param:?];
      if (v4)
      {
        v3 = v4;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CB04();
        }
      }

      else
      {
        pipe0 = [(smbSearchContext *)self pipe0];
        v6 = [(smbSearchContext *)self pd];
        [pipe0 setPd:v6];

        pipe02 = [(smbSearchContext *)self pipe0];
        [pipe02 setShareID:self->_treeParam.shareId];

        pipe1 = [(smbSearchContext *)self pipe1];
        v9 = [(smbSearchContext *)self pd];
        [pipe1 setPd:v9];

        pipe12 = [(smbSearchContext *)self pipe1];
        [pipe12 setShareID:self->_treeParam.shareId];

        v3 = 0;
        self->_treeIsConnected = 1;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CBC0();
    }

    return 22;
  }

  return v3;
}

- (int)logoutDisconnect
{
  if (self->_treeIsConnected)
  {
    [(smbSearchContext *)self doTreeDisconnect];
    return 0;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CC04();
    }

    return 57;
  }
}

- (int)doTreeDisconnect
{
  if (self->_treeIsConnected)
  {
    pipe0 = [(smbSearchContext *)self pipe0];
    [pipe0 pipeClose];

    pipe1 = [(smbSearchContext *)self pipe1];
    [pipe1 pipeClose];

    self->_treeIsConnected = 0;
    v5 = [smb_subr sendTreeDisonnect:self->_pd ShareID:self->_treeParam.shareId Param:&self->_treeParam];
    if (v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CC48();
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CCC0();
    }

    return 37;
  }

  return v5;
}

- (int)procCheckIndexingEnabled:(unsigned int)enabled IndexEnable:(BOOL *)enable
{
  v5 = *&enabled;
  v21 = 0;
  if ([(smbSearchContext *)self treeIsConnected])
  {
    v7 = objc_alloc_init(QueryStatusExResults);
    if (v7)
    {
      v8 = v7;
      if ([(smbSearchContext *)self pipeOpen:v5])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CD7C();
        }

        return 5;
      }

      v10 = [(smbSearchContext *)self doConnectMessage:v5 PrimaryConnect:1];
      if (v10)
      {
        v9 = v10;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CDF4();
        }

        goto LABEL_38;
      }

      v11 = [pidMapper alloc];
      wctx = [(smbSearchContext *)self wctx];
      v13 = [v11 initWithCtx:wctx];

      if (!v13)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004D150();
        }

        v9 = 12;
        goto LABEL_37;
      }

      wctx2 = [(smbSearchContext *)self wctx];
      [wctx2 setPidMap:v13];

      v15 = [(smbSearchContext *)self doQueryMessage:v5 PrimaryQuery:1];
      if (v15)
      {
        v9 = v15;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CE6C();
        }

        goto LABEL_37;
      }

      v16 = [(smbSearchContext *)self doSetBindings:v5];
      if (v16)
      {
        v9 = v16;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CEE4();
        }

        goto LABEL_36;
      }

      v17 = [(smbSearchContext *)self doQueryStatusMessage:v5 QTStatus:&v21];
      if (v17)
      {
        v9 = v17;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004CF5C();
        }

        goto LABEL_36;
      }

      if ((v21 & 7) == 2)
      {
        v18 = [(smbSearchContext *)self doQueryStatusExMessage:v5 QueryStatExResults:v8];
        if (v18)
        {
          v9 = v18;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004D050();
          }

          goto LABEL_36;
        }

        if (([v8 qStatus] & 7) == 2)
        {
          *enable = [v8 dwRatioFinishedDenominator] != 0;
          wctx3 = [(smbSearchContext *)self wctx];
          [wctx3 setWhereID:{objc_msgSend(v8, "whereID")}];

          v9 = 0;
          goto LABEL_36;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004D0C8(v8);
        }
      }

      else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004CFD4();
      }

      v9 = 5;
LABEL_36:
      [(smbSearchContext *)self doFreeCursor:v5];
LABEL_37:
      [(smbSearchContext *)self doDisconnect:v5];

LABEL_38:
      [(smbSearchContext *)self pipeClose:v5];

      return v9;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004D1C8();
    }

    return 12;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004CD04();
    }

    return 57;
  }
}

- (int)procPrimaryQuery:(unsigned int)query QueryExResults:(id)results
{
  v4 = *&query;
  resultsCopy = results;
  v17 = 0;
  v7 = [(smbSearchContext *)self pipeOpen:v4];
  if (!v7)
  {
    v9 = [(smbSearchContext *)self doConnectMessage:v4 PrimaryConnect:1];
    if (v9)
    {
      v8 = v9;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004D2B8();
      }
    }

    else
    {
      v10 = [(smbSearchContext *)self pipeWait:v4];
      if (v10)
      {
        v8 = v10;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004D330();
        }
      }

      else
      {
        v11 = [(smbSearchContext *)self doQueryMessage:v4 PrimaryQuery:1];
        if (v11)
        {
          v8 = v11;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004D3A8();
          }
        }

        else
        {
          v12 = [(smbSearchContext *)self doSetBindings:v4];
          if (v12)
          {
            v8 = v12;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10004D420();
            }
          }

          else
          {
            v13 = [(smbSearchContext *)self doQueryStatusMessage:v4 QTStatus:&v17];
            if (v13)
            {
              v8 = v13;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004D498();
              }
            }

            else
            {
              if ((v17 & 7) == 2)
              {
                v14 = [(smbSearchContext *)self doQueryStatusExMessage:v4 QueryStatExResults:resultsCopy];
                if (v14)
                {
                  v8 = v14;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004D58C();
                  }

                  goto LABEL_26;
                }

                if (([resultsCopy qStatus] & 7) == 2)
                {
                  wctx = [(smbSearchContext *)self wctx];
                  [wctx setWhereID:{objc_msgSend(resultsCopy, "whereID")}];

                  v8 = 0;
                  goto LABEL_27;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10004D604(resultsCopy);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004D510();
              }

              v8 = 5;
            }
          }
        }
      }
    }

LABEL_26:
    [(smbSearchContext *)self pipeClose:v4];
    goto LABEL_27;
  }

  v8 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004D240();
  }

LABEL_27:

  return v8;
}

- (int)procSecondaryQuery:(unsigned int)query QueryExResults:(id)results
{
  v4 = *&query;
  resultsCopy = results;
  v16 = 0;
  v7 = [(smbSearchContext *)self pipeOpen:v4];
  if (!v7)
  {
    v9 = [(smbSearchContext *)self doConnectMessage:v4 PrimaryConnect:0];
    if (v9)
    {
      v8 = v9;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004D704();
      }
    }

    else
    {
      v10 = [(smbSearchContext *)self pipeWait:v4];
      if (v10)
      {
        v8 = v10;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004D77C();
        }
      }

      else
      {
        v11 = [(smbSearchContext *)self doQueryMessage:v4 PrimaryQuery:0];
        if (v11)
        {
          v8 = v11;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004D7F4();
          }
        }

        else
        {
          v12 = [(smbSearchContext *)self doSetBindings:v4];
          if (v12)
          {
            v8 = v12;
            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
            {
              sub_10004D86C();
            }
          }

          else
          {
            v13 = [(smbSearchContext *)self doQueryStatusMessage:v4 QTStatus:&v16];
            if (v13)
            {
              v8 = v13;
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004D8E4();
              }
            }

            else
            {
              if ((v16 & 7) == 2)
              {
                v14 = [(smbSearchContext *)self doQueryStatusExMessage:v4 QueryStatExResults:resultsCopy];
                if (v14)
                {
                  v8 = v14;
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004D9D8();
                  }

                  goto LABEL_26;
                }

                if (([resultsCopy qStatus] & 7) == 2)
                {
                  v8 = 0;
                  goto LABEL_27;
                }

                if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                {
                  sub_10004DA50(resultsCopy);
                }
              }

              else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004D95C();
              }

              v8 = 5;
            }
          }
        }
      }
    }

LABEL_26:
    [(smbSearchContext *)self pipeClose:v4];
    goto LABEL_27;
  }

  v8 = v7;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004D68C();
  }

LABEL_27:

  return v8;
}

- (int)doConnectMessage:(unsigned int)message PrimaryConnect:(BOOL)connect
{
  connectCopy = connect;
  v5 = *&message;
  v26 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:4096];
  v8 = v7;
  if (v7)
  {
    [v7 setLength:4096];
    bzero([v8 bytes], 0x1000uLL);
    v9 = [[NSMutableData alloc] initWithCapacity:128];
    [v9 setLength:128];
    v10 = [wspConnectIn alloc];
    wctx = [(smbSearchContext *)self wctx];
    if (connectCopy)
    {
      v12 = 0;
      v13 = 1;
      v14 = 0;
    }

    else
    {
      v12 = 1;
      v13 = 0;
      v14 = 1;
    }

    v15 = [v10 initWithCtx:wctx EnableRowSetEvents:v12 NoExpensiveProps:v13 UseExtendedBTypes:v14];

    if (v15)
    {
      v16 = [v15 encodeBuffer:v8 BufferOffset:0 BytesWritten:&v26 + 4];
      if (v16)
      {
        v17 = v16;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004DAD8();
        }

LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      [v8 setLength:HIDWORD(v26)];
      v18 = [(smbSearchContext *)self pipeTransceive:v5 DataIn:v8 DataOut:v9];
      if (v18)
      {
        v17 = v18;
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004DB54();
        }

        goto LABEL_18;
      }

      if (![v9 length])
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004DD68();
        }

        goto LABEL_30;
      }

      v20 = objc_alloc_init(wspConnectOut);
      if (v20)
      {
        v21 = v20;
        v22 = [v20 decodeBuffer:v9 BufferOffset:0 BytesDecoded:&v26];
        if (v22)
        {
          v17 = v22;
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004DBD0();
          }

          goto LABEL_19;
        }

        whdr = [v21 whdr];
        status = [whdr status];

        if (!status)
        {
          wctx2 = [(smbSearchContext *)self wctx];
          [wctx2 setServerVersion:{objc_msgSend(v21, "serverVersion")}];

          v17 = 0;
          goto LABEL_20;
        }

        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10004DC4C(v21);
        }

LABEL_30:
        v17 = 5;
        goto LABEL_20;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004DCF0();
      }
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004DDE0();
      }
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004DE58();
  }

  v17 = 12;
LABEL_20:

  return v17;
}

- (int)doQueryMessage:(unsigned int)message PrimaryQuery:(BOOL)query
{
  queryCopy = query;
  v5 = *&message;
  v29 = 0;
  searchPath = [(wspContext *)self->_wctx searchPath];
  v8 = [searchPath length];
  fextPatterns = [(wspContext *)self->_wctx fextPatterns];
  v10 = 80 * [fextPatterns count] + 2 * v8 + 1024;

  v11 = [[NSMutableData alloc] initWithCapacity:v10];
  v12 = v11;
  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E1E0();
    }

    goto LABEL_10;
  }

  [v11 setLength:v10];
  bzero([v12 bytes], v10);
  v13 = [[NSMutableData alloc] initWithCapacity:v10];
  [v13 setLength:28];
  v14 = [wspQueryIn alloc];
  wctx = [(smbSearchContext *)self wctx];
  v16 = [v14 initWithCtx:wctx];

  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E164();
    }

    goto LABEL_10;
  }

  if (queryCopy)
  {
    v17 = [v16 encodePrimaryQuery:v12 BufferOffset:0 BytesWritten:&v29 + 4];
  }

  else
  {
    v17 = [v16 encodeSecondaryQuery:v12 BufferOffset:0 BytesWritten:&v29 + 4];
  }

  v18 = v17;
  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004DED4();
    }

LABEL_18:

LABEL_19:
    goto LABEL_20;
  }

  [v12 setLength:HIDWORD(v29)];
  v19 = [(smbSearchContext *)self pipeTransceive:v5 DataIn:v12 DataOut:v13];
  if (v19)
  {
    v18 = v19;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004DF50();
    }

    goto LABEL_18;
  }

  v21 = objc_alloc_init(wspQueryOut);
  if (!v21)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E0EC();
    }

LABEL_10:
    v18 = 12;
    goto LABEL_20;
  }

  v22 = v21;
  v23 = [v21 decodeBuffer:v13 BufferOffset:0 BytesDecoded:&v29];
  if (v23)
  {
    v18 = v23;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004DFCC();
    }

    goto LABEL_19;
  }

  whdr = [v22 whdr];
  status = [whdr status];

  if (status)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E048(v22);
    }

    v18 = 5;
  }

  else
  {
    wctx2 = [(smbSearchContext *)self wctx];
    [wctx2 setTrueSequential:{objc_msgSend(v22, "trueSequential")}];

    wctx3 = [(smbSearchContext *)self wctx];
    [wctx3 setWorkID:{objc_msgSend(v22, "workID")}];

    wctx4 = [(smbSearchContext *)self wctx];
    [wctx4 setCursor:{objc_msgSend(v22, "cursor")}];

    v18 = 0;
  }

LABEL_20:

  return v18;
}

- (int)doQueryStatusMessage:(unsigned int)message QTStatus:(unsigned int *)status
{
  v5 = *&message;
  v23 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:128];
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E54C();
    }

    goto LABEL_11;
  }

  [v7 setLength:128];
  bytes = [v8 bytes];
  *bytes = 0u;
  bytes[1] = 0u;
  bytes[2] = 0u;
  bytes[3] = 0u;
  bytes[4] = 0u;
  bytes[5] = 0u;
  bytes[6] = 0u;
  bytes[7] = 0u;
  v10 = [[NSMutableData alloc] initWithCapacity:128];
  [v10 setLength:128];
  v11 = [wspQueryStatusIn alloc];
  wctx = [(smbSearchContext *)self wctx];
  v13 = [v11 initWithCtx:wctx];

  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E4D4();
    }

    goto LABEL_11;
  }

  v14 = [v13 encodeBuffer:v8 BufferOffset:0 BytesWritten:&v23 + 4];
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E25C();
    }

LABEL_15:

LABEL_16:
    goto LABEL_17;
  }

  [v8 setLength:HIDWORD(v23)];
  v16 = [(smbSearchContext *)self pipeTransceive:v5 DataIn:v8 DataOut:v10];
  if (v16)
  {
    v15 = v16;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E2D4();
    }

    goto LABEL_15;
  }

  v18 = objc_alloc_init(wspQueryStatusOut);
  if (!v18)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E45C();
    }

LABEL_11:
    v15 = 12;
    goto LABEL_17;
  }

  v19 = v18;
  v20 = [v18 decodeBuffer:v10 BufferOffset:0 BytesDecoded:&v23];
  if (v20)
  {
    v15 = v20;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E34C();
    }

    goto LABEL_16;
  }

  whdr = [v19 whdr];
  status = [whdr status];

  if (status)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E3C4(v19);
    }

    v15 = 5;
  }

  else
  {
    *status = [v19 qStatus];

    v15 = 0;
  }

LABEL_17:

  return v15;
}

- (int)doQueryStatusExMessage:(unsigned int)message QueryStatExResults:(id)results
{
  v4 = *&message;
  resultsCopy = results;
  v23 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:128];
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E8B4();
    }

    v10 = 0;
    goto LABEL_11;
  }

  [v7 setLength:128];
  bytes = [v8 bytes];
  *bytes = 0u;
  bytes[1] = 0u;
  bytes[2] = 0u;
  bytes[3] = 0u;
  bytes[4] = 0u;
  bytes[5] = 0u;
  bytes[6] = 0u;
  bytes[7] = 0u;
  v10 = [[NSMutableData alloc] initWithCapacity:56];
  [v10 setLength:56];
  v11 = [wspQueryStatusExIn alloc];
  wctx = [(smbSearchContext *)self wctx];
  v13 = [v11 initWithCtx:wctx];

  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E83C();
    }

LABEL_11:
    v16 = 0;
    v13 = 0;
LABEL_12:
    v15 = 12;
    goto LABEL_17;
  }

  v14 = [v13 encodeBuffer:v8 BufferOffset:0 BytesWritten:&v23 + 4];
  if (v14)
  {
    v15 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E5C4();
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  [v8 setLength:HIDWORD(v23)];
  v17 = [(smbSearchContext *)self pipeTransceive:v4 DataIn:v8 DataOut:v10];
  if (v17)
  {
    v15 = v17;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E63C();
    }

    goto LABEL_16;
  }

  v19 = objc_alloc_init(wspQueryStatusExOut);
  if (!v19)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E7C4();
    }

    v16 = 0;
    goto LABEL_12;
  }

  v16 = v19;
  v20 = [v19 decodeBuffer:v10 BufferOffset:0 BytesDecoded:&v23];
  if (v20)
  {
    v15 = v20;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E6B4();
    }
  }

  else
  {
    whdr = [v16 whdr];
    status = [whdr status];

    if (status)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004E72C(v16);
      }

      v15 = 5;
    }

    else
    {
      if (resultsCopy)
      {
        [resultsCopy setQStatus:{objc_msgSend(v16, "qStatus")}];
        [resultsCopy setCFilteredDocuments:{objc_msgSend(v16, "cFilteredDocuments")}];
        [resultsCopy setCDocumentsToFilter:{objc_msgSend(v16, "cDocumentsToFilter")}];
        [resultsCopy setDwRatioFinishedDenominator:{objc_msgSend(v16, "dwRatioFinishedDenominator")}];
        [resultsCopy setDwRatioFinishedNumerator:{objc_msgSend(v16, "dwRatioFinishedNumerator")}];
        [resultsCopy setRowsetBookMark:{objc_msgSend(v16, "rowsetBookMark")}];
        [resultsCopy setCRowsTotal:{objc_msgSend(v16, "cRowsTotal")}];
        [resultsCopy setMaxRank:{objc_msgSend(v16, "maxRank")}];
        [resultsCopy setCResultsFound:{objc_msgSend(v16, "cResultsFound")}];
        [resultsCopy setWhereID:{objc_msgSend(v16, "whereID")}];
      }

      v15 = 0;
    }
  }

LABEL_17:

  return v15;
}

- (int)doSetBindings:(unsigned int)bindings
{
  v3 = *&bindings;
  v18 = 0;
  v5 = [[NSMutableData alloc] initWithCapacity:1024];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EC94();
    }

    v7 = 0;
    goto LABEL_11;
  }

  [v5 setLength:1024];
  bzero([v6 bytes], 0x400uLL);
  v7 = [[NSMutableData alloc] initWithCapacity:128];
  [v7 setLength:128];
  v8 = [wspSetBindingsIn alloc];
  wctx = [(smbSearchContext *)self wctx];
  v10 = [v8 initWithCtx:wctx];

  if (!v10)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EC1C();
    }

LABEL_11:
    v13 = 0;
    v10 = 0;
LABEL_12:
    v12 = 12;
    goto LABEL_17;
  }

  v11 = [v10 encodeBuffer:v6 BufferOffset:0 BytesWritten:&v18 + 4];
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E92C();
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  [v6 setLength:HIDWORD(v18)];
  v14 = [(smbSearchContext *)self pipeTransceive:v3 DataIn:v6 DataOut:v7];
  if (v14)
  {
    v12 = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004E9A4();
    }

    goto LABEL_16;
  }

  v16 = objc_alloc_init(wspHeader);
  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EBA4();
    }

    v13 = 0;
    goto LABEL_12;
  }

  v13 = v16;
  v17 = [v16 decodeBuffer:v7 BufferOffset:0 BytesDecoded:&v18];
  if (v17)
  {
    v12 = v17;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EA1C();
    }
  }

  else
  {
    if ([v13 msgid] == 208)
    {
      if (![v13 status])
      {
        v12 = 0;
        goto LABEL_17;
      }

      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10004EB1C(v13);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EA94(v13);
    }

    v12 = 5;
  }

LABEL_17:

  return v12;
}

- (int)doFreeCursor:(unsigned int)cursor
{
  v3 = *&cursor;
  v18 = 0;
  v5 = [[NSMutableData alloc] initWithCapacity:32];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EF64();
    }

    v8 = 0;
    goto LABEL_11;
  }

  [v5 setLength:32];
  bytes = [v6 bytes];
  *bytes = 0u;
  bytes[1] = 0u;
  v8 = [[NSMutableData alloc] initWithCapacity:32];
  [v8 setLength:32];
  v9 = [wspFreeCursorIn alloc];
  wctx = [(smbSearchContext *)self wctx];
  v11 = [v9 initWithCursor:{objc_msgSend(wctx, "cursor")}];

  if (!v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EEEC();
    }

LABEL_11:
    v14 = 0;
    v11 = 0;
LABEL_12:
    v13 = 12;
    goto LABEL_17;
  }

  v12 = [v11 encodeBuffer:v6 BufferOffset:0 BytesWritten:&v18 + 4];
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004ED0C();
    }

LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  [v6 setLength:HIDWORD(v18)];
  v15 = [(smbSearchContext *)self pipeTransceive:v3 DataIn:v6 DataOut:v8];
  if (v15)
  {
    v13 = v15;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004ED84();
    }

    goto LABEL_16;
  }

  v17 = objc_alloc_init(wspFreeCursorOut);
  if (!v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EE74();
    }

    v14 = 0;
    goto LABEL_12;
  }

  v14 = v17;
  v13 = [v17 decodeBuffer:v8 BufferOffset:0 BytesDecoded:&v18];
  if (v13 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004EDFC();
  }

LABEL_17:

  return v13;
}

- (int)doDisconnect:(unsigned int)disconnect
{
  v3 = *&disconnect;
  v14 = 0;
  v5 = [[NSMutableData alloc] initWithCapacity:32];
  v6 = v5;
  if (!v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F144();
    }

    v8 = 0;
    goto LABEL_11;
  }

  [v5 setLength:32];
  bytes = [v6 bytes];
  *bytes = 0u;
  bytes[1] = 0u;
  v8 = [[NSMutableData alloc] initWithCapacity:32];
  [v8 setLength:32];
  v9 = objc_alloc_init(wspDisconnectIn);
  if (!v9)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F0CC();
    }

LABEL_11:
    v10 = 0;
    v12 = 12;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = [v9 encodeBuffer:v6 BufferOffset:0 BytesWritten:&v14];
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004EFDC();
    }
  }

  else
  {
    [v6 setLength:v14];
    v12 = [(smbSearchContext *)self pipeWrite:v3 WriteData:v6];
    if (v12 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F054();
    }
  }

LABEL_12:

  return v12;
}

- (int)doGetRows:(unsigned int)rows EndOfRowSet:(BOOL *)set
{
  v5 = *&rows;
  v37 = 0;
  v7 = [[NSMutableData alloc] initWithCapacity:128];
  v8 = v7;
  if (!v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F544();
    }

    replyData = 0;
    goto LABEL_11;
  }

  [v7 setLength:128];
  bytes = [v8 bytes];
  *bytes = 0u;
  bytes[1] = 0u;
  bytes[2] = 0u;
  bytes[3] = 0u;
  bytes[4] = 0u;
  bytes[5] = 0u;
  bytes[6] = 0u;
  bytes[7] = 0u;
  replyData = [(smbSearchContext *)self replyData];
  [replyData setLength:0x4000];
  v11 = [wspGetRows alloc];
  wctx = [(smbSearchContext *)self wctx];
  v13 = [v11 initWithCtx:wctx];

  if (!v13)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F4CC();
    }

LABEL_11:
    v16 = 0;
    v13 = 0;
LABEL_12:
    LODWORD(v15) = 12;
    goto LABEL_17;
  }

  v14 = [v13 encodeBuffer:v8 BufferOffset:0 BytesWritten:&v37 + 4];
  if (v14)
  {
    LODWORD(v15) = v14;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F1BC();
    }

LABEL_16:
    v16 = 0;
    goto LABEL_17;
  }

  [v8 setLength:HIDWORD(v37)];
  v17 = [(smbSearchContext *)self pipeTransceive:v5 DataIn:v8 DataOut:replyData];
  if (v17)
  {
    LODWORD(v15) = v17;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F234();
    }

    goto LABEL_16;
  }

  v19 = [wspGetRowsOut alloc];
  wctx2 = [(smbSearchContext *)self wctx];
  v16 = [v19 initWithCtx:wctx2];

  if (!v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F4CC();
    }

    v16 = 0;
    goto LABEL_12;
  }

  v21 = [v16 decodeBuffer:replyData BufferOffset:0 BytesWritten:&v37];
  if (v21)
  {
    LODWORD(v15) = v21;
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F2AC();
    }

    goto LABEL_17;
  }

  whdr = [v16 whdr];
  status = [whdr status];

  if (!status)
  {
    results = [v16 results];
    rows = [results rows];
    v27 = [rows count];

    v28 = v27 == 0;
    goto LABEL_36;
  }

  whdr2 = [v16 whdr];
  if ([whdr2 status] == 265926)
  {

LABEL_30:
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004F3BC(v16);
    }

    results2 = [v16 results];
    rows2 = [results2 rows];
    v32 = [rows2 count];

    if (v32)
    {
      goto LABEL_37;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_10004F454();
    }

    v28 = 1;
LABEL_36:
    *set = v28;
LABEL_37:
    results3 = [v16 results];
    rows3 = [results3 rows];
    v15 = [rows3 count];

    if (v15)
    {
      results4 = [v16 results];
      [(smbSearchContext *)self setSearchRows:results4];

      LODWORD(v15) = 0;
    }

    goto LABEL_17;
  }

  whdr3 = [v16 whdr];
  status2 = [whdr3 status];

  if (status2 == 265933)
  {
    goto LABEL_30;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004F324(v16);
  }

  LODWORD(v15) = 5;
LABEL_17:

  return v15;
}

- (int)pipeOpen:(unsigned int)open
{
  if (open == 1)
  {
    pipe1 = [(smbSearchContext *)self pipe1];
    goto LABEL_5;
  }

  if (!open)
  {
    pipe1 = [(smbSearchContext *)self pipe0];
LABEL_5:
    v4 = pipe1;
    pipeOpen = [pipe1 pipeOpen];

    return pipeOpen;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_10004F5BC();
  }

  return 22;
}

- (int)pipeWait:(unsigned int)wait
{
  if (self->_treeIsConnected)
  {
    if (wait == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!wait)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = pipe1;
      pipeWait = [pipe1 pipeWait];

      return pipeWait;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F634();
    }

    return 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F6AC();
    }

    return 9;
  }
}

- (int)pipeTransceive:(unsigned int)transceive DataIn:(id)in DataOut:(id)out
{
  inCopy = in;
  outCopy = out;
  if (self->_treeIsConnected)
  {
    if (transceive == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!transceive)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v12 = pipe1;
      v11 = [pipe1 pipeTransceive:inCopy DataOut:outCopy];

      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F724();
    }

    v11 = 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F79C();
    }

    v11 = 9;
  }

LABEL_13:

  return v11;
}

- (int)pipeWrite:(unsigned int)write WriteData:(id)data
{
  dataCopy = data;
  if (self->_treeIsConnected)
  {
    if (write == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!write)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v9 = pipe1;
      v8 = [pipe1 pipeWrite:dataCopy];

      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F814();
    }

    v8 = 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F88C();
    }

    v8 = 9;
  }

LABEL_13:

  return v8;
}

- (int)pipeClose:(unsigned int)close
{
  if (self->_treeIsConnected)
  {
    if (close == 1)
    {
      pipe1 = [(smbSearchContext *)self pipe1];
      goto LABEL_9;
    }

    if (!close)
    {
      pipe1 = [(smbSearchContext *)self pipe0];
LABEL_9:
      v5 = pipe1;
      pipeClose = [pipe1 pipeClose];

      return pipeClose;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F904();
    }

    return 22;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10004F97C();
    }

    return 9;
  }
}

- (id)parseSearchResults:(id)results
{
  resultsCopy = results;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0;
  v4 = objc_alloc_init(NSMutableArray);
  if (v4)
  {
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = [resultsCopy rows];
    v63 = [obj countByEnumeratingWithState:&v64 objects:v103 count:16];
    if (v63)
    {
      v52 = v4;
      v53 = 0;
      v51 = resultsCopy;
      v5 = 0;
      propValue2 = 0;
      v7 = 0;
      v8 = 0;
      v57 = 0;
      v60 = 0;
      v62 = *v65;
      while (1)
      {
        v9 = 0;
        do
        {
          v10 = v8;
          if (*v65 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v64 + 1) + 8 * v9);

          v11 = objc_autoreleasePoolPush();
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          v71 = 0u;
          v72 = 0;
          columns = [v8 columns];
          v13 = [NSNumber numberWithUnsignedInt:12];
          v14 = [columns objectForKey:v13];

          if (v14)
          {
            propValue = [v14 propValue];

            if ([propValue vType] != 31)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                vType = [propValue vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = vType;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, Path property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_28;
            }

            strValue = [propValue strValue];

            if (!strValue)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAF4(v99, v5, v100);
              }

              v60 = 0;
LABEL_28:
              propValue2 = propValue;
              v7 = v14;
              goto LABEL_39;
            }

            v17 = [(smbSearchContext *)self makeStandardPath:strValue];

            if (!v17)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                *buf = 67109378;
                *&buf[4] = v5;
                *&buf[8] = 2112;
                *&buf[10] = strValue;
                _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, unable to standardize path: %@\n", buf, 0x12u);
              }

              v57 = 0;
              propValue2 = propValue;
              v7 = v14;
              goto LABEL_38;
            }

            if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              *&buf[4] = v5;
              *&buf[8] = 2112;
              *&buf[10] = v17;
              _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "Parsing row: %u, path: %@\n", buf, 0x12u);
            }

            v61 = v17;
            columns2 = [v8 columns];
            v19 = [NSNumber numberWithUnsignedInt:13];
            v7 = [columns2 objectForKey:v19];

            if (!v7)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
              {
                sub_10004FAB4(v97, v5, v98);
              }

              v7 = 0;
              propValue2 = propValue;
              goto LABEL_37;
            }

            propValue2 = [v7 propValue];

            if ([propValue2 vType] != 19)
            {
              if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                vType2 = [propValue2 vType];
                *buf = 67109376;
                *&buf[4] = v5;
                *&buf[8] = 1024;
                *&buf[10] = vType2;
                _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "parseSearchResults: row: %u, SystemFileAttributes property unexpected vType: 0x%x\n", buf, 0xEu);
              }

              goto LABEL_37;
            }

            uint4Val = [propValue2 uint4Val];
            if ((uint4Val & 0x10) != 0)
            {
              if (([(smbSearchContext *)self searchReturnTypes]& 1) != 0)
              {
                v28 = 2;
                goto LABEL_48;
              }

              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_37;
              }

              searchReturnTypes = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = searchReturnTypes;
              *&buf[14] = 2112;
              v24 = v61;
              *&buf[16] = v61;
              v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out folder type: %@\n";
            }

            else
            {
              v21 = uint4Val;
              searchReturnTypes2 = [(smbSearchContext *)self searchReturnTypes];
              if ((v21 & 0x400) == 0)
              {
                if ((searchReturnTypes2 & 2) == 0)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
                  {
                    searchReturnTypes3 = [(smbSearchContext *)self searchReturnTypes];
                    *buf = 67109634;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = searchReturnTypes3;
                    *&buf[14] = 2112;
                    v24 = v61;
                    *&buf[16] = v61;
                    v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out file type: %@\n";
                    goto LABEL_62;
                  }

LABEL_37:
                  v57 = v61;
LABEL_38:
                  v60 = strValue;
                  goto LABEL_39;
                }

                v28 = 1;
LABEL_48:
                v58 = v28;
                columns3 = [v8 columns];
                v30 = [NSNumber numberWithUnsignedInt:1];
                v31 = [columns3 objectForKey:v30];

                if (!v31)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA74(v95, v5, v96);
                  }

                  v7 = 0;
                  goto LABEL_37;
                }

                propValue3 = [v31 propValue];

                if ([propValue3 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    vType3 = [propValue3 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = vType3;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateModified property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  propValue2 = propValue3;
                  v7 = v31;
                  goto LABEL_37;
                }

                timeSpec = [propValue3 timeSpec];
                v54 = v34;
                v55 = timeSpec;
                columns4 = [v8 columns];
                v36 = [NSNumber numberWithUnsignedInt:15];
                v7 = [columns4 objectForKey:v36];

                if (!v7)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004FA34(v93, v5, v94);
                  }

                  v7 = 0;
                  propValue2 = propValue3;
                  goto LABEL_37;
                }

                propValue2 = [v7 propValue];

                if ([propValue2 vType] != 64)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    vType4 = [propValue2 vType];
                    *buf = 67109376;
                    *&buf[4] = v5;
                    *&buf[8] = 1024;
                    *&buf[10] = vType4;
                    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "parseSearchResults: row: %u, SystemDateAccessed property unexpected vType: 0x%x\n", buf, 0xEu);
                  }

                  goto LABEL_37;
                }

                timeSpec2 = [propValue2 timeSpec];
                v39 = v38;
                v40 = objc_alloc_init(searchResultItem);

                if (!v40)
                {
                  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
                  {
                    sub_10004F9F4(v91, v5, v92);
                  }

                  v53 = 0;
                  goto LABEL_37;
                }

                *buf = xmmword_10006D4A0;
                *&buf[16] = 0;
                v77 = v58;
                v78 = 511;
                v79 = v73;
                v80 = v74;
                v81 = v75;
                v82 = timeSpec2;
                v83 = v39;
                v84 = v55;
                v85 = v54;
                v90 = v72;
                v88 = v70;
                v89 = v71;
                v86 = v68;
                v87 = v69;
                [(searchResultItem *)v40 setLiAttr:buf];
                [(searchResultItem *)v40 setPath:v61];
                [v52 addObject:v40];
                v53 = v40;
                v57 = v61;
                goto LABEL_38;
              }

              if ((searchReturnTypes2 & 3) != 0)
              {
                v28 = 3;
                goto LABEL_48;
              }

              if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_37;
              }

              searchReturnTypes4 = [(smbSearchContext *)self searchReturnTypes];
              *buf = 67109634;
              *&buf[4] = v5;
              *&buf[8] = 1024;
              *&buf[10] = searchReturnTypes4;
              *&buf[14] = 2112;
              v24 = v61;
              *&buf[16] = v61;
              v25 = "parseSearchResults: row: %u ReturnTypes: 0x%x, filter out reparse type: %@\n";
            }

LABEL_62:
            _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, v25, buf, 0x18u);
            v57 = v24;
            goto LABEL_38;
          }

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            sub_10004FB34(v101, v5, &v102);
          }

          v7 = 0;
LABEL_39:
          ++v5;
          objc_autoreleasePoolPop(v11);
          v9 = v9 + 1;
        }

        while (v63 != v9);
        v45 = [obj countByEnumeratingWithState:&v64 objects:v103 count:16];
        v63 = v45;
        if (!v45)
        {

          resultsCopy = v51;
          v4 = v52;
          v46 = v53;
          v47 = v57;
          v48 = v60;
          goto LABEL_75;
        }
      }
    }

    v48 = 0;
    v47 = 0;
    v7 = 0;
    propValue2 = 0;
    v46 = 0;
LABEL_75:

    if ([v4 count])
    {
      v49 = v4;
      goto LABEL_78;
    }
  }

  else
  {
    v48 = 0;
    v47 = 0;
    v7 = 0;
    propValue2 = 0;
    v46 = 0;
  }

  v49 = 0;
LABEL_78:

  return v49;
}

- (id)makeStandardPath:(id)path
{
  pathComponents = [path pathComponents];
  if ([pathComponents count] < 4)
  {
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 4;
    v7 = 3;
    do
    {
      v8 = v5;
      v5 = [pathComponents objectAtIndex:v7];

      if (v4)
      {
        v9 = [v4 stringByAppendingString:@"/"];

        v4 = [v9 stringByAppendingString:v5];
      }

      else
      {
        v4 = v5;
      }

      v7 = v6;
    }

    while ([pathComponents count] > v6++);
  }

  return v4;
}

- (void)logConfig
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004FB74();
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    sub_10004FBF4();
  }

  [(wspContext *)self->_wctx logContents];
}

@end