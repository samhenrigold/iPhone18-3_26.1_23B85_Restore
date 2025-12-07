@interface CMSensorRecorderInternal
- (BOOL)setSensorSampleRate:(unsigned int)rate forType:(int)type;
- (BOOL)writeSensorDataToFile:(id)file from:(double)from to:(double)to forType:(int)type;
- (CMSensorRecorderInternal)init;
- (id)_newMetaUsingMessage:(const char *)message withIdentifier:(unint64_t)identifier forType:(int)type;
- (id)newDataByID:(unint64_t)d metaID:(unint64_t)iD forType:(int)type;
- (id)newMetaFrom:(double)from to:(double)to forType:(int)type;
- (void)dealloc;
- (void)teardown;
@end

@implementation CMSensorRecorderInternal

- (CMSensorRecorderInternal)init
{
  v4.receiver = self;
  v4.super_class = CMSensorRecorderInternal;
  v2 = [(CMSensorRecorderInternal *)&v4 init];
  if (v2)
  {
    v2->fInternalQueue = dispatch_queue_create("com.apple.CoreMotion.CMSensorRecorderInternal", 0);
    operator new();
  }

  return 0;
}

- (void)teardown
{
  fInternalQueue = self->fInternalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_19B6149D0;
  block[3] = &unk_1E7532988;
  block[4] = self;
  dispatch_sync(fInternalQueue, block);
}

- (void)dealloc
{
  self->fInternalQueue = 0;
  v3.receiver = self;
  v3.super_class = CMSensorRecorderInternal;
  [(CMSensorRecorderInternal *)&v3 dealloc];
}

- (id)_newMetaUsingMessage:(const char *)message withIdentifier:(unint64_t)identifier forType:(int)type
{
  v5 = *&type;
  v11 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(CLSensorRecorderSensorMetaRequestById);
  objc_msgSend_setIdentifier_(v7, v8, identifier);
  objc_msgSend_setDataType_(v7, v9, v5);
  operator new();
}

- (id)newMetaFrom:(double)from to:(double)to forType:(int)type
{
  v5 = *&type;
  v15 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(CLSensorRecorderSensorMetaRequestByDateRange);
  objc_msgSend_setStartTime_(v8, v9, v10, from);
  objc_msgSend_setEndTime_(v8, v11, v12, to);
  objc_msgSend_setDataType_(v8, v13, v5);
  operator new();
}

- (BOOL)writeSensorDataToFile:(id)file from:(double)from to:(double)to forType:(int)type
{
  v6 = *&type;
  v16 = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(CLSensorRecorderWriteSensorDataToFileForDateRange);
  objc_msgSend_setStartTime_(v9, v10, v11, from);
  objc_msgSend_setEndTime_(v9, v12, v13, to);
  objc_msgSend_setDataType_(v9, v14, v6);
  operator new();
}

- (BOOL)setSensorSampleRate:(unsigned int)rate forType:(int)type
{
  v4 = *&type;
  v5 = *&rate;
  v10 = *MEMORY[0x1E69E9840];
  v6 = objc_alloc_init(CLSensorRecorderSensorSampleRate);
  objc_msgSend_setRate_(v6, v7, v5);
  objc_msgSend_setDataType_(v6, v8, v4);
  operator new();
}

- (id)newDataByID:(unint64_t)d metaID:(unint64_t)iD forType:(int)type
{
  v5 = *&type;
  v13 = *MEMORY[0x1E69E9840];
  v8 = objc_alloc_init(CLSensorRecorderSensorDataRequestById);
  objc_msgSend_setIdentifier_(v8, v9, d);
  objc_msgSend_setMetaIdentifier_(v8, v10, iD);
  objc_msgSend_setDataType_(v8, v11, v5);
  operator new();
}

@end