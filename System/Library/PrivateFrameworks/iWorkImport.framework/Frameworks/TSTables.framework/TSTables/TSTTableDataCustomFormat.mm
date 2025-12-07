@interface TSTTableDataCustomFormat
+ (id)objectWithCustomFormat:(id)format refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithCustomFormat:(id)format refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataCustomFormat

+ (id)objectWithCustomFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithCustomFormat_refCount_(v7, v8, formatCopy, v4);

  return inited;
}

- (id)initObjectWithCustomFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v11.receiver = self;
  v11.super_class = TSTTableDataCustomFormat;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, format);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8);
  v9 = TSKInitCustomFormatFromArchive();
  payload = self->super._payload;
  self->super._payload = v9;

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v7 = MEMORY[0x277D81150];
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTTableDataCustomFormat encodeToArchive:archiver:]", v9);
  v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v12);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v14, v10, v13, 379, 0, "Should never archive a new custom format datalist!");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  v23.receiver = self;
  v23.super_class = TSTTableDataCustomFormat;
  [(TSTTableDataObject *)&v23 encodeToArchive:archive archiver:archiverCopy];
  v21 = objc_msgSend_customFormat(self, v18, v19, v20);
  *(archive + 4) |= 0x10u;
  if (!*(archive + 7))
  {
    v22 = *(archive + 1);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    *(archive + 7) = MEMORY[0x223DA02C0](v22);
  }

  TSKCustomFormatEncodeToArchive();
}

- (id)description
{
  selfCopy = self;
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v13 = objc_msgSend_customFormat(selfCopy, v7, v8, v9);
  if (v13)
  {
    selfCopy = objc_msgSend_customFormat(selfCopy, v10, v11, v12);
    v17 = objc_msgSend_formatName(selfCopy, v14, v15, v16);
    objc_msgSend_stringWithFormat_(v5, v18, @"refCount: %d   _customFormat: %@", v19, v6, v17);
  }

  else
  {
    v17 = @"NULL";
    objc_msgSend_stringWithFormat_(v5, v10, @"refCount: %d   _customFormat: %@", v12, v6, @"NULL");
  }
  v20 = ;
  if (v13)
  {
  }

  return v20;
}

@end