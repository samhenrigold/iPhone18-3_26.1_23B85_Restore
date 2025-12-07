@interface TSCETrackedReference
- (BOOL)isEqualToTrackedReference:(id)reference;
- (TSCECellRef)refersToCellRefForCalculationEngine:(SEL)engine referenceTrackerUID:(id)d;
- (TSCETrackedReference)initWithCellRef:(const TSCECellRef *)ref;
- (TSCETrackedReference)initWithRangeRef:(const TSCERangeRef *)ref;
- (TSCETrackedReference)initWithSpanningRangeRef:(const TSCESpanningRangeRef *)ref;
- (TSCETrackedReference)initWithTrackedReferenceTSPObjectDeprecated:(id)deprecated;
- (id)copyWithZone:(_NSZone *)zone;
- (id)getPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d;
- (id)initByCopyingASTNodeArray:(TSCEASTNodeArray *)array atFormulaCoord:(const TSUCellCoord *)coord;
- (id)initFromArchive:(const void *)archive;
- (id)initFromExpandedArchive:(const void *)archive;
- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d;
- (id)referencesForCalcEngine:(id)engine referenceTrackerUID:(const TSKUIDStruct *)d;
- (void)dealloc;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToExpandedArchive:(void *)archive archiver:(id)archiver;
- (void)registerWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner;
- (void)replaceContentsWithContentsOfTrackedReference:(id)reference;
@end

@implementation TSCETrackedReference

- (void)dealloc
{
  TSCEASTNodeArray::freeNodeArray(self->_AST, a2);
  v3.receiver = self;
  v3.super_class = TSCETrackedReference;
  [(TSCETrackedReference *)&v3 dealloc];
}

- (BOOL)isEqualToTrackedReference:(id)reference
{
  referenceCopy = reference;
  v8 = referenceCopy;
  if (referenceCopy && (v9 = objc_msgSend_formulaCoord(referenceCopy, v5, v6, v7), formulaCoord = self->_formulaCoord, formulaCoord.row == v9) && ((*&formulaCoord ^ v9) & 0x101FFFF00000000) == 0)
  {
    AST = self->_AST;
    v17 = objc_msgSend_ast(v8, v10, v11, v12);
    v14 = sub_2215C5CA0(AST, v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (TSCETrackedReference)initWithCellRef:(const TSCECellRef *)ref
{
  v5._upper = self;
  v6 = TSCETrackedReference;
  v3 = objc_msgSendSuper2(&v5._upper, sel_init);
  if (v3)
  {
    v3[2] = 0x7FFF7FFFFFFFLL;
    __C(4uLL);
  }

  return 0;
}

- (TSCETrackedReference)initWithRangeRef:(const TSCERangeRef *)ref
{
  v5._upper = self;
  v6 = TSCETrackedReference;
  v3 = objc_msgSendSuper2(&v5._upper, sel_init);
  if (v3)
  {
    v3[2] = 0x7FFF7FFFFFFFLL;
    __C(4uLL);
  }

  return 0;
}

- (TSCETrackedReference)initWithSpanningRangeRef:(const TSCESpanningRangeRef *)ref
{
  v5.receiver = self;
  v5.super_class = TSCETrackedReference;
  v3 = [(TSCETrackedReference *)&v5 init];
  if (v3)
  {
    v3->_formulaCoord = 0x7FFF7FFFFFFFLL;
    __C(4uLL);
  }

  return 0;
}

- (id)initByCopyingASTNodeArray:(TSCEASTNodeArray *)array atFormulaCoord:(const TSUCellCoord *)coord
{
  v9.receiver = self;
  v9.super_class = TSCETrackedReference;
  v7 = [(TSCETrackedReference *)&v9 init];
  if (v7)
  {
    v7->_AST = TSCEASTNodeArray::copyNodeArray(array, v6);
    v7->_formulaCoord = *coord;
  }

  return v7;
}

- (void)replaceContentsWithContentsOfTrackedReference:(id)reference
{
  referenceCopy = reference;
  if (!referenceCopy)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSCETrackedReference replaceContentsWithContentsOfTrackedReference:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 112, 0, "can't replace contents with contents of a nil tracked reference");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  TSCEASTNodeArray::freeNodeArray(self->_AST, v4);
  self->_AST = TSCEASTNodeArray::copyNodeArray(*(referenceCopy + 1), v15);
  self->_formulaCoord = *(referenceCopy + 2);
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TSCETrackedReference alloc];
  AST = self->_AST;

  return MEMORY[0x2821F9670](v4, sel_initByCopyingASTNodeArray_atFormulaCoord_, AST, &self->_formulaCoord);
}

- (TSCECellRef)refersToCellRefForCalculationEngine:(SEL)engine referenceTrackerUID:(id)d
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x4812000000;
  v14 = sub_221490874;
  v15 = nullsub_82;
  v16 = &unk_22188E88F;
  v18 = 0;
  v19 = 0;
  v17 = 0x7FFF7FFFFFFFLL;
  v6 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(self, engine, d, a5);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22149088C;
  v10[3] = &unk_2784634A0;
  v10[4] = &v11;
  objc_msgSend_foreachCellRef_(v6, v7, v10, v8);
  *retstr = v12[2];

  _Block_object_dispose(&v11, 8);
  return result;
}

- (id)referencesForCalcEngine:(id)engine referenceTrackerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v10 = engineCopy;
  if (engineCopy)
  {
    v11 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v7, v8, v9);
  }

  else
  {
    v11 = objc_opt_new();
  }

  v14 = v11;
  if (v11)
  {
    v37 = 0;
    v38 = *d;
    sub_2212C7294(v34, &v37);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v39, v10, v34);
    AST = self->_AST;
    v19 = objc_msgSend_referenceSet(v14, v16, v17, v18);
    sub_22126254C(v34, AST, &v39, v19);
    v35[33] = 0;
    sub_221262B44(v34, v20, v21, v22);
    v34[0].var0.coordinate = &unk_2834A37F0;

    v37 = v35;
    sub_2211FEAB8(&v37);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v34, v23);
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCETrackedReference referencesForCalcEngine:referenceTrackerUID:]", v13);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 140, 0, "Non-nil TSCEReferenceSetWrapper is required to use referencesForCalcEngine:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  return v14;
}

- (id)getPrecedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d
{
  v4 = objc_msgSend_referencesForCalcEngine_referenceTrackerUID_(self, a2, engine, d);

  return v4;
}

- (id)precedentsWithCalcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d
{
  engineCopy = engine;
  v10 = engineCopy;
  if (engineCopy)
  {
    v11 = objc_msgSend_emptyReferenceSetWrapper(engineCopy, v7, v8, v9);
  }

  else
  {
    v11 = objc_opt_new();
  }

  v14 = v11;
  if (v11)
  {
    v36 = 0;
    v37 = *d;
    sub_2212C7294(v34, &v36);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v38, v10, v34);
    AST = self->_AST;
    v19 = objc_msgSend_referenceSet(v14, v16, v17, v18);
    sub_22126254C(v34, AST, &v38, v19);
    sub_221262B44(v34, v20, v21, v22);
    v34[0].var0.coordinate = &unk_2834A37F0;

    v36 = v35;
    sub_2211FEAB8(&v36);
    TSCEASTStreamIterator::~TSCEASTStreamIterator(v34, v23);
  }

  else
  {
    v24 = MEMORY[0x277D81150];
    v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCETrackedReference precedentsWithCalcEngine:hostOwnerUID:]", v13);
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCETrackedReference.mm", v27);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 160, 0, "Non-nil precedents pointer is required to use precedentsWithCalcEngine:");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
  }

  return v14;
}

- (void)registerWithCalcEngine:(id)engine inOwner:(const TSKUIDStruct *)owner
{
  engineCopy = engine;
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v11, 0, 1);
  v8 = objc_msgSend_precedentsWithCalcEngine_hostOwnerUID_(self, v7, engineCopy, owner);
  TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v10, &v11);
  objc_msgSend_replaceFormulaAt_inOwner_precedents_replaceOptions_(engineCopy, v9, &self->_formulaCoord, owner, v8, &v10);
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  v11 = archiverCopy;
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v9, v6);
    *(archive + 3) = v8;
    archiverCopy = v11;
  }

  sub_2215C8340(v8, self->_AST, archiverCopy);
  v10 = self->_formulaCoord.column + (self->_formulaCoord.row << 15);
  *(archive + 4) |= 2u;
  *(archive + 8) = v10;
}

- (void)encodeToExpandedArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  *(archive + 4) |= 1u;
  v8 = *(archive + 3);
  v13 = archiverCopy;
  if (!v8)
  {
    v9 = *(archive + 1);
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v9, v6);
    *(archive + 3) = v8;
    archiverCopy = v13;
  }

  sub_2215C8340(v8, self->_AST, archiverCopy);
  column = self->_formulaCoord.column;
  v11 = *(archive + 4);
  *(archive + 4) = v11 | 2;
  row = self->_formulaCoord.row;
  *(archive + 4) = v11 | 6;
  *(archive + 8) = column;
  *(archive + 9) = row;
}

- (id)initFromArchive:(const void *)archive
{
  v7.receiver = self;
  v7.super_class = TSCETrackedReference;
  if ([(TSCETrackedReference *)&v7 init])
  {
    v6 = 0;
    if (*(archive + 3))
    {
      v4 = *(archive + 3);
    }

    else
    {
      v4 = &TSCE::_ASTNodeArrayArchive_default_instance_;
    }

    sub_2215C86F8(v4, &v6);
  }

  return 0;
}

- (id)initFromExpandedArchive:(const void *)archive
{
  v7.receiver = self;
  v7.super_class = TSCETrackedReference;
  if ([(TSCETrackedReference *)&v7 init])
  {
    v6 = 0;
    if (*(archive + 3))
    {
      v4 = *(archive + 3);
    }

    else
    {
      v4 = &TSCE::_ASTNodeArrayArchive_default_instance_;
    }

    sub_2215C86F8(v4, &v6);
  }

  return 0;
}

- (TSCETrackedReference)initWithTrackedReferenceTSPObjectDeprecated:(id)deprecated
{
  deprecatedCopy = deprecated;
  v16.receiver = self;
  v16.super_class = TSCETrackedReference;
  v8 = [(TSCETrackedReference *)&v16 init];
  if (v8)
  {
    if (objc_msgSend_ast(deprecatedCopy, v5, v6, v7))
    {
      v12 = objc_msgSend_ast(deprecatedCopy, v9, v10, v11);
      v8->_AST = TSCEASTNodeArray::copyNodeArray(v12, v13);
    }

    v14 = objc_msgSend_formulaID(deprecatedCopy, v9, v10, v11);
    v8->_formulaCoord = ((v14 >> 15) & 0x7FFFFFFF | ((v14 & 0x7FFF) << 32));
  }

  return v8;
}

@end