@interface TSTRichTextPayload
+ (id)payloadWithStorage:(id)storage;
- (BOOL)tst_dataObjectIsEqual:(id)equal;
- (TSTRichTextPayload)initWithContext:(id)context storage:(id)storage;
- (TSTRichTextPayload)initWithStorage:(id)storage;
- (id)copyWithContext:(id)context;
- (id)string;
- (unint64_t)tst_dataObjectHash;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)saveToArchiver:(id)archiver;
- (void)setStorage:(id)storage;
@end

@implementation TSTRichTextPayload

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (self->_storage != storageCopy)
  {
    objc_msgSend_willModify(self, v5, v6, v7);
    objc_storeStrong(&self->_storage, storage);
  }
}

+ (id)payloadWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_context(storageCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_storage_(v4, v9, v8, storageCopy);

  return v10;
}

- (TSTRichTextPayload)initWithStorage:(id)storage
{
  storageCopy = storage;
  v8 = objc_msgSend_context(storageCopy, v5, v6, v7);
  v10 = objc_msgSend_initWithContext_storage_(self, v9, v8, storageCopy);

  return v10;
}

- (TSTRichTextPayload)initWithContext:(id)context storage:(id)storage
{
  contextCopy = context;
  storageCopy = storage;
  v21.receiver = self;
  v21.super_class = TSTRichTextPayload;
  v10 = [(TSTRichTextPayload *)&v21 initWithContext:contextCopy];
  if (v10)
  {
    if (!storageCopy)
    {
      v11 = MEMORY[0x277D81150];
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTRichTextPayload initWithContext:storage:]", v9);
      v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRichTextPayload.mm", v14);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 52, 0, "invalid nil value for '%{public}s'", "storage");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    }

    objc_storeStrong(&v10->_storage, storage);
  }

  return v10;
}

- (id)copyWithContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc(objc_opt_class());
  v9 = objc_msgSend_storage(self, v6, v7, v8);
  v12 = objc_msgSend_copyWithContext_(v9, v10, contextCopy, v11);
  v15 = objc_msgSend_initWithStorage_(v5, v13, v12, v14);

  return v15;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v7 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v5, off_2812E4498[284], v6);

  v8 = *(v7 + 24);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221427BC8;
  v12[3] = &unk_27845E090;
  v12[4] = self;
  v9 = unarchiverCopy;
  v11 = objc_opt_class();
  if (v8)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, v8, v11, 0, v12);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v9, v10, MEMORY[0x277D80A18], v11, 0, v12);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  google::protobuf::internal::AssignDescriptors();
  v5 = objc_msgSend_messageWithNewFunction_descriptor_(archiverCopy, v4, sub_221427D7C, off_2812E4498[284]);

  storage = self->_storage;
  *(v5 + 16) |= 1u;
  v8 = *(v5 + 24);
  if (!v8)
  {
    v9 = *(v5 + 8);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = MEMORY[0x223DA0390](v9);
    *(v5 + 24) = v8;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v6, storage, v8);
  *(v5 + 16) |= 4u;
  v10 = *(v5 + 40);
  if (!v10)
  {
    v11 = *(v5 + 8);
    if (v11)
    {
      v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
    }

    v10 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v11);
    *(v5 + 40) = v10;
  }

  sub_221123904(0x7FFF7FFFFFFFuLL, v10);
}

- (id)string
{
  v4 = objc_msgSend_storage(self, a2, v2, v3);
  v8 = objc_msgSend_stringValue(v4, v5, v6, v7);

  return v8;
}

- (unint64_t)tst_dataObjectHash
{
  v4 = objc_msgSend_storage(self, a2, v2, v3);
  v8 = objc_msgSend_hash(v4, v5, v6, v7);

  return v8;
}

- (BOOL)tst_dataObjectIsEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v8 = TSUDynamicCast();
  if (v8)
  {
    v9 = objc_msgSend_storage(self, v5, v6, v7);
    v13 = objc_msgSend_storage(v8, v10, v11, v12);
    isEqual = objc_msgSend_isEqual_(v9, v14, v13, v15);
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

@end