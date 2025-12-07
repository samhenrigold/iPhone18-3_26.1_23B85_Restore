@interface SRFetchResult
+ (void)initialize;
- (SRFetchResult)init;
- (SRFetchResult)initWithBytes:(void *)bytes length:(unint64_t)length timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class;
- (SRFetchResult)initWithData:(id)data timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)sample;
- (void)dealloc;
@end

@implementation SRFetchResult

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    SRLogFetchRequest = os_log_create("com.apple.SensorKit", "SRFetchRequest");
  }
}

- (SRFetchResult)init
{
  [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];

  return 0;
}

- (SRFetchResult)initWithData:(id)data timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class
{
  v17.receiver = self;
  v17.super_class = SRFetchResult;
  v14 = [(SRFetchResult *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_timestamp = timestamp;
    v14->_sampleData = data;
    v15->_metadata = metadata;
    v15->_configuration = configuration;
    v15->_sampleClass = class;
    v15->__cursor = cursor;
  }

  return v15;
}

- (SRFetchResult)initWithBytes:(void *)bytes length:(unint64_t)length timestamp:(double)timestamp metadata:(id)metadata configuration:(id)configuration cursor:(id)cursor sampleClass:(Class)class
{
  v15 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:bytes length:length freeWhenDone:0];
  v16 = [(SRFetchResult *)self initWithData:v15 timestamp:metadata metadata:configuration configuration:cursor cursor:class sampleClass:timestamp];

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [(NSData *)self->_sampleData copy];
  v5 = [[SRFetchResult alloc] initWithData:v4 timestamp:self->_metadata metadata:self->_configuration configuration:self->__cursor cursor:self->_sampleClass sampleClass:self->_timestamp];

  return v5;
}

- (void)dealloc
{
  [(SRFetchResult *)self setSampleClass:0];
  [(SRFetchResult *)self setMetadata:0];
  [(SRFetchResult *)self setConfiguration:0];
  [(SRFetchResult *)self setSampleClass:0];
  [(SRFetchResult *)self setSampleData:0];
  [(SRFetchResult *)self set_cursor:0];
  v3.receiver = self;
  v3.super_class = SRFetchResult;
  [(SRFetchResult *)&v3 dealloc];
}

- (id)sample
{
  v18 = *MEMORY[0x1E69E9840];
  sampleClass = self->_sampleClass;
  if (!sampleClass)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
    sampleClass = self->_sampleClass;
    if (!sampleClass)
    {
      v6 = MEMORY[0x1E695DF30];
      v7 = *MEMORY[0x1E695D930];
      v8 = @"Failed to find a sample class to construct the sample object";
      v9 = 0;
      goto LABEL_11;
    }
  }

  v4 = [[sampleClass alloc] initWithBinarySampleRepresentation:self->_sampleData metadata:self->_metadata timestamp:self->_timestamp];
  if (!v4)
  {
    v10 = NSStringFromClass(self->_sampleClass);
    v11 = SRLogFetchRequest;
    if (os_log_type_enabled(SRLogFetchRequest, OS_LOG_TYPE_FAULT))
    {
      *buf = 138543362;
      v17 = v10;
      _os_log_fault_impl(&dword_1C914D000, v11, OS_LOG_TYPE_FAULT, "Failed to instantiate a sample of type %{public}@ with the given data", buf, 0xCu);
    }

    v12 = MEMORY[0x1E695DF30];
    v13 = *MEMORY[0x1E695D930];
    v14 = @"SRSampleClass";
    v15 = v10;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v8 = @"Unable to construct a sample object";
    v6 = v12;
    v7 = v13;
LABEL_11:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:v9]);
  }

  return v4;
}

@end