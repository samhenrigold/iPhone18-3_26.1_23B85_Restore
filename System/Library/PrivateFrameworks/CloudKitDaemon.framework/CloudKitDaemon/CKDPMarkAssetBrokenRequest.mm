@interface CKDPMarkAssetBrokenRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFileSignature:(id)signature;
- (void)addReferenceSignature:(id)signature;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsPackage:(BOOL)package;
- (void)setHasSkipWriteMissingAssetStatusRecord:(BOOL)record;
- (void)writeTo:(id)to;
@end

@implementation CKDPMarkAssetBrokenRequest

+ (id)options
{
  if (qword_280D54FD0 != -1)
  {
    dispatch_once(&qword_280D54FD0, &unk_28385DDC0);
  }

  v3 = qword_280D54FC8;

  return v3;
}

- (void)addFileSignature:(id)signature
{
  signatureCopy = signature;
  fileSignatures = self->_fileSignatures;
  v8 = signatureCopy;
  if (!fileSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fileSignatures;
    self->_fileSignatures = v6;

    signatureCopy = v8;
    fileSignatures = self->_fileSignatures;
  }

  objc_msgSend_addObject_(fileSignatures, signatureCopy, signatureCopy);
}

- (void)addReferenceSignature:(id)signature
{
  signatureCopy = signature;
  referenceSignatures = self->_referenceSignatures;
  v8 = signatureCopy;
  if (!referenceSignatures)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_referenceSignatures;
    self->_referenceSignatures = v6;

    signatureCopy = v8;
    referenceSignatures = self->_referenceSignatures;
  }

  objc_msgSend_addObject_(referenceSignatures, signatureCopy, signatureCopy);
}

- (void)setHasIsPackage:(BOOL)package
{
  if (package)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasSkipWriteMissingAssetStatusRecord:(BOOL)record
{
  if (record)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMarkAssetBrokenRequest;
  v4 = [(CKDPMarkAssetBrokenRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  brokenAssetRecordID = self->_brokenAssetRecordID;
  if (brokenAssetRecordID)
  {
    v8 = objc_msgSend_dictionaryRepresentation(brokenAssetRecordID, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"brokenAssetRecordID");
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    objc_msgSend_setObject_forKey_(v6, v4, fieldName, @"fieldName");
  }

  if (*&self->_has)
  {
    v11 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_listIndex);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"listIndex");
  }

  fileSignatures = self->_fileSignatures;
  if (fileSignatures)
  {
    objc_msgSend_setObject_forKey_(v6, v4, fileSignatures, @"fileSignature");
  }

  referenceSignatures = self->_referenceSignatures;
  if (referenceSignatures)
  {
    objc_msgSend_setObject_forKey_(v6, v4, referenceSignatures, @"referenceSignature");
  }

  if ((*&self->_has & 2) != 0)
  {
    v15 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isPackage);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"isPackage");
  }

  affectedRecordType = self->_affectedRecordType;
  if (affectedRecordType)
  {
    objc_msgSend_setObject_forKey_(v6, v4, affectedRecordType, @"affectedRecordType");
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_skipWriteMissingAssetStatusRecord);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"skipWriteMissingAssetStatusRecord");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_brokenAssetRecordID)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fieldName)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = self->_fileSignatures;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v23, v28, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v23, v28, 16);
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_referenceSignatures;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v27, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      v17 = 0;
      do
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteDataField();
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v19, v27, 16);
    }

    while (v15);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_affectedRecordType)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  brokenAssetRecordID = self->_brokenAssetRecordID;
  v28 = toCopy;
  if (brokenAssetRecordID)
  {
    objc_msgSend_setBrokenAssetRecordID_(toCopy, v5, brokenAssetRecordID);
    toCopy = v28;
  }

  fieldName = self->_fieldName;
  if (fieldName)
  {
    objc_msgSend_setFieldName_(v28, v5, fieldName);
    toCopy = v28;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_listIndex;
    toCopy[60] |= 1u;
  }

  if (objc_msgSend_fileSignaturesCount(self, v5, fieldName))
  {
    objc_msgSend_clearFileSignatures(v28, v8, v9);
    v12 = objc_msgSend_fileSignaturesCount(self, v10, v11);
    if (v12)
    {
      v13 = v12;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_fileSignatureAtIndex_(self, v8, i);
        objc_msgSend_addFileSignature_(v28, v16, v15);
      }
    }
  }

  if (objc_msgSend_referenceSignaturesCount(self, v8, v9))
  {
    objc_msgSend_clearReferenceSignatures(v28, v17, v18);
    v21 = objc_msgSend_referenceSignaturesCount(self, v19, v20);
    if (v21)
    {
      v22 = v21;
      for (j = 0; j != v22; ++j)
      {
        v24 = objc_msgSend_referenceSignatureAtIndex_(self, v17, j);
        objc_msgSend_addReferenceSignature_(v28, v25, v24);
      }
    }
  }

  v26 = v28;
  if ((*&self->_has & 2) != 0)
  {
    v28[56] = self->_isPackage;
    v28[60] |= 2u;
  }

  affectedRecordType = self->_affectedRecordType;
  if (affectedRecordType)
  {
    objc_msgSend_setAffectedRecordType_(v28, v17, affectedRecordType);
    v26 = v28;
  }

  if ((*&self->_has & 4) != 0)
  {
    v26[57] = self->_skipWriteMissingAssetStatusRecord;
    v26[60] |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_brokenAssetRecordID, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fieldName, v14, zone);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  if (*&self->_has)
  {
    *(v10 + 40) = self->_listIndex;
    *(v10 + 60) |= 1u;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = self->_fileSignatures;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v43, v48, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v44;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v44 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v43 + 1) + 8 * i), v20, zone);
        objc_msgSend_addFileSignature_(v10, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v43, v48, 16);
    }

    while (v21);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v26 = self->_referenceSignatures;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v39, v47, 16);
  if (v28)
  {
    v30 = v28;
    v31 = *v40;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v40 != v31)
        {
          objc_enumerationMutation(v26);
        }

        v33 = objc_msgSend_copyWithZone_(*(*(&v39 + 1) + 8 * j), v29, zone, v39);
        objc_msgSend_addReferenceSignature_(v10, v34, v33);
      }

      v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v39, v47, 16);
    }

    while (v30);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 56) = self->_isPackage;
    *(v10 + 60) |= 2u;
  }

  v36 = objc_msgSend_copyWithZone_(self->_affectedRecordType, v35, zone, v39);
  v37 = *(v10 + 8);
  *(v10 + 8) = v36;

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 57) = self->_skipWriteMissingAssetStatusRecord;
    *(v10 + 60) |= 4u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_26;
  }

  brokenAssetRecordID = self->_brokenAssetRecordID;
  v9 = equalCopy[2];
  if (brokenAssetRecordID | v9)
  {
    if (!objc_msgSend_isEqual_(brokenAssetRecordID, v7, v9))
    {
      goto LABEL_26;
    }
  }

  fieldName = self->_fieldName;
  v11 = equalCopy[3];
  if (fieldName | v11)
  {
    if (!objc_msgSend_isEqual_(fieldName, v7, v11))
    {
      goto LABEL_26;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 60) & 1) == 0 || self->_listIndex != *(equalCopy + 10))
    {
      goto LABEL_26;
    }
  }

  else if (*(equalCopy + 60))
  {
    goto LABEL_26;
  }

  fileSignatures = self->_fileSignatures;
  v13 = equalCopy[4];
  if (fileSignatures | v13 && !objc_msgSend_isEqual_(fileSignatures, v7, v13))
  {
    goto LABEL_26;
  }

  referenceSignatures = self->_referenceSignatures;
  v15 = equalCopy[6];
  if (referenceSignatures | v15)
  {
    if (!objc_msgSend_isEqual_(referenceSignatures, v7, v15))
    {
      goto LABEL_26;
    }
  }

  has = self->_has;
  v17 = *(equalCopy + 60);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 60) & 2) == 0)
    {
      goto LABEL_26;
    }

    if (self->_isPackage)
    {
      if ((equalCopy[7] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (equalCopy[7])
    {
      goto LABEL_26;
    }
  }

  else if ((*(equalCopy + 60) & 2) != 0)
  {
    goto LABEL_26;
  }

  affectedRecordType = self->_affectedRecordType;
  v19 = equalCopy[1];
  if (affectedRecordType | v19)
  {
    if (!objc_msgSend_isEqual_(affectedRecordType, v7, v19))
    {
      goto LABEL_26;
    }

    has = self->_has;
    v17 = *(equalCopy + 60);
  }

  v20 = (v17 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v17 & 4) != 0)
    {
      if (self->_skipWriteMissingAssetStatusRecord)
      {
        if (*(equalCopy + 57))
        {
          goto LABEL_34;
        }
      }

      else if (!*(equalCopy + 57))
      {
LABEL_34:
        v20 = 1;
        goto LABEL_27;
      }
    }

LABEL_26:
    v20 = 0;
  }

LABEL_27:

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_brokenAssetRecordID, a2, v2);
  v9 = objc_msgSend_hash(self->_fieldName, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_listIndex;
  }

  else
  {
    v10 = 0;
  }

  v11 = objc_msgSend_hash(self->_fileSignatures, v7, v8);
  v16 = objc_msgSend_hash(self->_referenceSignatures, v12, v13);
  if ((*&self->_has & 2) != 0)
  {
    v17 = 2654435761 * self->_isPackage;
  }

  else
  {
    v17 = 0;
  }

  v18 = objc_msgSend_hash(self->_affectedRecordType, v14, v15);
  if ((*&self->_has & 4) != 0)
  {
    v19 = 2654435761 * self->_skipWriteMissingAssetStatusRecord;
  }

  else
  {
    v19 = 0;
  }

  return v9 ^ v4 ^ v10 ^ v11 ^ v16 ^ v17 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  brokenAssetRecordID = self->_brokenAssetRecordID;
  v7 = *(fromCopy + 2);
  if (brokenAssetRecordID)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(brokenAssetRecordID, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setBrokenAssetRecordID_(self, v4, v7);
  }

  v8 = *(fromCopy + 3);
  if (v8)
  {
    objc_msgSend_setFieldName_(self, v4, v8);
  }

  if (*(fromCopy + 60))
  {
    self->_listIndex = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = *(fromCopy + 4);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v29, v34, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v30;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addFileSignature_(self, v12, *(*(&v29 + 1) + 8 * i));
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v29, v34, 16);
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v16 = *(fromCopy + 6);
  v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v25, v33, 16);
  if (v18)
  {
    v20 = v18;
    v21 = *v26;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v16);
        }

        objc_msgSend_addReferenceSignature_(self, v19, *(*(&v25 + 1) + 8 * j), v25);
      }

      v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v25, v33, 16);
    }

    while (v20);
  }

  if ((*(fromCopy + 60) & 2) != 0)
  {
    self->_isPackage = *(fromCopy + 56);
    *&self->_has |= 2u;
  }

  v24 = *(fromCopy + 1);
  if (v24)
  {
    objc_msgSend_setAffectedRecordType_(self, v23, v24);
  }

  if ((*(fromCopy + 60) & 4) != 0)
  {
    self->_skipWriteMissingAssetStatusRecord = *(fromCopy + 57);
    *&self->_has |= 4u;
  }
}

@end