@interface CKDPRequestedFields
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)addFields:(id)fields;
- (void)addListField:(id)field;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRequestedFields

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  v59 = *MEMORY[0x277D85DE8];
  handleCopy = handle;
  v9 = objc_msgSend_fields(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);
  v15 = objc_msgSend_listFields(self, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17) + v12;

  v19 = sub_225199CCC();
  objc_msgSend_writeData_(handleCopy, v20, v19);

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  selfCopy = self;
  v23 = objc_msgSend_fields(self, v21, v22);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v53, v58, 16);
  if (v25)
  {
    v27 = v25;
    v28 = 0;
    v29 = *v54;
    do
    {
      v30 = 0;
      v31 = v28 + 1;
      do
      {
        if (*v54 != v29)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v53 + 1) + 8 * v30), v26, handleCopy, (depth + 1));
        if (v31 < v18)
        {
          v32 = sub_225199D20();
          objc_msgSend_writeData_(handleCopy, v33, v32);
        }

        ++v30;
        ++v31;
      }

      while (v27 != v30);
      v28 += v27;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v53, v58, 16);
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v36 = objc_msgSend_listFields(selfCopy, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v49, v57, 16);
  if (v38)
  {
    v40 = v38;
    v41 = *v50;
    do
    {
      v42 = 0;
      v43 = v28 + 1;
      do
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v49 + 1) + 8 * v42), v39, handleCopy, (depth + 1));
        if (v43 < v18)
        {
          v44 = sub_225199D20();
          objc_msgSend_writeData_(handleCopy, v45, v44);
        }

        ++v42;
        ++v43;
      }

      while (v40 != v42);
      v28 += v40;
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v49, v57, 16);
    }

    while (v40);
  }

  v46 = sub_225199D74();
  objc_msgSend_writeData_(handleCopy, v47, v46);
}

- (void)addFields:(id)fields
{
  fieldsCopy = fields;
  fields = self->_fields;
  v8 = fieldsCopy;
  if (!fields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fields;
    self->_fields = v6;

    fieldsCopy = v8;
    fields = self->_fields;
  }

  objc_msgSend_addObject_(fields, fieldsCopy, fieldsCopy);
}

- (void)addListField:(id)field
{
  fieldCopy = field;
  listFields = self->_listFields;
  v8 = fieldCopy;
  if (!listFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_listFields;
    self->_listFields = v6;

    fieldCopy = v8;
    listFields = self->_listFields;
  }

  objc_msgSend_addObject_(listFields, fieldCopy, fieldCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestedFields;
  v4 = [(CKDPRequestedFields *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_fields, v5, v6))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_fields, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v15 = self->_fields;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v48, v53, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v49;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v49 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v48 + 1) + 8 * i), v18, v19);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v48, v53, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v4, v25, v14, @"fields");
  }

  if (objc_msgSend_count(self->_listFields, v7, v8))
  {
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend_count(self->_listFields, v27, v28);
    v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v32 = self->_listFields;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v44, v52, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v45;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v45 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = objc_msgSend_dictionaryRepresentation(*(*(&v44 + 1) + 8 * j), v35, v36, v44);
          objc_msgSend_addObject_(v31, v41, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v44, v52, 16);
      }

      while (v37);
    }

    objc_msgSend_setObject_forKey_(v4, v42, v31, @"list_field");
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = self->_fields;
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

        PBDataWriterWriteSubmessage();
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
  v12 = self->_listFields;
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

        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v19, v27, 16);
    }

    while (v15);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_fieldsCount(self, v4, v5))
  {
    objc_msgSend_clearFields(toCopy, v6, v7);
    v10 = objc_msgSend_fieldsCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_fieldsAtIndex_(self, v6, i);
        objc_msgSend_addFields_(toCopy, v14, v13);
      }
    }
  }

  if (objc_msgSend_listFieldsCount(self, v6, v7))
  {
    objc_msgSend_clearListFields(toCopy, v15, v16);
    v19 = objc_msgSend_listFieldsCount(self, v17, v18);
    if (v19)
    {
      v21 = v19;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_listFieldAtIndex_(self, v20, j);
        objc_msgSend_addListField_(toCopy, v24, v23);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v11 = self->_fields;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v34, v39, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v35;
    do
    {
      v17 = 0;
      do
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v34 + 1) + 8 * v17), v14, zone);
        objc_msgSend_addFields_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v34, v39, 16);
    }

    while (v15);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_listFields;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v38, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v30 + 1) + 8 * v26), v23, zone, v30);
        objc_msgSend_addListField_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v38, 16);
    }

    while (v24);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((fields = self->_fields, v9 = equalCopy[1], !(fields | v9)) || objc_msgSend_isEqual_(fields, v7, v9)))
  {
    listFields = self->_listFields;
    v11 = equalCopy[2];
    if (listFields | v11)
    {
      isEqual = objc_msgSend_isEqual_(listFields, v7, v11);
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
  v29 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = fromCopy[1];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v23, v28, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addFields_(self, v8, *(*(&v23 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v23, v28, 16);
    }

    while (v9);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = fromCopy[2];
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v27, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addListField_(self, v15, *(*(&v19 + 1) + 8 * v18++), v19);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v19, v27, 16);
    }

    while (v16);
  }
}

@end