@interface TSTTableDataCommentStorage
+ (id)objectWithCommentStorage:(id)storage refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithCommentStorage:(id)storage refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataCommentStorage

+ (id)objectWithCommentStorage:(id)storage refCount:(unsigned int)count
{
  v4 = *&count;
  storageCopy = storage;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithCommentStorage_refCount_(v7, v8, storageCopy, v4);

  return inited;
}

- (id)initObjectWithCommentStorage:(id)storage refCount:(unsigned int)count
{
  v4 = *&count;
  storageCopy = storage;
  v11.receiver = self;
  v11.super_class = TSTTableDataCommentStorage;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, storage);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v10, archive, v11);
  v12 = *(archive + 9);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = sub_2215BE3D0;
  v17[3] = &unk_278467450;
  v17[4] = self;
  v13 = completionCopy;
  v18 = v13;
  v14 = unarchiverCopy;
  v16 = objc_opt_class();
  if (v12)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, v12, v16, 0, v17);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v15, MEMORY[0x277D80A18], v16, 0, v17);
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v23.receiver = self;
  v23.super_class = TSTTableDataCommentStorage;
  [(TSTTableDataObject *)&v23 encodeToArchive:archive archiver:archiverCopy];
  v11 = objc_msgSend_commentStorage(self, v7, v8, v9);
  *(archive + 4) |= 0x40u;
  v12 = *(archive + 9);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0390](v13);
    *(archive + 9) = v12;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v10, v11, v12);
  v17 = objc_msgSend_replies(v11, v14, v15, v16);
  v21 = objc_msgSend_count(v17, v18, v19, v20);

  if (v21)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v22, *MEMORY[0x277D80980], @"TSDThreadedComments");
  }
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v10 = objc_msgSend_commentStorage(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"refCount: %d   commentStorage: %@", v12, v6, v10);

  return v13;
}

@end