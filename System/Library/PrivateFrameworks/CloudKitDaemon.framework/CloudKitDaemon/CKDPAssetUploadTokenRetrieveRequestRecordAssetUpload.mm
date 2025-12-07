@interface CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAssetFields:(id)fields;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload

- (void)addAssetFields:(id)fields
{
  fieldsCopy = fields;
  assetFields = self->_assetFields;
  v8 = fieldsCopy;
  if (!assetFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_assetFields;
    self->_assetFields = v6;

    fieldsCopy = v8;
    assetFields = self->_assetFields;
  }

  objc_msgSend_addObject_(assetFields, fieldsCopy, fieldsCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload;
  v4 = [(CKDPAssetUploadTokenRetrieveRequestRecordAssetUpload *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordId = self->_recordId;
  if (recordId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordId");
  }

  type = self->_type;
  if (type)
  {
    v11 = objc_msgSend_dictionaryRepresentation(type, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"type");
  }

  if (objc_msgSend_count(self->_assetFields, v4, v5))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_assetFields, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = self->_assetFields;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v31, v35, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v32;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v32 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v31 + 1) + 8 * i), v22, v23, v31);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v31, v35, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"assetFields");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_recordId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_type)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_assetFields;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v12, v16, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v12, v16, 16);
    }

    while (v8);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  recordId = self->_recordId;
  if (recordId)
  {
    objc_msgSend_setRecordId_(toCopy, v4, recordId);
  }

  type = self->_type;
  if (type)
  {
    objc_msgSend_setType_(toCopy, v4, type);
  }

  if (objc_msgSend_assetFieldsCount(self, v4, type))
  {
    objc_msgSend_clearAssetFields(toCopy, v7, v8);
    v11 = objc_msgSend_assetFieldsCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_assetFieldsAtIndex_(self, v12, i);
        objc_msgSend_addAssetFields_(toCopy, v16, v15);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordId, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_type, v14, zone);
  v16 = v10[3];
  v10[3] = v15;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_assetFields;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v28;
    do
    {
      v23 = 0;
      do
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v27 + 1) + 8 * v23), v20, zone, v27);
        objc_msgSend_addAssetFields_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v27, v31, 16);
    }

    while (v21);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((recordId = self->_recordId, v9 = equalCopy[2], !(recordId | v9)) || objc_msgSend_isEqual_(recordId, v7, v9)) && ((type = self->_type, v11 = equalCopy[3], !(type | v11)) || objc_msgSend_isEqual_(type, v7, v11)))
  {
    assetFields = self->_assetFields;
    v13 = equalCopy[1];
    if (assetFields | v13)
    {
      isEqual = objc_msgSend_isEqual_(assetFields, v7, v13);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_recordId, a2, v2);
  v7 = objc_msgSend_hash(self->_type, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_assetFields, v8, v9);
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  recordId = self->_recordId;
  v7 = *(fromCopy + 2);
  if (recordId)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(recordId, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setRecordId_(self, v4, v7);
  }

  type = self->_type;
  v9 = *(fromCopy + 3);
  if (type)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(type, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setType_(self, v4, v9);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = *(fromCopy + 1);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v17, v21, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v18;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addAssetFields_(self, v13, *(*(&v17 + 1) + 8 * i), v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v21, 16);
    }

    while (v14);
  }
}

@end