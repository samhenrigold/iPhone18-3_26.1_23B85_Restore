@interface ASDTIOPAudioIsolatedIOBufferDevice
+ (id)forIOObject:(unsigned int)object andIDValue:(id)value;
- (BOOL)getStreamDescription:(AudioStreamBasicDescription *)description;
- (BOOL)open;
- (BOOL)setStreamDescription:(const AudioStreamBasicDescription *)description withBufferFrameSize:(unsigned int)size;
- (BOOL)setupClientIO:(unint64_t)o withBufferFrameSize:(unsigned int)size;
- (BOOL)setupIO;
- (BOOL)teardownClientIO:(unint64_t)o;
- (BOOL)teardownIO;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioIsolatedIOBufferDevice

+ (id)forIOObject:(unsigned int)object andIDValue:(id)value
{
  v4 = *&object;
  valueCopy = value;
  v7 = [[self alloc] initForIOObject:v4 andIDValue:valueCopy];

  return v7;
}

- (id)initForIOObject:(unsigned int)object andIDValue:(id)value
{
  v5 = *MEMORY[0x277D85DE8];
  [value clientType];
  operator new();
}

- (BOOL)open
{
  v11 = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  v6 = v4;
  if ((v4 & 1) == 0)
  {
    v7 = ASDTIOPLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      idValue = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioIsolatedIOBufferDevice *)idValue open];
    }
  }

  return v6;
}

- (void)close
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)setStreamDescription:(const AudioStreamBasicDescription *)description withBufferFrameSize:(unsigned int)size
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setStreamDescription:withBufferFrameSize:];
  }

  if (!description)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setStreamDescription:withBufferFrameSize:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetStreamDescription(ptr, description, size);
}

- (BOOL)getStreamDescription:(AudioStreamBasicDescription *)description
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice getStreamDescription:];
  }

  if (!description)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice getStreamDescription:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::GetStreamDescription(ptr, description);
}

- (BOOL)setupIO
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setupIO];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupIO(ptr);
}

- (BOOL)teardownIO
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice teardownIO];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownIO(ptr);
}

- (BOOL)setupClientIO:(unint64_t)o withBufferFrameSize:(unsigned int)size
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice setupClientIO:withBufferFrameSize:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::SetupClientIO(ptr, o, size);
}

- (BOOL)teardownClientIO:(unint64_t)o
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIsolatedIOBufferDevice teardownClientIO:];
  }

  return ASDT::IOPAudio::IsolatedIOBuffer::UserClient::TeardownClientIO(ptr, o);
}

- (void)initForIOObject:(uint64_t)a1 andIDValue:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2416E9000, a2, OS_LOG_TYPE_ERROR, "%@: Failed to create IsolatedIOBuffer user client", &v2, 0xCu);
}

- (void)open
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to open connection to IsolatedIOBuffer user client", buf, 0xCu);
}

@end