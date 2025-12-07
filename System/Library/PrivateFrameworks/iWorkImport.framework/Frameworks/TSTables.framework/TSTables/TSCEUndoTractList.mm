@interface TSCEUndoTractList
- (BOOL)hasFullTupleInformation;
- (BOOL)remapUsingColumnUidMap:(const void *)map rowUidMap:(const void *)uidMap clearIfMissing:(BOOL)missing;
- (BOOL)remapUsingUidMap:(const void *)map;
- (TSCEUndoTractList)initWithArchive:(const void *)archive;
- (TSKUIDStruct)aggregateRuleUid;
- (TSKUIDStruct)columnHeaderUid;
- (TSKUIDStruct)rowHeaderUid;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)firstTractWithPurpose:(unsigned __int8)purpose;
- (id)initAsFullTupleForColumnHeaderUid:(TSKUIDStruct)uid rowHeaderUid:(TSKUIDStruct)headerUid aggregateRuleUid:(TSKUIDStruct)ruleUid flatteningDimension:(int)dimension;
- (id)uidTractAtIndex:(unsigned __int8)index;
- (int)flatteningDimension;
- (void)addRowColumnRuleValuePair:(TSKUIDStruct)pair valueUid:(TSKUIDStruct)uid;
- (void)addToExcludedTractUids:(const void *)uids isRows:(BOOL)rows;
- (void)addToExcludedUidsTractColumnUids:(const void *)uids;
- (void)addToExcludedUidsTractRowUids:(const void *)uids;
- (void)addToIncludedUidsTractColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid;
- (void)addToIncludedUidsTractColumnUids:(const void *)uids rowUids:(const void *)rowUids;
- (void)addToIncludedUidsTractColumnUids:(const void *)uids rowUids:(const void *)rowUids isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range;
- (void)addTractAtFront:(id)front;
- (void)appendUidTract:(id)tract;
- (void)dropTract:(id)tract;
- (void)enumerateRowColumnRuleValuePairsUsingBlock:(id)block;
- (void)pruneMergeUidTractsAtAndAboveIndex:(unsigned __int8)index;
- (void)removeFromExcludedUidsTractColumnUids:(const void *)uids;
- (void)removeFromExcludedUidsTractColumnUidsSet:(const void *)set;
- (void)removeFromExcludedUidsTractRowUids:(const void *)uids;
- (void)removeFromExcludedUidsTractRowUidsSet:(const void *)set;
- (void)saveToArchive:(void *)archive;
@end

@implementation TSCEUndoTractList

- (TSCEUndoTractList)initWithArchive:(const void *)archive
{
  v27.receiver = self;
  v27.super_class = TSCEUndoTractList;
  v4 = [(TSCEUndoTractList *)&v27 init];
  v5 = v4;
  if (v4)
  {
    v6 = *(archive + 8);
    if (v6)
    {
      if (v6 >= 1)
      {
        v7 = 8;
        do
        {
          v8 = [TSCEUndoTract alloc];
          v11 = objc_msgSend_initWithArchive_(v8, v9, *(*(archive + 5) + v7), v10);
          if (objc_msgSend_purpose(v11, v12, v13, v14) != 6)
          {
            objc_msgSend_appendUidTract_(v5, v15, v11, v16);
          }

          v7 += 8;
          --v6;
        }

        while (v6);
      }

      v17 = *(archive + 6);
      if (!v17)
      {
        v17 = TSCE::_ASTNodeArrayArchive_ASTStickyBits_default_instance_;
      }

      v18 = v17[25];
      v19 = v17[24];
      v20 = v17[27];
      v21 = v17[26];
      if (v19)
      {
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      v23 = v22 | v18;
      if (v20)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      if (v21)
      {
        v25 = 8;
      }

      else
      {
        v25 = 0;
      }

      v5->_preserveFlags._flags = v23 | v24 | v25;
    }

    else
    {

      return 0;
    }
  }

  return v5;
}

- (void)saveToArchive:(void *)archive
{
  v31 = *MEMORY[0x277D85DE8];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_tracts;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v30, 16);
  if (v10)
  {
    v11 = *v27;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        if (objc_msgSend_purpose(v13, v7, v8, v9, v26) != 6)
        {
          v14 = *(archive + 5);
          if (!v14)
          {
            goto LABEL_12;
          }

          v15 = *(archive + 8);
          v16 = *v14;
          if (v15 < *v14)
          {
            *(archive + 8) = v15 + 1;
            objc_msgSend_saveToArchive_(v13, v7, *&v14[2 * v15 + 2], v9);
            continue;
          }

          if (v16 == *(archive + 9))
          {
LABEL_12:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((archive + 24));
            v14 = *(archive + 5);
            v16 = *v14;
          }

          *v14 = v16 + 1;
          v17 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTract>(*(archive + 3));
          v18 = *(archive + 8);
          v19 = *(archive + 5) + 8 * v18;
          *(archive + 8) = v18 + 1;
          *(v19 + 8) = v17;
          objc_msgSend_saveToArchive_(v13, v20, v17, v21);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v26, v30, 16);
    }

    while (v10);
  }

  *(archive + 4) |= 1u;
  v22 = *(archive + 6);
  if (!v22)
  {
    v23 = *(archive + 1);
    if (v23)
    {
      v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
    }

    v22 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v23);
    *(archive + 6) = v22;
  }

  flags = self->_preserveFlags._flags;
  v25 = *(v22 + 16);
  *(v22 + 25) = flags & 1;
  *(v22 + 24) = (flags & 2) != 0;
  *(v22 + 27) = (flags & 4) != 0;
  *(v22 + 16) = v25 | 0xF;
  *(v22 + 26) = (flags & 8) != 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_tracts;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v5);
        }

        v13 = objc_msgSend_copy(*(*(&v19 + 1) + 8 * v12), v7, v8, v9, v19);
        objc_msgSend_appendUidTract_(v4, v14, v13, v15);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v7, &v19, v23, 16);
    }

    while (v10);
  }

  objc_msgSend_setPreserveFlags_(v4, v16, self->_preserveFlags._flags, v17);
  return v4;
}

- (void)addToIncludedUidsTractColumnUid:(TSKUIDStruct)uid rowUid:(TSKUIDStruct)rowUid
{
  uidCopy = uid;
  rowUidCopy = rowUid;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  __p = 0;
  v7 = 0;
  v8 = 0;
  sub_221083454(&v9, &uidCopy);
  sub_221083454(&__p, &rowUidCopy);
  objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_(self, v5, &v9, &__p);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }
}

- (void)addToIncludedUidsTractColumnUids:(const void *)uids rowUids:(const void *)rowUids isRangeRef:(BOOL)ref preserveRectangularRange:(BOOL)range
{
  rangeCopy = range;
  refCopy = ref;
  v11 = *uids;
  v12 = *(uids + 1);
  v13 = *rowUids;
  v14 = *(rowUids + 1);
  v15 = *uids == v12 && &v14[-*rowUids] == 16;
  if (v15 && !*v13 && !*(v13 + 1))
  {
    goto LABEL_16;
  }

  if (v12 - v11 == 16 && v13 == v14)
  {
    if (*v11 || (v14 = *rowUids, *(v11 + 1)))
    {
      v17 = 0;
      v14 = *rowUids;
      goto LABEL_17;
    }

LABEL_16:
    v17 = 1;
    goto LABEL_17;
  }

  v17 = 0;
LABEL_17:
  if (v14 - v13 != 16 || *v13 || *(v13 + 1))
  {
    if (v17)
    {
      return;
    }
  }

  else
  {
    v58 = v12 - v11 == 16 && !*v11 && *(v11 + 1) == 0;
    if ((v17 | v58))
    {
      return;
    }
  }

  if (v11 != v12 || v14 != v13)
  {
    v18 = objc_msgSend_includedUidsTract(self, a2, uids, rowUids);
    if (v18)
    {
      v22 = v18;
      v23 = objc_msgSend_columnUids(v18, v19, v20, v21);
      __p[0] = 0;
      __p[1] = 0;
      v121 = 0;
      sub_221086EBC(__p, *v23, *(v23 + 8), (*(v23 + 8) - *v23) >> 4);
      v27 = objc_msgSend_rowUids(v22, v24, v25, v26);
      v118[0] = 0;
      v118[1] = 0;
      v119 = 0;
      sub_221086EBC(v118, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 4);
      v31 = *uids;
      v30 = *(uids + 1);
      if (&v30[-*uids] != 16 || *v31 || *(v31 + 1))
      {
        if (v31 != v30)
        {
          if (__p[1] != __p[0] && !*__p[0] && !*(__p[0] + 1))
          {
            v32 = MEMORY[0x277D81150];
            v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v29);
            v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v35);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v32, v37, v33, v36, 432, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
          }

          v41 = [TSCEMutableUIDSet alloc];
          v44 = objc_msgSend_initWithUUIDVector_(v41, v42, __p, v43);
          objc_msgSend_addUuidsFromVector_(v44, v45, uids, v46);
          if (v44)
          {
            objc_msgSend_uuidsAsVector(v44, v47, v48, v49);
          }

          else
          {
            v116 = 0uLL;
            v117 = 0;
          }

          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          *__p = v116;
          v121 = v117;
        }
      }

      else
      {
        if (__p[0] != __p[1] && ((__p[1] - __p[0]) != 16 || *__p[0] || *(__p[0] + 1)))
        {
          v98 = MEMORY[0x277D81150];
          v99 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v29);
          v102 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v100, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v101);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v98, v103, v99, v102, 428, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v104, v105, v106);
        }

        if (__p != uids)
        {
          sub_2210BD068(__p, *uids, *(uids + 1), (*(uids + 1) - *uids) >> 4);
        }
      }

      v60 = *rowUids;
      v59 = *(rowUids + 1);
      if (&v59[-*rowUids] != 16 || *v60 || *(v60 + 1))
      {
        if (v60 != v59)
        {
          if (v118[1] != v118[0] && !*v118[0] && !*(v118[0] + 1))
          {
            v61 = MEMORY[0x277D81150];
            v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v29);
            v65 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v63, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v64);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v61, v66, v62, v65, 445, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v67, v68, v69);
          }

          v70 = [TSCEMutableUIDSet alloc];
          v73 = objc_msgSend_initWithUUIDVector_(v70, v71, v118, v72);
          objc_msgSend_addUuidsFromVector_(v73, v74, rowUids, v75);
          if (v73)
          {
            objc_msgSend_uuidsAsVector(v73, v76, v77, v78);
          }

          else
          {
            v116 = 0uLL;
            v117 = 0;
          }

          if (v118[0])
          {
            v118[1] = v118[0];
            operator delete(v118[0]);
          }

          *v118 = v116;
          v119 = v117;
        }
      }

      else
      {
        if (v118[0] != v118[1] && ((v118[1] - v118[0]) != 16 || *v118[0] || *(v118[0] + 1)))
        {
          v107 = MEMORY[0x277D81150];
          v108 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "[TSCEUndoTractList addToIncludedUidsTractColumnUids:rowUids:isRangeRef:preserveRectangularRange:]", v29, v116, v117);
          v111 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v109, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v110);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v107, v112, v108, v111, 441, 0, "Combining a spanning and non-spanning TSKUIDStructVector vector");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v113, v114, v115);
        }

        if (v118 != rowUids)
        {
          sub_2210BD068(v118, *rowUids, *(rowUids + 1), (*(rowUids + 1) - *rowUids) >> 4);
        }
      }

      v79 = [TSCEUndoTract alloc];
      v84 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v79, v80, __p, v118, 0);
      if (refCopy)
      {
        objc_msgSend_setIsRangeRef_(v84, v81, 1, v83, v116, v117);
      }

      else
      {
        isRangeRef = objc_msgSend_isRangeRef(v22, v81, v82, v83);
        objc_msgSend_setIsRangeRef_(v84, v89, isRangeRef, v90, v116, v117);
      }

      if (rangeCopy)
      {
        v91 = objc_msgSend_preserveRectangularRange(v22, v85, v86, v87);
        objc_msgSend_setPreserveRectangularRange_(v84, v92, v91, v93);
      }

      else
      {
        objc_msgSend_setPreserveRectangularRange_(v84, v85, 0, v87);
      }

      objc_msgSend_dropTract_(self, v94, v22, v95);
      objc_msgSend_addTractAtFront_(self, v96, v84, v97);

      if (v118[0])
      {
        v118[1] = v118[0];
        operator delete(v118[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v50 = [TSCEUndoTract alloc];
      v22 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v50, v51, uids, rowUids, 0);
      objc_msgSend_setIsRangeRef_(v22, v52, refCopy, v53);
      objc_msgSend_setPreserveRectangularRange_(v22, v54, rangeCopy, v55);
      objc_msgSend_addTractAtFront_(self, v56, v22, v57);
    }
  }
}

- (void)addToIncludedUidsTractColumnUids:(const void *)uids rowUids:(const void *)rowUids
{
  if (*(uids + 1) - *uids > 0x10uLL || *(rowUids + 1) - *rowUids > 0x10uLL)
  {
    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(self, a2, uids, rowUids, 1, 1);
  }

  else
  {
    objc_msgSend_addToIncludedUidsTractColumnUids_rowUids_isRangeRef_preserveRectangularRange_(self, a2, uids, rowUids, 0, 1);
  }
}

- (void)addToExcludedUidsTractColumnUids:(const void *)uids
{
  if (*(uids + 1) != *uids)
  {
    v6 = objc_msgSend_excludedUidsTract(self, a2, uids, v3);
    v10 = v6;
    if (v6)
    {
      v11 = objc_msgSend_columnUids(v6, v7, v8, v9);
      __p[0] = 0;
      __p[1] = 0;
      v46 = 0;
      sub_221086EBC(__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 4);
      v15 = objc_msgSend_rowUids(v10, v12, v13, v14);
      v42 = 0;
      v43 = 0;
      v44 = 0;
      sub_221086EBC(&v42, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 4);
      v16 = [TSCEMutableUIDSet alloc];
      v19 = objc_msgSend_initWithUUIDVector_(v16, v17, __p, v18);
      objc_msgSend_addUuidsFromVector_(v19, v20, uids, v21);
      if (v19)
      {
        objc_msgSend_uuidsAsVector(v19, v22, v23, v24);
      }

      else
      {
        v40 = 0uLL;
        v41 = 0;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v40;
      v46 = v41;
      v31 = [TSCEUndoTract alloc];
      v33 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v31, v32, __p, &v42, 3);
      objc_msgSend_setIsRangeRef_(v33, v34, 1, v35);
      objc_msgSend_dropTract_(self, v36, v10, v37);
      objc_msgSend_addTractAtFront_(self, v38, v33, v39);

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v25 = [TSCEUndoTract alloc];
      __p[0] = 0;
      __p[1] = 0;
      v46 = 0;
      v10 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v25, v26, uids, __p, 3);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      objc_msgSend_setIsRangeRef_(v10, v27, 1, v28);
      objc_msgSend_addTractAtFront_(self, v29, v10, v30);
    }
  }
}

- (void)addToExcludedUidsTractRowUids:(const void *)uids
{
  if (*(uids + 1) != *uids)
  {
    v6 = objc_msgSend_excludedUidsTract(self, a2, uids, v3);
    v10 = v6;
    if (v6)
    {
      v11 = objc_msgSend_columnUids(v6, v7, v8, v9);
      __p = 0;
      v45 = 0;
      v46 = 0;
      sub_221086EBC(&__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 4);
      v15 = objc_msgSend_rowUids(v10, v12, v13, v14);
      v42[0] = 0;
      v42[1] = 0;
      v43 = 0;
      sub_221086EBC(v42, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 4);
      v16 = [TSCEMutableUIDSet alloc];
      v19 = objc_msgSend_initWithUUIDVector_(v16, v17, v42, v18);
      objc_msgSend_addUuidsFromVector_(v19, v20, uids, v21);
      if (v19)
      {
        objc_msgSend_uuidsAsVector(v19, v22, v23, v24);
      }

      else
      {
        v40 = 0uLL;
        v41 = 0;
      }

      if (v42[0])
      {
        v42[1] = v42[0];
        operator delete(v42[0]);
      }

      *v42 = v40;
      v43 = v41;
      v31 = [TSCEUndoTract alloc];
      v33 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v31, v32, &__p, v42, 3);
      objc_msgSend_setIsRangeRef_(v33, v34, 1, v35);
      objc_msgSend_dropTract_(self, v36, v10, v37);
      objc_msgSend_addTractAtFront_(self, v38, v33, v39);

      if (v42[0])
      {
        v42[1] = v42[0];
        operator delete(v42[0]);
      }

      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v25 = [TSCEUndoTract alloc];
      __p = 0;
      v45 = 0;
      v46 = 0;
      v10 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v25, v26, &__p, uids, 3);
      if (__p)
      {
        v45 = __p;
        operator delete(__p);
      }

      objc_msgSend_setIsRangeRef_(v10, v27, 1, v28);
      objc_msgSend_addTractAtFront_(self, v29, v10, v30);
    }
  }
}

- (void)addToExcludedTractUids:(const void *)uids isRows:(BOOL)rows
{
  if (*(uids + 1) != *uids)
  {
    rowsCopy = rows;
    v7 = [TSCEMutableUIDSet alloc];
    v10 = objc_msgSend_initWithUUIDVector_(v7, v8, uids, v9);
    v14 = objc_msgSend_includedUidsTract(self, v11, v12, v13);
    v18 = v14;
    if (v14)
    {
      if (rowsCopy)
      {
        v19 = objc_msgSend_rowUids(v14, v15, v16, v17);
      }

      else
      {
        v19 = objc_msgSend_columnUids(v14, v15, v16, v17);
      }

      objc_msgSend_removeUuidsFromVector_(v10, v20, v19, v21);
    }

    v22 = objc_msgSend_excludedUidsTract(self, v15, v16, v17);
    v26 = v22;
    if (v22)
    {
      v27 = objc_msgSend_columnUids(v22, v23, v24, v25);
      __p[0] = 0;
      __p[1] = 0;
      v61 = 0;
      sub_221086EBC(__p, *v27, *(v27 + 8), (*(v27 + 8) - *v27) >> 4);
      v31 = objc_msgSend_rowUids(v26, v28, v29, v30);
      v58[0] = 0;
      v58[1] = 0;
      v59 = 0;
      sub_221086EBC(v58, *v31, *(v31 + 8), (*(v31 + 8) - *v31) >> 4);
      if (rowsCopy)
      {
        objc_msgSend_addUuidsFromVector_(v10, v32, v58, v33);
        if (v10)
        {
          objc_msgSend_uuidsAsVector(v10, v34, v35, v36);
        }

        else
        {
          v56 = 0uLL;
          v57 = 0;
        }

        if (v58[0])
        {
          v58[1] = v58[0];
          operator delete(v58[0]);
        }

        *v58 = v56;
        v59 = v57;
      }

      else
      {
        objc_msgSend_addUuidsFromVector_(v10, v32, __p, v33);
        if (v10)
        {
          objc_msgSend_uuidsAsVector(v10, v42, v43, v44);
        }

        else
        {
          v56 = 0uLL;
          v57 = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *__p = v56;
        v61 = v57;
      }

      v47 = [TSCEUndoTract alloc];
      v49 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v47, v48, __p, v58, 3);
      objc_msgSend_setIsRangeRef_(v49, v50, 1, v51);
      objc_msgSend_dropTract_(self, v52, v26, v53);
      objc_msgSend_addTractAtFront_(self, v54, v49, v55);

      if (v58[0])
      {
        v58[1] = v58[0];
        operator delete(v58[0]);
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      v37 = [TSCEUndoTract alloc];
      __p[0] = 0;
      __p[1] = 0;
      v61 = 0;
      if (rowsCopy)
      {
        v39 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v37, v38, __p, uids, 3);
      }

      else
      {
        v39 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v37, v38, uids, __p, 3);
      }

      v26 = v39;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      objc_msgSend_setIsRangeRef_(v26, v40, 1, v41);
      objc_msgSend_addTractAtFront_(self, v45, v26, v46);
    }
  }
}

- (void)removeFromExcludedUidsTractColumnUidsSet:(const void *)set
{
  v6 = objc_msgSend_excludedUidsTract(self, a2, set, v3);
  v10 = v6;
  if (v6 && *(set + 3))
  {
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v11 = objc_msgSend_rowUids(v6, v7, v8, v9);
    __p = 0;
    v28 = 0;
    v29 = 0;
    sub_221086EBC(&__p, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 4);
    v15 = objc_msgSend_columnUids(v10, v12, v13, v14);
    v18 = *v15;
    v19 = *(v15 + 8);
    if (*v15 != v19)
    {
      do
      {
        if (!sub_221119F90(set, v18))
        {
          sub_221083454(&v30, v18);
        }

        ++v18;
      }

      while (v18 != v19);
      if (v31 != v30)
      {
        goto LABEL_9;
      }
    }

    if (v28 == __p)
    {
      v22 = 0;
    }

    else
    {
LABEL_9:
      v20 = [TSCEUndoTract alloc];
      v22 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v20, v21, &v30, &__p, 3);
      objc_msgSend_setIsRangeRef_(v22, v23, 1, v24);
    }

    objc_msgSend_dropTract_(self, v16, v10, v17);
    objc_msgSend_addTractAtFront_(self, v25, v22, v26);

    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }
}

- (void)removeFromExcludedUidsTractRowUidsSet:(const void *)set
{
  v6 = objc_msgSend_excludedUidsTract(self, a2, set, v3);
  v10 = v6;
  if (v6 && *(set + 3))
  {
    v11 = objc_msgSend_columnUids(v6, v7, v8, v9);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_221086EBC(&v30, *v11, *(v11 + 8), (*(v11 + 8) - *v11) >> 4);
    __p = 0;
    v28 = 0;
    v29 = 0;
    v15 = objc_msgSend_rowUids(v10, v12, v13, v14);
    v18 = *v15;
    v19 = *(v15 + 8);
    while (v18 != v19)
    {
      if (!sub_221119F90(set, v18))
      {
        sub_221083454(&__p, v18);
      }

      ++v18;
    }

    if (v31 == v30 && v28 == __p)
    {
      v22 = 0;
    }

    else
    {
      v20 = [TSCEUndoTract alloc];
      v22 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v20, v21, &v30, &__p, 3);
      objc_msgSend_setIsRangeRef_(v22, v23, 1, v24);
    }

    objc_msgSend_dropTract_(self, v16, v10, v17);
    objc_msgSend_addTractAtFront_(self, v25, v22, v26);

    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }
  }
}

- (void)removeFromExcludedUidsTractColumnUids:(const void *)uids
{
  v6 = objc_msgSend_excludedUidsTract(self, a2, uids, v3);
  if (v6)
  {
    uidsCopy = uids;
    v7 = *uids;
    v8 = uidsCopy[1];
    if (v8 != v7)
    {
      memset(v12, 0, sizeof(v12));
      v13 = 1065353216;
      do
      {
        sub_2210C2B00(v12, v7, v7);
        v7 += 2;
      }

      while (v7 != v8);
      objc_msgSend_removeFromExcludedUidsTractColumnUidsSet_(self, v10, v12, v11);
      sub_2210BDEC0(v12);
    }
  }
}

- (void)removeFromExcludedUidsTractRowUids:(const void *)uids
{
  v6 = objc_msgSend_excludedUidsTract(self, a2, uids, v3);
  if (v6)
  {
    uidsCopy = uids;
    v7 = *uids;
    v8 = uidsCopy[1];
    if (v8 != v7)
    {
      memset(v12, 0, sizeof(v12));
      v13 = 1065353216;
      do
      {
        sub_2210C2B00(v12, v7, v7);
        v7 += 2;
      }

      while (v7 != v8);
      objc_msgSend_removeFromExcludedUidsTractRowUidsSet_(self, v10, v12, v11);
      sub_2210BDEC0(v12);
    }
  }
}

- (void)addTractAtFront:(id)front
{
  frontCopy = front;
  if (frontCopy)
  {
    tracts = self->_tracts;
    if (tracts)
    {
      objc_msgSend_insertObject_atIndex_(tracts, frontCopy, frontCopy, 0);
    }

    else
    {
      objc_msgSend_appendUidTract_(self, frontCopy, frontCopy, v4);
    }
  }
}

- (id)firstTractWithPurpose:(unsigned __int8)purpose
{
  purposeCopy = purpose;
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tracts;
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
        if (objc_msgSend_purpose(v12, v6, v7, v8, v15) == purposeCopy)
        {
          v13 = v12;
          goto LABEL_11;
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
LABEL_11:

  return v13;
}

- (void)dropTract:(id)tract
{
  tractCopy = tract;
  if (tractCopy)
  {
    objc_msgSend_removeObjectIdenticalTo_(self->_tracts, v4, tractCopy, v5);
  }
}

- (void)appendUidTract:(id)tract
{
  tractCopy = tract;
  if (tractCopy)
  {
    tracts = self->_tracts;
    if (!tracts)
    {
      v7 = objc_opt_new();
      v8 = self->_tracts;
      self->_tracts = v7;

      tracts = self->_tracts;
    }

    objc_msgSend_addObject_(tracts, v4, tractCopy, v5);
  }
}

- (id)uidTractAtIndex:(unsigned __int8)index
{
  indexCopy = index;
  if (objc_msgSend_tractCount(self, a2, index, v3) <= index)
  {
    v8 = 0;
  }

  else
  {
    v8 = objc_msgSend_objectAtIndex_(self->_tracts, v6, indexCopy, v7);
  }

  return v8;
}

- (void)pruneMergeUidTractsAtAndAboveIndex:(unsigned __int8)index
{
  indexCopy = index;
  if (objc_msgSend_tractCount(self, a2, index, v3) > index)
  {
    while (objc_msgSend_tractCount(self, v6, v7, v8) > indexCopy)
    {
      v12 = objc_msgSend_lastObject(self->_tracts, v9, v10, v11);
      if (objc_msgSend_purpose(v12, v13, v14, v15) != 1)
      {

        break;
      }

      objc_msgSend_removeLastObject(self->_tracts, v16, v17, v18);
    }

    v19 = objc_msgSend_tractCount(self, v9, v10, v11);
    if (v19 > indexCopy)
    {
      v22 = indexCopy;
      v23 = v19;
      do
      {
        v24 = objc_msgSend_objectAtIndex_(self->_tracts, v20, --v23, v21);
        if (objc_msgSend_purpose(v24, v25, v26, v27) == 1)
        {
          objc_msgSend_removeObjectAtIndex_(self->_tracts, v28, v23, v29);
        }
      }

      while (v23 > v22);
    }
  }
}

- (id)description
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v7 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@> sticky:%d Tracts: ", v6, v4, self->_preserveFlags._flags);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_tracts;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_appendFormat_(v7, v10, @"\n  %@", v11, *(*(&v16 + 1) + 8 * i));
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v10, &v16, v20, 16);
    }

    while (v12);
  }

  return v7;
}

- (BOOL)remapUsingUidMap:(const void *)map
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_tracts;
  v6 = 0;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v15, v19, 16);
  if (v10)
  {
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v4);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_purpose(v13, v7, v8, v9, v15) != 2)
        {
          v6 |= objc_msgSend_remapUsingUidMap_(v13, v7, map, v9);
        }
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v15, v19, 16);
    }

    while (v10);
  }

  return v6 & 1;
}

- (BOOL)remapUsingColumnUidMap:(const void *)map rowUidMap:(const void *)uidMap clearIfMissing:(BOOL)missing
{
  missingCopy = missing;
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_tracts;
  v10 = 0;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v12)
  {
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v10 |= objc_msgSend_remapUsingColumnUidMap_rowUidMap_clearIfMissing_(*(*(&v16 + 1) + 8 * v14++), v11, map, uidMap, missingCopy, v16);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  return v10 & 1;
}

- (id)initAsFullTupleForColumnHeaderUid:(TSKUIDStruct)uid rowHeaderUid:(TSKUIDStruct)headerUid aggregateRuleUid:(TSKUIDStruct)ruleUid flatteningDimension:(int)dimension
{
  upper = ruleUid._upper;
  lower = ruleUid._lower;
  v8 = headerUid._upper;
  v9 = headerUid._lower;
  v10 = uid._upper;
  v11 = uid._lower;
  ruleUidCopy = ruleUid;
  v43.receiver = self;
  v43.super_class = TSCEUndoTractList;
  v14 = [(TSCEUndoTractList *)&v43 init];
  if (v14)
  {
    if (v11 || v10 || v9 || v8)
    {
      v15 = [TSCEUndoTract alloc];
      v17 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v15, v16, v11, v10, v9, v8, 7);
      objc_msgSend_appendUidTract_(v14, v18, v17, v19);
    }

    if (lower | upper)
    {
      v40 = 0;
      v41 = 0;
      v42 = 0;
      __p = 0;
      v38 = 0;
      v39 = 0;
      sub_221083454(&v40, &ruleUidCopy);
      v20 = [TSCEUndoTract alloc];
      v22 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v20, v21, &v40, &__p, 8);
      objc_msgSend_appendUidTract_(v14, v23, v22, v24);

      if (__p)
      {
        v38 = __p;
        operator delete(__p);
      }

      if (v40)
      {
        v41 = v40;
        operator delete(v40);
      }
    }

    if ((dimension + 1) >= 3)
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSCEUndoTractList(FullTuple) initAsFullTupleForColumnHeaderUid:rowHeaderUid:aggregateRuleUid:flatteningDimension:]", v13);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEUndoTractList.mm", v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 788, 0, "Not a valid TSTTableDimension value: %d", dimension);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
      objc_msgSend_setPreserveFlags_(v14, v34, 0, v35);
    }

    else
    {
      objc_msgSend_setPreserveFlags_(v14, v12, qword_2217E1D88[dimension + 1], v13);
    }
  }

  return v14;
}

- (void)addRowColumnRuleValuePair:(TSKUIDStruct)pair valueUid:(TSKUIDStruct)uid
{
  upper = uid._upper;
  lower = uid._lower;
  v6 = pair._upper;
  v7 = pair._lower;
  v9 = objc_msgSend_firstTractWithPurpose_(self, a2, 9, pair._upper);
  if (v9)
  {
    v15 = v9;
    objc_msgSend_appendColumnUid_rowUid_(v9, v10, v7, v6, lower, upper);
  }

  else
  {
    v11 = [TSCEUndoTract alloc];
    v15 = objc_msgSend_initWithColumnUid_rowUid_purpose_(v11, v12, v7, v6, lower, upper, 9);
    objc_msgSend_appendUidTract_(self, v13, v15, v14);
  }
}

- (BOOL)hasFullTupleInformation
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_tracts;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_purpose(*(*(&v11 + 1) + 8 * i), v4, v5, v6, v11) - 7 < 3)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (TSKUIDStruct)columnHeaderUid
{
  v3 = objc_msgSend_firstTractWithPurpose_(self, a2, 7, v2);
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_columnUids(v3, v4, v5, v6);
    v10 = **v8;
    v9 = (*v8)[1];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  v12 = v9;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSKUIDStruct)rowHeaderUid
{
  v3 = objc_msgSend_firstTractWithPurpose_(self, a2, 7, v2);
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_rowUids(v3, v4, v5, v6);
    v10 = **v8;
    v9 = (*v8)[1];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  v12 = v9;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (TSKUIDStruct)aggregateRuleUid
{
  v3 = objc_msgSend_firstTractWithPurpose_(self, a2, 8, v2);
  v7 = v3;
  if (v3)
  {
    v8 = objc_msgSend_columnUids(v3, v4, v5, v6);
    v10 = **v8;
    v9 = (*v8)[1];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  v11 = v10;
  v12 = v9;
  result._upper = v12;
  result._lower = v11;
  return result;
}

- (int)flatteningDimension
{
  if (self->_preserveFlags._flags)
  {
    v2 = 1;
  }

  else
  {
    v2 = -1;
  }

  if ((self->_preserveFlags._flags & 2) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)enumerateRowColumnRuleValuePairsUsingBlock:(id)block
{
  blockCopy = block;
  v7 = objc_msgSend_firstTractWithPurpose_(self, v5, 9, v6);
  v11 = v7;
  if (v7)
  {
    v12 = *objc_msgSend_rowUids(v7, v8, v9, v10);
    v23 = 0;
    v16 = objc_msgSend_columnUids(v11, v13, v14, v15);
    v17 = *v16;
    v18 = v16[1];
    if (*v16 != v18)
    {
      do
      {
        (*(blockCopy + 2))(blockCopy, *v17, v17[1], *v12, v12[1], &v23);
        if (v23)
        {
          break;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v12 != *(objc_msgSend_rowUids(v11, v19, v20, v21) + 8) && v17 != v18);
    }
  }
}

@end