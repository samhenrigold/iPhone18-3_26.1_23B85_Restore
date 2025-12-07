@interface TSPRemoteDataStorage
+ (id)ioQueue;
+ (id)notificationQueue;
- (BOOL)canDownload;
- (BOOL)isLengthPrecise;
- (BOOL)isMaterialized;
- (BOOL)isPartialDataInPackage:(id)package;
- (BOOL)isReadable;
- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link;
- (BOOL)materializeFromPartiallyDownloadedDocumentForData:(id)data withContentsOfURL:(id)l canMove:(BOOL)move error:(id *)error;
- (BOOL)migrateToTemporaryDataStorageIfNeeded;
- (BOOL)p_copyPartiallyMaterializedDataToURL:(id)l encryptionInfo:(id)info;
- (NSDate)modificationDate;
- (NSIndexSet)unmaterializedRanges;
- (TSPDataStorage)packageDataStorage;
- (TSPRemoteDataStorage)initWithRemoteURL:(id)l length:(unint64_t)length encryptionKey:(id)key canDownload:(BOOL)download downloadPriority:(int64_t)priority uploadStatus:(int64_t)status modificationDate:(id)date;
- (TSPRemoteDataStorage)initWithRemoteURL:(id)l unmaterializedRanges:(id)ranges encryptionKey:(id)key canDownload:(BOOL)download downloadPriority:(int64_t)priority uploadStatus:(int64_t)status modificationDate:(id)date materializedLength:(unint64_t)self0 packageDataStorage:(id)self1;
- (TSPRemoteDataStorageDelegate)delegate;
- (id)dataStorageToUse;
- (id)decryptionInfo;
- (id)p_migrateToTemporaryDataStorageWithEncryptionInfo:(id)info updateInternalDataStorages:(BOOL)storages;
- (id)packageLocator;
- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error;
- (int64_t)uploadStatus;
- (unint64_t)encodedLength;
- (unint64_t)fileFormatVersion;
- (unint64_t)firstUnmaterializedIndex;
- (unint64_t)length;
- (unint64_t)materializedLength;
- (unint64_t)p_materializedLength;
- (unint64_t)reservedLength;
- (unsigned)packageIdentifier;
- (void)didAddDownloadObserverWithData:(id)data;
- (void)didInitializeFromDocumentURL:(id)l;
- (void)didReceivePartialRemoteData:(id)data decryptionKey:(id)key range:(_NSRange)range completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteData:(id)data decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataAtURL:(id)l canMove:(BOOL)move decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataWithDecryptionInfo:(id)info noEncryptionHandler:(id)handler createReadChannelForCryptoTranscodeBlock:(id)block completionQueue:(id)queue completion:(id)completion;
- (void)didReceiveRemoteDataWithReadChannel:(id)channel completionQueue:(id)queue completion:(id)completion;
- (void)didSaveWithChangeCount:(unint64_t)count packageDataStorage:(id)storage;
- (void)p_notifyDownloadObserversWithStatus:(int64_t)status error:(id)error;
- (void)performIOChannelReadWithAccessor:(id)accessor;
- (void)performReadWithAccessor:(id)accessor;
- (void)setUploadStatus:(int64_t)status;
@end

@implementation TSPRemoteDataStorage

+ (id)notificationQueue
{
  if (qword_280A52628 != -1)
  {
    sub_276BD329C();
  }

  v3 = qword_280A52620;

  return v3;
}

+ (id)ioQueue
{
  if (qword_280A52638 != -1)
  {
    sub_276BD32B0();
  }

  v3 = qword_280A52630;

  return v3;
}

- (TSPRemoteDataStorage)initWithRemoteURL:(id)l unmaterializedRanges:(id)ranges encryptionKey:(id)key canDownload:(BOOL)download downloadPriority:(int64_t)priority uploadStatus:(int64_t)status modificationDate:(id)date materializedLength:(unint64_t)self0 packageDataStorage:(id)self1
{
  lCopy = l;
  rangesCopy = ranges;
  keyCopy = key;
  dateCopy = date;
  storageCopy = storage;
  v50 = lCopy;
  if (!lCopy)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPRemoteDataStorage initWithRemoteURL:unmaterializedRanges:encryptionKey:canDownload:downloadPriority:uploadStatus:modificationDate:materializedLength:packageDataStorage:]");
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v23, v20, v22, 92, 0, "invalid nil value for '%{public}s'", "remoteURL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
  }

  v52.receiver = self;
  v52.super_class = TSPRemoteDataStorage;
  v26 = [(TSPRemoteDataStorage *)&v52 init];
  v27 = v26;
  if (v26)
  {
    objc_storeStrong(&v26->_remoteURL, l);
    objc_storeStrong(&v27->_encryptionKey, key);
    v27->_canDownload = download;
    v27->_downloadPriority = priority;
    v27->_uploadStatus = status;
    v30 = objc_msgSend_mutableCopy(rangesCopy, v28, v29);
    unmaterializedRanges = v27->_unmaterializedRanges;
    v27->_unmaterializedRanges = v30;

    objc_storeStrong(&v27->_packageDataStorage, storage);
    objc_storeStrong(&v27->_modificationDate, date);
    if (length != -1)
    {
      atomic_store(length, &v27->_materializedLength);
    }

    v32 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = objc_msgSend_absoluteString(v50, v33, v34);
    v37 = objc_msgSend_initWithFormat_(v32, v36, @"TSPRemoteDataStorage.Access[%@]", v35);

    v38 = v37;
    v41 = objc_msgSend_UTF8String(v38, v39, v40);
    v42 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x277D85CD8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v43 = dispatch_queue_create(v41, v42);
    accessQueue = v27->_accessQueue;
    v27->_accessQueue = v43;
  }

  return v27;
}

- (TSPRemoteDataStorage)initWithRemoteURL:(id)l length:(unint64_t)length encryptionKey:(id)key canDownload:(BOOL)download downloadPriority:(int64_t)priority uploadStatus:(int64_t)status modificationDate:(id)date
{
  downloadCopy = download;
  lCopy = l;
  keyCopy = key;
  dateCopy = date;
  if (!lCopy)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSPRemoteDataStorage initWithRemoteURL:length:encryptionKey:canDownload:downloadPriority:uploadStatus:modificationDate:]");
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v22, v19, v21, 115, 0, "invalid nil value for '%{public}s'", "remoteURL");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
  }

  if (length == -1)
  {
    v25 = 0;
    canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_initWithRemoteURL_unmaterializedRanges_encryptionKey_canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage_(self, v16, lCopy, 0, keyCopy, downloadCopy, priority, status, dateCopy, 0, 0);
  }

  else
  {
    v25 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], v16, 0, length);
    canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage = objc_msgSend_initWithRemoteURL_unmaterializedRanges_encryptionKey_canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage_(self, v27, lCopy, v25, keyCopy, downloadCopy, priority, status, dateCopy, length, 0);
  }

  v28 = canDownload_downloadPriority_uploadStatus_modificationDate_materializedLength_packageDataStorage;

  return v28;
}

- (void)didInitializeFromDocumentURL:(id)l
{
  lCopy = l;
  if ((objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(self, v5, v6) & 1) == 0)
  {
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = sub_2769F99BC;
    v54 = sub_2769F99CC;
    v55 = 0;
    v44 = 0;
    v45 = &v44;
    v46 = 0x3032000000;
    v47 = sub_2769F99BC;
    accessQueue = self->_accessQueue;
    v48 = sub_2769F99CC;
    v49 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769F99D4;
    block[3] = &unk_27A6E2EA8;
    block[4] = self;
    block[5] = &v50;
    block[6] = &v44;
    dispatch_sync(accessQueue, block);
    if (objc_opt_respondsToSelector())
    {
      objc_msgSend_didInitializeFromDocumentURL_(v51[5], v8, lCopy);
    }

    v10 = v51[5];
    if ((!v10 || (objc_msgSend_isReadable(v10, v8, v9) & 1) == 0) && objc_msgSend_firstIndex(v45[5], v8, v9))
    {
      v11 = self->_accessQueue;
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = sub_2769F9A3C;
      v42[3] = &unk_27A6E27F8;
      v42[4] = self;
      dispatch_barrier_async(v11, v42);
    }

    v12 = atomic_load(&self->_materializedLength);
    if (!v12 || v12 == -1)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend_isLengthPrecise(v51[5], v13, v14))
      {
        v15 = 0;
      }

      else
      {
        v15 = objc_msgSend_length(v51[5], v13, v14);
      }

      v16 = v45[5];
      if (v16 && objc_msgSend_count(v16, v13, v14) && v15 > objc_msgSend_lastIndex(v45[5], v13, v14) + 1)
      {
        v17 = MEMORY[0x277D81150];
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPRemoteDataStorage didInitializeFromDocumentURL:]");
        v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
        Index = objc_msgSend_lastIndex(v45[5], v21, v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v24, v18, v20, 159, 0, "packageDataStorageLength and unmaterializedRanges.lastIndex are inconsistent.  packageDataStorageLength should not be greater than unmaterializedRanges.lastIndex materializedLength=%llu unmaterializedRanges.lastIndex=%tu", v15, Index);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26);
      }

      v27 = v45[5];
      if (v27 && objc_msgSend_count(v27, v13, v14) && objc_msgSend_lastIndex(v45[5], v28, v29) + 1 > v15)
      {
        if (v15 && v15 != objc_msgSend_firstIndex(v45[5], v30, v31))
        {
          v32 = MEMORY[0x277D81150];
          v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "[TSPRemoteDataStorage didInitializeFromDocumentURL:]");
          v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
          v38 = objc_msgSend_firstIndex(v45[5], v36, v37);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v39, v33, v35, 162, 0, "packageDataStorageLength and unmaterializedRanges.firstIndex are inconsistent. packageDataStorageLength=%llu unmaterializedRanges.firstIndex=%tu", v15, v38);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41);
        }

        v15 = objc_msgSend_lastIndex(v45[5], v30, v31) + 1;
      }

      if (v15 && v15 != -1)
      {
        atomic_store(v15, &self->_materializedLength);
      }
    }

    _Block_object_dispose(&v44, 8);

    _Block_object_dispose(&v50, 8);
  }
}

- (id)dataStorageToUse
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769F99BC;
  v10 = sub_2769F99CC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769F9B90;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (int64_t)uploadStatus
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769F9C74;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setUploadStatus:(int64_t)status
{
  accessQueue = self->_accessQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2769F9D0C;
  v4[3] = &unk_27A6E2CA0;
  v4[4] = self;
  v4[5] = status;
  dispatch_sync(accessQueue, v4);
}

- (NSDate)modificationDate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769F99BC;
  v10 = sub_2769F99CC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769F9E18;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (TSPDataStorage)packageDataStorage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769F99BC;
  v10 = sub_2769F99CC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769F9F2C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isMaterialized
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FA05C;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)canDownload
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FA144;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)isReadable
{
  isMaterialized = objc_msgSend_isMaterialized(self, a2, v2);
  if (isMaterialized)
  {
    v6.receiver = self;
    v6.super_class = TSPRemoteDataStorage;
    LOBYTE(isMaterialized) = [(TSPFileDataStorage *)&v6 isReadable];
  }

  return isMaterialized;
}

- (NSIndexSet)unmaterializedRanges
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769F99BC;
  v10 = sub_2769F99CC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FA2A4;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (unint64_t)firstUnmaterializedIndex
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FA3AC;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)p_notifyDownloadObserversWithStatus:(int64_t)status error:(id)error
{
  errorCopy = error;
  dispatch_assert_queue_V2(self->_accessQueue);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = objc_msgSend_dataForRemoteDataStorage_(WeakRetained, v8, self);

  if (v9)
  {
    v12 = objc_msgSend_notificationQueue(TSPRemoteDataStorage, v10, v11);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769FA514;
    block[3] = &unk_27A6E2C50;
    block[4] = v9;
    statusCopy = status;
    v14 = errorCopy;
    dispatch_async(v12, block);
  }
}

- (void)didReceiveRemoteDataWithDecryptionInfo:(id)info noEncryptionHandler:(id)handler createReadChannelForCryptoTranscodeBlock:(id)block completionQueue:(id)queue completion:(id)completion
{
  infoCopy = info;
  handlerCopy = handler;
  blockCopy = block;
  queueCopy = queue;
  completionCopy = completion;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v34 = blockCopy;
  v19 = objc_msgSend_temporaryDataStorageURLForRemoteDataStorage_(WeakRetained, v18, self);

  v20 = sub_276AB683C(self->_encryptionKey, 0x100000);
  v21 = infoCopy;
  if (UnsafePointer != -1)
  {
    sub_276BD32C4();
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769FA9E4;
  aBlock[3] = &unk_27A6E3F28;
  aBlock[4] = self;
  v22 = queueCopy;
  v45 = v22;
  v23 = completionCopy;
  v48 = v23;
  v24 = v19;
  v46 = v24;
  v25 = v20;
  v47 = v25;
  v27 = _Block_copy(aBlock);
  if (v24)
  {
    v28 = objc_opt_class();
    v31 = objc_msgSend_ioQueue(v28, v29, v30);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769FAF6C;
    block[3] = &unk_27A6E3FA0;
    v36 = v31;
    selfCopy = self;
    v38 = v24;
    v41 = v27;
    v42 = handlerCopy;
    v39 = v21;
    v40 = v25;
    v32 = v34;
    v43 = v34;
    v33 = v31;
    dispatch_async(v33, block);
  }

  else
  {
    if (UnsafePointer != -1)
    {
      sub_276BD32D8();
    }

    v33 = objc_msgSend_tsp_readPOSIXErrorWithNumber_userInfo_(MEMORY[0x277CCA9B8], v26, 2, 0);
    (*(v27 + 2))(v27, 0, v33);
    v32 = v34;
  }
}

- (void)didReceiveRemoteData:(id)data decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion
{
  dataCopy = data;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769FB7F4;
  aBlock[3] = &unk_27A6E3FC8;
  v11 = dataCopy;
  v25 = v11;
  completionCopy = completion;
  queueCopy = queue;
  infoCopy = info;
  v15 = _Block_copy(aBlock);
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_2769FB8B0;
  v22 = &unk_27A6E3FF0;
  v23 = v11;
  v16 = v11;
  v17 = _Block_copy(&v19);
  objc_msgSend_didReceiveRemoteDataWithDecryptionInfo_noEncryptionHandler_createReadChannelForCryptoTranscodeBlock_completionQueue_completion_(self, v18, infoCopy, v15, v17, queueCopy, completionCopy, v19, v20, v21, v22);
}

- (void)didReceiveRemoteDataAtURL:(id)l canMove:(BOOL)move decryptionInfo:(id)info completionQueue:(id)queue completion:(id)completion
{
  lCopy = l;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769FBA94;
  aBlock[3] = &unk_27A6E4018;
  moveCopy = move;
  v13 = lCopy;
  v27 = v13;
  selfCopy = self;
  completionCopy = completion;
  queueCopy = queue;
  infoCopy = info;
  v17 = _Block_copy(aBlock);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_2769FBC0C;
  v24 = &unk_27A6E3FF0;
  v25 = v13;
  v18 = v13;
  v19 = _Block_copy(&v21);
  objc_msgSend_didReceiveRemoteDataWithDecryptionInfo_noEncryptionHandler_createReadChannelForCryptoTranscodeBlock_completionQueue_completion_(self, v20, infoCopy, v17, v19, queueCopy, completionCopy, v21, v22, v23, v24);
}

- (void)didReceiveRemoteDataWithReadChannel:(id)channel completionQueue:(id)queue completion:(id)completion
{
  channelCopy = channel;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2769FBD60;
  aBlock[3] = &unk_27A6E3FF0;
  v15 = channelCopy;
  v9 = channelCopy;
  completionCopy = completion;
  queueCopy = queue;
  v12 = _Block_copy(aBlock);
  objc_msgSend_didReceiveRemoteDataWithDecryptionInfo_noEncryptionHandler_createReadChannelForCryptoTranscodeBlock_completionQueue_completion_(self, v13, 0, 0, v12, queueCopy, completionCopy);
}

- (void)didReceivePartialRemoteData:(id)data decryptionKey:(id)key range:(_NSRange)range completionQueue:(id)queue completion:(id)completion
{
  length = range.length;
  location = range.location;
  dataCopy = data;
  keyCopy = key;
  queueCopy = queue;
  completionCopy = completion;
  context = objc_autoreleasePoolPush();
  v15 = dataCopy;
  v18 = v15;
  v19 = v15;
  if (!keyCopy)
  {
    goto LABEL_5;
  }

  v20 = objc_msgSend_tsp_dataWithDecryptionKey_(v15, v16, keyCopy);

  v19 = v20;
  if (v20)
  {
    goto LABEL_5;
  }

  if (UnsafePointer == -1)
  {
    v19 = 0;
LABEL_5:
    v21 = objc_msgSend_length(v19, v16, v17, location);
    goto LABEL_6;
  }

  sub_276BD333C();
  v19 = 0;
  v21 = objc_msgSend_length(0, v40, v41, location);
LABEL_6:
  if (v21 != length)
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSPRemoteDataStorage didReceivePartialRemoteData:decryptionKey:range:completionQueue:completion:]");
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v25, v27, 460, 0, "data length is not the same as range length");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30);
  }

  if (objc_msgSend_length(v19, v22, v23) != length)
  {

    v19 = 0;
  }

  v34 = objc_msgSend_tsp_dispatchData(v19, v31, v32);
  if (v34)
  {
    v35 = objc_opt_class();
    v38 = objc_msgSend_ioQueue(v35, v36, v37);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769FC0F4;
    block[3] = &unk_27A6E40E0;
    block[4] = v38;
    block[5] = self;
    v52 = v43;
    v53 = length;
    v51 = completionCopy;
    v49 = queueCopy;
    v50 = v34;
    dispatch_async(v38, block);
  }

  else if (completionCopy)
  {
    if (queueCopy)
    {
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = sub_2769FCAB4;
      v46[3] = &unk_27A6E3480;
      v47 = completionCopy;
      dispatch_async(queueCopy, v46);
    }

    else
    {
      v39 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v33, 0);
      (*(completionCopy + 2))(completionCopy, v39);
    }
  }

  objc_autoreleasePoolPop(context);
}

- (BOOL)materializeFromPartiallyDownloadedDocumentForData:(id)data withContentsOfURL:(id)l canMove:(BOOL)move error:(id *)error
{
  dataCopy = data;
  lCopy = l;
  if (objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(self, v11, v12))
  {
    v147 = 0;
    v148 = &v147;
    v149 = 0x2020000000;
    v150 = 0;
    v141 = 0;
    v142 = &v141;
    v143 = 0x3032000000;
    v144 = sub_2769F99BC;
    accessQueue = self->_accessQueue;
    v145 = sub_2769F99CC;
    v146 = 0;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2769FD3CC;
    block[3] = &unk_27A6E2EA8;
    block[4] = self;
    block[5] = &v147;
    block[6] = &v141;
    dispatch_sync(accessQueue, block);
    if (v148[3])
    {
      goto LABEL_17;
    }

    errorCopy = error;
    v17 = v142[5];
    if (!v17)
    {
      v18 = MEMORY[0x277D81150];
      v129 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSPRemoteDataStorage materializeFromPartiallyDownloadedDocumentForData:withContentsOfURL:canMove:error:]");
      v127 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      if (dataCopy)
      {
        v22 = objc_opt_class();
        v125 = NSStringFromClass(v22);
      }

      else
      {
        v125 = @"Nil";
      }

      v124 = objc_msgSend_filename(dataCopy, v20, v21);
      isApplicationData = objc_msgSend_isApplicationData(dataCopy, v69, v70);
      isReadable = objc_msgSend_isReadable(dataCopy, v71, v72);
      isExternalData = objc_msgSend_isExternalData(dataCopy, v74, v75);
      isEncrypted = objc_msgSend_isEncrypted(dataCopy, v76, v77);
      v81 = objc_msgSend_needsDownload(dataCopy, v79, v80);
      v84 = objc_msgSend_type(dataCopy, v82, v83);
      v87 = objc_msgSend_packageIdentifier(dataCopy, v85, v86);
      v89 = sub_276AC69B4(v87, v88);
      v119 = objc_msgSend_anonymousUniqueIdentifier(dataCopy, v90, v91);
      v118 = objc_msgSend_UUIDString(v119, v92, v93);
      v117 = objc_msgSend_digestString(dataCopy, v94, v95);
      v96 = MEMORY[0x277CCABB0];
      v99 = objc_msgSend_length(dataCopy, v97, v98);
      objc_msgSend_numberWithUnsignedLongLong_(v96, v100, v99);
      v116 = v115 = v18;
      v103 = objc_msgSend_stringValue(v116, v101, v102);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v115, v104, v129, v127, 586, 0, "It's expected that the package data storage is defined when this method is called. data=<%{public}@: %{public}p filename=%@, isApplicationData=%i, isReadable=%i, isExternalData=%i, isEncrypted=%i, needsDownload=%i, type=%{public}@, packageIdentifier=%{public}@, anonymousUniqueIdentifier=%{public}@, digestString=%@, length=%@> ", v125, dataCopy, v124, isApplicationData, isReadable, isExternalData, isEncrypted, v81, v84, v89, v118, v117, v103);

      if (dataCopy)
      {
      }

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v105, v106);
      v17 = v142[5];
    }

    if (objc_msgSend_isReadable(v17, v15, v16))
    {
LABEL_17:
      objc_msgSend_setIsUnmaterializedDueToPartiallyDownloadedDocument_(self, v15, 0);
      v68 = 1;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v109 = objc_msgSend_decryptionInfo(v142[5], v107, v108);
      }

      else
      {
        v109 = 0;
      }

      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = sub_2769FD40C;
      v137[3] = &unk_27A6E4108;
      moveCopy = move;
      v138 = lCopy;
      v111 = objc_msgSend_temporaryDataStorageForReplacingDataContentsWithDecryptionInfo_writer_error_(dataCopy, v110, v109, v137, errorCopy);
      v68 = v111 != 0;
      if (v111)
      {
        v112 = self->_accessQueue;
        v136[0] = MEMORY[0x277D85DD0];
        v136[1] = 3221225472;
        v136[2] = sub_2769FD4C0;
        v136[3] = &unk_27A6E2898;
        v136[4] = self;
        v136[5] = v111;
        dispatch_barrier_sync(v112, v136);
        objc_msgSend_setIsUnmaterializedDueToPartiallyDownloadedDocument_(self, v113, 0);
      }
    }

    _Block_object_dispose(&v141, 8);

    _Block_object_dispose(&v147, 8);
  }

  else
  {
    v23 = MEMORY[0x277D81150];
    v131 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPRemoteDataStorage materializeFromPartiallyDownloadedDocumentForData:withContentsOfURL:canMove:error:]");
    v134 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    if (dataCopy)
    {
      v27 = objc_opt_class();
      v132 = NSStringFromClass(v27);
    }

    else
    {
      v132 = @"Nil";
    }

    v130 = objc_msgSend_filename(dataCopy, v25, v26);
    v30 = objc_msgSend_isApplicationData(dataCopy, v28, v29);
    v126 = objc_msgSend_isReadable(dataCopy, v31, v32);
    v123 = objc_msgSend_isExternalData(dataCopy, v33, v34);
    v37 = objc_msgSend_isEncrypted(dataCopy, v35, v36);
    v40 = objc_msgSend_needsDownload(dataCopy, v38, v39);
    v128 = objc_msgSend_type(dataCopy, v41, v42);
    v45 = objc_msgSend_packageIdentifier(dataCopy, v43, v44);
    v47 = sub_276AC69B4(v45, v46);
    v121 = objc_msgSend_anonymousUniqueIdentifier(dataCopy, v48, v49);
    v52 = objc_msgSend_UUIDString(v121, v50, v51);
    v55 = objc_msgSend_digestString(dataCopy, v53, v54);
    v56 = MEMORY[0x277CCABB0];
    v59 = objc_msgSend_length(dataCopy, v57, v58);
    v61 = objc_msgSend_numberWithUnsignedLongLong_(v56, v60, v59);
    v64 = objc_msgSend_stringValue(v61, v62, v63);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v65, v131, v134, 568, 0, "This method should only be called for data that's unmaterialized due to partially downloaded document. data=<%{public}@: %{public}p filename=%@, isApplicationData=%i, isReadable=%i, isExternalData=%i, isEncrypted=%i, needsDownload=%i, type=%{public}@, packageIdentifier=%{public}@, anonymousUniqueIdentifier=%{public}@, digestString=%@, length=%@> ", v132, dataCopy, v130, v30, v126, v123, v37, v40, v128, v47, v52, v55, v64);

    if (dataCopy)
    {
    }

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v66, v67);
    v68 = 1;
  }

  return v68;
}

- (void)performReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_2769F99BC;
  v13 = sub_2769F99CC;
  v14 = 0;
  accessQueue = self->_accessQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_2769FD65C;
  v8[3] = &unk_27A6E28C0;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(accessQueue, v8);
  v7 = v10[5];
  if (v7)
  {
    objc_msgSend_performReadWithAccessor_(v7, v6, accessorCopy);
  }

  else
  {
    accessorCopy[2](accessorCopy, 0);
  }

  _Block_object_dispose(&v9, 8);
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2769F99BC;
  v23 = sub_2769F99CC;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  accessQueue = self->_accessQueue;
  v18 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FD8B4;
  block[3] = &unk_27A6E2EA8;
  block[4] = self;
  block[5] = &v19;
  block[6] = &v15;
  dispatch_sync(accessQueue, block);
  if (*(v16 + 24) == 1)
  {
    v7 = v20[5];
    if (!v7)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d invalid nil value for '%{public}s'", "[TSPRemoteDataStorage performIOChannelReadWithAccessor:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm", 643, "temporaryMaterializedData");
      v8 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSPRemoteDataStorage performIOChannelReadWithAccessor:]");
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v10, v12, 643, 1, "invalid nil value for '%{public}s'", "temporaryMaterializedData");

      TSUCrashBreakpoint();
      abort();
    }

    objc_msgSend_performIOChannelReadWithAccessor_(v7, v6, accessorCopy);
  }

  else
  {
    accessorCopy[2](accessorCopy, 0);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
}

- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error
{
  removeDataCopy = removeData;
  dataCopy = data;
  writerCopy = writer;
  filenameCopy = filename;
  v119 = 0;
  v120 = &v119;
  v121 = 0x3032000000;
  v122 = sub_2769F99BC;
  v123 = sub_2769F99CC;
  v124 = 0;
  v113 = 0;
  v114 = &v113;
  v115 = 0x3032000000;
  v116 = sub_2769F99BC;
  v117 = sub_2769F99CC;
  v118 = 0;
  v109 = 0;
  v110 = &v109;
  v111 = 0x2020000000;
  v112 = 0;
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = sub_2769F99BC;
  v107 = sub_2769F99CC;
  v108 = 0;
  v97 = 0;
  v98 = &v97;
  v99 = 0x3032000000;
  v100 = sub_2769F99BC;
  v101 = sub_2769F99CC;
  v102 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FE270;
  block[3] = &unk_27A6E2F20;
  block[4] = self;
  block[5] = &v119;
  block[6] = &v113;
  block[7] = &v103;
  block[8] = &v109;
  block[9] = &v97;
  dispatch_sync(accessQueue, block);
  v13 = v104[5];
  if (!v13 || v110[3])
  {
    v13 = v120[5];
  }

  v14 = v13;
  isUnmaterializedDueToPartiallyDownloadedDocument = objc_msgSend_isUnmaterializedDueToPartiallyDownloadedDocument(self, v15, v16);
  if (v14)
  {
    v19 = removeDataCopy;
  }

  else
  {
    v19 = 1;
  }

  if ((v19 | isUnmaterializedDueToPartiallyDownloadedDocument))
  {
    if (v19)
    {
      objc_msgSend_filenameForData_preferredFilename_(writerCopy, v18, dataCopy, filenameCopy);
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = v14 != 0;
      v27 = v24 = 1;
    }

    else
    {
      if ((isUnmaterializedDueToPartiallyDownloadedDocument & 1) == 0)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSPRemoteDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]");
        v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v43, v40, v42, 711, 0, "Should be unmaterialized due to partially downloaded document.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45);
      }

      v27 = objc_msgSend_filenameForData_preferredFilename_(writerCopy, v18, dataCopy, filenameCopy);
      if (v104[5])
      {
        v46 = objc_msgSend_encryptionKey(writerCopy, v25, v26);
        if (objc_opt_respondsToSelector())
        {
          isMissingData = objc_msgSend_isMissingData(v104[5], v47, v48);
        }

        else
        {
          isMissingData = 0;
        }

        if (objc_opt_respondsToSelector())
        {
          v52 = objc_msgSend_decryptionInfo(v104[5], v50, v51);
        }

        else
        {
          v52 = 0;
        }

        if (sub_276AB678C(v52, v46, 0x100000))
        {
          if (v46)
          {
            v54 = isMissingData;
          }

          else
          {
            v54 = 1;
          }

          if ((v54 & 1) == 0)
          {
            v55 = MEMORY[0x277D81150];
            v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSPRemoteDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]");
            v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v55, v59, v56, v58, 726, 0, "Encryption info cannot be properly calculated for unmaterialized data due to partially downloaded document because it requires access to the data bytes.");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61);
          }

          if (UnsafePointer != -1)
          {
            sub_276BD33C8();
          }

          v22 = 0;
          v27 = 0;
        }

        else
        {
          v22 = v52;
        }

        v20 = 0;
        v21 = 0;
        v24 = 1;
        v23 = 2;
      }

      else
      {
        v23 = 0;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v24 = 1;
      }
    }
  }

  else
  {
    v95 = 0;
    v28 = objc_msgSend_writeData_toPackageWriter_infoMessage_preferredFilename_shouldRemoveData_error_(v14, v18, dataCopy, writerCopy, message, filenameCopy, 0, &v95);
    v20 = v95;
    v24 = v28 != 0;
    if (v28)
    {
      v27 = objc_msgSend_filename(v28, v29, v30);
      v22 = objc_msgSend_encryptionInfo(v28, v31, v32);
      v21 = objc_msgSend_encodedLength(v28, v33, v34);
      if (objc_msgSend_count(v114[5], v35, v36) && objc_msgSend_packageStorageType(v28, v37, v38))
      {
        v23 = 2;
      }

      else
      {
        v23 = objc_msgSend_packageStorageType(v28, v37, v38);
      }
    }

    else
    {
      if (UnsafePointer != -1)
      {
        sub_276BD33A0();
      }

      v23 = 0;
      v21 = 0;
      v22 = 0;
      v27 = 0;
    }
  }

  if (v27)
  {
    v62 = v24;
  }

  else
  {
    v62 = 0;
  }

  if (!v62 || v23 == 1)
  {
    if (v62)
    {
LABEL_72:
      v83 = sub_276A7BE80(self->_uploadStatus, v25);
      *(message + 4) |= 0x4000u;
      *(message + 31) = v83;
      v84 = [TSPDataStorageWriteResult alloc];
      v86 = objc_msgSend_initWithFilename_encryptionInfo_packageStorageType_encodedLength_isMissingData_changeCount_(v84, v85, v27, v22, v23, v21, removeDataCopy, v110[3]);
      goto LABEL_79;
    }
  }

  else
  {
    if (objc_msgSend_count(v114[5], v25, v26))
    {
      v65 = v114[5];
      *(message + 4) |= 0x400u;
      v66 = *(message + 13);
      if (!v66)
      {
        v67 = *(message + 1);
        if (v67)
        {
          v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
        }

        v66 = google::protobuf::Arena::CreateMaybeMessage<TSP::IndexSet>(v67);
        *(message + 13) = v66;
      }

      objc_msgSend_tsp_saveToMessage_(v65, v63, v66);
    }

    v68 = objc_msgSend_absoluteString(self->_remoteURL, v63, v64);
    v71 = v68;
    if (message)
    {
      v72 = v68 == 0;
    }

    else
    {
      v72 = 1;
    }

    v73 = !v72;
    if (v72)
    {
      if (!message)
      {

        goto LABEL_74;
      }

      v79 = *(message + 4);
    }

    else
    {
      *(message + 4) |= 0x20u;
      v74 = *(message + 1);
      if (v74)
      {
        v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
      }

      v75 = google::protobuf::internal::ArenaStringPtr::Mutable(message + 8, v74);
      objc_msgSend_tsp_saveToProtobufString_(v71, v76, v75);
      canDownload = self->_canDownload;
      v78 = *(message + 4);
      v79 = v78 | 0x1000;
      *(message + 4) = v78 | 0x1000;
      *(message + 120) = canDownload;
      if (!self->_downloadPriority)
      {
        v79 = v78 | 0x41000;
        *(message + 4) = v78 | 0x41000;
        *(message + 38) = 0;
      }
    }

    *(message + 4) = v79 | 0x2000;
    *(message + 121) = v23 == 2;
    v80 = v98[5];
    if (v80)
    {
      objc_msgSend_timeIntervalSince1970(v80, v69, v70);
      *(message + 4) |= 0x10000u;
      *(message + 17) = v81;
    }

    v82 = atomic_load(&self->_materializedLength);
    if (v82 && v82 != -1)
    {
      *(message + 4) |= 0x20000u;
      *(message + 18) = v82;
    }

    if (v73)
    {
      goto LABEL_72;
    }
  }

LABEL_74:
  if (error)
  {
    if (v20)
    {
      v87 = v20;
      v86 = 0;
      *error = v20;
      goto LABEL_79;
    }

    v88 = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v25, 0);
    *error = v88;
  }

  v86 = 0;
LABEL_79:

  _Block_object_dispose(&v97, 8);
  _Block_object_dispose(&v103, 8);

  _Block_object_dispose(&v109, 8);
  _Block_object_dispose(&v113, 8);

  _Block_object_dispose(&v119, 8);

  return v86;
}

- (void)didSaveWithChangeCount:(unint64_t)count packageDataStorage:(id)storage
{
  storageCopy = storage;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FE474;
  block[3] = &unk_27A6E2C50;
  v10 = storageCopy;
  countCopy = count;
  block[4] = self;
  v8 = storageCopy;
  dispatch_barrier_async(accessQueue, block);
}

- (unint64_t)length
{
  v3 = objc_msgSend_dataStorageToUse(self, a2, v2);
  v6 = objc_msgSend_length(v3, v4, v5);

  return v6;
}

- (BOOL)isLengthPrecise
{
  v3 = objc_msgSend_dataStorageToUse(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    isLengthPrecise = objc_msgSend_isLengthPrecise(v3, v4, v5);
  }

  else
  {
    isLengthPrecise = 1;
  }

  return isLengthPrecise;
}

- (unint64_t)fileFormatVersion
{
  v3 = objc_msgSend_dataStorageToUse(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_fileFormatVersion(v3, v4, v5);
  }

  else
  {
    v6 = UnsafePointer();
  }

  v7 = v6;

  return v7;
}

- (id)packageLocator
{
  v3 = objc_msgSend_packageDataStorage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_packageLocator(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unsigned)packageIdentifier
{
  v3 = objc_msgSend_packageDataStorage(self, a2, v2);
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_msgSend_packageIdentifier(v3, v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)encodedLength
{
  v3 = objc_msgSend_dataStorageToUse(self, a2, v2);
  v6 = objc_msgSend_encodedLength(v3, v4, v5);

  return v6;
}

- (unint64_t)reservedLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FE8CC;
  v5[3] = &unk_27A6E2E30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unint64_t)p_materializedLength
{
  dispatch_assert_queue_V2(self->_accessQueue);
  temporaryMaterializedDataStorage = self->_temporaryMaterializedDataStorage;
  if (!temporaryMaterializedDataStorage)
  {
    temporaryMaterializedDataStorage = self->_packageDataStorage;
  }

  v4 = temporaryMaterializedDataStorage;
  if ((objc_opt_respondsToSelector() & 1) != 0 && !objc_msgSend_isLengthPrecise(v4, v5, v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = objc_msgSend_length(v4, v5, v6);
  }

  unmaterializedRanges = self->_unmaterializedRanges;
  if (unmaterializedRanges && objc_msgSend_count(unmaterializedRanges, v5, v6) && objc_msgSend_lastIndex(self->_unmaterializedRanges, v5, v9) + 1 > v7)
  {
    v7 = objc_msgSend_lastIndex(self->_unmaterializedRanges, v5, v10) + 1;
  }

  v11 = atomic_load(&self->_materializedLength);
  if (v11)
  {
    v12 = v11 == -1;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v11 = v7;
  }

  else
  {
    if (v7)
    {
      v13 = v7 == v11;
    }

    else
    {
      v13 = 1;
    }

    if (!v13)
    {
      v14 = MEMORY[0x277D81150];
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSPRemoteDataStorage p_materializedLength]");
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v18, v15, v17, 869, 0, "materializedLength mismatch with length");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20);
    }
  }

  return v11;
}

- (unint64_t)materializedLength
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FEC48;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)decryptionInfo
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_2769F99BC;
  v10 = sub_2769F99CC;
  v11 = 0;
  accessQueue = self->_accessQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2769FED74;
  v5[3] = &unk_27A6E28C0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(accessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)linkOrCopyToURL:(id)l encryptionInfo:(id)info canLink:(BOOL)link
{
  linkCopy = link;
  lCopy = l;
  infoCopy = info;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_2769F99BC;
  v46 = sub_2769F99CC;
  v47 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_2769F99BC;
  v36 = sub_2769F99CC;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FF180;
  block[3] = &unk_27A6E4130;
  block[4] = self;
  block[5] = &v42;
  block[6] = &v32;
  block[7] = &v38;
  block[8] = &v28;
  dispatch_sync(accessQueue, block);
  v11 = v33[5];
  if (!v11 || v39[3])
  {
    v11 = v43[5];
  }

  v12 = v11;
  v13 = v12;
  if ((v29[3] & 1) == 0)
  {
    if (UnsafePointer == -1)
    {
      canLink = 0;
      goto LABEL_14;
    }

    sub_276BD33F0();
LABEL_13:
    canLink = 0;
    goto LABEL_14;
  }

  if (!v12)
  {
    if (UnsafePointer == -1)
    {
      canLink = 0;
      goto LABEL_14;
    }

    sub_276BD3418();
    goto LABEL_13;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSPRemoteDataStorage linkOrCopyToURL:encryptionInfo:canLink:]");
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
    v20 = objc_opt_class();
    v21 = NSStringFromClass(v20);
    v22 = NSStringFromSelector(sel_linkOrCopyToURL_encryptionInfo_canLink_);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v23, v17, v19, 923, 0, "<%{public}@: %{public}p> does not implement %{public}@", v21, v13, v22);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25);
    goto LABEL_13;
  }

  canLink = objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(v13, v14, lCopy, infoCopy, linkCopy);
LABEL_14:

  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v42, 8);

  return canLink;
}

- (void)didAddDownloadObserverWithData:(id)data
{
  accessQueue = self->_accessQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FF32C;
  block[3] = &unk_27A6E27F8;
  block[4] = self;
  dispatch_async(accessQueue, block);
}

- (BOOL)isPartialDataInPackage:(id)package
{
  packageCopy = package;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  accessQueue = self->_accessQueue;
  v14 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FF454;
  block[3] = &unk_27A6E2C00;
  v9 = packageCopy;
  v10 = &v11;
  block[4] = self;
  v6 = packageCopy;
  dispatch_sync(accessQueue, block);
  LOBYTE(accessQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return accessQueue;
}

- (BOOL)migrateToTemporaryDataStorageIfNeeded
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_2769F99BC;
  accessQueue = self->_accessQueue;
  v16[4] = sub_2769F99CC;
  v17 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2769FF684;
  block[3] = &unk_27A6E2E80;
  block[4] = self;
  block[5] = v16;
  block[6] = &v18;
  dispatch_sync(accessQueue, block);
  if (*(v19 + 24) == 1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v4 = objc_opt_class();
    v7 = objc_msgSend_ioQueue(v4, v5, v6);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = sub_2769FF78C;
    v10[3] = &unk_27A6E2EA8;
    v10[4] = self;
    v10[5] = &v11;
    v10[6] = v16;
    dispatch_sync(v7, v10);

    v8 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v8 = 1;
  }

  _Block_object_dispose(v16, 8);

  _Block_object_dispose(&v18, 8);
  return v8 & 1;
}

- (id)p_migrateToTemporaryDataStorageWithEncryptionInfo:(id)info updateInternalDataStorages:(BOOL)storages
{
  infoCopy = info;
  v7 = objc_opt_class();
  v10 = objc_msgSend_ioQueue(v7, v8, v9);
  dispatch_assert_queue_V2(v10);

  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_2769F99BC;
  v24 = sub_2769F99CC;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v25 = objc_msgSend_temporaryDataStorageURLForRemoteDataStorage_(WeakRetained, v12, self);

  if (v21[5])
  {
    accessQueue = self->_accessQueue;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_2769FF9AC;
    v16[3] = &unk_27A6E4158;
    storagesCopy = storages;
    v16[4] = self;
    v18 = &v20;
    v17 = infoCopy;
    dispatch_barrier_sync(accessQueue, v16);
  }

  else if (UnsafePointer != -1)
  {
    sub_276BD3440();
  }

  v14 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v14;
}

- (BOOL)p_copyPartiallyMaterializedDataToURL:(id)l encryptionInfo:(id)info
{
  lCopy = l;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_accessQueue);
  temporaryMaterializedDataStorage = self->_temporaryMaterializedDataStorage;
  if (temporaryMaterializedDataStorage)
  {
    v9 = temporaryMaterializedDataStorage;
    isReadable = objc_msgSend_isReadable(v9, v10, v11);
    goto LABEL_5;
  }

  v9 = self->_packageDataStorage;
  if (v9)
  {
    isReadable = objc_msgSend_isReadable(v9, v14, v15);
LABEL_5:
    if ((isReadable & 1) == 0)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSPRemoteDataStorage p_copyPartiallyMaterializedDataToURL:encryptionInfo:]");
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v22, v17, v19, 1071, 0, "Partial data must be readable. class=%{public}@", v21);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24);
    }

    if (objc_opt_respondsToSelector())
    {
      if (objc_msgSend_linkOrCopyToURL_encryptionInfo_canLink_(v9, v25, lCopy, infoCopy, 1))
      {
        goto LABEL_9;
      }

      if (UnsafePointer == -1)
      {
        v26 = 0;
        goto LABEL_14;
      }

      sub_276BD347C();
    }

    else
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSPRemoteDataStorage p_copyPartiallyMaterializedDataToURL:encryptionInfo:]");
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPRemoteDataStorage.mm");
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v33, v28, v30, 1079, 0, "Remote data inner data storage does not support copying to URL. class=%{public}@", v32);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35);
    }

    v26 = 0;
    goto LABEL_14;
  }

LABEL_9:
  v26 = 1;
LABEL_14:

  return v26;
}

- (TSPRemoteDataStorageDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end