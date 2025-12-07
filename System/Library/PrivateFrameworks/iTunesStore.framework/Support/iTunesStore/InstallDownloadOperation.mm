@interface InstallDownloadOperation
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
@end

@implementation InstallDownloadOperation

- (void)run
{
  download = [(FinishDownloadStepOperation *)self download];
  downloadKind = [download downloadKind];
  if (SSDownloadKindIsSoftwareKind())
  {
    v5 = off_100325218;
  }

  else if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsPodcastKind())
  {
    v5 = off_100325208;
  }

  else
  {
    v5 = off_100325200;
    if ((SSDownloadKindIsEBookKind() & 1) == 0)
    {
      if (SSDownloadKindIsToneKind())
      {
        v5 = off_100325220;
      }

      else if ([downloadKind isEqualToString:SSDownloadKindInAppContent])
      {
        v5 = off_100325210;
      }

      else
      {
        documentTargetIdentifier = [download documentTargetIdentifier];
        v31 = [documentTargetIdentifier isEqualToString:@"com.apple.iBooks"];

        if (!v31)
        {
          v5 = off_1003251F8;
        }
      }
    }
  }

  v6 = [objc_alloc(*v5) initWithDownload:download];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_100176DF8;
  v38 = sub_100176E08;
  v39 = 0;
  if (!v6)
  {
    v15 = +[SSLogConfig sharedDaemonConfig];
    if (!v15)
    {
      v15 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v16) = [v15 shouldLog];
    shouldLogToDisk = [v15 shouldLogToDisk];
    oSLogObject = [v15 OSLogObject];
    v19 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v16) = v16 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      v20 = objc_opt_class();
      databaseID = [download databaseID];
      v40 = 138412546;
      v41 = v20;
      v42 = 2048;
      v43 = databaseID;
      v22 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, v19, 0, "%@: No installer for download: %lld", &v40, 22);

      if (!v22)
      {
LABEL_30:

        v23 = objc_alloc_init(FinishDownloadResponse);
        v24 = v35[5];
        v35[5] = v23;

        [v35[5] setDownloadIdentifier:{objc_msgSend(download, "databaseID")}];
        v25 = v35[5];
        mediaAsset = [download mediaAsset];
        [v25 setMediaAssetIdentifier:{objc_msgSend(mediaAsset, "databaseID")}];

        [v35[5] setResult:0];
        v27 = v35[5];
        v28 = SSError();
        [v27 setError:v28];

        v29 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
        [v35[5] setDownloadHandle:v29];

        goto LABEL_31;
      }

      v19 = [NSString stringWithCString:v22 encoding:4];
      free(v22);
      v32 = v19;
      SSFileLog();
    }

    goto LABEL_30;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  LODWORD(v8) = [v7 shouldLog];
  shouldLogToDisk2 = [v7 shouldLogToDisk];
  oSLogObject2 = [v7 OSLogObject];
  v11 = oSLogObject2;
  if (shouldLogToDisk2)
  {
    LODWORD(v8) = v8 | 2;
  }

  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v12 = objc_opt_class();
  databaseID2 = [download databaseID];
  v40 = 138412802;
  v41 = v12;
  v42 = 2048;
  v43 = databaseID2;
  v44 = 2112;
  v45 = v6;
  v14 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v11, 1, "%@: Running install for download: %lld using operation: %@", &v40, 32);

  if (v14)
  {
    v11 = [NSString stringWithCString:v14 encoding:4];
    free(v14);
    v32 = v11;
    SSFileLog();
LABEL_17:
  }

  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100176E10;
  v33[3] = &unk_10032A370;
  v33[4] = &v34;
  [v6 setOutputBlock:v33];
  [v6 setDelegate:self];
  [(InstallDownloadOperation *)self runSubOperation:v6 returningError:0];
  [v6 setDelegate:0];
LABEL_31:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v35[5], v32];
  _Block_object_dispose(&v34, 8);
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [progress copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    delegate = [(InstallDownloadOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

@end