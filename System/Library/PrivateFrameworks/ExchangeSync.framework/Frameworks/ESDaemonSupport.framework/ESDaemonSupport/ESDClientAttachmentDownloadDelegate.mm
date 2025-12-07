@interface ESDClientAttachmentDownloadDelegate
- (ESDClientAttachmentDownloadDelegate)initWithAccountID:(id)d attachmentUUID:(id)iD client:(id)client;
- (void)beginDownload;
- (void)dealloc;
- (void)downloadProgressDownloadedByteCount:(int64_t)count totalByteCount:(int64_t)byteCount;
- (void)finishWithError:(id)error;
@end

@implementation ESDClientAttachmentDownloadDelegate

- (ESDClientAttachmentDownloadDelegate)initWithAccountID:(id)d attachmentUUID:(id)iD client:(id)client
{
  iDCopy = iD;
  v12.receiver = self;
  v12.super_class = ESDClientAttachmentDownloadDelegate;
  v9 = [(ESDClientDelegate *)&v12 initWithAccountID:d client:client];
  v10 = v9;
  if (v9)
  {
    [(ESDClientAttachmentDownloadDelegate *)v9 setAttachmentUUID:iDCopy];
  }

  return v10;
}

- (void)dealloc
{
  [(ESDClientDelegate *)self disable];
  v3.receiver = self;
  v3.super_class = ESDClientAttachmentDownloadDelegate;
  [(ESDClientDelegate *)&v3 dealloc];
}

- (void)beginDownload
{
  v12 = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    v3 = +[ESDAgentManager sharedManager];
    accountID = [(ESDClientDelegate *)self accountID];
    v5 = [v3 accountWithAccountID:accountID];

    if (v5)
    {
      v6 = [v5 beginDownloadingAttachmentWithUUID:self->_attachmentUUID consumer:self];
      [(ESDClientAttachmentDownloadDelegate *)self setDownloadID:v6];
    }

    else
    {
      v7 = DALoggingwithCategory();
      v8 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v7, v8))
      {
        accountID2 = [(ESDClientDelegate *)self accountID];
        v10 = 138412290;
        v11 = accountID2;
        _os_log_impl(&dword_24A184000, v7, v8, "Could not get an account with the ID %@", &v10, 0xCu);
      }

      v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D038E0] code:55 userInfo:0];
      [(ESDClientAttachmentDownloadDelegate *)self finishWithError:v6];
    }
  }
}

- (void)downloadProgressDownloadedByteCount:(int64_t)count totalByteCount:(int64_t)byteCount
{
  v20[5] = *MEMORY[0x277D85DE8];
  if (![(DADisableableObject *)self isDisabled])
  {
    client = [(ESDClientDelegate *)self client];
    rawConnection = [client rawConnection];

    if (rawConnection)
    {
      v9 = *MEMORY[0x277D03C88];
      v20[0] = *MEMORY[0x277D03A28];
      v10 = *MEMORY[0x277D03A38];
      v19[0] = v9;
      v19[1] = v10;
      attachmentUUID = [(ESDClientAttachmentDownloadDelegate *)self attachmentUUID];
      v20[1] = attachmentUUID;
      v19[2] = *MEMORY[0x277D03A30];
      delegateID = [(ESDClientDelegate *)self delegateID];
      v18 = delegateID;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
      v20[2] = v13;
      v19[3] = *MEMORY[0x277D03B30];
      v14 = [MEMORY[0x277CCABB0] numberWithLongLong:count];
      v20[3] = v14;
      v19[4] = *MEMORY[0x277D03E90];
      v15 = [MEMORY[0x277CCABB0] numberWithLongLong:byteCount];
      v20[4] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:5];

      v17 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v17);
    }
  }
}

- (void)finishWithError:(id)error
{
  v32 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  if (![(DADisableableObject *)self isDisabled]&& ![(ESDClientDelegate *)self finished])
  {
    [(ESDClientDelegate *)self setFinished:1];
    v5 = DALoggingwithCategory();
    v6 = MEMORY[0x277D03988];
    v7 = *(MEMORY[0x277D03988] + 6);
    if (os_log_type_enabled(v5, v7))
    {
      *buf = 138412290;
      v31 = errorCopy;
      _os_log_impl(&dword_24A184000, v5, v7, "DADAttachmentDownloadDelegate finished with error %@", buf, 0xCu);
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:*MEMORY[0x277D038E0]])
    {
      code = [errorCopy code];

      if (code == -1)
      {
        v10 = +[ESDAgentManager sharedManager];
        accountID = [(ESDClientDelegate *)self accountID];
        rawConnection = [v10 accountWithAccountID:accountID];

        if (rawConnection)
        {
          [rawConnection cancelDownloadingInstance:self->_downloadID error:errorCopy];
        }

        else
        {
          v24 = DALoggingwithCategory();
          v25 = *(v6 + 3);
          if (os_log_type_enabled(v24, v25))
          {
            accountID2 = [(ESDClientDelegate *)self accountID];
            *buf = 138412290;
            v31 = accountID2;
            _os_log_impl(&dword_24A184000, v24, v25, "DADAttachmentDownloadDelegate finished, but could not find an account with the ID %@", buf, 0xCu);
          }
        }

LABEL_12:

        client = [(ESDClientDelegate *)self client];
        delegateID = [(ESDClientDelegate *)self delegateID];
        [client delegateWithIDIsGoingAway:delegateID];

        goto LABEL_13;
      }
    }

    else
    {
    }

    client2 = [(ESDClientDelegate *)self client];
    rawConnection = [client2 rawConnection];

    if (rawConnection)
    {
      v14 = *MEMORY[0x277D03C88];
      v29[0] = *MEMORY[0x277D03A18];
      v15 = *MEMORY[0x277D03A38];
      v28[0] = v14;
      v28[1] = v15;
      attachmentUUID = [(ESDClientAttachmentDownloadDelegate *)self attachmentUUID];
      v29[1] = attachmentUUID;
      v28[2] = *MEMORY[0x277D03A30];
      delegateID2 = [(ESDClientDelegate *)self delegateID];
      v27 = delegateID2;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
      v29[2] = v18;
      v28[3] = *MEMORY[0x277D03B40];
      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:errorCopy];
      v29[3] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:4];

      v21 = _CFXPCCreateXPCObjectFromCFObject();
      xpc_connection_send_message(rawConnection, v21);
    }

    goto LABEL_12;
  }

LABEL_13:
}

@end