@interface CFPDCFDataBuffer
- (CFPDCFDataBuffer)initWithCFData:(__CFData *)data;
- (id)copyXPCData;
- (void)dealloc;
@end

@implementation CFPDCFDataBuffer

- (CFPDCFDataBuffer)initWithCFData:(__CFData *)data
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = CFPDCFDataBuffer;
  v4 = [(CFPDCFDataBuffer *)&v6 init];
  if (v4)
  {
    v4->data = CFRetain(data);
  }

  return v4;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  CFRelease(self->data);
  v3.receiver = self;
  v3.super_class = CFPDCFDataBuffer;
  [(CFPDCFDataBuffer *)&v3 dealloc];
}

- (id)copyXPCData
{
  DispatchData = _CFDataCreateDispatchData(self->data);
  v3 = xpc_data_create_with_dispatch_data(DispatchData);
  dispatch_release(DispatchData);
  return v3;
}

@end