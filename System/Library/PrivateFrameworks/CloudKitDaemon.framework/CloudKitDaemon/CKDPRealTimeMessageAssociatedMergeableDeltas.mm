@interface CKDPRealTimeMessageAssociatedMergeableDeltas
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMergeableDeltas:(id)deltas;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRealTimeMessageAssociatedMergeableDeltas

- (void)addMergeableDeltas:(id)deltas
{
  deltasCopy = deltas;
  mergeableDeltas = self->_mergeableDeltas;
  v8 = deltasCopy;
  if (!mergeableDeltas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_mergeableDeltas;
    self->_mergeableDeltas = v6;

    deltasCopy = v8;
    mergeableDeltas = self->_mergeableDeltas;
  }

  objc_msgSend_addObject_(mergeableDeltas, deltasCopy, deltasCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRealTimeMessageAssociatedMergeableDeltas;
  v4 = [(CKDPRealTimeMessageAssociatedMergeableDeltas *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"record_identifier");
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    v11 = objc_msgSend_dictionaryRepresentation(fieldIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"field_identifier");
  }

  identifier = self->_identifier;
  if (identifier)
  {
    v14 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"identifier");
  }

  if (objc_msgSend_count(self->_mergeableDeltas, v4, v5))
  {
    v16 = objc_alloc(MEMORY[0x277CBEB18]);
    v19 = objc_msgSend_count(self->_mergeableDeltas, v17, v18);
    v21 = objc_msgSend_initWithCapacity_(v16, v20, v19);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v22 = self->_mergeableDeltas;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v34, v38, 16);
    if (v24)
    {
      v27 = v24;
      v28 = *v35;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v35 != v28)
          {
            objc_enumerationMutation(v22);
          }

          v30 = objc_msgSend_dictionaryRepresentation(*(*(&v34 + 1) + 8 * i), v25, v26, v34);
          objc_msgSend_addObject_(v21, v31, v30);
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v34, v38, 16);
      }

      while (v27);
    }

    objc_msgSend_setObject_forKey_(v6, v32, v21, @"mergeable_deltas");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_fieldIdentifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_mergeableDeltas;
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
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v4, recordIdentifier);
  }

  fieldIdentifier = self->_fieldIdentifier;
  if (fieldIdentifier)
  {
    objc_msgSend_setFieldIdentifier_(toCopy, v4, fieldIdentifier);
  }

  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v4, identifier);
  }

  if (objc_msgSend_mergeableDeltasCount(self, v4, identifier))
  {
    objc_msgSend_clearMergeableDeltas(toCopy, v8, v9);
    v12 = objc_msgSend_mergeableDeltasCount(self, v10, v11);
    if (v12)
    {
      v14 = v12;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_mergeableDeltasAtIndex_(self, v13, i);
        objc_msgSend_addMergeableDeltas_(toCopy, v17, v16);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, zone);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_fieldIdentifier, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_identifier, v17, zone);
  v19 = v10[2];
  v10[2] = v18;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_mergeableDeltas;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v34, 16);
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
        objc_msgSend_addMergeableDeltas_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v34, 16);
    }

    while (v24);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((recordIdentifier = self->_recordIdentifier, v9 = equalCopy[4], !(recordIdentifier | v9)) || objc_msgSend_isEqual_(recordIdentifier, v7, v9)) && ((fieldIdentifier = self->_fieldIdentifier, v11 = equalCopy[1], !(fieldIdentifier | v11)) || objc_msgSend_isEqual_(fieldIdentifier, v7, v11)) && ((identifier = self->_identifier, v13 = equalCopy[2], !(identifier | v13)) || objc_msgSend_isEqual_(identifier, v7, v13)))
  {
    mergeableDeltas = self->_mergeableDeltas;
    v15 = equalCopy[3];
    if (mergeableDeltas | v15)
    {
      isEqual = objc_msgSend_isEqual_(mergeableDeltas, v7, v15);
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
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_fieldIdentifier, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_identifier, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_mergeableDeltas, v11, v12);
}

- (void)mergeFrom:(id)from
{
  v24 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  recordIdentifier = self->_recordIdentifier;
  v7 = *(fromCopy + 4);
  if (recordIdentifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(recordIdentifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setRecordIdentifier_(self, v4, v7);
  }

  fieldIdentifier = self->_fieldIdentifier;
  v9 = *(fromCopy + 1);
  if (fieldIdentifier)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(fieldIdentifier, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setFieldIdentifier_(self, v4, v9);
  }

  identifier = self->_identifier;
  v11 = *(fromCopy + 2);
  if (identifier)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setIdentifier_(self, v4, v11);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = *(fromCopy + 3);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v19, v23, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addMergeableDeltas_(self, v15, *(*(&v19 + 1) + 8 * i), v19);
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v19, v23, 16);
    }

    while (v16);
  }
}

@end