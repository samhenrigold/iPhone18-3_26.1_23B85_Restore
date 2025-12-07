@interface TSTFormulaStore
+ (TSKUIDStruct)tableUIDFromFormula:(id)formula atCoord:(const TSUModelCellCoord *)coord;
+ (TSUModelCellRect)rangeFromFormulaObject:(id)object atCoord:(const TSUModelCellCoord *)coord;
+ (TSUModelCellRect)rangeFromFormulaObject:(id)object atCoord:(const TSUModelCellCoord *)coord useBoundingRange:(BOOL)range;
+ (id)createFormulaForUIDRange:(const void *)range tableUID:(const TSKUIDStruct *)d;
+ (id)createFormulaForUIDTract:(const void *)tract tableUID:(const TSKUIDStruct *)d;
- (TSCECalculationEngine)calcEngine;
- (TSKUIDStruct)formulaOwnerUID;
- (TSKUIDStruct)tableUIDFromFormulaAtIndex:(unint64_t)index;
- (TSTFormulaStore)initWithOwnerUID:(TSKUIDStruct)d;
- (TSTFormulaStore)initWithOwnerUID:(const TSKUIDStruct *)d archive:(const void *)archive unarchiver:(id)unarchiver;
- (TSUCellCoord)reserveNextCoordinate;
- (TSUModelCellRect)rangeFromFormulaAtIndex:(unint64_t)index useBoundingRange:(BOOL)range;
- (id)createFormulaObjectForRange:(TSUModelCellRect)range atIndex:(unint64_t)index tableUID:(const TSKUIDStruct *)d;
- (id)description;
- (unint64_t)appendIndexedFormula:(id)formula;
- (unint64_t)reserveNextIndex;
- (void)clearFormulaAtIndex:(unint64_t)index formulaReplacer:(id)replacer;
- (void)foreach:(id)foreach;
- (void)registerAllFormulaToCalculationEngine;
- (void)remapRangeFormulasToOwnerUID:(const TSKUIDStruct *)d;
- (void)rollbackToMark:(unint64_t)mark;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)setFormulaObject:(id)object atIndex:(unint64_t)index formulaReplacer:(id)replacer;
- (void)setFormulaOwnerUID:(TSKUIDStruct)d;
@end

@implementation TSTFormulaStore

- (void)setFormulaOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  p_formulaOwnerUID = &self->_formulaOwnerUID;
  if (self->_formulaOwnerUID._lower || self->_formulaOwnerUID._upper)
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    v11 = objc_msgSend_duringSubOwnerUIDUpgrade(WeakRetained, v8, v9, v10);

    if ((v11 & 1) == 0)
    {
      v12 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_removeAllFormulasFromOwner_(v12, v13, p_formulaOwnerUID, v14);
    }
  }

  self->_formulaOwnerUID._lower = lower;
  self->_formulaOwnerUID._upper = upper;
}

- (TSTFormulaStore)initWithOwnerUID:(TSKUIDStruct)d
{
  upper = d._upper;
  lower = d._lower;
  v10.receiver = self;
  v10.super_class = TSTFormulaStore;
  v5 = [(TSTFormulaStore *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_formulaOwnerUID._lower = lower;
    v5->_formulaOwnerUID._upper = upper;
    v7 = objc_opt_new();
    formulas = v6->_formulas;
    v6->_formulas = v7;

    v6->_nextIndex = 0;
  }

  return v6;
}

- (TSUCellCoord)reserveNextCoordinate
{
  Index = objc_msgSend_reserveNextIndex(self, a2, v2, v3);

  return objc_msgSend_coordFromIndex_(TSTFormulaStore, v4, Index, v6);
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p>\n", v6, v4, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211B0AD8;
  v12[3] = &unk_278460990;
  v8 = v7;
  v13 = v8;
  objc_msgSend_foreach_(self, v9, v12, v10);

  return v8;
}

- (unint64_t)reserveNextIndex
{
  nextIndex = self->_nextIndex;
  self->_nextIndex = nextIndex + 1;
  return nextIndex;
}

- (void)rollbackToMark:(unint64_t)mark
{
  if (mark != 0x7FFFFFFFFFFFFFFFLL && self->_nextIndex > mark)
  {
    v14 = v7;
    v15 = v6;
    v16 = v5;
    v17 = v4;
    v18 = v8;
    v19 = v9;
    markCopy = mark;
    do
    {
      objc_msgSend_clearFormulaAtIndex_(self, a2, markCopy++, v3, v14, v15, v16, v17, v18, v19);
    }

    while (markCopy < self->_nextIndex);
    self->_nextIndex = mark;
  }
}

- (unint64_t)appendIndexedFormula:(id)formula
{
  formulaCopy = formula;
  Index = objc_msgSend_reserveNextIndex(self, v5, v6, v7);
  objc_msgSend_setFormulaObject_atIndex_(self, v9, formulaCopy, Index);

  return Index;
}

- (void)setFormulaObject:(id)object atIndex:(unint64_t)index formulaReplacer:(id)replacer
{
  objectCopy = object;
  replacerCopy = replacer;
  objc_msgSend_setObject_forKey_(self->_formulas, v10, objectCopy, index);
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v17 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v12, index, v13);
    if (replacerCopy)
    {
      objc_msgSend_replaceFormula_atCellCoord_inOwner_(replacerCopy, v14, objectCopy, &v17, &self->_formulaOwnerUID);
    }

    else
    {
      v15 = objc_loadWeakRetained(&self->_calcEngine);
      objc_msgSend_replaceFormula_atCellCoord_inOwner_(v15, v16, objectCopy, &v17, &self->_formulaOwnerUID);
    }
  }
}

- (void)clearFormulaAtIndex:(unint64_t)index formulaReplacer:(id)replacer
{
  replacerCopy = replacer;
  v13 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v7, index, v8);
  objc_msgSend_setObject_forKey_(self->_formulas, v9, 0, index);
  if (replacerCopy)
  {
    objc_msgSend_removeFormulaAt_inOwner_(replacerCopy, v10, &v13, &self->_formulaOwnerUID);
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_calcEngine);
    objc_msgSend_removeFormulaAt_inOwner_(WeakRetained, v12, &v13, &self->_formulaOwnerUID);
  }
}

- (void)registerAllFormulaToCalculationEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  if (WeakRetained)
  {
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x9812000000;
    v10[3] = sub_2211B0EE4;
    v10[4] = nullsub_19;
    v10[5] = TSTCategoryAggregateFormulaOwner__ivarLayout;
    v4 = objc_loadWeakRetained(&self->_calcEngine);
    v9.coordinate = 0;
    v9._tableUID = self->_formulaOwnerUID;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v11, v4, &v9);

    formulas = self->_formulas;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = sub_2211B0F34;
    v8[3] = &unk_2784609B8;
    v8[4] = self;
    v8[5] = v10;
    objc_msgSend_foreach_(formulas, v6, v8, v7);
    _Block_object_dispose(v10, 8);
  }
}

- (void)foreach:(id)foreach
{
  foreachCopy = foreach;
  formulas = self->_formulas;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2211B11F0;
  v9[3] = &unk_2784609E0;
  v10 = foreachCopy;
  v6 = foreachCopy;
  objc_msgSend_foreach_(formulas, v7, v9, v8);
}

- (id)createFormulaObjectForRange:(TSUModelCellRect)range atIndex:(unint64_t)index tableUID:(const TSKUIDStruct *)d
{
  size = range.var0.size;
  origin = range.var0.origin;
  v9 = objc_msgSend_coordFromIndex_(TSTFormulaStore, x1_0, index, *&range.var0.size);
  objc_msgSend_formulaOwnerUID(self, v10, v11, v12);
  v23._cppCellTractRef._columns._singleRange._begin = origin;
  v23._cppCellTractRef._columns._singleRange._end = size;
  TSCERangeRef::TSCERangeRef(&v23._cppCellTractRef._columns._multipleRanges, &v23._cppCellTractRef._columns._singleRange, d);
  LOBYTE(v23._cppCellTractRef._columns._singleRange._begin) = 15;
  TSCERangeRef::setPreserveFlags(&v23._cppCellTractRef._columns._multipleRanges, &v23._cppCellTractRef._columns._singleRange);
  v13 = [TSCECellTractRef alloc];
  v16 = objc_msgSend_initWithRangeRef_(v13, v14, &v23._cppCellTractRef._columns._multipleRanges, v15);
  v23.super.isa = v9;
  TSCEFormulaCreationMagic::absColonTractRef(v16, &v23, &v23._cppCellTractRef);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v23._cppCellTractRef, v25, &v23._cppCellTractRef._columns._singleRange._begin);

  v17 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v22, &v23._cppCellTractRef._columns._singleRange);
  v20 = objc_msgSend_initWithCreator_(v17, v18, &v22, v19);

  return v20;
}

+ (id)createFormulaForUIDRange:(const void *)range tableUID:(const TSKUIDStruct *)d
{
  lower = d->_lower;
  upper = d->_upper;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  sub_221086EBC(&v15, *range, *(range + 1), (*(range + 1) - *range) >> 4);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_221086EBC(&__p, *(range + 3), *(range + 4), (*(range + 4) - *(range + 3)) >> 4);
  TSCEFormulaCreationMagic::uidRef(lower, upper, &v15, &__p, &v18);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v18, v21, &v19);

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v7 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v11, &v19);
  v9 = objc_msgSend_initWithCreator_translationFlags_(v7, v8, &v11, 32);

  return v9;
}

+ (id)createFormulaForUIDTract:(const void *)tract tableUID:(const TSKUIDStruct *)d
{
  lower = d->_lower;
  upper = d->_upper;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  sub_221086EBC(&v15, *tract, *(tract + 1), (*(tract + 1) - *tract) >> 4);
  __p = 0;
  v13 = 0;
  v14 = 0;
  sub_221086EBC(&__p, *(tract + 3), *(tract + 4), (*(tract + 4) - *(tract + 3)) >> 4);
  TSCEFormulaCreationMagic::uidTractRef(lower, upper, &v15, &__p, &v18);
  TSCEFormulaCreationMagic::RANGE_TRACKING_FORMULA(&v18, v21, &v19);

  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v15)
  {
    v16 = v15;
    operator delete(v15);
  }

  v7 = [TSCEFormulaObject alloc];
  TSCEFormulaCreator::TSCEFormulaCreator(&v11, &v19);
  v9 = objc_msgSend_initWithCreator_translationFlags_(v7, v8, &v11, 32);

  return v9;
}

- (TSUModelCellRect)rangeFromFormulaAtIndex:(unint64_t)index useBoundingRange:(BOOL)range
{
  rangeCopy = range;
  v8 = objc_msgSend_formulaObjectAtIndex_(self, a2, index, range);
  if (v8)
  {
    v16 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, index, v7);
    v9 = objc_opt_class();
    v11 = objc_msgSend_rangeFromFormulaObject_atCoord_useBoundingRange_(v9, v10, v8, &v16, rangeCopy);
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0x7FFF7FFFFFFFLL;
  }

  v14 = v11;
  v15 = v13;
  result.var0.size = v15;
  result.var0.origin = v14;
  return result;
}

+ (TSUModelCellRect)rangeFromFormulaObject:(id)object atCoord:(const TSUModelCellCoord *)coord
{
  v4 = objc_msgSend_rangeFromFormulaObject_atCoord_useBoundingRange_(self, a2, object, coord, 1);
  result.var0.size = v5;
  result.var0.origin = v4;
  return result;
}

+ (TSUModelCellRect)rangeFromFormulaObject:(id)object atCoord:(const TSUModelCellCoord *)coord useBoundingRange:(BOOL)range
{
  objectCopy = object;
  coord = coord->_coord;
  v23._tableUID._lower = 0;
  v23._tableUID._upper = 0;
  v23.coordinate = coord;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v31, 0, &v23);
  v12 = objc_msgSend_const_astNodeArray(objectCopy, v9, v10, v11);
  sub_2212BB9E8(&v23, v12, &v31, range);
  TSCEASTStreamIterator::rewrite(&v23, v13, v14, v15);
  if (v24 == 1)
  {
    TSUCellRectFromTSCERangeCoordinate();
    v17 = v16;
    v19 = v18;
  }

  else
  {
    v19 = 0;
    v17 = 0x7FFF7FFFFFFFLL;
  }

  v23.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v23, v20);
  v21 = v17;
  v22 = v19;
  result.var0.size = v22;
  result.var0.origin = v21;
  return result;
}

- (TSKUIDStruct)tableUIDFromFormulaAtIndex:(unint64_t)index
{
  v5 = objc_msgSend_formulaObjectAtIndex_(self, a2, index, v3);
  v15 = objc_msgSend_coordFromIndex_(TSTFormulaStore, v6, index, v7);
  v8 = objc_opt_class();
  v10 = objc_msgSend_tableUIDFromFormula_atCoord_(v8, v9, v5, &v15);
  v12 = v11;

  v13 = v10;
  v14 = v12;
  result._upper = v14;
  result._lower = v13;
  return result;
}

+ (TSKUIDStruct)tableUIDFromFormula:(id)formula atCoord:(const TSUModelCellCoord *)coord
{
  formulaCopy = formula;
  coord = coord->_coord;
  v20._tableUID._lower = 0;
  v20._tableUID._upper = 0;
  v20.coordinate = coord;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30, 0, &v20);
  v10 = objc_msgSend_const_astNodeArray(formulaCopy, v7, v8, v9);
  sub_2212BB9E8(&v20, v10, &v30, 1);
  TSCEASTStreamIterator::rewrite(&v20, v11, v12, v13);
  v14 = v21;
  v15 = v22;
  v16 = v23;
  v20.coordinate = &unk_2834A3EA8;

  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  if (!v14)
  {
    v15 = 0;
    v16 = 0;
  }

  TSCEASTStreamIterator::~TSCEASTStreamIterator(&v20, v17);
  v18 = v15;
  v19 = v16;
  result._upper = v19;
  result._lower = v18;
  return result;
}

- (void)remapRangeFormulasToOwnerUID:(const TSKUIDStruct *)d
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_2211B1AC4;
  v4[3] = &unk_278460A08;
  v4[4] = self;
  v4[5] = d;
  objc_msgSend_foreach_(self, a2, v4, v3);
}

- (TSTFormulaStore)initWithOwnerUID:(const TSKUIDStruct *)d archive:(const void *)archive unarchiver:(id)unarchiver
{
  v6 = objc_msgSend_initWithOwnerUID_(self, a2, d->_lower, d->_upper, unarchiver);
  v7 = v6;
  if (v6)
  {
    *(v6 + 40) = *(archive + 12);
    v8 = *(archive + 8);
    if (v8 >= 1)
    {
      v9 = 8;
      do
      {
        v10 = *(*(archive + 5) + v9);
        v11 = *(v10 + 32);
        v12 = [TSCEFormulaObject alloc];
        if (*(v10 + 24))
        {
          isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, *(v10 + 24), 0);
        }

        else
        {
          isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v12, v13, TSCE::_FormulaArchive_default_instance_, 0);
        }

        v16 = isPreUFF;
        objc_msgSend_setObject_forKey_(v7->_formulas, v15, isPreUFF, v11);

        v9 += 8;
        --v8;
      }

      while (v8);
    }
  }

  return v7;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  nextIndex = self->_nextIndex;
  *(archive + 4) |= 1u;
  *(archive + 12) = nextIndex;
  formulas = self->_formulas;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_2211B1D1C;
  v12[3] = &unk_278460A30;
  v13 = archiverCopy;
  archiveCopy = archive;
  v9 = archiverCopy;
  objc_msgSend_foreach_(formulas, v10, v12, v11);
}

- (TSKUIDStruct)formulaOwnerUID
{
  upper = self->_formulaOwnerUID._upper;
  lower = self->_formulaOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSCECalculationEngine)calcEngine
{
  WeakRetained = objc_loadWeakRetained(&self->_calcEngine);

  return WeakRetained;
}

@end