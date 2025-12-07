@interface TSTFormulaPredicate
+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell;
- (BOOL)evaluateAtCellID:(TSUCellCoord)d onOwnerUID:(const TSKUIDStruct *)iD calcEngine:(id)engine;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualForInspector:(id)inspector atHostCoordinate:(TSUCellCoord)coordinate;
- (BOOL)p_isEqualForNonFormulaItems:(id)items;
- (BOOL)p_testDataTypesForArg0:(unsigned __int8)arg0 arg1:(unsigned __int8)arg1 arg2:(unsigned __int8)arg2 predShouldReturn:(BOOL *)return;
- (TSCECrossTableReference)crossTableRefParam1;
- (TSCECrossTableReference)crossTableRefParam2;
- (TSCEFormulaCreator)p_creatorForPeriodBoundaryWithScale:(unsigned __int8)w2_0 direction:(unsigned __int8)w3_0 offset:(id)offset argIndex:(unsigned int)index earlierBound:(BOOL)bound isCalPers:(BOOL)pers;
- (TSCEUidCellRef)hostCellRef;
- (TSTFormulaPredArg)predArg1;
- (TSTFormulaPredArg)predArg2;
- (TSTFormulaPredicate)init;
- (TSTFormulaPredicate)initWithLiteralDateType:(unsigned __int8)type date1:(id)date1 date2:(id)date2 number1:(double)number1 number2:(double)number2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)self0 hostCell:(TSUCellCoord)self1 forConditionalStyle:(BOOL)self2;
- (TSTFormulaPredicate)initWithLiteralDurationType:(unsigned __int8)type duration1:(double)duration1 durationUnits1:(unsigned __int8)units1 duration2:(double)duration2 durationUnits2:(unsigned __int8)units2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)self0;
- (TSTFormulaPredicate)initWithLiteralNumberType:(unsigned __int8)type number1:(double)number1 number2:(double)number2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
- (TSTFormulaPredicate)initWithLiteralTextType:(unsigned __int8)type string:(id)string argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg0:(id)arg0 arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 forConditionalStyle:(BOOL)style;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0;
- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0;
- (id).cxx_construct;
- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d;
- (id)copyByConvertingBaseToChrome:(id)chrome inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByConvertingChromeToBase:(id)base inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset;
- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block;
- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate;
- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell;
- (id)copyByUpgradingToLinkedRefForTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell;
- (id)copyToGeometricFormForHiddenRowsWithTableInfo:(id)info containsBadRef:(BOOL *)ref;
- (id)copyToUidFormForConditionalStylesWithTableInfo:(id)info containingCell:(TSUCellCoord)cell preserveHostCell:(BOOL)hostCell;
- (id)copyToUidFormForHiddenRowsWithTableInfo:(id)info;
- (id)copyWithZone:(_NSZone *)zone;
- (id)downgradeForPrePivotFormatForLocale:(id)locale;
- (id)durationParam1;
- (id)durationParam2;
- (id)initFromArchive:(const void *)archive;
- (id)initFromPrePivotArchive:(const void *)archive;
- (id)predicateArg1atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine;
- (id)predicateArg2atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine;
- (unint64_t)hash;
- (unsigned)expectedArgTypeForPredicateType:(unsigned __int8)type firstArg:(BOOL)arg;
- (unsigned)p_argTypeForPredArg:(id)arg argNum:(unint64_t)num calculationEngine:(id)engine hostCell:(TSUCellCoord)cell;
- (unsigned)predArg0Type;
- (unsigned)predArg1Type;
- (unsigned)predArg2Type;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver encodingForSOS:(BOOL)s;
- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD;
- (void)p_populateMembersFromFormula;
- (void)recreateFormula;
- (void)remapOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error;
- (void)rewriteFormulaWithBlock:(id)block;
- (void)rewriteNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest;
- (void)setArgumentAt:(int64_t)at withPredArg:(id)arg;
- (void)setFormula:(id)formula;
- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD;
- (void)setHostCellRef:(TSCEUidCellRef *)ref;
- (void)upgradeTopAndBottom;
@end

@implementation TSTFormulaPredicate

- (TSTFormulaPredicate)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredicate;
  result = [(TSTFormulaPredicate *)&v3 init];
  if (result)
  {
    *&result->_predicateType = 0;
    result->_qualifier2 = 0;
    *&result->_argIndex0 = -1;
    result->_argIndex2 = -1;
  }

  return result;
}

- (TSTFormulaPredArg)predArg1
{
  predArg1 = self->_predArg1;
  if (!predArg1)
  {
    v6 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, a2, v2, v3);
    v7 = self->_predArg1;
    self->_predArg1 = v6;

    predArg1 = self->_predArg1;
  }

  return predArg1;
}

- (TSTFormulaPredArg)predArg2
{
  predArg2 = self->_predArg2;
  if (!predArg2)
  {
    v6 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, a2, v2, v3);
    v7 = self->_predArg2;
    self->_predArg2 = v6;

    predArg2 = self->_predArg2;
  }

  return predArg2;
}

- (unint64_t)hash
{
  v5 = objc_msgSend_hash(self->_predArg0, a2, v2, v3);
  v9 = v5 | (4 * objc_msgSend_hash(self->_predArg1, v6, v7, v8));
  v13 = v9 | (16 * objc_msgSend_hash(self->_predArg2, v10, v11, v12)) | (self->_qualifier1 << 6) | (self->_qualifier2 << 10) | (self->_predicateType << 14);
  return v13 ^ objc_msgSend_hash(self->_formula, v14, v15, v16);
}

- (BOOL)p_isEqualForNonFormulaItems:(id)items
{
  itemsCopy = items;
  v7 = itemsCopy;
  v14 = 0;
  if (itemsCopy)
  {
    if (self->_predicateType == itemsCopy[16] && self->_qualifier1 == itemsCopy[17] && self->_qualifier2 == itemsCopy[18] && self->_forConditionalStyle == itemsCopy[56])
    {
      predArg0 = self->_predArg0;
      v9 = *(v7 + 4);
      if (predArg0 == v9 || objc_msgSend_isEqual_(predArg0, v5, v9, v6))
      {
        predArg1 = self->_predArg1;
        v11 = *(v7 + 5);
        if (predArg1 == v11 || objc_msgSend_isEqual_(predArg1, v5, v11, v6))
        {
          predArg2 = self->_predArg2;
          v13 = *(v7 + 6);
          if (predArg2 == v13 || (objc_msgSend_isEqual_(predArg2, v5, v13, v6) & 1) != 0)
          {
            v14 = 1;
          }
        }
      }
    }
  }

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), v5 = TSUDynamicCast(), (objc_msgSend_p_isEqualForNonFormulaItems_(self, v6, v5, v7) & 1) != 0))
  {
    v11 = objc_msgSend_const_astNodeArray(self->_formula, v8, v9, v10);
    v15 = objc_msgSend_const_astNodeArray(v5[1], v12, v13, v14);
    v16 = sub_2215C5CA0(v11, v15);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)isEqualForInspector:(id)inspector atHostCoordinate:(TSUCellCoord)coordinate
{
  inspectorCopy = inspector;
  if (objc_msgSend_p_isEqualForNonFormulaItems_(self, v7, inspectorCopy, v8))
  {
    v12 = objc_msgSend_const_astNodeArray(self->_formula, v9, v10, v11);
    v16 = objc_msgSend_const_astNodeArray(inspectorCopy[1], v13, v14, v15);
    if (sub_2215C5CF4(v12, v16, 3, 0, 0))
    {
      isEqual_atHostCoord = 1;
    }

    else
    {
      v19 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v17, *&coordinate, 0);
      v21 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(inspectorCopy, v20, *&coordinate, 0);
      if (objc_msgSend_isEqual_atHostCoord_(v19, v22, v21, *&coordinate))
      {
        v24 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v23, *&coordinate, 0);
        v26 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(inspectorCopy, v25, *&coordinate, 0);
        isEqual_atHostCoord = objc_msgSend_isEqual_atHostCoord_(v24, v27, v26, *&coordinate);
      }

      else
      {
        isEqual_atHostCoord = 0;
      }
    }
  }

  else
  {
    isEqual_atHostCoord = 0;
  }

  return isEqual_atHostCoord;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg0:(id)arg0 arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 forConditionalStyle:(BOOL)style
{
  arg0Copy = arg0;
  arg1Copy = arg1;
  arg2Copy = arg2;
  v21 = objc_msgSend_init(self, v18, v19, v20);
  v22 = v21;
  if (v21)
  {
    objc_storeStrong((v21 + 32), arg0);
    objc_storeStrong(&v22->_predArg1, arg1);
    objc_storeStrong(&v22->_predArg2, arg2);
    v22->_predicateType = type;
    v22->_qualifier1 = qualifier1;
    v22->_qualifier2 = qualifier2;
    v22->_forConditionalStyle = style;
    objc_msgSend_recreateFormula(v22, v23, v24, v25);
  }

  return v22;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0
{
  arg1Copy = arg1;
  arg2Copy = arg2;
  v19 = objc_msgSend_init(self, v16, v17, v18);
  v20 = v19;
  v21 = v19;
  if (v19)
  {
    objc_storeStrong((v19 + 40), arg1);
    objc_storeStrong((v20 + 48), arg2);
    if (style && (*&ref->coordinate != cell.row || ((*&ref->coordinate ^ *&cell) & 0x101FFFF00000000) != 0))
    {
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSTFormulaPredicate initWithPredicateType:arg1:arg2:qualifier1:qualifier2:argumentCellRef:hostCell:forConditionalStyle:]", v23);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v27);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 234, 0, "Conditional styles are not allowed to use anything other than an arg0 of (+0,+0) relative coordinate");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
    }

    v21->_predicateType = type;
    v21->_qualifier1 = qualifier1;
    v21->_qualifier2 = qualifier2;
    v21->_forConditionalStyle = style;
    objc_msgSend_setHostCellCoord_(v21->_predArg1, v22, *&cell, v23);
    objc_msgSend_setHostCellCoord_(*(v20 + 48), v33, *&cell, v34);
    coordinate = ref->coordinate;
    LOBYTE(tableUID._lower) = 0;
    v36 = &tableUID;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&cell, coordinate, v36, v37);
    tableUID = ref->_tableUID;
    v64 = RelativeCellCoordinateFromAbsoluteCoordinates;
    v61[0]._flags = 0;
    TSCERelativeCellCoordinate::setPreserveFlags(&v64, v61);
    if (v21->_forConditionalStyle)
    {
      v60._flags = 0;
      *&v61[0]._flags = ref->_tableUID;
      v62 = 0;
      TSCERelativeCellCoordinate::setPreserveFlags(&v62, &v60);
      if (objc_msgSend_useColumnRefForArg0(v21, v42, v43, v44))
      {
        v62 = 0x7FFFFFFFLL;
      }

      v45 = [TSTFormulaPredArg alloc];
      v48 = objc_msgSend_initWithCrossTableRef_(v45, v46, v61, v47);
    }

    else
    {
      *&v61[0]._flags = tableUID;
      v62 = v64;
      if (objc_msgSend_useColumnRefForArg0(v21, v39, v40, v41))
      {
        LODWORD(v62) = 0x7FFFFFFF;
      }

      v49 = [TSTFormulaPredArg alloc];
      v48 = objc_msgSend_initWithCrossTableRef_(v49, v50, v61, v51);
    }

    predArg0 = v21->_predArg0;
    v21->_predArg0 = v48;

    objc_msgSend_recreateFormula(v21, v53, v54, v55);
  }

  return v21;
}

- (TSTFormulaPredicate)initWithPredicateType:(unsigned __int8)type arg1:(id)arg1 arg2:(id)arg2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell forConditionalStyle:(BOOL)self0
{
  qualifier2Copy = qualifier2;
  qualifier1Copy = qualifier1;
  typeCopy = type;
  arg1Copy = arg1;
  arg2Copy = arg2;
  referenceCopy = reference;
  v22 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v19, v20, v21);
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  v23 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(self, v19, typeCopy, arg1Copy, arg2Copy, qualifier1Copy, qualifier2Copy, v25, cell, style);

  return v23;
}

+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  v5 = 0;
  if (type <= 0x3Cu)
  {
    typeCopy = type;
    if (((1 << type) & 0x1F9CC00C000F9800) != 0)
    {
      v9 = [TSTFormulaPredicate alloc];
      v13 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v10, v11, v12);
      v17 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v14, v15, v16);
      v22 = *&ref->coordinate.row;
      upper = ref->_tableUID._upper;
      v5 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v9, v18, typeCopy, v13, v17, 0, 0, &v22, cell);
    }

    else if (type == 33)
    {
      v20 = [TSTFormulaPredicate alloc];
      v22 = *&ref->coordinate.row;
      upper = ref->_tableUID._upper;
      v5 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(v20, v21, 33, 0, 0, 3, 0, &v22, cell);
    }
  }

  return v5;
}

+ (id)defaultPredicateForType:(unsigned __int8)type argumentCellReference:(id)reference hostCell:(TSUCellCoord)cell
{
  typeCopy = type;
  referenceCopy = reference;
  v12 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v9, v10, v11);
  }

  else
  {
    memset(v15, 0, sizeof(v15));
  }

  v13 = objc_msgSend_defaultPredicateForType_argumentCellRef_hostCell_(self, v9, typeCopy, v15, cell);

  return v13;
}

- (TSCEFormulaCreator)p_creatorForPeriodBoundaryWithScale:(unsigned __int8)w2_0 direction:(unsigned __int8)w3_0 offset:(id)offset argIndex:(unsigned int)index earlierBound:(BOOL)bound isCalPers:(BOOL)pers
{
  persCopy = pers;
  boundCopy = bound;
  v11 = *&index;
  v12 = w2_0;
  v13 = v8;
  offsetCopy = offset;
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      if (boundCopy)
      {
        TSCEFormulaCreationMagic::TODAY(&v297, v14, v15, v16);
        TSUDecimal::operator=();
        v334._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v334, &v294, v40);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v41, v42.var0, v43);
        }

        else
        {
          v290 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v42, &v290, &v291);
        v116.var0 = &v291;
        TSCEFormulaCreationMagic::DURATION(&v294, v116, v315, &v295);
        TSUDecimal::operator=();
        v338._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v338, &v289, v117);
        TSCEFormulaCreationMagic::operator*(&v295, &v289, &v296);
        TSCEFormulaCreationMagic::operator+(&v297, &v296, v13);

        v25 = &v297;
        v26 = &v294;
        var0 = v290;
      }

      else
      {
        TSCEFormulaCreationMagic::TODAY(&v287, v14, v15, v16);
        TSUDecimal::operator=();
        v335._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v335, &v284, v73);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v74, v75.var0, v76);
        }

        else
        {
          v282 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v75, &v282, &v283);
        v118.var0 = &v283;
        TSCEFormulaCreationMagic::DURATION(&v284, v118, v316, &v285);
        TSUDecimal::operator=();
        v339._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v339, &v281, v119);
        TSCEFormulaCreationMagic::operator*(&v285, &v281, &v286);
        TSCEFormulaCreationMagic::operator+(&v287, &v286, &v288);
        TSCEFormulaCreationMagic::duration(3, &v280, 86400.0, v120, v121, v122);
        TSCEFormulaCreationMagic::operator+(&v288, &v280, v13);

        v25 = &v287;
        v26 = &v284;
        var0 = v282;
      }

      goto LABEL_69;
    }

    if (v12 == 3)
    {
      if (persCopy)
      {
        if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(&v279, v14, v15, v16);
          TSCEFormulaCreationMagic::TODAY(&v276, v28, v29, v30);
          TSCEFormulaCreationMagic::WEEKDAY(&v276, v302, &v277);
          TSUDecimal::operator=();
          v332._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v332, &v275, v31);
          TSCEFormulaCreationMagic::operator-(&v277, &v275, &v278);
          TSCEFormulaCreationMagic::operator-(&v279, &v278, v13);

          v25 = &v279;
          v26 = &v276;
          var0 = v277;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(&v273, v14, v15, v16);
          TSCEFormulaCreationMagic::TODAY(&v270, v107, v108, v109);
          TSCEFormulaCreationMagic::WEEKDAY(&v270, v312, &v271);
          TSCEFormulaCreator::TSCEFormulaCreator(&v269, 1);
          TSCEFormulaCreationMagic::operator-(&v271, &v269, &v272);
          TSCEFormulaCreationMagic::operator-(&v273, &v272, &v274);
          TSCEFormulaCreationMagic::duration(3, &v268, 604800.0, v110, v111, v112);
          TSCEFormulaCreationMagic::operator+(&v274, &v268, v13);

          v25 = &v273;
          v26 = &v270;
          var0 = v271;
        }
      }

      else if (boundCopy)
      {
        TSCEFormulaCreationMagic::TODAY(&v267, v14, v15, v16);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v80, v81.var0, v82);
        }

        else
        {
          v263 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v81, &v263, &v264);
        TSUDecimal::operator=();
        v346._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v346, &v262, v144);
        v145.var0 = &v262;
        TSCEFormulaCreationMagic::DURATION(&v264, v145, v323, &v265);
        TSUDecimal::operator=();
        v347._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v347, &v261, v146);
        TSCEFormulaCreationMagic::operator*(&v265, &v261, &v266);
        TSCEFormulaCreationMagic::operator+(&v267, &v266, v13);

        v25 = &v267;
        v26 = &v263;
        var0 = v264;
      }

      else
      {
        TSCEFormulaCreationMagic::TODAY(&v259, v14, v15, v16);
        if (offsetCopy)
        {
          objc_msgSend_formulaCreatorForPredArg(offsetCopy, v113, v114.var0, v115);
        }

        else
        {
          v255 = 0;
        }

        TSCEFormulaCreationMagic::arg(v11, v114, &v255, &v256);
        TSUDecimal::operator=();
        v348._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v348, &v254, v147);
        v148.var0 = &v254;
        TSCEFormulaCreationMagic::DURATION(&v256, v148, v324, &v257);
        TSUDecimal::operator=();
        v349._decimal.w[0] = v293;
        TSCEFormulaCreationMagic::number(v292, v349, &v253, v149);
        TSCEFormulaCreationMagic::operator*(&v257, &v253, &v258);
        TSCEFormulaCreationMagic::operator+(&v259, &v258, &v260);
        TSCEFormulaCreationMagic::duration(3, &v252, 86400.0, v150, v151, v152);
        TSCEFormulaCreationMagic::operator+(&v260, &v252, v13);

        v25 = &v259;
        v26 = &v255;
        var0 = v256;
      }

      goto LABEL_69;
    }
  }

  else
  {
    switch(v12)
    {
      case 4:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(&v250, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v250, v303, &v251);
            TSCEFormulaCreationMagic::TODAY(&v248, v32, v33, v34);
            TSCEFormulaCreationMagic::MONTH(&v248, v304, &v249);
            TSUDecimal::operator=();
            v333._decimal.w[0] = v293;
            TSCEFormulaCreationMagic::number(v292, v333, &v247, v35);
            v36.var0 = &v249;
            v37.var0 = &v247;
            TSCEFormulaCreationMagic::DATE(&v251, v36, v37, v326, v13);

            v25 = &v250;
            v26 = &v251;
            var0 = v248;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(&v245, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v245, v306, &v246);
            TSCEFormulaCreationMagic::TODAY(&v242, v83, v84, v85);
            TSCEFormulaCreationMagic::MONTH(&v242, v307, &v243);
            TSCEFormulaCreator::TSCEFormulaCreator(&v241, 1);
            TSCEFormulaCreationMagic::operator+(&v243, &v241, &v244);
            TSUDecimal::operator=();
            v336._decimal.w[0] = v293;
            TSCEFormulaCreationMagic::number(v292, v336, &v240, v86);
            v87.var0 = &v244;
            v88.var0 = &v240;
            TSCEFormulaCreationMagic::DATE(&v246, v87, v88, v328, v13);

            v25 = &v245;
            v26 = &v246;
            var0 = v242;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(&v239, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v67, v68.var0, v69);
          }

          else
          {
            v236 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v68, &v236, &v237);
          TSUDecimal::operator=();
          v340._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v340, &v235, v123);
          TSCEFormulaCreationMagic::operator*(&v237, &v235, &v238);
          v124.var0 = &v238;
          TSCEFormulaCreationMagic::EDATE(&v239, v124, v317, v13);

          v25 = &v239;
          v26 = &v236;
          var0 = v237;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(&v233, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v89, v90.var0, v91);
          }

          else
          {
            v230 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v90, &v230, &v231);
          TSUDecimal::operator=();
          v341._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v341, &v229, v125);
          TSCEFormulaCreationMagic::operator*(&v231, &v229, &v232);
          v126.var0 = &v232;
          TSCEFormulaCreationMagic::EDATE(&v233, v126, v318, &v234);
          TSCEFormulaCreationMagic::duration(3, &v228, 86400.0, v127, v128, v129);
          TSCEFormulaCreationMagic::operator+(&v234, &v228, v13);

          v25 = &v233;
          v26 = &v230;
          var0 = v231;
        }

        goto LABEL_69;
      case 5:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(&v178, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v178, v305, &v179);
            TSCEFormulaCreator::TSCEFormulaCreator(&v177, 1);
            TSCEFormulaCreator::TSCEFormulaCreator(&v176, 1);
            v38.var0 = &v177;
            v39.var0 = &v176;
            TSCEFormulaCreationMagic::DATE(&v179, v38, v39, v327, v13);

            v25 = &v178;
            v26 = &v179;
            var0 = v177.var0;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(&v173, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v173, v308, &v174);
            TSCEFormulaCreator::TSCEFormulaCreator(&v172, 1);
            TSCEFormulaCreationMagic::operator+(&v174, &v172, &v175);
            TSCEFormulaCreator::TSCEFormulaCreator(&v171, 1);
            TSCEFormulaCreator::TSCEFormulaCreator(&v170, 1);
            v92.var0 = &v171;
            v93.var0 = &v170;
            TSCEFormulaCreationMagic::DATE(&v175, v92, v93, v329, v13);

            v25 = &v173;
            v26 = &v174;
            var0 = v172.var0;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(&v169, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v70, v71.var0, v72);
          }

          else
          {
            v165 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v71, &v165, &v166);
          TSCEFormulaCreator::TSCEFormulaCreator(&v164, 12);
          TSCEFormulaCreationMagic::operator*(&v166, &v164, &v167);
          TSUDecimal::operator=();
          v342._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v342, &v163, v130);
          TSCEFormulaCreationMagic::operator*(&v167, &v163, &v168);
          v131.var0 = &v168;
          TSCEFormulaCreationMagic::EDATE(&v169, v131, v319, v13);

          v25 = &v169;
          v26 = &v165;
          var0 = v166;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(&v161, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v94, v95.var0, v96);
          }

          else
          {
            v157 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v95, &v157, &v158);
          TSCEFormulaCreator::TSCEFormulaCreator(&v156, 12);
          TSCEFormulaCreationMagic::operator*(&v158, &v156, &v159);
          TSUDecimal::operator=();
          v343._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v343, &v155, v132);
          TSCEFormulaCreationMagic::operator*(&v159, &v155, &v160);
          v133.var0 = &v160;
          TSCEFormulaCreationMagic::EDATE(&v161, v133, v320, &v162);
          TSCEFormulaCreationMagic::duration(3, &v154, 86400.0, v134, v135, v136);
          TSCEFormulaCreationMagic::operator+(&v162, &v154, v13);

          v25 = &v161;
          v26 = &v157;
          var0 = v158;
        }

        goto LABEL_69;
      case 8:
        if (persCopy)
        {
          if (boundCopy)
          {
            TSCEFormulaCreationMagic::TODAY(&v226, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v226, v299, &v227);
            TSCEFormulaCreationMagic::TODAY(&v218, v18, v19, v20);
            TSCEFormulaCreationMagic::MONTH(&v218, v300, &v219);
            TSCEFormulaCreator::TSCEFormulaCreator(&v217, 3);
            TSCEFormulaCreationMagic::operator/(&v219, &v217, &v220);
            TSCEFormulaCreator::TSCEFormulaCreator(&v216, 1);
            v21.var0 = &v216;
            TSCEFormulaCreationMagic::CEILING(&v220, v21, v313, &v221);
            TSCEFormulaCreator::TSCEFormulaCreator(&v215, 1);
            TSCEFormulaCreationMagic::operator-(&v221, &v215, &v222);
            TSCEFormulaCreationMagic::parens(&v222, v301, &v223);
            TSCEFormulaCreator::TSCEFormulaCreator(&v214, 3);
            TSCEFormulaCreationMagic::operator*(&v223, &v214, &v224);
            TSCEFormulaCreator::TSCEFormulaCreator(&v213, 1);
            TSCEFormulaCreationMagic::operator+(&v224, &v213, &v225);
            TSUDecimal::operator=();
            v331._decimal.w[0] = v293;
            TSCEFormulaCreationMagic::number(v292, v331, &v212, v22);
            v23.var0 = &v225;
            v24.var0 = &v212;
            TSCEFormulaCreationMagic::DATE(&v227, v23, v24, v325, v13);

            v25 = &v226;
            v26 = &v227;
            var0 = v218;
          }

          else
          {
            TSCEFormulaCreationMagic::TODAY(&v210, v14, v15, v16);
            TSCEFormulaCreationMagic::YEAR(&v210, v309, &v211);
            TSCEFormulaCreationMagic::TODAY(&v202, v97, v98, v99);
            TSCEFormulaCreationMagic::MONTH(&v202, v310, &v203);
            TSCEFormulaCreator::TSCEFormulaCreator(&v201, 3);
            TSCEFormulaCreationMagic::operator/(&v203, &v201, &v204);
            TSCEFormulaCreator::TSCEFormulaCreator(&v200, 1);
            v100.var0 = &v200;
            TSCEFormulaCreationMagic::CEILING(&v204, v100, v314, &v205);
            TSCEFormulaCreator::TSCEFormulaCreator(&v199, 1);
            TSCEFormulaCreationMagic::operator-(&v205, &v199, &v206);
            TSCEFormulaCreationMagic::parens(&v206, v311, &v207);
            TSCEFormulaCreator::TSCEFormulaCreator(&v198, 3);
            TSCEFormulaCreationMagic::operator*(&v207, &v198, &v208);
            TSCEFormulaCreator::TSCEFormulaCreator(&v197, 4);
            TSCEFormulaCreationMagic::operator+(&v208, &v197, &v209);
            TSUDecimal::operator=();
            v337._decimal.w[0] = v293;
            TSCEFormulaCreationMagic::number(v292, v337, &v196, v101);
            v102.var0 = &v209;
            v103.var0 = &v196;
            TSCEFormulaCreationMagic::DATE(&v211, v102, v103, v330, v13);

            v25 = &v210;
            v26 = &v211;
            var0 = v202;
          }
        }

        else if (boundCopy)
        {
          TSCEFormulaCreationMagic::TODAY(&v195, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v77, v78.var0, v79);
          }

          else
          {
            v191 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v78, &v191, &v192);
          TSCEFormulaCreator::TSCEFormulaCreator(&v190, 3);
          TSCEFormulaCreationMagic::operator*(&v192, &v190, &v193);
          TSUDecimal::operator=();
          v344._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v344, &v189, v137);
          TSCEFormulaCreationMagic::operator*(&v193, &v189, &v194);
          v138.var0 = &v194;
          TSCEFormulaCreationMagic::EDATE(&v195, v138, v321, v13);

          v25 = &v195;
          v26 = &v191;
          var0 = v192;
        }

        else
        {
          TSCEFormulaCreationMagic::TODAY(&v187, v14, v15, v16);
          if (offsetCopy)
          {
            objc_msgSend_formulaCreatorForPredArg(offsetCopy, v104, v105.var0, v106);
          }

          else
          {
            v183 = 0;
          }

          TSCEFormulaCreationMagic::arg(v11, v105, &v183, &v184);
          TSCEFormulaCreator::TSCEFormulaCreator(&v182, 3);
          TSCEFormulaCreationMagic::operator*(&v184, &v182, &v185);
          TSUDecimal::operator=();
          v345._decimal.w[0] = v293;
          TSCEFormulaCreationMagic::number(v292, v345, &v181, v139);
          TSCEFormulaCreationMagic::operator*(&v185, &v181, &v186);
          v140.var0 = &v186;
          TSCEFormulaCreationMagic::EDATE(&v187, v140, v322, &v188);
          TSCEFormulaCreationMagic::duration(3, &v180, 86400.0, v141, v142, v143);
          TSCEFormulaCreationMagic::operator+(&v188, &v180, v13);

          v25 = &v187;
          v26 = &v183;
          var0 = v184;
        }

LABEL_69:

        goto LABEL_70;
    }
  }

  v44 = MEMORY[0x277D81150];
  v45 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTFormulaPredicate p_creatorForPeriodBoundaryWithScale:direction:offset:argIndex:earlierBound:isCalPers:]", v16);
  v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v46, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v47);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v44, v49, v45, v48, 467, 0, "Not a valid date scale");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v50, v51, v52);
  v53 = MEMORY[0x277D81150];
  v56 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v54, "[TSTFormulaPredicate p_creatorForPeriodBoundaryWithScale:direction:offset:argIndex:earlierBound:isCalPers:]", v55);
  v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v57, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v58);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v53, v60, v56, v59, 471, 0, "This is expected to be unreachable.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v61, v62, v63);
  TSCEFormulaCreationMagic::nop(v13, v64, v65, v66);
LABEL_70:

  return v153;
}

- (TSTFormulaPredicate)initWithLiteralDateType:(unsigned __int8)type date1:(id)date1 date2:(id)date2 number1:(double)number1 number2:(double)number2 qualifier1:(unsigned __int8)qualifier1 qualifier2:(unsigned __int8)qualifier2 argumentCellRef:(TSCECellRef *)self0 hostCell:(TSUCellCoord)self1 forConditionalStyle:(BOOL)self2
{
  qualifier2Copy = qualifier2;
  qualifier1Copy = qualifier1;
  typeCopy = type;
  date1Copy = date1;
  date2Copy = date2;
  v22 = [TSTFormulaPredArg alloc];
  if (date1Copy)
  {
    v26 = objc_msgSend_initWithDate_(v22, v23, date1Copy, v25);
  }

  else
  {
    v26 = objc_msgSend_initWithDouble_(v22, v23, v24, v25, number1);
  }

  v27 = v26;
  v28 = [TSTFormulaPredArg alloc];
  if (date2Copy)
  {
    v32 = objc_msgSend_initWithDate_(v28, v29, date2Copy, v31);
  }

  else
  {
    v32 = objc_msgSend_initWithDouble_(v28, v29, v30, v31, number2);
  }

  v34 = v32;
  v37 = *&ref->coordinate.row;
  upper = ref->_tableUID._upper;
  v35 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(self, v33, typeCopy, v27, v32, qualifier1Copy, qualifier2Copy, &v37, cell, style);

  return v35;
}

- (TSTFormulaPredicate)initWithLiteralNumberType:(unsigned __int8)type number1:(double)number1 number2:(double)number2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  qualifierCopy = qualifier;
  typeCopy = type;
  v15 = [TSTFormulaPredArg alloc];
  v19 = objc_msgSend_initWithDouble_(v15, v16, v17, v18, number1);
  v20 = [TSTFormulaPredArg alloc];
  v24 = objc_msgSend_initWithDouble_(v20, v21, v22, v23, number2);
  v28 = *ref;
  v26 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v25, typeCopy, v19, v24, qualifierCopy, 0, &v28, cell);

  return v26;
}

- (TSTFormulaPredicate)initWithLiteralDurationType:(unsigned __int8)type duration1:(double)duration1 durationUnits1:(unsigned __int8)units1 duration2:(double)duration2 durationUnits2:(unsigned __int8)units2 qualifier:(unsigned __int8)qualifier argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)self0
{
  qualifierCopy = qualifier;
  units2Copy = units2;
  units1Copy = units1;
  typeCopy = type;
  v19 = [TSTFormulaPredArg alloc];
  v22 = objc_msgSend_initWithDuration_units_(v19, v20, units1Copy, v21, duration1);
  v23 = [TSTFormulaPredArg alloc];
  v26 = objc_msgSend_initWithDuration_units_(v23, v24, units2Copy, v25, duration2);
  v30 = *ref;
  v28 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v27, typeCopy, v22, v26, qualifierCopy, 0, &v30, cell);

  return v28;
}

- (TSTFormulaPredicate)initWithLiteralTextType:(unsigned __int8)type string:(id)string argumentCellRef:(TSCECellRef *)ref hostCell:(TSUCellCoord)cell
{
  typeCopy = type;
  stringCopy = string;
  v11 = [TSTFormulaPredArg alloc];
  v14 = objc_msgSend_initWithString_(v11, v12, stringCopy, v13);
  v18 = objc_msgSend_defaultPredicateArg(TSTFormulaPredArg, v15, v16, v17);
  v22 = *ref;
  v20 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_(self, v19, typeCopy, v14, v18, 0, 0, &v22, cell);

  return v20;
}

- (void)recreateFormula
{
  if (!self->_predArg0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], x1_0, "[TSTFormulaPredicate recreateFormula]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 596, 0, "Should already have _predArg0 defined");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  predArg1 = self->_predArg1;
  if (predArg1)
  {
    v15 = objc_msgSend_convertToRelativeRefIfPossible(predArg1, x1_0, v2, v3);
    v16 = self->_predArg1;
    self->_predArg1 = v15;
  }

  predArg2 = self->_predArg2;
  if (predArg2)
  {
    v18 = objc_msgSend_convertToRelativeRefIfPossible(predArg2, x1_0, v2, v3);
    v19 = self->_predArg2;
    self->_predArg2 = v18;
  }

  predArg0 = self->_predArg0;
  forConditionalStyle = self->_forConditionalStyle;
  v22 = objc_msgSend_useColumnRefForArg0(self, x1_0, v2, v3);
  if (predArg0)
  {
    objc_msgSend_formulaCreatorForPredArg0UsingLinkedRef_useColumnRef_(predArg0, v23, forConditionalStyle, v22);
  }

  else
  {
    v735.var0 = 0;
  }

  v26 = self->_predArg1;
  if (v26)
  {
    objc_msgSend_formulaCreatorForPredArg(v26, v23, v24, v25);
  }

  else
  {
    TSCEFormulaCreationMagic::nop(&v734, v23, v24, v25);
  }

  v30 = self->_predArg2;
  if (v30)
  {
    objc_msgSend_formulaCreatorForPredArg(v30, v27, v28, v29);
  }

  else
  {
    TSCEFormulaCreationMagic::nop(&v733, v27, v28, v29);
  }

  TSCEFormulaCreationMagic::nop(&v732, v31, v32, v33);
  switch(self->_predicateType)
  {
    case 1u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v632, &v734);
      sub_2214413CC(&v633, &v632);
      TSCEFormulaCreator::TSCEFormulaCreator(&v630, &v735);
      sub_22144136C(&v631, &v630);
      v154.var0 = &v631;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v633, v154, v831, &v634);
      TSUDecimal::operator=();
      v911._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v911, &v629, v155);
      v156.var0 = &v629;
      TSCEFormulaCreationMagic::EQ(&v634, v156, v832, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v157, v158);

      var0 = v632.var0;
      goto LABEL_64;
    case 2u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v627, &v734);
      sub_2214413CC(&v628, &v627);
      TSCEFormulaCreator::TSCEFormulaCreator(&v624, &v735);
      sub_22144136C(&v625, &v624);
      TSCEFormulaCreator::TSCEFormulaCreator(&v622, &v734);
      TSCEFormulaCreationMagic::LEN(&v622, v750, &v623);
      v162.var0 = &v623;
      TSCEFormulaCreationMagic::RIGHT(&v625, v162, v834, &v626);
      v163.var0 = &v626;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v628, v163, v835, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v164, v165);

      var0 = v627.var0;
      goto LABEL_64;
    case 3u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v642, &v734);
      sub_2214413CC(&v643, &v642);
      TSCEFormulaCreator::TSCEFormulaCreator(&v640, &v735);
      sub_22144136C(&v641, &v640);
      v166.var0 = &v641;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v643, v166, v836, &v644);
      TSCEFormulaCreationMagic::ISERROR(&v644, v751, &v645);
      TSCEFormulaCreationMagic::NOT(&v645, v752, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v167, v168);

      var0 = v642.var0;
      goto LABEL_64;
    case 4u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v637, &v734);
      sub_2214413CC(&v638, &v637);
      TSCEFormulaCreator::TSCEFormulaCreator(&v635, &v735);
      sub_22144136C(&v636, &v635);
      v159.var0 = &v636;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v638, v159, v833, &v639);
      TSCEFormulaCreationMagic::ISERROR(&v639, v749, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v160, v161);

      var0 = v637.var0;
      goto LABEL_64;
    case 5u:
    case 0x26u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v729, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v729);
      TSCEFormulaCreationMagic::arg(0, v804, &v355, &v730);

      TSCEFormulaCreator::TSCEFormulaCreator(&v727, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v727);
      TSCEFormulaCreationMagic::arg(1, v805, &v355, &v728);

      v71.var0 = &v728;
      TSCEFormulaCreationMagic::EQ(&v730, v71, v806, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v72, v73);

      var0 = v729.var0;
      goto LABEL_64;
    case 6u:
    case 0x27u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v725, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v725);
      TSCEFormulaCreationMagic::arg(0, v798, &v355, &v726);

      TSCEFormulaCreator::TSCEFormulaCreator(&v723, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v723);
      TSCEFormulaCreationMagic::arg(1, v799, &v355, &v724);

      v65.var0 = &v724;
      TSCEFormulaCreationMagic::NE(&v726, v65, v800, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v66, v67);

      var0 = v725.var0;
      goto LABEL_64;
    case 7u:
    case 0x28u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v721, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v721);
      TSCEFormulaCreationMagic::arg(0, v807, &v355, &v722);

      TSCEFormulaCreator::TSCEFormulaCreator(&v719, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v719);
      TSCEFormulaCreationMagic::arg(1, v808, &v355, &v720);

      v74.var0 = &v720;
      TSCEFormulaCreationMagic::GT(&v722, v74, v809, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v75, v76);

      var0 = v721.var0;
      goto LABEL_64;
    case 8u:
    case 0x29u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v717, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v717);
      TSCEFormulaCreationMagic::arg(0, v801, &v355, &v718);

      TSCEFormulaCreator::TSCEFormulaCreator(&v715, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v715);
      TSCEFormulaCreationMagic::arg(1, v802, &v355, &v716);

      v68.var0 = &v716;
      TSCEFormulaCreationMagic::GE(&v718, v68, v803, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v69, v70);

      var0 = v717.var0;
      goto LABEL_64;
    case 9u:
    case 0x2Au:
      TSCEFormulaCreator::TSCEFormulaCreator(&v713, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v713);
      TSCEFormulaCreationMagic::arg(0, v795, &v355, &v714);

      TSCEFormulaCreator::TSCEFormulaCreator(&v711, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v711);
      TSCEFormulaCreationMagic::arg(1, v796, &v355, &v712);

      v62.var0 = &v712;
      TSCEFormulaCreationMagic::LT(&v714, v62, v797, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v63, v64);

      var0 = v713.var0;
      goto LABEL_64;
    case 0xAu:
    case 0x2Bu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v709, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v709);
      TSCEFormulaCreationMagic::arg(0, v810, &v355, &v710);

      TSCEFormulaCreator::TSCEFormulaCreator(&v707, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v707);
      TSCEFormulaCreationMagic::arg(1, v811, &v355, &v708);

      v77.var0 = &v708;
      TSCEFormulaCreationMagic::LE(&v710, v77, v812, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v78, v79);

      var0 = v709.var0;
      goto LABEL_64;
    case 0xBu:
    case 0xCu:
    case 0xFu:
    case 0x10u:
    case 0x2Eu:
    case 0x2Fu:
    case 0x34u:
    case 0x35u:
    case 0x36u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v651, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v651);
      TSCEFormulaCreationMagic::arg(0, v772, &v355, &v652);

      TSCEFormulaCreationMagic::SUM(&v652, v736, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v35, v36);

      var0 = v651.var0;
      goto LABEL_64;
    case 0xDu:
    case 0x2Cu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v690, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v690);
      TSCEFormulaCreationMagic::arg(1, v775, &v355, &v691);

      TSCEFormulaCreator::TSCEFormulaCreator(&v688, &v733);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v688);
      TSCEFormulaCreationMagic::arg(2, v776, &v355, &v689);

      v40.var0 = &v689;
      TSCEFormulaCreationMagic::LE(&v691, v40, v777, &v692);
      TSCEFormulaCreator::TSCEFormulaCreator(&v684, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v684);
      TSCEFormulaCreationMagic::arg(0, v778, &v355, &v685);

      TSCEFormulaCreator::TSCEFormulaCreator(&v683, &v734);
      v41.var0 = &v683;
      TSCEFormulaCreationMagic::GE(&v685, v41, v779, &v686);
      TSCEFormulaCreator::TSCEFormulaCreator(&v681, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v680, &v733);
      v42.var0 = &v680;
      TSCEFormulaCreationMagic::LE(&v681, v42, v780, &v682);
      v43.var0 = &v682;
      TSCEFormulaCreationMagic::AND(&v686, v43, v781, &v687);
      TSCEFormulaCreator::TSCEFormulaCreator(&v677, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v676, &v733);
      v44.var0 = &v676;
      TSCEFormulaCreationMagic::GE(&v677, v44, v782, &v678);
      TSCEFormulaCreator::TSCEFormulaCreator(&v674, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v673, &v734);
      v45.var0 = &v673;
      TSCEFormulaCreationMagic::LE(&v674, v45, v783, &v675);
      v46.var0 = &v675;
      TSCEFormulaCreationMagic::AND(&v678, v46, v784, &v679);
      v47.var0 = &v687;
      v48.var0 = &v679;
      TSCEFormulaCreationMagic::IF(&v692, v47, v48, v895, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v49, v50);

      var0 = v690.var0;
      goto LABEL_64;
    case 0x11u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v570, &v735);
      sub_22144136C(&v571, &v570);
      TSCEFormulaCreationMagic::TODAY(&v569, v122, v123, v124);
      v125.var0 = &v569;
      TSCEFormulaCreationMagic::GE(&v571, v125, v824, &v572);
      TSCEFormulaCreator::TSCEFormulaCreator(&v567, &v735);
      TSCEFormulaCreationMagic::TODAY(&v565, v126, v127, v128);
      TSCEFormulaCreationMagic::duration(3, &v564, 86400.0, v129, v130, v131);
      TSCEFormulaCreationMagic::operator+(&v565, &v564, &v566);
      v132.var0 = &v566;
      TSCEFormulaCreationMagic::LT(&v567, v132, v825, &v568);
      v133.var0 = &v568;
      TSCEFormulaCreationMagic::AND(&v572, v133, v826, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v134, v135);

      var0 = v570.var0;
      goto LABEL_64;
    case 0x12u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v561, &v735);
      sub_22144136C(&v562, &v561);
      TSCEFormulaCreationMagic::TODAY(&v559, v201, v202, v203);
      TSCEFormulaCreationMagic::duration(3, &v558, 86400.0, v204, v205, v206);
      TSCEFormulaCreationMagic::operator-(&v559, &v558, &v560);
      v207.var0 = &v560;
      TSCEFormulaCreationMagic::GE(&v562, v207, v843, &v563);
      TSCEFormulaCreator::TSCEFormulaCreator(&v556, &v735);
      TSCEFormulaCreationMagic::TODAY(&v555, v208, v209, v210);
      v211.var0 = &v555;
      TSCEFormulaCreationMagic::LT(&v556, v211, v844, &v557);
      v212.var0 = &v557;
      TSCEFormulaCreationMagic::AND(&v563, v212, v845, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v213, v214);

      var0 = v561.var0;
      goto LABEL_64;
    case 0x13u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v552, &v735);
      sub_22144136C(&v553, &v552);
      TSCEFormulaCreationMagic::TODAY(&v550, v229, v230, v231);
      TSCEFormulaCreationMagic::duration(3, &v549, 86400.0, v232, v233, v234);
      TSCEFormulaCreationMagic::operator+(&v550, &v549, &v551);
      v235.var0 = &v551;
      TSCEFormulaCreationMagic::GE(&v553, v235, v850, &v554);
      TSCEFormulaCreator::TSCEFormulaCreator(&v547, &v735);
      TSCEFormulaCreationMagic::TODAY(&v545, v236, v237, v238);
      TSCEFormulaCreationMagic::duration(3, &v544, 172800.0, v239, v240, v241);
      TSCEFormulaCreationMagic::operator+(&v545, &v544, &v546);
      v242.var0 = &v546;
      TSCEFormulaCreationMagic::LT(&v547, v242, v851, &v548);
      v243.var0 = &v548;
      TSCEFormulaCreationMagic::AND(&v554, v243, v852, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v244, v245);

      var0 = v552.var0;
      goto LABEL_64;
    case 0x14u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v540, &v734);
      sub_2214413CC(&v541, &v540);
      TSCEFormulaCreationMagic::YEAR(&v541, v759, &v542);
      TSCEFormulaCreator::TSCEFormulaCreator(&v537, &v735);
      sub_22144136C(&v538, &v537);
      TSCEFormulaCreationMagic::YEAR(&v538, v760, &v539);
      v286.var0 = &v539;
      TSCEFormulaCreationMagic::EQ(&v542, v286, v870, &v543);
      TSCEFormulaCreator::TSCEFormulaCreator(&v534, &v734);
      TSCEFormulaCreationMagic::MONTH(&v534, v761, &v535);
      TSCEFormulaCreator::TSCEFormulaCreator(&v532, &v735);
      TSCEFormulaCreationMagic::MONTH(&v532, v762, &v533);
      v287.var0 = &v533;
      TSCEFormulaCreationMagic::EQ(&v535, v287, v871, &v536);
      TSCEFormulaCreator::TSCEFormulaCreator(&v529, &v734);
      TSCEFormulaCreationMagic::DAY(&v529, v763, &v530);
      TSCEFormulaCreator::TSCEFormulaCreator(&v527, &v735);
      TSCEFormulaCreationMagic::DAY(&v527, v764, &v528);
      v288.var0 = &v528;
      TSCEFormulaCreationMagic::EQ(&v530, v288, v872, &v531);
      v289.var0 = &v536;
      v290.var0 = &v531;
      TSCEFormulaCreationMagic::AND(&v543, v289, v290, v903, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v291, v292);

      var0 = v540.var0;
      goto LABEL_64;
    case 0x15u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v524, &v735);
      sub_22144136C(&v525, &v524);
      TSCEFormulaCreator::TSCEFormulaCreator(&v522, &v734);
      sub_2214413CC(&v523, &v522);
      v282.var0 = &v523;
      TSCEFormulaCreationMagic::LT(&v525, v282, v868, &v526);
      TSCEFormulaCreator::TSCEFormulaCreator(&v519, &v735);
      TSCEFormulaCreationMagic::ISBLANK(&v519, v757, &v520);
      TSCEFormulaCreationMagic::NOT(&v520, v758, &v521);
      v283.var0 = &v521;
      TSCEFormulaCreationMagic::AND(&v526, v283, v869, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v284, v285);

      var0 = v524.var0;
      goto LABEL_64;
    case 0x16u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v517, &v735);
      sub_22144136C(&v518, &v517);
      TSCEFormulaCreator::TSCEFormulaCreator(&v514, &v734);
      sub_2214413CC(&v515, &v514);
      TSCEFormulaCreationMagic::duration(3, &v513, 86400.0, v169, v170, v171);
      TSCEFormulaCreationMagic::operator+(&v515, &v513, &v516);
      v172.var0 = &v516;
      TSCEFormulaCreationMagic::GE(&v518, v172, v837, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v173, v174);

      var0 = v517.var0;
      goto LABEL_64;
    case 0x17u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v510, &v734);
      sub_2214413CC(&v511, &v510);
      TSCEFormulaCreator::TSCEFormulaCreator(&v508, &v733);
      sub_22144142C(&v509, &v508);
      v265.var0 = &v509;
      TSCEFormulaCreationMagic::LE(&v511, v265, v861, &v512);
      TSCEFormulaCreator::TSCEFormulaCreator(&v504, &v735);
      sub_22144136C(&v505, &v504);
      TSCEFormulaCreator::TSCEFormulaCreator(&v503, &v734);
      v266.var0 = &v503;
      TSCEFormulaCreationMagic::GE(&v505, v266, v862, &v506);
      TSCEFormulaCreator::TSCEFormulaCreator(&v501, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v499, &v733);
      TSCEFormulaCreationMagic::duration(3, &v498, 86400.0, v267, v268, v269);
      TSCEFormulaCreationMagic::operator+(&v499, &v498, &v500);
      v270.var0 = &v500;
      TSCEFormulaCreationMagic::LT(&v501, v270, v863, &v502);
      v271.var0 = &v502;
      TSCEFormulaCreationMagic::AND(&v506, v271, v864, &v507);
      TSCEFormulaCreator::TSCEFormulaCreator(&v495, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v494, &v733);
      v272.var0 = &v494;
      TSCEFormulaCreationMagic::GE(&v495, v272, v865, &v496);
      TSCEFormulaCreator::TSCEFormulaCreator(&v492, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v490, &v734);
      TSCEFormulaCreationMagic::duration(3, &v489, 86400.0, v273, v274, v275);
      TSCEFormulaCreationMagic::operator+(&v490, &v489, &v491);
      v276.var0 = &v491;
      TSCEFormulaCreationMagic::LT(&v492, v276, v866, &v493);
      v277.var0 = &v493;
      TSCEFormulaCreationMagic::AND(&v496, v277, v867, &v497);
      v278.var0 = &v507;
      v279.var0 = &v497;
      TSCEFormulaCreationMagic::IF(&v512, v278, v279, v902, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v280, v281);

      var0 = v510.var0;
      goto LABEL_64;
    case 0x18u:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, 7, self->_predArg1, 1, 0, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v486, &v735);
      sub_22144136C(&v487, &v486);
      TSCEFormulaCreationMagic::TODAY(&v485, v89, v90, v91);
      v92.var0 = &v485;
      TSCEFormulaCreationMagic::GE(&v487, v92, v816, &v488);
      TSCEFormulaCreator::TSCEFormulaCreator(&v483, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v482, &v355);
      v93.var0 = &v482;
      TSCEFormulaCreationMagic::LT(&v483, v93, v817, &v484);
      v94.var0 = &v484;
      TSCEFormulaCreationMagic::AND(&v488, v94, v818, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v95, v96);

      v86 = v486.var0;
      goto LABEL_63;
    case 0x19u:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, 6, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v479, &v735);
      sub_22144136C(&v480, &v479);
      TSCEFormulaCreator::TSCEFormulaCreator(&v478, &v355);
      v188.var0 = &v478;
      TSCEFormulaCreationMagic::GE(&v480, v188, v840, &v481);
      TSCEFormulaCreator::TSCEFormulaCreator(&v476, &v735);
      TSCEFormulaCreationMagic::TODAY(&v474, v189, v190, v191);
      TSCEFormulaCreationMagic::duration(3, &v473, 86400.0, v192, v193, v194);
      TSCEFormulaCreationMagic::operator+(&v474, &v473, &v475);
      v195.var0 = &v475;
      TSCEFormulaCreationMagic::LT(&v476, v195, v841, &v477);
      v196.var0 = &v477;
      TSCEFormulaCreationMagic::AND(&v481, v196, v842, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v197, v198);

      v86 = v479.var0;
      goto LABEL_63;
    case 0x1Au:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v469, &v735);
      sub_22144136C(&v470, &v469);
      TSCEFormulaCreator::TSCEFormulaCreator(&v468, &v731);
      TSCEFormulaCreationMagic::string(@"D", &v467);
      v223.var0 = &v468;
      v224.var0 = &v467;
      TSCEFormulaCreationMagic::DATEDIF(&v470, v223, v224, v900, &v471);
      TSUDecimal::operator=();
      v913._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v913, &v466, v225);
      v226.var0 = &v466;
      TSCEFormulaCreationMagic::EQ(&v471, v226, v849, &v472);
      TSCEFormulaCreator::operator=(&v732, &v472.var0, v227, v228);

      var0 = v731.var0;
      goto LABEL_64;
    case 0x1Bu:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 1, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v463, &v735);
      sub_22144136C(&v464, &v463);
      TSCEFormulaCreator::TSCEFormulaCreator(&v462, &v355);
      v82.var0 = &v462;
      TSCEFormulaCreationMagic::LT(&v464, v82, v814, &v465);
      TSCEFormulaCreator::TSCEFormulaCreator(&v459, &v735);
      TSCEFormulaCreationMagic::ISBLANK(&v459, v740, &v460);
      TSCEFormulaCreationMagic::NOT(&v460, v741, &v461);
      v83.var0 = &v461;
      TSCEFormulaCreationMagic::AND(&v465, v83, v815, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v84, v85);

      v86 = v463.var0;
      goto LABEL_63;
    case 0x1Cu:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, self->_qualifier2, self->_predArg1, 1, 0, 0);
      TSCEFormulaCreator::TSCEFormulaCreator(&v457, &v735);
      sub_22144136C(&v458, &v457);
      TSCEFormulaCreator::TSCEFormulaCreator(&v456, &v355);
      v246.var0 = &v456;
      TSCEFormulaCreationMagic::GE(&v458, v246, v853, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v247, v248);

      v86 = v457.var0;
      goto LABEL_63;
    case 0x1Du:
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v34, self->_qualifier1, self->_qualifier2, self->_predArg1, 3, 1, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v249, self->_qualifier1, self->_qualifier2, self->_predArg2, 3, 0, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v250, self->_qualifier1, self->_qualifier2, self->_predArg1, 3, 0, 0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v251, self->_qualifier1, self->_qualifier2, self->_predArg2, 3, 1, 0);
      qualifier2 = self->_qualifier2;
      if (qualifier2 == 6)
      {
        TSCEFormulaCreator::TSCEFormulaCreator(&v431, &v734);
        sub_2214413CC(&v432, &v431);
        TSCEFormulaCreator::TSCEFormulaCreator(&v429, &v733);
        sub_22144142C(&v430, &v429);
        v344.var0 = &v430;
        TSCEFormulaCreationMagic::LE(&v432, v344, v888, &v433);
        TSCEFormulaCreator::TSCEFormulaCreator(&v425, &v735);
        sub_22144136C(&v426, &v425);
        TSCEFormulaCreator::TSCEFormulaCreator(&v424, &v455);
        v345.var0 = &v424;
        TSCEFormulaCreationMagic::GE(&v426, v345, v889, &v427);
        TSCEFormulaCreator::TSCEFormulaCreator(&v422, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v421, &v472);
        v346.var0 = &v421;
        TSCEFormulaCreationMagic::LT(&v422, v346, v890, &v423);
        v347.var0 = &v423;
        TSCEFormulaCreationMagic::AND(&v427, v347, v891, &v428);
        TSCEFormulaCreator::TSCEFormulaCreator(&v418, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v417, &v355);
        v348.var0 = &v417;
        TSCEFormulaCreationMagic::GE(&v418, v348, v892, &v419);
        TSCEFormulaCreator::TSCEFormulaCreator(&v415, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v414, &v731);
        v349.var0 = &v414;
        TSCEFormulaCreationMagic::LT(&v415, v349, v893, &v416);
        v350.var0 = &v416;
        TSCEFormulaCreationMagic::AND(&v419, v350, v894, &v420);
        v351.var0 = &v428;
        v352.var0 = &v420;
        TSCEFormulaCreationMagic::IF(&v433, v351, v352, v907, &v454);
        TSCEFormulaCreator::operator=(&v732, &v454, v353, v354);

        v264 = v431.var0;
      }

      else
      {
        if (qualifier2 != 7)
        {
LABEL_62:

          v86 = v731.var0;
LABEL_63:

          var0 = v355.var0;
LABEL_64:

LABEL_65:
          __C(1uLL);
        }

        TSCEFormulaCreator::TSCEFormulaCreator(&v451, &v734);
        sub_2214413CC(&v452, &v451);
        TSCEFormulaCreator::TSCEFormulaCreator(&v449, &v733);
        sub_22144142C(&v450, &v449);
        v253.var0 = &v450;
        TSCEFormulaCreationMagic::LE(&v452, v253, v854, &v453);
        TSCEFormulaCreator::TSCEFormulaCreator(&v445, &v735);
        sub_22144136C(&v446, &v445);
        TSCEFormulaCreator::TSCEFormulaCreator(&v444, &v355);
        v254.var0 = &v444;
        TSCEFormulaCreationMagic::GE(&v446, v254, v855, &v447);
        TSCEFormulaCreator::TSCEFormulaCreator(&v442, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v441, &v731);
        v255.var0 = &v441;
        TSCEFormulaCreationMagic::LT(&v442, v255, v856, &v443);
        v256.var0 = &v443;
        TSCEFormulaCreationMagic::AND(&v447, v256, v857, &v448);
        TSCEFormulaCreator::TSCEFormulaCreator(&v438, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v437, &v455);
        v257.var0 = &v437;
        TSCEFormulaCreationMagic::GE(&v438, v257, v858, &v439);
        TSCEFormulaCreator::TSCEFormulaCreator(&v435, &v735);
        TSCEFormulaCreator::TSCEFormulaCreator(&v434, &v472);
        v258.var0 = &v434;
        TSCEFormulaCreationMagic::LT(&v435, v258, v859, &v436);
        v259.var0 = &v436;
        TSCEFormulaCreationMagic::AND(&v439, v259, v860, &v440);
        v260.var0 = &v448;
        v261.var0 = &v440;
        TSCEFormulaCreationMagic::IF(&v453, v260, v261, v901, &v454);
        TSCEFormulaCreator::operator=(&v732, &v454, v262, v263);

        v264 = v451.var0;
      }

      goto LABEL_62;
    case 0x1Eu:
    case 0x1Fu:
    case 0x30u:
    case 0x31u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v648, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v648);
      TSCEFormulaCreationMagic::arg(0, v773, &v355, &v649);

      TSCEFormulaCreationMagic::SUM(&v649, v737, &v650);
      TSCEFormulaCreator::TSCEFormulaCreator(&v646, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v646);
      TSCEFormulaCreationMagic::arg(1, v774, &v355, &v647);

      TSCEFormulaCreationMagic::operator+(&v650, &v647, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v38, v39);

      var0 = v648.var0;
      goto LABEL_64;
    case 0x20u:
    case 0x2Du:
      TSCEFormulaCreator::TSCEFormulaCreator(&v670, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v670);
      TSCEFormulaCreationMagic::arg(1, v785, &v355, &v671);

      TSCEFormulaCreator::TSCEFormulaCreator(&v668, &v733);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v668);
      TSCEFormulaCreationMagic::arg(2, v786, &v355, &v669);

      v51.var0 = &v669;
      TSCEFormulaCreationMagic::LE(&v671, v51, v787, &v672);
      TSCEFormulaCreator::TSCEFormulaCreator(&v664, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v664);
      TSCEFormulaCreationMagic::arg(0, v788, &v355, &v665);

      TSCEFormulaCreator::TSCEFormulaCreator(&v663, &v734);
      v52.var0 = &v663;
      TSCEFormulaCreationMagic::LT(&v665, v52, v789, &v666);
      TSCEFormulaCreator::TSCEFormulaCreator(&v661, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v660, &v733);
      v53.var0 = &v660;
      TSCEFormulaCreationMagic::GT(&v661, v53, v790, &v662);
      v54.var0 = &v662;
      TSCEFormulaCreationMagic::OR(&v666, v54, v791, &v667);
      TSCEFormulaCreator::TSCEFormulaCreator(&v657, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v656, &v733);
      v55.var0 = &v656;
      TSCEFormulaCreationMagic::LT(&v657, v55, v792, &v658);
      TSCEFormulaCreator::TSCEFormulaCreator(&v654, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v653, &v734);
      v56.var0 = &v653;
      TSCEFormulaCreationMagic::GT(&v654, v56, v793, &v655);
      v57.var0 = &v655;
      TSCEFormulaCreationMagic::OR(&v658, v57, v794, &v659);
      v58.var0 = &v667;
      v59.var0 = &v659;
      TSCEFormulaCreationMagic::IF(&v672, v58, v59, v896, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v60, v61);

      var0 = v670.var0;
      goto LABEL_64;
    case 0x21u:
      v97 = [TSTFormulaPredArg alloc];
      v101 = objc_msgSend_initWithDouble_(v97, v98, v99, v100, 1.0);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v102, self->_qualifier1, self->_qualifier2, v101, 3, 1, 1);
      objc_msgSend_p_creatorForPeriodBoundaryWithScale_direction_offset_argIndex_earlierBound_isCalPers_(self, v103, self->_qualifier1, self->_qualifier2, v101, 3, 0, 1);
      TSCEFormulaCreator::TSCEFormulaCreator(&v411, &v735);
      sub_22144136C(&v412, &v411);
      TSCEFormulaCreator::TSCEFormulaCreator(&v410, &v355);
      v104.var0 = &v410;
      TSCEFormulaCreationMagic::GE(&v412, v104, v819, &v413);
      TSCEFormulaCreator::TSCEFormulaCreator(&v408, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v407, &v731);
      v105.var0 = &v407;
      TSCEFormulaCreationMagic::LT(&v408, v105, v820, &v409);
      v106.var0 = &v409;
      TSCEFormulaCreationMagic::AND(&v413, v106, v821, &v472);
      TSCEFormulaCreator::operator=(&v732, &v472.var0, v107, v108);

      goto LABEL_65;
    case 0x22u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v405, &v735);
      sub_22144136C(&v406, &v405);
      TSCEFormulaCreationMagic::ISBLANK(&v406, v754, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v199, v200);

      var0 = v405.var0;
      goto LABEL_64;
    case 0x23u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v402, &v735);
      sub_22144136C(&v403, &v402);
      TSCEFormulaCreationMagic::ISBLANK(&v403, v742, &v404);
      TSCEFormulaCreationMagic::NOT(&v404, v743, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v87, v88);

      var0 = v402.var0;
      goto LABEL_64;
    case 0x24u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v600, &v734);
      sub_2214413CC(&v601, &v600);
      TSCEFormulaCreationMagic::LEN(&v601, v768, &v602);
      TSCEFormulaCreator::TSCEFormulaCreator(&v597, &v735);
      sub_22144136C(&v598, &v597);
      TSCEFormulaCreationMagic::LEN(&v598, v769, &v599);
      v319.var0 = &v599;
      TSCEFormulaCreationMagic::EQ(&v602, v319, v880, &v603);
      TSCEFormulaCreator::TSCEFormulaCreator(&v594, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v593, &v735);
      v320.var0 = &v593;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v594, v320, v881, &v595);
      TSUDecimal::operator=();
      v916._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v916, &v592, v321);
      v322.var0 = &v592;
      TSCEFormulaCreationMagic::EQ(&v595, v322, v882, &v596);
      v323.var0 = &v596;
      TSCEFormulaCreationMagic::IF(&v603, v323, v883, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v324, v325);

      var0 = v600.var0;
      goto LABEL_64;
    case 0x25u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v588, &v734);
      sub_2214413CC(&v589, &v588);
      TSCEFormulaCreationMagic::LEN(&v589, v765, &v590);
      TSCEFormulaCreator::TSCEFormulaCreator(&v585, &v735);
      sub_22144136C(&v586, &v585);
      TSCEFormulaCreationMagic::LEN(&v586, v766, &v587);
      v302.var0 = &v587;
      TSCEFormulaCreationMagic::NE(&v590, v302, v876, &v591);
      TSCEFormulaCreationMagic::BOOLean(1, &v584, v303, v304, v305);
      TSCEFormulaCreator::TSCEFormulaCreator(&v580, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v579, &v735);
      v306.var0 = &v579;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v580, v306, v877, &v581);
      TSCEFormulaCreationMagic::ISERROR(&v581, v767, &v582);
      TSCEFormulaCreationMagic::BOOLean(1, &v578, v307, v308, v309);
      TSCEFormulaCreator::TSCEFormulaCreator(&v575, &v734);
      TSCEFormulaCreator::TSCEFormulaCreator(&v574, &v735);
      v310.var0 = &v574;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v575, v310, v878, &v576);
      TSUDecimal::operator=();
      v915._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v915, &v573, v311);
      v312.var0 = &v573;
      TSCEFormulaCreationMagic::NE(&v576, v312, v879, &v577);
      v313.var0 = &v578;
      v314.var0 = &v577;
      TSCEFormulaCreationMagic::IF(&v582, v313, v314, v904, &v583);
      v315.var0 = &v584;
      v316.var0 = &v583;
      TSCEFormulaCreationMagic::IF(&v591, v315, v316, v905, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v317, v318);

      var0 = v588.var0;
      goto LABEL_64;
    case 0x32u:
    case 0x33u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v357, &v735);
      TSCEFormulaCreator::TSCEFormulaCreator(&v355, &v357);
      TSCEFormulaCreationMagic::arg(0, v813, &v355, &v358);

      TSCEFormulaCreationMagic::ISBLANK(&v358, v738, &v359);
      TSCEFormulaCreationMagic::NOT(&v359, v739, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v80, v81);

      var0 = v357.var0;
      goto LABEL_64;
    case 0x37u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v399, &v735);
      sub_22144136C(&v400, &v399);
      TSCEFormulaCreator::TSCEFormulaCreator(&v395, &v735);
      sub_22144136C(&v396, &v395);
      TSCEFormulaCreationMagic::__INTERACTIONTYPE(&v396, v770, &v397);
      TSUDecimal::operator=();
      v917._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v917, &v394, v326);
      v327.var0 = &v394;
      TSCEFormulaCreationMagic::EQ(&v397, v327, v884, &v398);
      v328.var0 = &v398;
      TSCEFormulaCreationMagic::AND(&v400, v328, v885, &v401);
      TSCEFormulaCreationMagic::BOOLean(1, &v393, v329, v330, v331);
      TSCEFormulaCreationMagic::BOOLean(0, &v392, v332, v333, v334);
      v335.var0 = &v393;
      v336.var0 = &v392;
      TSCEFormulaCreationMagic::IF(&v401, v335, v336, v906, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v337, v338);

      var0 = v399.var0;
      goto LABEL_64;
    case 0x38u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v388, &v735);
      sub_22144136C(&v389, &v388);
      TSCEFormulaCreationMagic::NOT(&v389, v744, &v390);
      TSCEFormulaCreator::TSCEFormulaCreator(&v384, &v735);
      sub_22144136C(&v385, &v384);
      TSCEFormulaCreationMagic::__INTERACTIONTYPE(&v385, v745, &v386);
      TSUDecimal::operator=();
      v908._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v908, &v383, v109);
      v110.var0 = &v383;
      TSCEFormulaCreationMagic::EQ(&v386, v110, v822, &v387);
      v111.var0 = &v387;
      TSCEFormulaCreationMagic::AND(&v390, v111, v823, &v391);
      TSCEFormulaCreationMagic::BOOLean(1, &v382, v112, v113, v114);
      TSCEFormulaCreationMagic::BOOLean(0, &v381, v115, v116, v117);
      v118.var0 = &v382;
      v119.var0 = &v381;
      TSCEFormulaCreationMagic::IF(&v391, v118, v119, v897, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v120, v121);

      var0 = v388.var0;
      goto LABEL_64;
    case 0x39u:
      TSCEFormulaCreator::TSCEFormulaCreator(&v704, &v735);
      sub_22144136C(&v705, &v704);
      TSUDecimal::operator=();
      v909._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v909, &v703, v136);
      v137.var0 = &v703;
      TSCEFormulaCreationMagic::GT(&v705, v137, v827, &v706);
      TSCEFormulaCreator::TSCEFormulaCreator(&v700, &v735);
      sub_22144136C(&v701, &v700);
      TSCEFormulaCreationMagic::ISNUMBER(&v701, v746, &v702);
      v138.var0 = &v702;
      TSCEFormulaCreationMagic::AND(&v706, v138, v828, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v139, v140);

      var0 = v704.var0;
      goto LABEL_64;
    case 0x3Au:
      TSCEFormulaCreator::TSCEFormulaCreator(&v697, &v735);
      sub_22144136C(&v698, &v697);
      TSUDecimal::operator=();
      v918._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v918, &v696, v339);
      v340.var0 = &v696;
      TSCEFormulaCreationMagic::LT(&v698, v340, v886, &v699);
      TSCEFormulaCreator::TSCEFormulaCreator(&v693, &v735);
      sub_22144136C(&v694, &v693);
      TSCEFormulaCreationMagic::ISNUMBER(&v694, v771, &v695);
      v341.var0 = &v695;
      TSCEFormulaCreationMagic::AND(&v699, v341, v887, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v342, v343);

      var0 = v697.var0;
      goto LABEL_64;
    case 0x3Bu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v376, &v735);
      sub_22144136C(&v377, &v376);
      TSCEFormulaCreationMagic::__CELLVALUETYPE(&v377, v753, &v378);
      TSUDecimal::operator=();
      v912._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v912, &v375, v175);
      v176.var0 = &v375;
      TSCEFormulaCreationMagic::EQ(&v378, v176, v838, &v379);
      TSCEFormulaCreator::TSCEFormulaCreator(&v373, &v735);
      sub_22144136C(&v374, &v373);
      v177.var0 = &v374;
      TSCEFormulaCreationMagic::AND(&v379, v177, v839, &v380);
      TSCEFormulaCreationMagic::BOOLean(1, &v372, v178, v179, v180);
      TSCEFormulaCreationMagic::BOOLean(0, &v371, v181, v182, v183);
      v184.var0 = &v372;
      v185.var0 = &v371;
      TSCEFormulaCreationMagic::IF(&v380, v184, v185, v899, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v186, v187);

      var0 = v376.var0;
      goto LABEL_64;
    case 0x3Cu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v366, &v735);
      sub_22144136C(&v367, &v366);
      TSCEFormulaCreationMagic::__CELLVALUETYPE(&v367, v747, &v368);
      TSUDecimal::operator=();
      v910._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v910, &v365, v141);
      v142.var0 = &v365;
      TSCEFormulaCreationMagic::EQ(&v368, v142, v829, &v369);
      TSCEFormulaCreator::TSCEFormulaCreator(&v362, &v735);
      sub_22144136C(&v363, &v362);
      TSCEFormulaCreationMagic::NOT(&v363, v748, &v364);
      v143.var0 = &v364;
      TSCEFormulaCreationMagic::AND(&v369, v143, v830, &v370);
      TSCEFormulaCreationMagic::BOOLean(1, &v361, v144, v145, v146);
      TSCEFormulaCreationMagic::BOOLean(0, &v360, v147, v148, v149);
      v150.var0 = &v361;
      v151.var0 = &v360;
      TSCEFormulaCreationMagic::IF(&v370, v150, v151, v898, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v152, v153);

      var0 = v366.var0;
      goto LABEL_64;
    case 0x3Du:
      TSCEFormulaCreator::TSCEFormulaCreator(&v618, &v734);
      sub_2214413CC(&v619, &v618);
      TSCEFormulaCreator::TSCEFormulaCreator(&v616, &v735);
      sub_22144136C(&v617, &v616);
      v293.var0 = &v617;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v619, v293, v873, &v620);
      TSUDecimal::operator=();
      v914._decimal.w[0] = v356;
      TSCEFormulaCreationMagic::number(v355.var0, v914, &v615, v294);
      v295.var0 = &v615;
      TSCEFormulaCreationMagic::NE(&v620, v295, v874, &v621);
      TSCEFormulaCreationMagic::BOOLean(1, &v614, v296, v297, v298);
      v299.var0 = &v614;
      TSCEFormulaCreationMagic::IFERROR(&v621, v299, v875, &v731);
      TSCEFormulaCreator::operator=(&v732, &v731.var0, v300, v301);

      var0 = v618.var0;
      goto LABEL_64;
    case 0x3Eu:
      TSCEFormulaCreator::TSCEFormulaCreator(&v610, &v734);
      sub_2214413CC(&v611, &v610);
      TSCEFormulaCreator::TSCEFormulaCreator(&v607, &v735);
      sub_22144136C(&v608, &v607);
      TSCEFormulaCreator::TSCEFormulaCreator(&v605, &v734);
      TSCEFormulaCreationMagic::LEN(&v605, v755, &v606);
      v215.var0 = &v606;
      TSCEFormulaCreationMagic::RIGHT(&v608, v215, v846, &v609);
      v216.var0 = &v609;
      TSCEFormulaCreationMagic::FIND_CASEINSENSITIVE(&v611, v216, v847, &v612);
      TSCEFormulaCreationMagic::NOT(&v612, v756, &v613);
      TSCEFormulaCreationMagic::BOOLean(1, &v604, v217, v218, v219);
      v220.var0 = &v604;
      TSCEFormulaCreationMagic::IFERROR(&v613, v220, v848, &v355);
      TSCEFormulaCreator::operator=(&v732, &v355.var0, v221, v222);

      var0 = v610.var0;
      goto LABEL_64;
    default:
      goto LABEL_65;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(TSTFormulaPredicate);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_p_setPredicateType_(v4, v5, self->_predicateType, v6);
    v7->_forConditionalStyle = self->_forConditionalStyle;
    v11 = objc_msgSend_copy(self->_predArg0, v8, v9, v10);
    objc_msgSend_setPredArg0_(v7, v12, v11, v13);

    v17 = objc_msgSend_copy(self->_predArg1, v14, v15, v16);
    objc_msgSend_setPredArg1_(v7, v18, v17, v19);

    v23 = objc_msgSend_copy(self->_predArg2, v20, v21, v22);
    objc_msgSend_setPredArg2_(v7, v24, v23, v25);

    objc_msgSend_p_setQualifier1_(v7, v26, self->_qualifier1, v27);
    objc_msgSend_p_setQualifier2_(v7, v28, self->_qualifier2, v29);
    v7->_argIndex0 = self->_argIndex0;
    v7->_argIndex1 = self->_argIndex1;
    v7->_argIndex2 = self->_argIndex2;
    columnUid = self->_hostCellRef._columnUid;
    tableUid = self->_hostCellRef._tableUid;
    v7->_hostCellRef._rowUid = self->_hostCellRef._rowUid;
    v7->_hostCellRef._tableUid = tableUid;
    v7->_hostCellRef._columnUid = columnUid;
    objc_msgSend_setFormula_(v7, v32, self->_formula, v33);
  }

  return v7;
}

- (id)copyToUidFormForHiddenRowsWithTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v5, v6, v7);
  v12 = objc_msgSend_calcEngine(infoCopy, v9, v10, v11);
  v16 = objc_msgSend_hiddenStates(infoCopy, v13, v14, v15);
  v33.coordinate = v8;
  v33._tableUID._lower = objc_msgSend_hiddenStateOwnerForRowsUID(v16, v17, v18, v19);
  v33._tableUID._upper = v20;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v34, v12, &v33);

  v24 = objc_msgSend_hiddenStates(infoCopy, v21, v22, v23);
  v33.coordinate = objc_msgSend_hiddenStateOwnerForRowsUID(v24, v25, v26, v27);
  v33._tableUID._lower = v28;
  TSCEFormulaRewriteContext::setResolverTableUID(&v34, &v33);

  v31 = objc_msgSend_copyToUidFormWithRewriteContext_(self, v29, &v34, v30);
  return v31;
}

- (id)copyToGeometricFormForHiddenRowsWithTableInfo:(id)info containsBadRef:(BOOL *)ref
{
  infoCopy = info;
  v10 = objc_msgSend_filterFormulaContainingCell(TSTHiddenStates, v7, v8, v9);
  v14 = objc_msgSend_calcEngine(infoCopy, v11, v12, v13);
  v18 = objc_msgSend_hiddenStates(infoCopy, v15, v16, v17);
  v27.coordinate = v10;
  v27._tableUID._lower = objc_msgSend_hiddenStateOwnerForRowsUID(v18, v19, v20, v21);
  v27._tableUID._upper = v22;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v28, v14, &v27);

  TSCEFormulaRewriteContext::setHostCellOverridesTableID(&v28, 0);
  v25 = objc_msgSend_copyToGeometricFormWithRewriteContext_(self, v23, &v28, v24);
  if (ref)
  {
    *ref = TSCEFormulaRewriteContext::containsBadRef(&v28);
  }

  return v25;
}

- (id)copyToUidFormForConditionalStylesWithTableInfo:(id)info containingCell:(TSUCellCoord)cell preserveHostCell:(BOOL)hostCell
{
  infoCopy = info;
  v12 = objc_msgSend_calcEngine(infoCopy, v9, v10, v11);
  v16 = objc_msgSend_conditionalStyleFormulaOwner(infoCopy, v13, v14, v15);
  v29.coordinate = cell;
  v29._tableUID._lower = objc_msgSend_ownerUID(v16, v17, v18, v19);
  v29._tableUID._upper = v20;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v30, v12, &v29);

  v29.coordinate = objc_msgSend_tableUID(infoCopy, v21, v22, v23);
  v29._tableUID._lower = v24;
  TSCEFormulaRewriteContext::setResolverTableUID(&v30, &v29);
  TSCEFormulaRewriteContext::setPreserveHostCell(&v30, hostCell);
  v27 = objc_msgSend_copyToUidFormWithRewriteContext_(self, v25, &v30, v26);

  return v27;
}

- (void)setHostCell:(const TSKUIDStruct *)cell hostColumnUID:(const TSKUIDStruct *)d hostRowUID:(const TSKUIDStruct *)iD
{
  if (objc_msgSend_containsUidReferences(self->_formula, a2, cell, d))
  {
    v14 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(self->_formula, v9, cell, d, iD);
    objc_msgSend_setFormula_(self, v10, v14, v11);
    v12 = *d;
    v13 = *cell;
    self->_hostCellRef._rowUid = *iD;
    self->_hostCellRef._tableUid = v13;
    self->_hostCellRef._columnUid = v12;
  }
}

- (void)getPrecedents:(void *)precedents calcEngine:(id)engine hostOwnerUID:(const TSKUIDStruct *)d hostCellID:(const TSUCellCoord *)iD
{
  formula = self->_formula;
  v7 = *iD;
  v8 = *d;
  objc_msgSend_getPrecedents_calcEngine_hostCell_allowImplicitIntersection_returnUidReferences_(formula, a2, precedents, engine, &v7, 1, 1);
}

- (unsigned)p_argTypeForPredArg:(id)arg argNum:(unint64_t)num calculationEngine:(id)engine hostCell:(TSUCellCoord)cell
{
  argCopy = arg;
  engineCopy = engine;
  if (!argCopy)
  {
    goto LABEL_28;
  }

  v15 = objc_msgSend_type(argCopy, v11, v12, v13);
  v16 = v15;
  v17 = 0;
  if (v15 <= 4)
  {
    if ((v15 - 1) >= 3)
    {
      v16 = 0;
      if (v15 != 4)
      {
        goto LABEL_50;
      }

      if (num == 1)
      {
        objc_msgSend_crossTableRefParam1(self, v11, v12, v13);
      }

      else if (num)
      {
        objc_msgSend_crossTableRefParam2(self, v11, v12, v13);
      }

      else
      {
        predArg0 = self->_predArg0;
        if (predArg0)
        {
          objc_msgSend_crossTableRef(predArg0, v11, v12, v13);
        }

        else
        {
          memset(v86, 0, sizeof(v86));
          v87 = 0;
        }
      }

      v88 = *&v86[0]._flags;
      v89 = v87;
      v86[0]._flags = (*&v87 >> 47) & 2 | v87._preserveColumn;
      cellCopy = cell;
      v71 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(cellCopy, *&v87, v86, v13);
      v72 = HIDWORD(*&cell);
      if (v71 == 0x7FFFFFFFLL || (v71 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v72 = HIDWORD(v71);
      }

      if (v71 == 0x7FFFFFFFLL && (v71 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v72 = HIDWORD(v71);
        row = cell.row;
      }

      else
      {
        row = v71;
      }

      v16 = sub_221441A40(engineCopy, &v88, v71 & 0xFFFF000000000000 | row | (v72 << 32));
    }

    goto LABEL_49;
  }

  if (v15 > 10)
  {
    if (v15 == 11)
    {
      goto LABEL_49;
    }

    v16 = 0;
    if (v15 != 13)
    {
      goto LABEL_50;
    }

    if (num == 1)
    {
      v38 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy);
      v42 = objc_msgSend_viewTractRef(v38, v39, v40, v41);
    }

    else
    {
      if (!num)
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormulaPredicate p_argTypeForPredArg:argNum:calculationEngine:hostCell:]", v13);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v32);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v34, v30, v33, 1201, 0, "A viewTractRef as arg 0, I don't think so");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v35, v36, v37);
        goto LABEL_28;
      }

      v38 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy);
      v42 = objc_msgSend_viewTractRef(v38, v48, v49, v50);
    }

    v27 = v42;

    if (v27)
    {
      *&v88 = objc_msgSend_tableUID(v27, v11, v12, v13);
      *(&v88 + 1) = v51;
      v53 = objc_msgSend_tableResolverForTableUID_(engineCopy, v51, &v88, v52);
      v55 = v53;
      if (!v53)
      {
LABEL_35:
        v17 = 0;
        goto LABEL_36;
      }

      v84 = 0;
      v17 = objc_msgSend_valuesForViewTractRef_hidingActionMask_outError_(v53, v54, v27, 0, &v84);
LABEL_36:

LABEL_38:
      goto LABEL_29;
    }

LABEL_28:
    v17 = 0;
LABEL_29:
    v16 = 0;
    goto LABEL_50;
  }

  if ((v15 - 5) >= 2)
  {
    v16 = 0;
    if (v15 != 10)
    {
      goto LABEL_50;
    }

    if (num == 1)
    {
      v43 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy);
      v47 = objc_msgSend_categoryRef(v43, v44, v45, v46);
    }

    else
    {
      if (!num)
      {
        v18 = MEMORY[0x277D81150];
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormulaPredicate p_argTypeForPredArg:argNum:calculationEngine:hostCell:]", v13);
        v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v21);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1174, 0, "A categoryRef as arg 0, I don't think so");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
        v27 = 0;
LABEL_37:
        v17 = 0;
        goto LABEL_38;
      }

      v43 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v11, *&cell, engineCopy);
      v47 = objc_msgSend_categoryRef(v43, v56, v57, v58);
    }

    v27 = v47;

    if (!v27)
    {
      goto LABEL_37;
    }

    v60 = objc_msgSend_groupByForCategoryRef_withCalcEngine_(TSTGroupBy, v59, v27, engineCopy);
    v55 = v60;
    if (!v60)
    {
      goto LABEL_37;
    }

    v64 = objc_msgSend_tableModel(v60, v61, v62, v63);
    *&v88 = objc_msgSend_rowUIDForRowIndex_(v64, v65, *&cell, v66);
    *(&v88 + 1) = v67;

    v85 = 0;
    v69 = objc_msgSend_valueGridForCategoryRef_atRowUid_outError_(v55, v68, v27, &v88, &v85);
    v17 = v69;
    if (v85)
    {

      goto LABEL_35;
    }

    goto LABEL_36;
  }

LABEL_49:
  v17 = 0;
LABEL_50:
  if (objc_msgSend_count(v17, v11, v12, v13))
  {
    v78 = objc_msgSend_firstValue(v17, v75, v76, v77);
    v82 = objc_msgSend_nativeType(v78, v79, v80, v81);

    if ((v82 - 2) >= 8u)
    {
      v16 = 1;
    }

    else
    {
      v16 = 0x1030101010206uLL >> (8 * ((v82 - 2) & 0x1Fu));
    }
  }

  return v16;
}

- (BOOL)p_testDataTypesForArg0:(unsigned __int8)arg0 arg1:(unsigned __int8)arg1 arg2:(unsigned __int8)arg2 predShouldReturn:(BOOL *)return
{
  *return = 0;
  switch(self->_predicateType)
  {
    case 0u:
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x22u:
    case 0x23u:
    case 0x24u:
    case 0x25u:
    case 0x32u:
    case 0x33u:
    case 0x34u:
    case 0x37u:
    case 0x38u:
    case 0x39u:
    case 0x3Au:
    case 0x3Bu:
    case 0x3Cu:
    case 0x3Du:
    case 0x3Eu:
      return 1;
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
      v7 = arg0 == arg1;
      goto LABEL_39;
    case 6u:
      result = 1;
      if (arg0 == arg1)
      {
        return result;
      }

      *return = 1;
      goto LABEL_20;
    case 0xBu:
    case 0xCu:
    case 0x2Eu:
    case 0x2Fu:
      v7 = (arg0 & 0xFFFFFFFB) == 1;
      goto LABEL_39;
    case 0xDu:
    case 0x2Cu:
    case 0x2Du:
      v7 = arg0 == arg1 && arg0 == arg2;
      goto LABEL_39;
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x21u:
      v7 = arg0 == 2;
      goto LABEL_39;
    case 0x14u:
    case 0x15u:
    case 0x16u:
      v7 = arg0 == 2 && arg1 == 2;
      goto LABEL_39;
    case 0x17u:
      v7 = arg0 == 2 && arg1 == 2 && arg2 == 2;
      goto LABEL_39;
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Cu:
      v8 = arg0 == 2;
      goto LABEL_6;
    case 0x1Du:
      v7 = arg0 == 2 && arg1 == 1 && arg2 == 1;
      goto LABEL_39;
    case 0x1Eu:
    case 0x1Fu:
    case 0x30u:
    case 0x31u:
      v8 = (arg0 & 0xFFFFFFFB) == 1;
LABEL_6:
      v7 = v8 && arg1 == 1;
      goto LABEL_39;
    case 0x20u:
      if (arg0 == arg1 && arg0 == arg2)
      {
        return 1;
      }

      result = 0;
      if (arg0 && arg1 && arg2)
      {
        result = 0;
        *return = 1;
      }

      return result;
    case 0x35u:
    case 0x36u:
      v7 = arg1 == 11;
LABEL_39:
      result = v7;
      break;
    default:
LABEL_20:
      result = 0;
      break;
  }

  return result;
}

- (BOOL)evaluateAtCellID:(TSUCellCoord)d onOwnerUID:(const TSKUIDStruct *)iD calcEngine:(id)engine
{
  dCopy = d;
  engineCopy = engine;
  v86 = 0;
  v12 = objc_msgSend_predArg0(self, v9, v10, v11);
  v14 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v13, v12, 0, engineCopy, d);
  v18 = objc_msgSend_predArg1(self, v15, v16, v17);
  v20 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v19, v18, 1, engineCopy, d);
  v24 = objc_msgSend_predArg2(self, v21, v22, v23);
  v26 = objc_msgSend_p_argTypeForPredArg_argNum_calculationEngine_hostCell_(self, v25, v24, 2, engineCopy, d);
  LODWORD(v14) = objc_msgSend_p_testDataTypesForArg0_arg1_arg2_predShouldReturn_(self, v27, v14, v20, v26, &v86);

  if (v14)
  {
    if (self->_predicateType - 53 >= 2)
    {
      v31 = objc_msgSend_contextForCalcEngine_containingTable_containingCell_inArrayMode_(TSCEEvaluationContext, v28, engineCopy, iD, d, 0);
      objc_msgSend_setSuppressCycleCheck_(v31, v70, 1, v71);
      v39 = objc_msgSend_evaluateWithContext_(self->_formula, v72, v31, v73);
      v86 = objc_msgSend_BOOLean(v39, v74, v75, v76);
      goto LABEL_15;
    }

    v31 = objc_msgSend_predArg0(self, v28, v29, v30);
    v35 = objc_msgSend_predArg1(self, v32, v33, v34);
    v39 = v35;
    if (!v31 || !v35)
    {
      v40 = MEMORY[0x277D81150];
      v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTFormulaPredicate evaluateAtCellID:onOwnerUID:calcEngine:]", v38);
      v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v43);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1429, 0, "Need both of these set");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
    }

    v49 = objc_msgSend_relativeCellRef(v31, v36, v37, v38);
    v50 = v49[1];
    *&v85.relativeCoord._row = *v49;
    *&v85.tableUID._upper = v50;
    TSCERelativeCellRef::cellRefForHostCoord(&v85, &dCopy, &v83, v51);
    LODWORD(v83) = dCopy.row;
    v82 = v84;
    v53 = objc_msgSend_tableModelForTableUID_withCalcEngine_(TSTTableModel, v52, &v82, engineCopy);
    v57 = v53;
    if (!v53)
    {
LABEL_13:

LABEL_15:
      goto LABEL_16;
    }

    v58 = objc_msgSend_cellsPendingWrite(v53, v54, v55, v56);
    v61 = objc_msgSend_cellAtCellID_(v58, v59, v83, v60);

    if (v61)
    {
      v67 = v61;
    }

    else
    {
      v69 = objc_msgSend_newCell(v57, v62, v63, v64);
      Cell_atBaseCellCoord_suppressCellBorder = objc_msgSend_getCell_atBaseCellCoord_suppressCellBorder_(v57, v79, v69, v83, 1);
      if (Cell_atBaseCellCoord_suppressCellBorder == 1000)
      {
        isStringValueInList = objc_msgSend_isStringValueInList_(v39, v65, &stru_2834BADA0, v66);
        v86 = isStringValueInList;
        if (self->_predicateType == 54)
        {
          v86 = isStringValueInList ^ 1;
        }

        goto LABEL_12;
      }

      v67 = v69;
      if (Cell_atBaseCellCoord_suppressCellBorder)
      {
LABEL_12:

        goto LABEL_13;
      }
    }

    isCellValueInList = objc_msgSend_isCellValueInList_(v39, v65, v67, v66);
    v86 = isCellValueInList;
    if (self->_predicateType == 54)
    {
      v86 = isCellValueInList ^ 1;
    }

    v69 = v67;
    goto LABEL_12;
  }

LABEL_16:
  v77 = v86;

  return v77;
}

- (void)setFormula:(id)formula
{
  formulaCopy = formula;
  if (self->_formula == formulaCopy)
  {
    goto LABEL_25;
  }

  objc_storeStrong(&self->_formula, formula);
  objc_msgSend_p_populateMembersFromFormula(self, v5, v6, v7);
  predicateType = self->_predicateType;
  if ((predicateType - 5) >= 9 && (predicateType - 30) > 2)
  {
    goto LABEL_25;
  }

  if (objc_msgSend_type(self->_predArg1, v8, v9, v10) != 5)
  {
    goto LABEL_25;
  }

  v12 = self->_predicateType;
  if (v12 > 8)
  {
    if (self->_predicateType > 0xCu)
    {
      if (v12 == 13)
      {
        v13 = 44;
      }

      else
      {
        if (v12 != 32)
        {
          goto LABEL_25;
        }

        v13 = 45;
      }
    }

    else if (v12 == 9)
    {
      v13 = 42;
    }

    else
    {
      if (v12 != 10)
      {
        goto LABEL_25;
      }

      v13 = 43;
    }
  }

  else if (self->_predicateType > 6u)
  {
    if (v12 == 7)
    {
      v13 = 40;
    }

    else
    {
      if (v12 != 8)
      {
        goto LABEL_25;
      }

      v13 = 41;
    }
  }

  else if (v12 == 5)
  {
    v13 = 38;
  }

  else
  {
    if (v12 != 6)
    {
      goto LABEL_25;
    }

    v13 = 39;
  }

  self->_predicateType = v13;
LABEL_25:
}

- (void)setArgumentAt:(int64_t)at withPredArg:(id)arg
{
  argCopy = arg;
  v10 = argCopy;
  if (at)
  {
    if (at == 2)
    {
      if (!argCopy)
      {
        v10 = objc_opt_new();
      }

      v34 = v10;
      objc_msgSend_setPredArg2_(self, v10, v10, v9);
    }

    else if (at == 1)
    {
      if (!argCopy)
      {
        v10 = objc_opt_new();
      }

      v34 = v10;
      objc_msgSend_setPredArg1_(self, v10, v10, v9);
    }

    else
    {
      v34 = argCopy;
      v24 = MEMORY[0x277D81150];
      v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], argCopy, "[TSTFormulaPredicate setArgumentAt:withPredArg:]", v9);
      v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v27);
      v29 = NSStringFromSelector(a2);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v28, 1588, 0, "%@: Not allowed for argument at position %d", v29, at);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    }
  }

  else
  {
    v34 = argCopy;
    v11 = objc_msgSend_type(argCopy, argCopy, v8, v9);
    v14 = v11;
    if (v11 > 0xC || ((1 << v11) & 0x1210) == 0)
    {
      v15 = MEMORY[0x277D81150];
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTFormulaPredicate setArgumentAt:withPredArg:]", v13);
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v18);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1582, 0, "Only a limited set of types are allowed for predArg0, and not %d", v14);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
    }

    objc_msgSend_setPredArg0_(self, v12, v34, v13);
  }
}

- (unsigned)predArg0Type
{
  predArg0 = self->_predArg0;
  if (predArg0)
  {
    LOBYTE(predArg0) = objc_msgSend_type(predArg0, a2, v2, v3);
  }

  return predArg0;
}

- (unsigned)predArg1Type
{
  predArg1 = self->_predArg1;
  if (predArg1)
  {
    LOBYTE(predArg1) = objc_msgSend_type(predArg1, a2, v2, v3);
  }

  return predArg1;
}

- (unsigned)predArg2Type
{
  predArg2 = self->_predArg2;
  if (predArg2)
  {
    LOBYTE(predArg2) = objc_msgSend_type(predArg2, a2, v2, v3);
  }

  return predArg2;
}

- (id)durationParam1
{
  predArg1 = self->_predArg1;
  if (predArg1)
  {
    objc_msgSend_duration(predArg1, a2, v2, v3);
  }

  else
  {
    objc_msgSend_zero(TSCENumberValue, a2, v2, v3);
  }
  v5 = ;

  return v5;
}

- (id)durationParam2
{
  predArg2 = self->_predArg2;
  if (predArg2)
  {
    objc_msgSend_duration(predArg2, a2, v2, v3);
  }

  else
  {
    objc_msgSend_zero(TSCENumberValue, a2, v2, v3);
  }
  v5 = ;

  return v5;
}

- (TSCECrossTableReference)crossTableRefParam1
{
  result = self->_predArg1;
  if (result)
  {
    return objc_msgSend_crossTableRef(result, a3, v3, v4);
  }

  retstr->var0._lower = 0;
  retstr->var0._upper = 0;
  retstr->var1 = 0;
  return result;
}

- (TSCECrossTableReference)crossTableRefParam2
{
  result = self->_predArg2;
  if (result)
  {
    return objc_msgSend_crossTableRef(result, a3, v3, v4);
  }

  retstr->var0._lower = 0;
  retstr->var0._upper = 0;
  retstr->var1 = 0;
  return result;
}

- (id)predicateArg1atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine
{
  engineCopy = engine;
  coord = coord._coord;
  sub_221442B38(self->_predArg1, coord);
  v11 = objc_msgSend_type(self->_predArg1, v8, v9, v10);
  if (engineCopy && v11 == 9)
  {
    v15 = objc_msgSend_uidRectRef(self->_predArg1, v12, v13, v14);
    objc_msgSend_setCalcEngine_(v15, v16, engineCopy, v17);
  }

  objc_msgSend_setHostCellCoord_(self->_predArg1, v12, *&coord, v14);
  predArg1 = self->_predArg1;
  v19 = predArg1;

  return predArg1;
}

- (id)predicateArg2atBaseHostCoord:(TSUModelCellCoord)coord calcEngine:(id)engine
{
  engineCopy = engine;
  coord = coord._coord;
  sub_221442B38(self->_predArg2, coord);
  v11 = objc_msgSend_type(self->_predArg2, v8, v9, v10);
  if (engineCopy && v11 == 9)
  {
    v15 = objc_msgSend_uidRectRef(self->_predArg2, v12, v13, v14);
    objc_msgSend_setCalcEngine_(v15, v16, engineCopy, v17);
  }

  objc_msgSend_setHostCellCoord_(self->_predArg2, v12, *&coord, v14);
  predArg2 = self->_predArg2;
  v19 = predArg2;

  return predArg2;
}

- (void)p_populateMembersFromFormula
{
  v5 = objc_msgSend_hostColumnUID(self->_formula, a2, v2, v3);
  v9 = objc_msgSend_hostRowUID(self->_formula, v6, v7, v8);
  v13 = objc_msgSend_hostTableUID(self->_formula, v10, v11, v12);
  v14 = *v5;
  v15 = *v13;
  self->_hostCellRef._rowUid = *v9;
  self->_hostCellRef._tableUid = v15;
  self->_hostCellRef._columnUid = v14;
  if (self->_predicateType - 53 >= 2)
  {
    predArg1 = self->_predArg1;
    self->_predArg1 = 0;
  }

  predArg2 = self->_predArg2;
  self->_predArg2 = 0;

  if (self->_argIndex0 == -1)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTFormulaPredicate p_populateMembersFromFormula]", v19);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 1765, 0, "We don't have valid offsets at the moment");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v44);
  v32 = objc_msgSend_const_astNodeArray(self->_formula, v29, v30, v31);
  sub_2212C3620(v39, v32, &v44, self->_argIndex0, self->_argIndex1, self->_argIndex2);
  TSCEASTStreamIterator::rewrite(v39, v33, v34, v35);
  if (v40)
  {
    self->_forConditionalStyle = v40;
  }

  objc_msgSend_setArgumentAt_withPredArg_(self, v36, 0, v41);
  if (self->_predicateType - 53 >= 2)
  {
    objc_msgSend_setArgumentAt_withPredArg_(self, v37, 1, v42);
  }

  objc_msgSend_setArgumentAt_withPredArg_(self, v37, 2, v43);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v39, v38);
}

- (id)copyByRemappingOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v8 = objc_msgSend_copy(self, a2, map, context);
  objc_msgSend_remapOwnerUIDsWithMap_rewriteContext_error_(v8, v9, map, context, error);
  return v8;
}

- (void)remapOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_2214430E4;
  v5[3] = &unk_278465380;
  v5[4] = map;
  v5[5] = context;
  v5[6] = error;
  objc_msgSend_rewriteFormulaWithBlock_(self, a2, v5, context);
}

- (void)rewriteNumberToDurationForSageImport:(const TSCECellRef *)import durationUnitLargest:(unsigned __int8)largest
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_221443188;
  v4[3] = &unk_2784653A0;
  v4[4] = import;
  largestCopy = largest;
  objc_msgSend_rewriteFormulaWithBlock_(self, a2, v4, largest);
}

- (void)rewriteFormulaWithBlock:(id)block
{
  v6 = (*(block + 2))(block, self->_formula);
  objc_msgSend_setFormula_(self, v4, v6, v5);
}

- (id)copyByRemappingHostCellAgnosticOwnerUIDsWithMap:(const void *)map rewriteContext:(TSCEFormulaRewriteContext *)context error:(BOOL *)error
{
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_2214432A8;
  v6[3] = &unk_2784653C0;
  v6[4] = map;
  v6[5] = error;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, a2, context, v6);
}

- (id)copyByConvertingBaseToChrome:(id)chrome inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  chromeCopy = chrome;
  ownerCopy = owner;
  v13 = objc_msgSend_rewriteType(chromeCopy, v10, v11, v12);
  if (objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v14, v13, v15))
  {
    v19 = objc_msgSend_tableModel(ownerCopy, v16, v17, v18);
    v23 = objc_msgSend_calcEngine(v19, v20, v21, v22);

    v27 = objc_msgSend_tableModel(ownerCopy, v24, v25, v26);
    *&v49 = coordinate;
    *(&v49 + 1) = objc_msgSend_tableUID(v27, v28, v29, v30);
    v50 = v31;

    if (chromeCopy)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(chromeCopy, v32, &v49, v33);
    }

    else
    {
      v47 = 0uLL;
      v48 = 0;
    }

    sub_2212C726C(&v46, &v49, &v47);
    v35 = [TSTConvertFormulasForCategoriesByRewritingWrapper alloc];
    v37 = objc_msgSend_initWithCalcEngine_rewriteSpec_(v35, v36, v23, chromeCopy);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v23, &v46);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3321888768;
    v42[2] = sub_221443524;
    v42[3] = &unk_2834A81D0;
    v38 = v37;
    v43 = v38;
    *&v39 = sub_2212C72BC(&v44, &v46).n128_u64[0];
    v34 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v40, &v45, v42, v39);
  }

  else
  {
    v34 = objc_msgSend_copy(self, v16, v17, v18);
  }

  return v34;
}

- (id)copyByConvertingChromeToBase:(id)base inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  baseCopy = base;
  ownerCopy = owner;
  v13 = objc_msgSend_rewriteType(baseCopy, v10, v11, v12);
  if (objc_msgSend_isMoveRewriteType_(TSTConvertFormulasForCategoriesByRewritingWrapper, v14, v13, v15))
  {
    v19 = objc_msgSend_tableModel(ownerCopy, v16, v17, v18);
    v23 = objc_msgSend_calcEngine(v19, v20, v21, v22);

    v27 = objc_msgSend_tableModel(ownerCopy, v24, v25, v26);
    *&v49 = coordinate;
    *(&v49 + 1) = objc_msgSend_tableUID(v27, v28, v29, v30);
    v50 = v31;

    if (baseCopy)
    {
      objc_msgSend_updatedCellRefForOriginalCellRef_(baseCopy, v32, &v49, v33);
    }

    else
    {
      v47 = 0uLL;
      v48 = 0;
    }

    sub_2212C726C(&v46, &v49, &v47);
    v35 = [TSTConvertFormulasForCategoriesByRewritingWrapper alloc];
    v37 = objc_msgSend_initWithCalcEngine_rewriteSpec_(v35, v36, v23, baseCopy);
    TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v23, &v46);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3321888768;
    v42[2] = sub_221443780;
    v42[3] = &unk_2834A81D0;
    v38 = v37;
    v43 = v38;
    *&v39 = sub_2212C72BC(&v44, &v46).n128_u64[0];
    v34 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v40, &v45, v42, v39);
  }

  else
  {
    v34 = objc_msgSend_copy(self, v16, v17, v18);
  }

  return v34;
}

- (id)copyByRewritingWithSpec:(id)spec inOwner:(id)owner inCellCoordinate:(TSUCellCoord)coordinate
{
  specCopy = spec;
  ownerCopy = owner;
  v13 = objc_msgSend_rewriteType(specCopy, v10, v11, v12);
  if (v13 >= 0xE)
  {
    v27 = 0;
    if (v13 > 0x12)
    {
      goto LABEL_9;
    }

    if (((1 << v13) & 0x2C000) != 0)
    {
      v28 = MEMORY[0x277D81150];
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "[TSTFormulaPredicate copyByRewritingWithSpec:inOwner:inCellCoordinate:]", v16);
      v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v31);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 1912, 0, "Not implemented yet for this type");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
      v27 = 0;
      goto LABEL_9;
    }

    if (((1 << v13) & 0x50000) == 0)
    {
      goto LABEL_9;
    }
  }

  v17 = objc_msgSend_tableModel(ownerCopy, v14, v15, v16);
  v21 = objc_msgSend_calcEngine(v17, v18, v19, v20);

  *&v49 = coordinate;
  *(&v49 + 1) = objc_msgSend_ownerUID(ownerCopy, v22, v23, v24);
  v50 = v25;
  if (specCopy)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(specCopy, v25, &v49, v26);
  }

  else
  {
    v47 = 0uLL;
    v48 = 0;
  }

  sub_2212C726C(&v46, &v49, &v47);
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v45, v21, &v46);
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3321888768;
  v41[2] = sub_221443A38;
  v41[3] = &unk_2834A8208;
  v42 = specCopy;
  v37 = v21;
  v43 = v37;
  *&v38 = sub_2212C72BC(&v44, &v46).n128_u64[0];
  v27 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v39, &v45, v41, v38);

LABEL_9:
  return v27;
}

- (id)copyByOffsettingRelativeReferencesWithOffset:(TSUColumnRowOffset)offset
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221443B08;
  v7[3] = &unk_2784653E0;
  v7[4] = offset;
  return objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v5, &v8, v7);
}

- (id)copyByUpgradingToLinkedRefForTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell
{
  column = cell.column;
  v8 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, a2, *&cell, 0);
  v12 = v8;
  if (v8 && objc_msgSend_type(v8, v9, v10, v11) == 4 && (objc_msgSend_cellRefForHostCoord_(v12, v9, *&cell, v13), (v70 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL) && objc_msgSend_hasRelativeCellRef(v12, v9, v14, v15))
  {
    v18 = objc_msgSend_relativeCellRef(v12, v9, v16, v17);
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = *(v18 + 24);
    v23 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v22, *&cell, 0);
    if (cell.row <= -v19)
    {
      row = -v19;
    }

    else
    {
      row = cell.row;
    }

    if (v19 < 0 && (v21 & 0xA) == 0)
    {
      v26 = row;
    }

    else
    {
      v26 = cell.row;
    }

    if (column <= -v20)
    {
      v27 = -v20;
    }

    else
    {
      v27 = column;
    }

    if ((((v21 & 4) == 0) & ~v21 & (v20 < 0)) != 0)
    {
      column = v27;
    }

    v12 = v23;
  }

  else
  {
    v26 = cell.row;
  }

  v28 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v9, *&cell, 0);
  v32 = v28;
  if (v28)
  {
    if (objc_msgSend_type(v28, v29, v30, v31) == 4)
    {
      objc_msgSend_cellRefForHostCoord_(v32, v33, *&cell, v34);
      if ((v70 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        if (objc_msgSend_hasRelativeCellRef(v32, v35, v36, v37))
        {
          v41 = objc_msgSend_relativeCellRef(v32, v38, v39, v40);
          v43 = *v41;
          v44 = *(v41 + 4);
          v45 = *(v41 + 24);
          v46 = (v44 & 0x8000u) != 0;
          v47 = -v44;
          if (column > v47)
          {
            LOWORD(v47) = column;
          }

          if ((((v45 & 4) == 0) & ~v45 & v46) != 0)
          {
            column = v47;
          }

          if (v26 <= -v43)
          {
            v48 = -v43;
          }

          else
          {
            v48 = v26;
          }

          if (v43 < 0 && (v45 & 0xA) == 0)
          {
            v26 = v48;
          }

          v50 = objc_msgSend_predicateArg1atBaseHostCoord_calcEngine_(self, v42, *&cell, 0);

          v52 = objc_msgSend_predicateArg2atBaseHostCoord_calcEngine_(self, v51, *&cell, 0);

          v32 = v52;
          v12 = v50;
        }
      }
    }
  }

  v69 = *table;
  v53 = [TSTFormulaPredicate alloc];
  v57 = objc_msgSend_predicateType(self, v54, v55, v56);
  v61 = objc_msgSend_qualifier1(self, v58, v59, v60);
  v65 = objc_msgSend_qualifier2(self, v62, v63, v64);
  v70 = *&cell & 0xFFFF000000000000 | (column << 32) | v26;
  v71 = v69;
  v67 = objc_msgSend_initWithPredicateType_arg1_arg2_qualifier1_qualifier2_argumentCellRef_hostCell_forConditionalStyle_(v53, v66, v57, v12, v32, v61, v65, &v70, v70, 1);

  return v67;
}

- (id)copyByUpdatingLinkedTable:(const TSKUIDStruct *)table hostCell:(TSUCellCoord)cell
{
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v17);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_221443F5C;
  v12[3] = &unk_278465408;
  v12[4] = &v13;
  v12[5] = table;
  v9 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v7, &v17, v12);
  if ((v14[3] & 1) == 0)
  {
    v10 = objc_msgSend_copyByUpgradingToLinkedRefForTable_hostCell_(self, v8, table, *&cell);

    v9 = v10;
  }

  _Block_object_dispose(&v13, 8);
  return v9;
}

- (id)copyByClearingUids:(id)uids containingTableUID:(const TSKUIDStruct *)d
{
  uidsCopy = uids;
  v14.coordinate = 0;
  v14._tableUID = *d;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v15, uidsCopy, &v14);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_221444080;
  v11[3] = &unk_27845DC60;
  v7 = uidsCopy;
  v12 = v7;
  dCopy = d;
  v9 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(self, v8, &v15, v11);

  return v9;
}

- (id)copyByRewritingWithContext:(TSCEFormulaRewriteContext *)context rewriteBlock:(id)block
{
  blockCopy = block;
  v10 = objc_msgSend_predArg0(self, v7, v8, v9);
  v14 = objc_msgSend_predArg1(self, v11, v12, v13);
  v18 = objc_msgSend_predArg2(self, v15, v16, v17);
  rowUid = self->_hostCellRef._rowUid;
  columnUid = self->_hostCellRef._columnUid;
  v64 = rowUid;
  v20 = self->_hostCellRef._rowUid;
  v22 = self->_hostCellRef._columnUid;
  v21 = v20;
  tableUid = self->_hostCellRef._tableUid;
  v60 = self->_hostCellRef._columnUid;
  v61 = v20;
  v23 = self->_hostCellRef._rowUid;
  v62 = self->_hostCellRef._tableUid;
  v57 = self->_hostCellRef._columnUid;
  v58 = v23;
  v59 = self->_hostCellRef._tableUid;
  v54 = v22;
  v55 = v21;
  v56 = self->_hostCellRef._tableUid;
  if (objc_msgSend_needsFormulaRewriting(v10, v24, v25, v26))
  {
    forConditionalStyle = self->_forConditionalStyle;
    v31 = objc_msgSend_useColumnRefForArg0(self, v27, v28, v29);
    v33 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v10, v32, context, 0, forConditionalStyle, v31, &v60, blockCopy);

    columnUid = v60;
    v64 = v61;
    tableUid = v62;
    v10 = v33;
  }

  if (objc_msgSend_needsFormulaRewriting(v14, v27, v28, v29))
  {
    v37 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v14, v34, context, 1, 0, 0, &v57, blockCopy);

    columnUid = v57;
    v64 = v58;
    tableUid = v59;
    v14 = v37;
  }

  if (objc_msgSend_needsFormulaRewriting(v18, v34, v35, v36))
  {
    v41 = objc_msgSend_rewriteWithContext_forArgAt_usingLinkedRef_useColumnRef_hostCellRef_rewriteBlock_(v18, v38, context, 2, 0, 0, &v54, blockCopy);

    columnUid = v54;
    v64 = v55;
    tableUid = v56;
    v18 = v41;
  }

  v42 = objc_msgSend_copy(self, v38, v39, v40);
  objc_msgSend_setPredArg0_(v42, v43, v10, v44);
  objc_msgSend_setPredArg1_(v42, v45, v14, v46);
  objc_msgSend_setPredArg2_(v42, v47, v18, v48);
  v49 = v64;
  v42[4] = columnUid;
  v42[5] = v49;
  v42[6] = tableUid;
  objc_msgSend_recreateFormula(v42, v50, v51, v52);

  return v42;
}

- (void)upgradeTopAndBottom
{
  if (!self->_predArg0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredicate upgradeTopAndBottom]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 2073, 0, "invalid nil value for '%{public}s'", "_predArg0");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  predicateType = self->_predicateType;
  v15 = predicateType > 0x31;
  v16 = (1 << predicateType) & 0x30000C0000000;
  v17 = v15 || v16 == 0;
  if (!v17 && *(objc_msgSend_const_astNodeArray(self->_formula, a2, v2, v3) + 8) == 41)
  {

    objc_msgSend_recreateFormula(self, v18, v19, v20);
  }
}

- (id)downgradeForPrePivotFormatForLocale:(id)locale
{
  v5 = objc_msgSend_predicateType(self, a2, locale, v3);
  if ((v5 - 57) > 1)
  {
    v25 = 0;
  }

  else
  {
    if (v5 == 57)
    {
      v9 = 7;
    }

    else
    {
      v9 = 9;
    }

    v10 = objc_msgSend_predArg0(self, v6, v7, v8);
    v14 = objc_msgSend_copy(v10, v11, v12, v13);

    v15 = [TSTFormulaPredArg alloc];
    v19 = objc_msgSend_initWithDouble_(v15, v16, v17, v18, 0.0);
    v20 = [TSTFormulaPredicate alloc];
    v27 = objc_msgSend_forConditionalStyle(self, v21, v22, v23);
    v25 = objc_msgSend_initWithPredicateType_arg0_arg1_arg2_qualifier1_qualifier2_forConditionalStyle_(v20, v24, v9, v14, v19, 0, 0, 0, v27);
  }

  return v25;
}

- (void)encodeToPrePivotArchive:(void *)archive archiver:(id)archiver encodingForSOS:(BOOL)s
{
  sCopy = s;
  archiverCopy = archiver;
  if (((objc_msgSend_backwardCompatiblePrePivot(self, v8, v9, v10) | sCopy) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTFormulaPredicate encodeToPrePivotArchive:archiver:encodingForSOS:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2166, 0, "We need to be backward compatible to use this archiving method");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  formula = self->_formula;
  *(archive + 4) |= 1u;
  v23 = *(archive + 3);
  if (!v23)
  {
    v24 = *(archive + 1);
    if (v24)
    {
      v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
    }

    v23 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v24);
    *(archive + 3) = v23;
  }

  v25 = objc_msgSend_encodeToArchive_archiver_(formula, v11, v23, archiverCopy);
  v27 = *(archive + 4);
  qualifier1 = self->_qualifier1;
  *(archive + 8) = self->_predicateType;
  *(archive + 9) = qualifier1;
  argIndex1 = self->_argIndex1;
  *(archive + 10) = self->_qualifier2;
  *(archive + 11) = argIndex1;
  argIndex0 = self->_argIndex0;
  argIndex2 = self->_argIndex2;
  *(archive + 4) = v27 | 0x7E;
  *(archive + 12) = argIndex2;
  *(archive + 13) = argIndex0;
  if ((v25 & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v26, 0x300020000000ALL, @"TSTCategorizedTables");
  }
}

- (id)initFromPrePivotArchive:(const void *)archive
{
  v5 = objc_msgSend_init(self, a2, archive, v3);
  v9 = v5;
  if (v5)
  {
    v10 = *(archive + 9);
    *(v5 + 16) = *(archive + 8);
    *(v5 + 17) = v10;
    v11 = *(archive + 11);
    *(v5 + 18) = *(archive + 10);
    v12 = *(archive + 12);
    *(v5 + 20) = *(archive + 13);
    *(v5 + 22) = v11;
    *(v5 + 24) = v12;
    if (*(archive + 16))
    {
      v13 = [TSCEFormulaObject alloc];
      if (*(archive + 3))
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v13, v14, *(archive + 3), 0);
      }

      else
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v13, v14, TSCE::_FormulaArchive_default_instance_, 0);
      }

      v16 = *(v9 + 8);
      *(v9 + 8) = isPreUFF;

      v20 = *(v9 + 8);
      if (!v20)
      {

        return 0;
      }

      if (objc_msgSend_hasHostCell(v20, v17, v18, v19))
      {
        v21 = objc_msgSend_hostColumnUID(*(v9 + 8), v6, v7, v8);
        v25 = objc_msgSend_hostRowUID(*(v9 + 8), v22, v23, v24);
        v29 = objc_msgSend_hostTableUID(*(v9 + 8), v26, v27, v28);
        v30 = *v21;
        v31 = *v29;
        *(v9 + 80) = *v25;
        *(v9 + 96) = v31;
        *(v9 + 64) = v30;
      }
    }

    objc_msgSend_p_populateMembersFromFormula(v9, v6, v7, v8);
    objc_msgSend_upgradeTopAndBottom(v9, v32, v33, v34);
  }

  return v9;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  formula = self->_formula;
  *(archive + 4) |= 8u;
  v9 = *(archive + 6);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v10);
    *(archive + 6) = v9;
  }

  v14 = objc_msgSend_encodeToArchive_archiver_(formula, v6, v9, archiverCopy);
  v15 = *(archive + 4);
  qualifier1 = self->_qualifier1;
  *(archive + 20) = self->_predicateType;
  *(archive + 21) = qualifier1;
  *(archive + 22) = self->_qualifier2;
  forConditionalStyle = self->_forConditionalStyle;
  *(archive + 4) = v15 | 0x780;
  *(archive + 92) = forConditionalStyle;
  predArg0 = self->_predArg0;
  if (predArg0)
  {
    *(archive + 4) = v15 | 0x781;
    v19 = *(archive + 3);
    if (!v19)
    {
      v20 = *(archive + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v20);
      *(archive + 3) = v19;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg0, v11, v19, archiverCopy);
  }

  predArg1 = self->_predArg1;
  if (predArg1)
  {
    *(archive + 4) |= 2u;
    v22 = *(archive + 4);
    if (!v22)
    {
      v23 = *(archive + 1);
      if (v23)
      {
        v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
      }

      v22 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v23);
      *(archive + 4) = v22;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg1, v11, v22, archiverCopy);
  }

  predArg2 = self->_predArg2;
  if (predArg2)
  {
    *(archive + 4) |= 4u;
    v25 = *(archive + 5);
    if (!v25)
    {
      v26 = *(archive + 1);
      if (v26)
      {
        v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
      }

      v25 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgArchive>(v26);
      *(archive + 5) = v25;
    }

    objc_msgSend_encodeToArchive_archiver_(predArg2, v11, v25, archiverCopy);
  }

  if ((self->_hostCellRef._columnUid._lower || self->_hostCellRef._columnUid._upper) && (self->_hostCellRef._rowUid._lower || self->_hostCellRef._rowUid._upper))
  {
    tableUid = self->_hostCellRef._tableUid;
    columnUid = self->_hostCellRef._columnUid;
    v40 = tableUid;
    rowUid = self->_hostCellRef._rowUid;
    if (tableUid != 0uLL)
    {
      *(archive + 4) |= 0x10u;
      v28 = *(archive + 7);
      if (!v28)
      {
        v29 = *(archive + 1);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v28 = MEMORY[0x223DA0360](v29);
        *(archive + 7) = v28;
      }

      TSKUIDStruct::saveToMessage(&v40, v28);
    }

    if (columnUid != 0uLL)
    {
      *(archive + 4) |= 0x20u;
      v30 = *(archive + 8);
      if (!v30)
      {
        v31 = *(archive + 1);
        if (v31)
        {
          v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
        }

        v30 = MEMORY[0x223DA0360](v31);
        *(archive + 8) = v30;
      }

      TSKUIDStruct::saveToMessage(&columnUid, v30);
    }

    if (rowUid != 0uLL)
    {
      *(archive + 4) |= 0x40u;
      v32 = *(archive + 9);
      if (!v32)
      {
        v33 = *(archive + 1);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = MEMORY[0x223DA0360](v33);
        *(archive + 9) = v32;
      }

      TSKUIDStruct::saveToMessage(&rowUid, v32);
    }
  }

  if ((v14 & 6) != 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v11, 0x300020000000ALL, @"TSTCategorizedTables");
  }

  if ((objc_msgSend_backwardCompatiblePrePivot(self, v11, v12, v13, rowUid) & 1) == 0 && (objc_msgSend_canDowngradeForPrePivotFormat(self, v34, v35, v36) & 1) == 0)
  {
    objc_msgSend_requiresDocumentVersion_featureIdentifier_(archiverCopy, v37, 0xB000200000006, @"TSTPivotTables");
  }
}

- (id)initFromArchive:(const void *)archive
{
  v7 = objc_msgSend_init(self, a2, archive, v3);
  v11 = v7;
  if (v7)
  {
    v12 = *(archive + 21);
    v7[16] = *(archive + 20);
    v7[17] = v12;
    v7[18] = *(archive + 22);
    v13 = *(archive + 4);
    if ((v13 & 0x400) != 0)
    {
      v7[56] = *(archive + 92);
    }

    if (v13)
    {
      v14 = [TSTFormulaPredArg alloc];
      if (*(archive + 3))
      {
        v17 = objc_msgSend_initFromArchive_(v14, v15, *(archive + 3), v16);
      }

      else
      {
        v17 = objc_msgSend_initFromArchive_(v14, v15, &TST::_FormulaPredArgArchive_default_instance_, v16);
      }

      v18 = v11[4];
      v11[4] = v17;

      v13 = *(archive + 4);
    }

    if ((v13 & 2) != 0)
    {
      v19 = [TSTFormulaPredArg alloc];
      if (*(archive + 4))
      {
        v22 = objc_msgSend_initFromArchive_(v19, v20, *(archive + 4), v21);
      }

      else
      {
        v22 = objc_msgSend_initFromArchive_(v19, v20, &TST::_FormulaPredArgArchive_default_instance_, v21);
      }

      v23 = v11[5];
      v11[5] = v22;

      v13 = *(archive + 4);
    }

    if ((v13 & 4) != 0)
    {
      v24 = [TSTFormulaPredArg alloc];
      if (*(archive + 5))
      {
        v27 = objc_msgSend_initFromArchive_(v24, v25, *(archive + 5), v26);
      }

      else
      {
        v27 = objc_msgSend_initFromArchive_(v24, v25, &TST::_FormulaPredArgArchive_default_instance_, v26);
      }

      v28 = v11[6];
      v11[6] = v27;
    }

    if (!v11[4])
    {
      v5 = MEMORY[0x277D81150];
      v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "[TSTFormulaPredicate initFromArchive:]", v10);
      v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredicate.mm", v30);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v32, v4, v31, 2286, 0, "Have to have archived the _predArg0 argument for upgraded archive format");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    }

    v36 = *(archive + 4);
    if ((v36 & 8) != 0)
    {
      v37 = [TSCEFormulaObject alloc];
      if (*(archive + 6))
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v37, v38, *(archive + 6), 0);
      }

      else
      {
        isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v37, v38, TSCE::_FormulaArchive_default_instance_, 0);
      }

      v40 = v11[1];
      v11[1] = isPreUFF;

      v36 = *(archive + 4);
    }

    if ((v36 & 0x20) != 0 && (v36 & 0x40) != 0)
    {
      if ((v36 & 0x10) != 0)
      {
        v4 = TSKUIDStruct::loadFromMessage(*(archive + 7), v8);
        v5 = v8;
      }

      v41 = MEMORY[0x277D809E0];
      if (*(archive + 8))
      {
        v42 = *(archive + 8);
      }

      else
      {
        v42 = MEMORY[0x277D809E0];
      }

      v44 = TSKUIDStruct::loadFromMessage(v42, v8);
      v45 = v43;
      if (*(archive + 9))
      {
        v46 = *(archive + 9);
      }

      else
      {
        v46 = v41;
      }

      v47 = TSKUIDStruct::loadFromMessage(v46, v43);
      v11[8] = v44;
      v11[9] = v45;
      v11[10] = v47;
      v11[11] = v8;
      v11[12] = v4;
      v11[13] = v5;
    }

    if (v11[4])
    {
      objc_msgSend_recreateFormula(v11, v8, v9, v10);
    }
  }

  return v11;
}

- (unsigned)expectedArgTypeForPredicateType:(unsigned __int8)type firstArg:(BOOL)arg
{
  if (arg)
  {
    if ((type - 1) >= 0x3E)
    {
      return 0;
    }

    else
    {
      return byte_2217E1C7B[(type - 1)];
    }
  }

  else
  {
    if (type == 23)
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    if (((1 << type) & 0x300000000000) != 0)
    {
      v5 = 5;
    }

    if (((1 << type) & 0x120002000) != 0)
    {
      v5 = 1;
    }

    if (type <= 0x2Du)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

- (TSCEUidCellRef)hostCellRef
{
  tableUid = self[1]._tableUid;
  retstr->_columnUid = self[1]._rowUid;
  retstr->_rowUid = tableUid;
  retstr->_tableUid = self[2]._columnUid;
  return self;
}

- (void)setHostCellRef:(TSCEUidCellRef *)ref
{
  columnUid = ref->_columnUid;
  tableUid = ref->_tableUid;
  self->_hostCellRef._rowUid = ref->_rowUid;
  self->_hostCellRef._tableUid = tableUid;
  self->_hostCellRef._columnUid = columnUid;
}

- (id).cxx_construct
{
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 4) = 0u;
  return self;
}

@end