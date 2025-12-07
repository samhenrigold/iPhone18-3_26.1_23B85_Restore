@interface CKDPRecordField
+ (id)emptyFieldWithKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)addAction:(id)action;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordField

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  v4 = *&depth;
  handleCopy = handle;
  v6 = objc_autoreleasePoolPush();
  v9 = objc_msgSend_identifier(self, v7, v8);
  v12 = objc_msgSend_name(v9, v10, v11);
  objc_msgSend_CKWriteString_(handleCopy, v13, v12);

  if (qword_280D58320 != -1)
  {
    dispatch_once(&qword_280D58320, &unk_28385D240);
  }

  objc_msgSend_writeData_(handleCopy, v14, qword_280D58318);
  v17 = objc_msgSend_value(self, v15, v16);
  objc_msgSend__CKLogToFileHandle_atDepth_(v17, v18, handleCopy, v4);

  objc_autoreleasePoolPop(v6);
}

- (void)addAction:(id)action
{
  actionCopy = action;
  actions = self->_actions;
  v8 = actionCopy;
  if (!actions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_actions;
    self->_actions = v6;

    actionCopy = v8;
    actions = self->_actions;
  }

  objc_msgSend_addObject_(actions, actionCopy, actionCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordField;
  v4 = [(CKDPRecordField *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  value = self->_value;
  if (value)
  {
    v11 = objc_msgSend_dictionaryRepresentation(value, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"value");
  }

  if (objc_msgSend_count(self->_actions, v4, v5))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_actions, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v19 = self->_actions;
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

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"action");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_actions;
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
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v4, identifier);
  }

  value = self->_value;
  if (value)
  {
    objc_msgSend_setValue_(toCopy, v4, value);
  }

  if (objc_msgSend_actionsCount(self, v4, value))
  {
    objc_msgSend_clearActions(toCopy, v7, v8);
    v11 = objc_msgSend_actionsCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_actionAtIndex_(self, v12, i);
        objc_msgSend_addAction_(toCopy, v16, v15);
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
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_value, v14, zone);
  v16 = v10[3];
  v10[3] = v15;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = self->_actions;
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
        objc_msgSend_addAction_(v10, v25, v24);

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
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((identifier = self->_identifier, v9 = equalCopy[2], !(identifier | v9)) || objc_msgSend_isEqual_(identifier, v7, v9)) && ((value = self->_value, v11 = equalCopy[3], !(value | v11)) || objc_msgSend_isEqual_(value, v7, v11)))
  {
    actions = self->_actions;
    v13 = equalCopy[1];
    if (actions | v13)
    {
      isEqual = objc_msgSend_isEqual_(actions, v7, v13);
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
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_value, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_actions, v8, v9);
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  identifier = self->_identifier;
  v7 = *(fromCopy + 2);
  if (identifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setIdentifier_(self, v4, v7);
  }

  value = self->_value;
  v9 = *(fromCopy + 3);
  if (value)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(value, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setValue_(self, v4, v9);
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

        objc_msgSend_addAction_(self, v13, *(*(&v17 + 1) + 8 * i), v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v17, v21, 16);
    }

    while (v14);
  }
}

+ (id)emptyFieldWithKey:(id)key
{
  keyCopy = key;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  objc_msgSend_setIdentifier_(v4, v6, v5);

  v9 = objc_msgSend_identifier(v4, v7, v8);
  objc_msgSend_setName_(v9, v10, keyCopy);

  v11 = objc_opt_new();
  objc_msgSend_setValue_(v4, v12, v11);

  return v4;
}

@end