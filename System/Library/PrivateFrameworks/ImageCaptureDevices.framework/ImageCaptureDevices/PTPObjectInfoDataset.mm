@interface PTPObjectInfoDataset
- (BOOL)contentLengthValid:(unsigned int)valid forContentType:(int)type;
- (PTPObjectInfoDataset)init;
- (PTPObjectInfoDataset)initWithBytes:(char *)bytes length:(unsigned int)length contentType:(int)type;
- (PTPObjectInfoDataset)initWithData:(id)data contentType:(int)type;
- (id)content:(int)content;
- (id)description;
- (id)keywords;
- (id)relatedUUID;
- (int64_t)intervalSince1970;
- (unsigned)objectBufferSizeForContentType:(int)type;
- (unsigned)objectCompressedSize;
- (unsigned)objectContentSizeForContentType:(int)type;
- (void)addCustomKeyword:(id)keyword withIdentifier:(id)identifier;
- (void)contentLength:(unsigned int *)length bufferLength:(unsigned int *)bufferLength contentType:(int)type;
- (void)setKeywords:(id)keywords;
@end

@implementation PTPObjectInfoDataset

- (PTPObjectInfoDataset)init
{
  v3.receiver = self;
  v3.super_class = PTPObjectInfoDataset;
  return [(PTPObjectInfoDataset *)&v3 init];
}

- (PTPObjectInfoDataset)initWithData:(id)data contentType:(int)type
{
  v4 = *&type;
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  return [(PTPObjectInfoDataset *)self initWithBytes:bytes length:v10 contentType:v4];
}

- (PTPObjectInfoDataset)initWithBytes:(char *)bytes length:(unsigned int)length contentType:(int)type
{
  v5 = *&type;
  v6 = *&length;
  v22.receiver = self;
  v22.super_class = PTPObjectInfoDataset;
  v8 = [(PTPObjectInfoDataset *)&v22 init];
  v9 = v8;
  if (!v8)
  {
    return v9;
  }

  if (![(PTPObjectInfoDataset *)v8 contentLengthValid:v6 forContentType:v5])
  {

    return 0;
  }

  v10 = &bytes[v6];
  bytesCopy = bytes;
  if (v5)
  {
    v9->_objectHandle = ReadUInt32(&bytesCopy);
    if (v5 <= 2)
    {
      ReadUInt32(&bytesCopy);
    }
  }

  v9->_storageID = ReadUInt32(&bytesCopy);
  v9->_objectFormat = ReadUInt16(&bytesCopy);
  v9->_protectionStatus = ReadUInt16(&bytesCopy);
  if (v5 > 1)
  {
    if ((v5 & 0xFFFFFFFE) == 2)
    {
      v9->_objectCompressedSize = ReadUInt64(&bytesCopy);
    }

    v11 = v5 == 3;
    if ((v5 - 5) > 0xFFFFFFFD)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    v9->_objectCompressedSize = ReadUInt32(&bytesCopy);
  }

  v9->_thumbFormat = ReadUInt16(&bytesCopy);
  v9->_thumbCompressedSize = ReadUInt32(&bytesCopy);
  v9->_thumbPixWidth = ReadUInt32(&bytesCopy);
  v9->_thumbPixHeight = ReadUInt32(&bytesCopy);
  v9->_imagePixWidth = ReadUInt32(&bytesCopy);
  v9->_imagePixHeight = ReadUInt32(&bytesCopy);
  v9->_imageBitDepth = ReadUInt32(&bytesCopy);
LABEL_13:
  v9->_parentObject = ReadUInt32(&bytesCopy);
  v9->_associationType = ReadUInt16(&bytesCopy);
  v9->_associationDesc = ReadUInt32(&bytesCopy);
  v9->_sequenceNumber = ReadUInt32(&bytesCopy);
  v12 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&bytesCopy, v10);
  filename = v9->_filename;
  v9->_filename = v12;

  v14 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&bytesCopy, v10);
  if (v11)
  {
    modificationDate = v9->_modificationDate;
    v9->_modificationDate = v14;
  }

  else
  {
    captureDate = v9->_captureDate;
    v9->_captureDate = v14;

    v17 = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&bytesCopy, v10);
    v18 = v9->_modificationDate;
    v9->_modificationDate = v17;

    modificationDate = CopyUnicodeStringWithLengthByteFromBufferMaxSize(&bytesCopy, v10);
    [(PTPObjectInfoDataset *)v9 setKeywords:modificationDate];
  }

  v20 = 0;
  [(PTPObjectInfoDataset *)v9 contentLength:&v20 + 4 bufferLength:&v20 contentType:v5];
  return v9;
}

- (void)contentLength:(unsigned int *)length bufferLength:(unsigned int *)bufferLength contentType:(int)type
{
  v9 = [(NSString *)self->_filename length];
  if (v9)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(NSString *)self->_captureDate length];
  if (v11)
  {
    v12 = v11 + 1;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSString *)self->_modificationDate length];
  if (v13)
  {
    v14 = v13 + 1;
  }

  else
  {
    v14 = 0;
  }

  v15 = [(NSMutableString *)self->_keywords length];
  if (v15)
  {
    v16 = v15 + 1;
  }

  else
  {
    v16 = 0;
  }

  if (type == 2)
  {
    v19 = 2 * (v14 + v10 + v12 + v16);
    *length = v19 + 60;
    v17 = v19 + 68;
  }

  else if (type == 1)
  {
    v18 = 2 * (v14 + v10 + v12 + v16);
    *length = v18 + 56;
    v17 = v18 + 64;
  }

  else
  {
    if (type)
    {
      if ((type - 3) > 1)
      {
        return;
      }

      v17 = 2 * (v14 + v10) + 36;
    }

    else
    {
      v17 = 2 * (v14 + v10 + v12 + v16) + 56;
    }

    *length = v17;
  }

  *bufferLength = v17;
}

- (BOOL)contentLengthValid:(unsigned int)valid forContentType:(int)type
{
  v6 = 0;
  [(PTPObjectInfoDataset *)self contentLength:&v6 + 4 bufferLength:&v6 contentType:*&type];
  return HIDWORD(v6) <= valid;
}

- (id)content:(int)content
{
  v11 = 0;
  [(PTPObjectInfoDataset *)self contentLength:&v11 + 4 bufferLength:&v11 contentType:*&content];
  v5 = objc_alloc(MEMORY[0x29EDB8DF8]);
  v6 = [v5 initWithLength:v11];
  mutableBytes = [v6 mutableBytes];
  if (content)
  {
    WriteUInt32(&mutableBytes, self->_objectHandle);
    if (content <= 2)
    {
      WriteUInt32(&mutableBytes, SHIDWORD(v11));
    }
  }

  WriteUInt32(&mutableBytes, self->_storageID);
  WriteUInt16(&mutableBytes, self->_objectFormat);
  WriteUInt16(&mutableBytes, self->_protectionStatus);
  if (content <= 1)
  {
    if (HIDWORD(self->_objectCompressedSize))
    {
      objectCompressedSize = -1;
    }

    else
    {
      objectCompressedSize = self->_objectCompressedSize;
    }

    WriteUInt32(&mutableBytes, objectCompressedSize);
  }

  if ((content & 0xFFFFFFFE) == 2)
  {
    WriteUInt64(&mutableBytes, self->_objectCompressedSize);
  }

  if ((content - 5) <= 0xFFFFFFFD)
  {
    WriteUInt16(&mutableBytes, self->_thumbFormat);
    WriteUInt32(&mutableBytes, self->_thumbCompressedSize);
    WriteUInt32(&mutableBytes, self->_thumbPixWidth);
    WriteUInt32(&mutableBytes, self->_thumbPixHeight);
    WriteUInt32(&mutableBytes, self->_imagePixWidth);
    WriteUInt32(&mutableBytes, self->_imagePixHeight);
    WriteUInt32(&mutableBytes, self->_imageBitDepth);
  }

  WriteUInt32(&mutableBytes, self->_parentObject);
  WriteUInt16(&mutableBytes, self->_associationType);
  WriteUInt32(&mutableBytes, self->_associationDesc);
  WriteUInt32(&mutableBytes, self->_sequenceNumber);
  WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, self->_filename);
  if (content == 3)
  {
    p_modificationDate = &self->_modificationDate;
  }

  else
  {
    WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, self->_captureDate);
    WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, self->_modificationDate);
    keywords = self->_keywords;
    p_modificationDate = &self->_keywords;
    [(NSMutableString *)keywords length];
  }

  WriteUnicodeStringWithLengthByteToBuffer(&mutableBytes, *p_modificationDate);

  return v6;
}

- (id)description
{
  objectHandle = self->_objectHandle;
  v20 = MEMORY[0x29EDBA050];
  storageID = self->_storageID;
  v17 = stringForObjectFormatCode(self->_objectFormat);
  v3 = stringForProtectionStatus(self->_protectionStatus);
  objectCompressedSize = self->_objectCompressedSize;
  v16 = v3;
  v4 = stringForObjectFormatCode(self->_thumbFormat);
  thumbCompressedSize = self->_thumbCompressedSize;
  thumbPixWidth = self->_thumbPixWidth;
  thumbPixHeight = self->_thumbPixHeight;
  imagePixWidth = self->_imagePixWidth;
  imagePixHeight = self->_imagePixHeight;
  imageBitDepth = self->_imageBitDepth;
  parentObject = self->_parentObject;
  v12 = stringForAssociationType(self->_associationType);
  v13 = [v20 stringWithFormat:@"<PTPObjectInfoDataset %p>{\n  _objectHandle:            0x%08lX\n  _storageID:            0x%08lX\n  _objectFormat:         %@\n  _protectionStatus:     %@\n  _objectCompressedSize: %llu\n  _thumbFormat:          %@\n  _thumbCompressedSize:  %lu\n  _thumbPixWidth:        %lu\n  _thumbPixHeight:       %lu\n  _imagePixWidth:        %lu\n  _imagePixHeight:       %lu\n  _imageBitDepth:        %lu\n  _parentObject:         0x%08lX\n  _associationType:      %@\n  _associationDesc:      0x%08lX\n  _sequenceNumber:       %lu\n  _filename:             %@\n  _captureDate:          %@\n  _modificationDate:     %@\n  _keywords:             %@\n}", self, objectHandle, storageID, v17, v16, objectCompressedSize, v4, thumbCompressedSize, thumbPixWidth, thumbPixHeight, imagePixWidth, imagePixHeight, imageBitDepth, parentObject, v12, self->_associationDesc, self->_sequenceNumber, self->_filename, self->_captureDate, self->_modificationDate, self->_keywords];

  return v13;
}

- (unsigned)objectCompressedSize
{
  if (HIDWORD(self->_objectCompressedSize))
  {
    return -1;
  }

  else
  {
    return self->_objectCompressedSize;
  }
}

- (id)keywords
{
  v2 = [(NSMutableString *)self->_keywords copy];

  return v2;
}

- (void)setKeywords:(id)keywords
{
  keywordsCopy = keywords;
  if (([(NSMutableString *)self->_keywords isEqualToString:?]& 1) == 0)
  {
    v4 = [keywordsCopy mutableCopy];
    keywords = self->_keywords;
    self->_keywords = v4;
  }
}

- (void)addCustomKeyword:(id)keyword withIdentifier:(id)identifier
{
  keywordCopy = keyword;
  identifierCopy = identifier;
  if (keywordCopy && identifierCopy)
  {
    if (!self->_keywords)
    {
      v7 = objc_alloc_init(MEMORY[0x29EDBA050]);
      keywords = self->_keywords;
      self->_keywords = v7;
    }

    v9 = [keywordCopy length];
    v10 = [identifierCopy length];
    if ((v9 + v10 + [(NSMutableString *)self->_keywords length]+ 3) <= 0xFF)
    {
      v11 = [(NSMutableString *)self->_keywords length];
      v12 = @"&";
      if (!v11)
      {
        v12 = &stru_2A253D090;
      }

      [(NSMutableString *)self->_keywords appendFormat:@"%@%@^%@", v12, identifierCopy, keywordCopy];
    }
  }
}

- (unsigned)objectContentSizeForContentType:(int)type
{
  v5 = 0;
  v4 = 0;
  [(PTPObjectInfoDataset *)self contentLength:&v5 bufferLength:&v4 contentType:*&type];
  return v5;
}

- (unsigned)objectBufferSizeForContentType:(int)type
{
  v5 = 0;
  v4 = 0;
  [(PTPObjectInfoDataset *)self contentLength:&v5 bufferLength:&v4 contentType:*&type];
  return v4;
}

- (id)relatedUUID
{
  v15 = *MEMORY[0x29EDCA608];
  if (!self->_relatedUUID)
  {
    v3 = strstr([(NSMutableString *)self->_keywords UTF8String], "RUUID^");
    if (v3 && (v4 = v3, strlen(v3) >= 0x2A))
    {
      __dst[36] = 0;
      strncpy(__dst, v4 + 6, 0x24uLL);
      v5 = objc_alloc(MEMORY[0x29EDBA140]);
      v6 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:__dst];
      v7 = [v5 initWithUUIDString:v6];
      relatedUUID = self->_relatedUUID;
      self->_relatedUUID = v7;
    }

    else
    {
      uUID = [MEMORY[0x29EDBA140] UUID];
      v10 = [uUID copy];
      v11 = self->_relatedUUID;
      self->_relatedUUID = v10;
    }
  }

  v12 = self->_relatedUUID;

  return v12;
}

- (int64_t)intervalSince1970
{
  result = self->_intervalSince1970;
  if (!result)
  {
    result = ICTimeIntervalSince1970FromPTPString(self->_captureDate);
    self->_intervalSince1970 = result;
  }

  return result;
}

@end