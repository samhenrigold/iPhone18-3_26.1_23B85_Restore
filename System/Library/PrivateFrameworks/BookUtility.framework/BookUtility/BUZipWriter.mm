@interface BUZipWriter
- (BOOL)isClosed;
- (BUZipWriter)initWithOptions:(unint64_t)options;
- (NSArray)sortedEntries;
- (id)entryWithName:(id)name;
- (id)localFileHeaderDataForEntry:(id)entry;
- (id)p_writeChannel;
- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler;
- (id)sortedEntriesImpl;
- (unint64_t)archiveLength;
- (unint64_t)entriesCount;
- (void)addBarrier:(id)barrier;
- (void)addData:(id)data queue:(id)queue completion:(id)completion;
- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion;
- (void)addExistingEntry:(id)entry;
- (void)addExistingEntryImpl:(id)impl;
- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate;
- (void)closeWithQueue:(id)queue completion:(id)completion;
- (void)enumerateEntriesUsingBlock:(id)block;
- (void)finishEntry;
- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion;
- (void)flushEntryData;
- (void)handleWriteError:(id)error;
- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion;
- (void)setEntryInsertionOffset:(int64_t)offset;
- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion;
- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion;
- (void)truncateToOffset:(int64_t)offset completion:(id)completion;
- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion;
- (void)writeCentralDirectory;
- (void)writeCentralFileHeaderDataForEntry:(id)entry;
- (void)writeData:(id)data queue:(id)queue completion:(id)completion;
- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion;
- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler;
- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset;
- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count;
@end

@implementation BUZipWriter

- (BUZipWriter)initWithOptions:(unint64_t)options
{
  v19.receiver = self;
  v19.super_class = BUZipWriter;
  v4 = [(BUZipWriter *)&v19 init];
  v5 = v4;
  if (v4)
  {
    v4->_options = options;
    v6 = objc_opt_new();
    entries = v5->_entries;
    v5->_entries = v6;

    v8 = objc_opt_new();
    entriesMap = v5->_entriesMap;
    v5->_entriesMap = v8;

    v10 = dispatch_queue_create("BUZipWriter.Channel", 0);
    channelQueue = v5->_channelQueue;
    v5->_channelQueue = v10;

    v12 = dispatch_queue_create("BUZipWriter.Write", 0);
    writeQueue = v5->_writeQueue;
    v5->_writeQueue = v12;

    v16 = objc_msgSend_date(MEMORY[0x277CBEAA8], v14, v15);
    updatedEntryLastModificationDate = v5->_updatedEntryLastModificationDate;
    v5->_updatedEntryLastModificationDate = v16;
  }

  return v5;
}

- (unint64_t)entriesCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DAD76C;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (id)p_writeChannel
{
  v6 = objc_msgSend_channelQueue(self, a2, v2);
  if (v6 == MEMORY[0x277D85CD0])
  {
    objc_msgSend_isMainThread(MEMORY[0x277CCACC8], v4, v5);
  }

  writeChannel = self->_writeChannel;
  if (!writeChannel)
  {
    if (self->_writeChannelCompletionGroup)
    {
      BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 107, "[BUZipWriter p_writeChannel]", "_writeChannelCompletionGroup == nil", @"Write channel dispatch group should not be initialized.", v7, v8, v9, v25);
      BUCrashBreakpoint();
      result = BUIsRunningTests(v11, v12);
      if (result)
      {
        BUCrashFinalThrow(@"Write channel dispatch group should not be initialized.", v14, v15, v16, v17, v18, v19, v20, v26);
      }

      __break(1u);
      return result;
    }

    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = sub_241DAD954;
    v32 = sub_241DAD964;
    v33 = dispatch_group_create();
    dispatch_group_enter(v29[5]);
    objc_msgSend_setWriteChannelCompletionGroup_(self, v21, v29[5]);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = sub_241DAD96C;
    v27[3] = &unk_278D1CE28;
    v27[4] = &v28;
    v23 = objc_msgSend_prepareWriteChannelWithCloseCompletionHandler_(self, v22, v27);
    v24 = self->_writeChannel;
    self->_writeChannel = v23;

    _Block_object_dispose(&v28, 8);
    writeChannel = self->_writeChannel;
  }

  return writeChannel;
}

- (void)beginEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  nameCopy = name;
  dateCopy = date;
  v18 = objc_msgSend_writeQueue(self, v16, v17);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DADA80;
  block[3] = &unk_278D1CE50;
  block[4] = self;
  v22 = nameCopy;
  sizeCopy = size;
  v23 = dateCopy;
  v24 = a6;
  cCopy = c;
  modificationDateCopy = modificationDate;
  v19 = dateCopy;
  v20 = nameCopy;
  dispatch_async(v18, block);
}

- (void)beginEntryWithNameImpl:(id)impl force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c forceCalculatingSizeAndCRCForPreservingLastModificationDate:(BOOL)modificationDate
{
  modificationDateCopy = modificationDate;
  v9 = *&c;
  implCopy = impl;
  dateCopy = date;
  if (self->_closed)
  {
    BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 133, "[BUZipWriter beginEntryWithNameImpl:force32BitSize:lastModificationDate:size:CRC:forceCalculatingSizeAndCRCForPreservingLastModificationDate:]", "!self->_closed", @"Already closed.", v16, v17, v18, v53);
    BUCrashBreakpoint();
    if (BUIsRunningTests(v20, v21))
    {
      BUCrashFinalThrow(@"Already closed.", v22, v23, v24, v25, v26, v27, v28, v54);
    }

    __break(1u);
  }

  else
  {
    v29 = objc_msgSend_error(self, v14, v15);

    if (!v29)
    {
      objc_msgSend_finishEntry(self, v30, v31);
      v33 = objc_msgSend_objectForKeyedSubscript_(self->_entriesMap, v32, implCopy);

      if (!v33)
      {
        v34 = objc_alloc_init(BUZipWriterEntry);
        currentEntry = self->_currentEntry;
        self->_currentEntry = v34;

        objc_msgSend_setName_(self->_currentEntry, v36, implCopy);
        objc_msgSend_setOffset_(self->_currentEntry, v37, self->_currentOffset);
        if (a6)
        {
          v39 = modificationDateCopy;
        }

        else
        {
          v39 = 1;
        }

        self->_calculateSize = v39;
        if (modificationDateCopy)
        {
          objc_msgSend_setSize_(self->_currentEntry, v38, 0);
        }

        else
        {
          objc_msgSend_setSize_(self->_currentEntry, v38, a6);
        }

        self->_force32BitSize = self->_calculateSize && size;
        if (v9)
        {
          v41 = modificationDateCopy;
        }

        else
        {
          v41 = 1;
        }

        self->_calculateCRC = v41;
        v42 = v9;
        if (v41)
        {
          v42 = crc32(0, 0, 0);
        }

        objc_msgSend_setCRC_(self->_currentEntry, v40, v42);
        if (modificationDateCopy)
        {
          objc_msgSend_setLastModificationDate_(self->_currentEntry, v43, self->_updatedEntryLastModificationDate);
          self->_sizeToMatch = a6;
          self->_CRCToMatch = v9;
          v44 = dateCopy;
          lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
          self->_lastModificationDateIfSizeAndCRCMatches = v44;
        }

        else
        {
          updatedEntryLastModificationDate = dateCopy;
          if (!dateCopy)
          {
            updatedEntryLastModificationDate = self->_updatedEntryLastModificationDate;
          }

          objc_msgSend_setLastModificationDate_(self->_currentEntry, v43, updatedEntryLastModificationDate);
          lastModificationDateIfSizeAndCRCMatches = self->_lastModificationDateIfSizeAndCRCMatches;
          self->_sizeToMatch = 0;
          self->_lastModificationDateIfSizeAndCRCMatches = 0;
          self->_CRCToMatch = 0;
        }

        v49 = objc_msgSend_localFileHeaderDataForEntry_(self, v47, self->_currentEntry);
        if ((self->_calculateSize || self->_calculateCRC) && (self->_options & 8) == 0)
        {
          objc_storeStrong(&self->_localFileHeaderData, v49);
          v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
        }

        else
        {
          objc_msgSend_writeData_(self, v48, v49);
          localFileHeaderData = self->_localFileHeaderData;
          self->_localFileHeaderData = 0;

          v50 = 0;
        }

        entryDatas = self->_entryDatas;
        self->_entryDatas = v50;

        self->_entryDataSize = 0;
      }
    }
  }
}

- (void)addData:(id)data queue:(id)queue completion:(id)completion
{
  dataCopy = data;
  queueCopy = queue;
  completionCopy = completion;
  v13 = objc_msgSend_writeQueue(self, v11, v12);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_241DADE00;
  v17[3] = &unk_278D1CE78;
  v17[4] = self;
  v18 = dataCopy;
  v19 = queueCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = queueCopy;
  v16 = dataCopy;
  dispatch_async(v13, v17);
}

- (void)addDataImpl:(id)impl queue:(id)queue completion:(id)completion
{
  implCopy = impl;
  queueCopy = queue;
  completionCopy = completion;
  if (!self->_closed)
  {
    v25 = objc_msgSend_error(self, v10, v11);
    if (v25)
    {
      v26 = MEMORY[0x245D00360](completionCopy);
      v27 = v26;
      if (v26)
      {
        if (queueCopy)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = sub_241DAE120;
          block[3] = &unk_278D1CEA0;
          v48 = v26;
          v47 = v25;
          dispatch_async(queueCopy, block);
        }

        else
        {
          (v26)[2](v26, v25);
        }
      }

LABEL_23:
      return;
    }

    size = dispatch_data_get_size(implCopy);
    entryDatas = self->_entryDatas;
    if (entryDatas)
    {
      localFileHeaderData = self->_localFileHeaderData;
      if (dispatch_data_get_size(localFileHeaderData) + size + self->_entryDataSize < 0x40000)
      {
        objc_msgSend_addObject_(entryDatas, v32, implCopy);
        self->_entryDataSize += size;
        v38 = MEMORY[0x245D00360](completionCopy);
        v39 = v38;
        if (v38)
        {
          if (queueCopy)
          {
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = sub_241DAE134;
            v44[3] = &unk_278D1CEC8;
            v45 = v38;
            dispatch_async(queueCopy, v44);
          }

          else
          {
            v38[2](v38, 0);
          }
        }

        goto LABEL_19;
      }

      objc_msgSend_writeData_(self, v32, localFileHeaderData);
      v33 = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      objc_msgSend_flushEntryData(self, v34, v35);
    }

    objc_msgSend_writeData_queue_completion_(self, v28, implCopy, queueCopy, completionCopy);
LABEL_19:
    if (self->_calculateSize)
    {
      currentEntry = self->_currentEntry;
      v41 = objc_msgSend_size(currentEntry, v36, v37);
      objc_msgSend_setSize_(currentEntry, v42, v41 + size);
    }

    if (self->_calculateCRC)
    {
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = sub_241DAE148;
      v43[3] = &unk_278D1CEF0;
      v43[4] = self;
      dispatch_data_apply(implCopy, v43);
    }

    goto LABEL_23;
  }

  BUReportAssertionFailureWithMessage("/Library/Caches/com.apple.xbs/Sources/AlderServices/frameworks/BookUtility/zip/BUZipWriter.m", 202, "[BUZipWriter addDataImpl:queue:completion:]", "!self->_closed", @"Already closed.", v12, v13, v14, v43[0]);
  BUCrashBreakpoint();
  if (BUIsRunningTests(v16, v17))
  {
    BUCrashFinalThrow(@"Already closed.", v18, v19, v20, v21, v22, v23, v24, v43[0]);
  }

  __break(1u);
}

- (void)flushEntryData
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = self->_entryDatas;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v5)
  {
    v7 = v5;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        objc_msgSend_writeData_(self, v6, *(*(&v11 + 1) + 8 * v9++), v11);
      }

      while (v7 != v9);
      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v6, &v11, v15, 16);
    }

    while (v7);
  }

  entryDatas = self->_entryDatas;
  self->_entryDatas = 0;

  self->_entryDataSize = 0;
}

- (void)flushCurrentEntryWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = objc_msgSend_writeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAE3A8;
  block[3] = &unk_278D1CF68;
  block[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(v10, block);
}

- (void)finishEntry
{
  currentEntry = self->_currentEntry;
  if (!currentEntry)
  {
    return;
  }

  if (self->_calculateSize || self->_calculateCRC)
  {
    if (self->_force32BitSize)
    {
      v4 = objc_msgSend_size(self->_currentEntry, a2, currentEntry);
      if (HIDWORD(v4))
      {
        v5 = BUZipLog(v4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_241DCF7FC(v5, v6, v7, v8, v9, v10, v11, v12);
        }

        v14 = objc_msgSend_bu_fileWriteUnknownErrorWithUserInfo_(MEMORY[0x277CCA9B8], v13, 0);
        objc_msgSend_handleWriteError_(self, v15, v14);

        return;
      }

      currentEntry = self->_currentEntry;
    }

    if (self->_lastModificationDateIfSizeAndCRCMatches)
    {
      v16 = objc_msgSend_size(currentEntry, a2, currentEntry);
      currentEntry = self->_currentEntry;
      if (v16 == self->_sizeToMatch)
      {
        v17 = objc_msgSend_CRC(self->_currentEntry, a2, currentEntry);
        currentEntry = self->_currentEntry;
        if (v17 == self->_CRCToMatch)
        {
          objc_msgSend_setLastModificationDate_(self->_currentEntry, a2, self->_lastModificationDateIfSizeAndCRCMatches);
          currentEntry = self->_currentEntry;
        }
      }
    }

    v20 = objc_msgSend_localFileHeaderDataForEntry_(self, a2, currentEntry);
    if (self->_entryDatas)
    {
      objc_msgSend_writeData_(self, v18, v20);
      localFileHeaderData = self->_localFileHeaderData;
      self->_localFileHeaderData = 0;

      objc_msgSend_flushEntryData(self, v22, v23);
    }

    else
    {
      v24 = objc_msgSend_offset(self->_currentEntry, v18, v19);
      objc_msgSend_writeData_offset_(self, v25, v20, v24);
    }

    currentEntry = self->_currentEntry;
  }

  objc_msgSend_addObject_(self->_entries, a2, currentEntry);
  entriesMap = self->_entriesMap;
  v26 = self->_currentEntry;
  v30 = objc_msgSend_name(v26, v28, v29);
  objc_msgSend_setObject_forKeyedSubscript_(entriesMap, v31, v26, v30);

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;

  v33 = self->_currentEntry;
  self->_currentEntry = 0;
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel completion:(id)completion
{
  v10 = *&c;
  sizeCopy = size;
  completionCopy = completion;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_241DAE9F4;
  v19[3] = &unk_278D1CF90;
  v20 = completionCopy;
  v17 = completionCopy;
  objc_msgSend_writeEntryWithName_force32BitSize_lastModificationDate_size_CRC_fromReadChannel_writeHandler_(self, v18, name, sizeCopy, date, a6, v10, channel, v19);
}

- (void)writeEntryWithName:(id)name force32BitSize:(BOOL)size lastModificationDate:(id)date size:(unint64_t)a6 CRC:(unsigned int)c fromReadChannel:(id)channel writeHandler:(id)handler
{
  nameCopy = name;
  dateCopy = date;
  channelCopy = channel;
  handlerCopy = handler;
  v21 = objc_msgSend_writeQueue(self, v19, v20);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAEBBC;
  block[3] = &unk_278D1CFE0;
  block[4] = self;
  v27 = nameCopy;
  sizeCopy = size;
  cCopy = c;
  v28 = dateCopy;
  v29 = channelCopy;
  v30 = handlerCopy;
  v31 = a6;
  v22 = handlerCopy;
  v23 = channelCopy;
  v24 = dateCopy;
  v25 = nameCopy;
  dispatch_async(v21, block);
}

- (void)addExistingEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DAEEEC;
  v9[3] = &unk_278D1D008;
  v9[4] = self;
  v10 = entryCopy;
  v8 = entryCopy;
  dispatch_sync(v7, v9);
}

- (void)addExistingEntryImpl:(id)impl
{
  implCopy = impl;
  v4 = objc_alloc_init(BUZipWriterEntry);
  v7 = objc_msgSend_name(implCopy, v5, v6);
  objc_msgSend_setName_(v4, v8, v7);

  v11 = objc_msgSend_lastModificationDate(implCopy, v9, v10);
  objc_msgSend_setLastModificationDate_(v4, v12, v11);

  if (objc_msgSend_isCompressed(implCopy, v13, v14))
  {
    v17 = objc_msgSend_compressedSize(implCopy, v15, v16);
  }

  else
  {
    v17 = objc_msgSend_size(implCopy, v15, v16);
  }

  objc_msgSend_setSize_(v4, v18, v17);
  v21 = objc_msgSend_offset(implCopy, v19, v20);
  objc_msgSend_setOffset_(v4, v22, v21);
  v25 = objc_msgSend_CRC(implCopy, v23, v24);
  objc_msgSend_setCRC_(v4, v26, v25);
  objc_msgSend_addObject_(self->_entries, v27, v4);
  entriesMap = self->_entriesMap;
  v31 = objc_msgSend_name(implCopy, v29, v30);
  objc_msgSend_setObject_forKeyedSubscript_(entriesMap, v32, v4, v31);

  sortedEntries = self->_sortedEntries;
  self->_sortedEntries = 0;
}

- (void)setEntryInsertionOffset:(int64_t)offset
{
  v5 = objc_msgSend_writeQueue(self, a2, offset);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DAF0C0;
  v6[3] = &unk_278D1D030;
  v6[4] = self;
  v6[5] = offset;
  dispatch_sync(v5, v6);
}

- (void)addBarrier:(id)barrier
{
  barrierCopy = barrier;
  if (barrierCopy)
  {
    v7 = objc_msgSend_writeQueue(self, v4, v5);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_241DAF190;
    v8[3] = &unk_278D1D058;
    v8[4] = self;
    v9 = barrierCopy;
    dispatch_async(v7, v8);
  }
}

- (void)closeWithQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  v10 = objc_msgSend_writeQueue(self, v8, v9);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DAF458;
  block[3] = &unk_278D1CF68;
  block[4] = self;
  v14 = queueCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = queueCopy;
  dispatch_async(v10, block);
}

- (void)writeCentralDirectory
{
  v21 = *MEMORY[0x277D85DE8];
  currentOffset = self->_currentOffset;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_entries;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v16, v20, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_writeCentralFileHeaderDataForEntry_(self, v7, *(*(&v16 + 1) + 8 * v10++), v16);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v16, v20, 16);
    }

    while (v8);
  }

  v11 = self->_currentOffset - currentOffset;
  v14 = objc_msgSend_count(self->_entries, v12, v13);
  objc_msgSend_writeEndOfCentralDirectoryDataWithOffset_size_entryCount_(self, v15, currentOffset, v11, v14);
}

- (id)localFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_name(entryCopy, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  __src = v11;
  v12 = strlen(v11);
  v15 = v12;
  if (v12 >= 0x10000)
  {
    v16 = BUZipLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF834(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0xFFFFLL;
  }

  v24 = self->_options & 1;
  v25 = v24 | (objc_msgSend_size(entryCopy, v13, v14) >> 32);
  v26 = v25 != 0;
  if (v25 || self->_calculateSize)
  {
    v54 = !self->_force32BitSize;
    if (self->_force32BitSize)
    {
      v27 = 0;
    }

    else
    {
      v27 = 20;
    }
  }

  else
  {
    v54 = 0;
    v27 = 0;
  }

  v28 = v15 + v27;
  v29 = malloc_type_malloc(v28 + 30, 0xC57CBB9CuLL);
  v30 = v29 + 30;
  *v29 = 67324752;
  v29[1] = 20;
  *(v29 + 4) = 0;
  v33 = objc_msgSend_lastModificationDate(entryCopy, v31, v32);
  v36 = objc_msgSend_bu_DOSTime(v33, v34, v35);

  HIDWORD(v37) = v36;
  LODWORD(v37) = v36;
  *(v29 + 10) = v37 >> 16;
  *(v29 + 14) = objc_msgSend_CRC(entryCopy, v38, v39);
  if (!v26)
  {
    *(v29 + 18) = objc_msgSend_size(entryCopy, v40, v41);
LABEL_16:
    v46 = objc_msgSend_size(entryCopy, v43, v44);
    goto LABEL_18;
  }

  if (self->_force32BitSize)
  {
    v42 = objc_msgSend_size(entryCopy, v40, v41);
    force32BitSize = self->_force32BitSize;
    *(v29 + 18) = v42;
    if (!force32BitSize)
    {
      v46 = -1;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v46 = -1;
  *(v29 + 18) = -1;
LABEL_18:
  *(v29 + 22) = v46;
  *(v29 + 13) = v15;
  *(v29 + 14) = v27;
  memcpy(v30, __src, v15);
  if (v54)
  {
    v49 = &v30[v15];
    *v49 = BUZip64ExtraFieldSignature;
    *(v49 + 1) = 16;
    *(v49 + 4) = objc_msgSend_size(entryCopy, v47, v48);
    *(v49 + 12) = objc_msgSend_size(entryCopy, v50, v51);
  }

  v52 = dispatch_data_create(v29, v28 + 30, 0, *MEMORY[0x277D85CB0]);

  return v52;
}

- (void)writeCentralFileHeaderDataForEntry:(id)entry
{
  entryCopy = entry;
  v7 = objc_msgSend_name(entryCopy, v5, v6);
  v8 = v7;
  v11 = objc_msgSend_UTF8String(v8, v9, v10);

  v12 = strlen(v11);
  v15 = v12;
  if (v12 >= 0x10000)
  {
    v16 = BUZipLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_241DCF834(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v15 = 0xFFFFLL;
  }

  selfCopy = self;
  v24 = self->_options & 2;
  v25 = v24 | (objc_msgSend_size(entryCopy, v13, v14) >> 32);
  v28 = v24 | (objc_msgSend_offset(entryCopy, v26, v27) >> 32);
  v29 = 4 * ((v25 | v28) != 0);
  if (v25)
  {
    v29 = 20;
  }

  v30 = v28 != 0;
  if (v28)
  {
    v31 = v29 | 8;
  }

  else
  {
    v31 = v29;
  }

  v57 = v15 + v31;
  v32 = malloc_type_malloc(v15 + v31 + 46, 0xDAC6F913uLL);
  v33 = v32 + 46;
  *v32 = 33639248;
  *(v32 + 4) = 1310782;
  v36 = objc_msgSend_lastModificationDate(entryCopy, v34, v35);
  v39 = objc_msgSend_bu_DOSTime(v36, v37, v38);

  HIDWORD(v40) = v39;
  LODWORD(v40) = v39;
  *(v32 + 3) = v40 >> 16;
  *(v32 + 4) = objc_msgSend_CRC(entryCopy, v41, v42);
  if (v25)
  {
    v45 = -1;
    *(v32 + 5) = -1;
  }

  else
  {
    *(v32 + 5) = objc_msgSend_size(entryCopy, v43, v44);
    v45 = objc_msgSend_size(entryCopy, v46, v47);
  }

  *(v32 + 6) = v45;
  *(v32 + 14) = v15;
  *(v32 + 15) = v31;
  *(v32 + 4) = 0;
  *(v32 + 20) = 0;
  if (v30)
  {
    *(v32 + 42) = -1;
    memcpy(v33, v11, v15);
    *&v33[v15] = BUZip64ExtraFieldSignature;
    v50 = &v33[v15 + 4];
    *&v33[v15 + 2] = 0;
    v51 = &v33[v15 + 2];
    if (!v25)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *(v32 + 42) = objc_msgSend_offset(entryCopy, v43, v44);
    memcpy(v33, v11, v15);
    if (!v25)
    {
      goto LABEL_21;
    }

    v50 = &v33[v15 + 4];
    *&v33[v15] = BUZip64ExtraFieldSignature;
    v51 = &v33[v15 + 2];
  }

  v52 = &v33[v15];
  *v51 = 16;
  *v50 = objc_msgSend_size(entryCopy, v48, v49);
  *(v52 + 12) = objc_msgSend_size(entryCopy, v53, v54);
  if (v30)
  {
    v50 = (v52 + 20);
LABEL_20:
    *v51 += 8;
    *v50 = objc_msgSend_offset(entryCopy, v48, v49);
  }

LABEL_21:
  v55 = dispatch_data_create(v32, v57 + 46, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(selfCopy, v56, v55);
}

- (void)writeEndOfCentralDirectoryDataWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  countCopy = count;
  sizeCopy = size;
  offsetCopy = offset;
  if (count > 0xFFFE)
  {
    v9 = 1;
  }

  else
  {
    v9 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (size > 4294967294)
  {
    v10 = 1;
  }

  else
  {
    v10 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if (offset > 4294967294)
  {
    v11 = 1;
  }

  else
  {
    v11 = (LOBYTE(self->_options) >> 2) & 1;
  }

  if ((v9 & 1) != 0 || (v10 & 1) != 0 || v11)
  {
    currentOffset = self->_currentOffset;
    objc_msgSend_writeZip64EndOfCentralDirectoryWithOffset_size_entryCount_(self, a2, offset, size, count);
    objc_msgSend_writeZip64EndOfCentralDirectoryLocatorWithOffset_(self, v13, currentOffset);
  }

  v14 = malloc_type_malloc(0x16uLL, 0xBF87FE33uLL);
  *v14 = 101010256;
  if (v9)
  {
    v15 = -1;
  }

  else
  {
    v15 = countCopy;
  }

  v14[4] = v15;
  v14[5] = v15;
  if (v10)
  {
    v16 = -1;
  }

  else
  {
    v16 = sizeCopy;
  }

  if (v11)
  {
    v17 = -1;
  }

  else
  {
    v17 = offsetCopy;
  }

  *(v14 + 3) = v16;
  *(v14 + 4) = v17;
  v14[10] = 0;
  v19 = dispatch_data_create(v14, 0x16uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v18, v19);
}

- (void)writeZip64EndOfCentralDirectoryWithOffset:(int64_t)offset size:(int64_t)size entryCount:(unint64_t)count
{
  v9 = malloc_type_malloc(0x38uLL, 0xC337CB57uLL);
  *v9 = 101075792;
  *(v9 + 4) = 44;
  v9[2] = 0;
  v9[3] = count;
  *(v9 + 3) = 1310782;
  v9[4] = count;
  v9[5] = size;
  v9[6] = offset;
  v11 = dispatch_data_create(v9, 0x38uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v10, v11);
}

- (void)writeZip64EndOfCentralDirectoryLocatorWithOffset:(int64_t)offset
{
  v5 = malloc_type_malloc(0x14uLL, 0x8C30F117uLL);
  *v5 = 117853008;
  v5[1] = 0;
  *(v5 + 1) = offset;
  v5[4] = 1;
  v7 = dispatch_data_create(v5, 0x14uLL, 0, *MEMORY[0x277D85CB0]);
  objc_msgSend_writeData_(self, v6, v7);
}

- (void)writeData:(id)data queue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  size = dispatch_data_get_size(data);
  self->_currentOffset += size;
  writtenOffset = self->_writtenOffset;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DB02E4;
  v15[3] = &unk_278D1D0A8;
  v16 = queueCopy;
  v17 = completionCopy;
  v12 = queueCopy;
  v13 = completionCopy;
  objc_msgSend_p_writeData_offset_completion_(self, v14, data, writtenOffset, v15);
  self->_writtenOffset += size;
}

- (void)p_writeData:(id)data offset:(int64_t)offset completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v12 = objc_msgSend_channelQueue(self, v10, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_241DB04D4;
  v15[3] = &unk_278D1D120;
  v15[4] = self;
  v16 = dataCopy;
  v17 = completionCopy;
  offsetCopy = offset;
  v13 = completionCopy;
  v14 = dataCopy;
  dispatch_async(v12, v15);
}

- (id)prepareWriteChannelWithCloseCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = MEMORY[0x277CBEAD8];
  v5 = *MEMORY[0x277CBE658];
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"%@: %s", @"Abstract method", "[BUZipWriter prepareWriteChannelWithCloseCompletionHandler:]");
  v9 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v8, v5, v7, 0);
  v10 = v9;

  objc_exception_throw(v9);
}

- (unint64_t)archiveLength
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DB08D4;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

- (void)handleWriteError:(id)error
{
  errorCopy = error;
  v7 = errorCopy;
  if (errorCopy)
  {
    v8 = objc_msgSend_code(errorCopy, v5, v6);
    if (v8 != 3072 || (objc_msgSend_domain(v7, v9, v10), v11 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v11, v12, *MEMORY[0x277CCA050]), v11, (isEqualToString & 1) == 0))
    {
      v16 = BUZipLog(v8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        sub_241DCF86C(v7, v16, v17);
      }
    }

    v18 = objc_msgSend_error(self, v14, v15);

    if (!v18)
    {
      v21 = objc_msgSend_channelQueue(self, v19, v20);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_241DB0A38;
      block[3] = &unk_278D1D148;
      block[4] = self;
      dispatch_async(v21, block);

      objc_msgSend_setError_(self, v22, v7);
    }
  }
}

- (void)enumerateEntriesUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_241DB0B30;
  v9[3] = &unk_278D1D058;
  v9[4] = self;
  v10 = blockCopy;
  v8 = blockCopy;
  dispatch_sync(v7, v9);
}

- (id)sortedEntriesImpl
{
  sortedEntries = self->_sortedEntries;
  if (!sortedEntries)
  {
    v4 = objc_msgSend_sortedArrayUsingComparator_(self->_entries, a2, &unk_2853F29E0);
    v5 = self->_sortedEntries;
    self->_sortedEntries = v4;

    sortedEntries = self->_sortedEntries;
  }

  return sortedEntries;
}

- (NSArray)sortedEntries
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_241DAD954;
  v12 = sub_241DAD964;
  v13 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_241DB0EF4;
  v7[3] = &unk_278D1CE00;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (BOOL)isClosed
{
  selfCopy = self;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v4 = objc_msgSend_writeQueue(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_241DB1018;
  v6[3] = &unk_278D1CE00;
  v6[4] = selfCopy;
  v6[5] = &v7;
  dispatch_sync(v4, v6);

  LOBYTE(selfCopy) = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return selfCopy;
}

- (id)entryWithName:(id)name
{
  nameCopy = name;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_241DAD954;
  v18 = sub_241DAD964;
  v19 = 0;
  v7 = objc_msgSend_writeQueue(self, v5, v6);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB1170;
  block[3] = &unk_278D1D190;
  v12 = nameCopy;
  v13 = &v14;
  block[4] = self;
  v8 = nameCopy;
  dispatch_sync(v7, block);

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

- (void)truncateToNumberOfEntries:(unint64_t)entries completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_writeQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB1298;
  block[3] = &unk_278D1D1B8;
  v12 = completionCopy;
  entriesCopy = entries;
  block[4] = self;
  v10 = completionCopy;
  dispatch_async(v9, block);
}

- (void)truncateToNumberOfEntriesImpl:(unint64_t)impl completion:(id)completion
{
  completionCopy = completion;
  if (objc_msgSend_entriesCountImpl(self, v6, v7) <= impl)
  {
    v33 = MEMORY[0x245D00360](completionCopy);
    v10 = v33;
    if (v33)
    {
      (*(v33 + 16))(v33, 0);
    }
  }

  else
  {
    v10 = objc_msgSend_sortedEntriesImpl(self, v8, v9);
    if (objc_msgSend_count(v10, v11, v12) > impl)
    {
      implCopy = impl;
      do
      {
        v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, implCopy);
        objc_msgSend_removeObject_(self->_entries, v16, v15);
        entriesMap = self->_entriesMap;
        v20 = objc_msgSend_name(v15, v18, v19);
        objc_msgSend_removeObjectForKey_(entriesMap, v21, v20);

        ++implCopy;
      }

      while (implCopy < objc_msgSend_count(v10, v22, v23));
    }

    v24 = objc_msgSend_objectAtIndexedSubscript_(v10, v13, impl);
    v27 = objc_msgSend_offset(v24, v25, v26);
    objc_msgSend_setEntryInsertionOffsetImpl_(self, v28, v27);
    v31 = objc_msgSend_offset(v24, v29, v30);
    objc_msgSend_truncateToOffsetImpl_completion_(self, v32, v31, completionCopy);
  }
}

- (void)truncateToOffset:(int64_t)offset completion:(id)completion
{
  completionCopy = completion;
  v9 = objc_msgSend_writeQueue(self, v7, v8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_241DB14BC;
  block[3] = &unk_278D1D1B8;
  v12 = completionCopy;
  offsetCopy = offset;
  block[4] = self;
  v10 = completionCopy;
  dispatch_async(v9, block);
}

- (void)truncateToOffsetImpl:(int64_t)impl completion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"%@: %s", @"Abstract method", "[BUZipWriter truncateToOffsetImpl:completion:]");
  v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v5, v9, v6, v8, 0);
  v11 = v10;

  objc_exception_throw(v10);
}

@end