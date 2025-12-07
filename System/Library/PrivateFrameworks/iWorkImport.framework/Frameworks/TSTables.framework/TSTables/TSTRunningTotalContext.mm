@interface TSTRunningTotalContext
- (BOOL)isMissingRunningTotalFieldForAggIndex:(unsigned __int16)index;
- (TSKUIDStructCoord)getPreviousUidCoordForAggIndex:(SEL)index fromNewUidCoord:(unsigned __int16)coord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found;
- (TSTRunningTotalContext)initWithGroupBySet:(id)set;
- (id).cxx_construct;
@end

@implementation TSTRunningTotalContext

- (TSTRunningTotalContext)initWithGroupBySet:(id)set
{
  v53 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v50.receiver = self;
  v50.super_class = TSTRunningTotalContext;
  v5 = [(TSTRunningTotalContext *)&v50 init];
  if (v5)
  {
    v43 = v5;
    objc_storeStrong(&v5->_groupBySet, set);
    v9 = objc_msgSend_aggregates(setCopy, v6, v7, v8);
    if (objc_msgSend_count(v9, v10, v11, v12))
    {
      v49 = 0;
      objc_msgSend_asArray(v9, v13, v14, v15);
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v16 = v46 = 0u;
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v45, v52, 16);
      if (v21)
      {
        v22 = *v46;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v46 != v22)
            {
              objc_enumerationMutation(v16);
            }

            v24 = *(*(&v45 + 1) + 8 * i);
            if ((objc_msgSend_showAsType(v24, v18, v19, v20, v43) & 0xFE) == 6)
            {
              v25 = objc_msgSend_runningTotalGroupingColumnUid(v24, v18, v19, v20);
              v27 = v26;
              v30 = objc_msgSend_rowGroupings(setCopy, v26, v28, v29);
              v32 = objc_msgSend_groupingColumnForColumnUID_(v30, v31, v25, v27);

              if (v32)
              {
                v36 = 0;
                v37 = 1;
              }

              else
              {
                v38 = objc_msgSend_columnGroupings(setCopy, v33, v34, v35);
                v32 = objc_msgSend_groupingColumnForColumnUID_(v38, v39, v25, v27);

                v36 = v32 == 0;
                v37 = v32 == 0;
                if (!v32)
                {
                  v32 = 0;
                }
              }

              v51 = &v49;
              v40 = sub_221300B0C(&v43->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &v49, &unk_2217E125D, &v51);
              v40[3] = v25;
              v40[4] = v27;
              *(v40 + 40) = v37;
              *(v40 + 41) = v36;
            }

            ++v49;
          }

          v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v45, v52, 16);
        }

        while (v21);
      }
    }

    v5 = v43;
  }

  v41 = v5;

  return v41;
}

- (BOOL)isMissingRunningTotalFieldForAggIndex:(unsigned __int16)index
{
  indexCopy = index;
  v3 = sub_2210C3024(&self->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &indexCopy);
  if (v3)
  {
    v4 = *(v3 + 41);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

- (TSKUIDStructCoord)getPreviousUidCoordForAggIndex:(SEL)index fromNewUidCoord:(unsigned __int16)coord addNewUidCoordEvenIfNotFound:(const TSKUIDStructCoord *)found
{
  v6 = a6;
  coordCopy = coord;
  v10 = sub_2210C3024(&self->_runAggrForAggIndex.__table_.__bucket_list_.__ptr_, &coordCopy);
  if (!v10)
  {
    return TSKMakeInvalidUIDStructCoord();
  }

  v12 = v10;
  v13 = objc_msgSend_groupValueTupleForUuidCoord_createIfMissing_(self->_groupBySet, v11, found, 0);
  v15 = 16;
  if (*(v12 + 40))
  {
    v15 = 0;
  }

  v36 = *(&found->_column + v15);
  if (v13)
  {
    goto LABEL_5;
  }

  if (*(v12 + 41))
  {
    return TSKMakeInvalidUIDStructCoord();
  }

  v13 = objc_msgSend_groupValueTupleForUuidCoord_createIfMissing_(self->_groupBySet, v14, found, 1, v36);
  if (!v13)
  {
    v27 = MEMORY[0x277D81150];
    v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "[TSTRunningTotalContext getPreviousUidCoordForAggIndex:fromNewUidCoord:addNewUidCoordEvenIfNotFound:]", v26);
    v31 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v29, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTRunningTotalContext.mm", v30);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v27, v32, v28, v31, 387, 0, "We need to locate (or create) a tuple");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v33, v34, v35);
    return TSKMakeInvalidUIDStructCoord();
  }

LABEL_5:
  v16 = v13;
  v38 = &coordCopy;
  v17 = sub_221300D50(&self->_valuesForRunningAggregatePerRunDirectionUid.__table_.__bucket_list_.__ptr_, &coordCopy, &unk_2217E125D, &v38);
  v18 = sub_2210875C4(v17 + 3, &v36);
  if (!v18)
  {
    v20 = objc_opt_new();
    v38 = &v36;
    v21 = sub_221301014(v17 + 3, &v36, &unk_2217E125D, &v38);
    v22 = v21[4];
    v21[4] = v20;

    v18 = sub_2210875C4(v17 + 3, &v36);
  }

  retstr->_column = 0u;
  retstr->_row = 0u;
  v23 = v18[4];
  if (v23)
  {
    objc_msgSend_getUidCoordforRunningAggregate_tupleForCoord_newUidCoord_addNewUidCoordEvenIfNotFound_inContext_(v23, v19, (v12 + 3), v16, found, v6, self);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  *(self + 56) = 0u;
  *(self + 72) = 0u;
  *(self + 22) = 1065353216;
  return self;
}

@end