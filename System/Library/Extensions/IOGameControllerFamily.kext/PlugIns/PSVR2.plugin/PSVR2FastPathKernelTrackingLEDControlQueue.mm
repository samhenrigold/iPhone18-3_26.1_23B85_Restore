@interface PSVR2FastPathKernelTrackingLEDControlQueue
- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position;
- (PSVR2FastPathKernelTrackingLEDControlQueue)initWithClient:(id)client options:(id)options;
- (id)getProperty:(id)property;
- (int)get:(unint64_t)get options:(unsigned int)options sample:(__IOGCFastPathSample *)sample;
- (int)queryInterface:(id)interface outInterface:(void *)outInterface;
- (int)sample:(const __IOGCFastPathSample *)sample getSequenceID:(unint64_t *)d maxID:(unint64_t *)iD;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample flags:(unsigned int *)flags;
- (int)sample:(const __IOGCFastPathSample *)sample getSubsampleCount:(unsigned int *)count;
- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t)timestamp tolerance:(unint64_t)tolerance flags:(unsigned int)self0;
- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double)double;
- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t)integer;
- (int)sampleDestroy:(__IOGCFastPathSample *)destroy;
- (void)dealloc;
@end

@implementation PSVR2FastPathKernelTrackingLEDControlQueue

- (PSVR2FastPathKernelTrackingLEDControlQueue)initWithClient:(id)client options:(id)options
{
  v18.receiver = self;
  v18.super_class = PSVR2FastPathKernelTrackingLEDControlQueue;
  v6 = [(PSVR2FastPathKernelTrackingLEDControlQueue *)&v18 init];
  *(v6 + 1) = IOGCFastPathControlQueueInterfacePrepareObjCVtbl();
  *(v6 + 2) = IOGCFastPathSampleContainerInterfacePrepareObjCVtbl();
  *(v6 + 3) = client;
  [options objectForKey:@"QueueChannel"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (sub_7794(*(v6 + 3)))
    {
      sub_84EC();
      return 0;
    }

    if (IOConnectMapMemory64(*(*(v6 + 3) + 48), *(v6 + 8), mach_task_self_, v6 + 6, v6 + 7, 1u))
    {
      sub_8584();
      return 0;
    }

    v17 = 0;
    if (sub_7870(*(v6 + 3), *(v6 + 8), &off_10CE0, &v17))
    {
      sub_861C();
    }

    else
    {
      v8 = v17;
      v9 = [v17 objectForKeyedSubscript:@"QueueID"];
      v10 = [v8 objectForKeyedSubscript:@"QueueGuard"];
      v11 = [v8 objectForKeyedSubscript:@"QueueMemorySize"];
      v12 = [v8 objectForKeyedSubscript:@"QueueEntrySize"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongLongValue = [v9 unsignedLongLongValue];
      }

      else
      {
        unsignedLongLongValue = 0;
      }

      *(v6 + 5) = unsignedLongLongValue;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v10 unsignedLongLongValue];
            [v11 unsignedIntValue];
            [v12 unsignedIntValue];

            if (!IOGCCircularControlQueueInit())
            {
              return v6;
            }

            sub_87E4();
            goto LABEL_2;
          }

          v16 = sub_F0C();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_877C();
          }
        }

        else
        {
          v15 = sub_F0C();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_8714();
          }
        }
      }

      else
      {
        v14 = sub_F0C();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          sub_86AC();
        }
      }
    }
  }

LABEL_2:

  return 0;
}

- (void)dealloc
{
  p_queueMapping = &self->_queueMapping;
  queueMapping = self->_queueMapping;
  if (queueMapping)
  {
    IOConnectUnmapMemory64(self->_client->_connection, self->_queuePort, mach_task_self_, queueMapping);
    *p_queueMapping = 0;
    p_queueMapping[1] = 0;
  }

  queuePort = self->_queuePort;
  if (queuePort)
  {
    sub_8874(self, queuePort, &self->_queuePort);
  }

  v6.receiver = self;
  v6.super_class = PSVR2FastPathKernelTrackingLEDControlQueue;
  [(PSVR2FastPathKernelTrackingLEDControlQueue *)&v6 dealloc];
}

- (int)queryInterface:(id)interface outInterface:(void *)outInterface
{
  v6 = CFUUIDCreateFromUUIDBytes(0, interface);
  v7 = CFUUIDGetConstantUUIDWithBytes(kCFAllocatorSystemDefault, 0, 0, 0, 0, 0, 0, 0, 0, 0xC0u, 0, 0, 0, 0, 0, 0, 0x46u);
  if (CFEqual(v6, v7) || (v8 = CFUUIDGetConstantUUIDWithBytes(0, 0x5Du, 0xF3u, 0x6Au, 0xD7u, 0xDDu, 0x2Bu, 0x49u, 0xBEu, 0xB3u, 0xFu, 0xF0u, 0xFAu, 0xEAu, 0x2Cu, 0xD7u, 0x74u), CFEqual(v6, v8)))
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

- (id)getProperty:(id)property
{
  propertyCopy = property;
  if (property)
  {
    v6 = 0;
    propertyCopy2 = property;
    if (sub_7870(self->_client, self->_queuePort, [NSArray arrayWithObjects:&propertyCopy2 count:1], &v6))
    {
      return 0;
    }

    else
    {
      v5 = v6;
      propertyCopy = [v6 objectForKeyedSubscript:propertyCopy];
    }
  }

  return propertyCopy;
}

- (int)get:(unint64_t)get options:(unsigned int)options sample:(__IOGCFastPathSample *)sample
{
  sample->var0 = &self->_IOGCFastPathSampleContainerVTBL;
  sample->var1[0] = &self->_queue;
  sample->var1[1] = get;
  return 0;
}

- (int)sampleDestroy:(__IOGCFastPathSample *)destroy
{
  destroy->var0 = 0;
  destroy->var1[0] = 0;
  destroy->var1[1] = 0;
  return 0;
}

- (int)sample:(const __IOGCFastPathSample *)sample getSequenceID:(unint64_t *)d maxID:(unint64_t *)iD
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_2F80;
  v6[3] = &unk_104B8;
  v6[4] = d;
  v6[5] = sample;
  return sub_2DFC(self, sample, v6);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsampleCount:(unsigned int *)count
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_3004;
  v5[3] = &unk_104D8;
  v5[4] = count;
  return sub_2DFC(self, sample, v5);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample flags:(unsigned int *)flags
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_3088;
  v6[3] = &unk_104D8;
  v6[4] = flags;
  return sub_2DFC(self, sample, v6);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t *)timestamp uncertainty:(unint64_t *)uncertainty flags:(unsigned int *)self0
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3134;
  v11[3] = &unk_10538;
  fieldCopy = field;
  domainCopy = domain;
  optionsCopy = options;
  v11[4] = timestamp;
  v11[5] = uncertainty;
  v11[6] = flags;
  return sub_2DFC(self, sample, v11);
}

- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field domain:(unsigned int)domain options:(unsigned int)options timestamp:(unint64_t)timestamp tolerance:(unint64_t)tolerance flags:(unsigned int)self0
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_3220;
  v11[3] = &unk_10558;
  fieldCopy = field;
  domainCopy = domain;
  optionsCopy = options;
  v11[4] = timestamp;
  v11[5] = tolerance;
  return sub_2DFC(self, sample, v11);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t *)integer
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_32F0;
  v8[3] = &unk_104B8;
  fieldCopy = field;
  optionsCopy = options;
  v8[4] = integer;
  return sub_2DFC(self, sample, v8);
}

- (int)sample:(const __IOGCFastPathSample *)sample getSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double *)double
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_33D0;
  v8[3] = &unk_10578;
  fieldCopy = field;
  v8[4] = double;
  return sub_2DFC(self, sample, v8);
}

- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options integer:(int64_t)integer
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_34A0;
  v8[3] = &unk_104B8;
  fieldCopy = field;
  optionsCopy = options;
  v8[4] = integer;
  return sub_2DFC(self, sample, v8);
}

- (int)sample:(const __IOGCFastPathSample *)sample setSubsample:(unsigned int)subsample field:(unsigned int)field options:(unsigned int)options double:(double)double
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_358C;
  v8[3] = &unk_104B8;
  optionsCopy = options;
  fieldCopy = field;
  *&v8[4] = double;
  return sub_2DFC(self, sample, v8);
}

- (BOOL)sample:(const __IOGCFastPathSample *)sample getTraceProviderID:(unint64_t *)d queueID:(unint64_t *)iD channel:(unsigned int *)channel position:(unint64_t *)position
{
  *d = self->_client->_serviceID;
  *iD = self->_queueID;
  *channel = 4;
  *position = sample->var1[1];
  return 1;
}

@end