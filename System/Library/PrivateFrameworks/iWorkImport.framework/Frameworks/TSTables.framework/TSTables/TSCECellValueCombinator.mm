@interface TSCECellValueCombinator
- (void)addValuesForDimension:(id)dimension;
- (void)enumerateCombinationsWithBlock:(id)block;
@end

@implementation TSCECellValueCombinator

- (void)addValuesForDimension:(id)dimension
{
  dimensionCopy = dimension;
  if (dimensionCopy)
  {
    valuesForDimension = self->_valuesForDimension;
    if (!valuesForDimension)
    {
      v7 = objc_opt_new();
      v8 = self->_valuesForDimension;
      self->_valuesForDimension = v7;

      valuesForDimension = self->_valuesForDimension;
    }

    objc_msgSend_addObject_(valuesForDimension, v4, dimensionCopy, v5);
  }
}

- (void)enumerateCombinationsWithBlock:(id)block
{
  v52 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  if (objc_msgSend_count(self->_valuesForDimension, v4, v5, v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_valuesForDimension, v8, v9, v10);
    v14 = objc_msgSend_initWithCapacity_(v7, v12, v11, v13);
    v15 = objc_opt_new();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = self->_valuesForDimension;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v47, v51, 16);
    if (v21)
    {
      v22 = *v48;
      v23 = 1;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v25 = objc_msgSend_count(*(*(&v47 + 1) + 8 * i), v18, v19, v20);
          objc_msgSend_addObject_(v14, v26, v15, v27);
          v23 *= v25;
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v47, v51, 16);
      }

      while (v21);

      if (!v23)
      {
        goto LABEL_16;
      }
    }

    else
    {

      v23 = 1;
    }

    for (j = 0; j != v23; ++j)
    {
      v34 = objc_msgSend_count(self->_valuesForDimension, v28, v29, v30);
      v35 = j;
      if (v34 - 1 >= 0)
      {
        do
        {
          v36 = objc_msgSend_objectAtIndex_(self->_valuesForDimension, v32, --v34, v33);
          v40 = objc_msgSend_count(v36, v37, v38, v39);
          v41 = v35 / v40;
          v44 = objc_msgSend_objectAtIndex_(v36, v42, v35 % v40, v43);
          objc_msgSend_replaceObjectAtIndex_withObject_(v14, v45, v34, v44);

          v35 = v41;
        }

        while (v34 > 0);
      }

      blockCopy[2](blockCopy, v14);
    }

LABEL_16:
  }
}

@end