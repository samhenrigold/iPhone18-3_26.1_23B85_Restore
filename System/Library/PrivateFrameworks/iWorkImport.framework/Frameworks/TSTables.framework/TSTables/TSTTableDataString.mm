@interface TSTTableDataString
+ (id)objectWithString:(id)string refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithString:(id)string refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataString

+ (id)objectWithString:(id)string refCount:(unsigned int)count
{
  v4 = *&count;
  stringCopy = string;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithString_refCount_(v7, v8, stringCopy, v4);

  return inited;
}

- (id)initObjectWithString:(id)string refCount:(unsigned int)count
{
  v4 = *&count;
  stringCopy = string;
  v30.receiver = self;
  v30.super_class = TSTTableDataString;
  v10 = [(TSTTableDataObject *)&v30 initWithRefCount:v4];
  if (v10)
  {
    if (!stringCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTTableDataString initObjectWithString:refCount:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 793, 0, "created a string table entry with a nil string");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    v20 = objc_msgSend_copy(stringCopy, v7, v8, v9);
    payload = v10->super._payload;
    v10->super._payload = v20;

    v25 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v22, v23, v24);
    v28 = objc_msgSend_rangeOfCharacterFromSet_(stringCopy, v26, v25, v27);

    v10->_shouldWrap = v28 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v9, archive, v10);
  v13 = objc_msgSend_tsp_stringWithProtobufString_(MEMORY[0x277CCACA8], v11, *(archive + 3) & 0xFFFFFFFFFFFFFFFELL, v12);
  objc_storeStrong(&self->super._payload, v13);
  v17 = objc_msgSend_newlineCharacterSet(MEMORY[0x277CCA900], v14, v15, v16);
  v20 = objc_msgSend_rangeOfCharacterFromSet_(v13, v18, v17, v19);

  self->_shouldWrap = v20 != 0x7FFFFFFFFFFFFFFFLL;
  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v14.receiver = self;
  v14.super_class = TSTTableDataString;
  [(TSTTableDataObject *)&v14 encodeToArchive:archive archiver:archiver];
  v9 = objc_msgSend_string(self, v6, v7, v8);
  v13 = objc_msgSend_tsp_protobufString(v9, v10, v11, v12);

  if (v13)
  {
    sub_2215C0F50(archive, v13);
  }
}

- (unint64_t)estimateByteSize
{
  v4 = objc_msgSend_string(self, a2, v2, v3);
  v8 = objc_msgSend_length(v4, v5, v6, v7);

  if (v8)
  {
    return v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 8;
  }

  else
  {
    return 8;
  }
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v10 = objc_msgSend_string(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"refCount: %d   string: %@", v12, v6, v10);

  return v13;
}

@end