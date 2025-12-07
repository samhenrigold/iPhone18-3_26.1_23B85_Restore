@interface TSCEFormulaRewrite_RegionMovedInfo
- (BOOL)isForDstTable:(const TSKUIDStruct *)table;
- (BOOL)isForSrcTable:(const TSKUIDStruct *)table;
- (TSCEFormulaRewrite_RegionMovedInfo)initWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract;
- (TSKUIDStruct)dstCondStyleOwnerUID;
- (TSKUIDStruct)dstTableUID;
- (TSKUIDStruct)dstUidForSrcUid:(const TSKUIDStruct *)uid;
- (TSKUIDStruct)finalDstTableUID;
- (TSKUIDStruct)originalSrcCondStyleOwnerUID;
- (TSKUIDStruct)originalSrcTableUID;
- (TSKUIDStruct)srcCondStyleOwnerUID;
- (TSKUIDStruct)srcTableUID;
- (TSKUIDStruct)srcUidForDstUid:(const TSKUIDStruct *)uid;
- (id).cxx_construct;
- (id)description;
- (id)initFromMessage:(const void *)message;
- (void)loadIndexesForSrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver;
- (void)loadIndexesFromRegions;
- (void)saveToMessage:(void *)message;
- (void)unloadIndexes;
@end

@implementation TSCEFormulaRewrite_RegionMovedInfo

- (TSCEFormulaRewrite_RegionMovedInfo)initWithSrcTableUID:(const TSKUIDStruct *)d srcTract:(const void *)tract dstTableUID:(const TSKUIDStruct *)iD destTract:(const void *)destTract
{
  v20.receiver = self;
  v20.super_class = TSCEFormulaRewrite_RegionMovedInfo;
  v10 = [(TSCEFormulaRewrite_RegionMovedInfo *)&v20 init];
  if (v10)
  {
    v11 = [TSCEFormulaRewrite_RegionInfo alloc];
    v13 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v11, v12, d, tract, tract + 24);
    srcRegion = v10->_srcRegion;
    v10->_srcRegion = v13;

    v15 = [TSCEFormulaRewrite_RegionInfo alloc];
    v17 = objc_msgSend_initWithTableUID_columnUids_rowUids_(v15, v16, iD, destTract, destTract + 24);
    dstRegion = v10->_dstRegion;
    v10->_dstRegion = v17;
  }

  return v10;
}

- (id)description
{
  v5 = MEMORY[0x277CCACA8];
  v34._lower = objc_msgSend_srcTableUID(self, a2, v2, v3);
  v34._upper = v6;
  v7 = TSKUIDStruct::description(&v34);
  v11 = objc_msgSend_columnUids(self->_srcRegion, v8, v9, v10);
  v15 = objc_msgSend_rowUids(self->_srcRegion, v12, v13, v14);
  v33._lower = objc_msgSend_dstTableUID(self, v16, v17, v18);
  v33._upper = v19;
  v20 = TSKUIDStruct::description(&v33);
  v24 = objc_msgSend_columnUids(self->_dstRegion, v21, v22, v23);
  v28 = objc_msgSend_rowUids(self->_dstRegion, v25, v26, v27);
  v31 = objc_msgSend_stringWithFormat_(v5, v29, @"srcTableUID: %@\n\tsrcColumnUids: %@\n\tsrcRowUids: %@\n\tdstTableUID: %@\n\tdstColumnUids: %@\n\ndstRowUids: %@\n", v30, v7, v11, v15, v20, v24, v28);

  return v31;
}

- (TSKUIDStruct)srcTableUID
{
  v4 = objc_msgSend_tableUID(self->_srcRegion, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)dstTableUID
{
  v4 = objc_msgSend_tableUID(self->_dstRegion, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)originalSrcTableUID
{
  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    originalSrcRegion = objc_msgSend_tableUID(originalSrcRegion, a2, v2, v3);
  }

  else
  {
    v5 = 0;
  }

  result._upper = v5;
  result._lower = originalSrcRegion;
  return result;
}

- (TSKUIDStruct)srcCondStyleOwnerUID
{
  v4 = objc_msgSend_condStyleOwnerUID(self->_srcRegion, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)dstCondStyleOwnerUID
{
  v4 = objc_msgSend_condStyleOwnerUID(self->_dstRegion, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)originalSrcCondStyleOwnerUID
{
  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    originalSrcRegion = objc_msgSend_condStyleOwnerUID(originalSrcRegion, a2, v2, v3);
  }

  else
  {
    v5 = 0;
  }

  result._upper = v5;
  result._lower = originalSrcRegion;
  return result;
}

- (BOOL)isForSrcTable:(const TSKUIDStruct *)table
{
  if (table->_lower == objc_msgSend_srcTableUID(self, a2, table, v3) && table->_upper == v6)
  {
    return 1;
  }

  if (table->_lower == objc_msgSend_srcCondStyleOwnerUID(self, v6, v7, v8))
  {
    return table->_upper == v10;
  }

  return 0;
}

- (BOOL)isForDstTable:(const TSKUIDStruct *)table
{
  if (table->_lower == objc_msgSend_dstTableUID(self, a2, table, v3) && table->_upper == v6)
  {
    return 1;
  }

  if (table->_lower == objc_msgSend_dstCondStyleOwnerUID(self, v6, v7, v8))
  {
    return table->_upper == v10;
  }

  return 0;
}

- (void)loadIndexesFromRegions
{
  v5 = objc_msgSend_columnUids(self->_srcRegion, a2, v2, v3);
  v9 = objc_msgSend_uids(v5, v6, v7, v8);
  v11 = *v9;
  v10 = v9[1];
  v15 = objc_msgSend_columnUids(self->_dstRegion, v12, v13, v14);
  v19 = objc_msgSend_uids(v15, v16, v17, v18);
  v20 = v10 - v11;
  v21 = v19[1] - *v19;

  if (v20 != v21)
  {
    v25 = MEMORY[0x277D81150];
    v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "[TSCEFormulaRewrite_RegionMovedInfo loadIndexesFromRegions]", v24);
    v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewrite_RegionInfo.mm", v28);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 277, 0, "Expecting source and dest regions to be the same size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
  }

  v34 = objc_msgSend_rowUids(self->_srcRegion, v22, v23, v24);
  v38 = objc_msgSend_uids(v34, v35, v36, v37);
  v40 = *v38;
  v39 = v38[1];
  v44 = objc_msgSend_rowUids(self->_dstRegion, v41, v42, v43);
  v48 = objc_msgSend_uids(v44, v45, v46, v47);
  v49 = v39 - v40;
  v50 = v48[1] - *v48;

  if (v49 != v50)
  {
    v54 = MEMORY[0x277D81150];
    v55 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v51, "[TSCEFormulaRewrite_RegionMovedInfo loadIndexesFromRegions]", v53);
    v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v56, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewrite_RegionInfo.mm", v57);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v54, v59, v55, v58, 278, 0, "Expecting source and dest regions to be the same size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v60, v61, v62);
  }

  v63 = objc_msgSend_columnUids(self->_dstRegion, v51, v52, v53);
  v67 = *objc_msgSend_uids(v63, v64, v65, v66);

  v71 = objc_msgSend_columnUids(self->_srcRegion, v68, v69, v70);
  v75 = *objc_msgSend_uids(v71, v72, v73, v74);

  while (1)
  {
    v79 = objc_msgSend_columnUids(self->_srcRegion, v76, v77, v78);
    if (v75 == *(objc_msgSend_uids(v79, v80, v81, v82) + 8))
    {
      break;
    }

    v86 = objc_msgSend_columnUids(self->_dstRegion, v83, v84, v85);
    v90 = *(objc_msgSend_uids(v86, v87, v88, v89) + 8);

    if (v67 == v90)
    {
      goto LABEL_10;
    }

    v126 = v67;
    *(sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, v67, &unk_2217E202D, &v126) + 2) = *v75;
    v126 = v75;
    v94 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, v75, &unk_2217E202D, &v126);
    v95 = *v67++;
    *(v94 + 2) = v95;
    ++v75;
  }

LABEL_10:
  v96 = objc_msgSend_rowUids(self->_dstRegion, v91, v92, v93);
  v100 = *objc_msgSend_uids(v96, v97, v98, v99);

  v104 = objc_msgSend_rowUids(self->_srcRegion, v101, v102, v103);
  v108 = *objc_msgSend_uids(v104, v105, v106, v107);

  while (1)
  {
    v112 = objc_msgSend_rowUids(self->_srcRegion, v109, v110, v111);
    if (v108 == *(objc_msgSend_uids(v112, v113, v114, v115) + 8))
    {
      break;
    }

    v119 = objc_msgSend_rowUids(self->_dstRegion, v116, v117, v118);
    v123 = *(objc_msgSend_uids(v119, v120, v121, v122) + 8);

    if (v100 == v123)
    {
      return;
    }

    v126 = v100;
    *(sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, v100, &unk_2217E202D, &v126) + 2) = *v108;
    v126 = v108;
    v124 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, v108, &unk_2217E202D, &v126);
    v125 = *v100++;
    *(v124 + 2) = v125;
    ++v108;
  }
}

- (void)loadIndexesForSrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver
{
  tableCopy = table;
  resolverCopy = resolver;
  dstTableCopy = dstTable;
  uidResolverCopy = uidResolver;
  objc_msgSend_loadIndexesForTable_uidResolver_(self->_srcRegion, v13, tableCopy, resolverCopy);
  objc_msgSend_loadIndexesForTable_uidResolver_(self->_dstRegion, v14, dstTableCopy, uidResolverCopy);
  objc_msgSend_loadIndexesFromRegions(self, v15, v16, v17);
}

- (void)unloadIndexes
{
  objc_msgSend_unloadIndexes(self->_srcRegion, a2, v2, v3);
  objc_msgSend_unloadIndexes(self->_dstRegion, v5, v6, v7);
  sub_2210BE918(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_);

  sub_2210BE918(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_);
}

- (TSKUIDStruct)dstUidForSrcUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    uidCopy = uid;
    v6 = sub_221230440(&self->_dstUidForSrcUid.__table_.__bucket_list_.__ptr_, uid, &unk_2217E202D, &uidCopy);
    v5 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  result._upper = v7;
  result._lower = v5;
  return result;
}

- (TSKUIDStruct)srcUidForDstUid:(const TSKUIDStruct *)uid
{
  v5 = sub_2210875C4(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, uid);
  if (v5)
  {
    uidCopy = uid;
    v6 = sub_221230440(&self->_srcUidForDstUid.__table_.__bucket_list_.__ptr_, uid, &unk_2217E202D, &uidCopy);
    v5 = v6[4];
    v7 = v6[5];
  }

  else
  {
    v7 = 0;
  }

  result._upper = v7;
  result._lower = v5;
  return result;
}

- (id)initFromMessage:(const void *)message
{
  v25.receiver = self;
  v25.super_class = TSCEFormulaRewrite_RegionMovedInfo;
  v4 = [(TSCEFormulaRewrite_RegionMovedInfo *)&v25 init];
  if (v4)
  {
    v5 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 3))
    {
      v8 = objc_msgSend_initFromMessage_(v5, v6, *(message + 3), v7);
    }

    else
    {
      v8 = objc_msgSend_initFromMessage_(v5, v6, TSCE::_RegionInfoArchive_default_instance_, v7);
    }

    srcRegion = v4->_srcRegion;
    v4->_srcRegion = v8;

    v10 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 4))
    {
      v13 = objc_msgSend_initFromMessage_(v10, v11, *(message + 4), v12);
    }

    else
    {
      v13 = objc_msgSend_initFromMessage_(v10, v11, TSCE::_RegionInfoArchive_default_instance_, v12);
    }

    dstRegion = v4->_dstRegion;
    v4->_dstRegion = v13;

    v18 = *(message + 4);
    if ((v18 & 8) != 0)
    {
      v4->_finalDstTableUID._lower = TSKUIDStruct::loadFromMessage(*(message + 6), v15);
      v4->_finalDstTableUID._upper = v15;
      v18 = *(message + 4);
      if ((v18 & 4) == 0)
      {
LABEL_16:
        v4->_spanningRows = (v18 & 0x10) != 0;
        v4->_spanningColumns = (v18 & 0x20) != 0;
        objc_msgSend_loadIndexesFromRegions(v4, v15, v16, v17);
        return v4;
      }
    }

    else
    {
      v4->_finalDstTableUID._lower = 0;
      v4->_finalDstTableUID._upper = 0;
      if ((v18 & 4) == 0)
      {
        goto LABEL_16;
      }
    }

    v19 = [TSCEFormulaRewrite_RegionInfo alloc];
    if (*(message + 5))
    {
      v22 = objc_msgSend_initFromMessage_(v19, v20, *(message + 5), v21);
    }

    else
    {
      v22 = objc_msgSend_initFromMessage_(v19, v20, TSCE::_RegionInfoArchive_default_instance_, v21);
    }

    originalSrcRegion = v4->_originalSrcRegion;
    v4->_originalSrcRegion = v22;

    v18 = *(message + 4);
    goto LABEL_16;
  }

  return v4;
}

- (void)saveToMessage:(void *)message
{
  srcRegion = self->_srcRegion;
  *(message + 4) |= 1u;
  v7 = *(message + 3);
  if (!v7)
  {
    v8 = *(message + 1);
    if (v8)
    {
      v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
    }

    v7 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v8, a2);
    *(message + 3) = v7;
  }

  objc_msgSend_saveToMessage_(srcRegion, a2, v7, v3);
  dstRegion = self->_dstRegion;
  *(message + 4) |= 2u;
  v12 = *(message + 4);
  if (!v12)
  {
    v13 = *(message + 1);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v13, v9);
    *(message + 4) = v12;
  }

  objc_msgSend_saveToMessage_(dstRegion, v9, v12, v10);
  if (self->_finalDstTableUID._lower || self->_finalDstTableUID._upper)
  {
    *(message + 4) |= 8u;
    v16 = *(message + 6);
    if (!v16)
    {
      v17 = *(message + 1);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      v16 = MEMORY[0x223DA0360](v17);
      *(message + 6) = v16;
    }

    TSKUIDStruct::saveToMessage(&self->_finalDstTableUID, v16);
  }

  originalSrcRegion = self->_originalSrcRegion;
  if (originalSrcRegion)
  {
    *(message + 4) |= 4u;
    v19 = *(message + 5);
    if (!v19)
    {
      v20 = *(message + 1);
      if (v20)
      {
        v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
      }

      v19 = google::protobuf::Arena::CreateMaybeMessage<TSCE::RegionInfoArchive>(v20, v14);
      *(message + 5) = v19;
    }

    objc_msgSend_saveToMessage_(originalSrcRegion, v14, v19, v15);
  }

  if (self->_spanningRows)
  {
    *(message + 4) |= 0x10u;
    *(message + 56) = 1;
  }

  if (self->_spanningColumns)
  {
    *(message + 4) |= 0x20u;
    *(message + 57) = 1;
  }
}

- (TSKUIDStruct)finalDstTableUID
{
  upper = self->_finalDstTableUID._upper;
  lower = self->_finalDstTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 30) = 1065353216;
  return self;
}

@end