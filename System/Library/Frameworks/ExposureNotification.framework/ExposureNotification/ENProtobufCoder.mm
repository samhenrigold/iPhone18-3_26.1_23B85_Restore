@interface ENProtobufCoder
- (BOOL)_skipLength:(unint64_t)length error:(id *)error;
- (BOOL)_writeBytes:(const void *)bytes length:(unint64_t)length error:(id *)error;
- (BOOL)readFixedDouble:(double *)double error:(id *)error;
- (BOOL)readFixedFloat:(float *)float error:(id *)error;
- (BOOL)readFixedSInt32:(int *)int32 error:(id *)error;
- (BOOL)readFixedSInt64:(int64_t *)int64 error:(id *)error;
- (BOOL)readFixedUInt32:(unsigned int *)int32 error:(id *)error;
- (BOOL)readFixedUInt64:(unint64_t *)int64 error:(id *)error;
- (BOOL)readType:(char *)type tag:(unint64_t *)tag eofOkay:(BOOL)okay error:(id *)error;
- (BOOL)readVarInt:(unint64_t *)int eofOkay:(BOOL)okay error:(id *)error;
- (BOOL)readVarIntBoolean:(BOOL *)boolean error:(id *)error;
- (BOOL)readVarIntInt32:(int *)int32 error:(id *)error;
- (BOOL)readVarIntSInt32:(int *)int32 error:(id *)error;
- (BOOL)readVarIntSInt64:(int64_t *)int64 error:(id *)error;
- (BOOL)readVarIntUInt32:(unsigned int *)int32 error:(id *)error;
- (BOOL)readVarIntUInt64:(unint64_t *)int64 error:(id *)error;
- (BOOL)skipType:(unsigned __int8)type error:(id *)error;
- (BOOL)writeFixedDouble:(double)double tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeFixedFloat:(float)float tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeFixedSInt32:(int)int32 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeFixedSInt64:(int64_t)int64 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeFixedUInt32:(unsigned int)int32 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeFixedUInt64:(unint64_t)int64 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeLengthDelimitedPtr:(const void *)ptr length:(unint64_t)length tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeNSData:(id)data tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeNSString:(id)string tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeVarInt:(unint64_t)int error:(id *)error;
- (BOOL)writeVarIntBoolean:(BOOL)boolean tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeVarIntSInt32:(int)int32 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeVarIntSInt64:(int64_t)int64 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeVarIntUInt32:(unsigned int)int32 tag:(unint64_t)tag error:(id *)error;
- (BOOL)writeVarIntUInt64:(unint64_t)int64 tag:(unint64_t)tag error:(id *)error;
- (ENProtobufCoder)init;
- (const)_readLength:(unint64_t)length eofOkay:(BOOL)okay error:(id *)error;
- (const)readLengthDelimited:(unint64_t *)delimited error:(id *)error;
- (id)dequeueOrCreateSubCoder;
- (id)readNSDataAndReturnError:(id *)error;
- (id)readNSStringAndReturnError:(id *)error;
- (void)enqueueSubCoder:(id)coder;
- (void)prepareForReuse;
- (void)setFileHandle:(__sFILE *)handle;
- (void)setReadArchive:(id)archive;
- (void)setReadMemory:(const void *)memory length:(unint64_t)length;
- (void)setWriteMemory:(void *)memory length:(unint64_t)length;
- (void)setWriteMutableData:(id)data;
@end

@implementation ENProtobufCoder

- (ENProtobufCoder)init
{
  v6.receiver = self;
  v6.super_class = ENProtobufCoder;
  v2 = [(ENProtobufCoder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_bufferMaxSize = 0x20000;
    v4 = v2;
  }

  return v3;
}

- (void)setReadMemory:(const void *)memory length:(unint64_t)length
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  self->_readBase = memory;
  self->_readSrc = memory;
  self->_readEnd = memory + length;
  *&self->_writeBase = 0u;
  *&self->_writeLim = 0u;
  bufferData = self->_bufferData;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setWriteMemory:(void *)memory length:(unint64_t)length
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  self->_readBase = 0;
  self->_readSrc = 0;
  self->_readEnd = 0;
  self->_writeBase = memory;
  self->_writeDst = memory;
  self->_writeLim = memory + length;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setWriteMutableData:(id)data
{
  dataCopy = data;
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = dataCopy;

  self->_bufferOffset = 0;
}

- (void)setFileHandle:(__sFILE *)handle
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = handle;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (void)setReadArchive:(id)archive
{
  objc_storeStrong(&self->_readArchive, archive);
  archiveCopy = archive;
  *&self->_readBase = 0u;
  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (id)dequeueOrCreateSubCoder
{
  popFirstObject = [(NSMutableArray *)self->_subCoders popFirstObject];
  if (popFirstObject)
  {
    v3 = popFirstObject;
    [(ENProtobufCoder *)popFirstObject prepareForReuse];
  }

  else
  {
    v3 = objc_alloc_init(ENProtobufCoder);
  }

  return v3;
}

- (void)enqueueSubCoder:(id)coder
{
  coderCopy = coder;
  subCoders = self->_subCoders;
  v8 = coderCopy;
  if (!subCoders)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_subCoders;
    self->_subCoders = v6;

    coderCopy = v8;
    subCoders = self->_subCoders;
  }

  [(NSMutableArray *)subCoders addObject:coderCopy];
}

- (void)prepareForReuse
{
  readArchive = self->_readArchive;
  self->_readArchive = 0;

  *&self->_readEnd = 0u;
  *&self->_writeDst = 0u;
  *&self->_readBase = 0u;
  bufferData = self->_bufferData;
  self->_fileHandle = 0;
  self->_bufferData = 0;

  self->_bufferOffset = 0;
}

- (BOOL)writeNSData:(id)data tag:(unint64_t)tag error:(id *)error
{
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v12 = [dataCopy2 length];

  return [(ENProtobufCoder *)self writeLengthDelimitedPtr:bytes length:v12 tag:tag error:error];
}

- (BOOL)writeNSString:(id)string tag:(unint64_t)tag error:(id *)error
{
  stringCopy = string;
  uTF8String = [string UTF8String];
  v11 = strlen(uTF8String);

  return [(ENProtobufCoder *)self writeLengthDelimitedPtr:uTF8String length:v11 tag:tag error:error];
}

- (BOOL)writeVarInt:(unint64_t)int error:(id *)error
{
  while (int >= 0x80)
  {
    v9 = int | 0x80;
    int >>= 7;
    if (![(ENProtobufCoder *)self _writeBytes:&v9 length:1 error:error])
    {
      return 0;
    }
  }

  intCopy = int;
  return [(ENProtobufCoder *)self _writeBytes:&intCopy length:1 error:error];
}

- (const)_readLength:(unint64_t)length eofOkay:(BOOL)okay error:(id *)error
{
  readSrc = self->_readSrc;
  if (readSrc)
  {
    if (self->_readEnd - readSrc < length)
    {
      if (error)
      {
        if (okay)
        {
          readSrc = 0;
          *error = 0;
          return readSrc;
        }

        v18 = NSErrorF(*MEMORY[0x277CCA590], 4294960546, "read memory underrun");
        *error = v18;
      }

      return 0;
    }

    self->_readSrc = &readSrc[length];
    return readSrc;
  }

  fileHandle = self->_fileHandle;
  v10 = self->_readArchive;
  if (!(fileHandle | v10))
  {
    if (!error)
    {
      goto LABEL_24;
    }

    NSErrorF(*MEMORY[0x277CCA590], 4294960551, "read, no input sources");
    goto LABEL_14;
  }

  if (self->_bufferMaxSize < length)
  {
    if (!error)
    {
      goto LABEL_24;
    }

    NSErrorF(*MEMORY[0x277CCA590], 4294960553, "read too big: %zu");
LABEL_14:
    *error = readSrc = 0;
    goto LABEL_25;
  }

  if (length <= 0x100)
  {
    readSrc = self->_staticBuffer;
    if (!fileHandle)
    {
      goto LABEL_8;
    }

LABEL_19:
    if (fread(readSrc, 1uLL, length, fileHandle) != length)
    {
      if (error)
      {
        if (feof(fileHandle))
        {
          readSrc = 0;
          *error = 0;
          goto LABEL_25;
        }

        v14 = *MEMORY[0x277CCA590];
        v15 = __error();
        v16 = NSErrorF(v14, 4294960550, "read failed: %#m", *v15);
        *error = v16;
      }

LABEL_24:
      readSrc = 0;
    }

LABEL_25:

    return readSrc;
  }

  v11 = self->_bufferData;
  if (v11)
  {
    v12 = v11;
    [(NSMutableData *)v11 setLength:length];
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
    bufferData = self->_bufferData;
    self->_bufferData = v12;
  }

  readSrc = [(NSMutableData *)v12 mutableBytes];

  if (fileHandle)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (v10)
  {
    if (([v10 readDataIntoBuffer:readSrc length:length error:error] & 1) == 0)
    {
      readSrc = 0;
    }

    goto LABEL_25;
  }

  v19 = FatalErrorF();
  return [(ENProtobufCoder *)v19 _skipLength:v20 error:v21, v22];
}

- (BOOL)_skipLength:(unint64_t)length error:(id *)error
{
  readSrc = self->_readSrc;
  if (readSrc)
  {
    if (self->_readEnd - readSrc >= length)
    {
      self->_readSrc = &readSrc[length];
      return 1;
    }

    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960546, "read memory underrun");
      goto LABEL_15;
    }

    return 0;
  }

  if (self->_fileHandle)
  {
    v7 = 1;
    if (!fseeko(self->_fileHandle, length, 1))
    {
      return v7;
    }

    if (*__error())
    {
      v9 = *__error();
      if (!v9)
      {
        return v7;
      }
    }

    else
    {
      v9 = 4294960596;
    }

    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], v9, "fseek failed: %zu bytes");
LABEL_15:
      *error = v7 = 0;
      return v7;
    }

    return 0;
  }

  v10 = self->_readArchive;
  v11 = v10;
  if (v10)
  {
    v7 = [(ENArchive *)v10 skipBytes:length error:error];
  }

  else if (error)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960551, "skip, no input sources");
    *error = v7 = 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_writeBytes:(const void *)bytes length:(unint64_t)length error:(id *)error
{
  writeDst = self->_writeDst;
  if (writeDst)
  {
    if (self->_writeLim - writeDst < length)
    {
      if (error)
      {
        NSErrorF(*MEMORY[0x277CCA590], 4294960545, "write memory overrun");
        *error = v10 = 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      memcpy(self->_writeDst, bytes, length);
      self->_writeDst = &writeDst[length];
      return 1;
    }

    return v10;
  }

  fileHandle = self->_fileHandle;
  if (!fileHandle)
  {
    v12 = self->_bufferData;
    v13 = v12;
    if (v12)
    {
      if (self->_bufferMaxSize - self->_bufferOffset >= length)
      {
        [(NSMutableData *)v12 appendBytes:bytes length:length];
        self->_bufferOffset += length;
        v10 = 1;
LABEL_19:

        return v10;
      }

      if (error)
      {
        NSErrorF(*MEMORY[0x277CCA590], 4294960545, "write buffer overrun");
        goto LABEL_12;
      }
    }

    else if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960551, "write no output sources");
LABEL_12:
      *error = v10 = 0;
      goto LABEL_19;
    }

    v10 = 0;
    goto LABEL_19;
  }

  v10 = 1;
  if (fwrite(bytes, 1uLL, length, fileHandle) != length)
  {
    [ENProtobufCoder _writeBytes:error length:&v15 error:?];
    return v15;
  }

  return v10;
}

- (BOOL)readType:(char *)type tag:(unint64_t *)tag eofOkay:(BOOL)okay error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v14 = 0;
  v11 = [v8 readVarInt:&v14 eofOkay:v9 error:v10];
  if (v11)
  {
    v12 = v14;
    *v7 = v14 >> 3;
    *v6 = v12 & 7;
  }

  return v11;
}

- (const)readLengthDelimited:(unint64_t *)delimited error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_0_5();
  if (![v7 readVarInt:? eofOkay:? error:?])
  {
    return 0;
  }

  v8 = v6;
  OUTLINED_FUNCTION_4_3();
  result = [v9 _readLength:? eofOkay:? error:?];
  if (result)
  {
    *v4 = v11;
  }

  return result;
}

- (BOOL)writeLengthDelimitedPtr:(const void *)ptr length:(unint64_t)length tag:(unint64_t)tag error:(id *)error
{
  if (![(ENProtobufCoder *)self writeVarInt:(8 * tag) | 2 error:error]|| ![(ENProtobufCoder *)self writeVarInt:length error:error])
  {
    return 0;
  }

  return [(ENProtobufCoder *)self _writeBytes:ptr length:length error:error];
}

- (BOOL)skipType:(unsigned __int8)type error:(id *)error
{
  selfCopy = self;
  switch(type)
  {
    case 0u:
      OUTLINED_FUNCTION_3_3();
      if ([v6 readVarInt:? eofOkay:? error:?])
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    case 1u:
      v9 = 8;
      goto LABEL_8;
    case 2u:
      OUTLINED_FUNCTION_3_3();
      v8 = [v7 readVarInt:? eofOkay:? error:?];
      if (!v8)
      {
        return v8;
      }

      v9 = 0;
      self = selfCopy;
LABEL_8:
      if ([(ENProtobufCoder *)self _skipLength:v9 error:error])
      {
LABEL_9:
        LOBYTE(v8) = 1;
      }

      else
      {
LABEL_12:
        LOBYTE(v8) = 0;
      }

      break;
    case 5u:
      v9 = 4;
      goto LABEL_8;
    default:
      if (!error)
      {
        goto LABEL_12;
      }

      v10 = NSErrorF(*MEMORY[0x277CCA590], 4294960564, "Unsupported protobuf type: %d", type);
      LOBYTE(v8) = OUTLINED_FUNCTION_11_0();
      break;
  }

  return v8;
}

- (id)readNSDataAndReturnError:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  if (![v5 readVarInt:? eofOkay:? error:?])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (v12 == -1)
  {
    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960553, "Data too big: %llu bytes", -1);
      *error = v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  selfCopy = self;
  OUTLINED_FUNCTION_3_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v8 length:v12];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      *error = NSErrorF(*MEMORY[0x277CCA590], 4294960553, "Create NSData failed: %llu", v12);
    }
  }

LABEL_7:

  return v8;
}

- (id)readNSStringAndReturnError:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  if (![v5 readVarInt:? eofOkay:? error:?])
  {
LABEL_12:
    v8 = 0;
    goto LABEL_7;
  }

  if (v12 == -1)
  {
    if (error)
    {
      NSErrorF(*MEMORY[0x277CCA590], 4294960553, "String too big: %llu bytes", -1);
      *error = v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  selfCopy = self;
  OUTLINED_FUNCTION_3_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v8 length:v12 encoding:4];
    v8 = v9;
    if (v9)
    {
      v10 = v9;
    }

    else if (error)
    {
      *error = NSErrorF(*MEMORY[0x277CCA590], 4294960553, "Bad UTF-8 string");
    }
  }

LABEL_7:

  return v8;
}

- (BOOL)readVarInt:(unint64_t *)int eofOkay:(BOOL)okay error:(id *)error
{
  okayCopy = okay;
  v9 = 0;
  v10 = -7;
  while (1)
  {
    v11 = [(ENProtobufCoder *)self _readLength:1 eofOkay:okayCopy error:error];
    if (!v11)
    {
      return v11;
    }

    v12 = (*v11 & 0x7F) << (v10 + 7);
    if (v12 >> (v10 + 7) != (*v11 & 0x7F))
    {
      break;
    }

    v9 |= v12;
    if ((*v11 & 0x80000000) == 0)
    {
      *int = v9;
      LOBYTE(v11) = 1;
      return v11;
    }

    v10 += 7;
    if (v10 >= 0x39)
    {
      if (error)
      {
        NSErrorF(*MEMORY[0x277CCA590], 4294960545, "readVarInt overrun");
        v13 = LABEL_12:;
        LOBYTE(v11) = OUTLINED_FUNCTION_11_0();
        return v11;
      }

      goto LABEL_13;
    }
  }

  if (error)
  {
    NSErrorF(*MEMORY[0x277CCA590], 4294960586, "readVarInt shift overflow");
    goto LABEL_12;
  }

LABEL_13:
  LOBYTE(v11) = 0;
  return v11;
}

- (BOOL)readVarIntSInt32:(int *)int32 error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *int32 = -(v8 & 1) ^ (v8 >> 1);
  }

  return v6;
}

- (BOOL)writeVarIntSInt32:(int)int32 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntInt32:(int *)int32 error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v7 = [v6 readVarInt:? eofOkay:? error:?];
  if (v7)
  {
    if (v10 == v10)
    {
      *int32 = v10;
      LOBYTE(v7) = 1;
    }

    else if (error)
    {
      v8 = NSErrorF(*MEMORY[0x277CCA590], 4294960586, "Out-of-range Int32: %lld", v10);
      LOBYTE(v7) = OUTLINED_FUNCTION_11_0();
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

- (BOOL)readVarIntUInt32:(unsigned int *)int32 error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v7 = [v6 readVarInt:? eofOkay:? error:?];
  if (v7)
  {
    if (HIDWORD(v10))
    {
      if (error)
      {
        v8 = NSErrorF(*MEMORY[0x277CCA590], 4294960586, "Out-of-range UInt32: %llu", v10);
        LOBYTE(v7) = OUTLINED_FUNCTION_11_0();
      }

      else
      {
        LOBYTE(v7) = 0;
      }
    }

    else
    {
      *int32 = v10;
      LOBYTE(v7) = 1;
    }
  }

  return v7;
}

- (BOOL)writeVarIntUInt32:(unsigned int)int32 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntSInt64:(int64_t *)int64 error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *int64 = -(v8 & 1) ^ (v8 >> 1);
  }

  return v6;
}

- (BOOL)writeVarIntSInt64:(int64_t)int64 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readVarIntUInt64:(unint64_t *)int64 error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *int64 = v8;
  }

  return v6;
}

- (BOOL)writeVarIntUInt64:(unint64_t)int64 tag:(unint64_t)tag error:(id *)error
{
  v8 = OUTLINED_FUNCTION_9_0(self, a2, int64, tag, error);
  if (v8)
  {

    LOBYTE(v8) = [(ENProtobufCoder *)self writeVarInt:int64 error:error];
  }

  return v8;
}

- (BOOL)readVarIntBoolean:(BOOL *)boolean error:(id *)error
{
  OUTLINED_FUNCTION_0_5();
  v6 = [v5 readVarInt:? eofOkay:? error:?];
  if (v6)
  {
    *boolean = v8 != 0;
  }

  return v6;
}

- (BOOL)writeVarIntBoolean:(BOOL)boolean tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v10 = OUTLINED_FUNCTION_9_0(v5, v6, v7, v8, v9);
  if (v10)
  {
    v11 = OUTLINED_FUNCTION_10_0();

    LOBYTE(v10) = [v11 writeVarInt:? error:?];
  }

  return v10;
}

- (BOOL)readFixedFloat:(float *)float error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedFloat:(float)float tag:(unint64_t)tag error:(id *)error
{
  v5 = LOBYTE(float);
  v6 = [(ENProtobufCoder *)self writeVarInt:(8 * tag) | 5 error:?];
  if (v6)
  {
    LOBYTE(v6) = OUTLINED_FUNCTION_6_0(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v5);
  }

  return v6;
}

- (BOOL)readFixedSInt32:(int *)int32 error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedSInt32:(int)int32 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v9 = [v7 writeVarInt:(8 * v6) | 5 error:v8];
  if (v9)
  {
    LOBYTE(v9) = OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v5);
  }

  return v9;
}

- (BOOL)readFixedUInt32:(unsigned int *)int32 error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedUInt32:(unsigned int)int32 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v9 = [v7 writeVarInt:(8 * v6) | 5 error:v8];
  if (v9)
  {
    LOBYTE(v9) = OUTLINED_FUNCTION_6_0(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v5);
  }

  return v9;
}

- (BOOL)readFixedDouble:(double *)double error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedDouble:(double)double tag:(unint64_t)tag error:(id *)error
{
  v6 = [(ENProtobufCoder *)self writeVarInt:(8 * tag) | 1 error:?];
  if (v6)
  {
    LOBYTE(v6) = OUTLINED_FUNCTION_5_2(v6, v7, v8, v9, v10, v11, v12, v13, *&double);
  }

  return v6;
}

- (BOOL)readFixedSInt64:(int64_t *)int64 error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedSInt64:(int64_t)int64 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v11 = OUTLINED_FUNCTION_12_0(v6, v7, v8, v9, v10);
  if (v11)
  {
    LOBYTE(v11) = OUTLINED_FUNCTION_5_2(v11, v12, v13, v14, v15, v16, v17, v18, v5);
  }

  return v11;
}

- (BOOL)readFixedUInt64:(unint64_t *)int64 error:(id *)error
{
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  OUTLINED_FUNCTION_4_3();
  v8 = [v7 _readLength:? eofOkay:? error:?];
  if (v8)
  {
    *v4 = *v8;
  }

  return OUTLINED_FUNCTION_7_0(v8);
}

- (BOOL)writeFixedUInt64:(unint64_t)int64 tag:(unint64_t)tag error:(id *)error
{
  OUTLINED_FUNCTION_1_3();
  v11 = OUTLINED_FUNCTION_12_0(v6, v7, v8, v9, v10);
  if (v11)
  {
    LOBYTE(v11) = OUTLINED_FUNCTION_5_2(v11, v12, v13, v14, v15, v16, v17, v18, v5);
  }

  return v11;
}

- (void)_writeBytes:(void *)result length:(_BYTE *)a2 error:.cold.1(void *result, _BYTE *a2)
{
  if (result)
  {
    v3 = result;
    v4 = *MEMORY[0x277CCA590];
    v5 = __error();
    result = NSErrorF(v4, 4294960549, "write failed: %#m", *v5);
    *v3 = result;
  }

  *a2 = 0;
  return result;
}

@end