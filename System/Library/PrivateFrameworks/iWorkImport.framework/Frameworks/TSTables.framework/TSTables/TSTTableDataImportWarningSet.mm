@interface TSTTableDataImportWarningSet
+ (id)objectWithImportWarningSet:(id)set refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithImportWarningSet:(id)set refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataImportWarningSet

+ (id)objectWithImportWarningSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithImportWarningSet_refCount_(v7, v8, setCopy, v4);

  return inited;
}

- (id)initObjectWithImportWarningSet:(id)set refCount:(unsigned int)count
{
  v4 = *&count;
  setCopy = set;
  v11.receiver = self;
  v11.super_class = TSTTableDataImportWarningSet;
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
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v7, archive, v8);
  v9 = [TSTImportWarningSet alloc];
  if (*(archive + 10))
  {
    v12 = objc_msgSend_initFromArchive_(v9, v10, *(archive + 10), v11);
  }

  else
  {
    v12 = objc_msgSend_initFromArchive_(v9, v10, &TST::_ImportWarningSetArchive_default_instance_, v11);
  }

  payload = self->super._payload;
  self->super._payload = v12;

  completionCopy[2](completionCopy, self);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v15.receiver = self;
  v15.super_class = TSTTableDataImportWarningSet;
  [(TSTTableDataObject *)&v15 encodeToArchive:archive archiver:archiverCopy];
  v12 = objc_msgSend_importWarningSet(self, v7, v8, v9);
  *(archive + 4) |= 0x80u;
  v13 = *(archive + 10);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = google::protobuf::Arena::CreateMaybeMessage<TST::ImportWarningSetArchive>(v14);
    *(archive + 10) = v13;
  }

  objc_msgSend_saveToArchive_(v12, v10, v13, v11);
}

- (unint64_t)estimateByteSize
{
  TST::ImportWarningSetArchive::ImportWarningSetArchive(v11, 0);
  v6 = objc_msgSend_importWarningSet(self, v3, v4, v5);
  objc_msgSend_saveToArchive_(v6, v7, v11, v8);

  v9 = TST::ImportWarningSetArchive::ByteSizeLong(v11);
  TST::ImportWarningSetArchive::~ImportWarningSetArchive(v11);
  return v9 + 8;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v6 = objc_msgSend_refCount(self, a2, v2, v3);
  v10 = objc_msgSend_importWarningSet(self, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v5, v11, @"refCount: %d   importWarningSet: %@", v12, v6, v10);

  return v13;
}

@end