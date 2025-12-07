@interface RWIProtocolDebuggerProbeSample
- (RWIProtocolDebuggerProbeSample)initWithProbeId:(int)id sampleId:(int)sampleId batchId:(int)batchId timestamp:(double)timestamp payload:(id)payload;
- (RWIProtocolRuntimeRemoteObject)payload;
- (double)timestamp;
- (int)batchId;
- (int)probeId;
- (int)sampleId;
- (void)setBatchId:(int)id;
- (void)setPayload:(id)payload;
- (void)setProbeId:(int)id;
- (void)setSampleId:(int)id;
- (void)setTimestamp:(double)timestamp;
@end

@implementation RWIProtocolDebuggerProbeSample

- (RWIProtocolDebuggerProbeSample)initWithProbeId:(int)id sampleId:(int)sampleId batchId:(int)batchId timestamp:(double)timestamp payload:(id)payload
{
  v8 = *&batchId;
  v9 = *&sampleId;
  v10 = *&id;
  payloadCopy = payload;
  v16.receiver = self;
  v16.super_class = RWIProtocolDebuggerProbeSample;
  v13 = [(RWIProtocolJSONObject *)&v16 init];
  if (v13)
  {
    if (!payloadCopy)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"required property '%@' cannot be nil", @"payload"}];
    }

    [(RWIProtocolDebuggerProbeSample *)v13 setProbeId:v10];
    [(RWIProtocolDebuggerProbeSample *)v13 setSampleId:v9];
    [(RWIProtocolDebuggerProbeSample *)v13 setBatchId:v8];
    [(RWIProtocolDebuggerProbeSample *)v13 setTimestamp:timestamp];
    [(RWIProtocolDebuggerProbeSample *)v13 setPayload:payloadCopy];
    v14 = v13;
  }

  return v13;
}

- (void)setProbeId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"probeId"];
}

- (int)probeId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"probeId"];
}

- (void)setSampleId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"sampleId"];
}

- (int)sampleId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"sampleId"];
}

- (void)setBatchId:(int)id
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setInteger:*&id forKey:@"batchId"];
}

- (int)batchId
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  return [(RWIProtocolJSONObject *)&v3 integerForKey:@"batchId"];
}

- (void)setTimestamp:(double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setDouble:@"timestamp" forKey:timestamp];
}

- (double)timestamp
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 doubleForKey:@"timestamp"];
  return result;
}

- (void)setPayload:(id)payload
{
  v3.receiver = self;
  v3.super_class = RWIProtocolDebuggerProbeSample;
  [(RWIProtocolJSONObject *)&v3 setObject:payload forKey:@"payload"];
}

- (RWIProtocolRuntimeRemoteObject)payload
{
  v14.receiver = self;
  v14.super_class = RWIProtocolDebuggerProbeSample;
  v3 = [(RWIProtocolJSONObject *)&v14 objectForKey:@"payload"];
  if (v3)
  {
    v4 = [RWIProtocolRuntimeRemoteObject alloc];
    v11.receiver = self;
    v11.super_class = RWIProtocolDebuggerProbeSample;
    v5 = [(RWIProtocolJSONObject *)&v11 objectForKey:@"payload"];
    objc_msgSend_toJSONObject(v5);
    v6 = v12;
    ++*v12;
    v13 = v6;
    v7 = [(RWIProtocolJSONObject *)v4 initWithJSONObject:&v13];
    v8 = v13;
    v13 = 0;
    if (v8)
    {
      if (*v8 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v8;
      }
    }

    v9 = v12;
    v12 = 0;
    if (v9)
    {
      if (*v9 == 1)
      {
        WTF::JSONImpl::Value::operator delete();
      }

      else
      {
        --*v9;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end