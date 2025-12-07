@interface ASDTIOPAudioIOBufferDevice
+ (id)forIOObject:(unsigned int)object andIDValue:(id)value;
- (BOOL)mapIOBuffer;
- (BOOL)open;
- (id).cxx_construct;
- (id)initForIOObject:(unsigned int)object andIDValue:(id)value;
- (void)close;
- (void)open;
@end

@implementation ASDTIOPAudioIOBufferDevice

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
    [ASDTIOPAudioIOBufferDevice open];
  }

  v4 = ASDT::IOUserClient::OpenConnection(ptr);
  v6 = v4;
  if ((v4 & 1) == 0)
  {
    v7 = ASDTIOPLogType(v4, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      idValue = [(ASDTIOService *)self idValue];
      [(ASDTIOPAudioIOBufferDevice *)idValue open];
    }
  }

  return v6;
}

- (void)close
{
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIOBufferDevice close];
  }

  v4 = *(*ptr + 32);

  v4();
}

- (BOOL)mapIOBuffer
{
  v5[15] = *MEMORY[0x277D85DE8];
  ptr = self->_userClient.__ptr_;
  if (!ptr)
  {
    [ASDTIOPAudioIOBufferDevice mapIOBuffer];
  }

  ASDT::IOPAudio::IOBuffer::UserClient::MapIOBuffer(v5, ptr);
  ASDT::IOMemoryMap::operator=();
  MEMORY[0x245CEDC00](v5);
  return self[1]._memoryMap.__vftable != 0;
}

- (id).cxx_construct
{
  self->_userClient.__ptr_ = 0;
  p_memoryMap = &self->_memoryMap;
  self->_memoryMap.__vftable = (MEMORY[0x277CEFBA8] + 16);
  ASDT::IOConnect::IOConnect(&self->_memoryMap.refcount);
  *&p_memoryMap[2].refcount = 0;
  LODWORD(p_memoryMap[2].meta) = 0;
  return self;
}

- (void)open
{
  *buf = 138412290;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_2416E9000, log, OS_LOG_TYPE_ERROR, "%@: Failed to open connection to IOBuffer user client", buf, 0xCu);
}

@end