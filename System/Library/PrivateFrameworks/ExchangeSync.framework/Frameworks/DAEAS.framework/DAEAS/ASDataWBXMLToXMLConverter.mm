@interface ASDataWBXMLToXMLConverter
- (ASDataWBXMLToXMLConverter)initWithWBXMLData:(id)data forOutput:(id)output usingMetadata:(BOOL)metadata;
- (BOOL)runSynchronously;
- (int64_t)readFromInput;
- (void)dealloc;
- (void)outputString:(id)string;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation ASDataWBXMLToXMLConverter

- (void)outputString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  v7 = strlen(uTF8String);
  output = self->_output;

  [(NSMutableData *)output appendBytes:uTF8String length:v7];
}

- (BOOL)runSynchronously
{
  [(NSInputStream *)self->_input setDelegate:self];
  input = self->_input;
  currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
  [(NSInputStream *)input scheduleInRunLoop:currentRunLoop forMode:@"ASWBXMLToXMLConverterRunLoopMode"];

  [(NSInputStream *)self->_input open];
  [(ASWBXMLToXMLConverter *)self setDone:0];
  if (![(ASWBXMLToXMLConverter *)self done])
  {
    do
    {
      currentRunLoop2 = [MEMORY[0x277CBEB88] currentRunLoop];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      [currentRunLoop2 runMode:@"ASWBXMLToXMLConverterRunLoopMode" beforeDate:distantFuture];
    }

    while (![(ASWBXMLToXMLConverter *)self done]);
  }

  return 1;
}

- (int64_t)readFromInput
{
  input = self->_input;
  writableBufferPtr = [(ASWBXMLToXMLConverter *)self writableBufferPtr];
  writableBufferSize = [(ASWBXMLToXMLConverter *)self writableBufferSize];

  return [(NSInputStream *)input read:writableBufferPtr maxLength:writableBufferSize];
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  switch(event)
  {
    case 0x10uLL:
      goto LABEL_6;
    case 8uLL:
      NSLog(&cfstr_StreamErrorOcc.isa);
LABEL_6:
      [(ASWBXMLToXMLConverter *)self setDone:1];
      break;
    case 2uLL:
      [(ASWBXMLToXMLConverter *)self handleBytesAvailable];
      break;
  }
}

- (ASDataWBXMLToXMLConverter)initWithWBXMLData:(id)data forOutput:(id)output usingMetadata:(BOOL)metadata
{
  metadataCopy = metadata;
  dataCopy = data;
  outputCopy = output;
  v14.receiver = self;
  v14.super_class = ASDataWBXMLToXMLConverter;
  v10 = [(ASWBXMLToXMLConverter *)&v14 initUsingMetadata:metadataCopy];
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithData:dataCopy];
    input = v10->_input;
    v10->_input = v11;

    objc_storeStrong(&v10->_output, output);
  }

  return v10;
}

- (void)dealloc
{
  [(NSInputStream *)self->_input close];
  v3.receiver = self;
  v3.super_class = ASDataWBXMLToXMLConverter;
  [(ASDataWBXMLToXMLConverter *)&v3 dealloc];
}

@end