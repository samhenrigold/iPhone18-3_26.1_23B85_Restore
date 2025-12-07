@interface TSTFormulaPredArg
+ (id)defaultPredicateArg;
- (BOOL)BOOLValue;
- (BOOL)isBoolValueInList:(BOOL)list;
- (BOOL)isCellValueInList:(id)list;
- (BOOL)isDateValueInListYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (BOOL)isDurationValueInList:(double)list;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqual:(id)equal atHostCoord:(TSUModelCellCoord)coord;
- (BOOL)isNumberValueInList:(const TSUDecimal *)list locale:(id)locale;
- (BOOL)isStringValueInList:(id)list;
- (NSArray)dataList;
- (NSDate)date;
- (NSNumber)number;
- (NSString)string;
- (TSCECategoryRef)categoryRef;
- (TSCECellRef)cellRefForHostCoord:(SEL)coord;
- (TSCECrossTableReference)crossTableRef;
- (TSCEFormulaCreator)formulaCreatorForPredArg;
- (TSCEFormulaCreator)formulaCreatorForPredArg0UsingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef;
- (TSCENumberValue)duration;
- (TSCEViewTractRef)viewTractRef;
- (TSTFormulaPredArg)init;
- (TSTFormulaPredArg)initWithBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags;
- (TSTFormulaPredArg)initWithBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (TSTFormulaPredArg)initWithBool:(BOOL)bool;
- (TSTFormulaPredArg)initWithCategoryRef:(id)ref;
- (TSTFormulaPredArg)initWithCrossTableRef:(const TSCECrossTableReference *)ref;
- (TSTFormulaPredArg)initWithDataList:(id)list;
- (TSTFormulaPredArg)initWithDate:(id)date;
- (TSTFormulaPredArg)initWithDouble:(double)double;
- (TSTFormulaPredArg)initWithDuration:(double)duration units:(unsigned __int8)units;
- (TSTFormulaPredArg)initWithNumber:(id)number;
- (TSTFormulaPredArg)initWithRelativeCellRef:(const TSCERelativeCellRef *)ref;
- (TSTFormulaPredArg)initWithString:(id)string;
- (TSTFormulaPredArg)initWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list;
- (TSTFormulaPredArg)initWithViewTractRef:(id)ref;
- (TSTUIDRectRef)uidRectRef;
- (TSUPreserveFlags)preserveFlags;
- (const)baseCellRef;
- (const)relativeCellRef;
- (double)durationValue;
- (double)numberValue;
- (id).cxx_construct;
- (id)cellReference;
- (id)convertToRelativeRefIfPossible;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initAsBadRefWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list;
- (id)initFromArchive:(const void *)archive;
- (id)rewriteWithContext:(TSCEFormulaRewriteContext *)context forArgAt:(int64_t)at usingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef hostCellRef:(TSCEUidCellRef *)cellRef rewriteBlock:(id)block;
- (unint64_t)hash;
- (unsigned)durationUnits;
- (void)encodeToArchive:(void *)archive archiver:(id)archiver;
- (void)setBaseCellRef:(const void *)ref;
- (void)setBaseCellRef:(const void *)ref preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (void)setBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags;
- (void)setBaseCellReference:(id)reference;
- (void)setBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row;
- (void)setBoolValue:(BOOL)value;
- (void)setDate:(id)date;
- (void)setDurationUnits:(unsigned __int8)units;
- (void)setDurationValue:(double)value;
- (void)setNumber:(id)number;
- (void)setNumberValue:(double)value;
- (void)setPreserveFlags:(TSUPreserveFlags)flags;
- (void)setRelativeCellRef:(const TSCERelativeCellRef *)ref;
- (void)setString:(id)string;
@end

@implementation TSTFormulaPredArg

- (TSTFormulaPredArg)init
{
  v3.receiver = self;
  v3.super_class = TSTFormulaPredArg;
  result = [(TSTFormulaPredArg *)&v3 init];
  if (result)
  {
    result->_type = 0;
    result->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return result;
}

+ (id)defaultPredicateArg
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)initFromArchive:(const void *)archive
{
  v41.receiver = self;
  v41.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v41 init];
  v7 = v4;
  if (!v4)
  {
    return v7;
  }

  v8 = *(archive + 104);
  v4->_type = v8;
  v4->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  if (v8 <= 8)
  {
    if ((v8 - 1) < 3 || (v8 - 5) < 2)
    {
      if (*(archive + 16))
      {
        v9 = [TSTFormulaPredArgData alloc];
        if (*(archive + 6))
        {
          v12 = objc_msgSend_initFromArchive_(v9, v10, *(archive + 6), v11);
        }

        else
        {
          v12 = objc_msgSend_initFromArchive_(v9, v10, &TST::_FormulaPredArgDataArchive_default_instance_, v11);
        }

        data = v7->_data;
        v7->_data = v12;
        goto LABEL_43;
      }

      return v7;
    }

    if (v8 != 4)
    {
      return v7;
    }

    v21 = *(archive + 4);
    if ((v21 & 0x200) != 0)
    {
      v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFE | *(archive + 109);
      if ((v21 & 0x100) == 0)
      {
LABEL_27:
        if ((v21 & 4) == 0)
        {
          goto LABEL_28;
        }

LABEL_49:
        sub_221269BB4(*(archive + 8), v5, v40);
        *&v7->_relativeCellRef.relativeCoord._row = *v40;
        *(&v7->_relativeCellRef.tableUID + 1) = *(&v40[1] + 1);
        v7->_hasRelativeCellRef = 1;
        if ((*(archive + 4) & 0x10) != 0)
        {
          goto LABEL_50;
        }

LABEL_54:
        v38 = *(archive + 4);
        if ((v38 & 2) != 0)
        {
          sub_221269DB8(*(archive + 7), v40);
          v7->_baseCellRef._ref.coordinate = v40[0];
          v7->_baseCellRef._ref._tableUID = *&v40[1];
          v38 = *(archive + 4);
        }

        if ((v38 & 0x20) != 0)
        {
          v7->_hostCellCoord = sub_2212697C0(*(archive + 11));
        }

        return v7;
      }
    }

    else if ((v21 & 0x100) == 0)
    {
      goto LABEL_27;
    }

    if (*(archive + 108))
    {
      v32 = 2;
    }

    else
    {
      v32 = 0;
    }

    v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFD | v32;
    if ((v21 & 4) == 0)
    {
LABEL_28:
      if ((v21 & 0x10) == 0)
      {
        goto LABEL_54;
      }

LABEL_50:
      v33 = [TSCEUndoTractList alloc];
      if (*(archive + 10))
      {
        v36 = objc_msgSend_initWithArchive_(v33, v34, *(archive + 10), v35);
      }

      else
      {
        v36 = objc_msgSend_initWithArchive_(v33, v34, &TSCE::_ASTNodeArrayArchive_ASTUidTractList_default_instance_, v35);
      }

      uidTractList = v7->_uidTractList;
      v7->_uidTractList = v36;

      goto LABEL_54;
    }

    goto LABEL_49;
  }

  if (v8 > 10)
  {
    if (v8 == 11)
    {
      v23 = *(archive + 8);
      v24 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v5, v23, v6);
      if (v23 >= 1)
      {
        v25 = 8;
        do
        {
          v26 = [TSTFormulaPredArgData alloc];
          v31 = objc_msgSend_initFromArchive_(v26, v27, *(*(archive + 5) + v25), v28);
          if (v31)
          {
            objc_msgSend_addObject_(v24, v29, v31, v30);
          }

          v25 += 8;
          --v23;
        }

        while (v23);
      }

      data = v7->_dataList;
      v7->_dataList = v24;
      goto LABEL_43;
    }

    if (v8 != 12)
    {
      if (v8 == 13 && (*(archive + 16) & 0x40) != 0)
      {
        v14 = sub_22126A4CC(*(archive + 12), v5);
        viewTractRef = v7->_viewTractRef;
        v7->_viewTractRef = v14;

        v7->_preserveFlags._flags = objc_msgSend_preserveFlags(v7->_viewTractRef, v16, v17, v18);
      }

      return v7;
    }

LABEL_19:
    v20 = *(archive + 4);
    if ((v20 & 0x200) != 0)
    {
      v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFE | *(archive + 109);
      if ((v20 & 0x100) == 0)
      {
LABEL_21:
        if ((v20 & 4) == 0)
        {
          goto LABEL_22;
        }

        goto LABEL_35;
      }
    }

    else if ((v20 & 0x100) == 0)
    {
      goto LABEL_21;
    }

    if (*(archive + 108))
    {
      v22 = 2;
    }

    else
    {
      v22 = 0;
    }

    v4->_preserveFlags._flags = v4->_preserveFlags._flags & 0xFD | v22;
    if ((v20 & 4) == 0)
    {
LABEL_22:
      if ((v20 & 0x10) != 0)
      {
        goto LABEL_50;
      }

      goto LABEL_54;
    }

LABEL_35:
    sub_221269BB4(*(archive + 8), v5, v40);
    *&v7->_relativeCellRef.relativeCoord._row = *v40;
    *(&v7->_relativeCellRef.tableUID + 1) = *(&v40[1] + 1);
    if ((*(archive + 4) & 0x10) != 0)
    {
      goto LABEL_50;
    }

    goto LABEL_54;
  }

  if (v8 == 9)
  {
    goto LABEL_19;
  }

  if ((*(archive + 16) & 8) != 0)
  {
    v19 = sub_22126A0F4(*(archive + 9), v5);
    data = v7->_categoryRef;
    v7->_categoryRef = v19;
LABEL_43:
  }

  return v7;
}

- (void)encodeToArchive:(void *)archive archiver:(id)archiver
{
  v64 = *MEMORY[0x277D85DE8];
  archiverCopy = archiver;
  type = self->_type;
  v10 = *(archive + 4);
  *(archive + 4) = v10 | 0x80;
  *(archive + 26) = type;
  hostCellCoord = self->_hostCellCoord;
  if (hostCellCoord._coord.row != 0x7FFFFFFF && (*&hostCellCoord & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v62 = self->_hostCellCoord;
    *(archive + 4) = v10 | 0xA0;
    v13 = *(archive + 11);
    if (!v13)
    {
      v14 = *(archive + 1);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellCoordinateArchive>(v14);
      *(archive + 11) = v13;
    }

    sub_221269820(&v62, v13);
    type = self->_type;
  }

  if (type <= 8)
  {
    if ((type - 1) >= 3 && (type - 5) >= 2)
    {
      if (type == 4)
      {
        v34 = *(archive + 4);
        if (self->_hasRelativeCellRef)
        {
          *(archive + 4) = v34 | 4;
          v35 = *(archive + 8);
          if (!v35)
          {
            v36 = *(archive + 1);
            if (v36)
            {
              v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
            }

            v35 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v36);
            *(archive + 8) = v35;
          }

          sub_221269AA8(&self->_relativeCellRef.relativeCoord, v35);
          v34 = *(archive + 4);
        }

        flags = self->_preserveFlags._flags;
        *(archive + 109) = flags & 1;
        *(archive + 4) = v34 | 0x300;
        *(archive + 108) = (flags & 2) != 0;
        coordinate = self->_baseCellRef._ref.coordinate;
        if (coordinate.row != 0x7FFFFFFF && (*&coordinate & 0xFFFF00000000) != 0x7FFF00000000 && (self->_baseCellRef._ref._tableUID._lower || self->_baseCellRef._ref._tableUID._upper))
        {
          *(archive + 4) = v34 | 0x302;
          v39 = *(archive + 7);
          if (!v39)
          {
            v40 = *(archive + 1);
            if (v40)
            {
              v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
            }

            v39 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v40);
            *(archive + 7) = v39;
          }

          sub_221269A28(&self->_baseCellRef, v39);
        }

        uidTractList = self->_uidTractList;
        if (uidTractList)
        {
          *(archive + 4) |= 0x10u;
          v42 = *(archive + 10);
          if (!v42)
          {
            v43 = *(archive + 1);
            if (v43)
            {
              v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
            }

            v42 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v43);
            *(archive + 10) = v42;
          }

          objc_msgSend_saveToArchive_(uidTractList, v6, v42, v7);
        }
      }
    }

    else
    {
      data = self->_data;
      *(archive + 4) |= 1u;
      v16 = *(archive + 6);
      if (!v16)
      {
        v17 = *(archive + 1);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(v17);
        *(archive + 6) = v16;
      }

      objc_msgSend_encodeToArchive_archiver_(data, v6, v16, archiverCopy);
    }

    goto LABEL_18;
  }

  if (type > 10)
  {
    if (type != 11)
    {
      if (type != 12)
      {
        if (type == 13)
        {
          viewTractRef = self->_viewTractRef;
          *(archive + 4) |= 0x40u;
          v19 = *(archive + 12);
          if (!v19)
          {
            v20 = *(archive + 1);
            if (v20)
            {
              v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
            }

            v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ViewTractRefArchive>(v20);
            *(archive + 12) = v19;
          }

          sub_22126A2E4(viewTractRef, v19);
        }

        goto LABEL_18;
      }

      goto LABEL_34;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v44 = self->_dataList;
    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v45, &v58, v63, 16);
    if (!v47)
    {
      goto LABEL_92;
    }

    v48 = *v59;
LABEL_80:
    v49 = 0;
    while (1)
    {
      if (*v59 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v50 = *(*(&v58 + 1) + 8 * v49);
      v51 = *(archive + 5);
      if (!v51)
      {
        goto LABEL_88;
      }

      v52 = *(archive + 8);
      v53 = *v51;
      if (v52 >= *v51)
      {
        break;
      }

      *(archive + 8) = v52 + 1;
      objc_msgSend_encodeToArchive_archiver_(v50, v46, *&v51[2 * v52 + 2], archiverCopy, v58);
LABEL_90:
      if (v47 == ++v49)
      {
        v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v44, v46, &v58, v63, 16);
        if (!v47)
        {
LABEL_92:

          goto LABEL_18;
        }

        goto LABEL_80;
      }
    }

    if (v53 == *(archive + 9))
    {
LABEL_88:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
      v51 = *(archive + 5);
      v53 = *v51;
    }

    *v51 = v53 + 1;
    v54 = google::protobuf::Arena::CreateMaybeMessage<TST::FormulaPredArgDataArchive>(*(archive + 3));
    v55 = *(archive + 8);
    v56 = *(archive + 5) + 8 * v55;
    *(archive + 8) = v55 + 1;
    *(v56 + 8) = v54;
    objc_msgSend_encodeToArchive_archiver_(v50, v57, v54, archiverCopy, v58);
    goto LABEL_90;
  }

  if (type == 9)
  {
LABEL_34:
    if (self->_relativeCellRef.tableUID._lower || self->_relativeCellRef.tableUID._upper)
    {
      *(archive + 4) |= 4u;
      v26 = *(archive + 8);
      if (!v26)
      {
        v27 = *(archive + 1);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RelativeCellRefArchive>(v27);
        *(archive + 8) = v26;
      }

      sub_221269AA8(&self->_relativeCellRef.relativeCoord, v26);
    }

    v28 = self->_uidTractList;
    if (v28)
    {
      *(archive + 4) |= 0x10u;
      v29 = *(archive + 10);
      if (!v29)
      {
        v30 = *(archive + 1);
        if (v30)
        {
          v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
        }

        v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v30);
        *(archive + 10) = v29;
      }

      objc_msgSend_saveToArchive_(v28, v6, v29, v7);
    }

    v31 = self->_baseCellRef._ref.coordinate;
    if (v31.row != 0x7FFFFFFF && (*&v31 & 0xFFFF00000000) != 0x7FFF00000000 && (self->_baseCellRef._ref._tableUID._lower || self->_baseCellRef._ref._tableUID._upper))
    {
      *(archive + 4) |= 2u;
      v32 = *(archive + 7);
      if (!v32)
      {
        v33 = *(archive + 1);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v32 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CellReferenceArchive>(v33);
        *(archive + 7) = v32;
      }

      sub_221269A28(&self->_baseCellRef, v32);
    }

    goto LABEL_18;
  }

  categoryRef = self->_categoryRef;
  *(archive + 4) |= 8u;
  v22 = *(archive + 9);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::CategoryReferenceArchive>(v23);
    *(archive + 9) = v22;
  }

  sub_221269E08(categoryRef, v22);
  v24 = self->_preserveFlags._flags;
  v25 = *(archive + 4);
  *(archive + 109) = v24 & 1;
  *(archive + 4) = v25 | 0x300;
  *(archive + 108) = (v24 & 2) != 0;
LABEL_18:
}

- (TSTFormulaPredArg)initWithBool:(BOOL)bool
{
  boolCopy = bool;
  v12.receiver = self;
  v12.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = 6;
    v6 = [TSTFormulaPredArgData alloc];
    v9 = objc_msgSend_initWithBool_(v6, v7, boolCopy, v8);
    data = v5->_data;
    v5->_data = v9;

    v5->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v5;
}

- (BOOL)BOOLValue
{
  if (self->_type != 6)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg BOOLValue]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 608, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_BOOLValue(data, a2, v2, v3);
}

- (void)setBoolValue:(BOOL)value
{
  valueCopy = value;
  if (self->_type)
  {
    v6 = self->_type == 6;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setBoolValue:]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 613, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = [TSTFormulaPredArgData alloc];
  v20 = objc_msgSend_initWithBool_(v17, v18, valueCopy, v19);
  data = self->_data;
  self->_data = v20;

  self->_type = 6;
}

- (TSTFormulaPredArg)initWithDouble:(double)double
{
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, double);
  v9 = objc_msgSend_initWithNumber_(self, v7, v6, v8);

  return v9;
}

- (TSTFormulaPredArg)initWithNumber:(id)number
{
  numberCopy = number;
  v13.receiver = self;
  v13.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 1;
    v7 = [TSTFormulaPredArgData alloc];
    v10 = objc_msgSend_initWithNumber_(v7, v8, numberCopy, v9);
    data = v6->_data;
    v6->_data = v10;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (NSNumber)number
{
  if (self->_type != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg number]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 633, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_number(data, a2, v2, v3);
}

- (void)setNumber:(id)number
{
  numberCopy = number;
  if (self->_type >= 2u)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setNumber:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v10, 638, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = [TSTFormulaPredArgData alloc];
  v19 = objc_msgSend_initWithNumber_(v16, v17, numberCopy, v18);
  data = self->_data;
  self->_data = v19;

  self->_type = 1;
}

- (double)numberValue
{
  v4 = objc_msgSend_number(self, a2, v2, v3);
  objc_msgSend_doubleValue(v4, v5, v6, v7);
  v9 = v8;

  return v9;
}

- (void)setNumberValue:(double)value
{
  v8 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, v4, value);
  objc_msgSend_setNumber_(self, v6, v8, v7);
}

- (TSTFormulaPredArg)initWithDate:(id)date
{
  dateCopy = date;
  v13.receiver = self;
  v13.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 2;
    v7 = [TSTFormulaPredArgData alloc];
    v10 = objc_msgSend_initWithDate_(v7, v8, dateCopy, v9);
    data = v6->_data;
    v6->_data = v10;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (TSUPreserveFlags)preserveFlags
{
  type = self->_type;
  v5 = type > 0xD;
  v6 = (1 << type) & 0x2610;
  if (v5 || v6 == 0)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg preserveFlags]", v2);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v12);
    v14 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v15, v10, v13, 662, 0, "Wrong type accessor called on %@", v14);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  return self->_preserveFlags;
}

- (void)setPreserveFlags:(TSUPreserveFlags)flags
{
  if (self->_hasRelativeCellRef)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setPreserveFlags:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 667, 0, "Must set the entire relative reference, if you are relative");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  type = self->_type;
  v16 = type > 0xD;
  v17 = (1 << type) & 0x2610;
  if (v16 || v17 == 0)
  {
    v19 = MEMORY[0x277D81150];
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setPreserveFlags:]", v3);
    v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v22);
    v24 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v19, v25, v20, v23, 668, 0, "Wrong type accessor called on %@", v24);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  self->_preserveFlags = flags;
}

- (NSDate)date
{
  if (self->_type != 2)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg date]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 681, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_date(data, a2, v2, v3);
}

- (void)setDate:(id)date
{
  dateCopy = date;
  if ((self->_type | 2) != 2)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setDate:]", v5);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v10, 686, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = [TSTFormulaPredArgData alloc];
  v19 = objc_msgSend_initWithDate_(v16, v17, dateCopy, v18);
  data = self->_data;
  self->_data = v19;

  self->_type = 2;
}

- (TSTFormulaPredArg)initWithString:(id)string
{
  stringCopy = string;
  v13.receiver = self;
  v13.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v5->_type = 3;
    v7 = [TSTFormulaPredArgData alloc];
    v10 = objc_msgSend_initWithString_(v7, v8, stringCopy, v9);
    data = v6->_data;
    v6->_data = v10;

    v6->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v6;
}

- (NSString)string
{
  if (self->_type != 3)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg string]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 702, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_string(data, a2, v2, v3);
}

- (void)setString:(id)string
{
  stringCopy = string;
  if (self->_type)
  {
    v6 = self->_type == 3;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "[TSTFormulaPredArg setString:]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 707, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = [TSTFormulaPredArgData alloc];
  v20 = objc_msgSend_initWithString_(v17, v18, stringCopy, v19);
  data = self->_data;
  self->_data = v20;

  self->_type = 3;
}

- (TSTFormulaPredArg)initWithDataList:(id)list
{
  v45 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v43.receiver = self;
  v43.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v43 init];
  v9 = v5;
  if (v5)
  {
    v5->_type = 11;
    v10 = objc_msgSend_copy(listCopy, v6, v7, v8);
    dataList = v9->_dataList;
    v9->_dataList = v10;

    v9->_hostCellCoord = 0x7FFF7FFFFFFFLL;
    v12 = objc_alloc(MEMORY[0x277CBEB58]);
    v16 = objc_msgSend_count(listCopy, v13, v14, v15);
    v19 = objc_msgSend_initWithCapacity_(v12, v17, v16, v18);
    listItemsSet = v9->_listItemsSet;
    v9->_listItemsSet = v19;

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v21 = listCopy;
    v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v39, v44, 16);
    if (v26)
    {
      v27 = *v40;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v40 != v27)
          {
            objc_enumerationMutation(v21);
          }

          v29 = *(*(&v39 + 1) + 8 * i);
          if (objc_msgSend_dataType(v29, v23, v24, v25, v39) == 3)
          {
            v30 = objc_msgSend_string(v29, v23, v24, v25);
            v34 = objc_msgSend_lowercaseString(v30, v31, v32, v33);

            if (v34)
            {
              v37 = v34;
              objc_msgSend_addObject_(v9->_listItemsSet, v35, v34, v36);
            }

            else
            {
              v37 = &stru_2834BADA0;
              objc_msgSend_addObject_(v9->_listItemsSet, v35, &stru_2834BADA0, v36);
            }
          }
        }

        v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v39, v44, 16);
      }

      while (v26);
    }
  }

  return v9;
}

- (NSArray)dataList
{
  if (self->_type != 11)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg dataList]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    v9 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 737, 0, "Wrong type accessor called on %@", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  dataList = self->_dataList;

  return dataList;
}

- (BOOL)isStringValueInList:(id)list
{
  listCopy = list;
  v8 = objc_msgSend_lowercaseString(listCopy, v5, v6, v7);

  if (v8)
  {
    v11 = v8;
    v12 = objc_msgSend_containsObject_(self->_listItemsSet, v9, v8, v10);
  }

  else
  {
    v11 = &stru_2834BADA0;
    v12 = objc_msgSend_containsObject_(self->_listItemsSet, v9, &stru_2834BADA0, v10);
  }

  v13 = v12;

  return v13;
}

- (BOOL)isDateValueInListYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = self->_dataList;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v19, v23, 16);
  if (v13)
  {
    v14 = *v20;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v8);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        if (objc_msgSend_dataType(v16, v10, v11, v12, v19) == 2 && objc_msgSend_day(v16, v10, v11, v12) == day && objc_msgSend_year(v16, v10, v11, v12) == year && objc_msgSend_month(v16, v10, v11, v12) == month)
        {
          v17 = 1;
          goto LABEL_14;
        }
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v19, v23, 16);
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_14:

  return v17;
}

- (BOOL)isNumberValueInList:(const TSUDecimal *)list locale:(id)locale
{
  v28 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  TSUDecimal::doubleValue(list);
  v8 = v7;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = self->_dataList;
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v23, v27, 16);
  if (v14)
  {
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v9);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (objc_msgSend_dataType(v17, v11, v12, v13, v23) == 1)
        {
          objc_msgSend_doubleValue(v17, v11, v12, v13);
          if (objc_msgSend_isEqualViaFormattingAsDouble::(localeCopy, v18, v19, v20, v8, v21))
          {
            LOBYTE(v14) = 1;
            goto LABEL_12;
          }
        }
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v11, &v23, v27, 16);
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v14;
}

- (BOOL)isDurationValueInList:(double)list
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataList;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_dataType(v12, v6, v7, v8, v15) == 5)
        {
          objc_msgSend_durationValue(v12, v6, v7, v8);
          if (v13 == list)
          {
            LOBYTE(v9) = 1;
            goto LABEL_12;
          }
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v9;
}

- (BOOL)isBoolValueInList:(BOOL)list
{
  listCopy = list;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_dataList;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v9)
  {
    v10 = *v16;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_dataType(v12, v6, v7, v8, v15) == 6 && objc_msgSend_BOOLValue(v12, v6, v7, v8) == listCopy)
        {
          v13 = 1;
          goto LABEL_12;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v6, &v15, v19, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_12:

  return v13;
}

- (BOOL)isCellValueInList:(id)list
{
  listCopy = list;
  v8 = objc_msgSend_formattedValue(listCopy, v5, v6, v7);
  isStringValueInList = objc_msgSend_isStringValueInList_(self, v9, v8, v10);

  if ((isStringValueInList & 1) == 0)
  {
    v16 = objc_msgSend_valueType(listCopy, v12, v13, v14);
    v15 = 0;
    if (v16 > 5)
    {
      switch(v16)
      {
        case 6:
          v32 = objc_msgSend_BOOLValue(listCopy, v17, v18, v19);
          isBoolValueInList = objc_msgSend_isBoolValueInList_(self, v33, v32, v34);
          break;
        case 7:
          objc_msgSend_durationTimeIntervalValue(listCopy, v17, v18, v19);
          isBoolValueInList = objc_msgSend_isDurationValueInList_(self, v36, v37, v38);
          break;
        case 10:
          goto LABEL_11;
        default:
          goto LABEL_16;
      }

      v15 = isBoolValueInList;
      goto LABEL_16;
    }

    if (v16 != 2)
    {
      if (v16 != 5)
      {
        goto LABEL_16;
      }

      v20 = objc_msgSend_dateValue(listCopy, v17, v18, v19);
      v41 = 0x7FFFFFFFFFFFFFFFLL;
      v42[0] = 0x7FFFFFFFFFFFFFFFLL;
      v40 = 0x7FFFFFFFFFFFFFFFLL;
      v24 = objc_msgSend_gregorianCalendar(TSCECalendar, v21, v22, v23);
      objc_msgSend_extractComponentsFromDate_year_month_day_(v24, v25, v20, v42, &v41, &v40);
      isDateValueInListYear_month_day = objc_msgSend_isDateValueInListYear_month_day_(self, v26, v42[0], v41, v40);
LABEL_12:
      v15 = isDateValueInListYear_month_day;

      goto LABEL_16;
    }

LABEL_11:
    v42[0] = objc_msgSend_underlyingDecimalValue(listCopy, v17, v18, v19);
    v42[1] = v28;
    v20 = objc_msgSend_locale(listCopy, v28, v29, v30);
    isDateValueInListYear_month_day = objc_msgSend_isNumberValueInList_locale_(self, v31, v42, v20);
    goto LABEL_12;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (TSTFormulaPredArg)initWithRelativeCellRef:(const TSCERelativeCellRef *)ref
{
  v9.receiver = self;
  v9.super_class = TSTFormulaPredArg;
  v4 = [(TSTFormulaPredArg *)&v9 init];
  v7 = v4;
  if (v4)
  {
    v4->_type = 4;
    objc_msgSend_setRelativeCellRef_(v4, v5, ref, v6);
    v7->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v7;
}

- (const)relativeCellRef
{
  if ((self->_type | 4) != 4)
  {
    v4 = MEMORY[0x277D81150];
    v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg relativeCellRef]", v2);
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v7);
    v9 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v10, v5, v8, 873, 0, "Wrong type accessor called on %@", v9);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  if (self->_hasRelativeCellRef)
  {
    return &self->_relativeCellRef;
  }

  if (atomic_load_explicit(byte_27CFB53D8, memory_order_acquire))
  {
    return &qword_27CFB53E0;
  }

  sub_2216F764C(&v15);
  return v15;
}

- (void)setRelativeCellRef:(const TSCERelativeCellRef *)ref
{
  if ((self->_type | 4) != 4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setRelativeCellRef:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v10, 885, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = *&ref->relativeCoord._row;
  *(&self->_relativeCellRef.tableUID + 1) = *(&ref->tableUID + 1);
  *&self->_relativeCellRef.relativeCoord._row = v16;
  *&self->_hasRelativeCellRef = 1025;
  self->_baseCellRef._ref.coordinate = 0x7FFF7FFFFFFFLL;
  self->_preserveFlags._flags = *(&self->_relativeCellRef + 24) & 3;
}

- (TSTFormulaPredArg)initWithCrossTableRef:(const TSCECrossTableReference *)ref
{
  var1 = ref->var1;
  v5 = *&var1 & 0xFFFF00000000;
  v6 = var1._row != 0x7FFFFFFFLL;
  v7 = 4 * ((*&var1 & 0xFFFF00000000) != 0x7FFF00000000);
  if (var1._row != 0x7FFFFFFFLL)
  {
    v7 = 0;
  }

  v11 = ref->var1;
  var0 = ref->var0;
  v8 = (*&var1 >> 47) & 2 | *&var1._preserveColumn;
  v9 = 8 * v6;
  if (v5 != 0x7FFF00000000)
  {
    v9 = 0;
  }

  v13 = v7 | v9 | v8;
  return objc_msgSend_initWithRelativeCellRef_(self, a2, &v11, v3);
}

- (TSCECrossTableReference)crossTableRef
{
  if (self->_hasRelativeCellRef)
  {
    v7 = objc_msgSend_relativeCellRef(self, a3, v3, v4);
    v8 = *v7;
    retstr->var0 = *(v7 + 8);
    v24._flags = *(v7 + 24) & 3;
    retstr->var1 = v8;
    return TSCERelativeCellCoordinate::setPreserveFlags(&retstr->var1, &v24);
  }

  else
  {
    hostCellCoord = self->_hostCellCoord;
    if (hostCellCoord._coord.row == 0x7FFFFFFF || (*&hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
    {
      v12 = MEMORY[0x277D81150];
      v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSTFormulaPredArg crossTableRef]", v4);
      v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v15);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 912, 0, "Need a host-cell if we aren't storing a relativeRef");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
      hostCellCoord = self->_hostCellCoord;
    }

    coordinate = self->_baseCellRef._ref.coordinate;
    p_preserveFlags = &self->_preserveFlags;
    RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&hostCellCoord, coordinate, p_preserveFlags, v4);
    retstr->var0 = self->_baseCellRef._ref._tableUID;
    retstr->var1 = RelativeCellCoordinateFromAbsoluteCoordinates;

    return TSCERelativeCellCoordinate::setPreserveFlags(&retstr->var1, &self->_preserveFlags);
  }
}

- (TSTUIDRectRef)uidRectRef
{
  if (self->_type == 13 && (viewTractRef = self->_viewTractRef) != 0)
  {
    v6 = objc_msgSend_tract(viewTractRef, a2, v2, v3);
    v10 = v6;
    memset(v44, 0, sizeof(v44));
    *__p = 0u;
    if (v6)
    {
      v11 = objc_msgSend_columnUids(v6, v7, v8, v9);
      v15 = objc_msgSend_rowUids(v10, v12, v13, v14);
      sub_2210BBBE8(v39, v11, v15);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v39;
      v44[0] = v40;
      v39[1] = 0;
      v40 = 0;
      v39[0] = 0;
      v16 = v44[1];
      if (v44[1])
      {
        v44[2] = v44[1];
        operator delete(v44[1]);
        v16 = v39[0];
      }

      *&v44[1] = v41;
      v44[3] = v42;
      v42 = 0;
      v41 = 0uLL;
      if (v16)
      {
        v39[1] = v16;
        operator delete(v16);
      }
    }

    v17 = objc_msgSend_preserveFlags(self->_viewTractRef, v7, v8, v9, v39[0], v39[1], v40, v41, v42);
    v18 = [TSTUIDRectRef alloc];
    v39[0] = objc_msgSend_tableUID(self->_viewTractRef, v19, v20, v21);
    v39[1] = v22;
    v23 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v18, v22, 0, v39, __p, v17);
  }

  else
  {
    v24 = objc_msgSend_includedUidsTract(self->_uidTractList, a2, v2, v3);
    v10 = v24;
    memset(v44, 0, sizeof(v44));
    *__p = 0u;
    if (v24)
    {
      v28 = objc_msgSend_columnUids(v24, v25, v26, v27);
      v32 = objc_msgSend_rowUids(v10, v29, v30, v31);
      sub_2210BBBE8(v39, v28, v32);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *v39;
      v44[0] = v40;
      v39[1] = 0;
      v40 = 0;
      v39[0] = 0;
      v33 = v44[1];
      if (v44[1])
      {
        v44[2] = v44[1];
        operator delete(v44[1]);
        v33 = v39[0];
      }

      *&v44[1] = v41;
      v44[3] = v42;
      v42 = 0;
      v41 = 0uLL;
      if (v33)
      {
        v39[1] = v33;
        operator delete(v33);
      }
    }

    v34 = objc_msgSend_preserveFlags(self->_uidTractList, v25, v26, v27, v39[0], v39[1], v40, v41, v42);
    v35 = [TSTUIDRectRef alloc];
    v23 = objc_msgSend_initWithCalcEngine_tableUID_uidRange_preserveFlags_(v35, v36, 0, &self->_relativeCellRef.tableUID, __p, v34);
  }

  v37 = v23;
  if (v44[1])
  {
    v44[2] = v44[1];
    operator delete(v44[1]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return v37;
}

- (TSTFormulaPredArg)initWithCategoryRef:(id)ref
{
  refCopy = ref;
  v10.receiver = self;
  v10.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v10 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setCategoryRef_(v5, v6, refCopy, v7);
  }

  return v8;
}

- (TSCECategoryRef)categoryRef
{
  if ((objc_msgSend_hasCategoryRef(self, a2, v2, v3) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTFormulaPredArg categoryRef]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 960, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  categoryRef = self->_categoryRef;

  return categoryRef;
}

- (TSTFormulaPredArg)initWithViewTractRef:(id)ref
{
  refCopy = ref;
  v10.receiver = self;
  v10.super_class = TSTFormulaPredArg;
  v5 = [(TSTFormulaPredArg *)&v10 init];
  v8 = v5;
  if (v5)
  {
    objc_msgSend_setViewTractRef_(v5, v6, refCopy, v7);
  }

  return v8;
}

- (TSCEViewTractRef)viewTractRef
{
  if ((objc_msgSend_hasViewTractRef(self, a2, v2, v3) & 1) == 0)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSTFormulaPredArg viewTractRef]", v6);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 981, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  viewTractRef = self->_viewTractRef;

  return viewTractRef;
}

- (id)initAsBadRefWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list
{
  result = objc_msgSend_initWithTableUID_uidTractList_(self, a2, d, list);
  if (result)
  {
    *(result + 113) = 9;
  }

  return result;
}

- (TSTFormulaPredArg)initWithTableUID:(const TSKUIDStruct *)d uidTractList:(id)list
{
  listCopy = list;
  v18.receiver = self;
  v18.super_class = TSTFormulaPredArg;
  v7 = [(TSTFormulaPredArg *)&v18 init];
  v11 = v7;
  if (v7)
  {
    v7->_relativeCellRef.tableUID = *d;
    v7->_type = 12;
    v12 = objc_msgSend_copy(listCopy, v8, v9, v10);
    uidTractList = v11->_uidTractList;
    v11->_uidTractList = v12;

    v11->_preserveFlags._flags = objc_msgSend_preserveFlags(listCopy, v14, v15, v16);
    v11->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return v11;
}

- (TSTFormulaPredArg)initWithBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags
{
  v8.receiver = self;
  v8.super_class = TSTFormulaPredArg;
  result = [(TSTFormulaPredArg *)&v8 init];
  if (result)
  {
    v7 = *ref;
    result->_baseCellRef._ref._tableUID._upper = *(ref + 2);
    *&result->_baseCellRef._ref.coordinate.row = v7;
    result->_type = 4;
    result->_preserveFlags = flags->_flags;
    result->_hostCellCoord = 0x7FFF7FFFFFFFLL;
  }

  return result;
}

- (const)baseCellRef
{
  type = self->_type;
  if (type != 4 && type != 9)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg baseCellRef]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v10);
    v12 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v13, v8, v11, 1021, 0, "Wrong type accessor called on %@", v12);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (self->_hasRelativeCellRef)
  {
    hostCellCoord = self->_hostCellCoord;
    if (hostCellCoord != 0x7FFFFFFF && (hostCellCoord & 0xFFFF00000000) != 0x7FFF00000000)
    {
      objc_msgSend_cellRefForHostCoord_(self, a2, hostCellCoord, v3);
      self->_baseCellRef._ref.coordinate = v27;
      v19 = *v28;
LABEL_17:
      self->_baseCellRef._ref._tableUID = v19;
    }
  }

  else if (self->_type == 9)
  {
    v20 = objc_msgSend_uidRectRef(self, a2, v2, v3);
    v24 = v20;
    if (v20)
    {
      objc_msgSend_baseRangeRef(v20, v21, v22, v23);
      v25 = v27;
    }

    else
    {
      v25 = 0;
      *&v28[8] = 0u;
    }

    self->_baseCellRef._ref.coordinate = v25;
    v19 = *&v28[8];
    goto LABEL_17;
  }

  return &self->_baseCellRef;
}

- (TSCECellRef)cellRefForHostCoord:(SEL)coord
{
  type = self->_type;
  if (type != 4 && type != 9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], coord, "[TSTFormulaPredArg cellRefForHostCoord:]", v4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v14, 1038, 0, "Wrong type accessor called on %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  if (self->_hasRelativeCellRef)
  {
    coord = a4._coord;
    TSCERelativeCellRef::cellRefForHostCoord(&self->_relativeCellRef, &coord, retstr, v4);
  }

  else
  {
    result = objc_msgSend_baseCellRef(self, coord, *&a4, v4);
    upper = result->_tableUID._upper;
    *&retstr->coordinate.row = *&result->coordinate.row;
    retstr->_tableUID._upper = upper;
  }

  return result;
}

- (id)convertToRelativeRefIfPossible
{
  selfCopy = self;
  v3 = selfCopy;
  if (selfCopy->_type == 4 && !selfCopy->_hasRelativeCellRef)
  {
    v4 = [TSTFormulaPredArg alloc];
    objc_msgSend_crossTableRef(v3, v5, v6, v7);
    v10 = objc_msgSend_initWithCrossTableRef_(v4, v8, v12, v9);

    v3 = v10;
  }

  return v3;
}

- (void)setBaseCellRef:(const void *)ref
{
  if ((self->_type | 4) != 4)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setBaseCellRef:]", v3);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v9);
    v11 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v12, v7, v10, 1052, 0, "Wrong type accessor called on %@", v11);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  v16 = *ref;
  self->_baseCellRef._ref._tableUID._upper = *(ref + 2);
  *&self->_baseCellRef._ref.coordinate.row = v16;
  *&self->_hasRelativeCellRef = 1024;
}

- (void)setBaseCellRef:(const void *)ref preserveFlags:(const TSUPreserveFlags *)flags
{
  objc_msgSend_setBaseCellRef_(self, a2, ref, flags);
  flags = flags->_flags;

  objc_msgSend_setPreserveFlags_(self, v6, flags, v7);
}

- (void)setBaseCellRef:(const void *)ref preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  columnCopy = column;
  objc_msgSend_setBaseCellRef_(self, a2, ref, column);
  v10 = 2;
  if (!rowCopy)
  {
    v10 = 0;
  }

  objc_msgSend_setPreserveFlags_(self, v8, v10 | columnCopy, v9);
}

- (TSTFormulaPredArg)initWithBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  TSCECellRef::TSCECellRef(&v12, reference);
  v13 = v12;
  if (rowCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  v11 = v9 | column;
  return objc_msgSend_initWithBaseCellRef_preserveFlags_(self, v8, &v13, &v11);
}

- (id)cellReference
{
  v4 = objc_msgSend_baseCellRef(self, a2, v2, v3);

  return TSCECellRef::wrapped(v4);
}

- (void)setBaseCellReference:(id)reference
{
  referenceCopy = reference;
  v8 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v5, v6, v7);
  }

  else
  {
    v9 = 0uLL;
    v10 = 0;
  }

  v11 = v9;
  v12 = v10;
  objc_msgSend_setBaseCellRef_(self, v5, &v11, v7);
}

- (void)setBaseCellReference:(id)reference preserveColumn:(BOOL)column preserveRow:(BOOL)row
{
  rowCopy = row;
  referenceCopy = reference;
  v12 = referenceCopy;
  if (referenceCopy)
  {
    objc_msgSend_cellRef(referenceCopy, v9, v10, v11);
  }

  else
  {
    v15 = 0uLL;
    v16 = 0;
  }

  v17 = v15;
  v18 = v16;
  if (rowCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 | column;
  objc_msgSend_setBaseCellRef_preserveFlags_(self, v9, &v17, &v14);
}

- (TSTFormulaPredArg)initWithDuration:(double)duration units:(unsigned __int8)units
{
  unitsCopy = units;
  v14.receiver = self;
  v14.super_class = TSTFormulaPredArg;
  v6 = [(TSTFormulaPredArg *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_type = 5;
    v8 = [TSTFormulaPredArgData alloc];
    v11 = objc_msgSend_initWithDuration_units_(v8, v9, unitsCopy, v10, duration);
    data = v7->_data;
    v7->_data = v11;
  }

  return v7;
}

- (double)durationValue
{
  if (self->_type != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg durationValue]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 1095, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  objc_msgSend_durationValue(data, a2, v2, v3);
  return result;
}

- (void)setDurationValue:(double)value
{
  type = self->_type;
  v7 = type > 5;
  v8 = (1 << type) & 0x23;
  if (v7 || v8 == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setDurationValue:]", v3);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v14, 1102, 0, "Wrong type accessor called on %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = [TSTFormulaPredArgData alloc];
  v24 = objc_msgSend_durationUnits(self->_data, v21, v22, v23);
  v27 = objc_msgSend_initWithDuration_units_(v20, v25, v24, v26, value);
  data = self->_data;
  self->_data = v27;

  self->_type = 5;
}

- (unsigned)durationUnits
{
  if (self->_type != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg durationUnits]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 1109, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_durationUnits(data, a2, v2, v3);
}

- (TSCENumberValue)duration
{
  if (self->_type != 5)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg duration]", v3);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v8);
    v10 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v11, v6, v9, 1114, 0, "Wrong type accessor called on %@", v10);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  data = self->_data;

  return objc_msgSend_duration(data, a2, v2, v3);
}

- (void)setDurationUnits:(unsigned __int8)units
{
  unitsCopy = units;
  type = self->_type;
  v7 = type > 5;
  v8 = (1 << type) & 0x23;
  if (v7 || v8 == 0)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg setDurationUnits:]", v3);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v13);
    v15 = objc_opt_class();
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v16, v11, v14, 1121, 0, "Wrong type accessor called on %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = [TSTFormulaPredArgData alloc];
  objc_msgSend_durationValue(self->_data, v21, v22, v23);
  v26 = objc_msgSend_initWithDuration_units_(v20, v24, unitsCopy, v25);
  data = self->_data;
  self->_data = v26;

  self->_type = 5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = 0;
  type = self->_type;
  if (type > 5)
  {
    if (self->_type > 0xAu)
    {
      switch(type)
      {
        case 0xBu:
          v49 = [TSTFormulaPredArg alloc];
          v11 = objc_msgSend_dataList(self, v50, v51, v52);
          inited = objc_msgSend_initWithDataList_(v49, v53, v11, v54);
          break;
        case 0xCu:
          v72 = [TSTFormulaPredArg alloc];
          v11 = objc_msgSend_copy(self->_uidTractList, v73, v74, v75);
          inited = objc_msgSend_initWithTableUID_uidTractList_(v72, v76, &self->_relativeCellRef.tableUID, v11);
          break;
        case 0xDu:
          v32 = [TSTFormulaPredArg alloc];
          viewTractRef = self->_viewTractRef;

          return objc_msgSend_initWithViewTractRef_(v32, v33, viewTractRef, v34);
        default:
          return v5;
      }
    }

    else
    {
      if (type == 6)
      {
        v36 = [TSTFormulaPredArg alloc];
        v41 = objc_msgSend_BOOLValue(self, v37, v38, v39);

        return objc_msgSend_initWithBool_(v36, v40, v41, v42);
      }

      if (type != 9)
      {
        if (type == 10)
        {
          v15 = [TSTFormulaPredArg alloc];
          categoryRef = self->_categoryRef;

          return objc_msgSend_initWithCategoryRef_(v15, v16, categoryRef, v17);
        }

        return v5;
      }

      v61 = [TSTFormulaPredArg alloc];
      v11 = objc_msgSend_copy(self->_uidTractList, v62, v63, v64);
      inited = objc_msgSend_initAsBadRefWithTableUID_uidTractList_(v61, v65, &self->_relativeCellRef.tableUID, v11);
    }

LABEL_40:
    v5 = inited;

    return v5;
  }

  if (self->_type > 2u)
  {
    if (type != 3)
    {
      if (type == 4)
      {
        hasRelativeCellRef = objc_msgSend_hasRelativeCellRef(self, a2, zone, v3);
        v67 = [TSTFormulaPredArg alloc];
        v71 = v67;
        if (!hasRelativeCellRef)
        {
          v77 = objc_msgSend_baseCellRef(self, v68, v69, v70);
          v82 = objc_msgSend_preserveFlags(self, v78, v79, v80);
          return objc_msgSend_initWithBaseCellRef_preserveFlags_(v71, v81, v77, &v82);
        }

        return objc_msgSend_initWithRelativeCellRef_(v67, v68, &self->_relativeCellRef, v70);
      }

      if (type == 5)
      {
        v20 = [TSTFormulaPredArg alloc];
        objc_msgSend_durationValue(self, v21, v22, v23);
        v25 = v24;
        v30 = objc_msgSend_durationUnits(self, v26, v27, v28);

        return objc_msgSend_initWithDuration_units_(v20, v29, v30, v31, v25);
      }

      return v5;
    }

    v43 = [TSTFormulaPredArg alloc];
    v11 = objc_msgSend_string(self, v44, v45, v46);
    inited = objc_msgSend_initWithString_(v43, v47, v11, v48);
    goto LABEL_40;
  }

  if (self->_type)
  {
    if (type == 1)
    {
      v55 = [TSTFormulaPredArg alloc];
      v11 = objc_msgSend_number(self, v56, v57, v58);
      inited = objc_msgSend_initWithNumber_(v55, v59, v11, v60);
    }

    else
    {
      v7 = [TSTFormulaPredArg alloc];
      v11 = objc_msgSend_date(self, v8, v9, v10);
      inited = objc_msgSend_initWithDate_(v7, v12, v11, v13);
    }

    goto LABEL_40;
  }

  return objc_opt_new();
}

- (unint64_t)hash
{
  v5 = objc_msgSend_type(self, a2, v2, v3);
  v9 = objc_msgSend_type(self, v6, v7, v8);
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9 == 1)
      {
        v13 = objc_msgSend_number(self, v10, v11, v12);
        v17 = objc_msgSend_hash(v13, v23, v24, v25);
        goto LABEL_26;
      }

      if (v9 == 2)
      {
        v13 = objc_msgSend_date(self, v10, v11, v12);
        v17 = objc_msgSend_hash(v13, v20, v21, v22);
        goto LABEL_26;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v13 = objc_msgSend_string(self, v10, v11, v12);
        v17 = objc_msgSend_hash(v13, v33, v34, v35);
        goto LABEL_26;
      }

      if (v9 == 4)
      {
        if (self->_hasRelativeCellRef)
        {
          v26 = objc_msgSend_relativeCellRef(self, v10, v11, v12);
          v27 = *v26 + (*(v26 + 2) << 16);
          v28 = (*(v26 + 2) ^ *(v26 + 1)) + (v26[6] & 1) + ((*(v26 + 24) >> 1) & 1);
        }

        else
        {
          v39 = objc_msgSend_baseCellRef(self, v10, v11, v12);
          v27 = *(v39 + 4) + (*v39 << 15);
          v28 = *(v39 + 16) ^ *(v39 + 8);
        }

        v19 = v28 ^ v27;
      }

      else
      {
        objc_msgSend_durationValue(self, v10, v11, v12);
        v19 = (v18 * 100.0);
      }

      v5 += v19;
    }
  }

  else if (v9 > 10)
  {
    switch(v9)
    {
      case 11:
        v13 = objc_msgSend_dataList(self, v10, v11, v12);
        v17 = objc_msgSend_count(v13, v36, v37, v38);
        goto LABEL_26;
      case 12:
        v32 = self->_relativeCellRef.tableUID._upper ^ self->_relativeCellRef.tableUID._lower;
        v5 += v32 + objc_msgSend_hash(self->_uidTractList, v10, v11, v12);
        break;
      case 13:
        v5 += objc_msgSend_hash(self->_viewTractRef, v10, v11, v12);
        break;
    }
  }

  else
  {
    switch(v9)
    {
      case 6:
        v5 += objc_msgSend_BOOLValue(self, v10, v11, v12);
        break;
      case 9:
        v13 = objc_msgSend_uidRectRef(self, v10, v11, v12);
        v17 = objc_msgSend_hash(v13, v29, v30, v31);
        goto LABEL_26;
      case 10:
        v13 = objc_msgSend_categoryRef(self, v10, v11, v12);
        v17 = objc_msgSend_hash(v13, v14, v15, v16);
LABEL_26:
        v5 += v17;

        break;
    }
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = equalCopy;
  LOBYTE(uidTractList) = self == equalCopy;
  if (!equalCopy || self == equalCopy)
  {
    goto LABEL_52;
  }

  v10 = objc_msgSend_type(self, v5, v6, v7);
  if (v10 != objc_msgSend_type(v8, v11, v12, v13))
  {
    goto LABEL_51;
  }

  v17 = objc_msgSend_type(self, v14, v15, v16);
  LOBYTE(uidTractList) = 1;
  if (v17 <= 5)
  {
    if (v17 <= 2)
    {
      if (v17 == 1)
      {
        v21 = objc_msgSend_number(self, v18, v19, v20);
        v25 = objc_msgSend_number(v8, v53, v54, v55);
        isEqual = objc_msgSend_isEqual_(v21, v56, v25, v57);
        goto LABEL_34;
      }

      if (v17 == 2)
      {
        v21 = objc_msgSend_date(self, v18, v19, v20);
        v25 = objc_msgSend_date(v8, v48, v49, v50);
        isEqual = objc_msgSend_isEqual_(v21, v51, v25, v52);
        goto LABEL_34;
      }

      goto LABEL_52;
    }

    if (v17 == 3)
    {
      v21 = objc_msgSend_string(self, v18, v19, v20);
      v25 = objc_msgSend_string(v8, v69, v70, v71);
      isEqual = objc_msgSend_isEqual_(v21, v72, v25, v73);
      goto LABEL_34;
    }

    if (v17 != 4)
    {
      objc_msgSend_durationValue(self, v18, v19, v20);
      v30 = v29;
      objc_msgSend_durationValue(v8, v31, v32, v33);
      if (v30 != v37)
      {
        goto LABEL_51;
      }

      v38 = objc_msgSend_durationUnits(self, v34, v35, v36);
      v42 = v38 == objc_msgSend_durationUnits(v8, v39, v40, v41);
LABEL_15:
      LOBYTE(uidTractList) = v42;
      goto LABEL_52;
    }

    if (self->_hasRelativeCellRef && v8->_hasRelativeCellRef)
    {
      uidTractList = objc_msgSend_relativeCellRef(self, v18, v19, v20);
      v61 = objc_msgSend_relativeCellRef(v8, v58, v59, v60);
      LOBYTE(uidTractList) = sub_2212C2640(uidTractList, v61);
      goto LABEL_52;
    }

    v99 = objc_msgSend_baseCellRef(self, v18, v19, v20);
    v103 = objc_msgSend_baseCellRef(v8, v100, v101, v102);
    if (*v99 == *v103 && ((*v103 ^ *v99) & 0x101FFFF00000000) == 0 && v99[1] == v103[1] && v99[2] == v103[2])
    {
      v107 = objc_msgSend_preserveFlags(self, v104, v105, v106);
      v42 = v107 == objc_msgSend_preserveFlags(v8, v108, v109, v110);
      goto LABEL_15;
    }

LABEL_51:
    LOBYTE(uidTractList) = 0;
    goto LABEL_52;
  }

  if (v17 <= 10)
  {
    switch(v17)
    {
      case 6:
        v74 = objc_msgSend_BOOLValue(self, v18, v19, v20);
        LODWORD(uidTractList) = v74 ^ objc_msgSend_BOOLValue(v8, v75, v76, v77) ^ 1;
        goto LABEL_52;
      case 9:
        v21 = objc_msgSend_uidRectRef(self, v18, v19, v20);
        v25 = objc_msgSend_uidRectRef(v8, v62, v63, v64);
        isEqual = objc_msgSend_isEqual_(v21, v65, v25, v66);
        goto LABEL_34;
      case 10:
        v21 = objc_msgSend_categoryRef(self, v18, v19, v20);
        v25 = objc_msgSend_categoryRef(v8, v22, v23, v24);
        isEqual = objc_msgSend_isEqual_(v21, v26, v25, v27);
LABEL_34:
        LOBYTE(uidTractList) = isEqual;
LABEL_35:

        goto LABEL_36;
    }

    goto LABEL_52;
  }

  switch(v17)
  {
    case 11:
      v21 = objc_msgSend_dataList(self, v18, v19, v20);
      v25 = objc_msgSend_dataList(v8, v78, v79, v80);
      v84 = objc_msgSend_count(v21, v81, v82, v83);
      if (v84 == objc_msgSend_count(v25, v85, v86, v87))
      {
        if (v84)
        {
          v90 = 0;
          v91 = v84 - 1;
          do
          {
            v92 = objc_msgSend_objectAtIndexedSubscript_(v21, v88, v90, v89);
            v95 = objc_msgSend_objectAtIndexedSubscript_(v25, v93, v90, v94);
            LOBYTE(uidTractList) = objc_msgSend_isEqual_(v92, v96, v95, v97);

            v42 = v91 == v90++;
            if (v42)
            {
              v98 = 0;
            }

            else
            {
              v98 = uidTractList;
            }
          }

          while ((v98 & 1) != 0);
        }

        else
        {
          LOBYTE(uidTractList) = 1;
        }
      }

      else
      {
        LOBYTE(uidTractList) = 0;
      }

      goto LABEL_35;
    case 12:
      if (self->_relativeCellRef.tableUID._lower == v8->_relativeCellRef.tableUID._lower && self->_relativeCellRef.tableUID._upper == v8->_relativeCellRef.tableUID._upper)
      {
        uidTractList = self->_uidTractList;
        v21 = objc_msgSend_uidTractList(v8, v18, v19, v20);
        LOBYTE(uidTractList) = objc_msgSend_isEqual_(uidTractList, v67, v21, v68);
LABEL_36:

        break;
      }

      goto LABEL_51;
    case 13:
      v21 = objc_msgSend_viewTractRef(self, v18, v19, v20);
      v25 = objc_msgSend_viewTractRef(v8, v43, v44, v45);
      isEqual = objc_msgSend_isEqual_(v21, v46, v25, v47);
      goto LABEL_34;
  }

LABEL_52:

  return uidTractList;
}

- (BOOL)isEqual:(id)equal atHostCoord:(TSUModelCellCoord)coord
{
  equalCopy = equal;
  v10 = equalCopy;
  LOBYTE(v11) = self == equalCopy;
  if (equalCopy && self != equalCopy)
  {
    v12 = objc_msgSend_type(self, v7, v8, v9);
    if (v12 == objc_msgSend_type(v10, v13, v14, v15))
    {
      if (objc_msgSend_type(self, v16, v17, v18) != 4)
      {
        isEqual = objc_msgSend_isEqual_(self, v19, v10, v21);
        goto LABEL_9;
      }

      if (self->_hasRelativeCellRef && objc_msgSend_hasRelativeCellRef(v10, v19, v20, v21))
      {
        v23 = objc_msgSend_relativeCellRef(self, v19, v22, v21);
        v27 = objc_msgSend_relativeCellRef(v10, v24, v25, v26);
        isEqual = sub_2212C2640(v23, v27);
LABEL_9:
        LOBYTE(v11) = isEqual;
        goto LABEL_16;
      }

      objc_msgSend_cellRefForHostCoord_(self, v19, *&coord, v21);
      objc_msgSend_cellRefForHostCoord_(v10, v29, *&coord, v30);
      if (v49 == v46 && ((v46 ^ v49) & 0x101FFFF00000000) == 0 && v50 == v47 && v51 == v48)
      {
        v34 = objc_msgSend_preserveColumn(self, v31, v32, v33);
        if (v34 == objc_msgSend_preserveColumn(v10, v35, v36, v37))
        {
          v42 = objc_msgSend_preserveRow(self, v38, v39, v40);
          v11 = v42 ^ objc_msgSend_preserveRow(v10, v43, v44, v45) ^ 1;
          goto LABEL_16;
        }
      }
    }

    LOBYTE(v11) = 0;
  }

LABEL_16:

  return v11;
}

- (id)rewriteWithContext:(TSCEFormulaRewriteContext *)context forArgAt:(int64_t)at usingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef hostCellRef:(TSCEUidCellRef *)cellRef rewriteBlock:(id)block
{
  columnRefCopy = columnRef;
  refCopy = ref;
  blockCopy = block;
  selfCopy = self;
  if (objc_msgSend_needsFormulaRewriting(selfCopy, v16, v17, v18))
  {
    TSCEFormulaCreationMagic::nop(&v84, v19, v20, v21);
    if (at)
    {
      objc_msgSend_formulaCreatorForPredArg(selfCopy, v22, v23, v24);
    }

    else
    {
      objc_msgSend_formulaCreatorForPredArg0UsingLinkedRef_useColumnRef_(selfCopy, v22, refCopy, columnRefCopy);
    }

    TSCEFormulaCreator::operator=(&v84.var0, v78, v25, v26);

    v31 = objc_msgSend_type(selfCopy, v28, v29, v30) == 12;
    v32 = [TSCEFormulaObject alloc];
    TSCEFormulaCreator::TSCEFormulaCreator(&v82, &v84);
    TSCEFormulaCreationMagic::SUM(v33, v86, &v83);
    v35 = objc_msgSend_initWithCreator_translationFlags_(v32, v34, &v83, 32 * v31);

    if ((objc_msgSend_translationFlags(v35, v36, v37, v38) & 0x20) != 0 && *&cellRef->_columnUid != 0)
    {
      p_rowUid = &cellRef->_rowUid;
      if (*&cellRef->_rowUid != 0)
      {
        v41 = objc_msgSend_copyBySettingHostTableUID_hostColumnUID_hostRowUID_(v35, v39, &cellRef->_tableUid, cellRef, p_rowUid);

        v35 = v41;
      }
    }

    v42 = objc_msgSend_copyByRewritingWithContext_rewriteBlock_(v35, v39, context, blockCopy, p_rowUid);
    if ((objc_msgSend_hasHostCell(v42, v43, v44, v45) & 1) == 0)
    {
      cellRef->_rowUid = 0u;
      cellRef->_tableUid = 0u;
      cellRef->_columnUid = 0u;
    }

    v49 = objc_msgSend_const_astNodeArray(v42, v46, v47, v48);
    sub_2212C3620(v78, v49, context, 0, -1, -1);
    TSCEASTStreamIterator::rewrite(v78, v50, v51, v52);
    v27 = v79;

    if (!v27)
    {
      v56 = MEMORY[0x277D81150];
      v57 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v53, "[TSTFormulaPredArg rewriteWithContext:forArgAt:usingLinkedRef:useColumnRef:hostCellRef:rewriteBlock:]", v55);
      v60 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v59);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v56, v61, v57, v60, 1478, 0, "Not expecting no result");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v62, v63, v64);
    }

    v65 = objc_msgSend_hostColumnUID(v42, v53, v54, v55);
    v69 = objc_msgSend_hostRowUID(v42, v66, v67, v68);
    v73 = objc_msgSend_hostTableUID(v42, v70, v71, v72);
    v74 = *v65;
    v75 = *v73;
    cellRef->_rowUid = *v69;
    cellRef->_tableUid = v75;
    cellRef->_columnUid = v74;

    TSCEASTStreamIterator::~TSCEASTStreamIterator(v78, v76);
  }

  else
  {
    v27 = selfCopy;
  }

  return v27;
}

- (TSCEFormulaCreator)formulaCreatorForPredArg
{
  v6 = v4;
  type = self->_type;
  if (type > 5)
  {
    if (self->_type > 0xAu)
    {
      switch(type)
      {
        case 0xBu:

          return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
        case 0xCu:
          lower = self->_relativeCellRef.tableUID._lower;
          v28._lower = self->_relativeCellRef.tableUID._upper;
          v28._upper = self->_uidTractList;

          TSCEFormulaCreationMagic::uidRef(lower, v28, v6);
          break;
        case 0xDu:
          viewTractRef = self->_viewTractRef;

          TSCEFormulaCreationMagic::viewTractRef(viewTractRef, v6);
          break;
        default:
          return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
      }
    }

    else
    {
      if (type != 6)
      {
        if (type != 9)
        {
          if (type == 10)
          {
            categoryRef = self->_categoryRef;

            TSCEFormulaCreationMagic::categoryRef(categoryRef, v6);
            return v9;
          }

          return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
        }

        v22 = objc_msgSend_uidRectRef(self, a2, v2, v3);
        v26 = v22;
        if (v22)
        {
          objc_msgSend_baseRangeRef(v22, v23, v24, v25);
        }

        else
        {
          *&v91[0].row = 0u;
          v92 = 0u;
        }

        isValidOrSpanning = TSCERangeCoordinate::isValidOrSpanning(v91);

        if (!isValidOrSpanning)
        {
          v69 = self->_relativeCellRef.tableUID._lower;
          upper = self->_relativeCellRef.tableUID._upper;
          v98._upper = objc_msgSend_preserveFlags(self->_uidTractList, v36, v37, v38);
          v98._lower = upper;
          TSCEFormulaCreationMagic::refErrorWithUUID(v69, v98, self->_uidTractList, v6);
          return v9;
        }

        hostCellCoord = self->_hostCellCoord;
        if (hostCellCoord == 0x7FFFFFFF || (hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
        {
          v40 = MEMORY[0x277D81150];
          v41 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "[TSTFormulaPredArg formulaCreatorForPredArg]", v38);
          v44 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v42, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v43);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v40, v45, v41, v44, 1530, 0, "Need a host-cell for this");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v46, v47, v48);
          hostCellCoord = self->_hostCellCoord;
        }

        objc_msgSend_cellRefForHostCoord_(self, v36, hostCellCoord, v38);
        if (v91[0].row == 0x7FFFFFFF || (*v91 & 0xFFFF00000000) == 0x7FFF00000000)
        {
          return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
        }

        v49 = objc_msgSend_preserveColumn(self, a2, v2, v3);
        if (objc_msgSend_preserveRow(self, v50, v51, v52))
        {
          v54 = 2;
        }

        else
        {
          v54 = 0;
        }

        v90 = v54 | v49;
        v55 = v91[0];
        v56 = &v90;
        RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&self->_hostCellCoord, v55, v56, v53);
        v58 = v91[1];
        v59 = v92;
        v63 = objc_msgSend_preserveColumn(self, v60, v61, v62);
        v67 = objc_msgSend_preserveRow(self, v64, v65, v66);
        *&v93 = v58;
        *(&v93 + 1) = v59;
        v94 = RelativeCellCoordinateFromAbsoluteCoordinates;
        if (v67)
        {
          v68 = 2;
        }

        else
        {
          v68 = 0;
        }

        v88[0]._flags = v68 | v63;
        TSCERelativeCellCoordinate::setPreserveFlags(&v94, v88);
        *&v88[0]._flags = v93;
        v89 = v94;
        uidTractList = self->_uidTractList;
        v34 = v88;
LABEL_61:
        TSCEFormulaCreationMagic::cellRef(v34, uidTractList, v6);
        return v9;
      }

      v29 = objc_msgSend_BOOLValue(self, a2, v2, v3);

      return TSCEFormulaCreationMagic::BOOLean(v29, v6, v30, v31, v32);
    }

    return v9;
  }

  if (self->_type <= 2u)
  {
    if (type == 1)
    {
      objc_msgSend_numberValue(self, a2, v2, v3);
      TSUDecimal::operator=();
      v97._decimal.w[0] = v91[1];
      return TSCEFormulaCreationMagic::number(*v91, v97, v6, v18);
    }

    if (type != 2)
    {
      return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
    }

    v87 = objc_msgSend_date(self, a2, v2, v3);
    TSCEFormulaCreationMagic::date(v87, 0, v6);
    goto LABEL_37;
  }

  if (type == 3)
  {
    v87 = objc_msgSend_string(self, a2, v2, v3);
    TSCEFormulaCreationMagic::string(v87, v6);
LABEL_37:

    return v9;
  }

  if (type == 4)
  {
    objc_msgSend_crossTableRef(self, a2, v2, v3);
    if (v92 == 0x7FFFFFFF && WORD2(v92) == 0x7FFF)
    {
      return TSCEFormulaCreationMagic::refError(v6, v19, v20, v21);
    }

    v93 = *&v91[0].row;
    v94 = v92;
    uidTractList = self->_uidTractList;
    v34 = &v93;
    goto LABEL_61;
  }

  if (type != 5)
  {
    return TSCEFormulaCreationMagic::nop(v6, a2, v2, v3);
  }

  v10 = objc_msgSend_durationUnits(self, a2, v2, v3);
  if (v10)
  {
    v14 = 32;
    do
    {
      v15 = v14 & v10;
      if (v14 < 2)
      {
        break;
      }

      v14 >>= 1;
    }

    while (!v15);
    v16 = (2 * v15) | 1;
  }

  else
  {
    v16 = 1;
  }

  v71 = objc_msgSend_durationUnits(self, v11, v12, v13);
  if (v71)
  {
    for (i = 1; i != 64; i *= 2)
    {
      v76 = i & v71;
      if ((i & v71) != 0)
      {
        break;
      }
    }

    v77 = (v76 & 0x3F) << 8;
  }

  else
  {
    v77 = 0;
  }

  objc_msgSend_durationValue(self, v72, v73, v74);
  v79 = v78;
  v83 = objc_msgSend_durationUnits(self, v80, v81, v82);
  v84 = sub_221387C78(v83);

  return TSCEFormulaCreationMagic::duration(v84, (v77 | v16), v6, v79, v85, v86);
}

- (TSCEFormulaCreator)formulaCreatorForPredArg0UsingLinkedRef:(BOOL)ref useColumnRef:(BOOL)columnRef
{
  columnRefCopy = columnRef;
  refCopy = ref;
  v8 = v4;
  type = self->_type;
  if (type > 0xC || ((1 << type) & 0x1210) == 0)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTFormulaPredArg formulaCreatorForPredArg0UsingLinkedRef:useColumnRef:]", columnRef);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 1566, 0, "Only references types are supported for predArg0, saw %d", self->_type);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    type = self->_type;
  }

  if (type != 12)
  {
    if (type == 9)
    {
      v23 = objc_msgSend_uidRectRef(self, a2, ref, columnRef);
      v27 = v23;
      if (v23)
      {
        objc_msgSend_baseRangeRef(v23, v24, v25, v26);
      }

      else
      {
        *&v71[0].row = 0u;
        v72 = 0u;
      }

      isValidOrSpanning = TSCERangeCoordinate::isValidOrSpanning(v71);

      if (!isValidOrSpanning)
      {
        lower = self->_relativeCellRef.tableUID._lower;
        upper = self->_relativeCellRef.tableUID._upper;
        v77._upper = objc_msgSend_preserveFlags(self->_uidTractList, v31, v32, v33);
        v77._lower = upper;
        TSCEFormulaCreationMagic::refErrorWithUUID(lower, v77, self->_uidTractList, v8);
        return v22;
      }

      hostCellCoord = self->_hostCellCoord;
      if (hostCellCoord == 0x7FFFFFFF || (hostCellCoord & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTFormulaPredArg formulaCreatorForPredArg0UsingLinkedRef:useColumnRef:]", v33);
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTFormulaPredArg.mm", v38);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 1593, 0, "Need a host-cell for this");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
        hostCellCoord = self->_hostCellCoord;
      }

      objc_msgSend_cellRefForHostCoord_(self, v31, hostCellCoord, v33);
      if (v71[0].row != 0x7FFFFFFF && (*v71 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v44 = objc_msgSend_preserveColumn(self, a2, ref, columnRef);
        if (objc_msgSend_preserveRow(self, v45, v46, v47))
        {
          v49 = 2;
        }

        else
        {
          v49 = 0;
        }

        v70 = v49 | v44;
        v50 = v71[0];
        v51 = &v70;
        RelativeCellCoordinateFromAbsoluteCoordinates = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&self->_hostCellCoord, v50, v51, v48);
        v53 = v71[1];
        v54 = v72;
        v58 = objc_msgSend_preserveColumn(self, v55, v56, v57);
        v62 = objc_msgSend_preserveRow(self, v59, v60, v61);
        *&v73 = v53;
        *(&v73 + 1) = v54;
        v74[0] = RelativeCellCoordinateFromAbsoluteCoordinates;
        if (v62)
        {
          v63 = 2;
        }

        else
        {
          v63 = 0;
        }

        v68[0]._flags = v63 | v58;
        TSCERelativeCellCoordinate::setPreserveFlags(v74, v68);
        *&v68[0]._flags = v73;
        v69 = v74[0];
        uidTractList = self->_uidTractList;
        v65 = v68;
        goto LABEL_40;
      }
    }

    else if (type == 4)
    {
      objc_msgSend_crossTableRef(self, a2, ref, columnRef);
      if (v72 == 0x7FFFFFFF && WORD2(v72) == 0x7FFF)
      {
        return TSCEFormulaCreationMagic::refError(v8, v20._lower, v20._upper, v21);
      }

      if (refCopy)
      {
        v20._lower = v71[1];
        if (columnRefCopy)
        {
          return TSCEFormulaCreationMagic::linkedColumnRef(*v71, v20, v8, v21);
        }

        else
        {
          return TSCEFormulaCreationMagic::linkedCellRef(*v71, v20, v8, v21);
        }
      }

      if (columnRefCopy)
      {
        v73 = *&v71[0].row;
        v74[0] = ((DWORD1(v72) << 32) | 0x7FFFFFFF);
        v68[0]._flags = 0;
        TSCERelativeCellCoordinate::setPreserveFlags(v74, v68);
        *&v71[0].row = v73;
        *&v72 = v74[0];
      }

      v73 = *&v71[0].row;
      v74[0] = v72;
      uidTractList = self->_uidTractList;
      v65 = &v73;
LABEL_40:
      TSCEFormulaCreationMagic::cellRef(v65, uidTractList, v8);
      return v22;
    }

    return TSCEFormulaCreationMagic::nop(v8, a2, ref, columnRef);
  }

  v28 = self->_relativeCellRef.tableUID._lower;
  v29._lower = self->_relativeCellRef.tableUID._upper;
  v29._upper = self->_uidTractList;

  TSCEFormulaCreationMagic::uidRef(v28, v29, v8);
  return v22;
}

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 6) = 0;
  *(self + 4) = 0x7FFF7FFFFFFFLL;
  *(self + 11) = 0;
  *(self + 12) = 0;
  *(self + 104) = *(self + 104) & 0xF0 | 3;
  *(self + 10) = 0x101000000000000;
  *(self + 114) = 0;
  return self;
}

@end