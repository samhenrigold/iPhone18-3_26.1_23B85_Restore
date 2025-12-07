@interface TSTTableDataFormat
+ (id)objectWithFormat:(id)format refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithFormat:(id)format refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
- (void)p_setUpFormat:(id)format;
@end

@implementation TSTTableDataFormat

+ (id)objectWithFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithFormat_refCount_(v7, v8, formatCopy, v4);

  return inited;
}

- (void)p_setUpFormat:(id)format
{
  formatCopy = format;
  v20 = objc_msgSend_asMultipleChoiceListFormat(formatCopy, v5, v6, v7);
  if (v20)
  {
    v8 = objc_alloc(MEMORY[0x277D80698]);
    v12 = objc_msgSend_initialValue(v20, v9, v10, v11);
    v16 = objc_msgSend_multipleChoiceListFormatID(v20, v13, v14, v15);
    v18 = objc_msgSend_initWithInitialValue_multipleChoiceListFormatID_popupModel_(v8, v17, v12, v16, 0);

    formatCopy = v18;
  }

  payload = self->super._payload;
  self->super._payload = formatCopy;
}

- (id)initObjectWithFormat:(id)format refCount:(unsigned int)count
{
  v4 = *&count;
  formatCopy = format;
  v12.receiver = self;
  v12.super_class = TSTTableDataFormat;
  v7 = [(TSTTableDataObject *)&v12 initWithRefCount:v4];
  v10 = v7;
  if (v7)
  {
    objc_msgSend_p_setUpFormat_(v7, v8, formatCopy, v9);
  }

  return v10;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8);
  if ((*(archive + 16) & 8) != 0)
  {
    v11 = objc_msgSend_formatFromArchive_(MEMORY[0x277D80680], v9, *(archive + 6), v10);
    objc_msgSend_p_setUpFormat_(self, v12, v11, v13);
  }

  else
  {
    v11 = 0;
    objc_msgSend_p_setUpFormat_(self, v9, 0, v10);
  }

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v18.receiver = self;
  v18.super_class = TSTTableDataFormat;
  [(TSTTableDataObject *)&v18 encodeToArchive:archive archiver:archiverCopy];
  v13 = objc_msgSend_format(self, v7, v8, v9);
  if (v13)
  {
    *(archive + 4) |= 8u;
    v14 = *(archive + 6);
    if (!v14)
    {
      v15 = *(archive + 1);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      v14 = MEMORY[0x223DA02D0](v15);
      *(archive + 6) = v14;
    }

    v16 = objc_msgSend_isForCopy(archiverCopy, v10, v11, v12);
    objc_msgSend_encodeToArchive_archivingCustomFormats_(v13, v17, v14, v16);
  }
}

- (unint64_t)estimateByteSize
{
  v5 = objc_msgSend_format(self, a2, v2, v3);
  v9 = objc_msgSend_asLegacyCustomFormat(v5, v6, v7, v8);

  if (v9)
  {
    return 8;
  }

  MEMORY[0x223D9FAC0](v18, 0);
  v14 = objc_msgSend_format(self, v11, v12, v13);
  objc_msgSend_encodeToArchive_(v14, v15, v18, v16);

  v10 = TSK::FormatStructArchive::ByteSizeLong(v18) + 8;
  MEMORY[0x223D9FAE0](v18);
  return v10;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v10 = objc_msgSend_format(self, v7, v8, v9);
  objc_msgSend_formatType(v10, v11, v12, v13);
  v14 = NSStringForTSUFormatType();
  v17 = objc_msgSend_stringWithFormat_(v5, v15, @"refCount: %d   format: %@", v16, v6, v14);

  return v17;
}

@end