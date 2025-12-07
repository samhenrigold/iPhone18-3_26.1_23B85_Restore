@interface PSVR2FastPathKernelReader
- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position;
- (PSVR2FastPathKernelReader)initWithQueue:(id)queue;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)readCurrentSample:(__IOGCFastPathSample *)sample;
- (int)readNextSample:(__IOGCFastPathSample *)sample;
- (int)readPreviousSample:(__IOGCFastPathSample *)sample;
- (int)sample:(const __IOGCFastPathSample *)sample getSequenceID:(unint64_t *)d maxID:(unint64_t *)iD;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double :(double *)a8;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double :(double *)a8 :(double *)a9;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer :(int64_t *)a8;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer :(int64_t *)a8 :(int64_t *)a9;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample flags:(unsigned int *)flags;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsampleCount:(unsigned int *)count;
- (int)sampleDestroy:(__IOGCFastPathSample *)destroy;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelReader

- (PSVR2FastPathKernelReader)initWithQueue:(id)queue
{
  v6.receiver = self;
  v6.super_class = PSVR2FastPathKernelReader;
  v4 = [(PSVR2FastPathKernelReader *)&v6 init];
  v4->_IOGCFastPathReaderVTBL = IOGCFastPathReaderInterfacePrepareObjCVtbl();
  v4->_IOGCFastPathSampleContainerVTBL = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  v4->_queue = queue;
  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PSVR2FastPathKernelReader;
  [(PSVR2FastPathKernelReader *)&v3 dealloc];
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x6Bu, 0x29u, 0x76u, 0xBCu, 0xFu, 0xD5u, 0x4Bu, 0x35u, 0xAAu, 0x8Cu, 7u, 0x9Du, 0x84u, 0xBEu, 0xAu, 0x4Bu), CFEqual(v6, v8)))
  {
    v9 = 8;
  }

  else
  {
    v12 = CFUUIDGetConstantUUIDWithBytes(0, 0x4Eu, 0x78u, 0xA7u, 0x1Fu, 0x35u, 0xD1u, 0x4Fu, 0x65u, 0xA7u, 0x27u, 0xC1u, 0x39u, 0x1Eu, 0x29u, 0xE2u, 0x31u);
    if (!CFEqual(v6, v12))
    {
      v10 = -2147483644;
      goto LABEL_5;
    }

    v9 = 16;
  }

  *outInterface = self + v9;
  CFRetain(self);
  v10 = 0;
LABEL_5:
  CFRelease(v6);
  return v10;
}

- (int)readCurrentSample:(__IOGCFastPathSample *)sample
{
  sample->var0 = &self->_IOGCFastPathSampleContainerVTBL;
  sample->var1[0] = self->_queue;
  *&sample->var1[1] = self->_cursor;
  return 0;
}

- (int)sample:(const __IOGCFastPathSample *)sample getSequenceID:(unint64_t *)d maxID:(unint64_t *)iD
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5248;
  v6[3] = &unk_10858;
  v6[4] = sample;
  v6[5] = d;
  v6[6] = iD;
  return sub_5098(self, sample, v6);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsampleCount:(unsigned int *)count
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_52DC;
  v5[3] = &unk_10878;
  v5[4] = count;
  return sub_5098(self, sample, v5);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample flags:(unsigned int *)flags
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5360;
  v6[3] = &unk_10878;
  v6[4] = flags;
  return sub_5098(self, sample, v6);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0
{
  if (!dword_165E4)
  {
    mach_timebase_info(&dword_165E0);
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_5460;
  v17[3] = &unk_108A0;
  fieldCopy = field;
  domainCopy = domain;
  optionsCopy = options;
  v17[6] = uncertainty;
  v17[7] = flags;
  v17[4] = self;
  v17[5] = timestamp;
  return sub_5098(self, sample, v17);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_567C;
  v8[3] = &unk_108C8;
  fieldCopy = field;
  optionsCopy = options;
  v8[4] = self;
  v8[5] = integer;
  return sub_5098(self, sample, v8);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_5A08;
  v8[3] = &unk_108C8;
  fieldCopy = field;
  optionsCopy = options;
  v8[4] = self;
  v8[5] = double;
  return sub_5098(self, sample, v8);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer :(int64_t *)a8
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5B98;
  v9[3] = &unk_108F0;
  fieldCopy = field;
  optionsCopy = options;
  v9[4] = self;
  v9[5] = integer;
  v9[6] = a8;
  return sub_5098(self, sample, v9);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double :(double *)a8
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5C54;
  v9[3] = &unk_108F0;
  fieldCopy = field;
  optionsCopy = options;
  v9[4] = self;
  v9[5] = double;
  v9[6] = a8;
  return sub_5098(self, sample, v9);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer :(int64_t *)a8 :(int64_t *)a9
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5E10;
  v10[3] = &unk_10910;
  fieldCopy = field;
  optionsCopy = options;
  v10[4] = integer;
  v10[5] = a8;
  v10[6] = a9;
  return sub_5098(self, sample, v10);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double :(double *)a8 :(double *)a9
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_5F08;
  v10[3] = &unk_10938;
  fieldCopy = field;
  optionsCopy = options;
  v10[4] = self;
  v10[5] = double;
  v10[6] = a8;
  v10[7] = a9;
  return sub_5098(self, sample, v10);
}

- (int)sampleDestroy:(__IOGCFastPathSample *)destroy
{
  destroy->var0 = 0;
  destroy->var1[0] = 0;
  destroy->var1[1] = 0;
  destroy->var1[2] = -1;
  return 0;
}

- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position
{
  *d = self->_queue->_client->_serviceID;
  *iD = self->_queue->_queueID;
  *channel = 0;
  *position = sample->var1[2];
  return 1;
}

- (int)readNextSample:(__IOGCFastPathSample *)sample
{
  sub_6310(self);
  IOCircularDataQueueCursorMoveNext();
  sub_6364();
  v7 = v6 | 0xE0000000;
  if (!v8)
  {
    result = v7;
  }

  if (!v4 && (v5 & 1) == 0)
  {
    sub_62F0();
  }

  return result;
}

- (int)readPreviousSample:(__IOGCFastPathSample *)sample
{
  sub_6310(self);
  IOCircularDataQueueCursorMovePrevious();
  sub_6364();
  v7 = v6 | 0xE0000000;
  if (!v8)
  {
    result = v7;
  }

  if (!v4 && (v5 & 1) == 0)
  {
    sub_62F0();
  }

  return result;
}

@end