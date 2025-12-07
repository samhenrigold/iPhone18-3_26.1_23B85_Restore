@interface TSTHeaderNameSubset
- (TSCECellRefSet)headerCellsExactlyMatching:(SEL)matching;
- (TSCECellRefSet)headerCellsMatchingPrefix:(SEL)prefix;
- (TSKUIDStruct)limitedToTableUID;
- (TSTHeaderNameSubset)initWithHeaderNameMgr:(id)mgr limitToTableUID:(const TSKUIDStruct *)d;
- (id).cxx_construct;
- (id)description;
- (void)loadSubsetWithExactMatches:(const void *)matches prefixMatches:(const void *)prefixMatches;
@end

@implementation TSTHeaderNameSubset

- (TSTHeaderNameSubset)initWithHeaderNameMgr:(id)mgr limitToTableUID:(const TSKUIDStruct *)d
{
  mgrCopy = mgr;
  v11.receiver = self;
  v11.super_class = TSTHeaderNameSubset;
  v8 = [(TSTHeaderNameSubset *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_hnm, mgr);
    v9->_limitedToTableUID = *d;
  }

  return v9;
}

- (void)loadSubsetWithExactMatches:(const void *)matches prefixMatches:(const void *)prefixMatches
{
  v7 = objc_msgSend_calcEngine(self->_hnm, a2, matches, prefixMatches);
  for (i = *(matches + 2); i; i = *i)
  {
    if ((sub_221278D0C(i + 3) & 1) == 0)
    {
      sub_221279358(i + 3, v7, &v12);
      if ((TSCECellRefSet::isEmpty(&v12) & 1) == 0)
      {
        v13 = i + 2;
        v9 = sub_221411970(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, i + 2, &unk_2217E1BE8, &v13);
        TSCECellRefSet::operator=(v9 + 3, &v12);
      }

      sub_22107C800(&v12, v12._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }

  for (j = *(prefixMatches + 2); j; j = *j)
  {
    if ((sub_221278D0C(j + 3) & 1) == 0)
    {
      sub_221279358(j + 3, v7, &v12);
      if ((TSCECellRefSet::isEmpty(&v12) & 1) == 0)
      {
        v13 = j + 2;
        v11 = sub_221411970(&self->_prefixStringsInHeaderCells.__table_.__bucket_list_.__ptr_, j + 2, &unk_2217E1BE8, &v13);
        TSCECellRefSet::operator=(v11 + 3, &v12);
      }

      sub_22107C800(&v12, v12._coordsForOwnerUid.__tree_.__end_node_.__left_);
    }
  }
}

- (TSCECellRefSet)headerCellsExactlyMatching:(SEL)matching
{
  v6 = a4;
  v43 = 0;
  v44 = &v43;
  v45 = 0x4812000000;
  v46 = sub_221408BA8;
  v47 = sub_221408BB4;
  v48 = &unk_22188E88F;
  v50[0] = 0;
  v50[1] = 0;
  v49 = v50;
  if (objc_msgSend_length(v6, v7, v8, v9))
  {
    v13 = objc_msgSend_namePrefixIndex(self->_hnm, v10, v11, v12);
    v16 = objc_msgSend_foldName_(v13, v14, v6, v15);

    v42._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
    v42._coordsForOwnerUid.__tree_.__size_ = 0;
    v42._coordsForOwnerUid.__tree_.__begin_node_ = &v42._coordsForOwnerUid.__tree_.__end_node_;
    hnm = self->_hnm;
    if (hnm)
    {
      objc_msgSend_wordFragmentsFromString_savePreserveFlags_(hnm, v17, v16, 0);
      v19 = v39;
      v20 = v40;
      if (v39 != v40)
      {
        v21 = 1;
        while (1)
        {
          v37[0] = *v19;
          v24 = sub_221411C68(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, v37, v22, v23);
          if (!v24)
          {
            break;
          }

          if (v21)
          {
            TSCECellRefSet::operator=(&v42, v24 + 3);
          }

          else
          {
            TSCECellRefSet::intersectWith(&v42, v24 + 1);
          }

          v21 = 0;
          if (++v19 == v20)
          {
            goto LABEL_14;
          }
        }

        TSCECellRefSet::clear(&v42);
      }
    }

    else
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
    }

LABEL_14:
    if ((TSCECellRefSet::isEmpty(&v42) & 1) == 0)
    {
      v28 = objc_msgSend_calcEngine(self->_hnm, v25, v26, v27);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x3032000000;
      v37[3] = sub_221408BC0;
      v37[4] = sub_221408BD0;
      v38 = 0;
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = sub_221408BD8;
      v31[3] = &unk_278464A68;
      v35 = v37;
      v32 = v28;
      selfCopy = self;
      v34 = v16;
      v36 = &v43;
      v29 = v28;
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v42, v31);

      _Block_object_dispose(v37, 8);
    }

    v37[0] = &v39;
    sub_22107C2C0(v37);
    sub_22107C800(&v42, v42._coordsForOwnerUid.__tree_.__end_node_.__left_);
  }

  else
  {
    v16 = v6;
  }

  TSCECellRefSet::TSCECellRefSet(retstr, v44 + 2);
  _Block_object_dispose(&v43, 8);
  sub_22107C800(&v49, v50[0]);

  return result;
}

- (TSCECellRefSet)headerCellsMatchingPrefix:(SEL)prefix
{
  v6 = a4;
  v64 = 0;
  v65 = &v64;
  v66 = 0x4812000000;
  v67 = sub_221408BA8;
  v68 = sub_221408BB4;
  v69 = &unk_22188E88F;
  v71[0] = 0;
  v71[1] = 0;
  v70 = v71;
  if ((objc_msgSend_includesPrefixes(self, v7, v8, v9) & 1) == 0)
  {
    v13 = MEMORY[0x277D81150];
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTHeaderNameSubset headerCellsMatchingPrefix:]", v12);
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTHeaderNameMgr.mm", v16);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 710, 0, "Warning: asking for prefix matching, but this search result didn't specify prefixes when it was created");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
  }

  if (!objc_msgSend_length(v6, v10, v11, v12))
  {
    goto LABEL_27;
  }

  v25 = objc_msgSend_namePrefixIndex(self->_hnm, v22, v23, v24);
  v28 = objc_msgSend_foldName_(v25, v26, v6, v27);

  v63._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
  v63._coordsForOwnerUid.__tree_.__size_ = 0;
  v63._coordsForOwnerUid.__tree_.__begin_node_ = &v63._coordsForOwnerUid.__tree_.__end_node_;
  hnm = self->_hnm;
  v48 = v28;
  if (!hnm)
  {
    v31 = retstr;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    goto LABEL_24;
  }

  v31 = retstr;
  objc_msgSend_wordFragmentsFromString_savePreserveFlags_(hnm, v29, v28, 0);
  v33 = v60;
  v32 = v61;
  if (v60 == v61)
  {
    goto LABEL_24;
  }

  v34 = 0;
  v35 = v61 - v60 - 1;
  v36 = 1;
  while (1)
  {
    v59 = *v33;
    if (v34 == v35)
    {
      v55._coordsForOwnerUid.__tree_.__end_node_.__left_ = 0;
      v55._coordsForOwnerUid.__tree_.__size_ = 0;
      v55._coordsForOwnerUid.__tree_.__begin_node_ = &v55._coordsForOwnerUid.__tree_.__end_node_;
      for (i = self->_prefixStringsInHeaderCells.__table_.__first_node_.__next_; i; i = *i)
      {
        if (objc_msgSend_hasPrefix_(*(i + 2), v37, v59, v39))
        {
          TSCECellRefSet::addCellRefs(&v55, i + 1);
        }
      }

      if (v36)
      {
        TSCECellRefSet::operator=(&v63, &v55);
      }

      else
      {
        TSCECellRefSet::intersectWith(&v63, &v55);
      }

      sub_22107C800(&v55, v55._coordsForOwnerUid.__tree_.__end_node_.__left_);
      goto LABEL_20;
    }

    v41 = sub_221411C68(&self->_stringsInHeaderCells.__table_.__bucket_list_.__ptr_, &v59, v38, v39);
    if (!v41)
    {
      break;
    }

    if (v36)
    {
      TSCECellRefSet::operator=(&v63, v41 + 3);
    }

    else
    {
      TSCECellRefSet::intersectWith(&v63, v41 + 1);
    }

LABEL_20:
    ++v34;

    v36 = 0;
    if (++v33 == v32)
    {
      goto LABEL_24;
    }
  }

  TSCECellRefSet::clear(&v63);

LABEL_24:
  retstr = v31;
  if ((TSCECellRefSet::isEmpty(&v63) & 1) == 0)
  {
    v45 = objc_msgSend_calcEngine(self->_hnm, v42, v43, v44);
    v55._coordsForOwnerUid.__tree_.__begin_node_ = 0;
    v55._coordsForOwnerUid.__tree_.__end_node_.__left_ = &v55;
    v55._coordsForOwnerUid.__tree_.__size_ = 0x3032000000;
    v56 = sub_221408BC0;
    v57 = sub_221408BD0;
    v58 = 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = sub_221409220;
    v49[3] = &unk_278464A68;
    v53 = &v55;
    v50 = v45;
    selfCopy = self;
    v52 = v48;
    v54 = &v64;
    v46 = v45;
    TSCECellRefSet::enumerateCellRefsUsingBlock(&v63, v49);

    _Block_object_dispose(&v55, 8);
  }

  v55._coordsForOwnerUid.__tree_.__begin_node_ = &v60;
  sub_22107C2C0(&v55);
  sub_22107C800(&v63, v63._coordsForOwnerUid.__tree_.__end_node_.__left_);
  v6 = v48;
LABEL_27:
  TSCECellRefSet::TSCECellRefSet(retstr, v65 + 2);
  _Block_object_dispose(&v64, 8);
  sub_22107C800(&v70, v71[0]);

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"%@ for '%@'", v6, v4, self->_originalFullReferenceString);
}

- (TSKUIDStruct)limitedToTableUID
{
  upper = self->_limitedToTableUID._upper;
  lower = self->_limitedToTableUID._lower;
  result._upper = upper;
  result._lower = lower;
  return result;
}

- (id).cxx_construct
{
  *(self + 56) = 0u;
  *(self + 40) = 0u;
  *(self + 18) = 1065353216;
  *(self + 5) = 0u;
  *(self + 6) = 0u;
  *(self + 28) = 1065353216;
  return self;
}

@end