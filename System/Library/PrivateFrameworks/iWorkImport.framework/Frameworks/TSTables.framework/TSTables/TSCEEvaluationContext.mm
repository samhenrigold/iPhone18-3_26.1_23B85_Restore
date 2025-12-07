@interface TSCEEvaluationContext
+ (id)contextForCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell;
+ (id)contextForCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell inArrayMode:(BOOL)mode;
+ (id)newDateConversionOfString:(id)string context:(id)context;
- (BOOL)evaluationAborted;
- (BOOL)insideFunctor:(unint64_t)functor;
- (TSCECellRef)containingCellRef;
- (TSCEEvaluationContext)initWithCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell inArrayMode:(BOOL)mode;
- (TSCERandGenerator)randGenerator;
- (TSKUIDStruct)containingRowUid;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)loadArgumentsForFunction:(id)function arguments:(void *)arguments numArgs:(unint64_t)args;
- (id)newDateConversionOfString:(id)string;
- (id)raiseErrorOrConvert:(id)convert;
- (id)unwrapThunk:(id)thunk;
- (id)unwrapThunk:(id)thunk takeSideEffects:(BOOL)effects;
- (void)addCalculatedPrecedent:(const TSCEAnyRef *)precedent;
- (void)addCalculatedPrecedentForCategoryRef:(id)ref;
- (void)addCalculatedPrecedents:(const void *)precedents;
- (void)addDateConversionOfString:(id)string toDateValue:(id)value;
- (void)addDynamicPrecedent:(id)precedent;
- (void)addRemoteDataSpecifierInterestedIn:(id)in;
- (void)clearAllWarnings;
- (void)copyWarningsFrom:(id)from;
- (void)dealloc;
- (void)enteringFunctor:(unint64_t)functor;
- (void)exitingFunctor:(unint64_t)functor;
- (void)reportWarning:(id)warning;
- (void)runBlockUnlessAborted:(id)aborted;
- (void)takeSideEffectsFrom:(id)from;
@end

@implementation TSCEEvaluationContext

+ (id)contextForCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell
{
  engineCopy = engine;
  v8 = [TSCEEvaluationContext alloc];
  v10 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v8, v9, engineCopy, table, cell, 1);

  return v10;
}

+ (id)contextForCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell inArrayMode:(BOOL)mode
{
  modeCopy = mode;
  engineCopy = engine;
  v10 = [TSCEEvaluationContext alloc];
  v12 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v10, v11, engineCopy, table, cell, modeCopy);

  return v12;
}

- (TSCEEvaluationContext)initWithCalcEngine:(id)engine containingTable:(const TSKUIDStruct *)table containingCell:(TSUCellCoord)cell inArrayMode:(BOOL)mode
{
  engineCopy = engine;
  v28.receiver = self;
  v28.super_class = TSCEEvaluationContext;
  v11 = [(TSCEEvaluationContext *)&v28 init];
  v15 = v11;
  if (v11)
  {
    v11->_calcEngine = engineCopy;
    v16 = objc_msgSend_documentLocale(engineCopy, v12, v13, v14);
    locale = v15->_locale;
    v15->_locale = v16;

    v15->_inArrayMode = mode;
    *&v15->_suppressCycleCheck = 0;
    *&v15->_wantsCalculatedPrecedents = 257;
    v15->_hasWarnings = 0;
    warnings = v15->_warnings;
    v15->_warnings = 0;

    v15->_containingTable = *table;
    v15->_containingCell = cell;
    TSCESymbolTable::TSCESymbolTable(&v27, v15->_locale);
    TSCESymbolTable::operator=(&v15->_symbolTable, &v27);
    p_tableUuidRefs = &v27._tableUuidRefs;
    sub_2210C8268(&p_tableUuidRefs);
    sub_221087B80(&v27._rangeRefs);
    sub_2210C82EC(&v27._cellRefs);

    remoteDataKeysInterestedIn = v15->_remoteDataKeysInterestedIn;
    v15->_remoteDataKeysInterestedIn = 0;

    v15->_shouldPickupRemoteDataInterests = 0;
    v20 = objc_opt_new();
    valueBindingEnvironment = v15->_valueBindingEnvironment;
    v15->_valueBindingEnvironment = v20;

    if (engineCopy)
    {
      objc_msgSend_emptyReferenceSet(engineCopy, v22, v23, v24);
    }

    else
    {
      TSCEReferenceSet::TSCEReferenceSet(&v27);
    }

    TSCEReferenceSet::operator=(&v15->_calculatedPrecedents, &v27);
    TSCEReferenceSet::~TSCEReferenceSet(&v27);
    recentConversions = v15->_recentConversions;
    v15->_randGenerator = 0;
    v15->_recentConversions = 0;

    *&v15->_hidingActionMask = 0;
  }

  return v15;
}

- (void)dealloc
{
  randGenerator = self->_randGenerator;
  if (randGenerator)
  {
    MEMORY[0x223DA1450](randGenerator, 0x1000C40B98A05D4);
  }

  v4.receiver = self;
  v4.super_class = TSCEEvaluationContext;
  [(TSCEEvaluationContext *)&v4 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  v6 = objc_msgSend_initWithCalcEngine_containingTable_containingCell_inArrayMode_(v4, v5, self->_calcEngine, &self->_containingTable, *&self->_containingCell, self->_inArrayMode);
  v7 = v6;
  if (v6)
  {
    if (v6 != self)
    {
      sub_22116CF34(&v6->_evaluationStack, self->_evaluationStack._evaluationStack.__begin_, self->_evaluationStack._evaluationStack.var0, self->_evaluationStack._evaluationStack.var0 - self->_evaluationStack._evaluationStack.__begin_);
    }

    v7->_evaluationStack._argumentCount = self->_evaluationStack._argumentCount;
    TSCEReferenceSet::operator=(&v7->_calculatedPrecedents, &self->_calculatedPrecedents);
    v7->_calcEngine = self->_calcEngine;
    objc_storeStrong(&v7->_locale, self->_locale);
    v7->_containingTable = self->_containingTable;
    v7->_containingCell = self->_containingCell;
    v7->_inArrayMode = self->_inArrayMode;
    v7->_suppressCycleCheck = self->_suppressCycleCheck;
    v7->_allowAbort = self->_allowAbort;
    v7->_pivotRefsReturnsValueGrid = self->_pivotRefsReturnsValueGrid;
    v7->_isForChartFormulas = self->_isForChartFormulas;
    v7->_wantsCalculatedPrecedents = self->_wantsCalculatedPrecedents;
    v7->_shouldReportWarnings = self->_shouldReportWarnings;
    v7->_hasWarnings = self->_hasWarnings;
    v11 = objc_msgSend_mutableCopy(self->_warnings, v8, v9, v10);
    warnings = v7->_warnings;
    v7->_warnings = v11;

    objc_storeStrong(&v7->_recentConversions, self->_recentConversions);
    shouldPickupRemoteDataInterests = self->_shouldPickupRemoteDataInterests;
    v7->_shouldPickupRemoteDataInterests = shouldPickupRemoteDataInterests;
    if (shouldPickupRemoteDataInterests)
    {
      objc_storeStrong(&v7->_remoteDataKeysInterestedIn, self->_remoteDataKeysInterestedIn);
    }

    v7->_hidingActionMask = self->_hidingActionMask;
    v7->_intersectionRangeContext = self->_intersectionRangeContext;
    TSCESymbolTable::operator=(&v7->_symbolTable, &self->_symbolTable);
    v17 = objc_msgSend_copy(self->_valueBindingEnvironment, v14, v15, v16);
    valueBindingEnvironment = v7->_valueBindingEnvironment;
    v7->_valueBindingEnvironment = v17;
  }

  return v7;
}

- (TSCECellRef)containingCellRef
{
  retstr->coordinate = self[4]._tableUID._lower;
  retstr->_tableUID = *&self[3]._tableUID._upper;
  return self;
}

- (void)clearAllWarnings
{
  objc_msgSend_clearLocalWarnings(self, a2, v2, v3);
  warnings = self->_warnings;

  objc_msgSend_removeAllObjects(warnings, v5, v6, v7);
}

- (void)reportWarning:(id)warning
{
  warningCopy = warning;
  if (warningCopy)
  {
    if (!self->_warnings)
    {
      v6 = objc_opt_new();
      warnings = self->_warnings;
      self->_warnings = v6;
    }

    if (!self->_localWarnings)
    {
      v8 = objc_opt_new();
      localWarnings = self->_localWarnings;
      self->_localWarnings = v8;
    }

    if (self->_insideFunctorStack.__begin_ == self->_insideFunctorStack.__end_)
    {
      objc_msgSend_addObject_(self->_warnings, v4, warningCopy, v5);
    }

    objc_msgSend_addObject_(self->_localWarnings, v4, warningCopy, v5);
  }
}

- (void)copyWarningsFrom:(id)from
{
  v12 = *(from + 9);
  if (objc_msgSend_count(v12, v4, v5, v6))
  {
    warnings = self->_warnings;
    if (!warnings)
    {
      v10 = objc_opt_new();
      v11 = self->_warnings;
      self->_warnings = v10;

      warnings = self->_warnings;
    }

    objc_msgSend_unionSet_(warnings, v7, v12, v8);
  }
}

- (TSKUIDStruct)containingRowUid
{
  lower = self->_containingRowUid._lower;
  if (!lower)
  {
    if (self->_containingRowUid._upper)
    {
      lower = 0;
    }

    else
    {
      v6 = objc_msgSend_calcEngine(self, a2, v2, v3);
      v10 = objc_msgSend_containingTable(self, v7, v8, v9);
      v12 = objc_msgSend_resolverForTableUID_(v6, v11, *v10, v10[1]);

      v16 = v12;
      if (v12 || (objc_msgSend_calcEngine(self, v13, v14, v15), v17 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend_containingTable(self, v18, v19, v20), objc_msgSend_ownerForOwnerUID_(v17, v22, *v21, v21[1]), v23 = objc_claimAutoreleasedReturnValue(), v17, objc_msgSend_linkedResolver(v23, v24, v25, v26), v16 = objc_claimAutoreleasedReturnValue(), v23, v16))
      {
        v27 = objc_msgSend_containingCell(self, v13, v14, v15);
        self->_containingRowUid._lower = objc_msgSend_rowUIDForRowIndex_(v16, v28, *v27, v29);
        self->_containingRowUid._upper = v30;
      }

      lower = self->_containingRowUid._lower;
    }
  }

  upper = self->_containingRowUid._upper;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (void)addDynamicPrecedent:(id)precedent
{
  precedentCopy = precedent;
  v8 = objc_msgSend_nativeType(precedentCopy, v5, v6, v7);
  if (v8 == 6)
  {
    v15 = objc_msgSend_asReferenceValue(precedentCopy, v9, v10, v11);
    v14 = v15;
    if (v15)
    {
      objc_msgSend_anyRef(v15, v16, v17, v18);
      objc_msgSend_addCalculatedPrecedent_(self, v19, v21, v20);
    }

    goto LABEL_9;
  }

  if (v8 == 14)
  {
    v14 = objc_msgSend_asCategoryRef(precedentCopy, v9, v10, v11);
    if (v14)
    {
      objc_msgSend_addCalculatedPrecedentForCategoryRef_(self, v12, v14, v13);
    }

LABEL_9:

    goto LABEL_10;
  }

  if (v8 == 16)
  {
    objc_msgSend_asValueGridValue(precedentCopy, v9, v10, v11);
  }

LABEL_10:
}

- (void)addCalculatedPrecedent:(const TSCEAnyRef *)precedent
{
  if (TSCEAnyRef::isRangeValid(precedent))
  {

    TSCEReferenceSet::insertAnyRef(&self->_calculatedPrecedents, precedent, v5, v6);
  }
}

- (void)addCalculatedPrecedentForCategoryRef:(id)ref
{
  refCopy = ref;
  v8 = objc_msgSend_groupByUid(refCopy, v5, v6, v7);
  if (v8 | v9)
  {
    TSCEReferenceSet::insertRef(&self->_calculatedPrecedents, refCopy);
    v13 = objc_msgSend_copy(refCopy, v10, v11, v12);
    v44 = 0;
    v45 = 0;
    v17 = objc_msgSend_calcEngine(self, v14, v15, v16);
    v21 = objc_msgSend_containingTable(self, v18, v19, v20);
    v24 = objc_msgSend_tableResolverForTableUID_(v17, v22, v21, v23);

    if (v24)
    {
      v28 = objc_msgSend_containingCell(self, v25, v26, v27);
      v44 = objc_msgSend_rowUIDForRowIndex_(v24, v29, *v28, v30);
      v45 = v31;
      v34 = objc_msgSend_absoluteGroupUid(v13, v31, v32, v33);
      if (v34 | v35)
      {
        objc_msgSend_setRelativeGroupUid_(v13, v35, 0, 0);
      }

      v38 = objc_msgSend_calcEngine(self, v35, v36, v37);
      v40 = v38;
      if (v38)
      {
        objc_msgSend_unorderedCellRefsForCategoryRef_atRowUid_(v38, v39, v13, &v44);
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v41 = v42;
      if (v42 != v43)
      {
        do
        {
          TSCEReferenceSet::insertRef(&self->_calculatedPrecedents, v41++);
        }

        while (v41 != v43);
        v41 = v42;
      }

      if (v41)
      {
        operator delete(v41);
      }
    }
  }
}

- (void)addCalculatedPrecedents:(const void *)precedents
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = sub_2212A7FA4;
  v3[3] = &unk_278460D78;
  v3[4] = self;
  TSCECellRefSet::enumerateOwnersUsingBlock(precedents, v3);
}

- (void)takeSideEffectsFrom:(id)from
{
  fromCopy = from;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2212A8278;
  v15[3] = &unk_278461F90;
  v15[4] = self;
  TSCEReferenceSet::forallRefs((fromCopy + 37), v15);
  objc_msgSend_copyWarningsFrom_(self, v5, fromCopy, v6);
  if (self->_shouldPickupRemoteDataInterests && *(fromCopy + 288) == 1)
  {
    v10 = objc_msgSend_remoteDataKeysInterestedIn(fromCopy, v7, v8, v9);

    if (v10)
    {
      remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
      v14 = fromCopy[35];
      if (remoteDataKeysInterestedIn)
      {
        if (remoteDataKeysInterestedIn != v14)
        {
          objc_msgSend_insertSpecifiersFromSet_(remoteDataKeysInterestedIn, v11, v14, v12);
        }
      }

      else
      {
        objc_storeStrong(&self->_remoteDataKeysInterestedIn, fromCopy[35]);
      }
    }
  }
}

- (id)unwrapThunk:(id)thunk takeSideEffects:(BOOL)effects
{
  effectsCopy = effects;
  thunkCopy = thunk;
  if (objc_msgSend_isThunk(thunkCopy, v7, v8, v9))
  {
    v13 = objc_msgSend_asThunkValue(thunkCopy, v10, v11, v12);
    v17 = objc_msgSend_ast(v13, v14, v15, v16);
    v21 = objc_msgSend_copy(self, v18, v19, v20);
    v25 = sub_221250CB8(v17, v21, 0);
    if (effectsCopy)
    {
      objc_msgSend_takeSideEffectsFrom_(self, v22, v21, v24);
      v29 = objc_msgSend_warnings(thunkCopy, v26, v27, v28);
      objc_msgSend_attachWarnings_(v25, v30, v29, v31);
    }

    if (objc_msgSend_isThunk(v25, v22, v23, v24))
    {
      v33 = objc_msgSend_unwrapThunk_takeSideEffects_(self, v32, v25, effectsCopy);
    }

    else
    {
      v33 = v25;
    }

    v34 = v33;
  }

  else
  {
    v34 = thunkCopy;
  }

  return v34;
}

- (id)unwrapThunk:(id)thunk
{
  v3 = objc_msgSend_unwrapThunk_takeSideEffects_(self, a2, thunk, 1);

  return v3;
}

- (void)addRemoteDataSpecifierInterestedIn:(id)in
{
  inCopy = in;
  remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
  v9 = inCopy;
  if (!remoteDataKeysInterestedIn)
  {
    v7 = objc_alloc_init(TSCERemoteDataSpecifierSet);
    v8 = self->_remoteDataKeysInterestedIn;
    self->_remoteDataKeysInterestedIn = v7;

    remoteDataKeysInterestedIn = self->_remoteDataKeysInterestedIn;
    inCopy = v9;
  }

  objc_msgSend_insertSpecifier_(remoteDataKeysInterestedIn, inCopy, inCopy, v5);
}

- (void)enteringFunctor:(unint64_t)functor
{
  end = self->_insideFunctorStack.__end_;
  cap = self->_insideFunctorStack.__cap_;
  if (end >= cap)
  {
    begin = self->_insideFunctorStack.__begin_;
    v9 = end - begin;
    v10 = end - begin;
    v11 = v10 + 1;
    if ((v10 + 1) >> 61)
    {
      sub_22107C148();
    }

    v12 = cap - begin;
    if (v12 >> 2 > v11)
    {
      v11 = v12 >> 2;
    }

    v13 = v12 >= 0x7FFFFFFFFFFFFFF8;
    v14 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v13)
    {
      v14 = v11;
    }

    if (v14)
    {
      sub_2210874C4(&self->_insideFunctorStack, v14);
    }

    v15 = end - begin;
    v16 = (8 * v10);
    v17 = (8 * v10 - 8 * v15);
    *v16 = functor;
    v7 = v16 + 1;
    memcpy(v17, begin, v9);
    v18 = self->_insideFunctorStack.__begin_;
    self->_insideFunctorStack.__begin_ = v17;
    self->_insideFunctorStack.__end_ = v7;
    self->_insideFunctorStack.__cap_ = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    *end = functor;
    v7 = end + 1;
  }

  self->_insideFunctorStack.__end_ = v7;
}

- (void)exitingFunctor:(unint64_t)functor
{
  begin = self->_insideFunctorStack.__begin_;
  end = self->_insideFunctorStack.__end_;
  if (begin == end)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEvaluationContext exitingFunctor:]", v3);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 456, 0, "exitingFunctor, but _insideFunctorStack is empty.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
    begin = self->_insideFunctorStack.__begin_;
    end = self->_insideFunctorStack.__end_;
  }

  if (begin != end)
  {
    v17 = *(end - 1);
    self->_insideFunctorStack.__end_ = end - 1;
    if (v17 != functor)
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEEvaluationContext exitingFunctor:]", v3);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 462, 0, "Its non-sensical to be exitingFunctor when we are inside a different one");

      v27 = MEMORY[0x277D81150];

      objc_msgSend_logBacktraceThrottled(v27, v24, v25, v26);
    }
  }
}

- (BOOL)insideFunctor:(unint64_t)functor
{
  begin = self->_insideFunctorStack.__begin_;
  end = self->_insideFunctorStack.__end_;
  if (begin == end)
  {
    return 0;
  }

  v5 = begin + 1;
  do
  {
    v6 = *(v5 - 1);
    result = v6 == functor;
  }

  while (v6 != functor && v5++ != end);
  return result;
}

- (TSCERandGenerator)randGenerator
{
  result = self->_randGenerator;
  if (!result)
  {
    v4 = objc_msgSend_resolverForTableUID_(self->_calcEngine, a2, self->_containingTable._lower, self->_containingTable._upper);
    v12._lower = objc_msgSend_columnUIDForColumnIndex_(v4, v5, self->_containingCell.column, v6);
    v12._upper = v7;
    v10 = objc_msgSend_rowUIDForRowIndex_(v4, v7, self->_containingCell.row, v8);
    v11 = v9;
    operator new();
  }

  return result;
}

- (id)raiseErrorOrConvert:(id)convert
{
  v4 = objc_msgSend_errorValue_(TSCEErrorValue, a2, convert, v3);

  return v4;
}

- (BOOL)evaluationAborted
{
  if (self->_allowAbort)
  {
    return objc_msgSend_shouldAbortRecalculation(self->_calcEngine, a2, v2, v3);
  }

  else
  {
    return 0;
  }
}

- (void)runBlockUnlessAborted:(id)aborted
{
  abortedCopy = aborted;
  v5 = abortedCopy;
  if (self->_allowAbort)
  {
    v8 = dispatch_group_create();
    if (!v8)
    {
      v9 = MEMORY[0x277D81150];
      v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEEvaluationContext runBlockUnlessAborted:]", v7);
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v12);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 518, 0, "failed to create dispatch group");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    }

    v18 = dispatch_get_global_queue(0, 0);
    dispatch_group_async(v8, v18, v5);

    v19 = dispatch_time(0, 50000000);
    if (dispatch_group_wait(v8, v19))
    {
      do
      {
        if (objc_msgSend_evaluationAborted(self, v20, v21, v22))
        {
          v26 = objc_msgSend_abortError(TSCEError, v23, v24, v25);
          objc_msgSend_raiseException(v26, v27, v28, v29);
        }

        v30 = dispatch_time(0, 50000000);
      }

      while (dispatch_group_wait(v8, v30));
    }
  }

  else
  {
    (*(abortedCopy + 2))(abortedCopy);
  }
}

- (id)loadArgumentsForFunction:(id)function arguments:(void *)arguments numArgs:(unint64_t)args
{
  if (objc_msgSend_evaluationAborted(self, a2, function, arguments))
  {
    v12 = objc_msgSend_evaluationStack(self, v9, v10, v11);
    TSCEEvaluationStack::setArgumentCount(v12, args);
    v16 = objc_msgSend_evaluationStack(self, v13, v14, v15);
    TSCEEvaluationStack::clearArgument(v16, v17, v18, v19);
    v23 = objc_msgSend_abortError(TSCEError, v20, v21, v22);
    goto LABEL_34;
  }

  v24 = *arguments;
  for (i = *(arguments + 1); i != v24; i -= 8)
  {
    v26 = *(i - 8);
  }

  *(arguments + 1) = v24;
  v27 = objc_msgSend_evaluationStack(self, v9, v10, v11);
  TSCEEvaluationStack::setArgumentCount(v27, args);
  v31 = objc_msgSend_minArguments(function, v28, v29, v30);
  v35 = objc_msgSend_maxArguments(function, v32, v33, v34);
  if (v31 > args || v35 < args)
  {
    v39 = objc_msgSend_functionName(function, v36, v37, v38);
    v23 = objc_msgSend_wrongNumberOfArgumentsErrorForFunctionName_provided_(TSCEError, v40, v39, args);

    if (v23)
    {
      goto LABEL_33;
    }
  }

  if (!args)
  {
LABEL_30:
    v23 = 0;
    goto LABEL_33;
  }

  v41 = 0;
  v95 = args - 1;
  while (1)
  {
    v42 = objc_msgSend_argumentSpecForIndex_numArgs_(function, v36, v41, args, v95);
    v46 = v42;
    v96 = 0;
    if (v42 && objc_msgSend_accessorMode(v42, v43, v44, v45) == 4)
    {
      v47 = objc_msgSend_evaluationStack(self, v43, v44, v45);
      v51 = objc_msgSend_argumentType(v46, v48, v49, v50);
      v52 = TSCEEvaluationStack::valueForArgumentAtIndexRepeatingMode(v47, v41, function, self, v46, v51, args);
      v41 = v95;
    }

    else
    {
      v53 = objc_msgSend_evaluationStack(self, v43, v44, v45);
      v52 = TSCEEvaluationStack::rawArgumentAtIndex(v53, v41);
    }

    v54 = v96;
    v96 = v52;

    if (objc_msgSend_isFunctorValue(v96, v55, v56, v57))
    {
      if ((objc_msgSend_acceptsFunctorAtIndex_numArgs_(function, v58, v41, args) & 1) == 0)
      {
        break;
      }
    }

    if (objc_msgSend_rangeContext(v46, v58, v59, v60) != 3)
    {
      v64 = objc_msgSend_rangeContext(v46, v61, v62, v63);
      objc_msgSend_setRangeContextOverride_(v96, v65, v64, v66);
    }

    if (objc_msgSend_unwrapThunk(v46, v61, v62, v63) && objc_msgSend_isThunk(v96, v67, v68, v69))
    {
      v70 = objc_msgSend_unwrapThunk_(self, v67, v96, v69);
      v71 = v96;
      v96 = v70;
    }

    v72 = objc_msgSend_nativeType(v96, v67, v68, v69);
    if (v72 == 1)
    {
      v76 = objc_msgSend_asGridValue(v96, v73, v74, v75);
      v80 = objc_msgSend_dimensions(v76, v81, v82, v83);
      goto LABEL_26;
    }

    if (v72 == 16)
    {
      v76 = objc_msgSend_valueGrid(v96, v73, v74, v75);
      v80 = objc_msgSend_dimensions(v76, v77, v78, v79);
LABEL_26:
      v84 = v80;
      v85 = HIDWORD(v80);

      goto LABEL_28;
    }

    v85 = 1;
    v84 = 1;
LABEL_28:
    v86 = objc_msgSend_functionName(function, v73, v74, v75);
    v23 = objc_msgSend_checkForTooLargeArrayNumColumns_numRows_functionName_(TSCEError, v87, v84, v85, v86);

    if (v23)
    {
      goto LABEL_32;
    }

    sub_221179A54(arguments, &v96);

    if (++v41 >= args)
    {
      goto LABEL_30;
    }
  }

  v88 = objc_msgSend_functionName(function, v58, v59, v60);
  v23 = objc_msgSend_cannotAcceptLambdaError_argIndex_(TSCEError, v89, v88, (v41 + 1));

LABEL_32:
LABEL_33:
  v90 = objc_msgSend_evaluationStack(self, v36, v37, v38);
  TSCEEvaluationStack::clearArgument(v90, v91, v92, v93);
LABEL_34:

  return v23;
}

- (void)addDateConversionOfString:(id)string toDateValue:(id)value
{
  stringCopy = string;
  valueCopy = value;
  if (stringCopy)
  {
    if (self->_recentConversions)
    {
      if (!valueCopy)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v10 = objc_opt_new();
      recentConversions = self->_recentConversions;
      self->_recentConversions = v10;

      if (!valueCopy)
      {
LABEL_6:
        valueCopy = objc_msgSend_null(MEMORY[0x277CBEB68], v6, v7, v8);
      }
    }

    objc_msgSend_setObject_forKey_(self->_recentConversions, v6, valueCopy, stringCopy);
  }
}

- (id)newDateConversionOfString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    goto LABEL_7;
  }

  v10 = objc_msgSend_objectForKey_(self->_recentConversions, v4, stringCopy, v5);
  if (!v10)
  {
    v13 = objc_msgSend_locale(self, v7, v8, v9);
    v12 = TSUCreateDateFromString();

    objc_msgSend_addDateConversionOfString_toDateValue_(self, v14, stringCopy, v12);
    goto LABEL_8;
  }

  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v7, v8, v9);

  if (v10 == v11)
  {

LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10;
LABEL_8:

  return v12;
}

+ (id)newDateConversionOfString:(id)string context:(id)context
{
  stringCopy = string;
  contextCopy = context;
  v9 = contextCopy;
  if (contextCopy)
  {
    v10 = objc_msgSend_newDateConversionOfString_(contextCopy, v7, stringCopy, v8);
  }

  else
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "+[TSCEEvaluationContext newDateConversionOfString:context:]", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEEvaluationContext.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 680, 0, "Should not have reached this point with a NULL context - you are lucky you are getting any date at all.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    if (stringCopy)
    {
      v23 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v20, v21, v22);
      v10 = TSUCreateDateFromString();
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id).cxx_construct
{
  TSCEEvaluationStack::TSCEEvaluationStack(&self->_evaluationStack);
  TSCESymbolTable::TSCESymbolTable(&self->_symbolTable);
  self->_insideFunctorStack.__begin_ = 0;
  self->_insideFunctorStack.__end_ = 0;
  self->_insideFunctorStack.__cap_ = 0;
  TSCEReferenceSet::TSCEReferenceSet(&self->_calculatedPrecedents);
  return self;
}

@end