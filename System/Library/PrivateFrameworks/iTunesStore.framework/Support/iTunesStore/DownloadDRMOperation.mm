@interface DownloadDRMOperation
- (BOOL)_checkoutRentalKeys:(id *)keys;
- (BOOL)_decryptAsset:(id *)asset;
- (BOOL)_unprotectMediaAsset:(id *)asset;
- (id)_sinfs;
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
@end

@implementation DownloadDRMOperation

- (void)run
{
  download = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download mediaAsset];
  v5 = objc_alloc_init(FinishDownloadResponse);
  -[FinishDownloadResponse setDownloadIdentifier:](v5, "setDownloadIdentifier:", [download databaseID]);
  -[FinishDownloadResponse setMediaAssetIdentifier:](v5, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  [(FinishDownloadResponse *)v5 setResult:4];
  v6 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v5 setDownloadHandle:v6];
  downloadKind = [download downloadKind];
  dPInfoData = [mediaAsset DPInfoData];
  if (dPInfoData || (SSDownloadKindIsEBookKind() & 1) != 0 || [downloadKind isEqualToString:SSDownloadKindInAppContent])
  {
    v17 = 0;
    v9 = [(DownloadDRMOperation *)self _decryptAsset:&v17];
    v10 = v17;
    if (v9)
    {
LABEL_6:

      goto LABEL_7;
    }

LABEL_5:
    [(FinishDownloadResponse *)v5 setError:v10];
    [(FinishDownloadResponse *)v5 setResult:0];
    goto LABEL_6;
  }

  if ((SSDownloadKindIsMediaKind() & 1) != 0 || SSDownloadKindIsToneKind())
  {
    v16 = 0;
    v11 = [(DownloadDRMOperation *)self _unprotectMediaAsset:&v16];
    v12 = v16;
    v10 = v12;
    if (v11)
    {
      v15 = v12;
      v13 = [(DownloadDRMOperation *)self _checkoutRentalKeys:&v15];
      v14 = v15;

      v10 = v14;
      if (v13)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_5;
  }

LABEL_7:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v5];
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [progress copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    delegate = [(DownloadDRMOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_checkoutRentalKeys:(id *)keys
{
  download = [(FinishDownloadStepOperation *)self download];
  storeMetadata = [download storeMetadata];
  isRental = [storeMetadata isRental];

  if (!isRental)
  {
    goto LABEL_34;
  }

  _sinfs = [(DownloadDRMOperation *)self _sinfs];
  storeMetadata2 = [download storeMetadata];
  rentalID = [storeMetadata2 rentalID];

  if (!_sinfs)
  {
    if (rentalID)
    {
      v22 = +[SSAccountStore defaultStore];
      activeAccount = [v22 activeAccount];
      uniqueIdentifier = [activeAccount uniqueIdentifier];

      if (!uniqueIdentifier)
      {
        v20 = 0;
        v19 = 1;
        goto LABEL_16;
      }

      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        LODWORD(v26) = shouldLog | 2;
      }

      else
      {
        LODWORD(v26) = shouldLog;
      }

      oSLogObject = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
      {
        v26 = v26;
      }

      else
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v28 = objc_opt_class();
        v32 = v28;
        v35 = 138412546;
        v36 = v28;
        v37 = 2048;
        databaseID = [download databaseID];
        v29 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Checking out rental keys for download: %lld", &v35, 22);

        if (!v29)
        {
LABEL_33:

          v30 = [[CheckoutRentalKeysOperation alloc] initWithAccountIdentifier:uniqueIdentifier rentalKeyIdentifier:rentalID];
          [(CheckoutRentalKeysOperation *)v30 setCheckoutType:1];
          v33 = 0;
          v19 = [(DownloadDRMOperation *)self runSubOperation:v30 returningError:&v33];
          v20 = v33;

          goto LABEL_16;
        }

        oSLogObject = [NSString stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }

      goto LABEL_33;
    }

LABEL_34:
    v20 = 0;
    v19 = 1;
    goto LABEL_35;
  }

  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  shouldLog2 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    LODWORD(v13) = shouldLog2 | 2;
  }

  else
  {
    LODWORD(v13) = shouldLog2;
  }

  oSLogObject2 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
  {
    v13 = v13;
  }

  else
  {
    v13 &= 2u;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v15 = objc_opt_class();
  v16 = v15;
  v35 = 138412546;
  v36 = v15;
  v37 = 2048;
  databaseID = [download databaseID];
  v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Checking out rental keys for download: %lld", &v35, 22);

  if (v17)
  {
    oSLogObject2 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    SSFileLog();
LABEL_14:
  }

  uniqueIdentifier = [[CheckoutRentalKeysOperation alloc] initWithStoreDownloadSinfs:_sinfs];
  [(CheckoutRentalKeysOperation *)uniqueIdentifier setCheckoutType:1];
  v34 = 0;
  v19 = [(DownloadDRMOperation *)self runSubOperation:uniqueIdentifier returningError:&v34];
  v20 = v34;
LABEL_16:

  if (keys && (v19 & 1) == 0)
  {
    v21 = v20;
    v19 = 0;
    *keys = v20;
  }

LABEL_35:

  return v19;
}

- (BOOL)_decryptAsset:(id *)asset
{
  download = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download mediaAsset];
  dPInfoData = [mediaAsset DPInfoData];
  if (![dPInfoData length])
  {
    _sinfs = [(DownloadDRMOperation *)self _sinfs];
    if (_sinfs)
    {
      v9 = [[DownloadDRM alloc] initWithSinfArray:_sinfs];
      v10 = [(DownloadDRM *)v9 firstDataForSinfDataKey:off_100382E68];

      dPInfoData = v10;
    }
  }

  if ([dPInfoData length])
  {
    localPath = [mediaAsset localPath];
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v27 = download;
    shouldLog = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      v14 = shouldLog | 2;
    }

    else
    {
      v14 = shouldLog;
    }

    oSLogObject = [v12 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v16 = v14;
    }

    else
    {
      v16 = v14 & 2;
    }

    if (v16)
    {
      assetCopy = asset;
      v18 = objc_opt_class();
      v19 = v18;
      v29 = 138412802;
      v30 = v18;
      asset = assetCopy;
      v31 = 2048;
      databaseID = [v27 databaseID];
      v33 = 2112;
      v34 = localPath;
      v20 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Decrypting asset for download: %lld at path: %@", &v29, 32);

      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    v24 = [[FairPlayDecryptFileOperation alloc] initWithPath:localPath dpInfo:dPInfoData];
    [(FairPlayDecryptFileOperation *)v24 setDelegate:self];
    [(FairPlayDecryptFileOperation *)v24 setShouldRunWithBackgroundPriority:1];
    v28 = 0;
    v23 = [(DownloadDRMOperation *)self runSubOperation:v24 returningError:&v28];
    v22 = v28;
    [(FairPlayDecryptFileOperation *)v24 setDelegate:0];

    if (asset)
    {
      download = v27;
      if ((v23 & 1) == 0)
      {
        v25 = v22;
        v23 = 0;
        *asset = v22;
      }
    }

    else
    {
      download = v27;
    }
  }

  else
  {
    v22 = 0;
    v23 = 1;
  }

  return v23;
}

- (id)_sinfs
{
  download = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download mediaAsset];
  sINFData = [mediaAsset SINFData];

  if (sINFData)
  {
    v5 = [NSPropertyListSerialization propertyListWithData:sINFData options:0 format:0 error:0];
  }

  else
  {
    v5 = 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    storeMetadata = [download storeMetadata];
    sinfs = [storeMetadata sinfs];

    v5 = sinfs;
  }

  storeSagaIdentifier = [download storeSagaIdentifier];

  if (storeSagaIdentifier)
  {
    v19 = sINFData;
    v20 = download;
    v9 = objc_alloc_init(NSMutableArray);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v16 = [v15 mutableCopy];
            v17 = [v16 objectForKey:@"pinf"];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && ![v17 length])
            {
              [v16 removeObjectForKey:@"pinf"];
            }

            [v9 addObject:{v16, v19, v20, v21}];
          }

          else
          {
            [v9 addObject:v15];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    sINFData = v19;
    download = v20;
  }

  else
  {
    v9 = v5;
  }

  return v9;
}

- (BOOL)_unprotectMediaAsset:(id *)asset
{
  _sinfs = [(DownloadDRMOperation *)self _sinfs];
  download = [(FinishDownloadStepOperation *)self download];
  isHLS = [download isHLS];
  v8 = 0;
  v9 = 1;
  if (!_sinfs || (isHLS & 1) != 0)
  {
    goto LABEL_33;
  }

  assetCopy = asset;
  download2 = [(FinishDownloadStepOperation *)self download];
  mediaAsset = [download2 mediaAsset];
  localPath = [mediaAsset localPath];

  v12 = +[SSLogConfig sharedDaemonConfig];
  if (!v12)
  {
    v12 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v12 shouldLog];
  if ([v12 shouldLogToDisk])
  {
    v14 = shouldLog | 2;
  }

  else
  {
    v14 = shouldLog;
  }

  oSLogObject = [v12 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v16 = v14;
  }

  else
  {
    v16 = v14 & 2;
  }

  if (v16)
  {
    v17 = objc_opt_class();
    v18 = v17;
    v37 = 138412802;
    v38 = v17;
    v39 = 2048;
    databaseID = [download2 databaseID];
    v41 = 2112;
    v42 = localPath;
    v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Unprotect asset for download: %lld at path: %@", &v37, 32);

    if (!v19)
    {
      goto LABEL_15;
    }

    oSLogObject = [NSString stringWithCString:v19 encoding:4];
    free(v19);
    v30 = oSLogObject;
    SSFileLog();
  }

LABEL_15:
  v20 = [[MediaDRMOperation alloc] initWithMediaPath:localPath sinfs:_sinfs];
  [(MediaDRMOperation *)v20 setDelegate:self];
  [(MediaDRMOperation *)v20 setShouldRunWithBackgroundPriority:1];
  v36 = 0;
  v9 = [(DownloadDRMOperation *)self runSubOperation:v20 returningError:&v36];
  v8 = v36;
  [(MediaDRMOperation *)v20 setDelegate:0];
  if ((v9 & 1) == 0)
  {
    v33 = objc_alloc_init(NSFileManager);
    [v33 removeItemAtPath:localPath error:0];
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v22) = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v22) = v22 | 2;
    }

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v22;
    }

    else
    {
      v22 &= 2u;
    }

    if (v22)
    {
      v24 = objc_opt_class();
      v32 = v24;
      databaseID2 = [download2 databaseID];
      v37 = 138412802;
      v38 = v24;
      v39 = 2048;
      databaseID = databaseID2;
      v41 = 2112;
      v42 = localPath;
      LODWORD(v31) = 32;
      v26 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Download unprotect failed: %lld, deleted file: %@", &v37, v31);

      if (!v26)
      {
LABEL_27:

        goto LABEL_28;
      }

      oSLogObject2 = [NSString stringWithCString:v26 encoding:4];
      free(v26);
      SSFileLog();
    }

    goto LABEL_27;
  }

LABEL_28:

  if (assetCopy)
  {
    v27 = v9;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v28 = v8;
    v9 = 0;
    *assetCopy = v8;
  }

LABEL_33:

  return v9;
}

@end