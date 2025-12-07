@interface InstallMicroPaymentDownloadOperation
- (void)run;
@end

@implementation InstallMicroPaymentDownloadOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v5 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:v5];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  clientIdentifier = [download clientIdentifier];
  if (clientIdentifier)
  {
    downloadKind = [download downloadKind];
    v37 = [(FinishDownloadStepOperation *)self documentsDirectoryPathWithClientIdentifier:clientIdentifier downloadKind:downloadKind];
  }

  else
  {
    v37 = 0;
  }

  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];

  if (uUIDString)
  {
    destinationFileName = [mediaAsset destinationFileName];
    pathExtension = [destinationFileName pathExtension];

    if (pathExtension)
    {
      v13 = [uUIDString stringByAppendingPathExtension:pathExtension];
    }

    else
    {
      v13 = uUIDString;
    }

    v15 = v13;

    v14 = 0;
    if (!v37 || !v15)
    {
      goto LABEL_29;
    }

    v36 = v15;
    v40 = 0;
    v41 = 0;
    v16 = [(FinishDownloadStepOperation *)self unzipAsset:mediaAsset unzippedPath:&v41 error:&v40];
    v17 = v41;
    v18 = v40;
    if (v16)
    {
      v34 = v5;
      v35 = clientIdentifier;
      v19 = [v37 stringByAppendingPathComponent:v36];
      v38 = v18;
      v39 = v19;
      v33 = v17;
      v20 = [(FinishDownloadStepOperation *)self moveFile:v17 toPath:&v39 installBehavior:1 error:&v38];
      v21 = v39;

      v14 = v38;
      if (v20)
      {
        v32 = v21;
        v22 = +[SSLogConfig sharedDaemonConfig];
        if (!v22)
        {
          v22 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v23) = [v22 shouldLog];
        if ([v22 shouldLogToDisk])
        {
          LODWORD(v23) = v23 | 2;
        }

        v31 = v22;
        oSLogObject = [v22 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
        {
          v23 = v23;
        }

        else
        {
          v23 &= 2u;
        }

        v15 = v36;
        if (v23)
        {
          v25 = objc_opt_class();
          v30 = v25;
          databaseID = [download databaseID];
          v42 = 138412802;
          v43 = v25;
          v44 = 2048;
          v45 = databaseID;
          v46 = 2112;
          v47 = v32;
          v27 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Moved download: %lld to path: %@", &v42, 32);

          v5 = v34;
          if (!v27)
          {
LABEL_33:

            [(FinishDownloadResponse *)v3 setMediaAssetInstallPath:v32];
            clientIdentifier = v35;
            goto LABEL_30;
          }

          oSLogObject = [NSString stringWithCString:v27 encoding:4];
          free(v27);
          v29 = oSLogObject;
          SSFileLog();
        }

        else
        {
          v5 = v34;
        }

        goto LABEL_33;
      }

      v18 = v14;
      v28 = v17;
      v5 = v34;
    }

    else
    {
      v28 = v17;
      if (!v17)
      {
        v15 = v36;
        goto LABEL_28;
      }

      v35 = clientIdentifier;
      v21 = objc_alloc_init(NSFileManager);
      [v21 removeItemAtPath:v17 error:0];
    }

    v15 = v36;

    clientIdentifier = v35;
LABEL_28:

    v14 = v18;
    goto LABEL_29;
  }

  v14 = 0;
  v15 = 0;
LABEL_29:
  [(FinishDownloadResponse *)v3 setError:v14];
  [(FinishDownloadResponse *)v3 setResult:0];
  [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
LABEL_30:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3, v29];
}

@end