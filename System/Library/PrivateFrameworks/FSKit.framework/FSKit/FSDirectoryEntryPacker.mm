@interface FSDirectoryEntryPacker
- (BOOL)packEntryWithName:(id)name itemType:(int64_t)type itemID:(unint64_t)d nextCookie:(unint64_t)cookie attributes:(id)attributes;
- (FSDirectoryEntryPacker)initWithBuffer:(id)buffer withAttributes:(BOOL)attributes;
- (void)setLastEntryAsEOF;
@end

@implementation FSDirectoryEntryPacker

- (BOOL)packEntryWithName:(id)name itemType:(int64_t)type itemID:(unint64_t)d nextCookie:(unint64_t)cookie attributes:(id)attributes
{
  typeCopy = type;
  v47 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  attributesCopy = attributes;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  data = [nameCopy data];
  v16 = [data length];

  if (v16)
  {
    v18 = 0;
    while (1)
    {
      data2 = [nameCopy data];
      v20 = *([data2 bytes] + v18);

      if (v20 == 47)
      {
        break;
      }

      if (v16 == ++v18)
      {
        goto LABEL_5;
      }
    }

    string = [nameCopy string];
    v33 = string;
    if (string)
    {
      v34 = fskit_std_log(string);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:v33 itemType:v34 itemID:? nextCookie:? attributes:?];
      }
    }

    else
    {
      v34 = fskit_std_log(0);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:v34 itemType:? itemID:? nextCookie:? attributes:?];
      }
    }

    goto LABEL_30;
  }

LABEL_5:
  if (selfCopy->_withAttributes)
  {
    if (attributesCopy)
    {
      bytesPacked = selfCopy->_bytesPacked;
      v22 = [(FSMutableFileDataBuffer *)selfCopy->_buffer length];
      v23 = (v16 + 208) & 0xFFFFFFF8;
      if (bytesPacked + v23 > v22)
      {
        lastEntry = selfCopy->_lastEntry;
        if (lastEntry)
        {
          lastEntry[4] = 0;
        }

        v25 = fskit_std_log(v22);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v46 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
          _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Packer out of space", buf, 0xCu);
        }

        goto LABEL_18;
      }

      cookieCopy = cookie;
      v41 = ([(FSMutableFileDataBuffer *)selfCopy->_buffer mutableBytes]+ selfCopy->_bytesPacked);
      [attributesCopy getLIAttributes:v41 + 16];
      data3 = [nameCopy data];
      memcpy((v41 + 200), [data3 bytes], v16);

      *(v41 + 200 + v16) = 0;
      *(v41 + 10) = 200;
      *(v41 + 12) = v16;
      *(v41 + 8) = (v16 + 208) & 0xFFF8;
      *v41 = cookieCopy;
      selfCopy->_bytesPacked += v23;
      selfCopy->_lastEntry = v41;
    }

    else
    {
      v39 = fskit_std_log(v17);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [FSDirectoryEntryPacker packEntryWithName:v39 itemType:? itemID:? nextCookie:? attributes:?];
      }
    }

LABEL_30:
    v31 = 1;
    goto LABEL_31;
  }

  v26 = selfCopy->_bytesPacked;
  v27 = [(FSMutableFileDataBuffer *)selfCopy->_buffer length];
  cookieCopy2 = cookie;
  v28 = attributesCopy;
  v29 = (v16 + 29) & 0xFFFFFFFFFFFFFFF8;
  if (v26 + v29 <= v27)
  {
    mutableBytes = [(FSMutableFileDataBuffer *)selfCopy->_buffer mutableBytes];
    v36 = selfCopy->_bytesPacked;
    data4 = [nameCopy data];
    v38 = (mutableBytes + v36);
    memcpy(v38 + 21, [data4 bytes], v16);

    v38[v16 + 21] = 0;
    *(v38 + 9) = v16;
    v38[20] = typeCopy;
    *(v38 + 8) = v29;
    *v38 = d;
    *(v38 + 1) = cookieCopy2;
    selfCopy->_bytesPacked += v29;
    selfCopy->_lastEntry = v38;
    v31 = 1;
    attributesCopy = v28;
    goto LABEL_31;
  }

  v30 = selfCopy->_lastEntry;
  if (v30)
  {
    v30[8] = 0;
  }

  v25 = fskit_std_log(v27);
  attributesCopy = v28;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v46 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
    _os_log_impl(&dword_24A929000, v25, OS_LOG_TYPE_INFO, "%s: Packer out of space", buf, 0xCu);
  }

LABEL_18:

  v31 = 0;
  selfCopy->_outOfSpace = 1;
LABEL_31:
  objc_sync_exit(selfCopy);

  return v31;
}

- (FSDirectoryEntryPacker)initWithBuffer:(id)buffer withAttributes:(BOOL)attributes
{
  bufferCopy = buffer;
  v11.receiver = self;
  v11.super_class = FSDirectoryEntryPacker;
  v8 = [(FSDirectoryEntryPacker *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buffer, buffer);
    v9->_lastEntry = [bufferCopy mutableBytes];
    v9->_bytesPacked = 0;
    v9->_withAttributes = attributes;
    v9->_outOfSpace = 0;
  }

  return v9;
}

- (void)setLastEntryAsEOF
{
  obj = self;
  objc_sync_enter(obj);
  if (!obj->_outOfSpace)
  {
    lastEntry = obj->_lastEntry;
    if (obj->_withAttributes)
    {
      lastEntry[4] = 0;
    }

    else
    {
      lastEntry[8] = 0;
      lastEntry += 4;
    }

    *lastEntry = -1;
  }

  objc_sync_exit(obj);
}

- (void)packEntryWithName:(uint64_t)a1 itemType:(NSObject *)a2 itemID:nextCookie:attributes:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_24A929000, a2, OS_LOG_TYPE_ERROR, "%s:error: Invalid entry name (%@)", &v2, 0x16u);
}

- (void)packEntryWithName:(os_log_t)log itemType:itemID:nextCookie:attributes:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s:error: Invalid entry name", &v1, 0xCu);
}

- (void)packEntryWithName:(os_log_t)log itemType:itemID:nextCookie:attributes:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[FSDirectoryEntryPacker packEntryWithName:itemType:itemID:nextCookie:attributes:]";
  _os_log_error_impl(&dword_24A929000, log, OS_LOG_TYPE_ERROR, "%s:error: No attributes found, while we were requeste to pack with attributes", &v1, 0xCu);
}

@end