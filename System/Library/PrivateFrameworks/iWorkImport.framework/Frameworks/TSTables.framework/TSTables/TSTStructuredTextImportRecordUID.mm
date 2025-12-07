@interface TSTStructuredTextImportRecordUID
+ (id)record;
+ (id)recordFromArchive:(const void *)archive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initFromArchive:(const void *)archive;
- (id)textImportRecordForTableInfo:(id)info;
- (void)encodeToArchive:(void *)archive;
@end

@implementation TSTStructuredTextImportRecordUID

+ (id)record
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_new();
  v8 = objc_msgSend_copy(self->_importSettings, v5, v6, v7);
  objc_msgSend_setImportSettings_(v4, v9, v8, v10);

  v14 = objc_msgSend_copy(self->_importSource, v11, v12, v13);
  objc_msgSend_setImportSource_(v4, v15, v14, v16);

  v20 = objc_msgSend_copy(self->_importDate, v17, v18, v19);
  objc_msgSend_setImportDate_(v4, v21, v20, v22);

  v26 = objc_msgSend_copy(self->_sourceData, v23, v24, v25);
  objc_msgSend_setSourceData_(v4, v27, v26, v28);

  objc_msgSend_setConfidence_(v4, v29, v30, v31, self->_confidence);
  v35 = objc_msgSend_copy(self->_importedUIDRegion, v32, v33, v34);
  objc_msgSend_setImportedUIDRegion_(v4, v36, v35, v37);

  objc_msgSend_setSourceColumnCount_(v4, v38, self->_sourceColumnCount, v39);
  objc_msgSend_setSourceRowCount_(v4, v40, self->_sourceRowCount, v41);
  return v4;
}

- (id)textImportRecordForTableInfo:(id)info
{
  infoCopy = info;
  v5 = objc_opt_new();
  objc_msgSend_setImportSettings_(v5, v6, self->_importSettings, v7);
  objc_msgSend_setImportSource_(v5, v8, self->_importSource, v9);
  objc_msgSend_setImportDate_(v5, v10, self->_importDate, v11);
  objc_msgSend_setSourceData_(v5, v12, self->_sourceData, v13);
  objc_msgSend_setConfidence_(v5, v14, v15, v16, self->_confidence);
  importedUIDRegion = self->_importedUIDRegion;
  if (importedUIDRegion)
  {
    v20 = objc_msgSend_cellRegionFromTable_(importedUIDRegion, v17, infoCopy, v18);
    objc_msgSend_setImportedRegion_(v5, v21, v20, v22);
  }

  objc_msgSend_setSourceColumnCount_(v5, v17, self->_sourceColumnCount, v18);
  objc_msgSend_setSourceRowCount_(v5, v23, self->_sourceRowCount, v24);
  v25 = objc_alloc(MEMORY[0x277CBEA60]);
  v27 = objc_msgSend_initWithArray_copyItems_(v25, v26, self->_pasteInverseCommands, 0);
  objc_msgSend_setPasteInverseCommands_(v5, v28, v27, v29);

  objc_msgSend_setPasteType_(v5, v30, self->_pasteType, v31);
  objc_msgSend_setPasteWasUpdate_(v5, v32, self->_pasteWasUpdate, v33);

  return v5;
}

+ (id)recordFromArchive:(const void *)archive
{
  v4 = objc_alloc(objc_opt_class());
  v7 = objc_msgSend_initFromArchive_(v4, v5, archive, v6);

  return v7;
}

- (id)initFromArchive:(const void *)archive
{
  v36.receiver = self;
  v36.super_class = TSTStructuredTextImportRecordUID;
  v6 = [(TSTStructuredTextImportRecordUID *)&v36 init];
  if (v6)
  {
    if (*(archive + 5))
    {
      objc_msgSend_settingsFromArchive_(MEMORY[0x277D806E0], v4, *(archive + 5), v5);
    }

    else
    {
      objc_msgSend_settingsFromArchive_(MEMORY[0x277D806E0], v4, MEMORY[0x277D80760], v5);
    }
    v7 = ;
    v8 = *(v6 + 2);
    *(v6 + 2) = v7;

    v12 = *(archive + 4);
    if (v12)
    {
      v13 = *(archive + 3) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v13 + 23) < 0)
      {
        v13 = *v13;
      }

      v14 = objc_msgSend_fileURLWithFileSystemRepresentation_isDirectory_relativeToURL_(MEMORY[0x277CBEBC0], v9, v13, 0, 0);
      v15 = *(v6 + 4);
      *(v6 + 4) = v14;

      v12 = *(archive + 4);
    }

    if ((v12 & 0x10) != 0)
    {
      v16 = objc_msgSend_dateWithTimeIntervalSinceReferenceDate_(MEMORY[0x277CBEAA8], v9, v10, v11, *(archive + 7));
      v17 = *(v6 + 5);
      *(v6 + 5) = v16;

      v12 = *(archive + 4);
    }

    if ((v12 & 2) != 0)
    {
      v19 = *(archive + 4) & 0xFFFFFFFFFFFFFFFELL;
      v20 = *(v19 + 23);
      if (v20 < 0)
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, *v19, *(v19 + 8));
      }

      else
      {
        objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v9, *(archive + 4) & 0xFFFFFFFFFFFFFFFELL, v20);
      }
      v18 = ;
    }

    else
    {
      v18 = objc_msgSend_dataWithContentsOfURL_(MEMORY[0x277CBEA90], v9, *(v6 + 4), v11);
    }

    v21 = *(v6 + 6);
    *(v6 + 6) = v18;

    v25 = *(archive + 4);
    v26 = *(archive + 22);
    if ((v25 & 0x100) == 0)
    {
      v26 = 0.0;
    }

    *(v6 + 7) = v26;
    if ((v25 & 8) != 0)
    {
      v27 = [TSTCellUIDRegion alloc];
      if (*(archive + 6))
      {
        v30 = objc_msgSend_initFromMessage_(v27, v28, *(archive + 6), v29);
      }

      else
      {
        v30 = objc_msgSend_initFromMessage_(v27, v28, &TST::_CellUIDRegionArchive_default_instance_, v29);
      }

      v31 = *(v6 + 3);
      *(v6 + 3) = v30;

      v25 = *(archive + 4);
    }

    if ((v25 & 0x20) != 0 && !objc_msgSend_sourceEncoding(*(v6 + 2), v22, v23, v24))
    {
      objc_msgSend_setSourceEncoding_(*(v6 + 2), v32, *(archive + 8), v33);
    }

    v34 = *(archive + 4);
    if ((v34 & 0x80) != 0)
    {
      *(v6 + 8) = *(archive + 10);
    }

    if ((v34 & 0x40) != 0)
    {
      *(v6 + 9) = *(archive + 9);
    }
  }

  return v6;
}

- (void)encodeToArchive:(void *)archive
{
  importSettings = self->_importSettings;
  *(archive + 4) |= 4u;
  v7 = *(archive + 5);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA02E0](v8, a2);
    *(archive + 5) = v7;
  }

  objc_msgSend_encodeToArchive_(importSettings, a2, v7, v3);
  importSource = self->_importSource;
  if (importSource)
  {
    v13 = objc_msgSend_fileSystemRepresentation(importSource, v9, v10, v11);
    sub_2214CE434(archive, v13);
  }

  importDate = self->_importDate;
  if (importDate)
  {
    objc_msgSend_timeIntervalSinceReferenceDate(importDate, v9, v10, v11);
    *(archive + 4) |= 0x10u;
    *(archive + 7) = v15;
  }

  sourceData = self->_sourceData;
  if (sourceData && objc_msgSend_length(sourceData, v9, v10, v11) <= 0x2000000)
  {
    v17 = objc_msgSend_bytes(self->_sourceData, v9, v10, v11);
    v21 = objc_msgSend_length(self->_sourceData, v18, v19, v20);
    sub_2214CE548(archive, v17, v21);
  }

  if (objc_msgSend_sourceEncoding(self->_importSettings, v9, v10, v11))
  {
    v25 = objc_msgSend_sourceEncoding(self->_importSettings, v22, v23, v24);
    *(archive + 4) |= 0x20u;
    *(archive + 8) = v25;
  }

  confidence = self->_confidence;
  if (confidence != 0.0)
  {
    v27 = confidence;
    *(archive + 4) |= 0x100u;
    *(archive + 22) = v27;
  }

  importedUIDRegion = self->_importedUIDRegion;
  if (importedUIDRegion)
  {
    *(archive + 4) |= 8u;
    v29 = *(archive + 6);
    if (!v29)
    {
      v30 = *(archive + 1);
      if (v30)
      {
        v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
      }

      v29 = google::protobuf::Arena::CreateMaybeMessage<TST::CellUIDRegionArchive>(v30);
      *(archive + 6) = v29;
    }

    objc_msgSend_saveToMessage_(importedUIDRegion, v22, v29, v24);
  }

  sourceColumnCount = self->_sourceColumnCount;
  if (sourceColumnCount)
  {
    *(archive + 4) |= 0x80u;
    *(archive + 10) = sourceColumnCount;
  }

  sourceRowCount = self->_sourceRowCount;
  if (sourceRowCount)
  {
    *(archive + 4) |= 0x40u;
    *(archive + 9) = sourceRowCount;
  }
}

@end