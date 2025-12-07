@interface TSPReadOnlyMemoryDataStorage
- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer;
- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)data;
- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error;
- (void)performIOChannelReadWithAccessor:(id)accessor;
@end

@implementation TSPReadOnlyMemoryDataStorage

- (TSPReadOnlyMemoryDataStorage)initWithNSData:(id)data
{
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = TSPReadOnlyMemoryDataStorage;
  v6 = [(TSPReadOnlyMemoryDataStorage *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_NSData, data);
    v8 = v7;
  }

  return v7;
}

- (void)performIOChannelReadWithAccessor:(id)accessor
{
  accessorCopy = accessor;
  v4 = [TSPMemoryReadChannel alloc];
  v6 = objc_msgSend_initWithNSData_(v4, v5, self->_NSData);
  accessorCopy[2](accessorCopy, v6);
}

- (BOOL)archiveInfoMessage:(void *)message archiver:(id)archiver packageWriter:(id)writer
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadOnlyMemoryDataStorage archiveInfoMessage:archiver:packageWriter:]", archiver, writer);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadOnlyMemoryDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v9, v6, v8, 35, 0, "Cannot save read only TSPData to a document");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v10, v11);
  return 0;
}

- (id)writeData:(id)data toPackageWriter:(id)writer infoMessage:(void *)message preferredFilename:(id)filename shouldRemoveData:(BOOL)removeData error:(id *)error
{
  v9 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPReadOnlyMemoryDataStorage writeData:toPackageWriter:infoMessage:preferredFilename:shouldRemoveData:error:]", writer, message, filename, removeData);
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPReadOnlyMemoryDataStorage.mm");
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v13, v10, v12, 40, 0, "Cannot save read only TSPData to a document");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15);
  if (error)
  {
    *error = objc_msgSend_tsp_unknownWriteErrorWithUserInfo_(MEMORY[0x277CCA9B8], v16, 0);
  }

  return 0;
}

@end