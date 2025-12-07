@interface TSPCompressionComponentWriteChannel
- (TSPCompressionComponentWriteChannel)initWithWriteChannel:(id)channel compressionAlgorithm:(int)algorithm operation:(int)operation;
- (void)close;
- (void)dealloc;
- (void)writeData:(id)data;
@end

@implementation TSPCompressionComponentWriteChannel

- (TSPCompressionComponentWriteChannel)initWithWriteChannel:(id)channel compressionAlgorithm:(int)algorithm operation:(int)operation
{
  v5 = *&operation;
  v6 = *&algorithm;
  channelCopy = channel;
  v19.receiver = self;
  v19.super_class = TSPCompressionComponentWriteChannel;
  v10 = [(TSPCompressionComponentWriteChannel *)&v19 init];
  if (v10)
  {
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("TSPCompressionComponentWriteChannel.Write", v11);
    writeQueue = v10->_writeQueue;
    v10->_writeQueue = v12;

    objc_storeStrong(&v10->_writeChannel, channel);
    v14 = objc_alloc(MEMORY[0x277D81338]);
    v16 = objc_msgSend_initWithAlgorithm_operation_(v14, v15, v6, v5);
    compressor = v10->_compressor;
    v10->_compressor = v16;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_writeChannel)
  {
    v3 = MEMORY[0x277D81150];
    v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSPCompressionComponentWriteChannel dealloc]");
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/persistence/src/TSPCompressionComponentWriteChannel.m");
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v7, v4, v6, 29, 0, "Failed to close write channel prior to dealloc");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v8, v9);
  }

  v10.receiver = self;
  v10.super_class = TSPCompressionComponentWriteChannel;
  [(TSPCompressionComponentWriteChannel *)&v10 dealloc];
}

- (void)close
{
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_276A20E84;
  block[3] = &unk_27A6E32B0;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

- (void)writeData:(id)data
{
  dataCopy = data;
  writeQueue = self->_writeQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_276A20F80;
  v7[3] = &unk_27A6E4808;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_sync(writeQueue, v7);
}

@end