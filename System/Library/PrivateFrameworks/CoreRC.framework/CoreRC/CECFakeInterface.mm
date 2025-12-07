@interface CECFakeInterface
+ (id)defaultAudioSystemProperties;
+ (id)defaultPlaybackDeviceProperties;
+ (id)defaultPropertiesWithPhysicalAddress:(unsigned __int16)address;
+ (id)defaultTVProperties;
- (BOOL)errorIsNack:(id)nack;
- (BOOL)pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error;
- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (CECFakeInterface)initWithInterfaceListener:(id)listener properties:(id)properties;
- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode;
- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode andHeader:(unsigned __int8)header;
- (void)dealloc;
- (void)fakeHotPlugDetect:(BOOL)detect;
- (void)fakeHotPlugDetectWithPhysicalAddress:(unsigned __int16)address;
- (void)fakePropertiesChanged:(id)changed;
- (void)fakeTerminated;
- (void)receivedFrame:(CECFrame *)frame;
- (void)scheduleWithDispatchQueue:(id)queue;
- (void)setBlockedMessages:(id)messages;
- (void)unscheduleFromDispatchQueue:(id)queue;
@end

@implementation CECFakeInterface

+ (id)defaultTVProperties
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"kCECInterfacePropertyIsValid";
  v3[1] = @"kCECInterfacePropertyHasLink";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC38];
  v3[2] = @"kCECInterfacePropertyPhysicalAddress";
  v4[2] = &unk_28593C258;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
}

+ (id)defaultPlaybackDeviceProperties
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"kCECInterfacePropertyIsValid";
  v3[1] = @"kCECInterfacePropertyHasLink";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC38];
  v3[2] = @"kCECInterfacePropertyPhysicalAddress";
  v4[2] = &unk_28593C270;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
}

+ (id)defaultAudioSystemProperties
{
  v4[3] = *MEMORY[0x277D85DE8];
  v3[0] = @"kCECInterfacePropertyIsValid";
  v3[1] = @"kCECInterfacePropertyHasLink";
  v4[0] = MEMORY[0x277CBEC38];
  v4[1] = MEMORY[0x277CBEC38];
  v3[2] = @"kCECInterfacePropertyPhysicalAddress";
  v4[2] = &unk_28593C270;
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:3];
}

+ (id)defaultPropertiesWithPhysicalAddress:(unsigned __int16)address
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"kCECInterfacePropertyIsValid";
  v4[1] = @"kCECInterfacePropertyHasLink";
  v5[0] = MEMORY[0x277CBEC38];
  v5[1] = MEMORY[0x277CBEC38];
  v4[2] = @"kCECInterfacePropertyPhysicalAddress";
  v5[2] = [MEMORY[0x277CCABB0] numberWithUnsignedShort:address];
  return [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
}

- (CECFakeInterface)initWithInterfaceListener:(id)listener properties:(id)properties
{
  v11.receiver = self;
  v11.super_class = CECFakeInterface;
  v6 = [(CECInterface *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(CoreRCInterface *)v6 setListener:listener];
    v7->_properties = [properties mutableCopy];
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v7->_receivedFrames = v8;
    if (v7->_properties)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {

      return 0;
    }
  }

  return v7;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECFakeInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (BOOL)errorIsNack:(id)nack
{
  v4 = [objc_msgSend(nack "domain")];
  if (v4)
  {
    LOBYTE(v4) = [nack code] == 2;
  }

  return v4;
}

- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  countCopy = count;
  v15 = *MEMORY[0x277D85DE8];
  blockedMessages = self->_blockedMessages;
  if (blockedMessages && -[NSDictionary objectForKeyedSubscript:](blockedMessages, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:frame->blocks[1]]))
  {
    if (error)
    {
      v10 = -[NSDictionary objectForKeyedSubscript:](self->_blockedMessages, "objectForKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedChar:frame->blocks[1]]);
      result = 0;
      *error = v10;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    listener = [(CoreRCInterface *)self listener];
    v13 = *frame->blocks;
    v14 = *(frame + 4);
    return [(CoreRCInterfaceListener *)listener interface:self sendFrame:&v13 withRetryCount:countCopy error:error];
  }

  return result;
}

- (void)receivedFrame:(CECFrame *)frame
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
LABEL_7:
    delegate = [(CECInterface *)self delegate];
    v7 = *frame->blocks;
    v8 = *(frame + 4);
    [(CECInterfaceDelegate *)delegate interface:self receivedFrame:&v7];
    return;
  }

  if (~frame->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (frame->blocks[0] & 0xF)))
  {
    v7 = *frame->blocks;
    v8 = *(frame + 4);
    [(CECInterface *)self setLastReceivedFrame:&v7];
    if ([-[CECFakeInterface receivedFrames](self "receivedFrames")] >= 0x15)
    {
      [-[CECFakeInterface receivedFrames](self "receivedFrames")];
    }

    receivedFrames = [(CECFakeInterface *)self receivedFrames];
    [receivedFrames addObject:{objc_msgSend(MEMORY[0x277CBEA90], "dataWithBytes:length:", frame, 20)}];
    goto LABEL_7;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECFakeInterface receivedFrame:frame];
  }
}

- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode andHeader:(unsigned __int8)header
{
  v5 = a5;
  headerCopy = header;
  v14 = *MEMORY[0x277D85DE8];
  *retstr->blocks = 0;
  *&retstr->blocks[8] = 0;
  *(retstr + 4) = 0;
  result = [(NSMutableArray *)self->_receivedFrames count];
  if (result)
  {
    reverseObjectEnumerator = [(NSMutableArray *)self->_receivedFrames reverseObjectEnumerator];
    for (i = reverseObjectEnumerator; ; reverseObjectEnumerator = i)
    {
      result = [reverseObjectEnumerator nextObject];
      if (!result)
      {
        break;
      }

      v12 = 0uLL;
      v13 = 0;
      result = [(CECFrame *)result getBytes:&v12 length:20];
      if (BYTE1(v12) == headerCopy && (v5 == 255 || v12 == v5))
      {
        *retstr->blocks = v12;
        *(retstr + 4) = v13;
        return result;
      }
    }
  }

  return result;
}

- (CECFrame)lastReceivedFrameWithOpcode:(SEL)opcode
{
  if (self)
  {
    return [(CECFrame *)self lastReceivedFrameWithOpcode:a4 andHeader:255];
  }

  *retstr->blocks = 0;
  *&retstr->blocks[8] = 0;
  *(retstr + 4) = 0;
  return self;
}

- (BOOL)pingTo:(unsigned __int8)to acknowledged:(BOOL *)acknowledged error:(id *)error
{
  toCopy = to;
  blockedMessages = self->_blockedMessages;
  if (blockedMessages && [(NSDictionary *)blockedMessages objectForKeyedSubscript:&unk_28593C288])
  {
    *acknowledged = 1;
    return 1;
  }

  else
  {
    listener = [(CoreRCInterface *)self listener];

    return [(CoreRCInterfaceListener *)listener interface:self pingTo:toCopy acknowledged:acknowledged error:error];
  }
}

- (void)fakePropertiesChanged:(id)changed
{
  self->_properties = [changed mutableCopy];
  delegate = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)delegate interfacePropertiesChanged:self];
}

- (void)fakeTerminated
{
  listener = [(CoreRCInterface *)self listener];

  [(CoreRCInterfaceListener *)listener removeInterface:self];
}

- (void)fakeHotPlugDetect:(BOOL)detect
{
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_properties, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithBool:detect], @"kCECInterfacePropertyHasLink");
  delegate = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)delegate interfacePropertiesChanged:self];
}

- (void)fakeHotPlugDetectWithPhysicalAddress:(unsigned __int16)address
{
  addressCopy = address;
  [(NSMutableDictionary *)self->_properties setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"kCECInterfacePropertyHasLink"];
  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_properties, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithUnsignedShort:addressCopy], @"kCECInterfacePropertyPhysicalAddress");
  delegate = [(CECInterface *)self delegate];

  [(CECInterfaceDelegate *)delegate interfacePropertiesChanged:self];
}

- (void)setBlockedMessages:(id)messages
{
  blockedMessages = self->_blockedMessages;
  if (blockedMessages)
  {
    messagesCopy = messages;

    messages = messagesCopy;
  }

  self->_blockedMessages = messages;

  MEMORY[0x2821F9888]();
}

- (void)scheduleWithDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[CECFakeInterface scheduleWithDispatchQueue:]", 40, "%s queue=%@ ## %@\n", "[CECFakeInterface scheduleWithDispatchQueue:]", queue, self);
  }

  if (![(CoreRCInterface *)self serialQueue])
  {

    [(CoreRCInterface *)self setSerialQueue:queue];
  }
}

- (void)unscheduleFromDispatchQueue:(id)queue
{
  if (gLogCategory_CoreRCInterface <= 40 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_CoreRCInterface, "[CECFakeInterface unscheduleFromDispatchQueue:]", 40, "%s queue=%@ ## %@\n", "[CECFakeInterface unscheduleFromDispatchQueue:]", queue, self);
  }

  if ([(CoreRCInterface *)self serialQueue]== queue)
  {

    [(CoreRCInterface *)self setSerialQueue:0];
  }
}

@end