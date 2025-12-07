@interface TSTPencilAnnotation
- (NSString)uuid;
- (TSTPencilAnnotation)initWithContext:(id)context;
- (TSTPencilAnnotation)initWithContext:(id)context tableInfo:(id)info pencilAnnotationStorage:(id)storage;
- (TSTPencilAnnotation)initWithTableInfo:(id)info pencilAnnotationStorage:(id)storage;
- (TSTTableInfo)table;
- (TSUCellRect)_cellRange;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setTable:(id)table;
@end

@implementation TSTPencilAnnotation

- (void)setTable:(id)table
{
  obj = table;
  WeakRetained = objc_loadWeakRetained(&self->_table);

  v8 = obj;
  if (WeakRetained != obj)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeWeak(&self->_table, obj);
    v8 = obj;
  }
}

- (TSTPencilAnnotation)initWithContext:(id)context
{
  contextCopy = context;
  v4 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTPencilAnnotation initWithContext:]", v6);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotation.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v11, v7, v10, 42, 0, "Do not call method");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  v15 = MEMORY[0x277CBEAD8];
  v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v16, @"%s: %s", v17, "Do not call method", "[TSTPencilAnnotation initWithContext:]");
  v20 = objc_msgSend_exceptionWithName_reason_userInfo_(v15, v19, *MEMORY[0x277CBE658], v18, 0);
  v21 = v20;

  objc_exception_throw(v20);
}

- (TSTPencilAnnotation)initWithTableInfo:(id)info pencilAnnotationStorage:(id)storage
{
  infoCopy = info;
  storageCopy = storage;
  v11 = objc_msgSend_context(infoCopy, v8, v9, v10);
  v13 = objc_msgSend_initWithContext_tableInfo_pencilAnnotationStorage_(self, v12, v11, infoCopy, storageCopy);

  return v13;
}

- (TSTPencilAnnotation)initWithContext:(id)context tableInfo:(id)info pencilAnnotationStorage:(id)storage
{
  infoCopy = info;
  storageCopy = storage;
  v13.receiver = self;
  v13.super_class = TSTPencilAnnotation;
  v10 = [(TSTPencilAnnotation *)&v13 initWithContext:context];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_table, infoCopy);
    objc_storeStrong(&v11->_pencilAnnotationStorage, storage);
  }

  return v11;
}

- (NSString)uuid
{
  v4 = objc_msgSend_objectUUID(self, a2, v2, v3);
  v8 = objc_msgSend_UUIDString(v4, v5, v6, v7);

  return v8;
}

- (TSUCellRect)_cellRange
{
  v5 = objc_msgSend_table(self, a2, v2, v3);
  v9 = objc_msgSend_pencilAnnotationOwner(v5, v6, v7, v8);
  v12 = objc_msgSend_cellRangeForAnnotation_(v9, v10, self, v11);
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.size = v16;
  result.origin = v15;
  return result;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[250], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v9 = unarchiverCopy;
  v10 = *(archive + 4);
  if (v10)
  {
    v11 = *(archive + 3);
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2212E1FC0;
    v29[3] = &unk_278462738;
    v29[4] = self;
    v12 = unarchiverCopy;
    v13 = objc_opt_class();
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v12, v14, v11, v13, 0, v29);

    v10 = *(archive + 4);
  }

  if ((v10 & 2) != 0)
  {
    v24 = *(archive + 4);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = sub_2212E1FD4;
    v28[3] = &unk_278462CD8;
    v28[4] = self;
    v25 = v9;
    v26 = objc_opt_class();
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v25, v27, v24, v26, 0, v28);
  }

  else
  {
    v15 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "[TSTPencilAnnotation loadFromArchive:unarchiver:]", v8);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotation.mm", v18);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 143, 0, "A TSTPencilAnnotation must have a pencilAnnotationStorage");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_2212E2284, off_2812E4498[250]);

  objc_msgSend_saveToArchive_archiver_(self, v6, v5, archiverCopy);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  WeakRetained = objc_loadWeakRetained(&self->_table);

  if (WeakRetained)
  {
    v11 = objc_loadWeakRetained(&self->_table);
    *(archive + 4) |= 1u;
    v12 = *(archive + 3);
    if (!v12)
    {
      v13 = *(archive + 1);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = MEMORY[0x223DA0390](v13);
      *(archive + 3) = v12;
    }

    objc_msgSend_setWeakReference_message_(archiverCopy, v10, v11, v12);
  }

  if (self->_pencilAnnotationStorage)
  {
    v15 = objc_msgSend_pencilAnnotationStorage(self, v7, v8, v9);
    *(archive + 4) |= 2u;
    v16 = *(archive + 4);
    if (!v16)
    {
      v17 = *(archive + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0390](v17);
      *(archive + 4) = v16;
    }

    objc_msgSend_setStrongReference_message_(archiverCopy, v14, v15, v16);
  }
}

- (TSTTableInfo)table
{
  WeakRetained = objc_loadWeakRetained(&self->_table);

  return WeakRetained;
}

@end