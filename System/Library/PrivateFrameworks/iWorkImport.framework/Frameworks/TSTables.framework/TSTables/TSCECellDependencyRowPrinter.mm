@interface TSCECellDependencyRowPrinter
- (TSCECellDependencyRowPrinter)initWithCellID:(id)d dirtyPrecedentCount:(unint64_t)count;
- (id)stringForDependencyRow;
- (int64_t)tsce_numericCompare:(id)compare;
- (void)addDependentWithCellID:(id)d forOwner:(id)owner;
- (void)addPrecedentWithCellID:(id)d forOwner:(id)owner;
@end

@implementation TSCECellDependencyRowPrinter

- (TSCECellDependencyRowPrinter)initWithCellID:(id)d dirtyPrecedentCount:(unint64_t)count
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = TSCECellDependencyRowPrinter;
  v8 = [(TSCECellDependencyRowPrinter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_cellID, d);
    v9->_dirtyPrecedentCount = count;
  }

  return v9;
}

- (int64_t)tsce_numericCompare:(id)compare
{
  compareCopy = compare;
  v8 = objc_msgSend_cellID(self, v5, v6, v7);
  v12 = objc_msgSend_cellID(compareCopy, v9, v10, v11);
  v14 = objc_msgSend_compare_options_(v8, v13, v12, 64);

  return v14;
}

- (void)addPrecedentWithCellID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if (dCopy)
  {
    precedentsList = self->_precedentsList;
    if (!precedentsList)
    {
      v9 = objc_opt_new();
      v10 = self->_precedentsList;
      self->_precedentsList = v9;

      precedentsList = self->_precedentsList;
    }

    objc_msgSend_addEdge_forOwner_(precedentsList, v6, dCopy, ownerCopy);
  }
}

- (void)addDependentWithCellID:(id)d forOwner:(id)owner
{
  dCopy = d;
  ownerCopy = owner;
  if (dCopy)
  {
    dependentsList = self->_dependentsList;
    if (!dependentsList)
    {
      v9 = objc_opt_new();
      v10 = self->_dependentsList;
      self->_dependentsList = v9;

      dependentsList = self->_dependentsList;
    }

    objc_msgSend_addEdge_forOwner_(dependentsList, v6, dCopy, ownerCopy);
  }
}

- (id)stringForDependencyRow
{
  v5 = MEMORY[0x277CCAB68];
  v6 = objc_msgSend_cellID(self, a2, v2, v3);
  v10 = objc_msgSend_dirtyPrecedentCount(self, v7, v8, v9);
  v14 = objc_msgSend_isInCycle(self, v11, v12, v13);
  isFormula = objc_msgSend_isFormula(self, v15, v16, v17);
  v21 = @"CYCLE ";
  if (!v14)
  {
    v21 = &stru_2834BADA0;
  }

  if (isFormula)
  {
    objc_msgSend_stringWithFormat_(v5, v19, @"%@<%lu> %@%@", v20, v6, v10, v21, @"(formula) ");
  }

  else
  {
    objc_msgSend_stringWithFormat_(v5, v19, @"%@<%lu> %@%@", v20, v6, v10, v21, &stru_2834BADA0);
  }
  v22 = ;

  v25 = objc_msgSend_stringForEdgesWithLimit_(self->_precedentsList, v23, 20, v24);
  v28 = objc_msgSend_stringForEdgesWithLimit_(self->_dependentsList, v26, 10, v27);
  if (objc_msgSend_length(v25, v29, v30, v31))
  {
    objc_msgSend_appendFormat_(v22, v32, @"refers to: %@", v34, v25);
  }

  if (objc_msgSend_length(v28, v32, v33, v34))
  {
    objc_msgSend_appendFormat_(v22, v35, @"; referenced by: %@", v36, v28);
  }

  return v22;
}

@end