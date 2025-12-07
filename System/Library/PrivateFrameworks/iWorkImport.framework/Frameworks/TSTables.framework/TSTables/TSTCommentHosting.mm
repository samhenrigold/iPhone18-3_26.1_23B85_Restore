@interface TSTCommentHosting
- (BOOL)isHighlight;
- (BOOL)isInDocument;
- (NSDate)date;
- (NSString)annotationUUID;
- (NSString)parentUUID;
- (TSKAnnotationAuthor)author;
- (TSKUIDStructCoord)cellUID;
- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info baseCellCoord:(TSUModelCellCoord)coord;
- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info cellUID:(TSKUIDStructCoord *)d;
- (TSTTableInfo)tableInfo;
- (TSUModelCellCoord)baseCellCoord;
- (TSUViewCellCoord)viewCellCoord;
- (id)copyWithZone:(_NSZone *)zone;
- (void)commentWillBeAddedToDocumentRoot;
- (void)setAuthor:(id)author;
- (void)setStorage:(id)storage;
@end

@implementation TSTCommentHosting

- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info cellUID:(TSKUIDStructCoord *)d
{
  storageCopy = storage;
  infoCopy = info;
  if (!infoCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCommentHosting initWithStorage:forTableInfo:cellUID:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 46, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  if (!d->_column._lower && !d->_column._upper || !d->_row._lower && !d->_row._upper)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTCommentHosting initWithStorage:forTableInfo:cellUID:]", v11);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 47, 0, "Expecting valid cell UID!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v35.receiver = self;
  v35.super_class = TSTCommentHosting;
  v31 = [(TSTCommentHosting *)&v35 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->mStorage, storage);
    objc_storeWeak(&v32->_tableInfo, infoCopy);
    row = d->_row;
    v32->_cellUID._column = d->_column;
    v32->_cellUID._row = row;
  }

  return v32;
}

- (TSTCommentHosting)initWithStorage:(id)storage forTableInfo:(id)info baseCellCoord:(TSUModelCellCoord)coord
{
  storageCopy = storage;
  infoCopy = info;
  if (!infoCopy)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCommentHosting initWithStorage:forTableInfo:baseCellCoord:]", v11);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 61, 0, "invalid nil value for '%{public}s'", "tableInfo");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  if (coord._coord.row == 0x7FFFFFFF || (*&coord & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v22 = MEMORY[0x277D81150];
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "[TSTCommentHosting initWithStorage:forTableInfo:baseCellCoord:]", v11);
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommentHosting.mm", v25);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 62, 0, "Expecting valid cell ID!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
  }

  v39 = 0u;
  v40 = 0u;
  v31 = objc_msgSend_translator(infoCopy, v9, v10, v11);
  v34 = v31;
  if (v31)
  {
    objc_msgSend_cellUIDforBaseCellCoord_(v31, v32, *&coord, v33);
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v38[0] = v39;
  v38[1] = v40;
  v36 = objc_msgSend_initWithStorage_forTableInfo_cellUID_(self, v35, storageCopy, infoCopy, v38);

  return v36;
}

- (void)setStorage:(id)storage
{
  storageCopy = storage;
  if (self->mStorage != storageCopy)
  {
    v8 = objc_msgSend_tableInfo(self, v5, v6, v7);
    objc_msgSend_setCommentStorage_atCellUID_(v8, v9, storageCopy, &self->_cellUID);

    objc_storeStrong(&self->mStorage, storage);
  }
}

- (NSString)annotationUUID
{
  v4 = objc_msgSend_rootCommentStorage(self->mStorage, a2, v2, v3);
  v8 = objc_msgSend_storageUUID(v4, v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v8 = objc_msgSend_storage(self, v5, v6, v7);
  v12 = objc_msgSend_tableInfo(self, v9, v10, v11);
  objc_msgSend_cellUID(self, v13, v14, v15);
  v17 = objc_msgSend_initWithStorage_forTableInfo_cellUID_(v4, v16, v8, v12, &v19);

  return v17;
}

- (NSString)parentUUID
{
  v4 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v8 = objc_msgSend_objectUUID(v4, v5, v6, v7);
  v12 = objc_msgSend_UUIDString(v8, v9, v10, v11);

  return v12;
}

- (TSUViewCellCoord)viewCellCoord
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_translator(v5, v6, v7, v8);
  objc_msgSend_cellUID(self, v10, v11, v12);
  v15 = objc_msgSend_viewCellCoordForCellUID_(v9, v13, &v17, v14);

  return v15;
}

- (TSUModelCellCoord)baseCellCoord
{
  v5 = objc_msgSend_tableInfo(self, a2, v2, v3);
  v9 = objc_msgSend_translator(v5, v6, v7, v8);
  objc_msgSend_cellUID(self, v10, v11, v12);
  v15 = objc_msgSend_baseCellCoordForCellUID_(v9, v13, &v17, v14);

  return v15;
}

- (TSKAnnotationAuthor)author
{
  v4 = objc_msgSend_storage(self, a2, v2, v3);
  v8 = objc_msgSend_author(v4, v5, v6, v7);

  return v8;
}

- (void)setAuthor:(id)author
{
  authorCopy = author;
  v7 = objc_msgSend_storage(self, v4, v5, v6);
  v10 = objc_msgSend_copyWithAuthor_(v7, v8, authorCopy, v9);
  objc_msgSend_setStorage_(self, v11, v10, v12);
}

- (NSDate)date
{
  v4 = objc_msgSend_storage(self, a2, v2, v3);
  v8 = objc_msgSend_creationDate(v4, v5, v6, v7);

  return v8;
}

- (BOOL)isHighlight
{
  v4 = objc_msgSend_storage(self, a2, v2, v3);
  v8 = objc_msgSend_text(v4, v5, v6, v7);
  v12 = objc_msgSend_length(v8, v9, v10, v11) == 0;

  return v12;
}

- (void)commentWillBeAddedToDocumentRoot
{
  v7 = objc_msgSend_storage(self, a2, v2, v3);
  objc_msgSend_commentWillBeAddedToDocumentRoot(v7, v4, v5, v6);
}

- (BOOL)isInDocument
{
  v8 = objc_msgSend_storage(self, a2, v2, v3);
  if (v8)
  {
    v9 = objc_msgSend_tableInfo(self, v5, v6, v7);
    v13 = objc_msgSend_tsp_isInDocument(v9, v10, v11, v12);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (TSKUIDStructCoord)cellUID
{
  v3 = *&self[1]._column._upper;
  retstr->_column = *&self->_row._upper;
  retstr->_row = v3;
  return self;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end