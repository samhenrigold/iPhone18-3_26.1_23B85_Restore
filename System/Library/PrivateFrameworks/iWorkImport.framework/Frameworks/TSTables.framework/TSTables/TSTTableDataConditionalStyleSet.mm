@interface TSTTableDataConditionalStyleSet
+ (id)objectWithConditionalStyleSet:(id)set refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithConditionalStyleSet:(id)set refCount:(unsigned int)count;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataConditionalStyleSet

+ (id)objectWithConditionalStyleSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithConditionalStyleSet_refCount_(v7, v8, setCopy, v4);

  return inited;
}

- (id)initObjectWithConditionalStyleSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v11.receiver = self;
  v11.super_class = TSTTableDataConditionalStyleSet;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, set);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v10, archive, v11);
  v12 = *(archive + 4);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = sub_2215BE890;
  v21[3] = &unk_27845F760;
  v21[4] = self;
  v13 = unarchiverCopy;
  v15 = objc_opt_class();
  if (v12)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, v12, v15, 0, v21);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v13, v14, MEMORY[0x277D80A18], v15, 0, v21);
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = sub_2215BE89C;
  v19[3] = &unk_278462580;
  v16 = completionCopy;
  v19[4] = self;
  v20 = v16;
  objc_msgSend_addFinalizeHandler_(v13, v17, v19, v18);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v14.receiver = self;
  v14.super_class = TSTTableDataConditionalStyleSet;
  [(TSTTableDataObject *)&v14 encodeToArchive:archive archiver:archiverCopy];
  v11 = objc_msgSend_conditionalStyleSet(self, v7, v8, v9);
  *(archive + 4) |= 2u;
  v12 = *(archive + 4);
  if (!v12)
  {
    v13 = *(archive + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = MEMORY[0x223DA0390](v13);
    *(archive + 4) = v12;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v10, v11, v12);
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v10 = objc_msgSend_conditionalStyleSet(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"refCount: %d   _conditionalStyleSet: %@", v12, v6, v10);

  return v13;
}

@end