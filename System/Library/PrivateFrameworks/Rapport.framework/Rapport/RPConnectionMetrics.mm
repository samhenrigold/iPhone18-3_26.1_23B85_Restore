@interface RPConnectionMetrics
+ (id)sharedMetrics;
- (RPConnectionMetrics)init;
- (unsigned)lengthToBucketIndex:(unint64_t)index;
- (unsigned)linkTypeToBucketIndex:(int)index;
- (unsigned)rttToBucketIndex:(unint64_t)index;
- (void)logConnectionWithDeviceModelFrom:(id)from deviceModelTo:(id)to error:(id)error initiator:(id)initiator isOnDemand:(BOOL)demand isStereoPair:(BOOL)pair lifetime:(unint64_t)lifetime linkType:(int)self0;
- (void)logMessageForClient:(id)client length:(unint64_t)length linkType:(int)type;
- (void)logRequestOnLinkType:(int)type length:(unint64_t)length rtt:(unint64_t)rtt;
- (void)reportMetrics;
@end

@implementation RPConnectionMetrics

+ (id)sharedMetrics
{
  if (sharedMetrics_sOnce != -1)
  {
    +[RPConnectionMetrics sharedMetrics];
  }

  v3 = gMetrics;

  return v3;
}

- (RPConnectionMetrics)init
{
  v18.receiver = self;
  v18.super_class = RPConnectionMetrics;
  v2 = [(RPConnectionMetrics *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_reportLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_attr_make_with_qos_class(v4, QOS_CLASS_BACKGROUND, 0);

    v6 = dispatch_queue_create("RPConnectionMetrics", v5);
    reportQueue = v3->_reportQueue;
    v3->_reportQueue = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    rttMetrics = v3->_rttMetrics;
    v3->_rttMetrics = v8;

    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3->_reportQueue);
    reportTimer = v3->_reportTimer;
    v3->_reportTimer = v10;

    v12 = v3->_reportTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __27__RPConnectionMetrics_init__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    v13 = v3;
    v17 = v13;
    dispatch_source_set_event_handler(v12, handler);
    CUDispatchTimerSet();
    dispatch_resume(v3->_reportTimer);
    v13->_eventCount = 0;
    v14 = v13;
  }

  return v3;
}

void __36__RPConnectionMetrics_sharedMetrics__block_invoke()
{
  v0 = objc_alloc_init(RPConnectionMetrics);
  v1 = gMetrics;
  gMetrics = v0;
}

- (unsigned)lengthToBucketIndex:(unint64_t)index
{
  if (index < 0x7D001)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (index <= 0x19000)
  {
    v3 = 2;
  }

  if (index >= 0x2801)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (index < 0x401)
  {
    return 0;
  }

  return v4;
}

- (unsigned)linkTypeToBucketIndex:(int)index
{
  if ((index & 0xFFFFFFFE) == 8)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  if (index == 6)
  {
    v3 = 2;
  }

  if (index == 4)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if ((index - 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

- (unsigned)rttToBucketIndex:(unint64_t)index
{
  if (index < 0x1F5)
  {
    v3 = 4;
  }

  else
  {
    v3 = 5;
  }

  if (index >= 0xC9)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3;
  }

  if (index >= 0x65)
  {
    v5 = v4;
  }

  else
  {
    v5 = 2;
  }

  if (index >= 0x33)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  if (index < 0xB)
  {
    return 0;
  }

  return v6;
}

- (void)logConnectionWithDeviceModelFrom:(id)from deviceModelTo:(id)to error:(id)error initiator:(id)initiator isOnDemand:(BOOL)demand isStereoPair:(BOOL)pair lifetime:(unint64_t)lifetime linkType:(int)self0
{
  pairCopy = pair;
  demandCopy = demand;
  v33[8] = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  errorCopy = error;
  initiatorCopy = initiator;
  os_unfair_lock_lock(&self->_reportLock);
  v30 = errorCopy;
  if (errorCopy)
  {
    v31 = 0;
    NSAppendPrintF(&v31, "%{error}", errorCopy);
    v19 = v31;
  }

  else
  {
    v19 = @"NoError";
  }

  if (initiatorCopy)
  {
    v20 = initiatorCopy;
  }

  else
  {
    v20 = @"Uknown";
  }

  v21 = [(RPConnectionMetrics *)self linkTypeToBucketIndex:type];
  v32[0] = @"deviceModelFrom";
  v32[1] = @"deviceModelTo";
  v22 = fromCopy;
  v33[0] = fromCopy;
  v33[1] = toCopy;
  v23 = toCopy;
  v32[2] = @"error";
  v32[3] = @"initiator";
  v33[2] = v19;
  v33[3] = v20;
  v32[4] = @"isOnDemand";
  v24 = [MEMORY[0x1E696AD98] numberWithBool:demandCopy];
  v33[4] = v24;
  v32[5] = @"isStereoPair";
  v25 = [MEMORY[0x1E696AD98] numberWithBool:pairCopy];
  v33[5] = v25;
  v32[6] = @"lifetime";
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:lifetime];
  v33[6] = v26;
  v32[7] = @"linkType";
  v27 = [MEMORY[0x1E696AEC0] stringWithCString:LinkTypeLabels[v21] encoding:4];
  v33[7] = v27;
  v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:8];

  CUMetricsLog();
  os_unfair_lock_unlock(&self->_reportLock);
}

- (void)logMessageForClient:(id)client length:(unint64_t)length linkType:(int)type
{
  v5 = *&type;
  v13[3] = *MEMORY[0x1E69E9840];
  clientCopy = client;
  os_unfair_lock_lock(&self->_reportLock);
  LODWORD(v5) = [(RPConnectionMetrics *)self linkTypeToBucketIndex:v5];
  v13[0] = clientCopy;
  v12[0] = @"client";
  v12[1] = @"lengthKB";
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:length >> 10];
  v13[1] = v9;
  v12[2] = @"linkType";
  v10 = [MEMORY[0x1E696AEC0] stringWithCString:LinkTypeLabels[v5] encoding:4];
  v13[2] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:3];

  CUMetricsLog();
  os_unfair_lock_unlock(&self->_reportLock);
}

- (void)logRequestOnLinkType:(int)type length:(unint64_t)length rtt:(unint64_t)rtt
{
  v7 = *&type;
  os_unfair_lock_lock(&self->_reportLock);
  v9 = self->_eventCount + 1;
  self->_eventCount = v9;
  if (v9 > 0x19)
  {
    v10 = [(RPConnectionMetrics *)self linkTypeToBucketIndex:v7];
    v11 = [(RPConnectionMetrics *)self lengthToBucketIndex:length];
    v12 = [(RPConnectionMetrics *)self rttToBucketIndex:rtt];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%s, %s, %s", LinkTypeLabels[v10], LengthLabels[v11], RTTLabels[v12]];
    v13 = [(NSMutableDictionary *)self->_rttMetrics objectForKeyedSubscript:?];

    rttMetrics = self->_rttMetrics;
    if (v13)
    {
      v15 = [(NSMutableDictionary *)rttMetrics objectForKeyedSubscript:v18];
      unsignedIntegerValue = [v15 unsignedIntegerValue];

      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
      [(NSMutableDictionary *)self->_rttMetrics setObject:v17 forKeyedSubscript:v18];
    }

    else
    {
      [(NSMutableDictionary *)rttMetrics setObject:&unk_1F2EEC680 forKeyedSubscript:v18];
    }

    self->_sendReport = 1;
    os_unfair_lock_unlock(&self->_reportLock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_reportLock);
  }
}

- (void)reportMetrics
{
  v24 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_reportLock);
  if (self->_sendReport)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    obj = [(NSMutableDictionary *)self->_rttMetrics allKeys];
    v3 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v18;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v18 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v17 + 1) + 8 * i);
          v8 = [v7 componentsSeparatedByString:{@", "}];
          v21[0] = @"rttCount";
          v9 = [(NSMutableDictionary *)self->_rttMetrics objectForKey:v7];
          v22[0] = v9;
          v21[1] = @"linkType";
          v10 = [v8 objectAtIndexedSubscript:0];
          v22[1] = v10;
          v21[2] = @"lengthBytes";
          v11 = [v8 objectAtIndexedSubscript:1];
          v22[2] = v11;
          v21[3] = @"rttMs";
          v12 = [v8 objectAtIndexedSubscript:2];
          v22[3] = v12;
          v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:4];

          CUMetricsLog();
        }

        v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
      }

      while (v4);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    rttMetrics = self->_rttMetrics;
    self->_rttMetrics = dictionary;

    self->_sendReport = 0;
    self->_eventCount = 0;
    os_unfair_lock_unlock(&self->_reportLock);
  }

  else
  {

    os_unfair_lock_unlock(&self->_reportLock);
  }
}

@end