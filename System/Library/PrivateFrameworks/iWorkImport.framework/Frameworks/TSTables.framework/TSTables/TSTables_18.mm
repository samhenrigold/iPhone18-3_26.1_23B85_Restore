TSCEASTColonElement *sub_221464170(uint64_t a1, TSCEASTColonElement *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v76 = objc_msgSend_mergeInfo(*(a1 + 200), a2, a3, a4);
  v9 = objc_msgSend_mergeRegion(v76, v6, v7, v8);
  LOBYTE(v91._row) = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  TSCEASTColonElement::rangeReference(&v89, v4, a1, &v91, &coordinate);
  v88 = v89;
  if (!TSCERangeCoordinate::isValid(&v88))
  {
    goto LABEL_23;
  }

  v13 = objc_msgSend_tableUID(v9, v10, v11, v12);
  if (v90 != __PAIR128__(v14, v13))
  {
    goto LABEL_23;
  }

  row = v88._topLeft.row;
  column = v88._topLeft.column;
  v19 = v88._bottomRight.row;
  v20 = v88._bottomRight.column;
  v21 = objc_msgSend_columnUids(v9, v14, v15, v16);
  if (objc_msgSend_containsIndex_(v21, v22, column, v23))
  {
    v27 = objc_msgSend_rowUids(v9, v24, v25, v26);
    v75 = objc_msgSend_containsIndex_(v27, v28, row, v29);
  }

  else
  {
    v75 = 0;
  }

  v33 = objc_msgSend_columnUids(v9, v30, v31, v32);
  if ((objc_msgSend_containsIndex_(v33, v34, v20, v35) & 1) == 0)
  {

    goto LABEL_16;
  }

  v39 = objc_msgSend_rowUids(v9, v36, v37, v38);
  v42 = objc_msgSend_containsIndex_(v39, v40, v19, v41);

  if ((v75 & v42) != 1)
  {
LABEL_16:
    v69 = TSCEASTElementWithChildren::child(v4, 0);
    coordinate = (*(*v69 + 40))(v69, a1);
    sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
    v70 = TSCEASTElementWithChildren::child(v4, 1u);
    coordinate = (*(*v70 + 40))(v70, a1);
    sub_2210CDD80((a1 + 208), &coordinate, &coordinate);
    goto LABEL_23;
  }

  coordinate = 0;
  v86 = 0;
  v87 = 0;
  __p = 0;
  v83 = 0;
  for (i = 0; v20 >= column; LODWORD(column) = column + 1)
  {
    v46 = objc_msgSend_columnUids(v9, v43, v44, v45);
    *&v80 = objc_msgSend_uidForIndex_(v46, v47, column, v48);
    *(&v80 + 1) = v49;
    sub_221083454(&coordinate, &v80);
  }

  while (row <= v19)
  {
    v50 = objc_msgSend_rowUids(v9, v43, v44, v45);
    *&v80 = objc_msgSend_uidForIndex_(v50, v51, row, v52);
    *(&v80 + 1) = v53;
    sub_221083454(&__p, &v80);

    row = (row + 1);
  }

  v54 = [TSCEUndoTract alloc];
  v56 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v54, v55, &coordinate, &__p, 1);
  v57 = TSCEASTElement::mutableUndoTractList(v4, a1);
  objc_msgSend_setIsRangeRef_(v56, v58, 1, v59);
  objc_msgSend_appendUidTract_(v57, v60, v56, v61);
  v62 = *(a1 + 200);
  v63 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v64 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  v79.coordinate = v63;
  v79._tableUID = v64->var0.var0._tableUID;
  if (v62)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(v62, v65, &v79, v67);
    v68 = v80;
  }

  else
  {
    v68 = 0;
    v80 = 0uLL;
    v81 = 0;
  }

  v78 = v68;
  v79.coordinate = objc_msgSend_topLeftCellCoord(v9, v65, v66, v67);
  v79._tableUID = v90;
  objc_msgSend_setPreserveFlags_(v57, v71, LOBYTE(v91._row), v72);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v73 = TSCEASTIteratorBase::createReference(a1, &v79, &v91, &tableUID, &v78, v57);
  (*(*a1 + 24))(a1, v4);

  if (__p)
  {
    v83 = __p;
    operator delete(__p);
  }

  if (coordinate)
  {
    v86 = coordinate;
    operator delete(*&coordinate);
  }

  v4 = v73;
LABEL_23:

  return v4;
}

void sub_22146455C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_221464628(uint64_t a1, TSCEASTColonTractElement *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v121 = objc_msgSend_mergeInfo(*(a1 + 200), a2, a3, a4);
  v9 = objc_msgSend_mergeRegion(v121, v6, v7, v8);
  v12 = TSCEASTColonTractElement::relativeTractRef(v4, a1, v10, v11);
  tableUID._lower = objc_msgSend_tableUID(v12, v13, v14, v15);
  tableUID._upper = v16;
  if (!(tableUID._lower | v16))
  {
    tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  }

  v17 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  lower = v17->var0.var0._tableUID._lower;
  upper = v17->var0.var0._tableUID._upper;
  if (lower == objc_msgSend_tableUID(v9, v20, v21, v22) && upper == v23)
  {
    v33 = 1;
  }

  else
  {
    v27 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    v28 = v27->var0.var0._tableUID._lower;
    v29 = v27->var0.var0._tableUID._upper;
    v33 = v28 == objc_msgSend_condStyleOwnerUID(v9, v30, v31, v32) && v29 == v23;
  }

  v36 = tableUID._lower == objc_msgSend_tableUID(v9, v23, v24, v25) && tableUID._upper == v34;
  v37 = *(a1 + 200);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v39 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
  *v144 = coordinate;
  *&v144[8] = v39->var0.var0._tableUID;
  if (v37)
  {
    objc_msgSend_updatedCellRefForOriginalCellRef_(*&v37, v40, v144, v41);
    v37 = v150;
  }

  else
  {
    v150 = 0;
    v151 = 0;
    v152 = 0;
  }

  v149 = v37;
  if (v33)
  {
    v42 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    if (v42.row != v37.row || ((*&v37 ^ *&v42) & 0x101FFFF00000000) != 0)
    {
      v137 = 0;
      v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v137 = (v43->var0.var0.coordinate.column - v37.column) | ((v43->var0.var0.coordinate.row - v37.row) << 32);
      objc_msgSend_adjustRelativeIndexesBy_(v12, v44, &v137, v45);
      v46 = TSCEASTElement::mutableUndoTractList(v4, a1);
      *v144 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
      v47 = TSCEASTIteratorBase::undoTractForCellCoord(a1, &tableUID, v144, 1);
      v51 = objc_msgSend_preserveFlags(v12, v48, v49, v50);
      objc_msgSend_setPreserveFlags_(v46, v52, v51, v53);
      objc_msgSend_appendUidTract_(v46, v54, v47, v55);
      *v144 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      TSCEASTIteratorBase::createColonTractRef(a1, v12, v46, v144);
    }
  }

  v56 = v4;
  if (v36)
  {
    *v144 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
    v59 = objc_msgSend_absoluteCellTractRefForHostCell_(v12, v57, v144, v58);
    v63 = objc_msgSend_topLeft(v59, v60, v61, v62);
    v67 = objc_msgSend_bottomRight(v59, v64, v65, v66);
    v71 = objc_msgSend_columnUids(v9, v68, v69, v70);
    if (objc_msgSend_containsIndex_(v71, v72, WORD2(v63), v73))
    {
      v77 = objc_msgSend_rowUids(v9, v74, v75, v76);
      v80 = objc_msgSend_containsIndex_(v77, v78, v63, v79);
    }

    else
    {
      v80 = 0;
    }

    v84 = objc_msgSend_columnUids(v9, v81, v82, v83);
    if (objc_msgSend_containsIndex_(v84, v85, WORD2(v67), v86))
    {
      v90 = objc_msgSend_rowUids(v9, v87, v88, v89);
      v93 = objc_msgSend_containsIndex_(v90, v91, v67, v92);

      if ((v80 & v93) == 1)
      {
        *v144 = 0;
        *&v144[8] = v144;
        *&v144[16] = 0x4812000000;
        v145 = sub_221464D6C;
        v146 = sub_221464D90;
        v147 = 0u;
        v148 = 0u;
        v137 = 0;
        v138 = &v137;
        v139 = 0x4812000000;
        v140 = sub_221464D6C;
        v141 = sub_221464D90;
        v142 = 0u;
        v143 = 0u;
        objc_msgSend_columns(v59, v94, v95, v96);
        v131 = MEMORY[0x277D85DD0];
        v132 = 3221225472;
        v133 = sub_221464DA8;
        v134 = &unk_278465858;
        v136 = v144;
        v135 = v9;
        TSUIndexSet::enumerateIndexesUsingBlock();
        objc_msgSend_rows(v59, v97, v98, v99);
        v125 = MEMORY[0x277D85DD0];
        v126 = 3221225472;
        v127 = sub_221464E18;
        v128 = &unk_278465858;
        v130 = &v137;
        v129 = v135;
        TSUIndexSet::enumerateIndexesUsingBlock();
        v100 = [TSCEUndoTract alloc];
        v102 = objc_msgSend_initWithColumnUids_rowUids_purpose_(v100, v101, *&v144[8] + 48, (v138 + 6), 1);
        v103 = TSCEASTElement::mutableUndoTractList(v4, a1);
        objc_msgSend_setIsRangeRef_(v102, v104, 1, v105);
        objc_msgSend_appendUidTract_(v103, v106, v102, v107);
        v124.coordinate = objc_msgSend_topLeftCellCoord(v129, v108, v109, v110);
        v124._tableUID = tableUID;
        v114 = objc_msgSend_preserveFlags(v59, v111, v112, v113);
        objc_msgSend_setPreserveFlags_(v103, v115, v114, v116);
        v123._flags = objc_msgSend_preserveFlags(v59, v117, v118, v119) & 3;
        v122 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v4 = TSCEASTIteratorBase::createReference(a1, &v124, &v123, &v122, &v149, v103);
        (*(*a1 + 24))(a1, v56);

        _Block_object_dispose(&v137, 8);
        if (*(&v142 + 1))
        {
          *&v143 = *(&v142 + 1);
          operator delete(*(&v142 + 1));
        }

        _Block_object_dispose(v144, 8);
        if (*(&v147 + 1))
        {
          *&v148 = *(&v147 + 1);
          operator delete(*(&v147 + 1));
        }
      }
    }

    else
    {
    }
  }

  return v4;
}

void sub_221464C34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46)
{
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a39, 8);
  if (a45)
  {
    a46 = a45;
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221464D6C(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221464D90(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221464DA8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v6 = objc_msgSend_columnUids(*(a1 + 32), a2, a3, a4);
  *&v10 = objc_msgSend_uidForIndex_(v6, v7, v4, v8);
  *(&v10 + 1) = v9;
  sub_221083454(v5 + 48, &v10);
}

void sub_221464E18(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*(a1 + 40) + 8);
  v6 = objc_msgSend_rowUids(*(a1 + 32), a2, a3, a4);
  *&v10 = objc_msgSend_uidForIndex_(v6, v7, a2, v8);
  *(&v10 + 1) = v9;
  sub_221083454(v5 + 48, &v10);
}

TSCEASTRewriter *sub_221464E88(TSCEASTRewriter *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4)
{
  v7 = a4;
  TSCEASTRewriter::TSCEASTRewriter(a1, a2, a3, 0);
  *a1 = &unk_2834A8518;
  *(a1 + 25) = v7;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_221464F0C(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  v2 = a2;
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(v2, a1, v4, v5);
  }

  else
  {
    v8 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v8->var0.var0._tableUID._lower;
    upper = v8->var0.var0._tableUID._upper;
  }

  v79._lower = lower;
  v79._upper = upper;
  v11 = objc_msgSend_mergeInfo(*(a1 + 200), upper, v6, v7);
  v15 = objc_msgSend_mergeRegion(v11, v12, v13, v14);
  if (v79._lower == objc_msgSend_tableUID(v15, v16, v17, v18) && v79._upper == v19)
  {
    v21 = sub_221089E8C(a1);
    v24 = objc_msgSend_tableResolverForTableUID_(v21, v22, &v79, v23);

    v25 = TSCEASTElement::mutableUndoTractList(v2, a1);
    v29 = v25;
    if (v25 && objc_msgSend_tractCount(v25, v26, v27, v28))
    {
      v35 = objc_msgSend_tractCount(v29, v30, v31, v32);
      while (1)
      {
        v36 = objc_msgSend_uidTractAtIndex_(v29, v33, --v35, v34);
        if (objc_msgSend_purpose(v36, v37, v38, v39) == 1)
        {
          v78._topLeft = 0;
          v78._bottomRight = 0;
          if (v24)
          {
            v78._topLeft = objc_msgSend_preMergeRangeFromUidTract_(v24, v40, v36, v41);
          }

          else
          {
            v78._topLeft = 0x7FFF7FFFFFFFLL;
            v42 = 0x7FFF7FFFFFFFLL;
          }

          v78._bottomRight = v42;
          if (TSCERangeCoordinate::isValid(&v78))
          {
            break;
          }
        }

        if (!v35)
        {
          goto LABEL_30;
        }
      }

      v46 = objc_msgSend_preserveFlags(v29, v43, v44, v45);
      coordinate = 0;
      coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
      if ((TSCEASTElement::refFlags(v2, a1) & 1) == 0)
      {
        v51 = *objc_msgSend_mergeSource(v11, v47, v48, v49);
        if (v51 != 0x7FFFFFFF && (v51 & 0xFFFF00000000) != 0x7FFF00000000)
        {
          v52 = objc_msgSend_columnUids(v15, v47, v50, v49);
          if (objc_msgSend_containsIndex_(v52, v53, coordinate.column, v54))
          {
            v70 = objc_msgSend_rowUids(v15, v55, v56, v57);
            v69 = objc_msgSend_containsIndex_(v70, v58, coordinate.row, v59);

            if (v69)
            {
              coordinate = *objc_msgSend_mergeSource(v11, v47, v60, v49);
            }
          }

          else
          {
          }
        }
      }

      objc_msgSend_pruneMergeUidTractsAtAndAboveIndex_(v29, v47, v35, v49);
      if (!TSCERangeCoordinate::isSingleCell(&v78) || (v46 & 3) != ((v46 >> 2) & 3))
      {
        v76.coordinate = v78._topLeft;
        v76._tableUID = v79;
        v75.coordinate = v78._bottomRight;
        v75._tableUID = v79;
        v65 = objc_msgSend_preserveFlags(v29, v61, v62, v63);
        v74._flags = v65 & 3;
        *&v73[0]._flags = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v66 = TSCEASTIteratorBase::createReference(a1, &v76, &v74, v73, &coordinate, 0);
        v72._flags = (v65 >> 2) & 3;
        tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
        v67 = TSCEASTIteratorBase::createReference(a1, &v75, &v72, &tableUID, &coordinate, 0);
        TSCEASTRewriter::createColonWithUidTractList(a1, v29, v66, v67);
      }

      v76.coordinate = v78._topLeft;
      v76._tableUID = v79;
      v73[0]._flags = v46 & 3;
      *&v75.coordinate.row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
      v64 = TSCEASTIteratorBase::createReference(a1, &v76, v73, &v75, &coordinate, v29);
      (*(*a1 + 24))(a1, v2);
      v2 = v64;
    }

LABEL_30:
  }

  return v2;
}

void sub_22146536C(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_2214653C8(id *a1)
{
  *a1 = &unk_2834A83C8;
  sub_2210BDEC0((a1 + 26));

  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221465438(id *a1)
{

  TSCEASTRewriter::~TSCEASTRewriter(a1);
}

void sub_221465474(id *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221465894()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = qword_27CFB5610;
  qword_27CFB5610 = v0;

  operator new();
}

void sub_221465BA4(void *a1, unint64_t a2, id *a3)
{
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v7 = *a1 + 8 * a2;
      while (v4 != v7)
      {
        v8 = *(v4 - 8);
        v4 -= 8;
      }

      a1[1] = v7;
    }
  }

  else
  {
    v6 = a2 - v5;

    sub_22146700C(a1, v6, a3);
  }
}

void sub_221466814(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_22107C2C0(&a16);
  _Unwind_Resume(a1);
}

void *sub_22146688C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(result, a2);
    }

    sub_22107C148();
  }

  return result;
}

void sub_221466908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

id sub_22146691C(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_2214669FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_22146700C(void *result, unint64_t a2, id *a3)
{
  v5 = result;
  v7 = result[1];
  v6 = result[2];
  if (a2 <= (v6 - v7) >> 3)
  {
    if (a2)
    {
      v12 = 8 * a2;
      v13 = &v7[a2];
      do
      {
        result = *a3;
        *v7++ = result;
        v12 -= 8;
      }

      while (v12);
      v7 = v13;
    }

    v5[1] = v7;
  }

  else
  {
    v8 = v7 - *result;
    v9 = a2 + (v8 >> 3);
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v6 - *result;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v17[4] = result;
    if (v11)
    {
      sub_22107C1F0(result, v11);
    }

    v14 = (8 * (v8 >> 3));
    v17[0] = 0;
    v17[1] = v14;
    v17[3] = 0;
    v15 = 8 * a2;
    v16 = &v14[a2];
    do
    {
      *v14++ = *a3;
      v15 -= 8;
    }

    while (v15);
    v17[2] = v16;
    sub_22107C098(v5, v17);
    return sub_22107C26C(v17);
  }

  return result;
}

void sub_221467120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void *sub_221467864(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6)
{
  objc_msgSend_setStroke_(*(a1 + 32), a2, a2, a4, a5);
  result = objc_msgSend_setRange_(*(a1 + 32), v10, a3, a4);
  *a6 = 1;
  return result;
}

void sub_22146820C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18)
{
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  _Unwind_Resume(a1);
}

void sub_22146A490(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  if (v5)
  {
    objc_msgSend_baseHeaderColumnsForCell_(v5, a2, a2, a4);
    v7 = *(a1 + 32);
    if (v7)
    {
      objc_msgSend_baseHeaderRowsForCell_(v7, a2, a2, a4);
      goto LABEL_6;
    }
  }

  else
  {
    v35 = 0u;
    v36 = 0u;
  }

  v33 = 0u;
  v34 = 0u;
LABEL_6:
  v8 = objc_msgSend_calcEngine(*(a1 + 40), a2, a3, a4);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v8, v9, &v35, v10);

  if (IsValidIncludingSheet)
  {
    v15 = *(a1 + 40);
    v25 = 1;
    v26 = v35;
    v27 = v36;
    v28 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    objc_msgSend_addCalculatedPrecedent_(v15, v12, &v25, v14);

    objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v16, *(a1 + 40), &v35);
  }

  v17 = objc_msgSend_calcEngine(*(a1 + 40), v12, v13, v14);
  v20 = objc_msgSend_referenceIsValidIncludingSheet_(v17, v18, &v33, v19);

  if (v20)
  {
    v23 = *(a1 + 40);
    v25 = 1;
    v26 = v33;
    v27 = v34;
    v28 = 0;
    v32 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    objc_msgSend_addCalculatedPrecedent_(v23, v21, &v25, v22);

    objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v24, *(a1 + 40), &v33);
  }
}

uint64_t sub_22146A608(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v23.range = *a2;
  v23._tableUID = v3;
  topLeft = v23.range._topLeft;
  v22 = *(a2 + 16);
  if (TSCERangeRef::isSpanningAllRows(&v23))
  {
    v6 = *(a1 + 32);
    if (v6)
    {
      objc_msgSend_baseHeaderRowsForCell_(v6, v4, &topLeft, v5);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  else
  {
    result = TSCERangeRef::isSpanningAllColumns(&v23);
    if (!result)
    {
      return result;
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      objc_msgSend_baseHeaderColumnsForCell_(v8, v4, &topLeft, v5);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }
  }

  v9 = *(a1 + 40);
  v11 = 1;
  v12 = v19;
  v13 = v20;
  v14 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  objc_msgSend_addCalculatedPrecedent_(v9, v4, &v11, v5);

  return objc_msgSend_addNameFragmentPrecedentsForHeaderRange_headerRangeRef_(TSCEFunction_REFERENCE_NAME, v10, *(a1 + 40), &v19);
}

void sub_22146A738(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_calcEngine(*(a1 + 32), a2, a3, a4);
  IsValidIncludingSheet = objc_msgSend_referenceIsValidIncludingSheet_(v6, v7, a2, v8);

  if (IsValidIncludingSheet)
  {
    v12 = *(a1 + 32);
    v14 = 1;
    v13 = *(a2 + 1);
    v15 = *a2;
    v16 = v13;
    v17 = 0;
    v21 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    objc_msgSend_addCalculatedPrecedent_(v12, v10, &v14, v11);
  }
}

void sub_22146B2E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, void *a20, void *a21)
{
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_22146BC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  v30 = v22;

  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_22146C8D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, void *a29)
{
  v35 = *(v33 - 128);
  if (v35)
  {
    *(v33 - 120) = v35;
    operator delete(v35);
  }

  _Unwind_Resume(a1);
}

void sub_22146DD80(uint64_t a1, const TSCECellRef *a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  TSCERangeRef::TSCERangeRef(&v6, a2);
  v7 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  objc_msgSend_addCalculatedPrecedent_(v2, v3, &v5, v4);
}

void sub_22146EB10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v17 = *(v15 - 120);
  if (v17)
  {
    *(v15 - 112) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

id sub_22146EC88(void *a1, id *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      sub_22107C1F0(a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = *a2;
    v13[2] = v12 + 1;
    sub_22107C098(a1, v13);
    v7 = a1[1];
    result = sub_22107C26C(v13);
  }

  else
  {
    result = *a2;
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_22146ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22146F8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39)
{
  v43 = *(v41 - 112);
  if (v43)
  {
    *(v41 - 104) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

void sub_221470A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, void *a39)
{
  v44 = *(v42 - 152);
  if (v44)
  {
    *(v42 - 144) = v44;
    operator delete(v44);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_221471680(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 != 0x7FFFFFFF && (a1 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (a2 == 0x7FFFFFFF)
    {
      return 0;
    }

    else
    {
      LODWORD(v2) = WORD2(a1) <= WORD2(a2);
      if (a1 > a2)
      {
        LODWORD(v2) = 0;
      }

      if (WORD2(a1) != WORD2(a2))
      {
        LODWORD(v2) = 0;
      }

      if (a1 != a2)
      {
        LODWORD(v2) = 0;
      }

      if ((a2 & 0xFFFF00000000) == 0x7FFF00000000)
      {
        return 0;
      }

      else
      {
        return v2;
      }
    }
  }

  return v2;
}

void sub_2214719C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22147259C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, TSUIndexSet *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  TSUIndexSet::~TSUIndexSet((v27 - 184));
  TSUIndexSet::~TSUIndexSet((v27 - 216));
  _Unwind_Resume(a1);
}

void sub_221472920(uint64_t a1, const char *a2)
{
  v19 = a2;
  v3 = objc_msgSend_valueForCellCoord_fetchRichTextAttributesIfPlainText_(*(a1 + 32), a2, &v19, 0);
  if (objc_msgSend_deepType_(v3, v4, *(a1 + 40), v5) != 9)
  {
    v7 = *(a1 + 40);
    v18 = 0;
    v8 = objc_msgSend_asString_outError_(v3, v6, v7, &v18);
    v11 = v18;
    if (!v11)
    {
      v12 = *(a1 + 48);
      if (v12)
      {
        objc_msgSend_nameFragmentPrecedentsForReferenceString_(v12, v9, v8, v10);
      }

      else
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = sub_221472A80;
      v13[3] = &unk_27845FBD8;
      v14 = *(a1 + 40);
      TSCECellRefSet::enumerateCellRefsUsingBlock(&v15, v13);

      sub_22107C800(&v15, v16);
    }
  }
}

void sub_221472A80(uint64_t a1, const TSCECellRef *a2)
{
  v2 = *(a1 + 32);
  v5 = 0;
  TSCERangeRef::TSCERangeRef(&v6, a2);
  v7 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  objc_msgSend_addCalculatedPrecedent_(v2, v3, &v5, v4);
}

void sub_221474BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void **a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, char a61)
{
  sub_22107C800(&a58, a59);
  a47 = &a61;
  sub_22107C2C0(&a47);
  _Block_object_dispose((v64 - 256), 8);
  v66 = *(v64 - 208);
  if (v66)
  {
    *(v64 - 200) = v66;
    operator delete(v66);
  }

  sub_22107C800(v64 - 168, *(v64 - 160));

  v67 = *(v64 - 120);
  if (v67)
  {
    *(v64 - 112) = v67;
    operator delete(v67);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221474F04(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_221474F28(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221474F40(uint64_t a1, __int128 *a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v8 = v3[6];
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - v8) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_22107C148();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      sub_2210CDBC0((v3 + 6), v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    v7 = 24 * v9 + 24;
    v15 = v3[6];
    v16 = v3[7] - v15;
    v17 = v13 - v16;
    memcpy((v13 - v16), v15, v16);
    v18 = v3[6];
    v3[6] = v17;
    v3[7] = v7;
    v3[8] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v6;
    v7 = v5 + 24;
  }

  v3[7] = v7;
}

void sub_221475BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40)
{
  v48 = *(v46 - 120);
  if (v48)
  {
    *(v46 - 112) = v48;
    operator delete(v48);
  }

  _Unwind_Resume(a1);
}

void sub_221477368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18)
{
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(a1);
}

void sub_2214778EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, uint64_t a12, uint64_t a13, void **a14, uint64_t a15, id a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  a14 = &a24;
  sub_22107C2C0(&a14);

  _Unwind_Resume(a1);
}

uint64_t *sub_221478AC0(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    sub_2210BC26C(result, a4);
  }

  return result;
}

void sub_221478B40(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_22147964C(a3, a2 - 24, v10))
      {
LABEL_77:
        v122 = *(v10 + 16);
        v98 = *v10;
        v70 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_221479908(v10, a2, a3);
      }

      else
      {

        sub_2214799F4(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_22147A1C4(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = sub_22147964C(a3, v10 + 24 * v15, v10);
      v18 = sub_22147964C(a3, a2 - 24, result + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(result + 16);
          v76 = *result;
          v19 = *v8;
          *(result + 16) = *(a2 - 8);
          *result = v19;
          goto LABEL_27;
        }

        v106 = *(result + 16);
        v82 = *result;
        v27 = *v16;
        *(result + 16) = *(v16 + 16);
        *result = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (sub_22147964C(a3, a2 - 24, result + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (sub_22147964C(a3, result + 24 * v15, result))
        {
          v103 = *(result + 16);
          v79 = *result;
          v24 = *v16;
          *(result + 16) = *(v16 + 16);
          *result = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = result + 24 * v15 - 24;
      v30 = sub_22147964C(a3, v29, result + 24);
      v31 = sub_22147964C(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(result + 40);
          v33 = *(result + 24);
          v34 = *(a2 - 32);
          *(result + 24) = *v74;
          *(result + 40) = v34;
          *v74 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v86 = *(result + 24);
          v110 = *(result + 40);
          v39 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v39;
          *(result + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_22147964C(a3, v74, v29))
          {
            v111 = *(result + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(result + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(result + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(result + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (sub_22147964C(a3, v29, result + 24))
        {
          v84 = *(result + 24);
          v108 = *(result + 40);
          v36 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v36;
          *(result + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = result + 24 * v15;
      v42 = sub_22147964C(a3, v41 + 24, result + 48);
      v43 = sub_22147964C(a3, a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(result + 64);
          v45 = *(result + 48);
          v46 = *(a2 - 56);
          *(result + 48) = *v9;
          *(result + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(result + 48);
        v114 = *(result + 64);
        v49 = *(v41 + 40);
        *(result + 48) = *(v41 + 24);
        *(result + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_22147964C(a3, a2 - 72, v41 + 24))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (sub_22147964C(a3, v41 + 24, result + 48))
        {
          v89 = *(result + 48);
          v113 = *(result + 64);
          v48 = *(v41 + 40);
          *(result + 48) = *(v41 + 24);
          *(result + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_22147964C(a3, v16, v29);
      v52 = sub_22147964C(a3, v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (sub_22147964C(a3, v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_22147964C(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(result + 16);
      v96 = *result;
      v53 = *v16;
      *(result + 16) = *(v16 + 16);
      *result = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_22147964C(a3, v10, v10 + 24 * v15);
    v21 = sub_22147964C(a3, a2 - 24, result);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_58;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *result;
      *(v16 + 16) = *(result + 16);
      *v16 = v37;
      *(result + 16) = v109;
      *result = v85;
      if (sub_22147964C(a3, a2 - 24, result))
      {
        v101 = *(result + 16);
        v77 = *result;
        v38 = *v8;
        *(result + 16) = *(a2 - 8);
        *result = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(result + 16);
      v80 = *result;
      v25 = *v8;
      *(result + 16) = *(a2 - 8);
      *result = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (sub_22147964C(a3, result, result + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *result;
        *(v16 + 16) = *(result + 16);
        *v16 = v26;
        *(result + 16) = v105;
        *result = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_22147964C(a3, result - 24, result))
    {
      v10 = sub_221479AC4(result, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_221479C24(result, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_221479D84(result, v54, a3);
    v10 = (v54 + 24);
    if (sub_221479D84((v54 + 24), a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_221478B40(result, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_221479728(v10, (v10 + 24), (v10 + 48), (a2 - 24), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_221479728(v10, (v10 + 24), (v10 + 48), (v10 + 72), a3);
      if (!sub_22147964C(a3, a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 88);
      v63 = *(v10 + 72);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *v8 = v63;
      *(a2 - 8) = v62;
      if (!sub_22147964C(a3, v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!sub_22147964C(a3, v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_22147964C(a3, v10 + 24, v10);
  v58 = sub_22147964C(a3, v8, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 40);
    v72 = *(v10 + 24);
    v73 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *v8 = v72;
    *(v8 + 16) = v71;
LABEL_92:
    if (sub_22147964C(a3, v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (sub_22147964C(a3, v8, v10 + 24))
  {
    v59 = *(v10 + 40);
    v60 = *(v10 + 24);
    v61 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *v8 = v60;
LABEL_78:
    *(v8 + 16) = v59;
  }
}

BOOL sub_22147964C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (*(a2 + 8) == *(a3 + 8) && v4 == *(a3 + 16))
  {
    v11 = *(a2 + 4);
    v12 = *(a3 + 4);
    if (v11 >= v12)
    {
      return v11 <= v12 && *a2 < *a3;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v15._lower = *(a2 + 8);
    v15._upper = v4;
    v16 = TSKUIDStruct::CFUUIDBytes(&v15);
    v17 = v6;
    v14 = *(a3 + 8);
    v15._lower = TSKUIDStruct::CFUUIDBytes(&v14);
    v15._upper = v7;
    v8 = bswap64(v16);
    v9 = bswap64(v15._lower);
    if (v8 == v9 && (v8 = bswap64(v17), v9 = bswap64(v15._upper), v8 == v9))
    {
      v10 = 0;
    }

    else if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    return v10 >> 31;
  }
}

__n128 sub_221479728(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5)
{
  v10 = sub_22147964C(a5, a2, a1);
  v11 = sub_22147964C(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[1].n128_u64[0];
      v13 = *a1;
      v14 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v14;
LABEL_9:
      *a3 = v13;
      a3[1].n128_u64[0] = v12;
      goto LABEL_10;
    }

    v21 = a1[1].n128_u64[0];
    v22 = *a1;
    v23 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v23;
    *a2 = v22;
    a2[1].n128_u64[0] = v21;
    if (sub_22147964C(a5, a3, a2))
    {
      v12 = a2[1].n128_u64[0];
      v13 = *a2;
      v24 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[1].n128_u64[0];
    v16 = *a2;
    v17 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v17;
    *a3 = v16;
    a3[1].n128_u64[0] = v15;
    if (sub_22147964C(a5, a2, a1))
    {
      v18 = a1[1].n128_u64[0];
      v19 = *a1;
      v20 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v20;
      *a2 = v19;
      a2[1].n128_u64[0] = v18;
    }
  }

LABEL_10:
  if (sub_22147964C(a5, a4, a3))
  {
    v26 = a3[1].n128_i64[0];
    v27 = *a3;
    v28 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v28;
    *a4 = v27;
    a4[1].n128_u64[0] = v26;
    if (sub_22147964C(a5, a3, a2))
    {
      v29 = a2[1].n128_u64[0];
      v30 = *a2;
      v31 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v31;
      *a3 = v30;
      a3[1].n128_u64[0] = v29;
      if (sub_22147964C(a5, a2, a1))
      {
        v32 = a1[1].n128_u64[0];
        result = *a1;
        v33 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v33;
        *a2 = result;
        a2[1].n128_u64[0] = v32;
      }
    }
  }

  return result;
}

uint64_t sub_221479908(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = sub_22147964C(a3, v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = sub_22147964C(a3, &v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_2214799F4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = sub_22147964C(a3, v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = sub_22147964C(a3, &v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

unint64_t sub_221479AC4(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if (sub_22147964C(a3, &v16, a2 - 24))
  {
    v6 = a1;
    do
    {
      v6 += 24;
    }

    while (!sub_22147964C(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 24;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_22147964C(a3, &v16, v7);
      v7 = v6 + 24;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_22147964C(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 16);
    v18 = v9;
    v10 = *v4;
    *(v6 + 16) = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 24;
    }

    while (!sub_22147964C(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_22147964C(a3, &v16, v4));
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 8);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 8) = v17;
  *v12 = v14;
  return v6;
}

char *sub_221479C24(char *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (sub_22147964C(a3, &a1[v6], &v17));
  v7 = &a1[v6];
  v8 = &a1[v6 - 24];
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!sub_22147964C(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!sub_22147964C(a3, a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (sub_22147964C(a3, v9, &v17));
      do
      {
        v10 -= 24;
      }

      while (!sub_22147964C(a3, v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 2) = v18;
  *v8 = v15;
  return v8;
}

BOOL sub_221479D84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_22147964C(a3, a1 + 24, a1);
        v17 = sub_22147964C(a3, v7, a1 + 24);
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_22147964C(a3, v7, a1 + 24))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_221479728(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_221479728(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_22147964C(a3, v8, a1 + 72))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_22147964C(a3, a1 + 72, a1 + 48))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_22147964C(a3, a1 + 48, a1 + 24))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_22147964C(a3, a1 + 24, a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_22147964C(a3, a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_22147964C(a3, a1 + 24, a1);
  v23 = sub_22147964C(a3, a1 + 48, a1 + 24);
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_22147964C(a3, a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_22147964C(a3, a1 + 24, a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_22147964C(a3, v40, v21))
    {
      v47 = *v40;
      v48 = *(v40 + 16);
      v43 = v41;
      while (1)
      {
        v44 = a1 + v43;
        *(v44 + 72) = *(a1 + v43 + 48);
        *(v44 + 88) = *(a1 + v43 + 64);
        if (v43 == -48)
        {
          break;
        }

        v43 -= 24;
        if (!sub_22147964C(a3, &v47, v44 + 24))
        {
          v45 = a1 + v43 + 72;
          goto LABEL_41;
        }
      }

      v45 = a1;
LABEL_41:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_22147A1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_22147A37C(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_22147964C(a4, v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_22147A37C(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 24);
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = sub_22147A4E8(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 2) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 2);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 2) = v24;
          sub_22147A5A8(a1, (v19 + 24), a4, 0xAAAAAAAAAAAAAAABLL * (&v19[-a1 + 24] >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_22147A37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_22147964C(a2, a1 + 24 * v12, v13 + 24))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_22147964C(a2, v13, v7))
      {
        v20 = *v7;
        v21 = *(v7 + 16);
        do
        {
          v16 = v13;
          v17 = *v13;
          *(v7 + 16) = *(v13 + 16);
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_22147964C(a2, a1 + 24 * v18, v13 + 24))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
        }

        while (!sub_22147964C(a2, v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

char *sub_22147A4E8(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = v8 + 24;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 48;
      if (sub_22147964C(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_22147A5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 24 * v8;
    v10 = a2 - 24;
    if (sub_22147964C(a3, v9, a2 - 24))
    {
      v14 = *v10;
      v15 = *(v10 + 16);
      do
      {
        v12 = v9;
        v13 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v13;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 24 * v8;
        v10 = v12;
      }

      while (sub_22147964C(a3, v9, &v14));
      result = *&v14;
      *v12 = v14;
      *(v12 + 16) = v15;
    }
  }

  return result;
}

void sub_22147A67C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3));
  if (a2 == a1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  sub_22147A6AC(a1, a2, a3, v4, 1);
}

void sub_22147A6AC(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v8 = a2 - 24;
  v74 = (a2 - 48);
  v9 = (a2 - 72);
  v10 = result;
LABEL_2:
  v11 = 1 - a4;
  while (1)
  {
    result = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v10) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return;
    }

    if (v14 == 2)
    {
      if (sub_22147B1B8(a3, a2 - 24, v10))
      {
LABEL_77:
        v122 = *(v10 + 16);
        v98 = *v10;
        v70 = *v8;
        *(v10 + 16) = *(v8 + 16);
        *v10 = v70;
        *v8 = v98;
        v59 = v122;
        goto LABEL_78;
      }

      return;
    }

LABEL_10:
    if (v13 <= 575)
    {
      if (a5)
      {

        sub_22147B474(v10, a2, a3);
      }

      else
      {

        sub_22147B560(v10, a2, a3);
      }

      return;
    }

    if (v12 == 1)
    {
      if (v10 != a2)
      {

        sub_22147BD30(v10, a2, a2, a3);
      }

      return;
    }

    v15 = v14 >> 1;
    v16 = v10 + 24 * (v14 >> 1);
    if (v13 >= 0xC01)
    {
      v17 = sub_22147B1B8(a3, v10 + 24 * v15, v10);
      v18 = sub_22147B1B8(a3, a2 - 24, result + 24 * v15);
      if (v17)
      {
        if (v18)
        {
          v100 = *(result + 16);
          v76 = *result;
          v19 = *v8;
          *(result + 16) = *(a2 - 8);
          *result = v19;
          goto LABEL_27;
        }

        v106 = *(result + 16);
        v82 = *result;
        v27 = *v16;
        *(result + 16) = *(v16 + 16);
        *result = v27;
        *(v16 + 16) = v106;
        *v16 = v82;
        if (sub_22147B1B8(a3, a2 - 24, result + 24 * v15))
        {
          v100 = *(v16 + 16);
          v76 = *v16;
          v28 = *v8;
          *(v16 + 16) = *(a2 - 8);
          *v16 = v28;
LABEL_27:
          *v8 = v76;
          *(a2 - 8) = v100;
        }
      }

      else if (v18)
      {
        v102 = *(v16 + 16);
        v78 = *v16;
        v23 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v23;
        *v8 = v78;
        *(a2 - 8) = v102;
        if (sub_22147B1B8(a3, result + 24 * v15, result))
        {
          v103 = *(result + 16);
          v79 = *result;
          v24 = *v16;
          *(result + 16) = *(v16 + 16);
          *result = v24;
          *(v16 + 16) = v103;
          *v16 = v79;
        }
      }

      v29 = result + 24 * v15 - 24;
      v30 = sub_22147B1B8(a3, v29, result + 24);
      v31 = sub_22147B1B8(a3, v74, v29);
      if (v30)
      {
        if (v31)
        {
          v32 = *(result + 40);
          v33 = *(result + 24);
          v34 = *(a2 - 32);
          *(result + 24) = *v74;
          *(result + 40) = v34;
          *v74 = v33;
          *(a2 - 32) = v32;
        }

        else
        {
          v86 = *(result + 24);
          v110 = *(result + 40);
          v39 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v39;
          *(result + 24 * v15 - 8) = v110;
          *v29 = v86;
          if (sub_22147B1B8(a3, v74, v29))
          {
            v111 = *(result + 24 * v15 - 8);
            v87 = *v29;
            v40 = *v74;
            *(result + 24 * v15 - 8) = *(a2 - 32);
            *v29 = v40;
            *v74 = v87;
            *(a2 - 32) = v111;
          }
        }
      }

      else if (v31)
      {
        v107 = *(result + 24 * v15 - 8);
        v83 = *v29;
        v35 = *v74;
        *(result + 24 * v15 - 8) = *(a2 - 32);
        *v29 = v35;
        *v74 = v83;
        *(a2 - 32) = v107;
        if (sub_22147B1B8(a3, v29, result + 24))
        {
          v84 = *(result + 24);
          v108 = *(result + 40);
          v36 = *(result + 24 * v15 - 8);
          *(result + 24) = *v29;
          *(result + 40) = v36;
          *(result + 24 * v15 - 8) = v108;
          *v29 = v84;
        }
      }

      v41 = result + 24 * v15;
      v42 = sub_22147B1B8(a3, v41 + 24, result + 48);
      v43 = sub_22147B1B8(a3, a2 - 72, v41 + 24);
      if (v42)
      {
        if (v43)
        {
          v44 = *(result + 64);
          v45 = *(result + 48);
          v46 = *(a2 - 56);
          *(result + 48) = *v9;
          *(result + 64) = v46;
          *v9 = v45;
          goto LABEL_47;
        }

        v90 = *(result + 48);
        v114 = *(result + 64);
        v49 = *(v41 + 40);
        *(result + 48) = *(v41 + 24);
        *(result + 64) = v49;
        *(v41 + 40) = v114;
        *(v41 + 24) = v90;
        if (sub_22147B1B8(a3, a2 - 72, v41 + 24))
        {
          v115 = *(v41 + 40);
          v91 = *(v41 + 24);
          v50 = *v9;
          *(v41 + 40) = *(a2 - 56);
          *(v41 + 24) = v50;
          *v9 = v91;
          v44 = v115;
LABEL_47:
          *(a2 - 56) = v44;
        }
      }

      else if (v43)
      {
        v112 = *(v41 + 40);
        v88 = *(v41 + 24);
        v47 = *v9;
        *(v41 + 40) = *(a2 - 56);
        *(v41 + 24) = v47;
        *v9 = v88;
        *(a2 - 56) = v112;
        if (sub_22147B1B8(a3, v41 + 24, result + 48))
        {
          v89 = *(result + 48);
          v113 = *(result + 64);
          v48 = *(v41 + 40);
          *(result + 48) = *(v41 + 24);
          *(result + 64) = v48;
          *(v41 + 40) = v113;
          *(v41 + 24) = v89;
        }
      }

      v51 = sub_22147B1B8(a3, v16, v29);
      v52 = sub_22147B1B8(a3, v41 + 24, v16);
      if (v51)
      {
        if (v52)
        {
          v116 = *(v29 + 16);
          v92 = *v29;
          *v29 = *(v41 + 24);
          *(v29 + 16) = *(v41 + 40);
          goto LABEL_56;
        }

        v119 = *(v29 + 16);
        v95 = *v29;
        *v29 = *v16;
        *(v29 + 16) = *(v16 + 16);
        *(v16 + 16) = v119;
        *v16 = v95;
        if (sub_22147B1B8(a3, v41 + 24, v16))
        {
          v116 = *(v16 + 16);
          v92 = *v16;
          *v16 = *(v41 + 24);
          *(v16 + 16) = *(v41 + 40);
LABEL_56:
          *(v41 + 40) = v116;
          *(v41 + 24) = v92;
        }
      }

      else if (v52)
      {
        v117 = *(v16 + 16);
        v93 = *v16;
        *v16 = *(v41 + 24);
        *(v16 + 16) = *(v41 + 40);
        *(v41 + 40) = v117;
        *(v41 + 24) = v93;
        if (sub_22147B1B8(a3, v16, v29))
        {
          v118 = *(v29 + 16);
          v94 = *v29;
          *v29 = *v16;
          *(v29 + 16) = *(v16 + 16);
          *(v16 + 16) = v118;
          *v16 = v94;
        }
      }

      v120 = *(result + 16);
      v96 = *result;
      v53 = *v16;
      *(result + 16) = *(v16 + 16);
      *result = v53;
      *(v16 + 16) = v120;
      *v16 = v96;
      goto LABEL_58;
    }

    v20 = sub_22147B1B8(a3, v10, v10 + 24 * v15);
    v21 = sub_22147B1B8(a3, a2 - 24, result);
    if (v20)
    {
      if (v21)
      {
        v101 = *(v16 + 16);
        v77 = *v16;
        v22 = *v8;
        *(v16 + 16) = *(a2 - 8);
        *v16 = v22;
LABEL_36:
        *v8 = v77;
        *(a2 - 8) = v101;
        goto LABEL_58;
      }

      v109 = *(v16 + 16);
      v85 = *v16;
      v37 = *result;
      *(v16 + 16) = *(result + 16);
      *v16 = v37;
      *(result + 16) = v109;
      *result = v85;
      if (sub_22147B1B8(a3, a2 - 24, result))
      {
        v101 = *(result + 16);
        v77 = *result;
        v38 = *v8;
        *(result + 16) = *(a2 - 8);
        *result = v38;
        goto LABEL_36;
      }
    }

    else if (v21)
    {
      v104 = *(result + 16);
      v80 = *result;
      v25 = *v8;
      *(result + 16) = *(a2 - 8);
      *result = v25;
      *v8 = v80;
      *(a2 - 8) = v104;
      if (sub_22147B1B8(a3, result, result + 24 * v15))
      {
        v105 = *(v16 + 16);
        v81 = *v16;
        v26 = *result;
        *(v16 + 16) = *(result + 16);
        *v16 = v26;
        *(result + 16) = v105;
        *result = v81;
      }
    }

LABEL_58:
    if ((a5 & 1) == 0 && !sub_22147B1B8(a3, result - 24, result))
    {
      v10 = sub_22147B630(result, a2, a3);
      goto LABEL_65;
    }

    v54 = sub_22147B790(result, a2, a3);
    if ((v55 & 1) == 0)
    {
      goto LABEL_63;
    }

    v56 = sub_22147B8F0(result, v54, a3);
    v10 = (v54 + 24);
    if (sub_22147B8F0((v54 + 24), a2, a3))
    {
      a4 = -v12;
      a2 = v54;
      if (v56)
      {
        return;
      }

      goto LABEL_1;
    }

    v11 = v12 + 1;
    if (!v56)
    {
LABEL_63:
      sub_22147A6AC(result, v54, a3, -v12, a5 & 1);
      v10 = (v54 + 24);
LABEL_65:
      a5 = 0;
      a4 = -v12;
      goto LABEL_2;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      sub_22147B294(v10, (v10 + 24), (v10 + 48), (a2 - 24), a3);
      return;
    }

    if (v14 == 5)
    {
      sub_22147B294(v10, (v10 + 24), (v10 + 48), (v10 + 72), a3);
      if (!sub_22147B1B8(a3, a2 - 24, v10 + 72))
      {
        return;
      }

      v62 = *(v10 + 88);
      v63 = *(v10 + 72);
      v64 = *(a2 - 8);
      *(v10 + 72) = *v8;
      *(v10 + 88) = v64;
      *v8 = v63;
      *(a2 - 8) = v62;
      if (!sub_22147B1B8(a3, v10 + 72, v10 + 48))
      {
        return;
      }

      v65 = *(v10 + 64);
      v66 = *(v10 + 48);
      *(v10 + 48) = *(v10 + 72);
      *(v10 + 64) = *(v10 + 88);
      *(v10 + 72) = v66;
      *(v10 + 88) = v65;
      if (!sub_22147B1B8(a3, v10 + 48, v10 + 24))
      {
        return;
      }

      v67 = *(v10 + 40);
      v68 = *(v10 + 24);
      *(v10 + 24) = *(v10 + 48);
      *(v10 + 40) = *(v10 + 64);
      *(v10 + 48) = v68;
      *(v10 + 64) = v67;
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v57 = sub_22147B1B8(a3, v10 + 24, v10);
  v58 = sub_22147B1B8(a3, v8, v10 + 24);
  if (!v57)
  {
    if (!v58)
    {
      return;
    }

    v71 = *(v10 + 40);
    v72 = *(v10 + 24);
    v73 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v73;
    *v8 = v72;
    *(v8 + 16) = v71;
LABEL_92:
    if (sub_22147B1B8(a3, v10 + 24, v10))
    {
      v123 = *(v10 + 16);
      v99 = *v10;
      *v10 = *(v10 + 24);
      *(v10 + 16) = *(v10 + 40);
      *(v10 + 24) = v99;
      *(v10 + 40) = v123;
    }

    return;
  }

  if (v58)
  {
    goto LABEL_77;
  }

  v121 = *(v10 + 16);
  v97 = *v10;
  *v10 = *(v10 + 24);
  *(v10 + 16) = *(v10 + 40);
  *(v10 + 24) = v97;
  *(v10 + 40) = v121;
  if (sub_22147B1B8(a3, v8, v10 + 24))
  {
    v59 = *(v10 + 40);
    v60 = *(v10 + 24);
    v61 = *(v8 + 16);
    *(v10 + 24) = *v8;
    *(v10 + 40) = v61;
    *v8 = v60;
LABEL_78:
    *(v8 + 16) = v59;
  }
}

BOOL sub_22147B1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  if (*(a2 + 8) == *(a3 + 8) && v4 == *(a3 + 16))
  {
    if (*a2 >= *a3)
    {
      return *a2 <= *a3 && *(a2 + 4) < *(a3 + 4);
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v13._lower = *(a2 + 8);
    v13._upper = v4;
    v14 = TSKUIDStruct::CFUUIDBytes(&v13);
    v15 = v6;
    v12 = *(a3 + 8);
    v13._lower = TSKUIDStruct::CFUUIDBytes(&v12);
    v13._upper = v7;
    v8 = bswap64(v14);
    v9 = bswap64(v13._lower);
    if (v8 == v9 && (v8 = bswap64(v15), v9 = bswap64(v13._upper), v8 == v9))
    {
      v10 = 0;
    }

    else if (v8 < v9)
    {
      v10 = -1;
    }

    else
    {
      v10 = 1;
    }

    return v10 >> 31;
  }
}

__n128 sub_22147B294(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, uint64_t a5)
{
  v10 = sub_22147B1B8(a5, a2, a1);
  v11 = sub_22147B1B8(a5, a3, a2);
  if (v10)
  {
    if (v11)
    {
      v12 = a1[1].n128_u64[0];
      v13 = *a1;
      v14 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v14;
LABEL_9:
      *a3 = v13;
      a3[1].n128_u64[0] = v12;
      goto LABEL_10;
    }

    v21 = a1[1].n128_u64[0];
    v22 = *a1;
    v23 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v23;
    *a2 = v22;
    a2[1].n128_u64[0] = v21;
    if (sub_22147B1B8(a5, a3, a2))
    {
      v12 = a2[1].n128_u64[0];
      v13 = *a2;
      v24 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v24;
      goto LABEL_9;
    }
  }

  else if (v11)
  {
    v15 = a2[1].n128_u64[0];
    v16 = *a2;
    v17 = a3[1].n128_u64[0];
    *a2 = *a3;
    a2[1].n128_u64[0] = v17;
    *a3 = v16;
    a3[1].n128_u64[0] = v15;
    if (sub_22147B1B8(a5, a2, a1))
    {
      v18 = a1[1].n128_u64[0];
      v19 = *a1;
      v20 = a2[1].n128_u64[0];
      *a1 = *a2;
      a1[1].n128_u64[0] = v20;
      *a2 = v19;
      a2[1].n128_u64[0] = v18;
    }
  }

LABEL_10:
  if (sub_22147B1B8(a5, a4, a3))
  {
    v26 = a3[1].n128_i64[0];
    v27 = *a3;
    v28 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v28;
    *a4 = v27;
    a4[1].n128_u64[0] = v26;
    if (sub_22147B1B8(a5, a3, a2))
    {
      v29 = a2[1].n128_u64[0];
      v30 = *a2;
      v31 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v31;
      *a3 = v30;
      a3[1].n128_u64[0] = v29;
      if (sub_22147B1B8(a5, a2, a1))
      {
        v32 = a1[1].n128_u64[0];
        result = *a1;
        v33 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v33;
        *a2 = result;
        a2[1].n128_u64[0] = v32;
      }
    }
  }

  return result;
}

uint64_t sub_22147B474(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v17 = v3;
    v18 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = 0;
      v10 = result;
      do
      {
        v11 = v10;
        v10 = v7;
        result = sub_22147B1B8(a3, v7, v11);
        if (result)
        {
          v15 = *v10;
          v16 = *(v10 + 16);
          v12 = v9;
          while (1)
          {
            v13 = v6 + v12;
            *(v13 + 24) = *(v6 + v12);
            *(v13 + 40) = *(v6 + v12 + 16);
            if (!v12)
            {
              break;
            }

            v12 -= 24;
            result = sub_22147B1B8(a3, &v15, v12 + v6);
            if ((result & 1) == 0)
            {
              v14 = v6 + v12 + 24;
              goto LABEL_10;
            }
          }

          v14 = v6;
LABEL_10:
          *v14 = v15;
          *(v14 + 16) = v16;
        }

        v7 = v10 + 24;
        v9 += 24;
      }

      while (v10 + 24 != a2);
    }
  }

  return result;
}

uint64_t sub_22147B560(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v14 = v3;
    v15 = v4;
    v6 = result;
    v7 = result + 24;
    if (result + 24 != a2)
    {
      v9 = result - 24;
      do
      {
        v10 = v6;
        v6 = v7;
        result = sub_22147B1B8(a3, v7, v10);
        if (result)
        {
          v12 = *v6;
          v13 = *(v6 + 16);
          v11 = v9;
          do
          {
            *(v11 + 48) = *(v11 + 24);
            *(v11 + 64) = *(v11 + 40);
            result = sub_22147B1B8(a3, &v12, v11);
            v11 -= 24;
          }

          while ((result & 1) != 0);
          *(v11 + 48) = v12;
          *(v11 + 64) = v13;
        }

        v7 = v6 + 24;
        v9 += 24;
      }

      while (v6 + 24 != a2);
    }
  }

  return result;
}

unint64_t sub_22147B630(__int128 *a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  v16 = *a1;
  v17 = *(a1 + 2);
  if (sub_22147B1B8(a3, &v16, a2 - 24))
  {
    v6 = a1;
    do
    {
      v6 += 24;
    }

    while (!sub_22147B1B8(a3, &v16, v6));
  }

  else
  {
    v7 = a1 + 24;
    do
    {
      v6 = v7;
      if (v7 >= v4)
      {
        break;
      }

      v8 = sub_22147B1B8(a3, &v16, v7);
      v7 = v6 + 24;
    }

    while (!v8);
  }

  if (v6 < v4)
  {
    do
    {
      v4 -= 24;
    }

    while (sub_22147B1B8(a3, &v16, v4));
  }

  while (v6 < v4)
  {
    v9 = *v6;
    v19 = *(v6 + 16);
    v18 = v9;
    v10 = *v4;
    *(v6 + 16) = *(v4 + 16);
    *v6 = v10;
    v11 = v18;
    *(v4 + 16) = v19;
    *v4 = v11;
    do
    {
      v6 += 24;
    }

    while (!sub_22147B1B8(a3, &v16, v6));
    do
    {
      v4 -= 24;
    }

    while (sub_22147B1B8(a3, &v16, v4));
  }

  v12 = (v6 - 24);
  if ((v6 - 24) != a1)
  {
    v13 = *v12;
    *(a1 + 2) = *(v6 - 8);
    *a1 = v13;
  }

  v14 = v16;
  *(v6 - 8) = v17;
  *v12 = v14;
  return v6;
}

char *sub_22147B790(char *a1, unint64_t a2, uint64_t a3)
{
  v6 = 0;
  v17 = *a1;
  v18 = *(a1 + 2);
  do
  {
    v6 += 24;
  }

  while (sub_22147B1B8(a3, &a1[v6], &v17));
  v7 = &a1[v6];
  v8 = &a1[v6 - 24];
  if (v6 == 24)
  {
    do
    {
      if (v7 >= a2)
      {
        break;
      }

      a2 -= 24;
    }

    while (!sub_22147B1B8(a3, a2, &v17));
  }

  else
  {
    do
    {
      a2 -= 24;
    }

    while (!sub_22147B1B8(a3, a2, &v17));
  }

  if (v7 < a2)
  {
    v9 = &a1[v6];
    v10 = a2;
    do
    {
      v19 = *v9;
      v11 = v19;
      v20 = *(v9 + 2);
      v12 = v20;
      v13 = *(v10 + 16);
      *v9 = *v10;
      *(v9 + 2) = v13;
      *(v10 + 16) = v12;
      *v10 = v11;
      do
      {
        v9 += 24;
      }

      while (sub_22147B1B8(a3, v9, &v17));
      do
      {
        v10 -= 24;
      }

      while (!sub_22147B1B8(a3, v10, &v17));
    }

    while (v9 < v10);
    v8 = v9 - 24;
  }

  if (v8 != a1)
  {
    v14 = *v8;
    *(a1 + 2) = *(v8 + 2);
    *a1 = v14;
  }

  v15 = v17;
  *(v8 + 2) = v18;
  *v8 = v15;
  return v8;
}

BOOL sub_22147B8F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v7 = a2 - 24;
        v16 = sub_22147B1B8(a3, a1 + 24, a1);
        v17 = sub_22147B1B8(a3, v7, a1 + 24);
        if (v16)
        {
          if (!v17)
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
            if (!sub_22147B1B8(a3, v7, a1 + 24))
            {
              return 1;
            }

            v18 = *(a1 + 40);
            v19 = *(a1 + 24);
            v37 = *(v7 + 16);
            *(a1 + 24) = *v7;
            *(a1 + 40) = v37;
            goto LABEL_16;
          }

LABEL_15:
          v18 = *(a1 + 16);
          v19 = *a1;
          v20 = *(v7 + 16);
          *a1 = *v7;
          *(a1 + 16) = v20;
LABEL_16:
          *v7 = v19;
          *(v7 + 16) = v18;
          return 1;
        }

        if (!v17)
        {
          return 1;
        }

        v26 = *(a1 + 40);
        v27 = *(a1 + 24);
        v28 = *(v7 + 16);
        *(a1 + 24) = *v7;
        *(a1 + 40) = v28;
        *v7 = v27;
        *(v7 + 16) = v26;
        break;
      case 4:
        sub_22147B294(a1, (a1 + 24), (a1 + 48), (a2 - 24), a3);
        return 1;
      case 5:
        v8 = a2 - 24;
        sub_22147B294(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (!sub_22147B1B8(a3, v8, a1 + 72))
        {
          return 1;
        }

        v9 = *(a1 + 88);
        v10 = *(a1 + 72);
        v11 = *(v8 + 16);
        *(a1 + 72) = *v8;
        *(a1 + 88) = v11;
        *v8 = v10;
        *(v8 + 16) = v9;
        if (!sub_22147B1B8(a3, a1 + 72, a1 + 48))
        {
          return 1;
        }

        v12 = *(a1 + 64);
        v13 = *(a1 + 48);
        *(a1 + 48) = *(a1 + 72);
        *(a1 + 64) = *(a1 + 88);
        *(a1 + 72) = v13;
        *(a1 + 88) = v12;
        if (!sub_22147B1B8(a3, a1 + 48, a1 + 24))
        {
          return 1;
        }

        v14 = *(a1 + 40);
        v15 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v15;
        *(a1 + 64) = v14;
        break;
      default:
        goto LABEL_17;
    }

    if (sub_22147B1B8(a3, a1 + 24, a1))
    {
      v29 = *(a1 + 16);
      v30 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v30;
      *(a1 + 40) = v29;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 24;
    if (!sub_22147B1B8(a3, a2 - 24, a1))
    {
      return 1;
    }

    goto LABEL_15;
  }

LABEL_17:
  v21 = (a1 + 48);
  v22 = sub_22147B1B8(a3, a1 + 24, a1);
  v23 = sub_22147B1B8(a3, a1 + 48, a1 + 24);
  if (v22)
  {
    if (v23)
    {
      v24 = *(a1 + 16);
      v25 = *a1;
      *a1 = *v21;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (!sub_22147B1B8(a3, a1 + 48, a1 + 24))
      {
        goto LABEL_33;
      }

      v24 = *(a1 + 40);
      v25 = *(a1 + 24);
      *(a1 + 24) = *v21;
      *(a1 + 40) = *(a1 + 64);
    }

    *v21 = v25;
    *(a1 + 64) = v24;
  }

  else if (v23)
  {
    v31 = *(a1 + 40);
    v32 = *(a1 + 24);
    *(a1 + 24) = *v21;
    *(a1 + 40) = *(a1 + 64);
    *v21 = v32;
    *(a1 + 64) = v31;
    if (sub_22147B1B8(a3, a1 + 24, a1))
    {
      v33 = *(a1 + 16);
      v34 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v34;
      *(a1 + 40) = v33;
    }
  }

LABEL_33:
  v40 = a1 + 72;
  if (a1 + 72 == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    if (sub_22147B1B8(a3, v40, v21))
    {
      v47 = *v40;
      v48 = *(v40 + 16);
      v43 = v41;
      while (1)
      {
        v44 = a1 + v43;
        *(v44 + 72) = *(a1 + v43 + 48);
        *(v44 + 88) = *(a1 + v43 + 64);
        if (v43 == -48)
        {
          break;
        }

        v43 -= 24;
        if (!sub_22147B1B8(a3, &v47, v44 + 24))
        {
          v45 = a1 + v43 + 72;
          goto LABEL_41;
        }
      }

      v45 = a1;
LABEL_41:
      *v45 = v47;
      *(v45 + 16) = v48;
      if (++v42 == 8)
      {
        return v40 + 24 == a2;
      }
    }

    v21 = v40;
    v41 += 24;
    v40 += 24;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_22147BD30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = a1 + 24 * v10;
      do
      {
        sub_22147BEE8(a1, a4, v9, v12);
        v12 -= 24;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        if (sub_22147B1B8(a4, v13, a1))
        {
          v14 = *(v13 + 16);
          v15 = *v13;
          v16 = *(a1 + 16);
          *v13 = *a1;
          *(v13 + 16) = v16;
          *a1 = v15;
          *(a1 + 16) = v14;
          sub_22147BEE8(a1, a4, v9, a1);
        }

        v13 += 24;
      }

      while (v13 != a3);
    }

    if (v8 >= 25)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
      v18 = (a2 - 24);
      do
      {
        v23 = *a1;
        v24 = *(a1 + 16);
        v19 = sub_22147C054(a1, a4, v17);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 2) = v24;
        }

        else
        {
          v20 = *v18;
          *(v19 + 2) = *(v18 + 2);
          *v19 = v20;
          *v18 = v23;
          *(v18 + 2) = v24;
          sub_22147C114(a1, (v19 + 24), a4, 0xAAAAAAAAAAAAAAABLL * (&v19[-a1 + 24] >> 3));
        }

        v18 = (v18 - 24);
      }

      while (v17-- > 2);
    }

    return v13;
  }

  return a3;
}

__n128 sub_22147BEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 - 2;
  if (a3 >= 2)
  {
    v22 = v4;
    v23 = v5;
    v7 = a4;
    v9 = v6 >> 1;
    if ((v6 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - a1) >> 3)))
    {
      v12 = (0x5555555555555556 * ((a4 - a1) >> 3)) | 1;
      v13 = a1 + 24 * v12;
      v14 = 0x5555555555555556 * ((a4 - a1) >> 3) + 2;
      if (v14 < a3 && sub_22147B1B8(a2, a1 + 24 * v12, v13 + 24))
      {
        v13 += 24;
        v12 = v14;
      }

      if (!sub_22147B1B8(a2, v13, v7))
      {
        v20 = *v7;
        v21 = *(v7 + 16);
        do
        {
          v16 = v13;
          v17 = *v13;
          *(v7 + 16) = *(v13 + 16);
          *v7 = v17;
          if (v9 < v12)
          {
            break;
          }

          v18 = (2 * v12) | 1;
          v13 = a1 + 24 * v18;
          v19 = 2 * v12 + 2;
          if (v19 < a3 && sub_22147B1B8(a2, a1 + 24 * v18, v13 + 24))
          {
            v13 += 24;
            v18 = v19;
          }

          v7 = v16;
          v12 = v18;
        }

        while (!sub_22147B1B8(a2, v13, &v20));
        result = v20;
        v16[1].n128_u64[0] = v21;
        *v16 = result;
      }
    }
  }

  return result;
}

char *sub_22147C054(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = a1 + 24 * v6;
    v9 = v8 + 24;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = v8 + 48;
      if (sub_22147B1B8(a2, (v8 + 24), (v8 + 48)))
      {
        v9 = v12;
        v10 = v11;
      }
    }

    v13 = *v9;
    *(a1 + 2) = *(v9 + 2);
    *a1 = v13;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

double sub_22147C114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v16 = v4;
    v17 = v5;
    v8 = (a4 - 2) >> 1;
    v9 = a1 + 24 * v8;
    v10 = a2 - 24;
    if (sub_22147B1B8(a3, v9, a2 - 24))
    {
      v14 = *v10;
      v15 = *(v10 + 16);
      do
      {
        v12 = v9;
        v13 = *v9;
        *(v10 + 16) = *(v9 + 16);
        *v10 = v13;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v9 = a1 + 24 * v8;
        v10 = v12;
      }

      while (sub_22147B1B8(a3, v9, &v14));
      result = *&v14;
      *v12 = v14;
      *(v12 + 16) = v15;
    }
  }

  return result;
}

void sub_22147C698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_221122744(va);
  _Unwind_Resume(a1);
}

void sub_22147C7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

TSCEReferenceSet *sub_22147C7F0(uint64_t a1, const TSCEInternalCellReference *a2, uint64_t a3, uint64_t a4)
{
  result = TSCEReferenceSet::insertRef(*(a1 + 40), a2, a3, a4);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  return result;
}

void *sub_22147CC24(void *a1, uint64_t *a2)
{
  v2 = a1[4];
  *&v5[0] = a2;
  v3 = sub_22147D360((v2 + 48), a2, &unk_2217E1E08, v5);
  TSKMakeUIDStructCoord();
  return sub_22147D60C(v3 + 4, v5, v5);
}

void sub_22147D01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_22141E4F8(va);
  _Unwind_Resume(a1);
}

void *sub_22147D0A0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = v4 ^ *a2;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_22;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ *a2;
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_22;
    }

LABEL_21:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_22;
    }
  }

  if (v10[2] != *a2 || v10[3] != v4)
  {
    goto LABEL_21;
  }

  return v10;
}

void sub_22147D300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22147D314(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22147D314(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_22141E4F8(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t **sub_22147D360(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *(a2 + 4);
  v5 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_24;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = (*a2 + (*(a2 + 2) << 16)) ^ v4;
    if (*&v6 <= v5)
    {
      v8 = v5 % v6.i32[0];
    }
  }

  else
  {
    v8 = (v6.i32[0] - 1) & v5;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_24:
    operator new();
  }

  v11 = *a2;
  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_24;
    }

LABEL_23:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_24;
    }
  }

  v13 = v10[2];
  v15 = v11 == v13;
  v14 = (v13 ^ v11) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (!v15 || v4 != *(v10 + 12))
  {
    goto LABEL_23;
  }

  return v10;
}

void sub_22147D5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

void *sub_22147D60C(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  v6 = v4 ^ v3 ^ *a2 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ v3 ^ *a2 ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v11[4] != v3 || v11[5] != v4 || v11[2] != *a2 || v11[3] != v5)
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t *sub_22147D86C(void *a1, void *a2)
{
  result = sub_221280960(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_22147D8A4(void *a1, void *a2)
{
  result = sub_2210875C4(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22147D314(v4);
    return 1;
  }

  return result;
}

uint64_t ***sub_22147D8F0(void *a1, uint64_t *a2)
{
  result = sub_221123474(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_22141E170(v4);
    return 1;
  }

  return result;
}

void sub_22147D93C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        *(v8 + 1) = *(v4 + 1);
        sub_2212DFCA0((v8 + 4), (v4 + 4));
        v10 = *v8;
        v11 = v8[3] ^ v8[2];
        v8[1] = v11;
        v12 = sub_2211F2A14(a1, v11, v8 + 2);
        sub_2210BD408(a1, v8, v12);
        v4 = *v4;
        if (!v10)
        {
          break;
        }

        v8 = v10;
      }

      while (v4 != a3);
    }

    sub_22141E534(a1, v10);
  }

  if (v4 != a3)
  {
    sub_22147DA5C(a1);
  }
}

void sub_22147DA2C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_22141E534(v1, v2);
  __cxa_rethrow();
}

void sub_22147DACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141DE78(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22147DB74(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22147DBEC(a1, i + 2, i + 1);
  }

  return a1;
}

void *sub_22147DBEC(void *a1, void *a2, _OWORD *a3)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[1];
  v6 = v4 ^ v3 ^ *a2 ^ v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_21;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ v3 ^ *a2 ^ v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_21:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_21;
    }

LABEL_20:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_21;
    }
  }

  if (v11[4] != v3 || v11[5] != v4 || v11[2] != *a2 || v11[3] != v5)
  {
    goto LABEL_20;
  }

  return v11;
}

uint64_t sub_22147DE4C(uint64_t a1)
{
  sub_22147DE88(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_22147DE88(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_22141E4F8((v2 + 4));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_22147FF8C(uint64_t a1, char *__s)
{
  *(a1 + 16) |= 1u;
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_22108CD88();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v6 = v3;
  if (v3)
  {
    memcpy(&__dst, __s, v3);
  }

  *(&__dst + v4) = 0;
  google::protobuf::internal::ArenaStringPtr::Set();
  if (v6 < 0)
  {
    operator delete(__dst);
  }
}

void sub_221480084(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_22148024C(void *a1, uint64_t a2, void *a3, _DWORD *a4)
{
  v10 = a3;
  if (a1)
  {
    v11 = objc_msgSend_init(a1, v7, v8, v9);
    a1 = v11;
    if (v11)
    {
      *(v11 + 32) = *(a2 + 44);
      *(v11 + 8) = *(a2 + 48);
      *(v11 + 12) = *(a2 + 52);
      v12 = *(a2 + 16);
      if (v12)
      {
        v13 = *(a2 + 24);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = sub_221480440;
        v24[3] = &unk_27845DF50;
        v25 = v11;
        v14 = v10;
        v15 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v14, v16, v13, v15, 0, v24);

        v12 = *(a2 + 16);
      }

      if ((v12 & 2) != 0)
      {
        v17 = *(a2 + 32);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = sub_22148044C;
        v22[3] = &unk_27845DF78;
        v23 = a1;
        v18 = v10;
        v19 = objc_opt_class();
        objc_msgSend_readReferenceMessage_class_protocol_completion_(v18, v20, v17, v19, 0, v22);
      }
    }

    if (a4)
    {
      *a4 = *(a2 + 40);
    }
  }

  return a1;
}

void sub_221480458(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v18 = a3;
  if (a1)
  {
    v8 = *(a2 + 16);
    *(a2 + 40) = a4;
    v9 = *(a1 + 32);
    *(a2 + 16) = v8 | 0xC;
    *(a2 + 44) = v9;
    v10 = *(a1 + 8);
    *(a2 + 16) = v8 | 0x1C;
    *(a2 + 48) = v10;
    v11 = *(a1 + 12);
    *(a2 + 16) = v8 | 0x3C;
    *(a2 + 52) = v11;
    v12 = *(a1 + 16);
    if (v12)
    {
      *(a2 + 16) = v8 | 0x3D;
      v13 = *(a2 + 24);
      if (!v13)
      {
        v14 = *(a2 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v13 = MEMORY[0x223DA0390](v14);
        *(a2 + 24) = v13;
      }

      objc_msgSend_setStrongReference_message_(v18, v7, v12, v13);
    }

    v15 = *(a1 + 24);
    if (v15)
    {
      *(a2 + 16) |= 2u;
      v16 = *(a2 + 32);
      if (!v16)
      {
        v17 = *(a2 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v16 = MEMORY[0x223DA0390](v17);
        *(a2 + 32) = v16;
      }

      objc_msgSend_setStrongReference_message_(v18, v7, v15, v16);
    }
  }
}

void sub_221480590(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v18 = v3;
    objc_msgSend_size(v3, v4, v5, v6);
    a1[4] = v7;
    v11 = objc_msgSend_textStyle(v18, v8, v9, v10);
    v12 = a1[3];
    a1[3] = v11;

    v16 = objc_msgSend_cellStyle(v18, v13, v14, v15);
    v17 = a1[2];
    a1[2] = v16;

    v3 = v18;
  }
}

void sub_221480CFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, id a14)
{
  if (v18)
  {
  }

  _Unwind_Resume(a1);
}

void sub_221481850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214818D8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214818F0(uint64_t a1, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 32) + 8) + 40);
  if (v6)
  {
    objc_msgSend_appendString_(v6, a2, @" | ", a4);
  }

  else
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  if (a2->_refType - 1 >= 2)
  {
    v14 = *(*(*(a1 + 32) + 8) + 40);
    if (a2->_refType)
    {
      v19 = TSCEAnyRef::description(a2);
      objc_msgSend_appendFormat_(v14, v17, @"Unexpected refType: %@", v18, v19);
    }

    else
    {
      v19 = NSStringFromTSUCellCoord();
      objc_msgSend_appendString_(v14, v15, v19, v16);
    }
  }

  else
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    v19 = NSStringFromTSUCellCoord();
    v11 = NSStringFromTSUCellCoord();
    objc_msgSend_appendFormat_(v10, v12, @"%@:%@", v13, v19, v11);
  }
}

void sub_221483250(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2214842D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221484658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2214846C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2214846DC(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = a2;
  objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(*(*(*(a1 + 40) + 8) + 40), v5, v14, a3, *(a1 + 56));
  if (objc_msgSend_count(*(*(*(a1 + 40) + 8) + 40), v6, v7, v8) >= *(a1 + 48))
  {
    objc_msgSend_addObject_(*(a1 + 32), v9, *(*(*(a1 + 40) + 8) + 40), v10);
    v11 = objc_opt_new();
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }
}

void sub_221484C78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27, ...)
{
  va_start(va, a27);

  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 152), 8);

  _Unwind_Resume(a1);
}

__n128 sub_221484CC0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_221484CD0(uint64_t a1, void *a2, uint64_t *a3)
{
  v36 = a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (!v6 || (v7 = *(*(a1 + 48) + 8), *(v7 + 48) != a3[1]) || *(v7 + 56) != a3[2])
  {
    v8 = *(a1 + 64);
    v9 = *(v8 + 32);
    if (!v9)
    {
      goto LABEL_9;
    }

    v10 = *(v8 + 24);
    v11 = *v9;
    if (v10 < *v9)
    {
      *(v8 + 24) = v10 + 1;
      v12 = *&v9[2 * v10 + 2];
LABEL_11:
      *(*(*(a1 + 40) + 8) + 24) = v12;
      v15 = *(*(*(a1 + 40) + 8) + 24);
      v16 = *(a1 + 72);
      *(v15 + 16) |= 2u;
      *(v15 + 56) = v16;
      *(*(*(a1 + 48) + 8) + 48) = *(a3 + 1);
      v17 = *(*(a1 + 48) + 8);
      v18 = *(*(*(a1 + 40) + 8) + 24);
      *(v18 + 16) |= 1u;
      v19 = *(v18 + 48);
      if (!v19)
      {
        v20 = *(v18 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v19 = MEMORY[0x223DA0360](v20);
        *(v18 + 48) = v19;
      }

      TSKUIDStruct::saveToMessage(v17 + 3, v19);
      v6 = *(*(*(a1 + 40) + 8) + 24);
      goto LABEL_16;
    }

    if (v11 == *(v8 + 28))
    {
LABEL_9:
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 16));
      v9 = *(v8 + 32);
      v11 = *v9;
    }

    *v9 = v11 + 1;
    v12 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaCoordPairsByOwnerArchive>(*(v8 + 16));
    v13 = *(v8 + 24);
    v14 = *(v8 + 32) + 8 * v13;
    *(v8 + 24) = v13 + 1;
    *(v14 + 8) = v12;
    goto LABEL_11;
  }

LABEL_16:
  v21 = *(v6 + 40);
  if (!v21)
  {
    goto LABEL_21;
  }

  v22 = *(v6 + 32);
  v23 = *v21;
  if (v22 < *v21)
  {
    *(v6 + 32) = v22 + 1;
    v24 = *&v21[2 * v22 + 2];
    goto LABEL_23;
  }

  if (v23 == *(v6 + 36))
  {
LABEL_21:
    google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v6 + 24));
    v21 = *(v6 + 40);
    v23 = *v21;
  }

  *v21 = v23 + 1;
  v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaAtCoordArchive>(*(v6 + 24));
  v25 = *(v6 + 32);
  v26 = *(v6 + 40) + 8 * v25;
  *(v6 + 32) = v25 + 1;
  *(v26 + 8) = v24;
LABEL_23:
  v27 = *(a3 + 2);
  v28 = *(v24 + 16);
  *(v24 + 16) = v28 | 2;
  *(v24 + 32) = v27;
  v29 = *a3;
  *(v24 + 16) = v28 | 6;
  *(v24 + 36) = v29;
  if (v36)
  {
    v30 = *(*(a1 + 56) + 8);
    v32 = *(v30 + 40);
    v31 = (v30 + 40);
    if (v32 == v36)
    {
      *(v24 + 16) = v28 | 0xE;
      *(v24 + 40) = 1;
    }

    else
    {
      objc_storeStrong(v31, a2);
      *(v24 + 16) |= 1u;
      v34 = *(v24 + 24);
      if (!v34)
      {
        v35 = *(v24 + 8);
        if (v35)
        {
          v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
        }

        v34 = google::protobuf::Arena::CreateMaybeMessage<TSCE::FormulaArchive>(v35);
        *(v24 + 24) = v34;
      }

      objc_msgSend_encodeToArchive_archiver_(v36, v33, v34, *(a1 + 32));
    }
  }
}

void sub_2214850DC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v11 = *(v4 + 1);
        *(v8 + 32) = v4[4];
        *(v8 + 16) = v11;
        objc_storeStrong((v8 + 40), v4[5]);
        v10 = *v8;
        sub_2214851E4(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v12 = v4 == a3;
        }

        else
        {
          v12 = 1;
        }

        v8 = v10;
      }

      while (!v12);
    }

    sub_221159784(a1, v10);
  }

  if (v4 != a3)
  {
    sub_221485670(a1);
  }
}

void sub_2214851B8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_221159784(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_2214851E4(void *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 32) ^ *(a2 + 24) ^ (*(a2 + 20) + (*(a2 + 16) << 15));
  *(a2 + 8) = v5;
  v6 = sub_221485240(a1, v5, v4);
  sub_2210BD408(a1, a2, v6);
  return a2;
}

void *sub_221485240(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 2 * v6;
    v10 = v6 < 3 || (v6 & (v6 - 1)) != 0;
    v11 = v10 | v9;
    v12 = vcvtps_u32_f32(v7 / v8);
    if (v11 <= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    sub_2214853D0(a1, v13);
    v6 = *(a1 + 8);
  }

  v14 = vcnt_s8(v6);
  v14.i16[0] = vaddlv_u8(v14);
  if (v14.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (!v16)
  {
    return 0;
  }

  v17 = 0;
  v18 = *a3;
  do
  {
    result = v16;
    v16 = *v16;
    if (!v16)
    {
      break;
    }

    v20 = v16[1];
    if (v14.u32[0] > 1uLL)
    {
      v21 = v16[1];
      if (v20 >= v6)
      {
        v21 = v20 % v6;
      }
    }

    else
    {
      v21 = v20 & (v6 - 1);
    }

    if (v21 != v15)
    {
      break;
    }

    v23 = v20 == a2 && (v22 = v16[2], v22 == v18) && ((v18 ^ v22) & 0x101FFFF00000000) == 0 && v16[3] == a3[1] && v16[4] == a3[2];
    v24 = v23 != (v17 & 1);
    v25 = v17 & v24;
    v17 |= v24;
  }

  while (v25 != 1);
  return result;
}

void sub_2214853D0(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2214854C0(result, prime);
    }
  }
}

void sub_2214854C0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_22107C238();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_2214856C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

void sub_221485768(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      while (a2 != a3)
      {
        v9 = *(a2 + 1);
        v8[4] = a2[4];
        *(v8 + 1) = v9;
        v10 = *v8;
        sub_2214851E4(a1, v8);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v11 = *v8;
        operator delete(v8);
        v8 = v11;
      }

      while (v11);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_221485868(a1, (a2 + 2));
  }
}

void sub_221485834(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

void *sub_2214858FC(void *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  v4 = a2[2];
  v5 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_25;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v3 ^ v4 ^ (*(a2 + 2) + (*a2 << 15));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_25:
    operator new();
  }

  v11 = *a2;
  while (1)
  {
    v12 = v10[1];
    if (v12 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v8)
    {
      goto LABEL_25;
    }

LABEL_24:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_25;
    }
  }

  v13 = v10[2];
  v15 = v13 == v11;
  v14 = (v11 ^ v13) & 0x101FFFF00000000;
  v15 = v15 && v14 == 0;
  if (!v15 || v10[3] != v3 || v10[4] != v4)
  {
    goto LABEL_24;
  }

  return v10;
}

void *sub_221485B74(void *a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  v12 = *a2;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_25;
    }

LABEL_24:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v14 = v11[2];
  v16 = v14 == v12;
  v15 = (v12 ^ v14) & 0x101FFFF00000000;
  v16 = v16 && v15 == 0;
  if (!v16 || v11[3] != v4 || v11[4] != v5)
  {
    goto LABEL_24;
  }

  return v11;
}

void sub_221485E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_221485E1C(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (*&v5 <= v4)
    {
      v7 = v4 % a1[1];
    }
  }

  else
  {
    v7 = (v5.i32[0] - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (*(v9 + 8) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_221486070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void *sub_221486084(void *a1, uint64_t *a2, uint64_t a3, _OWORD **a4)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_25;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v4 ^ v5 ^ (*(a2 + 2) + (*a2 << 15));
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = v6 & (*&v7 - 1);
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_25:
    operator new();
  }

  v12 = *a2;
  while (1)
  {
    v13 = v11[1];
    if (v13 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v9)
    {
      goto LABEL_25;
    }

LABEL_24:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v14 = v11[2];
  v16 = v14 == v12;
  v15 = (v12 ^ v14) & 0x101FFFF00000000;
  v16 = v16 && v15 == 0;
  if (!v16 || v11[3] != v4 || v11[4] != v5)
  {
    goto LABEL_24;
  }

  return v11;
}

void sub_221486318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221159A40(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22148632C(void *a1, uint64_t *a2)
{
  result = sub_221244B44(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221159A40(v4);
    return 1;
  }

  return result;
}

void *sub_221486FA4(void *a1, unsigned int *a2, uint64_t a3, void **a4)
{
  v4 = *a2 + 16 * *(a2 + 2);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_23;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2 + 16 * *(a2 + 2);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_23:
    operator new();
  }

  v10 = *a2;
  while (1)
  {
    v11 = v9[1];
    if (v11 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v11 >= *&v5)
      {
        v11 %= *&v5;
      }
    }

    else
    {
      v11 &= *&v5 - 1;
    }

    if (v11 != v7)
    {
      goto LABEL_23;
    }

LABEL_22:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_23;
    }
  }

  v12 = v9[2];
  v14 = v12 == v10;
  v13 = (v10 ^ v12) & 0x101FFFF00000000;
  v14 = v14 && v13 == 0;
  if (!v14)
  {
    goto LABEL_22;
  }

  return v9;
}

void TSCEDurationFormat::TSCEDurationFormat(TSCEDurationFormat *this, TSKDurationFormat *a2, uint64_t a3, uint64_t a4)
{
  *this = *this & 0xC080 | 0x421;
  *(this + 2) = *(this + 2) & 0xF8 | 1;
  if (a2)
  {
    *this = *this & 0xFFFE | objc_msgSend_useAutomaticUnits(a2, a2, a3, a4);
    *this = *this & 0xFF81 | (2 * (objc_msgSend_durationUnitSmallest(a2, v6, v7, v8) & 0x3F));
    *this = *this & 0xC0FF | ((objc_msgSend_durationUnitLargest(a2, v9, v10, v11) & 0x3F) << 8);
    *(this + 2) = *(this + 2) & 0xF8 | objc_msgSend_durationStyle(a2, v12, v13, v14) & 7;
  }
}

id TSCEDurationFormat::asTSKDurationFormat(TSCEDurationFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80678]);
  v4 = objc_msgSend_initWithUseAutomaticUnits_durationUnitSmallest_durationUnitLargest_durationStyle_(v2, v3, *this & 1, (*this >> 1) & 0x3F, HIBYTE(*this) & 0x3F, *(this + 2) & 7);

  return v4;
}

BOOL TSCEDurationFormat::isEqualIgnoringAuto(TSCEDurationFormat *this, const TSCEDurationFormat *a2)
{
  v2 = *this;
  v3 = *a2;
  return ((v2 >> 1) & 0x3F) == ((v3 >> 1) & 0x3F) && ((v3 ^ v2) & 0x3F00) == 0 && ((*(a2 + 2) ^ *(this + 2)) & 7) == 0;
}

uint64_t TSCENumberFormat::TSCENumberFormat(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = -3;
  *(a1 + 1) &= 0xE0u;
  *(a1 + 2) = 0;
  if (a2)
  {
    *a1 = objc_msgSend_decimalPlaces(a2, a2, a3, a4);
    *(a1 + 1) = *(a1 + 1) & 0xF8 | objc_msgSend_negativeStyle(a2, v6, v7, v8) & 7;
    if (objc_msgSend_showThousandsSeparator(a2, v9, v10, v11))
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xF7 | v12;
  }

  return a1;
}

{
  *a1 = -3;
  *(a1 + 1) &= 0xE0u;
  *(a1 + 2) = 0;
  if (a2)
  {
    v6 = objc_msgSend_currencyCode(a2, a2, a3, a4);
    *(a1 + 2) = TSUCurrencyCodeIndexForCode();

    *a1 = objc_msgSend_decimalPlaces(a2, v7, v8, v9);
    *(a1 + 1) = *(a1 + 1) & 0xF8 | objc_msgSend_negativeStyle(a2, v10, v11, v12) & 7;
    if (objc_msgSend_showThousandsSeparator(a2, v13, v14, v15))
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xF7 | v19;
    if (objc_msgSend_accountingStyle(a2, v16, v17, v18))
    {
      v20 = 16;
    }

    else
    {
      v20 = 0;
    }

    *(a1 + 1) = *(a1 + 1) & 0xEF | v20;
  }

  return a1;
}

id TSCENumberFormat::asTSKNumberFormat(unsigned __int8 *a1, uint64_t a2)
{
  v4 = objc_alloc(MEMORY[0x277D806A0]);
  v6 = objc_msgSend_initWithFormatType_decimalPlaces_negativeStyle_showSeparator_(v4, v5, a2, *a1, a1[1] & 7, (a1[1] >> 3) & 1);

  return v6;
}

id TSCENumberFormat::asTSKCurrencyFormat(TSCENumberFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80640]);
  decimalPlaces = this->decimalPlaces;
  v4 = *(this + 1);
  v5 = TSUCurrencyCodeForIndex();
  v7 = objc_msgSend_initWithDecimalPlaces_negativeStyle_showSeparator_accountingStyle_currencyCode_(v2, v6, decimalPlaces, v4 & 7, (v4 >> 3) & 1, (v4 >> 4) & 1, v5);

  return v7;
}

uint64_t TSCENumberFormat::defaultNumberFormatForCurrency(TSCENumberFormat *this, TSULocale *a2)
{
  v5 = this;
  if (!v5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v2, "static TSCENumberFormat TSCENumberFormat::defaultNumberFormatForCurrency(TSULocale *__strong)", v4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 99, 0, "invalid nil value for '%{public}s'", "locale");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  v15 = objc_msgSend_cfLocale(v5, v2, v3, v4);
  v16 = CFLocaleGetValue(v15, *MEMORY[0x277CBEEA0]);
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = @"USD";
  }

  defaultFractionDigits = 0;
  DecimalInfoForCurrencyCode = CFNumberFormatterGetDecimalInfoForCurrencyCode(v17, &defaultFractionDigits, 0);
  v19 = TSUCurrencyCodeIndexForCode();
  v20 = defaultFractionDigits;

  if (DecimalInfoForCurrencyCode)
  {
    v21 = v20;
  }

  else
  {
    v21 = 2;
  }

  return v21 | (v19 << 16);
}

_BYTE *TSCEFractionFormat::TSCEFractionFormat(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = -3;
  if (a2)
  {
    *a1 = objc_msgSend_fractionAccuracy(a2, a2, a3, a4);
  }

  return a1;
}

{
  *a1 = -3;
  if (a2)
  {
    *a1 = objc_msgSend_fractionAccuracy(a2, a2, a3, a4);
  }

  return a1;
}

id TSCEFractionFormat::asTSKFractionFormat(TSCEFractionFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80688]);
  v5 = objc_msgSend_initWithFractionAccuracy_(v2, v3, this->fractionAccuracy, v4);

  return v5;
}

uint64_t TSCEBaseFormat::TSCEBaseFormat(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 10;
  *(a1 + 2) = 1;
  if (a2)
  {
    *a1 = objc_msgSend_base(a2, a2, a3, a4);
    *(a1 + 1) = objc_msgSend_basePlaces(a2, v6, v7, v8);
    *(a1 + 2) = objc_msgSend_baseUseMinusSign(a2, v9, v10, v11);
  }

  else
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], 0, "TSCEBaseFormat::TSCEBaseFormat(TSKBaseFormat *__unsafe_unretained)", a4);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 139, 0, "TSCEBaseFormat has no defaults for nil TSKBaseFormat");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
  }

  return a1;
}

id TSCEBaseFormat::asTSKBaseFormat(TSCEBaseFormat *this)
{
  v2 = objc_alloc(MEMORY[0x277D80620]);
  v4 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v2, v3, this->base, this->basePlaces, this->baseUseMinusSign);

  return v4;
}

uint64_t TSCEFormat::isMergableWithFormatType(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if ((v2 & 0xFFFFFFFC) == 0x100)
  {
    v3 = (a2 & 0xFFFFFFFC) == 256;
  }

  else
  {
    v3 = v2 == a2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 1;
  }

  if (a2)
  {
    return v4;
  }

  else
  {
    return 1;
  }
}

uint64_t TSCEFormat::TSCEFormat(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  if (((a2 - 254) > 6 || ((1 << (a2 + 2)) & 0x75) == 0) && a2 != 1)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormat::TSCEFormat(const TSUFormatType)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 190, 0, "This TSCEFormat constructor not supported for this type: %d", a2);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  return a1;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, TSKFormat *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  this->_tskFormat = a2;
  v7 = objc_msgSend_formatType(a2, a2, a3, a4);
  durationFormat = this->_durationFormat;
  this->_formatType = v7;
  this->_formatState = v4;
  *&this->_durationFormat = durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  if (v7 == 257)
  {
    v12 = objc_msgSend_asCurrencyFormat(a2, v8, v9, v10);
    TSCENumberFormat::TSCENumberFormat(&v46, v12, v13, v14);
    v15 = v46;
LABEL_5:
    this->_numberFormat = v15;
    return;
  }

  if ((v7 & 0xFFFFFFFC) == 0x100)
  {
    v16 = objc_msgSend_asNumberFormat(a2, v8, v9, v10);
    TSCENumberFormat::TSCENumberFormat(&v45, v16, v17, v18);
    v15 = v45;
    goto LABEL_5;
  }

  if (v7 > 267)
  {
    if (v7 == 269)
    {
      v35 = objc_msgSend_asBaseFormat(a2, v8, v9, v10);
      TSCEBaseFormat::TSCEBaseFormat(&v42, v35, v36, v37);
      *&this->_baseFormat.base = v42;
      this->_baseFormat.baseUseMinusSign = v43;
      return;
    }

    if (v7 == 268)
    {
      v23 = objc_msgSend_asDurationFormat(a2, v8, v9, v10);
      TSCEDurationFormat::TSCEDurationFormat(&v44, v23, v25, v26);
      this->_durationFormat = v44;
LABEL_20:
    }
  }

  else
  {
    if (v7 == 1)
    {
      v27 = objc_msgSend_asBooleanFormat(a2, v8, v9, v10);
      v31 = objc_msgSend_trueString(v27, v28, v29, v30);
      if (!v31)
      {
        v38 = objc_msgSend_falseString(v27, v32, v33, v34);

        if (v38)
        {
          return;
        }

        v31 = objc_msgSend_BOOLeanFormat(MEMORY[0x277D80680], v39, v40, v41);
        this->_tskFormat = v31;
      }

      return;
    }

    if (v7 == 262)
    {
      v19 = objc_msgSend_asFractionFormat(a2, v8, v9, v10);
      v23 = v19;
      if (v19)
      {
        v24 = objc_msgSend_fractionAccuracy(v19, v20, v21, v22);
      }

      else
      {
        v24 = -3;
      }

      this->_fractionFormat.fractionAccuracy = v24;
      goto LABEL_20;
    }
  }
}

void TSCEFormat::createDefaultCurrencyUsingLocale(TSCEFormat *this@<X0>, uint64_t a2@<X8>)
{
  v3 = this;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *(a2 + 20) = -50266102;
  *(a2 + 24) = -3;
  *(a2 + 25) &= 0xE0u;
  *(a2 + 26) = 0;
  if (!v3)
  {
    v6 = MEMORY[0x277D81150];
    v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v4, "static TSCEFormat TSCEFormat::createDefaultCurrencyUsingLocale(TSULocale *__strong)", v5);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v10, v17, v9, 230, 0, "For currency, use the constructor that passes in a locale, and use the document locale.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
    v3 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v14, v15, v16);
  }

  *(a2 + 8) = 257;
  v18 = v3;
  *(a2 + 24) = TSCENumberFormat::defaultNumberFormatForCurrency(v3, v4);
}

double TSCEFormat::createCurrencyUsingNumberFormat@<D0>(TSCEFormat *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 12) = 0;
  *(a2 + 16) = *(a2 + 16) & 0xC080 | 0x421;
  *(a2 + 18) = *(a2 + 18) & 0xF8 | 1;
  *&result = 4244701194;
  *(a2 + 20) = -50266102;
  *(a2 + 8) = 257;
  *(a2 + 24) = this->_tskFormat;
  return result;
}

_DWORD *TSCEFormat::setFormatType(_DWORD *result, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if ((a2 & 0xFFFFFFFC) == 0x100 && (result[2] & 0xFFFFFFFC) == 0x100)
  {
    result[2] = a2;
    *result = 0;
  }

  else
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEFormat::setFormatType(TSUFormatType)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 259, 0, "setFormatType() not allowed in general, type change attempted: %d -> %d", v5[2], a2);

    v15 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v15, v12, v13, v14);
  }

  return result;
}

uint64_t TSCEFormat::TSCEFormat(uint64_t a1, const char *a2, _DWORD *a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  *(a1 + 24) = *a3;
  if ((a2 & 0xFFFFFFFC) != 0x100)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFormat::TSCEFormat(const TSUFormatType, const TSCENumberFormat &)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 268, 0, "Creating a non-number formatType but initializing the numberFormat iVar.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return a1;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEFractionFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 262;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  this->_fractionFormat = a2->fractionAccuracy;
}

{
  this->_tskFormat = 0;
  this->_formatType = 262;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  this->_fractionFormat = a2->fractionAccuracy;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEBaseFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 269;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *&a2->base;
  this->_baseFormat.baseUseMinusSign = a2->baseUseMinusSign;
  *&this->_baseFormat.base = v2;
}

{
  this->_tskFormat = 0;
  this->_formatType = 269;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *&a2->base;
  this->_baseFormat.baseUseMinusSign = a2->baseUseMinusSign;
  *&this->_baseFormat.base = v2;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEDurationFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 268;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *a2;
  *(&this->_durationFormat + 2) = *(a2 + 2);
  *&this->_durationFormat = v2;
}

{
  this->_tskFormat = 0;
  this->_formatType = 268;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  v2 = *a2;
  *(&this->_durationFormat + 2) = *(a2 + 2);
  *&this->_durationFormat = v2;
}

void TSCEFormat::TSCEFormat(TSCEFormat *this, const TSCEFormat *a2)
{
  this->_tskFormat = 0;
  this->_formatType = 0;
  this->_formatState = 0;
  *&this->_durationFormat = *&this->_durationFormat & 0xC080 | 0x421;
  *(&this->_durationFormat + 2) = *(&this->_durationFormat + 2) & 0xF8 | 1;
  *&this->_baseFormat.base = -50266102;
  this->_numberFormat.decimalPlaces = -3;
  *(&this->_numberFormat + 1) &= 0xE0u;
  this->_numberFormat.currencyCodeIndex = 0;
  if (this != a2)
  {
    this->_formatType = a2->_formatType;
    this->_tskFormat = a2->_tskFormat;
    this->_formatState = a2->_formatState;
    this->_fractionFormat.fractionAccuracy = a2->_fractionFormat.fractionAccuracy;
    v2 = *&a2->_baseFormat.base;
    this->_baseFormat.baseUseMinusSign = a2->_baseFormat.baseUseMinusSign;
    *&this->_baseFormat.base = v2;
    durationFormat = a2->_durationFormat;
    *(&this->_durationFormat + 2) = *(&a2->_durationFormat + 2);
    *&this->_durationFormat = durationFormat;
    this->_numberFormat = a2->_numberFormat;
  }
}

uint64_t TSCEFormat::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    *(result + 8) = *(a2 + 8);
    *result = *a2;
    *(result + 12) = *(a2 + 12);
    *(result + 23) = *(a2 + 23);
    v2 = *(a2 + 20);
    *(result + 22) = *(a2 + 22);
    *(result + 20) = v2;
    v3 = *(a2 + 16);
    *(result + 18) = *(a2 + 18);
    *(result + 16) = v3;
    *(result + 24) = *(a2 + 24);
  }

  return result;
}

BOOL TSCEFormat::dateTimeFormatHasTimePortion(TSCEFormat *this, NSString *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_timePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], a2, this, a4);
  v8 = objc_msgSend_length(v4, v5, v6, v7) != 0;

  return v8;
}

BOOL TSCEFormat::dateTimeFormatHasDatePortion(TSCEFormat *this, NSString *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_datePortionOfDateTimeFormatString_(MEMORY[0x277D811A0], a2, this, a4);
  v8 = objc_msgSend_length(v4, v5, v6, v7) != 0;

  return v8;
}

void TSCEFormat::formatByMergingWithFormat(TSCEFormat *__return_ptr a1@<X8>, TSCEFormat *this@<X0>, TSCEFormat *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  formatType = this->_formatType;
  if (formatType == 254)
  {
    goto LABEL_3;
  }

  v8 = a3->_formatType;
  if (v8 == 254)
  {
    goto LABEL_3;
  }

  if (formatType)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_9;
  }

  if ((formatType & 0xFFFFFFFC) != 0x100)
  {
    if (formatType == v8)
    {
      goto LABEL_9;
    }

LABEL_3:
    a1->_tskFormat = 0;
    a1->_formatType = 254;
    a1->_formatState = 0;
    *&a1->_durationFormat = *&a1->_durationFormat & 0xC080 | 0x421;
    *(&a1->_durationFormat + 2) = *(&a1->_durationFormat + 2) & 0xF8 | 1;
    *&a1->_baseFormat.base = -50266102;
    a1->_numberFormat.decimalPlaces = -3;
    *(&a1->_numberFormat + 1) &= 0xE0u;
    a1->_numberFormat.currencyCodeIndex = 0;
    return;
  }

  if ((v8 & 0xFFFFFFFC) != 0x100)
  {
    goto LABEL_3;
  }

LABEL_9:
  formatState = this->_formatState;
  v12 = a3->_formatState;
  if (!TSCEFormat::isEqual(this, a3, a4, a5))
  {
    if (!formatState && v12)
    {
      v13 = a1;
      v14 = a3;
      goto LABEL_17;
    }

    if (!formatState || v12)
    {
      sub_221489CB0(a1);
      v18 = this->_formatType;
      v19 = a3->_formatType;
      if (!v18)
      {
        if (v19 != 271)
        {
          if (a1 != a3)
          {
            a1->_formatType = v19;
            a1->_tskFormat = a3->_tskFormat;
            *&a1->_durationFormat = a3->_durationFormat;
            *(&a1->_durationFormat + 2) = *(&a3->_durationFormat + 2);
            v24 = *&a3->_baseFormat.base;
            numberFormat = a3->_numberFormat;
LABEL_93:
            *&a1->_baseFormat.base = v24;
            a1->_numberFormat = numberFormat;
            goto LABEL_94;
          }

          goto LABEL_94;
        }

        a1->_formatType = 260;
        a1->_tskFormat = 0;
        goto LABEL_37;
      }

      if (v19)
      {
        if ((v18 & 0xFFFFFFFC) == 0x100)
        {
          if (v18 == v19)
          {
            v20 = v18;
          }

          else
          {
            v20 = 256;
          }

          decimalPlaces = this->_numberFormat.decimalPlaces;
          v22 = a3->_numberFormat.decimalPlaces;
          if (decimalPlaces == 254)
          {
            LOBYTE(v95) = a3->_numberFormat.decimalPlaces;
          }

          else
          {
            if (v22 != 254 && decimalPlaces != v22)
            {
              LOBYTE(decimalPlaces) = -1;
            }

            LOBYTE(v95) = decimalPlaces;
          }

          v26 = *(&this->_numberFormat + 1);
          v27 = v26 & 7;
          v28 = *(&a3->_numberFormat + 1);
          if ((v26 & 7) != (v28 & 7))
          {
            v27 = 0;
          }

          if (((v26 >> 3) & 1) == ((v28 >> 3) & 1))
          {
            v29 = 8 * ((v26 & 8) != 0);
          }

          else
          {
            v29 = 0;
          }

          v30 = v27 | v29;
          currencyCodeIndex = this->_numberFormat.currencyCodeIndex;
          if (currencyCodeIndex != a3->_numberFormat.currencyCodeIndex)
          {
            LOWORD(currencyCodeIndex) = 0;
          }

          HIWORD(v95) = currencyCodeIndex;
          v32 = (v26 >> 4) & 1;
          if (v32 == ((v28 >> 4) & 1))
          {
            v33 = 16 * v32;
          }

          else
          {
            v33 = 0;
          }

          BYTE1(v95) = v30 | v33;
          TSCEFormat::TSCEFormat(&v94, v20, &v95, v17);
          if (&v94 == a1)
          {
            goto LABEL_94;
          }

          a1->_formatType = v94._formatType;
          a1->_tskFormat = v94._tskFormat;
          a1->_formatState = v94._formatState;
          a1->_durationFormat = v94._durationFormat;
          v24 = *&v94._baseFormat.base;
          numberFormat = v94._numberFormat;
          goto LABEL_93;
        }

        if (v18 <= 268)
        {
          if (v18 > 261)
          {
            if (v18 != 262)
            {
              if (v18 != 268)
              {
                goto LABEL_91;
              }

              durationFormat = this->_durationFormat;
              v53 = a3->_durationFormat;
              v54 = (*&v53 >> 8) & 0x3F;
              if (((*&durationFormat >> 8) & 0x3F) < v54)
              {
                LOWORD(v54) = HIBYTE(*&this->_durationFormat) & 0x3F;
              }

              v55 = (*&v53 >> 8) & 0x3F;
              if (!v55)
              {
                LOWORD(v54) = HIBYTE(*&this->_durationFormat) & 0x3F;
              }

              if (((*&durationFormat >> 8) & 0x3F) == 0)
              {
                LOWORD(v54) = v55;
              }

              v56 = (*&v53 >> 1) & 0x3F;
              if (((*&durationFormat >> 1) & 0x3F) > v56)
              {
                v56 = (*&durationFormat >> 1) & 0x3F;
              }

              v57 = (*&v53 >> 1) & 0x3F;
              if (!v57)
              {
                v56 = (*&durationFormat >> 1) & 0x3F;
              }

              if (((*&durationFormat >> 1) & 0x3F) != 0)
              {
                v58 = v56;
              }

              else
              {
                v58 = v57;
              }

              v59 = *(&this->_durationFormat + 2) & 7;
              if (v59 != (*(&a3->_durationFormat + 2) & 7))
              {
                LOBYTE(v59) = 1;
              }

              a1->_formatType = 268;
              a1->_tskFormat = 0;
              a1->_formatState = 0;
              *&a1->_baseFormat.base = -50266102;
              *&a1->_durationFormat = *&durationFormat & *&v53 & 1 | (2 * v58) | (v54 << 8);
              *(&a1->_durationFormat + 2) = v59;
LABEL_39:
              a1->_numberFormat = 253;
              goto LABEL_94;
            }

            fractionAccuracy = this->_fractionFormat.fractionAccuracy;
            if (fractionAccuracy != a3->_fractionFormat.fractionAccuracy)
            {
              LOBYTE(fractionAccuracy) = 0;
            }

            a1->_formatType = 262;
            a1->_tskFormat = 0;
            a1->_formatState = 0;
            a1->_fractionFormat.fractionAccuracy = fractionAccuracy;
            *&a1->_baseFormat.base = 10;
            a1->_baseFormat.baseUseMinusSign = 1;
          }

          else
          {
            if (v18 != 1)
            {
              if (v18 == 261)
              {
                v34 = TSCEFormat::dateTimeFormat(this, v15, v16, v17);
                v38 = objc_msgSend_formatString(v34, v35, v36, v37);
                v42 = TSCEFormat::dateTimeFormat(a3, v39, v40, v41);
                v49 = objc_msgSend_formatString(v42, v43, v44, v45);
                if (v38 == v49)
                {
                  v51 = objc_msgSend_formatString(v34, v46, v47, v48);
                }

                else
                {
                  v50 = objc_msgSend_currentLocale(MEMORY[0x277D81228], v46, v47, v48);
                  v51 = TSUDefaultDateTimeFormat();
                }

                v88 = objc_alloc(MEMORY[0x277D80658]);
                v91 = objc_msgSend_initWithFormatString_(v88, v89, v51, v90);
                TSCEFormat::TSCEFormat(&v94, v91, 0, v92);
                if (&v94 != a1)
                {
                  a1->_formatType = v94._formatType;
                  a1->_tskFormat = v94._tskFormat;
                  a1->_formatState = v94._formatState;
                  a1->_durationFormat = v94._durationFormat;
                  v93 = v94._numberFormat;
                  *&a1->_baseFormat.base = *&v94._baseFormat.base;
                  a1->_numberFormat = v93;
                }

                goto LABEL_94;
              }

LABEL_91:
              if (a1 != this)
              {
                goto LABEL_92;
              }

              goto LABEL_94;
            }

            v76 = TSCEFormat::BOOLeanFormat(this, v15, v16, v17);
            v80 = TSCEFormat::BOOLeanFormat(a3, v77, v78, v79);
            if (v76 && v80 && (objc_msgSend_isEqual_(v76, v81, v80, v82) & 1) != 0)
            {
LABEL_89:
              if (a1 != this)
              {
                v18 = this->_formatType;
LABEL_92:
                a1->_formatType = v18;
                a1->_tskFormat = this->_tskFormat;
                a1->_formatState = this->_formatState;
                *&a1->_durationFormat = this->_durationFormat;
                *(&a1->_durationFormat + 2) = *(&this->_durationFormat + 2);
                v24 = *&this->_baseFormat.base;
                numberFormat = this->_numberFormat;
                goto LABEL_93;
              }

LABEL_94:
              a1->_formatState = 2 * (formatState != 0);
              return;
            }

            a1->_formatType = 1;
            a1->_tskFormat = 0;
            a1->_formatState = 0;
            *&a1->_baseFormat.base = -50266102;
          }

          *&a1->_durationFormat = 1057;
LABEL_38:
          *(&a1->_durationFormat + 2) = 1;
          goto LABEL_39;
        }

        if (v18 <= 270)
        {
          if (v18 == 269)
          {
            base = this->_baseFormat.base;
            if (base != a3->_baseFormat.base)
            {
              LOBYTE(base) = -1;
            }

            if (this->_baseFormat.basePlaces == a3->_baseFormat.basePlaces)
            {
              basePlaces = this->_baseFormat.basePlaces;
            }

            else
            {
              basePlaces = -1;
            }

            baseUseMinusSign = this->_baseFormat.baseUseMinusSign;
            v87 = a3->_baseFormat.baseUseMinusSign != baseUseMinusSign;
            a1->_formatType = 269;
            a1->_tskFormat = 0;
            a1->_formatState = 0;
            a1->_fractionFormat.fractionAccuracy = -3;
            a1->_baseFormat.base = base;
            a1->_baseFormat.basePlaces = basePlaces;
            a1->_baseFormat.baseUseMinusSign = v87 || baseUseMinusSign;
            *&a1->_durationFormat = 1057;
            *(&a1->_durationFormat + 2) = 1;
            a1->_numberFormat = 253;
            goto LABEL_94;
          }

LABEL_88:
          v60 = TSCEFormat::customFormat(this, v15, v16, v17);
          v64 = objc_msgSend_customFormatKey(v60, v61, v62, v63);
          v68 = TSCEFormat::customFormat(a3, v65, v66, v67);
          v72 = objc_msgSend_customFormatKey(v68, v69, v70, v71);
          isEqual = objc_msgSend_isEqual_(v64, v73, v72, v74);

          if (isEqual)
          {
            goto LABEL_89;
          }

          v23 = 254;
          goto LABEL_36;
        }

        if (v18 != 271)
        {
          if (v18 != 272 && v18 != 274)
          {
            goto LABEL_91;
          }

          goto LABEL_88;
        }
      }

      else if (v18 != 271)
      {
        goto LABEL_91;
      }

      v23 = 260;
LABEL_36:
      a1->_formatType = v23;
      a1->_tskFormat = 0;
      a1->_formatState = 0;
LABEL_37:
      *&a1->_baseFormat.base = -50266102;
      *&a1->_durationFormat = 1057;
      goto LABEL_38;
    }
  }

  v13 = a1;
  v14 = this;
LABEL_17:

  TSCEFormat::TSCEFormat(v13, v14);
}

BOOL TSCEFormat::isEqual(TSCEFormat *this, TSCEFormat *a2, uint64_t a3, uint64_t a4)
{
  if ((this->_formatState == 1) != (a2->_formatState == 1))
  {
    return 0;
  }

  if (this->_tskFormat)
  {
    v5 = this->_tskFormat == a2->_tskFormat;
  }

  else
  {
    v5 = 0;
  }

  return v5 || TSCEFormat::isEqualNotCountingExplicitness(this, a2, a3, a4);
}

uint64_t TSCEFormat::dateTimeFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_formatType != 261)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKDateTimeFormat *TSCEFormat::dateTimeFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 603, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asDateTimeFormat(tskFormat, a2, a3, a4);
}

uint64_t TSCEFormat::customFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = this->_formatType - 270;
  if (v5 > 4 || v5 == 3)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKCustomFormatWrapper *TSCEFormat::customFormat() const", a4);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 608, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asCustomFormatWrapper(tskFormat, a2, a3, a4);
}

uint64_t TSCEFormat::BOOLeanFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_formatType != 1)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSKBooleanFormat *TSCEFormat::BOOLeanFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 613, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  tskFormat = this->_tskFormat;

  return objc_msgSend_asBooleanFormat(tskFormat, a2, a3, a4);
}

void TSCEFormat::formatByUnsettingDecimalPlacesIfPresent(TSCEFormat *__return_ptr a1@<X8>, TSCEFormat *this@<X0>, uint64_t a3@<X3>)
{
  formatType = this->_formatType;
  if ((formatType & 0xFFFFFFFC) == 0x100)
  {
    v7 = v3;
    v8 = v4;
    numberFormat = this->_numberFormat;
    numberFormat.decimalPlaces = -2;
    TSCEFormat::TSCEFormat(a1, formatType, &numberFormat, a3);
  }

  else
  {

    TSCEFormat::TSCEFormat(a1, this);
  }
}

void TSCEFormat::formatBySmashingConflicts(uint64_t *__return_ptr a1@<X8>, TSCEFormat *this@<X0>, uint64_t a3@<X3>)
{
  formatType = this->_formatType;
  if (formatType == 254)
  {
    goto LABEL_2;
  }

  if ((formatType & 0xFFFFFFFC) == 0x100)
  {
    if (formatType == 257)
    {
      if (!this->_numberFormat.currencyCodeIndex)
      {
LABEL_2:
        *a1 = 0;
        *(a1 + 2) = 0;
        *(a1 + 12) = 0;
        *(a1 + 8) = a1[2] & 0xC080 | 0x421;
        *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
        *(a1 + 5) = -50266102;
LABEL_3:
        *(a1 + 24) = -3;
        *(a1 + 25) &= 0xE0u;
        *(a1 + 13) = 0;
        return;
      }

      if (this->_numberFormat.decimalPlaces > 0xFDu)
      {
        numberFormat = this->_numberFormat;
        v6 = MEMORY[0x277D81228];
        v7 = TSUCurrencyCodeForIndex();
        numberFormat.decimalPlaces = objc_msgSend_defaultDecimalPlacesForCurrencyCode_(v6, v8, v7, v9);

        formatType = this->_formatType;
LABEL_15:
        TSCEFormat::TSCEFormat(a1, formatType, &numberFormat, a3);
        return;
      }
    }

    else if (this->_numberFormat.decimalPlaces > 0xFDu)
    {
      numberFormat = this->_numberFormat;
      numberFormat.decimalPlaces = -3;
      goto LABEL_15;
    }

    goto LABEL_18;
  }

  if (formatType != 269)
  {
    if (formatType == 262 && !this->_fractionFormat.fractionAccuracy)
    {
      *a1 = 0;
      *(a1 + 2) = 262;
      *(a1 + 12) = 0;
      *(a1 + 8) = a1[2] & 0xC080 | 0x421;
      *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
      *(a1 + 5) = -50266102;
      goto LABEL_3;
    }

    goto LABEL_18;
  }

  base = this->_baseFormat.base;
  basePlaces = this->_baseFormat.basePlaces;
  if (base != 255 && basePlaces != 255)
  {
LABEL_18:

    TSCEFormat::TSCEFormat(a1, this);
    return;
  }

  baseUseMinusSign = this->_baseFormat.baseUseMinusSign;
  if (base == 255)
  {
    LOBYTE(base) = 10;
  }

  if (basePlaces == 255)
  {
    LOBYTE(basePlaces) = 0;
  }

  *a1 = 0;
  *(a1 + 2) = 269;
  *(a1 + 12) = 0;
  *(a1 + 8) = a1[2] & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *(a1 + 23) = -515;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 13) = 0;
  *(a1 + 20) = base;
  *(a1 + 21) = basePlaces;
  *(a1 + 22) = baseUseMinusSign;
}

BOOL TSCEFormat::isEqualNotCountingExplicitness(TSCEFormat *this, TSCEFormat *a2, uint64_t a3, uint64_t a4)
{
  formatType = this->_formatType;
  if (formatType == a2->_formatType)
  {
    v6 = 1;
    switch(formatType)
    {
      case 0xFEu:
      case 0x104u:
      case 0x107u:
      case 0x10Bu:
        return v6;
      case 0xFFu:
      case 0x108u:
      case 0x109u:
      case 0x10Au:
      case 0x111u:
        goto LABEL_5;
      case 0x100u:
      case 0x102u:
        goto LABEL_11;
      case 0x101u:
        if (this->_numberFormat.currencyCodeIndex != a2->_numberFormat.currencyCodeIndex || ((*(&a2->_numberFormat + 1) ^ *(&this->_numberFormat + 1)) & 0x10) != 0)
        {
          return 0;
        }

LABEL_11:
        if (((*(&a2->_numberFormat + 1) ^ *(&this->_numberFormat + 1)) & 0xF) == 0)
        {
          goto LABEL_12;
        }

        return 0;
      case 0x103u:
LABEL_12:
        if (this->_numberFormat.decimalPlaces != a2->_numberFormat.decimalPlaces)
        {
          return 0;
        }

        return v6;
      case 0x105u:
        v8 = TSCEFormat::dateTimeFormat(this, a2, a3, a4);
        v12 = objc_msgSend_formatString(v8, v38, v39, v40);
        v16 = TSCEFormat::dateTimeFormat(a2, v41, v42, v43);
        v20 = objc_msgSend_formatString(v16, v44, v45, v46);
        isEqualToString = objc_msgSend_isEqualToString_(v12, v47, v20, v48);
        goto LABEL_19;
      case 0x106u:
        fractionAccuracy = this->_fractionFormat.fractionAccuracy;
        baseUseMinusSign = a2->_fractionFormat.fractionAccuracy;
        return fractionAccuracy == baseUseMinusSign;
      case 0x10Cu:
        p_durationFormat = &this->_durationFormat;
        v37 = &a2->_durationFormat;

        return TSCEDurationFormat::isEqualIgnoringAuto(p_durationFormat, v37);
      case 0x10Du:
        if (this->_baseFormat.base != a2->_baseFormat.base || this->_baseFormat.basePlaces != a2->_baseFormat.basePlaces)
        {
          return 0;
        }

        fractionAccuracy = this->_baseFormat.baseUseMinusSign;
        baseUseMinusSign = a2->_baseFormat.baseUseMinusSign;
        return fractionAccuracy == baseUseMinusSign;
      case 0x10Eu:
      case 0x10Fu:
      case 0x110u:
      case 0x112u:
        v8 = TSCEFormat::customFormat(this, a2, a3, a4);
        v12 = objc_msgSend_customFormatKey(v8, v9, v10, v11);
        v16 = TSCEFormat::customFormat(a2, v13, v14, v15);
        v20 = objc_msgSend_customFormatKey(v16, v17, v18, v19);
        isEqualToString = objc_msgSend_isEqual_(v12, v21, v20, v22);
LABEL_19:
        v6 = isEqualToString;

        return v6;
      default:
        if (formatType < 2)
        {
          return v6;
        }

LABEL_5:
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSCEFormat::isEqualNotCountingExplicitness(const TSCEFormat &) const", a4);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v27);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v29, v25, v28, 573, 0, "Trying to compare unexpected type %d.", this->_formatType);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v30, v31, v32);
        return 0;
    }
  }

  return 0;
}

void sub_221489484(_Unwind_Exception *a1)
{
  v5 = v2;

  _Unwind_Resume(a1);
}

uint64_t TSCEFormat::numberFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((this->_formatType & 0xFFFFFFFC) != 0x100)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCENumberFormat TSCEFormat::numberFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 583, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return this->_numberFormat;
}

uint64_t TSCEFormat::fractionFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_formatType != 262)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEFractionFormat TSCEFormat::fractionFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 588, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return this->_fractionFormat.fractionAccuracy;
}

uint64_t TSCEFormat::baseFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_formatType != 269)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEBaseFormat TSCEFormat::baseFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 593, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return *&this->_baseFormat.base | (this->_baseFormat.baseUseMinusSign << 16);
}

uint64_t TSCEFormat::durationFormat(TSCEFormat *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (this->_formatType != 268)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSCEDurationFormat TSCEFormat::durationFormat() const", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormat.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 598, 0, "Format is not of this type.  Can't return this.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  }

  return this->_durationFormat;
}

TSKFormat *TSCEFormat::tskFormat(TSCEFormat *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  tskFormat = this->_tskFormat;
  if (this->_tskFormat)
  {
    goto LABEL_24;
  }

  formatType = this->_formatType;
  if (formatType > 261)
  {
    if (formatType <= 266)
    {
      if (formatType == 262)
      {
        v11 = objc_alloc(MEMORY[0x277D80688]);
        v7 = objc_msgSend_initWithFractionAccuracy_(v11, v12, this->_fractionFormat.fractionAccuracy, v13);
        goto LABEL_23;
      }

      if (formatType != 263)
      {
        goto LABEL_24;
      }
    }

    else if (formatType != 267)
    {
      if (formatType == 268)
      {
        v14 = TSCEFormat::durationFormat(this, formatType, a3, a4);
        *&v18 = v14;
        *(&v18 + 2) = BYTE2(v14);
        v7 = TSCEDurationFormat::asTSKDurationFormat(&v18);
      }

      else
      {
        if (formatType != 269)
        {
          goto LABEL_24;
        }

        v8 = TSCEFormat::baseFormat(this, formatType, a3, a4);
        v9 = objc_alloc(MEMORY[0x277D80620]);
        v7 = objc_msgSend_initWithBase_basePlaces_baseUseMinusSign_(v9, v10, v8, BYTE1(v8), HIWORD(v8) & 1);
      }

      goto LABEL_23;
    }

LABEL_19:
    objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], formatType, formatType, 0);
    v7 = LABEL_20:;
    goto LABEL_23;
  }

  if (formatType > 257)
  {
    if ((formatType - 258) < 2)
    {
LABEL_14:
      v7 = TSCENumberFormat::asTSKNumberFormat(&this->_numberFormat.decimalPlaces, formatType);
LABEL_23:
      this->_tskFormat = v7;

      tskFormat = this->_tskFormat;
      goto LABEL_24;
    }

    if (formatType != 260)
    {
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  if (formatType != 1)
  {
    if (formatType != 256)
    {
      if (formatType != 257)
      {
        goto LABEL_24;
      }

      v7 = TSCENumberFormat::asTSKCurrencyFormat(&this->_numberFormat);
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  tskFormat = TSCEFormat::BOOLeanFormat(this, formatType, a3, a4);

  if (!tskFormat)
  {
    objc_msgSend_defaultFormatWithFormatType_locale_(MEMORY[0x277D80680], v17, 1, 0);
    goto LABEL_20;
  }

LABEL_24:
  v15 = tskFormat;

  return v15;
}

void TSCEFormat::formatByModifyingFormatAccordingToCurrencyStateOfValue(TSCEFormat *__return_ptr a1@<X8>, TSCEFormat *this@<X0>, TSCEFormat *a3@<X1>, TSCENumberValue *a4@<X2>)
{
  v7 = a3;
  v8 = a4;
  TSCEFormat::TSCEFormat(a1, this);
  if (objc_msgSend_hasUnits(v7, v9, v10, v11))
  {
    v15 = objc_msgSend_dimension(v7, v12, v13, v14);
    v16 = v15 == 4;
    p_formatType = &a1->_formatType;
    formatType = a1->_formatType;
    if (formatType != 274)
    {
      v19 = 0;
      if (v15 != 4)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (formatType != 257)
      {
        if ((formatType & 0xFFFFFFFC) == 0x100)
        {
          v36 = TSCEFormat::numberFormat(a1, v12, v13, v14);
          a1->_formatType = 257;
          a1->_tskFormat = 0;
          a1->_formatState = 0;
          *&a1->_baseFormat.base = -50266102;
          *&a1->_durationFormat = 1057;
          *(&a1->_durationFormat + 2) = 1;
          a1->_numberFormat = v36;
        }

        else
        {
          TSCEFormat::createDefaultCurrencyUsingLocale(v8, &v52);
          a1->_formatType = v52._formatType;
          a1->_tskFormat = v52._tskFormat;
          a1->_formatState = v52._formatState;
          a1->_durationFormat = v52._durationFormat;
          numberFormat = v52._numberFormat;
          *&a1->_baseFormat.base = *&v52._baseFormat.base;
          a1->_numberFormat = numberFormat;
        }
      }

      if ((*p_formatType & 0xFFFFFFFC) == 0x100)
      {
        v39 = TSCEFormat::numberFormat(a1, v12, v13, v14);
      }

      else
      {
        TSCEFormat::createDefaultCurrencyUsingLocale(v8, &v52);
        v39 = TSCEFormat::numberFormat(&v52, v43, v44, v45);
      }

      v46 = v39;
      v47 = objc_msgSend_unit(v7, v40, v41, v42);
      v50 = objc_msgSend_currencyCodeForUnit_(TSCEUnitRegistry, v48, v47, v49);
      v51 = TSUCurrencyCodeIndexForCode();

      v37 = v46 | (v51 << 16);
      *p_formatType = 257;
      goto LABEL_24;
    }
  }

  else
  {
    p_formatType = &a1->_formatType;
    formatType = a1->_formatType;
    if (formatType != 274)
    {
      v19 = 0;
      goto LABEL_16;
    }

    v16 = 0;
  }

  v20 = TSCEFormat::tskFormat(a1, v12, v13, v14);
  v24 = objc_msgSend_asCustomFormatWrapper(v20, v21, v22, v23);
  v52._tskFormat = objc_msgSend_decimalRepresentation(v7, v25, v26, v27);
  *&v52._formatType = v28;
  TSUDecimal::doubleValue(&v52);
  v19 = objc_msgSend_currencyCodeForValue_(v24, v29, v30, v31);

  if (v16)
  {
    if (v19)
    {
      v32 = objc_msgSend_unitForCurrencyCode_(TSCEUnitRegistry, v12, v19, v14);
      if (v32 == objc_msgSend_unit(v7, v33, v34, v35))
      {
        goto LABEL_25;
      }
    }

    formatType = *p_formatType;
    goto LABEL_11;
  }

  formatType = *p_formatType;
LABEL_16:
  if (formatType == 257 || v19)
  {
    *p_formatType = 0;
    v37 = 253;
LABEL_24:
    a1->_tskFormat = 0;
    a1->_formatState = 0;
    *&a1->_baseFormat.base = -50266102;
    *&a1->_durationFormat = 1057;
    *(&a1->_durationFormat + 2) = 1;
    a1->_numberFormat = v37;
  }

LABEL_25:
}

double sub_221489CB0(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  *(a1 + 16) = *(a1 + 16) & 0xC080 | 0x421;
  *(a1 + 18) = *(a1 + 18) & 0xF8 | 1;
  *&result = 4244701194;
  *(a1 + 20) = -50266102;
  *(a1 + 24) = -3;
  *(a1 + 25) &= 0xE0u;
  *(a1 + 26) = 0;
  return result;
}

id sub_22148AE2C(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_221089E98(a2, a3, *(a1 + 32));

  return v3;
}

id sub_22148AE74(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_2214D559C(a2, a3);

  return v3;
}

id sub_22148AEB4(uint64_t a1, void *a2, TSCEFormulaRewriteContext *a3)
{
  v3 = sub_2214D5950(a2, a3);

  return v3;
}

id sub_22148B52C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(a2, a2, a3, a4);

  return v4;
}

id sub_22148B6E8(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = objc_msgSend_copyByRepairingBadReferences_clearUidHistory_(a2, a2, a3, *(a1 + 32));

  return v3;
}

uint64_t sub_22148C95C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22148C984(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  objc_msgSend_setAllowsMissingPropertiesWithNoParentStyleForUpgrade_(*(*(*(a1 + 32) + 8) + 40), v4, 1, v5);
}

void sub_22148CA04(uint64_t a1, const char *a2)
{
  objc_msgSend_setCellStyle_textStyle_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_22148CA88(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v6 = a2;
  objc_msgSend_setAllowsMissingPropertiesWithNoParentStyleForUpgrade_(*(*(*(a1 + 32) + 8) + 40), v4, 1, v5);
}

void sub_22148CB08(uint64_t a1, const char *a2)
{
  objc_msgSend_setCellStyle_textStyle_(*(a1 + 32), a2, *(*(*(a1 + 40) + 8) + 40), *(*(*(a1 + 48) + 8) + 40));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

void sub_22148D98C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_22148EB9C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_nilValue(TSCENilValue, a2, a3, a4);
  v5 = qword_27CFB5638;
  qword_27CFB5638 = v4;
}

void sub_221490014(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCETrackedReference;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_221490850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 sub_221490874(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a1[3] = result;
  return result;
}

__n128 sub_22149088C(uint64_t a1, __n128 *a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = *a2;
  v3[4].n128_u64[0] = a2[1].n128_u64[0];
  v3[3] = result;
  *a3 = 1;
  return result;
}

__n128 sub_221491114(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, __n128 *a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  v5->n128_u64[0] = &unk_2834A8738;
  v5[8].n128_u8[8] = 0;
  result = *a4;
  v5[9] = *a4;
  return result;
}

uint64_t sub_221491160(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) != 0)
  {
    (*(*a2 + 144))(a2, a1 + 144, a1);
  }

  *(a1 + 136) = 1;
  return a2;
}

void sub_2214911D4(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_221491480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 184), 8);

  _Unwind_Resume(a1);
}

double sub_2214914C4(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 96);
  v3 = *(a1 + 72) * *(a1 + 80);
  v4 = **(a1 + 64);
  *(v4 + 8 * v2) = v3;
  v5 = **(a1 + 88);
  v6 = *(v5 + 8 * v2);
  if (v3 < v6)
  {
    *(v4 + 8 * v2) = v6;
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - *(a1 + 72);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - *(v5 + 8 * v2);
    --*(*(*(a1 + 48) + 8) + 24);
    v3 = *(v4 + 8 * v2);
  }

  v7 = *(*(a1 + 56) + 8);
  result = v3 - *(a1 + 72) + *(v7 + 24);
  *(v7 + 24) = result;
  return result;
}

void sub_22149166C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221491688(uint64_t result, int a2)
{
  v2 = a2 - *(result + 64);
  v3 = **(result + 40);
  v4 = *(v3 + 8 * v2);
  v5 = *(**(result + 56) + 8 * v2);
  if (*(result + 48) >= v5)
  {
    v5 = *(result + 48);
  }

  *(v3 + 8 * v2) = v5;
  if (v5 != v4)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

TSCEFormulaObject *sub_221491A58(void *a1, TSCEFormulaRewriteContext *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  v8 = a3;
  if (v7)
  {
    v9 = v7;
    v16 = v9;
    if ((objc_msgSend_translationFlags(v9, v10, v11, v12) & 0x40) != 0)
    {
      v17 = a2->var0;
      var0 = TSCEFormulaRewriteContext::containingCell(a2)->var0.var0;
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v35, v17, &var0);

      v16 = objc_msgSend_copyByConvertingColonToColonTract_(v9, v18, &v35, v19);
    }

    v20 = objc_msgSend_astNodeArrayCopy(v16, v13, v14, v15);
    sub_221491C74(&v35, v20, a2, v8, a4);
    TSCEASTStreamIterator::rewrite(&v35, v21, v22, v23);
    if (v35.var2.var4)
    {
      v24 = v36;
      v36 = 0;
      v25 = [TSCEFormulaObject alloc];
      v29 = objc_msgSend_translationFlags(v16, v26, v27, v28);
      v31 = objc_msgSend_initWithNodeArray_translationFlags_(v25, v30, v24, v29);

      TSCEASTNodeArray::freeNodeArray(v24, v32);
    }

    else
    {
      v31 = v9;
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v35, v33);
  }

  else
  {
    v31 = 0;
  }

  return v31;
}

void sub_221491C38(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

TSCEASTStreamIterator *sub_221491C74(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A88A8;
  *(a1 + 17) = v9;
  *(a1 + 18) = a5;
  return a1;
}

TSCEASTRelativeCoordRefElement *sub_221491CFC(uint64_t a1, TSCEASTRelativeCoordRefElement *a2)
{
  if (TSCEASTElement::refFlags(a2, a1))
  {
    lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v4, v5);
    upper = v11;
  }

  else
  {
    v6 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    lower = v6->var0.var0._tableUID._lower;
    upper = v6->var0.var0._tableUID._upper;
  }

  v12 = TSCEASTRelativeCoordRefElement::relativeCoord(a2, a1, v7, v8);
  v42._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0.coordinate;
  v15 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(coordinate, v12, &v42, v14);
  v16 = *(a1 + 136);
  tableUID = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var0._tableUID;
  v17 = sub_221089E8C(a1);
  v19 = objc_msgSend_coordMapperForTableUID_calcEngine_(v16, v18, &tableUID, v17);

  if (TSCEASTElement::refFlags(a2, a1))
  {
    tableUID._lower = lower;
    tableUID._upper = upper;
    v23 = *(a1 + 136);
    v24 = sub_221089E8C(a1);
    v22 = objc_msgSend_coordMapperForTableUID_calcEngine_(v23, v25, &tableUID, v24);

    if (!v22)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v22 = v19;
    if (!v22)
    {
      goto LABEL_16;
    }
  }

  v26 = *(a1 + 144);
  if (v26 == 1)
  {
    v27 = objc_msgSend_viewCellCoordForBaseCellCoord_(v22, v20, v15, v21);
    v28 = *(a1 + 8);
    if (v19)
    {
      v33 = TSCEFormulaRewriteContext::containingCell(v28);
      v32 = objc_msgSend_viewCellCoordForBaseCellCoord_(v19, v34, *v33, v35);
      goto LABEL_15;
    }

LABEL_14:
    v32 = TSCEFormulaRewriteContext::containingCell(v28)->var0.var0.coordinate;
    goto LABEL_15;
  }

  if (v26 == 2)
  {
    v27 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v22, v20, v15, v21);
    v28 = *(a1 + 8);
    if (v19)
    {
      v29 = TSCEFormulaRewriteContext::containingCell(v28);
      v32 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v19, v30, *v29, v31);
LABEL_15:
      TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v36 = &v42;
      v37 = v27;
      tableUID._lower = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(v32, v37, v36, v38);
      TSCEASTRelativeCoordRefElement::setRelativeCoord(a2, &tableUID, a1, v39);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

LABEL_16:

  return a2;
}

TSCEASTColonTractElement *sub_221491F8C(TSCEFormulaRewriteContext **a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  lower = 0;
  v50 = 0;
  if (objc_msgSend_hasTableUID(v6, v7, v8, v9))
  {
    lower = objc_msgSend_tableUID(v6, v10, v11, v12);
  }

  else
  {
    v14 = TSCEFormulaRewriteContext::containingCell(a1[1]);
    upper = v14->var0.var0._tableUID._upper;
    lower = v14->var0.var0._tableUID._lower;
  }

  v50 = upper;
  tableUID._lower = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
  v17 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v15, &tableUID, v16);
  if (objc_msgSend_isValid(v17, v18, v19, v20))
  {
    v21 = a1[17];
    v22 = sub_221089E8C(a1);
    v24 = objc_msgSend_coordMapperForTableUID_calcEngine_(v21, v23, &lower, v22);

    v25 = a1[17];
    tableUID = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0._tableUID;
    v26 = sub_221089E8C(a1);
    v28 = objc_msgSend_coordMapperForTableUID_calcEngine_(v25, v27, &tableUID, v26);

    v32 = a1[18];
    if (v32 == 1)
    {
      if (v24)
      {
        v34 = objc_msgSend_viewTractRefForBaseTractRef_(v24, v29, v17, v31);
      }

      else
      {
        v34 = objc_msgSend_copy(v17, v29, v30, v31);
      }

      v35 = v34;
      coordinate = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      if (v28)
      {
        coordinate = objc_msgSend_viewCellCoordForBaseCellCoord_(v28, v42, coordinate, v43);
      }

      TSCEFormulaRewriteContext::containingCell(a1[1]);
      v45 = [TSCERelativeTractRef alloc];
      tableUID._lower = coordinate;
      v41 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v45, v46, v35, &tableUID);
      if (!v41)
      {
        goto LABEL_21;
      }
    }

    else
    {
      if (v32 != 2)
      {
LABEL_22:

        goto LABEL_23;
      }

      if (v24)
      {
        v33 = objc_msgSend_chromeTractRefForBaseTractRef_(v24, v29, v17, v31);
      }

      else
      {
        v33 = objc_msgSend_copy(v17, v29, v30, v31);
      }

      v35 = v33;
      v38 = TSCEFormulaRewriteContext::containingCell(a1[1])->var0.var0.coordinate;
      if (v28)
      {
        v38 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v28, v36, v38, v37);
      }

      TSCEFormulaRewriteContext::containingCell(a1[1]);
      v39 = [TSCERelativeTractRef alloc];
      tableUID._lower = v38;
      v41 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v39, v40, v35, &tableUID);
      if (!v41)
      {
LABEL_21:

        goto LABEL_22;
      }
    }

    TSCEASTColonTractElement::setRelativeTractRef(this, v41, v6, a1, 0);
    goto LABEL_21;
  }

LABEL_23:

  return this;
}

void sub_221492290(TSCEFormulaRewriteContext *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, __int128 *a4@<X8>)
{
  v7 = a3;
  v8 = TSCEFormulaRewriteContext::containingCell(a1);
  *a4 = *&v8->var0.var0.coordinate.row;
  *(a4 + 2) = v8->var0.var0._tableUID._upper;
  tableUID = v8->var0.var0._tableUID;
  v12 = objc_msgSend_srcCoordMapper(v7, v9, v10, v11);
  v15 = v12;
  if (!v12)
  {
    v16 = a1->var0;
    v20 = objc_msgSend_coordMapperForTableUID_calcEngine_(v7, v17, &tableUID, v16);
    if (!v20)
    {
      if (!v16 || (objc_msgSend_tableOrLinkedResolverForTableUID_(v16, v18, &tableUID, v19), v21 = objc_claimAutoreleasedReturnValue(), (v23 = v21) == 0) || (objc_msgSend_coordMapper(v21, v18, v22, v19), v20 = objc_claimAutoreleasedReturnValue(), v23, !v20))
      {
        v24 = MEMORY[0x277D81150];
        v25 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "static TSCECellRef TSTConvertFormulasToBaseForCategoriesRewriter::convertedContainingCellRefForColonTractRewrites(TSCEFormulaRewriteContext &, TSTFormulaCoordinateSpace, TSTFormulaRewriteSpec *__strong)", v19);
        v28 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v26, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v27);
        v29 = TSKUIDStruct::description(&tableUID);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v30, v25, v28, 245, 0, "convertedContainingCellRefForColonTractRewrites: No coordMapper found for tableUID: %@", v29);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
LABEL_18:

        goto LABEL_19;
      }
    }

    v36 = *a4;
    v37 = *(a4 + 2);
    if (a2 == 2)
    {
      objc_msgSend_chromeCellRefForBaseCellRef_(v20, v18, &v36, v19);
    }

    else
    {
      if (a2 != 1)
      {
LABEL_17:

        goto LABEL_18;
      }

      objc_msgSend_viewCellRefForBaseCellRef_(v20, v18, &v36, v19);
    }

    *a4 = v34;
    *(a4 + 2) = v35;
    goto LABEL_17;
  }

  v36 = *a4;
  v37 = *(a4 + 2);
  if (a2 == 2)
  {
    objc_msgSend_chromeCellRefForBaseCellRef_(v12, v13, &v36, v14);
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    objc_msgSend_viewCellRefForBaseCellRef_(v12, v13, &v36, v14);
LABEL_10:
    *a4 = v34;
    *(a4 + 2) = v35;
  }

LABEL_19:
}

TSCEFormulaObject *sub_22149252C(void *a1, TSCEFormulaRewriteContext *a2, void *a3, uint64_t a4, unsigned int a5)
{
  v9 = a1;
  v10 = a3;
  if (v9)
  {
    v11 = v9;
    v12 = a2->var0;
    v19 = v11;
    if ((objc_msgSend_translationFlags(v11, v13, v14, v15) & 0x40) != 0)
    {
      sub_221492290(a2, a4, v10, &v43);
      TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v38, v12, &v43);
      v19 = objc_msgSend_copyByConvertingColonToColonTract_(v11, v20, &v38, v21);
    }

    v22 = objc_msgSend_astNodeArrayCopy(v19, v16, v17, v18);
    sub_22149296C(&v38, v22, a2, v10, a4);
    v41 = a5 & 1;
    v23 = *&vshl_u16((*&vdup_n_s16(a5) & 0xFF00FF00FF00FFLL), 0xFFFDFFFCFFFEFFFFLL) & 0xFF01FF01FF01FF01;
    v42 = vuzp1_s8(v23, v23).u32[0];
    TSCEASTStreamIterator::rewrite(&v38, v24, v25, v26);
    if (v38.var2.var4)
    {
      v27 = v39;
      v39 = 0;
      v28 = [TSCEFormulaObject alloc];
      v32 = objc_msgSend_translationFlags(v19, v29, v30, v31);
      v34 = objc_msgSend_initWithNodeArray_translationFlags_(v28, v33, v27, v32);

      TSCEASTNodeArray::freeNodeArray(v27, v35);
    }

    else
    {
      v34 = v11;
    }

    TSCEASTStreamIterator::~TSCEASTStreamIterator(&v38, v36);
  }

  else
  {
    v34 = 0;
  }

  return v34;
}

void sub_221492740(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

void sub_22149277C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11 = objc_msgSend_boundingRange(v5, v7, v8, v9);
  v35 = v10;
  v36 = v11;
  if (*(a1 + 144) == 2)
  {
    v34 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v6, v10, v11, v12);
    v15 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v6, v13, *&v35, v14);
  }

  else
  {
    v34 = objc_msgSend_viewCellCoordForBaseCellCoord_(v6, v10, v11, v12);
    v15 = objc_msgSend_viewCellCoordForBaseCellCoord_(v6, v17, *&v35, v18);
  }

  v33 = v15;
  v19 = TSUCellCoord::offsetBetween(&v33, &v34, v16);
  if (v19 == TSUCellCoord::offsetBetween(&v35, &v36, v20))
  {
    TSUIndexSet::TSUIndexSet(&v32);
    TSUIndexSet::TSUIndexSet(&v31);
    for (i = v36.row; i <= v35.row; ++i)
    {
      TSUIndexSet::addIndex(&v32);
    }

    column = v36.column;
    if (v36.column <= v35.column)
    {
      do
      {
        TSUIndexSet::addIndex(&v31);
        ++column;
      }

      while (v35.column >= column);
    }

    v23 = TSUIndexSet::asNSIndexSet(&v32);
    v26 = objc_msgSend_fillInRowGapsUsingIndexes_(v5, v24, v23, v25);

    v27 = TSUIndexSet::asNSIndexSet(&v31);
    v30 = objc_msgSend_fillInColumnGapsUsingIndexes_(v5, v28, v27, v29);

    TSUIndexSet::~TSUIndexSet(&v31);
    TSUIndexSet::~TSUIndexSet(&v32);
  }
}

void sub_221492900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, TSUIndexSet *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v15;

  TSUIndexSet::~TSUIndexSet(&a9);
  TSUIndexSet::~TSUIndexSet(&a13);

  _Unwind_Resume(a1);
}

uint64_t sub_22149296C(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *a1 = &unk_2834A8A00;
  *(a1 + 136) = v9;
  *(a1 + 144) = a5;
  *(a1 + 152) = 0;
  *(a1 + 156) = 0;
  return a1;
}

void sub_2214929FC(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  if ((~objc_msgSend_preserveFlags(v5, v6, v7, v8) & 5) != 0)
  {
    v30._begin = objc_msgSend_relativeBoundingRangeWithContainingCell_(v5, v9, a2, v10) << 16 >> 48;
    v30._end = v11 << 16 >> 48;
    v23 = 0;
    v24 = &v23;
    v25 = 0x5012000000;
    v26 = sub_221492BF4;
    v27 = sub_221492C18;
    v28 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v29, &v30);
    v12 = v24;
    v16 = objc_msgSend_relativeColumns(v5, v13, v14, v15);
    TSUIndexSet::removeIndexes((v12 + 6), v16);
    objc_msgSend_columns(v5, v17, v18, v19);
    *&v22 = -1;
    *&v20.f64[0] = 0x8000000080000000;
    *&v20.f64[1] = 0x8000000080000000;
    v22._singleRange = vnegq_f64(v20);
    v22._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::enumerateIndexesUsingBlock();
    *a3 |= 3u;
    *&v21.f64[0] = 0x8000000080000000;
    *&v21.f64[1] = 0x8000000080000000;
    *(a3 + 8) = vnegq_f64(v21);
    *(a3 + 24) = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v22);
    _Block_object_dispose(&v23, 8);
    TSUIndexSet::~TSUIndexSet(&v29);
  }

  else
  {
    TSUIndexSet::TSUIndexSet(a3);
  }
}

uint64_t sub_221492BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  v2 = a1 + 48;
  *v2 = v3 | 3;
  *&v4.f64[0] = 0x8000000080000000;
  *&v4.f64[1] = 0x8000000080000000;
  *(v2 + 8) = vnegq_f64(v4);
  *(v2 + 24) = 0;
  return TSUIndexSet::operator=();
}

void sub_221492C3C(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = a1;
  if ((~objc_msgSend_preserveFlags(v5, v6, v7, v8) & 0xA) != 0)
  {
    v30._begin = objc_msgSend_relativeBoundingRangeWithContainingCell_(v5, v9, a2, v10);
    v30._end = v11;
    v23 = 0;
    v24 = &v23;
    v25 = 0x5012000000;
    v26 = sub_221492BF4;
    v27 = sub_221492C18;
    v28 = &unk_22188E88F;
    TSUIndexSet::TSUIndexSet(&v29, &v30);
    objc_msgSend_relativeRows(v5, v12, v13, v14);
    *&v22 = -1;
    *&v15.f64[0] = 0x8000000080000000;
    *&v15.f64[1] = 0x8000000080000000;
    v22._singleRange = vnegq_f64(v15);
    v22._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::removeIndexes((v24 + 6), &v22);
    objc_msgSend_rows(v5, v16, v17, v18);
    *&v21 = -1;
    *&v19.f64[0] = 0x8000000080000000;
    *&v19.f64[1] = 0x8000000080000000;
    v21._singleRange = vnegq_f64(v19);
    v21._multipleRanges = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::enumerateIndexesUsingBlock();
    *a3 |= 3u;
    *&v20.f64[0] = 0x8000000080000000;
    *&v20.f64[1] = 0x8000000080000000;
    *(a3 + 8) = vnegq_f64(v20);
    *(a3 + 24) = 0;
    TSUIndexSet::operator=();
    TSUIndexSet::~TSUIndexSet(&v21);
    TSUIndexSet::~TSUIndexSet(&v22);
    _Block_object_dispose(&v23, 8);
    TSUIndexSet::~TSUIndexSet(&v29);
  }

  else
  {
    TSUIndexSet::TSUIndexSet(a3);
  }
}

void sub_221492E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, TSUIndexSet *a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  TSUIndexSet::~TSUIndexSet(va);
  _Block_object_dispose(va1, 8);
  TSUIndexSet::~TSUIndexSet((v19 + 48));

  _Unwind_Resume(a1);
}

void sub_221492E8C(void *a1@<X1>, TSUIndexSet *a2@<X8>)
{
  v3 = a1;
  TSUIndexSet::TSUIndexSet(a2);
  if ((~objc_msgSend_preserveFlags(v3, v4, v5, v6) & 0xA) == 0)
  {
    v10 = objc_msgSend_rows(v3, v7, v8, v9);
    if (TSUIndexSet::count(v10))
    {
      v11._begin = TSUIndexSet::firstIndex(v10);
      v11._end = TSUIndexSet::lastIndex(v10);
      TSUIndexSet::TSUIndexSet(&v12, &v11);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v12);
      TSUIndexSet::removeIndexes(a2, v10);
    }
  }
}

void sub_221492F3C(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);
  TSUIndexSet::~TSUIndexSet(v12);

  _Unwind_Resume(a1);
}

void sub_221492F74(void *a1@<X1>, TSUIndexSet *a2@<X8>)
{
  v3 = a1;
  TSUIndexSet::TSUIndexSet(a2);
  if ((~objc_msgSend_preserveFlags(v3, v4, v5, v6) & 5) == 0)
  {
    v10 = objc_msgSend_columns(v3, v7, v8, v9);
    if (TSUIndexSet::count(v10))
    {
      v11._begin = TSUIndexSet::firstIndex(v10);
      v11._end = TSUIndexSet::lastIndex(v10);
      TSUIndexSet::TSUIndexSet(&v12, &v11);
      TSUIndexSet::operator=();
      TSUIndexSet::~TSUIndexSet(&v12);
      TSUIndexSet::removeIndexes(a2, v10);
    }
  }
}

void sub_221493024(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  TSUIndexSet::~TSUIndexSet(&a11);
  TSUIndexSet::~TSUIndexSet(v12);

  _Unwind_Resume(a1);
}

TSCEASTColonTractElement *sub_22149305C(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v237 = 0;
  v238 = 0;
  if (objc_msgSend_hasTableUID(v6, v7, v8, v9))
  {
    lower = objc_msgSend_tableUID(v6, v10, v11, v12);
  }

  else
  {
    v16 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    lower = v16->var0.var1._tableUID._lower;
    upper = v16->var0.var1._tableUID._upper;
  }

  v237 = lower;
  v238 = upper;
  if (!(lower | upper))
  {
    v17 = MEMORY[0x277D81150];
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], upper, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v15);
    v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v20);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 440, 0, "How did this happen? refTableUID is invalid in TSTConvertFormulasFromChromeToBaseForCategoriesRewriter::colonTractNode");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
  }

  v26 = *(a1 + 17);
  v27 = sub_221089E8C(a1);
  v29 = objc_msgSend_coordMapperForTableUID_calcEngine_(v26, v28, &v237, v27);

  v30 = *(a1 + 17);
  *&v235 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1._tableUID;
  v31 = sub_221089E8C(a1);
  v33 = objc_msgSend_coordMapperForTableUID_calcEngine_(v30, v32, &v235, v31);

  if (objc_msgSend_isRectangularRange(v6, v34, v35, v36))
  {
    v37 = *(a1 + 154) ^ 1;
    if (!v29)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v37 = 0;
    if (!v29)
    {
      goto LABEL_62;
    }
  }

  coordinate = 0;
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v40 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
  v41 = *(a1 + 18);
  if (v41 == 1)
  {
    if (v33)
    {
      v40 = objc_msgSend_viewCellCoordForBaseCellCoord_(v33, v38, v40, v39);
    }

    v52 = coordinate;
    v53 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v55 = v53->var0.var0._tableUID._lower;
    v54 = v53->var0.var0._tableUID._upper;
    v56 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v55 == v56->var0.var1._tableUID._lower && v54 == v56->var0.var1._tableUID._upper)
    {
      v52 = objc_msgSend_viewCellCoordForBaseCellCoord_(v33, v57, coordinate, v59);
    }

    else
    {
      v74 = objc_msgSend_srcCoordMapper(*(a1 + 17), v57, v58, v59);
      if (v74 || (v75 = *(a1 + 17), *&v235 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID, sub_221089E8C(a1), v76 = objc_claimAutoreleasedReturnValue(), objc_msgSend_coordMapperForTableUID_calcEngine_(v75, v77, &v235, v76), v74 = objc_claimAutoreleasedReturnValue(), v76, v74))
      {
        v52 = objc_msgSend_viewCellCoordForBaseCellCoord_(v74, v72, coordinate, v73);
      }

      else
      {
        v226 = MEMORY[0x277D81150];
        v167 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v72, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v73);
        v170 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v168, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v169);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v226, v171, v167, v170, 587, 0, "invalid nil value for '%{public}s'", "srcCoordMapper");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v172, v173, v174);
        v74 = 0;
      }
    }

    *&v235 = v52;
    v78 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v60, &v235, v61);
    if (!objc_msgSend_isValid(v78, v79, v80, v81) || (*(a1 + 154) & 1) != 0 || (*(a1 + 155) & 1) != 0)
    {
      v85 = 0;
    }

    else
    {
      *&v234 = v52;
      sub_221492C3C(v6, &v234, &v235);
      *&v233 = v52;
      sub_2214929FC(v6, &v233, &v234);
      sub_221492E8C(v6, &v233);
      sub_221492F74(v6, &v232);
      v231._flags = objc_msgSend_preserveFlags(v78, v138, v139, v140);
      v230._topLeft = objc_msgSend_boundingRange(v78, v141, v142, v143);
      v230._bottomRight = v144;
      TSCERangeCoordinate::fixInversions(&v230, &v231);
      TSCERangeCoordinate::setPreserveFlags(&v230, &v231);
      v229._topLeft = 0;
      v229._bottomRight = 0;
      *&v228 = v52;
      *&v227 = v40;
      v229._topLeft = TSCERangeCoordinate::slideRangeTo(&v230, &v228, &v227, 1);
      v229._bottomRight = v145;
      v146 = [TSCECellTractRef alloc];
      v150 = objc_msgSend_tableUID(v78, v147, v148, v149);
      *&v228 = v229;
      v228._singleRange._end = v150;
      v228._multipleRanges = v151;
      v153 = objc_msgSend_initWithRangeRef_(v146, v151, &v228, v152);
      v154 = TSCERangeCoordinate::preserveFlags(&v229);
      objc_msgSend_setPreserveFlags_(v153, v155, v154, v156);
      if (v37)
      {
        v85 = objc_msgSend_baseTractRefForViewTractRef_(v29, v157, v153, v158);
      }

      else
      {
        v200 = [TSCERelativeTractRef alloc];
        *&v228 = v40;
        v202 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v200, v201, v78, &v228);
        objc_msgSend_rows(v202, v203, v204, v205);
        *&v228 |= 3u;
        *&v206.f64[0] = 0x8000000080000000;
        *&v206.f64[1] = 0x8000000080000000;
        v228._singleRange = vnegq_f64(v206);
        v228._multipleRanges = 0;
        TSUIndexSet::operator=();
        objc_msgSend_columns(v202, v207, v208, v209);
        *&v227 |= 3u;
        *&v210.f64[0] = 0x8000000080000000;
        *&v210.f64[1] = 0x8000000080000000;
        v227._singleRange = vnegq_f64(v210);
        v227._multipleRanges = 0;
        TSUIndexSet::operator=();
        TSUIndexSet::shiftAllIndexesBy(&v235);
        objc_msgSend_removeRows_(v153, v211, &v235, v212);
        objc_msgSend_addRows_(v153, v213, &v228, v214);
        objc_msgSend_removeRows_(v153, v215, &v233, v216);
        TSUIndexSet::shiftAllIndexesBy(&v234);
        objc_msgSend_removeColumns_(v153, v217, &v234, v218);
        objc_msgSend_addColumns_(v153, v219, &v227, v220);
        objc_msgSend_removeColumns_(v153, v221, &v232, v222);
        v85 = objc_msgSend_baseTractRefForViewTractRef_(v29, v223, v153, v224);
        TSUIndexSet::~TSUIndexSet(&v227);
        TSUIndexSet::~TSUIndexSet(&v228);
      }

      TSUIndexSet::~TSUIndexSet(&v232);
      TSUIndexSet::~TSUIndexSet(&v233);
      TSUIndexSet::~TSUIndexSet(&v234);
      TSUIndexSet::~TSUIndexSet(&v235);
    }

    if (objc_msgSend_isValid(v85, v82, v83, v84))
    {
      v89 = *(a1 + 17);
      if (v89)
      {
        if (*(a1 + 152) == 1)
        {
          v90 = sub_221089E8C(a1);
          *&v235 = objc_msgSend_tableRangeForTable_calcEngine_(v89, v91, &v237, v90);
          v235._singleRange._begin = v92;

          if (TSUCellRect::isValid(&v235))
          {
            objc_msgSend_intersectWithCellRectIgnoringSpanning_(v85, v86, &v235, v88);
          }
        }
      }
    }

    if (!objc_msgSend_isValid(v85, v86, v87, v88))
    {
      TSCEASTIteratorBase::createReferenceError(a1, v93, v94, v95);
    }

    goto LABEL_60;
  }

  if (v41 == 2)
  {
    if (v33)
    {
      v40 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v33, v38, v40, v39);
    }

    v42 = coordinate;
    v43 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    v45 = v43->var0.var0._tableUID._lower;
    v44 = v43->var0.var0._tableUID._upper;
    v46 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
    if (v45 == v46->var0.var1._tableUID._lower && v44 == v46->var0.var1._tableUID._upper)
    {
      v42 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v33, v47, coordinate, v49);
    }

    else
    {
      v64 = objc_msgSend_srcCoordMapper(*(a1 + 17), v47, v48, v49);
      if (v64 || (v65 = *(a1 + 17), *&v235 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0._tableUID, sub_221089E8C(a1), v66 = objc_claimAutoreleasedReturnValue(), objc_msgSend_coordMapperForTableUID_calcEngine_(v65, v67, &v235, v66), v64 = objc_claimAutoreleasedReturnValue(), v66, v64))
      {
        v42 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v64, v62, coordinate, v63);
      }

      else
      {
        v225 = MEMORY[0x277D81150];
        v159 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v62, "virtual TSCEASTElement *TSTConvertFormulasToBaseForCategoriesRewriter::colonTractNode(TSCEASTColonTractElement *)", v63);
        v162 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v160, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTConvertFormulasFromBaseForCategoriesRewriter.mm", v161);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v225, v163, v159, v162, 468, 0, "invalid nil value for '%{public}s'", "srcCoordMapper");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v164, v165, v166);
        v64 = 0;
      }
    }

    if (*(a1 + 156) == 1)
    {
      *&v235 = v40;
      v68 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v50, &v235, v51);
    }

    else if ((*(a1 + 154) & 1) != 0 || *(a1 + 155) == 1)
    {
      v68 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v50, &coordinate, v51);
    }

    else
    {
      *&v235 = v42;
      v68 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v50, &v235, v51);
    }

    v78 = v68;
    if (objc_msgSend_isValid(v68, v69, v70, v71))
    {
      if (*(a1 + 154) & 1) != 0 || (*(a1 + 155))
      {
        v85 = objc_msgSend_baseTractRefForChromeTractRef_(v29, v96, v78, v98);
        isValid = objc_msgSend_isValid(v85, v99, v100, v101);
        goto LABEL_54;
      }

      *&v234 = v42;
      sub_221492C3C(v6, &v234, &v235);
      *&v233 = v42;
      sub_2214929FC(v6, &v233, &v234);
      sub_221492E8C(v6, &v233);
      sub_221492F74(v6, &v232);
      v231._flags = objc_msgSend_preserveFlags(v78, v117, v118, v119);
      v230._topLeft = objc_msgSend_boundingRange(v78, v120, v121, v122);
      v230._bottomRight = v123;
      TSCERangeCoordinate::fixInversions(&v230, &v231);
      TSCERangeCoordinate::setPreserveFlags(&v230, &v231);
      v229._topLeft = 0;
      v229._bottomRight = 0;
      *&v228 = v42;
      *&v227 = v40;
      v229._topLeft = TSCERangeCoordinate::slideRangeTo(&v230, &v228, &v227, 1);
      v229._bottomRight = v124;
      v125 = [TSCECellTractRef alloc];
      v129 = objc_msgSend_tableUID(v78, v126, v127, v128);
      *&v228 = v229;
      v228._singleRange._end = v129;
      v228._multipleRanges = v130;
      v132 = objc_msgSend_initWithRangeRef_(v125, v130, &v228, v131);
      v133 = TSCERangeCoordinate::preserveFlags(&v229);
      objc_msgSend_setPreserveFlags_(v132, v134, v133, v135);
      if (v37)
      {
        v85 = objc_msgSend_baseTractRefForChromeTractRef_(v29, v136, v132, v137);
      }

      else
      {
        v175 = [TSCERelativeTractRef alloc];
        *&v228 = v40;
        v177 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v175, v176, v78, &v228);
        objc_msgSend_rows(v177, v178, v179, v180);
        *&v228 |= 3u;
        *&v181.f64[0] = 0x8000000080000000;
        *&v181.f64[1] = 0x8000000080000000;
        v228._singleRange = vnegq_f64(v181);
        v228._multipleRanges = 0;
        TSUIndexSet::operator=();
        objc_msgSend_columns(v177, v182, v183, v184);
        *&v227 |= 3u;
        *&v185.f64[0] = 0x8000000080000000;
        *&v185.f64[1] = 0x8000000080000000;
        v227._singleRange = vnegq_f64(v185);
        v227._multipleRanges = 0;
        TSUIndexSet::operator=();
        TSUIndexSet::shiftAllIndexesBy(&v235);
        objc_msgSend_removeRows_(v132, v186, &v235, v187);
        objc_msgSend_addRows_(v132, v188, &v228, v189);
        objc_msgSend_removeRows_(v132, v190, &v233, v191);
        TSUIndexSet::shiftAllIndexesBy(&v234);
        objc_msgSend_removeColumns_(v132, v192, &v234, v193);
        objc_msgSend_addColumns_(v132, v194, &v227, v195);
        objc_msgSend_removeColumns_(v132, v196, &v232, v197);
        v85 = objc_msgSend_baseTractRefForChromeTractRef_(v29, v198, v132, v199);
        TSUIndexSet::~TSUIndexSet(&v227);
        TSUIndexSet::~TSUIndexSet(&v228);
      }

      TSUIndexSet::~TSUIndexSet(&v232);
      TSUIndexSet::~TSUIndexSet(&v233);
      TSUIndexSet::~TSUIndexSet(&v234);
      TSUIndexSet::~TSUIndexSet(&v235);
    }

    else
    {
      v85 = 0;
    }

    isValid = objc_msgSend_isValid(v85, v96, v97, v98);
LABEL_54:
    if (isValid)
    {
      v106 = *(a1 + 17);
      if (v106)
      {
        if (*(a1 + 152) == 1)
        {
          v107 = sub_221089E8C(a1);
          *&v235 = objc_msgSend_tableRangeForTable_calcEngine_(v106, v108, &v237, v107);
          v235._singleRange._begin = v109;

          if (TSUCellRect::isValid(&v235))
          {
            objc_msgSend_intersectWithCellRectIgnoringSpanning_(v85, v103, &v235, v105);
          }
        }
      }
    }

    if (!objc_msgSend_isValid(v85, v103, v104, v105))
    {
      TSCEASTIteratorBase::createReferenceError(a1, v110, v111, v112);
    }

LABEL_60:
    v113 = [TSCERelativeTractRef alloc];
    *&v235 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var1.coordinate;
    v115 = objc_msgSend_initWithAbsoluteTractRef_hostCell_(v113, v114, v85, &v235);
    TSCEASTColonTractElement::setRelativeTractRef(this, v115, v6, a1, 0);
  }

LABEL_62:

  return this;
}

void sub_221493B94(_Unwind_Exception *a1, uint64_t a2, TSUIndexSet *a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, TSUIndexSet *a11, TSUIndexSet *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  TSUIndexSet::~TSUIndexSet(&a25);
  TSUIndexSet::~TSUIndexSet(&a29);
  TSUIndexSet::~TSUIndexSet((v34 - 176));
  TSUIndexSet::~TSUIndexSet((v34 - 144));

  _Unwind_Resume(a1);
}

TSCEASTRelativeCoordRefElement *sub_221493D74(uint64_t a1, TSCEASTRelativeCoordRefElement *ReferenceError)
{
  v4 = sub_221089E8C(a1);
  if (v4)
  {
    *&v81[0]._row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    v7 = objc_msgSend_tableOrLinkedResolverForTableUID_(v4, v5, v81, v6);
    v11 = v7;
    if (v7)
    {
      v12 = objc_msgSend_tableModel(v7, v8, v9, v10);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  v13 = TSCEASTElement::refFlags(ReferenceError, a1);
  v17 = objc_msgSend_tableInfo(v12, v14, v15, v16);
  isCategorized = objc_msgSend_isCategorized(v17, v18, v19, v20);

  if ((isCategorized & 1) != 0 || (v13 & 1) != 0 && ((v41 = TSCEASTRelativeCoordRefElement::tableUID(ReferenceError, a1, v23, v24), v43 = v42, v41 != objc_msgSend_tableUID(v12, v42, v44, v45)) || v43 != v22))
  {
    v25 = 0;
    if (*(a1 + 153) == 1 && (v13 & 1) != 0)
    {
      v26 = objc_msgSend_fromTableUID(*(a1 + 136), v22, v23, v24);
      v28 = v27;
      v25 = v26 == TSCEASTRelativeCoordRefElement::tableUID(ReferenceError, a1, v29, v30) && v28 == v31;
    }

    v32 = *(a1 + 136);
    *&v81[0]._row = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1._tableUID;
    v33 = sub_221089E8C(a1);
    v35 = objc_msgSend_coordMapperForTableUID_calcEngine_(v32, v34, v81, v33);

    if ((v13 & 1) == 0 || v25)
    {
      v40 = v35;
    }

    else
    {
      v81[0] = 0;
      v81[1] = 0;
      v81[0] = TSCEASTRelativeCoordRefElement::tableUID(ReferenceError, a1, v36, v37);
      v81[1] = v55;
      v56 = *(a1 + 136);
      v57 = sub_221089E8C(a1);
      v40 = objc_msgSend_coordMapperForTableUID_calcEngine_(v56, v58, v81, v57);
    }

    v59 = TSCEASTRelativeCoordRefElement::relativeCoord(ReferenceError, a1, v38, v39);
    v80._flags = TSCEASTRelativeCoordRefElement::preserveFlags(ReferenceError, a1);
    v60 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
    coordinate = v60->var0.var1.coordinate;
    v64 = *(a1 + 144);
    if (v64 == 1)
    {
      v72 = v60->var0.var1.coordinate;
      if (v35)
      {
        v72 = objc_msgSend_viewCellCoordForBaseCellCoord_(v35, v61, coordinate, v62);
      }

      v73 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v72, v59, &v80, v62);
      if (!v40)
      {
        goto LABEL_35;
      }

      v69 = objc_msgSend_baseCellCoordForViewCellCoord_(v40, v74, v73, v75);
      if ((*&v69 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        TSCEASTIteratorBase::createReferenceError(a1, *&v69, v76, v71);
      }
    }

    else
    {
      if (v64 != 2)
      {
        goto LABEL_35;
      }

      v65 = v60->var0.var1.coordinate;
      if (v35)
      {
        v65 = objc_msgSend_chromeCellCoordForBaseCellCoord_(v35, v61, coordinate, v62);
      }

      v66 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v65, v59, &v80, v62);
      if (!v40)
      {
        goto LABEL_35;
      }

      v69 = objc_msgSend_baseCellCoordForChromeCellCoord_(v40, v67, v66, v68);
      if ((*&v69 & 0xFFFFFFFFFFFFLL) == 0x7FFF7FFFFFFFLL)
      {
        TSCEASTIteratorBase::createReferenceError(a1, *&v69, v70, v71);
      }
    }

    v77 = &v80;
    v81[0] = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(coordinate, v69, v77, v71);
    TSCEASTRelativeCoordRefElement::setRelativeCoord(ReferenceError, v81, a1, v78);
LABEL_35:

    goto LABEL_36;
  }

  if (*(a1 + 136))
  {
    if (*(a1 + 152) == 1)
    {
      v46 = TSCEASTRelativeCoordRefElement::relativeCoord(ReferenceError, a1, v23, v24);
      v80._flags = TSCEASTRelativeCoordRefElement::preserveFlags(ReferenceError, a1);
      v47 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8))->var0.var1.coordinate;
      v49 = TSCEMakeAbsoluteCellCoordinateFromRelativeCellCoordinate(v47, v46, &v80, v48);
      v50 = TSCEFormulaRewriteContext::containingCell(*(a1 + 8));
      v51 = &v80;
      v52 = v49;
      v81[0] = TSCERelativeCellCoordinate::makeRelativeCellCoordinateFromAbsoluteCoordinates(*&v50->var0.var1.coordinate, v52, v51, v53);
      if (v81[0] != v46)
      {
        TSCEASTRelativeCoordRefElement::setRelativeCoord(ReferenceError, v81, a1, v54);
      }
    }
  }

LABEL_36:

  return ReferenceError;
}

void sub_2214941E0(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_221494230(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

void sub_221494550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v33 - 184), 8);

  _Unwind_Resume(a1);
}

double sub_221494594(uint64_t a1, int a2)
{
  v2 = a2 - *(a1 + 96);
  v3 = **(a1 + 72);
  v4 = *(v3 + 8 * v2) * *(a1 + 80);
  v5 = **(a1 + 64);
  *(v5 + 8 * v2) = v4;
  v6 = **(a1 + 88);
  v7 = *(v6 + 8 * v2);
  if (v4 < v7)
  {
    *(v5 + 8 * v2) = v7;
    *(*(*(a1 + 32) + 8) + 24) = *(*(*(a1 + 32) + 8) + 24) - *(v3 + 8 * v2);
    *(*(*(a1 + 40) + 8) + 24) = *(*(*(a1 + 40) + 8) + 24) - *(v6 + 8 * v2);
    --*(*(*(a1 + 48) + 8) + 24);
    v4 = *(v5 + 8 * v2);
  }

  v8 = v4 - *(v3 + 8 * v2);
  v9 = *(*(a1 + 56) + 8);
  result = v8 + *(v9 + 24);
  *(v9 + 24) = result;
  return result;
}

void sub_221494948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_221494998(TSCEPartialEvalRewriter *a1, TSCEFormulaObject *a2, TSCEFormulaRewriteContext *a3, TSCEEvaluationContext *a4)
{
  TSCEPartialEvalRewriter::TSCEPartialEvalRewriter(a1, a2, a3, a4);
  *v4 = &unk_2834A8B90;
  *(v4 + 152) = 1;
}

TSCEASTFunctionElement *sub_2214949D4(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v7 = (*(*this + 48))(this, a1);
  if (v6 == 373)
  {
    TSCEASTFunctionElement::setFunctionIndex(this, 0x130, a1, v9);
  }

  else
  {
    v10 = v7;
    if (v6 == 280)
    {
      v11 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v8, 280, v9);
      TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v10, v11, 0);
    }

    else if (v6 == 344 && v7 >= 4 && (v7 & 1) == 0)
    {
      TSUDecimal::operator=();
      TSCEASTIteratorBase::createNumber(a1, &v16, v13, v14);
    }
  }

  return this;
}

TSCEASTArrayElement *sub_221494B10(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(this, a1, a3, a4);
  v9 = TSCEASTArrayElement::numRows(this, a1, v7, v8);
  TSCEPartialEvalRewriter::bakeChildNodesToValues(a1, this, v9 * v6, 0, 1);
  return this;
}

void sub_221494B78(id *a1)
{
  TSCEPartialEvalRewriter::~TSCEPartialEvalRewriter(a1);

  JUMPOUT(0x223DA1450);
}

TSUCellCoord __C(TSUCellCoord *a1, TSUCellCoord *a2)
{
  v2 = *a2;
  v5._topLeft = *a1;
  v5._bottomRight = v2;
  v4._flags = 0;
  TSCERangeCoordinate::fixInversions(&v5, &v4);
  return v5._topLeft;
}

uint64_t TSUCellRectToTSCERangeCoordinate(uint64_t a1, uint64_t a2)
{
  if (!(HIDWORD(a2) * a2))
  {
    return 0x7FFF7FFFFFFFLL;
  }

  return result;
}

BOOL TSCERangeCoordinate::isSpanning(TSCERangeCoordinate *this)
{
  v1 = *&this->_topLeft;
  v2 = *&this->_topLeft & 0xFFFF00000000;
  v3 = 0x7FFF00000000;
  v4 = 0x7FFFFFFFLL;
  if (v1 != 0x7FFFFFFF || v2 == 0x7FFF00000000)
  {
    if (v2 != 0x7FFF00000000 || v1 == 0x7FFFFFFF)
    {
      return 0;
    }

    v9 = 0xFFFF00000000;
    v3 = 0x7FFFFFFFLL;
    v8 = 0xFFFFFFFFLL;
    v4 = 0x7FFF00000000;
  }

  else
  {
    v8 = 0xFFFF00000000;
    v9 = 0xFFFFFFFFLL;
  }

  bottomRight = this->_bottomRight;
  return (*&bottomRight & v9) == v4 && (*&bottomRight & v8) != v3;
}

BOOL TSCERangeCoordinate::spansAllRows(TSCERangeCoordinate *this)
{
  if (*&this->_topLeft != 0x7FFFFFFF || (*&this->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  return bottomRight.row == 0x7FFFFFFF && (*&bottomRight & 0xFFFF00000000) != 0x7FFF00000000;
}

BOOL TSCERangeCoordinate::spansAllColumns(TSCERangeCoordinate *this)
{
  if ((*&this->_topLeft & 0xFFFF00000000) != 0x7FFF00000000 || *&this->_topLeft == 0x7FFFFFFFLL)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  return (*&bottomRight & 0xFFFF00000000) == 0x7FFF00000000 && bottomRight.row != 0x7FFFFFFF;
}

BOOL TSCERangeCoordinate::isSingleCell(TSCERangeCoordinate *this)
{
  topLeft = this->_topLeft;
  if (*&this->_topLeft == 0x7FFFFFFF || (*&this->_topLeft & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  bottomRight = this->_bottomRight;
  if (bottomRight.row == 0x7FFFFFFF || (*&bottomRight & 0xFFFF00000000) == 0x7FFF00000000)
  {
    return 0;
  }

  v6 = WORD2(*&this->_topLeft) <= bottomRight.column;
  if (topLeft.row > bottomRight.row)
  {
    v6 = 0;
  }

  if (topLeft.column != bottomRight.column)
  {
    v6 = 0;
  }

  return topLeft.row == bottomRight.row && v6;
}

BOOL TSCERangeCoordinate::operator==(void *a1, void *a2)
{
  if (*a1 == *a2 && ((v2 = a1[1], v3 = a2[1], ((*a2 ^ *a1) & 0xFFFF00000000) == 0) ? (v4 = v2 == v3) : (v4 = 0), v4))
  {
    return ((v3 ^ v2) & 0xFFFF00000000) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t __C(TSUCellCoord a1, $925F2A0F20B28CD67DCCD182188DAC27 a2)
{
  v7.origin = a1;
  v7.size = a2;
  v2 = *&a1 & 0xFFFFFFFFFFFFLL;
  result = 0x7FFF7FFFFFFFLL;
  if (v2 != 0x7FFF7FFFFFFFLL && a2.numberOfColumns != 0 && a2.numberOfRows != 0)
  {
    if (TSUCellRect::spansAllColumns(&v7))
    {
      return v7.origin.row | 0x7FFF00000000;
    }

    else if (TSUCellRect::spansAllRows(&v7))
    {
      return (v7.origin.column << 32) | 0x7FFFFFFF;
    }

    else
    {
      return v7.origin.row | (v7.origin.column << 32);
    }
  }

  return result;
}

uint64_t sub_221494F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 < a3)
  {
    return -1;
  }

  if (a1 > a3)
  {
    return 1;
  }

  if (WORD2(a1) < WORD2(a3))
  {
    return -1;
  }

  if (WORD2(a1) > WORD2(a3))
  {
    return 1;
  }

  if (a2 < a4)
  {
    return -1;
  }

  if (a2 > a4)
  {
    return 1;
  }

  if (WORD2(a2) >= WORD2(a4))
  {
    return WORD2(a2) > WORD2(a4);
  }

  else
  {
    return -1;
  }
}

unint64_t sub_221494F70(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, char a6, _BYTE *a7, _BYTE *a8, _BYTE *a9)
{
  v9 = a2 & 0xFFFF00000000;
  v10 = a1 & 0xFFFF00000000;
  if (a1 != 0x7FFFFFFFLL && v10 == 0x7FFF00000000 && v9 == 0x7FFF00000000)
  {
    v11 = 0;
    v12 = a2 != 0x7FFFFFFF;
  }

  else
  {
    v12 = 0;
    v11 = v10 != 0x7FFF00000000 && v9 != 0x7FFF00000000 && a1 == 0x7FFFFFFFLL && a2 == 0x7FFFFFFFLL;
  }

  v16 = a4 & 0xFFFF00000000;
  v17 = a3 & 0xFFFF00000000;
  if (a3 != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v16 == 0x7FFF00000000)
  {
    v18 = 0;
    v19 = a4 != 0x7FFFFFFF;
  }

  else
  {
    v19 = 0;
    v18 = v17 != 0x7FFF00000000 && v16 != 0x7FFF00000000 && a3 == 0x7FFFFFFFLL && a4 == 0x7FFFFFFFLL;
  }

  v23 = 0x7FFFFFFF;
  LOWORD(v24) = 0x7FFF;
  if (v12 == v19 && ((v11 ^ v18) & 1) == 0)
  {
    *a7 = 0;
    *a8 = 0;
    if (v12)
    {
      v25 = 0;
      LOWORD(v24) = 0x7FFF;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (WORD2(a2) <= WORD2(a4))
      {
        v29 = a6;
      }

      else
      {
        v29 = a5;
      }

      if (WORD2(a1) <= WORD2(a3))
      {
        v30 = a5;
      }

      else
      {
        v30 = a6;
      }

      if (WORD2(a1) <= WORD2(a3))
      {
        v24 = HIDWORD(a1);
      }

      else
      {
        v24 = HIDWORD(a3);
      }

      *a7 |= v30 & 5;
      v25 = WORD2(a1) > WORD2(a3) || WORD2(a2) > WORD2(a4);
      *a8 |= v29 & 5;
      if (!v11)
      {
LABEL_37:
        if (a2 > a4)
        {
          v26 = a5;
        }

        else
        {
          v26 = a6;
        }

        if (a1 <= a3)
        {
          v27 = a5;
        }

        else
        {
          v27 = a6;
        }

        if (a1 >= a3)
        {
          v23 = a3;
        }

        else
        {
          v23 = a1;
        }

        *a7 |= v27 & 0xA;
        v28 = a1 > a3 || a2 > a4;
        v25 |= v28;
        *a8 |= v26 & 0xA;
        if (!a9)
        {
          return v23 | (v24 << 32);
        }

LABEL_65:
        *a9 = v25 & 1;
        return v23 | (v24 << 32);
      }
    }

    v23 = 0x7FFFFFFF;
    if (!a9)
    {
      return v23 | (v24 << 32);
    }

    goto LABEL_65;
  }

  return v23 | (v24 << 32);
}

uint64_t sub_2214951C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v18._topLeft = __C(v5, v6);
  v18._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v18);
  if (result)
  {
    *&v17 = v18._topLeft.column | (v18._topLeft.row << 32);
    *(&v17 + 1) = v18._bottomRight.column | (v18._bottomRight.row << 32);
    return sub_2214986CC(a1, &v17, a3, (a1 + 8), 0, v9, v10, v11, v12, v13, v14, v15, v16);
  }

  return result;
}

uint64_t sub_22149524C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  v13._topLeft = __C(v5, v6);
  v13._bottomRight = v7;
  result = TSCERangeCoordinate::isValid(&v13);
  if (result)
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    return sub_2214995E4(a1, &column, a3, (a1 + 8));
  }

  return result;
}

void sub_221495334(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *a2;
  v7 = *(a2 + 8);
  v13._topLeft = __C(v6, v7);
  v13._bottomRight = v8;
  if (TSCERangeCoordinate::isValid(&v13))
  {
    column = v13._topLeft.column;
    row = v13._topLeft.row;
    v11 = v13._bottomRight.column;
    v12 = v13._bottomRight.row;
    sub_22149993C(a1, *(a1 + 8), &column, v5);
  }
}

void sub_221495828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221495868(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *sub_221495880(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v8 || objc_msgSend_internalOwnerID(v8, a2, a3, a4) != a3)
  {
    v9 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, a3, a4);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v13 = *(*(a1 + 32) + 16);
    v14 = *a2 & 0xFFFFFFFFFFFFLL;
    v15 = v13;
    return objc_msgSend_RTreeRemove_fromCellRef_(result, a2, a4, &v14);
  }

  return result;
}

void sub_221495A20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void *sub_221495A40(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(*(a1 + 40) + 8) + 40);
  if (!v8 || objc_msgSend_internalOwnerID(v8, a2, a3, a4) != a3)
  {
    v9 = objc_msgSend_dgl_rangeDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, a3, a4);
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    v13 = *(*(a1 + 32) + 16);
    v14 = *a2 & 0xFFFFFFFFFFFFLL;
    v15 = v13;
    return objc_msgSend_RTreeRemove_fromCellRef_(result, a2, a4, &v14);
  }

  return result;
}

void *sub_221495CB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6)
  {
    v7 = objc_msgSend_internalOwnerID(v6, a2, a3, a4);
    v8 = *(a3 + 8);
    if (v7 == v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v8 = *(a3 + 8);
  }

  v9 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v8, a4);
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

LABEL_6:
  v12 = *(*(*(a1 + 48) + 8) + 40);
  if (!v12 || (result = objc_msgSend_isCellInACycle_(v12, a2, a3, a4), (result & 1) == 0))
  {
    v14 = *(a1 + 40);
    v15 = *(*(a1 + 32) + 16);
    v16 = **(a1 + 56) & 0xFFFFFFFFFFFFLL;
    v17 = v15;
    return objc_msgSend_addCellRef_fromCellRef_(v14, a2, a3, &v16);
  }

  return result;
}

void sub_221495F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) == *(a1 + 40))
  {
    v3 = *(a1 + 32);
    v5 = *(v3 + 8);
    v4 = *(v3 + 16);
    if (v5 >= v4)
    {
      v7 = (v5 - *v3) >> 3;
      if ((v7 + 1) >> 61)
      {
        sub_22107C148();
      }

      v8 = v4 - *v3;
      v9 = v8 >> 2;
      if (v8 >> 2 <= (v7 + 1))
      {
        v9 = v7 + 1;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      if (v10)
      {
        sub_2210874C4(*(a1 + 32), v10);
      }

      v11 = (8 * v7);
      *v11 = *a3;
      v6 = 8 * v7 + 8;
      v12 = *(v3 + 8) - *v3;
      v13 = v11 - v12;
      memcpy(v11 - v12, *v3, v12);
      v14 = *v3;
      *v3 = v13;
      *(v3 + 8) = v6;
      *(v3 + 16) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5 = *a3;
      v6 = (v5 + 1);
    }

    *(v3 + 8) = v6;
  }
}

void sub_221496164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_221496190(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 48);
  v8 = v6 == *a3;
  v7 = (*a3 ^ v6) & 0x101FFFF00000000;
  v8 = v8 && v7 == 0;
  if (v8 && *(a1 + 56) == *(a3 + 8))
  {
    return;
  }

  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (v9)
  {
    v10 = objc_msgSend_internalOwnerID(v9, a2, a3, a4);
    v11 = *(a3 + 8);
    if (v10 == v11)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = *(a3 + 8);
  }

  v12 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), a2, v11, a4);
  v13 = *(*(a1 + 40) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

LABEL_10:
  v15 = *(*(*(a1 + 40) + 8) + 40);
  if (v15)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(v15, a2, a3, 1);
    if (CellRecord_willModifyOnTile)
    {
      v19 = CellRecord_willModifyOnTile;
      v20 = *(CellRecord_willModifyOnTile + 38);
      if ((v20 & 0x100) == 0 && ((v20 & 2) == 0 || (*(a1 + 60) & 1) == 0))
      {
        if (*(CellRecord_willModifyOnTile + 16))
        {
          objc_msgSend_decrDirtySelfPlusPrecedentsCount_(*(*(*(a1 + 40) + 8) + 40), v17, CellRecord_willModifyOnTile, v18);
        }

        else
        {
          v21 = *(*(a1 + 32) + 8);
          v22 = *(a3 + 8);
          v23 = MEMORY[0x277CCACA8];
          v24 = NSStringFromTSUCellCoord();
          v33._lower = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(*(*(a1 + 32) + 8), v25, *(a3 + 8), v26);
          v33._upper = v27;
          v28 = TSKUIDStruct::description(&v33);
          v31 = objc_msgSend_stringWithFormat_(v23, v29, @"dirty precedents count consistency error - cell: %@ in table: %@", v30, v24, v28);
          objc_msgSend_assertForInconsistentDependGraph_assertMessage_(v21, v32, v22, v31);
        }
      }

      if (*(v19 + 16) == 1)
      {
        objc_msgSend_pushReferenceForImmediateEvaluation_cellRecord_pushOnFront_(*(*(a1 + 32) + 8), v17, a3, v19, 0);
      }
    }
  }
}

uint64_t sub_221496444(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_221496638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose((v23 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_221496664(uint64_t a1, const TSUCellRect *a2, uint64_t a3, TSCERangeCoordinate *this)
{
  v14 = TSCERangeCoordinate::rangeCoordFromCellRect(this, a2);
  v15 = v6;
  v9 = *(*(*(a1 + 40) + 8) + 40);
  if (!v9 || objc_msgSend_internalOwnerID(v9, v6, v7, v8, v14, v15) != a3)
  {
    v10 = objc_msgSend_dgl_cellDependenciesForOwnerID_(*(*(a1 + 32) + 8), v6, a3, v8, v14, v15);
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    if (*(a1 + 56))
    {
      result = objc_msgSend_countRecordsInRange_cellRestrictions_(result, v6, &v14, 6);
    }

    else
    {
      result = objc_msgSend_countRecordsInRange_cellRestrictions_(result, v6, &v14, 2);
    }

    *(*(*(a1 + 48) + 8) + 24) += result;
  }

  return result;
}