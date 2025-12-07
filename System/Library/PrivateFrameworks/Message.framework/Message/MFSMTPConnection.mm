@interface MFSMTPConnection
+ (OS_os_log)log;
- (BOOL)_connectUsingAccount:(id)account;
- (BOOL)_hasParameter:(id)parameter forKeyword:(id)keyword;
- (BOOL)_supportsExtension:(id)extension;
- (BOOL)authenticateUsingAccount:(id)account;
- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator;
- (BOOL)connectUsingAccount:(id)account;
- (BOOL)supportsChunking;
- (BOOL)supportsOutboxCopy;
- (MFSMTPConnection)init;
- (const)_trailerForMailFromWithEmailAddressFormatStyle:(int64_t)style;
- (id)_dataForCommand:(const char *)command length:(unint64_t)length argument:(id)argument trailer:(const char *)trailer;
- (id)_invalidRecipientsErrorMessageWithRecipients:(id)recipients;
- (id)authenticationMechanisms;
- (id)dataForMailFrom:(id)from emailFormatStyle:(int64_t)style;
- (id)dataForRcptTo:(id)to;
- (id)lastResponse;
- (id)lastResponseLine;
- (int64_t)mailFrom:(id)from recipients:(id)recipients withData:(id)data host:(id)host emailFormatStyle:(int64_t)style errorTitle:(id *)title errorMessage:(id *)message serverResponse:(id *)self0 displayError:(BOOL *)self1 errorCode:(int *)self2 errorUserInfo:(id *)self3;
- (unint64_t)_doHandshakeUsingAccount:(id)account;
- (unint64_t)_getReply;
- (unint64_t)_readResponseRange:(_NSRange *)range isContinuation:(BOOL *)continuation;
- (unint64_t)_sendBytes:(const char *)bytes length:(unint64_t)length progressHandler:(id)handler;
- (unint64_t)_sendCommand:(const char *)command length:(unint64_t)length argument:(id)argument trailer:(const char *)trailer;
- (unint64_t)_sendData:(id)data;
- (unint64_t)_sendData:(id)data progressHandler:(id)handler;
- (unint64_t)mailFrom:(id)from emailFormatStyle:(int64_t)style;
- (unint64_t)maximumMessageBytes;
- (unint64_t)noop;
- (unint64_t)quit;
- (unint64_t)rcptTo:(id)to;
- (unint64_t)sendBData:(id)data;
- (unint64_t)sendData:(id)data;
- (unint64_t)state;
- (void)setDomainName:(id)name;
@end

@implementation MFSMTPConnection

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFSMTPConnection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_33 != -1)
  {
    dispatch_once(&log_onceToken_33, block);
  }

  v2 = log_log_33;

  return v2;
}

void __23__MFSMTPConnection_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_33;
  log_log_33 = v1;
}

- (MFSMTPConnection)init
{
  v7.receiver = self;
  v7.super_class = MFSMTPConnection;
  v2 = [(MFConnection *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69AD730]) initWithCapacity:128];
    mdata = v2->_mdata;
    v2->_mdata = v3;

    v5 = v2;
  }

  return v2;
}

- (unint64_t)state
{
  status = [(MFSMTPResponse *)self->_lastResponse status];
  if (status > 0x257)
  {
    return 6;
  }

  else
  {
    return *(&unk_1B0E97908 + ((2 * (((status >> 2) * 0x28F5C28F5C28F5C3uLL) >> 64)) & 0x1FFFFFFFFFFFFFF8));
  }
}

- (id)lastResponse
{
  v2 = [(MFSMTPResponse *)self->_lastResponse copy];

  return v2;
}

- (void)setDomainName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy copy];
  domainName = self->_domainName;
  self->_domainName = v4;
}

- (BOOL)supportsOutboxCopy
{
  if ([(MFSMTPConnection *)self _hasParameter:0 forKeyword:@"X-AOL-OUTBOX-COPY"])
  {
    return 1;
  }

  return [(MFSMTPConnection *)self _supportsSaveSentExtension];
}

- (BOOL)supportsChunking
{
  if ([(MFSMTPConnection *)self _supportsExtension:@"CHUNKING"])
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v3 = [standardUserDefaults BOOLForKey:@"DisableCHUNKING"];

    v4 = v3 ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (unint64_t)maximumMessageBytes
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_serviceExtensions count];
  if (!v3)
  {
    v6 = 0;
LABEL_16:
    v9 = 0;
    goto LABEL_17;
  }

  v4 = 0;
  do
  {
    v5 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v4];
    if ([v5 caseInsensitiveCompare:@"SIZE"])
    {
      v6 = 0;
    }

    else
    {
      v7 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v4 + 1];
      if ([v7 count])
      {
        v6 = [v7 objectAtIndex:0];
      }

      else
      {
        v6 = 0;
      }
    }

    v4 += 2;
  }

  while (v4 < v3 && !v6);
  if (!v6)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_16;
  }

  memset(__str, 170, 21);
  v8 = [v6 length];
  v11 = &v12;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (v8 != MFStringGetBytes())
  {
    goto LABEL_16;
  }

  __str[v12] = 0;
  v9 = strtoull(__str, 0, 10);
LABEL_17:

  return v9;
}

- (id)authenticationMechanisms
{
  v3 = [(NSMutableArray *)self->_serviceExtensions count];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v6 - 1];
      if (![v7 caseInsensitiveCompare:@"AUTH"])
      {
        v8 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v6];
        if ([v8 count])
        {
          if (v5)
          {
            [v5 addObjectsFromArray:v8];
          }

          else
          {
            v5 = [v8 mutableCopyWithZone:0];
          }
        }
      }

      v9 = v6 + 1;
      v6 += 2;
    }

    while (v9 < v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)authenticateUsingAccount:(id)account
{
  accountCopy = account;
  preferredAuthScheme = [accountCopy preferredAuthScheme];

  if (preferredAuthScheme)
  {
    v8.receiver = self;
    v8.super_class = MFSMTPConnection;
    v6 = [(MFConnection *)&v8 authenticateUsingAccount:accountCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator
{
  v34 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  authenticatorCopy = authenticator;
  saslName = [authenticatorCopy saslName];
  usesBase64EncodeResponseData = [authenticatorCopy usesBase64EncodeResponseData];
  [authenticatorCopy setAuthenticationState:1];
  v8 = [authenticatorCopy responseForServerData:0];
  self->_hideLoggedData = [authenticatorCopy justSentPlainTextPassword];
  if (v8)
  {
    if (usesBase64EncodeResponseData)
    {
      mf_encodeBase64WithoutLineBreaks = [v8 mf_encodeBase64WithoutLineBreaks];

      v8 = mf_encodeBase64WithoutLineBreaks;
    }

    v10 = [saslName mutableCopyWithZone:0];
    v11 = MFCreateStringWithData();
    [v10 appendString:@" "];
    [v10 appendString:v11];
    _getReply = [(MFSMTPConnection *)self _sendCommand:"AUTH " length:5 argument:v10 trailer:0];
  }

  else
  {
    _getReply = [(MFSMTPConnection *)self _sendCommand:"AUTH " length:5 argument:saslName trailer:0];
  }

  if (_getReply == 2)
  {
    _getReply = [(MFSMTPConnection *)self _getReply];
  }

  else
  {
    [authenticatorCopy setAuthenticationState:3];
  }

  *&v13 = 134218242;
  v27 = v13;
  while ([authenticatorCopy authenticationState] == 1)
  {
    if (_getReply - 4 < 2)
    {
      lastResponseLine2 = [accountCopy errorForResponse:self->_lastResponse];
      lastResponseLine = [(MFSMTPConnection *)self lastResponseLine];
      [lastResponseLine2 setMoreInfo:lastResponseLine];

      v18 = +[MFActivityMonitor currentMonitor];
      [v18 setError:lastResponseLine2];

      [authenticatorCopy setAuthenticationState:2];
      goto LABEL_32;
    }

    if (_getReply == 2)
    {
      [authenticatorCopy setAuthenticationState:4];
    }

    else if (_getReply == 3)
    {
      lastResponseLine2 = [(MFSMTPResponse *)self->_lastResponse lastResponseLine];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        data = lastResponseLine2;
      }

      else
      {
        data = [MEMORY[0x1E695DEF0] data];
      }

      v20 = data;
      if (usesBase64EncodeResponseData)
      {
        mf_decodeBase64 = [data mf_decodeBase64];

        v20 = mf_decodeBase64;
      }

      v22 = [authenticatorCopy responseForServerData:v20];
      self->_hideLoggedData = [authenticatorCopy justSentPlainTextPassword];
      if (v22)
      {
        if (usesBase64EncodeResponseData)
        {
          mf_encodeBase64WithoutLineBreaks2 = [v22 mf_encodeBase64WithoutLineBreaks];

          v22 = mf_encodeBase64WithoutLineBreaks2;
        }

        v24 = v22;
        _getReply = -[MFSMTPConnection _sendCommand:length:argument:trailer:](self, "_sendCommand:length:argument:trailer:", [v22 bytes], objc_msgSend(v22, "length"), 0, 0);
        if (_getReply == 2)
        {
          _getReply = [(MFSMTPConnection *)self _getReply];
        }

        else
        {
          [authenticatorCopy setAuthenticationState:3];
        }
      }

      else
      {
        [authenticatorCopy setAuthenticationState:2];
        _getReply = 3;
      }

LABEL_32:
    }

    else
    {
      v14 = +[MFSMTPConnection log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        parentAccountIdentifier = [accountCopy parentAccountIdentifier];
        *buf = v27;
        selfCopy = self;
        v32 = 2114;
        v33 = parentAccountIdentifier;
        _os_log_error_impl(&dword_1B0389000, v14, OS_LOG_TYPE_ERROR, "MFSMTPConnection[%p]: Unexpected response during authentication for SMTP account %{public}@", buf, 0x16u);
      }

      [authenticatorCopy setAuthenticationState:3];
    }
  }

  self->_hideLoggedData = 0;
  v25 = [authenticatorCopy authenticationState] == 4;

  return v25;
}

- (BOOL)connectUsingAccount:(id)account
{
  accountCopy = account;
  if (![(MFSMTPConnection *)self _connectUsingAccount:accountCopy]|| [(MFSMTPConnection *)self _doHandshakeUsingAccount:accountCopy]!= 2)
  {
    goto LABEL_19;
  }

  if ([accountCopy usesSSL])
  {
    securityProtocol = [(MFNWConnectionWrapper *)self->super._socket securityProtocol];
    v6 = [securityProtocol isEqualToString:*MEMORY[0x1E695E968]];

    if (v6)
    {
      if ([(MFSMTPConnection *)self _hasParameter:0 forKeyword:@"STARTTLS"])
      {
        if ([(MFSMTPConnection *)self _sendCommand:"STARTTLS" length:8 argument:0 trailer:0]== 2 && [(MFSMTPConnection *)self _getReply]== 2)
        {
          clientCertificates = [accountCopy clientCertificates];
          if (clientCertificates)
          {
            [(MFNWConnectionWrapper *)self->super._socket setClientCertificates:clientCertificates];
          }

          if ([(MFConnection *)self enableSSL])
          {
            while ([(MFConnection *)self hasBytesAvailable])
            {
              if ([(MFSMTPConnection *)self _getReply]!= 2)
              {
                [(MFConnection *)self clearBuffer];
                goto LABEL_18;
              }
            }

            isConnectionSecure = [(MFConnection *)self isConnectionSecure];

            if (isConnectionSecure)
            {
              v8 = [(MFSMTPConnection *)self _doHandshakeUsingAccount:accountCopy]== 2;
              goto LABEL_20;
            }

            goto LABEL_19;
          }

          goto LABEL_18;
        }

        v16 = MEMORY[0x1E696AEC0];
        v17 = MFLookupLocalizedString(@"FAILED_SEND_SSL_NEEDED", @"Check the SSL setting for the outgoing server “%@”.", @"Delayed");
        hostname = [accountCopy hostname];
        clientCertificates = [v16 stringWithFormat:v17, hostname];

        v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:clientCertificates forKey:@"UserFriendlyErrorDescription"];
        v13 = +[MFActivityMonitor currentMonitor];
        v14 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
        v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:clientCertificates title:v14 userInfo:v12];
        [v13 setError:v15];
      }

      else
      {
        v9 = MEMORY[0x1E696AEC0];
        v10 = MFLookupLocalizedString(@"FAILED_SEND_SSL_NEEDED", @"Check the SSL setting for the outgoing server “%@”.", @"Delayed");
        hostname2 = [accountCopy hostname];
        clientCertificates = [v9 stringWithFormat:v10, hostname2];

        v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:clientCertificates forKey:@"UserFriendlyErrorDescription"];
        v13 = +[MFActivityMonitor currentMonitor];
        v14 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
        v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:clientCertificates title:v14 userInfo:v12];
        [v13 setError:v15];
      }

LABEL_18:
LABEL_19:
      v8 = 0;
      goto LABEL_20;
    }
  }

  v8 = 1;
LABEL_20:

  return v8;
}

- (unint64_t)rcptTo:(id)to
{
  toCopy = to;
  _getReply = [(MFSMTPConnection *)self _sendCommand:"RCPT TO:<" length:9 argument:toCopy trailer:">"];
  if (_getReply == 2)
  {
    _getReply = [(MFSMTPConnection *)self _getReply];
  }

  return _getReply;
}

- (unint64_t)noop
{
  result = [(MFSMTPConnection *)self _sendCommand:"NOOP" length:4 argument:0 trailer:0];
  if (result == 2)
  {

    return [(MFSMTPConnection *)self _getReply];
  }

  return result;
}

- (unint64_t)sendBData:(id)data
{
  dataCopy = data;
  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 5;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v5 = [dataCopy length];
  v30 = [dataCopy numberOfNewlinesNeedingConversion:0] + v5;
  originalSocketTimeout = self->_originalSocketTimeout;
  if (originalSocketTimeout >= 1)
  {
    if (originalSocketTimeout <= 0xB4)
    {
      v7 = 180;
    }

    else
    {
      v7 = originalSocketTimeout;
    }

    [(MFNWConnectionWrapper *)self->super._socket setTimeout:v7];
  }

  v8 = objc_alloc(MEMORY[0x1E696AD60]);
  v9 = [v8 initWithFormat:@"BDAT %lu LAST\r\n", v28[3]];
  v10 = [v9 dataUsingEncoding:4];
  v11 = [(MFConnection *)self writeData:v10 dontLogBytesInRange:0x7FFFFFFFFFFFFFFFLL, 0];

  if (v11)
  {
    v12 = v28[3] / 0x50uLL;
    if (v12 <= 0x2000)
    {
      v12 = 0x2000;
    }

    v26[0] = 0;
    v26[1] = v26;
    v26[2] = 0x2020000000;
    v26[3] = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __30__MFSMTPConnection_sendBData___block_invoke;
    aBlock[3] = &unk_1E7AA78D8;
    aBlock[4] = self;
    aBlock[5] = v26;
    aBlock[6] = &v27;
    aBlock[7] = v12;
    v13 = _Block_copy(aBlock);
    v14 = [objc_alloc(MEMORY[0x1E69AD730]) initWithCapacity:0x10000];
    v32[3] = 2;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __30__MFSMTPConnection_sendBData___block_invoke_2;
    v20[3] = &unk_1E7AA7900;
    v15 = v14;
    v24 = &v31;
    v21 = v15;
    selfCopy = self;
    v16 = v13;
    v23 = v16;
    [dataCopy enumerateConvertingNewlinesUsingBlock:v20];
    if (v32[3] == 2)
    {
      v17 = [(MFSMTPConnection *)self _sendData:v15 progressHandler:v16];
      v32[3] = v17;
    }

    _Block_object_dispose(v26, 8);
  }

  state = v32[3];
  if (state == 2)
  {
    [(MFSMTPConnection *)self _getReply];
    state = [(MFSMTPConnection *)self state];
    v32[3] = state;
  }

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v31, 8);

  return state;
}

uint64_t __30__MFSMTPConnection_sendBData___block_invoke(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) += a2;
  v3 = *(*(a1[5] + 8) + 24) / *(*(a1[6] + 8) + 24) * 0.800000012;
  WeakRetained = objc_loadWeakRetained((a1[4] + 168));
  [WeakRetained setPercentDone:v3 + 0.200000003];

  return a1[7];
}

BOOL __30__MFSMTPConnection_sendBData___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) appendBytes:a2 length:a3];
  if ([*(a1 + 32) length] >= 0x10000)
  {
    *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 40) _sendData:*(a1 + 32) progressHandler:*(a1 + 48)];
    [*(a1 + 32) setLength:0];
  }

  return *(*(*(a1 + 56) + 8) + 24) == 2;
}

- (unint64_t)sendData:(id)data
{
  dataCopy = data;
  originalSocketTimeout = self->_originalSocketTimeout;
  if (originalSocketTimeout >= 1)
  {
    if (originalSocketTimeout <= 0x78)
    {
      v6 = 120;
    }

    else
    {
      v6 = originalSocketTimeout;
    }

    [(MFNWConnectionWrapper *)self->super._socket setTimeout:v6];
  }

  v7 = +[MFActivityMonitor currentMonitor];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v8 = ([dataCopy length] / 0x14uLL) & 0xFFFFFFFFFFFE000;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __29__MFSMTPConnection_sendData___block_invoke;
  aBlock[3] = &unk_1E7AA7928;
  v27 = v29;
  v9 = dataCopy;
  v25 = v9;
  selfCopy = self;
  v28 = v8;
  v10 = _Block_copy(aBlock);
  [(NSMutableData *)self->_mdata setLength:0];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __29__MFSMTPConnection_sendData___block_invoke_2;
  v19[3] = &unk_1E7AA7950;
  v19[4] = self;
  v11 = v7;
  v20 = v11;
  v22 = &v30;
  v23 = v29;
  v12 = v10;
  v21 = v12;
  [v9 enumerateConvertingNewlinesUsingBlock:v19];
  if ((v31[3] & 1) == 0)
  {
    v13 = self->_originalSocketTimeout;
    if (v13 >= 1)
    {
      if (v13 <= 0x258)
      {
        v14 = 600;
      }

      else
      {
        v14 = v13;
      }

      [(MFNWConnectionWrapper *)self->super._socket setTimeout:v14];
    }

    [(MFSMTPConnection *)self _getReply];
    v15 = self->_originalSocketTimeout;
    if (v15 >= 1)
    {
      if (v15 <= 0x12C)
      {
        v16 = 300;
      }

      else
      {
        v16 = v15;
      }

      [(MFNWConnectionWrapper *)self->super._socket setTimeout:v16];
    }
  }

  state = [(MFSMTPConnection *)self state];

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(&v30, 8);

  return state;
}

uint64_t __29__MFSMTPConnection_sendData___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 24) * 0.8;
  v3 = (v2 / [*(a1 + 32) length]);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 168));
  [WeakRetained setPercentDone:v3 + 0.200000003];

  return *(a1 + 56);
}

BOOL __29__MFSMTPConnection_sendData___block_invoke_2(uint64_t a1, _BYTE *a2, uint64_t a3, int a4, int a5)
{
  if (*a2 == 46)
  {
    [*(*(a1 + 32) + 136) appendBytes:a2 length:1];
  }

  [*(*(a1 + 32) + 136) appendBytes:a2 length:a3];
  if (a5 && (a4 & 1) == 0)
  {
    [*(*(a1 + 32) + 136) appendBytes:"\r\n" length:2];
  }

  if ([*(*(a1 + 32) + 136) length] >> 13)
  {
    v10 = 0;
  }

  else
  {
    v10 = a5 == 0;
  }

  if (!v10)
  {
    if ([*(a1 + 40) shouldCancel])
    {
      [*(*(a1 + 32) + 120) setStatus:550];
      *(*(*(a1 + 56) + 8) + 24) = 1;
      [*(a1 + 32) disconnect];
    }

    else
    {
      if (a5)
      {
        [*(*(a1 + 32) + 136) appendBytes:"." length:1];
        [*(*(a1 + 32) + 136) appendBytes:"\r\n" length:2];
      }

      *(*(*(a1 + 64) + 8) + 24) += a3;
      if (a4)
      {
        --*(*(*(a1 + 64) + 8) + 24);
      }

      *(*(*(a1 + 56) + 8) + 24) = [*(a1 + 32) _sendData:*(*(a1 + 32) + 136) progressHandler:*(a1 + 48)] != 2;
    }

    [*(*(a1 + 32) + 136) setLength:0];
  }

  return (*(*(*(a1 + 56) + 8) + 24) & 1) == 0;
}

- (unint64_t)quit
{
  v3 = [(MFSMTPConnection *)self _sendCommand:"QUIT" length:4 argument:0 trailer:0];
  if (v3 == 2)
  {
    [(MFConnection *)self disconnect];
  }

  return v3;
}

- (const)_trailerForMailFromWithEmailAddressFormatStyle:(int64_t)style
{
  if (style)
  {
    return ">";
  }

  else
  {
    return "> SMTPUTF8";
  }
}

- (unint64_t)mailFrom:(id)from emailFormatStyle:(int64_t)style
{
  fromCopy = from;
  _getReply = [(MFSMTPConnection *)self _sendCommand:"MAIL FROM:<" length:11 argument:fromCopy trailer:[(MFSMTPConnection *)self _trailerForMailFromWithEmailAddressFormatStyle:style]];
  if (_getReply == 2)
  {
    _getReply = [(MFSMTPConnection *)self _getReply];
  }

  return _getReply;
}

- (id)dataForMailFrom:(id)from emailFormatStyle:(int64_t)style
{
  fromCopy = from;
  v7 = [(MFSMTPConnection *)self _dataForCommand:"MAIL FROM:<" length:11 argument:fromCopy trailer:[(MFSMTPConnection *)self _trailerForMailFromWithEmailAddressFormatStyle:style]];

  return v7;
}

- (id)dataForRcptTo:(id)to
{
  v3 = [(MFSMTPConnection *)self _dataForCommand:"RCPT TO:<" length:9 argument:to trailer:">"];

  return v3;
}

- (int64_t)mailFrom:(id)from recipients:(id)recipients withData:(id)data host:(id)host emailFormatStyle:(int64_t)style errorTitle:(id *)title errorMessage:(id *)message serverResponse:(id *)self0 displayError:(BOOL *)self1 errorCode:(int *)self2 errorUserInfo:(id *)self3
{
  v122 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  recipientsCopy = recipients;
  dataCopy = data;
  hostCopy = host;
  v90 = +[MFActivityMonitor currentMonitor];
  if (error)
  {
    *error = 0;
  }

  supportsChunking = [(MFSMTPConnection *)self supportsChunking];
  v86 = [objc_alloc(MEMORY[0x1E699B250]) initWithStyle:style];
  v94 = [v86 stringFromEmailAddressConvertible:fromCopy];

  v106[0] = MEMORY[0x1E69E9820];
  v106[1] = 3221225472;
  v106[2] = __147__MFSMTPConnection_mailFrom_recipients_withData_host_emailFormatStyle_errorTitle_errorMessage_serverResponse_displayError_errorCode_errorUserInfo___block_invoke;
  v106[3] = &unk_1E7AA2DE8;
  v88 = v86;
  v107 = v88;
  v92 = [recipientsCopy ef_map:v106];

  if ([(MFSMTPConnection *)self supportsPipelining])
  {
    [(NSMutableData *)self->_mdata setLength:0];
    mdata = self->_mdata;
    v21 = [(MFSMTPConnection *)self dataForMailFrom:v94 emailFormatStyle:style];
    [(NSMutableData *)mdata appendData:v21];

    v104 = 0u;
    v105 = 0u;
    if (supportsChunking)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    v102 = 0uLL;
    v103 = 0uLL;
    v23 = v92;
    v24 = [v23 countByEnumeratingWithState:&v102 objects:v121 count:16];
    if (v24)
    {
      v25 = *v103;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v103 != v25)
          {
            objc_enumerationMutation(v23);
          }

          v27 = self->_mdata;
          v28 = [(MFSMTPConnection *)self dataForRcptTo:*(*(&v102 + 1) + 8 * i)];
          [(NSMutableData *)v27 appendData:v28];
        }

        v24 = [v23 countByEnumeratingWithState:&v102 objects:v121 count:16];
      }

      while (v24);
    }

    v29 = [v23 count];
    if (!supportsChunking)
    {
      v30 = self->_mdata;
      dataForDataCmd = [(MFSMTPConnection *)self dataForDataCmd];
      [(NSMutableData *)v30 appendData:dataForDataCmd];
    }

    [(MFSMTPConnection *)self _sendData:self->_mdata];
    v32 = v29 + v22;
    if (!(v29 + v22))
    {
      v34 = 0;
      if (supportsChunking)
      {
        goto LABEL_59;
      }

      goto LABEL_87;
    }

    v33 = 0;
    v34 = 0;
    v96 = *MEMORY[0x1E699B760];
    v35 = 1;
    while (1)
    {
      _getReply = [(MFSMTPConnection *)self _getReply];
      if ((v35 & (_getReply - 4 < 0xFFFFFFFFFFFFFFFELL)) == 1)
      {
        break;
      }

LABEL_35:
      --v33;
      if (!--v32)
      {
        if ((v35 & (_getReply == 3 || supportsChunking) & 1) == 0)
        {
          goto LABEL_87;
        }

LABEL_59:
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained setPercentDone:0.2];

        if (supportsChunking)
        {
          v65 = [(MFSMTPConnection *)self sendBData:dataCopy];
        }

        else
        {
          v65 = [(MFSMTPConnection *)self sendData:dataCopy];
        }

        v66 = v65;
        if (v65 == 2)
        {
          goto LABEL_87;
        }

        if (([v90 shouldCancel] & 1) == 0)
        {
          if (v66 == 4)
          {
            lastResponse = self->_lastResponse;
            v78 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_LATER", @"Mail will try to send the message again later.", @"Delayed");
            v79 = [(MFSMTPResponse *)lastResponse errorMessageWithAddress:v94 defaultMessage:v78];
            v34 = 2;
          }

          else
          {
            if (v66 == 5)
            {
              v34 = 7;
            }

            else
            {
              v34 = 1;
            }

            v80 = self->_lastResponse;
            v78 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
            v79 = [(MFSMTPResponse *)v80 errorMessageWithAddress:v94 defaultMessage:v78];
          }

          *message = v79;

          lastResponseLine = [(MFSMTPConnection *)self lastResponseLine];
          goto LABEL_105;
        }

LABEL_93:
        v34 = 4;
        goto LABEL_87;
      }
    }

    if (v33)
    {
      v37 = supportsChunking;
      if (v32 != 1)
      {
        v37 = 1;
      }

      if (v37)
      {
        if (error)
        {
          *error = 1;
        }

        *code = 1049;
        *message = [(MFSMTPConnection *)self _invalidRecipientsErrorMessageWithRecipients:v23];
        v38 = v23;
        goto LABEL_29;
      }

      v41 = self->_lastResponse;
      v42 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
      *message = [(MFSMTPResponse *)v41 errorMessageWithAddress:0 defaultMessage:v42];
    }

    else
    {
      *code = 1047;
      v39 = self->_lastResponse;
      v40 = MFLookupLocalizedString(@"SMTP_INVALID_SENDER_ADDRESS", @"The sender address “%@” was rejected by the server.", @"Delayed");
      *message = [(MFSMTPResponse *)v39 errorMessageWithAddress:v94 defaultMessage:v40];
    }

    v38 = 0;
LABEL_29:
    *response = [(MFSMTPConnection *)self lastResponseLine];
    if (info)
    {
      if (v38)
      {
        v120[0] = v38;
        v119[0] = @"MFInvalidRecipientEmailAddresses";
        v119[1] = v96;
        v117 = @"MFSMTPFailureReason";
        v43 = MFMFSMTPFailureReasonString([(MFSMTPResponse *)self->_lastResponse failureReason]);
        v118 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v118 forKeys:&v117 count:1];
        v120[1] = v44;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v120 forKeys:v119 count:2];
      }

      else
      {
        v115 = v96;
        v113 = @"MFSMTPFailureReason";
        v43 = MFMFSMTPFailureReasonString([(MFSMTPResponse *)self->_lastResponse failureReason]);
        v114 = v43;
        v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v114 forKeys:&v113 count:1];
        v116 = v44;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      }
      *info = ;
    }

    v35 = 0;
    v34 = 1;
    goto LABEL_35;
  }

  if ([(MFSMTPConnection *)self mailFrom:v94 emailFormatStyle:style]!= 2)
  {
    *code = 1047;
    v61 = self->_lastResponse;
    v62 = MFLookupLocalizedString(@"SMTP_INVALID_SENDER_ADDRESS", @"The sender address “%@” was rejected by the server.", @"Delayed");
    *message = [(MFSMTPResponse *)v61 errorMessageWithAddress:v94 defaultMessage:v62];

    lastResponseLine2 = [(MFSMTPConnection *)self lastResponseLine];
LABEL_57:
    *response = lastResponseLine2;
LABEL_86:
    v34 = 1;
    goto LABEL_87;
  }

  v45 = objc_loadWeakRetained(&self->_delegate);
  [v45 setPercentDone:0.15];

  v46 = [v92 count];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v47 = v92;
  v48 = [v47 countByEnumeratingWithState:&v97 objects:v112 count:16];
  v93 = v47;
  v49 = 0;
  v50 = 0;
  if (v48)
  {
    status = 0;
    v52 = *v98;
    v53 = (0.05 / v46);
    v54 = 0.150000006;
    v55 = 0x1E7A9F000uLL;
    while (1)
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v98 != v52)
        {
          objc_enumerationMutation(v47);
        }

        v101 = 0xAAAAAAAAAAAAAAAALL;
        v101 = *(*(&v97 + 1) + 8 * j);
        if ([(MFSMTPConnection *)self rcptTo:?]== 2)
        {
          v57 = objc_loadWeakRetained(&self->_delegate);
          v54 = v54 + v53;
          [v57 setPercentDone:v54];
          ++v50;
          goto LABEL_53;
        }

        if (v49)
        {
          [v49 addObject:v101];
          if (status)
          {
            goto LABEL_51;
          }
        }

        else
        {
          v49 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithObjects:&v101 count:1];
          if (status)
          {
            goto LABEL_51;
          }
        }

        status = [(MFSMTPResponse *)self->_lastResponse status];
        *response = [(MFSMTPConnection *)self lastResponseLine];
LABEL_51:
        v57 = [*(v55 + 1696) log];
        if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
        {
          v58 = v101;
          lastResponseLine3 = [(MFSMTPConnection *)self lastResponseLine];
          *buf = 138412546;
          *v111 = v58;
          *&v111[8] = 2112;
          *&v111[10] = lastResponseLine3;
          _os_log_error_impl(&dword_1B0389000, v57, OS_LOG_TYPE_ERROR, "SMTP error for recipient %@: %@", buf, 0x16u);

          v47 = v93;
          v55 = 0x1E7A9F000;
        }

LABEL_53:
      }

      v48 = [v47 countByEnumeratingWithState:&v97 objects:v112 count:16];
      if (!v48)
      {
        v60 = status == 0;
        goto LABEL_68;
      }
    }
  }

  v60 = 1;
  v55 = 0x1E7A9F000uLL;
LABEL_68:

  v67 = [*(v55 + 1696) log];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *v111 = v50;
    *&v111[4] = 2112;
    *&v111[6] = v49;
    _os_log_impl(&dword_1B0389000, v67, OS_LOG_TYPE_DEFAULT, "SMTP delivery:%d valid recipients; invalid recipients = %@", buf, 0x12u);
  }

  if (!v60)
  {
    if ([v49 count])
    {
      if (error)
      {
        *error = 1;
      }

      *code = 1049;
      *message = [(MFSMTPConnection *)self _invalidRecipientsErrorMessageWithRecipients:v49];
      v70 = v49;
      v71 = v70;
      if (info && v70)
      {
        v108 = @"MFInvalidRecipientEmailAddresses";
        v109 = v70;
        *info = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v109 forKeys:&v108 count:1];
      }
    }

    else
    {
      *code = 1049;
      v72 = self->_lastResponse;
      v73 = MFLookupLocalizedString(@"SMTP_RECIPIENTS_UNRECOGNIZED", @"Verify that you have addressed this message correctly. Check your SMTP server settings in Mail Preferences and verify any advanced settings with your system administrator.", @"Delayed");
      *message = [(MFSMTPResponse *)v72 errorMessageWithAddress:0 defaultMessage:v73];

      v71 = 0;
    }

    goto LABEL_86;
  }

  if (supportsChunking)
  {
    v68 = [(MFSMTPConnection *)self sendBData:dataCopy];
    goto LABEL_73;
  }

  if ([(MFSMTPConnection *)self _sendCommand:"DATA" length:4 argument:0 trailer:0]!= 2 || [(MFSMTPConnection *)self _getReply]!= 3)
  {
    [(MFSMTPResponse *)self->_lastResponse setStatus:550];
    v75 = self->_lastResponse;
    v76 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
    *message = [(MFSMTPResponse *)v75 errorMessageWithAddress:0 defaultMessage:v76];

    lastResponseLine2 = [(MFSMTPConnection *)self lastResponseLine];
    goto LABEL_57;
  }

  v68 = [(MFSMTPConnection *)self sendData:dataCopy];
LABEL_73:
  v69 = v68;
  if (v68 == 2)
  {
    v34 = 0;
  }

  else
  {
    if ([v90 shouldCancel])
    {
      goto LABEL_93;
    }

    if (v69 == 4)
    {
      v82 = self->_lastResponse;
      v83 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_LATER", @"Mail will try to send the message again later.", @"Delayed");
      v84 = [(MFSMTPResponse *)v82 errorMessageWithAddress:v94 defaultMessage:v83];
      v34 = 2;
    }

    else
    {
      if (v69 == 5)
      {
        v34 = 7;
      }

      else
      {
        v34 = 1;
      }

      v85 = self->_lastResponse;
      v83 = MFLookupLocalizedString(@"SMTP_SENDING_CONTENT_FAILED", @"Sending the message content to the server failed.", @"Delayed");
      v84 = [(MFSMTPResponse *)v85 errorMessageWithAddress:v94 defaultMessage:v83];
    }

    *message = v84;

    lastResponseLine = [(MFSMTPConnection *)self lastResponseLine];
LABEL_105:
    *response = lastResponseLine;
  }

LABEL_87:
  if (*message && !*title)
  {
    *title = MFLookupLocalizedString(@"SMTP_SENDING_FAILED_TITLE", @"Unable to Send Email", @"Delayed");
  }

  return v34;
}

id __147__MFSMTPConnection_mailFrom_recipients_withData_host_emailFormatStyle_errorTitle_errorMessage_serverResponse_displayError_errorCode_errorUserInfo___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) stringFromEmailAddressConvertible:a2];

  return v2;
}

- (unint64_t)_sendBytes:(const char *)bytes length:(unint64_t)length progressHandler:(id)handler
{
  handlerCopy = handler;
  v9 = handlerCopy;
  lengthCopy3 = length;
  if (handlerCopy)
  {
    v11 = (*(handlerCopy + 2))(handlerCopy, 0);
    if (v11 >= length)
    {
      lengthCopy2 = length;
    }

    else
    {
      lengthCopy2 = v11;
    }

    if (v11)
    {
      lengthCopy3 = lengthCopy2;
    }

    else
    {
      lengthCopy3 = length;
    }
  }

  if (length)
  {
    v13 = 4;
    while (1)
    {
      v14 = self->_hideLoggedData ? 0 : 0x7FFFFFFFFFFFFFFFLL;
      v15 = self->_hideLoggedData ? lengthCopy3 : 0;
      if (![(MFConnection *)self writeBytes:bytes length:lengthCopy3 dontLogBytesInRange:v14, v15])
      {
        break;
      }

      length -= lengthCopy3;
      if (v9)
      {
        v16 = v9[2](v9, lengthCopy3);
        if (v16 >= length)
        {
          lengthCopy6 = length;
        }

        else
        {
          lengthCopy6 = v16;
        }

        if (!v16)
        {
          lengthCopy6 = length;
        }
      }

      else if (lengthCopy3 >= length)
      {
        lengthCopy6 = length;
      }

      else
      {
        lengthCopy6 = lengthCopy3;
      }

      bytes += lengthCopy3;
      lengthCopy3 = lengthCopy6;
      if (!length)
      {
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v13 = 2;
  }

  [(MFSMTPConnection *)self _setLastResponse:0];

  return v13;
}

- (unint64_t)_sendData:(id)data
{
  dataCopy = data;
  v5 = -[MFSMTPConnection _sendBytes:length:progressHandler:](self, "_sendBytes:length:progressHandler:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0);

  return v5;
}

- (unint64_t)_sendData:(id)data progressHandler:(id)handler
{
  dataCopy = data;
  handlerCopy = handler;
  v8 = -[MFSMTPConnection _sendBytes:length:progressHandler:](self, "_sendBytes:length:progressHandler:", [dataCopy bytes], objc_msgSend(dataCopy, "length"), handlerCopy);

  return v8;
}

- (id)_dataForCommand:(const char *)command length:(unint64_t)length argument:(id)argument trailer:(const char *)trailer
{
  argumentCopy = argument;
  data = [MEMORY[0x1E69AD730] data];
  v11 = data;
  if (command)
  {
    [data appendBytes:command length:length];
  }

  precomposedStringWithCanonicalMapping = [argumentCopy precomposedStringWithCanonicalMapping];
  uTF8String = [precomposedStringWithCanonicalMapping UTF8String];

  if (uTF8String)
  {
    [v11 mf_appendCString:uTF8String];
  }

  if (trailer)
  {
    [v11 appendBytes:trailer length:strlen(trailer)];
  }

  [v11 appendBytes:"\r\n" length:2];

  return v11;
}

- (unint64_t)_sendCommand:(const char *)command length:(unint64_t)length argument:(id)argument trailer:(const char *)trailer
{
  argumentCopy = argument;
  self->_lastCommandTimestamp = time(0);
  [(NSMutableData *)self->_mdata setLength:0];
  mdata = self->_mdata;
  v12 = [(MFSMTPConnection *)self _dataForCommand:command length:length argument:argumentCopy trailer:trailer];
  [(NSMutableData *)mdata appendData:v12];

  v13 = [(MFSMTPConnection *)self _sendData:self->_mdata];
  return v13;
}

- (unint64_t)_getReply
{
  v3 = 0;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 1;
  v4 = 0x28F5C28F5C28F5C3;
  v5 = &unk_1B0E97908;
  while (1)
  {
    v6 = [(MFSMTPConnection *)self _readResponseRange:&v18 isContinuation:&v17];
    v7 = v6 > 0x257 ? 6 : *&v5[(2 * (((v6 >> 2) * v4) >> 64)) & 0x1FFFFFFFFFFFFFF8];
    v8 = [[MFSMTPResponse alloc] initWithStatus:v6];
    v9 = v8;
    if (v7 == 2)
    {
      [(MFSMTPResponse *)v8 setLastResponseLine:0];
    }

    else
    {
      if (v18 == 0x7FFFFFFFFFFFFFFFLL || !v19)
      {
        v11 = v5;
        v12 = v4;
        v13 = objc_alloc(MEMORY[0x1E696AEC0]);
        v14 = MFLookupLocalizedString(@"SMTP_GENERIC_ERROR_FORMAT", @"An error occurred while delivering this message via the SMTP server “%@”", @"Delayed");
        remoteHostname = [(MFNWConnectionWrapper *)self->super._socket remoteHostname];
        v10 = [v13 initWithFormat:v14, remoteHostname];

        [(MFSMTPResponse *)v9 setLastResponseLine:v10];
        v4 = v12;
        v5 = v11;
      }

      else
      {
        v10 = [(NSMutableData *)self->_mdata subdataWithRange:?];
        [(MFSMTPResponse *)v9 setLastResponseLine:v10];
      }
    }

    if (v17 != 1)
    {
      break;
    }

    if (v3)
    {
      [v3 addObject:v9];
    }

    else
    {
      v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
    }

    if ((v17 & 1) == 0)
    {
      v9 = 0;
      break;
    }
  }

  [(MFSMTPResponse *)v9 setContinuationResponses:v3];
  [(MFSMTPConnection *)self _setLastResponse:v9];

  return v7;
}

- (unint64_t)_readResponseRange:(_NSRange *)range isContinuation:(BOOL *)continuation
{
  *range = xmmword_1B0E97710;
  [(NSMutableData *)self->_mdata setLength:0];
  if (![(MFConnection *)self readLineIntoData:self->_mdata])
  {
    LOBYTE(v16) = 0;
    v21 = 0;
    if (!continuation)
    {
      return v21;
    }

LABEL_12:
    *continuation = v16;
    return v21;
  }

  bytes = [(NSMutableData *)self->_mdata bytes];
  v8 = [(NSMutableData *)self->_mdata length];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__MFSMTPConnection__readResponseRange_isContinuation___block_invoke;
  block[3] = &unk_1E7AA33B0;
  block[4] = self;
  block[5] = a2;
  if (_readResponseRange_isContinuation__once != -1)
  {
    dispatch_once(&_readResponseRange_isContinuation__once, block);
  }

  v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytesNoCopy:bytes length:v8 encoding:1 freeWhenDone:0];
  v9 = [_readResponseRange_isContinuation___responseRegex firstMatchInString:v25 options:0 range:{0, v8}];
  v10 = v9;
  if (v9)
  {
    if ([v9 numberOfRanges] != 4)
    {
      __assert_rtn("[MFSMTPConnection _readResponseRange:isContinuation:]", "MFSMTPConnection.m", 930, "[match numberOfRanges] == 4");
    }

    [v10 range];
    v12 = v11;
    v24 = [v10 rangeAtIndex:1];
    v14 = v13;
    v23 = [v10 rangeAtIndex:2];
    v16 = v15;
    v17 = [v10 rangeAtIndex:3];
    if (v12 && v14 && (v19 = v17, v17 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v20 = v18;
      v21 = strtoul((bytes + v24), 0, 10);
      if (v16)
      {
        LOBYTE(v16) = *(bytes + v23) == 45;
      }
    }

    else
    {
      v20 = [(NSMutableData *)self->_mdata length];
      v19 = 0;
      LOBYTE(v16) = 0;
      v21 = 550;
    }

    range->location = v19;
    range->length = v20;
  }

  else
  {
    LOBYTE(v16) = 0;
    v21 = 0;
  }

  if (continuation)
  {
    goto LABEL_12;
  }

  return v21;
}

void __54__MFSMTPConnection__readResponseRange_isContinuation___block_invoke(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696AE70]) initWithPattern:@"^([0-9]+)([- ])?(.*)$" options:16 error:0];
  v3 = _readResponseRange_isContinuation___responseRegex;
  _readResponseRange_isContinuation___responseRegex = v2;

  if (!_readResponseRange_isContinuation___responseRegex)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"MFSMTPConnection.m" lineNumber:923 description:{@"Unable to init regular expression from %@", @"^([0-9]+)([- ])?(.*)$"}];
  }
}

- (BOOL)_connectUsingAccount:(id)account
{
  accountCopy = account;
  [(MFSMTPConnection *)self _setLastResponse:0];
  v21.receiver = self;
  v21.super_class = MFSMTPConnection;
  v5 = [(MFConnection *)&v21 connectUsingAccount:accountCopy];
  socket = self->super._socket;
  if (v5)
  {
    timeout = [(MFNWConnectionWrapper *)socket timeout];
    self->_originalSocketTimeout = timeout;
    if (timeout >= 1)
    {
      if (timeout <= 0x12C)
      {
        v8 = 300;
      }

      else
      {
        v8 = timeout;
      }

      [(MFNWConnectionWrapper *)self->super._socket setTimeout:v8];
    }

    if ([(MFSMTPConnection *)self _getReply]== 2)
    {
      v9 = 1;
      goto LABEL_15;
    }
  }

  else
  {
    self->super._socket = 0;
  }

  v10 = +[MFActivityMonitor currentMonitor];
  error = [v10 error];

  if (error && [error code] != 1029)
  {
    v17 = error;
  }

  else
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = MFLookupLocalizedString(@"FAILED_SEND", @"Check the account settings for the outgoing server “%@”.", @"Delayed");
    hostname = [accountCopy hostname];
    v15 = [v12 stringWithFormat:v13, hostname];

    v16 = MFLookupLocalizedString(@"FAILED_SEND_TITLE", @"Cannot Send Mail", @"Delayed");
    v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1031 localizedDescription:v15 title:v16 userInfo:0];

    v18 = +[MFActivityMonitor currentMonitor];
    [v18 setError:v17];
  }

  v19 = self->super._socket;
  self->super._socket = 0;

  v9 = 0;
LABEL_15:

  return v9;
}

- (unint64_t)_doHandshakeUsingAccount:(id)account
{
  v47 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  v40 = 1;
  v4 = +[MFSMTPConnection log];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy7 = self;
    v43 = 2114;
    v44 = @"smtpclient.apple";
    _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: Trying EHLO using clientDomainName [%{public}@]", buf, 0x16u);
  }

  _getReply = [(MFSMTPConnection *)self _sendCommand:"EHLO " length:5 argument:@"smtpclient.apple" trailer:0];
  if (_getReply != 2)
  {
    goto LABEL_39;
  }

  v5 = +[MFSMTPConnection log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy7 = self;
    v43 = 2114;
    v44 = @"smtpclient.apple";
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: EHLO using clientDomainName [%{public}@] - Success.", buf, 0x16u);
  }

  if (v40 == 1)
  {
    v7 = 1;
    *&v6 = 134218498;
    v33 = v6;
    v8 = 1;
    do
    {
      v38 = 0xAAAAAAAAAAAAAAAALL;
      v39 = 0xAAAAAAAAAAAAAAAALL;
      if ([(MFSMTPConnection *)self _readResponseRange:&v38 isContinuation:&v40, v33]== 250)
      {
        if (!(v8 & 1 | (v39 == 0)))
        {
          bytes = [(NSMutableData *)self->_mdata bytes];
          v10 = v39;
          v11 = bytes + v38;
          v37 = (bytes + v38);
          strcpy(v36, "AUTH=");
          if (v39 >= 6 && !strncasecmp((bytes + v38), v36, 5uLL))
          {
            v12 = _createParameterStringFromBytes(&v37, (v11 + 5));
          }

          else
          {
            v12 = _createParameterStringFromBytes(&v37, (v11 + v10));
          }

          v13 = v12;
          v14 = +[MFSMTPConnection log];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            selfCopy7 = self;
            v43 = 2112;
            v44 = v13;
            _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: Current keyword: %@", buf, 0x16u);
          }

          if (v13)
          {
            v15 = 0;
            for (i = 0; ; [(__CFString *)i addObject:v17])
            {
              v17 = _createParameterStringFromBytes(&v37, (v11 + v10));

              if (!v17)
              {
                break;
              }

              v15 = v17;
              if (!i)
              {
                i = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:5];
              }
            }

            serviceExtensions = self->_serviceExtensions;
            if (!serviceExtensions)
            {
              v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
              v21 = self->_serviceExtensions;
              self->_serviceExtensions = v20;

              serviceExtensions = self->_serviceExtensions;
            }

            [(NSMutableArray *)serviceExtensions addObject:v13];
            v22 = +[MFSMTPConnection log];
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218242;
              selfCopy7 = self;
              v43 = 2112;
              v44 = v13;
              _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: Service extension added keyword: %@", buf, 0x16u);
            }

            v23 = self->_serviceExtensions;
            if (i)
            {
              [(NSMutableArray *)self->_serviceExtensions addObject:i];
              array = +[MFSMTPConnection log];
              if (os_log_type_enabled(array, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                selfCopy7 = self;
                v43 = 2112;
                v44 = i;
                _os_log_impl(&dword_1B0389000, array, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: Service extension added params: %@", buf, 0x16u);
              }
            }

            else
            {
              array = [MEMORY[0x1E695DEC8] array];
              [(NSMutableArray *)v23 addObject:array];
            }
          }
        }

        v8 = 0;
        v7 = 0;
      }

      else if ([(MFSMTPResponse *)self->_lastResponse status]!= 500)
      {
        v18 = +[MFSMTPConnection log];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v25 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:-[NSMutableData bytes](self->_mdata length:"bytes") encoding:{-[NSMutableData length](self->_mdata, "length"), 4}];
          *buf = v33;
          selfCopy7 = self;
          v43 = 2114;
          v44 = @"smtpclient.apple";
          v45 = 2112;
          v46 = v25;
          _os_log_error_impl(&dword_1B0389000, v18, OS_LOG_TYPE_ERROR, "MFSMTPConnection[%p]: Got unexpected EHLO response using clientDomainName [%{public}@] ESMTP params %@", buf, 0x20u);
        }

        v40 = 0;
      }
    }

    while ((v40 & 1) != 0);
  }

  else
  {
LABEL_39:
    v7 = 1;
  }

  if ([accountCopy usesSSL])
  {
    v26 = +[MFActivityMonitor currentMonitor];
    error = [v26 error];
    domain = [error domain];
    v29 = [*MEMORY[0x1E696A8B8] isEqualToString:domain];

    if (v29 & 1) != 0 || ((v7 ^ 1))
    {
      goto LABEL_57;
    }
  }

  else if ((v7 & 1) == 0)
  {
    goto LABEL_57;
  }

  v30 = +[MFSMTPConnection log];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    selfCopy7 = self;
    v43 = 2114;
    v44 = @"smtpclient.apple";
    _os_log_impl(&dword_1B0389000, v30, OS_LOG_TYPE_DEFAULT, "MFSMTPConnection[%p]: EHLO using clientDomainName [%{public}@] - Failed. Falling back to HELO", buf, 0x16u);
  }

  if (![(MFNWConnectionWrapper *)self->super._socket isWritable])
  {
    goto LABEL_54;
  }

  if ([(MFSMTPConnection *)self _sendCommand:"RSET" length:4 argument:0 trailer:0]== 2)
  {
    [(MFSMTPConnection *)self _getReply];
  }

  if ([(MFNWConnectionWrapper *)self->super._socket isWritable]&& [(MFSMTPConnection *)self _sendCommand:"HELO " length:5 argument:@"smtpclient.apple" trailer:0]== 2 && (_getReply = [(MFSMTPConnection *)self _getReply], _getReply == 2))
  {
    _getReply = 2;
  }

  else
  {
LABEL_54:
    [(MFNWConnectionWrapper *)self->super._socket close];
    socket = self->super._socket;
    self->super._socket = 0;

    if ([(MFSMTPConnection *)self _connectUsingAccount:accountCopy])
    {
      _getReply = [(MFSMTPConnection *)self _sendCommand:"HELO " length:5 argument:@"smtpclient.apple" trailer:0];
      if (_getReply == 2)
      {
        _getReply = [(MFSMTPConnection *)self _getReply];
      }
    }
  }

LABEL_57:

  return _getReply;
}

- (BOOL)_hasParameter:(id)parameter forKeyword:(id)keyword
{
  parameterCopy = parameter;
  keywordCopy = keyword;
  v8 = [(NSMutableArray *)self->_serviceExtensions count];
  uppercaseString = [parameterCopy uppercaseString];

  if (v8 >= 2)
  {
    v11 = 1;
    do
    {
      v12 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v11 - 1];
      v13 = [v12 caseInsensitiveCompare:keywordCopy];
      v10 = v13 == 0;

      if (v13)
      {
        v14 = 1;
      }

      else
      {
        v14 = uppercaseString == 0;
      }

      if (!v14)
      {
        v15 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v11];
        v10 = [v15 indexOfObject:uppercaseString] != 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v11 + 2 >= v8)
      {
        break;
      }

      v11 += 2;
    }

    while (!v10);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (BOOL)_supportsExtension:(id)extension
{
  v19 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  v5 = [(NSMutableArray *)self->_serviceExtensions count];
  v6 = +[MFSMTPConnection log];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(MFSMTPConnection *)self _supportsExtension:v18, [(NSMutableArray *)self->_serviceExtensions count], v6];
  }

  if (v5)
  {
    v8 = 0;
    *&v7 = 134218242;
    v13 = v7;
    do
    {
      v9 = [(NSMutableArray *)self->_serviceExtensions objectAtIndex:v8, v13];
      v10 = +[MFSMTPConnection log];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = v13;
        selfCopy = self;
        v16 = 2114;
        v17 = v9;
        _os_log_error_impl(&dword_1B0389000, v10, OS_LOG_TYPE_ERROR, "MFSMTPConnection[%p]: current keyword %{public}@", buf, 0x16u);
      }

      v11 = [v9 caseInsensitiveCompare:extensionCopy] == 0;
      v8 += 2;
    }

    while (v8 < v5 && !v11);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)lastResponseLine
{
  lastResponseLine = [(MFSMTPResponse *)self->_lastResponse lastResponseLine];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = lastResponseLine;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = lastResponseLine;
      v5 = CFStringCreateWithBytes(0, [v4 bytes], objc_msgSend(v4, "length"), 0x600u, 0);

      goto LABEL_7;
    }

    v3 = [lastResponseLine description];
  }

  v5 = v3;
LABEL_7:

  return v5;
}

- (id)_invalidRecipientsErrorMessageWithRecipients:(id)recipients
{
  recipientsCopy = recipients;
  if ([recipientsCopy count])
  {
    v4 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:recipientsCopy];
  }

  else
  {
    v4 = &stru_1F273A5E0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The recipients “%@” were rejected by the server.", v4];

  return v5;
}

- (void)_supportsExtension:(uint64_t)a3 .cold.1(uint64_t a1, uint8_t *buf, uint64_t a3, os_log_t log)
{
  *buf = 134218240;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "MFSMTPConnection[%p]: extensions count %lu", buf, 0x16u);
}

@end