@interface CKDPQuery
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)queryOperatorAsString:(int)string;
- (int)StringAsQueryOperator:(id)operator;
- (int)queryOperator;
- (unint64_t)hash;
- (void)addFilters:(id)filters;
- (void)addSorts:(id)sorts;
- (void)addTypes:(id)types;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDistinct:(BOOL)distinct;
- (void)writeTo:(id)to;
@end

@implementation CKDPQuery

- (void)addTypes:(id)types
{
  typesCopy = types;
  types = self->_types;
  v8 = typesCopy;
  if (!types)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_types;
    self->_types = v6;

    typesCopy = v8;
    types = self->_types;
  }

  objc_msgSend_addObject_(types, typesCopy, typesCopy);
}

- (void)addFilters:(id)filters
{
  filtersCopy = filters;
  filters = self->_filters;
  v8 = filtersCopy;
  if (!filters)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_filters;
    self->_filters = v6;

    filtersCopy = v8;
    filters = self->_filters;
  }

  objc_msgSend_addObject_(filters, filtersCopy, filtersCopy);
}

- (void)addSorts:(id)sorts
{
  sortsCopy = sorts;
  sorts = self->_sorts;
  v8 = sortsCopy;
  if (!sorts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sorts;
    self->_sorts = v6;

    sortsCopy = v8;
    sorts = self->_sorts;
  }

  objc_msgSend_addObject_(sorts, sortsCopy, sortsCopy);
}

- (void)setHasDistinct:(BOOL)distinct
{
  if (distinct)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)queryOperator
{
  if (*&self->_has)
  {
    return self->_queryOperator;
  }

  else
  {
    return 1;
  }
}

- (id)queryOperatorAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"AND";
  }

  else if (string == 2)
  {
    v4 = @"OR";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsQueryOperator:(id)operator
{
  operatorCopy = operator;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(operatorCopy, v4, @"AND") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(operatorCopy, v5, @"OR"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPQuery;
  v4 = [(CKDPQuery *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v85 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_types, v5, v6))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_types, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v15 = self->_types;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v78, v84, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v79;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v79 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v78 + 1) + 8 * i), v18, v19);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v78, v84, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v4, v25, v14, @"types");
  }

  if (objc_msgSend_count(self->_filters, v7, v8))
  {
    v28 = objc_alloc(MEMORY[0x277CBEB18]);
    v31 = objc_msgSend_count(self->_filters, v29, v30);
    v33 = objc_msgSend_initWithCapacity_(v28, v32, v31);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v34 = self->_filters;
    v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v74, v83, 16);
    if (v36)
    {
      v39 = v36;
      v40 = *v75;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v75 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = objc_msgSend_dictionaryRepresentation(*(*(&v74 + 1) + 8 * j), v37, v38);
          objc_msgSend_addObject_(v33, v43, v42);
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v37, &v74, v83, 16);
      }

      while (v39);
    }

    objc_msgSend_setObject_forKey_(v4, v44, v33, @"filters");
  }

  if (objc_msgSend_count(self->_sorts, v26, v27))
  {
    v46 = objc_alloc(MEMORY[0x277CBEB18]);
    v49 = objc_msgSend_count(self->_sorts, v47, v48);
    v51 = objc_msgSend_initWithCapacity_(v46, v50, v49);
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v52 = self->_sorts;
    v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v70, v82, 16);
    if (v54)
    {
      v57 = v54;
      v58 = *v71;
      do
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v71 != v58)
          {
            objc_enumerationMutation(v52);
          }

          v60 = objc_msgSend_dictionaryRepresentation(*(*(&v70 + 1) + 8 * k), v55, v56);
          objc_msgSend_addObject_(v51, v61, v60);
        }

        v57 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v70, v82, 16);
      }

      while (v57);
    }

    objc_msgSend_setObject_forKey_(v4, v62, v51, @"sorts");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v64 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v45, self->_distinct);
    objc_msgSend_setObject_forKey_(v4, v65, v64, @"distinct");

    has = self->_has;
  }

  if (has)
  {
    queryOperator = self->_queryOperator;
    if (queryOperator == 1)
    {
      v67 = @"AND";
      objc_msgSend_setObject_forKey_(v4, v45, @"AND", @"queryOperator");
    }

    else if (queryOperator == 2)
    {
      v67 = @"OR";
      objc_msgSend_setObject_forKey_(v4, v45, @"OR", @"queryOperator");
    }

    else
    {
      v67 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v45, @"(unknown: %i)", self->_queryOperator);
      objc_msgSend_setObject_forKey_(v4, v68, v67, @"queryOperator");
    }
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = self->_types;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v35, v41, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v9)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v11, &v35, v41, 16);
    }

    while (v8);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = self->_filters;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v40, 16);
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v18, &v31, v40, 16);
    }

    while (v15);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = self->_sorts;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v39, 16);
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(v19);
        }

        PBDataWriterWriteSubmessage();
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v25, &v27, v39, 16);
    }

    while (v22);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (objc_msgSend_typesCount(self, v4, v5))
  {
    objc_msgSend_clearTypes(toCopy, v6, v7);
    v10 = objc_msgSend_typesCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_typesAtIndex_(self, v6, i);
        objc_msgSend_addTypes_(toCopy, v14, v13);
      }
    }
  }

  if (objc_msgSend_filtersCount(self, v6, v7))
  {
    objc_msgSend_clearFilters(toCopy, v15, v16);
    v19 = objc_msgSend_filtersCount(self, v17, v18);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = objc_msgSend_filtersAtIndex_(self, v15, j);
        objc_msgSend_addFilters_(toCopy, v23, v22);
      }
    }
  }

  if (objc_msgSend_sortsCount(self, v15, v16))
  {
    objc_msgSend_clearSorts(toCopy, v24, v25);
    v28 = objc_msgSend_sortsCount(self, v26, v27);
    if (v28)
    {
      v30 = v28;
      for (k = 0; k != v30; ++k)
      {
        v32 = objc_msgSend_sortsAtIndex_(self, v29, k);
        objc_msgSend_addSorts_(toCopy, v33, v32);
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 40) = self->_distinct;
    *(toCopy + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 4) = self->_queryOperator;
    *(toCopy + 44) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v11 = self->_types;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v48, v54, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v49;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v49 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v48 + 1) + 8 * i), v14, zone);
        objc_msgSend_addTypes_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v48, v54, 16);
    }

    while (v15);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = self->_filters;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v44, v53, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v45;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v45 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v44 + 1) + 8 * j), v23, zone);
        objc_msgSend_addFilters_(v10, v28, v27);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v44, v53, 16);
    }

    while (v24);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v29 = self->_sorts;
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, &v40, v52, 16);
  if (v31)
  {
    v33 = v31;
    v34 = *v41;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v41 != v34)
        {
          objc_enumerationMutation(v29);
        }

        v36 = objc_msgSend_copyWithZone_(*(*(&v40 + 1) + 8 * k), v32, zone, v40);
        objc_msgSend_addSorts_(v10, v37, v36);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v32, &v40, v52, 16);
    }

    while (v33);
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 40) = self->_distinct;
    *(v10 + 44) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 16) = self->_queryOperator;
    *(v10 + 44) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_15;
  }

  types = self->_types;
  v9 = equalCopy[4];
  if (types | v9)
  {
    if (!objc_msgSend_isEqual_(types, v7, v9))
    {
      goto LABEL_15;
    }
  }

  filters = self->_filters;
  v11 = equalCopy[1];
  if (filters | v11)
  {
    if (!objc_msgSend_isEqual_(filters, v7, v11))
    {
      goto LABEL_15;
    }
  }

  sorts = self->_sorts;
  v13 = equalCopy[3];
  if (sorts | v13)
  {
    if (!objc_msgSend_isEqual_(sorts, v7, v13))
    {
      goto LABEL_15;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0)
    {
      goto LABEL_15;
    }

    if (self->_distinct)
    {
      if ((equalCopy[5] & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    else if (equalCopy[5])
    {
      goto LABEL_15;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_15;
  }

  v14 = (*(equalCopy + 44) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) != 0 && self->_queryOperator == *(equalCopy + 4))
    {
      v14 = 1;
      goto LABEL_16;
    }

LABEL_15:
    v14 = 0;
  }

LABEL_16:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_types, a2, v2);
  v7 = objc_msgSend_hash(self->_filters, v5, v6);
  v10 = objc_msgSend_hash(self->_sorts, v8, v9);
  if ((*&self->_has & 2) != 0)
  {
    v11 = 2654435761 * self->_distinct;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 0;
    return v7 ^ v4 ^ v10 ^ v11 ^ v12;
  }

  v11 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = 2654435761 * self->_queryOperator;
  return v7 ^ v4 ^ v10 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v42 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = *(fromCopy + 4);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v35, v41, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v36;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addTypes_(self, v8, *(*(&v35 + 1) + 8 * i));
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v35, v41, 16);
    }

    while (v9);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v12 = *(fromCopy + 1);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v31, v40, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v32;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v32 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addFilters_(self, v15, *(*(&v31 + 1) + 8 * j));
      }

      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v31, v40, 16);
    }

    while (v16);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v19 = *(fromCopy + 3);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v27, v39, 16);
  if (v21)
  {
    v23 = v21;
    v24 = *v28;
    do
    {
      for (k = 0; k != v23; ++k)
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(v19);
        }

        objc_msgSend_addSorts_(self, v22, *(*(&v27 + 1) + 8 * k), v27);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v27, v39, 16);
    }

    while (v23);
  }

  v26 = *(fromCopy + 44);
  if ((v26 & 2) != 0)
  {
    self->_distinct = *(fromCopy + 40);
    *&self->_has |= 2u;
    v26 = *(fromCopy + 44);
  }

  if (v26)
  {
    self->_queryOperator = *(fromCopy + 4);
    *&self->_has |= 1u;
  }
}

@end