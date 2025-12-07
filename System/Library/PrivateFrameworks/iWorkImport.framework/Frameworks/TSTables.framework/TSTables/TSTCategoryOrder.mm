@interface TSTCategoryOrder
- (BOOL)hasValidInfo;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenRowUids:(SEL)uids selectedLevels:(const void *)levels;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsWithLabels;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowOrder;
- (TSKUIDStructVectorTemplate<TSKUIDStruct>)setRowOrderUsingViewOrder;
- (TSTCategoryOrder)initWithContext:(id)context;
- (TSTCategoryOrder)initWithContext:(id)context tableInfo:(id)info rowUids:(const void *)uids;
- (TSTCategoryOrder)initWithTableInfo:(id)info;
- (TSTCategoryOrder)initWithTableInfo:(id)info rowUids:(const void *)uids;
- (TSTTableInfo)tableInfo;
- (id)copyWithContext:(id)context tableInfo:(id)info;
- (id)sortedArrayFromArray:(id)array;
- (id)targetGroupFromRowIndex:(unsigned int)index minSourceLevel:(unsigned __int8)level templateRowUID:(TSKUIDStruct *)d;
- (unsigned)minimumCategoryLevelInRowRange:(_NSRange)range;
- (void)insertRowUids:(const void *)uids beforeUid:(const TSKUIDStruct *)uid;
- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver;
- (void)loadFromUnarchiver:(id)unarchiver;
- (void)removeRowUids:(const void *)uids;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
- (void)saveToArchiver:(id)archiver;
- (void)setRowOrder:(const void *)order;
- (void)setTemporaryRowOrder:(const void *)order;
@end

@implementation TSTCategoryOrder

- (TSTCategoryOrder)initWithContext:(id)context tableInfo:(id)info rowUids:(const void *)uids
{
  contextCopy = context;
  infoCopy = info;
  v20.receiver = self;
  v20.super_class = TSTCategoryOrder;
  v10 = [(TSTCategoryOrder *)&v20 initWithContext:contextCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_tableInfo, infoCopy);
    if (infoCopy)
    {
      v12 = [TSTColumnRowUIDMap alloc];
      __p = 0;
      v18 = 0;
      v19 = 0;
      v14 = objc_msgSend_initWithContext_columnUIDs_rowUIDs_(v12, v13, contextCopy, &__p, uids);
      uidMap = v11->_uidMap;
      v11->_uidMap = v14;

      if (__p)
      {
        v18 = __p;
        operator delete(__p);
      }
    }

    v11->_isRowOrderTemporary = 0;
  }

  return v11;
}

- (TSTCategoryOrder)initWithTableInfo:(id)info rowUids:(const void *)uids
{
  infoCopy = info;
  v10 = objc_msgSend_context(infoCopy, v7, v8, v9);
  v12 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, v11, v10, infoCopy, uids);

  return v12;
}

- (TSTCategoryOrder)initWithTableInfo:(id)info
{
  infoCopy = info;
  v8 = objc_msgSend_context(infoCopy, v5, v6, v7);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v10 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, v9, v8, infoCopy, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  return v10;
}

- (TSTCategoryOrder)initWithContext:(id)context
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  v3 = objc_msgSend_initWithContext_tableInfo_rowUids_(self, a2, context, 0, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }

  return v3;
}

- (id)copyWithContext:(id)context tableInfo:(id)info
{
  contextCopy = context;
  infoCopy = info;
  v8 = [TSTCategoryOrder alloc];
  v11 = objc_msgSend_initWithContext_(v8, v9, contextCopy, v10);
  objc_storeWeak((v11 + 72), infoCopy);
  v14 = objc_msgSend_copyWithContext_(self->_uidMap, v12, contextCopy, v13);
  v15 = *(v11 + 80);
  *(v11 + 80) = v14;

  return v11;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsFromUids:(SEL)uids
{
  v6 = *(a4 + 1);
  v7 = *a4;
  v8 = (v6 - *a4) >> 4;
  if (v8 > 1)
  {
    result = objc_msgSend_orderedRowUidsWithLabels(self, v7, v6, v8);
    v10 = *(a4 + 1);
    if (v10 != *a4)
    {
      sub_221280A48(v16, *a4, v10);
      begin = retstr->__begin_;
      end = retstr->__end_;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3321888768;
      v14[2] = sub_22149A160;
      v14[3] = &unk_2834A7D88;
      sub_2213FB8DC(v15, v16);
      v13 = sub_2213F9E8C(begin, end, v14);
      if (v13 != retstr->__end_)
      {
        retstr->__end_ = v13;
      }

      sub_2210BDEC0(v15);
      return sub_2210BDEC0(v16);
    }
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;

    return sub_221086EBC(retstr, v7, v6, v8);
  }

  return result;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)orderedRowUidsWithLabels
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = objc_msgSend_baseTableModel(WeakRetained, v6, v7, v8);
  v13 = objc_msgSend_columnRowUIDMap(v9, v10, v11, v12);

  v14 = objc_loadWeakRetained(&self->_tableInfo);
  v18 = objc_msgSend_groupBy(v14, v15, v16, v17);

  sub_22149BD7C(v60, v18);
  v22 = objc_msgSend_labelRowUIDSet(v18, v19, v20, v21);
  v23 = objc_opt_new();
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = sub_22149A510;
  v58[3] = &unk_27845D900;
  v24 = v23;
  v59 = v24;
  objc_msgSend_foreachUuid_(v22, v25, v58, v26);
  sub_22149CC78(v60, v24);
  sub_22149A558(v60, self->_uidMap, v13, !self->_isRowOrderTemporary);
  v27 = objc_loadWeakRetained(&self->_tableInfo);
  v31 = objc_msgSend_baseTableModel(v27, v28, v29, v30);
  __p[0] = objc_msgSend_headerRowRange(v31, v32, v33, v34);
  __p[1] = v35;
  v36 = TSUCellRect::rows(__p);
  if (v13)
  {
    objc_msgSend_rowUIDsForRowRange_(v13, v37, v36, v37);
  }

  else
  {
    retstr->__begin_ = 0;
    retstr->__end_ = 0;
    retstr->__cap_ = 0;
  }

  v41 = objc_msgSend_numberOfLevels(v63, v38, v39, v40);
  sub_22149C6EC(v60, &retstr->__begin_, 0, 0, 0, 1, (v41 + 1), 1, 0);
  v42 = objc_loadWeakRetained(&self->_tableInfo);
  v46 = objc_msgSend_baseTableModel(v42, v43, v44, v45);
  v55.origin = objc_msgSend_footerRowRange(v46, v47, v48, v49);
  v55.size = v50;
  v51 = TSUCellRect::rows(&v55);
  if (v13)
  {
    objc_msgSend_rowUIDsForRowRange_(v13, v52, v51, v52);
    v53 = *__p;
  }

  else
  {
    v57 = 0;
    v53 = 0uLL;
    *__p = 0u;
  }

  sub_2210F0C88(retstr, retstr->__end_, v53, *(&v53 + 1), (*(&v53 + 1) - v53) >> 4);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v60[0] = &unk_2834A7E10;
  sub_2210BDEC0(&v62);
  __p[0] = &v61;
  sub_2213FB81C(__p);

  return result;
}

- (id)targetGroupFromRowIndex:(unsigned int)index minSourceLevel:(unsigned __int8)level templateRowUID:(TSKUIDStruct *)d
{
  levelCopy = level;
  v6 = *&index;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  __p.origin = objc_msgSend_bodyRange(WeakRetained, v9, v10, v11);
  __p.size = v12;
  v13 = TSUCellRect::rows(&__p);
  v15 = v14;

  v16 = 0;
  v17 = 0;
  if (v6 >= v13 && v6 - v13 < v15)
  {
    v18 = objc_loadWeakRetained(&self->_tableInfo);
    v17 = objc_msgSend_rowUIDForRowIndex_(v18, v19, v6, v20);
    v16 = v21;
  }

  d->_lower = v17;
  d->_upper = v16;
  if (v6 <= v13)
  {
LABEL_8:
    v30 = 0;
    v32 = 0;
    goto LABEL_9;
  }

  v22 = objc_loadWeakRetained(&self->_tableInfo);
  v23 = (v6 - 1);
  isLabelRow = objc_msgSend_isLabelRow_(v22, v24, v23, v25);

  if (isLabelRow)
  {
    if (v13 < v23)
    {
      v27 = objc_loadWeakRetained(&self->_tableInfo);
      v30 = objc_msgSend_rowUIDForRowIndex_(v27, v28, (v6 - 2), v29);
      v32 = v31;

      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v88 = objc_loadWeakRetained(&self->_tableInfo);
  v30 = objc_msgSend_rowUIDForRowIndex_(v88, v89, (v6 - 1), v90);
  v32 = v91;

  v92 = objc_loadWeakRetained(&self->_tableInfo);
  isSummaryRow = objc_msgSend_isSummaryRow_(v92, v93, v23, v94);

  if ((isSummaryRow & 1) == 0)
  {
    d->_lower = v30;
    d->_upper = v32;
  }

LABEL_9:
  if (v17 | v16)
  {
    if (!(v30 | v32))
    {
      v33 = objc_loadWeakRetained(&self->_tableInfo);
      v37 = objc_msgSend_groupBy(v33, v34, v35, v36);
      v41 = objc_msgSend_topLevelGroupNode(v37, v38, v39, v40);

      d->_lower = 0;
      d->_upper = 0;
      goto LABEL_36;
    }
  }

  else if (!(v30 | v32))
  {
    TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d at the moment we don't handle this well", "[TSTCategoryOrder targetGroupFromRowIndex:minSourceLevel:templateRowUID:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOrder.mm", 209);
    v97 = MEMORY[0x277D81150];
    v100 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v98, "[TSTCategoryOrder targetGroupFromRowIndex:minSourceLevel:templateRowUID:]", v99);
    v103 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v101, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCategoryOrder.mm", v102);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v97, v104, v100, v103, 209, 1, "at the moment we don't handle this well");

    TSUCrashBreakpoint();
    abort();
  }

  dCopy = d;
  v42 = objc_loadWeakRetained(&self->_tableInfo);
  v46 = objc_msgSend_groupBy(v42, v43, v44, v45);
  selfCopy = self;
  v48 = objc_loadWeakRetained(&self->_tableInfo);
  v52 = objc_msgSend_groupBy(v48, v49, v50, v51);
  v56 = objc_msgSend_numberOfLevels(v52, v53, v54, v55);
  v58 = objc_msgSend_groupNodeForRowUid_atLevel_(v46, v57, v30, v32, v56);
  v59 = v58;
  if (v58)
  {
    v60 = v58;
  }

  else
  {
    v105 = v42;
    v61 = objc_loadWeakRetained(&selfCopy->_tableInfo);
    v65 = objc_msgSend_groupBy(v61, v62, v63, v64);
    v60 = objc_msgSend_groupNodeForGroupUid_(v65, v66, v30, v32);

    v42 = v105;
  }

  if (levelCopy == 253)
  {
    v70 = dCopy;
    v71 = selfCopy;
  }

  else
  {
    if (levelCopy <= 1)
    {
      v78 = 1;
    }

    else
    {
      v78 = levelCopy;
    }

    v79 = v78 - 1;
    v70 = dCopy;
    v71 = selfCopy;
    for (i = objc_msgSend_groupLevel(v60, v67, v68, v69); i > v79; i = objc_msgSend_groupLevel(v84, v85, v86, v87))
    {
      v84 = objc_msgSend_parentNode(v60, v81, v82, v83);

      v60 = v84;
    }
  }

  v72 = v60;
  v41 = v72;
  if (v72 && !v70->_lower && !v70->_upper)
  {
    objc_msgSend_rowUidsAsVector(v72, v73, v74, v75);
    objc_msgSend_orderedRowUidsFromUids_(v71, v76, &__p, v77);
    if (v109 == v108)
    {
      if (!v109)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *v70 = *v108;
    }

    operator delete(v108);
LABEL_33:
    if (__p.origin)
    {
      __p.size = __p.origin;
      operator delete(*&__p.origin);
    }
  }

LABEL_36:

  return v41;
}

- (unsigned)minimumCategoryLevelInRowRange:(_NSRange)range
{
  v4 = objc_msgSend_indexSetWithIndexesInRange_(MEMORY[0x277CCAA78], a2, range.location, range.length);
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v9 = objc_msgSend_indexesForSummaryRows(WeakRetained, v6, v7, v8);
  v12 = objc_msgSend_tsu_indexSetByIntersectingWithIndexes_(v4, v10, v9, v11);

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = -3;
  if (objc_msgSend_count(v12, v13, v14, v15))
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = sub_22149AC80;
    v20[3] = &unk_27845F0D8;
    v20[4] = self;
    v20[5] = &v21;
    objc_msgSend_enumerateIndexesUsingBlock_(v12, v16, v20, v17);
  }

  v18 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);

  return v18;
}

- (id)sortedArrayFromArray:(id)array
{
  v56 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = MEMORY[0x277CBEB18];
  v9 = objc_msgSend_count(arrayCopy, v6, v7, v8);
  v12 = objc_msgSend_arrayWithCapacity_(v5, v10, v9, v11);
  if (objc_msgSend_count(arrayCopy, v13, v14, v15))
  {
    if (objc_msgSend_count(arrayCopy, v16, v17, v18) == 1)
    {
      objc_msgSend_addObjectsFromArray_(v12, v19, arrayCopy, v20);
    }

    else
    {
      selfCopy = self;
      __p = 0;
      v52 = 0;
      v53 = 0;
      memset(v49, 0, sizeof(v49));
      v50 = 1065353216;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v21 = arrayCopy;
      v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, &v45, v55, 16);
      if (v26)
      {
        v27 = 0;
        v28 = *v46;
        do
        {
          v29 = 0;
          v30 = v27;
          do
          {
            if (*v46 != v28)
            {
              objc_enumerationMutation(v21);
            }

            *&v44 = objc_msgSend_groupUid(*(*(&v45 + 1) + 8 * v29), v23, v24, v25, selfCopy, 0, 0);
            *(&v44 + 1) = v31;
            sub_221083454(&__p, &v44);
            v54 = &v44;
            v27 = v30 + 1;
            *(sub_221287990(v49, &v44, &unk_2217E1F12, &v54) + 8) = v30;
            ++v29;
            ++v30;
          }

          while (v26 != v29);
          v26 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v23, &v45, v55, 16);
        }

        while (v26);
      }

      objc_msgSend_orderedRowUidsFromUids_(selfCopy, v32, &__p, v33);
      v35 = *(&v44 + 1);
      v34 = v44;
      if (v44 != *(&v44 + 1))
      {
        do
        {
          v54 = v34;
          v36 = sub_221287990(v49, v34, &unk_2217E1F12, &v54);
          v39 = objc_msgSend_objectAtIndex_(v21, v37, *(v36 + 8), v38);
          objc_msgSend_addObject_(v12, v40, v39, v41);

          ++v34;
        }

        while (v34 != v35);
        v34 = v44;
      }

      if (v34)
      {
        *(&v44 + 1) = v34;
        operator delete(v34);
      }

      sub_2210BDEC0(v49);
      if (__p)
      {
        v52 = __p;
        operator delete(__p);
      }
    }
  }

  return v12;
}

- (BOOL)hasValidInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v3 = WeakRetained != 0;

  return v3;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)rowOrder
{
  v6 = objc_msgSend_rowUIDs(self->_uidMap, a3, v3, v4);
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  retstr->__begin_ = 0;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = (v8 - *v6) >> 4;

  return sub_221086EBC(retstr, v7, v8, v9);
}

- (void)setRowOrder:(const void *)order
{
  objc_msgSend_reset(self->_uidMap, a2, order, v3);
  objc_msgSend_replaceRowsWithUids_(self->_uidMap, v6, order, v7);
  self->_isRowOrderTemporary = 0;
}

- (void)setTemporaryRowOrder:(const void *)order
{
  objc_msgSend_reset(self->_uidMap, a2, order, v3);
  objc_msgSend_replaceRowsWithUids_(self->_uidMap, v6, order, v7);
  self->_isRowOrderTemporary = 1;
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)setRowOrderUsingViewOrder
{
  v53 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = objc_msgSend_groupBy(WeakRetained, v5, v6, v7);

  v9 = objc_loadWeakRetained(&self->_tableInfo);
  v13 = objc_msgSend_indexesForLabelRows(v9, v10, v11, v12);

  v14 = objc_loadWeakRetained(&self->_tableInfo);
  v18 = objc_msgSend_indexesForSummaryRows(v14, v15, v16, v17);

  v19 = -1;
  v52[0] = 0;
  v51[0] = -1;
  for (i = 1; i != 6; ++i)
  {
    v21 = 1 << (i - 1);
    v52[i] = v21;
    v19 &= ~v21;
    v51[i] = v19;
  }

  v22 = objc_loadWeakRetained(&self->_tableInfo);
  v26 = objc_msgSend_rowUIDs(v22, v23, v24, v25);
  v48 = 0;
  v49 = 0;
  v50 = 0;
  sub_221086EBC(&v48, *v26, *(v26 + 8), (*(v26 + 8) - *v26) >> 4);

  v29 = v48;
  v30 = v49;
  v31 = v49 - v48;
  if (v49 != v48)
  {
    v32 = v31 - 16;
    v33 = (v31 >> 4) - 1;
    v34 = -1;
    do
    {
      if (objc_msgSend_containsIndex_(v13, v27, v33, v28))
      {
        v35 = v48 + v32;
        *v35 = 0;
        v35[1] = 0;
      }

      else if (objc_msgSend_containsIndex_(v18, v27, v33, v28))
      {
        LOBYTE(__p) = 0;
        v47 = 0;
        isError = objc_msgSend_groupLevelForGroupUid_isBlank_isError_(v8, v27, v48 + v32, &__p, &v47);
        if (__p == 1)
        {
          if ((v52[isError] & v34) != 0)
          {
            v37 = v48 + v32;
            *v37 = 0;
            v37[1] = 0;
          }
        }

        else
        {
          v38 = v52[isError];
          if (v47 == 1 && (v38 & v34) != 0)
          {
            v39 = v48 + v32;
            *v39 = 0;
            v39[1] = 0;
          }

          v34 &= ~v38;
        }

        v34 |= v51[isError];
      }

      v32 -= 16;
      --v33;
    }

    while (v33 != -1);
    v29 = v48;
    v30 = v49;
  }

  __p = 0;
  v45 = 0;
  v46 = 0;
  while (v29 != v30)
  {
    if (*v29 != 0)
    {
      sub_221083454(&__p, v29);
    }

    ++v29;
  }

  objc_msgSend_setRowOrder_(self, v27, &__p, v28);
  objc_msgSend_rowOrder(self, v40, v41, v42);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  return result;
}

- (void)loadFromUnarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  google::protobuf::internal::AssignDescriptors();
  v6 = objc_msgSend_messageWithDescriptor_(unarchiverCopy, v4, off_2812E4498[304], v5);

  objc_msgSend_loadFromArchive_unarchiver_(self, v7, v6, unarchiverCopy);
}

- (void)loadFromArchive:(const void *)archive unarchiver:(id)unarchiver
{
  unarchiverCopy = unarchiver;
  if (objc_msgSend_fileFormatVersion(unarchiverCopy, v7, v8, v9) == 0x300020000000ALL)
  {
    objc_msgSend_willModifyForUpgrade(self, v10, v11, v12);
  }

  v13 = *(archive + 3);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_22149B74C;
  v23[3] = &unk_278462738;
  v23[4] = self;
  v14 = unarchiverCopy;
  v16 = objc_opt_class();
  v17 = MEMORY[0x277D80A18];
  if (v13)
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, v13, v16, 0, v23);
  }

  else
  {
    objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v14, v15, MEMORY[0x277D80A18], v16, 0, v23);
  }

  v18 = *(archive + 4);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = sub_22149B760;
  v22[3] = &unk_27845E0B8;
  v22[4] = self;
  v19 = v14;
  v21 = objc_opt_class();
  if (v18)
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, v18, v21, 0, v22);
  }

  else
  {
    objc_msgSend_readReferenceMessage_class_protocol_completion_(v19, v20, v17, v21, 0, v22);
  }
}

- (void)saveToArchiver:(id)archiver
{
  archiverCopy = archiver;
  objc_msgSend_setMessageVersion_(archiverCopy, v5, 0x300020000000ALL, v6);
  v10 = archiverCopy;
  google::protobuf::internal::AssignDescriptors();
  v8 = objc_msgSend_messageWithNewFunction_descriptor_(v10, v7, sub_22149BE60, off_2812E4498[304]);

  objc_msgSend_saveToArchive_archiver_(self, v9, v8, v10);
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v8 = archiverCopy;
  *(archive + 4) |= 1u;
  v9 = *(archive + 3);
  if (!v9)
  {
    v10 = *(archive + 1);
    if (v10)
    {
      v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    v9 = MEMORY[0x223DA0390](v10);
    *(archive + 3) = v9;
    v8 = archiverCopy;
  }

  objc_msgSend_setWeakReference_message_(v8, v6, WeakRetained, v9);

  uidMap = self->_uidMap;
  *(archive + 4) |= 2u;
  v13 = *(archive + 4);
  if (!v13)
  {
    v14 = *(archive + 1);
    if (v14)
    {
      v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
    }

    v13 = MEMORY[0x223DA0390](v14);
    *(archive + 4) = v13;
  }

  objc_msgSend_setStrongReference_message_(archiverCopy, v11, uidMap, v13);
}

- (void)insertRowUids:(const void *)uids beforeUid:(const TSKUIDStruct *)uid
{
  lower = uid->_lower;
  upper = uid->_upper;
  if (!(lower | upper) || (upper = objc_msgSend_rowIndexForRowUID_(self->_uidMap, a2, lower, upper), upper == 0x7FFFFFFF))
  {
    upper = objc_msgSend_numberOfRows(self->_uidMap, a2, lower, upper);
  }

  uidMap = self->_uidMap;

  objc_msgSend_insertRowsWithUIDs_atIndex_(uidMap, a2, uids, upper);
}

- (void)removeRowUids:(const void *)uids
{
  v11 = objc_msgSend_rowIndexesForUIDs_(self->_uidMap, a2, uids, v3);
  if (objc_msgSend_count(v11, v6, v7, v8) == (*(uids + 1) - *uids) >> 4)
  {
    objc_msgSend_removeRowsAtIndexes_(self->_uidMap, v9, v11, v10);
  }
}

- (TSKUIDStructVectorTemplate<TSKUIDStruct>)groupUidsGivenRowUids:(SEL)uids selectedLevels:(const void *)levels
{
  retstr->__begin_ = 0;
  retstr->__end_ = 0;
  retstr->__cap_ = 0;
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);
  v13 = objc_msgSend_groupBy(WeakRetained, v10, v11, v12);
  sub_22149BD7C(v33, v13);

  v14 = [TSCEUIDSet alloc];
  v17 = objc_msgSend_initWithUUIDVector_(v14, v15, levels, v16);
  sub_22149CC78(v33, v17);
  sub_22149CD08(v33);
  v18 = objc_loadWeakRetained(&self->_tableInfo);
  v22 = objc_msgSend_groupBy(v18, v19, v20, v21);
  LODWORD(v13) = objc_msgSend_numberOfLevels(v22, v23, v24, v25);

  for (i = v13; i; --i)
  {
    v26 = sub_22122DECC(a5, &i);
    v27 = v26;
    if (!v26 || *(v26 + 5) < 1)
    {
      break;
    }

    sub_22149CD0C(v33, i, &__p);
    v28 = (v31 - __p) >> 4;
    if (v28 != *(v27 + 5))
    {
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      break;
    }

    sub_22133594C(retstr, retstr->__end_, __p, v31, v28);
    if (__p)
    {
      v31 = __p;
      operator delete(__p);
    }
  }

  v33[0] = &unk_2834A7E10;
  sub_2210BDEC0(v35);
  __p = &v34;
  sub_2213FB81C(&__p);
  return result;
}

- (TSTTableInfo)tableInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_tableInfo);

  return WeakRetained;
}

@end