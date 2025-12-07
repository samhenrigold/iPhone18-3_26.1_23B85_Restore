@interface TSTUidCoordsPerRunningCellValue
- (TSKUIDStructCoord)getUidCoordforRunningAggregate:(SEL)aggregate tupleForCoord:(TSTRunningAggregate *)coord newUidCoord:(id)uidCoord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found inContext:(BOOL)context;
- (TSKUIDStructCoord)uuidCoordAtIndex:(SEL)index templateTuple:(unint64_t)tuple runningLevel:(id)level;
- (id).cxx_construct;
@end

@implementation TSTUidCoordsPerRunningCellValue

- (TSKUIDStructCoord)uuidCoordAtIndex:(SEL)index templateTuple:(unint64_t)tuple runningLevel:(id)level
{
  v6 = a6;
  levelCopy = level;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  begin = self->_cellValues.__begin_;
  if (tuple < self->_cellValues.var0 - begin)
  {
    v12 = begin[tuple];
    v15 = objc_msgSend_groupValueTupleByReplacingValue_atLevel_(levelCopy, v13, v12, v6);
    v16 = self->_uidCoords.__begin_[tuple];
    if (v16)
    {
      objc_msgSend_uuidCoordForGroupTuple_runningLevel_(v16, v14, v15, v6);
    }

    else
    {
      v18 = 0;
      v19 = 0;
    }

    retstr->_column = v18;
    retstr->_row = v19;
  }

  return result;
}

- (TSKUIDStructCoord)getUidCoordforRunningAggregate:(SEL)aggregate tupleForCoord:(TSTRunningAggregate *)coord newUidCoord:(id)uidCoord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found inContext:(BOOL)context
{
  uidCoordCopy = uidCoord;
  v14 = a8;
  v18 = objc_msgSend_numberOfLevels(uidCoordCopy, v15, v16, v17);
  v66 = 0;
  retstr->_column = 0u;
  retstr->_row = 0u;
  TSKMakeInvalidUIDStructCoord();
  v22 = objc_msgSend_groupBySet(v14, v19, v20, v21);
  v25 = objc_msgSend_groupByForUuidCoord_(v22, v23, found, v24);

  if (v25)
  {
    objc_msgSend_groupingColumnLevelsForColumn_(v25, v26, coord, v27);
    if (*(&v65[0] + 1) - *&v65[0] == 1)
    {
      v28 = **&v65[0];
    }

    else
    {
      if (!*&v65[0])
      {
LABEL_28:

        goto LABEL_29;
      }

      v28 = 255;
    }

    *(&v65[0] + 1) = *&v65[0];
    operator delete(*&v65[0]);

    if (v28 != 255 && v28 <= v18)
    {
      v33 = objc_msgSend_groupValueAtLevel_(uidCoordCopy, v29, v28, v30);
      v66 = v33;
      if (v33)
      {
        contextCopy = context;
        foundCopy = found;
        begin = self->_cellValues.__begin_;
        var0 = self->_cellValues.var0;
        v36 = var0 - begin;
        if (var0 == begin)
        {
          v43 = self->_cellValues.var0;
          v44 = contextCopy;
        }

        else
        {
          v60 = v28;
          v61 = v14;
          v37 = 0;
          v38 = 0;
          while (1)
          {
            v39 = begin[v38];
            isEqualToCellValue = objc_msgSend_isEqualToCellValue_(v33, v40, v39, v41);

            if (isEqualToCellValue)
            {
              break;
            }

            ++v38;
            if (&begin[++v37] == var0)
            {
              v36 = var0 - begin;
              goto LABEL_16;
            }
          }

          v36 = v38;
LABEL_16:
          var0 = self->_cellValues.__begin_;
          v43 = self->_cellValues.var0;
          v14 = v61;
          v44 = contextCopy;
          v28 = v60;
        }

        if (v36 == v43 - var0)
        {
          sub_2213000E8(&self->_cellValues.__begin_, &v66);
          *&v65[0] = objc_opt_new();
          sub_2213001DC(&self->_uidCoords.__begin_, v65);
        }

        v45 = self->_uidCoords.__begin_;
        if (v36 >= self->_uidCoords.var0 - v45)
        {
          v46 = MEMORY[0x277D81150];
          v47 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "[TSTUidCoordsPerRunningCellValue getUidCoordforRunningAggregate:tupleForCoord:newUidCoord:addNewUidCoordEvenIfNotFound:inContext:]", v32);
          v48 = v36;
          v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRunningTotalContext.mm", v50);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v46, v52, v47, v51, 255, 0, "Got a too-large insertIndex: %lu", v48);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
          v36 = v48;
          v45 = self->_uidCoords.__begin_;
        }

        v57 = v45[v36];
        if (v36)
        {
          objc_msgSend_uuidCoordAtIndex_templateTuple_runningLevel_(self, v56, v36 - 1, uidCoordCopy, v28);
          v58 = v65[1];
          retstr->_column = v65[0];
          retstr->_row = v58;
        }

        if (v44 || *&retstr->_column != 0 && *&retstr->_row != 0)
        {
          objc_msgSend_addUidCoord_tupleForCoord_atRunningLevel_(v57, v56, foundCopy, uidCoordCopy, v28);
        }

        v25 = v66;
        goto LABEL_28;
      }
    }
  }

LABEL_29:

  return result;
}

- (id).cxx_construct
{
  *(self + 40) = 0u;
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  return self;
}

@end