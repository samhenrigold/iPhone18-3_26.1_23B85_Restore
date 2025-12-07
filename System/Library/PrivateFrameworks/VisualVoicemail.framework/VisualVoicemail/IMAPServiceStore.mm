@interface IMAPServiceStore
- (BOOL)shouldRetryEmptyBodyDownloadForMessage:(id)message;
- (IMAPServiceStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only;
- (unsigned)connectionBodyDataReadChunkSize:(id)size;
- (void)_handleFlagsDidChange:(id)change;
- (void)doCompact;
- (void)messageFlagsDidChange:(id)change flags:(id)flags;
- (void)setMailboxUidValidity:(unsigned int)validity;
@end

@implementation IMAPServiceStore

- (IMAPServiceStore)initWithMailboxUid:(id)uid readOnly:(BOOL)only
{
  onlyCopy = only;
  uidCopy = uid;
  v14.receiver = self;
  v14.super_class = IMAPServiceStore;
  v7 = [(IMAPServiceStore *)&v14 initWithMailboxUid:uidCopy readOnly:onlyCopy];
  v8 = v7;
  if (v7)
  {
    account = [(IMAPServiceStore *)v7 account];
    v10 = [account uidValidityForMailbox:uidCopy];

    *&v8->_imapServiceStoreFlags |= 1u;
    [(IMAPServiceStore *)v8 setMailboxUidValidity:v10];
    *&v8->_imapServiceStoreFlags &= ~1u;
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v8 selector:"_handleFlagsDidChange:" name:MailMessageStoreMessageFlagsChanged object:0];

    account2 = [(IMAPServiceStore *)v8 account];
    [(IMAPServiceStore *)v8 setDownloadDelegate:account2];
  }

  return v8;
}

- (void)setMailboxUidValidity:(unsigned int)validity
{
  v3 = *&validity;
  v5 = sub_1000026FC(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(IMAPServiceStore *)self mailboxUid];
    mambaID = [mailboxUid mambaID];
    imapServiceStoreFlags = self->_imapServiceStoreFlags;
    *buf = 136315906;
    if (imapServiceStoreFlags)
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    v14 = mambaID;
    v15 = 2080;
    v16 = " ";
    v17 = 1024;
    v18 = v3;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%ssetMailboxUidValidity validity %u settingLocalValidity %@", buf, 0x26u);
  }

  if ((*&self->_imapServiceStoreFlags & 1) == 0)
  {
    account = [(IMAPServiceStore *)self account];
    mailboxUid2 = [(IMAPServiceStore *)self mailboxUid];
    [account setUidValidity:v3 forMailbox:mailboxUid2];
  }

  v12.receiver = self;
  v12.super_class = IMAPServiceStore;
  [(IMAPServiceStore *)&v12 setMailboxUidValidity:v3];
}

- (unsigned)connectionBodyDataReadChunkSize:(id)size
{
  account = [(IMAPServiceStore *)self account];
  readBufferSize = [account readBufferSize];

  return readBufferSize;
}

- (void)doCompact
{
  v5.receiver = self;
  v5.super_class = IMAPServiceStore;
  [(IMAPServiceStore *)&v5 doCompact];
  v3 = *&self->MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library];
  uRLString = [(IMAPServiceStore *)self URLString];
  [v3 compactMailbox:uRLString];
}

- (BOOL)shouldRetryEmptyBodyDownloadForMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [*&self->MFLibraryIMAPStore_opaque[OBJC_IVAR___MFLibraryStore__library] copyStoreRecordForMessage:messageCopy];
    v6 = +[MFActivityMonitor currentTracebleMonitor];
    primaryTarget = [v6 primaryTarget];

    if (v5 != primaryTarget || (v9 = +[IMAPServiceActivityController remainingBodyRetries]) == 0)
    {
      v8 = 0;
      if (!v5)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    [IMAPServiceActivityController setRemainingBodyRetries:v9 - 1];
    v8 = 1;
    if (v5)
    {
LABEL_8:
      CFRelease(v5);
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_9:

  return v8;
}

- (void)messageFlagsDidChange:(id)change flags:(id)flags
{
  changeCopy = change;
  flagsCopy = flags;
  v8 = sub_1000026FC(flagsCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(IMAPServiceStore *)self mailboxUid];
    v10 = 136315906;
    mambaID = [mailboxUid mambaID];
    v12 = 2080;
    v13 = " ";
    v14 = 2112;
    v15 = changeCopy;
    v16 = 2112;
    v17 = flagsCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%s======== messageFlagsDidChange: %@, flags: %@", &v10, 0x2Au);
  }
}

- (void)_handleFlagsDidChange:(id)change
{
  changeCopy = change;
  v5 = sub_1000026FC(changeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    mailboxUid = [(IMAPServiceStore *)self mailboxUid];
    v7 = 136315650;
    mambaID = [mailboxUid mambaID];
    v9 = 2080;
    v10 = " ";
    v11 = 2112;
    v12 = changeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%s======== IMAPServiceStore _handleFlagsDidChange: %@", &v7, 0x20u);
  }
}

@end