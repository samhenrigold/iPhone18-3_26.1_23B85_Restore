@interface TSTTableDataCellSpec
+ (id)objectWithCellSpec:(id)spec refCount:(unsigned int)count;
- (id)description;
- (id)initObjectWithCellSpec:(id)spec refCount:(unsigned int)count;
- (unint64_t)estimateByteSize;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion;
@end

@implementation TSTTableDataCellSpec

+ (id)objectWithCellSpec:(id)spec refCount:(unsigned int)count
{
  v4 = *&count;
  specCopy = spec;
  v7 = [self alloc];
  inited = objc_msgSend_initObjectWithCellSpec_refCount_(v7, v8, specCopy, v4);

  return inited;
}

- (id)initObjectWithCellSpec:(id)spec refCount:(unsigned int)count
{
  v4 = *&count;
  specCopy = spec;
  v11.receiver = self;
  v11.super_class = TSTTableDataCellSpec;
  v8 = [(TSTTableDataObject *)&v11 initWithRefCount:v4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->super._payload, spec);
  }

  return v9;
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver completion:(id)completion
{
  unarchiverCopy = unarchiver;
  completionCopy = completion;
  objc_msgSend_sharedLoadFromArchive_(self, v10, archive, v11);
  if ((*(archive + 16) & 4) != 0)
  {
    v15 = [TSCEFormulaObject alloc];
    v16 = *(archive + 5);
    hasPreUFFVersion = objc_msgSend_hasPreUFFVersion(unarchiverCopy, v17, v18, v19);
    if (v16)
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v15, v20, v16, hasPreUFFVersion);
    }

    else
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v15, v20, TSCE::_FormulaArchive_default_instance_, hasPreUFFVersion);
    }

    v26 = isPreUFF;
    if (!isPreUFF)
    {
      v27 = MEMORY[0x277D81150];
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, "[TSTTableDataCellSpec loadFromArchive:unarchiver:completion:]", v25);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataObject.mm", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 502, 0, "Shouldn't find unsupported formulas in documents. This document is corrupted.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
      __C(1uLL);
    }

    v43[0] = 0;
    v43[1] = v43;
    v43[2] = 0x3032000000;
    v43[3] = sub_2215BF70C;
    v43[4] = sub_2215BF71C;
    v44 = objc_msgSend_context(unarchiverCopy, v23, v24, v25);
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = sub_2215BF724;
    v39[3] = &unk_278467478;
    v42 = v43;
    v39[4] = self;
    v36 = v26;
    v40 = v36;
    v41 = completionCopy;
    objc_msgSend_addFinalizeHandler_(unarchiverCopy, v37, v39, v38);

    _Block_object_dispose(v43, 8);
  }

  else
  {
    if (*(archive + 11))
    {
      objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v12, *(archive + 11), unarchiverCopy);
    }

    else
    {
      objc_msgSend_instanceWithArchive_unarchiver_(TSTCellSpec, v12, TST::_CellSpecArchive_default_instance_, unarchiverCopy);
    }
    v13 = ;
    payload = self->super._payload;
    self->super._payload = v13;

    (*(completionCopy + 2))(completionCopy, self);
  }
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v28.receiver = self;
  v28.super_class = TSTTableDataCellSpec;
  [(TSTTableDataObject *)&v28 encodeToArchive:archive archiver:archiverCopy];
  v10 = objc_msgSend_cellSpec(self, v7, v8, v9);
  v14 = objc_msgSend_asFormulaSpec(v10, v11, v12, v13);
  v18 = v14;
  if (v14)
  {
    v20 = objc_msgSend_formulaObject(v14, v15, v16, v17);
    *(archive + 4) |= 4u;
    v21 = *(archive + 5);
    if (!v21)
    {
      v22 = *(archive + 1);
      if (v22)
      {
        v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
      }

      v21 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v22);
      *(archive + 5) = v21;
    }

    v23 = objc_msgSend_encodeToArchive_archiver_(v20, v19, v21, archiverCopy);

    if ((v23 & 6) != 0)
    {
      objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v24, 0x300020000000ALL, @"TSTCategorizedTables");
    }

    if ((v23 & 0x21) != 0)
    {
      objc_msgSend_requiresDocumentVersion_(archiverCopy, v24, 0xE000400000001, v25);
    }
  }

  else
  {
    *(archive + 4) |= 0x100u;
    v26 = *(archive + 11);
    if (!v26)
    {
      v27 = *(archive + 1);
      if (v27)
      {
        v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
      }

      v26 = google::protobuf::Arena::CreateMaybeMessage<TST::CellSpecArchive>(v27);
      *(archive + 11) = v26;
    }

    objc_msgSend_saveToArchive_archiver_(v10, v15, v26, archiverCopy);
  }
}

- (unint64_t)estimateByteSize
{
  v4 = objc_msgSend_cellSpec(self, a2, v2, v3);
  v8 = objc_msgSend_interactionType(v4, v5, v6, v7);
  if (v8 == 7)
  {
    v18 = 20;
  }

  else if (v8 == 1)
  {
    TSCE::FormulaArchive::FormulaArchive(v21, 0);
    v12 = objc_msgSend_asFormulaSpec(v4, v9, v10, v11);
    v16 = objc_msgSend_formulaObject(v12, v13, v14, v15);
    objc_msgSend_encodeToArchive_archiver_(v16, v17, v21, 0);

    v18 = TSCE::FormulaArchive::ByteSizeLong(v21) + 12;
    TSCE::FormulaArchive::~FormulaArchive(v21);
  }

  else
  {
    TST::CellSpecArchive::CellSpecArchive(v21, 0);
    objc_msgSend_saveToArchive_archiver_(v4, v19, v21, 0);
    v18 = TST::CellSpecArchive::ByteSizeLong(v21) + 8;
    TST::CellSpecArchive::~CellSpecArchive(v21);
  }

  return v18;
}

- (id)description
{
  v4 = MEMORY[0x277CCACA8];
  refCount = self->super._refCount;
  v6 = objc_msgSend_cellSpec(self, a2, v2, v3);
  v10 = objc_msgSend_description(v6, v7, v8, v9);
  v13 = objc_msgSend_stringWithFormat_(v4, v11, @"refCount: %d   _cellSpec: %@", v12, refCount, v10);

  return v13;
}

@end