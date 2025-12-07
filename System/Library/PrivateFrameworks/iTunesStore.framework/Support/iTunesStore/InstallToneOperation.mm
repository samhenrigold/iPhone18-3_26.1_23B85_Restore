@interface InstallToneOperation
- (id)_newRingtoneDictionary;
- (id)_ringtoneGUID;
- (int64_t)_performImport;
- (void)run;
@end

@implementation InstallToneOperation

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
  v11 = 0;
  v7 = [(FinishDownloadStepOperation *)self installAsset:mediaAsset error:&v11];
  v8 = v11;
  if (!v7)
  {
    goto LABEL_6;
  }

  _performImport = [(InstallToneOperation *)self _performImport];
  if (_performImport == 2)
  {
    v10 = SSError();

    v8 = v10;
LABEL_6:
    [(FinishDownloadResponse *)v3 setError:v8];
    [(FinishDownloadResponse *)v3 setResult:0];
    [(FinishDownloadStepOperation *)self rollbackAsset:mediaAsset error:0];
    goto LABEL_7;
  }

  if (_performImport == 1)
  {
    [(FinishDownloadStepOperation *)self removeInstalledAsset:mediaAsset error:0];
  }

LABEL_7:
  [(FinishDownloadStepOperation *)self finishWithDownloadResponse:v3];
}

- (id)_newRingtoneDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = ISWeakLinkedStringConstantForString();
  [v3 setObject:&__kCFBooleanTrue forKey:v4];
  download = [(FinishDownloadStepOperation *)self download];
  v6 = ISWeakLinkedStringConstantForString();

  v7 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [download databaseID]);
  [v3 setObject:v7 forKey:v6];

  v8 = ISWeakLinkedStringConstantForString();

  _ringtoneGUID = [(InstallToneOperation *)self _ringtoneGUID];
  [v3 setObject:_ringtoneGUID forKey:v8];

  storeItemIdentifier = [download storeItemIdentifier];
  if (storeItemIdentifier)
  {
    v11 = ISWeakLinkedStringConstantForString();

    [v3 setObject:storeItemIdentifier forKey:v11];
    v8 = v11;
  }

  storeFrontIdentifier = [download storeFrontIdentifier];

  if (storeFrontIdentifier)
  {
    v13 = ISWeakLinkedStringConstantForString();

    [v3 setObject:storeFrontIdentifier forKey:v13];
    v8 = v13;
  }

  collectionName = [download collectionName];

  if (collectionName)
  {
    v15 = ISWeakLinkedStringConstantForString();

    [v3 setObject:collectionName forKey:v15];
    v8 = v15;
  }

  artistName = [download artistName];

  if (artistName)
  {
    v17 = ISWeakLinkedStringConstantForString();

    [v3 setObject:artistName forKey:v17];
    v8 = v17;
  }

  genreName = [download genreName];

  if (genreName)
  {
    v19 = ISWeakLinkedStringConstantForString();

    [v3 setObject:genreName forKey:v19];
    v8 = v19;
  }

  title = [download title];

  if (title)
  {
    v21 = ISWeakLinkedStringConstantForString();

    [v3 setObject:title forKey:v21];
    v8 = v21;
  }

  durationInMilliseconds = [download durationInMilliseconds];

  if (durationInMilliseconds)
  {
    v23 = ISWeakLinkedStringConstantForString();

    [v3 setObject:durationInMilliseconds forKey:v23];
    v8 = v23;
  }

  downloadKind = [download downloadKind];

  [downloadKind isEqualToString:SSDownloadKindTone];
  v25 = ISWeakLinkedStringConstantForString();

  if (v25)
  {
    v26 = ISWeakLinkedStringConstantForString();

    [v3 setObject:v25 forKey:v26];
    v8 = v26;
  }

  return v3;
}

- (id)_ringtoneGUID
{
  download = [(FinishDownloadStepOperation *)self download];
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%llx", [download databaseID]);

  return v3;
}

- (int64_t)_performImport
{
  _newRingtoneDictionary = [(InstallToneOperation *)self _newRingtoneDictionary];
  download = [(FinishDownloadStepOperation *)self download];
  storeItemIdentifier = [download storeItemIdentifier];
  v6 = SSGetItemIdentifierFromValue();

  storeTransactionIdentifier = [download storeTransactionIdentifier];
  v7 = objc_alloc_init(RingtonePurchaseStore);
  v8 = objc_alloc_init(ISWeakLinkedClassForString());
  mediaAsset = [download mediaAsset];
  destinationFileName = [mediaAsset destinationFileName];
  v11 = [v8 _importPurchasedToneWithMetadata:_newRingtoneDictionary fileName:destinationFileName];

  statusCode = [v11 statusCode];
  toneIdentifier = [v11 toneIdentifier];
  v14 = toneIdentifier;
  if (statusCode == 2)
  {
    v58 = toneIdentifier;
    v61 = v8;
    v40 = +[SSLogConfig sharedDaemonConfig];
    if (!v40)
    {
      v40 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v40 shouldLog];
    if ([v40 shouldLogToDisk])
    {
      shouldLog |= 2u;
    }

    oSLogObject = [v40 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v43 = shouldLog;
    }

    else
    {
      v43 = shouldLog & 2;
    }

    if (v43)
    {
      v44 = objc_opt_class();
      v55 = v44;
      [download title];
      v46 = v45 = _newRingtoneDictionary;
      v63 = 138543618;
      v64 = v44;
      v65 = 2114;
      v66 = v46;
      v47 = _os_log_send_and_compose_impl(v43, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "%{public}@: Tone import failed unexpectedly. This seems to be a transient failure, so rolling back asset: %{public}@.", &v63, 22);

      _newRingtoneDictionary = v45;
      if (v47)
      {
        v48 = [NSString stringWithCString:v47 encoding:4];
        free(v47);
        SSFileLog();
      }
    }

    else
    {
    }

    v49 = 2;
    v14 = v58;
    v8 = v61;
  }

  else if (statusCode == 1)
  {
    v54 = v6;
    v57 = _newRingtoneDictionary;
    v60 = v8;
    v31 = +[SSLogConfig sharedDaemonConfig];
    if (!v31)
    {
      v31 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v31 shouldLog];
    if ([v31 shouldLogToDisk])
    {
      shouldLog2 |= 2u;
    }

    oSLogObject2 = [v31 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v34 = shouldLog2;
    }

    else
    {
      v34 = shouldLog2 & 2;
    }

    if (v34)
    {
      v35 = objc_opt_class();
      v36 = v35;
      title = [download title];
      v63 = 138543874;
      v64 = v35;
      v65 = 2114;
      v66 = title;
      v67 = 2114;
      v68 = v14;
      v38 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%{public}@: Tone import was skipped because it was a duplicate entry: %{public}@. Finalizing with tone identifier: %{public}@.", &v63, 32);

      if (v38)
      {
        v39 = [NSString stringWithCString:v38 encoding:4];
        free(v38);
        SSFileLog();
      }
    }

    else
    {
    }

    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v54 transactionID:storeTransactionIdentifier toneIdentifier:v14];
    v49 = 1;
    _newRingtoneDictionary = v57;
    v8 = v60;
  }

  else if (statusCode)
  {
    v49 = 0;
  }

  else
  {
    v56 = toneIdentifier;
    newITunesMetadataDictionary = [download newITunesMetadataDictionary];
    v16 = newITunesMetadataDictionary;
    if (newITunesMetadataDictionary)
    {
      v17 = SSDownloadMetadataKeyAdditionalInfo;
      v18 = [newITunesMetadataDictionary objectForKey:SSDownloadMetadataKeyAdditionalInfo];
      if (!v18)
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [v16 setObject:v18 forKey:v17];
      }

      v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [download databaseID]);
      [v18 setObject:v19 forKey:SSDownloadMetadataKeyTrackPersistentID];

      iTunesMetadataDestinationPath = [download ITunesMetadataDestinationPath];
      [(FinishDownloadStepOperation *)self writeBinaryPropertyList:v16 toPath:iTunesMetadataDestinationPath error:0];
    }

    v52 = v16;
    v53 = v6;
    v59 = v8;
    [(FinishDownloadStepOperation *)self addPurchaseManifestItem];
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      v23 = shouldLog3 | 2;
    }

    else
    {
      v23 = shouldLog3;
    }

    oSLogObject3 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
    {
      v25 = v23;
    }

    else
    {
      v25 = v23 & 2;
    }

    if (v25)
    {
      v26 = objc_opt_class();
      v51 = v26;
      [download title];
      v28 = v27 = _newRingtoneDictionary;
      v63 = 138543874;
      v64 = v26;
      v65 = 2114;
      v66 = v28;
      v67 = 2114;
      v68 = v56;
      v29 = _os_log_send_and_compose_impl(v25, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%{public}@: Successfully imported tone into Tone Library: %{public}@. Finalizing with tone identifier: %{public}@.", &v63, 32);

      _newRingtoneDictionary = v27;
      if (v29)
      {
        v30 = [NSString stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }
    }

    else
    {
    }

    v14 = v56;
    [(RingtonePurchaseStore *)v7 finalizeRingtoneForAdamID:v53 transactionID:storeTransactionIdentifier toneIdentifier:v56];

    v49 = 0;
    v8 = v59;
  }

  return v49;
}

@end