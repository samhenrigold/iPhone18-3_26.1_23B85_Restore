@interface FSExtentPacker
- (BOOL)packExtentWithResource:(id)resource type:(int64_t)type logicalOffset:(int64_t)offset physicalOffset:(int64_t)physicalOffset length:(unint64_t)length;
- (FSExtentPacker)initWithLength:(unint64_t)length;
- (id)extentDataByExtentsPacked;
@end

@implementation FSExtentPacker

- (BOOL)packExtentWithResource:(id)resource type:(int64_t)type logicalOffset:(int64_t)offset physicalOffset:(int64_t)physicalOffset length:(unint64_t)length
{
  lengthCopy = length;
  v27 = *MEMORY[0x277D85DE8];
  resourceCopy = resource;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  bytesPacked = selfCopy->_bytesPacked;
  v15 = [(NSMutableData *)selfCopy->_buffer length];
  v16 = v15;
  v17 = bytesPacked + 24;
  if (bytesPacked + 24 > v15)
  {
    selfCopy->_outOfSpace = 1;
    v23 = fskit_std_log(v15);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = 136315138;
      v26 = "[FSExtentPacker packExtentWithResource:type:logicalOffset:physicalOffset:length:]";
      _os_log_impl(&dword_24A929000, v23, OS_LOG_TYPE_INFO, "%s: Packer out of space", &v25, 0xCu);
    }
  }

  else
  {
    mutableBytes = [(NSMutableData *)selfCopy->_buffer mutableBytes];
    extentsPacked = selfCopy->_extentsPacked;
    fileDescriptor = [resourceCopy fileDescriptor];
    v21 = mutableBytes + 24 * extentsPacked;
    if (type)
    {
      v22 = 0x2000000;
    }

    else
    {
      v22 = 0x1000000;
    }

    *v21 = v22 & 0xFF000000 | fileDescriptor & 0xFFFFFF;
    *(v21 + 4) = lengthCopy;
    *(v21 + 8) = physicalOffset;
    *(v21 + 16) = offset;
    ++selfCopy->_extentsPacked;
    selfCopy->_bytesPacked += 24;
  }

  objc_sync_exit(selfCopy);

  return v17 <= v16;
}

- (FSExtentPacker)initWithLength:(unint64_t)length
{
  v8.receiver = self;
  v8.super_class = FSExtentPacker;
  v4 = [(FSExtentPacker *)&v8 init];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:length];
    buffer = v4->_buffer;
    v4->_buffer = v5;

    v4->_bytesPacked = 0;
    v4->_extentsPacked = 0;
  }

  return v4;
}

- (id)extentDataByExtentsPacked
{
  v2 = 24 * self->_extentsPacked;
  extentData = [(FSExtentPacker *)self extentData];
  v4 = [extentData subdataWithRange:{0, v2}];

  return v4;
}

@end