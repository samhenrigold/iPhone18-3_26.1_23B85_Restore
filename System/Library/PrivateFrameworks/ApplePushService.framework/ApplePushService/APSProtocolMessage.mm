@interface APSProtocolMessage
- (APSProtocolMessage)initWithCommand:(int)command;
- (id)copyMessageData;
- (void)_appendEightBytes:(unint64_t)bytes;
- (void)_appendFourBytes:(unsigned int)bytes;
- (void)_appendOneByte:(unsigned __int8)byte;
- (void)_appendTwoBytes:(unsigned __int16)bytes;
- (void)appendEightByteItem:(unsigned __int8)item bytes:(unint64_t)bytes;
- (void)appendFourByteItem:(unsigned __int8)item bytes:(unsigned int)bytes;
- (void)appendItem:(unsigned __int8)item data:(id)data;
- (void)appendItem:(unsigned __int8)item string:(id)string;
- (void)appendOneByteItem:(unsigned __int8)item byte:(unsigned __int8)byte;
- (void)appendTwoByteItem:(unsigned __int8)item bytes:(unsigned __int16)bytes;
@end

@implementation APSProtocolMessage

- (APSProtocolMessage)initWithCommand:(int)command
{
  v9.receiver = self;
  v9.super_class = APSProtocolMessage;
  v4 = [(APSProtocolMessage *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_command = command;
    v6 = objc_alloc_init(NSMutableData);
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)_appendOneByte:(unsigned __int8)byte
{
  data = self->_data;
  byteCopy = byte;
  [(NSMutableData *)data appendBytes:&byteCopy length:1];
}

- (void)_appendTwoBytes:(unsigned __int16)bytes
{
  data = self->_data;
  v4 = __rev16(bytes);
  [(NSMutableData *)data appendBytes:&v4 length:2];
}

- (void)_appendFourBytes:(unsigned int)bytes
{
  data = self->_data;
  v4 = bswap32(bytes);
  [(NSMutableData *)data appendBytes:&v4 length:4];
}

- (void)_appendEightBytes:(unint64_t)bytes
{
  data = self->_data;
  v4 = bswap64(bytes);
  [(NSMutableData *)data appendBytes:&v4 length:8];
}

- (void)appendItem:(unsigned __int8)item data:(id)data
{
  itemCopy = item;
  dataCopy = data;
  [(APSProtocolMessage *)self _appendOneByte:itemCopy];
  -[APSProtocolMessage _appendTwoBytes:](self, "_appendTwoBytes:", [dataCopy length]);
  [(NSMutableData *)self->_data appendData:dataCopy];
}

- (void)appendItem:(unsigned __int8)item string:(id)string
{
  itemCopy = item;
  v6 = [string dataUsingEncoding:4];
  [(APSProtocolMessage *)self appendItem:itemCopy data:v6];
}

- (void)appendOneByteItem:(unsigned __int8)item byte:(unsigned __int8)byte
{
  byteCopy = byte;
  [(APSProtocolMessage *)self _appendOneByte:item];
  [(APSProtocolMessage *)self _appendTwoBytes:1];

  [(APSProtocolMessage *)self _appendOneByte:byteCopy];
}

- (void)appendTwoByteItem:(unsigned __int8)item bytes:(unsigned __int16)bytes
{
  bytesCopy = bytes;
  [(APSProtocolMessage *)self _appendOneByte:item];
  [(APSProtocolMessage *)self _appendTwoBytes:2];

  [(APSProtocolMessage *)self _appendTwoBytes:bytesCopy];
}

- (void)appendFourByteItem:(unsigned __int8)item bytes:(unsigned int)bytes
{
  v4 = *&bytes;
  [(APSProtocolMessage *)self _appendOneByte:item];
  [(APSProtocolMessage *)self _appendTwoBytes:4];

  [(APSProtocolMessage *)self _appendFourBytes:v4];
}

- (void)appendEightByteItem:(unsigned __int8)item bytes:(unint64_t)bytes
{
  [(APSProtocolMessage *)self _appendOneByte:item];
  [(APSProtocolMessage *)self _appendTwoBytes:8];

  [(APSProtocolMessage *)self _appendEightBytes:bytes];
}

- (id)copyMessageData
{
  v3 = objc_alloc_init(NSMutableData);
  command = self->_command;
  [v3 appendBytes:&command length:1];
  v6 = bswap32([(NSMutableData *)self->_data length]);
  [v3 appendBytes:&v6 length:4];
  [v3 appendData:self->_data];
  return v3;
}

@end