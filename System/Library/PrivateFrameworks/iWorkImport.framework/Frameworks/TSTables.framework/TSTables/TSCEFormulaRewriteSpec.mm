@interface TSCEFormulaRewriteSpec
- (BOOL)adjustViewTractRef:(id)ref calcEngine:(id)engine containingCellRef:(const TSCECellRef *)cellRef undoTractList:(id *)list;
- (BOOL)isForTable:(const TSKUIDStruct *)table;
- (TSCECellRef)flattenedCellRefForCategoryRef:(SEL)ref calcEngine:(id)engine;
- (TSCECellRef)originalCellRefForUpdatedCellRef:(SEL)ref;
- (TSCECellRef)updatedCellRefForOriginalCellRef:(SEL)ref;
- (TSCEFormulaRewriteSpec)initWithRewriteType:(unsigned int)type;
- (TSCERangeCoordinate)affectedRange;
- (TSKUIDStruct)affectedConditionalStyleOwnerUID;
- (TSKUIDStruct)affectedOwnerUID;
- (TSKUIDStruct)conditionalStyleOwnerUID;
- (TSKUIDStruct)fromTableUID;
- (TSKUIDStruct)groupByUID;
- (TSKUIDStruct)insertAtUid;
- (TSKUIDStruct)insertOppositeUid;
- (TSKUIDStruct)tableUID;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)expandedRowColumnUuids;
- (TSUCellRect)mergeRangeAtOriginalCellRef:(const TSCECellRef *)ref;
- (TSUCellRect)tableRangeForTable:(const TSKUIDStruct *)table calcEngine:(id)engine;
- (id).cxx_construct;
- (id)amendRewriteWithCalcEngine:(id)engine;
- (id)coordMapperForTableUID:(const TSKUIDStruct *)d calcEngine:(id)engine;
- (id)description;
- (id)prepareToRewriteWithCalcEngine:(id)engine;
- (id)restoreViewTractRefFromUndoTractList:(id)list calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref;
- (unordered_set<TSKUIDStruct,)affectedOwnerUIDs;
- (void)addCoordMapper:(id)mapper;
- (void)addNestedRewrite:(id)rewrite;
- (void)clearTableIndexes;
- (void)didModifySrcTable:(id)table dstTable:(id)dstTable;
- (void)didModifyTable:(id)table;
- (void)didModifyTable:(id)table calcEngine:(id)engine;
- (void)loadMergeRangesContainingFormulasInTable:(id)table calcEngine:(id)engine;
- (void)willModifySrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver;
- (void)willModifyTable:(id)table uidResolver:(id)resolver calcEngine:(id)engine;
@end

@implementation TSCEFormulaRewriteSpec

- (TSCEFormulaRewriteSpec)initWithRewriteType:(unsigned int)type
{
  v5.receiver = self;
  v5.super_class = TSCEFormulaRewriteSpec;
  result = [(TSCEFormulaRewriteSpec *)&v5 init];
  if (result)
  {
    result->_rewriteType = type;
    result->_coordMappersLock._os_unfair_lock_opaque = 0;
    __dmb(0xBu);
    result->_tableUID = 0u;
    result->_conditionalStyleOwnerUID = 0u;
    result->_groupByUID._lower = 0;
    result->_groupByUID._upper = 0;
    result->_tableRange = xmmword_2217E0E0C;
    *&result->_isInverse = 256;
    result->_forSpillFormulasOnly = 0;
  }

  return result;
}

- (TSKUIDStruct)insertAtUid
{
  v4 = objc_msgSend_insertAtUid(self->_rowColumnInfo, a2, v2, v3);
  result._upper = v5;
  result._lower = v4;
  return result;
}

- (TSKUIDStruct)insertOppositeUid
{
  inserted = objc_msgSend_insertOppositeUid(self->_rowColumnInfo, a2, v2, v3);
  result._upper = v5;
  result._lower = inserted;
  return result;
}

- (id)coordMapperForTableUID:(const TSKUIDStruct *)d calcEngine:(id)engine
{
  engineCopy = engine;
  if (*d == 0)
  {
    v16 = 0;
    goto LABEL_19;
  }

  v31 = *d;
  if (v31._lower == objc_msgSend_conditionalStyleOwnerUID(self, v6, v7, v8) && v31._upper == v10)
  {
    v31._lower = objc_msgSend_tableUID(self, v10, v11, v12);
    v31._upper = v14;
  }

  os_unfair_lock_lock(&self->_coordMappersLock);
  v15 = sub_2210875C4(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, &v31);
  if (!v15)
  {
    os_unfair_lock_unlock(&self->_coordMappersLock);
    if (engineCopy)
    {
      goto LABEL_11;
    }

LABEL_16:
    v23 = 0;
    goto LABEL_17;
  }

  v16 = v15[4];
  os_unfair_lock_unlock(&self->_coordMappersLock);
  if (v16)
  {
    goto LABEL_19;
  }

  if (!engineCopy)
  {
    goto LABEL_16;
  }

LABEL_11:
  v19 = objc_msgSend_tableOrLinkedResolverForTableUID_(engineCopy, v17, &v31, v18);
  v23 = v19;
  if (v19)
  {
    v16 = objc_msgSend_coordMapper(v19, v20, v21, v22);
    v27 = objc_msgSend_tableUID(v16, v24, v25, v26);
    if (*v27 == v31)
    {
      objc_msgSend_addCoordMapper_(self, v28, v16, v29);
    }

    goto LABEL_18;
  }

LABEL_17:
  v16 = 0;
LABEL_18:

LABEL_19:

  return v16;
}

- (void)addCoordMapper:(id)mapper
{
  mapperCopy = mapper;
  if (mapperCopy)
  {
    os_unfair_lock_lock(&self->_coordMappersLock);
    v9 = objc_msgSend_tableUID(mapperCopy, v6, v7, v8);
    v10 = sub_2210875C4(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, v9);
    if (v10)
    {
      if (v10[4] != mapperCopy)
      {
        v14 = MEMORY[0x277D81150];
        v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSCEFormulaRewriteSpec addCoordMapper:]", v13);
        v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v17);
        v22 = objc_msgSend_tableUID(mapperCopy, v19, v20, v21);
        v23 = TSKUIDStruct::description(v22);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v24, v15, v18, 178, 0, "Replacing same tableUID with a different coordMapper - expect trouble: %@", v23);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v25, v26, v27);
      }
    }

    else
    {
      v29 = objc_msgSend_tableUID(mapperCopy, v11, v12, v13);
      v28 = sub_221244808(&self->_coordMappersByTableUID.__table_.__bucket_list_.__ptr_, v29, &unk_2217E0E1C, &v29);
      objc_storeStrong(v28 + 4, mapper);
    }

    os_unfair_lock_unlock(&self->_coordMappersLock);
  }
}

- (id)description
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CCAB68]);
  v35.receiver = self;
  v35.super_class = TSCEFormulaRewriteSpec;
  v4 = [(TSCEFormulaRewriteSpec *)&v35 description];
  v7 = objc_msgSend_initWithString_(v3, v5, v4, v6);

  v11 = sub_2212C7204(self->_rewriteType, v8, v9, v10);
  v14 = v11;
  if (self->_isInverse)
  {
    objc_msgSend_appendFormat_(v7, v12, @" type: %@ %@", v13, v11, @"(inverse)");
  }

  else
  {
    objc_msgSend_appendFormat_(v7, v12, @" type: %@ %@", v13, v11, &stru_2834BADA0);
  }

  v15 = TSKUIDStruct::description(&self->_tableUID);
  objc_msgSend_appendFormat_(v7, v16, @" tableUID: %@", v17, v15);

  if (objc_msgSend_count(self->_nestedRewrites, v18, v19, v20))
  {
    objc_msgSend_appendString_(v7, v21, @"\nNested rewrites:\n", v22);
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v23 = self->_nestedRewrites;
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v31, v36, 16);
    if (v27)
    {
      v28 = *v32;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v32 != v28)
          {
            objc_enumerationMutation(v23);
          }

          objc_msgSend_appendFormat_(v7, v25, @"   (nested): %@\n", v26, *(*(&v31 + 1) + 8 * i));
        }

        v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v25, &v31, v36, 16);
      }

      while (v27);
    }
  }

  return v7;
}

- (TSKUIDStruct)affectedOwnerUID
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 0x12)
  {
    goto LABEL_7;
  }

  v5 = 1 << rewriteType;
  if ((v5 & 0x61BBF) == 0)
  {
    if ((v5 & 0xC040) != 0)
    {
      v8 = MEMORY[0x277D81150];
      v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedOwnerUID]", v2);
      v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v11);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 275, 0, "Shouldn't ask for the affected owner ID of a move, since there may be two.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
      lower = objc_msgSend_srcTableUID(self->_regionMovedInfo, v17, v18, v19);
      goto LABEL_8;
    }

    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedOwnerUID]", v2);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 282, 0, "Not a meaningful question, there are numerous tables affected");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
LABEL_7:
    upper = 0;
    lower = 0;
    goto LABEL_8;
  }

  lower = self->_tableUID._lower;
  upper = self->_tableUID._upper;
LABEL_8:
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (unordered_set<TSKUIDStruct,)affectedOwnerUIDs
{
  selfCopy = self;
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  size = self->__table_.__bucket_list_.__deleter_.__size_;
  if (size <= 9)
  {
    if (size >= 6 && (size - 7) >= 3)
    {
      if (size != 6)
      {
        return self;
      }

LABEL_14:
      *&v15 = objc_msgSend_srcTableUID(self[2].__table_.__size_, a3, v3, v4);
      *(&v15 + 1) = v9;
      sub_2211D6484(retstr, &v15, &v15);
      *&v15 = objc_msgSend_dstTableUID(selfCopy[2].__table_.__size_, v10, v11, v12);
      *(&v15 + 1) = v13;
      return sub_2211D6484(retstr, &v15, &v15);
    }

    goto LABEL_11;
  }

  if (size <= 0x12)
  {
    if (((1 << size) & 0x61800) != 0)
    {
LABEL_11:
      p_next = &self->__table_.__first_node_.__next_;
      return sub_2210C2B00(retstr, p_next, p_next);
    }

    if (((1 << size) & 0xC000) != 0)
    {
      goto LABEL_14;
    }

    if (((1 << size) & 0x12000) != 0)
    {
      p_next = objc_msgSend_groupByUid(self[3].__table_.__size_, a3, v3, v4);
      return sub_2210C2B00(retstr, p_next, p_next);
    }
  }

  if (size == 10)
  {
    self = objc_msgSend_tableUIDMap(self[3].__table_.__first_node_.__next_, a3, v3, v4);
    for (i = &self->__table_.__first_node_; ; self = sub_2210C2B00(retstr, &i[4].__next_, &i[4]))
    {
      i = i->__next_;
      if (!i)
      {
        break;
      }

      sub_2210C2B00(retstr, &i[2].__next_, &i[2]);
    }
  }

  return self;
}

- (TSKUIDStruct)affectedConditionalStyleOwnerUID
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 0x11)
  {
    goto LABEL_6;
  }

  if (((1 << rewriteType) & 0x21BBC) == 0)
  {
    if (rewriteType == 10)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedConditionalStyleOwnerUID]", v2);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 353, 0, "Not a meaningful question, there are numerous tables affected");
LABEL_7:

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
      upper = 0;
      lower = 0;
      goto LABEL_8;
    }

LABEL_6:
    v13 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedConditionalStyleOwnerUID]", v2);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v16, v8, v11, 336, 0, "Not implemented for these rewrite types.");
    goto LABEL_7;
  }

  lower = self->_conditionalStyleOwnerUID._lower;
  upper = self->_conditionalStyleOwnerUID._upper;
LABEL_8:
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (BOOL)isForTable:(const TSKUIDStruct *)table
{
  lower = table->_lower;
  if (table->_lower == self->_tableUID._lower && table->_upper == self->_tableUID._upper || lower == self->_conditionalStyleOwnerUID._lower && table->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    return 1;
  }

  if (lower == self->_groupByUID._lower)
  {
    return table->_upper == self->_groupByUID._upper;
  }

  return 0;
}

- (TSUCellRect)tableRangeForTable:(const TSKUIDStruct *)table calcEngine:(id)engine
{
  engineCopy = engine;
  if (*table == *&self->_tableUID || table->_lower == self->_conditionalStyleOwnerUID._lower && table->_upper == self->_conditionalStyleOwnerUID._upper)
  {
    if (TSUCellRect::isValid(&self->_tableRange))
    {
      origin = self->_tableRange.origin;
      size = self->_tableRange.size;
      goto LABEL_13;
    }

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_tableOrLinkedResolverForTableUID_(engineCopy, v6, table, v7);
  v16 = v12;
  if (v12)
  {
    v22._topLeft = objc_msgSend_tableRangeCoordinate(v12, v13, v14, v15);
    v22._bottomRight = v17;
    TSCERangeCoordinate::asCellRect(&v22);
    origin = v18;
    size = v19;
    if (v11)
    {
      self->_tableRange.origin = v18;
      self->_tableRange.size = v19;
    }
  }

  else
  {
    size = 0;
    origin = 0x7FFF7FFFFFFFLL;
  }

LABEL_13:
  v20 = origin;
  v21 = size;
  result.size = v21;
  result.origin = v20;
  return result;
}

- (TSCECellRef)updatedCellRefForOriginalCellRef:(SEL)ref
{
  selfCopy = self;
  lower = a4->_tableUID._lower;
  upper = a4->_tableUID._upper;
  v162 = lower;
  v163 = upper;
  coordinate = a4->coordinate;
  v10 = coordinate;
  *retstr = *a4;
  v11 = self->_tableUID._lower;
  if (v11 > 7)
  {
    if (v11 <= 11)
    {
      if (v11 != 8)
      {
        if (v11 == 9)
        {
          self = objc_msgSend_isForTable_(self, ref, &v162, v4);
          if (!self)
          {
            return self;
          }

          v141 = objc_msgSend_mergeOriginsMap(*&selfCopy[5].coordinate, v138, v139, v140);
          self = sub_221244A70(v141, &coordinate);
          if (!self)
          {
            return self;
          }

          v12 = self[1].coordinate;
        }

        else
        {
          if (v11 != 11)
          {
            return self;
          }

          self = objc_msgSend_isForTable_(self, ref, &v162, v4);
          if (!self)
          {
            return self;
          }

          v12 = (__ROR8__(v10, 32) & 0xFFFF0000FFFFLL);
        }

        retstr->coordinate = v12;
        return self;
      }

      self = objc_msgSend_isForTable_(self, ref, &v162, v4);
      if (!self)
      {
        return self;
      }

      v13 = selfCopy[4]._tableUID._upper;
      v64 = objc_msgSend_mergeRegion(v13, v114, v115, v116);
      v120 = objc_msgSend_mergeSource(v13, v117, v118, v119);
      if (*v120 != 0x7FFFFFFF && (*v120 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v125 = objc_msgSend_columnUids(v64, v121, v122, v123);
        if (objc_msgSend_containsIndex_(v125, v126, WORD2(v10), v127))
        {
          v131 = objc_msgSend_rowUids(v64, v128, v129, v130);
          v134 = objc_msgSend_containsIndex_(v131, v132, v10, v133);

          if (v134)
          {
            retstr->coordinate = *objc_msgSend_mergeSource(v13, v135, v136, v137);
          }
        }

        else
        {
        }
      }

      goto LABEL_77;
    }

    if ((v11 - 14) >= 2)
    {
      if (v11 != 12)
      {
        return self;
      }

      goto LABEL_14;
    }

LABEL_34:
    if (lower != objc_msgSend_srcTableUID(self[4]._tableUID._lower, ref, a4, v4) || upper != v56)
    {
      self = objc_msgSend_srcCondStyleOwnerUID(selfCopy[4]._tableUID._lower, v56, v57, v58);
      if (lower != self || upper != v60)
      {
        return self;
      }
    }

    v13 = selfCopy[4]._tableUID._lower;
    v64 = objc_msgSend_srcColumnUids(v13, v61, v62, v63);
    if (objc_msgSend_containsIndex_(v64, v65, WORD2(v10), v66))
    {
      v70 = objc_msgSend_srcRowUids(v13, v67, v68, v69);
      v73 = objc_msgSend_containsIndex_(v70, v71, v10, v72);

      if (v73)
      {
        v77 = objc_msgSend_srcColumnUids(v13, v74, v75, v76);
        *&v159 = objc_msgSend_uidForIndex_(v77, v78, WORD2(v10), v79);
        *(&v159 + 1) = v80;

        v84 = objc_msgSend_srcRowUids(v13, v81, v82, v83);
        *&v157 = objc_msgSend_uidForIndex_(v84, v85, v10, v86);
        *(&v157 + 1) = v87;

        v156[0] = objc_msgSend_dstUidForSrcUid_(v13, v88, &v159, v89);
        v156[1] = v90;
        v155[0] = objc_msgSend_dstUidForSrcUid_(v13, v90, &v157, v91);
        v155[1] = v92;
        v95 = objc_msgSend_dstColumnUids(v13, v92, v93, v94);
        retstr->coordinate.column = objc_msgSend_columnIndexForUid_(v95, v96, v156, v97);

        v101 = objc_msgSend_dstRowUids(v13, v98, v99, v100);
        retstr->coordinate.row = objc_msgSend_rowIndexForUid_(v101, v102, v155, v103);

        v107 = objc_msgSend_srcTableUID(v13, v104, v105, v106);
        if (v162 == v107 && v163 == v108)
        {
          v111 = objc_msgSend_dstTableUID(v13, v108, v109, v110);
        }

        else
        {
          v111 = objc_msgSend_dstCondStyleOwnerUID(v13, v108, v109, v110);
        }

        retstr->_tableUID._lower = v111;
        retstr->_tableUID._upper = v112;
      }

      goto LABEL_78;
    }

LABEL_77:

LABEL_78:
    return self;
  }

  if (v11 > 5)
  {
    if (v11 != 6)
    {
      self = objc_msgSend_isForTable_(self, ref, &v162, v4);
      if (!self)
      {
        return self;
      }

      v13 = objc_msgSend_mergeRegion(selfCopy[4]._tableUID._upper, v32, v33, v34);
      v41 = *objc_msgSend_mergeSource(selfCopy[4]._tableUID._upper, v35, v36, v37);
      if (v41 == 0x7FFFFFFF || (v41 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        v41 = objc_msgSend_topLeftCellCoord(v13, v38, v39, v40);
      }

      v43 = objc_msgSend_columnUids(v13, v38, v39, v40);
      if (objc_msgSend_containsIndex_(v43, v44, WORD2(v10), v45))
      {
        v49 = objc_msgSend_rowUids(v13, v46, v47, v48);
        v52 = objc_msgSend_containsIndex_(v49, v50, v10, v51);

        if (v52)
        {
          if (v10 == v41 && ((v10 ^ v41) & 0x101FFFF00000000) == 0)
          {
            retstr->coordinate = objc_msgSend_topLeftCellCoord(v13, v53, v54, v55);
          }

          else
          {
            retstr->_tableUID._lower = 0;
            retstr->_tableUID._upper = 0;
            retstr->coordinate = 0x7FFF7FFFFFFFLL;
          }
        }
      }

      else
      {
      }

      goto LABEL_78;
    }

    goto LABEL_34;
  }

  if ((v11 - 2) >= 2)
  {
    if ((v11 - 4) >= 2)
    {
      return self;
    }

LABEL_14:
    self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &v162, v4);
    if (!self)
    {
      return self;
    }

    v13 = *&selfCopy[4].coordinate;
    if (objc_msgSend_isRows(v13, v14, v15, v16))
    {
      v10 = v10;
    }

    else
    {
      v10 = WORD2(v10);
    }

    if (objc_msgSend_indexIsAffected_(v13, v17, v10, v18))
    {
      *&v159 = objc_msgSend_uuidForIndex_(v13, v19, v10, v21);
      *(&v159 + 1) = v22;
      if (objc_msgSend_isRows(v13, v22, v23, v24))
      {
        v28 = objc_msgSend_auxRowColumnInfo(v13, v25, v26, v27);
        v31 = objc_msgSend_rowIndexForUuid_(v28, v29, &v159, v30);
      }

      else
      {
        v28 = objc_msgSend_auxRowColumnInfo(v13, v25, v26, v27);
        v31 = objc_msgSend_columnIndexForUuid_(v28, v146, &v159, v147);
      }

      v148 = v31;

      if (objc_msgSend_isRows(v13, v149, v150, v151))
      {
        retstr->coordinate.row = v148;
      }

      else
      {
        retstr->coordinate.column = v148;
      }
    }

    else
    {
      v142 = selfCopy[4].coordinate;
      if (v142)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v142, v19, 2, a4);
        objc_msgSend_auxRowColumnInfo(*&selfCopy[4].coordinate, v143, v144, v145);
      }

      else
      {
        v159 = 0uLL;
        v160 = 0;
        objc_msgSend_auxRowColumnInfo(0, v19, v20, v21);
      }
      v152 = ;
      v154 = v152;
      if (v152)
      {
        objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(v152, v153, 3, &v159);
      }

      else
      {
        v157 = 0uLL;
        v158 = 0;
      }

      *&retstr->coordinate.row = v157;
      retstr->_tableUID._upper = v158;
    }

    goto LABEL_78;
  }

  self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &v162, v4);
  if (self)
  {
    self = selfCopy[4].coordinate;
    if (self)
    {
      self = objc_msgSend_updatedCellRefForRewriteType_originalCellRef_(self, v113, LODWORD(selfCopy->_tableUID._lower), a4);
    }

    else
    {
      v159 = 0uLL;
      v160 = 0;
    }

    *&retstr->coordinate.row = v159;
    retstr->_tableUID._upper = v160;
  }

  return self;
}

- (TSCECellRef)originalCellRefForUpdatedCellRef:(SEL)ref
{
  selfCopy = self;
  coordinate = a4->coordinate;
  v8 = coordinate;
  tableUID = a4->_tableUID;
  *retstr = *a4;
  lower = self->_tableUID._lower;
  if (lower > 7)
  {
    if (lower <= 11)
    {
      if (lower != 8)
      {
        if (lower == 9)
        {
          self = objc_msgSend_isForTable_(self, ref, &tableUID, v4);
          if (!self)
          {
            return self;
          }

          v10 = *&selfCopy[5].coordinate;
          v136 = objc_msgSend_reverseOriginsMap(v10, v133, v134, v135);
          v137 = sub_221244A70(v136, &coordinate);
          if (v137)
          {
            retstr->coordinate = v137[3];
          }

          goto LABEL_63;
        }

        if (lower == 11)
        {
          self = objc_msgSend_isForTable_(self, ref, &tableUID, v4);
          if (self)
          {
            retstr->coordinate = (__ROR8__(v8, 32) & 0xFFFF0000FFFFLL);
          }
        }

        return self;
      }

      self = objc_msgSend_isForTable_(self, ref, &tableUID, v4);
      if (!self)
      {
        return self;
      }

      v10 = objc_msgSend_mergeRegion(selfCopy[4]._tableUID._upper, v115, v116, v117);
      v40 = objc_msgSend_columnUids(v10, v118, v119, v120);
      if (objc_msgSend_containsIndex_(v40, v121, WORD2(v8), v122))
      {
        v126 = objc_msgSend_rowUids(v10, v123, v124, v125);
        v129 = objc_msgSend_containsIndex_(v126, v127, v8, v128);

        if (v129)
        {
          retstr->coordinate = objc_msgSend_topLeftCellCoord(v10, v130, v131, v132);
        }

        goto LABEL_63;
      }

      goto LABEL_62;
    }

    if ((lower - 14) >= 2)
    {
      if (lower != 12)
      {
        return self;
      }

LABEL_14:
      self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &tableUID, v4);
      if (!self)
      {
        return self;
      }

      v10 = *&selfCopy[4].coordinate;
      if (objc_msgSend_isRows(v10, v11, v12, v13))
      {
        v8 = v8;
      }

      else
      {
        v8 = WORD2(v8);
      }

      v17 = objc_msgSend_auxRowColumnInfo(v10, v14, v15, v16);
      IsAffected = objc_msgSend_indexIsAffected_(v17, v18, v8, v19);

      if (IsAffected)
      {
        v24 = objc_msgSend_auxRowColumnInfo(v10, v21, v22, v23);
        *&v148 = objc_msgSend_uuidForIndex_(v24, v25, v8, v26);
        *(&v148 + 1) = v27;

        if (objc_msgSend_isRows(v10, v28, v29, v30))
        {
          v33 = objc_msgSend_rowIndexForUuid_(v10, v31, &v148, v32);
        }

        else
        {
          v33 = objc_msgSend_columnIndexForUuid_(v10, v31, &v148, v32);
        }

        v141 = v33;
        if (objc_msgSend_isRows(v10, v34, v35, v36))
        {
          retstr->coordinate.row = v141;
        }

        else
        {
          retstr->coordinate.column = v141;
        }
      }

      else
      {
        v138 = objc_msgSend_auxRowColumnInfo(*&selfCopy[4].coordinate, v21, v22, v23);
        v140 = v138;
        if (v138)
        {
          objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(v138, v139, 3, a4);
        }

        else
        {
          v148 = 0uLL;
          v149 = 0;
        }

        v143 = selfCopy[4].coordinate;
        if (v143)
        {
          objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(v143, v142, 2, &v148);
        }

        else
        {
          v146 = 0uLL;
          v147 = 0;
        }

        *&retstr->coordinate.row = v146;
        retstr->_tableUID._upper = v147;
      }

      goto LABEL_63;
    }

    goto LABEL_30;
  }

  if (lower > 5)
  {
    if (lower != 6)
    {
      self = objc_msgSend_isForTable_(self, ref, &tableUID, v4);
      if (!self)
      {
        return self;
      }

      v10 = selfCopy[4]._tableUID._upper;
      v40 = objc_msgSend_mergeRegion(v10, v37, v38, v39);
      v44 = objc_msgSend_mergeSource(v10, v41, v42, v43);
      if (*v44 != 0x7FFFFFFF && (*v44 & 0xFFFF00000000) != 0x7FFF00000000)
      {
        v49 = objc_msgSend_columnUids(v40, v45, v46, v47);
        if (objc_msgSend_containsIndex_(v49, v50, WORD2(v8), v51))
        {
          v55 = objc_msgSend_rowUids(v40, v52, v53, v54);
          v58 = objc_msgSend_containsIndex_(v55, v56, v8, v57);

          if (v58)
          {
            retstr->coordinate = *objc_msgSend_mergeSource(v10, v59, v60, v61);
          }
        }

        else
        {
        }
      }

      goto LABEL_62;
    }

LABEL_30:
    self = objc_msgSend_isForDstTable_(self[4]._tableUID._lower, ref, &tableUID, v4);
    if (!self)
    {
      return self;
    }

    v10 = selfCopy[4]._tableUID._lower;
    v40 = objc_msgSend_dstColumnUids(v10, v62, v63, v64);
    if (objc_msgSend_containsIndex_(v40, v65, WORD2(v8), v66))
    {
      v70 = objc_msgSend_dstRowUids(v10, v67, v68, v69);
      v73 = objc_msgSend_containsIndex_(v70, v71, v8, v72);

      if (v73)
      {
        v77 = objc_msgSend_dstColumnUids(v10, v74, v75, v76);
        *&v148 = objc_msgSend_uidForIndex_(v77, v78, WORD2(v8), v79);
        *(&v148 + 1) = v80;

        v84 = objc_msgSend_dstRowUids(v10, v81, v82, v83);
        *&v146 = objc_msgSend_uidForIndex_(v84, v85, v8, v86);
        *(&v146 + 1) = v87;

        v145[0] = objc_msgSend_srcUidForDstUid_(v10, v88, &v148, v89);
        v145[1] = v90;
        v92 = objc_msgSend_srcUidForDstUid_(v10, v90, &v146, v91);
        v96 = objc_msgSend_srcColumnUids(v10, v93, v94, v95, v92, v93);
        retstr->coordinate.column = objc_msgSend_columnIndexForUid_(v96, v97, v145, v98);

        v102 = objc_msgSend_srcRowUids(v10, v99, v100, v101);
        retstr->coordinate.row = objc_msgSend_rowIndexForUid_(v102, v103, &v144, v104);

        v108 = objc_msgSend_dstTableUID(v10, v105, v106, v107);
        if (tableUID._lower == v108 && tableUID._upper == v109)
        {
          v112 = objc_msgSend_srcTableUID(v10, v109, v110, v111);
        }

        else
        {
          v112 = objc_msgSend_srcCondStyleOwnerUID(v10, v109, v110, v111);
        }

        retstr->_tableUID._lower = v112;
        retstr->_tableUID._upper = v113;
      }

      goto LABEL_63;
    }

LABEL_62:

LABEL_63:
    return self;
  }

  if ((lower - 2) >= 2)
  {
    if ((lower - 4) >= 2)
    {
      return self;
    }

    goto LABEL_14;
  }

  self = objc_msgSend_isForTable_(*&self[4].coordinate, ref, &tableUID, v4);
  if (self)
  {
    self = selfCopy[4].coordinate;
    if (self)
    {
      self = objc_msgSend_originalCellRefForRewriteType_updatedCellRef_(self, v114, LODWORD(selfCopy->_tableUID._lower), a4);
    }

    else
    {
      v148 = 0uLL;
      v149 = 0;
    }

    *&retstr->coordinate.row = v148;
    retstr->_tableUID._upper = v149;
  }

  return self;
}

- (TSCECellRef)flattenedCellRefForCategoryRef:(SEL)ref calcEngine:(id)engine
{
  engineCopy = engine;
  v12 = a5;
  retstr->_tableUID._lower = 0;
  retstr->_tableUID._upper = 0;
  retstr->coordinate = 0x7FFF7FFFFFFFLL;
  if (self->_rewriteType == 6)
  {
    v13 = objc_msgSend_absoluteGroupUid(engineCopy, v9, v10, v11);
    if (v13 | v14)
    {
      v17 = objc_msgSend_originalSrcTableUID(self->_regionMovedInfo, v14, v15, v16);
      if (!(v17 | v18) || (v21 = objc_msgSend_originalSrcTableUID(self->_regionMovedInfo, v18, v19, v20), v23 = v22, v21 == objc_msgSend_srcTableUID(self->_regionMovedInfo, v22, v24, v25)) && v23 == v18)
      {
        v29 = objc_msgSend_finalDstTableUID(self->_regionMovedInfo, v18, v19, v20);
        v30 = v26;
        if (v29 | v26)
        {
          if (objc_msgSend_srcTableUID(self->_regionMovedInfo, v26, v27, v28) != v29 || v31 != v30)
          {
            v96 = objc_msgSend_srcRegion(self->_regionMovedInfo, v31, v32, v33);
            v100 = objc_msgSend_tableUID(v96, v34, v35, v36);
            v101 = v37;
            v39 = objc_msgSend_tableOrLinkedResolverForTableUID_(v12, v37, &v100, v38);
            v43 = v39;
            if (v39)
            {
              v44 = objc_msgSend_groupByUUID(v39, v40, v41, v42);
              v46 = v45;
              if (v44 == objc_msgSend_groupByUid(engineCopy, v45, v47, v48) && v46 == v49)
              {
                v100 = objc_msgSend_columnUid(engineCopy, v49, v50, v51);
                v101 = v52;
                v95 = objc_msgSend_columnIndexForColumnUID_(v43, v52, &v100, v53);
                if (v95 != 0x7FFF)
                {
                  v57 = objc_msgSend_columnUids(v96, v54, v55, v56);
                  v60 = objc_msgSend_containsIndex_(v57, v58, v95, v59);

                  if (v60)
                  {
                    v64 = objc_msgSend_rowUids(v96, v61, v62, v63);
                    v68 = objc_msgSend_viewOrderUids(v64, v65, v66, v67);

                    v73 = *v68;
                    v72 = *(v68 + 8);
                    if (*v68 != v72)
                    {
                      v74 = 0;
                      while (*v73 != objc_msgSend_absoluteGroupUid(engineCopy, v69, v70, v71) || v73[1] != v69)
                      {
                        v73 += 2;
                        --v74;
                        if (v73 == v72)
                        {
                          goto LABEL_25;
                        }
                      }

                      v75 = objc_msgSend_rowUids(v96, v69, v70, v71);
                      v94 = objc_msgSend_indexes(v75, v76, v77, v78);
                      Index = objc_msgSend_firstIndex(v94, v79, v80, v81);
                      v86 = objc_msgSend_tableUID(v96, v83, v84, v85);
                      v100 = Index | (v95 << 32);
                      v101 = v86;
                      v102 = v87;

                      objc_msgSend_updatedCellRefForOriginalCellRef_(self, v88, &v100, v89);
                      if (v100 != v97 || ((v97 ^ v100) & 0x101FFFF00000000) != 0 || v101 != v98 || v102 != v99)
                      {
                        retstr->coordinate = (v97 & 0xFFFF00000000 | (objc_msgSend_finalTopRowIndex(self->_regionMovedInfo, v90, v91, v92) - v74));
                        retstr->_tableUID._lower = v29;
                        retstr->_tableUID._upper = v30;
                      }
                    }
                  }
                }
              }
            }

LABEL_25:
          }
        }
      }
    }
  }

  return result;
}

- (TSUCellRect)mergeRangeAtOriginalCellRef:(const TSCECellRef *)ref
{
  v3 = sub_221244B44(&self->_mergeRangesContainingFormulas.__table_.__bucket_list_.__ptr_, ref);
  if (v3)
  {
    v4 = v3;
    v5 = v3[5];
    v6 = v4[6];
  }

  else
  {
    v6 = 0;
    v5 = 0x7FFF7FFFFFFFLL;
  }

  result.size = v6;
  result.origin = v5;
  return result;
}

- (void)loadMergeRangesContainingFormulasInTable:(id)table calcEngine:(id)engine
{
  tableCopy = table;
  engineCopy = engine;
  v11 = objc_msgSend_tableRangeCoordinate(tableCopy, v8, v9, v10);
  v13 = v12;
  *&v35 = objc_msgSend_resolverUID(tableCopy, v12, v14, v15);
  *(&v35 + 1) = v16;
  v18 = objc_msgSend_tableResolverForTableUID_(engineCopy, v16, &v35, v17);
  sub_2210BE918(&self->_mergeRangesContainingFormulas.__table_.__bucket_list_.__ptr_);
  v22 = objc_msgSend_rowOrColumnIndices(self->_rowColumnInfo, v19, v20, v21);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = sub_221243310;
  v28[3] = &unk_278461DF8;
  v28[4] = self;
  v33 = v11;
  v34 = v13;
  v23 = v18;
  v29 = v23;
  v24 = engineCopy;
  v30 = v24;
  v25 = tableCopy;
  v31 = v25;
  v32 = v35;
  objc_msgSend_enumerateRangesUsingBlock_(v22, v26, v28, v27);
}

- (BOOL)adjustViewTractRef:(id)ref calcEngine:(id)engine containingCellRef:(const TSCECellRef *)cellRef undoTractList:(id *)list
{
  v6 = MEMORY[0x277D81150];
  v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec adjustViewTractRef:calcEngine:containingCellRef:undoTractList:]", engine, cellRef, list);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 749, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  return 0;
}

- (id)restoreViewTractRefFromUndoTractList:(id)list calcEngine:(id)engine containingCellRef:(const TSCECellRef *)ref
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec restoreViewTractRefFromUndoTractList:calcEngine:containingCellRef:]", engine, ref);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 756, 0, "subclasses must override");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return 0;
}

- (void)willModifyTable:(id)table uidResolver:(id)resolver calcEngine:(id)engine
{
  tableCopy = table;
  resolverCopy = resolver;
  engineCopy = engine;
  objc_msgSend_removeAllObjects(self->_nestedRewrites, v10, v11, v12);
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v16 = tableCopy != 0;
  }

  else
  {
    v16 = tableCopy != 0;
    if (tableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v17 = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v13, v14, v15);
      if (v17 | v13)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v13, v14, v15);
        self->_conditionalStyleOwnerUID._upper = v13;
      }

      v16 = 1;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v18 = !v16;
    if (self->_groupByUID._upper)
    {
      v18 = 1;
    }

    if ((v18 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(tableCopy, v13, v14, v15);
      self->_groupByUID._upper = v13;
    }
  }

  rewriteType = self->_rewriteType;
  if (rewriteType <= 0x11)
  {
    if (((1 << rewriteType) & 0x1030) != 0)
    {
      objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v13, tableCopy, resolverCopy, 1, 0);
      objc_msgSend_createAuxRowColumnInfoForMove(self->_rowColumnInfo, v31, v32, v33);
      v20 = objc_msgSend_auxRowColumnInfo(self->_rowColumnInfo, v34, v35, v36);
      objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(v20, v37, tableCopy, resolverCopy, 0, self->_shuffleMap);
      goto LABEL_20;
    }

    if (((1 << rewriteType) & 0xC040) != 0)
    {
      v22 = MEMORY[0x277D81150];
      v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEFormulaRewriteSpec willModifyTable:uidResolver:calcEngine:]", v15);
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v25);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v22, v27, v23, v26, 802, 0, "Move region requires the two tables version will/didModifySrcTable:dstTable: be called instead");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v28, v29, v30);
      goto LABEL_21;
    }

    if (((1 << rewriteType) & 0x20180) != 0)
    {
      v20 = objc_msgSend_mergeRegion(self->_mergeInfo, v13, v14, v15);
      objc_msgSend_loadIndexesForTable_uidResolver_(v20, v21, tableCopy, resolverCopy);
LABEL_20:

      goto LABEL_21;
    }
  }

  if (rewriteType == 3)
  {
    objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v13, tableCopy, resolverCopy, 0, 0);
  }

  else if (rewriteType == 2)
  {
    objc_msgSend_loadIndexesForTable_uidResolver_forRemoveRows_shuffleMap_(self->_rowColumnInfo, v13, tableCopy, resolverCopy, 1, 0);
    objc_msgSend_loadMergeRangesContainingFormulasInTable_calcEngine_(self, v41, tableCopy, engineCopy);
  }

LABEL_21:
  *&self->_willModifyWasCalled = 1;
  if (engineCopy)
  {
    objc_msgSend_pushRewriteSpec_(engineCopy, v13, self, v15);
    v40 = objc_msgSend_prepareToRewriteWithCalcEngine_(self, v38, engineCopy, v39);
  }
}

- (void)addNestedRewrite:(id)rewrite
{
  rewriteCopy = rewrite;
  if (rewriteCopy && objc_msgSend_canBeNested(rewriteCopy, v4, v5, v6))
  {
    nestedRewrites = self->_nestedRewrites;
    if (!nestedRewrites)
    {
      v10 = objc_opt_new();
      v11 = self->_nestedRewrites;
      self->_nestedRewrites = v10;

      nestedRewrites = self->_nestedRewrites;
    }

    objc_msgSend_addObject_(nestedRewrites, v7, rewriteCopy, v8);
  }
}

- (id)prepareToRewriteWithCalcEngine:(id)engine
{
  v4 = objc_opt_new();
  formulasForUndo = self->_formulasForUndo;
  self->_formulasForUndo = v4;

  v6 = self->_formulasForUndo;

  return v6;
}

- (id)amendRewriteWithCalcEngine:(id)engine
{
  formulasForUndo = self->_formulasForUndo;
  if (!formulasForUndo)
  {
    v5 = objc_opt_new();
    v6 = self->_formulasForUndo;
    self->_formulasForUndo = v5;

    formulasForUndo = self->_formulasForUndo;
  }

  return formulasForUndo;
}

- (void)willModifySrcTable:(id)table srcUidResolver:(id)resolver dstTable:(id)dstTable dstUidResolver:(id)uidResolver
{
  tableCopy = table;
  resolverCopy = resolver;
  dstTableCopy = dstTable;
  uidResolverCopy = uidResolver;
  rewriteType = self->_rewriteType;
  v17 = rewriteType > 0xF;
  v18 = (1 << rewriteType) & 0xC040;
  if (v17 || v18 == 0)
  {
    v20 = MEMORY[0x277D81150];
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEFormulaRewriteSpec willModifySrcTable:srcUidResolver:dstTable:dstUidResolver:]", v14);
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v23);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v20, v25, v21, v24, 877, 0, "Only move region takes two tables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v26, v27, v28);
  }

  objc_msgSend_removeAllObjects(self->_nestedRewrites, v12, v13, v14);
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v32 = dstTableCopy != 0;
  }

  else
  {
    v32 = dstTableCopy != 0;
    if (dstTableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v33 = objc_msgSend_conditionalStyleFormulaOwnerUID(dstTableCopy, v29, v30, v31);
      if (v33 | v29)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(dstTableCopy, v29, v30, v31);
        self->_conditionalStyleOwnerUID._upper = v29;
      }

      v32 = 1;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v34 = !v32;
    if (self->_groupByUID._upper)
    {
      v34 = 1;
    }

    if ((v34 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(dstTableCopy, v29, v30, v31);
      self->_groupByUID._upper = v29;
    }
  }

  v35 = self->_rewriteType;
  if (v35 <= 0xF && ((1 << v35) & 0xC040) != 0)
  {
    objc_msgSend_loadIndexesForSrcTable_srcUidResolver_dstTable_dstUidResolver_(self->_regionMovedInfo, v29, tableCopy, resolverCopy, dstTableCopy, uidResolverCopy);
  }

  v39 = objc_msgSend_calcEngine(tableCopy, v29, v30, v31);
  if (!v39)
  {
    v39 = objc_msgSend_calcEngine(dstTableCopy, v36, v37, v38);
  }

  if (objc_msgSend_rewriteType(self, v36, v37, v38) != 6)
  {
    objc_msgSend_rewriteType(self, v40, v41, v42);
  }

  *&self->_willModifyWasCalled = 1;
  objc_msgSend_pushRewriteSpec_(v39, v40, self, v42);
  v45 = objc_msgSend_prepareToRewriteWithCalcEngine_(self, v43, v39, v44);
}

- (void)didModifySrcTable:(id)table dstTable:(id)dstTable
{
  tableCopy = table;
  dstTableCopy = dstTable;
  rewriteType = self->_rewriteType;
  v11 = rewriteType > 0xF;
  v12 = (1 << rewriteType) & 0xC040;
  if (v11 || v12 == 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewriteSpec didModifySrcTable:dstTable:]", v8);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 914, 0, "Only move region takes two tables");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
  }

  v26 = objc_msgSend_calcEngine(tableCopy, v6, v7, v8);
  if (!v26)
  {
    v26 = objc_msgSend_calcEngine(dstTableCopy, v23, v24, v25);
  }

  self->_didModifyWasCalled = 1;
  objc_msgSend_popRewriteSpec_(v26, v23, self, v25);
  v29 = objc_msgSend_amendRewriteWithCalcEngine_(self, v27, v26, v28);
}

- (void)didModifyTable:(id)table
{
  tableCopy = table;
  v7 = objc_msgSend_calcEngine(tableCopy, v4, v5, v6);
  objc_msgSend_didModifyTable_calcEngine_(self, v8, tableCopy, v7);
}

- (void)didModifyTable:(id)table calcEngine:(id)engine
{
  tableCopy = table;
  engineCopy = engine;
  v10 = tableCopy;
  if (self->_conditionalStyleOwnerUID._lower)
  {
    v11 = tableCopy != 0;
  }

  else
  {
    v11 = tableCopy != 0;
    if (tableCopy && !self->_conditionalStyleOwnerUID._upper)
    {
      v12 = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v6, v7, v8);
      if (v12 | v6)
      {
        self->_conditionalStyleOwnerUID._lower = objc_msgSend_conditionalStyleFormulaOwnerUID(tableCopy, v6, v7, v8);
        self->_conditionalStyleOwnerUID._upper = v6;
      }

      v11 = 1;
      v10 = tableCopy;
    }
  }

  if (!self->_groupByUID._lower)
  {
    v13 = !v11;
    if (self->_groupByUID._upper)
    {
      v13 = 1;
    }

    if ((v13 & 1) == 0)
    {
      self->_groupByUID._lower = objc_msgSend_groupByUID(v10, v6, v7, v8);
      self->_groupByUID._upper = v6;
    }
  }

  rewriteType = self->_rewriteType;
  v15 = rewriteType > 0xF;
  v16 = (1 << rewriteType) & 0xC040;
  if (!v15 && v16 != 0)
  {
    v18 = MEMORY[0x277D81150];
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "[TSCEFormulaRewriteSpec didModifyTable:calcEngine:]", v8);
    v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v21);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 956, 0, "Move region requires the two table version didModifySrcTable:dstTable: be called instead");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
  }

  self->_didModifyWasCalled = 1;
  if (engineCopy)
  {
    objc_msgSend_popRewriteSpec_(engineCopy, v6, self, v8);
    v29 = objc_msgSend_amendRewriteWithCalcEngine_(self, v27, engineCopy, v28);
  }
}

- (void)clearTableIndexes
{
  rewriteType = self->_rewriteType;
  if (rewriteType <= 0x11)
  {
    if (((1 << rewriteType) & 0x103C) != 0)
    {
      objc_msgSend_unloadIndexes(self->_rowColumnInfo, a2, v2, v3);
    }

    else if (((1 << rewriteType) & 0xC040) != 0)
    {
      objc_msgSend_unloadIndexes(self->_regionMovedInfo, a2, v2, v3);
    }

    else if (((1 << rewriteType) & 0x20180) != 0)
    {
      v6 = objc_msgSend_mergeRegion(self->_mergeInfo, a2, v2, v3);
      objc_msgSend_unloadIndexes(v6, v7, v8, v9);
    }
  }

  *&self->_willModifyWasCalled = 0;
}

- (TSCERangeCoordinate)affectedRange
{
  rewriteType = self->_rewriteType;
  if (rewriteType > 10)
  {
    if (rewriteType <= 0x12)
    {
      if (((1 << rewriteType) & 0x72000) != 0)
      {
LABEL_14:
        v4 = MEMORY[0x277D81150];
        v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3);
        v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v18);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v20, v16, v19, 1061, 0, "Not yet implemented for this type");
LABEL_21:

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
        goto LABEL_22;
      }

      if (((1 << rewriteType) & 0xC000) != 0)
      {
        goto LABEL_20;
      }

      if (rewriteType == 12)
      {
        goto LABEL_16;
      }
    }

    if (rewriteType != 11)
    {
      goto LABEL_22;
    }

LABEL_12:
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 1029, 0, "Not implemented yet for this type");
    v4 = 0x7FFF7FFFFFFFLL;

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    a2 = 0x7FFF7FFFFFFFLL;
    goto LABEL_22;
  }

  if (rewriteType > 3)
  {
    if ((rewriteType - 7) < 4)
    {
      goto LABEL_14;
    }

    if ((rewriteType - 4) < 2)
    {
LABEL_16:
      inserted = objc_msgSend_affectedRangeForMoveRows(self->_rowColumnInfo, a2, v2, v3);
      goto LABEL_18;
    }

    if (rewriteType != 6)
    {
      goto LABEL_22;
    }

LABEL_20:
    v4 = MEMORY[0x277D81150];
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEFormulaRewriteSpec affectedRange]", v3);
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v22);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v23, v16, v19, 1050, 0, "Not implemented for this type");
    goto LABEL_21;
  }

  if (rewriteType < 2)
  {
    goto LABEL_12;
  }

  if (rewriteType == 2)
  {
    inserted = objc_msgSend_affectedRangeForRemoveRows(self->_rowColumnInfo, a2, v2, v3);
    goto LABEL_18;
  }

  if (rewriteType == 3)
  {
    inserted = objc_msgSend_affectedRangeForInsertRows(self->_rowColumnInfo, a2, v2, v3);
LABEL_18:
    v4 = inserted;
  }

LABEL_22:
  v27 = v4;
  result._bottomRight = a2;
  result._topLeft = v27;
  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)expandedRowColumnUuids
{
  rewriteType = self->_rewriteType;
  if (rewriteType <= 0xC)
  {
    v8 = 1 << rewriteType;
    if ((v8 & 0x103C) != 0)
    {
      goto LABEL_3;
    }

    if ((v8 & 3) != 0)
    {
      goto LABEL_6;
    }
  }

  v15 = MEMORY[0x277D81150];
  v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a3, "[TSCEFormulaRewriteSpec expandedRowColumnUuids]", v4);
  v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulaRewriteSpec.mm", v18);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v15, v20, v16, v19, 1078, 0, "Not implemented yet for this type");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v21, v22, v23);
LABEL_3:
  v9 = objc_msgSend_expandedRowColumnUuids(self->_rowColumnInfo, a3, v3, v4);
  if (v9)
  {
    v24 = v9;
    objc_msgSend_uuidsAsVector(v9, v10, v11, v12);
    v13 = v24;
    goto LABEL_7;
  }

LABEL_6:
  v13 = 0;
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
LABEL_7:

  return result;
}

- (TSKUIDStruct)tableUID
{
  upper = self->_tableUID._upper;
  lower = self->_tableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)fromTableUID
{
  upper = self->_fromTableUID._upper;
  lower = self->_fromTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)conditionalStyleOwnerUID
{
  upper = self->_conditionalStyleOwnerUID._upper;
  lower = self->_conditionalStyleOwnerUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (TSKUIDStruct)groupByUID
{
  upper = self->_groupByUID._upper;
  lower = self->_groupByUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 11) = 0u;
  *(self + 12) = 0u;
  *(self + 52) = 1065353216;
  *(self + 14) = 0u;
  *(self + 15) = 0u;
  *(self + 64) = 1065353216;
  *(self + 17) = 0u;
  *(self + 18) = 0u;
  *(self + 76) = 1065353216;
  return self;
}

@end