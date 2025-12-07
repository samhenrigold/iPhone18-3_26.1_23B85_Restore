@interface TSTPencilAnnotationOwner
- (TSCECalculationEngine)calculationEngine;
- (TSKUIDStruct)ownerUID;
- (TSTPencilAnnotationOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forTableModel:(id)model;
- (TSTPencilAnnotationOwner)initWithTableModel:(id)model;
- (TSTPencilAnnotationOwner)initWithTableModel:(id)model ownerUID:(TSKUIDStruct)d annotations:(id)annotations formulaStore:(id)store;
- (TSTTableModel)tableModel;
- (TSUCellRect)cellRangeForAnnotation:(id)annotation;
- (id)_annotationsForIndexes:(id)indexes;
- (id)_annotationsInRows:(id)rows;
- (id)_annotationsIntersectingButNotContainingBaseCellRegion:(id)region;
- (id)_indexesContainedByRegion:(id)region;
- (id)_indexesForRange:(TSUModelCellRect)range startingOnly:(BOOL)only;
- (id)_indexesForRows:(id)rows;
- (id)_indexesIntersectingButNotContainingBaseCellRegion:(id)region;
- (id)annotationsContainedByRegion:(id)region;
- (id)annotationsStartingInRange:(TSUModelCellRect)range;
- (id)removeAnnotation:(id)annotation;
- (id)removeAnnotationAtIndex:(unint64_t)index;
- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d;
- (unint64_t)addAnnotation:(id)annotation withAnchorRange:(TSUCellRect)range;
- (unint64_t)count;
- (unint64_t)indexOfAnnotation:(id)annotation;
- (unint64_t)markForRollback;
- (void)_enumerateAnnotationsAndFormulasWithIndexes:(id)indexes block:(id)block;
- (void)_enumerateIndexesIntersectingRegion:(id)region block:(id)block;
- (void)addAnnotation:(id)annotation withFormula:(id)formula atIndex:(unint64_t)index;
- (void)addAnnotation:(id)annotation withFormulaObject:(id)object atIndex:(unint64_t)index;
- (void)enumerateAnnotationsAndFormulasContainedInRegion:(id)region withBlock:(id)block;
- (void)enumerateAnnotationsAndFormulasInRange:(TSUModelCellRect)range withBlock:(id)block;
- (void)enumerateAnnotationsWithBlock:(id)block;
- (void)remapTableUIDsInFormulasWithMap:(const void *)map;
- (void)removeAllAnnotations;
- (void)removeAnnotations:(id)annotations;
- (void)rollbackToMark:(unint64_t)mark;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setOwnerUID:(TSKUIDStruct)d;
- (void)unregisterFromCalcEngine;
@end

@implementation TSTPencilAnnotationOwner

- (TSTPencilAnnotationOwner)initWithTableModel:(id)model
{
  modelCopy = model;
  *&v23 = objc_msgSend_tableUID(modelCopy, v5, v6, v7);
  *(&v23 + 1) = v8;
  v11 = sub_2212C4930(&v23, 0xA, v9, v10);
  v13 = v12;
  v16 = objc_msgSend_array(MEMORY[0x277D81330], v12, v14, v15);
  v17 = [TSTFormulaStore alloc];
  v19 = objc_msgSend_initWithOwnerUID_(v17, v18, v11, v13);
  v21 = objc_msgSend_initWithTableModel_ownerUID_annotations_formulaStore_(self, v20, modelCopy, v11, v13, v16, v19);

  return v21;
}

- (TSTPencilAnnotationOwner)initWithTableModel:(id)model ownerUID:(TSKUIDStruct)d annotations:(id)annotations formulaStore:(id)store
{
  upper = d._upper;
  lower = d._lower;
  modelCopy = model;
  annotationsCopy = annotations;
  storeCopy = store;
  v17.receiver = self;
  v17.super_class = TSTPencilAnnotationOwner;
  v14 = [(TSTPencilAnnotationOwner *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_tableModel, modelCopy);
    v15->_ownerUID._lower = lower;
    v15->_ownerUID._upper = upper;
    objc_storeStrong(&v15->_annotations, annotations);
    objc_storeStrong(&v15->_formulaStore, store);
  }

  return v15;
}

- (void)setOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78C0();
  }

  v6 = objc_msgSend_tableModel(self, a2, d._lower, d._upper);
  objc_msgSend_willModify(v6, v7, v8, v9);

  self->_ownerUID._lower = lower;
  self->_ownerUID._upper = upper;
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {

    objc_msgSend_setFormulaOwnerUID_(formulaStore, v10, lower, upper);
  }
}

- (int)registerWithCalcEngine:(id)engine baseOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  objc_storeWeak(&self->_calculationEngine, engineCopy);
  v10 = objc_msgSend_formulaStore(self, v7, v8, v9);
  objc_msgSend_setCalcEngine_(v10, v11, engineCopy, v12);

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  v17 = objc_msgSend_ownerUID(self, v14, v15, v16);
  v19 = objc_msgSend_registerOwnerWithOwnerUID_owner_referenceResolver_baseOwnerUID_ownerKind_(WeakRetained, v18, v17, v18, self, 0, d->_lower, d->_upper, 10);

  v23 = objc_msgSend_formulaStore(self, v20, v21, v22);

  if (v23)
  {
    memset(v46, 0, sizeof(v46));
    v47 = 1065353216;
    v45 = xmmword_2217E18D0;
    v27 = objc_msgSend_tableModel(self, v24, v25, v26);
    v31 = objc_msgSend_tableUID(v27, v28, v29, v30);
    v33 = v32;
    v48 = &v45;
    v34 = sub_221230440(v46, &v45, &unk_2217E1941, &v48);
    v34[4] = v31;
    v34[5] = v33;

    objc_msgSend_remapTableUIDsInFormulasWithMap_(self, v35, v46, v36);
    if (!v19)
    {
      v40 = objc_msgSend_formulaStore(self, v37, v38, v39);
      objc_msgSend_registerAllFormulaToCalculationEngine(v40, v41, v42, v43);
    }

    sub_2210BDEC0(v46);
  }

  return v19;
}

- (void)unregisterFromCalcEngine
{
  v5 = objc_msgSend_formulaStore(self, a2, v2, v3);
  objc_msgSend_setCalcEngine_(v5, v6, 0, v7);

  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);
  objc_msgSend_unregisterOwner_(WeakRetained, v9, self->_ownerUID._lower, self->_ownerUID._upper);

  objc_storeWeak(&self->_calculationEngine, 0);
}

- (unint64_t)addAnnotation:(id)annotation withAnchorRange:(TSUCellRect)range
{
  size = range.size;
  origin = range.origin;
  annotationCopy = annotation;
  v11 = objc_msgSend_formulaStore(self, v8, v9, v10);
  Index = objc_msgSend_reserveNextIndex(v11, v12, v13, v14);

  v19 = objc_msgSend_formulaStore(self, v16, v17, v18);
  v23 = objc_msgSend_tableModel(self, v20, v21, v22);
  v31[0] = objc_msgSend_tableUID(v23, v24, v25, v26);
  v31[1] = v27;
  v28 = objc_msgSend_createFormulaObjectForRange_atIndex_tableUID_(v19, v27, origin, size, Index, v31);

  objc_msgSend_addAnnotation_withFormulaObject_atIndex_(self, v29, annotationCopy, v28, Index);
  return Index;
}

- (void)addAnnotation:(id)annotation withFormula:(id)formula atIndex:(unint64_t)index
{
  annotationCopy = annotation;
  formulaCopy = formula;
  v12 = objc_msgSend_annotations(self, v9, v10, v11);
  hasObjectForKey = objc_msgSend_hasObjectForKey_(v12, v13, index, v14);

  if (hasObjectForKey)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPencilAnnotationOwner addAnnotation:withFormula:atIndex:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 133, 0, "Adding a formula at an index that already has an annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v28 = objc_msgSend_tableModel(self, v16, v17, v18);
  objc_msgSend_willModify(v28, v29, v30, v31);

  v35 = objc_msgSend_formulaStore(self, v32, v33, v34);
  objc_msgSend_setFormulaObject_atIndex_(v35, v36, formulaCopy, index);

  v40 = objc_msgSend_annotations(self, v37, v38, v39);
  objc_msgSend_setObject_atIndexedSubscript_(v40, v41, annotationCopy, index);

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78D4();
  }
}

- (void)addAnnotation:(id)annotation withFormulaObject:(id)object atIndex:(unint64_t)index
{
  annotationCopy = annotation;
  objectCopy = object;
  v12 = objc_msgSend_annotations(self, v9, v10, v11);
  hasObjectForKey = objc_msgSend_hasObjectForKey_(v12, v13, index, v14);

  if (hasObjectForKey)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPencilAnnotationOwner addAnnotation:withFormulaObject:atIndex:]", v18);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 143, 0, "Adding a formula at an index that already has an annotation");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
  }

  v28 = objc_msgSend_tableModel(self, v16, v17, v18);
  objc_msgSend_willModify(v28, v29, v30, v31);

  v35 = objc_msgSend_formulaStore(self, v32, v33, v34);
  objc_msgSend_setFormulaObject_atIndex_(v35, v36, objectCopy, index);

  v40 = objc_msgSend_annotations(self, v37, v38, v39);
  objc_msgSend_setObject_atIndexedSubscript_(v40, v41, annotationCopy, index);

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78E8();
  }
}

- (id)removeAnnotation:(id)annotation
{
  v5 = objc_msgSend_indexOfAnnotation_(self, a2, annotation, v3);
  v9 = objc_msgSend_formulaStore(self, v6, v7, v8);
  v12 = objc_msgSend_formulaObjectAtIndex_(v9, v10, v5, v11);

  if (!v12)
  {
    v16 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTPencilAnnotationOwner removeAnnotation:]", v15);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 155, 0, "invalid nil value for '%{public}s'", "formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
  }

  if (TSTPencilCat_init_token != -1)
  {
    sub_2216F78FC();
  }

  v25 = objc_msgSend_tableModel(self, v13, v14, v15);
  objc_msgSend_willModify(v25, v26, v27, v28);

  v32 = objc_msgSend_annotations(self, v29, v30, v31);
  objc_msgSend_setObject_atIndexedSubscript_(v32, v33, 0, v5);

  v37 = objc_msgSend_formulaStore(self, v34, v35, v36);
  objc_msgSend_clearFormulaAtIndex_(v37, v38, v5, v39);

  v43 = objc_msgSend_annotations(self, v40, v41, v42);
  v47 = objc_msgSend_count(v43, v44, v45, v46);
  v51 = objc_msgSend_formulaStore(self, v48, v49, v50);
  v55 = objc_msgSend_formulaCount(v51, v52, v53, v54);

  if (v47 != v55)
  {
    v58 = MEMORY[0x277D81150];
    v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "[TSTPencilAnnotationOwner removeAnnotation:]", v57);
    v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v61);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v59, v62, 164, 0, "Annotations and formulas out of sync!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66);
  }

  return v12;
}

- (void)removeAllAnnotations
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2213D58C8;
  v3[3] = &unk_278464570;
  v3[4] = self;
  objc_msgSend_enumerateAnnotationsWithBlock_(self, a2, v3, v2);
}

- (void)removeAnnotations:(id)annotations
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  annotationsCopy = annotations;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(annotationsCopy, v5, &v12, v16, 16);
  if (v8)
  {
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(annotationsCopy);
        }

        v11 = objc_msgSend_removeAnnotation_(self, v6, *(*(&v12 + 1) + 8 * v10++), v7, v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(annotationsCopy, v6, &v12, v16, 16);
    }

    while (v8);
  }
}

- (id)removeAnnotationAtIndex:(unint64_t)index
{
  v6 = objc_msgSend_annotations(self, a2, index, v3);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, index, v8);

  if (!v9)
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Attempting to remove annotation at bad index %tu!", "[TSTPencilAnnotationOwner removeAnnotationAtIndex:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", 183, index);
    v14 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "[TSTPencilAnnotationOwner removeAnnotationAtIndex:]", v16);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v21, v17, v20, 183, 1, "Attempting to remove annotation at bad index %tu!", index);

    TSUCrashBreakpoint();
    abort();
  }

  v12 = objc_msgSend_removeAnnotation_(self, v10, v9, v11);

  return v12;
}

- (TSUCellRect)cellRangeForAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v10 = objc_msgSend_indexOfAnnotation_(self, v5, annotationCopy, v6);
  origin = 0x7FFF7FFFFFFFLL;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL && (objc_msgSend_annotations(self, v7, v8, v9), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_objectAtIndexedSubscript_(v12, v13, v10, v14), v15 = objc_claimAutoreleasedReturnValue(), v15, v12, v15 == annotationCopy))
  {
    v22 = objc_msgSend_formulaStore(self, v16, v17, v18);
    v24 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v22, v23, v10, 0);
    size = v25;
    v46.origin = v24;
    v46.size = v25;

    v29 = objc_msgSend_tableModel(self, v26, v27, v28);
    v45.origin = objc_msgSend_mergedRangeForBaseCellCoord_(v29, v30, v24, v31);
    v45.size = v32;

    if (TSUCellRect::isValid(&v45))
    {
      if (TSUCellRect::contains(&v45, &v46))
      {
        if (v45.origin.row != v46.origin.row || ((*&v46.origin ^ *&v45.origin) & 0x101FFFF00000000) != 0)
        {
          v35 = MEMORY[0x277D81150];
          v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "[TSTPencilAnnotationOwner cellRangeForAnnotation:]", v34, *&v45.origin);
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v38);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 251, 0, "Unexpected merge range!");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
        }

        v44 = &v45;
        size = v45.size;
      }

      else
      {
        v44 = &v46;
        size = v46.size;
      }
    }

    else
    {
      v44 = &v46;
    }

    origin = v44->origin;
  }

  else
  {
    size = 0;
  }

  v20 = origin;
  v21 = size;
  result.size = v21;
  result.origin = v20;
  return result;
}

- (unint64_t)count
{
  v4 = objc_msgSend_annotations(self, a2, v2, v3);
  v8 = objc_msgSend_count(v4, v5, v6, v7);

  return v8;
}

- (void)enumerateAnnotationsWithBlock:(id)block
{
  blockCopy = block;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7))
  {
    v11 = objc_msgSend_tableModel(self, v8, v9, v10);
    v15 = objc_msgSend_tableInfo(v11, v12, v13, v14);

    if (!v15)
    {
      v19 = MEMORY[0x277D81150];
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTPencilAnnotationOwner enumerateAnnotationsWithBlock:]", v18);
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v22);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v24, v20, v23, 269, 0, "invalid nil value for '%{public}s'", "tableInfo");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
    }

    v28 = objc_msgSend_annotations(self, v16, v17, v18);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_2213D5F9C;
    v32[3] = &unk_278464598;
    v29 = v15;
    v33 = v29;
    v34 = blockCopy;
    objc_msgSend_foreach_(v28, v30, v32, v31);
  }
}

- (void)_enumerateAnnotationsAndFormulasWithIndexes:(id)indexes block:(id)block
{
  indexesCopy = indexes;
  blockCopy = block;
  v11 = objc_msgSend_tableModel(self, v8, v9, v10);
  v15 = objc_msgSend_tableInfo(v11, v12, v13, v14);

  v19 = objc_msgSend_annotations(self, v16, v17, v18);
  v23 = objc_msgSend_formulaStore(self, v20, v21, v22);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_2213D62A0;
  v30[3] = &unk_2784645C0;
  v24 = v19;
  v31 = v24;
  v25 = v15;
  v32 = v25;
  v33 = v23;
  v26 = blockCopy;
  v34 = v26;
  v27 = v23;
  objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v28, v30, v29);
}

- (void)enumerateAnnotationsAndFormulasInRange:(TSUModelCellRect)range withBlock:(id)block
{
  size = range.var0.size;
  origin = range.var0.origin;
  blockCopy = block;
  v8 = objc_msgSend__indexesForRange_startingOnly_(self, v7, origin, size, 0);
  objc_msgSend__enumerateAnnotationsAndFormulasWithIndexes_block_(self, v9, v8, blockCopy);
}

- (void)enumerateAnnotationsAndFormulasContainedInRegion:(id)region withBlock:(id)block
{
  blockCopy = block;
  v8 = objc_msgSend__indexesContainedByRegion_(self, v6, region, v7);
  objc_msgSend__enumerateAnnotationsAndFormulasWithIndexes_block_(self, v9, v8, blockCopy);
}

- (unint64_t)indexOfAnnotation:(id)annotation
{
  annotationCopy = annotation;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0x7FFFFFFFFFFFFFFFLL;
  v8 = objc_msgSend_uuid(annotationCopy, v5, v6, v7);
  v12 = objc_msgSend_annotations(self, v9, v10, v11);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2213D66C0;
  v18[3] = &unk_2784645E8;
  v13 = v8;
  v19 = v13;
  v20 = &v21;
  objc_msgSend_foreach_(v12, v14, v18, v15);

  v16 = v22[3];
  _Block_object_dispose(&v21, 8);

  return v16;
}

- (id)_annotationsForIndexes:(id)indexes
{
  indexesCopy = indexes;
  v8 = objc_msgSend_tableModel(self, v5, v6, v7);
  v12 = objc_msgSend_tableInfo(v8, v9, v10, v11);

  v16 = objc_msgSend_annotations(self, v13, v14, v15);
  v20 = objc_msgSend_array(MEMORY[0x277CBEB18], v17, v18, v19);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_2213D68EC;
  v31[3] = &unk_278464610;
  v21 = v16;
  v32 = v21;
  v22 = v12;
  v33 = v22;
  v23 = v20;
  v34 = v23;
  objc_msgSend_enumerateIndexesUsingBlock_(indexesCopy, v24, v31, v25);
  v29 = objc_msgSend_copy(v23, v26, v27, v28);

  return v29;
}

- (id)annotationsStartingInRange:(TSUModelCellRect)range
{
  size = range.var0.size;
  origin = range.var0.origin;
  if (objc_msgSend_count(self->_annotations, a2, *&range.var0.origin, *&range.var0.size))
  {
    v9 = objc_msgSend__indexesForRange_startingOnly_(self, v6, origin, size, 1);
    v12 = objc_msgSend__annotationsForIndexes_(self, v10, v9, v11);
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEA60], v6, v7, v8);
  }

  return v12;
}

- (id)_annotationsInRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7) && objc_msgSend_count(rowsCopy, v8, v9, v10))
  {
    v11 = objc_msgSend__indexesForRows_(self, v8, rowsCopy, v10);
    v14 = objc_msgSend__annotationsForIndexes_(self, v12, v11, v13);
  }

  else
  {
    v14 = objc_msgSend_array(MEMORY[0x277CBEA60], v8, v9, v10);
  }

  return v14;
}

- (id)annotationsContainedByRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_count(self->_annotations, v5, v6, v7);
  if (regionCopy && v8 && !objc_msgSend_isEmpty(regionCopy, v9, v10, v11))
  {
    v13 = objc_msgSend__indexesContainedByRegion_(self, v9, regionCopy, v11);
    v12 = objc_msgSend__annotationsForIndexes_(self, v14, v13, v15);
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEA60], v9, v10, v11);
  }

  return v12;
}

- (id)_annotationsIntersectingButNotContainingBaseCellRegion:(id)region
{
  regionCopy = region;
  v8 = objc_msgSend_count(self->_annotations, v5, v6, v7);
  if (regionCopy && v8 && !objc_msgSend_isEmpty(regionCopy, v9, v10, v11))
  {
    v13 = objc_msgSend__indexesIntersectingButNotContainingBaseCellRegion_(self, v9, regionCopy, v11);
    v12 = objc_msgSend__annotationsForIndexes_(self, v14, v13, v15);
  }

  else
  {
    v12 = objc_msgSend_array(MEMORY[0x277CBEA60], v9, v10, v11);
  }

  return v12;
}

- (id)_indexesForRange:(TSUModelCellRect)range startingOnly:(BOOL)only
{
  onlyCopy = only;
  var0 = range.var0;
  if (objc_msgSend_count(self->_annotations, a2, *&range.var0.origin, *&range.var0.size))
  {
    v9 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v6, v7, v8);
    v13 = objc_msgSend_tableModel(self, v10, v11, v12);

    if (!v13)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTPencilAnnotationOwner _indexesForRange:startingOnly:]", v15);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 394, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    if (TSUCellRect::isValid(&var0))
    {
      v28 = objc_msgSend_calculationEngine(self, v25, v26, v27);

      if (!v28)
      {
        v31 = MEMORY[0x277D81150];
        v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "[TSTPencilAnnotationOwner _indexesForRange:startingOnly:]", v30);
        v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v34);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 398, 0, "invalid nil value for '%{public}s'", "self.calculationEngine");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
      }

      origin = var0.origin;
      size = var0.size;
      v42 = __C(origin, size);
      v44 = v43;
      v47 = objc_msgSend_tableModel(self, v43, v45, v46);
      v76[0] = v42;
      v76[1] = v44;
      v76[2] = objc_msgSend_tableUID(v47, v48, v49, v50);
      v76[3] = v51;

      v55 = objc_msgSend_calculationEngine(self, v52, v53, v54);
      v72.origin = objc_msgSend_ownerUID(self, v56, v57, v58);
      v72.size = v59;
      if (v55)
      {
        objc_msgSend_formulaCoordsReferringToRange_fromOwner_(v55, v59, v76, &v72);
      }

      else
      {
        v73 = 0;
        v74 = 0;
        v75 = 0;
      }

      v61 = v73;
      v62 = v74;
      if (v73 != v74)
      {
        do
        {
          v64 = objc_msgSend_indexFromCoord_(TSTFormulaStore, v25, v61, v27);
          if (!onlyCopy || (objc_msgSend_formulaStore(self, v25, v63, v27), v65 = objc_claimAutoreleasedReturnValue(), v67 = objc_msgSend_rangeFromFormulaAtIndex_useBoundingRange_(v65, v66, v64, 0), v69 = v68, v65, v72.origin = v67, v72.size = v69, (TSUCellRect::isSpanning(&v72) & 1) != 0) || (v70 = v67, (TSUCellRect::contains(&var0, v70) & 1) != 0))
          {
            objc_msgSend_addIndex_(v9, v25, v64, v27);
          }

          v61 += 8;
        }

        while (v61 != v62);
        v61 = v73;
      }

      if (v61)
      {
        v74 = v61;
        operator delete(v61);
      }
    }

    v60 = objc_msgSend_copy(v9, v25, v26, v27);
  }

  else
  {
    v60 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v6, v7, v8);
  }

  return v60;
}

- (id)_indexesForRows:(id)rows
{
  rowsCopy = rows;
  if (objc_msgSend_count(self->_annotations, v5, v6, v7) && objc_msgSend_count(rowsCopy, v8, v9, v10))
  {
    v11 = objc_msgSend_tableModel(self, v8, v9, v10);

    if (!v11)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTPencilAnnotationOwner _indexesForRows:]", v14);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 427, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    v24 = objc_msgSend_tableModel(self, v12, v13, v14);
    v28 = objc_msgSend_numberOfColumns(v24, v25, v26, v27);

    v32 = objc_msgSend_tableModel(self, v29, v30, v31);
    v36 = objc_msgSend_tableUID(v32, v33, v34, v35);
    v38 = v37;

    v42 = objc_msgSend_ownerUID(self, v39, v40, v41);
    v44 = v43;
    v50 = objc_msgSend_calculationEngine(self, v43, v45, v46);
    if (!v50)
    {
      v51 = MEMORY[0x277D81150];
      v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v47, "[TSTPencilAnnotationOwner _indexesForRows:]", v49);
      v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v54);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v51, v56, v52, v55, 432, 0, "invalid nil value for '%{public}s'", "calcEngine");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v57, v58, v59);
    }

    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = sub_2213D74A4;
    v80 = sub_2213D74B4;
    v81 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v47, v48, v49);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = sub_2213D74BC;
    v68[3] = &unk_278464638;
    v75 = v28;
    v71 = v36;
    v72 = v38;
    v60 = v50;
    v73 = v42;
    v74 = v44;
    v69 = v60;
    v70 = &v76;
    objc_msgSend_enumerateRangesUsingBlock_(rowsCopy, v61, v68, v62);
    v66 = objc_msgSend_copy(v77[5], v63, v64, v65);

    _Block_object_dispose(&v76, 8);
  }

  else
  {
    v66 = objc_msgSend_indexSet(MEMORY[0x277CCAA78], v8, v9, v10);
  }

  return v66;
}

- (void)_enumerateIndexesIntersectingRegion:(id)region block:(id)block
{
  regionCopy = region;
  blockCopy = block;
  v11 = objc_msgSend_count(self->_annotations, v8, v9, v10);
  if (regionCopy && v11 && (objc_msgSend_isEmpty(regionCopy, v12, v13, v14) & 1) == 0)
  {
    v18 = objc_msgSend_tableModel(self, v15, v16, v17);

    if (!v18)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSTPencilAnnotationOwner _enumerateIndexesIntersectingRegion:block:]", v21);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 458, 0, "invalid nil value for '%{public}s'", "self.tableModel");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
    }

    v31 = objc_msgSend_tableModel(self, v19, v20, v21);
    v35 = objc_msgSend_tableUID(v31, v32, v33, v34);
    v76 = v36;
    v37 = v35;

    v41 = objc_msgSend_ownerUID(self, v38, v39, v40);
    v43 = v42;
    v48 = objc_msgSend_calculationEngine(self, v42, v44, v45);
    if (!v48)
    {
      v49 = MEMORY[0x277D81150];
      v50 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "[TSTPencilAnnotationOwner _enumerateIndexesIntersectingRegion:block:]", v47);
      v53 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v52);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v49, v54, v50, v53, 462, 0, "invalid nil value for '%{public}s'", "calcEngine");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v55, v56, v57);
    }

    v58 = regionCopy;
    v62 = objc_msgSend_tableModel(self, v59, v60, v61);
    v66 = objc_msgSend_mergeOwner(v62, v63, v64, v65);

    if (objc_msgSend_mergeRangesPartiallyIntersectBaseCellRegion_(v66, v67, v58, v68))
    {
      v71 = objc_msgSend_expandBaseCellRegionToCoverMergedCells_(v66, v69, v58, v70);

      v58 = v71;
    }

    v77[0] = MEMORY[0x277D85DD0];
    v77[1] = 3221225472;
    v77[2] = sub_2213D797C;
    v77[3] = &unk_278464660;
    v82 = v37;
    v83 = v76;
    v72 = v48;
    v84 = v41;
    v85 = v43;
    v78 = v72;
    selfCopy = self;
    v81 = blockCopy;
    v73 = v58;
    v80 = v73;
    objc_msgSend_enumerateCellRangesUsingBlock_(v73, v74, v77, v75);
  }
}

- (id)_indexesContainedByRegion:(id)region
{
  regionCopy = region;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_2213D74A4;
  v19 = sub_2213D74B4;
  v20 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2213D7CA0;
  v14[3] = &unk_278464688;
  v14[4] = &v15;
  objc_msgSend__enumerateIndexesIntersectingRegion_block_(self, v8, regionCopy, v14);
  v12 = objc_msgSend_copy(v16[5], v9, v10, v11);
  _Block_object_dispose(&v15, 8);

  return v12;
}

- (id)_indexesIntersectingButNotContainingBaseCellRegion:(id)region
{
  regionCopy = region;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_2213D74A4;
  v23 = sub_2213D74B4;
  v24 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v5, v6, v7);
  v11 = objc_msgSend_boundingCellRange(regionCopy, v8, v9, v10);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = sub_2213D7E94;
  v18[3] = &unk_2784646B0;
  v18[5] = v11;
  v18[6] = v12;
  v18[4] = &v19;
  objc_msgSend__enumerateIndexesIntersectingRegion_block_(self, v12, regionCopy, v18);
  v16 = objc_msgSend_copy(v20[5], v13, v14, v15);
  _Block_object_dispose(&v19, 8);

  return v16;
}

- (void)remapTableUIDsInFormulasWithMap:(const void *)map
{
  v27 = objc_msgSend_ownerUID(self, a2, map, v3);
  v28 = v6;
  v7 = sub_221119F90(map, &v27);
  if (v7)
  {
    v11 = v7[4];
    v12 = v7[5];
    if (TSTPencilCat_init_token != -1)
    {
      sub_2216F7910();
    }

    objc_msgSend_setOwnerUID_(self, v8, v11, v12);
  }

  v13 = objc_msgSend_tableModel(self, v8, v9, v10);
  objc_msgSend_willModify(v13, v14, v15, v16);

  v20 = objc_msgSend_formulaStore(self, v17, v18, v19);
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  v27 = objc_msgSend_tableUID(WeakRetained, v22, v23, v24);
  v28 = v25;
  objc_msgSend_remapRangeFormulasToOwnerUID_(v20, v25, &v27, v26);
}

- (unint64_t)markForRollback
{
  v4 = objc_msgSend_formulaStore(self, a2, v2, v3);
  v8 = objc_msgSend_markForRollback(v4, v5, v6, v7);

  return v8;
}

- (void)rollbackToMark:(unint64_t)mark
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);
  objc_msgSend_willModify(WeakRetained, v5, v6, v7);

  v14 = objc_msgSend_formulaStore(self, v8, v9, v10);
  objc_msgSend_rollbackToMark_(v14, v11, mark, v12);
}

- (TSTPencilAnnotationOwner)initWithArchive:(const void *)archive unarchiver:(id)unarchiver forTableModel:(id)model
{
  unarchiverCopy = unarchiver;
  modelCopy = model;
  v9 = TSKUIDStruct::loadFromMessage();
  v11 = v10;
  v48 = v9;
  v49 = v10;
  if ((*(archive + 16) & 2) != 0)
  {
    v18 = [TSTFormulaStore alloc];
    if (*(archive + 7))
    {
      v14 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v18, v19, &v48, *(archive + 7), unarchiverCopy, unarchiverCopy);
    }

    else
    {
      v14 = objc_msgSend_initWithOwnerUID_archive_unarchiver_(v18, v19, &v48, &TST::_FormulaStoreArchive_default_instance_, unarchiverCopy, unarchiverCopy);
    }
  }

  else
  {
    v12 = [TSTFormulaStore alloc];
    v14 = objc_msgSend_initWithOwnerUID_(v12, v13, v9, v11);
  }

  v20 = v14;
  v21 = objc_msgSend_array(MEMORY[0x277D81330], v15, v16, v17, unarchiverCopy);
  v22 = *(archive + 8);
  if (objc_msgSend_formulaCount(v20, v23, v24, v25) != v22)
  {
    v28 = MEMORY[0x277D81150];
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "[TSTPencilAnnotationOwner initWithArchive:unarchiver:forTableModel:]", v27);
    v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTPencilAnnotationOwner.mm", v31);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 716, 0, "Mismatched number of annotations and formulas.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
  }

  if (v22)
  {
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = sub_2213D8428;
    v44[3] = &unk_278464700;
    v45 = v20;
    v46 = v21;
    v47 = modelCopy;
    v37 = v43;
    v38 = objc_opt_class();
    objc_msgSend_readRepeatedReferenceMessage_class_protocol_completion_(v37, v39, archive + 24, v38, 0, v44);
  }

  v40 = objc_msgSend_initWithTableModel_ownerUID_annotations_formulaStore_(self, v26, modelCopy, v48, v49, v21, v20);

  return v40;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v7 = *(archive + 6);
  if (!v7)
  {
    v8 = *(archive + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = MEMORY[0x223DA0300](v8);
    *(archive + 6) = v7;
  }

  TSKUIDStruct::saveToMessage(&self->_ownerUID, v7);
  formulaStore = self->_formulaStore;
  if (formulaStore)
  {
    *(archive + 4) |= 2u;
    v11 = *(archive + 7);
    if (!v11)
    {
      v12 = *(archive + 1);
      if (v12)
      {
        v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
      }

      v11 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaStoreArchive>(v12);
      *(archive + 7) = v11;
    }

    objc_msgSend_saveToArchive_archiver_(formulaStore, v9, v11, archiverCopy);
  }

  annotations = self->_annotations;
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_2213D87D4;
  v24 = &unk_278464728;
  v14 = archiverCopy;
  v25 = v14;
  archiveCopy = archive;
  objc_msgSend_foreach_(annotations, v15, &v21, v16);
  if (objc_msgSend_count(self->_annotations, v17, v18, v19, v21, v22, v23, v24))
  {
    objc_msgSend_requiresDocumentReadVersion_writeVersion_featureIdentifier_(v14, v20, 0x300020000000ALL, *MEMORY[0x277D809A0], @"TSKCellPencilAnnotations");
  }
}

- (TSKUIDStruct)ownerUID
{
  upper = self->_ownerUID._upper;
  lower = self->_ownerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calculationEngine);

  return WeakRetained;
}

- (TSTTableModel)tableModel
{
  WeakRetained = objc_loadWeakRetained(&self->_tableModel);

  return WeakRetained;
}

@end