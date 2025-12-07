@interface TSCECellDependenciesPrinter
+ (id)stringForOwnerKind:(unsigned __int16)kind;
- (TSCECellDependenciesPrinter)init;
- (id)description;
- (void)addDependencyRow:(id)row;
@end

@implementation TSCECellDependenciesPrinter

- (TSCECellDependenciesPrinter)init
{
  v7.receiver = self;
  v7.super_class = TSCECellDependenciesPrinter;
  v2 = [(TSCECellDependenciesPrinter *)&v7 init];
  v5 = v2;
  if (v2)
  {
    objc_msgSend_setShowCleanCells_(v2, v3, 1, v4);
  }

  return v5;
}

- (void)addDependencyRow:(id)row
{
  rowCopy = row;
  if (rowCopy)
  {
    if (objc_msgSend_dirtyPrecedentCount(rowCopy, v4, v5, v6))
    {
      dirtyCellDependencyRows = self->_dirtyCellDependencyRows;
      p_dirtyCellDependencyRows = &self->_dirtyCellDependencyRows;
      v10 = dirtyCellDependencyRows;
      if (dirtyCellDependencyRows)
      {
LABEL_8:
        objc_msgSend_addObject_(v10, v7, rowCopy, v9);
        goto LABEL_9;
      }
    }

    else
    {
      if (!objc_msgSend_showCleanCells(self, v7, v8, v9))
      {
        goto LABEL_9;
      }

      cleanCellDependencyRows = self->_cleanCellDependencyRows;
      p_dirtyCellDependencyRows = &self->_cleanCellDependencyRows;
      v10 = cleanCellDependencyRows;
      if (cleanCellDependencyRows)
      {
        goto LABEL_8;
      }
    }

    v14 = objc_opt_new();
    v15 = *p_dirtyCellDependencyRows;
    *p_dirtyCellDependencyRows = v14;

    v10 = *p_dirtyCellDependencyRows;
    goto LABEL_8;
  }

LABEL_9:
}

- (id)description
{
  v68 = *MEMORY[0x277D85DE8];
  if (objc_msgSend_count(self->_dirtyCellDependencyRows, a2, v2, v3) || objc_msgSend_numDirtyCells(self, v5, v6, v7) || objc_msgSend_count(self->_cleanCellDependencyRows, v5, v6, v7) && objc_msgSend_showCleanCells(self, v54, v55, v56))
  {
    v8 = MEMORY[0x277CCAB68];
    v9 = objc_msgSend_ownerName(self, v5, v6, v7);
    v13 = objc_msgSend_numDirtyCells(self, v10, v11, v12);
    v16 = objc_msgSend_stringWithFormat_(v8, v14, @"---Cell dependencies for %@ (%lu dirty cells):\n", v15, v9, v13);

    if (objc_msgSend_count(self->_dirtyCellDependencyRows, v17, v18, v19))
    {
      objc_msgSend_sortedArrayUsingSelector_(self->_dirtyCellDependencyRows, v20, sel_tsce_numericCompare_, v22);
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v23 = v63 = 0u;
      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v62, v67, 16);
      if (v28)
      {
        v29 = *v63;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v63 != v29)
            {
              objc_enumerationMutation(v23);
            }

            v33 = objc_msgSend_stringForDependencyRow(*(*(&v62 + 1) + 8 * i), v25, v26, v27);
            if (v33)
            {
              objc_msgSend_appendString_(v16, v31, v33, v32);
              objc_msgSend_appendString_(v16, v34, @"\n", v35);
            }
          }

          v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v62, v67, 16);
        }

        while (v28);
      }
    }

    if (objc_msgSend_count(self->_cleanCellDependencyRows, v20, v21, v22) && objc_msgSend_showCleanCells(self, v36, v37, v38))
    {
      objc_msgSend_sortedArrayUsingSelector_(self->_cleanCellDependencyRows, v39, sel_tsce_numericCompare_, v40);
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v41 = v59 = 0u;
      v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v42, &v58, v66, 16);
      if (v46)
      {
        v47 = *v59;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v59 != v47)
            {
              objc_enumerationMutation(v41);
            }

            v51 = objc_msgSend_stringForDependencyRow(*(*(&v58 + 1) + 8 * j), v43, v44, v45);
            if (v51)
            {
              objc_msgSend_appendString_(v16, v49, v51, v50);
              objc_msgSend_appendString_(v16, v52, @"\n", v53);
            }
          }

          v46 = objc_msgSend_countByEnumeratingWithState_objects_count_(v41, v43, &v58, v66, 16);
        }

        while (v46);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)stringForOwnerKind:(unsigned __int16)kind
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%d", v3, kind);

  return v4;
}

@end