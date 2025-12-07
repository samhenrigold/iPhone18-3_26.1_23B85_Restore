@interface TSTCellFormulaSpec
+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEquivalent:(id)equivalent;
- (BOOL)p_mightBeEqual:(id)equal;
- (NSString)description;
- (TSTCellFormulaSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)object fromTableInfo:(id)info fromCellID:(TSUCellCoord)d;
- (TSTCellFormulaSpec)initWithFormulaObject:(id)object locale:(id)locale;
- (id)cellSpecReplacingFormulaObject:(id)object locale:(id)locale;
- (void)p_computeinteractionType:(id)type;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSTCellFormulaSpec

- (void)p_computeinteractionType:(id)type
{
  typeCopy = type;
  self->_interactionType = 1;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v27);
  v8 = objc_msgSend_const_astNodeArray(self->_formulaObject, v5, v6, v7);
  sub_22113D1F8(v18, v8, &v27, typeCopy);
  TSCEASTStreamIterator::rewrite(v18, v9, v10, v11);
  if (v20)
  {
    v12 = v19;
    if ((v21 & 1) == 0 && (v19 & 1) == 0)
    {
      self->_interactionType = 3;
      self->_categoryAggregateType = v24;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = v19;
  }

  if ((v12 & 1) != 0 && ((v21 | v20) & 1) == 0)
  {
    self->_interactionType = 2;
    v13 = v22;
    v15 = objc_msgSend_detailsWithSymbol_attribute_(TSTStockDetails, v14, v13, v23);
    stockDetails = self->_stockDetails;
    self->_stockDetails = v15;
  }

LABEL_9:
  v18[0] = &unk_2834A1FF0;
  v28 = &v26;
  sub_22113E320(&v28);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v18, v17);
}

- (TSTCellFormulaSpec)initWithFormulaObject:(id)object locale:(id)locale
{
  objectCopy = object;
  localeCopy = locale;
  v27.receiver = self;
  v27.super_class = TSTCellFormulaSpec;
  v11 = [(TSTCellSpec *)&v27 init];
  if (v11)
  {
    if (!objectCopy)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTCellFormulaSpec initWithFormulaObject:locale:]", v10);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellFormulaSpec.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 239, 0, "TSTCellFormulaSpec requires a formula.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
      v16 = 0;
      goto LABEL_6;
    }

    v12 = objc_msgSend_copy(objectCopy, v8, v9, v10);
    formulaObject = v11->_formulaObject;
    v11->_formulaObject = v12;

    objc_msgSend_p_computeinteractionType_(v11, v14, localeCopy, v15);
  }

  v16 = v11;
LABEL_6:

  return v16;
}

- (TSTCellFormulaSpec)initWithFormulaObject:(id)object fromTableInfo:(id)info fromCellID:(TSUCellCoord)d
{
  objectCopy = object;
  infoCopy = info;
  v16 = objc_msgSend_calcEngine(infoCopy, v10, v11, v12);
  if (objectCopy)
  {
    v32.coordinate = d;
    v32._tableUID._lower = objc_msgSend_tableUID(infoCopy, v13, v14, v15);
    v32._tableUID._upper = v17;
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v33, v16, &v32);

    v16 = objc_msgSend_copyByRewritingReferencesToUidForm_(objectCopy, v18, &v33, v19);
    v23 = objc_msgSend_calcEngine(infoCopy, v20, v21, v22);
    v27 = objc_msgSend_documentLocale(v23, v24, v25, v26);
    v29 = objc_msgSend_initWithFormulaObject_locale_(self, v28, v16, v27);
  }

  else
  {
    v23 = objc_msgSend_documentLocale(v16, v13, v14, v15);
    v29 = objc_msgSend_initWithFormulaObject_locale_(self, v30, 0, v23);
  }

  return v29;
}

- (id)cellSpecReplacingFormulaObject:(id)object locale:(id)locale
{
  objectCopy = object;
  localeCopy = locale;
  v7 = [TSTCellFormulaSpec alloc];
  v9 = objc_msgSend_initWithFormulaObject_locale_(v7, v8, objectCopy, localeCopy);

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  formulaObject = self->_formulaObject;
  if (formulaObject)
  {
    v9 = objc_msgSend_description(self->_formulaObject, v4, v5, v6);
    objc_msgSend_stringWithFormat_(v3, v10, @"<%@: %p>: %@", v11, v7, self, v9);
  }

  else
  {
    v9 = @"null formula";
    objc_msgSend_stringWithFormat_(v3, v4, @"<%@: %p>: %@", v6, v7, self, @"null formula");
  }
  v12 = ;
  if (formulaObject)
  {
  }

  return v12;
}

- (BOOL)p_mightBeEqual:(id)equal
{
  equalCopy = equal;
  v8 = objc_msgSend_asFormulaSpec(equalCopy, v5, v6, v7);
  if (v8)
  {
    interactionType = self->_interactionType;
    v13 = interactionType == objc_msgSend_interactionType(v8, v9, v10, v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy || objc_msgSend_p_mightBeEqual_(self, v4, equalCopy, v6))
  {
    formulaObject = self->_formulaObject;
    v9 = objc_msgSend_formulaObject(equalCopy, v4, v5, v6);
    isEqualToFormula = objc_msgSend_isEqualToFormula_(formulaObject, v10, v9, v11);
  }

  else
  {
    isEqualToFormula = 0;
  }

  return isEqualToFormula;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  if (self == equivalentCopy || objc_msgSend_p_mightBeEqual_(self, v4, equivalentCopy, v6))
  {
    formulaObject = self->_formulaObject;
    v9 = objc_msgSend_formulaObject(equivalentCopy, v4, v5, v6);
    isEquivalentToFormula = objc_msgSend_isEquivalentToFormula_(formulaObject, v10, v9, v11);
  }

  else
  {
    isEquivalentToFormula = 0;
  }

  return isEquivalentToFormula;
}

+ (id)instanceWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  v6 = [TSTCellFormulaSpec alloc];
  v8 = objc_msgSend_initWithArchive_unarchiver_(v6, v7, archive, unarchiverCopy);

  return v8;
}

- (TSTCellFormulaSpec)initWithArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (*(archive + 16))
  {
    v11 = [TSCEFormulaObject alloc];
    if (*(archive + 3))
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v11, v12, *(archive + 3), 0);
    }

    else
    {
      isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v11, v12, TSCE::_FormulaArchive_default_instance_, 0);
    }

    v10 = isPreUFF;
  }

  else
  {
    v10 = 0;
  }

  v14 = objc_msgSend_context(unarchiverCopy, v6, v7, v8);
  v18 = objc_msgSend_documentRoot(v14, v15, v16, v17);
  v22 = objc_msgSend_documentLocale(v18, v19, v20, v21);
  v24 = objc_msgSend_initWithFormulaObject_locale_(self, v23, v10, v22);

  return v24;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  v9 = objc_msgSend_interactionType(self, v6, v7, v8);
  *(archive + 4) |= 0x20u;
  *(archive + 16) = v9;
  v14 = objc_msgSend_formulaObject(self, v10, v11, v12);
  if (v14)
  {
    *(archive + 4) |= 1u;
    v15 = *(archive + 3);
    if (!v15)
    {
      v16 = *(archive + 1);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v16);
      *(archive + 3) = v15;
    }

    objc_msgSend_encodeToArchive_archiver_(v14, v13, v15, archiverCopy);
  }
}

@end