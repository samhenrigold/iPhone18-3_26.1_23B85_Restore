@interface _MBLLoadForClientJob
+ (OS_os_log)signpostLog;
+ (id)log;
- (id)initForClient:(id)client forMBLMailbox:(id)mailbox;
- (unint64_t)signpostID;
- (void)run;
@end

@implementation _MBLLoadForClientJob

+ (OS_os_log)signpostLog
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045E90;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185738 != -1)
  {
    dispatch_once(&qword_100185738, block);
  }

  v2 = qword_100185730;

  return v2;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100045FF8;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185748 != -1)
  {
    dispatch_once(&qword_100185748, block);
  }

  v2 = qword_100185740;

  return v2;
}

- (void)run
{
  v3 = +[MFActivityMonitor currentMonitor];
  message = [(MBLSingleMessageClient *)self->_client message];
  v5 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:0];
  v6 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:1];
  v7 = [(MBLSingleMessageClient *)self->_client wantsContentsOfType:2];
  v8 = [NSString stringWithFormat:@"com.apple.mobilemail.messagebodyloader_job.client.%@", objc_opt_class()];
  v9 = +[MFPowerController sharedInstance];
  account = [message account];
  [v9 retainAssertionWithIdentifier:v8 withAccount:account];

  if ((v5 | v7))
  {
    summary = [message summary];
    if (summary)
    {
      v38 = 0;
    }

    else
    {
      v12 = +[_MBLLoadForClientJob signpostLog];
      signpostID = [(_MBLLoadForClientJob *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
      {
        messageID = [message messageID];
        *buf = 138412290;
        v40 = messageID;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v12, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "MBL COPY SUMMARY", "Message=%@", buf, 0xCu);
      }

      summary = [MessageBodyLoader copySummaryForMessage:message downloadIfNecessary:1];
      v15 = +[_MBLLoadForClientJob signpostLog];
      signpostID2 = [(_MBLLoadForClientJob *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, OS_SIGNPOST_INTERVAL_END, signpostID2, "MBL COPY SUMMARY", "", buf, 2u);
      }

      v38 = [(__CFString *)summary length]!= 0;
    }

    error = [v3 error];
    shouldCancel = [v3 shouldCancel];
    if ((error == 0) | shouldCancel & 1)
    {
      if (shouldCancel)
      {
        goto LABEL_30;
      }

LABEL_16:
      if ([message shouldSetSummary])
      {
        v21 = &stru_10015BEC8;
        if (summary)
        {
          v21 = summary;
        }

        v22 = v21;

        v23 = +[_MBLLoadForClientJob signpostLog];
        signpostID3 = [(_MBLLoadForClientJob *)self signpostID];
        if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          messageID2 = [message messageID];
          *buf = 138412290;
          v40 = messageID2;
          v37 = messageID2;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v23, OS_SIGNPOST_INTERVAL_BEGIN, signpostID3, "MBL WRITE SUMMARY", "Message=%@", buf, 0xCu);
        }

        [message setSummary:v22];
        v26 = +[_MBLLoadForClientJob signpostLog];
        signpostID4 = [(_MBLLoadForClientJob *)self signpostID];
        if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v26, OS_SIGNPOST_INTERVAL_END, signpostID4, "MBL WRITE SUMMARY", "", buf, 2u);
        }

        summary = v22;
      }

      [(MBLSingleMessageClient *)self->_client notifyContentsAvailable:summary forMessage:message];
      if ((v7 & 1) != 0 || v38 && ([message messageFlags] & 1) == 0)
      {
        mailbox = [message mailbox];
        mailboxType = [mailbox mailboxType];

        if ((mailboxType & 0xFFFFFFFFFFFFFFFDLL) != 1)
        {
          v30 = +[MessageAddressScanner sharedInstance];
          [v30 scanSummary:summary forMessage:message];
        }
      }

      goto LABEL_31;
    }

    domain = [error domain];
    if ([MFMessageErrorDomain isEqualToString:domain])
    {
      v20 = [error code] == 1036;

      if (v20)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

LABEL_30:
    [(MBLSingleMessageClient *)self->_client notifyContentsUnavailableForMessage:message error:error];
LABEL_31:
  }

  if (v6)
  {
    v31 = [MFMessageLoadingContext alloc];
    v32 = +[MessageBodyLoader attachmentManager];
    v33 = [v31 initWithMessage:message attachmentManager:v32];

    v34 = +[EFScheduler immediateScheduler];
    [v33 load:1 scheduler:v34];

    if ([v3 shouldCancel])
    {
      error2 = [v3 error];
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsUnavailableForMessage:message error:error2];
    }

    else
    {
      [(MBLSingleMessageClient *)self->_client notifyFullMessageContentsAvailableForMessage:message];
    }
  }

  v36 = +[MFPowerController sharedInstance];
  [v36 releaseAssertionWithIdentifier:v8];
}

- (id)initForClient:(id)client forMBLMailbox:(id)mailbox
{
  clientCopy = client;
  mailboxCopy = mailbox;
  v12.receiver = self;
  v12.super_class = _MBLLoadForClientJob;
  v9 = [(_MBLLoadForClientJob *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    objc_storeWeak(p_isa + 1, mailboxCopy);
  }

  return p_isa;
}

@end