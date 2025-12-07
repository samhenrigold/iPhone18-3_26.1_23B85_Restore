@interface TSTTableDataObject
+ (id)objectWithRefCount:(unsigned int)count;
+ (void)loadObjectFromArchive:(const void *)archive listType:(int)type unarchiver:(id)unarchiver completion:(id)completion;
- (BOOL)dropReference;
- (BOOL)dropReferences:(unsigned int)references;
- (BOOL)isEqual:(id)equal;
- (TSTTableDataObject)initWithRefCount:(unsigned int)count;
- (unint64_t)byteSizeForArchiving;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
- (void)p_sharedInitWithRefCount:(unsigned int)count key:(unsigned int)key;
@end

@implementation TSTTableDataObject

+ (id)objectWithRefCount:(unsigned int)count
{
  v3 = *&count;
  v4 = [self alloc];
  v7 = objc_msgSend_initWithRefCount_(v4, v5, v3, v6);

  return v7;
}

+ (void)loadObjectFromArchive:(const void *)archive listType:(int)type unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  if (type - 1) <= 0xB && ((0xBFFu >> (type - 1)))
  {
    v10 = objc_opt_class();
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_alloc_init(v10);
  objc_msgSend_loadFromArchive_unarchiver_completion_(v11, v12, archive, unarchiverCopy, completionCopy);
}

- (void)p_sharedInitWithRefCount:(unsigned int)count key:(unsigned int)key
{
  if (count <= 1)
  {
    countCopy = 1;
  }

  else
  {
    countCopy = count;
  }

  self->_key = key;
  self->_refCount = countCopy;
  self->_byteSizeForArchiving = 0x7FFFFFFFFFFFFFFFLL;
}

- (TSTTableDataObject)initWithRefCount:(unsigned int)count
{
  v3 = *&count;
  v8.receiver = self;
  v8.super_class = TSTTableDataObject;
  v4 = [(TSTTableDataObject *)&v8 init];
  v6 = v4;
  if (v4)
  {
    objc_msgSend_p_sharedInitWithRefCount_key_(v4, v5, v3, 0);
  }

  return v6;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  v8 = MEMORY[0x277D81150];
  v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTTableDataObject loadFromArchive:unarchiver:completion:]", v10);
  v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v13);
  v15 = objc_opt_class();
  v16 = NSStringFromClass(v15);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v17, v11, v14, 131, 0, "Abstract method not overridden by %{public}@", v16);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  v21 = MEMORY[0x277CBEAD8];
  v22 = MEMORY[0x277CCACA8];
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  v27 = objc_msgSend_stringWithFormat_(v22, v25, @"Abstract method not overridden by %@: %s", v26, v24, "[TSTTableDataObject loadFromArchive:unarchiver:completion:]");
  v29 = objc_msgSend_exceptionWithName_reason_userInfo_(v21, v28, *MEMORY[0x277CBE658], v27, 0);
  v30 = v29;

  objc_exception_throw(v29);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  key = self->_key;
  v5 = *(archive + 4);
  *(archive + 4) = v5 | 0x200;
  *(archive + 24) = key;
  refCount = self->_refCount;
  *(archive + 4) = v5 | 0x600;
  *(archive + 25) = refCount;
}

- (BOOL)dropReference
{
  v2 = self->_refCount - 1;
  self->_refCount = v2;
  return v2 == 0;
}

- (BOOL)dropReferences:(unsigned int)references
{
  refCount = self->_refCount;
  v6 = refCount >= references;
  v7 = refCount - references;
  if (!v6)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataObject dropReferences:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 160, 0, "dropping data list ref count by more than the total count");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    v7 = 0;
  }

  self->_refCount = v7;
  return v7 == 0;
}

- (unint64_t)byteSizeForArchiving
{
  result = self->_byteSizeForArchiving;
  if (result == 0x7FFFFFFFFFFFFFFFLL)
  {
    result = objc_msgSend_estimateByteSize(self, a2, v2, v3);
    self->_byteSizeForArchiving = result;
  }

  return result;
}

- (unint64_t)estimateByteSize
{
  v3 = MEMORY[0x277D81150];
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataObject estimateByteSize]", v2);
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v6);
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v3, v10, v4, v7, 180, 0, "Abstract method not overridden by %{public}@", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  v14 = MEMORY[0x277CBEAD8];
  v15 = MEMORY[0x277CCACA8];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  v20 = objc_msgSend_stringWithFormat_(v15, v18, @"Abstract method not overridden by %@: %s", v19, v17, "[TSTTableDataObject estimateByteSize]");
  v22 = objc_msgSend_exceptionWithName_reason_userInfo_(v14, v21, *MEMORY[0x277CBE658], v20, 0);
  v23 = v22;

  objc_exception_throw(v22);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = TSUDynamicCast();
  LOBYTE(self) = objc_msgSend_tst_dataObjectIsEqual_(self->_payload, v6, v5[1], v7);

  return self;
}

@end