@interface CKDPRequestedListField
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)addRange:(id)range;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRequestedListField

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  v40 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v9 = objc_msgSend_fieldId(self, v7, v8);
  objc_msgSend__CKLogToFileHandle_atDepth_(v9, v10, handleCopy, (depth + 1));

  v11 = sub_22519AF58();
  objc_msgSend_writeData_(handleCopy, v12, v11);

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = objc_msgSend_ranges(self, v13, v14);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v35, v39, 16);
  if (v17)
  {
    v19 = v17;
    v20 = 0;
    v21 = *v36;
    do
    {
      v22 = 0;
      v34 = v20;
      v23 = v20 + 1;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v15);
        }

        objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v35 + 1) + 8 * v22), v18, handleCopy, (depth + 1));
        v26 = objc_msgSend_ranges(self, v24, v25);
        v29 = objc_msgSend_count(v26, v27, v28);

        if (v23 < v29)
        {
          v30 = sub_225199D20();
          objc_msgSend_writeData_(handleCopy, v31, v30);
        }

        ++v22;
        ++v23;
      }

      while (v19 != v22);
      v20 = v19 + v34;
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v35, v39, 16);
    }

    while (v19);
  }

  v32 = sub_22519AFAC();
  objc_msgSend_writeData_(handleCopy, v33, v32);
}

- (void)addRange:(id)range
{
  rangeCopy = range;
  ranges = self->_ranges;
  v8 = rangeCopy;
  if (!ranges)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ranges;
    self->_ranges = v6;

    rangeCopy = v8;
    ranges = self->_ranges;
  }

  objc_msgSend_addObject_(ranges, rangeCopy, rangeCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestedListField;
  v4 = [(CKDPRequestedListField *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  fieldId = self->_fieldId;
  if (fieldId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(fieldId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"field_id");
  }

  if (objc_msgSend_count(self->_ranges, v4, v5))
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(self->_ranges, v11, v12);
    v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v16 = self->_ranges;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v28, v32, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v29;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = objc_msgSend_dictionaryRepresentation(*(*(&v28 + 1) + 8 * i), v19, v20, v28);
          objc_msgSend_addObject_(v15, v25, v24);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v28, v32, 16);
      }

      while (v21);
    }

    objc_msgSend_setObject_forKey_(v6, v26, v15, @"range");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_fieldId)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_ranges;
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
  fieldId = self->_fieldId;
  if (fieldId)
  {
    objc_msgSend_setFieldId_(toCopy, v4, fieldId);
  }

  if (objc_msgSend_rangesCount(self, v4, fieldId))
  {
    objc_msgSend_clearRanges(toCopy, v6, v7);
    v10 = objc_msgSend_rangesCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_rangeAtIndex_(self, v11, i);
        objc_msgSend_addRange_(toCopy, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_fieldId, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = self->_ranges;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v24, v28, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v24 + 1) + 8 * v20), v17, zone, v24);
        objc_msgSend_addRange_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v24, v28, 16);
    }

    while (v18);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((fieldId = self->_fieldId, v9 = equalCopy[1], !(fieldId | v9)) || objc_msgSend_isEqual_(fieldId, v7, v9)))
  {
    ranges = self->_ranges;
    v11 = equalCopy[2];
    if (ranges | v11)
    {
      isEqual = objc_msgSend_isEqual_(ranges, v7, v11);
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

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  fieldId = self->_fieldId;
  v7 = *(fromCopy + 1);
  if (fieldId)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(fieldId, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setFieldId_(self, v4, v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = *(fromCopy + 2);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v15, v19, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v16;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addRange_(self, v11, *(*(&v15 + 1) + 8 * i), v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v15, v19, 16);
    }

    while (v12);
  }
}

@end