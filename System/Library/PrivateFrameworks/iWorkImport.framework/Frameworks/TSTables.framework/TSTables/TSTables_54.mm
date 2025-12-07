TSCEReferenceSet *TSCEReferenceSet::insertRef(TSCEReferenceSet *this, const TSCEInternalCellReference *a2, uint64_t a3, uint64_t a4)
{
  v5 = this;
  if (!this->_dependencyTracker)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEReferenceSet::insertRef(const TSCEInternalCellReference &)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 518, 0, "Dependency tracker is required to use this method");

    this = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  if (*&a2->coordinate != 0x7FFFFFFF && (*&a2->coordinate & 0xFFFF00000000) != 0x7FFF00000000)
  {
    this = v5->_dependencyTracker;
    if (this)
    {
      this = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(this, a2, a2->tableID, a4);
      v19[0] = this;
      v19[1] = v16;
      if (this || v16 || a2->tableID == 0xFFFF)
      {
        v18 = a2->coordinate.row | (a2->coordinate.column << 32);
        v20 = v19;
        v17 = sub_22169B9D0(&v5->_cellRefs.__table_.__bucket_list_.__ptr_, v19, &unk_2218038DB, &v20);
        return sub_2210CE644(v17 + 4, &v18, &v18);
      }
    }
  }

  return this;
}

void TSCEReferenceSet::insertRef(TSCEReferenceSet *this, TSCECategoryRef *a2)
{
  v8 = a2;
  if (v8)
  {
    categoryRefs = this->_categoryRefs;
    if (!categoryRefs)
    {
      v6 = objc_opt_new();
      v7 = this->_categoryRefs;
      this->_categoryRefs = v6;

      categoryRefs = this->_categoryRefs;
    }

    objc_msgSend_addObject_(categoryRefs, v3, v8, v4);
  }
}

void TSCEReferenceSet::insertRefs(TSCEReferenceSet *this, const TSCEReferenceSet *a2)
{
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = sub_2216969E0;
  v11[3] = &unk_278468238;
  v11[4] = this;
  TSCEReferenceSet::foreachDatalessRef(a2, v11);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_221696AA0;
  v10[3] = &unk_278468258;
  v10[4] = this;
  TSCEReferenceSet::foreachCellRef(a2, v10);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_221696BA4;
  v9[3] = &unk_278468278;
  v9[4] = this;
  TSCEReferenceSet::foreachRangeRef(a2, v9);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_221696BAC;
  v8[3] = &unk_278468298;
  v8[4] = this;
  TSCEReferenceSet::foreachSpanningRangeRef(a2, v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221696C38;
  v7[3] = &unk_2784682B8;
  v7[4] = this;
  TSCEReferenceSet::foreachWholeOwnerRef(a2, v7);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_221696CC4;
  v6[3] = &unk_2784682B8;
  v6[4] = this;
  TSCEReferenceSet::foreachGeometryVolatileRef(a2, v6);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = sub_221696D6C;
  v5[3] = &unk_2784682D8;
  v5[4] = this;
  TSCEReferenceSet::foreachColumnRowUuidRef(a2, v5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = sub_221696DF8;
  v4[3] = &unk_2784682B8;
  v4[4] = this;
  TSCEReferenceSet::foreachTableUuidRef(a2, v4);
}

void TSCEReferenceSet::foreachDatalessRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 80);
  if (v4)
  {
    v6 = 0;
    v5 = (v4 + 16);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3[2](v3, *(v5 + 8), &v6);
    }

    while ((v6 & 1) == 0);
  }
}

void TSCEReferenceSet::foreachCellRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v10 = 0;
  v5 = (a1 + 32);
  do
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    v9 = *(v5 + 1);
    for (i = v5[6]; i; i = *i)
    {
      v7 = i[2];
      v8 = v9;
      v3[2](v3, &v7, &v10);
      v4 = v10;
      if (v10)
      {
        goto LABEL_7;
      }
    }
  }

  while ((v4 & 1) == 0);
LABEL_7:
}

void TSCEReferenceSet::foreachRangeRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v4 = *(a1 + 56);
  v5 = (a1 + 64);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v12 = *(v4 + 2);
      v7 = v4[8];
      if (v7)
      {
        while (1)
        {
          v11[0] = *(v7 + 1);
          v11[1] = v12;
          v3[2](v3, v11, &v13);
          v6 = v13;
          if (v13)
          {
            break;
          }

          v7 = *v7;
          if (!v7)
          {
            goto LABEL_8;
          }
        }

        v6 = 1;
      }

LABEL_8:
      if (v6)
      {
        break;
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }
}

void TSCEReferenceSet::foreachWholeOwnerRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 128);
  if (v4)
  {
    v6 = 0;
    v5 = (v4 + 16);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3[2](v3, (v5 + 2), &v6);
    }

    while ((v6 & 1) == 0);
  }
}

void TSCEReferenceSet::foreachGeometryVolatileRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 104);
  if (v4)
  {
    v6 = 0;
    v5 = (v4 + 16);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3[2](v3, (v5 + 2), &v6);
    }

    while ((v6 & 1) == 0);
  }
}

void TSCEReferenceSet::foreachColumnRowUuidRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 88);
  if (v4)
  {
    v8 = 0;
    for (i = *(v4 + 16); i; i = *i)
    {
      v7 = *(i + 1);
      v6 = i + 6;
      do
      {
        v6 = *v6;
        if (!v6)
        {
          break;
        }

        v3[2](v3, &v7, (v6 + 2), &v8);
      }

      while ((v8 & 1) == 0);
    }
  }
}

void TSCEReferenceSet::foreachTableUuidRef(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 96);
  if (v4)
  {
    v6 = 0;
    v5 = (v4 + 16);
    do
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      v3[2](v3, (v5 + 2), &v6);
    }

    while ((v6 & 1) == 0);
  }
}

uint64_t *TSCEReferenceSet::removeAnyRef(TSCEReferenceSet *this, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  refType = a2->_refType;
  if (refType <= 2)
  {
    if (!a2->_refType)
    {
      v14.coordinate = a2->_spanningRef.rangeRef.range._topLeft;
      v14._tableUID = a2->_spanningRef.rangeRef._tableUID;
      return TSCEReferenceSet::removeRef(this, &v14);
    }

    if (refType == 1)
    {
      p_spanningRef = &a2->_spanningRef;

      return TSCEReferenceSet::removeRef(this, &p_spanningRef->rangeRef);
    }

    else
    {
      if (refType != 2)
      {
        goto LABEL_20;
      }

      v9 = &a2->_spanningRef;

      return TSCEReferenceSet::removeRef(this, v9);
    }
  }

  else
  {
    if (a2->_refType <= 0xDu)
    {
      if (refType == 3)
      {
        v14.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v14._tableUID._lower = v11;
        result = this->_wholeOwnerRefs;
        if (!result)
        {
          return result;
        }

        return sub_2211F2EF4(result, &v14);
      }

      if (refType == 10)
      {
        v14.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v14._tableUID._lower = v7;
        result = this->_geometryVolatileRefs;
        if (!result)
        {
          return result;
        }

        return sub_2211F2EF4(result, &v14);
      }

      goto LABEL_20;
    }

    if (refType != 14)
    {
      if (refType == 15)
      {
        result = this->_tableUuidRefs;
        if (result)
        {
          p_tableUID = &a2->_spanningRef.rangeRef._tableUID;

          return sub_2211F2EF4(result, p_tableUID);
        }

        return result;
      }

LABEL_20:
      result = this->_datalessRefs;
      if (result)
      {
        LOWORD(v14.coordinate.row) = refType;
        return sub_221142C34(result, &v14);
      }

      return result;
    }

    v12 = &a2->_spanningRef.rangeRef._tableUID;

    return TSCEReferenceSet::removeColumnRowUid(this, v12, &a2->_uuidValue);
  }
}

uint64_t *TSCEReferenceSet::removeRef(TSCEReferenceSet *this, const TSCECellRef *a2)
{
  tableUID = a2->_tableUID;
  result = sub_2210875C4(&this->_cellRefs.__table_.__bucket_list_.__ptr_, &tableUID);
  if (result)
  {
    return sub_2214136D8(result + 4, &a2->coordinate);
  }

  return result;
}

__tree_end_node<std::__tree_node_base<void *> *> *TSCEReferenceSet::removeRef(TSCEReferenceSet *this, const TSCERangeRef *a2)
{
  result = sub_22112C8D0(&this->_rangeRefs, &a2->_tableUID._lower);
  if (&this->_rangeRefs.__tree_.__end_node_ != result)
  {
    v5 = &result[6];

    return sub_22169C11C(v5, &a2->range);
  }

  return result;
}

void *TSCEReferenceSet::removeRef(TSCEReferenceSet *this, const TSCESpanningRangeRef *a2)
{
  result = this->_spanningRefs;
  if (result)
  {
    result = sub_22122DECC(result, &a2->rangeContext);
    if (result)
    {
      v4 = result;
      result = sub_22112C8D0((result + 3), &a2->rangeRef._tableUID._lower);
      if (v4 + 4 != result)
      {
        v5 = result + 6;

        return sub_22169C11C(v5, &a2->rangeRef.range);
      }
    }
  }

  return result;
}

uint64_t *TSCEReferenceSet::removeColumnRowUid(TSCEReferenceSet *this, TSKUIDStruct *a2, TSKUIDStruct *a3)
{
  result = this->_columnRowUidRefs;
  if (result)
  {
    v6 = a2;
    v5 = sub_22169BEA8(result, a2, &unk_2218038DB, &v6);
    return sub_2211F2EF4(v5 + 4, a3);
  }

  return result;
}

uint64_t *TSCEReferenceSet::removeTableUid(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_tableUuidRefs;
  if (result)
  {
    return sub_2211F2EF4(result, a2);
  }

  return result;
}

uint64_t *TSCEReferenceSet::removeWholeOwnerRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_wholeOwnerRefs;
  if (result)
  {
    return sub_2211F2EF4(result, a2);
  }

  return result;
}

uint64_t *TSCEReferenceSet::removeGeometryVolatileRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_geometryVolatileRefs;
  if (result)
  {
    return sub_2211F2EF4(result, a2);
  }

  return result;
}

uint64_t *TSCEReferenceSet::removeRef(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  if (a2 <= 0xF && ((1 << a2) & 0xC00F) != 0)
  {
    v5 = MEMORY[0x277D81150];
    v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEReferenceSet::removeRef(TSCEReferenceType)", a4);
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEReferenceSet.mm", v8);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 683, 0, "Removing these refTypes requires accompanying data, refType was %d", a2);

    v14 = MEMORY[0x277D81150];

    return objc_msgSend_logBacktraceThrottled(v14, v11, v12, v13);
  }

  else
  {
    result = *(a1 + 80);
    if (result)
    {
      return sub_221142C34(result, &v16);
    }
  }

  return result;
}

void TSCEReferenceSet::removeRef(TSCEReferenceSet *this, TSCECategoryRef *a2)
{
  v6 = a2;
  if (v6)
  {
    categoryRefs = this->_categoryRefs;
    if (categoryRefs)
    {
      objc_msgSend_removeObject_(categoryRefs, v3, v6, v4);
    }
  }
}

uint64_t TSCEReferenceSet::contains(TSCEReferenceSet *this, const TSCEReferenceSet *a2)
{
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 1;
  datalessRefs = a2->_datalessRefs;
  if (datalessRefs)
  {
    v5 = datalessRefs + 16;
    while (1)
    {
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if ((TSCEReferenceSet::containsRef(this, *(v5 + 8)) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    if ((v58[3] & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_2216979A0;
  v56[3] = &unk_278460EE0;
  v56[4] = &v57;
  v56[5] = this;
  TSCEReferenceSet::foreachCellRef(a2, v56);
  if (v58[3] & 1) != 0 && (v55[0] = MEMORY[0x277D85DD0], v55[1] = 3221225472, v55[2] = sub_221697A38, v55[3] = &unk_278468300, v55[4] = &v57, v55[5] = this, TSCEReferenceSet::foreachColumnRowUuidRef(a2, v55), (v58[3]) && (v54[0] = MEMORY[0x277D85DD0], v54[1] = 3221225472, v54[2] = sub_221697AC4, v54[3] = &unk_278468328, v54[4] = &v57, v54[5] = this, TSCEReferenceSet::foreachTableUuidRef(a2, v54), (v58[3]) && (v53[0] = MEMORY[0x277D85DD0], v53[1] = 3221225472, v53[2] = sub_221697B3C, v53[3] = &unk_278468328, v53[5] = this, v53[4] = &v57, TSCEReferenceSet::foreachWholeOwnerRef(a2, v53), (v58[3]) && (v52[0] = MEMORY[0x277D85DD0], v52[1] = 3221225472, v52[2] = sub_221697BB4, v52[3] = &unk_278468328, v52[5] = this, v52[4] = &v57, TSCEReferenceSet::foreachGeometryVolatileRef(a2, v52), (v58[3]))
  {
    begin_node = a2->_rangeRefs.__tree_.__begin_node_;
    if (begin_node == &a2->_rangeRefs.__tree_.__end_node_)
    {
LABEL_25:
      *&v45 = 0;
      *(&v45 + 1) = &v45;
      v46 = 0x5812000000;
      v47 = sub_221694FF8;
      v48 = sub_221695004;
      v49 = &unk_22188E88F;
      memset(v50, 0, sizeof(v50));
      v51 = 1065353216;
      v37 = 0;
      v38 = &v37;
      v39 = 0x5812000000;
      v40 = sub_221694FF8;
      v41 = sub_221695004;
      v42 = &unk_22188E88F;
      memset(v43, 0, sizeof(v43));
      v44 = 1065353216;
      v29 = 0;
      v30 = &v29;
      v31 = 0x5812000000;
      v32 = sub_221694FF8;
      v33 = sub_221695004;
      v34 = &unk_22188E88F;
      memset(v35, 0, sizeof(v35));
      v36 = 1065353216;
      v21 = 0;
      v22 = &v21;
      v23 = 0x5812000000;
      v24 = sub_221694FF8;
      v25 = sub_221695004;
      v26 = &unk_22188E88F;
      memset(v27, 0, sizeof(v27));
      v28 = 1065353216;
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_221697C2C;
      v20[3] = &unk_278468218;
      v20[5] = &v37;
      v20[6] = this;
      v20[4] = &v21;
      TSCEReferenceSet::foreachSpanningRangeRef(a2, v20);
      v13 = v22[9] != 0;
      v14 = v38[9] != 0;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_221697CC0;
      v17[3] = &unk_278468350;
      v17[5] = &v45;
      v17[6] = this;
      v18 = v13;
      v19 = v14;
      v17[4] = &v29;
      TSCEReferenceSet::foreachSpanningRangeRef(this, v17);
      v15 = sub_2214280A4(*(&v45 + 1) + 48, (v38 + 6));
      if (v15)
      {
        LOBYTE(v15) = sub_2214280A4((v30 + 6), (v22 + 6));
      }

      *(v58 + 24) = v15;
      _Block_object_dispose(&v21, 8);
      sub_221087B80(v27);
      _Block_object_dispose(&v29, 8);
      sub_221087B80(v35);
      _Block_object_dispose(&v37, 8);
      sub_221087B80(v43);
      _Block_object_dispose(&v45, 8);
      sub_221087B80(v50);
      v6 = *(v58 + 24);
    }

    else
    {
      while (1)
      {
        v45 = *&begin_node[4].__left_;
        v8 = sub_22112C8D0(&this->_rangeRefs, &v45);
        if (&this->_rangeRefs.__tree_.__end_node_ == v8)
        {
          break;
        }

        v9 = &begin_node[8];
        while (1)
        {
          v9 = v9->_topLeft;
          if (!v9)
          {
            break;
          }

          if (!sub_22169C254(&v8[6].__left_, v9 + 1))
          {
            goto LABEL_5;
          }
        }

        if ((v58[3] & 1) == 0)
        {
          goto LABEL_28;
        }

        left = begin_node[1].__left_;
        if (left)
        {
          do
          {
            v11 = left;
            left = left->_vptr$TSCEReferenceSet;
          }

          while (left);
        }

        else
        {
          do
          {
            v11 = begin_node[2].__left_;
            v12 = v11->_vptr$TSCEReferenceSet == begin_node;
            begin_node = v11;
          }

          while (!v12);
        }

        begin_node = v11;
        if (v11 == &a2->_rangeRefs.__tree_.__end_node_)
        {
          goto LABEL_25;
        }
      }

LABEL_5:
      v6 = 0;
      *(v58 + 24) = 0;
    }
  }

  else
  {
LABEL_28:
    v6 = 0;
  }

  _Block_object_dispose(&v57, 8);
  return v6 & 1;
}

void sub_221697850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(&a24, 8);
  sub_221087B80(v59 + 48);
  _Block_object_dispose(&a35, 8);
  sub_221087B80(v58 + 48);
  _Block_object_dispose(&a46, 8);
  sub_221087B80(v57 + 48);
  _Block_object_dispose(va, 8);
  sub_221087B80(v56 + 48);
  _Block_object_dispose((v60 - 112), 8);
  _Unwind_Resume(a1);
}

void *TSCEReferenceSet::containsRef(void *a1, int a2)
{
  v6 = a2;
  if (a2 > 2)
  {
    if (a2 > 13)
    {
      if (a2 != 14)
      {
        if (a2 != 15)
        {
          goto LABEL_17;
        }

        v2 = a1[12];
        if (!v2)
        {
          return 0;
        }

        goto LABEL_20;
      }

      v2 = a1[11];
      if (v2)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (a2 != 3)
      {
        if (a2 == 10)
        {
          v2 = a1[13];
          if (!v2)
          {
            return 0;
          }

          goto LABEL_20;
        }

LABEL_17:
        result = a1[10];
        if (!result)
        {
          return result;
        }

        v5 = sub_2210C3024(result, &v6) == 0;
        return !v5;
      }

      v2 = a1[16];
      if (v2)
      {
LABEL_20:
        v3 = *(v2 + 24);
        goto LABEL_24;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = a1[9];
      goto LABEL_24;
    }

    if (a2 != 2)
    {
      goto LABEL_17;
    }

    v2 = a1[14];
    if (!v2)
    {
      return 0;
    }

    goto LABEL_20;
  }

  v3 = a1[5];
LABEL_24:
  v5 = v3 == 0;
  return !v5;
}

uint64_t sub_2216979A0(uint64_t a1, const TSCECellRef *a2, _BYTE *a3)
{
  result = TSCEReferenceSet::containsRef(*(a1 + 40), a2);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void *TSCEReferenceSet::containsRef(TSCEReferenceSet *this, const TSCECellRef *a2)
{
  tableUID = a2->_tableUID;
  result = sub_221119F90(&this->_cellRefs.__table_.__bucket_list_.__ptr_, &tableUID);
  if (result)
  {
    return (sub_221244A70(result + 4, &a2->coordinate) != 0);
  }

  return result;
}

uint64_t sub_221697A38(uint64_t a1, TSKUIDStruct *a2, TSKUIDStruct *a3, _BYTE *a4)
{
  result = TSCEReferenceSet::containsColumnRowUid(*(a1 + 40), a2, a3);
  if ((result & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void *TSCEReferenceSet::containsColumnRowUid(TSCEReferenceSet *this, TSKUIDStruct *a2, TSKUIDStruct *a3)
{
  result = this->_columnRowUidRefs;
  if (result)
  {
    result = sub_2210875C4(result, a2);
    if (result)
    {
      return (sub_2210875C4(result + 4, a3) != 0);
    }
  }

  return result;
}

void *sub_221697AC4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = *(*(a1 + 40) + 96);
  if (!result || (result = sub_2210875C4(result, a2)) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void *TSCEReferenceSet::containsTableUid(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_tableUuidRefs;
  if (result)
  {
    return (sub_2210875C4(result, a2) != 0);
  }

  return result;
}

void *sub_221697B3C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = *(*(a1 + 40) + 128);
  if (!result || (result = sub_2210875C4(result, a2)) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void *TSCEReferenceSet::containsWholeOwnerRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_wholeOwnerRefs;
  if (result)
  {
    return (sub_2210875C4(result, a2) != 0);
  }

  return result;
}

void *sub_221697BB4(uint64_t a1, void *a2, _BYTE *a3)
{
  result = *(*(a1 + 40) + 104);
  if (!result || (result = sub_2210875C4(result, a2)) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

void *TSCEReferenceSet::containsGeometryVolatileRef(TSCEReferenceSet *this, TSKUIDStruct *a2)
{
  result = this->_geometryVolatileRefs;
  if (result)
  {
    return (sub_2210875C4(result, a2) != 0);
  }

  return result;
}

void sub_221697C2C(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v4.i64[0] = 0xFFFFFFFFLL;
  v4.i64[1] = 0xFFFFFFFFLL;
  v5.i64[0] = 0xFFFF00000000;
  v5.i64[1] = 0xFFFF00000000;
  v6 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v5), vdupq_n_s64(0x7FFF00000000uLL))));
  v7 = vuzp1_s16(v6, v6);
  v7.i32[1] = vuzp1_s16(v7, vmovn_s64(vceqq_s64(vandq_s8(*a2, v4), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  v8 = 40;
  if (vaddv_s16(vand_s8(vcltz_s16(vshl_n_s16(v7, 0xFuLL)), 0x8000400020001)) == 15)
  {
    v8 = 32;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(*(a1 + 48), a2->i8, (*(*(a1 + v8) + 8) + 48), a4);
}

void sub_221697CC0(uint64_t a1, int8x16_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 48);
  v6.i64[0] = 0xFFFFFFFFLL;
  v6.i64[1] = 0xFFFFFFFFLL;
  v7.i64[0] = 0xFFFF00000000;
  v7.i64[1] = 0xFFFF00000000;
  v8 = vmovn_s64(vmvnq_s8(vceqq_s64(vandq_s8(*a2, v7), vdupq_n_s64(0x7FFF00000000uLL))));
  v9 = vuzp1_s16(v8, v8);
  v9.i32[1] = vuzp1_s16(v9, vmovn_s64(vceqq_s64(vandq_s8(*a2, v6), vdupq_n_s64(0x7FFFFFFFuLL)))).i32[1];
  if (vminv_u16(v9))
  {
    if ((*(a1 + 56) & 1) == 0)
    {
      return;
    }

    v10 = 32;
  }

  else
  {
    if (*(a1 + 57) != 1)
    {
      return;
    }

    v10 = 40;
  }

  TSCEReferenceSet::insertSpanningRangeIntoColumnRefs(v5, a2->i8, (*(*(a1 + v10) + 8) + 48), a4);
}

void *TSCEReferenceSet::containsAnyRef(TSCEReferenceSet *this, TSCEAnyRef *a2, uint64_t a3, uint64_t a4)
{
  refType = a2->_refType;
  if (refType <= 2)
  {
    if (!a2->_refType)
    {
      v15.coordinate = a2->_spanningRef.rangeRef.range._topLeft;
      v15._tableUID = a2->_spanningRef.rangeRef._tableUID;
      return TSCEReferenceSet::containsRef(this, &v15);
    }

    if (refType == 1)
    {
      p_spanningRef = &a2->_spanningRef;

      return TSCEReferenceSet::containsRef(this, &p_spanningRef->rangeRef);
    }

    else
    {
      if (refType != 2)
      {
        goto LABEL_18;
      }

      v9 = &a2->_spanningRef;

      return TSCEReferenceSet::containsRef(this, v9);
    }
  }

  else
  {
    if (a2->_refType <= 0xDu)
    {
      if (refType == 3)
      {
        v15.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v15._tableUID._lower = v12;
        result = this->_wholeOwnerRefs;
        if (!result)
        {
          return result;
        }

        goto LABEL_21;
      }

      if (refType == 10)
      {
        v15.coordinate = TSCEAnyRef::containedTableUID(a2, a2, a3, a4);
        v15._tableUID._lower = v7;
        result = this->_geometryVolatileRefs;
        if (!result)
        {
          return result;
        }

LABEL_21:
        p_lower = &v15;
LABEL_22:
        v11 = sub_2210875C4(result, p_lower);
        return (v11 != 0);
      }

LABEL_18:
      result = this->_datalessRefs;
      if (!result)
      {
        return result;
      }

      LOWORD(v15.coordinate.row) = refType;
      v11 = sub_2210C3024(result, &v15);
      return (v11 != 0);
    }

    if (refType != 14)
    {
      if (refType == 15)
      {
        result = this->_tableUuidRefs;
        if (!result)
        {
          return result;
        }

        p_lower = &a2->_spanningRef.rangeRef._tableUID._lower;
        goto LABEL_22;
      }

      goto LABEL_18;
    }

    p_tableUID = &a2->_spanningRef.rangeRef._tableUID;

    return TSCEReferenceSet::containsColumnRowUid(this, p_tableUID, &a2->_uuidValue);
  }
}

void *TSCEReferenceSet::containsRef(TSCEReferenceSet *this, const TSCESpanningRangeRef *a2)
{
  result = this->_spanningRefs;
  if (result)
  {
    result = sub_22122DECC(result, &a2->rangeContext);
    if (result)
    {
      v4 = result;
      v5 = sub_22112C8D0((result + 3), &a2->rangeRef._tableUID._lower);
      if (v4 + 4 == v5)
      {
        return 0;
      }

      else
      {
        return (sub_22169C254(v5 + 6, &a2->rangeRef.range) != 0);
      }
    }
  }

  return result;
}

TSCEDependencyTracker *TSCEReferenceSet::containsRef(TSCEReferenceSet *this, const TSCEInternalCellReference *a2, uint64_t a3, uint64_t a4)
{
  result = this->_dependencyTracker;
  if (result)
  {
    v8[0] = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(result, a2, a2->tableID, a4);
    v8[1] = v7;
    result = sub_221119F90(&this->_cellRefs.__table_.__bucket_list_.__ptr_, v8);
    if (result)
    {
      return (sub_221244A70(&result->_formulaOwnerIDMap._idAllocator, &a2->coordinate) != 0);
    }
  }

  return result;
}

uint64_t TSCEReferenceSet::containsRef(TSCEReferenceSet *this, TSCECategoryRef *a2)
{
  v5 = a2;
  v6 = 0;
  if (v5)
  {
    categoryRefs = this->_categoryRefs;
    if (categoryRefs)
    {
      v6 = objc_msgSend_containsObject_(categoryRefs, v3, v5, v4);
    }
  }

  return v6;
}

void TSCEReferenceSet::forallRefs(uint64_t a1, void *a2)
{
  v3 = a2;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = sub_221698460;
  v32[3] = &unk_278468378;
  v4 = v3;
  v33 = v4;
  v34 = &v35;
  TSCEReferenceSet::foreachDatalessRef(a1, v32);

  if ((v36[3] & 1) == 0)
  {
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = sub_2216984F4;
    v29[3] = &unk_2784683A0;
    v5 = v4;
    v30 = v5;
    v31 = &v35;
    TSCEReferenceSet::foreachCellRef(a1, v29);

    if ((v36[3] & 1) == 0)
    {
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = sub_221698584;
      v26[3] = &unk_2784683C8;
      v6 = v5;
      v27 = v6;
      v28 = &v35;
      TSCEReferenceSet::foreachRangeRef(a1, v26);

      if ((v36[3] & 1) == 0)
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = sub_221698614;
        v23[3] = &unk_2784683F0;
        v7 = v6;
        v24 = v7;
        v25 = &v35;
        TSCEReferenceSet::foreachSpanningRangeRef(a1, v23);

        if ((v36[3] & 1) == 0)
        {
          v20[0] = MEMORY[0x277D85DD0];
          v20[1] = 3221225472;
          v20[2] = sub_2216986A8;
          v20[3] = &unk_278468418;
          v8 = v7;
          v21 = v8;
          v22 = &v35;
          TSCEReferenceSet::foreachWholeOwnerRef(a1, v20);

          if ((v36[3] & 1) == 0)
          {
            v17[0] = MEMORY[0x277D85DD0];
            v17[1] = 3221225472;
            v17[2] = sub_221698728;
            v17[3] = &unk_278468418;
            v9 = v8;
            v18 = v9;
            v19 = &v35;
            TSCEReferenceSet::foreachGeometryVolatileRef(a1, v17);

            if ((v36[3] & 1) == 0)
            {
              v14[0] = MEMORY[0x277D85DD0];
              v14[1] = 3221225472;
              v14[2] = sub_2216987A8;
              v14[3] = &unk_278468440;
              v10 = v9;
              v15 = v10;
              v16 = &v35;
              TSCEReferenceSet::foreachColumnRowUuidRef(a1, v14);

              if ((v36[3] & 1) == 0)
              {
                v11[0] = MEMORY[0x277D85DD0];
                v11[1] = 3221225472;
                v11[2] = sub_22169882C;
                v11[3] = &unk_278468418;
                v12 = v10;
                v13 = &v35;
                TSCEReferenceSet::foreachTableUuidRef(a1, v11);
              }
            }
          }
        }
      }
    }
  }

  _Block_object_dispose(&v35, 8);
}

void sub_221698420(_Unwind_Exception *a1)
{
  _Block_object_dispose((v3 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_221698460(uint64_t a1, __int16 a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v11 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  (*(*(a1 + 32) + 16))(*(a1 + 32), &v10, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_2216984F4(uint64_t a1, const TSCECellRef *a2, _BYTE *a3)
{
  v5 = 0;
  TSCERangeRef::TSCERangeRef(&v6, a2);
  v7 = 0;
  v11 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*(a1 + 32) + 16))(*(a1 + 32));
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_221698584(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[1];
  v12 = *a2;
  v11 = 1;
  v13 = v10;
  v14 = 0;
  v18 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  (*(*(a1 + 32) + 16))(*(a1 + 32), &v11, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_221698614(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2[1];
  v13 = *a2;
  v12 = 2;
  v14 = v10;
  v11 = *(a2 + 4);
  v19 = 0;
  v16 = 0;
  v17 = 0;
  v15 = v11;
  v18 = 0;
  (*(*(a1 + 32) + 16))(*(a1 + 32), &v12, a3, a4, a5, a6, a7, a8);
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_2216986A8(uint64_t a1, TSKUIDStruct *a2, _BYTE *a3)
{
  TSCEAnyRef::TSCEAnyRef(v5, 3, a2);
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_221698728(uint64_t a1, TSKUIDStruct *a2, _BYTE *a3)
{
  TSCEAnyRef::TSCEAnyRef(v5, 10, a2);
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void sub_2216987A8(uint64_t a1, TSKUIDStruct *a2, _OWORD *a3, _BYTE *a4)
{
  TSCEAnyRef::TSCEAnyRef(v6, 14, a2, a3);
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a4;
}

void sub_22169882C(uint64_t a1, TSKUIDStruct *a2, _BYTE *a3)
{
  TSCEAnyRef::TSCEAnyRef(v5, 15, a2);
  (*(*(a1 + 32) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = *a3;
}

void TSCEReferenceSet::foreachCellRefInOwner(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = sub_221119F90((a1 + 16), a2);
  if (v6)
  {
    v10 = 0;
    v7 = v6 + 6;
    do
    {
      v7 = *v7;
      if (!v7)
      {
        break;
      }

      v8 = v7[2];
      v9 = *a2;
      v5[2](v5, &v8, &v10);
    }

    while ((v10 & 1) == 0);
  }
}

__n128 TSCEReferenceSet::firstCellRefForOwner@<Q0>(TSCEReferenceSet *this@<X0>, __n128 *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0x7FFF7FFFFFFFLL;
  a3[1] = 0;
  a3[2] = 0;
  v5 = sub_221119F90(&this->_cellRefs.__table_.__bucket_list_.__ptr_, a2);
  if (v5)
  {
    v7 = *(v5[6] + 16);
    result = *a2;
    *(a3 + 1) = *a2;
    *a3 = v7;
  }

  return result;
}

uint64_t TSCEReferenceSet::firstCellRefForOwner(TSCEReferenceSet *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = 0x7FFF7FFFFFFFLL;
  dependencyTracker = this->_dependencyTracker;
  if (dependencyTracker)
  {
    *&v10 = objc_msgSend_formulaOwnerUIDForInternalFormulaOwnerID_(dependencyTracker, a2, a2, a4);
    *(&v10 + 1) = v7;
    v8 = sub_221119F90(&this->_cellRefs.__table_.__bucket_list_.__ptr_, &v10);
    if (v8)
    {
      if ((*(v8[6] + 16) & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL && v10 != 0)
      {
        return *(v8[6] + 16) & 0xFFFFFFFFFFFFLL;
      }
    }
  }

  return v5;
}

void TSCEReferenceSet::foreachInternalCellRef(uint64_t a1, void *a2)
{
  v5 = a2;
  v11 = 0;
  if (*(a1 + 8))
  {
    v6 = (a1 + 32);
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v7 = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_(*(a1 + 8), v3, (v6 + 2), v4);
      v8 = v6 + 6;
      while (1)
      {
        v8 = *v8;
        if (!v8)
        {
          break;
        }

        v9 = v8[2] & 0xFFFFFFFFFFFFLL;
        v10 = v7;
        v5[2](v5, &v9, &v11);
        if (v11)
        {
          goto LABEL_9;
        }
      }
    }

    while ((v11 & 1) == 0);
  }

LABEL_9:
}

void TSCEReferenceSet::foreachCategoryRef(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 120);
  if (v4)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v11, v16, 16);
    if (v7)
    {
      v8 = *v12;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v3[2](v3, *(*(&v11 + 1) + 8 * v9), &v15);
        if (v15)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v10, &v11, v16, 16);
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

void TSCEReferenceSet::allOwnerUIDs(TSCEReferenceSet *this@<X0>, unint64_t a2@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  for (i = this->_cellRefs.__table_.__first_node_.__next_; i; i = *i)
  {
    v32 = i[1];
    sub_2210C2B00(a2, &v32, &v32);
  }

  begin_node = this->_rangeRefs.__tree_.__begin_node_;
  if (begin_node != &this->_rangeRefs.__tree_.__end_node_)
  {
    do
    {
      v32 = *&begin_node[4].__left_;
      sub_2210C2B00(a2, &v32, &v32);
      left = begin_node[1].__left_;
      if (left)
      {
        do
        {
          v7 = left;
          left = left->_vptr$TSCEReferenceSet;
        }

        while (left);
      }

      else
      {
        do
        {
          v7 = begin_node[2].__left_;
          v8 = v7->_vptr$TSCEReferenceSet == begin_node;
          begin_node = v7;
        }

        while (!v8);
      }

      begin_node = v7;
    }

    while (v7 != &this->_rangeRefs.__tree_.__end_node_);
  }

  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    for (j = spanningRefs[2]; j; j = *j)
    {
      v11 = j[3];
      if (v11 != j + 4)
      {
        do
        {
          v32 = *(v11 + 2);
          sub_2210C2B00(a2, &v32, &v32);
          v12 = v11[1];
          if (v12)
          {
            do
            {
              v13 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              v13 = v11[2];
              v8 = *v13 == v11;
              v11 = v13;
            }

            while (!v8);
          }

          v11 = v13;
        }

        while (v13 != j + 4);
      }
    }
  }

  wholeOwnerRefs = this->_wholeOwnerRefs;
  if (wholeOwnerRefs)
  {
    for (k = wholeOwnerRefs + 16; ; sub_2210C2B00(a2, k + 2, k + 1))
    {
      k = *k;
      if (!k)
      {
        break;
      }
    }
  }

  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs)
  {
    for (m = geometryVolatileRefs + 16; ; sub_2210C2B00(a2, m + 2, m + 1))
    {
      m = *m;
      if (!m)
      {
        break;
      }
    }
  }

  categoryRefs = this->_categoryRefs;
  if (categoryRefs)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = categoryRefs;
    v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v28, v33, 16);
    if (v24)
    {
      v25 = *v29;
      do
      {
        for (n = 0; n != v24; ++n)
        {
          if (*v29 != v25)
          {
            objc_enumerationMutation(v19);
          }

          *&v32 = objc_msgSend_groupByUid(*(*(&v28 + 1) + 8 * n), v21, v22, v23, v28);
          *(&v32 + 1) = v27;
          sub_2211D6484(a2, &v32, &v32);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v21, &v28, v33, 16);
      }

      while (v24);
    }
  }
}

void TSCEReferenceSet::subsetForOwnerUID(TSCEReferenceSet *this@<X0>, TSKUIDStruct *a2@<X1>, uint64_t a3@<X8>)
{
  v51 = *MEMORY[0x277D85DE8];
  v6 = this->_dependencyTracker;
  *a3 = &unk_2834B9F48;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 1065353216;
  *(a3 + 72) = 0;
  *(a3 + 64) = 0;
  *(a3 + 56) = a3 + 64;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0;
  for (i = this->_cellRefs.__table_.__first_node_.__next_; i; i = *i)
  {
    v10 = i[2];
    v11 = i[3];
    v12 = v10 == a2->_lower && v11 == a2->_upper;
    if (v12)
    {
      for (j = i[6]; j; j = *j)
      {
        v49.rangeRef.range._topLeft = j[2];
        v49.rangeRef.range._bottomRight = v10;
        v49.rangeRef._tableUID._lower = v11;
        TSCEReferenceSet::insertRef(a3, &v49);
      }
    }
  }

  begin_node = this->_rangeRefs.__tree_.__begin_node_;
  if (begin_node != &this->_rangeRefs.__tree_.__end_node_)
  {
    do
    {
      next = begin_node->_cellRefs.__table_.__first_node_.__next_;
      size = begin_node->_cellRefs.__table_.__size_;
      if (next == a2->_lower && size == a2->_upper)
      {
        for (k = begin_node->_rangeRefs.__tree_.__end_node_.__left_; k; k = *k)
        {
          v49.rangeRef.range = *(k + 1);
          v49.rangeRef._tableUID._lower = next;
          v49.rangeRef._tableUID._upper = size;
          TSCEReferenceSet::insertRef(a3, &v49.rangeRef, v7, v8);
        }
      }

      dependencyTracker = begin_node->_dependencyTracker;
      if (dependencyTracker)
      {
        do
        {
          ptr = dependencyTracker;
          dependencyTracker = dependencyTracker->super.isa;
        }

        while (dependencyTracker);
      }

      else
      {
        do
        {
          ptr = begin_node->_cellRefs.__table_.__bucket_list_.__ptr_;
          v12 = ptr->_vptr$TSCEReferenceSet == begin_node;
          begin_node = ptr;
        }

        while (!v12);
      }

      begin_node = ptr;
    }

    while (ptr != &this->_rangeRefs.__tree_.__end_node_);
  }

  spanningRefs = this->_spanningRefs;
  if (spanningRefs)
  {
    v22 = spanningRefs[2];
    if (v22)
    {
      v44 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
      do
      {
        v23 = v22[3];
        if (v23 != v22 + 4)
        {
          do
          {
            v24 = v23[4];
            v25 = v23[5];
            if (v24 == a2->_lower && v25 == a2->_upper)
            {
              v29 = *(v22 + 16);
              v49.rangeRef.range = v44;
              v49.rangeRef._tableUID._lower = 0;
              v49.rangeRef._tableUID._upper = 0;
              v49.rangeContext = v29;
              v30 = v23 + 8;
              while (1)
              {
                v30 = *v30;
                if (!v30)
                {
                  break;
                }

                v49.rangeRef.range = *(v30 + 1);
                v49.rangeRef._tableUID._lower = v24;
                v49.rangeRef._tableUID._upper = v25;
                TSCEReferenceSet::insertRef(a3, &v49, v7, v8);
              }
            }

            v27 = v23[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v23[2];
                v12 = *v28 == v23;
                v23 = v28;
              }

              while (!v12);
            }

            v23 = v28;
          }

          while (v28 != v22 + 4);
        }

        v22 = *v22;
      }

      while (v22);
    }
  }

  wholeOwnerRefs = this->_wholeOwnerRefs;
  if (wholeOwnerRefs && sub_2210875C4(wholeOwnerRefs, a2))
  {
    TSCEReferenceSet::insertWholeOwnerRef(a3, a2);
  }

  geometryVolatileRefs = this->_geometryVolatileRefs;
  if (geometryVolatileRefs && sub_2210875C4(geometryVolatileRefs, a2))
  {
    TSCEReferenceSet::insertGeometryVolatileRef(a3, a2);
  }

  categoryRefs = this->_categoryRefs;
  if (categoryRefs)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v34 = categoryRefs;
    v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v35, &v45, v50, 16);
    if (v39)
    {
      v40 = *v46;
      do
      {
        for (m = 0; m != v39; ++m)
        {
          if (*v46 != v40)
          {
            objc_enumerationMutation(v34);
          }

          v42 = *(*(&v45 + 1) + 8 * m);
          if (objc_msgSend_groupByUid(v42, v36, v37, v38, v44, v45) == a2->_lower && v36 == a2->_upper)
          {
            TSCEReferenceSet::insertRef(a3, v42);
          }
        }

        v39 = objc_msgSend_countByEnumeratingWithState_objects_count_(v34, v36, &v45, v50, 16);
      }

      while (v39);
    }
  }
}

void sub_221699440(_Unwind_Exception *a1)
{
  MEMORY[0x223DA1450](v2, 0x10A1C40D9336959);

  _Unwind_Resume(a1);
}

uint64_t sub_221699614(uint64_t a1)
{
  sub_221699650(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_221699650(uint64_t a1, void **a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_221279750((v2 + 3), v2[4]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_221699698(void *a1, uint64_t *a2, uint64_t *a3)
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
        if (v8 != v4)
        {
          *(v8 + 16) = *(v4 + 16);
          sub_2216997CC(v8 + 4, v4[6], 0);
        }

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

    sub_22141E600(a1, v10);
  }

  if (v4 != a3)
  {
    sub_221699944(a1);
  }
}

void sub_22169979C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_22141E600(v1, v2);
  __cxa_rethrow();
}

void sub_2216997CC(void *a1, void *a2, void *a3)
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
        v8[2] = a2[2];
        v9 = *v8;
        sub_2214C0F20(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_2216998C4(a1, a2 + 2);
  }
}

void sub_221699890(void *a1)
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

void sub_2216999B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

uint64_t sub_221699A5C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_2210CE644(a1, i + 4, i + 2);
  }

  return a1;
}

uint64_t **sub_221699AD4(uint64_t **result, uint64_t *a2, uint64_t *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_2212692E8(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 2) = *(v9 + 2);
          if (v8 != v9)
          {
            *(v8 + 20) = *(v9 + 20);
            sub_221699C74(v8 + 6, v9[8], 0);
            v8 = v15;
          }

          v10 = sub_221279938(v5, &v16, v8 + 2);
          sub_2210BBE8C(v5, v16, v10, v8);
          v15 = v14;
          if (v14)
          {
            v14 = sub_2212692E8(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_22169A2AC(&v13);
  }

  if (a2 != a3)
  {
    sub_22169A304(v5);
  }

  return result;
}

void sub_221699C74(void *a1, uint64_t *a2, uint64_t *a3)
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
        v8[1] = *(a2 + 1);
        v9 = *v8;
        sub_221699D6C(a1, v8);
        a2 = *a2;
        v8 = v9;
        if (!v9)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v10 = *v8;
        operator delete(v8);
        v8 = v10;
      }

      while (v10);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22169A1E0(a1);
  }
}

void sub_221699D38(void *a1)
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

uint64_t sub_221699D6C(void *a1, uint64_t a2)
{
  v4 = TSCERangeCoordinate::hash((a2 + 16));
  *(a2 + 8) = v4;
  v5 = sub_221699DC4(a1, v4, (a2 + 16));
  sub_2210BD408(a1, a2, v5);
  return a2;
}

void *sub_221699DC4(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_221699F30(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
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
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && TSCERangeCoordinate::operator==(v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void sub_221699F30(uint64_t result, size_t __n)
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

      sub_22169A020(result, prime);
    }
  }
}

void sub_22169A020(uint64_t a1, unint64_t a2)
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

void sub_22169A21C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_22169A2AC(uint64_t a1)
{
  sub_221279750(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_221279750(*a1, v2);
  }

  return a1;
}

void sub_22169A36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221346188(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22169A400(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = i->_topLeft)
  {
    sub_22169A478(a1, i + 1, &i[1]._topLeft);
  }

  return a1;
}

void *sub_22169A478(void *a1, TSCERangeCoordinate *this, _OWORD *a3)
{
  v5 = TSCERangeCoordinate::hash(this);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
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

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!TSCERangeCoordinate::operator==(v12 + 2, this))
  {
    goto LABEL_17;
  }

  return v12;
}

uint64_t sub_22169A6C8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22169A740(a1, i + 16);
  }

  return a1;
}

uint64_t ***sub_22169A740(void *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (result = *v6) == 0)
  {
LABEL_18:
    sub_22169A974();
  }

  while (1)
  {
    v8 = result[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    result = *result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  if (*(result + 16) != v2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_22169A950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11)
{
  if (a10)
  {
    sub_22169AB8C(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_22169A9FC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_22169AB8C(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_22169AA18(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_22169AA70(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_22169AA70(void *result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_22169AAF8(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_22169AAF8(uint64_t **a1, void *a2, unint64_t *a3, _OWORD *a4)
{
  v4 = *sub_22112C6A8(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    sub_22169A380();
  }

  return v4;
}

void sub_22169AB8C(uint64_t a1, void **a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_221279750((a2 + 3), a2[4]);
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_22169ABEC(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22169AC64(a1, i + 8, i + 8);
  }

  return a1;
}

uint64_t **sub_22169AC64(void *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t sub_22169AE98(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_221087270(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_22169AF10(a1, i + 2);
  }

  return a1;
}

void *sub_22169AF10(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = v2 ^ *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v2 ^ *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    sub_22169B14C();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_22;
    }

LABEL_21:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v8[2] != *a2 || v8[3] != v2)
  {
    goto LABEL_21;
  }

  return v8;
}

void sub_22169B138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

BOOL sub_22169B1D4(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_221244A70(a2, v3 + 4);
    if (!v5)
    {
      break;
    }

    v6 = *(v3 + 2);
    v7 = v5[2];
    v9 = v6 == v7;
    v8 = (v7 ^ v6) & 0x101FFFF00000000;
    v9 = v9 && v8 == 0;
  }

  while (v9);
  return v4;
}

BOOL sub_22169B260(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = v3->_topLeft;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = sub_22169C254(a2, v3 + 1);
    if (!v5)
    {
      break;
    }
  }

  while (TSCERangeCoordinate::operator==(&v3[1]._topLeft, v5 + 2));
  return v4;
}

void sub_22169B2DC(void *a1, unsigned __int16 *a2, unsigned __int16 *a3)
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
        v9 = a2[8];
        *(v8 + 8) = v9;
        v10 = *v8;
        v8[1] = v9;
        v11 = sub_2211DC0DC(a1, v9, v8 + 8);
        sub_2210BD408(a1, v8, v11);
        a2 = *a2;
        v8 = v10;
        if (!v10)
        {
          goto LABEL_11;
        }
      }

      do
      {
        v12 = *v8;
        operator delete(v8);
        v8 = v12;
      }

      while (v12);
    }
  }

LABEL_11:
  if (a2 != a3)
  {
    sub_22169B3E8(a1, a2 + 8);
  }
}

void sub_22169B3B4(void *a1)
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

void sub_22169B470(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_22141E600(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_22169B4CC(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_221699650(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

uint64_t **sub_22169B528(void *a1, unsigned __int16 *a2, _WORD *a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (*&v4 <= v3)
    {
      v6 = v3 % a1[1];
    }
  }

  else
  {
    v6 = (v4.i32[0] - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (*(v8 + 8) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *sub_22169B75C(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_22169B9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

void *sub_22169B9D0(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_22169BC30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_22169BC44(void *a1, unsigned __int8 *a2, uint64_t a3, _BYTE **a4)
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

  if (*(v9 + 16) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *sub_22169BEA8(void *a1, void *a2, uint64_t a3, _OWORD **a4)
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

void sub_22169C108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22141E170(va);
  _Unwind_Resume(a1);
}

uint64_t sub_22169C11C(void *a1, TSCERangeCoordinate *a2)
{
  result = sub_22169C154(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

void *sub_22169C154(void *a1, TSCERangeCoordinate *this)
{
  v4 = TSCERangeCoordinate::hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (TSCERangeCoordinate::operator==(v11 + 2, this))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void *sub_22169C254(void *a1, TSCERangeCoordinate *this)
{
  v4 = TSCERangeCoordinate::hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v6 == v12)
      {
        if (TSCERangeCoordinate::operator==(v11 + 2, this))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

void sub_22169D0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_22169D0F4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22169D10C(uint64_t a1, void *a2)
{
  v12 = a2;
  if (objc_msgSend_groupLevelInTable_(v12, v3, *(a1 + 32), v4) == *(a1 + 48))
  {
    v8 = *(*(*(a1 + 40) + 8) + 40);
    v9 = objc_msgSend_copy(v12, v5, v6, v7);
    objc_msgSend_addObject_(v8, v10, v9, v11);
  }
}

void sub_22169D600(_Unwind_Exception *exception_object)
{
  if (v6)
  {
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {

    if (v5)
    {
LABEL_3:
      if (v4)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  if (v4)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:

  goto LABEL_5;
}

void sub_22169D63C()
{
  if (v0)
  {
    JUMPOUT(0x22169D614);
  }

  JUMPOUT(0x22169D610);
}

void sub_22169D6AC(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

id sub_22169D7B8(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();

  return v1;
}

void sub_22169DAA8(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169DB1C(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169DBCC(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169DC64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (!v10)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_22169DEF8(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (v4 != 5)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "BOOL TSTCellStorageVersionCheck(TSTCellStorage *)", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 138, 0, "Can't parse cell storage header version %d!", v4);

    objc_msgSend_logFullBacktrace(MEMORY[0x277D81150], v12, v13, v14);
  }

  return v4 == 5;
}

void sub_22169E144(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_22169E254(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_22169E35C;
  v9[3] = &unk_278468490;
  v12 = a3;
  v10 = *(a1 + 32);
  v11 = &v13;
  objc_msgSend_enumerateStoragesInColumnRange_withBlock_(a2, v8, v6, v7, v9);
  if (*(v14 + 24) == 1)
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v13, 8);
}

void sub_22169E33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22169E35C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_22169E4AC(uint64_t a1, void *a2, int a3, _BYTE *a4)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_22169E5BC;
  v10[3] = &unk_278468490;
  v13 = a3;
  v11 = *(a1 + 32);
  v12 = &v14;
  objc_msgSend_enumerateStoragesInColumnRange_getPreBNC_withBlock_(a2, v9, v6, v7, v8, v10);
  if (*(v15 + 24) == 1)
  {
    *a4 = 1;
  }

  _Block_object_dispose(&v14, 8);
}

void sub_22169E59C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_22169E5BC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = (*(*(a1 + 32) + 16))();
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

void sub_22169E6EC(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_22169E7DC(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_22169E8CC(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_22169EAC4(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169EB88(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169ECF0(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169ED68(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169EDDC(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169EE50(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169EED8(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_22169EEEC(void *a1, void *a2, uint64_t a3)
{
  v49 = a1;
  v8 = objc_msgSend_richTextValue(a2, v5, v6, v7);
  v11 = sub_221145078(a3, 0x10, v9, v10);
  v13 = v11;
  if (v8 || v11)
  {
    v14 = sub_22170A7B0(v49, v12);
    v17 = objc_msgSend_richTextForKey_(v14, v15, v13, v16);

    v24 = objc_msgSend_documentRoot(v49, v18, v19, v20);
    if (v17 && v8 != v17)
    {
      v25 = objc_msgSend_documentRoot(v17, v21, v22, v23);

      if (v25)
      {
        objc_msgSend_willBeRemovedFromDocumentRoot_(v17, v26, v24, v28);
        objc_msgSend_wasRemovedFromDocumentRoot_(v17, v29, v24, v30);
      }

      else
      {
        objc_msgSend_upgrading(v49, v26, v27, v28);
      }
    }

    v31 = objc_msgSend_documentRoot(v8, v21, v22, v23);

    if (v31)
    {
      v35 = objc_msgSend_documentRoot(v8, v32, v33, v34);

      if (v24 != v35)
      {
        v39 = MEMORY[0x277D81150];
        v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "void p_performRichTextStorageDOLC(TSTTableDataStore *__strong, TSTCell *__strong, TSTCellStorageRef)", v38);
        v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v42);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 752, 0, "expected equality between %{public}s and %{public}s", "documentRoot", "newStorage.documentRoot");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
      }

      objc_msgSend_upgrading(v49, v36, v37, v38);
    }

    else if (v8 && v8 != v17)
    {
      objc_msgSend_willBeAddedToDocumentRoot_dolcContext_(v8, v32, v24, 0);
      objc_msgSend_wasAddedToDocumentRoot_dolcContext_(v8, v48, v24, 0);
    }
  }
}

void sub_22169F148(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = a2;
  v10 = objc_msgSend_commentStorage(v18, v4, v5, v6);
  if (v10)
  {
    v11 = objc_msgSend_commentStorageID(v18, v7, v8, v9);
    v14 = sub_221145078(a3, 0x80000, v12, v13);
    if (!v14 || v11 != v14)
    {
      objc_msgSend_commentWillBeAddedToDocumentRoot(v10, v15, v16, v17);
    }
  }
}

void sub_22169F1F8(void *a1, void *a2, unsigned __int8 *a3)
{
  v46 = a1;
  v5 = a2;
  v6 = sub_221143910(v5);
  v10 = 0;
  v11 = 0;
  v15 = v6 | sub_221143644(a3, v7, v8, v9);
  do
  {
    v16 = dword_2218038DC[v11];
    if ((v16 & v15) != 0)
    {
      v17 = objc_msgSend_formatForStorageFlag_(v5, v12, dword_2218038DC[v11], v14);
      v23 = objc_msgSend_formatIDForStorageFlag_(v5, v18, v16, v19);
      if (v10)
      {
        v10 = 1;
      }

      else
      {
        v24 = objc_msgSend_asCustomFormatWrapper(v17, v20, v21, v22);
        v10 = v24 != 0;
      }

      if (v17)
      {
        v25 = 0;
      }

      else
      {
        v25 = v23 == 0;
      }

      if (!v25)
      {
        if (v17)
        {
          v26 = sub_22170A948(v46, v20);
          v28 = objc_msgSend_addCellFormat_atSuggestedKey_callWillModify_(v26, v27, v17, v23, 1);

          objc_msgSend_setFormatID_forStorageFlag_(v5, v29, v28, v16);
        }

        else
        {
          v30 = sub_22170A948(v46, v20);
          v33 = objc_msgSend_cellFormatForKey_(v30, v31, v23, v32);

          if (v33)
          {
            v37 = sub_22170A948(v46, v34);
            objc_msgSend_takeReferenceForKey_callWillModify_(v37, v38, v23, 1);
          }

          else
          {
            objc_msgSend_upgrading(v46, v34, v35, v36);
            objc_msgSend_setFormatID_forStorageFlag_(v5, v42, 0, v16);
          }
        }
      }

      v39 = sub_221145078(a3, v16, v21, v22);
      if (v39)
      {
        v40 = sub_22170A948(v46, v12);
        objc_msgSend_dropReferenceForKey_callWillModify_(v40, v41, v39, 1);
      }
    }

    ++v11;
  }

  while (v11 != 6);
  if (v10)
  {
    LODWORD(v45) = objc_msgSend_cellFlags(v5, v12, v13, v14) | 2;
  }

  else
  {
    v45 = objc_msgSend_cellFlags(v5, v12, v13, v14) & 0xFFFFFFFDLL;
  }

  objc_msgSend_setCellFlags_(v5, v43, v45, v44);
}

void sub_22169F450(void *a1, void *a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, char a6)
{
  if (objc_msgSend_valueType(a2, a2, a3, a4, a5) == 3)
  {
    v13 = objc_msgSend_stringID(a2, v10, v11, v12);
    v17 = objc_msgSend_stringValue(a2, v14, v15, v16);
    if (v17)
    {
      v224 = v17;
      v420 = sub_22170A8F4(a1);
      v226 = objc_msgSend_addString_atSuggestedKey_callWillModify_(v420, v225, v224, v13, 1);

      objc_msgSend_setStringID_(a2, v227, v226, v228);
    }

    else
    {
      if (!v13)
      {
        if ((objc_msgSend_upgrading(a1, v18, v19, v20) & 1) == 0)
        {
          v24 = MEMORY[0x277D81150];
          v399 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v23);
          v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v26);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v24, v28, v399, v27, 850, 0, "Cell of string value type has no value. Setting to NoContent.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
        }

LABEL_6:
        objc_msgSend_clearValue(a2, v21, v22, v23);
        goto LABEL_7;
      }

      v426 = sub_22170A8F4(a1);
      v277 = objc_msgSend_stringForKey_(v426, v275, v13, v276);

      if (!v277)
      {
        if ((objc_msgSend_upgrading(a1, v278, v279, v280) & 1) == 0)
        {
          v283 = MEMORY[0x277D81150];
          v427 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v281, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v282);
          v286 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v284, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v285);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v283, v287, v427, v286, 857, 0, "Handed a bad string key! Setting to NoContent.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v288, v289, v290);
        }

        objc_msgSend_setStringID_(a2, v281, 0, v282);
        goto LABEL_6;
      }

      v437 = sub_22170A8F4(a1);
      objc_msgSend_takeReferenceForKey_callWillModify_(v437, v391, v13, 1);
    }
  }

LABEL_7:
  v32 = sub_221145078(a3, 8, v11, v12);
  if (v32)
  {
    v94 = v32;
    v400 = sub_22170A8F4(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v400, v95, v94, 1);
  }

  if (objc_msgSend_hasFormula(a2, v33, v34, v35))
  {
    v96 = objc_msgSend_cellSpec(a2, v36, v37, v38);
    if (v96)
    {
      v229 = v96;
      if ((objc_msgSend_hasTSCEFormula(v96, v97, v98, v99) & 1) == 0)
      {
        v233 = MEMORY[0x277D81150];
        v421 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v230, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v232);
        v236 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v234, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v235);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v233, v237, v421, v236, 873, 0, "Expected a formula cell spec");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v238, v239, v240);
      }

      v241 = objc_msgSend_formulaID(a2, v230, v231, v232);
      v422 = sub_22170A990(a1);
      v243 = objc_msgSend_addFormula_atSuggestedKey_callWillModify_(v422, v242, v229, v241, 1);

      objc_msgSend_setFormulaID_(a2, v244, v243, v245);
    }

    else
    {
      v100 = objc_msgSend_formulaID(a2, v97, v98, v99);
      v401 = sub_22170A990(a1);
      v103 = objc_msgSend_formulaForKey_(v401, v101, v100, v102);

      if (v103)
      {
        v435 = sub_22170A990(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v435, v389, v100, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v104, v105, v106) & 1) == 0)
        {
          v109 = MEMORY[0x277D81150];
          v402 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v107, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v108);
          v112 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v110, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v111);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v109, v113, v402, v112, 883, 0, "Handed a bad formula key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v114, v115, v116);
        }

        objc_msgSend_setFormulaID_(a2, v107, 0, v108);
      }
    }
  }

  v39 = sub_221145078(a3, 0x200, v37, v38);
  if (v39)
  {
    v117 = v39;
    v403 = sub_22170A990(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v403, v118, v117, 1);
  }

  if (objc_msgSend_hasControl(a2, v40, v41, v42))
  {
    v119 = objc_msgSend_cellSpec(a2, v43, v44, v45);
    if (v119)
    {
      v246 = v119;
      if ((objc_msgSend_isControl(v119, v120, v121, v122) & 1) == 0)
      {
        v250 = MEMORY[0x277D81150];
        v423 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v247, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v249);
        v253 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v251, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v252);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v250, v254, v423, v253, 898, 0, "Expected a control cell spec");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v255, v256, v257);
      }

      v258 = objc_msgSend_controlCellSpecID(a2, v247, v248, v249);
      v424 = sub_22170AA38(a1, v259);
      v261 = objc_msgSend_addControlCellSpec_atSuggestedKey_callWillModify_(v424, v260, v246, v258, 1);

      objc_msgSend_setControlCellSpecID_(a2, v262, v261, v263);
    }

    else
    {
      v123 = objc_msgSend_controlCellSpecID(a2, v120, v121, v122);
      v404 = sub_22170AA38(a1, v124);
      v127 = objc_msgSend_controlCellSpecForKey_(v404, v125, v123, v126);

      if (v127)
      {
        v436 = sub_22170AA38(a1, v128);
        objc_msgSend_takeReferenceForKey_callWillModify_(v436, v390, v123, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v128, v129, v130) & 1) == 0)
        {
          v133 = MEMORY[0x277D81150];
          v405 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v131, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v132);
          v136 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v134, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v135);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v133, v137, v405, v136, 908, 0, "Handed a bad formula key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v138, v139, v140);
        }

        objc_msgSend_setControlCellSpecID_(a2, v131, 0, v132);
      }
    }
  }

  v46 = sub_221145078(a3, 0x400, v44, v45);
  if (v46)
  {
    v141 = v46;
    v406 = sub_22170AA38(a1, v47);
    objc_msgSend_dropReferenceForKey_callWillModify_(v406, v142, v141, 1);
  }

  if (objc_msgSend_hasFormulaSyntaxError(a2, v47, v48, v49))
  {
    v143 = objc_msgSend_formulaSyntaxError(a2, v50, v51, v52);
    v147 = objc_msgSend_formulaSyntaxErrorID(a2, v144, v145, v146);
    v148 = sub_22170A7F8(a1);
    v407 = v148;
    if (v143)
    {
      v151 = objc_msgSend_addFormulaError_atSuggestedKey_callWillModify_(v148, v149, v143, v147, 1);

      objc_msgSend_setFormulaSyntaxErrorID_(a2, v152, v151, v153);
    }

    else
    {
      v291 = objc_msgSend_formulaErrorForKey_(v148, v149, v147, v150);

      if (v291)
      {
        v438 = sub_22170A7F8(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v438, v392, v147, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v292, v293, v294) & 1) == 0)
        {
          v297 = MEMORY[0x277D81150];
          v428 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v295, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v296);
          v300 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v298, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v299);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v297, v301, v428, v300, 932, 0, "Handed a bad formula error key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v302, v303, v304);
        }

        objc_msgSend_setFormulaSyntaxErrorID_(a2, v295, 0, v296);
      }
    }
  }

  v53 = sub_221145078(a3, 0x800, v51, v52);
  if (v53)
  {
    v154 = v53;
    v408 = sub_22170A7F8(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v408, v155, v154, 1);
  }

  if (objc_msgSend_hasRichText(a2, v54, v55, v56))
  {
    v156 = objc_msgSend_richTextValue(a2, v57, v58, v59);
    v160 = objc_msgSend_richTextID(a2, v157, v158, v159);
    v162 = sub_22170A7B0(a1, v161);
    v409 = v162;
    if (v156)
    {
      v165 = objc_msgSend_addRichText_atSuggestedKey_callWillModify_(v162, v163, v156, v160, 1);

      objc_msgSend_setRichTextID_(a2, v166, v165, v167);
    }

    else
    {
      v305 = objc_msgSend_richTextForKey_(v162, v163, v160, v164);

      if (v305)
      {
        v439 = sub_22170A7B0(a1, v306);
        objc_msgSend_takeReferenceForKey_callWillModify_(v439, v393, v160, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v306, v307, v308) & 1) == 0)
        {
          v311 = MEMORY[0x277D81150];
          v429 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v309, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v310);
          v314 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v312, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v313);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v311, v315, v429, v314, 956, 0, "Handed a bad text storage key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v316, v317, v318);
        }

        objc_msgSend_setRichTextID_(a2, v309, 0, v310);
      }
    }
  }

  v60 = sub_221145078(a3, 0x10, v58, v59);
  if (v60)
  {
    v168 = v60;
    v410 = sub_22170A7B0(a1, v61);
    objc_msgSend_dropReferenceForKey_callWillModify_(v410, v169, v168, 1);
  }

  if (objc_msgSend_hasCommentStorage(a2, v61, v62, v63))
  {
    v170 = objc_msgSend_commentStorage(a2, v64, v65, v66);
    v174 = objc_msgSend_commentStorageID(a2, v171, v172, v173);
    v175 = sub_22170A8A0(a1);
    v411 = v175;
    if (v170)
    {
      v178 = objc_msgSend_addCommentStorage_atSuggestedKey_callWillModify_(v175, v176, v170, v174, 1);

      objc_msgSend_setCommentStorageID_(a2, v179, v178, v180);
    }

    else
    {
      v319 = objc_msgSend_commentStorageForKey_(v175, v176, v174, v177);

      if (v319)
      {
        v440 = sub_22170A8A0(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v440, v394, v174, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v320, v321, v322) & 1) == 0)
        {
          v325 = MEMORY[0x277D81150];
          v430 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v323, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v324);
          v328 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v326, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v327);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v325, v329, v430, v328, 980, 0, "Handed a cell comment key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v330, v331, v332);
        }

        objc_msgSend_setCommentStorageID_(a2, v323, 0, v324);
      }
    }
  }

  v67 = sub_221145078(a3, 0x80000, v65, v66);
  if (v67)
  {
    v181 = v67;
    v412 = sub_22170A8A0(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v412, v182, v181, 1);

    if (a6)
    {
      goto LABEL_25;
    }
  }

  else if (a6)
  {
    goto LABEL_25;
  }

  if (objc_msgSend_hasImportWarningSet(a2, v68, v69, v70))
  {
    v264 = objc_msgSend_importWarningSet(a2, v71, v69, v70);
    v268 = objc_msgSend_importWarningSetID(a2, v265, v266, v267);
    v269 = sub_22170A9E4(a1);
    v425 = v269;
    if (v264)
    {
      v272 = objc_msgSend_addImportWarningSet_atSuggestedKey_callWillModify_(v269, v270, v264, v268, 1);

      objc_msgSend_setImportWarningSetID_(a2, v273, v272, v274);
    }

    else
    {
      v375 = objc_msgSend_importWarningSetForKey_(v269, v270, v268, v271);

      if (v375)
      {
        v444 = sub_22170A9E4(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v444, v398, v268, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v376, v377, v378) & 1) == 0)
        {
          v381 = MEMORY[0x277D81150];
          v434 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v379, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v380);
          v384 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v382, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v383);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v381, v385, v434, v384, 1004, 0, "Handed an import warning set key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v386, v387, v388);
        }

        objc_msgSend_setImportWarningSetID_(a2, v379, 0, v380);
      }
    }
  }

LABEL_25:
  v72 = sub_221145078(a3, 0x100000, v69, v70);
  if (v72)
  {
    v183 = v72;
    v413 = sub_22170A9E4(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v413, v184, v183, 1);
  }

  sub_22169F1F8(a1, a2, a3);
  if (objc_msgSend_hasCellStyle(a2, v73, v74, v75))
  {
    v185 = objc_msgSend_cellStyle(a2, v76, v77, v78);
    v189 = objc_msgSend_cellStyleID(a2, v186, v187, v188);
    v190 = sub_22170A75C(a1);
    v414 = v190;
    if (v185)
    {
      v193 = objc_msgSend_addStyle_atSuggestedKey_callWillModify_(v190, v191, v185, v189, 1);

      objc_msgSend_setCellStyleID_(a2, v194, v193, v195);
    }

    else
    {
      v333 = objc_msgSend_styleForKey_(v190, v191, v189, v192);

      if (v333)
      {
        v441 = sub_22170A75C(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v441, v395, v189, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v334, v335, v336) & 1) == 0)
        {
          v339 = MEMORY[0x277D81150];
          v431 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v337, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v338);
          v342 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v340, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v341);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v339, v343, v431, v342, 1032, 0, "Handed a bad cell style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v344, v345, v346);
        }

        objc_msgSend_setCellStyleID_(a2, v337, 0, v338);
      }
    }
  }

  v79 = sub_221145078(a3, 0x20, v77, v78);
  if (v79)
  {
    v196 = v79;
    v415 = sub_22170A75C(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v415, v197, v196, 1);
  }

  if (objc_msgSend_hasTextStyle(a2, v80, v81, v82))
  {
    v198 = objc_msgSend_textStyle(a2, v83, v84, v85);
    v202 = objc_msgSend_textStyleID(a2, v199, v200, v201);
    v203 = sub_22170A75C(a1);
    v416 = v203;
    if (v198)
    {
      v206 = objc_msgSend_addStyle_atSuggestedKey_callWillModify_(v203, v204, v198, v202, 1);

      objc_msgSend_setTextStyleID_(a2, v207, v206, v208);
    }

    else
    {
      v347 = objc_msgSend_styleForKey_(v203, v204, v202, v205);

      if (v347)
      {
        v442 = sub_22170A75C(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v442, v396, v202, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v348, v349, v350) & 1) == 0)
        {
          v353 = MEMORY[0x277D81150];
          v432 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v351, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v352);
          v356 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v354, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v355);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v353, v357, v432, v356, 1056, 0, "Handed a bad text style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v358, v359, v360);
        }

        objc_msgSend_setTextStyleID_(a2, v351, 0, v352);
      }
    }
  }

  v86 = sub_221145078(a3, 0x40, v84, v85);
  if (v86)
  {
    v209 = v86;
    v417 = sub_22170A75C(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v417, v210, v209, 1);
  }

  if (objc_msgSend_hasConditionalStyle(a2, v87, v88, v89))
  {
    v211 = objc_msgSend_conditionalStyle(a2, v90, v91, v92);
    v215 = objc_msgSend_conditionalStyleID(a2, v212, v213, v214);
    v216 = sub_22170A84C(a1);
    v418 = v216;
    if (v211)
    {
      v219 = objc_msgSend_addConditionalStyleSet_atSuggestedKey_callWillModify_(v216, v217, v211, v215, 1);

      objc_msgSend_setConditionalStyleID_(a2, v220, v219, v221);
    }

    else
    {
      v361 = objc_msgSend_conditionalStyleSetForKey_(v216, v217, v215, v218);

      if (v361)
      {
        v443 = sub_22170A84C(a1);
        objc_msgSend_takeReferenceForKey_callWillModify_(v443, v397, v215, 1);
      }

      else
      {
        if ((objc_msgSend_upgrading(a1, v362, v363, v364) & 1) == 0)
        {
          v367 = MEMORY[0x277D81150];
          v433 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v365, "void p_UpdateDataListsForNewCell(TSTTableDataStore *const __strong, TSTCell *const __strong, TSTCellStorageRef, const TSCEOwnerUID &, const __strong id<TSCEFormulaReplacing>, BOOL)", v366);
          v370 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v368, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v369);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v367, v371, v433, v370, 1080, 0, "Handed a bad conditional style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v372, v373, v374);
        }

        objc_msgSend_setConditionalStyleID_(a2, v365, 0, v366);
      }
    }
  }

  v93 = sub_221145078(a3, 0x80, v91, v92);
  if (v93)
  {
    v222 = v93;
    v419 = sub_22170A84C(a1);
    objc_msgSend_dropReferenceForKey_callWillModify_(v419, v223, v222, 1);
  }
}

void sub_2216A0654(void *a1, int a2, uint64_t a3, TSKUIDStruct *a4, void *a5, void *a6, char a7)
{
  v42 = a3;
  v12 = a1;
  v13 = a5;
  v14 = a6;
  if (objc_msgSend_hasFormula(v12, v15, v16, v17))
  {
    v21 = objc_msgSend_formulaID(v12, v18, v19, v20);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v41, 0, 1);
    v41.var1 = v21 == a2;
    v25 = objc_msgSend_cellSpec(v12, v22, v23, v24);
    v29 = objc_msgSend_asFormulaSpec(v25, v26, v27, v28);
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v32 = sub_22170A990(v14);
      v35 = objc_msgSend_formulaForKey_(v32, v33, v21, v34);
      v31 = objc_msgSend_asFormulaSpec(v35, v36, v37, v38);
    }

    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v40, &v41);
    objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(v13, v39, v31, &v42, a4, &v40);
  }

  else
  {
    if (a2)
    {
      objc_msgSend_removeFormulaAt_inOwner_(v13, v18, &v42, a4);
    }

    if ((a7 & 1) == 0)
    {
      *&v41.var0 = v42;
      v41.var6 = *a4;
      objc_msgSend_markCellRefAsDirty_(v13, v18, &v41, v20);
    }
  }
}

void sub_2216A1330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  _Block_object_dispose((v12 - 248), 8);

  _Block_object_dispose((v12 - 200), 8);
  _Block_object_dispose((v12 - 168), 8);
  _Block_object_dispose((v12 - 136), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2216A140C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2216A1424(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  sub_2212C7250(a1 + 64);

  return TSCEFormulaRewriteContextRecord::operator=(a1 + 64, a2 + 64);
}

void sub_2216A1474(uint64_t a1, TSUCellCoord a2, void *a3)
{
  v98 = a2;
  v4 = a3;
  objc_msgSend_validateAndRepair(v4, v5, v6, v7);
  if (objc_msgSend_isEmptyForDataStore(v4, v8, v9, v10))
  {

    v4 = 0;
  }

  v14 = *(*(a1 + 64) + 8);
  if (!*(v14 + 24) || (v98.row < *(*(*(a1 + 72) + 8) + 24) || v98.row >= *(*(*(a1 + 80) + 8) + 24)) && (*(v14 + 24) = 0, !*(*(*(a1 + 64) + 8) + 24)))
  {
    v15 = objc_msgSend_tileForWritingAtRowIndex_outTileRange_(*(*(a1 + 32) + 152), v11, v98.row, &v96);
    *(*(*(a1 + 64) + 8) + 24) = v15;

    if (!*(*(*(a1 + 64) + 8) + 24))
    {
      v18 = MEMORY[0x277D81150];
      v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableDataStore setCellMap:tableUID:calculationEngine:conditionalStyleOwner:ignoreFormulas:skipDirtyingNonFormulaCells:doRichTextDOLC:]_block_invoke", v17);
      v22 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v20, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v21);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v23, v19, v22, 1343, 0, "Failed to get a tile while setting a map!");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v24, v25, v26);
    }

    v27 = v96;
    v28 = v97;
    *(*(*(a1 + 72) + 8) + 24) = v96.row;
    *(*(*(a1 + 80) + 8) + 24) = v28 + v27;
    objc_msgSend_addIndexesInRange_(*(*(*(a1 + 88) + 8) + 40), v16, v27, v28);
  }

  if (objc_msgSend_hasFormula(v4, v11, v12, v13))
  {
    v35 = objc_msgSend_formulaObject(v4, v29, v30, v31);
    if (!v35)
    {
      v36 = *(a1 + 32);
      v37 = v36[9];
      v38 = v37;
      if (!v37)
      {
        v38 = sub_22170A990(v36);
      }

      v39 = objc_msgSend_formulaID(v4, v32, v33, v34);
      v42 = objc_msgSend_formulaForKey_(v38, v40, v39, v41);
      v46 = objc_msgSend_asFormulaSpec(v42, v43, v44, v45);
      v35 = objc_msgSend_formulaObject(v46, v47, v48, v49);

      if (v37)
      {
        if (!v35)
        {
          goto LABEL_20;
        }
      }

      else
      {

        if (!v35)
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    if (objc_msgSend_containsUidReferences(v35, v32, v33, v34))
    {
      TSCEFormulaRewriteContext::setContainingCellCoord((*(*(a1 + 96) + 8) + 48), &v98);
      v52 = objc_msgSend_copyByRewritingReferencesToGeometricForm_(v35, v50, *(*(a1 + 96) + 8) + 48, v51);
      objc_msgSend_setFormulaObject_(v4, v53, v52, v54);
    }

    goto LABEL_20;
  }

LABEL_21:
  if ((*(*(*(a1 + 104) + 8) + 24) & 1) == 0 && objc_msgSend_hasFormulaSyntaxError(v4, v29, v30, v31))
  {
    *(*(*(a1 + 104) + 8) + 24) = 1;
    v55 = *(a1 + 40);
    objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v29, *(a1 + 120), v31);
    objc_msgSend_markCellRefAsDirty_(v55, v56, &v96, v57);
  }

  if (objc_msgSend_hasConditionalStyle(v4, v29, v30, v31))
  {
    v61 = objc_msgSend_conditionalStyle(v4, v58, v59, v60);
    if (objc_msgSend_containsUidReferences(v61, v62, v63, v64))
    {
      TSCEFormulaRewriteContext::setContainingCellCoord((*(*(a1 + 112) + 8) + 48), &v98);
      v67 = objc_msgSend_copyToGeometricFormWithRewriteContext_(v61, v65, *(*(a1 + 112) + 8) + 48, v66);

      v61 = v67;
      objc_msgSend_setConditionalStyle_(v4, v68, v67, v69);
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      TSCEFormulaRewriteContext::setContainingCellCoord((*(*(a1 + 96) + 8) + 48), &v98);
      v72 = objc_msgSend_copyByConvertingToRelativeAncestorsWithRewriteContext_(v61, v70, *(*(a1 + 96) + 8) + 48, v71);

      v61 = v72;
      objc_msgSend_setConditionalStyle_(v4, v73, v72, v74);
    }
  }

  v75 = v98.row - *(*(*(a1 + 72) + 8) + 24);
  v76 = objc_msgSend_cellStorageRefAtColumnIndex_tileRowIndex_(*(*(*(a1 + 64) + 8) + 24), v58, v98.column, v75);
  v77 = v76;
  if (*(a1 + 129) == 1)
  {
    sub_22169EEEC(*(a1 + 32), v4, v76);
  }

  sub_22169F148(v76, v4, v77);
  sub_22169F450(*(a1 + 32), v4, v77, v78, v79, 0);
  v82 = sub_221145078(v77, 0x200, v80, v81);
  v85 = sub_221145078(v77, 0x80, v83, v84);
  objc_msgSend_setCell_atColumnIndex_tileRowIndex_(*(*(*(a1 + 64) + 8) + 24), v86, v4, v98.column, v75);
  v90 = *(a1 + 40);
  if (*(a1 + 130) == 1)
  {
    if (v90)
    {
      sub_2216A0654(v4, v82, *&v98, *(a1 + 120), v90, *(a1 + 32), *(a1 + 131));
      if (*(a1 + 48))
      {
        if (v85 != objc_msgSend_conditionalStyleID(v4, v87, v91, v89))
        {
          v93 = objc_msgSend_conditionalStyle(v4, v87, v92, v89);
          objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(*(a1 + 48), v94, v93, *&v98);
        }
      }
    }
  }

  else if (v90 && objc_msgSend_mayModifyValuesReferencedByFormulas(*(a1 + 56), v87, v88, v89))
  {
    v95 = *(a1 + 120);
    v96 = v98;
    v97 = *v95;
    objc_msgSend_markCellRefAsDirty_(*(a1 + 40), v87, &v96, v89);
  }

  if (!v4 || v77)
  {
    if (!v4 && v77)
    {
      objc_msgSend_decrementCellCountsAtCellID_(*(a1 + 32), v87, *&v98, v89);
    }
  }

  else
  {
    objc_msgSend_incrementCellCountsAtCellID_(*(a1 + 32), v87, *&v98, v89);
  }
}

void sub_2216A1EBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_2216A3E3C(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2216A4614(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2216A4734(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2216A4804(_Unwind_Exception *a1)
{
  if (!v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2216A4894(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2216A4CA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  objc_sync_exit(v22);

  _Unwind_Resume(a1);
}

void *sub_2216A4D80(void *a1, const char *a2)
{
  if (a1)
  {
    v2 = a1[28];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_2216A4E20;
    v4[3] = &unk_2784685A0;
    v4[4] = a1;
    a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(a1, a2, (a1 + 12), v2, v4);
  }

  return a1;
}

void sub_2216A4E20(uint64_t a1, void *a2)
{
  v22 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((*(a1 + 32) + 272));
    objc_msgSend_setRichTextParentInfo_(v22, v8, v7, v9);
  }

  else if (objc_msgSend_count(v22, v4, v5, v6))
  {
    v10 = objc_loadWeakRetained((*(a1 + 32) + 272));

    if (!v10)
    {
      v13 = MEMORY[0x277D81150];
      v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "[TSTTableDataStore _loadRichTextDataList]_block_invoke", v12);
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v16);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v13, v18, v14, v17, 2328, 0, "Expected non-nil richTextParentInfo back pointer. Should have been set at initialization.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v19, v20, v21);
    }
  }
}

void sub_2216A5218(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2216A5318(_Unwind_Exception *a1)
{
  if (!v4)
  {
  }

  _Unwind_Resume(a1);
}

id sub_2216A5BCC(uint64_t a1, void *a2, unsigned int a3)
{
  v5 = a2;
  v9 = objc_msgSend_asCustomFormatWrapper(v5, v6, v7, v8);
  v13 = v9;
  if (!v9)
  {
    v37 = v5;
    goto LABEL_11;
  }

  v14 = objc_msgSend_customFormatKey(v9, v10, v11, v12);
  v20 = objc_msgSend_customFormat(v13, v15, v16, v17);
  if (!v20)
  {
    v31 = 0;
LABEL_9:
    v38 = MEMORY[0x277D81150];
    v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "[TSTTableDataStore addPasteboardCustomFormatsToDocumentAndTableReturningBadIDs]_block_invoke", v19);
    v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v41);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 2539, 0, "Unexpected corrupt custom format being pasted.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
    objc_msgSend_addIndex_(*(a1 + 40), v47, a3, v48);
    v36 = v5;
    goto LABEL_10;
  }

  v21 = objc_msgSend_addCustomFormat_oldKey_fuzzyNameMatching_(*(a1 + 32), v18, v20, v14, 1);
  v22 = objc_alloc(MEMORY[0x277D80650]);
  v26 = objc_msgSend_formatType(v13, v23, v24, v25);
  v29 = objc_msgSend_customFormatForKey_(*(a1 + 32), v27, v21, v28);
  v31 = objc_msgSend_initWithFormatType_customFormatKey_customFormat_(v22, v30, v26, v21, v29);

  if (!v31)
  {
    goto LABEL_9;
  }

  v34 = objc_msgSend_customFormatKey(v31, v18, v32, v19);
  if (!v34)
  {
    goto LABEL_9;
  }

  v35 = objc_msgSend_customFormat(v31, v18, v33, v19);

  if (!v35)
  {
    goto LABEL_9;
  }

  v36 = v31;
  v31 = v36;
LABEL_10:
  v37 = v36;

LABEL_11:

  return v37;
}

id *sub_2216A6048(id *result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if ((*(a2 + 4) & 2) != 0)
    {
      v4 = result;
      objc_msgSend_inflateFromStorageRef_dataStore_(result[4], a2, a2, result[5]);
      result = objc_msgSend_removeCustomFormatsWithIDs_(v4[4], v5, v4[6], v6);
      if (result)
      {
        v8 = v4[7];
        v9 = v4[4];

        return objc_msgSend_addCell_andCellID_(v8, v7, v9, a3);
      }
    }
  }

  return result;
}

void sub_2216A6120(_Unwind_Exception *exception_object)
{
  if (!v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_2216A66F4(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2216A754C(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [TSTTableHeaderStorage alloc];
  v5 = objc_msgSend_initWithBucket_owner_(v3, v4, v8, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = *(v6 + 168);
  *(v6 + 168) = v5;
}

void sub_2216A75D4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 192);
  *(v6 + 192) = v3;
}

void sub_2216A7638(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 176);
  *(v6 + 176) = v3;
}

void sub_2216A769C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 232);
  *(v6 + 232) = v3;
}

void sub_2216A7700(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 200);
  *(v6 + 200) = v3;
}

void sub_2216A7764(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 208);
  *(v6 + 208) = v3;
}

void sub_2216A77C8(uint64_t a1, void *a2)
{
  v7 = a2;
  v6 = objc_msgSend_mergedRects(v7, v3, v4, v5);
  if ((*(a1 + 32) + 24) != v6)
  {
    sub_2210BD068((*(a1 + 32) + 24), *v6, v6[1], (v6[1] - *v6) >> 4);
  }
}

void sub_2216A7854(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 216);
  *(v6 + 216) = v3;
}

void sub_2216A78B8(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 224);
  *(v6 + 224) = v3;
}

void sub_2216A791C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 240);
  *(v6 + 240) = v3;
}

void sub_2216A7980(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 248);
  *(v6 + 248) = v3;
}

void sub_2216A79E4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_msgSend_setKeepObjectInMemory_(v3, v4, 1, v5);
  v6 = *(a1 + 32);
  v7 = *(v6 + 184);
  *(v6 + 184) = v3;
}

void *sub_2216A7A84(void *result, const char *a2)
{
  if (result[5] == 0x300020000000ALL)
  {
    return sub_22170AC40(result, a2);
  }

  return result;
}

void sub_2216A7EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_2216A7F70(uint64_t a1, unsigned int a2, void *a3)
{
  v17 = a3;
  if (objc_msgSend_formatType(v17, v5, v6, v7) - 263 <= 4)
  {
    if (objc_msgSend_formatType(v17, v8, v9, v10) == 266)
    {
      v13 = objc_msgSend_p_populatedMultipleChoiceListFormat_(*(a1 + 32), v11, v17, v12);

      v14 = v13;
    }

    else
    {
      v14 = v17;
    }

    v17 = v14;
    v16 = objc_msgSend_cellSpecFromTSKFormat_(TSTCellSpec, v11, v14, v12);
    if (v16)
    {
      objc_msgSend_setObject_forKey_(*(*(*(a1 + 40) + 8) + 40), v15, v16, a2);
    }
  }
}

void sub_2216A8064(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_inflateFromStorageRef_dataStore_suppressingTransmutation_(*(a1 + 32), a2, a2, *(a1 + 40), 0);
  v8 = objc_msgSend_currentFormatID(*(a1 + 32), v5, v6, v7);
  if (v8 && (objc_msgSend_objectForKey_(*(*(*(a1 + 56) + 8) + 40), v9, v8, v11), (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v15 = v12;
    if ((objc_msgSend_hasFormula(*(a1 + 32), v9, v10, v11) & 1) == 0)
    {
      objc_msgSend_setCellSpecRepairingFormats_(*(a1 + 32), v9, v15, v11);
    }
  }

  else
  {
    v15 = 0;
  }

  v13 = objc_msgSend_upgradedBraveNewCell(*(a1 + 32), v9, v10, v11);
  objc_msgSend_addCell_andCellID_(*(a1 + 48), v14, v13, a3);
}

void sub_2216A9160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  sub_2210BDEC0(&a33);
  sub_2210BDEC0(&a39);
  sub_2210BDEC0(&a45);
  sub_2210BDEC0(&a51);
  sub_2210BDEC0(&a57);
  sub_2210BDEC0(&a63);
  sub_2210BDEC0(&a65);
  sub_2210BDEC0(v68 - 224);
  sub_2210BDEC0(v68 - 176);
  sub_2210BDEC0(v68 - 128);
  sub_2210BC9F8(v68 - 88, *(v68 - 80));
  _Unwind_Resume(a1);
}

uint64_t *sub_2216A926C(void *a1, unsigned int a2)
{
  v5 = a2;
  if (sub_2211DC534(a1, &v5))
  {
    v6 = &v5;
    result = sub_2211DB9B8(a1, &v5, &unk_2218038F4, &v6);
    v4 = *(result + 5) + 1;
  }

  else
  {
    v6 = &v5;
    result = sub_2211DB9B8(a1, &v5, &unk_2218038F4, &v6);
    v4 = 1;
  }

  *(result + 5) = v4;
  return result;
}

void sub_2216A92FC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v19 = MEMORY[0x277D85DD0];
  v20 = 3221225472;
  v21 = sub_2216A9440;
  v22 = &unk_2784686E0;
  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v27 = a3;
  v25 = v8;
  v23 = v9;
  v10 = v7;
  v11 = *(a1 + 48);
  v24 = v10;
  v26 = v11;
  objc_msgSend_enumerateKeysAndCountsUsingBlock_(a2, v12, &v19, v13);
  for (i = (a3 + 16); ; objc_msgSend_appendFormat_(*(a1 + 32), v14, @"%@, key:%d, cellCount:%d, datalist count:0\n", v15, v10, *(i + 4), *(i + 5), v19, v20, v21, v22, v23))
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 24);
  if (*(a3 + 24))
  {
    ++v18;
  }

  *(v17 + 24) = v18;
}

uint64_t sub_2216A9440(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v12 = a2;
  v5 = sub_2211DC534(*(a1 + 64), &v12);
  v8 = v5;
  if (v5 && *(v5 + 5) == a3)
  {
    ++*(*(*(a1 + 56) + 8) + 24);
    return sub_2210CDD3C(*(a1 + 64), v8);
  }

  ++*(*(*(a1 + 48) + 8) + 24);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (v8)
  {
    objc_msgSend_appendFormat_(v9, v6, @"%@, key:%d, cellCount:%d, datalist count:%d\n", v7, v10, v12, *(v8 + 5), a3);
    return sub_2210CDD3C(*(a1 + 64), v8);
  }

  return objc_msgSend_appendFormat_(v9, v6, @"%@, key:%d, cellCount:%d, datalist count:%d\n", v7, v10, v12, 0, a3);
}

void sub_2216A9974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);

  _Block_object_dispose((v30 - 160), 8);
  _Block_object_dispose((v30 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_2216A99CC(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v24 = 0;
  v8 = objc_msgSend_validateWithResult_(v5, v6, &v24, v7);
  v12 = v24;
  if ((v8 & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    objc_msgSend_appendString_(*(*(a1[6] + 8) + 40), v9, v12, v11);
  }

  v16 = objc_msgSend_cellCount(v5, v9, v10, v11);
  if (v16 >= 1)
  {
    v17 = objc_msgSend_maxColumnIndex(v5, v13, v14, v15);
    v18 = 0;
    v19 = 0;
    do
    {
      if (objc_msgSend_cellStorageRefAtIndex_(v5, v13, v18, v15))
      {
        v20 = *(*(a1[7] + 8) + 24);
        ++*(v20 + 8 * v18);
        ++v19;
      }

      ++v18;
    }

    while (v17 >= v18 && v19 != v16);
  }

  v23 = objc_msgSend_cellCountAtIndex_(*(a1[4] + 160), v13, a3, v15);
  if (v23 != v16)
  {
    objc_msgSend_appendFormat_(*(*(a1[6] + 8) + 40), v21, @"Cell count mismatch at row %d: header has %td, row has %td\n", v22, a3, v23, v16);
    *(*(a1[5] + 8) + 24) = 0;
    if (v23 < v16)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }
  }
}

void sub_2216AA28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16)
{
  _Block_object_dispose((v24 - 136), 8);

  _Unwind_Resume(a1);
}

void sub_2216AA400(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasCommentStorage(v37, v5, v6, v7))
  {
    v12 = objc_msgSend_commentStorage(v37, v9, v10, v11);
    v18 = objc_msgSend_commentStorageID(v37, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v12)
    {
      v20 = objc_msgSend_addCommentStorage_atSuggestedKey_callWillModify_(v19, v16, v12, v18, 1);
      objc_msgSend_setCommentStorageID_(v37, v21, v20, v22);
    }

    else
    {
      v23 = objc_msgSend_commentStorageForKey_(v19, v16, v18, v17);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v18, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke", v25);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 3347, 0, "Handed a cell comment key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
        }

        objc_msgSend_setCommentStorageID_(v37, v24, 0, v25);
      }
    }
  }

  v27 = objc_msgSend_commentStorageID(v8, v9, v10, v11);
  if (v27)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v26, v27, 0);
  }
}

void sub_2216AA5F8(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasConditionalStyle(v37, v5, v6, v7))
  {
    v12 = objc_msgSend_conditionalStyle(v37, v9, v10, v11);
    v18 = objc_msgSend_conditionalStyleID(v37, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v12)
    {
      v20 = objc_msgSend_addConditionalStyleSet_atSuggestedKey_callWillModify_(v19, v16, v12, v18, 1);
      objc_msgSend_setConditionalStyleID_(v37, v21, v20, v22);
    }

    else
    {
      v23 = objc_msgSend_conditionalStyleSetForKey_(v19, v16, v18, v17);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v18, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_2", v25);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 3383, 0, "Handed a bad conditional style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
        }

        objc_msgSend_setConditionalStyleID_(v37, v24, 0, v25);
      }
    }
  }

  v27 = objc_msgSend_conditionalStyleID(v8, v9, v10, v11);
  if (v27)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v26, v27, 0);
  }
}

void sub_2216AA7F0(uint64_t a1, void *a2, void *a3)
{
  v47 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasControl(v47, v5, v6, v7))
  {
    v12 = objc_msgSend_cellSpec(v47, v9, v10, v11);
    v16 = v12;
    if (v12 && (objc_msgSend_isControl(v12, v13, v14, v15) & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_3", v15);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 3410, 0, "Expected a control cell spec");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v28 = objc_msgSend_controlCellSpecID(v47, v13, v14, v15);
    v29 = *(a1 + 32);
    if (v16)
    {
      v30 = objc_msgSend_addControlCellSpec_atSuggestedKey_callWillModify_(v29, v26, v16, v28, 0);
      objc_msgSend_setControlCellSpecID_(v47, v31, v30, v32);
    }

    else
    {
      v33 = objc_msgSend_controlCellSpecForKey_(v29, v26, v28, v27);

      if (v33)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v34, v28, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v38 = MEMORY[0x277D81150];
          v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_3", v35);
          v42 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v40, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v41);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v38, v43, v39, v42, 3420, 0, "Handed a bad formula key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v44, v45, v46);
        }

        objc_msgSend_setControlCellSpecID_(v47, v34, 0, v35);
      }
    }
  }

  v37 = objc_msgSend_controlCellSpecID(v8, v9, v10, v11);
  if (v37)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v36, v37, 0);
  }
}

void sub_2216AAA70(uint64_t a1, void *a2, void *a3)
{
  v48 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasFormula(v48, v5, v6, v7))
  {
    v12 = objc_msgSend_cellSpec(v48, v9, v10, v11);
    v16 = v12;
    if (v12 && (objc_msgSend_hasTSCEFormula(v12, v13, v14, v15) & 1) == 0)
    {
      v17 = MEMORY[0x277D81150];
      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_4", v15);
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v20);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v22, v18, v21, 3447, 0, "Expected a formula cell spec");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v23, v24, v25);
    }

    v28 = objc_msgSend_formulaID(v48, v13, v14, v15);
    v29 = *(*(a1 + 40) + 72);
    if (v16)
    {
      v30 = objc_msgSend_addFormula_atSuggestedKey_callWillModify_(v29, v26, v16, v28, 0);
      objc_msgSend_setFormulaID_(v48, v31, v30, v32);
    }

    else
    {
      v33 = objc_msgSend_formulaForKey_(v29, v26, v28, v27);

      v36 = *(a1 + 40);
      if (v33)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(v36 + 72), v34, v28, 0);
      }

      else
      {
        if ((*(v36 + 137) & 1) == 0)
        {
          v39 = MEMORY[0x277D81150];
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_4", v35);
          v43 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v41, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v42);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v39, v44, v40, v43, 3457, 0, "Handed a bad formula key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v45, v46, v47);
        }

        objc_msgSend_setFormulaID_(v48, v34, 0, v35);
      }
    }
  }

  v38 = objc_msgSend_formulaID(v8, v9, v10, v11);
  if (v38)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v37, v38, 0);
  }
}

void sub_2216AACFC(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasFormulaSyntaxError(v37, v5, v6, v7))
  {
    v12 = objc_msgSend_formulaSyntaxError(v37, v9, v10, v11);
    v18 = objc_msgSend_formulaSyntaxErrorID(v37, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v12)
    {
      v20 = objc_msgSend_addFormulaError_atSuggestedKey_callWillModify_(v19, v16, v12, v18, 0);
      objc_msgSend_setFormulaSyntaxErrorID_(v37, v21, v20, v22);
    }

    else
    {
      v23 = objc_msgSend_formulaErrorForKey_(v19, v16, v18, v17);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v18, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_5", v25);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 3493, 0, "Handed a bad formula error key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
        }

        objc_msgSend_setFormulaSyntaxErrorID_(v37, v24, 0, v25);
      }
    }
  }

  v27 = objc_msgSend_formulaSyntaxErrorID(v8, v9, v10, v11);
  if (v27)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v26, v27, 0);
  }
}

void sub_2216AAEF4(uint64_t a1, void *a2, void *a3)
{
  v34 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if ((*(a1 + 56) & 1) == 0 && objc_msgSend_hasImportWarningSet(v34, v5, v6, v7))
  {
    v9 = objc_msgSend_importWarningSet(v34, v5, v6, v7);
    v15 = objc_msgSend_importWarningSetID(v34, v10, v11, v12);
    v16 = *(a1 + 32);
    if (v9)
    {
      v17 = objc_msgSend_addImportWarningSet_atSuggestedKey_callWillModify_(v16, v13, v9, v15, 0);
      objc_msgSend_setImportWarningSetID_(v34, v18, v17, v19);
    }

    else
    {
      v20 = objc_msgSend_importWarningSetForKey_(v16, v13, v15, v14);

      if (v20)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v21, v15, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v25 = MEMORY[0x277D81150];
          v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v21, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_6", v22);
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v28);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 3529, 0, "Handed an import warning set key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
        }

        objc_msgSend_setImportWarningSetID_(v34, v21, 0, v22);
      }
    }
  }

  v24 = objc_msgSend_importWarningSetID(v8, v5, v6, v7);
  if (v24)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v23, v24, 0);
  }
}

void sub_2216AB0F4(uint64_t a1, void *a2, void *a3)
{
  v37 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasRichText(v37, v5, v6, v7))
  {
    v12 = objc_msgSend_richTextValue(v37, v9, v10, v11);
    v18 = objc_msgSend_richTextID(v37, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v12)
    {
      v20 = objc_msgSend_addRichText_atSuggestedKey_callWillModify_(v19, v16, v12, v18, 0);
      objc_msgSend_setRichTextID_(v37, v21, v20, v22);
    }

    else
    {
      v23 = objc_msgSend_richTextForKey_(v19, v16, v18, v17);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v18, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v28 = MEMORY[0x277D81150];
          v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_7", v25);
          v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v31);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v28, v33, v29, v32, 3565, 0, "Handed a bad text storage key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v34, v35, v36);
        }

        objc_msgSend_setRichTextID_(v37, v24, 0, v25);
      }
    }
  }

  v27 = objc_msgSend_richTextID(v8, v9, v10, v11);
  if (v27)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v26, v27, 0);
  }
}

void sub_2216AB2EC(uint64_t a1, void *a2, void *a3)
{
  v46 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_valueType(v46, v5, v6, v7) == 3)
  {
    v12 = objc_msgSend_stringID(v46, v9, v10, v11);
    v19 = objc_msgSend_stringValue(v46, v13, v14, v15);
    if (v19)
    {
      v20 = objc_msgSend_addString_atSuggestedKey_callWillModify_(*(a1 + 32), v16, v19, v12, 0);
      objc_msgSend_setStringID_(v46, v21, v20, v22);
LABEL_15:

      goto LABEL_16;
    }

    if (v12)
    {
      v23 = objc_msgSend_stringForKey_(*(a1 + 32), v16, v12, v18);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v12, 0);
        goto LABEL_15;
      }

      if ((*(*(a1 + 40) + 137) & 1) == 0)
      {
        v35 = MEMORY[0x277D81150];
        v36 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_8", v25);
        v39 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v37, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v38);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v35, v40, v36, v39, 3607, 0, "Handed a bad string key! Setting to NoContent.");

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v41, v42, v43);
      }

      objc_msgSend_setStringID_(v46, v24, 0, v25);
    }

    else if ((*(*(a1 + 40) + 137) & 1) == 0)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_8", v18);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 3600, 0, "Cell of string value type has no value. Setting to NoContent.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    objc_msgSend_clearValue(v46, v16, v17, v18);
    goto LABEL_15;
  }

LABEL_16:
  v45 = objc_msgSend_stringID(v8, v9, v10, v11);
  if (v45)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v44, v45, 0);
  }
}

void sub_2216AB590(uint64_t a1, void *a2, void *a3)
{
  v66 = a2;
  v8 = a3;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v5, v6, v7);
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  if (objc_msgSend_hasCellStyle(v66, v5, v6, v7))
  {
    v12 = objc_msgSend_cellStyle(v66, v9, v10, v11);
    v18 = objc_msgSend_cellStyleID(v66, v13, v14, v15);
    v19 = *(a1 + 32);
    if (v12)
    {
      v20 = objc_msgSend_addStyle_atSuggestedKey_callWillModify_(v19, v16, v12, v18, 0);
      objc_msgSend_setCellStyleID_(v66, v21, v20, v22);
    }

    else
    {
      v23 = objc_msgSend_styleForKey_(v19, v16, v18, v17);

      if (v23)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v24, v18, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v48 = MEMORY[0x277D81150];
          v49 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_9", v25);
          v52 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v50, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v51);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v48, v53, v49, v52, 3644, 0, "Handed a bad cell style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v54, v55, v56);
        }

        objc_msgSend_setCellStyleID_(v66, v24, 0, v25);
      }
    }
  }

  v27 = objc_msgSend_cellStyleID(v8, v9, v10, v11);
  if (v27)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v26, v27, 0);
  }

  if (objc_msgSend_hasTextStyle(v66, v26, v27, v28))
  {
    v32 = objc_msgSend_textStyle(v66, v29, v30, v31);
    v38 = objc_msgSend_textStyleID(v66, v33, v34, v35);
    v39 = *(a1 + 32);
    if (v32)
    {
      v40 = objc_msgSend_addStyle_atSuggestedKey_callWillModify_(v39, v36, v32, v38, 0);
      objc_msgSend_setTextStyleID_(v66, v41, v40, v42);
    }

    else
    {
      v43 = objc_msgSend_styleForKey_(v39, v36, v38, v37);

      if (v43)
      {
        objc_msgSend_takeReferenceForKey_callWillModify_(*(a1 + 32), v44, v38, 0);
      }

      else
      {
        if ((*(*(a1 + 40) + 137) & 1) == 0)
        {
          v57 = MEMORY[0x277D81150];
          v58 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v44, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_9", v45);
          v61 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v59, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v60);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v57, v62, v58, v61, 3668, 0, "Handed a bad text style key! Repairing.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v63, v64, v65);
        }

        objc_msgSend_setTextStyleID_(v66, v44, 0, v45);
      }
    }
  }

  v47 = objc_msgSend_textStyleID(v8, v29, v30, v31);
  if (v47)
  {
    objc_msgSend_dropReferenceForKey_callWillModify_(*(a1 + 32), v46, v47, 0);
  }
}

void sub_2216AB8BC(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v4 = a3;
  if (objc_msgSend_hasAnyCustomFormat(v17, v5, v6, v7))
  {
    LODWORD(v13) = objc_msgSend_cellFlags(v17, v8, v9, v10) | 2;
  }

  else
  {
    if (!objc_msgSend_hasAnyCustomFormat(v4, v8, v9, v10))
    {
      goto LABEL_6;
    }

    v13 = objc_msgSend_cellFlags(v17, v14, v15, v16) & 0xFFFFFFFDLL;
  }

  objc_msgSend_setCellFlags_(v17, v11, v13, v12);
LABEL_6:
}

void sub_2216AB964(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a3;
  v15 = a5;
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    objc_msgSend_willModify(*(a1 + 32), v12, v13, v14);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (a2)
  {
    v16 = objc_msgSend_formatType(v11, v12, v13, v14);
    v17 = sub_22121E75C(v16);
    v18 = sub_221143624(v17);
    v20 = objc_msgSend_addCellFormat_atSuggestedKey_callWillModify_(*(a1 + 32), v19, v11, 0, 0);
    if (objc_msgSend_count(v15, v21, v22, v23) >= 2)
    {
      v27 = *(a1 + 32);
      v28 = objc_msgSend_count(v15, v24, v25, v26);
      objc_msgSend_takeReferences_forKey_callWillModify_(v27, v29, (v28 - 1), v20, 0);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_2216ABAE8;
    v33[3] = &unk_27845EB70;
    v33[4] = a6;
    v34 = v20;
    v35 = v18;
    objc_msgSend_enumerateIndexesUsingBlock_(v15, v24, v33, v26);
  }

  else
  {
    v30 = *(a1 + 32);
    v31 = objc_msgSend_count(v15, v12, v13, v14);
    objc_msgSend_dropReferences_forKey_callWillModify_(v30, v32, v31, a4, 0);
  }
}

uint64_t sub_2216ABAE8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(**(a1 + 32) + 8 * a2);
  if (!v5)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSTTableDataStore updateDataListsConcurrentlyWithConcurrentCellMap:clearImportWarnings:]_block_invoke_12", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 3715, 0, "invalid nil value for '%{public}s'", "cells[idx]");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    v5 = *(**(a1 + 32) + 8 * a2);
  }

  v16 = *(a1 + 40);
  v17 = *(a1 + 44);

  return objc_msgSend_setFormatID_forStorageFlag_(v5, a2, v16, v17);
}

void sub_2216ABEE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_2216ABF74(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, const void **a5@<X8>)
{
  v59 = a2;
  v10 = (a3[1] - *a3) >> 3;
  if (v10 != (a4[1] - *a4) >> 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTTableDataStore setCellsConcurrently:tableUID:calculationEngine:conditionalStyleOwner:ignoreFormula:clearImportWarnings:]_block_invoke", v9);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 3748, 0, "the newCells array and the set of column indexes should be the same size");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
    v10 = (a3[1] - *a3) >> 3;
  }

  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_2211687C4(a5, v10);
  objc_msgSend_lockForConcurrentAccess(v59, v20, v21, v22);
  if (a4[1] != *a4)
  {
    v26 = 0;
    v58 = a1;
    do
    {
      v27 = *(*a3 + 8 * v26);
      v28 = *(*a4 + 2 * v26);
      if (objc_msgSend_isEmptyForDataStore(v27, v29, v30, v31))
      {

        v27 = 0;
      }

      if (*(a1 + 32) == 1 && objc_msgSend_hasImportWarningSet(v27, v32, v33, v34))
      {
        v37 = objc_msgSend_importWarningSet(v27, v32, v35, v36);
        v41 = objc_msgSend_importWarningSetID(v27, v38, v39, v40);
        objc_msgSend_setImportWarningSet_(v27, v42, 0, v43);
      }

      else
      {
        v37 = 0;
        v41 = 0;
      }

      v46 = objc_msgSend_setCell_atIndex_(v59, v32, v27, v28, v58);
      if (v41)
      {
        objc_msgSend_setImportWarningSet_(v27, v44, v37, v45);
      }

      v48 = a5[1];
      v47 = a5[2];
      if (v48 >= v47)
      {
        v50 = *a5;
        v51 = v48 - *a5;
        v52 = v51 >> 3;
        v53 = (v51 >> 3) + 1;
        if (v53 >> 61)
        {
          sub_22107C148();
        }

        v54 = v47 - v50;
        if (v54 >> 2 > v53)
        {
          v53 = v54 >> 2;
        }

        v55 = v54 >= 0x7FFFFFFFFFFFFFF8;
        v56 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v55)
        {
          v56 = v53;
        }

        if (v56)
        {
          sub_2210874C4(a5, v56);
        }

        *(8 * v52) = v46;
        v49 = (8 * v52 + 8);
        memcpy(0, v50, v51);
        v57 = *a5;
        *a5 = 0;
        a5[1] = v49;
        a5[2] = 0;
        if (v57)
        {
          operator delete(v57);
        }

        a1 = v58;
      }

      else
      {
        *v48 = v46;
        v49 = v48 + 8;
      }

      a5[1] = v49;

      ++v26;
    }

    while (v26 < (a4[1] - *a4) >> 1);
  }

  objc_msgSend_unlockForConcurrentAccess(v59, v23, v24, v25);
}

void sub_2216AC290(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  if (objc_msgSend_hasFormula(v8, v10, v11, v12))
  {
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v41, 0, 1);
    v41.var1 = 0;
    v19 = objc_msgSend_cellSpec(v8, v16, v17, v18);
    v23 = objc_msgSend_asFormulaSpec(v19, v20, v21, v22);

    if (!v23)
    {
      v26 = MEMORY[0x277D81150];
      v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v24, "[TSTTableDataStore setCellsConcurrently:tableUID:calculationEngine:conditionalStyleOwner:ignoreFormula:clearImportWarnings:]_block_invoke_2", v25);
      v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v28, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableDataStore.mm", v29);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v26, v31, v27, v30, 3801, 0, "invalid nil value for '%{public}s'", "newFormulaSpec");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v32, v33, v34);
    }

    v40 = a2;
    v36 = *(a1 + 32);
    v35 = *(a1 + 40);
    TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v39, &v41);
    objc_msgSend_replaceFormula_atCellCoord_inOwner_replaceOptions_(v36, v37, v23, &v40, v35, &v39);
  }

  else if (objc_msgSend_hasFormula(v9, v13, v14, v15))
  {
    *&v41.var0 = a2;
    objc_msgSend_removeFormulaAt_inOwner_(*(a1 + 32), v38, &v41, *(a1 + 40));
  }
}

void sub_2216AC484(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = a4;
  v11 = a5;
  if ((*(*(a1[5] + 8) + 24) & 1) == 0 && ((objc_msgSend_hasFormulaSyntaxError(v7, v8, v9, v10) & 1) != 0 || objc_msgSend_hasFormulaSyntaxError(v11, v12, v13, v14)))
  {
    v15 = a1[6];
    *(*(a1[5] + 8) + 24) = 1;
    v16 = a1[4];
    objc_msgSend_formulaDefinitionPrecedentForTableUID_(TSCEHauntedOwner, v12, v15, v14);
    objc_msgSend_markCellRefAsDirty_(v16, v17, v19, v18);
  }
}

void sub_2216AC540(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = a4;
  if (objc_msgSend_hasConditionalStyle(v14, v6, v7, v8))
  {
    v12 = objc_msgSend_conditionalStyle(v14, v9, v10, v11);
    objc_msgSend_replaceFormulaForConditionalStyle_atCellID_(*(a1 + 32), v13, v12, a2);
  }
}

uint64_t sub_2216AC5E0(uint64_t a1, TSUCellCoord a2, $925F2A0F20B28CD67DCCD182188DAC27 a3)
{
  v8.origin = a2;
  v8.size = a3;
  TSCERangeRef::TSCERangeRef(&v7, &v8, *(a1 + 40));
  return objc_msgSend_markRangeRefAsDirty_(*(a1 + 32), v4, &v7, v5);
}

void sub_2216AC7F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, ...)
{
  va_start(va, a15);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_2216AC850(void *result, const char *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    return objc_msgSend_incrementCellCountAtIndex_byAmount_(*(result[4] + 168), a2, a2, a3);
  }

  if (a3 < 0)
  {
    return objc_msgSend_decrementCellCountAtIndex_byAmount_(*(result[4] + 168), a2, a2, -a3);
  }

  return result;
}

void sub_2216AC898(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v20 = a4;
  v11 = a5;
  if (a3 < 1)
  {
    if (a3 < 0)
    {
      objc_msgSend_decrementCellCountAtIndex_byAmount_(*(*(a1 + 32) + 160), v9, a2, -a3);
    }
  }

  else
  {
    objc_msgSend_incrementCellCountAtIndex_byAmount_(*(*(a1 + 32) + 160), v9, a2, a3);
  }

  *(*(*(a1 + 48) + 8) + 24) += a3;
  v15 = objc_msgSend_objectForKey_(*(a1 + 40), v9, v20, v10);
  if (!v15)
  {
    v15 = objc_msgSend_indexSet(MEMORY[0x277CCAB58], v12, v13, v14);
    objc_msgSend_setObject_forKey_(*(a1 + 40), v16, v15, v20);
  }

  v17 = objc_msgSend_tileSize(TSTTableTileStorage, v12, v13, v14);
  objc_msgSend_addIndex_(v15, v18, a2 % v17, v19);
}

unint64_t sub_2216AD93C(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_22169DEF8(a1, a2, a3, a4);
  if (!a1 || (sub_22169DEF8(a1, v5, v6, v7), a1[1] != 2) && (sub_22169DEF8(a1, v8, v9, v7), a1[1] != 10))
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "TSUDecimal TSTCellStorageDecimalValue(TSTCellStorage *)", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 398, 0, "Asked for TSUDecimal value from an inappropriate cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  return sub_2211450F8(a1, 1, v9, v7);
}

double sub_2216ADA3C(unsigned __int8 *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  sub_22169DEF8(a1, a2, a3, a4);
  if (!a1 || (sub_22169DEF8(a1, v5, v6, v7), a1[1] != 7))
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "double TSTCellStorageDurationValue(TSTCellStorage *)", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellStorage.h", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 334, 0, "Asked for duration value from non-duration cell.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  return sub_2211450B8(a1, 2, v8, v7);
}

uint64_t *sub_2216AE0F4(void *a1, unsigned int *a2)
{
  result = sub_2211DC534(a1, a2);
  if (result)
  {
    sub_2210CDD3C(a1, result);
    return 1;
  }

  return result;
}

uint64_t sub_2216AE13C(void *a1, void *a2, int a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a4;
  v13 = objc_msgSend_valueType(v7, v10, v11, v12);
  v17 = objc_msgSend_valueType(v8, v14, v15, v16);
  v21 = objc_msgSend_rank(v7, v18, v19, v20);
  v25 = objc_msgSend_rank(v8, v22, v23, v24);
  if (!(v21 | v25))
  {
    goto LABEL_2;
  }

  if (!v21 && v25)
  {
    v29 = 1;
    goto LABEL_28;
  }

  if (v21 && !v25)
  {
LABEL_8:
    v29 = -1;
    goto LABEL_28;
  }

  if (v21 < v25)
  {
    goto LABEL_10;
  }

  if (v21 > v25)
  {
LABEL_24:
    v30 = a3 == 0;
    v31 = -1;
LABEL_25:
    if (v30)
    {
      v29 = v31;
    }

    else
    {
      v29 = -v31;
    }

    goto LABEL_28;
  }

  v29 = 0;
  if (v13 <= 5)
  {
    if (v13 == 2)
    {
      goto LABEL_23;
    }

    if (v13 != 3)
    {
      if (v13 != 5)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }
  }

  else
  {
    if (v13 <= 8)
    {
      if (v13 != 6 && v13 != 7)
      {
        goto LABEL_28;
      }

      goto LABEL_23;
    }

    if (v13 != 9)
    {
      if (v13 != 10)
      {
        goto LABEL_28;
      }

LABEL_23:
      objc_msgSend_doubleValue(v7, v26, v27, v28);
      v33 = v32;
      objc_msgSend_doubleValue(v8, v34, v35, v36);
      if (v33 >= v37)
      {
        if (v33 <= v37)
        {
LABEL_2:
          v29 = 0;
          goto LABEL_28;
        }

LABEL_10:
        v30 = a3 == 0;
        v31 = 1;
        goto LABEL_25;
      }

      goto LABEL_24;
    }
  }

  v39 = objc_msgSend_string(v7, v26, v27, v28);
  v43 = v39;
  if (v17 != 9 && v17 != 3)
  {
    if (v39)
    {
      goto LABEL_8;
    }

    v46 = 0;
LABEL_39:
    v29 = v46 != 0;
    goto LABEL_28;
  }

  v44 = objc_msgSend_string(v8, v40, v41, v42);
  v46 = v44;
  if (!v43)
  {
    goto LABEL_39;
  }

  if (!v44)
  {
    goto LABEL_8;
  }

  if (a3)
  {
    v47 = objc_msgSend_localizedCaseInsensitiveCompare_toString_(v9, v45, v44, v43);
  }

  else
  {
    v47 = objc_msgSend_localizedCaseInsensitiveCompare_toString_(v9, v45, v43, v44);
  }

  v29 = v47;
LABEL_28:

  return v29;
}

unint64_t sub_2216AE404(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = *(a1 + 16);
    if (*(a1 + 20) * v6 <= a2)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGridIndexer gridCoordForVectorIndex:]", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 95, 0, "Index %lu exceeds area: %lu", a2, (*(a1 + 20) * *(a1 + 16)));

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
      v6 = *(a1 + 16);
    }

    v16 = 0x7FFFFFFF00000000;
    v17 = 0x7FFFFFFFLL;
    if (v6)
    {
      v18 = *(a1 + 8);
      if (v18 != 0x7FFFFFFFLL && HIDWORD(v18) != 0x7FFFFFFF)
      {
        v17 = a2 % v6 + v18;
        v16 = ((a2 / v6) + HIDWORD(v18)) << 32;
      }
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  return v17 | v16;
}

void sub_2216AEB78(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    return;
  }

  if (*a2 == 0x7FFFFFFF || *(a2 + 1) == 0x7FFFFFFF)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEValueGrid _expandToIncludeCoord:]", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v10);
    v15 = sub_2211786FC(a2, v12, v13, v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v16, v8, v11, 390, 0, "Can't expand with a spanning coordinate: %@", v15);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v21 = a1 + 6;
  v20 = a1[6];
  if (v20)
  {
    v22 = v20[1];
    v23 = HIDWORD(v22);
    v24 = v22 == 0x7FFFFFFF;
    if (v22 == 0x7FFFFFFF)
    {
      if (v23 == 0x7FFFFFFF)
      {
        v25 = 0;
        v26 = 0;
        v27 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = 1;
        LODWORD(v22) = 0x7FFFFFFF;
        LODWORD(v23) = 0x7FFFFFFF;
        v24 = 1;
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_17;
      }

      v25 = 0;
      v30 = v20[2];
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v27 = v22;
      v30 = v20[2];
      v25 = v30;
      if (v23 == 0x7FFFFFFF)
      {
        v24 = 0;
        v26 = 0;
        v29 = 0x7FFFFFFFFFFFFFFFLL;
        v28 = 1;
        LODWORD(v23) = 0x7FFFFFFF;
        goto LABEL_17;
      }
    }

    v26 = HIDWORD(v30);
    v29 = HIDWORD(v22);
  }

  else
  {
    LODWORD(v22) = 0;
    LODWORD(v23) = 0;
    v29 = 0;
    v24 = 0;
    v27 = 0;
    v25 = 0;
    v26 = 0;
  }

  v28 = 0;
LABEL_17:
  v31 = *a2;
  v32 = *(a2 + 1);
  v34 = v31 >= v27;
  v33 = v31 - v27;
  v34 = !v34 || v33 >= v25;
  v35 = !v34;
  v37 = v32 >= v29 && v32 - v29 < v26;
  if (v35 == 1 && v37)
  {
    return;
  }

  v38 = objc_msgSend_copy(v20, a2, a3, a4);
  v39 = *a2;
  if (*a2 >= v22)
  {
    v40 = v22;
  }

  else
  {
    v40 = *a2;
  }

  if (!v24)
  {
    v39 = v40;
  }

  if (*(a2 + 1) >= v23)
  {
    v41 = v23;
  }

  else
  {
    v41 = *(a2 + 1);
  }

  if (v28)
  {
    v42 = *(a2 + 1);
  }

  else
  {
    v42 = v41;
  }

  v43 = *v21;
  if (*v21)
  {
    *(v43 + 8) = v39;
    *(v43 + 12) = v42;
  }

  if (v38)
  {
    v44 = v38[1];
    v45 = HIDWORD(v44);
    if (v42 == HIDWORD(v44) && v39 == v44 || v44 == 0x7FFFFFFFLL)
    {
      v48 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    LODWORD(v45) = 0;
    v48 = v39 | v42;
    if (!(v39 | v42))
    {
      goto LABEL_57;
    }
  }

  v48 = v45 != 0x7FFFFFFF;
LABEL_57:
  if (*v21)
  {
    v49 = *(*v21 + 16);
  }

  else
  {
    v49 = 0;
  }

  v69 = v38;
  if (!v24)
  {
    v52 = v22 - v39;
    if (v52)
    {
      v51 = v52 + v49;
    }

    else
    {
      v51 = v49;
      if (v35)
      {
        goto LABEL_66;
      }

      v51 = *a2 - v22 + 1;
    }

    v48 = 1;
    goto LABEL_66;
  }

  v50 = v48;
  v74 = 0;
  sub_22130B75C(a1 + 7, 1uLL, &v74);

  v51 = 1;
  v38 = v69;
  v48 = v50;
LABEL_66:
  if (v28)
  {
    v53 = v48;
    v73 = 0;
    sub_22130B75C(a1 + 7, v51, &v73);
    v54 = a1 + 6;

    v55 = 1;
    v38 = v69;
    v48 = v53;
  }

  else
  {
    v55 = HIDWORD(v49);
    if (v23 == v42)
    {
      v54 = a1 + 6;
      if (!v37)
      {
        v55 = (*(a2 + 1) - v23 + 1);
        if (v48)
        {
          v48 = 1;
        }

        else
        {
          v72 = 0;
          sub_22130B75C(a1 + 7, v55 * v51, &v72);

          v48 = 0;
          v38 = v69;
        }
      }
    }

    else
    {
      v55 = v23 - v42 + HIDWORD(v49);
      v48 = 1;
      v54 = a1 + 6;
    }
  }

  if (*v54)
  {
    *(*v54 + 16) = v51 | (v55 << 32);
  }

  if (v48)
  {
    v56 = a1[7];
    v57 = a1[8];
    v58 = a1 + 7;
    memset(v71, 0, sizeof(v71));
    sub_2213F5020(v71, v56, v57, v57 - v56);
    v59 = v69;
    if (v69)
    {
      v59 = v69[2];
    }

    v60 = (HIDWORD(v59) * v59);
    v61 = v55 * v51;
    if (v60 < v61)
    {
      v70 = 0;
      sub_22130B75C(v58, v61, &v70);

      if (v60)
      {
        v62 = 0;
        do
        {
          v63 = *(*v58 + v62);
          *(*v58 + v62) = 0;

          v62 += 8;
        }

        while (8 * v60 != v62);
        for (i = 0; i != v60; ++i)
        {
          v67 = *(v71[0] + 8 * i);
          if (v67)
          {
            v68 = sub_2216AE404(v69, i, v65, v66);
            sub_22170B01C(v54, v68, v58, v67);
          }
        }
      }
    }

    v75 = v71;
    sub_22107C2C0(&v75);
    v38 = v69;
  }
}

TSCEGridCoord sub_2216AF054(TSCEGridCoord result, void ***a2, TSCEGridDimensions *a3)
{
  if (result)
  {
    width = a3->width;
    height = a3->height;
    if (height * a3->width != a2[1] - *a2)
    {
      TSUSetCrashReporterInfo("Fatal Assertion failure: %{public}s %{public}s:%d Dimension mismatch in value grid!", "[TSCEValueGrid _setValues:dimensions:]", "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", 495);
      v18 = MEMORY[0x277D81150];
      v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "[TSCEValueGrid _setValues:dimensions:]", v20);
      v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEValueGrid.mm", v23);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v18, v25, v21, v24, 495, 1, "Dimension mismatch in value grid!");

      TSUCrashBreakpoint();
      abort();
    }

    v7 = result;
    v28 = (width - 1) | ((height - 1) << 32);
    if ((sub_22170AC80(*(*&result + 48), &v28) & 1) == 0)
    {
      sub_2216AEB78(*&v7, &v28, v8, v9);
      width = a3->width;
      height = a3->height;
    }

    result = sub_2215C32FC((*&v7 + 8), 0, width, 0, height);
    v27 = 0;
    v11 = *a2;
    v10 = a2[1];
    if (v11 != v10)
    {
      row = 0;
      result.column = 0;
      do
      {
        v13 = *(*&v7 + 48);
        if (v13)
        {
          v14 = result.column - v13[2] + (row - v13[3]) * v13[4];
        }

        else
        {
          v14 = 0;
        }

        v15 = *v11++;
        objc_storeStrong((*(*&v7 + 56) + 8 * v14), v15);
        result = TSCEGridDimensions::nextCoordRowMajorOrder(a3, &v27);
        v27 = result;
        row = result.row;
      }

      while (v11 != v10);
    }

    v16 = *(*&v7 + 80);
    if (v16)
    {
      v29.location = 0;
      v29.length = width;
      TSUIndexRange::TSUIndexRange(&v26, v29);
      result = TSUIndexSet::addIndexesInRange(v16, &v26);
    }

    v17 = *(*&v7 + 88);
    if (v17)
    {
      v30.location = 0;
      v30.length = height;
      TSUIndexRange::TSUIndexRange(&v26, v30);
      return TSUIndexSet::addIndexesInRange(v17, &v26);
    }
  }

  return result;
}

void sub_2216AF308(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = TSCEValueGrid;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_2216AFCE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  *(v14 - 24) = v13;
  sub_22107C2C0((v14 - 24));
  _Unwind_Resume(a1);
}

__n128 sub_2216AFD08(__n128 *a1, __n128 *a2)
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

void sub_2216AFD58(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  sub_221179A54((*(*(a1 + 32) + 8) + 48), &v4);
}

void sub_2216AFEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_2216AFEC0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2216AFED8(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v14 = objc_msgSend_warnings(a3, a2, a3, a4);
  if (objc_msgSend_count(v14, v5, v6, v7))
  {
    v10 = *(*(*(a1 + 32) + 8) + 40);
    if (!v10)
    {
      v11 = objc_opt_new();
      v12 = *(*(a1 + 32) + 8);
      v13 = *(v12 + 40);
      *(v12 + 40) = v11;

      v10 = *(*(*(a1 + 32) + 8) + 40);
    }

    objc_msgSend_unionSet_(v10, v8, v14, v9);
  }
}

void sub_2216B0B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  TSUIndexSet::~TSUIndexSet((v16 - 136));
  _Block_object_dispose((v16 - 104), 8);

  _Unwind_Resume(a1);
}

void sub_2216B0BFC(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 56);
  v11[0] = a2;
  v11[1] = v7;
  v8 = objc_msgSend_valueAtCoord_(v6, a2, v11, a4);
  objc_msgSend_setValue_atCoord_(*(a1 + 40), v9, v8, *(*(a1 + 48) + 8) + 48);
  *(*(*(a1 + 48) + 8) + 48) = TSCEGridDimensions::nextCoordRowMajorOrder((a1 + 60), (*(*(a1 + 48) + 8) + 48));
  v10 = *(*(a1 + 48) + 8);
  if (*(v10 + 48) == 0x7FFFFFFF || *(v10 + 52) == 0x7FFFFFFF)
  {
    *a3 = 1;
  }
}

void sub_2216B0CC4(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v10[0] = *(a1 + 56);
  v10[1] = a2;
  v7 = objc_msgSend_valueAtCoord_(v6, a2, v10, a4);
  objc_msgSend_setValue_atCoord_(*(a1 + 40), v8, v7, *(*(a1 + 48) + 8) + 48);
  *(*(*(a1 + 48) + 8) + 48) = TSCEGridDimensions::nextCoordRowMajorOrder((a1 + 60), (*(*(a1 + 48) + 8) + 48));
  v9 = *(*(a1 + 48) + 8);
  if (*(v9 + 48) == 0x7FFFFFFF || *(v9 + 52) == 0x7FFFFFFF)
  {
    *a3 = 1;
  }
}

void sub_2216B119C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, TSUIndexSet *a7, TSUIndexSet *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  TSUIndexSet::~TSUIndexSet(&a15);
  TSUIndexSet::~TSUIndexSet(&a19);
  _Unwind_Resume(a1);
}

void sub_2216B17FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2216B190C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2216B1B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id a23)
{
  _Block_object_dispose(&a18, 8);

  _Block_object_dispose((v24 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_2216B1B7C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ((objc_msgSend_isNil(v4, v5, v6, v7) & 1) == 0)
  {
    v11 = objc_msgSend_nativeType(v4, v8, v9, v10);
    if (v11 == 1 || v11 == 6)
    {
      v23 = *(*(a1 + 40) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = 0;

      v25 = *(a1 + 56);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(a1 + 56) + 24);
      v29 = *(*(a1 + 40) + 8);
      obj = *(v29 + 40);
      v30 = v26;
      v17 = objc_msgSend_asGrid_functionSpec_argumentIndex_applyPreferredFormat_outError_(v4, v31, v30, v27, v28, 1, &obj);
      objc_storeStrong((v29 + 40), obj);

      if (*(*(*(a1 + 40) + 8) + 40))
      {
LABEL_15:

        goto LABEL_17;
      }

      v18 = objc_msgSend_flattenedGrid_format_(v17, v32, *(a1 + 56), *(a1 + 64));
      v37 = objc_msgSend_count(v18, v33, v34, v35);
      if (v37)
      {
        for (i = 0; i != v37; ++i)
        {
          v39 = objc_msgSend_valueAtIndexNoThrow_index_(v18, v36, *(a1 + 56), i);
          if (!objc_msgSend_isNil(v39, v40, v41, v42) || *(*(a1 + 56) + 32) == 1)
          {
            objc_msgSend_setValue_atCoord_(*(a1 + 32), v43, v39, *(*(a1 + 48) + 8) + 48);
            ++*(*(*(a1 + 48) + 8) + 48);
          }
        }
      }
    }

    else
    {
      if (v11 != 16)
      {
        objc_msgSend_setValue_atCoord_(*(a1 + 32), v12, v4, *(*(a1 + 48) + 8) + 48);
        ++*(*(*(a1 + 48) + 8) + 48);
        goto LABEL_17;
      }

      v15 = objc_msgSend_valueGrid(v4, v12, v13, v14);
      v17 = v15;
      if (!v15)
      {
        goto LABEL_15;
      }

      v18 = objc_msgSend_flattenedGrid_format_(v15, v16, *(a1 + 56), *(a1 + 64));
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = sub_2216B1E48;
      v44[3] = &unk_278468970;
      v47 = *(a1 + 56);
      v19 = *(a1 + 32);
      v20 = *(a1 + 48);
      v45 = v19;
      v46 = v20;
      objc_msgSend_enumerateValuesUsingBlock_(v18, v21, v44, v22);
    }

    goto LABEL_15;
  }

LABEL_17:
}

void sub_2216B1E48(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  if (!objc_msgSend_isNil(v8, v4, v5, v6) || *(*(a1 + 48) + 32) == 1)
  {
    objc_msgSend_setValue_atCoord_(*(a1 + 32), v7, v8, *(*(a1 + 40) + 8) + 48);
    ++*(*(*(a1 + 40) + 8) + 48);
  }
}

double sub_2216B20E4(double *a1, void *a2, unint64_t a3, double result)
{
  v4 = a3;
  if (a3)
  {
    while (1)
    {
      v7 = v4 - 1;
      if (v4 == 1)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = a1[v4 >> 1];
      do
      {
        if (v4 >> 1 != v8)
        {
          v11 = a1[v8];
          if (v11 >= v10)
          {
            v12 = v7;
          }

          else
          {
            v12 = v9;
          }

          if (v11 < v10)
          {
            ++v9;
          }

          v7 -= v11 >= v10;
          *&a2[v12] = v11;
        }

        ++v8;
      }

      while (v4 != v8);
      *&a2[v9] = v10;
      memcpy(a1, a2, 8 * v4);
      result = sub_2216B20E4(a1, a2, v9, v13);
      a1 += v9 + 1;
      a2 += v9 + 1;
      v4 += ~v9;
      if (!v4)
      {
        return result;
      }
    }

    result = *a1;
    *a2 = *a1;
  }

  return result;
}

void sub_2216B3804(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51)
{
  sub_22121E580(&a50, a51);

  _Unwind_Resume(a1);
}

void sub_2216B6DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2216B716C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2216B7C24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, void *a40)
{
  v48 = *(v46 - 176);
  if (v48)
  {
    *(v46 - 168) = v48;
    operator delete(v48);
  }

  v49 = *(v46 - 152);
  if (v49)
  {
    *(v46 - 144) = v49;
    operator delete(v49);
  }

  _Unwind_Resume(a1);
}

void sub_2216B7DE0(void *result, unint64_t a2, _OWORD *a3)
{
  v3 = (result[1] - *result) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 16 * a2;
    }
  }

  else
  {
    sub_2216CDA74(result, a2 - v3, a3);
  }
}

void sub_2216B86F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  sub_22121E580(v14 - 192, *(v14 - 184));

  _Unwind_Resume(a1);
}

uint64_t sub_2216BA71C(TSUDecimal *a1)
{
  TSUDecimal::doubleValue(a1);
  exp(v1);
  TSUDecimal::operator=();
  return v3;
}

void sub_2216BC180(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  v50 = *(v48 - 256);
  if (v50)
  {
    *(v48 - 248) = v50;
    operator delete(v50);
  }

  v51 = *(v48 - 232);
  if (v51)
  {
    *(v48 - 224) = v51;
    operator delete(v51);
  }

  _Unwind_Resume(a1);
}

void sub_2216BC488(const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_22107C148();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      sub_2210874C4(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void sub_2216C12CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, void *a16)
{
  sub_22121E580(v20 - 200, *(v20 - 192));

  _Unwind_Resume(a1);
}

uint64_t sub_2216C8EA4(double *a1, double *a2)
{
  v2 = a1 != 0;
  v3 = a2 != 0;
  if (a1 && a2)
  {
    v2 = *a1 > *a2;
    v3 = *a1 < *a2;
  }

  v4 = v3 << 31 >> 31;
  if (v2)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

void sub_2216CA810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11)
{
  sub_2210BC9F8(v12 - 168, *(v12 - 160));

  _Unwind_Resume(a1);
}

void sub_2216CB3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void **a28, uint64_t a29, id a30)
{
  a28 = (v33 - 112);
  sub_22107C2C0(&a28);

  _Unwind_Resume(a1);
}

void sub_2216CDA74(uint64_t a1, unint64_t a2, _OWORD *a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (a2 <= (v6 - v5) >> 4)
  {
    if (a2)
    {
      v12 = 16 * a2;
      v13 = &v5[a2];
      do
      {
        *v5++ = *a3;
        v12 -= 16;
      }

      while (v12);
      v5 = v13;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 4);
    if (v8 >> 60)
    {
      sub_22107C148();
    }

    v9 = v7 >> 4;
    v10 = v6 - *a1;
    if (v10 >> 3 > v8)
    {
      v8 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      sub_221086F74(a1, v11);
    }

    v14 = 16 * v9;
    v15 = 16 * v9 + 16 * a2;
    v16 = 16 * a2;
    v17 = v14;
    do
    {
      *v17++ = *a3;
      v16 -= 16;
    }

    while (v16);
    v18 = *(a1 + 8) - *a1;
    v19 = v14 - v18;
    memcpy((v14 - v18), *a1, v18);
    v20 = *a1;
    *a1 = v19;
    *(a1 + 8) = v15;
    *(a1 + 16) = 0;
    if (v20)
    {

      operator delete(v20);
    }
  }
}

uint64_t *sub_2216CDB94(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    sub_221123150(result, a4);
  }

  return result;
}

void sub_2216CDBEC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2216CDC08(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221123150(a1, a2);
  }

  return a1;
}

void sub_2216CDCC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2216CDCE0(uint64_t **a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *sub_22112C810(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void sub_2216CDEAC()
{
  v0 = objc_alloc(MEMORY[0x277D80AC0]);
  v3 = objc_msgSend_initWithProperties_(v0, v1, 910, v2, 0);
  v4 = qword_27CFB6B88;
  qword_27CFB6B88 = v3;
}

void sub_2216CE564(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, TSUIndexSet *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  TSUIndexSet::~TSUIndexSet(v14 + 1);
  TSUIndexSet::~TSUIndexSet(&a12);

  _Unwind_Resume(a1);
}

void sub_2216CF4DC(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_2216D0C8C()
{
  v0 = objc_opt_new();
  v1 = qword_27CFB6B98;
  qword_27CFB6B98 = v0;
}

BOOL sub_2216D1410(uint64_t a1, TSCEASTElementWithChildren *a2)
{
  while (1)
  {
    v4 = TSCEASTElement::tag(a2, a1);
    if (v4 - 31 >= 2)
    {
      break;
    }

    a2 = TSCEASTElementWithChildren::child(a2, 0);
  }

  return v4 > 0x38 || ((1 << v4) & 0x100000009FC0000) == 0;
}

TSCEASTFunctionElement *sub_2216D1490(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  if (objc_msgSend_functionIndexUsesThunks_(TSCEFunctionSpec, v7, v6, v8))
  {
    v9 = (*(*this + 48))(this, a1);
    if (v9 >= 2)
    {
      v10 = v9;
      for (i = 1; i != v10; ++i)
      {
        v12 = TSCEASTElementWithChildren::child(this, i);
        if (sub_2216D1410(a1, v12))
        {
          TSCEASTRewriter::createThunk(a1, v12, v13, v14);
        }
      }
    }
  }

  return this;
}

void sub_2216D1574(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

const char *sub_2216D3530(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEASTRowColumnUidMapRewriter::anyReferenceNode(TSCEASTRelativeCoordRefElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTRowColumnUidMapRewriter.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 18, 0, "Expected to be called on uid-form formulas only.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return a2;
}

TSCEASTElement *sub_2216D35EC(uint64_t a1, TSCEASTElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v4 = TSCEASTElement::mutableUndoTractList(a2, a1);
    if (objc_msgSend_remapUsingColumnUidMap_rowUidMap_clearIfMissing_(v4, v5, *(a1 + 200), *(a1 + 208), *(a1 + 224)))
    {
      v17._flags = TSCEASTRelativeCoordRefElement::preserveFlags(a2, a1);
      if ((TSCEASTElement::refFlags(a2, a1) & 1) == 0)
      {
        TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v4, &v17);
      }

      v16._lower = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v6, v7);
      v16._upper = v8;
      v9 = *(a1 + 216);
      v15[0] = TSCEASTRelativeCoordRefElement::tableUID(a2, a1, v10, v11);
      v15[1] = v12;
      v13 = sub_2210875C4(v9, v15);
      if (v13)
      {
        v16 = v13[2];
      }

      TSCEASTIteratorBase::createReferenceErrorWithUidTractList(a1, v4, &v16, &v17);
    }
  }

  return a2;
}

TSCEASTElement *sub_2216D3764(uint64_t a1, TSCEASTElement *a2)
{
  if (TSCEASTElement::hasUidTracts(a2, a1))
  {
    v4 = TSCEASTElement::mutableUndoTractList(a2, a1);
    if (objc_msgSend_remapUsingColumnUidMap_rowUidMap_clearIfMissing_(v4, v5, *(a1 + 200), *(a1 + 208), *(a1 + 224)))
    {
      v23 = TSCEASTUidReferenceElement::preserveFlags(a2, a1, v6, v7);
      if ((TSCEASTElement::refFlags(a2, a1) & 1) == 0)
      {
        sub_22122B92C(v21, v4, &v23);
        TSCEASTIteratorBase::createUidReference(a1, v21, v10, v11);
      }

      *&v22 = TSCEASTUidReferenceElement::tableUID(a2, a1, v8, v9);
      *(&v22 + 1) = v12;
      v13 = *(a1 + 216);
      v21[0] = TSCEASTUidReferenceElement::tableUID(a2, a1, v14, v15);
      v21[1] = v16;
      v17 = sub_2210875C4(v13, v21);
      if (v17)
      {
        v22 = *(v17 + 2);
      }

      sub_22122B9B8(v21, &v22, v4, &v23);
      TSCEASTIteratorBase::createUidReference(a1, v21, v18, v19);
    }
  }

  return a2;
}

void sub_2216D3918(TSCEASTRewriter *a1)
{
  TSCEASTRewriter::~TSCEASTRewriter(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2216D3950(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v3 = &unk_2834BA328;
  *(v3 + 136) = 0;
  *(v3 + 138) = 0;
  *(v3 + 96) = 1;
}

TSCEASTFunctionElement *sub_2216D3994(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  if (v6 <= 279)
  {
    if ((v6 - 231) >= 4 && v6 != 33 && v6 != 145)
    {
      return this;
    }

LABEL_8:
    *(a1 + 138) = 1;
    return this;
  }

  if (v6 <= 343)
  {
    if ((v6 - 309) < 2)
    {
      goto LABEL_8;
    }

    if (v6 != 280)
    {
      return this;
    }

LABEL_11:
    *(a1 + 136) = 1;
    return this;
  }

  if (v6 == 373 || v6 == 344)
  {
    goto LABEL_11;
  }

  return this;
}

void sub_2216D3A48(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2216D3B58(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9B38 = v5;
  qword_2812E9B30[0] = &unk_2834BA548;
  if (atomic_load_explicit(dword_2812E44B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9B98 = 0;
  unk_2812E9B88 = 0u;
  unk_2812E9B78 = 0u;
  unk_2812E9B68 = 0u;
  unk_2812E9B58 = 0u;
  unk_2812E9B48 = 0u;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, qword_2812E9B30, v4);
}

uint64_t sub_2216D3C20(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9BA8 = v5;
  qword_2812E9BA0[0] = &unk_2834BA5F8;
  if (atomic_load_explicit(dword_2812E44F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9BB8 = 0;
  unk_2812E9BC0 = 0;
  dword_2812E9BD0 = 0;
  qword_2812E9BC8 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, qword_2812E9BA0, v4);
}

uint64_t sub_2216D3CD8(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E9B10 = v5;
  qword_2812E9B08 = &unk_2834BA498;
  if (atomic_load_explicit(dword_2812E4510, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(&qword_2812E9B20 + 6) = 0;
  qword_2812E9B20 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &qword_2812E9B08, v4);
}

uint64_t sub_2216D3D8C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9BE0 = v5;
  qword_2812E9BD8[0] = &unk_2834BA6A8;
  if (atomic_load_explicit(dword_2812E4530, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9BF0 = 0;
  unk_2812E9BF8 = 0;
  dword_2812E9C08 = 0;
  qword_2812E9C00 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, qword_2812E9BD8, v4);
}

uint64_t sub_2216D3E44(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  sub_2216D7A9C(&unk_2812E9C10, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &unk_2812E9C10, v4);
}

uint64_t sub_2216D3EB4(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  unk_2812E9EE0 = v5;
  qword_2812E9ED8[0] = &unk_2834BA968;
  dword_2812E9EF0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, qword_2812E9ED8, v4);
}

uint64_t sub_2216D3F38(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  *&v5 = 0;
  *algn_2812E9EB0 = v5;
  qword_2812E9EA8 = &unk_2834BA8B8;
  if (atomic_load_explicit(dword_2812E4590, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  qword_2812E9EC0 = 0;
  unk_2812E9EC8 = 0;
  dword_2812E9ED0 = 0;
  v6 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v6, &qword_2812E9EA8, v4);
}

uint64_t sub_2216D3FEC(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  sub_2216D8798(&unk_2812E9C60, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &unk_2812E9C60, v4);
}

uint64_t sub_2216D405C(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4)
{
  google::protobuf::internal::VerifyVersion(0x2DFD70, 3014000, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/messages/src/TSTStylePropertyArchiving.pb.cc", a4);
  sub_2216E23B4(&unk_2812E9EF8, 0);
  v5 = MEMORY[0x277D80A80];

  return google::protobuf::internal::OnShutdownRun(v5, &unk_2812E9EF8, v4);
}

uint64_t sub_2216D40CC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2834BA498;
  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    operator new();
  }

  *(a1 + 24) = 0;
  v7 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v7;
  return a1;
}

uint64_t *sub_2216D419C(uint64_t *a1)
{
  if (a1 != &qword_2812E9B08 && a1[3])
  {
    v2 = MEMORY[0x223D9F990]();
    MEMORY[0x223DA1450](v2, 0x10A1C4078DB9C03);
  }

  sub_2214DFCF8(a1 + 1);
  return a1;
}

void sub_2216D4200(uint64_t *a1)
{
  sub_2216D419C(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D4240(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (v2)
  {
    result = TSD::StrokeArchive::Clear(*(result + 3));
  }

  if ((v2 & 0xE) != 0)
  {
    *(v1 + 18) = 0;
    *(v1 + 8) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return result;
}

google::protobuf::internal *sub_2216D42AC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v28 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v28, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v28 + 1);
      v8 = *v28;
      if ((*v28 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v28, (v9 - 128));
      v28 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_50;
      }

      v7 = TagFallback;
      v8 = v23;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 2)
      {
        if (v10 == 3)
        {
          if (v8 == 29)
          {
            v5 |= 2u;
            *(a1 + 32) = *v7;
            v28 = (v7 + 4);
            goto LABEL_41;
          }

LABEL_33:
          if (v8)
          {
            v21 = (v8 & 7) == 4;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v20 = google::protobuf::internal::UnknownFieldParse();
LABEL_40:
          v28 = v20;
          if (!v20)
          {
            goto LABEL_50;
          }

          goto LABEL_41;
        }

        if (v10 != 4 || v8 != 32)
        {
          goto LABEL_33;
        }

        v5 |= 8u;
        v16 = (v7 + 1);
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = (v7 + 2);
LABEL_24:
          v28 = v16;
          *(a1 + 37) = v15 != 0;
          goto LABEL_41;
        }

        v24 = google::protobuf::internal::VarintParseSlow64(v7, v15);
        v28 = v24;
        *(a1 + 37) = v25 != 0;
        if (!v24)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_33;
          }

          *(a1 + 16) |= 1u;
          v18 = *(a1 + 24);
          if (!v18)
          {
            v19 = *(a1 + 8);
            if (v19)
            {
              v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
            }

            v18 = MEMORY[0x223DA0290](v19);
            *(a1 + 24) = v18;
            v7 = v28;
          }

          v20 = sub_22170B248(a3, v18, v7);
          goto LABEL_40;
        }

        if (v10 != 2 || v8 != 16)
        {
          goto LABEL_33;
        }

        v5 |= 4u;
        v13 = (v7 + 1);
        v12 = *v7;
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }

        v14 = *v13;
        v12 = (v14 << 7) + v12 - 128;
        if ((v14 & 0x80000000) == 0)
        {
          v13 = (v7 + 2);
LABEL_17:
          v28 = v13;
          *(a1 + 36) = v12 != 0;
          goto LABEL_41;
        }

        v26 = google::protobuf::internal::VarintParseSlow64(v7, v12);
        v28 = v26;
        *(a1 + 36) = v27 != 0;
        if (!v26)
        {
LABEL_50:
          v28 = 0;
          goto LABEL_2;
        }
      }

LABEL_41:
      if (sub_221567030(a3, &v28, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v28 + 2);
LABEL_6:
    v28 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v28;
}

unsigned __int8 *sub_2216D453C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  else if ((v5 & 4) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 36);
  *a2 = 16;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_22;
  }

LABEL_19:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 29;
  *(a2 + 1) = v13;
  a2 += 5;
  if ((v5 & 8) != 0)
  {
LABEL_22:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v14 = *(a1 + 37);
    *a2 = 32;
    a2[1] = v14;
    a2 += 2;
  }

LABEL_25:
  v15 = *(a1 + 8);
  if ((v15 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v15 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216D46E4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) != 0)
  {
    if (v2)
    {
      v5 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 24));
      v3 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    else
    {
      v3 = 0;
    }

    if ((v2 & 2) != 0)
    {
      v3 += 5;
    }

    v4 = v3 + ((v2 >> 2) & 2) + ((v2 >> 1) & 2);
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v4, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v4;
    return v4;
  }
}

uint64_t sub_2216D47A4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAAB8, 0);
  if (v4)
  {

    return sub_2216D484C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216D484C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0290](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D804A0];
      }

      result = TSD::StrokeArchive::MergeFrom(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_20;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 32) = *(a2 + 32);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 37) = *(a2 + 37);
      goto LABEL_9;
    }

LABEL_20:
    *(v3 + 36) = *(a2 + 36);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216D4928(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D4240(result);

    return sub_2216D47A4(v4, a2);
  }

  return result;
}

uint64_t sub_2216D4974(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

void *sub_2216D49DC(void *a1, uint64_t a2)
{
  a1[1] = 0;
  v4 = a1 + 1;
  *a1 = &unk_2834BA548;
  v5 = *(a2 + 16);
  a1[2] = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_22156734C(v4, (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    operator new();
  }

  a1[3] = 0;
  if ((v5 & 2) != 0)
  {
    operator new();
  }

  a1[4] = 0;
  if ((v5 & 4) != 0)
  {
    operator new();
  }

  a1[5] = 0;
  if ((v5 & 8) != 0)
  {
    operator new();
  }

  a1[6] = 0;
  if ((v5 & 0x10) != 0)
  {
    operator new();
  }

  a1[7] = 0;
  if ((v5 & 0x20) != 0)
  {
    operator new();
  }

  a1[8] = 0;
  if ((v5 & 0x40) != 0)
  {
    operator new();
  }

  a1[9] = 0;
  if ((v5 & 0x80) != 0)
  {
    operator new();
  }

  a1[10] = 0;
  if ((v5 & 0x100) != 0)
  {
    operator new();
  }

  a1[11] = 0;
  if ((v5 & 0x200) != 0)
  {
    operator new();
  }

  a1[12] = 0;
  a1[13] = *(a2 + 104);
  return a1;
}

uint64_t *sub_2216D4C88(uint64_t *a1)
{
  sub_2216D4CBC(a1);
  sub_2214DFCF8(a1 + 1);
  return a1;
}

uint64_t *sub_2216D4CBC(uint64_t *result)
{
  if (result != qword_2812E9B30)
  {
    v1 = result;
    if (result[3])
    {
      v2 = MEMORY[0x223D9F940]();
      MEMORY[0x223DA1450](v2, 0x10A1C4042C41316);
    }

    v3 = v1[4];
    if (v3)
    {
      v4 = sub_2216D419C(v3);
      MEMORY[0x223DA1450](v4, 0x10A1C407E413127);
    }

    v5 = v1[5];
    if (v5)
    {
      v6 = sub_2216D419C(v5);
      MEMORY[0x223DA1450](v6, 0x10A1C407E413127);
    }

    v7 = v1[6];
    if (v7)
    {
      v8 = sub_2216D419C(v7);
      MEMORY[0x223DA1450](v8, 0x10A1C407E413127);
    }

    v9 = v1[7];
    if (v9)
    {
      v10 = sub_2216D419C(v9);
      MEMORY[0x223DA1450](v10, 0x10A1C407E413127);
    }

    v11 = v1[8];
    if (v11)
    {
      TSWP::PaddingArchive::~PaddingArchive(v11);
      MEMORY[0x223DA1450]();
    }

    if (v1[9])
    {
      v12 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v12, 0x10A1C4078DB9C03);
    }

    if (v1[10])
    {
      v13 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v13, 0x10A1C4078DB9C03);
    }

    if (v1[11])
    {
      v14 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v14, 0x10A1C4078DB9C03);
    }

    result = v1[12];
    if (result)
    {
      MEMORY[0x223D9F990]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void sub_2216D4E08(uint64_t *a1)
{
  sub_2216D4C88(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D4E48(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if (!v2)
  {
    goto LABEL_11;
  }

  if (v2)
  {
    result = TSD::FillArchive::Clear(*(result + 3));
    if ((v2 & 2) == 0)
    {
LABEL_4:
      if ((v2 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_24;
    }
  }

  else if ((v2 & 2) == 0)
  {
    goto LABEL_4;
  }

  result = sub_2216D4240(*(v1 + 4));
  if ((v2 & 4) == 0)
  {
LABEL_5:
    if ((v2 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  result = sub_2216D4240(*(v1 + 5));
  if ((v2 & 8) == 0)
  {
LABEL_6:
    if ((v2 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  result = sub_2216D4240(*(v1 + 6));
  if ((v2 & 0x10) == 0)
  {
LABEL_7:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_27:
    result = TSWP::PaddingArchive::Clear(*(v1 + 8));
    if ((v2 & 0x40) == 0)
    {
LABEL_9:
      if ((v2 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_26:
  result = sub_2216D4240(*(v1 + 7));
  if ((v2 & 0x20) != 0)
  {
    goto LABEL_27;
  }

LABEL_8:
  if ((v2 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_28:
  result = TSD::StrokeArchive::Clear(*(v1 + 9));
  if ((v2 & 0x80) != 0)
  {
LABEL_10:
    result = TSD::StrokeArchive::Clear(*(v1 + 10));
  }

LABEL_11:
  if ((v2 & 0x300) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      result = TSD::StrokeArchive::Clear(*(v1 + 11));
    }

    if ((v2 & 0x200) != 0)
    {
      result = TSD::StrokeArchive::Clear(*(v1 + 12));
    }
  }

  if ((v2 & 0xC00) != 0)
  {
    *(v1 + 13) = 0;
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return result;
}

google::protobuf::internal *sub_2216D4F4C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v39 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v39, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v39 + 1);
      v8 = *v39;
      if ((*v39 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v39, (v9 - 128));
      v39 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_105;
      }

      v7 = TagFallback;
      v8 = v18;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 > 7)
      {
        if (v8 >> 3 > 0xA)
        {
          if (v10 == 11)
          {
            if (v8 != 90)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 0x80u;
            v13 = *(a1 + 80);
            if (v13)
            {
              goto LABEL_89;
            }

            v26 = *(a1 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x223DA0290](v26);
            *(a1 + 80) = v13;
          }

          else if (v10 == 12)
          {
            if (v8 != 98)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 0x100u;
            v13 = *(a1 + 88);
            if (v13)
            {
              goto LABEL_89;
            }

            v33 = *(a1 + 8);
            if (v33)
            {
              v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x223DA0290](v33);
            *(a1 + 88) = v13;
          }

          else
          {
            if (v10 != 13 || v8 != 106)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 0x200u;
            v13 = *(a1 + 96);
            if (v13)
            {
              goto LABEL_89;
            }

            v16 = *(a1 + 8);
            if (v16)
            {
              v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
            }

            v13 = MEMORY[0x223DA0290](v16);
            *(a1 + 96) = v13;
          }

LABEL_88:
          v7 = v39;
          goto LABEL_89;
        }

        if (v10 != 8)
        {
          if (v10 == 9)
          {
            if (v8 == 74)
            {
              *(a1 + 16) |= 0x20u;
              v30 = *(a1 + 64);
              if (!v30)
              {
                v31 = *(a1 + 8);
                if (v31)
                {
                  v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
                }

                v30 = MEMORY[0x223DA03C0](v31);
                *(a1 + 64) = v30;
                v7 = v39;
              }

              v21 = sub_22170B4B8(a3, v30, v7);
              goto LABEL_90;
            }
          }

          else if (v10 == 10 && v8 == 82)
          {
            *(a1 + 16) |= 0x40u;
            v13 = *(a1 + 72);
            if (!v13)
            {
              v14 = *(a1 + 8);
              if (v14)
              {
                v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
              }

              v13 = MEMORY[0x223DA0290](v14);
              *(a1 + 72) = v13;
              goto LABEL_88;
            }

LABEL_89:
            v21 = sub_22170B248(a3, v13, v7);
LABEL_90:
            v39 = v21;
            if (!v21)
            {
              goto LABEL_105;
            }

            goto LABEL_91;
          }

          goto LABEL_93;
        }

        if (v8 != 64)
        {
          goto LABEL_93;
        }

        v5 |= 0x800u;
        v23 = (v7 + 1);
        LODWORD(v22) = *v7;
        if ((v22 & 0x80) == 0)
        {
          goto LABEL_54;
        }

        v24 = *v23;
        v22 = (v22 + (v24 << 7) - 128);
        if ((v24 & 0x80000000) == 0)
        {
          v23 = (v7 + 2);
LABEL_54:
          v39 = v23;
          *(a1 + 108) = v22;
          goto LABEL_91;
        }

        v35 = google::protobuf::internal::VarintParseSlow64(v7, v22);
        v39 = v35;
        *(a1 + 108) = v36;
        if (!v35)
        {
          goto LABEL_105;
        }
      }

      else
      {
        if (v8 >> 3 > 4)
        {
          if (v10 == 5)
          {
            if (v8 != 42)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 4u;
            v11 = *(a1 + 40);
            if (v11)
            {
              goto LABEL_82;
            }

            v25 = *(a1 + 8);
            if (v25)
            {
              v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_2216E2E04(v25);
            *(a1 + 40) = v11;
          }

          else if (v10 == 6)
          {
            if (v8 != 50)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 8u;
            v11 = *(a1 + 48);
            if (v11)
            {
              goto LABEL_82;
            }

            v32 = *(a1 + 8);
            if (v32)
            {
              v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_2216E2E04(v32);
            *(a1 + 48) = v11;
          }

          else
          {
            if (v10 != 7 || v8 != 58)
            {
              goto LABEL_93;
            }

            *(a1 + 16) |= 0x10u;
            v11 = *(a1 + 56);
            if (v11)
            {
              goto LABEL_82;
            }

            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v11 = sub_2216E2E04(v15);
            *(a1 + 56) = v11;
          }

LABEL_81:
          v7 = v39;
          goto LABEL_82;
        }

        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v19 = *(a1 + 24);
            if (!v19)
            {
              v20 = *(a1 + 8);
              if (v20)
              {
                v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
              }

              v19 = MEMORY[0x223DA0280](v20);
              *(a1 + 24) = v19;
              v7 = v39;
            }

            v21 = sub_22170B318(a3, v19, v7);
            goto LABEL_90;
          }

          goto LABEL_93;
        }

        if (v10 != 3)
        {
          if (v10 == 4 && v8 == 34)
          {
            *(a1 + 16) |= 2u;
            v11 = *(a1 + 32);
            if (!v11)
            {
              v12 = *(a1 + 8);
              if (v12)
              {
                v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
              }

              v11 = sub_2216E2E04(v12);
              *(a1 + 32) = v11;
              goto LABEL_81;
            }

LABEL_82:
            v21 = sub_22170B3E8(a3, v11, v7);
            goto LABEL_90;
          }

LABEL_93:
          if (v8)
          {
            v34 = (v8 & 7) == 4;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            *(a3 + 80) = v8 - 1;
            goto LABEL_2;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v21 = google::protobuf::internal::UnknownFieldParse();
          goto LABEL_90;
        }

        if (v8 != 24)
        {
          goto LABEL_93;
        }

        v5 |= 0x400u;
        v28 = (v7 + 1);
        v27 = *v7;
        if ((v27 & 0x8000000000000000) == 0)
        {
          goto LABEL_69;
        }

        v29 = *v28;
        v27 = (v29 << 7) + v27 - 128;
        if ((v29 & 0x80000000) == 0)
        {
          v28 = (v7 + 2);
LABEL_69:
          v39 = v28;
          *(a1 + 104) = v27 != 0;
          goto LABEL_91;
        }

        v37 = google::protobuf::internal::VarintParseSlow64(v7, v27);
        v39 = v37;
        *(a1 + 104) = v38 != 0;
        if (!v37)
        {
LABEL_105:
          v39 = 0;
          goto LABEL_2;
        }
      }

LABEL_91:
      if (sub_221567030(a3, &v39, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v39 + 2);
LABEL_6:
    v39 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v39;
}

unsigned __int8 *sub_2216D5484(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 11);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::FillArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 0x400) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_27;
    }
  }

  else if ((v5 & 0x400) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 104);
  *a2 = 24;
  a2[1] = v12;
  a2 += 2;
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_37;
  }

LABEL_27:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v13 = *(a1 + 32);
  *a2 = 34;
  v14 = *(v13 + 20);
  if (v14 > 0x7F)
  {
    a2[1] = v14 | 0x80;
    v16 = v14 >> 7;
    if (v14 >> 14)
    {
      v15 = a2 + 3;
      do
      {
        *(v15 - 1) = v16 | 0x80;
        v17 = v16 >> 7;
        ++v15;
        v18 = v16 >> 14;
        v16 >>= 7;
      }

      while (v18);
      *(v15 - 1) = v17;
    }

    else
    {
      a2[2] = v16;
      v15 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v14;
    v15 = a2 + 2;
  }

  a2 = sub_2216D453C(v13, v15, a3);
  if ((v5 & 4) == 0)
  {
LABEL_5:
    if ((v5 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_47;
  }

LABEL_37:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v19 = *(a1 + 40);
  *a2 = 42;
  v20 = *(v19 + 20);
  if (v20 > 0x7F)
  {
    a2[1] = v20 | 0x80;
    v22 = v20 >> 7;
    if (v20 >> 14)
    {
      v21 = a2 + 3;
      do
      {
        *(v21 - 1) = v22 | 0x80;
        v23 = v22 >> 7;
        ++v21;
        v24 = v22 >> 14;
        v22 >>= 7;
      }

      while (v24);
      *(v21 - 1) = v23;
    }

    else
    {
      a2[2] = v22;
      v21 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v20;
    v21 = a2 + 2;
  }

  a2 = sub_2216D453C(v19, v21, a3);
  if ((v5 & 8) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_57;
  }

LABEL_47:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v25 = *(a1 + 48);
  *a2 = 50;
  v26 = *(v25 + 20);
  if (v26 > 0x7F)
  {
    a2[1] = v26 | 0x80;
    v28 = v26 >> 7;
    if (v26 >> 14)
    {
      v27 = a2 + 3;
      do
      {
        *(v27 - 1) = v28 | 0x80;
        v29 = v28 >> 7;
        ++v27;
        v30 = v28 >> 14;
        v28 >>= 7;
      }

      while (v30);
      *(v27 - 1) = v29;
    }

    else
    {
      a2[2] = v28;
      v27 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v26;
    v27 = a2 + 2;
  }

  a2 = sub_2216D453C(v25, v27, a3);
  if ((v5 & 0x10) == 0)
  {
LABEL_7:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_8;
    }

LABEL_67:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v37 = *(a1 + 108);
    *a2 = 64;
    if (v37 > 0x7F)
    {
      a2[1] = v37 | 0x80;
      v38 = v37 >> 7;
      if (v37 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v38 | 0x80;
          v39 = v38 >> 7;
          ++a2;
          v40 = v38 >> 14;
          v38 >>= 7;
        }

        while (v40);
        *(a2 - 1) = v39;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_78;
        }
      }

      else
      {
        a2[2] = v38;
        a2 += 3;
        if ((v5 & 0x20) != 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      a2[1] = v37;
      a2 += 2;
      if ((v5 & 0x20) != 0)
      {
        goto LABEL_78;
      }
    }

LABEL_9:
    if ((v5 & 0x40) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_88;
  }

LABEL_57:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v31 = *(a1 + 56);
  *a2 = 58;
  v32 = *(v31 + 20);
  if (v32 > 0x7F)
  {
    a2[1] = v32 | 0x80;
    v34 = v32 >> 7;
    if (v32 >> 14)
    {
      v33 = a2 + 3;
      do
      {
        *(v33 - 1) = v34 | 0x80;
        v35 = v34 >> 7;
        ++v33;
        v36 = v34 >> 14;
        v34 >>= 7;
      }

      while (v36);
      *(v33 - 1) = v35;
    }

    else
    {
      a2[2] = v34;
      v33 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v32;
    v33 = a2 + 2;
  }

  a2 = sub_2216D453C(v31, v33, a3);
  if ((v5 & 0x800) != 0)
  {
    goto LABEL_67;
  }

LABEL_8:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_9;
  }

LABEL_78:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v41 = *(a1 + 64);
  *a2 = 74;
  v42 = *(v41 + 5);
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v44 = v42 >> 7;
    if (v42 >> 14)
    {
      v43 = a2 + 3;
      do
      {
        *(v43 - 1) = v44 | 0x80;
        v45 = v44 >> 7;
        ++v43;
        v46 = v44 >> 14;
        v44 >>= 7;
      }

      while (v46);
      *(v43 - 1) = v45;
    }

    else
    {
      a2[2] = v44;
      v43 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v42;
    v43 = a2 + 2;
  }

  a2 = TSWP::PaddingArchive::_InternalSerialize(v41, v43, a3);
  if ((v5 & 0x40) == 0)
  {
LABEL_10:
    if ((v5 & 0x80) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_98;
  }

LABEL_88:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v47 = *(a1 + 72);
  *a2 = 82;
  v48 = *(v47 + 5);
  if (v48 > 0x7F)
  {
    a2[1] = v48 | 0x80;
    v50 = v48 >> 7;
    if (v48 >> 14)
    {
      v49 = a2 + 3;
      do
      {
        *(v49 - 1) = v50 | 0x80;
        v51 = v50 >> 7;
        ++v49;
        v52 = v50 >> 14;
        v50 >>= 7;
      }

      while (v52);
      *(v49 - 1) = v51;
    }

    else
    {
      a2[2] = v50;
      v49 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v48;
    v49 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v47, v49, a3);
  if ((v5 & 0x80) == 0)
  {
LABEL_11:
    if ((v5 & 0x100) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_108;
  }

LABEL_98:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v53 = *(a1 + 80);
  *a2 = 90;
  v54 = *(v53 + 5);
  if (v54 > 0x7F)
  {
    a2[1] = v54 | 0x80;
    v56 = v54 >> 7;
    if (v54 >> 14)
    {
      v55 = a2 + 3;
      do
      {
        *(v55 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++v55;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(v55 - 1) = v57;
    }

    else
    {
      a2[2] = v56;
      v55 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v54;
    v55 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v53, v55, a3);
  if ((v5 & 0x100) == 0)
  {
LABEL_12:
    if ((v5 & 0x200) == 0)
    {
      goto LABEL_128;
    }

    goto LABEL_118;
  }

LABEL_108:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v59 = *(a1 + 88);
  *a2 = 98;
  v60 = *(v59 + 5);
  if (v60 > 0x7F)
  {
    a2[1] = v60 | 0x80;
    v62 = v60 >> 7;
    if (v60 >> 14)
    {
      v61 = a2 + 3;
      do
      {
        *(v61 - 1) = v62 | 0x80;
        v63 = v62 >> 7;
        ++v61;
        v64 = v62 >> 14;
        v62 >>= 7;
      }

      while (v64);
      *(v61 - 1) = v63;
    }

    else
    {
      a2[2] = v62;
      v61 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v60;
    v61 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v59, v61, a3);
  if ((v5 & 0x200) != 0)
  {
LABEL_118:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v65 = *(a1 + 96);
    *a2 = 106;
    v66 = *(v65 + 5);
    if (v66 > 0x7F)
    {
      a2[1] = v66 | 0x80;
      v68 = v66 >> 7;
      if (v66 >> 14)
      {
        v67 = a2 + 3;
        do
        {
          *(v67 - 1) = v68 | 0x80;
          v69 = v68 >> 7;
          ++v67;
          v70 = v68 >> 14;
          v68 >>= 7;
        }

        while (v70);
        *(v67 - 1) = v69;
      }

      else
      {
        a2[2] = v68;
        v67 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v66;
      v67 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v65, v67, a3);
  }

LABEL_128:
  v71 = *(a1 + 8);
  if ((v71 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v71 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216D5BA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!*(a1 + 16))
  {
    v3 = 0;
    goto LABEL_15;
  }

  if (v2)
  {
    v4 = TSD::FillArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = sub_2216D46E4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v13 = sub_2216D46E4(*(a1 + 40));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_10:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_29;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_10;
  }

  v14 = sub_2216D46E4(*(a1 + 48));
  v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_11:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  v15 = sub_2216D46E4(*(a1 + 56));
  v3 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_12:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  v16 = TSWP::PaddingArchive::ByteSizeLong(*(a1 + 64));
  v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_13:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_31:
  v17 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 72));
  v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_14:
    v6 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 80));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_15:
  if ((v2 & 0xF00) != 0)
  {
    if ((v2 & 0x100) != 0)
    {
      v7 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 88));
      v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v2 & 0x200) != 0)
    {
      v8 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 96));
      v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += (v2 >> 9) & 2;
    if ((v2 & 0x800) != 0)
    {
      v9 = *(a1 + 108);
      v10 = ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v9 >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 11;
      }

      v3 += v11;
    }
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2216D5E64(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAAD0, 0);
  if (v4)
  {

    return sub_2216D5F0C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216D5F0C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (v5)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = MEMORY[0x223DA0280](v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = MEMORY[0x277D80488];
      }

      result = TSD::FillArchive::MergeFrom(v6, v8);
    }

    if ((v5 & 2) != 0)
    {
      *(v3 + 16) |= 2u;
      v9 = *(v3 + 32);
      if (!v9)
      {
        v10 = *(v3 + 8);
        if (v10)
        {
          v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
        }

        v9 = sub_2216E2E04(v10);
        *(v3 + 32) = v9;
      }

      if (*(a2 + 32))
      {
        v11 = *(a2 + 32);
      }

      else
      {
        v11 = &qword_2812E9B08;
      }

      result = sub_2216D484C(v9, v11);
      if ((v5 & 4) == 0)
      {
LABEL_15:
        if ((v5 & 8) == 0)
        {
          goto LABEL_16;
        }

        goto LABEL_35;
      }
    }

    else if ((v5 & 4) == 0)
    {
      goto LABEL_15;
    }

    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_2216E2E04(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v12, v14);
    if ((v5 & 8) == 0)
    {
LABEL_16:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_43;
    }

LABEL_35:
    *(v3 + 16) |= 8u;
    v15 = *(v3 + 48);
    if (!v15)
    {
      v16 = *(v3 + 8);
      if (v16)
      {
        v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = sub_2216E2E04(v16);
      *(v3 + 48) = v15;
    }

    if (*(a2 + 48))
    {
      v17 = *(a2 + 48);
    }

    else
    {
      v17 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v15, v17);
    if ((v5 & 0x10) == 0)
    {
LABEL_17:
      if ((v5 & 0x20) == 0)
      {
LABEL_59:
        v24 = MEMORY[0x277D804A0];
        if ((v5 & 0x40) != 0)
        {
          *(v3 + 16) |= 0x40u;
          v25 = *(v3 + 72);
          if (!v25)
          {
            v26 = *(v3 + 8);
            if (v26)
            {
              v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
            }

            v25 = MEMORY[0x223DA0290](v26);
            *(v3 + 72) = v25;
          }

          if (*(a2 + 72))
          {
            v27 = *(a2 + 72);
          }

          else
          {
            v27 = v24;
          }

          result = TSD::StrokeArchive::MergeFrom(v25, v27);
        }

        if ((v5 & 0x80) != 0)
        {
          *(v3 + 16) |= 0x80u;
          v28 = *(v3 + 80);
          if (!v28)
          {
            v29 = *(v3 + 8);
            if (v29)
            {
              v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
            }

            v28 = MEMORY[0x223DA0290](v29);
            *(v3 + 80) = v28;
          }

          if (*(a2 + 80))
          {
            v30 = *(a2 + 80);
          }

          else
          {
            v30 = v24;
          }

          result = TSD::StrokeArchive::MergeFrom(v28, v30);
        }

        goto LABEL_77;
      }

LABEL_51:
      *(v3 + 16) |= 0x20u;
      v21 = *(v3 + 64);
      if (!v21)
      {
        v22 = *(v3 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v21 = MEMORY[0x223DA03C0](v22);
        *(v3 + 64) = v21;
      }

      if (*(a2 + 64))
      {
        v23 = *(a2 + 64);
      }

      else
      {
        v23 = MEMORY[0x277D81060];
      }

      result = TSWP::PaddingArchive::MergeFrom(v21, v23);
      goto LABEL_59;
    }

LABEL_43:
    *(v3 + 16) |= 0x10u;
    v18 = *(v3 + 56);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_2216E2E04(v19);
      *(v3 + 56) = v18;
    }

    if (*(a2 + 56))
    {
      v20 = *(a2 + 56);
    }

    else
    {
      v20 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v18, v20);
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_51;
  }

LABEL_77:
  if ((v5 & 0xF00) == 0)
  {
    return result;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v31 = *(v3 + 88);
    if (!v31)
    {
      v32 = *(v3 + 8);
      if (v32)
      {
        v32 = *(v32 & 0xFFFFFFFFFFFFFFFELL);
      }

      v31 = MEMORY[0x223DA0290](v32);
      *(v3 + 88) = v31;
    }

    if (*(a2 + 88))
    {
      v33 = *(a2 + 88);
    }

    else
    {
      v33 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v31, v33);
    if ((v5 & 0x200) == 0)
    {
LABEL_80:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_81;
      }

LABEL_101:
      *(v3 + 104) = *(a2 + 104);
      if ((v5 & 0x800) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_82;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_80;
  }

  *(v3 + 16) |= 0x200u;
  v34 = *(v3 + 96);
  if (!v34)
  {
    v35 = *(v3 + 8);
    if (v35)
    {
      v35 = *(v35 & 0xFFFFFFFFFFFFFFFELL);
    }

    v34 = MEMORY[0x223DA0290](v35);
    *(v3 + 96) = v34;
  }

  if (*(a2 + 96))
  {
    v36 = *(a2 + 96);
  }

  else
  {
    v36 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v34, v36);
  if ((v5 & 0x400) != 0)
  {
    goto LABEL_101;
  }

LABEL_81:
  if ((v5 & 0x800) != 0)
  {
LABEL_82:
    *(v3 + 108) = *(a2 + 108);
  }

LABEL_83:
  *(v3 + 16) |= v5;
  return result;
}

google::protobuf::UnknownFieldSet *sub_2216D6284(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D4E48(result);

    return sub_2216D5E64(v4, a2);
  }

  return result;
}

uint64_t sub_2216D62D0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 4) != 0)
  {
    v5 = *(a1 + 40);
    if (*(v5 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v6 = *(a1 + 48);
    if (*(v6 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v6 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v7 = *(a1 + 56);
    if (*(v7 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v7 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x40) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 72));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 80));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 88));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 96));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2216D6410(uint64_t *a1)
{
  if (a1 != qword_2812E9BA0)
  {
    v2 = a1[3];
    if (v2)
    {
      v3 = sub_2216D419C(v2);
      MEMORY[0x223DA1450](v3, 0x10A1C407E413127);
    }

    v4 = a1[4];
    if (v4)
    {
      v5 = sub_2216D419C(v4);
      MEMORY[0x223DA1450](v5, 0x10A1C407E413127);
    }

    v6 = a1[5];
    if (v6)
    {
      v7 = sub_2216D419C(v6);
      MEMORY[0x223DA1450](v7, 0x10A1C407E413127);
    }
  }

  sub_2214DFCF8(a1 + 1);
  return a1;
}

void sub_2216D64A0(uint64_t *a1)
{
  sub_2216D6410(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D64E0(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = sub_2216D4240(*(result + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = sub_2216D4240(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = sub_2216D4240(*(v1 + 5));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return result;
}

google::protobuf::internal *sub_2216D656C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v12 = *(a1 + 24);
            if (!v12)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = sub_2216E2E04(v17);
              *(a1 + 24) = v12;
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 32);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = sub_2216E2E04(v13);
            *(a1 + 32) = v12;
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = sub_2216E2E04(v18);
            *(a1 + 40) = v12;
LABEL_35:
            v7 = v25;
          }

LABEL_36:
          v19 = sub_22170B3E8(a3, v12, v7);
LABEL_44:
          v25 = v19;
          if (!v19)
          {
            goto LABEL_52;
          }

          goto LABEL_45;
        }

LABEL_37:
        if (v8)
        {
          v20 = (v8 & 7) == 4;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_44;
      }

      if (v10 != 5 || v8 != 40)
      {
        goto LABEL_37;
      }

      v5 |= 8u;
      v15 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v15;
      v14 = (v14 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_24:
        v25 = v15;
        *(a1 + 48) = v14;
        goto LABEL_45;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v7, v14);
      v25 = v23;
      *(a1 + 48) = v24;
      if (!v23)
      {
LABEL_52:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_45:
      if (sub_221567030(a3, &v25, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *sub_2216D67E4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 20);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = sub_2216D453C(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 20);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = sub_2216D453C(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 20);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = sub_2216D453C(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 40;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
    }
  }

LABEL_45:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216D6A9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_2216D46E4(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
    if ((v2 & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_5:
    v5 = sub_2216D46E4(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
    v2 = *(a1 + 16);
  }

LABEL_6:
  if ((v2 & 4) != 0)
  {
    v6 = sub_2216D46E4(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((*(a1 + 16) & 8) == 0)
    {
      return v3;
    }
  }

  else if ((v2 & 8) == 0)
  {
    return v3;
  }

  v7 = *(a1 + 48);
  if (v7 < 0)
  {
    v8 = 11;
  }

  else
  {
    v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

  v3 += v8;
  return v3;
}

uint64_t sub_2216D6BA4(uint64_t a1)
{
  if ((~*(a1 + 16) & 0xF) != 0)
  {
    v11 = sub_2216D6A9C(a1);
  }

  else
  {
    v2 = sub_2216D46E4(*(a1 + 24));
    v3 = (9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6;
    v4 = sub_2216D46E4(*(a1 + 32));
    v5 = (9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6;
    v6 = sub_2216D46E4(*(a1 + 40));
    v7 = (9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6;
    v8 = *(a1 + 48);
    v9 = (9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6;
    if (v8 >= 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 10;
    }

    v11 = v2 + v4 + v6 + v3 + v5 + v7 + v10 + 4;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v11, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v11;
    return v11;
  }
}

uint64_t sub_2216D6CDC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAAE8, 0);
  if (v4)
  {

    return sub_2216D6D84(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216D6D84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v6 = *(v3 + 24);
      if (!v6)
      {
        v7 = *(v3 + 8);
        if (v7)
        {
          v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
        }

        v6 = sub_2216E2E04(v7);
        *(v3 + 24) = v6;
      }

      if (*(a2 + 24))
      {
        v8 = *(a2 + 24);
      }

      else
      {
        v8 = &qword_2812E9B08;
      }

      result = sub_2216D484C(v6, v8);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v9 = *(v3 + 32);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_2216E2E04(v10);
      *(v3 + 32) = v9;
    }

    if (*(a2 + 32))
    {
      v11 = *(a2 + 32);
    }

    else
    {
      v11 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v9, v11);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v12 = *(v3 + 40);
    if (!v12)
    {
      v13 = *(v3 + 8);
      if (v13)
      {
        v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
      }

      v12 = sub_2216E2E04(v13);
      *(v3 + 40) = v12;
    }

    if (*(a2 + 40))
    {
      v14 = *(a2 + 40);
    }

    else
    {
      v14 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v12, v14);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216D6ED0(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D64E0(result);

    return sub_2216D6CDC(v4, a2);
  }

  return result;
}

uint64_t sub_2216D6F1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((~v1 & 0xF) != 0)
  {
    return 0;
  }

  v3 = *(a1 + 24);
  if (*(v3 + 16))
  {
    result = TSD::StrokeArchive::IsInitialized(*(v3 + 24));
    if (!result)
    {
      return result;
    }

    v1 = *(a1 + 16);
  }

  if ((v1 & 2) != 0)
  {
    v5 = *(a1 + 32);
    if (*(v5 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v1 = *(a1 + 16);
    }
  }

  if ((v1 & 4) == 0)
  {
    return 1;
  }

  v6 = *(a1 + 40);
  if ((*(v6 + 16) & 1) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(v6 + 24));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t *sub_2216D6FEC(uint64_t *a1)
{
  if (a1 != qword_2812E9BD8)
  {
    if (a1[3])
    {
      v2 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v2, 0x10A1C4078DB9C03);
    }

    if (a1[4])
    {
      v3 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v3, 0x10A1C4078DB9C03);
    }

    if (a1[5])
    {
      v4 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v4, 0x10A1C4078DB9C03);
    }
  }

  sub_2214DFCF8(a1 + 1);
  return a1;
}

void sub_2216D707C(uint64_t *a1)
{
  sub_2216D6FEC(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D70BC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 7) != 0)
  {
    if (v2)
    {
      result = TSD::StrokeArchive::Clear(*(result + 3));
      if ((v2 & 2) == 0)
      {
LABEL_4:
        if ((v2 & 4) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    else if ((v2 & 2) == 0)
    {
      goto LABEL_4;
    }

    result = TSD::StrokeArchive::Clear(*(v1 + 4));
    if ((v2 & 4) != 0)
    {
LABEL_5:
      result = TSD::StrokeArchive::Clear(*(v1 + 5));
    }
  }

LABEL_6:
  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 10) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return result;
}

google::protobuf::internal *sub_2216D7148(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v25 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v25, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v25 + 1);
      v8 = *v25;
      if ((*v25 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v25, (v9 - 128));
      v25 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_52;
      }

      v7 = TagFallback;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 2)
      {
        if (v10 == 1)
        {
          if (v8 == 10)
          {
            *(a1 + 16) |= 1u;
            v12 = *(a1 + 24);
            if (!v12)
            {
              v17 = *(a1 + 8);
              if (v17)
              {
                v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
              }

              v12 = MEMORY[0x223DA0290](v17);
              *(a1 + 24) = v12;
              goto LABEL_35;
            }

            goto LABEL_36;
          }
        }

        else if (v10 == 2 && v8 == 18)
        {
          *(a1 + 16) |= 2u;
          v12 = *(a1 + 32);
          if (!v12)
          {
            v13 = *(a1 + 8);
            if (v13)
            {
              v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x223DA0290](v13);
            *(a1 + 32) = v12;
            goto LABEL_35;
          }

          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v10 == 3)
      {
        if (v8 == 26)
        {
          *(a1 + 16) |= 4u;
          v12 = *(a1 + 40);
          if (!v12)
          {
            v18 = *(a1 + 8);
            if (v18)
            {
              v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
            }

            v12 = MEMORY[0x223DA0290](v18);
            *(a1 + 40) = v12;
LABEL_35:
            v7 = v25;
          }

LABEL_36:
          v19 = sub_22170B248(a3, v12, v7);
LABEL_44:
          v25 = v19;
          if (!v19)
          {
            goto LABEL_52;
          }

          goto LABEL_45;
        }

LABEL_37:
        if (v8)
        {
          v20 = (v8 & 7) == 4;
        }

        else
        {
          v20 = 1;
        }

        if (v20)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v19 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_44;
      }

      if (v10 != 4 || v8 != 32)
      {
        goto LABEL_37;
      }

      v5 |= 8u;
      v15 = (v7 + 1);
      LODWORD(v14) = *v7;
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_24;
      }

      v16 = *v15;
      v14 = (v14 + (v16 << 7) - 128);
      if ((v16 & 0x80000000) == 0)
      {
        v15 = (v7 + 2);
LABEL_24:
        v25 = v15;
        *(a1 + 48) = v14;
        goto LABEL_45;
      }

      v23 = google::protobuf::internal::VarintParseSlow64(v7, v14);
      v25 = v23;
      *(a1 + 48) = v24;
      if (!v23)
      {
LABEL_52:
        v25 = 0;
        goto LABEL_2;
      }

LABEL_45:
      if (sub_221567030(a3, &v25, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v25 + 2);
LABEL_6:
    v25 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v25;
}

unsigned __int8 *sub_2216D73C0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 24);
    *a2 = 10;
    v7 = *(v6 + 5);
    if (v7 > 0x7F)
    {
      a2[1] = v7 | 0x80;
      v9 = v7 >> 7;
      if (v7 >> 14)
      {
        v8 = a2 + 3;
        do
        {
          *(v8 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v8;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v8 - 1) = v10;
      }

      else
      {
        a2[2] = v9;
        v8 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v7;
      v8 = a2 + 2;
    }

    a2 = TSD::StrokeArchive::_InternalSerialize(v6, v8, a3);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_26;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v12 = *(a1 + 32);
  *a2 = 18;
  v13 = *(v12 + 5);
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = a2 + 3;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      a2[2] = v15;
      v14 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v13;
    v14 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v12, v14, a3);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_36;
  }

LABEL_26:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v18 = *(a1 + 40);
  *a2 = 26;
  v19 = *(v18 + 5);
  if (v19 > 0x7F)
  {
    a2[1] = v19 | 0x80;
    v21 = v19 >> 7;
    if (v19 >> 14)
    {
      v20 = a2 + 3;
      do
      {
        *(v20 - 1) = v21 | 0x80;
        v22 = v21 >> 7;
        ++v20;
        v23 = v21 >> 14;
        v21 >>= 7;
      }

      while (v23);
      *(v20 - 1) = v22;
    }

    else
    {
      a2[2] = v21;
      v20 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v19;
    v20 = a2 + 2;
  }

  a2 = TSD::StrokeArchive::_InternalSerialize(v18, v20, a3);
  if ((v5 & 8) != 0)
  {
LABEL_36:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v24 = *(a1 + 48);
    *a2 = 32;
    if (v24 > 0x7F)
    {
      a2[1] = v24 | 0x80;
      v25 = v24 >> 7;
      if (v24 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v25 | 0x80;
          v26 = v25 >> 7;
          ++a2;
          v27 = v25 >> 14;
          v25 >>= 7;
        }

        while (v27);
        *(a2 - 1) = v26;
      }

      else
      {
        a2[2] = v25;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v24;
      a2 += 2;
    }
  }

LABEL_45:
  v28 = *(a1 + 8);
  if ((v28 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v28 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216D7678(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 0xF) == 0)
  {
    v3 = 0;
    goto LABEL_16;
  }

  if (v2)
  {
    v4 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 40));
    v3 += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
      goto LABEL_16;
    }

LABEL_12:
    v7 = *(a1 + 48);
    if (v7 < 0)
    {
      v8 = 11;
    }

    else
    {
      v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v8;
    goto LABEL_16;
  }

  if ((v2 & 8) != 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2216D77C4(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB00, 0);
  if (v4)
  {

    return sub_2216D786C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216D786C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 0xF) != 0)
  {
    v6 = MEMORY[0x277D804A0];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0290](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSD::StrokeArchive::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_27;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0290](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = v6;
    }

    result = TSD::StrokeArchive::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
LABEL_7:
      if ((v5 & 8) == 0)
      {
LABEL_9:
        *(v3 + 16) |= v5;
        return result;
      }

LABEL_8:
      *(v3 + 48) = *(a2 + 48);
      goto LABEL_9;
    }

LABEL_27:
    *(v3 + 16) |= 4u;
    v13 = *(v3 + 40);
    if (!v13)
    {
      v14 = *(v3 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v13 = MEMORY[0x223DA0290](v14);
      *(v3 + 40) = v13;
    }

    if (*(a2 + 40))
    {
      v15 = *(a2 + 40);
    }

    else
    {
      v15 = v6;
    }

    result = TSD::StrokeArchive::MergeFrom(v13, v15);
    if ((v5 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216D79B8(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D70BC(result);

    return sub_2216D77C4(v4, a2);
  }

  return result;
}

uint64_t sub_2216D7A04(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 32));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  result = TSD::StrokeArchive::IsInitialized(*(a1 + 40));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2216D7A9C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834BA758;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 48) = a2;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812E4550, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 72) = 0;
  return a1;
}

void sub_2216D7B24(_Unwind_Exception *a1)
{
  sub_2216E35A4(v2);
  sub_2216E3520(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2216D7B48(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *a1 = &unk_2834BA758;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 44) = 0;
  *(a1 + 28) = 0;
  *(a1 + 36) = 0;
  *(a1 + 20) = 0;
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 24));
    sub_2216E3628((a1 + 24), v7, (v6 + 8), v5, **(a1 + 40) - *(a1 + 32));
    v8 = *(a1 + 32) + v5;
    *(a1 + 32) = v8;
    v9 = *(a1 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((a1 + 48));
    sub_2216E36E8((a1 + 48), v12, (v11 + 8), v10, **(a1 + 64) - *(a1 + 56));
    v13 = *(a1 + 56) + v10;
    *(a1 + 56) = v13;
    v14 = *(a1 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  v15 = *(a2 + 8);
  if (v15)
  {
    sub_22156734C(v4, (v15 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(a1 + 72) = *(a2 + 72);
  return a1;
}

void sub_2216D7CA0(_Unwind_Exception *a1)
{
  sub_2216E35A4(v2);
  sub_2216E3520((v1 + 24));
  _Unwind_Resume(a1);
}

uint64_t *sub_2216D7CD0(uint64_t *a1)
{
  sub_2214DFCF8(a1 + 1);
  sub_2216E35A4(a1 + 6);
  sub_2216E3520(a1 + 3);
  return a1;
}

void sub_2216D7D1C(uint64_t *a1)
{
  sub_2216D7CD0(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D7D5C(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = (*(result + 5) + 8);
    do
    {
      v4 = *v3++;
      result = sub_2216D64E0(v4);
      --v2;
    }

    while (v2);
    *(v1 + 8) = 0;
  }

  v5 = *(v1 + 14);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 8) + 8);
    do
    {
      v7 = *v6++;
      result = sub_2216D70BC(v7);
      --v5;
    }

    while (v5);
    *(v1 + 14) = 0;
  }

  v9 = *(v1 + 8);
  v8 = v1 + 8;
  *(v8 + 16) = 0;
  *(v8 + 2) = 0;
  if (v9)
  {

    return sub_221567398(v8);
  }

  return result;
}

google::protobuf::internal *sub_2216D7E08(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v36 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v36, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v36 + 1);
      v8 = *v36;
      if ((*v36 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v36, (v9 - 128));
      v36 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_58;
      }

      v7 = TagFallback;
      v8 = v33;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        v21 = (v7 - 1);
        while (2)
        {
          v22 = (v21 + 1);
          v36 = (v21 + 1);
          v23 = *(a1 + 64);
          if (!v23)
          {
LABEL_37:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 48));
            v23 = *(a1 + 64);
            v24 = *v23;
            goto LABEL_38;
          }

          v28 = *(a1 + 56);
          v24 = *v23;
          if (v28 >= *v23)
          {
            if (v24 == *(a1 + 60))
            {
              goto LABEL_37;
            }

LABEL_38:
            *v23 = v24 + 1;
            v25 = sub_2216E308C(*(a1 + 48));
            v26 = *(a1 + 56);
            v27 = *(a1 + 64) + 8 * v26;
            *(a1 + 56) = v26 + 1;
            *(v27 + 8) = v25;
            v22 = v36;
          }

          else
          {
            *(a1 + 56) = v28 + 1;
            v25 = *&v23[2 * v28 + 2];
          }

          v21 = sub_22170B658(a3, v25, v22);
          v36 = v21;
          if (!v21)
          {
            goto LABEL_58;
          }

          if (*a3 <= v21 || *v21 != 26)
          {
            goto LABEL_51;
          }

          continue;
        }
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          v13 = (v7 - 1);
          while (1)
          {
            v14 = (v13 + 1);
            v36 = (v13 + 1);
            v15 = *(a1 + 40);
            if (!v15)
            {
              goto LABEL_24;
            }

            v20 = *(a1 + 32);
            v16 = *v15;
            if (v20 < *v15)
            {
              *(a1 + 32) = v20 + 1;
              v17 = *&v15[2 * v20 + 2];
              goto LABEL_28;
            }

            if (v16 == *(a1 + 36))
            {
LABEL_24:
              google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 24));
              v15 = *(a1 + 40);
              v16 = *v15;
            }

            *v15 = v16 + 1;
            v17 = sub_2216E2FB8(*(a1 + 24));
            v18 = *(a1 + 32);
            v19 = *(a1 + 40) + 8 * v18;
            *(a1 + 32) = v18 + 1;
            *(v19 + 8) = v17;
            v14 = v36;
LABEL_28:
            v13 = sub_22170B588(a3, v17, v14);
            v36 = v13;
            if (!v13)
            {
              goto LABEL_58;
            }

            if (*a3 <= v13 || *v13 != 18)
            {
              goto LABEL_51;
            }
          }
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v36 = google::protobuf::internal::UnknownFieldParse();
        if (!v36)
        {
LABEL_58:
          v36 = 0;
          goto LABEL_2;
        }

        goto LABEL_51;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v30 = (v7 + 1);
      LODWORD(v29) = *v7;
      if ((v29 & 0x80) == 0)
      {
        goto LABEL_50;
      }

      v31 = *v30;
      v29 = (v29 + (v31 << 7) - 128);
      if ((v31 & 0x80000000) == 0)
      {
        v30 = (v7 + 2);
LABEL_50:
        v36 = v30;
        *(a1 + 72) = v29;
        v5 = 1;
        goto LABEL_51;
      }

      v34 = google::protobuf::internal::VarintParseSlow64(v7, v29);
      v36 = v34;
      *(a1 + 72) = v35;
      v5 = 1;
      if (!v34)
      {
        goto LABEL_58;
      }

LABEL_51:
      if (sub_221567030(a3, &v36, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v36 + 2);
LABEL_6:
    v36 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v36;
}

unsigned __int8 *sub_2216D812C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  if (*(a1 + 16))
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v5 = *(a1 + 72);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v11 = *(*(a1 + 40) + 8 * i + 8);
      *a2 = 18;
      v12 = *(v11 + 20);
      if (v12 > 0x7F)
      {
        a2[1] = v12 | 0x80;
        v14 = v12 >> 7;
        if (v12 >> 14)
        {
          v13 = a2 + 3;
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v15 = v14 >> 7;
            ++v13;
            v16 = v14 >> 14;
            v14 >>= 7;
          }

          while (v16);
          *(v13 - 1) = v15;
        }

        else
        {
          a2[2] = v14;
          v13 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v12;
        v13 = a2 + 2;
      }

      a2 = sub_2216D67E4(v11, v13, a3);
    }
  }

  v17 = *(a1 + 56);
  if (v17)
  {
    for (j = 0; j != v17; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v19 = *(*(a1 + 64) + 8 * j + 8);
      *a2 = 26;
      v20 = *(v19 + 20);
      if (v20 > 0x7F)
      {
        a2[1] = v20 | 0x80;
        v22 = v20 >> 7;
        if (v20 >> 14)
        {
          v21 = a2 + 3;
          do
          {
            *(v21 - 1) = v22 | 0x80;
            v23 = v22 >> 7;
            ++v21;
            v24 = v22 >> 14;
            v22 >>= 7;
          }

          while (v24);
          *(v21 - 1) = v23;
        }

        else
        {
          a2[2] = v22;
          v21 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v20;
        v21 = a2 + 2;
      }

      a2 = sub_2216D73C0(v19, v21, a3);
    }
  }

  v25 = *(a1 + 8);
  if ((v25 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v25 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216D838C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = *(a1 + 72);
    if (v3 < 0)
    {
      v2 = 11;
    }

    else
    {
      v2 = ((9 * (__clz(v3 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v2 = 0;
  }

  v4 = *(a1 + 32);
  v5 = v2 + v4;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  if (v4)
  {
    v8 = 8 * v4;
    do
    {
      v9 = *v7++;
      v10 = sub_2216D6BA4(v9);
      v5 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
      v8 -= 8;
    }

    while (v8);
  }

  v11 = *(a1 + 56);
  v12 = v5 + v11;
  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = (v13 + 8);
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 8 * v11;
    do
    {
      v16 = *v14++;
      v17 = sub_2216D7678(v16);
      v12 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      v15 -= 8;
    }

    while (v15);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v12, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v12;
    return v12;
  }
}

uint64_t sub_2216D84CC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB18, 0);
  if (v4)
  {

    return sub_2216D8574(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216D8574(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = *(a2 + 40);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 24));
    result = sub_2216E3628((v3 + 24), v7, (v6 + 8), v5, **(v3 + 40) - *(v3 + 32));
    v8 = *(v3 + 32) + v5;
    *(v3 + 32) = v8;
    v9 = *(v3 + 40);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 56);
  if (v10)
  {
    v11 = *(a2 + 64);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 48));
    result = sub_2216E36E8((v3 + 48), v12, (v11 + 8), v10, **(v3 + 64) - *(v3 + 56));
    v13 = *(v3 + 56) + v10;
    *(v3 + 56) = v13;
    v14 = *(v3 + 64);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  if (*(a2 + 16))
  {
    v15 = *(a2 + 72);
    *(v3 + 16) |= 1u;
    *(v3 + 72) = v15;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216D868C(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D7D5C(result);

    return sub_2216D84CC(v4, a2);
  }

  return result;
}

BOOL sub_2216D86D8(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    v4 = sub_2216D6F1C(*(*(a1 + 40) + 8 * v2));
    v2 = v3;
    if ((v4 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 56);
  do
  {
    v5 = v7 < 1;
    if (v7 < 1)
    {
      break;
    }

    v8 = v7 - 1;
    v9 = sub_2216D7A04(*(*(a1 + 64) + 8 * v7));
    v7 = v8;
  }

  while ((v9 & 1) != 0);
  return v5;
}

uint64_t sub_2216D8798(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834BA808;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (atomic_load_explicit(dword_2812E45B0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 32) = MEMORY[0x277D80A90];
  bzero((a1 + 40), 0x219uLL);
  *(a1 + 580) = -1;
  return a1;
}

uint64_t sub_2216D881C(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_2834BA808;
  v4 = (a2 + 16);
  v5 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;
  v6 = *(a2 + 8);
  if (v6)
  {
    sub_22156734C((a1 + 8), (v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  *(a1 + 32) = MEMORY[0x277D80A90];
  v7 = *v4;
  if (*v4)
  {
    google::protobuf::internal::ArenaStringPtr::Set();
    v7 = *v4;
  }

  if ((v7 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 40) = 0;
  if ((v7 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 48) = 0;
  if ((v7 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 56) = 0;
  if ((v7 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 64) = 0;
  if ((v7 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 72) = 0;
  if ((v7 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 80) = 0;
  if ((v7 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 88) = 0;
  if ((v7 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 96) = 0;
  if ((v7 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 104) = 0;
  if ((v7 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 112) = 0;
  if ((v7 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 120) = 0;
  if ((v7 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 128) = 0;
  if ((v7 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 136) = 0;
  if ((v7 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 144) = 0;
  if ((v7 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 152) = 0;
  if ((v7 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 160) = 0;
  if ((v7 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 168) = 0;
  if ((v7 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 176) = 0;
  if ((v7 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 184) = 0;
  if ((v7 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 192) = 0;
  if ((v7 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 200) = 0;
  if ((v7 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 208) = 0;
  if ((v7 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 216) = 0;
  if ((v7 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 224) = 0;
  if ((v7 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 232) = 0;
  if ((v7 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 240) = 0;
  if ((v7 & 0x8000000) != 0)
  {
    operator new();
  }

  *(a1 + 248) = 0;
  if ((v7 & 0x10000000) != 0)
  {
    operator new();
  }

  *(a1 + 256) = 0;
  if ((v7 & 0x20000000) != 0)
  {
    operator new();
  }

  *(a1 + 264) = 0;
  if ((v7 & 0x40000000) != 0)
  {
    operator new();
  }

  *(a1 + 272) = 0;
  if (v7 < 0)
  {
    operator new();
  }

  *(a1 + 280) = 0;
  v8 = *(a2 + 20);
  if (v8)
  {
    operator new();
  }

  *(a1 + 288) = 0;
  if ((v8 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 296) = 0;
  if ((v8 & 4) != 0)
  {
    operator new();
  }

  *(a1 + 304) = 0;
  if ((v8 & 8) != 0)
  {
    operator new();
  }

  *(a1 + 312) = 0;
  if ((v8 & 0x10) != 0)
  {
    operator new();
  }

  *(a1 + 320) = 0;
  if ((v8 & 0x20) != 0)
  {
    operator new();
  }

  *(a1 + 328) = 0;
  if ((v8 & 0x40) != 0)
  {
    operator new();
  }

  *(a1 + 336) = 0;
  if ((v8 & 0x80) != 0)
  {
    operator new();
  }

  *(a1 + 344) = 0;
  if ((v8 & 0x100) != 0)
  {
    operator new();
  }

  *(a1 + 352) = 0;
  if ((v8 & 0x200) != 0)
  {
    operator new();
  }

  *(a1 + 360) = 0;
  if ((v8 & 0x400) != 0)
  {
    operator new();
  }

  *(a1 + 368) = 0;
  if ((v8 & 0x800) != 0)
  {
    operator new();
  }

  *(a1 + 376) = 0;
  if ((v8 & 0x1000) != 0)
  {
    operator new();
  }

  *(a1 + 384) = 0;
  if ((v8 & 0x2000) != 0)
  {
    operator new();
  }

  *(a1 + 392) = 0;
  if ((v8 & 0x4000) != 0)
  {
    operator new();
  }

  *(a1 + 400) = 0;
  if ((v8 & 0x8000) != 0)
  {
    operator new();
  }

  *(a1 + 408) = 0;
  if ((v8 & 0x10000) != 0)
  {
    operator new();
  }

  *(a1 + 416) = 0;
  if ((v8 & 0x20000) != 0)
  {
    operator new();
  }

  *(a1 + 424) = 0;
  if ((v8 & 0x40000) != 0)
  {
    operator new();
  }

  *(a1 + 432) = 0;
  if ((v8 & 0x80000) != 0)
  {
    operator new();
  }

  *(a1 + 440) = 0;
  if ((v8 & 0x100000) != 0)
  {
    operator new();
  }

  *(a1 + 448) = 0;
  if ((v8 & 0x200000) != 0)
  {
    operator new();
  }

  *(a1 + 456) = 0;
  if ((v8 & 0x400000) != 0)
  {
    operator new();
  }

  *(a1 + 464) = 0;
  if ((v8 & 0x800000) != 0)
  {
    operator new();
  }

  *(a1 + 472) = 0;
  if ((v8 & 0x1000000) != 0)
  {
    operator new();
  }

  *(a1 + 480) = 0;
  if ((v8 & 0x2000000) != 0)
  {
    operator new();
  }

  *(a1 + 488) = 0;
  if ((v8 & 0x4000000) != 0)
  {
    operator new();
  }

  *(a1 + 496) = 0;
  if ((v8 & 0x8000000) != 0)
  {
    operator new();
  }

  *(a1 + 504) = 0;
  if ((v8 & 0x10000000) != 0)
  {
    operator new();
  }

  *(a1 + 512) = 0;
  if ((v8 & 0x20000000) != 0)
  {
    operator new();
  }

  *(a1 + 520) = 0;
  if ((v8 & 0x40000000) != 0)
  {
    operator new();
  }

  *(a1 + 528) = 0;
  if (v8 < 0)
  {
    operator new();
  }

  *(a1 + 536) = 0;
  v9 = *(a2 + 24);
  if (v9)
  {
    operator new();
  }

  *(a1 + 544) = 0;
  if ((v9 & 2) != 0)
  {
    operator new();
  }

  *(a1 + 552) = 0;
  v10 = *(a2 + 560);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 560) = v10;
  return a1;
}

uint64_t sub_2216D9574(uint64_t a1)
{
  sub_2216D95A8(a1);
  sub_2214DFCF8((a1 + 8));
  return a1;
}

uint64_t sub_2216D95A8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2 != MEMORY[0x277D80A90])
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    result = MEMORY[0x223DA1450](v2, 0x1012C40EC159624);
  }

  if (v1 != &unk_2812E9C60)
  {
    if (*(v1 + 40))
    {
      v3 = MEMORY[0x223D9F940]();
      MEMORY[0x223DA1450](v3, 0x10A1C4042C41316);
    }

    v4 = *(v1 + 48);
    if (v4)
    {
      v5 = sub_2216D419C(v4);
      MEMORY[0x223DA1450](v5, 0x10A1C407E413127);
    }

    v6 = *(v1 + 56);
    if (v6)
    {
      v7 = sub_2216D419C(v6);
      MEMORY[0x223DA1450](v7, 0x10A1C407E413127);
    }

    v8 = *(v1 + 64);
    if (v8)
    {
      v9 = sub_2216D419C(v8);
      MEMORY[0x223DA1450](v9, 0x10A1C407E413127);
    }

    v10 = *(v1 + 72);
    if (v10)
    {
      v11 = sub_2216D419C(v10);
      MEMORY[0x223DA1450](v11, 0x10A1C407E413127);
    }

    v12 = *(v1 + 80);
    if (v12)
    {
      v13 = sub_2216D419C(v12);
      MEMORY[0x223DA1450](v13, 0x10A1C407E413127);
    }

    v14 = *(v1 + 88);
    if (v14)
    {
      v15 = sub_2216D419C(v14);
      MEMORY[0x223DA1450](v15, 0x10A1C407E413127);
    }

    v16 = *(v1 + 96);
    if (v16)
    {
      v17 = sub_2216D419C(v16);
      MEMORY[0x223DA1450](v17, 0x10A1C407E413127);
    }

    v18 = *(v1 + 104);
    if (v18)
    {
      v19 = sub_2216D419C(v18);
      MEMORY[0x223DA1450](v19, 0x10A1C407E413127);
    }

    v20 = *(v1 + 112);
    if (v20)
    {
      v21 = sub_2216D419C(v20);
      MEMORY[0x223DA1450](v21, 0x10A1C407E413127);
    }

    v22 = *(v1 + 120);
    if (v22)
    {
      v23 = sub_2216D419C(v22);
      MEMORY[0x223DA1450](v23, 0x10A1C407E413127);
    }

    v24 = *(v1 + 128);
    if (v24)
    {
      v25 = sub_2216D419C(v24);
      MEMORY[0x223DA1450](v25, 0x10A1C407E413127);
    }

    v26 = *(v1 + 136);
    if (v26)
    {
      v27 = sub_2216D419C(v26);
      MEMORY[0x223DA1450](v27, 0x10A1C407E413127);
    }

    v28 = *(v1 + 144);
    if (v28)
    {
      v29 = sub_2216D419C(v28);
      MEMORY[0x223DA1450](v29, 0x10A1C407E413127);
    }

    v30 = *(v1 + 152);
    if (v30)
    {
      v31 = sub_2216D419C(v30);
      MEMORY[0x223DA1450](v31, 0x10A1C407E413127);
    }

    v32 = *(v1 + 160);
    if (v32)
    {
      v33 = sub_2216D419C(v32);
      MEMORY[0x223DA1450](v33, 0x10A1C407E413127);
    }

    v34 = *(v1 + 168);
    if (v34)
    {
      v35 = sub_2216D419C(v34);
      MEMORY[0x223DA1450](v35, 0x10A1C407E413127);
    }

    v36 = *(v1 + 176);
    if (v36)
    {
      v37 = sub_2216D7CD0(v36);
      MEMORY[0x223DA1450](v37, 0x10A1C40BDEB63D4);
    }

    if (*(v1 + 184))
    {
      v38 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v38, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 192))
    {
      v39 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v39, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 200))
    {
      v40 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v40, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 208))
    {
      v41 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v41, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 216))
    {
      v42 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v42, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 224))
    {
      v43 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v43, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 232))
    {
      v44 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v44, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 240))
    {
      v45 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v45, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 248))
    {
      v46 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v46, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 256))
    {
      v47 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v47, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 264))
    {
      v48 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v48, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 272))
    {
      v49 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v49, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 280))
    {
      v50 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v50, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 288))
    {
      v51 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v51, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 296))
    {
      v52 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v52, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 304))
    {
      v53 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v53, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 312))
    {
      v54 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v54, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 320))
    {
      v55 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v55, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 328))
    {
      v56 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v56, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 336))
    {
      v57 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v57, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 344))
    {
      v58 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v58, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 352))
    {
      v59 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v59, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 360))
    {
      v60 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v60, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 368))
    {
      v61 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v61, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 376))
    {
      v62 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v62, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 384))
    {
      v63 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v63, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 392))
    {
      v64 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v64, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 400))
    {
      v65 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v65, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 408))
    {
      v66 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v66, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 416))
    {
      v67 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v67, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 424))
    {
      v68 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v68, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 432))
    {
      v69 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v69, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 440))
    {
      v70 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v70, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 448))
    {
      v71 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v71, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 456))
    {
      v72 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v72, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 464))
    {
      v73 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v73, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 472))
    {
      v74 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v74, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 480))
    {
      v75 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v75, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 488))
    {
      v76 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v76, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 496))
    {
      v77 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v77, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 504))
    {
      v78 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v78, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 512))
    {
      v79 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v79, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 520))
    {
      v80 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v80, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 528))
    {
      v81 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v81, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 536))
    {
      v82 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v82, 0x10A1C4078DB9C03);
    }

    if (*(v1 + 544))
    {
      v83 = MEMORY[0x223D9F990]();
      MEMORY[0x223DA1450](v83, 0x10A1C4078DB9C03);
    }

    result = *(v1 + 552);
    if (result)
    {
      MEMORY[0x223D9F990]();

      JUMPOUT(0x223DA1450);
    }
  }

  return result;
}

void sub_2216D9B7C(uint64_t a1)
{
  sub_2216D9574(a1);

  JUMPOUT(0x223DA1450);
}

google::protobuf::UnknownFieldSet *sub_2216D9BBC(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = result + 16;
  v3 = *(result + 4);
  if (!v3)
  {
    goto LABEL_11;
  }

  if (v3)
  {
    v8 = *(result + 4) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 23) < 0)
    {
      **v8 = 0;
      *(v8 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_152;
      }
    }

    else
    {
      *v8 = 0;
      *(v8 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_152;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_153;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_152:
  result = TSD::FillArchive::Clear(*(result + 5));
  if ((v3 & 4) == 0)
  {
LABEL_5:
    if ((v3 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_154;
  }

LABEL_153:
  result = sub_2216D4240(*(v1 + 6));
  if ((v3 & 8) == 0)
  {
LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_155;
  }

LABEL_154:
  result = sub_2216D4240(*(v1 + 7));
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

LABEL_156:
    result = sub_2216D4240(*(v1 + 9));
    if ((v3 & 0x40) == 0)
    {
LABEL_9:
      if ((v3 & 0x80) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }

    goto LABEL_157;
  }

LABEL_155:
  result = sub_2216D4240(*(v1 + 8));
  if ((v3 & 0x20) != 0)
  {
    goto LABEL_156;
  }

LABEL_8:
  if ((v3 & 0x40) == 0)
  {
    goto LABEL_9;
  }

LABEL_157:
  result = sub_2216D4240(*(v1 + 10));
  if ((v3 & 0x80) != 0)
  {
LABEL_10:
    result = sub_2216D4240(*(v1 + 11));
  }

LABEL_11:
  if ((v3 & 0xFF00) == 0)
  {
    goto LABEL_21;
  }

  if ((v3 & 0x100) != 0)
  {
    result = sub_2216D4240(*(v1 + 12));
    if ((v3 & 0x200) == 0)
    {
LABEL_14:
      if ((v3 & 0x400) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_97;
    }
  }

  else if ((v3 & 0x200) == 0)
  {
    goto LABEL_14;
  }

  result = sub_2216D4240(*(v1 + 13));
  if ((v3 & 0x400) == 0)
  {
LABEL_15:
    if ((v3 & 0x800) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_98;
  }

LABEL_97:
  result = sub_2216D4240(*(v1 + 14));
  if ((v3 & 0x800) == 0)
  {
LABEL_16:
    if ((v3 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_99;
  }

LABEL_98:
  result = sub_2216D4240(*(v1 + 15));
  if ((v3 & 0x1000) == 0)
  {
LABEL_17:
    if ((v3 & 0x2000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_100;
  }

LABEL_99:
  result = sub_2216D4240(*(v1 + 16));
  if ((v3 & 0x2000) == 0)
  {
LABEL_18:
    if ((v3 & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_101;
  }

LABEL_100:
  result = sub_2216D4240(*(v1 + 17));
  if ((v3 & 0x4000) == 0)
  {
LABEL_19:
    if ((v3 & 0x8000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_101:
  result = sub_2216D4240(*(v1 + 18));
  if ((v3 & 0x8000) != 0)
  {
LABEL_20:
    result = sub_2216D4240(*(v1 + 19));
  }

LABEL_21:
  if ((v3 & 0xFF0000) == 0)
  {
    goto LABEL_31;
  }

  if ((v3 & 0x10000) != 0)
  {
    result = sub_2216D4240(*(v1 + 20));
    if ((v3 & 0x20000) == 0)
    {
LABEL_24:
      if ((v3 & 0x40000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_105;
    }
  }

  else if ((v3 & 0x20000) == 0)
  {
    goto LABEL_24;
  }

  result = sub_2216D4240(*(v1 + 21));
  if ((v3 & 0x40000) == 0)
  {
LABEL_25:
    if ((v3 & 0x80000) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_106;
  }

LABEL_105:
  result = sub_2216D7D5C(*(v1 + 22));
  if ((v3 & 0x80000) == 0)
  {
LABEL_26:
    if ((v3 & 0x100000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_107;
  }

LABEL_106:
  result = TSD::StrokeArchive::Clear(*(v1 + 23));
  if ((v3 & 0x100000) == 0)
  {
LABEL_27:
    if ((v3 & 0x200000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_108;
  }

LABEL_107:
  result = TSD::StrokeArchive::Clear(*(v1 + 24));
  if ((v3 & 0x200000) == 0)
  {
LABEL_28:
    if ((v3 & 0x400000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_109;
  }

LABEL_108:
  result = TSD::StrokeArchive::Clear(*(v1 + 25));
  if ((v3 & 0x400000) == 0)
  {
LABEL_29:
    if ((v3 & 0x800000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_109:
  result = TSD::StrokeArchive::Clear(*(v1 + 26));
  if ((v3 & 0x800000) != 0)
  {
LABEL_30:
    result = TSD::StrokeArchive::Clear(*(v1 + 27));
  }

LABEL_31:
  if (!HIBYTE(v3))
  {
    goto LABEL_40;
  }

  if ((v3 & 0x1000000) != 0)
  {
    result = TSD::StrokeArchive::Clear(*(v1 + 28));
    if ((v3 & 0x2000000) == 0)
    {
LABEL_34:
      if ((v3 & 0x4000000) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_137;
    }
  }

  else if ((v3 & 0x2000000) == 0)
  {
    goto LABEL_34;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 29));
  if ((v3 & 0x4000000) == 0)
  {
LABEL_35:
    if ((v3 & 0x8000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_138;
  }

LABEL_137:
  result = TSD::StrokeArchive::Clear(*(v1 + 30));
  if ((v3 & 0x8000000) == 0)
  {
LABEL_36:
    if ((v3 & 0x10000000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_139;
  }

LABEL_138:
  result = TSD::StrokeArchive::Clear(*(v1 + 31));
  if ((v3 & 0x10000000) == 0)
  {
LABEL_37:
    if ((v3 & 0x20000000) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_140;
  }

LABEL_139:
  result = TSD::StrokeArchive::Clear(*(v1 + 32));
  if ((v3 & 0x20000000) == 0)
  {
LABEL_38:
    if ((v3 & 0x40000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_141:
    result = TSD::StrokeArchive::Clear(*(v1 + 34));
    if ((v3 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_142;
  }

LABEL_140:
  result = TSD::StrokeArchive::Clear(*(v1 + 33));
  if ((v3 & 0x40000000) != 0)
  {
    goto LABEL_141;
  }

LABEL_39:
  if ((v3 & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_142:
  result = TSD::StrokeArchive::Clear(*(v1 + 35));
LABEL_40:
  v4 = *(v1 + 5);
  if (!v4)
  {
    goto LABEL_50;
  }

  if (v4)
  {
    result = TSD::StrokeArchive::Clear(*(v1 + 36));
    if ((v4 & 2) == 0)
    {
LABEL_43:
      if ((v4 & 4) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_113;
    }
  }

  else if ((v4 & 2) == 0)
  {
    goto LABEL_43;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 37));
  if ((v4 & 4) == 0)
  {
LABEL_44:
    if ((v4 & 8) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_114;
  }

LABEL_113:
  result = TSD::StrokeArchive::Clear(*(v1 + 38));
  if ((v4 & 8) == 0)
  {
LABEL_45:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_115;
  }

LABEL_114:
  result = TSD::StrokeArchive::Clear(*(v1 + 39));
  if ((v4 & 0x10) == 0)
  {
LABEL_46:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_116;
  }

LABEL_115:
  result = TSD::StrokeArchive::Clear(*(v1 + 40));
  if ((v4 & 0x20) == 0)
  {
LABEL_47:
    if ((v4 & 0x40) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_117;
  }

LABEL_116:
  result = TSD::StrokeArchive::Clear(*(v1 + 41));
  if ((v4 & 0x40) == 0)
  {
LABEL_48:
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_117:
  result = TSD::StrokeArchive::Clear(*(v1 + 42));
  if ((v4 & 0x80) != 0)
  {
LABEL_49:
    result = TSD::StrokeArchive::Clear(*(v1 + 43));
  }

LABEL_50:
  if ((v4 & 0xFF00) == 0)
  {
    goto LABEL_60;
  }

  if ((v4 & 0x100) != 0)
  {
    result = TSD::StrokeArchive::Clear(*(v1 + 44));
    if ((v4 & 0x200) == 0)
    {
LABEL_53:
      if ((v4 & 0x400) == 0)
      {
        goto LABEL_54;
      }

      goto LABEL_121;
    }
  }

  else if ((v4 & 0x200) == 0)
  {
    goto LABEL_53;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 45));
  if ((v4 & 0x400) == 0)
  {
LABEL_54:
    if ((v4 & 0x800) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_122;
  }

LABEL_121:
  result = TSD::StrokeArchive::Clear(*(v1 + 46));
  if ((v4 & 0x800) == 0)
  {
LABEL_55:
    if ((v4 & 0x1000) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_123;
  }

LABEL_122:
  result = TSD::StrokeArchive::Clear(*(v1 + 47));
  if ((v4 & 0x1000) == 0)
  {
LABEL_56:
    if ((v4 & 0x2000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_124;
  }

LABEL_123:
  result = TSD::StrokeArchive::Clear(*(v1 + 48));
  if ((v4 & 0x2000) == 0)
  {
LABEL_57:
    if ((v4 & 0x4000) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_125;
  }

LABEL_124:
  result = TSD::StrokeArchive::Clear(*(v1 + 49));
  if ((v4 & 0x4000) == 0)
  {
LABEL_58:
    if ((v4 & 0x8000) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_59;
  }

LABEL_125:
  result = TSD::StrokeArchive::Clear(*(v1 + 50));
  if ((v4 & 0x8000) != 0)
  {
LABEL_59:
    result = TSD::StrokeArchive::Clear(*(v1 + 51));
  }

LABEL_60:
  if ((v4 & 0xFF0000) == 0)
  {
    goto LABEL_70;
  }

  if ((v4 & 0x10000) != 0)
  {
    result = TSD::StrokeArchive::Clear(*(v1 + 52));
    if ((v4 & 0x20000) == 0)
    {
LABEL_63:
      if ((v4 & 0x40000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_129;
    }
  }

  else if ((v4 & 0x20000) == 0)
  {
    goto LABEL_63;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 53));
  if ((v4 & 0x40000) == 0)
  {
LABEL_64:
    if ((v4 & 0x80000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_130;
  }

LABEL_129:
  result = TSD::StrokeArchive::Clear(*(v1 + 54));
  if ((v4 & 0x80000) == 0)
  {
LABEL_65:
    if ((v4 & 0x100000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_131;
  }

LABEL_130:
  result = TSD::StrokeArchive::Clear(*(v1 + 55));
  if ((v4 & 0x100000) == 0)
  {
LABEL_66:
    if ((v4 & 0x200000) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_132;
  }

LABEL_131:
  result = TSD::StrokeArchive::Clear(*(v1 + 56));
  if ((v4 & 0x200000) == 0)
  {
LABEL_67:
    if ((v4 & 0x400000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_133;
  }

LABEL_132:
  result = TSD::StrokeArchive::Clear(*(v1 + 57));
  if ((v4 & 0x400000) == 0)
  {
LABEL_68:
    if ((v4 & 0x800000) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_69;
  }

LABEL_133:
  result = TSD::StrokeArchive::Clear(*(v1 + 58));
  if ((v4 & 0x800000) != 0)
  {
LABEL_69:
    result = TSD::StrokeArchive::Clear(*(v1 + 59));
  }

LABEL_70:
  if (!HIBYTE(v4))
  {
    goto LABEL_79;
  }

  if ((v4 & 0x1000000) != 0)
  {
    result = TSD::StrokeArchive::Clear(*(v1 + 60));
    if ((v4 & 0x2000000) == 0)
    {
LABEL_73:
      if ((v4 & 0x4000000) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_145;
    }
  }

  else if ((v4 & 0x2000000) == 0)
  {
    goto LABEL_73;
  }

  result = TSD::StrokeArchive::Clear(*(v1 + 61));
  if ((v4 & 0x4000000) == 0)
  {
LABEL_74:
    if ((v4 & 0x8000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_146;
  }

LABEL_145:
  result = TSD::StrokeArchive::Clear(*(v1 + 62));
  if ((v4 & 0x8000000) == 0)
  {
LABEL_75:
    if ((v4 & 0x10000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_147;
  }

LABEL_146:
  result = TSD::StrokeArchive::Clear(*(v1 + 63));
  if ((v4 & 0x10000000) == 0)
  {
LABEL_76:
    if ((v4 & 0x20000000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_148;
  }

LABEL_147:
  result = TSD::StrokeArchive::Clear(*(v1 + 64));
  if ((v4 & 0x20000000) == 0)
  {
LABEL_77:
    if ((v4 & 0x40000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_149:
    result = TSD::StrokeArchive::Clear(*(v1 + 66));
    if ((v4 & 0x80000000) == 0)
    {
      goto LABEL_79;
    }

    goto LABEL_150;
  }

LABEL_148:
  result = TSD::StrokeArchive::Clear(*(v1 + 65));
  if ((v4 & 0x40000000) != 0)
  {
    goto LABEL_149;
  }

LABEL_78:
  if ((v4 & 0x80000000) == 0)
  {
    goto LABEL_79;
  }

LABEL_150:
  result = TSD::StrokeArchive::Clear(*(v1 + 67));
LABEL_79:
  v5 = *(v1 + 6);
  if ((v5 & 3) != 0)
  {
    if (v5)
    {
      result = TSD::StrokeArchive::Clear(*(v1 + 68));
    }

    if ((v5 & 2) != 0)
    {
      result = TSD::StrokeArchive::Clear(*(v1 + 69));
    }
  }

  if ((v5 & 0xFC) != 0)
  {
    *(v1 + 282) = 0;
    *(v1 + 140) = 0;
  }

  if ((v5 & 0xFF00) != 0)
  {
    *(v1 + 573) = 0;
    *(v1 + 566) = 0;
  }

  v7 = *(v1 + 8);
  v6 = v1 + 8;
  *(v6 + 143) = -1;
  *v2 = 0;
  *(v2 + 2) = 0;
  if (v7)
  {

    return sub_221567398(v6);
  }

  return result;
}

google::protobuf::internal *sub_2216DA0D8(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v156 = a2;
  v5 = *(a3 + 92);
  while (2)
  {
    if (sub_221567030(a3, &v156, v5))
    {
      return v156;
    }

    v6 = (v156 + 1);
    LODWORD(v7) = *v156;
    if ((*v156 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v7 = (v7 + (*v6 << 7) - 128);
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = (v156 + 2);
LABEL_6:
      v156 = v6;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(v156, v7);
    v156 = TagFallback;
    if (!TagFallback)
    {
      return 0;
    }

    v6 = TagFallback;
LABEL_7:
    switch(v7 >> 3)
    {
      case 1u:
        if (v7 != 8)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 4u;
        v9 = (v6 + 1);
        v8 = *v6;
        if ((v8 & 0x8000000000000000) == 0)
        {
          goto LABEL_12;
        }

        v10 = *v9;
        v8 = (v10 << 7) + v8 - 128;
        if ((v10 & 0x80000000) == 0)
        {
          v9 = (v6 + 2);
LABEL_12:
          v156 = v9;
          *(a1 + 560) = v8 != 0;
          goto LABEL_421;
        }

        v147 = google::protobuf::internal::VarintParseSlow64(v6, v8);
        v156 = v147;
        *(a1 + 560) = v148 != 0;
        if (!v147)
        {
          return 0;
        }

        goto LABEL_421;
      case 2u:
        if (v7 != 18)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 2u;
        v78 = *(a1 + 40);
        if (!v78)
        {
          v79 = *(a1 + 8);
          if (v79)
          {
            v79 = *(v79 & 0xFFFFFFFFFFFFFFFELL);
          }

          v78 = MEMORY[0x223DA0280](v79);
          *(a1 + 40) = v78;
          v6 = v156;
        }

        v68 = sub_22170B318(a3, v78, v6);
        goto LABEL_420;
      case 4u:
        if (v7 != 34)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 4u;
        v35 = *(a1 + 48);
        if (v35)
        {
          goto LABEL_316;
        }

        v82 = *(a1 + 8);
        if (v82)
        {
          v82 = *(v82 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v82);
        *(a1 + 48) = v35;
        goto LABEL_315;
      case 5u:
        if (v7 != 42)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 8u;
        v35 = *(a1 + 56);
        if (v35)
        {
          goto LABEL_316;
        }

        v95 = *(a1 + 8);
        if (v95)
        {
          v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v95);
        *(a1 + 56) = v35;
        goto LABEL_315;
      case 7u:
        if (v7 != 58)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x10u;
        v35 = *(a1 + 64);
        if (v35)
        {
          goto LABEL_316;
        }

        v75 = *(a1 + 8);
        if (v75)
        {
          v75 = *(v75 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v75);
        *(a1 + 64) = v35;
        goto LABEL_315;
      case 8u:
        if (v7 != 66)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x20u;
        v35 = *(a1 + 72);
        if (v35)
        {
          goto LABEL_316;
        }

        v65 = *(a1 + 8);
        if (v65)
        {
          v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v65);
        *(a1 + 72) = v35;
        goto LABEL_315;
      case 0xAu:
        if (v7 != 82)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x40u;
        v35 = *(a1 + 80);
        if (v35)
        {
          goto LABEL_316;
        }

        v66 = *(a1 + 8);
        if (v66)
        {
          v66 = *(v66 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v66);
        *(a1 + 80) = v35;
        goto LABEL_315;
      case 0xBu:
        if (v7 != 90)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x80u;
        v35 = *(a1 + 88);
        if (v35)
        {
          goto LABEL_316;
        }

        v56 = *(a1 + 8);
        if (v56)
        {
          v56 = *(v56 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v56);
        *(a1 + 88) = v35;
        goto LABEL_315;
      case 0xCu:
        if (v7 != 98)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x100u;
        v35 = *(a1 + 96);
        if (v35)
        {
          goto LABEL_316;
        }

        v64 = *(a1 + 8);
        if (v64)
        {
          v64 = *(v64 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v64);
        *(a1 + 96) = v35;
        goto LABEL_315;
      case 0x15u:
        if (v7 != 168)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 8u;
        v39 = (v6 + 1);
        v38 = *v6;
        if ((v38 & 0x8000000000000000) == 0)
        {
          goto LABEL_119;
        }

        v40 = *v39;
        v38 = (v40 << 7) + v38 - 128;
        if (v40 < 0)
        {
          v130 = google::protobuf::internal::VarintParseSlow64(v6, v38);
          v156 = v130;
          *(a1 + 561) = v131 != 0;
          if (!v130)
          {
            return 0;
          }
        }

        else
        {
          v39 = (v6 + 2);
LABEL_119:
          v156 = v39;
          *(a1 + 561) = v38 != 0;
        }

        goto LABEL_421;
      case 0x16u:
        if (v7 != 176)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x10u;
        v59 = (v6 + 1);
        v58 = *v6;
        if ((v58 & 0x8000000000000000) == 0)
        {
          goto LABEL_166;
        }

        v60 = *v59;
        v58 = (v60 << 7) + v58 - 128;
        if (v60 < 0)
        {
          v139 = google::protobuf::internal::VarintParseSlow64(v6, v58);
          v156 = v139;
          *(a1 + 562) = v140 != 0;
          if (!v139)
          {
            return 0;
          }
        }

        else
        {
          v59 = (v6 + 2);
LABEL_166:
          v156 = v59;
          *(a1 + 562) = v58 != 0;
        }

        goto LABEL_421;
      case 0x17u:
        if (v7 != 186)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x200u;
        v35 = *(a1 + 104);
        if (v35)
        {
          goto LABEL_316;
        }

        v80 = *(a1 + 8);
        if (v80)
        {
          v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v80);
        *(a1 + 104) = v35;
        goto LABEL_315;
      case 0x18u:
        if (v7 != 194)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x400u;
        v35 = *(a1 + 112);
        if (v35)
        {
          goto LABEL_316;
        }

        v76 = *(a1 + 8);
        if (v76)
        {
          v76 = *(v76 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v76);
        *(a1 + 112) = v35;
        goto LABEL_315;
      case 0x19u:
        if (v7 != 202)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x800u;
        v35 = *(a1 + 120);
        if (v35)
        {
          goto LABEL_316;
        }

        v48 = *(a1 + 8);
        if (v48)
        {
          v48 = *(v48 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v48);
        *(a1 + 120) = v35;
        goto LABEL_315;
      case 0x1Au:
        if (v7 != 210)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x1000u;
        v35 = *(a1 + 128);
        if (v35)
        {
          goto LABEL_316;
        }

        v96 = *(a1 + 8);
        if (v96)
        {
          v96 = *(v96 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v96);
        *(a1 + 128) = v35;
        goto LABEL_315;
      case 0x1Bu:
        if (v7 != 218)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x2000u;
        v35 = *(a1 + 136);
        if (v35)
        {
          goto LABEL_316;
        }

        v97 = *(a1 + 8);
        if (v97)
        {
          v97 = *(v97 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v97);
        *(a1 + 136) = v35;
        goto LABEL_315;
      case 0x1Cu:
        if (v7 != 226)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x4000u;
        v35 = *(a1 + 144);
        if (v35)
        {
          goto LABEL_316;
        }

        v101 = *(a1 + 8);
        if (v101)
        {
          v101 = *(v101 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v101);
        *(a1 + 144) = v35;
        goto LABEL_315;
      case 0x1Du:
        if (v7 != 234)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x8000u;
        v35 = *(a1 + 152);
        if (v35)
        {
          goto LABEL_316;
        }

        v99 = *(a1 + 8);
        if (v99)
        {
          v99 = *(v99 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v99);
        *(a1 + 152) = v35;
        goto LABEL_315;
      case 0x1Eu:
        if (v7 != 242)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x10000u;
        v35 = *(a1 + 160);
        if (v35)
        {
          goto LABEL_316;
        }

        v36 = *(a1 + 8);
        if (v36)
        {
          v36 = *(v36 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v36);
        *(a1 + 160) = v35;
        goto LABEL_315;
      case 0x1Fu:
        if (v7 != 250)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x20000u;
        v35 = *(a1 + 168);
        if (v35)
        {
          goto LABEL_316;
        }

        v77 = *(a1 + 8);
        if (v77)
        {
          v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
        }

        v35 = sub_2216E2E04(v77);
        *(a1 + 168) = v35;
LABEL_315:
        v6 = v156;
LABEL_316:
        v68 = sub_22170B3E8(a3, v35, v6);
        goto LABEL_420;
      case 0x20u:
        if (v7 != 2)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x40000u;
        v107 = *(a1 + 176);
        if (!v107)
        {
          v108 = *(a1 + 8);
          if (v108)
          {
            v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
          }

          v107 = sub_2216E3160(v108);
          *(a1 + 176) = v107;
          v6 = v156;
        }

        v68 = sub_22170B728(a3, v107, v6);
        goto LABEL_420;
      case 0x21u:
        if (v7 != 8)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x20u;
        v46 = (v6 + 1);
        v45 = *v6;
        if ((v45 & 0x8000000000000000) == 0)
        {
          goto LABEL_131;
        }

        v47 = *v46;
        v45 = (v47 << 7) + v45 - 128;
        if (v47 < 0)
        {
          v133 = google::protobuf::internal::VarintParseSlow64(v6, v45);
          v156 = v133;
          *(a1 + 563) = v134 != 0;
          if (!v133)
          {
            return 0;
          }
        }

        else
        {
          v46 = (v6 + 2);
LABEL_131:
          v156 = v46;
          *(a1 + 563) = v45 != 0;
        }

        goto LABEL_421;
      case 0x22u:
        if (v7 != 16)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x40u;
        v73 = (v6 + 1);
        v72 = *v6;
        if ((v72 & 0x8000000000000000) == 0)
        {
          goto LABEL_203;
        }

        v74 = *v73;
        v72 = (v74 << 7) + v72 - 128;
        if (v74 < 0)
        {
          v145 = google::protobuf::internal::VarintParseSlow64(v6, v72);
          v156 = v145;
          *(a1 + 564) = v146 != 0;
          if (!v145)
          {
            return 0;
          }
        }

        else
        {
          v73 = (v6 + 2);
LABEL_203:
          v156 = v73;
          *(a1 + 564) = v72 != 0;
        }

        goto LABEL_421;
      case 0x23u:
        if (v7 != 24)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x80u;
        v54 = (v6 + 1);
        v53 = *v6;
        if ((v53 & 0x8000000000000000) == 0)
        {
          goto LABEL_151;
        }

        v55 = *v54;
        v53 = (v55 << 7) + v53 - 128;
        if (v55 < 0)
        {
          v137 = google::protobuf::internal::VarintParseSlow64(v6, v53);
          v156 = v137;
          *(a1 + 565) = v138 != 0;
          if (!v137)
          {
            return 0;
          }
        }

        else
        {
          v54 = (v6 + 2);
LABEL_151:
          v156 = v54;
          *(a1 + 565) = v53 != 0;
        }

        goto LABEL_421;
      case 0x24u:
        if (v7 != 32)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x100u;
        v86 = (v6 + 1);
        v85 = *v6;
        if ((v85 & 0x8000000000000000) == 0)
        {
          goto LABEL_254;
        }

        v87 = *v86;
        v85 = (v87 << 7) + v85 - 128;
        if (v87 < 0)
        {
          v149 = google::protobuf::internal::VarintParseSlow64(v6, v85);
          v156 = v149;
          *(a1 + 566) = v150 != 0;
          if (!v149)
          {
            return 0;
          }
        }

        else
        {
          v86 = (v6 + 2);
LABEL_254:
          v156 = v86;
          *(a1 + 566) = v85 != 0;
        }

        goto LABEL_421;
      case 0x25u:
        if (v7 != 40)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x200u;
        v51 = (v6 + 1);
        v50 = *v6;
        if ((v50 & 0x8000000000000000) == 0)
        {
          goto LABEL_146;
        }

        v52 = *v51;
        v50 = (v52 << 7) + v50 - 128;
        if (v52 < 0)
        {
          v135 = google::protobuf::internal::VarintParseSlow64(v6, v50);
          v156 = v135;
          *(a1 + 567) = v136 != 0;
          if (!v135)
          {
            return 0;
          }
        }

        else
        {
          v51 = (v6 + 2);
LABEL_146:
          v156 = v51;
          *(a1 + 567) = v50 != 0;
        }

        goto LABEL_421;
      case 0x26u:
        if (v7 != 48)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x800u;
        v31 = (v6 + 1);
        v30 = *v6;
        if ((v30 & 0x8000000000000000) == 0)
        {
          goto LABEL_94;
        }

        v32 = *v31;
        v30 = (v32 << 7) + v30 - 128;
        if (v32 < 0)
        {
          v128 = google::protobuf::internal::VarintParseSlow64(v6, v30);
          v156 = v128;
          *(a1 + 572) = v129 != 0;
          if (!v128)
          {
            return 0;
          }
        }

        else
        {
          v31 = (v6 + 2);
LABEL_94:
          v156 = v31;
          *(a1 + 572) = v30 != 0;
        }

        goto LABEL_421;
      case 0x27u:
        if (v7 != 56)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x1000u;
        v112 = (v6 + 1);
        v111 = *v6;
        if ((v111 & 0x8000000000000000) == 0)
        {
          goto LABEL_362;
        }

        v113 = *v112;
        v111 = (v113 << 7) + v111 - 128;
        if (v113 < 0)
        {
          v153 = google::protobuf::internal::VarintParseSlow64(v6, v111);
          v156 = v153;
          *(a1 + 573) = v154 != 0;
          if (!v153)
          {
            return 0;
          }
        }

        else
        {
          v112 = (v6 + 2);
LABEL_362:
          v156 = v112;
          *(a1 + 573) = v111 != 0;
        }

        goto LABEL_421;
      case 0x28u:
        if (v7 != 64)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x400u;
        v62 = (v6 + 1);
        LODWORD(v61) = *v6;
        if ((v61 & 0x80) == 0)
        {
          goto LABEL_171;
        }

        v63 = *v62;
        v61 = (v61 + (v63 << 7) - 128);
        if (v63 < 0)
        {
          v141 = google::protobuf::internal::VarintParseSlow64(v6, v61);
          v156 = v141;
          *(a1 + 568) = v142;
          if (!v141)
          {
            return 0;
          }
        }

        else
        {
          v62 = (v6 + 2);
LABEL_171:
          v156 = v62;
          *(a1 + 568) = v61;
        }

        goto LABEL_421;
      case 0x29u:
        if (v7 != 74)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 1u;
        google::protobuf::internal::ArenaStringPtr::Mutable();
        v68 = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_420;
      case 0x2Au:
        if (v7 != 80)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x2000u;
        v92 = (v6 + 1);
        v91 = *v6;
        if ((v91 & 0x8000000000000000) == 0)
        {
          goto LABEL_274;
        }

        v93 = *v92;
        v91 = (v93 << 7) + v91 - 128;
        if (v93 < 0)
        {
          v151 = google::protobuf::internal::VarintParseSlow64(v6, v91);
          v156 = v151;
          *(a1 + 574) = v152 != 0;
          if (!v151)
          {
            return 0;
          }
        }

        else
        {
          v92 = (v6 + 2);
LABEL_274:
          v156 = v92;
          *(a1 + 574) = v91 != 0;
        }

        goto LABEL_421;
      case 0x2Bu:
        if (v7 != 88)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x4000u;
        v70 = (v6 + 1);
        v69 = *v6;
        if ((v69 & 0x8000000000000000) == 0)
        {
          goto LABEL_198;
        }

        v71 = *v70;
        v69 = (v71 << 7) + v69 - 128;
        if (v71 < 0)
        {
          v143 = google::protobuf::internal::VarintParseSlow64(v6, v69);
          v156 = v143;
          *(a1 + 575) = v144 != 0;
          if (!v143)
          {
            return 0;
          }
        }

        else
        {
          v70 = (v6 + 2);
LABEL_198:
          v156 = v70;
          *(a1 + 575) = v69 != 0;
        }

        goto LABEL_421;
      case 0x2Cu:
        if (v7 != 96)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 0x8000u;
        v25 = (v6 + 1);
        v24 = *v6;
        if ((v24 & 0x8000000000000000) == 0)
        {
          goto LABEL_74;
        }

        v26 = *v25;
        v24 = (v26 << 7) + v24 - 128;
        if (v26 < 0)
        {
          v126 = google::protobuf::internal::VarintParseSlow64(v6, v24);
          v156 = v126;
          *(a1 + 576) = v127 != 0;
          if (!v126)
          {
            return 0;
          }
        }

        else
        {
          v25 = (v6 + 2);
LABEL_74:
          v156 = v25;
          *(a1 + 576) = v24 != 0;
        }

        goto LABEL_421;
      case 0x2Du:
        if (v7 != 104)
        {
          goto LABEL_422;
        }

        v41 = (v6 + 1);
        v42 = *v6;
        if ((v42 & 0x8000000000000000) == 0)
        {
          goto LABEL_124;
        }

        v43 = *v41;
        v44 = (v43 << 7) + v42;
        v42 = (v44 - 128);
        if (v43 < 0)
        {
          v156 = google::protobuf::internal::VarintParseSlow64(v6, (v44 - 128));
          if (!v156)
          {
            return 0;
          }

          v42 = v132;
        }

        else
        {
          v41 = (v6 + 2);
LABEL_124:
          v156 = v41;
        }

        if (TSWP::WritingDirectionType_IsValid(v42))
        {
          *(a1 + 24) |= 0x10000u;
          *(a1 + 580) = v42;
        }

        else
        {
          sub_22170B8C8((a1 + 8), v42);
        }

        goto LABEL_421;
      case 0x2Eu:
        if (v7 != 114)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x80000u;
        v12 = *(a1 + 184);
        if (v12)
        {
          goto LABEL_419;
        }

        v98 = *(a1 + 8);
        if (v98)
        {
          v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v98);
        *(a1 + 184) = v12;
        goto LABEL_418;
      case 0x2Fu:
        if (v7 != 122)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x100000u;
        v12 = *(a1 + 192);
        if (v12)
        {
          goto LABEL_419;
        }

        v115 = *(a1 + 8);
        if (v115)
        {
          v115 = *(v115 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v115);
        *(a1 + 192) = v12;
        goto LABEL_418;
      case 0x30u:
        if (v7 != 130)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x200000u;
        v12 = *(a1 + 200);
        if (v12)
        {
          goto LABEL_419;
        }

        v29 = *(a1 + 8);
        if (v29)
        {
          v29 = *(v29 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v29);
        *(a1 + 200) = v12;
        goto LABEL_418;
      case 0x31u:
        if (v7 != 138)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x400000u;
        v12 = *(a1 + 208);
        if (v12)
        {
          goto LABEL_419;
        }

        v89 = *(a1 + 8);
        if (v89)
        {
          v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v89);
        *(a1 + 208) = v12;
        goto LABEL_418;
      case 0x32u:
        if (v7 != 146)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x800000u;
        v12 = *(a1 + 216);
        if (v12)
        {
          goto LABEL_419;
        }

        v28 = *(a1 + 8);
        if (v28)
        {
          v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v28);
        *(a1 + 216) = v12;
        goto LABEL_418;
      case 0x33u:
        if (v7 != 154)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x1000000u;
        v12 = *(a1 + 224);
        if (v12)
        {
          goto LABEL_419;
        }

        v27 = *(a1 + 8);
        if (v27)
        {
          v27 = *(v27 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v27);
        *(a1 + 224) = v12;
        goto LABEL_418;
      case 0x34u:
        if (v7 != 162)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x2000000u;
        v12 = *(a1 + 232);
        if (v12)
        {
          goto LABEL_419;
        }

        v57 = *(a1 + 8);
        if (v57)
        {
          v57 = *(v57 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v57);
        *(a1 + 232) = v12;
        goto LABEL_418;
      case 0x35u:
        if (v7 != 170)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x4000000u;
        v12 = *(a1 + 240);
        if (v12)
        {
          goto LABEL_419;
        }

        v81 = *(a1 + 8);
        if (v81)
        {
          v81 = *(v81 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v81);
        *(a1 + 240) = v12;
        goto LABEL_418;
      case 0x36u:
        if (v7 != 178)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x8000000u;
        v12 = *(a1 + 248);
        if (v12)
        {
          goto LABEL_419;
        }

        v102 = *(a1 + 8);
        if (v102)
        {
          v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v102);
        *(a1 + 248) = v12;
        goto LABEL_418;
      case 0x37u:
        if (v7 != 186)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x10000000u;
        v12 = *(a1 + 256);
        if (v12)
        {
          goto LABEL_419;
        }

        v19 = *(a1 + 8);
        if (v19)
        {
          v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v19);
        *(a1 + 256) = v12;
        goto LABEL_418;
      case 0x38u:
        if (v7 != 194)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x20000000u;
        v12 = *(a1 + 264);
        if (v12)
        {
          goto LABEL_419;
        }

        v33 = *(a1 + 8);
        if (v33)
        {
          v33 = *(v33 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v33);
        *(a1 + 264) = v12;
        goto LABEL_418;
      case 0x39u:
        if (v7 != 202)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x40000000u;
        v12 = *(a1 + 272);
        if (v12)
        {
          goto LABEL_419;
        }

        v83 = *(a1 + 8);
        if (v83)
        {
          v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v83);
        *(a1 + 272) = v12;
        goto LABEL_418;
      case 0x3Au:
        if (v7 != 210)
        {
          goto LABEL_422;
        }

        *(a1 + 16) |= 0x80000000;
        v12 = *(a1 + 280);
        if (v12)
        {
          goto LABEL_419;
        }

        v88 = *(a1 + 8);
        if (v88)
        {
          v88 = *(v88 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v88);
        *(a1 + 280) = v12;
        goto LABEL_418;
      case 0x3Bu:
        if (v7 != 218)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 1u;
        v12 = *(a1 + 288);
        if (v12)
        {
          goto LABEL_419;
        }

        v116 = *(a1 + 8);
        if (v116)
        {
          v116 = *(v116 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v116);
        *(a1 + 288) = v12;
        goto LABEL_418;
      case 0x3Cu:
        if (v7 != 226)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 2u;
        v12 = *(a1 + 296);
        if (v12)
        {
          goto LABEL_419;
        }

        v84 = *(a1 + 8);
        if (v84)
        {
          v84 = *(v84 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v84);
        *(a1 + 296) = v12;
        goto LABEL_418;
      case 0x3Du:
        if (v7 != 234)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 4u;
        v12 = *(a1 + 304);
        if (v12)
        {
          goto LABEL_419;
        }

        v23 = *(a1 + 8);
        if (v23)
        {
          v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v23);
        *(a1 + 304) = v12;
        goto LABEL_418;
      case 0x3Eu:
        if (v7 != 242)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 8u;
        v12 = *(a1 + 312);
        if (v12)
        {
          goto LABEL_419;
        }

        v20 = *(a1 + 8);
        if (v20)
        {
          v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v20);
        *(a1 + 312) = v12;
        goto LABEL_418;
      case 0x3Fu:
        if (v7 != 250)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x10u;
        v12 = *(a1 + 320);
        if (v12)
        {
          goto LABEL_419;
        }

        v120 = *(a1 + 8);
        if (v120)
        {
          v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v120);
        *(a1 + 320) = v12;
        goto LABEL_418;
      case 0x40u:
        if (v7 != 2)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x20u;
        v12 = *(a1 + 328);
        if (v12)
        {
          goto LABEL_419;
        }

        v114 = *(a1 + 8);
        if (v114)
        {
          v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v114);
        *(a1 + 328) = v12;
        goto LABEL_418;
      case 0x41u:
        if (v7 != 10)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x40u;
        v12 = *(a1 + 336);
        if (v12)
        {
          goto LABEL_419;
        }

        v22 = *(a1 + 8);
        if (v22)
        {
          v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v22);
        *(a1 + 336) = v12;
        goto LABEL_418;
      case 0x42u:
        if (v7 != 18)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x80u;
        v12 = *(a1 + 344);
        if (v12)
        {
          goto LABEL_419;
        }

        v90 = *(a1 + 8);
        if (v90)
        {
          v90 = *(v90 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v90);
        *(a1 + 344) = v12;
        goto LABEL_418;
      case 0x43u:
        if (v7 != 26)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x100u;
        v12 = *(a1 + 352);
        if (v12)
        {
          goto LABEL_419;
        }

        v100 = *(a1 + 8);
        if (v100)
        {
          v100 = *(v100 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v100);
        *(a1 + 352) = v12;
        goto LABEL_418;
      case 0x44u:
        if (v7 != 34)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x200u;
        v12 = *(a1 + 360);
        if (v12)
        {
          goto LABEL_419;
        }

        v21 = *(a1 + 8);
        if (v21)
        {
          v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v21);
        *(a1 + 360) = v12;
        goto LABEL_418;
      case 0x45u:
        if (v7 != 42)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x400u;
        v12 = *(a1 + 368);
        if (v12)
        {
          goto LABEL_419;
        }

        v109 = *(a1 + 8);
        if (v109)
        {
          v109 = *(v109 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v109);
        *(a1 + 368) = v12;
        goto LABEL_418;
      case 0x46u:
        if (v7 != 50)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x800u;
        v12 = *(a1 + 376);
        if (v12)
        {
          goto LABEL_419;
        }

        v103 = *(a1 + 8);
        if (v103)
        {
          v103 = *(v103 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v103);
        *(a1 + 376) = v12;
        goto LABEL_418;
      case 0x47u:
        if (v7 != 58)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x1000u;
        v12 = *(a1 + 384);
        if (v12)
        {
          goto LABEL_419;
        }

        v123 = *(a1 + 8);
        if (v123)
        {
          v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v123);
        *(a1 + 384) = v12;
        goto LABEL_418;
      case 0x48u:
        if (v7 != 66)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x2000u;
        v12 = *(a1 + 392);
        if (v12)
        {
          goto LABEL_419;
        }

        v118 = *(a1 + 8);
        if (v118)
        {
          v118 = *(v118 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v118);
        *(a1 + 392) = v12;
        goto LABEL_418;
      case 0x49u:
        if (v7 != 74)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x4000u;
        v12 = *(a1 + 400);
        if (v12)
        {
          goto LABEL_419;
        }

        v121 = *(a1 + 8);
        if (v121)
        {
          v121 = *(v121 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v121);
        *(a1 + 400) = v12;
        goto LABEL_418;
      case 0x4Au:
        if (v7 != 82)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x8000u;
        v12 = *(a1 + 408);
        if (v12)
        {
          goto LABEL_419;
        }

        v104 = *(a1 + 8);
        if (v104)
        {
          v104 = *(v104 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v104);
        *(a1 + 408) = v12;
        goto LABEL_418;
      case 0x4Bu:
        if (v7 != 90)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x10000u;
        v12 = *(a1 + 416);
        if (v12)
        {
          goto LABEL_419;
        }

        v105 = *(a1 + 8);
        if (v105)
        {
          v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v105);
        *(a1 + 416) = v12;
        goto LABEL_418;
      case 0x4Cu:
        if (v7 != 98)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x20000u;
        v12 = *(a1 + 424);
        if (v12)
        {
          goto LABEL_419;
        }

        v37 = *(a1 + 8);
        if (v37)
        {
          v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v37);
        *(a1 + 424) = v12;
        goto LABEL_418;
      case 0x4Du:
        if (v7 != 106)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x40000u;
        v12 = *(a1 + 432);
        if (v12)
        {
          goto LABEL_419;
        }

        v110 = *(a1 + 8);
        if (v110)
        {
          v110 = *(v110 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v110);
        *(a1 + 432) = v12;
        goto LABEL_418;
      case 0x4Eu:
        if (v7 != 114)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x80000u;
        v12 = *(a1 + 440);
        if (v12)
        {
          goto LABEL_419;
        }

        v16 = *(a1 + 8);
        if (v16)
        {
          v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v16);
        *(a1 + 440) = v12;
        goto LABEL_418;
      case 0x4Fu:
        if (v7 != 122)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x100000u;
        v12 = *(a1 + 448);
        if (v12)
        {
          goto LABEL_419;
        }

        v117 = *(a1 + 8);
        if (v117)
        {
          v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v117);
        *(a1 + 448) = v12;
        goto LABEL_418;
      case 0x50u:
        if (v7 != 130)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x200000u;
        v12 = *(a1 + 456);
        if (v12)
        {
          goto LABEL_419;
        }

        v119 = *(a1 + 8);
        if (v119)
        {
          v119 = *(v119 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v119);
        *(a1 + 456) = v12;
        goto LABEL_418;
      case 0x51u:
        if (v7 != 138)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x400000u;
        v12 = *(a1 + 464);
        if (v12)
        {
          goto LABEL_419;
        }

        v67 = *(a1 + 8);
        if (v67)
        {
          v67 = *(v67 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v67);
        *(a1 + 464) = v12;
        goto LABEL_418;
      case 0x52u:
        if (v7 != 146)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x800000u;
        v12 = *(a1 + 472);
        if (v12)
        {
          goto LABEL_419;
        }

        v122 = *(a1 + 8);
        if (v122)
        {
          v122 = *(v122 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v122);
        *(a1 + 472) = v12;
        goto LABEL_418;
      case 0x53u:
        if (v7 != 154)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x1000000u;
        v12 = *(a1 + 480);
        if (v12)
        {
          goto LABEL_419;
        }

        v106 = *(a1 + 8);
        if (v106)
        {
          v106 = *(v106 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v106);
        *(a1 + 480) = v12;
        goto LABEL_418;
      case 0x54u:
        if (v7 != 162)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x2000000u;
        v12 = *(a1 + 488);
        if (v12)
        {
          goto LABEL_419;
        }

        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v17);
        *(a1 + 488) = v12;
        goto LABEL_418;
      case 0x55u:
        if (v7 != 170)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x4000000u;
        v12 = *(a1 + 496);
        if (v12)
        {
          goto LABEL_419;
        }

        v34 = *(a1 + 8);
        if (v34)
        {
          v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v34);
        *(a1 + 496) = v12;
        goto LABEL_418;
      case 0x56u:
        if (v7 != 178)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x8000000u;
        v12 = *(a1 + 504);
        if (v12)
        {
          goto LABEL_419;
        }

        v94 = *(a1 + 8);
        if (v94)
        {
          v94 = *(v94 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v94);
        *(a1 + 504) = v12;
        goto LABEL_418;
      case 0x57u:
        if (v7 != 186)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x10000000u;
        v12 = *(a1 + 512);
        if (v12)
        {
          goto LABEL_419;
        }

        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v18);
        *(a1 + 512) = v12;
        goto LABEL_418;
      case 0x58u:
        if (v7 != 194)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x20000000u;
        v12 = *(a1 + 520);
        if (v12)
        {
          goto LABEL_419;
        }

        v124 = *(a1 + 8);
        if (v124)
        {
          v124 = *(v124 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v124);
        *(a1 + 520) = v12;
        goto LABEL_418;
      case 0x59u:
        if (v7 != 202)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x40000000u;
        v12 = *(a1 + 528);
        if (v12)
        {
          goto LABEL_419;
        }

        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v15);
        *(a1 + 528) = v12;
        goto LABEL_418;
      case 0x5Au:
        if (v7 != 210)
        {
          goto LABEL_422;
        }

        *(a1 + 20) |= 0x80000000;
        v12 = *(a1 + 536);
        if (v12)
        {
          goto LABEL_419;
        }

        v49 = *(a1 + 8);
        if (v49)
        {
          v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v49);
        *(a1 + 536) = v12;
        goto LABEL_418;
      case 0x5Bu:
        if (v7 != 218)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 1u;
        v12 = *(a1 + 544);
        if (v12)
        {
          goto LABEL_419;
        }

        v13 = *(a1 + 8);
        if (v13)
        {
          v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v13);
        *(a1 + 544) = v12;
        goto LABEL_418;
      case 0x5Cu:
        if (v7 != 226)
        {
          goto LABEL_422;
        }

        *(a1 + 24) |= 2u;
        v12 = *(a1 + 552);
        if (v12)
        {
          goto LABEL_419;
        }

        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v12 = MEMORY[0x223DA0290](v14);
        *(a1 + 552) = v12;
LABEL_418:
        v6 = v156;
LABEL_419:
        v68 = sub_22170B248(a3, v12, v6);
        goto LABEL_420;
      default:
LABEL_422:
        if (v7)
        {
          v125 = (v7 & 7) == 4;
        }

        else
        {
          v125 = 1;
        }

        if (v125)
        {
          *(a3 + 80) = v7 - 1;
          return v156;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v68 = google::protobuf::internal::UnknownFieldParse();
LABEL_420:
        v156 = v68;
        if (v68)
        {
LABEL_421:
          v5 = *(a3 + 92);
          continue;
        }

        return 0;
    }
  }
}

unsigned __int8 *sub_2216DBBF8(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v4 = a2;
  if ((*(a1 + 24) & 4) != 0)
  {
    if (*a3 <= a2)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 560);
    *v4 = 8;
    v4[1] = v6;
    v4 += 2;
  }

  v7 = *(a1 + 16);
  if ((v7 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v8 = *(a1 + 40);
    *v4 = 18;
    v9 = *(v8 + 11);
    if (v9 > 0x7F)
    {
      v4[1] = v9 | 0x80;
      v11 = v9 >> 7;
      if (v9 >> 14)
      {
        v10 = v4 + 3;
        do
        {
          *(v10 - 1) = v11 | 0x80;
          v12 = v11 >> 7;
          ++v10;
          v13 = v11 >> 14;
          v11 >>= 7;
        }

        while (v13);
        *(v10 - 1) = v12;
      }

      else
      {
        v4[2] = v11;
        v10 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v9;
      v10 = v4 + 2;
    }

    v4 = TSD::FillArchive::_InternalSerialize(v8, v10, a3);
    if ((v7 & 4) == 0)
    {
LABEL_7:
      if ((v7 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_34;
    }
  }

  else if ((v7 & 4) == 0)
  {
    goto LABEL_7;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v14 = *(a1 + 48);
  *v4 = 34;
  v15 = *(v14 + 20);
  if (v15 > 0x7F)
  {
    v4[1] = v15 | 0x80;
    v17 = v15 >> 7;
    if (v15 >> 14)
    {
      v16 = v4 + 3;
      do
      {
        *(v16 - 1) = v17 | 0x80;
        v18 = v17 >> 7;
        ++v16;
        v19 = v17 >> 14;
        v17 >>= 7;
      }

      while (v19);
      *(v16 - 1) = v18;
    }

    else
    {
      v4[2] = v17;
      v16 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v15;
    v16 = v4 + 2;
  }

  v4 = sub_2216D453C(v14, v16, a3);
  if ((v7 & 8) == 0)
  {
LABEL_8:
    if ((v7 & 0x10) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

LABEL_34:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v20 = *(a1 + 56);
  *v4 = 42;
  v21 = *(v20 + 20);
  if (v21 > 0x7F)
  {
    v4[1] = v21 | 0x80;
    v23 = v21 >> 7;
    if (v21 >> 14)
    {
      v22 = v4 + 3;
      do
      {
        *(v22 - 1) = v23 | 0x80;
        v24 = v23 >> 7;
        ++v22;
        v25 = v23 >> 14;
        v23 >>= 7;
      }

      while (v25);
      *(v22 - 1) = v24;
    }

    else
    {
      v4[2] = v23;
      v22 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v21;
    v22 = v4 + 2;
  }

  v4 = sub_2216D453C(v20, v22, a3);
  if ((v7 & 0x10) == 0)
  {
LABEL_9:
    if ((v7 & 0x20) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_54;
  }

LABEL_44:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v26 = *(a1 + 64);
  *v4 = 58;
  v27 = *(v26 + 20);
  if (v27 > 0x7F)
  {
    v4[1] = v27 | 0x80;
    v29 = v27 >> 7;
    if (v27 >> 14)
    {
      v28 = v4 + 3;
      do
      {
        *(v28 - 1) = v29 | 0x80;
        v30 = v29 >> 7;
        ++v28;
        v31 = v29 >> 14;
        v29 >>= 7;
      }

      while (v31);
      *(v28 - 1) = v30;
    }

    else
    {
      v4[2] = v29;
      v28 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v27;
    v28 = v4 + 2;
  }

  v4 = sub_2216D453C(v26, v28, a3);
  if ((v7 & 0x20) == 0)
  {
LABEL_10:
    if ((v7 & 0x40) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_64;
  }

LABEL_54:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v32 = *(a1 + 72);
  *v4 = 66;
  v33 = *(v32 + 20);
  if (v33 > 0x7F)
  {
    v4[1] = v33 | 0x80;
    v35 = v33 >> 7;
    if (v33 >> 14)
    {
      v34 = v4 + 3;
      do
      {
        *(v34 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++v34;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(v34 - 1) = v36;
    }

    else
    {
      v4[2] = v35;
      v34 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v33;
    v34 = v4 + 2;
  }

  v4 = sub_2216D453C(v32, v34, a3);
  if ((v7 & 0x40) == 0)
  {
LABEL_11:
    if ((v7 & 0x80) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_74;
  }

LABEL_64:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v38 = *(a1 + 80);
  *v4 = 82;
  v39 = *(v38 + 20);
  if (v39 > 0x7F)
  {
    v4[1] = v39 | 0x80;
    v41 = v39 >> 7;
    if (v39 >> 14)
    {
      v40 = v4 + 3;
      do
      {
        *(v40 - 1) = v41 | 0x80;
        v42 = v41 >> 7;
        ++v40;
        v43 = v41 >> 14;
        v41 >>= 7;
      }

      while (v43);
      *(v40 - 1) = v42;
    }

    else
    {
      v4[2] = v41;
      v40 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v39;
    v40 = v4 + 2;
  }

  v4 = sub_2216D453C(v38, v40, a3);
  if ((v7 & 0x80) == 0)
  {
LABEL_12:
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_94;
    }

    goto LABEL_84;
  }

LABEL_74:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v44 = *(a1 + 88);
  *v4 = 90;
  v45 = *(v44 + 20);
  if (v45 > 0x7F)
  {
    v4[1] = v45 | 0x80;
    v47 = v45 >> 7;
    if (v45 >> 14)
    {
      v46 = v4 + 3;
      do
      {
        *(v46 - 1) = v47 | 0x80;
        v48 = v47 >> 7;
        ++v46;
        v49 = v47 >> 14;
        v47 >>= 7;
      }

      while (v49);
      *(v46 - 1) = v48;
    }

    else
    {
      v4[2] = v47;
      v46 = v4 + 3;
    }
  }

  else
  {
    v4[1] = v45;
    v46 = v4 + 2;
  }

  v4 = sub_2216D453C(v44, v46, a3);
  if ((v7 & 0x100) != 0)
  {
LABEL_84:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v50 = *(a1 + 96);
    *v4 = 98;
    v51 = *(v50 + 20);
    if (v51 > 0x7F)
    {
      v4[1] = v51 | 0x80;
      v53 = v51 >> 7;
      if (v51 >> 14)
      {
        v52 = v4 + 3;
        do
        {
          *(v52 - 1) = v53 | 0x80;
          v54 = v53 >> 7;
          ++v52;
          v55 = v53 >> 14;
          v53 >>= 7;
        }

        while (v55);
        *(v52 - 1) = v54;
      }

      else
      {
        v4[2] = v53;
        v52 = v4 + 3;
      }
    }

    else
    {
      v4[1] = v51;
      v52 = v4 + 2;
    }

    v4 = sub_2216D453C(v50, v52, a3);
  }

LABEL_94:
  v56 = *(a1 + 24);
  if ((v56 & 8) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v57 = *(a1 + 561);
    *v4 = 424;
    v4[2] = v57;
    v4 += 3;
  }

  if ((v56 & 0x10) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v58 = *(a1 + 562);
    *v4 = 432;
    v4[2] = v58;
    v4 += 3;
  }

  v59 = *(a1 + 16);
  if ((v59 & 0x200) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v60 = *(a1 + 104);
    *v4 = 442;
    v61 = *(v60 + 20);
    if (v61 > 0x7F)
    {
      v4[2] = v61 | 0x80;
      v63 = v61 >> 7;
      if (v61 >> 14)
      {
        v62 = v4 + 4;
        do
        {
          *(v62 - 1) = v63 | 0x80;
          v64 = v63 >> 7;
          ++v62;
          v65 = v63 >> 14;
          v63 >>= 7;
        }

        while (v65);
        *(v62 - 1) = v64;
      }

      else
      {
        v4[3] = v63;
        v62 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v61;
      v62 = v4 + 3;
    }

    v4 = sub_2216D453C(v60, v62, a3);
    if ((v59 & 0x400) == 0)
    {
LABEL_104:
      if ((v59 & 0x800) == 0)
      {
        goto LABEL_105;
      }

      goto LABEL_133;
    }
  }

  else if ((v59 & 0x400) == 0)
  {
    goto LABEL_104;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v66 = *(a1 + 112);
  *v4 = 450;
  v67 = *(v66 + 20);
  if (v67 > 0x7F)
  {
    v4[2] = v67 | 0x80;
    v69 = v67 >> 7;
    if (v67 >> 14)
    {
      v68 = v4 + 4;
      do
      {
        *(v68 - 1) = v69 | 0x80;
        v70 = v69 >> 7;
        ++v68;
        v71 = v69 >> 14;
        v69 >>= 7;
      }

      while (v71);
      *(v68 - 1) = v70;
    }

    else
    {
      v4[3] = v69;
      v68 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v67;
    v68 = v4 + 3;
  }

  v4 = sub_2216D453C(v66, v68, a3);
  if ((v59 & 0x800) == 0)
  {
LABEL_105:
    if ((v59 & 0x1000) == 0)
    {
      goto LABEL_106;
    }

    goto LABEL_143;
  }

LABEL_133:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v72 = *(a1 + 120);
  *v4 = 458;
  v73 = *(v72 + 20);
  if (v73 > 0x7F)
  {
    v4[2] = v73 | 0x80;
    v75 = v73 >> 7;
    if (v73 >> 14)
    {
      v74 = v4 + 4;
      do
      {
        *(v74 - 1) = v75 | 0x80;
        v76 = v75 >> 7;
        ++v74;
        v77 = v75 >> 14;
        v75 >>= 7;
      }

      while (v77);
      *(v74 - 1) = v76;
    }

    else
    {
      v4[3] = v75;
      v74 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v73;
    v74 = v4 + 3;
  }

  v4 = sub_2216D453C(v72, v74, a3);
  if ((v59 & 0x1000) == 0)
  {
LABEL_106:
    if ((v59 & 0x2000) == 0)
    {
      goto LABEL_107;
    }

    goto LABEL_153;
  }

LABEL_143:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v78 = *(a1 + 128);
  *v4 = 466;
  v79 = *(v78 + 20);
  if (v79 > 0x7F)
  {
    v4[2] = v79 | 0x80;
    v81 = v79 >> 7;
    if (v79 >> 14)
    {
      v80 = v4 + 4;
      do
      {
        *(v80 - 1) = v81 | 0x80;
        v82 = v81 >> 7;
        ++v80;
        v83 = v81 >> 14;
        v81 >>= 7;
      }

      while (v83);
      *(v80 - 1) = v82;
    }

    else
    {
      v4[3] = v81;
      v80 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v79;
    v80 = v4 + 3;
  }

  v4 = sub_2216D453C(v78, v80, a3);
  if ((v59 & 0x2000) == 0)
  {
LABEL_107:
    if ((v59 & 0x4000) == 0)
    {
      goto LABEL_108;
    }

    goto LABEL_163;
  }

LABEL_153:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v84 = *(a1 + 136);
  *v4 = 474;
  v85 = *(v84 + 20);
  if (v85 > 0x7F)
  {
    v4[2] = v85 | 0x80;
    v87 = v85 >> 7;
    if (v85 >> 14)
    {
      v86 = v4 + 4;
      do
      {
        *(v86 - 1) = v87 | 0x80;
        v88 = v87 >> 7;
        ++v86;
        v89 = v87 >> 14;
        v87 >>= 7;
      }

      while (v89);
      *(v86 - 1) = v88;
    }

    else
    {
      v4[3] = v87;
      v86 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v85;
    v86 = v4 + 3;
  }

  v4 = sub_2216D453C(v84, v86, a3);
  if ((v59 & 0x4000) == 0)
  {
LABEL_108:
    if ((v59 & 0x8000) == 0)
    {
      goto LABEL_109;
    }

    goto LABEL_173;
  }

LABEL_163:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v90 = *(a1 + 144);
  *v4 = 482;
  v91 = *(v90 + 20);
  if (v91 > 0x7F)
  {
    v4[2] = v91 | 0x80;
    v93 = v91 >> 7;
    if (v91 >> 14)
    {
      v92 = v4 + 4;
      do
      {
        *(v92 - 1) = v93 | 0x80;
        v94 = v93 >> 7;
        ++v92;
        v95 = v93 >> 14;
        v93 >>= 7;
      }

      while (v95);
      *(v92 - 1) = v94;
    }

    else
    {
      v4[3] = v93;
      v92 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v91;
    v92 = v4 + 3;
  }

  v4 = sub_2216D453C(v90, v92, a3);
  if ((v59 & 0x8000) == 0)
  {
LABEL_109:
    if ((v59 & 0x10000) == 0)
    {
      goto LABEL_110;
    }

    goto LABEL_183;
  }

LABEL_173:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v96 = *(a1 + 152);
  *v4 = 490;
  v97 = *(v96 + 20);
  if (v97 > 0x7F)
  {
    v4[2] = v97 | 0x80;
    v99 = v97 >> 7;
    if (v97 >> 14)
    {
      v98 = v4 + 4;
      do
      {
        *(v98 - 1) = v99 | 0x80;
        v100 = v99 >> 7;
        ++v98;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
      *(v98 - 1) = v100;
    }

    else
    {
      v4[3] = v99;
      v98 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v97;
    v98 = v4 + 3;
  }

  v4 = sub_2216D453C(v96, v98, a3);
  if ((v59 & 0x10000) == 0)
  {
LABEL_110:
    if ((v59 & 0x20000) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_193;
  }

LABEL_183:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v102 = *(a1 + 160);
  *v4 = 498;
  v103 = *(v102 + 20);
  if (v103 > 0x7F)
  {
    v4[2] = v103 | 0x80;
    v105 = v103 >> 7;
    if (v103 >> 14)
    {
      v104 = v4 + 4;
      do
      {
        *(v104 - 1) = v105 | 0x80;
        v106 = v105 >> 7;
        ++v104;
        v107 = v105 >> 14;
        v105 >>= 7;
      }

      while (v107);
      *(v104 - 1) = v106;
    }

    else
    {
      v4[3] = v105;
      v104 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v103;
    v104 = v4 + 3;
  }

  v4 = sub_2216D453C(v102, v104, a3);
  if ((v59 & 0x20000) == 0)
  {
LABEL_111:
    if ((v59 & 0x40000) == 0)
    {
      goto LABEL_213;
    }

    goto LABEL_203;
  }

LABEL_193:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v108 = *(a1 + 168);
  *v4 = 506;
  v109 = *(v108 + 20);
  if (v109 > 0x7F)
  {
    v4[2] = v109 | 0x80;
    v111 = v109 >> 7;
    if (v109 >> 14)
    {
      v110 = v4 + 4;
      do
      {
        *(v110 - 1) = v111 | 0x80;
        v112 = v111 >> 7;
        ++v110;
        v113 = v111 >> 14;
        v111 >>= 7;
      }

      while (v113);
      *(v110 - 1) = v112;
    }

    else
    {
      v4[3] = v111;
      v110 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v109;
    v110 = v4 + 3;
  }

  v4 = sub_2216D453C(v108, v110, a3);
  if ((v59 & 0x40000) != 0)
  {
LABEL_203:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v114 = *(a1 + 176);
    *v4 = 642;
    v115 = *(v114 + 20);
    if (v115 > 0x7F)
    {
      v4[2] = v115 | 0x80;
      v117 = v115 >> 7;
      if (v115 >> 14)
      {
        v116 = v4 + 4;
        do
        {
          *(v116 - 1) = v117 | 0x80;
          v118 = v117 >> 7;
          ++v116;
          v119 = v117 >> 14;
          v117 >>= 7;
        }

        while (v119);
        *(v116 - 1) = v118;
      }

      else
      {
        v4[3] = v117;
        v116 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v115;
      v116 = v4 + 3;
    }

    v4 = sub_2216D812C(v114, v116, a3);
  }

LABEL_213:
  v120 = *(a1 + 24);
  if ((v120 & 0x20) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v121 = *(a1 + 563);
    *v4 = 648;
    v4[2] = v121;
    v4 += 3;
    if ((v120 & 0x40) == 0)
    {
LABEL_215:
      if ((v120 & 0x80) == 0)
      {
        goto LABEL_216;
      }

      goto LABEL_228;
    }
  }

  else if ((v120 & 0x40) == 0)
  {
    goto LABEL_215;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v122 = *(a1 + 564);
  *v4 = 656;
  v4[2] = v122;
  v4 += 3;
  if ((v120 & 0x80) == 0)
  {
LABEL_216:
    if ((v120 & 0x100) == 0)
    {
      goto LABEL_217;
    }

    goto LABEL_231;
  }

LABEL_228:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v123 = *(a1 + 565);
  *v4 = 664;
  v4[2] = v123;
  v4 += 3;
  if ((v120 & 0x100) == 0)
  {
LABEL_217:
    if ((v120 & 0x200) == 0)
    {
      goto LABEL_218;
    }

    goto LABEL_234;
  }

LABEL_231:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v124 = *(a1 + 566);
  *v4 = 672;
  v4[2] = v124;
  v4 += 3;
  if ((v120 & 0x200) == 0)
  {
LABEL_218:
    if ((v120 & 0x800) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_237;
  }

LABEL_234:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v125 = *(a1 + 567);
  *v4 = 680;
  v4[2] = v125;
  v4 += 3;
  if ((v120 & 0x800) == 0)
  {
LABEL_219:
    if ((v120 & 0x1000) == 0)
    {
      goto LABEL_220;
    }

    goto LABEL_240;
  }

LABEL_237:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v126 = *(a1 + 572);
  *v4 = 688;
  v4[2] = v126;
  v4 += 3;
  if ((v120 & 0x1000) == 0)
  {
LABEL_220:
    if ((v120 & 0x400) == 0)
    {
      goto LABEL_252;
    }

    goto LABEL_243;
  }

LABEL_240:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v127 = *(a1 + 573);
  *v4 = 696;
  v4[2] = v127;
  v4 += 3;
  if ((v120 & 0x400) != 0)
  {
LABEL_243:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v128 = *(a1 + 568);
    *v4 = 704;
    if (v128 > 0x7F)
    {
      v4[2] = v128 | 0x80;
      v129 = v128 >> 7;
      if (v128 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v129 | 0x80;
          v130 = v129 >> 7;
          ++v4;
          v131 = v129 >> 14;
          v129 >>= 7;
        }

        while (v131);
        *(v4 - 1) = v130;
      }

      else
      {
        v4[3] = v129;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v128;
      v4 += 3;
    }
  }

LABEL_252:
  if (*(a1 + 16))
  {
    v4 = sub_22150C00C(a3, 41, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v132 = *(a1 + 24);
  if ((v132 & 0x2000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v133 = *(a1 + 574);
    *v4 = 720;
    v4[2] = v133;
    v4 += 3;
    if ((v132 & 0x4000) == 0)
    {
LABEL_256:
      if ((v132 & 0x8000) == 0)
      {
        goto LABEL_257;
      }

      goto LABEL_265;
    }
  }

  else if ((v132 & 0x4000) == 0)
  {
    goto LABEL_256;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v134 = *(a1 + 575);
  *v4 = 728;
  v4[2] = v134;
  v4 += 3;
  if ((v132 & 0x8000) == 0)
  {
LABEL_257:
    if ((v132 & 0x10000) == 0)
    {
      goto LABEL_277;
    }

    goto LABEL_268;
  }

LABEL_265:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v135 = *(a1 + 576);
  *v4 = 736;
  v4[2] = v135;
  v4 += 3;
  if ((v132 & 0x10000) != 0)
  {
LABEL_268:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v136 = *(a1 + 580);
    *v4 = 744;
    if (v136 > 0x7F)
    {
      v4[2] = v136 | 0x80;
      v137 = v136 >> 7;
      if (v136 >> 14)
      {
        v4 += 4;
        do
        {
          *(v4 - 1) = v137 | 0x80;
          v138 = v137 >> 7;
          ++v4;
          v139 = v137 >> 14;
          v137 >>= 7;
        }

        while (v139);
        *(v4 - 1) = v138;
      }

      else
      {
        v4[3] = v137;
        v4 += 4;
      }
    }

    else
    {
      v4[2] = v136;
      v4 += 3;
    }
  }

LABEL_277:
  v140 = *(a1 + 16);
  if ((v140 & 0x80000) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v141 = *(a1 + 184);
    *v4 = 754;
    v142 = *(v141 + 5);
    if (v142 > 0x7F)
    {
      v4[2] = v142 | 0x80;
      v144 = v142 >> 7;
      if (v142 >> 14)
      {
        v143 = v4 + 4;
        do
        {
          *(v143 - 1) = v144 | 0x80;
          v145 = v144 >> 7;
          ++v143;
          v146 = v144 >> 14;
          v144 >>= 7;
        }

        while (v146);
        *(v143 - 1) = v145;
      }

      else
      {
        v4[3] = v144;
        v143 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v142;
      v143 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v141, v143, a3);
    if ((v140 & 0x100000) == 0)
    {
LABEL_279:
      if ((v140 & 0x200000) == 0)
      {
        goto LABEL_280;
      }

      goto LABEL_311;
    }
  }

  else if ((v140 & 0x100000) == 0)
  {
    goto LABEL_279;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v147 = *(a1 + 192);
  *v4 = 762;
  v148 = *(v147 + 5);
  if (v148 > 0x7F)
  {
    v4[2] = v148 | 0x80;
    v150 = v148 >> 7;
    if (v148 >> 14)
    {
      v149 = v4 + 4;
      do
      {
        *(v149 - 1) = v150 | 0x80;
        v151 = v150 >> 7;
        ++v149;
        v152 = v150 >> 14;
        v150 >>= 7;
      }

      while (v152);
      *(v149 - 1) = v151;
    }

    else
    {
      v4[3] = v150;
      v149 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v148;
    v149 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v147, v149, a3);
  if ((v140 & 0x200000) == 0)
  {
LABEL_280:
    if ((v140 & 0x400000) == 0)
    {
      goto LABEL_281;
    }

    goto LABEL_321;
  }

LABEL_311:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v153 = *(a1 + 200);
  *v4 = 898;
  v154 = *(v153 + 5);
  if (v154 > 0x7F)
  {
    v4[2] = v154 | 0x80;
    v156 = v154 >> 7;
    if (v154 >> 14)
    {
      v155 = v4 + 4;
      do
      {
        *(v155 - 1) = v156 | 0x80;
        v157 = v156 >> 7;
        ++v155;
        v158 = v156 >> 14;
        v156 >>= 7;
      }

      while (v158);
      *(v155 - 1) = v157;
    }

    else
    {
      v4[3] = v156;
      v155 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v154;
    v155 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v153, v155, a3);
  if ((v140 & 0x400000) == 0)
  {
LABEL_281:
    if ((v140 & 0x800000) == 0)
    {
      goto LABEL_282;
    }

    goto LABEL_331;
  }

LABEL_321:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v159 = *(a1 + 208);
  *v4 = 906;
  v160 = *(v159 + 5);
  if (v160 > 0x7F)
  {
    v4[2] = v160 | 0x80;
    v162 = v160 >> 7;
    if (v160 >> 14)
    {
      v161 = v4 + 4;
      do
      {
        *(v161 - 1) = v162 | 0x80;
        v163 = v162 >> 7;
        ++v161;
        v164 = v162 >> 14;
        v162 >>= 7;
      }

      while (v164);
      *(v161 - 1) = v163;
    }

    else
    {
      v4[3] = v162;
      v161 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v160;
    v161 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v159, v161, a3);
  if ((v140 & 0x800000) == 0)
  {
LABEL_282:
    if ((v140 & 0x1000000) == 0)
    {
      goto LABEL_283;
    }

    goto LABEL_341;
  }

LABEL_331:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v165 = *(a1 + 216);
  *v4 = 914;
  v166 = *(v165 + 5);
  if (v166 > 0x7F)
  {
    v4[2] = v166 | 0x80;
    v168 = v166 >> 7;
    if (v166 >> 14)
    {
      v167 = v4 + 4;
      do
      {
        *(v167 - 1) = v168 | 0x80;
        v169 = v168 >> 7;
        ++v167;
        v170 = v168 >> 14;
        v168 >>= 7;
      }

      while (v170);
      *(v167 - 1) = v169;
    }

    else
    {
      v4[3] = v168;
      v167 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v166;
    v167 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v165, v167, a3);
  if ((v140 & 0x1000000) == 0)
  {
LABEL_283:
    if ((v140 & 0x2000000) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_351;
  }

LABEL_341:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v171 = *(a1 + 224);
  *v4 = 922;
  v172 = *(v171 + 5);
  if (v172 > 0x7F)
  {
    v4[2] = v172 | 0x80;
    v174 = v172 >> 7;
    if (v172 >> 14)
    {
      v173 = v4 + 4;
      do
      {
        *(v173 - 1) = v174 | 0x80;
        v175 = v174 >> 7;
        ++v173;
        v176 = v174 >> 14;
        v174 >>= 7;
      }

      while (v176);
      *(v173 - 1) = v175;
    }

    else
    {
      v4[3] = v174;
      v173 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v172;
    v173 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v171, v173, a3);
  if ((v140 & 0x2000000) == 0)
  {
LABEL_284:
    if ((v140 & 0x4000000) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_361;
  }

LABEL_351:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v177 = *(a1 + 232);
  *v4 = 930;
  v178 = *(v177 + 5);
  if (v178 > 0x7F)
  {
    v4[2] = v178 | 0x80;
    v180 = v178 >> 7;
    if (v178 >> 14)
    {
      v179 = v4 + 4;
      do
      {
        *(v179 - 1) = v180 | 0x80;
        v181 = v180 >> 7;
        ++v179;
        v182 = v180 >> 14;
        v180 >>= 7;
      }

      while (v182);
      *(v179 - 1) = v181;
    }

    else
    {
      v4[3] = v180;
      v179 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v178;
    v179 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v177, v179, a3);
  if ((v140 & 0x4000000) == 0)
  {
LABEL_285:
    if ((v140 & 0x8000000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_371;
  }

LABEL_361:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v183 = *(a1 + 240);
  *v4 = 938;
  v184 = *(v183 + 5);
  if (v184 > 0x7F)
  {
    v4[2] = v184 | 0x80;
    v186 = v184 >> 7;
    if (v184 >> 14)
    {
      v185 = v4 + 4;
      do
      {
        *(v185 - 1) = v186 | 0x80;
        v187 = v186 >> 7;
        ++v185;
        v188 = v186 >> 14;
        v186 >>= 7;
      }

      while (v188);
      *(v185 - 1) = v187;
    }

    else
    {
      v4[3] = v186;
      v185 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v184;
    v185 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v183, v185, a3);
  if ((v140 & 0x8000000) == 0)
  {
LABEL_286:
    if ((v140 & 0x10000000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_381;
  }

LABEL_371:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v189 = *(a1 + 248);
  *v4 = 946;
  v190 = *(v189 + 5);
  if (v190 > 0x7F)
  {
    v4[2] = v190 | 0x80;
    v192 = v190 >> 7;
    if (v190 >> 14)
    {
      v191 = v4 + 4;
      do
      {
        *(v191 - 1) = v192 | 0x80;
        v193 = v192 >> 7;
        ++v191;
        v194 = v192 >> 14;
        v192 >>= 7;
      }

      while (v194);
      *(v191 - 1) = v193;
    }

    else
    {
      v4[3] = v192;
      v191 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v190;
    v191 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v189, v191, a3);
  if ((v140 & 0x10000000) == 0)
  {
LABEL_287:
    if ((v140 & 0x20000000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_391;
  }

LABEL_381:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v195 = *(a1 + 256);
  *v4 = 954;
  v196 = *(v195 + 5);
  if (v196 > 0x7F)
  {
    v4[2] = v196 | 0x80;
    v198 = v196 >> 7;
    if (v196 >> 14)
    {
      v197 = v4 + 4;
      do
      {
        *(v197 - 1) = v198 | 0x80;
        v199 = v198 >> 7;
        ++v197;
        v200 = v198 >> 14;
        v198 >>= 7;
      }

      while (v200);
      *(v197 - 1) = v199;
    }

    else
    {
      v4[3] = v198;
      v197 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v196;
    v197 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v195, v197, a3);
  if ((v140 & 0x20000000) == 0)
  {
LABEL_288:
    if ((v140 & 0x40000000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_401;
  }

LABEL_391:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v201 = *(a1 + 264);
  *v4 = 962;
  v202 = *(v201 + 5);
  if (v202 > 0x7F)
  {
    v4[2] = v202 | 0x80;
    v204 = v202 >> 7;
    if (v202 >> 14)
    {
      v203 = v4 + 4;
      do
      {
        *(v203 - 1) = v204 | 0x80;
        v205 = v204 >> 7;
        ++v203;
        v206 = v204 >> 14;
        v204 >>= 7;
      }

      while (v206);
      *(v203 - 1) = v205;
    }

    else
    {
      v4[3] = v204;
      v203 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v202;
    v203 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v201, v203, a3);
  if ((v140 & 0x40000000) == 0)
  {
LABEL_289:
    if ((v140 & 0x80000000) == 0)
    {
      goto LABEL_421;
    }

    goto LABEL_411;
  }

LABEL_401:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v207 = *(a1 + 272);
  *v4 = 970;
  v208 = *(v207 + 5);
  if (v208 > 0x7F)
  {
    v4[2] = v208 | 0x80;
    v210 = v208 >> 7;
    if (v208 >> 14)
    {
      v209 = v4 + 4;
      do
      {
        *(v209 - 1) = v210 | 0x80;
        v211 = v210 >> 7;
        ++v209;
        v212 = v210 >> 14;
        v210 >>= 7;
      }

      while (v212);
      *(v209 - 1) = v211;
    }

    else
    {
      v4[3] = v210;
      v209 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v208;
    v209 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v207, v209, a3);
  if (v140 < 0)
  {
LABEL_411:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v213 = *(a1 + 280);
    *v4 = 978;
    v214 = *(v213 + 5);
    if (v214 > 0x7F)
    {
      v4[2] = v214 | 0x80;
      v216 = v214 >> 7;
      if (v214 >> 14)
      {
        v215 = v4 + 4;
        do
        {
          *(v215 - 1) = v216 | 0x80;
          v217 = v216 >> 7;
          ++v215;
          v218 = v216 >> 14;
          v216 >>= 7;
        }

        while (v218);
        *(v215 - 1) = v217;
      }

      else
      {
        v4[3] = v216;
        v215 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v214;
      v215 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v213, v215, a3);
  }

LABEL_421:
  v219 = *(a1 + 20);
  if (v219)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v220 = *(a1 + 288);
    *v4 = 986;
    v221 = *(v220 + 5);
    if (v221 > 0x7F)
    {
      v4[2] = v221 | 0x80;
      v223 = v221 >> 7;
      if (v221 >> 14)
      {
        v222 = v4 + 4;
        do
        {
          *(v222 - 1) = v223 | 0x80;
          v224 = v223 >> 7;
          ++v222;
          v225 = v223 >> 14;
          v223 >>= 7;
        }

        while (v225);
        *(v222 - 1) = v224;
      }

      else
      {
        v4[3] = v223;
        v222 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v221;
      v222 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v220, v222, a3);
    if ((v219 & 2) == 0)
    {
LABEL_423:
      if ((v219 & 4) == 0)
      {
        goto LABEL_424;
      }

      goto LABEL_474;
    }
  }

  else if ((v219 & 2) == 0)
  {
    goto LABEL_423;
  }

  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v226 = *(a1 + 296);
  *v4 = 994;
  v227 = *(v226 + 5);
  if (v227 > 0x7F)
  {
    v4[2] = v227 | 0x80;
    v229 = v227 >> 7;
    if (v227 >> 14)
    {
      v228 = v4 + 4;
      do
      {
        *(v228 - 1) = v229 | 0x80;
        v230 = v229 >> 7;
        ++v228;
        v231 = v229 >> 14;
        v229 >>= 7;
      }

      while (v231);
      *(v228 - 1) = v230;
    }

    else
    {
      v4[3] = v229;
      v228 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v227;
    v228 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v226, v228, a3);
  if ((v219 & 4) == 0)
  {
LABEL_424:
    if ((v219 & 8) == 0)
    {
      goto LABEL_425;
    }

    goto LABEL_484;
  }

LABEL_474:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v232 = *(a1 + 304);
  *v4 = 1002;
  v233 = *(v232 + 5);
  if (v233 > 0x7F)
  {
    v4[2] = v233 | 0x80;
    v235 = v233 >> 7;
    if (v233 >> 14)
    {
      v234 = v4 + 4;
      do
      {
        *(v234 - 1) = v235 | 0x80;
        v236 = v235 >> 7;
        ++v234;
        v237 = v235 >> 14;
        v235 >>= 7;
      }

      while (v237);
      *(v234 - 1) = v236;
    }

    else
    {
      v4[3] = v235;
      v234 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v233;
    v234 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v232, v234, a3);
  if ((v219 & 8) == 0)
  {
LABEL_425:
    if ((v219 & 0x10) == 0)
    {
      goto LABEL_426;
    }

    goto LABEL_494;
  }

LABEL_484:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v238 = *(a1 + 312);
  *v4 = 1010;
  v239 = *(v238 + 5);
  if (v239 > 0x7F)
  {
    v4[2] = v239 | 0x80;
    v241 = v239 >> 7;
    if (v239 >> 14)
    {
      v240 = v4 + 4;
      do
      {
        *(v240 - 1) = v241 | 0x80;
        v242 = v241 >> 7;
        ++v240;
        v243 = v241 >> 14;
        v241 >>= 7;
      }

      while (v243);
      *(v240 - 1) = v242;
    }

    else
    {
      v4[3] = v241;
      v240 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v239;
    v240 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v238, v240, a3);
  if ((v219 & 0x10) == 0)
  {
LABEL_426:
    if ((v219 & 0x20) == 0)
    {
      goto LABEL_427;
    }

    goto LABEL_504;
  }

LABEL_494:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v244 = *(a1 + 320);
  *v4 = 1018;
  v245 = *(v244 + 5);
  if (v245 > 0x7F)
  {
    v4[2] = v245 | 0x80;
    v247 = v245 >> 7;
    if (v245 >> 14)
    {
      v246 = v4 + 4;
      do
      {
        *(v246 - 1) = v247 | 0x80;
        v248 = v247 >> 7;
        ++v246;
        v249 = v247 >> 14;
        v247 >>= 7;
      }

      while (v249);
      *(v246 - 1) = v248;
    }

    else
    {
      v4[3] = v247;
      v246 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v245;
    v246 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v244, v246, a3);
  if ((v219 & 0x20) == 0)
  {
LABEL_427:
    if ((v219 & 0x40) == 0)
    {
      goto LABEL_428;
    }

    goto LABEL_514;
  }

LABEL_504:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v250 = *(a1 + 328);
  *v4 = 1154;
  v251 = *(v250 + 5);
  if (v251 > 0x7F)
  {
    v4[2] = v251 | 0x80;
    v253 = v251 >> 7;
    if (v251 >> 14)
    {
      v252 = v4 + 4;
      do
      {
        *(v252 - 1) = v253 | 0x80;
        v254 = v253 >> 7;
        ++v252;
        v255 = v253 >> 14;
        v253 >>= 7;
      }

      while (v255);
      *(v252 - 1) = v254;
    }

    else
    {
      v4[3] = v253;
      v252 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v251;
    v252 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v250, v252, a3);
  if ((v219 & 0x40) == 0)
  {
LABEL_428:
    if ((v219 & 0x80) == 0)
    {
      goto LABEL_429;
    }

    goto LABEL_524;
  }

LABEL_514:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v256 = *(a1 + 336);
  *v4 = 1162;
  v257 = *(v256 + 5);
  if (v257 > 0x7F)
  {
    v4[2] = v257 | 0x80;
    v259 = v257 >> 7;
    if (v257 >> 14)
    {
      v258 = v4 + 4;
      do
      {
        *(v258 - 1) = v259 | 0x80;
        v260 = v259 >> 7;
        ++v258;
        v261 = v259 >> 14;
        v259 >>= 7;
      }

      while (v261);
      *(v258 - 1) = v260;
    }

    else
    {
      v4[3] = v259;
      v258 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v257;
    v258 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v256, v258, a3);
  if ((v219 & 0x80) == 0)
  {
LABEL_429:
    if ((v219 & 0x100) == 0)
    {
      goto LABEL_430;
    }

    goto LABEL_534;
  }

LABEL_524:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v262 = *(a1 + 344);
  *v4 = 1170;
  v263 = *(v262 + 5);
  if (v263 > 0x7F)
  {
    v4[2] = v263 | 0x80;
    v265 = v263 >> 7;
    if (v263 >> 14)
    {
      v264 = v4 + 4;
      do
      {
        *(v264 - 1) = v265 | 0x80;
        v266 = v265 >> 7;
        ++v264;
        v267 = v265 >> 14;
        v265 >>= 7;
      }

      while (v267);
      *(v264 - 1) = v266;
    }

    else
    {
      v4[3] = v265;
      v264 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v263;
    v264 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v262, v264, a3);
  if ((v219 & 0x100) == 0)
  {
LABEL_430:
    if ((v219 & 0x200) == 0)
    {
      goto LABEL_431;
    }

    goto LABEL_544;
  }

LABEL_534:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v268 = *(a1 + 352);
  *v4 = 1178;
  v269 = *(v268 + 5);
  if (v269 > 0x7F)
  {
    v4[2] = v269 | 0x80;
    v271 = v269 >> 7;
    if (v269 >> 14)
    {
      v270 = v4 + 4;
      do
      {
        *(v270 - 1) = v271 | 0x80;
        v272 = v271 >> 7;
        ++v270;
        v273 = v271 >> 14;
        v271 >>= 7;
      }

      while (v273);
      *(v270 - 1) = v272;
    }

    else
    {
      v4[3] = v271;
      v270 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v269;
    v270 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v268, v270, a3);
  if ((v219 & 0x200) == 0)
  {
LABEL_431:
    if ((v219 & 0x400) == 0)
    {
      goto LABEL_432;
    }

    goto LABEL_554;
  }

LABEL_544:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v274 = *(a1 + 360);
  *v4 = 1186;
  v275 = *(v274 + 5);
  if (v275 > 0x7F)
  {
    v4[2] = v275 | 0x80;
    v277 = v275 >> 7;
    if (v275 >> 14)
    {
      v276 = v4 + 4;
      do
      {
        *(v276 - 1) = v277 | 0x80;
        v278 = v277 >> 7;
        ++v276;
        v279 = v277 >> 14;
        v277 >>= 7;
      }

      while (v279);
      *(v276 - 1) = v278;
    }

    else
    {
      v4[3] = v277;
      v276 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v275;
    v276 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v274, v276, a3);
  if ((v219 & 0x400) == 0)
  {
LABEL_432:
    if ((v219 & 0x800) == 0)
    {
      goto LABEL_433;
    }

    goto LABEL_564;
  }

LABEL_554:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v280 = *(a1 + 368);
  *v4 = 1194;
  v281 = *(v280 + 5);
  if (v281 > 0x7F)
  {
    v4[2] = v281 | 0x80;
    v283 = v281 >> 7;
    if (v281 >> 14)
    {
      v282 = v4 + 4;
      do
      {
        *(v282 - 1) = v283 | 0x80;
        v284 = v283 >> 7;
        ++v282;
        v285 = v283 >> 14;
        v283 >>= 7;
      }

      while (v285);
      *(v282 - 1) = v284;
    }

    else
    {
      v4[3] = v283;
      v282 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v281;
    v282 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v280, v282, a3);
  if ((v219 & 0x800) == 0)
  {
LABEL_433:
    if ((v219 & 0x1000) == 0)
    {
      goto LABEL_434;
    }

    goto LABEL_574;
  }

LABEL_564:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v286 = *(a1 + 376);
  *v4 = 1202;
  v287 = *(v286 + 5);
  if (v287 > 0x7F)
  {
    v4[2] = v287 | 0x80;
    v289 = v287 >> 7;
    if (v287 >> 14)
    {
      v288 = v4 + 4;
      do
      {
        *(v288 - 1) = v289 | 0x80;
        v290 = v289 >> 7;
        ++v288;
        v291 = v289 >> 14;
        v289 >>= 7;
      }

      while (v291);
      *(v288 - 1) = v290;
    }

    else
    {
      v4[3] = v289;
      v288 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v287;
    v288 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v286, v288, a3);
  if ((v219 & 0x1000) == 0)
  {
LABEL_434:
    if ((v219 & 0x2000) == 0)
    {
      goto LABEL_435;
    }

    goto LABEL_584;
  }

LABEL_574:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v292 = *(a1 + 384);
  *v4 = 1210;
  v293 = *(v292 + 5);
  if (v293 > 0x7F)
  {
    v4[2] = v293 | 0x80;
    v295 = v293 >> 7;
    if (v293 >> 14)
    {
      v294 = v4 + 4;
      do
      {
        *(v294 - 1) = v295 | 0x80;
        v296 = v295 >> 7;
        ++v294;
        v297 = v295 >> 14;
        v295 >>= 7;
      }

      while (v297);
      *(v294 - 1) = v296;
    }

    else
    {
      v4[3] = v295;
      v294 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v293;
    v294 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v292, v294, a3);
  if ((v219 & 0x2000) == 0)
  {
LABEL_435:
    if ((v219 & 0x4000) == 0)
    {
      goto LABEL_436;
    }

    goto LABEL_594;
  }

LABEL_584:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v298 = *(a1 + 392);
  *v4 = 1218;
  v299 = *(v298 + 5);
  if (v299 > 0x7F)
  {
    v4[2] = v299 | 0x80;
    v301 = v299 >> 7;
    if (v299 >> 14)
    {
      v300 = v4 + 4;
      do
      {
        *(v300 - 1) = v301 | 0x80;
        v302 = v301 >> 7;
        ++v300;
        v303 = v301 >> 14;
        v301 >>= 7;
      }

      while (v303);
      *(v300 - 1) = v302;
    }

    else
    {
      v4[3] = v301;
      v300 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v299;
    v300 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v298, v300, a3);
  if ((v219 & 0x4000) == 0)
  {
LABEL_436:
    if ((v219 & 0x8000) == 0)
    {
      goto LABEL_437;
    }

    goto LABEL_604;
  }

LABEL_594:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v304 = *(a1 + 400);
  *v4 = 1226;
  v305 = *(v304 + 5);
  if (v305 > 0x7F)
  {
    v4[2] = v305 | 0x80;
    v307 = v305 >> 7;
    if (v305 >> 14)
    {
      v306 = v4 + 4;
      do
      {
        *(v306 - 1) = v307 | 0x80;
        v308 = v307 >> 7;
        ++v306;
        v309 = v307 >> 14;
        v307 >>= 7;
      }

      while (v309);
      *(v306 - 1) = v308;
    }

    else
    {
      v4[3] = v307;
      v306 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v305;
    v306 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v304, v306, a3);
  if ((v219 & 0x8000) == 0)
  {
LABEL_437:
    if ((v219 & 0x10000) == 0)
    {
      goto LABEL_438;
    }

    goto LABEL_614;
  }

LABEL_604:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v310 = *(a1 + 408);
  *v4 = 1234;
  v311 = *(v310 + 5);
  if (v311 > 0x7F)
  {
    v4[2] = v311 | 0x80;
    v313 = v311 >> 7;
    if (v311 >> 14)
    {
      v312 = v4 + 4;
      do
      {
        *(v312 - 1) = v313 | 0x80;
        v314 = v313 >> 7;
        ++v312;
        v315 = v313 >> 14;
        v313 >>= 7;
      }

      while (v315);
      *(v312 - 1) = v314;
    }

    else
    {
      v4[3] = v313;
      v312 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v311;
    v312 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v310, v312, a3);
  if ((v219 & 0x10000) == 0)
  {
LABEL_438:
    if ((v219 & 0x20000) == 0)
    {
      goto LABEL_439;
    }

    goto LABEL_624;
  }

LABEL_614:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v316 = *(a1 + 416);
  *v4 = 1242;
  v317 = *(v316 + 5);
  if (v317 > 0x7F)
  {
    v4[2] = v317 | 0x80;
    v319 = v317 >> 7;
    if (v317 >> 14)
    {
      v318 = v4 + 4;
      do
      {
        *(v318 - 1) = v319 | 0x80;
        v320 = v319 >> 7;
        ++v318;
        v321 = v319 >> 14;
        v319 >>= 7;
      }

      while (v321);
      *(v318 - 1) = v320;
    }

    else
    {
      v4[3] = v319;
      v318 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v317;
    v318 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v316, v318, a3);
  if ((v219 & 0x20000) == 0)
  {
LABEL_439:
    if ((v219 & 0x40000) == 0)
    {
      goto LABEL_440;
    }

    goto LABEL_634;
  }

LABEL_624:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v322 = *(a1 + 424);
  *v4 = 1250;
  v323 = *(v322 + 5);
  if (v323 > 0x7F)
  {
    v4[2] = v323 | 0x80;
    v325 = v323 >> 7;
    if (v323 >> 14)
    {
      v324 = v4 + 4;
      do
      {
        *(v324 - 1) = v325 | 0x80;
        v326 = v325 >> 7;
        ++v324;
        v327 = v325 >> 14;
        v325 >>= 7;
      }

      while (v327);
      *(v324 - 1) = v326;
    }

    else
    {
      v4[3] = v325;
      v324 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v323;
    v324 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v322, v324, a3);
  if ((v219 & 0x40000) == 0)
  {
LABEL_440:
    if ((v219 & 0x80000) == 0)
    {
      goto LABEL_441;
    }

    goto LABEL_644;
  }

LABEL_634:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v328 = *(a1 + 432);
  *v4 = 1258;
  v329 = *(v328 + 5);
  if (v329 > 0x7F)
  {
    v4[2] = v329 | 0x80;
    v331 = v329 >> 7;
    if (v329 >> 14)
    {
      v330 = v4 + 4;
      do
      {
        *(v330 - 1) = v331 | 0x80;
        v332 = v331 >> 7;
        ++v330;
        v333 = v331 >> 14;
        v331 >>= 7;
      }

      while (v333);
      *(v330 - 1) = v332;
    }

    else
    {
      v4[3] = v331;
      v330 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v329;
    v330 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v328, v330, a3);
  if ((v219 & 0x80000) == 0)
  {
LABEL_441:
    if ((v219 & 0x100000) == 0)
    {
      goto LABEL_442;
    }

    goto LABEL_654;
  }

LABEL_644:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v334 = *(a1 + 440);
  *v4 = 1266;
  v335 = *(v334 + 5);
  if (v335 > 0x7F)
  {
    v4[2] = v335 | 0x80;
    v337 = v335 >> 7;
    if (v335 >> 14)
    {
      v336 = v4 + 4;
      do
      {
        *(v336 - 1) = v337 | 0x80;
        v338 = v337 >> 7;
        ++v336;
        v339 = v337 >> 14;
        v337 >>= 7;
      }

      while (v339);
      *(v336 - 1) = v338;
    }

    else
    {
      v4[3] = v337;
      v336 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v335;
    v336 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v334, v336, a3);
  if ((v219 & 0x100000) == 0)
  {
LABEL_442:
    if ((v219 & 0x200000) == 0)
    {
      goto LABEL_443;
    }

    goto LABEL_664;
  }

LABEL_654:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v340 = *(a1 + 448);
  *v4 = 1274;
  v341 = *(v340 + 5);
  if (v341 > 0x7F)
  {
    v4[2] = v341 | 0x80;
    v343 = v341 >> 7;
    if (v341 >> 14)
    {
      v342 = v4 + 4;
      do
      {
        *(v342 - 1) = v343 | 0x80;
        v344 = v343 >> 7;
        ++v342;
        v345 = v343 >> 14;
        v343 >>= 7;
      }

      while (v345);
      *(v342 - 1) = v344;
    }

    else
    {
      v4[3] = v343;
      v342 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v341;
    v342 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v340, v342, a3);
  if ((v219 & 0x200000) == 0)
  {
LABEL_443:
    if ((v219 & 0x400000) == 0)
    {
      goto LABEL_444;
    }

    goto LABEL_674;
  }

LABEL_664:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v346 = *(a1 + 456);
  *v4 = 1410;
  v347 = *(v346 + 5);
  if (v347 > 0x7F)
  {
    v4[2] = v347 | 0x80;
    v349 = v347 >> 7;
    if (v347 >> 14)
    {
      v348 = v4 + 4;
      do
      {
        *(v348 - 1) = v349 | 0x80;
        v350 = v349 >> 7;
        ++v348;
        v351 = v349 >> 14;
        v349 >>= 7;
      }

      while (v351);
      *(v348 - 1) = v350;
    }

    else
    {
      v4[3] = v349;
      v348 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v347;
    v348 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v346, v348, a3);
  if ((v219 & 0x400000) == 0)
  {
LABEL_444:
    if ((v219 & 0x800000) == 0)
    {
      goto LABEL_445;
    }

    goto LABEL_684;
  }

LABEL_674:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v352 = *(a1 + 464);
  *v4 = 1418;
  v353 = *(v352 + 5);
  if (v353 > 0x7F)
  {
    v4[2] = v353 | 0x80;
    v355 = v353 >> 7;
    if (v353 >> 14)
    {
      v354 = v4 + 4;
      do
      {
        *(v354 - 1) = v355 | 0x80;
        v356 = v355 >> 7;
        ++v354;
        v357 = v355 >> 14;
        v355 >>= 7;
      }

      while (v357);
      *(v354 - 1) = v356;
    }

    else
    {
      v4[3] = v355;
      v354 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v353;
    v354 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v352, v354, a3);
  if ((v219 & 0x800000) == 0)
  {
LABEL_445:
    if ((v219 & 0x1000000) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_694;
  }

LABEL_684:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v358 = *(a1 + 472);
  *v4 = 1426;
  v359 = *(v358 + 5);
  if (v359 > 0x7F)
  {
    v4[2] = v359 | 0x80;
    v361 = v359 >> 7;
    if (v359 >> 14)
    {
      v360 = v4 + 4;
      do
      {
        *(v360 - 1) = v361 | 0x80;
        v362 = v361 >> 7;
        ++v360;
        v363 = v361 >> 14;
        v361 >>= 7;
      }

      while (v363);
      *(v360 - 1) = v362;
    }

    else
    {
      v4[3] = v361;
      v360 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v359;
    v360 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v358, v360, a3);
  if ((v219 & 0x1000000) == 0)
  {
LABEL_446:
    if ((v219 & 0x2000000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_704;
  }

LABEL_694:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v364 = *(a1 + 480);
  *v4 = 1434;
  v365 = *(v364 + 5);
  if (v365 > 0x7F)
  {
    v4[2] = v365 | 0x80;
    v367 = v365 >> 7;
    if (v365 >> 14)
    {
      v366 = v4 + 4;
      do
      {
        *(v366 - 1) = v367 | 0x80;
        v368 = v367 >> 7;
        ++v366;
        v369 = v367 >> 14;
        v367 >>= 7;
      }

      while (v369);
      *(v366 - 1) = v368;
    }

    else
    {
      v4[3] = v367;
      v366 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v365;
    v366 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v364, v366, a3);
  if ((v219 & 0x2000000) == 0)
  {
LABEL_447:
    if ((v219 & 0x4000000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_714;
  }

LABEL_704:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v370 = *(a1 + 488);
  *v4 = 1442;
  v371 = *(v370 + 5);
  if (v371 > 0x7F)
  {
    v4[2] = v371 | 0x80;
    v373 = v371 >> 7;
    if (v371 >> 14)
    {
      v372 = v4 + 4;
      do
      {
        *(v372 - 1) = v373 | 0x80;
        v374 = v373 >> 7;
        ++v372;
        v375 = v373 >> 14;
        v373 >>= 7;
      }

      while (v375);
      *(v372 - 1) = v374;
    }

    else
    {
      v4[3] = v373;
      v372 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v371;
    v372 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v370, v372, a3);
  if ((v219 & 0x4000000) == 0)
  {
LABEL_448:
    if ((v219 & 0x8000000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_724;
  }

LABEL_714:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v376 = *(a1 + 496);
  *v4 = 1450;
  v377 = *(v376 + 5);
  if (v377 > 0x7F)
  {
    v4[2] = v377 | 0x80;
    v379 = v377 >> 7;
    if (v377 >> 14)
    {
      v378 = v4 + 4;
      do
      {
        *(v378 - 1) = v379 | 0x80;
        v380 = v379 >> 7;
        ++v378;
        v381 = v379 >> 14;
        v379 >>= 7;
      }

      while (v381);
      *(v378 - 1) = v380;
    }

    else
    {
      v4[3] = v379;
      v378 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v377;
    v378 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v376, v378, a3);
  if ((v219 & 0x8000000) == 0)
  {
LABEL_449:
    if ((v219 & 0x10000000) == 0)
    {
      goto LABEL_450;
    }

    goto LABEL_734;
  }

LABEL_724:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v382 = *(a1 + 504);
  *v4 = 1458;
  v383 = *(v382 + 5);
  if (v383 > 0x7F)
  {
    v4[2] = v383 | 0x80;
    v385 = v383 >> 7;
    if (v383 >> 14)
    {
      v384 = v4 + 4;
      do
      {
        *(v384 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v384;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      *(v384 - 1) = v386;
    }

    else
    {
      v4[3] = v385;
      v384 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v383;
    v384 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v382, v384, a3);
  if ((v219 & 0x10000000) == 0)
  {
LABEL_450:
    if ((v219 & 0x20000000) == 0)
    {
      goto LABEL_451;
    }

    goto LABEL_744;
  }

LABEL_734:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v388 = *(a1 + 512);
  *v4 = 1466;
  v389 = *(v388 + 5);
  if (v389 > 0x7F)
  {
    v4[2] = v389 | 0x80;
    v391 = v389 >> 7;
    if (v389 >> 14)
    {
      v390 = v4 + 4;
      do
      {
        *(v390 - 1) = v391 | 0x80;
        v392 = v391 >> 7;
        ++v390;
        v393 = v391 >> 14;
        v391 >>= 7;
      }

      while (v393);
      *(v390 - 1) = v392;
    }

    else
    {
      v4[3] = v391;
      v390 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v389;
    v390 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v388, v390, a3);
  if ((v219 & 0x20000000) == 0)
  {
LABEL_451:
    if ((v219 & 0x40000000) == 0)
    {
      goto LABEL_452;
    }

    goto LABEL_754;
  }

LABEL_744:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v394 = *(a1 + 520);
  *v4 = 1474;
  v395 = *(v394 + 5);
  if (v395 > 0x7F)
  {
    v4[2] = v395 | 0x80;
    v397 = v395 >> 7;
    if (v395 >> 14)
    {
      v396 = v4 + 4;
      do
      {
        *(v396 - 1) = v397 | 0x80;
        v398 = v397 >> 7;
        ++v396;
        v399 = v397 >> 14;
        v397 >>= 7;
      }

      while (v399);
      *(v396 - 1) = v398;
    }

    else
    {
      v4[3] = v397;
      v396 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v395;
    v396 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v394, v396, a3);
  if ((v219 & 0x40000000) == 0)
  {
LABEL_452:
    if ((v219 & 0x80000000) == 0)
    {
      goto LABEL_774;
    }

    goto LABEL_764;
  }

LABEL_754:
  if (*a3 <= v4)
  {
    v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
  }

  v400 = *(a1 + 528);
  *v4 = 1482;
  v401 = *(v400 + 5);
  if (v401 > 0x7F)
  {
    v4[2] = v401 | 0x80;
    v403 = v401 >> 7;
    if (v401 >> 14)
    {
      v402 = v4 + 4;
      do
      {
        *(v402 - 1) = v403 | 0x80;
        v404 = v403 >> 7;
        ++v402;
        v405 = v403 >> 14;
        v403 >>= 7;
      }

      while (v405);
      *(v402 - 1) = v404;
    }

    else
    {
      v4[3] = v403;
      v402 = v4 + 4;
    }
  }

  else
  {
    v4[2] = v401;
    v402 = v4 + 3;
  }

  v4 = TSD::StrokeArchive::_InternalSerialize(v400, v402, a3);
  if (v219 < 0)
  {
LABEL_764:
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v406 = *(a1 + 536);
    *v4 = 1490;
    v407 = *(v406 + 5);
    if (v407 > 0x7F)
    {
      v4[2] = v407 | 0x80;
      v409 = v407 >> 7;
      if (v407 >> 14)
      {
        v408 = v4 + 4;
        do
        {
          *(v408 - 1) = v409 | 0x80;
          v410 = v409 >> 7;
          ++v408;
          v411 = v409 >> 14;
          v409 >>= 7;
        }

        while (v411);
        *(v408 - 1) = v410;
      }

      else
      {
        v4[3] = v409;
        v408 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v407;
      v408 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v406, v408, a3);
  }

LABEL_774:
  v412 = *(a1 + 24);
  if (v412)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v413 = *(a1 + 544);
    *v4 = 1498;
    v414 = *(v413 + 5);
    if (v414 > 0x7F)
    {
      v4[2] = v414 | 0x80;
      v416 = v414 >> 7;
      if (v414 >> 14)
      {
        v415 = v4 + 4;
        do
        {
          *(v415 - 1) = v416 | 0x80;
          v417 = v416 >> 7;
          ++v415;
          v418 = v416 >> 14;
          v416 >>= 7;
        }

        while (v418);
        *(v415 - 1) = v417;
      }

      else
      {
        v4[3] = v416;
        v415 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v414;
      v415 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v413, v415, a3);
  }

  if ((v412 & 2) != 0)
  {
    if (*a3 <= v4)
    {
      v4 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, v4);
    }

    v419 = *(a1 + 552);
    *v4 = 1506;
    v420 = *(v419 + 5);
    if (v420 > 0x7F)
    {
      v4[2] = v420 | 0x80;
      v422 = v420 >> 7;
      if (v420 >> 14)
      {
        v421 = v4 + 4;
        do
        {
          *(v421 - 1) = v422 | 0x80;
          v423 = v422 >> 7;
          ++v421;
          v424 = v422 >> 14;
          v422 >>= 7;
        }

        while (v424);
        *(v421 - 1) = v423;
      }

      else
      {
        v4[3] = v422;
        v421 = v4 + 4;
      }
    }

    else
    {
      v4[2] = v420;
      v421 = v4 + 3;
    }

    v4 = TSD::StrokeArchive::_InternalSerialize(v419, v421, a3);
  }

  v425 = *(a1 + 8);
  if ((v425 & 1) == 0)
  {
    return v4;
  }

  return MEMORY[0x2821EAC40]((v425 & 0xFFFFFFFFFFFFFFFELL) + 8, v4, a3);
}

uint64_t sub_2216DE854(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_17;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v7 = TSD::FillArchive::ByteSizeLong(*(a1 + 40));
    v3 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
    goto LABEL_10;
  }

  v4 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
  v5 = *(v4 + 23);
  v6 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v6 = v5;
  }

  v3 = v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if ((v2 & 4) != 0)
  {
    v25 = sub_2216D46E4(*(a1 + 48));
    v3 += v25 + ((9 * (__clz(v25 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 8) == 0)
    {
LABEL_12:
      if ((v2 & 0x10) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_127;
    }
  }

  else if ((v2 & 8) == 0)
  {
    goto LABEL_12;
  }

  v26 = sub_2216D46E4(*(a1 + 56));
  v3 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x10) == 0)
  {
LABEL_13:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_128;
  }

LABEL_127:
  v27 = sub_2216D46E4(*(a1 + 64));
  v3 += v27 + ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x20) == 0)
  {
LABEL_14:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_129;
  }

LABEL_128:
  v28 = sub_2216D46E4(*(a1 + 72));
  v3 += v28 + ((9 * (__clz(v28 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x40) == 0)
  {
LABEL_15:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_129:
  v29 = sub_2216D46E4(*(a1 + 80));
  v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v2 & 0x80) != 0)
  {
LABEL_16:
    v8 = sub_2216D46E4(*(a1 + 88));
    v3 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_17:
  if ((v2 & 0xFF00) == 0)
  {
    goto LABEL_27;
  }

  if ((v2 & 0x100) != 0)
  {
    v30 = sub_2216D46E4(*(a1 + 96));
    v3 += v30 + ((9 * (__clz(v30 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 0x200) == 0)
    {
LABEL_20:
      if ((v2 & 0x400) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_133;
    }
  }

  else if ((v2 & 0x200) == 0)
  {
    goto LABEL_20;
  }

  v31 = sub_2216D46E4(*(a1 + 104));
  v3 += v31 + ((9 * (__clz(v31 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400) == 0)
  {
LABEL_21:
    if ((v2 & 0x800) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_134;
  }

LABEL_133:
  v32 = sub_2216D46E4(*(a1 + 112));
  v3 += v32 + ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800) == 0)
  {
LABEL_22:
    if ((v2 & 0x1000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_135;
  }

LABEL_134:
  v33 = sub_2216D46E4(*(a1 + 120));
  v3 += v33 + ((9 * (__clz(v33 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x1000) == 0)
  {
LABEL_23:
    if ((v2 & 0x2000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_136;
  }

LABEL_135:
  v34 = sub_2216D46E4(*(a1 + 128));
  v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x2000) == 0)
  {
LABEL_24:
    if ((v2 & 0x4000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_137;
  }

LABEL_136:
  v35 = sub_2216D46E4(*(a1 + 136));
  v3 += v35 + ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000) == 0)
  {
LABEL_25:
    if ((v2 & 0x8000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_137:
  v36 = sub_2216D46E4(*(a1 + 144));
  v3 += v36 + ((9 * (__clz(v36 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000) != 0)
  {
LABEL_26:
    v9 = sub_2216D46E4(*(a1 + 152));
    v3 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_27:
  if ((v2 & 0xFF0000) == 0)
  {
    goto LABEL_37;
  }

  if ((v2 & 0x10000) != 0)
  {
    v37 = sub_2216D46E4(*(a1 + 160));
    v3 += v37 + ((9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x20000) == 0)
    {
LABEL_30:
      if ((v2 & 0x40000) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_141;
    }
  }

  else if ((v2 & 0x20000) == 0)
  {
    goto LABEL_30;
  }

  v38 = sub_2216D46E4(*(a1 + 168));
  v3 += v38 + ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000) == 0)
  {
LABEL_31:
    if ((v2 & 0x80000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_142;
  }

LABEL_141:
  v39 = sub_2216D838C(*(a1 + 176));
  v3 += v39 + ((9 * (__clz(v39 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x80000) == 0)
  {
LABEL_32:
    if ((v2 & 0x100000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_143;
  }

LABEL_142:
  v40 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 184));
  v3 += v40 + ((9 * (__clz(v40 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x100000) == 0)
  {
LABEL_33:
    if ((v2 & 0x200000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_144;
  }

LABEL_143:
  v41 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 192));
  v3 += v41 + ((9 * (__clz(v41 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x200000) == 0)
  {
LABEL_34:
    if ((v2 & 0x400000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_145;
  }

LABEL_144:
  v42 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 200));
  v3 += v42 + ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x400000) == 0)
  {
LABEL_35:
    if ((v2 & 0x800000) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }

LABEL_145:
  v43 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 208));
  v3 += v43 + ((9 * (__clz(v43 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x800000) != 0)
  {
LABEL_36:
    v10 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 216));
    v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_37:
  if (!HIBYTE(v2))
  {
    goto LABEL_46;
  }

  if ((v2 & 0x1000000) != 0)
  {
    v65 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 224));
    v3 += v65 + ((9 * (__clz(v65 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x2000000) == 0)
    {
LABEL_40:
      if ((v2 & 0x4000000) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_173;
    }
  }

  else if ((v2 & 0x2000000) == 0)
  {
    goto LABEL_40;
  }

  v66 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 232));
  v3 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x4000000) == 0)
  {
LABEL_41:
    if ((v2 & 0x8000000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_174;
  }

LABEL_173:
  v67 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 240));
  v3 += v67 + ((9 * (__clz(v67 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x8000000) == 0)
  {
LABEL_42:
    if ((v2 & 0x10000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_175;
  }

LABEL_174:
  v68 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 248));
  v3 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x10000000) == 0)
  {
LABEL_43:
    if ((v2 & 0x20000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_176;
  }

LABEL_175:
  v69 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 256));
  v3 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x20000000) == 0)
  {
LABEL_44:
    if ((v2 & 0x40000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_177:
    v71 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 272));
    v3 += v71 + ((9 * (__clz(v71 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v2 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_178;
  }

LABEL_176:
  v70 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 264));
  v3 += v70 + ((9 * (__clz(v70 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v2 & 0x40000000) != 0)
  {
    goto LABEL_177;
  }

LABEL_45:
  if ((v2 & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

LABEL_178:
  v72 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 280));
  v3 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_46:
  v11 = *(a1 + 20);
  if (!v11)
  {
    goto LABEL_56;
  }

  if (v11)
  {
    v44 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 288));
    v3 += v44 + ((9 * (__clz(v44 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 2) == 0)
    {
LABEL_49:
      if ((v11 & 4) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_149;
    }
  }

  else if ((v11 & 2) == 0)
  {
    goto LABEL_49;
  }

  v45 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 296));
  v3 += v45 + ((9 * (__clz(v45 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 4) == 0)
  {
LABEL_50:
    if ((v11 & 8) == 0)
    {
      goto LABEL_51;
    }

    goto LABEL_150;
  }

LABEL_149:
  v46 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 304));
  v3 += v46 + ((9 * (__clz(v46 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 8) == 0)
  {
LABEL_51:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_151;
  }

LABEL_150:
  v47 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 312));
  v3 += v47 + ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10) == 0)
  {
LABEL_52:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_152;
  }

LABEL_151:
  v48 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 320));
  v3 += v48 + ((9 * (__clz(v48 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20) == 0)
  {
LABEL_53:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_153;
  }

LABEL_152:
  v49 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 328));
  v3 += v49 + ((9 * (__clz(v49 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40) == 0)
  {
LABEL_54:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

LABEL_153:
  v50 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 336));
  v3 += v50 + ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80) != 0)
  {
LABEL_55:
    v12 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 344));
    v3 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_56:
  if ((v11 & 0xFF00) == 0)
  {
    goto LABEL_66;
  }

  if ((v11 & 0x100) != 0)
  {
    v51 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 352));
    v3 += v51 + ((9 * (__clz(v51 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x200) == 0)
    {
LABEL_59:
      if ((v11 & 0x400) == 0)
      {
        goto LABEL_60;
      }

      goto LABEL_157;
    }
  }

  else if ((v11 & 0x200) == 0)
  {
    goto LABEL_59;
  }

  v52 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 360));
  v3 += v52 + ((9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400) == 0)
  {
LABEL_60:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_61;
    }

    goto LABEL_158;
  }

LABEL_157:
  v53 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 368));
  v3 += v53 + ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800) == 0)
  {
LABEL_61:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_159;
  }

LABEL_158:
  v54 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 376));
  v3 += v54 + ((9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x1000) == 0)
  {
LABEL_62:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_160;
  }

LABEL_159:
  v55 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 384));
  v3 += v55 + ((9 * (__clz(v55 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x2000) == 0)
  {
LABEL_63:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_161;
  }

LABEL_160:
  v56 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 392));
  v3 += v56 + ((9 * (__clz(v56 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000) == 0)
  {
LABEL_64:
    if ((v11 & 0x8000) == 0)
    {
      goto LABEL_66;
    }

    goto LABEL_65;
  }

LABEL_161:
  v57 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 400));
  v3 += v57 + ((9 * (__clz(v57 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000) != 0)
  {
LABEL_65:
    v13 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 408));
    v3 += v13 + ((9 * (__clz(v13 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_66:
  if ((v11 & 0xFF0000) == 0)
  {
    goto LABEL_76;
  }

  if ((v11 & 0x10000) != 0)
  {
    v58 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 416));
    v3 += v58 + ((9 * (__clz(v58 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x20000) == 0)
    {
LABEL_69:
      if ((v11 & 0x40000) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_165;
    }
  }

  else if ((v11 & 0x20000) == 0)
  {
    goto LABEL_69;
  }

  v59 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 424));
  v3 += v59 + ((9 * (__clz(v59 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000) == 0)
  {
LABEL_70:
    if ((v11 & 0x80000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_166;
  }

LABEL_165:
  v60 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 432));
  v3 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x80000) == 0)
  {
LABEL_71:
    if ((v11 & 0x100000) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_167;
  }

LABEL_166:
  v61 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 440));
  v3 += v61 + ((9 * (__clz(v61 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x100000) == 0)
  {
LABEL_72:
    if ((v11 & 0x200000) == 0)
    {
      goto LABEL_73;
    }

    goto LABEL_168;
  }

LABEL_167:
  v62 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 448));
  v3 += v62 + ((9 * (__clz(v62 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x200000) == 0)
  {
LABEL_73:
    if ((v11 & 0x400000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_169;
  }

LABEL_168:
  v63 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 456));
  v3 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x400000) == 0)
  {
LABEL_74:
    if ((v11 & 0x800000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_169:
  v64 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 464));
  v3 += v64 + ((9 * (__clz(v64 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x800000) != 0)
  {
LABEL_75:
    v14 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 472));
    v3 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_76:
  if (!HIBYTE(v11))
  {
    goto LABEL_85;
  }

  if ((v11 & 0x1000000) != 0)
  {
    v73 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 480));
    v3 += v73 + ((9 * (__clz(v73 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x2000000) == 0)
    {
LABEL_79:
      if ((v11 & 0x4000000) == 0)
      {
        goto LABEL_80;
      }

      goto LABEL_181;
    }
  }

  else if ((v11 & 0x2000000) == 0)
  {
    goto LABEL_79;
  }

  v74 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 488));
  v3 += v74 + ((9 * (__clz(v74 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x4000000) == 0)
  {
LABEL_80:
    if ((v11 & 0x8000000) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_182;
  }

LABEL_181:
  v75 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 496));
  v3 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x8000000) == 0)
  {
LABEL_81:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_82;
    }

    goto LABEL_183;
  }

LABEL_182:
  v76 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 504));
  v3 += v76 + ((9 * (__clz(v76 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x10000000) == 0)
  {
LABEL_82:
    if ((v11 & 0x20000000) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_184;
  }

LABEL_183:
  v77 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 512));
  v3 += v77 + ((9 * (__clz(v77 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x20000000) == 0)
  {
LABEL_83:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_84;
    }

LABEL_185:
    v79 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 528));
    v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v11 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_186;
  }

LABEL_184:
  v78 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 520));
  v3 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v11 & 0x40000000) != 0)
  {
    goto LABEL_185;
  }

LABEL_84:
  if ((v11 & 0x80000000) == 0)
  {
    goto LABEL_85;
  }

LABEL_186:
  v80 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 536));
  v3 += v80 + ((9 * (__clz(v80 | 1) ^ 0x1F) + 73) >> 6) + 2;
LABEL_85:
  v15 = *(a1 + 24);
  if (*(a1 + 24))
  {
    if (v15)
    {
      v16 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 544));
      v3 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    if ((v15 & 2) != 0)
    {
      v17 = TSD::StrokeArchive::ByteSizeLong(*(a1 + 552));
      v3 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v18 = v3 + ((v15 >> 1) & 2);
    if ((v15 & 8) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x10) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x20) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x40) != 0)
    {
      v18 += 3;
    }

    if ((v15 & 0x80) != 0)
    {
      v3 = v18 + 3;
    }

    else
    {
      v3 = v18;
    }
  }

  if ((v15 & 0xFF00) != 0)
  {
    v19 = v3 + 3;
    if ((v15 & 0x100) == 0)
    {
      v19 = v3;
    }

    if ((v15 & 0x200) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x400) != 0)
    {
      v20 = *(a1 + 568);
      v21 = ((9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v20 >= 0)
      {
        v22 = v21;
      }

      else
      {
        v22 = 12;
      }

      v19 += v22;
    }

    if ((v15 & 0x800) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x1000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x2000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x4000) != 0)
    {
      v19 += 3;
    }

    if ((v15 & 0x8000) != 0)
    {
      v3 = v19 + 3;
    }

    else
    {
      v3 = v19;
    }
  }

  if ((v15 & 0x10000) != 0)
  {
    v23 = *(a1 + 580);
    if (v23 < 0)
    {
      v24 = 12;
    }

    else
    {
      v24 = ((9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6) + 2;
    }

    v3 += v24;
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 28);
  }

  else
  {
    *(a1 + 28) = v3;
    return v3;
  }
}

uint64_t sub_2216DF794(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB30, 0);
  if (v4)
  {

    return sub_2216DF83C(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216DF83C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if (!v5)
  {
    goto LABEL_70;
  }

  if (v5)
  {
    *(v3 + 16) |= 1u;
    result = google::protobuf::internal::ArenaStringPtr::Set();
  }

  if ((v5 & 2) != 0)
  {
    *(v3 + 16) |= 2u;
    v6 = *(v3 + 40);
    if (!v6)
    {
      v7 = *(v3 + 8);
      if (v7)
      {
        v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
      }

      v6 = MEMORY[0x223DA0280](v7);
      *(v3 + 40) = v6;
    }

    if (*(a2 + 40))
    {
      v8 = *(a2 + 40);
    }

    else
    {
      v8 = MEMORY[0x277D80488];
    }

    result = TSD::FillArchive::MergeFrom(v6, v8);
  }

  if ((v5 & 4) != 0)
  {
    *(v3 + 16) |= 4u;
    v9 = *(v3 + 48);
    if (!v9)
    {
      v10 = *(v3 + 8);
      if (v10)
      {
        v10 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
      }

      v9 = sub_2216E2E04(v10);
      *(v3 + 48) = v9;
    }

    if (*(a2 + 48))
    {
      v11 = *(a2 + 48);
    }

    else
    {
      v11 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v9, v11);
    if ((v5 & 8) == 0)
    {
LABEL_17:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_38;
    }
  }

  else if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  *(v3 + 16) |= 8u;
  v12 = *(v3 + 56);
  if (!v12)
  {
    v13 = *(v3 + 8);
    if (v13)
    {
      v13 = *(v13 & 0xFFFFFFFFFFFFFFFELL);
    }

    v12 = sub_2216E2E04(v13);
    *(v3 + 56) = v12;
  }

  if (*(a2 + 56))
  {
    v14 = *(a2 + 56);
  }

  else
  {
    v14 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v12, v14);
  if ((v5 & 0x10) == 0)
  {
LABEL_18:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_19;
    }

LABEL_46:
    *(v3 + 16) |= 0x20u;
    v18 = *(v3 + 72);
    if (!v18)
    {
      v19 = *(v3 + 8);
      if (v19)
      {
        v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
      }

      v18 = sub_2216E2E04(v19);
      *(v3 + 72) = v18;
    }

    if (*(a2 + 72))
    {
      v20 = *(a2 + 72);
    }

    else
    {
      v20 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v18, v20);
    if ((v5 & 0x40) == 0)
    {
LABEL_20:
      if ((v5 & 0x80) == 0)
      {
        goto LABEL_70;
      }

      goto LABEL_62;
    }

    goto LABEL_54;
  }

LABEL_38:
  *(v3 + 16) |= 0x10u;
  v15 = *(v3 + 64);
  if (!v15)
  {
    v16 = *(v3 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    v15 = sub_2216E2E04(v16);
    *(v3 + 64) = v15;
  }

  if (*(a2 + 64))
  {
    v17 = *(a2 + 64);
  }

  else
  {
    v17 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v15, v17);
  if ((v5 & 0x20) != 0)
  {
    goto LABEL_46;
  }

LABEL_19:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_20;
  }

LABEL_54:
  *(v3 + 16) |= 0x40u;
  v21 = *(v3 + 80);
  if (!v21)
  {
    v22 = *(v3 + 8);
    if (v22)
    {
      v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
    }

    v21 = sub_2216E2E04(v22);
    *(v3 + 80) = v21;
  }

  if (*(a2 + 80))
  {
    v23 = *(a2 + 80);
  }

  else
  {
    v23 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v21, v23);
  if ((v5 & 0x80) != 0)
  {
LABEL_62:
    *(v3 + 16) |= 0x80u;
    v24 = *(v3 + 88);
    if (!v24)
    {
      v25 = *(v3 + 8);
      if (v25)
      {
        v25 = *(v25 & 0xFFFFFFFFFFFFFFFELL);
      }

      v24 = sub_2216E2E04(v25);
      *(v3 + 88) = v24;
    }

    if (*(a2 + 88))
    {
      v26 = *(a2 + 88);
    }

    else
    {
      v26 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v24, v26);
  }

LABEL_70:
  if ((v5 & 0xFF00) == 0)
  {
    goto LABEL_144;
  }

  if ((v5 & 0x100) != 0)
  {
    *(v3 + 16) |= 0x100u;
    v27 = *(v3 + 96);
    if (!v27)
    {
      v28 = *(v3 + 8);
      if (v28)
      {
        v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
      }

      v27 = sub_2216E2E04(v28);
      *(v3 + 96) = v27;
    }

    if (*(a2 + 96))
    {
      v29 = *(a2 + 96);
    }

    else
    {
      v29 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v27, v29);
    if ((v5 & 0x200) == 0)
    {
LABEL_73:
      if ((v5 & 0x400) == 0)
      {
        goto LABEL_74;
      }

      goto LABEL_96;
    }
  }

  else if ((v5 & 0x200) == 0)
  {
    goto LABEL_73;
  }

  *(v3 + 16) |= 0x200u;
  v30 = *(v3 + 104);
  if (!v30)
  {
    v31 = *(v3 + 8);
    if (v31)
    {
      v31 = *(v31 & 0xFFFFFFFFFFFFFFFELL);
    }

    v30 = sub_2216E2E04(v31);
    *(v3 + 104) = v30;
  }

  if (*(a2 + 104))
  {
    v32 = *(a2 + 104);
  }

  else
  {
    v32 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v30, v32);
  if ((v5 & 0x400) == 0)
  {
LABEL_74:
    if ((v5 & 0x800) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

LABEL_96:
  *(v3 + 16) |= 0x400u;
  v33 = *(v3 + 112);
  if (!v33)
  {
    v34 = *(v3 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    v33 = sub_2216E2E04(v34);
    *(v3 + 112) = v33;
  }

  if (*(a2 + 112))
  {
    v35 = *(a2 + 112);
  }

  else
  {
    v35 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v33, v35);
  if ((v5 & 0x800) == 0)
  {
LABEL_75:
    if ((v5 & 0x1000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_112;
  }

LABEL_104:
  *(v3 + 16) |= 0x800u;
  v36 = *(v3 + 120);
  if (!v36)
  {
    v37 = *(v3 + 8);
    if (v37)
    {
      v37 = *(v37 & 0xFFFFFFFFFFFFFFFELL);
    }

    v36 = sub_2216E2E04(v37);
    *(v3 + 120) = v36;
  }

  if (*(a2 + 120))
  {
    v38 = *(a2 + 120);
  }

  else
  {
    v38 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v36, v38);
  if ((v5 & 0x1000) == 0)
  {
LABEL_76:
    if ((v5 & 0x2000) == 0)
    {
      goto LABEL_77;
    }

    goto LABEL_120;
  }

LABEL_112:
  *(v3 + 16) |= 0x1000u;
  v39 = *(v3 + 128);
  if (!v39)
  {
    v40 = *(v3 + 8);
    if (v40)
    {
      v40 = *(v40 & 0xFFFFFFFFFFFFFFFELL);
    }

    v39 = sub_2216E2E04(v40);
    *(v3 + 128) = v39;
  }

  if (*(a2 + 128))
  {
    v41 = *(a2 + 128);
  }

  else
  {
    v41 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v39, v41);
  if ((v5 & 0x2000) == 0)
  {
LABEL_77:
    if ((v5 & 0x4000) == 0)
    {
      goto LABEL_78;
    }

    goto LABEL_128;
  }

LABEL_120:
  *(v3 + 16) |= 0x2000u;
  v42 = *(v3 + 136);
  if (!v42)
  {
    v43 = *(v3 + 8);
    if (v43)
    {
      v43 = *(v43 & 0xFFFFFFFFFFFFFFFELL);
    }

    v42 = sub_2216E2E04(v43);
    *(v3 + 136) = v42;
  }

  if (*(a2 + 136))
  {
    v44 = *(a2 + 136);
  }

  else
  {
    v44 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v42, v44);
  if ((v5 & 0x4000) == 0)
  {
LABEL_78:
    if ((v5 & 0x8000) == 0)
    {
      goto LABEL_144;
    }

    goto LABEL_136;
  }

LABEL_128:
  *(v3 + 16) |= 0x4000u;
  v45 = *(v3 + 144);
  if (!v45)
  {
    v46 = *(v3 + 8);
    if (v46)
    {
      v46 = *(v46 & 0xFFFFFFFFFFFFFFFELL);
    }

    v45 = sub_2216E2E04(v46);
    *(v3 + 144) = v45;
  }

  if (*(a2 + 144))
  {
    v47 = *(a2 + 144);
  }

  else
  {
    v47 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v45, v47);
  if ((v5 & 0x8000) != 0)
  {
LABEL_136:
    *(v3 + 16) |= 0x8000u;
    v48 = *(v3 + 152);
    if (!v48)
    {
      v49 = *(v3 + 8);
      if (v49)
      {
        v49 = *(v49 & 0xFFFFFFFFFFFFFFFELL);
      }

      v48 = sub_2216E2E04(v49);
      *(v3 + 152) = v48;
    }

    if (*(a2 + 152))
    {
      v50 = *(a2 + 152);
    }

    else
    {
      v50 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v48, v50);
  }

LABEL_144:
  if ((v5 & 0xFF0000) == 0)
  {
    goto LABEL_219;
  }

  if ((v5 & 0x10000) != 0)
  {
    *(v3 + 16) |= 0x10000u;
    v51 = *(v3 + 160);
    if (!v51)
    {
      v52 = *(v3 + 8);
      if (v52)
      {
        v52 = *(v52 & 0xFFFFFFFFFFFFFFFELL);
      }

      v51 = sub_2216E2E04(v52);
      *(v3 + 160) = v51;
    }

    if (*(a2 + 160))
    {
      v53 = *(a2 + 160);
    }

    else
    {
      v53 = &qword_2812E9B08;
    }

    result = sub_2216D484C(v51, v53);
    if ((v5 & 0x20000) == 0)
    {
LABEL_147:
      if ((v5 & 0x40000) == 0)
      {
        goto LABEL_173;
      }

      goto LABEL_165;
    }
  }

  else if ((v5 & 0x20000) == 0)
  {
    goto LABEL_147;
  }

  *(v3 + 16) |= 0x20000u;
  v54 = *(v3 + 168);
  if (!v54)
  {
    v55 = *(v3 + 8);
    if (v55)
    {
      v55 = *(v55 & 0xFFFFFFFFFFFFFFFELL);
    }

    v54 = sub_2216E2E04(v55);
    *(v3 + 168) = v54;
  }

  if (*(a2 + 168))
  {
    v56 = *(a2 + 168);
  }

  else
  {
    v56 = &qword_2812E9B08;
  }

  result = sub_2216D484C(v54, v56);
  if ((v5 & 0x40000) != 0)
  {
LABEL_165:
    *(v3 + 16) |= 0x40000u;
    v57 = *(v3 + 176);
    if (!v57)
    {
      v58 = *(v3 + 8);
      if (v58)
      {
        v58 = *(v58 & 0xFFFFFFFFFFFFFFFELL);
      }

      v57 = sub_2216E3160(v58);
      *(v3 + 176) = v57;
    }

    if (*(a2 + 176))
    {
      v59 = *(a2 + 176);
    }

    else
    {
      v59 = &unk_2812E9C10;
    }

    result = sub_2216D8574(v57, v59);
  }

LABEL_173:
  v60 = MEMORY[0x277D804A0];
  if ((v5 & 0x80000) != 0)
  {
    *(v3 + 16) |= 0x80000u;
    v61 = *(v3 + 184);
    if (!v61)
    {
      v62 = *(v3 + 8);
      if (v62)
      {
        v62 = *(v62 & 0xFFFFFFFFFFFFFFFELL);
      }

      v61 = MEMORY[0x223DA0290](v62);
      *(v3 + 184) = v61;
    }

    if (*(a2 + 184))
    {
      v63 = *(a2 + 184);
    }

    else
    {
      v63 = v60;
    }

    result = TSD::StrokeArchive::MergeFrom(v61, v63);
    if ((v5 & 0x100000) == 0)
    {
LABEL_175:
      if ((v5 & 0x200000) == 0)
      {
        goto LABEL_176;
      }

      goto LABEL_195;
    }
  }

  else if ((v5 & 0x100000) == 0)
  {
    goto LABEL_175;
  }

  *(v3 + 16) |= 0x100000u;
  v64 = *(v3 + 192);
  if (!v64)
  {
    v65 = *(v3 + 8);
    if (v65)
    {
      v65 = *(v65 & 0xFFFFFFFFFFFFFFFELL);
    }

    v64 = MEMORY[0x223DA0290](v65);
    *(v3 + 192) = v64;
  }

  if (*(a2 + 192))
  {
    v66 = *(a2 + 192);
  }

  else
  {
    v66 = v60;
  }

  result = TSD::StrokeArchive::MergeFrom(v64, v66);
  if ((v5 & 0x200000) == 0)
  {
LABEL_176:
    if ((v5 & 0x400000) == 0)
    {
      goto LABEL_177;
    }

    goto LABEL_203;
  }

LABEL_195:
  *(v3 + 16) |= 0x200000u;
  v67 = *(v3 + 200);
  if (!v67)
  {
    v68 = *(v3 + 8);
    if (v68)
    {
      v68 = *(v68 & 0xFFFFFFFFFFFFFFFELL);
    }

    v67 = MEMORY[0x223DA0290](v68);
    *(v3 + 200) = v67;
  }

  if (*(a2 + 200))
  {
    v69 = *(a2 + 200);
  }

  else
  {
    v69 = v60;
  }

  result = TSD::StrokeArchive::MergeFrom(v67, v69);
  if ((v5 & 0x400000) == 0)
  {
LABEL_177:
    if ((v5 & 0x800000) == 0)
    {
      goto LABEL_219;
    }

    goto LABEL_211;
  }

LABEL_203:
  *(v3 + 16) |= 0x400000u;
  v70 = *(v3 + 208);
  if (!v70)
  {
    v71 = *(v3 + 8);
    if (v71)
    {
      v71 = *(v71 & 0xFFFFFFFFFFFFFFFELL);
    }

    v70 = MEMORY[0x223DA0290](v71);
    *(v3 + 208) = v70;
  }

  if (*(a2 + 208))
  {
    v72 = *(a2 + 208);
  }

  else
  {
    v72 = v60;
  }

  result = TSD::StrokeArchive::MergeFrom(v70, v72);
  if ((v5 & 0x800000) != 0)
  {
LABEL_211:
    *(v3 + 16) |= 0x800000u;
    v73 = *(v3 + 216);
    if (!v73)
    {
      v74 = *(v3 + 8);
      if (v74)
      {
        v74 = *(v74 & 0xFFFFFFFFFFFFFFFELL);
      }

      v73 = MEMORY[0x223DA0290](v74);
      *(v3 + 216) = v73;
    }

    if (*(a2 + 216))
    {
      v75 = *(a2 + 216);
    }

    else
    {
      v75 = v60;
    }

    result = TSD::StrokeArchive::MergeFrom(v73, v75);
  }

LABEL_219:
  if (!HIBYTE(v5))
  {
    goto LABEL_293;
  }

  if ((v5 & 0x1000000) != 0)
  {
    *(v3 + 16) |= 0x1000000u;
    v76 = *(v3 + 224);
    if (!v76)
    {
      v77 = *(v3 + 8);
      if (v77)
      {
        v77 = *(v77 & 0xFFFFFFFFFFFFFFFELL);
      }

      v76 = MEMORY[0x223DA0290](v77);
      *(v3 + 224) = v76;
    }

    if (*(a2 + 224))
    {
      v78 = *(a2 + 224);
    }

    else
    {
      v78 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v76, v78);
    if ((v5 & 0x2000000) == 0)
    {
LABEL_222:
      if ((v5 & 0x4000000) == 0)
      {
        goto LABEL_223;
      }

      goto LABEL_245;
    }
  }

  else if ((v5 & 0x2000000) == 0)
  {
    goto LABEL_222;
  }

  *(v3 + 16) |= 0x2000000u;
  v79 = *(v3 + 232);
  if (!v79)
  {
    v80 = *(v3 + 8);
    if (v80)
    {
      v80 = *(v80 & 0xFFFFFFFFFFFFFFFELL);
    }

    v79 = MEMORY[0x223DA0290](v80);
    *(v3 + 232) = v79;
  }

  if (*(a2 + 232))
  {
    v81 = *(a2 + 232);
  }

  else
  {
    v81 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v79, v81);
  if ((v5 & 0x4000000) == 0)
  {
LABEL_223:
    if ((v5 & 0x8000000) == 0)
    {
      goto LABEL_224;
    }

    goto LABEL_253;
  }

LABEL_245:
  *(v3 + 16) |= 0x4000000u;
  v82 = *(v3 + 240);
  if (!v82)
  {
    v83 = *(v3 + 8);
    if (v83)
    {
      v83 = *(v83 & 0xFFFFFFFFFFFFFFFELL);
    }

    v82 = MEMORY[0x223DA0290](v83);
    *(v3 + 240) = v82;
  }

  if (*(a2 + 240))
  {
    v84 = *(a2 + 240);
  }

  else
  {
    v84 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v82, v84);
  if ((v5 & 0x8000000) == 0)
  {
LABEL_224:
    if ((v5 & 0x10000000) == 0)
    {
      goto LABEL_225;
    }

    goto LABEL_261;
  }

LABEL_253:
  *(v3 + 16) |= 0x8000000u;
  v85 = *(v3 + 248);
  if (!v85)
  {
    v86 = *(v3 + 8);
    if (v86)
    {
      v86 = *(v86 & 0xFFFFFFFFFFFFFFFELL);
    }

    v85 = MEMORY[0x223DA0290](v86);
    *(v3 + 248) = v85;
  }

  if (*(a2 + 248))
  {
    v87 = *(a2 + 248);
  }

  else
  {
    v87 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v85, v87);
  if ((v5 & 0x10000000) == 0)
  {
LABEL_225:
    if ((v5 & 0x20000000) == 0)
    {
      goto LABEL_226;
    }

    goto LABEL_269;
  }

LABEL_261:
  *(v3 + 16) |= 0x10000000u;
  v88 = *(v3 + 256);
  if (!v88)
  {
    v89 = *(v3 + 8);
    if (v89)
    {
      v89 = *(v89 & 0xFFFFFFFFFFFFFFFELL);
    }

    v88 = MEMORY[0x223DA0290](v89);
    *(v3 + 256) = v88;
  }

  if (*(a2 + 256))
  {
    v90 = *(a2 + 256);
  }

  else
  {
    v90 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v88, v90);
  if ((v5 & 0x20000000) == 0)
  {
LABEL_226:
    if ((v5 & 0x40000000) == 0)
    {
      goto LABEL_227;
    }

    goto LABEL_277;
  }

LABEL_269:
  *(v3 + 16) |= 0x20000000u;
  v91 = *(v3 + 264);
  if (!v91)
  {
    v92 = *(v3 + 8);
    if (v92)
    {
      v92 = *(v92 & 0xFFFFFFFFFFFFFFFELL);
    }

    v91 = MEMORY[0x223DA0290](v92);
    *(v3 + 264) = v91;
  }

  if (*(a2 + 264))
  {
    v93 = *(a2 + 264);
  }

  else
  {
    v93 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v91, v93);
  if ((v5 & 0x40000000) == 0)
  {
LABEL_227:
    if ((v5 & 0x80000000) == 0)
    {
      goto LABEL_293;
    }

    goto LABEL_285;
  }

LABEL_277:
  *(v3 + 16) |= 0x40000000u;
  v94 = *(v3 + 272);
  if (!v94)
  {
    v95 = *(v3 + 8);
    if (v95)
    {
      v95 = *(v95 & 0xFFFFFFFFFFFFFFFELL);
    }

    v94 = MEMORY[0x223DA0290](v95);
    *(v3 + 272) = v94;
  }

  if (*(a2 + 272))
  {
    v96 = *(a2 + 272);
  }

  else
  {
    v96 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v94, v96);
  if ((v5 & 0x80000000) != 0)
  {
LABEL_285:
    *(v3 + 16) |= 0x80000000;
    v97 = *(v3 + 280);
    if (!v97)
    {
      v98 = *(v3 + 8);
      if (v98)
      {
        v98 = *(v98 & 0xFFFFFFFFFFFFFFFELL);
      }

      v97 = MEMORY[0x223DA0290](v98);
      *(v3 + 280) = v97;
    }

    if (*(a2 + 280))
    {
      v99 = *(a2 + 280);
    }

    else
    {
      v99 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v97, v99);
  }

LABEL_293:
  v100 = *(a2 + 20);
  if (!v100)
  {
    goto LABEL_367;
  }

  if (v100)
  {
    *(v3 + 20) |= 1u;
    v101 = *(v3 + 288);
    if (!v101)
    {
      v102 = *(v3 + 8);
      if (v102)
      {
        v102 = *(v102 & 0xFFFFFFFFFFFFFFFELL);
      }

      v101 = MEMORY[0x223DA0290](v102);
      *(v3 + 288) = v101;
    }

    if (*(a2 + 288))
    {
      v103 = *(a2 + 288);
    }

    else
    {
      v103 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v101, v103);
    if ((v100 & 2) == 0)
    {
LABEL_296:
      if ((v100 & 4) == 0)
      {
        goto LABEL_297;
      }

      goto LABEL_319;
    }
  }

  else if ((v100 & 2) == 0)
  {
    goto LABEL_296;
  }

  *(v3 + 20) |= 2u;
  v104 = *(v3 + 296);
  if (!v104)
  {
    v105 = *(v3 + 8);
    if (v105)
    {
      v105 = *(v105 & 0xFFFFFFFFFFFFFFFELL);
    }

    v104 = MEMORY[0x223DA0290](v105);
    *(v3 + 296) = v104;
  }

  if (*(a2 + 296))
  {
    v106 = *(a2 + 296);
  }

  else
  {
    v106 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v104, v106);
  if ((v100 & 4) == 0)
  {
LABEL_297:
    if ((v100 & 8) == 0)
    {
      goto LABEL_298;
    }

    goto LABEL_327;
  }

LABEL_319:
  *(v3 + 20) |= 4u;
  v107 = *(v3 + 304);
  if (!v107)
  {
    v108 = *(v3 + 8);
    if (v108)
    {
      v108 = *(v108 & 0xFFFFFFFFFFFFFFFELL);
    }

    v107 = MEMORY[0x223DA0290](v108);
    *(v3 + 304) = v107;
  }

  if (*(a2 + 304))
  {
    v109 = *(a2 + 304);
  }

  else
  {
    v109 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v107, v109);
  if ((v100 & 8) == 0)
  {
LABEL_298:
    if ((v100 & 0x10) == 0)
    {
      goto LABEL_299;
    }

    goto LABEL_335;
  }

LABEL_327:
  *(v3 + 20) |= 8u;
  v110 = *(v3 + 312);
  if (!v110)
  {
    v111 = *(v3 + 8);
    if (v111)
    {
      v111 = *(v111 & 0xFFFFFFFFFFFFFFFELL);
    }

    v110 = MEMORY[0x223DA0290](v111);
    *(v3 + 312) = v110;
  }

  if (*(a2 + 312))
  {
    v112 = *(a2 + 312);
  }

  else
  {
    v112 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v110, v112);
  if ((v100 & 0x10) == 0)
  {
LABEL_299:
    if ((v100 & 0x20) == 0)
    {
      goto LABEL_300;
    }

    goto LABEL_343;
  }

LABEL_335:
  *(v3 + 20) |= 0x10u;
  v113 = *(v3 + 320);
  if (!v113)
  {
    v114 = *(v3 + 8);
    if (v114)
    {
      v114 = *(v114 & 0xFFFFFFFFFFFFFFFELL);
    }

    v113 = MEMORY[0x223DA0290](v114);
    *(v3 + 320) = v113;
  }

  if (*(a2 + 320))
  {
    v115 = *(a2 + 320);
  }

  else
  {
    v115 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v113, v115);
  if ((v100 & 0x20) == 0)
  {
LABEL_300:
    if ((v100 & 0x40) == 0)
    {
      goto LABEL_301;
    }

    goto LABEL_351;
  }

LABEL_343:
  *(v3 + 20) |= 0x20u;
  v116 = *(v3 + 328);
  if (!v116)
  {
    v117 = *(v3 + 8);
    if (v117)
    {
      v117 = *(v117 & 0xFFFFFFFFFFFFFFFELL);
    }

    v116 = MEMORY[0x223DA0290](v117);
    *(v3 + 328) = v116;
  }

  if (*(a2 + 328))
  {
    v118 = *(a2 + 328);
  }

  else
  {
    v118 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v116, v118);
  if ((v100 & 0x40) == 0)
  {
LABEL_301:
    if ((v100 & 0x80) == 0)
    {
      goto LABEL_367;
    }

    goto LABEL_359;
  }

LABEL_351:
  *(v3 + 20) |= 0x40u;
  v119 = *(v3 + 336);
  if (!v119)
  {
    v120 = *(v3 + 8);
    if (v120)
    {
      v120 = *(v120 & 0xFFFFFFFFFFFFFFFELL);
    }

    v119 = MEMORY[0x223DA0290](v120);
    *(v3 + 336) = v119;
  }

  if (*(a2 + 336))
  {
    v121 = *(a2 + 336);
  }

  else
  {
    v121 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v119, v121);
  if ((v100 & 0x80) != 0)
  {
LABEL_359:
    *(v3 + 20) |= 0x80u;
    v122 = *(v3 + 344);
    if (!v122)
    {
      v123 = *(v3 + 8);
      if (v123)
      {
        v123 = *(v123 & 0xFFFFFFFFFFFFFFFELL);
      }

      v122 = MEMORY[0x223DA0290](v123);
      *(v3 + 344) = v122;
    }

    if (*(a2 + 344))
    {
      v124 = *(a2 + 344);
    }

    else
    {
      v124 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v122, v124);
  }

LABEL_367:
  if ((v100 & 0xFF00) == 0)
  {
    goto LABEL_441;
  }

  if ((v100 & 0x100) != 0)
  {
    *(v3 + 20) |= 0x100u;
    v125 = *(v3 + 352);
    if (!v125)
    {
      v126 = *(v3 + 8);
      if (v126)
      {
        v126 = *(v126 & 0xFFFFFFFFFFFFFFFELL);
      }

      v125 = MEMORY[0x223DA0290](v126);
      *(v3 + 352) = v125;
    }

    if (*(a2 + 352))
    {
      v127 = *(a2 + 352);
    }

    else
    {
      v127 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v125, v127);
    if ((v100 & 0x200) == 0)
    {
LABEL_370:
      if ((v100 & 0x400) == 0)
      {
        goto LABEL_371;
      }

      goto LABEL_393;
    }
  }

  else if ((v100 & 0x200) == 0)
  {
    goto LABEL_370;
  }

  *(v3 + 20) |= 0x200u;
  v128 = *(v3 + 360);
  if (!v128)
  {
    v129 = *(v3 + 8);
    if (v129)
    {
      v129 = *(v129 & 0xFFFFFFFFFFFFFFFELL);
    }

    v128 = MEMORY[0x223DA0290](v129);
    *(v3 + 360) = v128;
  }

  if (*(a2 + 360))
  {
    v130 = *(a2 + 360);
  }

  else
  {
    v130 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v128, v130);
  if ((v100 & 0x400) == 0)
  {
LABEL_371:
    if ((v100 & 0x800) == 0)
    {
      goto LABEL_372;
    }

    goto LABEL_401;
  }

LABEL_393:
  *(v3 + 20) |= 0x400u;
  v131 = *(v3 + 368);
  if (!v131)
  {
    v132 = *(v3 + 8);
    if (v132)
    {
      v132 = *(v132 & 0xFFFFFFFFFFFFFFFELL);
    }

    v131 = MEMORY[0x223DA0290](v132);
    *(v3 + 368) = v131;
  }

  if (*(a2 + 368))
  {
    v133 = *(a2 + 368);
  }

  else
  {
    v133 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v131, v133);
  if ((v100 & 0x800) == 0)
  {
LABEL_372:
    if ((v100 & 0x1000) == 0)
    {
      goto LABEL_373;
    }

    goto LABEL_409;
  }

LABEL_401:
  *(v3 + 20) |= 0x800u;
  v134 = *(v3 + 376);
  if (!v134)
  {
    v135 = *(v3 + 8);
    if (v135)
    {
      v135 = *(v135 & 0xFFFFFFFFFFFFFFFELL);
    }

    v134 = MEMORY[0x223DA0290](v135);
    *(v3 + 376) = v134;
  }

  if (*(a2 + 376))
  {
    v136 = *(a2 + 376);
  }

  else
  {
    v136 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v134, v136);
  if ((v100 & 0x1000) == 0)
  {
LABEL_373:
    if ((v100 & 0x2000) == 0)
    {
      goto LABEL_374;
    }

    goto LABEL_417;
  }

LABEL_409:
  *(v3 + 20) |= 0x1000u;
  v137 = *(v3 + 384);
  if (!v137)
  {
    v138 = *(v3 + 8);
    if (v138)
    {
      v138 = *(v138 & 0xFFFFFFFFFFFFFFFELL);
    }

    v137 = MEMORY[0x223DA0290](v138);
    *(v3 + 384) = v137;
  }

  if (*(a2 + 384))
  {
    v139 = *(a2 + 384);
  }

  else
  {
    v139 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v137, v139);
  if ((v100 & 0x2000) == 0)
  {
LABEL_374:
    if ((v100 & 0x4000) == 0)
    {
      goto LABEL_375;
    }

    goto LABEL_425;
  }

LABEL_417:
  *(v3 + 20) |= 0x2000u;
  v140 = *(v3 + 392);
  if (!v140)
  {
    v141 = *(v3 + 8);
    if (v141)
    {
      v141 = *(v141 & 0xFFFFFFFFFFFFFFFELL);
    }

    v140 = MEMORY[0x223DA0290](v141);
    *(v3 + 392) = v140;
  }

  if (*(a2 + 392))
  {
    v142 = *(a2 + 392);
  }

  else
  {
    v142 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v140, v142);
  if ((v100 & 0x4000) == 0)
  {
LABEL_375:
    if ((v100 & 0x8000) == 0)
    {
      goto LABEL_441;
    }

    goto LABEL_433;
  }

LABEL_425:
  *(v3 + 20) |= 0x4000u;
  v143 = *(v3 + 400);
  if (!v143)
  {
    v144 = *(v3 + 8);
    if (v144)
    {
      v144 = *(v144 & 0xFFFFFFFFFFFFFFFELL);
    }

    v143 = MEMORY[0x223DA0290](v144);
    *(v3 + 400) = v143;
  }

  if (*(a2 + 400))
  {
    v145 = *(a2 + 400);
  }

  else
  {
    v145 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v143, v145);
  if ((v100 & 0x8000) != 0)
  {
LABEL_433:
    *(v3 + 20) |= 0x8000u;
    v146 = *(v3 + 408);
    if (!v146)
    {
      v147 = *(v3 + 8);
      if (v147)
      {
        v147 = *(v147 & 0xFFFFFFFFFFFFFFFELL);
      }

      v146 = MEMORY[0x223DA0290](v147);
      *(v3 + 408) = v146;
    }

    if (*(a2 + 408))
    {
      v148 = *(a2 + 408);
    }

    else
    {
      v148 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v146, v148);
  }

LABEL_441:
  if ((v100 & 0xFF0000) == 0)
  {
    goto LABEL_515;
  }

  if ((v100 & 0x10000) != 0)
  {
    *(v3 + 20) |= 0x10000u;
    v149 = *(v3 + 416);
    if (!v149)
    {
      v150 = *(v3 + 8);
      if (v150)
      {
        v150 = *(v150 & 0xFFFFFFFFFFFFFFFELL);
      }

      v149 = MEMORY[0x223DA0290](v150);
      *(v3 + 416) = v149;
    }

    if (*(a2 + 416))
    {
      v151 = *(a2 + 416);
    }

    else
    {
      v151 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v149, v151);
    if ((v100 & 0x20000) == 0)
    {
LABEL_444:
      if ((v100 & 0x40000) == 0)
      {
        goto LABEL_445;
      }

      goto LABEL_467;
    }
  }

  else if ((v100 & 0x20000) == 0)
  {
    goto LABEL_444;
  }

  *(v3 + 20) |= 0x20000u;
  v152 = *(v3 + 424);
  if (!v152)
  {
    v153 = *(v3 + 8);
    if (v153)
    {
      v153 = *(v153 & 0xFFFFFFFFFFFFFFFELL);
    }

    v152 = MEMORY[0x223DA0290](v153);
    *(v3 + 424) = v152;
  }

  if (*(a2 + 424))
  {
    v154 = *(a2 + 424);
  }

  else
  {
    v154 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v152, v154);
  if ((v100 & 0x40000) == 0)
  {
LABEL_445:
    if ((v100 & 0x80000) == 0)
    {
      goto LABEL_446;
    }

    goto LABEL_475;
  }

LABEL_467:
  *(v3 + 20) |= 0x40000u;
  v155 = *(v3 + 432);
  if (!v155)
  {
    v156 = *(v3 + 8);
    if (v156)
    {
      v156 = *(v156 & 0xFFFFFFFFFFFFFFFELL);
    }

    v155 = MEMORY[0x223DA0290](v156);
    *(v3 + 432) = v155;
  }

  if (*(a2 + 432))
  {
    v157 = *(a2 + 432);
  }

  else
  {
    v157 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v155, v157);
  if ((v100 & 0x80000) == 0)
  {
LABEL_446:
    if ((v100 & 0x100000) == 0)
    {
      goto LABEL_447;
    }

    goto LABEL_483;
  }

LABEL_475:
  *(v3 + 20) |= 0x80000u;
  v158 = *(v3 + 440);
  if (!v158)
  {
    v159 = *(v3 + 8);
    if (v159)
    {
      v159 = *(v159 & 0xFFFFFFFFFFFFFFFELL);
    }

    v158 = MEMORY[0x223DA0290](v159);
    *(v3 + 440) = v158;
  }

  if (*(a2 + 440))
  {
    v160 = *(a2 + 440);
  }

  else
  {
    v160 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v158, v160);
  if ((v100 & 0x100000) == 0)
  {
LABEL_447:
    if ((v100 & 0x200000) == 0)
    {
      goto LABEL_448;
    }

    goto LABEL_491;
  }

LABEL_483:
  *(v3 + 20) |= 0x100000u;
  v161 = *(v3 + 448);
  if (!v161)
  {
    v162 = *(v3 + 8);
    if (v162)
    {
      v162 = *(v162 & 0xFFFFFFFFFFFFFFFELL);
    }

    v161 = MEMORY[0x223DA0290](v162);
    *(v3 + 448) = v161;
  }

  if (*(a2 + 448))
  {
    v163 = *(a2 + 448);
  }

  else
  {
    v163 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v161, v163);
  if ((v100 & 0x200000) == 0)
  {
LABEL_448:
    if ((v100 & 0x400000) == 0)
    {
      goto LABEL_449;
    }

    goto LABEL_499;
  }

LABEL_491:
  *(v3 + 20) |= 0x200000u;
  v164 = *(v3 + 456);
  if (!v164)
  {
    v165 = *(v3 + 8);
    if (v165)
    {
      v165 = *(v165 & 0xFFFFFFFFFFFFFFFELL);
    }

    v164 = MEMORY[0x223DA0290](v165);
    *(v3 + 456) = v164;
  }

  if (*(a2 + 456))
  {
    v166 = *(a2 + 456);
  }

  else
  {
    v166 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v164, v166);
  if ((v100 & 0x400000) == 0)
  {
LABEL_449:
    if ((v100 & 0x800000) == 0)
    {
      goto LABEL_515;
    }

    goto LABEL_507;
  }

LABEL_499:
  *(v3 + 20) |= 0x400000u;
  v167 = *(v3 + 464);
  if (!v167)
  {
    v168 = *(v3 + 8);
    if (v168)
    {
      v168 = *(v168 & 0xFFFFFFFFFFFFFFFELL);
    }

    v167 = MEMORY[0x223DA0290](v168);
    *(v3 + 464) = v167;
  }

  if (*(a2 + 464))
  {
    v169 = *(a2 + 464);
  }

  else
  {
    v169 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v167, v169);
  if ((v100 & 0x800000) != 0)
  {
LABEL_507:
    *(v3 + 20) |= 0x800000u;
    v170 = *(v3 + 472);
    if (!v170)
    {
      v171 = *(v3 + 8);
      if (v171)
      {
        v171 = *(v171 & 0xFFFFFFFFFFFFFFFELL);
      }

      v170 = MEMORY[0x223DA0290](v171);
      *(v3 + 472) = v170;
    }

    if (*(a2 + 472))
    {
      v172 = *(a2 + 472);
    }

    else
    {
      v172 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v170, v172);
  }

LABEL_515:
  if (!HIBYTE(v100))
  {
    goto LABEL_589;
  }

  if ((v100 & 0x1000000) != 0)
  {
    *(v3 + 20) |= 0x1000000u;
    v173 = *(v3 + 480);
    if (!v173)
    {
      v174 = *(v3 + 8);
      if (v174)
      {
        v174 = *(v174 & 0xFFFFFFFFFFFFFFFELL);
      }

      v173 = MEMORY[0x223DA0290](v174);
      *(v3 + 480) = v173;
    }

    if (*(a2 + 480))
    {
      v175 = *(a2 + 480);
    }

    else
    {
      v175 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v173, v175);
    if ((v100 & 0x2000000) == 0)
    {
LABEL_518:
      if ((v100 & 0x4000000) == 0)
      {
        goto LABEL_519;
      }

      goto LABEL_541;
    }
  }

  else if ((v100 & 0x2000000) == 0)
  {
    goto LABEL_518;
  }

  *(v3 + 20) |= 0x2000000u;
  v176 = *(v3 + 488);
  if (!v176)
  {
    v177 = *(v3 + 8);
    if (v177)
    {
      v177 = *(v177 & 0xFFFFFFFFFFFFFFFELL);
    }

    v176 = MEMORY[0x223DA0290](v177);
    *(v3 + 488) = v176;
  }

  if (*(a2 + 488))
  {
    v178 = *(a2 + 488);
  }

  else
  {
    v178 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v176, v178);
  if ((v100 & 0x4000000) == 0)
  {
LABEL_519:
    if ((v100 & 0x8000000) == 0)
    {
      goto LABEL_520;
    }

    goto LABEL_549;
  }

LABEL_541:
  *(v3 + 20) |= 0x4000000u;
  v179 = *(v3 + 496);
  if (!v179)
  {
    v180 = *(v3 + 8);
    if (v180)
    {
      v180 = *(v180 & 0xFFFFFFFFFFFFFFFELL);
    }

    v179 = MEMORY[0x223DA0290](v180);
    *(v3 + 496) = v179;
  }

  if (*(a2 + 496))
  {
    v181 = *(a2 + 496);
  }

  else
  {
    v181 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v179, v181);
  if ((v100 & 0x8000000) == 0)
  {
LABEL_520:
    if ((v100 & 0x10000000) == 0)
    {
      goto LABEL_521;
    }

    goto LABEL_557;
  }

LABEL_549:
  *(v3 + 20) |= 0x8000000u;
  v182 = *(v3 + 504);
  if (!v182)
  {
    v183 = *(v3 + 8);
    if (v183)
    {
      v183 = *(v183 & 0xFFFFFFFFFFFFFFFELL);
    }

    v182 = MEMORY[0x223DA0290](v183);
    *(v3 + 504) = v182;
  }

  if (*(a2 + 504))
  {
    v184 = *(a2 + 504);
  }

  else
  {
    v184 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v182, v184);
  if ((v100 & 0x10000000) == 0)
  {
LABEL_521:
    if ((v100 & 0x20000000) == 0)
    {
      goto LABEL_522;
    }

    goto LABEL_565;
  }

LABEL_557:
  *(v3 + 20) |= 0x10000000u;
  v185 = *(v3 + 512);
  if (!v185)
  {
    v186 = *(v3 + 8);
    if (v186)
    {
      v186 = *(v186 & 0xFFFFFFFFFFFFFFFELL);
    }

    v185 = MEMORY[0x223DA0290](v186);
    *(v3 + 512) = v185;
  }

  if (*(a2 + 512))
  {
    v187 = *(a2 + 512);
  }

  else
  {
    v187 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v185, v187);
  if ((v100 & 0x20000000) == 0)
  {
LABEL_522:
    if ((v100 & 0x40000000) == 0)
    {
      goto LABEL_523;
    }

    goto LABEL_573;
  }

LABEL_565:
  *(v3 + 20) |= 0x20000000u;
  v188 = *(v3 + 520);
  if (!v188)
  {
    v189 = *(v3 + 8);
    if (v189)
    {
      v189 = *(v189 & 0xFFFFFFFFFFFFFFFELL);
    }

    v188 = MEMORY[0x223DA0290](v189);
    *(v3 + 520) = v188;
  }

  if (*(a2 + 520))
  {
    v190 = *(a2 + 520);
  }

  else
  {
    v190 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v188, v190);
  if ((v100 & 0x40000000) == 0)
  {
LABEL_523:
    if ((v100 & 0x80000000) == 0)
    {
      goto LABEL_589;
    }

    goto LABEL_581;
  }

LABEL_573:
  *(v3 + 20) |= 0x40000000u;
  v191 = *(v3 + 528);
  if (!v191)
  {
    v192 = *(v3 + 8);
    if (v192)
    {
      v192 = *(v192 & 0xFFFFFFFFFFFFFFFELL);
    }

    v191 = MEMORY[0x223DA0290](v192);
    *(v3 + 528) = v191;
  }

  if (*(a2 + 528))
  {
    v193 = *(a2 + 528);
  }

  else
  {
    v193 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v191, v193);
  if ((v100 & 0x80000000) != 0)
  {
LABEL_581:
    *(v3 + 20) |= 0x80000000;
    v194 = *(v3 + 536);
    if (!v194)
    {
      v195 = *(v3 + 8);
      if (v195)
      {
        v195 = *(v195 & 0xFFFFFFFFFFFFFFFELL);
      }

      v194 = MEMORY[0x223DA0290](v195);
      *(v3 + 536) = v194;
    }

    if (*(a2 + 536))
    {
      v196 = *(a2 + 536);
    }

    else
    {
      v196 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v194, v196);
  }

LABEL_589:
  v197 = *(a2 + 24);
  if (!v197)
  {
    goto LABEL_600;
  }

  if (v197)
  {
    *(v3 + 24) |= 1u;
    v199 = *(v3 + 544);
    if (!v199)
    {
      v200 = *(v3 + 8);
      if (v200)
      {
        v200 = *(v200 & 0xFFFFFFFFFFFFFFFELL);
      }

      v199 = MEMORY[0x223DA0290](v200);
      *(v3 + 544) = v199;
    }

    if (*(a2 + 544))
    {
      v201 = *(a2 + 544);
    }

    else
    {
      v201 = MEMORY[0x277D804A0];
    }

    result = TSD::StrokeArchive::MergeFrom(v199, v201);
    if ((v197 & 2) == 0)
    {
LABEL_592:
      if ((v197 & 4) == 0)
      {
        goto LABEL_593;
      }

      goto LABEL_630;
    }
  }

  else if ((v197 & 2) == 0)
  {
    goto LABEL_592;
  }

  *(v3 + 24) |= 2u;
  v202 = *(v3 + 552);
  if (!v202)
  {
    v203 = *(v3 + 8);
    if (v203)
    {
      v203 = *(v203 & 0xFFFFFFFFFFFFFFFELL);
    }

    v202 = MEMORY[0x223DA0290](v203);
    *(v3 + 552) = v202;
  }

  if (*(a2 + 552))
  {
    v204 = *(a2 + 552);
  }

  else
  {
    v204 = MEMORY[0x277D804A0];
  }

  result = TSD::StrokeArchive::MergeFrom(v202, v204);
  if ((v197 & 4) == 0)
  {
LABEL_593:
    if ((v197 & 8) == 0)
    {
      goto LABEL_594;
    }

    goto LABEL_631;
  }

LABEL_630:
  *(v3 + 560) = *(a2 + 560);
  if ((v197 & 8) == 0)
  {
LABEL_594:
    if ((v197 & 0x10) == 0)
    {
      goto LABEL_595;
    }

    goto LABEL_632;
  }

LABEL_631:
  *(v3 + 561) = *(a2 + 561);
  if ((v197 & 0x10) == 0)
  {
LABEL_595:
    if ((v197 & 0x20) == 0)
    {
      goto LABEL_596;
    }

    goto LABEL_633;
  }

LABEL_632:
  *(v3 + 562) = *(a2 + 562);
  if ((v197 & 0x20) == 0)
  {
LABEL_596:
    if ((v197 & 0x40) == 0)
    {
      goto LABEL_597;
    }

LABEL_634:
    *(v3 + 564) = *(a2 + 564);
    if ((v197 & 0x80) == 0)
    {
      goto LABEL_599;
    }

    goto LABEL_598;
  }

LABEL_633:
  *(v3 + 563) = *(a2 + 563);
  if ((v197 & 0x40) != 0)
  {
    goto LABEL_634;
  }

LABEL_597:
  if ((v197 & 0x80) != 0)
  {
LABEL_598:
    *(v3 + 565) = *(a2 + 565);
  }

LABEL_599:
  *(v3 + 24) |= v197;
LABEL_600:
  if ((v197 & 0xFF00) == 0)
  {
    goto LABEL_611;
  }

  if ((v197 & 0x100) != 0)
  {
    *(v3 + 566) = *(a2 + 566);
    if ((v197 & 0x200) == 0)
    {
LABEL_603:
      if ((v197 & 0x400) == 0)
      {
        goto LABEL_604;
      }

      goto LABEL_638;
    }
  }

  else if ((v197 & 0x200) == 0)
  {
    goto LABEL_603;
  }

  *(v3 + 567) = *(a2 + 567);
  if ((v197 & 0x400) == 0)
  {
LABEL_604:
    if ((v197 & 0x800) == 0)
    {
      goto LABEL_605;
    }

    goto LABEL_639;
  }

LABEL_638:
  *(v3 + 568) = *(a2 + 568);
  if ((v197 & 0x800) == 0)
  {
LABEL_605:
    if ((v197 & 0x1000) == 0)
    {
      goto LABEL_606;
    }

    goto LABEL_640;
  }

LABEL_639:
  *(v3 + 572) = *(a2 + 572);
  if ((v197 & 0x1000) == 0)
  {
LABEL_606:
    if ((v197 & 0x2000) == 0)
    {
      goto LABEL_607;
    }

    goto LABEL_641;
  }

LABEL_640:
  *(v3 + 573) = *(a2 + 573);
  if ((v197 & 0x2000) == 0)
  {
LABEL_607:
    if ((v197 & 0x4000) == 0)
    {
      goto LABEL_608;
    }

LABEL_642:
    *(v3 + 575) = *(a2 + 575);
    if ((v197 & 0x8000) == 0)
    {
      goto LABEL_610;
    }

    goto LABEL_609;
  }

LABEL_641:
  *(v3 + 574) = *(a2 + 574);
  if ((v197 & 0x4000) != 0)
  {
    goto LABEL_642;
  }

LABEL_608:
  if ((v197 & 0x8000) != 0)
  {
LABEL_609:
    *(v3 + 576) = *(a2 + 576);
  }

LABEL_610:
  *(v3 + 24) |= v197;
LABEL_611:
  if ((v197 & 0x10000) != 0)
  {
    v198 = *(a2 + 580);
    *(v3 + 24) |= 0x10000u;
    *(v3 + 580) = v198;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216E0E24(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216D9BBC(result);

    return sub_2216DF794(v4, a2);
  }

  return result;
}

uint64_t sub_2216E0E70(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 2) != 0)
  {
    result = TSD::FillArchive::IsInitialized(*(a1 + 40));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(a1 + 48);
    if (*(v4 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v4 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 8) != 0)
  {
    v5 = *(a1 + 56);
    if (*(v5 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v5 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v6 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x20) != 0)
  {
    v7 = *(a1 + 72);
    if (*(v7 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v7 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x40) != 0)
  {
    v8 = *(a1 + 80);
    if (*(v8 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v8 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x80) != 0)
  {
    v9 = *(a1 + 88);
    if (*(v9 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v9 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x100) != 0)
  {
    v10 = *(a1 + 96);
    if (*(v10 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v10 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x200) != 0)
  {
    v11 = *(a1 + 104);
    if (*(v11 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v11 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x400) != 0)
  {
    v12 = *(a1 + 112);
    if (*(v12 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v12 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x800) != 0)
  {
    v13 = *(a1 + 120);
    if (*(v13 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v13 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x1000) != 0)
  {
    v14 = *(a1 + 128);
    if (*(v14 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v14 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x2000) != 0)
  {
    v15 = *(a1 + 136);
    if (*(v15 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v15 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x4000) != 0)
  {
    v16 = *(a1 + 144);
    if (*(v16 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v16 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x8000) != 0)
  {
    v17 = *(a1 + 152);
    if (*(v17 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v17 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x10000) != 0)
  {
    v18 = *(a1 + 160);
    if (*(v18 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v18 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x20000) != 0)
  {
    v19 = *(a1 + 168);
    if (*(v19 + 16))
    {
      result = TSD::StrokeArchive::IsInitialized(*(v19 + 24));
      if (!result)
      {
        return result;
      }

      v2 = *(a1 + 16);
    }
  }

  if ((v2 & 0x40000) != 0)
  {
    result = sub_2216D86D8(*(a1 + 176));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 184));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x100000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 192));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x200000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 200));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x400000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 208));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x800000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 216));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x1000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 224));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x2000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 232));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x4000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 240));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x8000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 248));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x10000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 256));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x20000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 264));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x40000000) != 0)
  {
    result = TSD::StrokeArchive::IsInitialized(*(a1 + 272));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 0x80000000) == 0 || (result = TSD::StrokeArchive::IsInitialized(*(a1 + 280)), result))
  {
    v20 = *(a1 + 20);
    if (v20)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 288));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 2) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 296));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 4) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 304));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 8) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 312));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x10) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 320));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x20) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 328));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x40) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 336));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x80) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 344));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x100) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 352));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x200) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 360));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x400) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 368));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x800) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 376));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x1000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 384));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x2000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 392));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x4000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 400));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x8000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 408));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x10000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 416));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x20000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 424));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x40000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 432));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x80000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 440));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x100000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 448));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x200000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 456));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x400000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 464));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x800000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 472));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x1000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 480));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x2000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 488));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x4000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 496));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x8000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 504));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x10000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 512));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x20000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 520));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x40000000) != 0)
    {
      result = TSD::StrokeArchive::IsInitialized(*(a1 + 528));
      if (!result)
      {
        return result;
      }

      v20 = *(a1 + 20);
    }

    if ((v20 & 0x80000000) == 0 || (result = TSD::StrokeArchive::IsInitialized(*(a1 + 536)), result))
    {
      v21 = *(a1 + 24);
      if (v21)
      {
        result = TSD::StrokeArchive::IsInitialized(*(a1 + 544));
        if (!result)
        {
          return result;
        }

        v21 = *(a1 + 24);
      }

      if ((v21 & 2) == 0)
      {
        return 1;
      }

      result = TSD::StrokeArchive::IsInitialized(*(a1 + 552));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_2216E14A0(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834BA8B8;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (atomic_load_explicit(dword_2812E4590, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  return a1;
}

uint64_t *sub_2216E150C(uint64_t *a1)
{
  if (a1 != &qword_2812E9EA8)
  {
    v2 = a1[3];
    if (v2)
    {
      TSP::Reference::~Reference(v2);
      MEMORY[0x223DA1450]();
    }

    v3 = a1[4];
    if (v3)
    {
      TSP::Reference::~Reference(v3);
      MEMORY[0x223DA1450]();
    }
  }

  sub_2214DFCF8(a1 + 1);
  return a1;
}

void sub_2216E1588(uint64_t *a1)
{
  sub_2216E150C(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2216E15C8()
{
  if (atomic_load_explicit(dword_2812E4590, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &qword_2812E9EA8;
}

google::protobuf::UnknownFieldSet *sub_2216E1608(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 4);
  if ((v2 & 3) != 0)
  {
    if (v2)
    {
      result = TSP::Reference::Clear(*(result + 3));
    }

    if ((v2 & 2) != 0)
    {
      result = TSP::Reference::Clear(*(v1 + 4));
    }
  }

  v4 = *(v1 + 8);
  v3 = v1 + 8;
  *(v3 + 8) = 0;
  *(v3 + 2) = 0;
  if (v4)
  {

    return sub_221567398(v3);
  }

  return result;
}

google::protobuf::internal *sub_2216E167C(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v24 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v24, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v7 = (v24 + 1);
      v8 = *v24;
      if ((*v24 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v24, (v9 - 128));
      v24 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_45;
      }

      v7 = TagFallback;
      v8 = v21;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 != 26)
        {
          goto LABEL_13;
        }

        *(a1 + 16) |= 2u;
        v14 = *(a1 + 32);
        if (!v14)
        {
          v16 = *(a1 + 8);
          if (v16)
          {
            v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
          }

          v14 = MEMORY[0x223DA0390](v16);
          *(a1 + 32) = v14;
LABEL_30:
          v7 = v24;
        }

LABEL_31:
        v13 = sub_22170B7F8(a3, v14, v7);
LABEL_32:
        v24 = v13;
        if (!v13)
        {
          goto LABEL_45;
        }

        goto LABEL_38;
      }

      if (v10 == 2)
      {
        if (v8 == 18)
        {
          *(a1 + 16) |= 1u;
          v14 = *(a1 + 24);
          if (!v14)
          {
            v15 = *(a1 + 8);
            if (v15)
            {
              v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
            }

            v14 = MEMORY[0x223DA0390](v15);
            *(a1 + 24) = v14;
            goto LABEL_30;
          }

          goto LABEL_31;
        }

LABEL_13:
        if (v8)
        {
          v12 = (v8 & 7) == 4;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          *(a3 + 80) = v8 - 1;
          goto LABEL_2;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v13 = google::protobuf::internal::UnknownFieldParse();
        goto LABEL_32;
      }

      if (v10 != 1 || v8 != 8)
      {
        goto LABEL_13;
      }

      v5 |= 4u;
      v18 = (v7 + 1);
      LODWORD(v17) = *v7;
      if ((v17 & 0x80) == 0)
      {
        goto LABEL_37;
      }

      v19 = *v18;
      v17 = (v17 + (v19 << 7) - 128);
      if ((v19 & 0x80000000) == 0)
      {
        v18 = (v7 + 2);
LABEL_37:
        v24 = v18;
        *(a1 + 40) = v17;
        goto LABEL_38;
      }

      v22 = google::protobuf::internal::VarintParseSlow64(v7, v17);
      v24 = v22;
      *(a1 + 40) = v23;
      if (!v22)
      {
LABEL_45:
        v24 = 0;
        goto LABEL_2;
      }

LABEL_38:
      if (sub_221567030(a3, &v24, *(a3 + 92)))
      {
        goto LABEL_2;
      }
    }

    v7 = (v24 + 2);
LABEL_6:
    v24 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 16) |= v5;
  return v24;
}

unsigned __int8 *sub_2216E18A0(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 16);
  if ((v5 & 4) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v6 = *(a1 + 40);
    *a2 = 8;
    if (v6 > 0x7F)
    {
      a2[1] = v6 | 0x80;
      v7 = v6 >> 7;
      if (v6 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v7 | 0x80;
          v8 = v7 >> 7;
          ++a2;
          v9 = v7 >> 14;
          v7 >>= 7;
        }

        while (v9);
        *(a2 - 1) = v8;
        if (v5)
        {
          goto LABEL_16;
        }
      }

      else
      {
        a2[2] = v7;
        a2 += 3;
        if (v5)
        {
          goto LABEL_16;
        }
      }
    }

    else
    {
      a2[1] = v6;
      a2 += 2;
      if (v5)
      {
        goto LABEL_16;
      }
    }

LABEL_3:
    if ((v5 & 2) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_26;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_3;
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
  }

  v10 = *(a1 + 24);
  *a2 = 18;
  v11 = *(v10 + 5);
  if (v11 > 0x7F)
  {
    a2[1] = v11 | 0x80;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = a2 + 3;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      a2[2] = v13;
      v12 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v11;
    v12 = a2 + 2;
  }

  a2 = TSP::Reference::_InternalSerialize(v10, v12, a3);
  if ((v5 & 2) != 0)
  {
LABEL_26:
    if (*a3 <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
    }

    v16 = *(a1 + 32);
    *a2 = 26;
    v17 = *(v16 + 5);
    if (v17 > 0x7F)
    {
      a2[1] = v17 | 0x80;
      v19 = v17 >> 7;
      if (v17 >> 14)
      {
        v18 = a2 + 3;
        do
        {
          *(v18 - 1) = v19 | 0x80;
          v20 = v19 >> 7;
          ++v18;
          v21 = v19 >> 14;
          v19 >>= 7;
        }

        while (v21);
        *(v18 - 1) = v20;
      }

      else
      {
        a2[2] = v19;
        v18 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v17;
      v18 = a2 + 2;
    }

    a2 = TSP::Reference::_InternalSerialize(v16, v18, a3);
  }

LABEL_36:
  v22 = *(a1 + 8);
  if ((v22 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v22 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216E1AC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if ((v2 & 7) == 0)
  {
    v3 = 0;
    goto LABEL_13;
  }

  if (v2)
  {
    v4 = TSP::Reference::ByteSizeLong(*(a1 + 24));
    v3 = v4 + ((9 * (__clz(v4 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v2 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_7:
    v5 = TSP::Reference::ByteSizeLong(*(a1 + 32));
    v3 += v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  if ((v2 & 4) != 0)
  {
    v6 = *(a1 + 40);
    if (v6 < 0)
    {
      v7 = 11;
    }

    else
    {
      v7 = ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    v3 += v7;
  }

LABEL_13:
  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v3, a1 + 20);
  }

  else
  {
    *(a1 + 20) = v3;
    return v3;
  }
}

uint64_t sub_2216E1BDC(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB48, 0);
  if (v4)
  {

    return sub_2216E1C84(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216E1C84(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 16);
  if ((v5 & 7) != 0)
  {
    v6 = MEMORY[0x277D80A18];
    if (v5)
    {
      *(v3 + 16) |= 1u;
      v7 = *(v3 + 24);
      if (!v7)
      {
        v8 = *(v3 + 8);
        if (v8)
        {
          v8 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
        }

        v7 = MEMORY[0x223DA0390](v8);
        *(v3 + 24) = v7;
      }

      if (*(a2 + 24))
      {
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = v6;
      }

      result = TSP::Reference::MergeFrom(v7, v9);
      if ((v5 & 2) == 0)
      {
LABEL_6:
        if ((v5 & 4) == 0)
        {
LABEL_8:
          *(v3 + 16) |= v5;
          return result;
        }

LABEL_7:
        *(v3 + 40) = *(a2 + 40);
        goto LABEL_8;
      }
    }

    else if ((v5 & 2) == 0)
    {
      goto LABEL_6;
    }

    *(v3 + 16) |= 2u;
    v10 = *(v3 + 32);
    if (!v10)
    {
      v11 = *(v3 + 8);
      if (v11)
      {
        v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
      }

      v10 = MEMORY[0x223DA0390](v11);
      *(v3 + 32) = v10;
    }

    if (*(a2 + 32))
    {
      v12 = *(a2 + 32);
    }

    else
    {
      v12 = v6;
    }

    result = TSP::Reference::MergeFrom(v10, v12);
    if ((v5 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216E1D88(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216E1608(result);

    return sub_2216E1BDC(v4, a2);
  }

  return result;
}

uint64_t sub_2216E1DD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    result = TSP::Reference::IsInitialized(*(a1 + 24));
    if (!result)
    {
      return result;
    }

    v2 = *(a1 + 16);
  }

  if ((v2 & 2) == 0)
  {
    return 1;
  }

  result = TSP::Reference::IsInitialized(*(a1 + 32));
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_2216E1E58(uint64_t result, uint64_t a2)
{
  *result = &unk_2834BA968;
  *(result + 8) = a2;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void sub_2216E1EB0(uint64_t a1)
{
  sub_2214DFCF8((a1 + 8));

  JUMPOUT(0x223DA1450);
}

uint64_t *sub_2216E1F08()
{
  if (atomic_load_explicit(dword_2812E4578, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return qword_2812E9ED8;
}

google::protobuf::UnknownFieldSet *sub_2216E1F48(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = (a1 + 8);
  *(result + 4) = 0;
  *(result + 2) = 0;
  if (v2)
  {
    return sub_221567398(result);
  }

  return result;
}

google::protobuf::internal *sub_2216E1F60(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v18 = a2;
  v5 = 0;
  if ((sub_221567030(a3, &v18, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v18 + 1);
      v7 = *v18;
      if ((*v18 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v18, (v8 - 128));
      v18 = TagFallback;
      if (!TagFallback)
      {
        goto LABEL_27;
      }

      v6 = TagFallback;
      v7 = v14;
LABEL_6:
      if (v7 == 8)
      {
        v11 = (v6 + 1);
        LODWORD(v10) = *v6;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_18;
        }

        v12 = *v11;
        v10 = (v10 + (v12 << 7) - 128);
        if ((v12 & 0x80000000) == 0)
        {
          v11 = (v6 + 2);
LABEL_18:
          v18 = v11;
          *(a1 + 24) = v10;
          v5 = 1;
          goto LABEL_19;
        }

        v15 = google::protobuf::internal::VarintParseSlow64(v6, v10);
        v18 = v15;
        *(a1 + 24) = v16;
        v5 = 1;
        if (!v15)
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v7)
        {
          v9 = (v7 & 7) == 4;
        }

        else
        {
          v9 = 1;
        }

        if (v9)
        {
          *(a3 + 80) = v7 - 1;
          goto LABEL_26;
        }

        if ((*(a1 + 8) & 1) == 0)
        {
          sub_221567188((a1 + 8));
        }

        v18 = google::protobuf::internal::UnknownFieldParse();
        if (!v18)
        {
LABEL_27:
          v18 = 0;
          goto LABEL_26;
        }
      }

LABEL_19:
      if (sub_221567030(a3, &v18, *(a3 + 92)))
      {
        goto LABEL_26;
      }
    }

    v6 = (v18 + 2);
LABEL_5:
    v18 = v6;
    goto LABEL_6;
  }

LABEL_26:
  *(a1 + 16) |= v5;
  return v18;
}

unsigned __int8 *sub_2216E20D4(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *this)
{
  if (*(a1 + 16))
  {
    if (*this <= a2)
    {
      a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(this, a2);
    }

    v5 = *(a1 + 24);
    *a2 = 8;
    if (v5 > 0x7F)
    {
      a2[1] = v5 | 0x80;
      v6 = v5 >> 7;
      if (v5 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v6 | 0x80;
          v7 = v6 >> 7;
          ++a2;
          v8 = v6 >> 14;
          v6 >>= 7;
        }

        while (v8);
        *(a2 - 1) = v7;
      }

      else
      {
        a2[2] = v6;
        a2 += 3;
      }
    }

    else
    {
      a2[1] = v5;
      a2 += 2;
    }
  }

  v9 = *(a1 + 8);
  if ((v9 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v9 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, this);
}

uint64_t sub_2216E21B4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = *(a1 + 24);
    if (v2 < 0)
    {
      v1 = 11;
    }

    else
    {
      v1 = ((9 * (__clz(v2 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }
  }

  else
  {
    v1 = 0;
  }

  if (*(a1 + 8))
  {
    return MEMORY[0x2821EADD8](a1 + 8, v1, a1 + 20);
  }

  *(a1 + 20) = v1;
  return v1;
}

uint64_t sub_2216E2214(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB60, 0);
  if (v4)
  {

    return sub_2216E22BC(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216E22BC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  if (*(a2 + 16))
  {
    v5 = *(a2 + 24);
    *(v3 + 16) |= 1u;
    *(v3 + 24) = v5;
  }

  return result;
}

_BYTE *sub_2216E2314(_BYTE *result, _BYTE *lpsrc)
{
  if (lpsrc != result)
  {
    v4 = result;
    v6 = result[8];
    v5 = result + 8;
    *(v5 + 4) = 0;
    *(v5 + 2) = 0;
    if (v6)
    {
      sub_221567398(v5);
    }

    return sub_2216E2214(v4, lpsrc);
  }

  return result;
}

uint64_t sub_2216E23B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = a2;
  *a1 = &unk_2834BAA18;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_2812E45E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return a1;
}

void sub_2216E2438(_Unwind_Exception *a1)
{
  sub_2216E381C(v2);
  sub_2216E381C(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_2216E245C(uint64_t *a1)
{
  sub_2214DFCF8(a1 + 1);
  sub_2216E381C(a1 + 5);
  sub_2216E381C(a1 + 2);
  return a1;
}

void sub_2216E24A8(uint64_t *a1)
{
  sub_2216E245C(a1);

  JUMPOUT(0x223DA1450);
}

void *sub_2216E24E8()
{
  if (atomic_load_explicit(dword_2812E45E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return &unk_2812E9EF8;
}

google::protobuf::UnknownFieldSet *sub_2216E2528(google::protobuf::UnknownFieldSet *result)
{
  v1 = result;
  v2 = *(result + 6);
  if (v2 >= 1)
  {
    v3 = (*(result + 4) + 8);
    do
    {
      v4 = *v3++;
      result = TSP::Reference::Clear(v4);
      --v2;
    }

    while (v2);
    *(v1 + 6) = 0;
  }

  v5 = *(v1 + 12);
  if (v5 >= 1)
  {
    v6 = (*(v1 + 7) + 8);
    do
    {
      v7 = *v6++;
      result = TSP::Reference::Clear(v7);
      --v5;
    }

    while (v5);
    *(v1 + 12) = 0;
  }

  v9 = *(v1 + 8);
  v8 = (v1 + 8);
  if (v9)
  {

    return sub_221567398(v8);
  }

  return result;
}

google::protobuf::internal *sub_2216E25CC(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v29 = a2;
  if ((sub_221567030(a3, &v29, *(a3 + 92)) & 1) == 0)
  {
    while (1)
    {
      v6 = (v29 + 1);
      v7 = *v29;
      if ((*v29 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      TagFallback = google::protobuf::internal::ReadTagFallback(v29, (v8 - 128));
      v29 = TagFallback;
      if (!TagFallback)
      {
        return 0;
      }

      v6 = TagFallback;
      v7 = v28;
LABEL_7:
      if (v7 >> 3 == 2)
      {
        if (v7 != 18)
        {
          goto LABEL_12;
        }

        v11 = v6 - 1;
        while (2)
        {
          v12 = (v11 + 1);
          v29 = (v11 + 1);
          v13 = *(a1 + 56);
          if (!v13)
          {
LABEL_24:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 40));
            v13 = *(a1 + 56);
            v14 = *v13;
            goto LABEL_25;
          }

          v18 = *(a1 + 48);
          v14 = *v13;
          if (v18 >= *v13)
          {
            if (v14 == *(a1 + 52))
            {
              goto LABEL_24;
            }

LABEL_25:
            *v13 = v14 + 1;
            v15 = MEMORY[0x223DA0390](*(a1 + 40));
            v16 = *(a1 + 48);
            v17 = *(a1 + 56) + 8 * v16;
            *(a1 + 48) = v16 + 1;
            *(v17 + 8) = v15;
            v12 = v29;
          }

          else
          {
            *(a1 + 48) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
          }

          v11 = sub_22170B7F8(a3, v15, v12);
          v29 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 18)
          {
            goto LABEL_19;
          }

          continue;
        }
      }

      if (v7 >> 3 == 1 && v7 == 10)
      {
        v19 = v6 - 1;
        while (1)
        {
          v20 = (v19 + 1);
          v29 = (v19 + 1);
          v21 = *(a1 + 32);
          if (!v21)
          {
            goto LABEL_36;
          }

          v26 = *(a1 + 24);
          v22 = *v21;
          if (v26 < *v21)
          {
            *(a1 + 24) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
            goto LABEL_40;
          }

          if (v22 == *(a1 + 28))
          {
LABEL_36:
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a1 + 16));
            v21 = *(a1 + 32);
            v22 = *v21;
          }

          *v21 = v22 + 1;
          v23 = MEMORY[0x223DA0390](*(a1 + 16));
          v24 = *(a1 + 24);
          v25 = *(a1 + 32) + 8 * v24;
          *(a1 + 24) = v24 + 1;
          *(v25 + 8) = v23;
          v20 = v29;
LABEL_40:
          v19 = sub_22170B7F8(a3, v23, v20);
          v29 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_19;
          }
        }
      }

LABEL_12:
      if (v7)
      {
        v10 = (v7 & 7) == 4;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        *(a3 + 80) = v7 - 1;
        return v29;
      }

      if ((*(a1 + 8) & 1) == 0)
      {
        sub_221567188((a1 + 8));
      }

      v29 = google::protobuf::internal::UnknownFieldParse();
      if (!v29)
      {
        return 0;
      }

LABEL_19:
      if (sub_221567030(a3, &v29, *(a3 + 92)))
      {
        return v29;
      }
    }

    v6 = (v29 + 2);
LABEL_6:
    v29 = v6;
    goto LABEL_7;
  }

  return v29;
}

unsigned __int8 *sub_2216E287C(uint64_t a1, unsigned __int8 *a2, google::protobuf::io::EpsCopyOutputStream *a3)
{
  v5 = *(a1 + 24);
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v7 = *(*(a1 + 32) + 8 * i + 8);
      *a2 = 10;
      v8 = *(v7 + 5);
      if (v8 > 0x7F)
      {
        a2[1] = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = a2 + 3;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          a2[2] = v10;
          v9 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v8;
        v9 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v7, v9, a3);
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    for (j = 0; j != v13; ++j)
    {
      if (*a3 <= a2)
      {
        a2 = google::protobuf::io::EpsCopyOutputStream::EnsureSpaceFallback(a3, a2);
      }

      v15 = *(*(a1 + 56) + 8 * j + 8);
      *a2 = 18;
      v16 = *(v15 + 5);
      if (v16 > 0x7F)
      {
        a2[1] = v16 | 0x80;
        v18 = v16 >> 7;
        if (v16 >> 14)
        {
          v17 = a2 + 3;
          do
          {
            *(v17 - 1) = v18 | 0x80;
            v19 = v18 >> 7;
            ++v17;
            v20 = v18 >> 14;
            v18 >>= 7;
          }

          while (v20);
          *(v17 - 1) = v19;
        }

        else
        {
          a2[2] = v18;
          v17 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v16;
        v17 = a2 + 2;
      }

      a2 = TSP::Reference::_InternalSerialize(v15, v17, a3);
    }
  }

  v21 = *(a1 + 8);
  if ((v21 & 1) == 0)
  {
    return a2;
  }

  return MEMORY[0x2821EAC40]((v21 & 0xFFFFFFFFFFFFFFFELL) + 8, a2, a3);
}

uint64_t sub_2216E2A54(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = TSP::Reference::ByteSizeLong(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 48);
  v9 = v2 + v8;
  v10 = *(a1 + 56);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v8)
  {
    v12 = 8 * v8;
    do
    {
      v13 = *v11++;
      v14 = TSP::Reference::ByteSizeLong(v13);
      v9 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6);
      v12 -= 8;
    }

    while (v12);
  }

  if (*(a1 + 8))
  {

    return MEMORY[0x2821EADD8](a1 + 8, v9, a1 + 64);
  }

  else
  {
    *(a1 + 64) = v9;
    return v9;
  }
}

uint64_t sub_2216E2B5C(uint64_t a1, void *lpsrc)
{
  v4 = __dynamic_cast(lpsrc, MEMORY[0x277D80A98], &unk_2834BAB78, 0);
  if (v4)
  {

    return sub_2216E2C04(a1, v4);
  }

  else
  {

    return MEMORY[0x2821EACE0](lpsrc, a1);
  }
}

uint64_t sub_2216E2C04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 8);
  if (v4)
  {
    result = sub_22156734C((result + 8), (v4 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  v5 = *(a2 + 24);
  if (v5)
  {
    v6 = *(a2 + 32);
    v7 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 16));
    result = sub_221568514((v3 + 16), v7, (v6 + 8), v5, **(v3 + 32) - *(v3 + 24));
    v8 = *(v3 + 24) + v5;
    *(v3 + 24) = v8;
    v9 = *(v3 + 32);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  v10 = *(a2 + 48);
  if (v10)
  {
    v11 = *(a2 + 56);
    v12 = google::protobuf::internal::RepeatedPtrFieldBase::InternalExtend((v3 + 40));
    result = sub_221568514((v3 + 40), v12, (v11 + 8), v10, **(v3 + 56) - *(v3 + 48));
    v13 = *(v3 + 48) + v10;
    *(v3 + 48) = v13;
    v14 = *(v3 + 56);
    if (*v14 < v13)
    {
      *v14 = v13;
    }
  }

  return result;
}

google::protobuf::UnknownFieldSet *sub_2216E2D00(google::protobuf::UnknownFieldSet *result, google::protobuf::UnknownFieldSet *a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_2216E2528(result);

    return sub_2216E2B5C(v4, a2);
  }

  return result;
}

BOOL sub_2216E2D4C(uint64_t a1)
{
  v2 = *(a1 + 24);
  while (v2 >= 1)
  {
    v3 = v2 - 1;
    IsInitialized = TSP::Reference::IsInitialized(*(*(a1 + 32) + 8 * v2));
    v2 = v3;
    if ((IsInitialized & 1) == 0)
    {
      return 0;
    }
  }

  v6 = *(a1 + 48);
  do
  {
    v5 = v6 < 1;
    if (v6 < 1)
    {
      break;
    }

    v7 = v6 - 1;
    v8 = TSP::Reference::IsInitialized(*(*(a1 + 56) + 8 * v6));
    v6 = v7;
  }

  while ((v8 & 1) != 0);
  return v5;
}

void *sub_2216E2E08(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216E3934(a1);
}

uint64_t sub_2216E2ED8(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216E3A38(a1);
}

uint64_t sub_2216E2FBC(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216E3B50(a1);
}

uint64_t sub_2216E3090(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216E3C58(a1);
}

uint64_t sub_2216E3164(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216E3D60(a1, 1);
  sub_2216D7A9C(v2, a1);
  return v2;
}

uint64_t sub_2216E31F0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216E3DEC(a1, 1);
  sub_2216D8798(v2, a1);
  return v2;
}

uint64_t sub_2216E327C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  return sub_2216E3E78(a1);
}

uint64_t sub_2216E334C(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  result = sub_2216E3F7C(a1, 1);
  *result = &unk_2834BA968;
  *(result + 8) = a1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2216E33C0(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  v2 = sub_2216E4024(a1, 1);
  sub_2216E23B4(v2, a1);
  return v2;
}

void sub_2216E3520(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2216D6410(*v3);
          MEMORY[0x223DA1450](v5, 0x10A1C400941DAD4);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

void sub_2216E35A4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_2216D6FEC(*v3);
          MEMORY[0x223DA1450](v5, 0x10A1C400941DAD4);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_2216E3628(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2216E36D8(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2216E2FB8(v18);
      result = sub_2216E36D8(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_2216E36E8(uint64_t *result, uint64_t *a2, uint64_t *a3, int a4, int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_2216E3798(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_2216E308C(v18);
      result = sub_2216E3798(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

__n128 sub_2216E37A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *a1 = *a2;
  *a2 = v2;
  *(a2 + 8) = v3;
  v4 = a1[2];
  v5 = a1[3];
  *(a1 + 1) = *(a2 + 16);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  v6 = a1[4];
  v7 = a1[5];
  *(a1 + 2) = *(a2 + 32);
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  v8 = a1[6];
  v9 = a1[7];
  *(a1 + 3) = *(a2 + 48);
  *(a2 + 48) = v8;
  *(a2 + 56) = v9;
  v10 = a1[8];
  v11 = a1[9];
  result = *(a2 + 64);
  *(a1 + 4) = result;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  v13 = a1[10];
  a1[10] = *(a2 + 80);
  *(a2 + 80) = v13;
  LOBYTE(v13) = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v13;
  return result;
}

void sub_2216E381C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          TSP::Reference::~Reference(*v3);
          MEMORY[0x223DA1450]();
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_2216E38B0(TSS::ThemeArchive *a1, uint64_t a2, uint64_t a3)
{
  v6 = TSS::ThemeArchive::default_instance(a1);
  if (atomic_load_explicit(dword_2812E45E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  return MEMORY[0x2821EAC80](v6, a1, a2, 0, a3, &unk_2812E9EF8);
}

void *sub_2216E3934(uint64_t a1)
{
  v2 = sub_2216E39AC(a1, 1);
  *v2 = &unk_2834BA498;
  v2[1] = a1;
  v2[2] = 0;
  if (atomic_load_explicit(dword_2812E4510, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 30) = 0;
  v2[3] = 0;
  return v2;
}

uint64_t sub_2216E39AC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170B90C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 40, sub_2216E3A34);
}

uint64_t sub_2216E3A38(uint64_t a1)
{
  v2 = sub_2216E3AC4(a1, 1);
  *v2 = &unk_2834BA548;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812E44B8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 104) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  return v2;
}

uint64_t sub_2216E3AC4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170B948(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 112, sub_2216E3B4C);
}

uint64_t sub_2216E3B50(uint64_t a1)
{
  v2 = sub_2216E3BCC(a1, 1);
  *v2 = &unk_2834BA5F8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812E44F0, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2216E3BCC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170B984(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2216E3C54);
}

uint64_t sub_2216E3C58(uint64_t a1)
{
  v2 = sub_2216E3CD4(a1, 1);
  *v2 = &unk_2834BA6A8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812E4530, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 48) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2216E3CD4(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170B9B4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 56, sub_2216E3D5C);
}

uint64_t sub_2216E3D60(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170B9E4(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 80, sub_2216E3DE8);
}

uint64_t sub_2216E3DEC(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170BA20(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 584, sub_2216E3E74);
}

uint64_t sub_2216E3E78(uint64_t a1)
{
  v2 = sub_2216E3EF0(a1, 1);
  *v2 = &unk_2834BA8B8;
  *(v2 + 8) = a1;
  *(v2 + 16) = 0;
  if (atomic_load_explicit(dword_2812E4590, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  return v2;
}

uint64_t sub_2216E3EF0(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170BA5C(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 48, sub_2216E3F78);
}

uint64_t sub_2216E3F7C(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170BA98(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 32, sub_2216E4004);
}

uint64_t sub_2216E4024(uint64_t a1, int a2)
{
  if (*(a1 + 24))
  {
    sub_22170BAC8(a1);
    if (a2)
    {
LABEL_3:

      JUMPOUT(0x223DA0450);
    }
  }

  else if (a2)
  {
    goto LABEL_3;
  }

  return MEMORY[0x2821EADF8](a1, 72, sub_2216E40AC);
}

uint64_t sub_2216E40B0()
{
  google::protobuf::internal::AddDescriptors();
  if (atomic_load_explicit(dword_2812E45E8, memory_order_acquire))
  {
    google::protobuf::internal::InitSCCImpl();
  }

  dword_2812E9F40 = 200;
  qword_2812E9F48 = &unk_2812E9EF8;

  return sub_2216E38B0(0xC8, 11, 0);
}

void sub_2216E4DDC(_Unwind_Exception *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2216E4E64(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = objc_msgSend_cell(a2, a2, a3, a4);
  hasAnyWarning = objc_msgSend_hasAnyWarning(v6, v7, v8, v9);

  if (hasAnyWarning)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

uint64_t sub_2216E5284(void *a1, char a2, CGFloat a3, double a4)
{
  v7 = a1;
  v11 = v7;
  if (a2)
  {
    v12 = objc_msgSend_tableLayout(v7, v8, v9, v10);
    v16 = sub_2211B4394(v12, v13, v14, v15);
    v19 = objc_msgSend_gridPointHitByCanvasPoint_tabsViewable_(v16, v17, 0, v18, a3, a4);

    v20 = HIDWORD(v19);
    v21 = v19 << 32;
    if (v19 == -1)
    {
      v21 = 0x7FFF00000000;
    }

    if (v20 == 0xFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFLL;
    }

    v22 = v21 | v20;
  }

  else
  {
    v23 = objc_msgSend_tableLayout(v7, v8, v9, v10);
    v22 = sub_2211BB390(v23, a3, a4);
  }

  return v22;
}

void sub_2216E5358(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2216E538C(void *a1, CGFloat a2, CGFloat a3)
{
  v5 = a1;
  objc_msgSend_setCurrentScreenScale_(v5, v6, v7, v8, a3);
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeScale(&v35, a3, a3);
  objc_msgSend_layerFrameInScaledCanvas(v5, v9, v10, v11);
  t1 = v35;
  CGAffineTransformTranslate(&v34, &t1, -v12, -v13);
  v35 = v34;
  t1 = v34;
  CGAffineTransformScale(&v34, &t1, a2, a2);
  v35 = v34;
  v17 = objc_msgSend_layout(v5, v14, v15, v16);
  v21 = v17;
  if (v17)
  {
    objc_msgSend_transformInRoot(v17, v18, v19, v20);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  v32 = v35;
  CGAffineTransformConcat(&v34, &t1, &v32);
  v35 = v34;

  v25 = objc_msgSend_tableLayout(v5, v22, v23, v24);
  v29 = sub_2211B4394(v25, v26, v27, v28);
  v34 = v35;
  objc_msgSend_setUserSpaceToDeviceSpaceTransform_(v29, v30, &v34, v31);
}

void sub_2216E6C10(uint64_t a1, void *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v85 = a2;
  v81 = objc_msgSend_cell(v85, v3, v4, v5);
  v83 = objc_msgSend_richTextValue(v81, v6, v7, v8);
  v12 = objc_msgSend_range(v83, v9, v10, v11);
  v14 = v13;
  obj = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(v83, v13, 6, v12, v13);
  v18 = objc_msgSend_cellID(v85, v15, v16, v17);
  v84 = objc_msgSend_p_columnForCellID_useCache_(*(a1 + 32), v19, v18, 0);
  if (v84)
  {
    objc_msgSend_p_contentFrameWithCellID_(*(a1 + 32), v20, v18, v21);
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v92 = 0u;
    v93 = 0u;
    v91 = 0u;
    v33 = *(a1 + 32);
    if (v33)
    {
      objc_msgSend_p_horizontalAlignmentTransformForHyperlinkWithColumn_cell_cellID_(v33, v22, v84, v81, v18);
    }

    v35 = objc_msgSend_range(v84, v22, v23, v24);
    if (v35 == v12 && v34 == v14)
    {
      v36 = obj;
    }

    else
    {
      v36 = objc_msgSend_smartFieldsWithAttributeKind_intersectingRange_(v83, v34, 6, v35, v34);
    }

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    obj = v36;
    v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v37, &v87, v94, 16);
    if (v38)
    {
      v39 = *v88;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v88 != v39)
          {
            objc_enumerationMutation(obj);
          }

          objc_opt_class();
          v44 = TSUDynamicCast();
          if (v44)
          {
            v45 = objc_msgSend_cellID(v85, v41, v42, v43);
            objc_msgSend_setHyperlinkCellID_(v83, v46, v45, v47);
            v48 = *(a1 + 32);
            v86[0] = v91;
            v86[1] = v92;
            v86[2] = v93;
            objc_msgSend_p_naturalBoundsRectForHyperlinkField_cellID_column_contentFrame_horizontalAlignmentTransform_(v48, v49, v44, v18, v84, v86, v26, v28, v30, v32);
            v51 = v50;
            v53 = v52;
            v55 = v54;
            v57 = v56;
            if (TSURectIsFinite())
            {
              v61 = objc_msgSend_url(v44, v58, v59, v60);
              v62 = MEMORY[0x277D80298];
              v66 = objc_msgSend_bezierPathWithRect_(MEMORY[0x277D81160], v63, v64, v65, v51, v53, v55, v57);
              v68 = objc_msgSend_hyperlinkRegionWithURL_bezierPath_(v62, v67, v61, v66);

              objc_msgSend_addObject_(*(a1 + 40), v69, v68, v70);
            }

            else
            {
              v71 = MEMORY[0x277D81150];
              v72 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v58, "[TSTTableRep hyperlinkRegions]_block_invoke", v60);
              v75 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v73, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v74);
              objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v71, v76, v72, v75, 2988, 0, "Bounds of hyperlink {%@} are not finite", v44);

              objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v77, v78, v79);
            }
          }
        }

        v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v80, &v87, v94, 16);
      }

      while (v38);
    }
  }
}

void sub_2216E744C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = objc_msgSend_cellID(a2, a2, a3, a4);
  v10 = *(a1 + 40);
  v9 = *(a1 + 48);
  if (v10 != 0x7FFFFFFF && (v10 & 0xFFFF00000000) == 0x7FFF00000000)
  {
    v12 = 0;
  }

  else
  {
    v12 = WORD2(*(a1 + 40));
  }

  if (v10 == 0x7FFFFFFF && (v10 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    v13 = 0;
  }

  else
  {
    v13 = *(a1 + 40);
  }

  if (HIDWORD(v9))
  {
    v14 = v10 == 0x7FFFFFFF;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v10 + HIDWORD(v9) - 1;
  }

  if (v9)
  {
    v16 = WORD2(v10) == 0x7FFF;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = 0x7FFF;
  }

  else
  {
    v17 = v9 + WORD2(v10) - 1;
  }

  v18 = objc_msgSend_layoutEngine(*(a1 + 32), v5, v6, v7);
  v20 = v18;
  if (v13 == v8)
  {
    v21 = 0;
  }

  else
  {
    v21 = &v103;
  }

  if (v13 != v8)
  {
    v103 = 0;
  }

  if (v12 == WORD2(v8))
  {
    v22 = 0;
  }

  else
  {
    v22 = &v102;
  }

  if (v12 != WORD2(v8))
  {
    v102 = 0;
  }

  if (v15 == v8)
  {
    v23 = 0;
  }

  else
  {
    v23 = &v101;
  }

  if (v15 != v8)
  {
    v101 = 0;
  }

  if (v17 == WORD2(v8))
  {
    v24 = 0;
  }

  else
  {
    v24 = &v100;
  }

  if (v17 != WORD2(v8))
  {
    v100 = 0;
  }

  objc_msgSend_strokesForCellID_top_left_bottom_right_(v18, v19, v8, v21, v22, v23, v24);
  if (v13 == v8)
  {
    v25 = 0;
  }

  else
  {
    v25 = v103;
  }

  if (v12 == WORD2(v8))
  {
    v98 = 0;
  }

  else
  {
    v98 = v102;
  }

  if (v15 == v8)
  {
    v99 = 0;
  }

  else
  {
    v99 = v101;
  }

  v95 = a1;
  if (v17 == WORD2(v8))
  {
    v97 = 0;
  }

  else
  {
    v97 = v100;
  }

  v32 = objc_msgSend_cellBorder(TSTCellBorder, v26, v27, v28);
  if (v25)
  {
    v33 = v13 == v8;
  }

  else
  {
    v33 = 1;
  }

  v34 = v25;
  v35 = !v33;
  v96 = v34;
  if (v33)
  {
    v36 = 0;
  }

  else
  {
    v36 = objc_msgSend_mutableCopy(v34, v29, v30, v31);
    v40 = objc_msgSend_color(v36, v37, v38, v39);
    v44 = objc_msgSend_colorWithAlphaComponent_(v40, v41, v42, v43, 0.100000001);
    objc_msgSend_setColor_(v36, v45, v44, v46);

    objc_msgSend_setDontClearBackground_(v36, v47, 1, v48);
    objc_msgSend_setTopStroke_order_(v32, v49, v36, 1);
  }

  if (!v99 || v15 == v8)
  {
    v63 = v36;
  }

  else
  {
    v50 = objc_msgSend_mutableCopy(v99, v29, v30, v31);

    v54 = objc_msgSend_color(v50, v51, v52, v53);
    v58 = objc_msgSend_colorWithAlphaComponent_(v54, v55, v56, v57, 0.100000001);
    objc_msgSend_setColor_(v50, v59, v58, v60);

    objc_msgSend_setDontClearBackground_(v50, v61, 1, v62);
    v35 = 1;
    v63 = v50;
    objc_msgSend_setBottomStroke_order_(v32, v64, v50, 1);
  }

  if (!v98 || v12 == WORD2(v8))
  {
    if (!v97 || v17 == WORD2(v8))
    {
      if (!v35)
      {
        goto LABEL_79;
      }

      goto LABEL_78;
    }
  }

  else
  {
    v65 = objc_msgSend_mutableCopy(v98, v29, v30, v31);

    v69 = objc_msgSend_color(v65, v66, v67, v68);
    v73 = objc_msgSend_colorWithAlphaComponent_(v69, v70, v71, v72, 0.100000001);
    objc_msgSend_setColor_(v65, v74, v73, v75);

    objc_msgSend_setDontClearBackground_(v65, v76, 1, v77);
    objc_msgSend_setLeftStroke_order_(v32, v78, v65, 1);
    if (!v97)
    {
      v63 = v65;
      goto LABEL_78;
    }

    v63 = v65;
    if (v17 == WORD2(v8))
    {
      goto LABEL_78;
    }
  }

  v79 = objc_msgSend_mutableCopy(v97, v29, v30, v31);

  v83 = objc_msgSend_color(v79, v80, v81, v82);
  v87 = objc_msgSend_colorWithAlphaComponent_(v83, v84, v85, v86, 0.100000001);
  objc_msgSend_setColor_(v79, v88, v87, v89);

  objc_msgSend_setDontClearBackground_(v79, v90, 1, v91);
  v63 = v79;
  objc_msgSend_setRightStroke_order_(v32, v92, v79, 1);
LABEL_78:
  v93 = objc_msgSend_layoutEngine(*(v95 + 32), v29, v30, v31);
  objc_msgSend_setDynamicCellBorder_forCellID_(v93, v94, v32, v8);

LABEL_79:
}

void sub_2216E7A88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2216E80A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, void *a24, void *a25, void *a26, void *a27, void *a28, void *a29, void *a30, void *a31, void *a32, void *a33, void *a34)
{
  _Block_object_dispose((v43 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_2216E82DC(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v6 = objc_msgSend_cellID(a2, a2, a3, a4);
  v13 = objc_msgSend_cellStyleAtCellID_isDefault_(*(a1 + 32), v7, v6, 0);
  v10 = objc_msgSend_valueForProperty_(v13, v8, 898, v9);
  if (objc_msgSend_p_prefersHDRRenderingForFill_(*(a1 + 40), v11, v10, v12))
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_2216E8AF8(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  CGContextSaveGState(a2);
  CGContextSetAllowsFontSubpixelQuantization(a2, 0);
  v8 = objc_msgSend_canvas(*(a1 + 32), v5, v6, v7);
  if (objc_msgSend_isPrinting(v8, v9, v10, v11))
  {

LABEL_4:
    v20 = 0;
    goto LABEL_6;
  }

  v15 = objc_msgSend_canvas(*(a1 + 32), v12, v13, v14);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v15, v16, v17, v18);

  if (isDrawingIntoPDF)
  {
    goto LABEL_4;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(a2);
  CGContextBeginTransparencyLayerWithRect(a2, ClipBoundingBox, 0);
  v20 = 1;
LABEL_6:
  sub_2216E538C(*(a1 + 32), *(a1 + 64), 1.0);
  CGContextTranslateCTM(a2, -*(a1 + 72), -*(a1 + 80));
  objc_msgSend_layerFrameInScaledCanvas(*(a1 + 32), v21, v22, v23);
  CGContextTranslateCTM(a2, -v24, -v25);
  CGContextScaleCTM(a2, *(a1 + 64), *(a1 + 64));
  v29 = *(a1 + 40);
  if (v29)
  {
    objc_msgSend_transformInRoot(v29, v26, v27, v28);
  }

  else
  {
    memset(&v54, 0, sizeof(v54));
  }

  CGContextConcatCTM(a2, &v54);
  v33 = *(a1 + 32);
  if (v33)
  {
    objc_msgSend_transformFromCanvas(v33, v30, v31, v32);
  }

  else
  {
    memset(&v54, 0, sizeof(v54));
  }

  CGContextConcatCTM(a2, &v54);
  if (objc_msgSend_drawsBlackAndWhite(*(a1 + 48), v34, v35, v36))
  {
    objc_msgSend_beginDynamicMode_(*(a1 + 56), v37, *(a1 + 40), v38);
    v39 = *(a1 + 56);
    v43 = objc_msgSend_blackColor(MEMORY[0x277D81180], v40, v41, v42);
    v47 = objc_msgSend_cellRange(*(a1 + 56), v44, v45, v46);
    objc_msgSend_updateDynamicFontColor_andRange_(v39, v48, v43, v47, v48);
  }

  objc_msgSend_p_drawAnimation_inContext_(*(a1 + 32), v37, *(a1 + 48), a2, *&v54.a, *&v54.c, *&v54.tx);
  if (objc_msgSend_drawsBlackAndWhite(*(a1 + 48), v49, v50, v51))
  {
    objc_msgSend_endDynamicMode_(*(a1 + 56), v52, *(a1 + 40), v53);
  }

  if (v20)
  {
    CGContextEndTransparencyLayer(a2);
  }

  CGContextRestoreGState(a2);
  objc_sync_exit(v4);
}

void sub_2216E8CF8(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);

  _Unwind_Resume(a1);
}

void sub_2216E95E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, void *a13, void *a14)
{
  if (!v19)
  {
  }

  _Unwind_Resume(a1);
}

void sub_2216E9F3C(void *a1, void *a2, CGContext *a3)
{
  v5 = a1;
  v8 = a2;
  if (!v8)
  {
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "void TSTTableRepPrepareToDrawLayoutSpace(TSTTableRep *__strong _Nonnull, TSTLayoutSpace *__strong _Nullable, CGContextRef _Nullable)", v7);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 5854, 0, "invalid nil value for '%{public}s'", "space");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
  }

  CGContextSaveGState(a3);
  if (v8)
  {
    objc_msgSend_transformToCanvas(v8, v18, v19, v20);
  }

  else
  {
    memset(&transform, 0, sizeof(transform));
  }

  CGContextConcatCTM(a3, &transform);
  v24 = objc_msgSend_canvas(v5, v21, v22, v23);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v24, v25, v26, v27);

  if (isDrawingIntoPDF)
  {
    goto LABEL_7;
  }

  memset(&transform, 0, sizeof(transform));
  if (v8)
  {
    objc_msgSend_transformToDevice(v8, v29, v30, v31);
  }

  memset(&v53, 0, sizeof(v53));
  CGContextGetCTM(&v53, a3);
  if (transform.a >= 0.0 && transform.d >= 0.0 && transform.ty + transform.b + transform.d * 0.0 == transform.ty + transform.d * 0.0 + transform.b * 0.0 && transform.tx + transform.c + transform.a * 0.0 == transform.tx + transform.c * 0.0 + transform.a * 0.0 && v53.b == 0.0 && v53.c == 0.0)
  {
    objc_msgSend_setDrawPreventAntialias_(v8, v29, 1, v31);
  }

  else
  {
LABEL_7:
    objc_msgSend_setDrawPreventAntialias_(v8, v29, 0, v31);
  }

  v35 = objc_msgSend_currentAnimation(v5, v32, v33, v34);
  v42 = objc_msgSend_enabled(v35, v36, v37, v38);
  if (v42)
  {
    v24 = objc_msgSend_currentAnimation(v5, v39, v40, v41);
    if (objc_msgSend_drawsBlackAndWhite(v24, v43, v44, v45))
    {

      goto LABEL_24;
    }
  }

  v48 = objc_msgSend_canvas(v5, v39, v40, v41);
  shouldSuppressBackgrounds = objc_msgSend_shouldSuppressBackgrounds(v48, v49, v50, v51);

  if (v42)
  {

    if ((shouldSuppressBackgrounds & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (shouldSuppressBackgrounds)
  {
LABEL_24:
    objc_msgSend_setDrawBlackAndWhite_(v8, v46, 1, v47);
  }

LABEL_25:
}

unint64_t sub_2216EA22C(void *a1, int a2, unsigned int a3, void *a4, uint64_t a5, unint64_t a6, unint64_t a7, unsigned int a8, double a9, double a10, double a11, double a12, double a13, double a14, double a15, uint64_t a16)
{
  v163 = *MEMORY[0x277D85DE8];
  v22 = a1;
  v155 = a4;
  v149 = v22;
  v26 = objc_msgSend_tableLayout(v22, v23, v24, v25);
  v151 = v26;
  v30 = objc_msgSend_layoutEngine(v26, v27, v28, v29);
  v161 = xmmword_2217E0780;
  v162 = xmmword_2217E0780;
  if (WORD2(a5) == 0x7FFF)
  {
    v34 = 0xFFFFFFFFLL;
  }

  else
  {
    v34 = WORD2(a5);
  }

  v35 = a5 << 32;
  if (a5 == 0x7FFFFFFF)
  {
    v35 = 0xFFFFFFFF00000000;
  }

  v36 = v35 | v34;
  v157 = v35 | v34;
  v158 = v35 | v34;
  v159 = v35 | v34;
  v160 = v35 | v34;
  v153 = v30;
  v37 = objc_msgSend_numberOfHeaderColumns(v30, v31, v32, v33);
  v41 = objc_msgSend_editingSpillingTextRange(v26, v38, v39, v40);
  v45 = v41;
  v46 = v42;
  v150 = 0;
  v47 = v41;
  v48 = v41 & 0xFFFF00000000;
  if (v41 != 0x7FFFFFFFLL && v48 != 0x7FFF00000000)
  {
    v150 = 0;
    if (v42 >> 32)
    {
      if (v42)
      {
        if (v41 <= a5 || v41 == 0x7FFFFFFF)
        {
          v49 = v41 + HIDWORD(v42) - 1;
          if (v41 == 0x7FFFFFFF)
          {
            v49 = 0x7FFFFFFF;
          }

          v150 = v49 >= a5;
        }

        else
        {
          v150 = 0;
        }
      }
    }
  }

  if (objc_msgSend_layoutDirectionIsLeftToRight(v149, v42, v43, v44))
  {
    v52 = a8;
    if (a8 > 4)
    {
      goto LABEL_33;
    }

    v52 = a8;
    if (((1 << a8) & 0x15) == 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    v53 = a8;
LABEL_28:
    if (WORD2(a5) != a3)
    {
      LODWORD(v161) = a5;
      WORD2(v161) = WORD2(a5) + 1;
      v54 = a3 - WORD2(a5);
      if (a3 < WORD2(a5))
      {
        v54 = 0;
      }

      *(&v161 + 1) = v54 | 0x100000000;
    }

    v52 = v53;
    goto LABEL_33;
  }

  v53 = 0;
  if (a8 > 1)
  {
    if (a8 != 2)
    {
      v52 = a8;
      if (a8 != 4)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (!a8)
  {
LABEL_34:
    LODWORD(v162) = a5;
    v56 = v37 + a2;
    if (WORD2(a5) >= v37)
    {
      v57 = v37 + a2;
    }

    else
    {
      v57 = a2;
    }

    if (WORD2(a5) < v37)
    {
      v56 = a2;
    }

    v93 = WORD2(a5) >= v57;
    v58 = WORD2(a5) - v57;
    WORD2(v162) = v56;
    if (v93)
    {
      v59 = v58;
    }

    else
    {
      v59 = 0;
    }

    *(&v162 + 1) = v59 | 0x100000000;
    objc_msgSend_frameForGridRange_(v155, v50, v36, v36);
    if (a8 == 2)
    {
      v55 = v60 * 0.5;
    }

    else
    {
      v55 = 0.0;
    }

    if (WORD2(a5) == a2)
    {
      *&v162 = 0x7FFF7FFFFFFFLL;
    }

    goto LABEL_47;
  }

  v52 = a8;
  if (a8 == 1)
  {
    goto LABEL_28;
  }

LABEL_33:
  v55 = 0.0;
  if (v52 - 1 <= 1)
  {
    goto LABEL_34;
  }

LABEL_47:
  v144 = v36;
  v143 = v45;
  if (v47 != 0x7FFFFFFF && v48 == 0x7FFF00000000)
  {
    v62 = 0;
  }

  else
  {
    v62 = WORD2(v45);
  }

  v141 = v62 + ~WORD2(a5);
  v142 = HIDWORD(v45);
  if (v46)
  {
    v63 = WORD2(v45) == 0x7FFF;
  }

  else
  {
    v63 = 1;
  }

  v64 = (v46 + WORD2(v45) - 1);
  if (v63)
  {
    v64 = 0x7FFF;
  }

  v145 = v62;
  v146 = v64;
  v65 = &v161;
  v66 = &v157;
  v67 = 1;
  do
  {
    v68 = v67;
    if (*v65 != 0x7FFFFFFF && (*v65 & 0xFFFF00000000) != 0x7FFF00000000)
    {
      v70 = *(v65 + 1);
      if (HIDWORD(v70) && v70 != 0)
      {
        if (v68)
        {
          v72 = sub_2211C0BB8(v151, a5, 1);
          v73 = WORD2(v72);
          if (v150 && WORD2(a5) < v145 && WORD2(v72) > v145)
          {
            DWORD2(v161) = v141;
          }

          v74 = HIDWORD(v72);
          if (*v65 != 0x7FFFFFFF && (*v65 & 0xFFFF00000000) == 0x7FFF00000000)
          {
            LOWORD(v76) = 0;
          }

          else
          {
            LOWORD(v76) = WORD2(*v65);
          }

          v77 = v72;
          v78 = 1;
        }

        else
        {
          v79 = sub_2211C0634(v151, a5, 1);
          v74 = HIDWORD(v79);
          if (v150 && WORD2(a5) > v146)
          {
            v80 = a6;
            v81 = a7;
            if (WORD2(v79) < v146)
            {
              v81 = v46;
              LODWORD(v79) = v143;
              v80 = v143;
              LOWORD(v74) = v142;
            }
          }

          else
          {
            v80 = a6;
            v81 = a7;
          }

          v77 = v79;
          v73 = v74;
          if (v79 != 0x7FFFFFFFLL && v74 != 0x7FFFLL && v80 != 0x7FFFFFFF && (v80 & 0xFFFF00000000) != 0x7FFF00000000 && HIDWORD(v81) && v81)
          {
            if (WORD2(v80) == 0x7FFF)
            {
              v82 = 0x7FFF;
            }

            else
            {
              v82 = v81 + WORD2(v80) - 1;
            }

            v83 = WORD2(v162);
            WORD2(v162) = v82 + 1;
            DWORD2(v162) += v83 + (~v82 | 0xFFFF0000);
          }

          v84 = *(v65 + 1);
          if (v84)
          {
            v85 = *(v65 + 1) == 0x7FFF;
          }

          else
          {
            v85 = 1;
          }

          if (v85)
          {
            LOWORD(v76) = 0x7FFF;
          }

          else
          {
            v76 = v84 + *(v65 + 1) - 1;
          }

          v78 = -1;
        }

        v87 = v77 != 0x7FFFFFFF && v73 != 0x7FFF;
        while (1)
        {
          v88 = *v65;
          if (v68)
          {
            v89 = HIDWORD(v88);
            if (v89 == 0x7FFF)
            {
              v90 = WORD2(*v65);
            }

            else
            {
              v90 = v89 + *(v65 + 4);
            }

            v91 = v76 == v74 && v87;
            if (v76 >= v90 || v91)
            {
              goto LABEL_69;
            }
          }

          else
          {
            v93 = (v88 & 0xFFFF00000000) == 0x7FFF00000000 && v88 != 0x7FFFFFFF || v76 >= WORD2(*v65);
            v94 = v93;
            if (v76 == 0xFFFF || !v94)
            {
              goto LABEL_145;
            }

            if (v76 == v74 && v87)
            {
              goto LABEL_69;
            }
          }

          if (!TSUCellRect::numColumns(v65))
          {
            goto LABEL_69;
          }

          if (*(v66 + 2) >= v76)
          {
            v96 = v66;
          }

          else
          {
            v96 = v66 + 1;
          }

          *v96 = v76;
          objc_msgSend_contentFrameForGridRange_(v155, v50, *v66, v66[1]);
          if (a8 == 2)
          {
            if (a11 * 0.5 <= v97 - v55)
            {
              goto LABEL_69;
            }
          }

          else if (a11 <= v97)
          {
            goto LABEL_69;
          }

          LOWORD(v76) = v76 + v78;
        }
      }
    }

    *v66 = -1;
    v66[1] = -1;
LABEL_69:
    v67 = 0;
    v65 = &v162;
    v66 = &v159;
  }

  while ((v68 & 1) != 0);
LABEL_145:
  v98 = v157;
  LODWORD(v100) = v159;
  LODWORD(v99) = v160;
  if (v157 == -1 || (v101 = v158, v158 == -1))
  {
    v101 = v160;
    v98 = v159;
    v102 = v144;
  }

  else
  {
    v102 = v144;
    if (v157 > v158 || (v103 = HIDWORD(v157), HIDWORD(v157) == 0xFFFFFFFF) || (v104 = HIDWORD(v158), HIDWORD(v158) == 0xFFFFFFFF) || v103 > v104)
    {
      v101 = v160;
      v98 = v159;
    }

    else if (v159 == -1 || v160 == -1 || v159 > v160 || (v105 = HIDWORD(v159), HIDWORD(v159) == 0xFFFFFFFF) || (v106 = HIDWORD(v160), HIDWORD(v160) == 0xFFFFFFFF) || v105 > v106)
    {
      LODWORD(v99) = v158;
      LODWORD(v100) = v157;
    }

    else
    {
      if (v157 >= v159)
      {
        v100 = v159;
      }

      else
      {
        v100 = v157;
      }

      if (v103 >= v105)
      {
        v103 = HIDWORD(v159);
      }

      if (v158 <= v160)
      {
        v99 = v160;
      }

      else
      {
        v99 = v158;
      }

      if (v104 <= v106)
      {
        v104 = HIDWORD(v160);
      }

      v101 = v99 | (v104 << 32);
      v98 = v100 | (v103 << 32);
    }
  }

  if (v100 == -1 || v99 == -1 || v100 > v99 || (HIDWORD(v98) <= HIDWORD(v101) ? (v107 = HIDWORD(v98) == 0xFFFFFFFF) : (v107 = 1), !v107 ? (v108 = HIDWORD(v101) == 0xFFFFFFFF) : (v108 = 1), v108))
  {
    v101 = -1;
    v98 = -1;
  }

  v109 = HIDWORD(v98);
  if (v98 == -1 || v101 == -1 || v98 > v101)
  {
    if (v98 == -1)
    {
      v113 = 0x7FFF00000000;
    }

    else
    {
      v113 = v98 << 32;
    }

LABEL_202:
    objc_msgSend_contentFrameForGridRange_(v155, v50, v102, v102);
    goto LABEL_233;
  }

  v111 = HIDWORD(v101) == 0xFFFFFFFF || v109 == 0xFFFFFFFF || v109 > HIDWORD(v101);
  v112 = v111;
  if (v111)
  {
    v114 = 0;
  }

  else
  {
    v114 = ((v101 - (v98 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (v101 - v98 + 1)) + 0x100000000;
  }

  v113 = v98 << 32;
  if (v112)
  {
    goto LABEL_202;
  }

  v121 = v113 == 0x7FFF00000000;
  v122 = v109 != 0x7FFFFFFF;
  v123 = v122 && v121;
  if (v122 && v121)
  {
    v124 = 0;
  }

  else
  {
    v124 = v98;
  }

  if (v114)
  {
    v125 = v113 == 0x7FFF00000000;
  }

  else
  {
    v125 = 1;
  }

  v126 = v98 + v114 - 1;
  if (v125)
  {
    v127 = 0x7FFF;
  }

  else
  {
    v127 = v98 + v114 - 1;
  }

  if (v124 < v127)
  {
    if (HIDWORD(v114))
    {
      v128 = v114 == 0;
    }

    else
    {
      v128 = 1;
    }

    v129 = v128;
    if (v114)
    {
      v130 = v113 == 0x7FFF00000000;
    }

    else
    {
      v130 = 1;
    }

    if (v130)
    {
      v126 = 0x7FFF;
    }

    v154 = v126;
    v131 = v127;
    do
    {
      if ((objc_msgSend_hasHiddenColumnAtIndex_(v153, v50, v124, v51) & 1) == 0)
      {
        v132 = objc_msgSend_indexOfVisibleColumnAfterColumnAtIndex_(v153, v50, v124, v51);
        if ((v129 & 1) == 0)
        {
          v51 = v132;
          if (v123 || v132 >= v98 && v132 <= v154)
          {
            objc_msgSend_setStrokeSpillForRightGridColumn_leftGridColumn_inRow_(v153, v50, v124 + 1, v132, a5);
          }
        }
      }

      ++v124;
    }

    while (v131 != v124);
  }

  objc_msgSend_contentFrameForGridRange_(v155, v50, v98, v101);
LABEL_233:
  v133 = v119;
  v134 = v120;
  if (a8 != 1)
  {
    if (a8 == 2)
    {
      if (v119 > a15)
      {
        v135 = v118 - a13;
LABEL_243:
        v138 = *&v135;
        goto LABEL_245;
      }

      goto LABEL_244;
    }

    IsLeftToRight = objc_msgSend_layoutDirectionIsLeftToRight(v149, v115, v116, v117);
    if (a8 == 4)
    {
      v137 = IsLeftToRight;
    }

    else
    {
      v137 = 1;
    }

    if (v137)
    {
      goto LABEL_244;
    }
  }

  if (v133 > a15)
  {
    v135 = a15 - v133;
    goto LABEL_243;
  }

LABEL_244:
  v138 = *MEMORY[0x277CBF348];
LABEL_245:
  if (a16)
  {
    *a16 = v138;
    *(a16 + 16) = v133;
    *(a16 + 24) = v134;
  }

  if (v109 == 0xFFFFFFFF)
  {
    v139 = 0x7FFFFFFFLL;
  }

  else
  {
    v139 = HIDWORD(v98);
  }

  return v113 | v139;
}

BOOL sub_2216EB9E0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if (HIDWORD(a2) && a2)
  {
    v4 = a1 & 0xFFFF00000000;
    if (a1 != 0x7FFFFFFFLL || v4 == 0x7FFF00000000)
    {
      v9 = a1 == 0x7FFFFFFF && v4 != 0x7FFF00000000;
      if (a1 > a3 && !v9)
      {
        return 0;
      }

      v10 = a1 + HIDWORD(a2) - 1;
      if (a1 == 0x7FFFFFFF)
      {
        v10 = 0x7FFFFFFF;
      }

      if (v10 < a3)
      {
        return 0;
      }

      if (a1 != 0x7FFFFFFFLL && v4 == 0x7FFF00000000)
      {
        return 1;
      }
    }

    v5 = a2 + WORD2(a1) - 1;
    if (WORD2(a1) == 0x7FFF || a2 == 0)
    {
      v5 = 0x7FFF;
    }

    v7 = v5 >= WORD2(a3);
    return WORD2(a1) <= WORD2(a3) && v7;
  }

  return v3;
}

void sub_2216EBAB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  v7 = TSUCheckedDynamicCast();
  objc_opt_class();
  v8 = TSUCheckedDynamicCast();
  objc_msgSend_getValue_(v8, v9, v12, v10);
  objc_msgSend_didDrawCellImageFill_inCellRange_(*(a1 + 32), v11, v7, v12[0], v12[1]);
}

void sub_2216EBCA8(void *a1, void *a2, unint64_t a3, unint64_t a4, void *a5, char a6, void *a7, uint64_t a8)
{
  v13 = a1;
  v14 = a2;
  v106 = a5;
  v105 = a7;
  v107 = v13;
  v112 = v14;
  v18 = objc_msgSend_tableLayout(v13, v15, v16, v17);
  v102 = v18;
  v22 = objc_msgSend_layoutEngine(v18, v19, v20, v21);
  v26 = objc_msgSend_layoutEngine(v13, v23, v24, v25);
  if (objc_msgSend_dynamicRepResize(v26, v27, v28, v29))
  {
    v33 = objc_msgSend_tableInfo(v13, v30, v31, v32);
    v37 = objc_msgSend_numberOfPopulatedCells(v33, v34, v35, v36);

    if (v37 > 0x19)
    {
      goto LABEL_71;
    }
  }

  else
  {
  }

  isDrawingInFlippedContext = objc_msgSend_isDrawingInFlippedContext(v13, v38, v39, v40);
  v41 = HIDWORD(a3);
  v42 = HIDWORD(a4);
  v44 = a4 == -1 || a3 == -1 || a3 > a4;
  v45 = v44;
  v100 = v45;
  if (v44)
  {
    v101 = 0;
  }

  else
  {
    v101 = 0;
    if (v41 != 0xFFFFFFFF && v42 != 0xFFFFFFFF && v41 <= v42)
    {
      v101 = ((a4 - (a3 & 0xFFFFFFFF00000000)) & 0xFFFFFFFF00000000 | (a4 - a3 + 1)) + 0x100000000;
    }
  }

  v103 = HIDWORD(a4);
  v46 = a3 << 32;
  if (a3 == -1)
  {
    v46 = 0x7FFF00000000;
  }

  v108 = v46;
  if (v41 == 0xFFFFFFFF)
  {
    v47 = 0x7FFFFFFFLL;
  }

  else
  {
    v47 = HIDWORD(a3);
  }

  v48 = TSDCGContextGetPdfTagger();
  v93 = &unk_283599118;
  v49 = TSUProtocolCast();

  if (v41 <= v103)
  {
    v95 = v108 | v47;
    v96 = (a4 - a3 + 1) | 0x100000000;
    v94 = v116;
    v97 = v22;
    v98 = v49;
    do
    {
      v55 = objc_msgSend_modelRowForLayoutRow_(v22, v50, v41, v51, v93, v94);
      if (v49)
      {
        objc_msgSend_beginTableRow_(v49, v52, v55, v54);
      }

      v56 = v41;
      v57 = v100;
      if (v41 == -1)
      {
        v57 = 1;
        v56 = 0x7FFFFFFFLL;
      }

      if (v57)
      {
        v58 = 0;
      }

      else
      {
        v58 = v96;
      }

      v59 = v56 | v108;
      v139[0] = 0;
      v139[1] = v139;
      v139[2] = 0x4012000000;
      v139[3] = sub_2216EC370;
      v139[4] = nullsub_89;
      v139[5] = &unk_22188E88F;
      v140 = xmmword_2217E0780;
      v113 = v56 | v108;
      v114 = v58;
      if ((a6 & 1) == 0)
      {
        v60 = v56 != 0x7FFFFFFF || v108 == 0x7FFF00000000;
        v61 = v60 ? v56 : 0;
        v62 = v56 != 0x7FFFFFFF && v108 == 0x7FFF00000000;
        v63 = v62 ? 0 : v108;
        if (v63 && (v138 = 0, (objc_msgSend_cell_forCellID_(v22, v52, &v138, v63 | v61) & 1) == 0))
        {
          v64 = sub_2211C0634(v18, v63 | v61, 0);
          v59 = sub_221286760(v113, v114, v64);
          v58 = v52;
        }

        else
        {
          v59 = v113;
          v58 = v114;
        }

        v65 = v59 & 0xFFFF00000000;
        v66 = !v58 || v65 == 0x7FFF00000000;
        v67 = v66 ? 0x7FFFLL : (v58 + WORD2(v59) - 1);
        v68 = v65 != 0x7FFF00000000 && v59 == 0x7FFFFFFFLL;
        v69 = v68 ? 0 : v59;
        if (objc_msgSend_numberOfColumns(v22, v52, v53, v54) - 1 != v67)
        {
          v70 = v69 | (v67 << 32);
          v137 = 0;
          if ((objc_msgSend_cell_forCellID_(v22, v52, &v137, v70) & 1) == 0)
          {
            v71 = sub_2211C0BB8(v18, v70, 0);
            v59 = sub_221286760(v59, v58, v71);
            v58 = v52;
          }
        }
      }

      v110 = v55;
      v72 = objc_msgSend_cellRange(v14, v52, v53, v54);
      v74 = sub_221119E0C(v59, v58, v72, v73);
      v76 = v75;
      v78 = objc_msgSend_gridRangeOfLayoutSpace_(TSTLayoutSpace, v75, v14, v77);
      v80 = v79;
      v81 = v22;
      isDynamicallyHidingRowsCols = objc_msgSend_isDynamicallyHidingRowsCols(v22, v79, v82, v83);
      v115[0] = MEMORY[0x277D85DD0];
      v85 = v41;
      v86 = v41 << 32;
      v115[1] = 3221225472;
      v109 = v80 | v86;
      v116[0] = sub_2216EC380;
      v116[1] = &unk_278468B20;
      v125 = v95;
      v126 = v101;
      v87 = v85;
      v127 = v85;
      v128 = v74;
      v129 = v76;
      v88 = v81;
      v117 = v88;
      v118 = v107;
      v49 = v98;
      v89 = v98;
      v130 = v113;
      v131 = v114;
      v134 = isDynamicallyHidingRowsCols;
      v119 = v89;
      v123 = v139;
      v124 = a8;
      v120 = v112;
      v132 = v78 | v86;
      v133 = v109;
      v135 = isDrawingInFlippedContext;
      v121 = v106;
      v136 = a6;
      v122 = v105;
      v18 = v102;
      objc_msgSend_iterateCellsInRange_flags_searchFlags_usingBlock_(v102, v90, v74, v76, 64, 0x20000000, v115);
      if (v98)
      {
        objc_msgSend_endTableRow_(v89, v91, v110, v92);
      }

      v41 = objc_msgSend_indexOfVisibleRowAfterAndIncludingRowAtIndex_(v88, v91, (v87 + 1), v92);

      _Block_object_dispose(v139, 8);
      v14 = v112;
      v22 = v97;
    }

    while (v41 <= v103);
  }

LABEL_71:
}

__n128 sub_2216EC370(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2216EC380(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_cell(v3, v4, v5, v6);
  v11 = objc_msgSend_cellID(v3, v8, v9, v10);
  v15 = objc_msgSend_mergeRange(v3, v12, v13, v14);
  v19 = HIDWORD(v11);
  if (v15 != 0x7FFFFFFF && (v15 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (v16 >> 32)
    {
      if (v16)
      {
        v20 = objc_msgSend_mergeRange(v3, v16, v17, v18);
        if (v20 != v11 || ((v20 ^ v11) & 0xFFFF00000000) != 0)
        {
          v74 = objc_msgSend_mergeRange(v3, v16, v21, v18);
          v76 = sub_221119E0C(v74, v75, *(a1 + 96), *(a1 + 104));
          if (v76 != 0x7FFFFFFF && (v76 & 0xFFFF00000000) != 0x7FFF00000000)
          {
            if (v16 >> 32)
            {
              if (v16)
              {
                if (*(a1 + 112) == v76)
                {
                  v78 = objc_msgSend_mergeRange(v3, v16, v77, v18);
                  v80 = sub_221119E0C(v78, v79, *(a1 + 116), *(a1 + 124));
                  if (v80 != 0x7FFFFFFF && (v80 & 0xFFFF00000000) != 0x7FFF00000000 && v16 >> 32 && v16 && WORD2(v80) == WORD2(v11))
                  {
                    v11 = objc_msgSend_mergeRange(v3, v16, v81, v18);
                    v82 = *(a1 + 32);
                    v463 = v7;
                    v84 = objc_msgSend_cell_forCellID_(v82, v83, &v463, v11);
                    v19 = HIDWORD(v11);
                    v85 = v463;

                    if (v84)
                    {
                      v7 = v85;
                    }

                    else
                    {
                      v304 = objc_msgSend_tableInfo(*(a1 + 40), v16, v86, v18);
                      v7 = objc_msgSend_newCell(v304, v305, v306, v307);

                      v311 = objc_msgSend_tableInfo(*(a1 + 40), v308, v309, v310);
                      objc_msgSend_getCell_atCellID_(v311, v312, v7, v11);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v22 = v11 & 0xFFFF0000FFFFFFFFLL | (v19 << 32);
  isCategoryGroupValueCell = objc_msgSend_isCategoryGroupValueCell_(*(a1 + 32), v16, v22, v18);
  if (v7)
  {
    v27 = isCategoryGroupValueCell;
    if (objc_msgSend_hasValueOrError(v7, v24, v25, v26) & 1) != 0 || (objc_msgSend_hasCommentStorage(v7, v24, v28, v26) & 1) != 0 || ((objc_msgSend_hasImportWarningSet(v7, v24, v29, v26) | v27))
    {
      v461 = objc_msgSend_modelCellIDForLayoutCellID_(*(a1 + 32), v24, v11 & 0xFFFF0000FFFFFFFFLL | (v19 << 32), v26);
      v459 = 0;
      v33 = *(a1 + 140);
      if (HIDWORD(v33) && v33)
      {
        v34 = *(a1 + 132);
        v35 = v34 & 0xFFFF00000000;
        if (v34 == 0x7FFFFFFFLL && v35 != 0x7FFF00000000)
        {
          goto LABEL_15;
        }

        v57 = v34 == 0x7FFFFFFF && v35 != 0x7FFF00000000;
        if (v34 <= v11 || v57)
        {
          v58 = v34 + HIDWORD(v33) - 1;
          if (v34 == 0x7FFFFFFF)
          {
            v58 = 0x7FFFFFFF;
          }

          if (v58 >= v11)
          {
            if (v34 != 0x7FFFFFFFLL && v35 == 0x7FFF00000000)
            {
              v38 = 1;
LABEL_23:
              v459 = v38;
              goto LABEL_56;
            }

LABEL_15:
            v36 = WORD2(v34) == 0x7FFF || v33 == 0;
            if (v36)
            {
              v37 = 0x7FFF;
            }

            else
            {
              v37 = v33 + WORD2(v34) - 1;
            }

            v38 = v37 >= v19;
            if (WORD2(v34) > v19)
            {
              v38 = 0;
            }

            goto LABEL_23;
          }
        }

        v459 = 0;
      }

LABEL_56:
      v59 = *(a1 + 48);
      if (v59)
      {
        objc_msgSend_beginTableCell_withCellID_cellHasContents_cellIsPrimary_(v59, v30, v7, v461, 1, v459);
      }

      v60 = objc_msgSend_cellIDToWPColumnCache(*(a1 + 32), v30, v31, v32);
      v63 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v61, (v461 << 15) | WORD2(v461), v62);
      v66 = objc_msgSend_objectForKey_(v60, v64, v63, v65);

      if (v66)
      {
        v70 = v66;
      }

      else
      {
        if (objc_msgSend_valueType(v7, v67, v68, v69) == 9)
        {
          objc_msgSend_richTextValue(v7, v71, v72, v73);
        }

        else
        {
          objc_msgSend_formattedValue(v7, v71, v72, v73);
        }
        v70 = ;
      }

      v87 = v70;

      if (*(a1 + 164) == 1 && (objc_msgSend_isDynamicallyHidingRowsColsCellID_(*(a1 + 32), v88, v22, v89) & 1) != 0)
      {
        goto LABEL_138;
      }

      v432 = *(a1 + 148);
      v435 = *(a1 + 156);
      v91 = *(a1 + 72);
      v92 = *(*(a1 + 80) + 8);
      v447 = *(v92 + 56);
      v448 = *(v92 + 48);
      v442 = *(a1 + 165);
      v93 = v87;
      v94 = *(a1 + 56);
      v95 = *(a1 + 64);
      v458 = *(a1 + 166);
      c = *(a1 + 88);
      v96 = *(a1 + 40);
      v456 = v94;
      v460 = v7;
      v446 = v93;
      v97 = v93;
      v449 = v3;
      v455 = v95;
      v450 = v91;
      v452 = objc_msgSend_tableLayout(v96, v98, v99, v100);
      v453 = objc_msgSend_tableInfo(v96, v101, v102, v103);
      v462 = objc_msgSend_layoutEngine(v96, v104, v105, v106);
      isDynamicallyResizingCellIDForColumnRowAdd = objc_msgSend_isDynamicallyResizingCellIDForColumnRowAdd_(v462, v107, v22, v108);
      v443 = objc_msgSend_modelCellIDForLayoutCellID_(v462, v109, v22, v110);
      context = objc_autoreleasePoolPush();
      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) && objc_msgSend_length(v97, v113, v114, v115))
      {
        v116 = 1;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v454 = 0;
          goto LABEL_85;
        }

        v116 = objc_msgSend_length(v97, v111, v117, v112) != 0;
      }

      v454 = v116;
LABEL_85:
      isDynamicallyHidingRowsColsCellID = objc_msgSend_isDynamicallyHidingRowsColsCellID_(v462, v111, v22, v112);
      if ((v458 & 1) == 0 && ((isDynamicallyHidingRowsColsCellID ^ 1) & 1) == 0)
      {
        goto LABEL_87;
      }

      isDynamicallyHidingTextOfCellID = objc_msgSend_isDynamicallyHidingTextOfCellID_(v462, v119, v22, v120);
      if (v458 & 1) != 0 || ((isDynamicallyHidingTextOfCellID ^ 1))
      {
LABEL_94:
        v132 = objc_msgSend_canvas(v96, v125, v126, v127);
        v429 = v132;
        isCanvasInteractive = objc_msgSend_isCanvasInteractive(v132, v133, v134, v135);
        v426 = objc_msgSend_groupingArrowStateAtCellID_(v462, v136, v22, v137);
        v476[0] = 0;
        v138 = *(MEMORY[0x277CBF398] + 16);
        v475[0] = *MEMORY[0x277CBF398];
        v475[1] = v138;
        v473 = v475[0];
        v474 = v138;
        r1.origin = v475[0];
        r1.size = v138;
        v139 = sub_2213AA890(v462, v22);
        v431 = v140;
        v427 = 0;
        v142 = 0x100000001;
        v428 = v139;
        if (v139 != 0x7FFFFFFF)
        {
          v457 = v22;
          if ((v139 & 0xFFFF00000000) == 0x7FFF00000000)
          {
            goto LABEL_120;
          }

          v427 = 0;
          if (HIDWORD(v140))
          {
            v457 = v22;
            if (v140)
            {
              v427 = 1;
              v457 = v139;
              v142 = v140;
            }

LABEL_120:
            objc_msgSend_isDynamicallyHidingContentOfCellID_(v462, v140, v22, v141);
            if (isCanvasInteractive && objc_msgSend_hasAnyWarning(v460, v170, v171, v172))
            {
              sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
              objc_msgSend_viewScale(v132, v173, v174, v175);
              v177 = objc_msgSend_badgeWithType_color_viewScale_frame_(TSTTableBadge, v176, 2, 0);
              objc_msgSend_addObject_(v455, v178, v177, v179);
            }

            isDynamicallyHidingContentOfCellID = objc_msgSend_isDynamicallyHidingContentOfCellID_(v462, v170, v22, v172);
            v451 = v142;
            if ((v458 & 1) == 0 && isDynamicallyHidingContentOfCellID == 1)
            {
              goto LABEL_125;
            }

            if (isCanvasInteractive)
            {
              hasFormulaAnyError = objc_msgSend_hasFormulaAnyError(v460, v181, v182, v183);
              if ((v458 & 1) == 0 && ((hasFormulaAnyError ^ 1) & 1) == 0)
              {
                sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
                objc_msgSend_viewScale(v132, v192, v193, v194);
                v196 = objc_msgSend_badgeWithType_color_viewScale_frame_(TSTTableBadge, v195, 3, 0);
                objc_msgSend_addObject_(v455, v197, v196, v198);

LABEL_125:
                v121 = 0;
LABEL_126:
                v122 = 0;
LABEL_127:
                v123 = v97;
LABEL_128:

                v22 = v457;
                goto LABEL_129;
              }
            }

            if (!v454)
            {
              v121 = 1;
              if (v426)
              {
                LODWORD(v467.a) = 1;
                objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v453, v181, v460, v22, 0, 0, &v467, 0);
                sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
                objc_msgSend_p_drawGroupingArrowInContext_contentFrame_cell_cellID_groupingArrowState_alignedClipFrame_verticalAlignment_wpColumn_(v96, v213, c, v460, v22, v426, LODWORD(v467.a), 0, v473, v474, *MEMORY[0x277CBF390], *(MEMORY[0x277CBF390] + 8), *(MEMORY[0x277CBF390] + 16), *(MEMORY[0x277CBF390] + 24));
              }

              goto LABEL_126;
            }

            v471 = 0;
            v470 = 0;
            v469 = 1;
            v199 = *MEMORY[0x277D81428];
            v200 = *(MEMORY[0x277D81428] + 8);
            v202 = *(MEMORY[0x277D81428] + 16);
            v201 = *(MEMORY[0x277D81428] + 24);
            sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
            v468 = 0;
            objc_msgSend_getTextPropertiesWithCell_cellID_wraps_alignment_verticalAlignment_padding_(v453, v203, v460, v22, &v471, &v470, &v469, &v468);
            v122 = v468;
            v205 = objc_msgSend_p_drawingCheckboxOrRatingInCell_cellID_(v96, v204, v460, v22);
            if ((v458 & 1) == 0 && ((v205 ^ 1) & 1) == 0)
            {
              sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
              objc_msgSend_viewScale(v132, v209, v210, v211);
              objc_msgSend_p_drawCheckboxOrRatingInContext_viewScale_contentFrame_cell_cellID_(v96, v212, c, v460, v22);
              v121 = 0;
              goto LABEL_127;
            }

            v424 = v96;
            v217 = objc_msgSend_parentRep(v96, v206, v207, v208);
            v415 = &unk_283599178;
            v218 = TSUProtocolCast();

            v425 = v218;
            if (v218 && ((objc_msgSend_childRepIsOnDocSetupCanvas_(v218, v219, v96, v221, &unk_283599178) & 1) != 0 || (objc_msgSend_childRepIsMasterDrawable_(v218, v222, v96, v223) & 1) != 0))
            {
              v420 = 0x7FFFFFFFFFFFFFFFLL;
              rect = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              rect = objc_msgSend_pageNumber(v452, v219, v220, v221, v415);
              v420 = objc_msgSend_pageCount(v452, v226, v227, v228);
            }

            CGContextSaveGState(c);
            if ((objc_msgSend_isDynamicallyChangingFontColorOfCellID_(v462, v229, v443, v230) | v458) == 1)
            {
              objc_opt_class();
              v232 = TSUDynamicCast();

              v123 = v97;
              if (v232)
              {
                if (objc_msgSend_valueType(v460, v233, v234, v235) == 9)
                {
                  objc_msgSend_richTextValue(v460, v236, v237, v238);
                }

                else
                {
                  objc_msgSend_formattedValue(v460, v236, v237, v238);
                }
                v123 = ;
              }

              if (v458)
              {
                v243 = 16;
              }

              else
              {
                v243 = 0;
              }

              LODWORD(v415) = v243;
              v242 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v462, v233, v443, v460, v123, v471, v469, v122, v415, rect, v420);
            }

            else
            {
              if (isDynamicallyResizingCellIDForColumnRowAdd)
              {
                LODWORD(v415) = 15;
                objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v462, v231, v443, v460, v97, v471, v469, v122, v415, rect, v420);
              }

              else
              {
                objc_opt_class();
                TSUDynamicCast();
              }
              v242 = ;
              v123 = v97;
            }

            if (!v242)
            {
              LODWORD(v415) = 15;
              v242 = objc_msgSend_validateCellForDrawing_cell_contents_wrap_verticalAlignment_padding_layoutCacheFlags_pageNumber_pageCount_(v462, v239, v443, v460, v123, v471, v469, v122, v415, rect, v420);
              if (!v242)
              {
                v440 = MEMORY[0x277D81150];
                v244 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v239, "TSTCellRange TSTTableRepDrawIndividualCellContent(TSTTableRep *__strong, TSTLayoutSpace *__strong, TSTGridRange, TSTCell *__strong, TSTCellID, __strong id, __strong id<TSTCellIteratorData>, TSTCellRange, BOOL, NSMutableArray<TSTTableBadge *> *__strong, BOOL, TSWPSelection * _Nullable __strong, CGContextRef)", v241);
                v247 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v245, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableRep.mm", v246);
                objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v440, v248, v244, v247, 6649, 0, "No TSWPColumn layout rock found.");

                objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v249, v250, v251);
                v242 = 0;
              }
            }

            objc_msgSend_typographicBounds(v242, v239, v240, v241);
            v419 = v256;
            v421 = v255;
            recta = v257;
            v259 = v258;
            v441 = v242;
            if (v122)
            {
              objc_msgSend_topInset(v122, v252, v253, v254);
              v199 = v260;
              objc_msgSend_leftInset(v122, v261, v262, v263);
              v265 = v264;
              objc_msgSend_bottomInset(v122, v266, v267, v268);
              v202 = v269;
              objc_msgSend_rightInset(v122, v270, v271, v272);
              v274 = v273;
              v200 = sub_2213B4860(v265);
              v201 = sub_2213B4860(v274);
              v419 = v419 - v199;
              v421 = v421 - v200;
              recta = recta - (-v201 - v200);
              v259 = v259 - (-v202 - v199);
            }

            v96 = v424;
            height = v474.height;
            v275 = objc_msgSend_attachmentCellLayoutForCellID_optionalCell_(v452, v252, v22, v460);
            v418 = v275;
            if (v275)
            {
              v279 = objc_msgSend_cachedMaskSpillRange(v275, v276, v277, v278);
              if (v279 != 0x7FFFFFFF && (v279 & 0xFFFF00000000) != 0x7FFF00000000)
              {
                v280 = !HIDWORD(v276) || v276 == 0;
                v281 = v280 ? 1 : v427;
                if ((v281 & 1) == 0)
                {
                  v282 = objc_msgSend_cachedMaskSpillRange(v418, v276, v277, v278);
                  if ((v282 & 0xFFFF00000000) != 0x7FFF00000000 && v282 == 0x7FFFFFFF)
                  {
                    v284 = 0;
                  }

                  else
                  {
                    v284 = v282;
                  }

                  v285 = v282 != 0x7FFFFFFF && (v282 & 0xFFFF00000000) == 0x7FFF00000000;
                  v457 = v282;
                  if (v285)
                  {
                    v277 = 1;
                  }

                  else
                  {
                    v277 = WORD2(v282) + 1;
                  }

                  v451 = v276;
                  if (v276)
                  {
                    v286 = WORD2(v282) == 0x7FFF;
                  }

                  else
                  {
                    v286 = 1;
                  }

                  if (v286)
                  {
                    v287 = 0x7FFF;
                  }

                  else
                  {
                    v287 = (v276 + WORD2(v282) - 1);
                  }

                  while (v277 <= v287)
                  {
                    v288 = (v277 + 1);
                    objc_msgSend_setStrokeSpillForRightGridColumn_leftGridColumn_inRow_(v462, v276, v277, v288, v284);
                    v277 = v288;
                  }

                  v96 = v424;
                }
              }

              if ((v458 & 1) == 0)
              {
                CGContextRestoreGState(c);

                v121 = 0;
                goto LABEL_128;
              }
            }

            v289 = *(MEMORY[0x277CBF2C0] + 16);
            *&v467.a = *MEMORY[0x277CBF2C0];
            *&v467.c = v289;
            *&v467.tx = *(MEMORY[0x277CBF2C0] + 32);
            if (objc_msgSend_layoutDirectionIsLeftToRight(v96, v276, v277, v278))
            {
              CGAffineTransformMakeTranslation(&v467, *v475, *(v475 + 1));
            }

            else
            {
              CGAffineTransformMakeTranslation(&transform, *&v473, *(v475 + 1));
              v467 = transform;
            }

            v416 = v202;
            if (v427)
            {
              x = r1.origin.x;
              y = r1.origin.y;
              width = r1.size.width;
              v296 = r1.size.height;
              v465 = v467;
              CGAffineTransformInvert(&transform, &v465);
              v478.origin.x = x;
              v478.origin.y = y;
              v478.size.width = width;
              v478.size.height = v296;
              r1 = CGRectApplyAffineTransform(v478, &transform);
              goto LABEL_235;
            }

            r1.origin = *MEMORY[0x277CBF348];
            v300 = objc_msgSend_valueType(v460, v290, v291, v292);
            if (objc_msgSend_interactionType(v460, v301, v302, v303) == 7)
            {
              goto LABEL_235;
            }

            if (v300 == 3 || v300 == 9)
            {
              if (v471)
              {
                goto LABEL_235;
              }
            }

            else if (!v426 || v471)
            {
              goto LABEL_235;
            }

            v313 = v474.width;
            if (recta > v474.width)
            {
              v314 = v473;
              v315 = objc_msgSend_cellID(v449, v297, v298, v299, recta);
              v457 = sub_2216EA22C(v96, v432, v435, v456, v315, v448, v447, v470, *&v314, *(&v314 + 1), recta, v259, *&v314, *(&v314 + 1), v313, &r1);
              v451 = v297;
            }

LABEL_235:
            v316 = 0;
            if (v457 != 0x7FFFFFFF && (v457 & 0xFFFF00000000) != 0x7FFF00000000 && v451 == 0x100000001)
            {
              if (objc_msgSend_valueType(v460, v297, v298, v299) == 9)
              {
                v317 = objc_msgSend_richTextValue(v460, v297, v298, v299);
                v320 = objc_msgSend_listStartAtCharIndex_(v317, v318, 0, v319);
                v316 = v320 != 0x7FFFFFFFFFFFFFFFLL && v320 != 0;
              }

              else
              {
                v316 = 0;
              }
            }

            v322 = objc_msgSend_info(v96, v297, v298, v299);
            v436 = v316;
            if (objc_msgSend_isInlineWithText(v322, v323, v324, v325))
            {
              objc_msgSend_parent(v452, v326, v327, v328);
              v329 = v433 = v322;
              objc_opt_class();
              isKindOfClass = objc_opt_isKindOfClass();

              if ((isKindOfClass & 1) == 0)
              {
                memset(&transform, 0, sizeof(transform));
                if (v452)
                {
                  objc_msgSend_transformInParent(v452, v331, v332, v333);
                }

                else
                {
                  memset(&v465, 0, sizeof(v465));
                }

                CGAffineTransformInvert(&transform, &v465);
                v337 = objc_msgSend_parent(v452, v334, v335, v336);
                objc_msgSend_frame(v337, v338, v339, v340);
                v342 = v341;
                v344 = v343;
                v346 = v345;
                v348 = v347;

                v465 = transform;
                v479.origin.x = v342;
                v479.origin.y = v344;
                v479.size.width = v346;
                v479.size.height = v348;
                v480 = CGRectApplyAffineTransform(v479, &v465);
                v349 = v480.origin.x;
                v350 = v480.origin.y;
                v351 = v480.size.width;
                v352 = v480.size.height;
                v464 = v467;
                CGAffineTransformInvert(&v465, &v464);
                v481.origin.x = v349;
                v481.origin.y = v350;
                v481.size.width = v351;
                v481.size.height = v352;
                v482 = CGRectApplyAffineTransform(v481, &v465);
                v484.origin.y = v482.origin.y;
                v484.size.height = v482.size.height;
                v484.origin.x = r1.origin.x;
                v484.size.width = r1.size.width;
                r1 = CGRectIntersection(r1, v484);
              }
            }

            else
            {
            }

            if (v426)
            {
              sub_2216F0BE4(v96, v456, v22, v428, v431, v475, &v473, &r1, v476);
              objc_msgSend_p_drawGroupingArrowInContext_contentFrame_cell_cellID_groupingArrowState_alignedClipFrame_verticalAlignment_wpColumn_(v96, v353, c, v460, v22, v426, v469, v441, v473, v474, r1.origin.x, r1.origin.y, r1.size.width, r1.size.height);
            }

            transform = v467;
            CGContextConcatCTM(c, &transform);
            if ((v458 & 1) == 0 && (TSUSizeIsEmpty() & 1) == 0)
            {
              CGContextClipToRectSafe();
            }

            if (v471 & 1) != 0 || ((v436 | objc_msgSend_currentFormatUsesAccountingStyle(v460, v354, v355, v356)))
            {
              goto LABEL_271;
            }

            v360 = v470;
            if (v470 == 4)
            {
              if ((objc_msgSend_layoutDirectionIsLeftToRight(v96, v357, v358, v359) & 1) == 0)
              {
                v470 = 1;
                if (objc_msgSend_valueType(v460, v361, v362, v363) == 2)
                {
                  v470 = 0;
LABEL_271:
                  objc_opt_class();
                  v369 = objc_msgSend_context(v453, v366, v367, v368);
                  v373 = objc_msgSend_documentObject(v369, v370, v371, v372);
                  v374 = TSUCheckedDynamicCast();

                  v375 = [TSTTextEngineDelegate alloc];
                  v437 = v469;
                  v379 = objc_msgSend_typesettingLocale(v374, v376, v377, v378);
                  shouldHyphenate = objc_msgSend_shouldHyphenate(v374, v380, v381, v382);
                  shouldHyphenate_styleProvidingSource = objc_msgSend_initWithPadding_verticalAlignment_locale_shouldHyphenate_styleProvidingSource_(v375, v384, v437, v379, shouldHyphenate, 0, v199, v200, v416, v201);

                  v388 = objc_msgSend_layoutEngine(v96, v385, v386, v387);
                  v390 = objc_msgSend_newTextEngineForCell_atCellID_textStyle_(v388, v389, v460, v443, 0);

                  if (v458)
                  {
                    v393 = 33;
                  }

                  else
                  {
                    v393 = 3;
                  }

                  objc_msgSend_setDelegate_(v390, v391, shouldHyphenate_styleProvidingSource, v392);
                  objc_msgSend_viewScale(v429, v394, v395, v396);
                  objc_msgSend_drawColumn_selection_inContext_isFlipped_viewScale_renderMode_(v390, v397, v441, v450, c, v442, v393);
                  objc_msgSend_setDelegate_(v390, v398, 0, v399);
                  if (v259 > height + 1.0)
                  {
                    v403 = objc_msgSend_layoutEngine(v96, v400, v401, v402);
                    v434 = v374;
                    v407 = (objc_msgSend_tableRowsBehavior(v403, v404, v405, v406) == 2) & isCanvasInteractive;

                    v36 = v407 == 1;
                    v374 = v434;
                    if (v36)
                    {
                      objc_msgSend_viewScale(v429, v408, v409, v410);
                      sub_221445B44(c, v414, r1.origin.x, r1.origin.y, r1.size.width, r1.size.height, v411, v412, v413);
                    }
                  }

                  CGContextRestoreGState(c);

                  v121 = 1;
                  goto LABEL_128;
                }
              }

              v360 = v470;
            }

            if (v360 == 2)
            {
              v365 = v474.width * 0.5 - recta * 0.5 - v421;
            }

            else
            {
              if (v360 != 1)
              {
                goto LABEL_271;
              }

              v364 = v474.width;
              v483.origin.y = v419;
              v483.origin.x = v421;
              v483.size.width = recta;
              v483.size.height = v259;
              v365 = v364 - CGRectGetMaxX(v483);
            }

            CGContextTranslateCTM(c, v365, 0.0);
            goto LABEL_271;
          }
        }

        v457 = v22;
        goto LABEL_120;
      }

      if (objc_msgSend_hasFormulaAnyError(v460, v125, v126, v127) & 1) != 0 || (objc_msgSend_hasCommentStorage(v460, v128, v129, v130))
      {
        goto LABEL_92;
      }

      if (objc_msgSend_formatType(v460, v128, v129, v130) == 267)
      {
        if (!objc_msgSend_hasControl(v460, v214, v215, v216))
        {
LABEL_92:
          objc_msgSend_clear(v460, v128, v129, v130);
          goto LABEL_93;
        }

        objc_msgSend_setNumberDoubleValue_(v460, v128, v129, v130, 0.0);
      }

      else if (objc_msgSend_hasControl(v460, v214, v215, v216))
      {
        objc_msgSend_clearValue(v460, v131, v224, v225);
      }

LABEL_93:
      if (!objc_msgSend_p_drawingCheckboxOrRatingInCell_cellID_(v96, v131, v460, v22))
      {
LABEL_87:
        v121 = 0;
        v122 = 0;
        v451 = 0x100000001;
        v123 = v97;
        v457 = v22;
LABEL_129:
        objc_autoreleasePoolPop(context);
        v185 = v447;
        v184 = v448;
        if (v454)
        {
          v184 = v22;
          v185 = v451;
        }

        v186 = v121 == 0;
        if (v121)
        {
          v187 = v184;
        }

        else
        {
          v187 = v457;
        }

        if (v186)
        {
          v188 = v451;
        }

        else
        {
          v188 = v185;
        }

        v189 = *(*(a1 + 80) + 8);
        *(v189 + 48) = v187;
        *(v189 + 56) = v188;
        v87 = v446;
LABEL_138:
        v190 = *(a1 + 48);
        if (v190)
        {
          objc_msgSend_endTableCell_withCellID_cellHasContents_cellIsPrimary_(v190, v90, v7, v461, 1, v459);
        }

        goto LABEL_141;
      }

      goto LABEL_94;
    }
  }

  if (!*(a1 + 48))
  {
    goto LABEL_141;
  }

  v39 = objc_msgSend_mergeRange(v3, v24, v25, v26);
  if (v39 != 0x7FFFFFFF && (v39 & 0xFFFF00000000) != 0x7FFF00000000)
  {
    if (v40 >> 32)
    {
      if (v40)
      {
        v43 = objc_msgSend_mergeRange(v3, v40, v41, v42);
        if (v43 != v11 || ((v43 ^ (v19 << 32)) & 0xFFFF00000000) != 0)
        {
          goto LABEL_141;
        }
      }
    }
  }

  v45 = objc_msgSend_modelCellIDForLayoutCellID_(*(a1 + 32), v40, v11 & 0xFFFF0000FFFFFFFFLL | (v19 << 32), v42);
  v46 = 0;
  v47 = *(a1 + 140);
  if (!HIDWORD(v47) || !v47)
  {
    goto LABEL_112;
  }

  v48 = *(a1 + 132);
  v49 = v48 & 0xFFFF00000000;
  if (v48 == 0x7FFFFFFFLL && v49 != 0x7FFF00000000)
  {
LABEL_35:
    if (WORD2(v48) == 0x7FFF || v47 == 0)
    {
      v51 = 0x7FFF;
    }

    else
    {
      v51 = v47 + WORD2(v48) - 1;
    }

    v52 = v51 >= v19;
    if (WORD2(v48) <= v19)
    {
      v46 = v52;
      objc_msgSend_beginTableCell_withCellID_cellHasContents_cellIsPrimary_(*(a1 + 48), v44, v7, v45, 0, v52);
    }

    else
    {
      v46 = 0;
      objc_msgSend_beginTableCell_withCellID_cellHasContents_cellIsPrimary_(*(a1 + 48), v44, v7, v45, 0, 0);
    }

    goto LABEL_113;
  }

  v144 = v48 == 0x7FFFFFFF && v49 != 0x7FFF00000000;
  if (v48 > v11 && !v144)
  {
    goto LABEL_111;
  }

  v145 = v48 + HIDWORD(v47) - 1;
  if (v48 == 0x7FFFFFFF)
  {
    v145 = 0x7FFFFFFF;
  }

  if (v145 < v11)
  {
LABEL_111:
    v46 = 0;
LABEL_112:
    objc_msgSend_beginTableCell_withCellID_cellHasContents_cellIsPrimary_(*(a1 + 48), v44, v7, v45, 0, 0);
    goto LABEL_113;
  }

  if (v48 == 0x7FFFFFFFLL || v49 != 0x7FFF00000000)
  {
    goto LABEL_35;
  }

  v46 = 1;
  objc_msgSend_beginTableCell_withCellID_cellHasContents_cellIsPrimary_(*(a1 + 48), v44, v7, v45, 0, 1);
LABEL_113:
  v146 = objc_msgSend_tableInfo(*(a1 + 40), v53, v54, v55);
  v149 = objc_msgSend_mergeRangeAtCellID_(v146, v147, v11 & 0xFFFF0000FFFFFFFFLL | (v19 << 32), v148);
  v151 = v150;

  if (v149 == 0x7FFFFFFF || (v149 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(v151) || !v151)
  {
    v151 = 0x100000001;
    v149 = v22;
  }

  v155 = objc_msgSend_tableLayout(*(a1 + 40), v152, v153, v154);
  v156 = sub_2211BC494(v155, v149, v151);
  v158 = v157;
  v160 = v159;
  v162 = v161;

  CGContextSaveGState(*(a1 + 88));
  v163 = *(a1 + 88);
  TSURandom();
  v165 = v164;
  TSURandom();
  v167 = v166;
  TSURandom();
  CGContextSetRGBFillColor(v163, v165, v167, v168, 0.0);
  v477.origin.x = v156;
  v477.origin.y = v158;
  v477.size.width = v160;
  v477.size.height = v162;
  CGContextFillRect(*(a1 + 88), v477);
  CGContextRestoreGState(*(a1 + 88));
  objc_msgSend_endTableCell_withCellID_cellHasContents_cellIsPrimary_(*(a1 + 48), v169, v7, v45, 0, v46);
LABEL_141:
}

void sub_2216EF0AC(uint64_t a1)
{
  CGContextSaveGState(*(a1 + 48));
  v5 = objc_msgSend_canvas(*(a1 + 32), v2, v3, v4);
  if (objc_msgSend_isPrinting(v5, v6, v7, v8))
  {

LABEL_4:
    v19 = 0;
    goto LABEL_6;
  }

  v14 = objc_msgSend_canvas(*(a1 + 32), v9, v10, v11);
  isDrawingIntoPDF = objc_msgSend_isDrawingIntoPDF(v14, v15, v16, v17);

  if (isDrawingIntoPDF)
  {
    goto LABEL_4;
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 48));
  CGContextBeginTransparencyLayerWithRect(*(a1 + 48), ClipBoundingBox, 0);
  v19 = 1;
LABEL_6:
  objc_msgSend_setRecursivelyDrawingInContext_(*(a1 + 32), v12, 1, v13);
  v23 = objc_msgSend_canvas(*(a1 + 32), v20, v21, v22);
  objc_msgSend_viewScale(v23, v24, v25, v26);
  v28 = v27;

  TSDCGContextAssociatedScreenScale();
  sub_2216E538C(*(a1 + 32), v28, v29);
  v31 = *(a1 + 40);
  v30 = *(a1 + 48);
  v34.receiver = *(a1 + 32);
  v34.super_class = TSTTableRep;
  objc_msgSendSuper2(&v34, sel_recursivelyDrawInContext_keepingChildrenPassingTest_, v30, v31);
  objc_msgSend_setRecursivelyDrawingInContext_(*(a1 + 32), v32, 0, v33);
  if (v19)
  {
    CGContextEndTransparencyLayer(*(a1 + 48));
  }

  CGContextRestoreGState(*(a1 + 48));
}

void sub_2216EF2D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_isRecursivelyDrawingInContext(*(a1 + 32), a2, a3, a4) & 1) != 0 || (objc_msgSend_inPrintPreviewMode(*(a1 + 40), v5, v6, v7) & 1) != 0 || objc_msgSend_p_isTableRenderingRotated(*(a1 + 32), v5, v8, v9))
  {
    objc_msgSend_p_drawTableNameInContext_animation_(*(a1 + 32), v5, *(a1 + 48), 0);
  }

  ClipBoundingBox = CGContextGetClipBoundingBox(*(a1 + 48));
  x = ClipBoundingBox.origin.x;
  y = ClipBoundingBox.origin.y;
  width = ClipBoundingBox.size.width;
  height = ClipBoundingBox.size.height;
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  if (v18)
  {
    objc_msgSend_transformFromCanvas(v18, v10, v11, v12);
  }

  else
  {
    memset(&v42, 0, sizeof(v42));
  }

  CGContextConcatCTM(v17, &v42);
  v22 = sub_2211B4394(*(a1 + 40), v19, v20, v21);
  objc_msgSend_p_lockAndDrawLayoutSpace_checkFrameHasWidthAndHeight_dirtyRect_inContext_(*(a1 + 32), v23, v22, 0, *(a1 + 48), x, y, width, height);
  if (sub_2211B7A50(*(a1 + 40), v24, v25, v26))
  {
    v30 = TSTLayoutGetRepeatHeaderRowsSpace(*(a1 + 40), v27, v28, v29);
    objc_msgSend_p_lockAndDrawLayoutSpace_checkFrameHasWidthAndHeight_dirtyRect_inContext_(*(a1 + 32), v31, v30, 1, *(a1 + 48), x, y, width, height);
    v35 = TSTLayoutGetRepeatHeaderColumnsSpace(*(a1 + 40), v32, v33, v34);
    objc_msgSend_p_lockAndDrawLayoutSpace_checkFrameHasWidthAndHeight_dirtyRect_inContext_(*(a1 + 32), v36, v35, 1, *(a1 + 48), x, y, width, height);
    v40 = TSTLayoutGetRepeatHeaderCornerSpace(*(a1 + 40), v37, v38, v39);
    objc_msgSend_p_lockAndDrawLayoutSpace_checkFrameHasWidthAndHeight_dirtyRect_inContext_(*(a1 + 32), v41, v40, 1, *(a1 + 48), x, y, width, height);
  }
}

void sub_2216EFF88(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v11 = objc_msgSend_tableLayout(v7, v8, v9, v10);
  v15 = objc_msgSend_spaceBundle(v11, v12, v13, v14);
  if (WORD2(a2) == 0x7FFF)
  {
    v16 = 0xFFFFFFFFLL;
  }

  else
  {
    v16 = WORD2(a2);
  }

  v17 = (a3 + v16 - 1);
  if (!a3)
  {
    v17 = 0xFFFFFFFFLL;
  }

  v18 = a2 << 32;
  v19 = 0xFFFFFFFF00000000;
  if (a2 == 0x7FFFFFFF)
  {
    v18 = 0xFFFFFFFF00000000;
  }

  if (HIDWORD(a3))
  {
    v19 = ((v18 + a3) & 0xFFFFFFFF00000000) - 0x100000000;
  }

  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = sub_2216F00E4;
  v23[3] = &unk_278468B70;
  v26 = v18 | v16;
  v27 = v17 | v19;
  v20 = v7;
  v24 = v20;
  v25 = a4;
  objc_msgSend_enumerateLayoutSpacesUsingBlock_(v15, v21, v23, v22);
}

void sub_2216F00E4(uint64_t a1, void *a2)
{
  v18 = a2;
  if ((objc_msgSend_isFrozen(v18, v3, v4, v5) & 1) == 0)
  {
    v7 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v6, *(a1 + 48), *(a1 + 56), v18);
    v9 = HIDWORD(v7);
    v10 = v8 >> 32;
    if (HIDWORD(v7) == 0xFFFFFFFF || v10 == 0xFFFFFFFF || v9 > v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = (&v8[-(v7 & 0xFFFFFFFF00000000)] & 0xFFFFFFFF00000000 | (v8 - v7 + 1)) + 0x100000000;
    }

    if (v7 == -1 || v8 == -1 || v7 > v8)
    {
      v16 = 0;
    }

    else
    {
      v16 = v13;
    }

    v17 = v7 << 32;
    if (v7 == -1)
    {
      v17 = 0x7FFF00000000;
    }

    if (v9 == 0xFFFFFFFF)
    {
      v9 = 0x7FFFFFFFLL;
    }

    objc_msgSend_p_drawLayoutSpace_range_inContext_(*(a1 + 32), v8, v18, v17 | v9, v16, *(a1 + 40));
  }
}

double sub_2216F01E0(void *a1, uint64_t a2, unint64_t a3, int a4)
{
  v7 = a1;
  v11 = objc_msgSend_tableLayout(v7, v8, v9, v10);
  v15 = sub_2211BC9B4(v11, a2, a3);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (a4)
  {
    v37.origin.x = sub_2211B9DC0(v11, v12, v13, v14);
    x = v37.origin.x;
    y = v37.origin.y;
    width = v37.size.width;
    height = v37.size.height;
    if (!CGRectIsEmpty(v37))
    {
      v38.origin.x = x;
      v38.origin.y = y;
      v38.size.width = width;
      v38.size.height = height;
      v41.origin.x = v15;
      v41.origin.y = v17;
      v41.size.width = v19;
      v41.size.height = v21;
      v39 = CGRectUnion(v38, v41);
      v15 = v39.origin.x;
      v17 = v39.origin.y;
      v19 = v39.size.width;
      v21 = v39.size.height;
    }
  }

  memset(&v36, 0, sizeof(v36));
  sub_2211B8638(v11, &v36, v12, v13, v14);
  v35 = v36;
  v40.origin.x = v15;
  v40.origin.y = v17;
  v40.size.width = v19;
  v40.size.height = v21;
  CGRectApplyAffineTransform(v40, &v35);
  objc_msgSend_currentScreenScale(v7, v26, v27, v28);
  objc_msgSend_currentScreenScale(v7, v29, v30, v31);
  TSUMultiplyRectScalar();
  TSURoundedRectForScale();
  v33 = v32;
  TSUCeilSize();

  return v33;
}

void sub_2216F0BE4(void *a1, void *a2, uint64_t a3, unint64_t a4, unint64_t a5, void *a6, void *a7, uint64_t a8, _BYTE *a9)
{
  v87 = a1;
  v16 = a2;
  v18 = v16;
  if ((*a9 & 1) == 0)
  {
    if (a4 == 0x7FFFFFFF || (a4 & 0xFFFF00000000) == 0x7FFF00000000 || !HIDWORD(a5) || !a5)
    {
      if (WORD2(a3) == 0x7FFF)
      {
        v51 = 0xFFFFFFFFLL;
      }

      else
      {
        v51 = WORD2(a3);
      }

      if (a3 == 0x7FFFFFFF)
      {
        v52 = 0xFFFFFFFF00000000;
      }

      else
      {
        v52 = a3 << 32;
      }

      objc_msgSend_alignedContentFrameForGridRange_(v16, v17, v52 | v51, v52 | v51);
      *a6 = v53;
      a6[1] = v54;
      a6[2] = v55;
      a6[3] = v56;
      objc_msgSend_contentFrameForGridRange_(v18, v57, v52 | v51, v52 | v51);
      *a7 = v58;
      a7[1] = v59;
      a7[2] = v60;
      a7[3] = v61;
      v62 = *(a6 + 1);
      *a8 = *a6;
      *(a8 + 16) = v62;
      goto LABEL_72;
    }

    if (WORD2(a4) == 0x7FFF)
    {
      v19 = -1;
    }

    else
    {
      v19 = WORD2(a4);
    }

    v20 = a5 + v19;
    v21 = v19 | (a4 << 32);
    v22 = ((a5 + (a4 << 32)) & 0xFFFFFFFF00000000 | (v20 - 1)) - 0x100000000;
    objc_msgSend_alignedContentFrameForGridRange_(v16, v17, v21, v22);
    *a6 = v23;
    a6[1] = v24;
    a6[2] = v25;
    a6[3] = v26;
    v86 = v22;
    objc_msgSend_contentFrameForGridRange_(v18, v27, v21, v22);
    *a7 = v28;
    a7[1] = v29;
    a7[2] = v30;
    a7[3] = v31;
    v35 = objc_msgSend_layoutEngine(v87, v32, v33, v34);
    if (!objc_msgSend_isDynamicallyChangingRowCount(v35, v36, v37, v38))
    {
      goto LABEL_70;
    }

    v42 = objc_msgSend_entireFooterRowsCellRange(v35, v39, v40, v41);
    v44 = v43;
    v47 = objc_msgSend_entireBodyRowsCellRange(v35, v43, v45, v46);
    if (v44 >> 32 && v44)
    {
      v48 = v42 & 0xFFFF00000000;
      if (v42 == 0x7FFFFFFFLL && v48 != 0x7FFF00000000)
      {
LABEL_14:
        if (WORD2(v42) <= WORD2(a3))
        {
          v49 = WORD2(v42) == 0x7FFF || v44 == 0;
          v50 = v49 ? 0x7FFF : v44 + WORD2(v42) - 1;
          if (v50 >= WORD2(a3))
          {
            goto LABEL_70;
          }
        }

        goto LABEL_41;
      }

      v64 = v42 == 0x7FFFFFFF && v48 != 0x7FFF00000000;
      if (v42 <= a3 || v64)
      {
        v65 = v42 + HIDWORD(v44) - 1;
        if (v42 == 0x7FFFFFFF)
        {
          v65 = 0x7FFFFFFF;
        }

        if (v65 >= a3)
        {
          if (v42 != 0x7FFFFFFFLL && v48 == 0x7FFF00000000)
          {
            goto LABEL_70;
          }

          goto LABEL_14;
        }
      }
    }

LABEL_41:
    if (HIDWORD(v39))
    {
      if (v39)
      {
        v66 = v47;
        v67 = v39;
        if (sub_2216EB9E0(v47, v39, a4))
        {
          v68 = v67 + WORD2(v66) - 1;
          if (WORD2(v66) == 0x7FFF || v67 == 0)
          {
            v68 = 0x7FFF;
          }

          v70 = a5 + WORD2(a4) - 1;
          if (WORD2(a4) == 0x7FFF || a5 == 0)
          {
            v70 = 0x7FFF;
          }

          if (v68 >= v70)
          {
            v72 = v66 + HIDWORD(v67) - 1;
            if (v66 == 0x7FFFFFFF)
            {
              v72 = 0x7FFFFFFF;
            }

            if (v72 >= a4 + HIDWORD(a5) - 1)
            {
              v73 = sub_221119E0C(a4, a5, v66, v67);
              if (WORD2(v73) == 0x7FFF)
              {
                v75 = 0xFFFFFFFFLL;
              }

              else
              {
                v75 = WORD2(v73);
              }

              v76 = v73 << 32;
              if (v73 == 0x7FFFFFFF)
              {
                v76 = 0xFFFFFFFF00000000;
              }

              v77 = v76 | v75;
              v78 = (v74 + v75 - 1);
              v79 = (&v74[v76] & 0xFFFFFFFF00000000) - 0x100000000;
              if (!(v74 >> 32))
              {
                v79 = 0xFFFFFFFF00000000;
              }

              if (!v74)
              {
                v78 = 0xFFFFFFFFLL;
              }

              v80 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v74, v77, v78 | v79, v18);
              goto LABEL_71;
            }
          }
        }
      }
    }

LABEL_70:
    v80 = objc_msgSend_intersectionGridRange_ofLayoutSpace_(TSTLayoutSpace, v39, v21, v86, v18);
LABEL_71:
    objc_msgSend_alignedContentFrameForGridRange_(v18, v81, v80, v81);
    *a8 = v82;
    *(a8 + 8) = v83;
    *(a8 + 16) = v84;
    *(a8 + 24) = v85;

LABEL_72:
    *a9 = 1;
  }
}

uint64_t sub_2216F1030(uint64_t a1)
{
  if (!*(a1 + 400))
  {
    *(a1 + 400) = 1;
    if (!*(a1 + 404))
    {
      *(a1 + 404) = 1;
    }

    v2 = a1 + 48 + *(*(a1 + 48) - 24);
    if ((*(v2 + 32) & 5) != 0)
    {
      *(v2 + 40) = *(MEMORY[0x277D82668] + *(*MEMORY[0x277D82668] - 24) + 40);
      std::ios_base::clear(v2, 0);
    }

    v3 = a1 + 216 + *(*(a1 + 216) - 24);
    if ((*(v3 + 32) & 5) != 0)
    {
      *(v3 + 40) = *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 40);
      std::ios_base::clear(v3, 0);
    }

    v4 = *(a1 + 432);
    if (!v4 || !*(v4 + 8 * *(a1 + 416)))
    {
      v5 = sub_2216F1948(a1);
      *(*(a1 + 432) + 8 * *(a1 + 416)) = (*(*a1 + 32))(a1, a1 + 48, 0x4000, v5);
    }

    sub_2216F1A48(a1);
  }

  v6 = (a1 + 392);
  v7 = (a1 + 448);
  while (1)
  {
LABEL_13:
    v8 = *(a1 + 392);
    *v8 = *(a1 + 376);
    v9 = *(a1 + 404);
    v10 = v8;
    do
    {
LABEL_14:
      v11 = byte_221805AB0[*v10];
      if (word_221805BB0[v9])
      {
        *(a1 + 440) = v9;
        *(a1 + 448) = v10;
      }

      v12 = v9;
      v13 = word_22180B75E[v9] + v11;
      if (v9 != word_2218062D4[v13])
      {
        do
        {
          v12 = word_22180BFCE[v12];
          if (v12 >= 914)
          {
            v11 = *(&unk_22180C83E + v11);
          }

          v13 = word_22180B75E[v12] + v11;
        }

        while (word_2218062D4[v13] != v12);
      }

      v9 = word_22180C8B4[v13];
      ++v10;
    }

    while (v9 != 913);
    v14 = *(a1 + 440);
    v15 = v7;
    while (2)
    {
      v16 = *v15;
      v17 = word_221805BB0[v14];
      *(a1 + 8) = v8;
      *(a1 + 16) = v16 - v8;
      *(a1 + 376) = *v16;
      *v16 = 0;
      *(a1 + 392) = v16;
LABEL_23:
      switch(v17)
      {
        case 0:
          *v16 = *(a1 + 376);
          v14 = *(a1 + 440);
          v15 = (a1 + 448);
          continue;
        case 1:
          sub_2212B8B80(a1, *(a1 + 8));
          return 258;
        case 2:
          sub_2212B8B80(a1, *(a1 + 8));
          return 259;
        case 3:
          sub_2212B8B80(a1, *(a1 + 8));
          return 260;
        case 4:
          sub_2212B8B80(a1, *(a1 + 8));
          return 261;
        case 5:
          sub_2212B8B80(a1, *(a1 + 8));
          return 292;
        case 6:
          sub_2212B8B80(a1, *(a1 + 8));
          return 291;
        case 7:
          sub_2212B8B80(a1, *(a1 + 8));
          return 294;
        case 8:
          sub_2212B8B80(a1, *(a1 + 8));
          return 293;
        case 9:
          sub_2212B8B80(a1, *(a1 + 8));
          return 295;
        case 10:
          sub_2212B8B80(a1, *(a1 + 8));
          return 301;
        case 11:
          sub_2212B8B80(a1, *(a1 + 8));
          return 297;
        case 12:
          sub_2212B8B80(a1, *(a1 + 8));
          return 296;
        case 13:
          sub_2212B8B80(a1, *(a1 + 8));
          sub_2212B88AC(a1, 0);
          return 280;
        case 14:
          sub_2212B8B80(a1, *(a1 + 8));
          return 300;
        case 15:
          sub_2212B8B80(a1, *(a1 + 8));
          return 279;
        case 16:
          sub_2212B8B80(a1, *(a1 + 8));
          return 262;
        case 17:
          sub_2212B8B80(a1, *(a1 + 8));
          return 290;
        case 18:
          sub_2212B8B80(a1, *(a1 + 8));
          return 289;
        case 19:
          sub_2212B8B80(a1, *(a1 + 8));
          return 287;
        case 20:
          sub_2212B8B80(a1, *(a1 + 8));
          return 286;
        case 21:
          sub_2212B8B80(a1, *(a1 + 8));
          return 284;
        case 22:
          sub_2212B8B80(a1, *(a1 + 8));
          return 285;
        case 23:
          sub_2212B8B80(a1, *(a1 + 8));
          return 288;
        case 24:
          sub_2212B8B80(a1, *(a1 + 8));
          return 263;
        case 25:
          sub_2212B8B80(a1, *(a1 + 8));
          return 298;
        case 26:
          sub_2212B8B80(a1, *(a1 + 8));
          return 299;
        case 27:
          sub_2212B8B80(a1, *(a1 + 8));
          return 273;
        case 28:
          v30 = sub_2212B894C(a1);
          if (!v30)
          {
            v31 = MEMORY[0x277D81150];
            v32 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "virtual int TSTDefaultLexer::yylex()", v29);
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTDefaultLexer.lmm", v34);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v31, v36, v32, v35, 289, 0, "Unable to lex tokenAttachment.");
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v37, v38, v39);
          }

          v40 = objc_msgSend_expressionNode(v30, v27, v28, v29, a1 + 448);
          sub_2212B88AC(a1, v40);
          v44 = objc_msgSend_tokenType(v40, v41, v42, v43);
          if (v44 >= 0xC)
          {
            return 0;
          }

          return dword_221811D74[v44];
        case 29:
          sub_2212B8B80(a1, *(a1 + 8));
          return 265;
        case 30:
        case 31:
          sub_2212B8B80(a1, *(a1 + 8));
          if (sub_2212B8C04(a1, *(a1 + 8)))
          {
            return 267;
          }

          else
          {
            return 268;
          }

        case 32:
          sub_2212B8B80(a1, *(a1 + 8));
          return 266;
        case 33:
          sub_2212B8B80(a1, *(a1 + 8));
          return 270;
        case 34:
          sub_2212B8B80(a1, *(a1 + 8));
          return 269;
        case 35:
          sub_2212B8B80(a1, *(a1 + 8));
          return 264;
        case 36:
          v25 = v6;
          (*(*a1 + 104))(a1, *(a1 + 8), *(a1 + 16));
          goto LABEL_41;
        case 37:
          v18 = *(a1 + 8);
          *v16 = *(a1 + 376);
          v19 = *(a1 + 432);
          v20 = *(a1 + 416);
          v21 = *(v19 + 8 * v20);
          if (*(v21 + 64))
          {
            v22 = *(a1 + 384);
          }

          else
          {
            v22 = *(v21 + 32);
            *(a1 + 384) = v22;
            *v21 = *(a1 + 88 + *(*(a1 + 48) - 24));
            v21 = *(v19 + 8 * v20);
            *(v21 + 64) = 1;
          }

          v45 = v6;
          if (*v6 <= (*(v21 + 8) + v22))
          {
            *(a1 + 392) = *(a1 + 8) + ~v18 + v16;
            v24 = sub_2216F1ABC(a1);
            v9 = sub_2216F1B80(a1, v24);
            v8 = *(a1 + 8);
            if (!v9)
            {
              v14 = *(a1 + 440);
              v15 = (a1 + 448);
              v6 = v45;
              continue;
            }

            v6 = v45;
            v10 = (*v45 + 1);
            *v45 = v10;
            goto LABEL_37;
          }

          v23 = sub_2216F1C04(a1);
          if (v23 != 1)
          {
            if (v23)
            {
              *(a1 + 392) = *(*(*(a1 + 432) + 8 * *(a1 + 416)) + 8) + *(a1 + 384);
              v14 = sub_2216F1ABC(a1);
              v8 = *(a1 + 8);
              v6 = v45;
              v15 = v45;
              continue;
            }

            *(a1 + 392) = *(a1 + 8) + ~v18 + v16;
            v9 = sub_2216F1ABC(a1);
            v10 = *(a1 + 392);
            v8 = *(a1 + 8);
            v6 = v45;
LABEL_37:
            v7 = (a1 + 448);
            goto LABEL_14;
          }

          *(a1 + 408) = 0;
          if ((*(*a1 + 88))(a1))
          {
            *(a1 + 392) = *(a1 + 8);
            v17 = (*(a1 + 404) - 1) / 2 + 38;
            v6 = v45;
            goto LABEL_23;
          }

          v6 = v45;
          v7 = (a1 + 448);
          if (!*(a1 + 408))
          {
            (*(*a1 + 56))(a1, a1 + 48);
            v6 = v45;
          }

          break;
        case 38:
          sub_2212B8B80(a1, "");
          return 0;
        default:
          v25 = v6;
          (*(*a1 + 112))(a1, "fatal flex scanner internal error--no action found");
LABEL_41:
          v6 = v25;
          v7 = (a1 + 448);
          goto LABEL_13;
      }

      break;
    }
  }
}

double sub_2216F1948(void *a1)
{
  v2 = a1[54];
  if (v2)
  {
    v3 = a1[53];
    if (a1[52] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0xDDA33B32uLL);
      a1[54] = v5;
      if (!v5)
      {
        (*(*a1 + 112))(a1, "out of dynamic memory in yyensure_buffer_stack()");
        v5 = a1[54];
      }

      v6 = &v5[8 * a1[53]];
      result = 0.0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      a1[53] = v4;
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0xBD6463CEuLL);
    a1[54] = v8;
    if (!v8)
    {
      (*(*a1 + 112))(a1, "out of dynamic memory in yyensure_buffer_stack()");
      v8 = a1[54];
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 26) = xmmword_2217E0F60;
  }

  return result;
}

void sub_2216F1A48(void *a1)
{
  v2 = a1 + 6;
  v1 = a1[6];
  v3 = a1[54];
  v4 = a1[52];
  v5 = *(v3 + 8 * v4);
  v6 = *(v5 + 32);
  v7 = *(v5 + 16);
  a1[48] = v6;
  a1[49] = v7;
  a1[1] = v7;
  v8 = (a1 + *(v1 - 24) + 48);
  v8->__rdbuf_ = **(v3 + 8 * v4);
  std::ios_base::clear(v8, 0);
  *(v2 + 328) = *v2[43];
}

uint64_t sub_2216F1ABC(uint64_t a1)
{
  v1 = *(a1 + 404);
  v2 = *(a1 + 8);
  v3 = *(a1 + 392);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = byte_221805AB0[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (word_221805BB0[v1])
      {
        *(a1 + 440) = v1;
        *(a1 + 448) = v2;
      }

      v5 = v1;
      v6 = word_22180B75E[v1] + v4;
      if (v1 != word_2218062D4[v6])
      {
        do
        {
          v5 = word_22180BFCE[v5];
          if (v5 >= 914)
          {
            v4 = *(&unk_22180C83E + v4);
          }

          v6 = word_22180B75E[v5] + v4;
        }

        while (word_2218062D4[v6] != v5);
      }

      v1 = word_22180C8B4[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

uint64_t sub_2216F1B80(uint64_t a1, int a2)
{
  v2 = a2;
  if (word_221805BB0[a2])
  {
    v3 = *(a1 + 392);
    *(a1 + 440) = a2;
    *(a1 + 448) = v3;
  }

  v4 = word_22180B75E[a2] + 1;
  if (word_2218062D4[v4] != a2)
  {
    do
    {
      v5 = word_22180BFCE[v2];
      v2 = v5;
      v4 = word_22180B75E[v5] + 1;
    }

    while (v5 != word_2218062D4[v4]);
  }

  v6 = word_22180C8B4[v4];
  if (v6 == 913)
  {
    LOWORD(v6) = 0;
  }

  return v6;
}

uint64_t sub_2216F1C04(void *a1)
{
  v2 = *(a1[54] + 8 * a1[52]);
  v3 = *(v2 + 8);
  v4 = a1[1];
  if (a1[49] > &v3[a1[48] + 1])
  {
    (*(*a1 + 112))(a1, "fatal flex scanner internal error--end of buffer missed");
    v2 = *(a1[54] + 8 * a1[52]);
  }

  v5 = a1[49];
  v6 = a1[1];
  if (!*(v2 + 60))
  {
    if (v5 - v6 == 1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  v7 = ~v6;
  v8 = v7 + v5;
  if (v7 + v5 >= 1)
  {
    v9 = v7 + v5;
    do
    {
      v10 = *v4++;
      *v3++ = v10;
      --v9;
    }

    while (v9);
    v2 = *(a1[54] + 8 * a1[52]);
  }

  if (*(v2 + 64) == 2)
  {
    a1[48] = 0;
    *(v2 + 32) = 0;
LABEL_28:
    if (v8)
    {
      v20 = 0;
      v11 = 2;
      *(v2 + 64) = 2;
    }

    else
    {
      (*(*a1 + 56))(a1, a1 + 6);
      v20 = a1[48];
      v2 = *(a1[54] + 8 * a1[52]);
      v11 = 1;
    }

    goto LABEL_31;
  }

  v12 = ~v8;
  v13 = *(v2 + 24);
  v14 = v13 + ~v8;
  if (!v14)
  {
    v15 = a1[49];
    while (1)
    {
      v16 = *(v2 + 8);
      if (!*(v2 + 40))
      {
        break;
      }

      v17 = 2 * v13;
      *(v2 + 24) = v17;
      v18 = malloc_type_realloc(v16, v17 + 2, 0xDDA33B32uLL);
      *(v2 + 8) = v18;
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_20:
      v15 = &v18[v15 - v16];
      a1[49] = v15;
      v2 = *(a1[54] + 8 * a1[52]);
      v13 = *(v2 + 24);
      v14 = v13 + v12;
      if (v13 + v12)
      {
        goto LABEL_21;
      }
    }

    *(v2 + 8) = 0;
LABEL_19:
    (*(*a1 + 112))(a1, "fatal error - scanner input buffer overflow");
    v18 = *(v2 + 8);
    goto LABEL_20;
  }

LABEL_21:
  if (v14 >= 0x2000)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = v14;
  }

  v20 = (*(*a1 + 96))(a1, *(v2 + 8) + v8, v19);
  a1[48] = v20;
  if ((v20 & 0x80000000) != 0)
  {
    (*(*a1 + 112))(a1, "input in flex scanner failed");
    v20 = a1[48];
  }

  v2 = *(a1[54] + 8 * a1[52]);
  *(v2 + 32) = v20;
  if (!v20)
  {
    goto LABEL_28;
  }

  v11 = 0;
LABEL_31:
  v21 = v20 + v8;
  if (v21 > *(v2 + 24))
  {
    v22 = v21 + (v20 >> 1);
    v23 = malloc_type_realloc(*(v2 + 8), v22, 0xDDA33B32uLL);
    v24 = a1[54];
    v25 = a1[52];
    *(*(v24 + 8 * v25) + 8) = v23;
    v2 = *(v24 + 8 * v25);
    if (!*(v2 + 8))
    {
      (*(*a1 + 112))(a1, "out of dynamic memory in yy_get_next_buffer()");
      v2 = *(a1[54] + 8 * a1[52]);
    }

    *(v2 + 24) = v22 - 2;
    v21 = a1[48] + v8;
  }

  a1[48] = v21;
  *(*(v2 + 8) + v21) = 0;
  *(*(*(a1[54] + 8 * a1[52]) + 8) + a1[48] + 1) = 0;
  a1[1] = *(*(a1[54] + 8 * a1[52]) + 8);
  return v11;
}

uint64_t sub_2216F1F78(uint64_t a1, void *a2, void *a3)
{
  *a1 = &unk_2834BABC0;
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = MEMORY[0x277D82668];
  }

  v6 = *(v5 + *(*v5 - 24) + 40);
  *(a1 + 112) = 0;
  *(a1 + 48) = MEMORY[0x277D82848] + 24;
  *(a1 + 56) = 0;
  *(a1 + 64) = MEMORY[0x277D82848] + 64;
  std::ios_base::init((a1 + 64), v6);
  *(a1 + 200) = 0;
  *(a1 + 208) = -1;
  if (a3)
  {
    v7 = a3;
  }

  else
  {
    v7 = MEMORY[0x277D82678];
  }

  v8 = *(v7 + *(*v7 - 24) + 40);
  *(a1 + 272) = 0;
  *(a1 + 216) = MEMORY[0x277D82850] + 24;
  *(a1 + 224) = MEMORY[0x277D82850] + 64;
  std::ios_base::init((a1 + 224), v8);
  *(a1 + 360) = 0;
  *(a1 + 368) = -1;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 24) = 1;
  *(a1 + 408) = 0;
  *(a1 + 456) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 416) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  return a1;
}

uint64_t sub_2216F2128(uint64_t a1)
{
  *a1 = &unk_2834BABC0;
  v2 = *(a1 + 456);
  if (v2)
  {
    MEMORY[0x223DA1430](v2, 0x1000C8052888210);
  }

  free(*(a1 + 40));
  v3 = *(a1 + 432);
  if (v3)
  {
    v4 = *(v3 + 8 * *(a1 + 416));
  }

  else
  {
    v4 = 0;
  }

  (*(*a1 + 40))(a1, v4);
  free(*(a1 + 432));
  std::ostream::~ostream();
  std::istream::~istream();
  return a1;
}

void sub_2216F21EC(uint64_t a1)
{
  sub_2216F2128(a1);

  JUMPOUT(0x223DA1450);
}

void sub_2216F2224(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[54];
  if (v6)
  {
    v7 = *(v6 + 8 * a1[52]);
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 40))(a1, v7);
  v8 = (*(*a1 + 32))(a1, a2, 0x4000);
  (*(*a1 + 16))(a1, v8);
  v9 = (a1 + *(a1[27] - 24) + 216);
  v9->__rdbuf_ = *(a3 + *(*a3 - 24) + 40);

  std::ios_base::clear(v9, 0);
}

uint64_t sub_2216F2378(uint64_t a1)
{
  v1 = (a1 + 48);
  if ((*(a1 + 48 + *(*(a1 + 48) - 24) + 32) & 7) != 0)
  {
    return 0;
  }

  std::istream::read();
  if (*(v1 + *(*v1 - 24) + 32))
  {
    return -1;
  }

  else
  {
    return *(a1 + 56);
  }
}

void sub_2216F2404(void *a1, void *a2)
{
  v4 = a1[54];
  if (v4 && (v5 = a1[52], *(v4 + 8 * v5)) || (v6 = sub_2216F1948(a1), v7 = (*(*a1 + 32))(a1, a1 + 6, 0x4000, v6), v5 = a1[52], *(a1[54] + 8 * v5) = v7, (v4 = a1[54]) != 0))
  {
    v8 = *(v4 + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  sub_2216F24B4(a1, v8, a2);

  sub_2216F1A48(a1);
}

int *sub_2216F24B4(void *a1, uint64_t a2, void *a3)
{
  v6 = *__error();
  sub_2216F277C(a1, a2);
  *a2 = *(a3 + *(*a3 - 24) + 40);
  *(a2 + 60) = 1;
  v7 = a1[54];
  if (v7)
  {
    v7 = *(v7 + 8 * a1[52]);
  }

  if (v7 != a2)
  {
    *(a2 + 52) = 1;
  }

  *(a2 + 44) = 0;
  result = __error();
  *result = v6;
  return result;
}

void sub_2216F2580(uint64_t a1, uint64_t a2)
{
  sub_2216F1948(a1);
  v4 = *(a1 + 432);
  if (v4)
  {
    v5 = *(a1 + 416);
    v6 = *(v4 + 8 * v5);
    if (v6 != a2)
    {
      if (v6)
      {
        **(a1 + 392) = *(a1 + 376);
        v4 = *(a1 + 432);
        v5 = *(a1 + 416);
        v7 = *(a1 + 384);
        *(*(v4 + 8 * v5) + 16) = *(a1 + 392);
        *(*(v4 + 8 * v5) + 32) = v7;
      }

      *(v4 + 8 * v5) = a2;
      sub_2216F1A48(a1);
      *(a1 + 408) = 1;
    }
  }
}

_DWORD *sub_2216F2600(void *a1, void *a2, int a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xBD6463CEuLL);
  if (!v6)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[6] = a3;
  v7 = malloc_type_malloc(a3 + 2, 0xBD6463CEuLL);
  *(v6 + 1) = v7;
  if (!v7)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[10] = 1;
  sub_2216F24B4(a1, v6, a2);
  return v6;
}

void sub_2216F2708(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = *(a1 + 432);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a1 + 416));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a2)
    {
      *(v3 + 8 * *(a1 + 416)) = 0;
    }

    if (*(a2 + 10))
    {
      free(a2[1]);
    }

    free(a2);
  }
}

void sub_2216F277C(void *a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = 0;
    **(a2 + 8) = 0;
    *(*(a2 + 8) + 1) = 0;
    *(a2 + 16) = *(a2 + 8);
    *(a2 + 48) = 1;
    *(a2 + 64) = 0;
    v2 = a1[54];
    if (v2)
    {
      v2 = *(v2 + 8 * a1[52]);
    }

    if (v2 == a2)
    {
      sub_2216F1A48(a1);
    }
  }
}

void sub_2216F27C8(uint64_t a1, char *a2)
{
  v2 = sub_2216F27EC(MEMORY[0x277D82670], a2);
  sub_2216F2834(v2);
  exit(2);
}

void *sub_2216F27EC(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_2216F2928(a1, __s, v4);
}

void *sub_2216F2834(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

void sub_2216F28F0(uint64_t a1)
{
  sub_2212B87E0(a1);

  JUMPOUT(0x223DA1450);
}

void *sub_2216F2928(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x223DA1380](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!sub_2216F2AD0(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x223DA1390](v13);
  return a1;
}

void sub_2216F2A68(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x223DA1390](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x2216F2A48);
}

uint64_t sub_2216F2AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_22108CD88();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_2216F2C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2216F2CB8(uint64_t a1)
{
  v673 = MEMORY[0x28223BE20](a1);
  v698[50] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277D85DF8];
  if (dword_27CFB6C78)
  {
    fwrite("Starting parse\n", 0xFuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  v2 = 0;
  v3 = 0;
  v4 = MEMORY[0x277D81540];
  v5 = MEMORY[0x277D81560];
  v6 = MEMORY[0x277D81558];
  *&v694[4] = xmmword_221811DB0;
  v693 = 0uLL;
  v694[0] = 1;
  v672 = *MEMORY[0x277D81538];
  v669 = *MEMORY[0x277D81568];
  v670 = *MEMORY[0x277D815B0];
  v671 = *MEMORY[0x277D81530];
  v667 = *MEMORY[0x277D81590];
  v668 = *MEMORY[0x277D815A8];
  v665 = *MEMORY[0x277D81548];
  v666 = *MEMORY[0x277D81598];
  v663 = *MEMORY[0x277D81540];
  v664 = *MEMORY[0x277D81580];
  v661 = *MEMORY[0x277D81558];
  v662 = *MEMORY[0x277D81560];
  v659 = *MEMORY[0x277D81570];
  v660 = *MEMORY[0x277D81578];
  v658 = *MEMORY[0x277D81588];
  v656 = *MEMORY[0x277D815A0];
  v657 = *MEMORY[0x277D81550];
  v7 = v697;
  v8 = v696;
  v9 = 200;
  v675 = v696;
  __src = v697;
  v10 = v698;
  v11 = v698;
  v676 = -2;
  while (1)
  {
    *v10 = v3;
    if (&v11[v9 - 1] <= v10)
    {
      if (v9 >> 5 > 0xC34)
      {
        v651 = 2;
        goto LABEL_186;
      }

      v12 = v2;
      if (2 * v9 >= 0x186A0)
      {
        v13 = 100000;
      }

      else
      {
        v13 = 2 * v9;
      }

      v14 = malloc_type_malloc(50 * v13 + 78, 0x100004052A7CFB8uLL);
      if (!v14)
      {
        v651 = 2;
        goto LABEL_186;
      }

      v15 = v14;
      v16 = v13;
      v17 = ((v10 - v11) >> 1) + 1;
      memcpy(v14, v11, 2 * v17);
      v18 = &v15[20 * (((1717986919 * (2 * v16 + 39)) >> 32) >> 4)];
      memcpy(v18, __src, 8 * v17);
      v19 = v16;
      v20 = (1717986919 * (8 * v16 + 39)) >> 36;
      v21 = v11;
      v22 = &v18[40 * v20];
      memcpy(v22, v675, 40 * v17);
      if (v21 != v698)
      {
        free(v21);
      }

      if (dword_27CFB6C78)
      {
        fprintf(*MEMORY[0x277D85DF8], "Stack size increased to %lu\n", v19);
      }

      v681 = &v15[v17 - 1];
      v8 = &v22[40 * v17 - 40];
      if (v19 <= v17)
      {
        v651 = 1;
        v11 = v15;
        v10 = &v15[v17 - 1];
        v2 = v12;
        goto LABEL_186;
      }

      v23 = &v18[8 * v17 - 8];
      __src = v18;
      v675 = v22;
      v11 = v15;
      v9 = v19;
      v1 = MEMORY[0x277D85DF8];
      v7 = v23;
      v2 = v12;
    }

    else
    {
      v681 = v10;
    }

    v680 = v9;
    if (dword_27CFB6C78)
    {
      fprintf(*v1, "Entering state %d\n", v3);
    }

    v24 = word_221811DC0[v3];
    if (v24 == -71)
    {
      break;
    }

    v25 = v676;
    if (v676 == -2)
    {
      if (dword_27CFB6C78)
      {
        fwrite("Reading a token: ", 0x11uLL, 1uLL, *v1);
      }

      v25 = sub_2216F49EC(&v695, &v693, v673);
    }

    if (v25 <= 0)
    {
      if (dword_27CFB6C78)
      {
        fwrite("Now at end of input.\n", 0x15uLL, 1uLL, *v1);
      }

      v2 = 0;
      v676 = 0;
    }

    else
    {
      v676 = v25;
      if (v25 > 0x12F)
      {
        v2 = 2;
      }

      else
      {
        v2 = byte_221811EF2[v25];
      }

      if (dword_27CFB6C78)
      {
        fprintf(*v1, "%s ", "Next token is");
        sub_2216F4AAC(*v1, v2, &v693);
        fputc(10, *v1);
      }
    }

    v26 = v2 + v24;
    if ((v2 + v24) > 0xE0 || v2 != word_221812022[v26])
    {
      break;
    }

    v27 = byte_2218121E4[v26];
    if (!byte_2218121E4[v26])
    {
      goto LABEL_174;
    }

    if (v26 == 29)
    {
      v651 = 0;
      v10 = v681;
      goto LABEL_186;
    }

    if (dword_27CFB6C78)
    {
      fprintf(*v1, "%s ", "Shifting");
      sub_2216F4AAC(*v1, v2, &v693);
      fputc(10, *v1);
    }

    if (v676)
    {
      v28 = -2;
    }

    else
    {
      v28 = 0;
    }

    v676 = v28;
    v7[1] = v695;
    ++v7;
    v29 = *v694;
    *(v8 + 40) = v693;
    *(v8 + 56) = v29;
    *(v8 + 9) = *&v694[16];
    v8 += 40;
    v3 = v27;
    v9 = v680;
    v30 = v681;
LABEL_154:
    v10 = (v30 + 1);
  }

  v679 = v11;
  v31 = byte_2218122C5[v3];
  if (!byte_2218122C5[v3])
  {
LABEL_174:
    v10 = v681;
    goto LABEL_175;
  }

  v32 = byte_22181235E[byte_2218122C5[v3]];
  v677 = v2;
  if (byte_22181235E[byte_2218122C5[v3]])
  {
    v33 = *&v8[-40 * v32 + 40];
    v34 = *(v8 + 1);
  }

  else
  {
    v34 = *(v8 + 1);
    v33 = v34;
  }

  v678 = v7;
  v682 = v7[1 - v32];
  *&v691[0] = v33;
  *(&v691[0] + 1) = v34;
  v35 = MEMORY[0x277D85DF8];
  v686 = v32;
  if (dword_27CFB6C78)
  {
    fprintf(*MEMORY[0x277D85DF8], "Reducing stack by rule %d (line %lu):\n", v31 - 1, word_2218124A6[v31]);
    if (v686)
    {
      v36 = 0;
      v37 = &v8[-40 * v686 + 40];
      do
      {
        fprintf(*v35, "   $%d = ", v36 + 1);
        sub_2216F4AAC(*v35, byte_221812534[v36 + word_22181263A[v31]], v37);
        fputc(10, *v35);
        v37 += 40;
        ++v36;
      }

      while (v686 != v36);
    }
  }

  v38 = v31;
  v39 = MEMORY[0x277D85DF8];
  v9 = v680;
  switch(v31)
  {
    case 2:
      TSTParser::setExpressionTree(v673, *v7);
      TSTParser::setInitialWhitespace(v673, *(v7 - 1));
      goto LABEL_143;
    case 3:
      v441 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v441, v442, *(v7 - 3), v443, *v7, 0);
      v444 = [TSTOperatorNode alloc];
      v448 = sub_2212B8BD4(*(v673 + 1), v445, v446, v447);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v444, v449, v448, v657, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 4:
      v347 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v347, v348, *(v7 - 3), v349, *v7, 0);
      v350 = [TSTOperatorNode alloc];
      v354 = sub_2212B8BD4(*(v673 + 1), v351, v352, v353);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v350, v355, v354, v658, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 5:
      v366 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v366, v367, *(v7 - 3), v368, *v7, 0);
      v369 = [TSTOperatorNode alloc];
      v373 = sub_2212B8BD4(*(v673 + 1), v370, v371, v372);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v369, v374, v373, v659, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 6:
      v303 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v303, v304, *(v7 - 3), v305, *v7, 0);
      v306 = [TSTOperatorNode alloc];
      v310 = sub_2212B8BD4(*(v673 + 1), v307, v308, v309);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v306, v311, v310, v660, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 7:
      v459 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v459, v460, *(v7 - 3), v461, *v7, 0);
      v462 = [TSTOperatorNode alloc];
      v466 = sub_2212B8BD4(*(v673 + 1), v463, v464, v465);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v462, v467, v466, v661, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 8:
      v477 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v477, v478, *(v7 - 3), v479, *v7, 0);
      v480 = [TSTOperatorNode alloc];
      v484 = sub_2212B8BD4(*(v673 + 1), v481, v482, v483);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v480, v485, v484, v662, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 9:
      v432 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v432, v433, *(v7 - 3), v434, *v7, 0);
      v435 = [TSTOperatorNode alloc];
      v439 = sub_2212B8BD4(*(v673 + 1), v436, v437, v438);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v435, v440, v439, v663, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 10:
      v58 = v681;
      if (!objc_msgSend_isSageUpgrade(*(v673 + 4), v4, v5, v6))
      {
        goto LABEL_197;
      }

      v504 = objc_alloc(MEMORY[0x277CBEA60]);
      v507 = objc_msgSend_initWithObjects_(v504, v505, *(v7 - 3), v506, *v7, 0);
      v508 = [TSTOperatorNode alloc];
      v512 = sub_2212B8BD4(*(v673 + 1), v509, v510, v511);
      v514 = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v508, v513, v512, v656, v507, *(v8 - 10), *(v8 - 9));

      v682 = v514;
      goto LABEL_129;
    case 11:
      v343 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v343, v344, *(v7 - 3), v345, *v7, 0);
      v346 = TSTOperatorNode;
      goto LABEL_120;
    case 12:
      v495 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v495, v496, *(v7 - 3), v497, *v7, 0);
      v210 = TSTOperatorNode;
      goto LABEL_126;
    case 13:
      v260 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v260, v261, *(v7 - 3), v262, *v7, 0);
      v263 = [TSTOperatorNode alloc];
      v267 = sub_2212B8BD4(*(v673 + 1), v264, v265, v266);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v263, v268, v267, v664, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 14:
      v312 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v312, v313, *(v7 - 3), v314, *v7, 0);
      v315 = [TSTOperatorNode alloc];
      v319 = sub_2212B8BD4(*(v673 + 1), v316, v317, v318);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v315, v320, v319, v665, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 15:
      v468 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v468, v469, *(v7 - 3), v470, *v7, 0);
      v471 = [TSTOperatorNode alloc];
      v475 = sub_2212B8BD4(*(v673 + 1), v472, v473, v474);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v471, v476, v475, v666, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 16:
      v211 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v211, v212, *(v7 - 2), v213, 0);
      v214 = [TSTPostfixOperatorNode alloc];
      v218 = sub_2212B8BD4(*(v673 + 1), v215, v216, v217);
      v220 = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v214, v219, v218, v667, v209, *(v8 - 5), *(v8 - 4));
      goto LABEL_107;
    case 17:
      v356 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v356, v357, *(v7 - 2), v358, 0);
      v359 = [TSTPostfixOperatorNode alloc];
      v363 = sub_2212B8BD4(*(v673 + 1), v360, v361, v362);
      v220 = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v359, v364, v363, v668, v209, *(v8 - 5), *(v8 - 4));
LABEL_107:
      v365 = v220;
      objc_msgSend_setWhitespaceAfter_(v220, v221, *v7, v222);
      goto LABEL_141;
    case 18:
      v206 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v206, v207, *v7, v208, 0);
      v210 = TSTPrefixOperatorNode;
LABEL_126:
      v498 = [v210 alloc];
      v502 = sub_2212B8BD4(*(v673 + 1), v499, v500, v501);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v498, v503, v502, v670, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 19:
      v450 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v450, v451, *v7, v452, 0);
      v346 = TSTPrefixOperatorNode;
LABEL_120:
      v453 = [v346 alloc];
      v457 = sub_2212B8BD4(*(v673 + 1), v454, v455, v456);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v453, v458, v457, v671, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 20:
      v486 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v486, v487, *v7, v488, 0);
      v489 = [TSTPrefixOperatorNode alloc];
      v493 = sub_2212B8BD4(*(v673 + 1), v490, v491, v492);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v489, v494, v493, v669, v209, *(v8 - 10), *(v8 - 9));
      goto LABEL_140;
    case 21:
    case 22:
    case 23:
    case 28:
    case 42:
    case 43:
    case 44:
    case 54:
    case 56:
    case 66:
    case 69:
      v682 = *v7;
      goto LABEL_143;
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
      v40 = *(v7 - 1);
      objc_msgSend_setWhitespaceBefore_(v40, v4, 0, v6);
      goto LABEL_55;
    case 32:
      v147 = objc_msgSend_mutableCopy(*(v7 - 1), v4, v5, v6);
      v58 = v681;
      if (objc_msgSend_length(v147, v148, v149, v150) <= 1)
      {
        v153 = MEMORY[0x277D81150];
        v154 = v39;
        v155 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v151, "int TSTyyparse(TSTParser *)", v152);
        v158 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v156, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGrammar.ymm", v157);
        v159 = v155;
        v39 = v154;
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v153, v160, v159, v158, 408, 0, "Parser: the quoted string length is less than 2.");
        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v161, v162, v163);
      }

      objc_msgSend_deleteCharactersInRange_(v147, v151, 0, 1);
      v167 = objc_msgSend_length(v147, v164, v165, v166);
      objc_msgSend_deleteCharactersInRange_(v147, v168, v167 - 1, 1);
      v172 = objc_msgSend_length(v147, v169, v170, v171);
      objc_msgSend_replaceOccurrencesOfString_withString_options_range_(v147, v173, @"", @"", 2, 0, v172);
      v174 = [TSTStringNode alloc];
      v178 = sub_2212B8BD4(*(v673 + 1), v175, v176, v177);
      v7 = v678;
      v682 = objc_msgSend_initWithContext_stringValue_firstIndex_lastIndex_(v174, v179, v178, v147, *(v8 - 5), *(v8 - 4));
      objc_msgSend_setWhitespaceAfter_(v682, v180, *v678, v181);

      goto LABEL_129;
    case 33:
    case 34:
    case 37:
      v45 = [TSTIdentifierNode alloc];
      v49 = sub_2212B8BD4(*(v673 + 1), v46, v47, v48);
      v682 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v45, v50, v49, *(v7 - 1), *(v8 - 5), *(v8 - 4));
      objc_msgSend_setWhitespaceAfter_(v682, v51, *v7, v52);
      goto LABEL_143;
    case 35:
    case 36:
    case 38:
    case 39:
    case 40:
    case 41:
      v40 = *(v7 - 2);
      objc_msgSend_appendToLastComponent_(v40, v4, *(v7 - 1), v6);
      objc_msgSend_setLastIndex_(v40, v43, *(v8 - 4), v44);
LABEL_55:
      v682 = v40;
      objc_msgSend_setWhitespaceAfter_(v40, v41, *v7, v42);
      goto LABEL_143;
    case 45:
      v89 = *(v7 - 3);
      v134 = *v7;
      v135 = objc_msgSend_fullIdentifier(*v7, v4, v5, v6);
      objc_msgSend_addIdentifierComponent_(v89, v136, v135, v137);
      Index = objc_msgSend_lastIndex(v134, v138, v139, v140);
      objc_msgSend_setLastIndex_(v89, v142, Index, v143);
      v104 = objc_msgSend_whitespaceAfter(v134, v144, v145, v146);
      goto LABEL_72;
    case 46:
      v223 = *(v7 - 1);
      v58 = v681;
      if (objc_msgSend_aggregateFunction(v223, v4, v5, v6))
      {
        goto LABEL_197;
      }

      objc_msgSend_setAggregateFunction_(v223, v224, *v7, v225);
      v682 = v223;
      objc_msgSend_setLastIndex_(v223, v226, *(v8 + 1), v227);
      goto LABEL_129;
    case 47:
      v249 = *(v7 - 1);
      v58 = v681;
      if (!v249)
      {
        v250 = [TSTReferenceNode alloc];
        v254 = sub_2212B8BD4(*(v673 + 1), v251, v252, v253);
        v689 = 0;
        v690 = 0;
        v688 = vdupq_n_s64(0x7FFF7FFFFFFFuLL);
        v687[0] = 0x7FFF7FFFFFFFLL;
        v687[1] = 0;
        v687[2] = 0;
        LOBYTE(v654) = 1;
        v249 = objc_msgSend_initWithContext_calculationEngine_baseRangeRef_preserveFlags_hostCellRef_referenceColorHelper_suppressAutomaticNamedReferenceInvalidation_(v250, v255, v254, 0, &v688, 0, v687, 0, v654);
      }

      objc_msgSend_setRangeWithFunction_(v249, v4, 0, v6);
      objc_msgSend_setWhitespaceBefore_(v249, v256, 0, v257);
      v682 = v249;
      objc_msgSend_setWhitespaceAfter_(v249, v258, *v7, v259);
      goto LABEL_129;
    case 48:
      v53 = *(v7 - 3);
      v54 = *v7;
      v58 = v681;
      if (objc_msgSend_isNonSpillRangeExpression(v53, v4, v5, v6) & 1) != 0 || (objc_msgSend_isNonSpillRangeExpression(v54, v55, v56, v57))
      {
        goto LABEL_197;
      }

      v62 = *(v673 + 4);
      if (objc_msgSend_isSageUpgrade(v62, v59, v60, v61))
      {
        if ((objc_msgSend_needsSageImportRewrite(v62, v63, v64, v65) & 1) == 0)
        {
          v69 = objc_msgSend_tableUID(v53, v66, v67, v68);
          v683 = v70;
          if (v69 != objc_msgSend_tableUID(v54, v70, v71, v72) || v683 != v73)
          {
            objc_msgSend_setNeedsSageImportRewrite_(v62, v73, 1, v74);
          }
        }
      }

      v75 = objc_alloc(MEMORY[0x277CBEA60]);
      v78 = objc_msgSend_initWithObjects_(v75, v76, *(v7 - 3), v77, *v7, 0);
      v79 = [TSTOperatorNode alloc];
      v83 = sub_2212B8BD4(*(v673 + 1), v80, v81, v82);
      v85 = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v79, v84, v83, v672, v78, *(v8 - 10), *(v8 - 9));
      objc_msgSend_setWhitespaceAfter_(v85, v86, *(v7 - 1), v87);

      v682 = v85;
      v2 = v677;
      goto LABEL_173;
    case 49:
      objc_msgSend_setRangeWithFunction_(*(v7 - 3), v4, 1, v6);
      goto LABEL_139;
    case 50:
      objc_msgSend_setRangeWithFunction_(*v7, v4, 1, v6);
      goto LABEL_139;
    case 51:
    case 52:
    case 53:
LABEL_139:
      v567 = objc_alloc(MEMORY[0x277CBEA60]);
      v209 = objc_msgSend_initWithObjects_(v567, v568, *(v7 - 3), v569, *v7, 0);
      v570 = [TSTOperatorNode alloc];
      v574 = sub_2212B8BD4(*(v673 + 1), v571, v572, v573);
      Index_lastIndex = objc_msgSend_initWithContext_operatorChar_children_firstIndex_lastIndex_(v570, v575, v574, v672, v209, *(v8 - 10), *(v8 - 9));
LABEL_140:
      v365 = Index_lastIndex;
      objc_msgSend_setWhitespaceAfter_(Index_lastIndex, v270, *(v7 - 1), v271);
LABEL_141:

      v566 = v365;
      goto LABEL_142;
    case 55:
      v105 = MEMORY[0x277D85DF8];
      v106 = *(v7 - 3);
      v107 = *v7;
      v58 = v681;
      if (objc_msgSend_aggregateFunction(v106, v4, v5, v6))
      {
        goto LABEL_197;
      }

      v111 = MEMORY[0x277CCACA8];
      v112 = objc_msgSend_fullIdentifier(v107, v108, v109, v110);
      v115 = objc_msgSend_stringWithFormat_(v111, v113, @":%@", v114, v112);
      objc_msgSend_appendToLastComponent_(v106, v116, v115, v117);
      v121 = objc_msgSend_lastIndex(v107, v118, v119, v120);
      objc_msgSend_setLastIndex_(v106, v122, v121, v123);
      v127 = objc_msgSend_whitespaceAfter(v107, v124, v125, v126);
      v682 = v106;
      objc_msgSend_setWhitespaceAfter_(v106, v128, v127, v129);
      v130 = *(v673 + 4);
      v2 = v677;
      if (!objc_msgSend_isSageUpgrade(v130, v131, v132, v133))
      {
        goto LABEL_134;
      }

      v39 = v105;
      if ((objc_msgSend_needsSageImportRewrite(v130, v4, v5, v6) & 1) == 0)
      {
        objc_msgSend_setNeedsSageImportRewrite_(v130, v4, 1, v6);
      }

      goto LABEL_144;
    case 57:
      v105 = MEMORY[0x277D85DF8];
      v58 = v681;
      if (objc_msgSend_isSageUpgrade(*(v673 + 4), v4, v5, v6))
      {
        goto LABEL_197;
      }

      objc_opt_class();
      v515 = TSUDynamicCast();
      objc_opt_class();
      v516 = TSUDynamicCast();
      if (!v515)
      {
        goto LABEL_197;
      }

      v520 = v516;
      if (!v516)
      {
        goto LABEL_197;
      }

      v521 = MEMORY[0x277CCACA8];
      v522 = objc_msgSend_fullIdentifier(v516, v517, v518, v519);
      v525 = objc_msgSend_stringWithFormat_(v521, v523, @"|%@", v524, v522);
      objc_msgSend_appendToLastComponent_(v515, v526, v525, v527);
      v531 = objc_msgSend_lastIndex(v520, v528, v529, v530);
      objc_msgSend_setLastIndex_(v515, v532, v531, v533);
      v537 = objc_msgSend_whitespaceAfter(v520, v534, v535, v536);
      v682 = v515;
      objc_msgSend_setWhitespaceAfter_(v515, v538, v537, v539);
      v2 = v677;
LABEL_134:
      v39 = v105;
      goto LABEL_144;
    case 58:
      v228 = [TSTListNode alloc];
      v232 = sub_2212B8BD4(*(v673 + 1), v229, v230, v231);
      v236 = objc_msgSend_children(*(v7 - 2), v233, v234, v235);
      v238 = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v228, v237, v232, v236, *(v8 - 20), *(v8 - 4));
      objc_msgSend_setWhitespaceAfter_(v238, v239, *v7, v240);
      objc_msgSend_setWhitespaceAfterLeftParen_(v238, v241, *(v7 - 3), v242);
      v246 = objc_msgSend_whitespaceAfterDelimiters(*(v7 - 2), v243, v244, v245);
      objc_msgSend_setWhitespaceAfterDelimiters_(v238, v247, v246, v248);
      goto LABEL_136;
    case 59:
      v540 = *(v7 - 1);
      v541 = objc_msgSend_length(v540, v4, v5, v6);
      v544 = objc_msgSend_substringToIndex_(v540, v542, v541 - 1, v543);
      v547 = objc_msgSend_substringFromIndex_(v544, v545, 1, v546);
      v548 = [TSTIdentifierNode alloc];
      v552 = sub_2212B8BD4(*(v673 + 1), v549, v550, v551);
      v554 = objc_msgSend_initWithContext_identifier_firstIndex_lastIndex_(v548, v553, v552, v547, *(v8 - 5) + 1, *(v8 - 4) - 1);
      v557 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v555, v554, v556);
      v558 = [TSTListNode alloc];
      v562 = sub_2212B8BD4(*(v673 + 1), v559, v560, v561);
      v238 = objc_msgSend_initWithContext_children_firstIndex_lastIndex_(v558, v563, v562, v557, *(v8 - 5), *(v8 - 4));
      objc_msgSend_setWhitespaceAfter_(v238, v564, *v7, v565);
LABEL_136:
      v566 = v238;
LABEL_142:
      v682 = v566;
      goto LABEL_143;
    case 60:
      objc_opt_class();
      v272 = TSUDynamicCast();
      v276 = objc_msgSend_dimensions(v272, v273, v274, v275);
      v280 = objc_msgSend_children(v272, v277, v278, v279);
      v58 = v681;
      if (objc_msgSend_count(v280, v281, v282, v283) == 1 && (objc_msgSend_objectAtIndex_(v280, v284, 0, v285), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v286 = [TSTArrayNode alloc];
        v290 = sub_2212B8BD4(*(v673 + 1), v287, v288, v289);
        v292 = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(v286, v291, v290, 0, 0, 0, *(v8 - 20), *(v8 - 19));
      }

      else
      {
        v583 = [TSTArrayNode alloc];
        v587 = sub_2212B8BD4(*(v673 + 1), v584, v585, v586);
        v292 = objc_msgSend_initWithContext_children_columns_rows_firstIndex_lastIndex_(v583, v588, v587, v280, v276, HIDWORD(v276), *(v8 - 20), *(v8 - 19));
        v592 = objc_msgSend_whitespaceAfterDelimiters(v272, v589, v590, v591);
        objc_msgSend_setWhitespaceAfterDelimiters_(v292, v593, v592, v594);
      }

      v595 = v292;
      objc_msgSend_setWhitespaceAfter_(v292, v596, *v7, v597);
      v682 = v292;
      objc_msgSend_setWhitespaceBeforeFirstChild_(v292, v598, *(v7 - 3), v599);
      goto LABEL_161;
    case 61:
      objc_opt_class();
      v375 = TSUDynamicCast();
      v379 = objc_msgSend_dimensions(v375, v376, v377, v378);
      v383 = objc_msgSend_children(*v7, v380, v381, v382);
      v58 = v681;
      if (objc_msgSend_count(v383, v384, v385, v386) == v379)
      {
        v390 = objc_msgSend_children(v375, v387, v388, v389);
        v394 = objc_msgSend_children(*v7, v391, v392, v393);
        objc_msgSend_addObjectsFromArray_(v390, v395, v394, v396);
        v400 = objc_msgSend_whitespaceAfterDelimiters(v375, v397, v398, v399);
        v403 = v400;
        if (*(v7 - 1))
        {
          objc_msgSend_addObject_(v400, v401, *(v7 - 1), v402);
        }

        else
        {
          objc_msgSend_addObject_(v400, v401, &stru_2834BADA0, v402);
        }

        v407 = objc_msgSend_whitespaceAfterDelimiters(*v7, v404, v405, v406);
        objc_msgSend_addObjectsFromArray_(v403, v408, v407, v409);
        v410 = objc_alloc_init(TSTTemporaryCollectionNode);
        objc_msgSend_setChildren_(v410, v411, v390, v412);
        objc_msgSend_setDimensions_(v410, v413, (v379 & 0xFFFFFFFF0000FFFFLL) + 0x100000000, v414);
        objc_msgSend_setWhitespaceAfterDelimiters_(v410, v415, v403, v416);
        objc_msgSend_setFirstIndex_(v410, v417, *(v8 - 15), v418);
        objc_msgSend_setLastIndex_(v410, v419, *(v8 + 1), v420);
        v682 = v410;
LABEL_161:
        v2 = v677;
LABEL_173:
        v39 = MEMORY[0x277D85DF8];
LABEL_144:
        if (dword_27CFB6C78)
        {
          fprintf(*v39, "%s ", "-> $$ =");
          v576 = byte_2218123A5[v38];
          sub_2216F4AAC(*v39, byte_2218123A5[v38], v691);
          v577 = v39;
          fputc(10, *v39);
          v578 = &v7[-v686];
          v30 = (v58 - 2 * v686);
          v579 = &v8[-40 * v686];
          if (dword_27CFB6C78)
          {
            v11 = v679;
            sub_2216F4B60(v679, v30);
            goto LABEL_149;
          }
        }

        else
        {
          v577 = v39;
          v578 = &v7[-v686];
          v579 = &v8[-40 * v686];
          v576 = byte_2218123A5[v38];
          v30 = (v58 - 2 * v686);
        }

        v11 = v679;
LABEL_149:
        v578[1] = v682;
        v7 = v578 + 1;
        v8 = v579 + 40;
        v580 = v691[1];
        *(v579 + 40) = v691[0];
        *(v579 + 56) = v580;
        *(v579 + 9) = v692;
        v581 = *v30 + byte_2218123EC[v576 - 49];
        if (v581 <= 0xE0 && word_221812022[v581] == *v30)
        {
          v582 = byte_2218121E4[v581];
        }

        else
        {
          v582 = byte_2218123FC[v576 - 49];
        }

        v1 = v577;
        v3 = v582;
        goto LABEL_154;
      }

LABEL_197:
      v10 = (v58 - 2 * v686);
      v8 -= 40 * v686;
      v2 = v677;
      v11 = v679;
      if (dword_27CFB6C78)
      {
        sub_2216F4B60(v679, v10);
      }

      v3 = *v10;
LABEL_175:
      if (v10 != v11)
      {
        v648 = (v10 - 2);
        do
        {
          sub_2216F4BF8("Error: popping", byte_22181240C[v3], v8);
          v3 = *v648;
          if (dword_27CFB6C78)
          {
            sub_2216F4B60(v11, v648);
          }

          v8 -= 40;
          v649 = v648 - 1;
        }

        while (v648-- != v11);
        v10 = (v649 + 1);
      }

      v651 = 1;
LABEL_186:
      if (v676 != -2 && v676)
      {
        sub_2216F4BF8("Cleanup: discarding lookahead", v2, &v693);
      }

      if (dword_27CFB6C78)
      {
        sub_2216F4B60(v11, v10);
      }

      for (; v10 != v11; v8 -= 40)
      {
        v652 = *v10;
        v10 -= 2;
        sub_2216F4BF8("Cleanup: popping", byte_22181240C[v652], v8);
      }

      if (v11 != v698)
      {
        free(v11);
      }

      return v651;
    case 62:
      v428 = *v7;
      v429 = objc_msgSend_dimensions(*v7, v4, v5, v6);
      v682 = v428;
      objc_msgSend_setDimensions_(v428, v430, v429 | 0x100000000, v431);
      goto LABEL_143;
    case 63:
      v321 = objc_msgSend_children(*(v7 - 3), v4, v5, v6);
      objc_msgSend_addObject_(v321, v322, *v7, v323);
      v330 = objc_msgSend_whitespaceAfterDelimiters(*(v7 - 3), v324, v325, v326);
      v58 = v681;
      if (!v330)
      {
        v330 = objc_msgSend_array(MEMORY[0x277CBEB18], v327, v328, v329);
        objc_msgSend_setWhitespaceAfterDelimiters_(*(v7 - 3), v331, v330, v332);
      }

      if (*(v7 - 1))
      {
        objc_msgSend_addObject_(v330, v327, *(v7 - 1), v329);
      }

      else
      {
        objc_msgSend_addObject_(v330, v327, &stru_2834BADA0, v329);
      }

      v336 = objc_msgSend_dimensions(*(v7 - 3), v333, v334, v335);
      objc_msgSend_setDimensions_(*(v7 - 3), v337, (v336 + 1) | v336 & 0xFFFFFFFF00000000, v338);
      objc_msgSend_setFirstIndex_(*(v7 - 3), v339, *(v8 - 15), v340);
      objc_msgSend_setLastIndex_(*(v7 - 3), v341, *(v8 + 1), v342);
      v682 = *(v7 - 3);
LABEL_129:
      v2 = v677;
      goto LABEL_144;
    case 64:
      v293 = objc_msgSend_arrayWithObject_(MEMORY[0x277CBEB18], v4, *v7, v6);
      v294 = objc_alloc_init(TSTTemporaryCollectionNode);
      objc_msgSend_setChildren_(v294, v295, v293, v296);
      objc_msgSend_setDimensions_(v294, v297, 0x100000001, v298);
      objc_msgSend_setFirstIndex_(v294, v299, *v8, v300);
      v682 = v294;
      objc_msgSend_setLastIndex_(v294, v301, *(v8 + 1), v302);
      goto LABEL_143;
    case 65:
      v421 = [TSTEmptyExpressionNode alloc];
      v425 = sub_2212B8BD4(*(v673 + 1), v422, v423, v424);
      v682 = objc_msgSend_initWithContext_(v421, v426, v425, v427);
      goto LABEL_158;
    case 67:
      v88 = objc_msgSend_children(*(v7 - 2), v4, v5, v6);
      objc_opt_class();
      v89 = TSUDynamicCast();
      objc_msgSend_setChildren_(v89, v90, v88, v91);
      objc_msgSend_setWhitespaceAfterLeftParen_(v89, v92, *(v7 - 3), v93);
      v97 = objc_msgSend_whitespaceAfterDelimiters(*(v7 - 2), v94, v95, v96);
      objc_msgSend_setWhitespaceAfterDelimiters_(v89, v98, v97, v99);
      objc_msgSend_setWhitespaceBefore_(v89, v100, 0, v101);
      v104 = *v7;
LABEL_72:
      v682 = v89;
      objc_msgSend_setWhitespaceAfter_(v89, v102, v104, v103);
LABEL_143:
      v2 = v677;
      v58 = v681;
      goto LABEL_144;
    case 68:
      v182 = *v7;
      v684 = *(v7 - 1);
      v655 = objc_msgSend_fullIdentifier(v684, v4, v5, v6);
      v186 = objc_msgSend_uppercaseString(v655, v183, v184, v185);
      v190 = TSTParser::locale(v673, v187, v188, v189);
      v193 = objc_msgSend_functionNameForLocalizedString_(v190, v191, v186, v192);
      if (v193)
      {
        v196 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v194, v193, v195);
      }

      else
      {
        v196 = objc_msgSend_functionSpecForFunctionName_(TSCEFunctionSpec, v194, v186, v195);
      }

      if (v196 && ((v200 = v196, v204 = objc_msgSend_functionIndex(v196, v197, v198, v199), (v204 - 281) >= 0x10u) || ((0xFF0Fu >> (v204 - 25)) & 1) == 0))
      {
        if (objc_msgSend_versionShippedIn(v200, v201, v202, v203) == 999)
        {
          v205 = 0;
        }

        else
        {
          v205 = v204;
        }
      }

      else
      {
        v205 = 0;
      }

      v58 = v681;
      v600 = [TSTFunctionNode alloc];
      v604 = sub_2212B8BD4(*(v673 + 1), v601, v602, v603);
      v608 = objc_msgSend_children(v182, v605, v606, v607);
      v610 = objc_msgSend_initWithContext_functionIndex_children_firstIndex_lastIndex_(v600, v609, v604, v205, v608, *(v8 - 5), *v8);
      v614 = objc_msgSend_whitespaceAfterLeftParen(v182, v611, v612, v613);
      objc_msgSend_setWhitespaceAfterLeftParen_(v610, v615, v614, v616);
      v620 = objc_msgSend_whitespaceAfterDelimiters(v182, v617, v618, v619);
      objc_msgSend_setWhitespaceAfterDelimiters_(v610, v621, v620, v622);
      v626 = objc_msgSend_whitespaceAfter(v182, v623, v624, v625);
      objc_msgSend_setWhitespaceAfter_(v610, v627, v626, v628);
      v632 = objc_msgSend_whitespaceAfter(v684, v629, v630, v631);
      objc_msgSend_setWhitespaceAfterFunctionName_(v610, v633, v632, v634);
      if (v205)
      {
        v685 = v205;
        v638 = *(v673 + 4);
        v2 = v677;
        v7 = v678;
        if (objc_msgSend_isSageUpgrade(v638, v635, v636, v637))
        {
          if ((objc_msgSend_needsSageImportRewrite(v638, v639, v640, v641) & 1) == 0)
          {
            v644 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v642, v685, v643);
            if (!v644 || objc_msgSend_versionShippedIn(v644, v645, v646, v647) >= 2)
            {
              objc_msgSend_setNeedsSageImportRewrite_(v638, v645, 1, v647);
            }
          }
        }
      }

      else
      {
        objc_msgSend_setInvalidFunctionName_(v610, v635, v655, v637);
        v2 = v677;
        v7 = v678;
      }

      v682 = v610;
      goto LABEL_173;
    case 70:
      v682 = 0;
      goto LABEL_158;
    default:
      v39 = MEMORY[0x277D85DF8];
      v9 = v680;
LABEL_158:
      v58 = v681;
      goto LABEL_144;
  }
}

uint64_t sub_2216F49EC(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 8);
  v6 = (*(*v5 + 64))(v5);
  v7 = sub_2212B88A4(v5);
  if (v7)
  {
    v11 = v7;
    v12 = objc_msgSend_length(v7, v8, v9, v10) - 1;
  }

  else
  {
    v11 = sub_2212B8894(v5);
    v12 = 0;
  }

  *a1 = v11;
  if (*(a2 + 16) == 1)
  {
    v13 = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v13 = *(a2 + 8) + 1;
  }

  *a2 = v13;
  *(a2 + 8) = v12 + v13;
  return v6;
}

uint64_t sub_2216F4AAC(FILE *a1, int a2, _DWORD *a3)
{
  if (a2 >= 49)
  {
    fprintf(a1, "nterm %s (");
  }

  else
  {
    fprintf(a1, "token %s (");
  }

  fprintf(a1, "%d.%d-%d.%d", a3[5], a3[6], a3[7], a3[8]);
  fwrite(": ", 2uLL, 1uLL, a1);

  return fputc(41, a1);
}

uint64_t sub_2216F4B60(__int16 *a1, unint64_t a2)
{
  v4 = MEMORY[0x277D85DF8];
  fwrite("Stack now", 9uLL, 1uLL, *MEMORY[0x277D85DF8]);
  while (a1 <= a2)
  {
    v5 = *a1++;
    fprintf(*v4, " %d", v5);
  }

  v6 = *v4;

  return fputc(10, v6);
}

const char *sub_2216F4BF8(const char *result, int a2, _DWORD *a3)
{
  if (dword_27CFB6C78)
  {
    v5 = "Deleting";
    if (result)
    {
      v5 = result;
    }

    v6 = MEMORY[0x277D85DF8];
    fprintf(*MEMORY[0x277D85DF8], "%s ", v5);
    sub_2216F4AAC(*v6, a2, a3);
    v7 = *v6;

    return fputc(10, v7);
  }

  return result;
}

uint64_t sub_2216F4C98(uint64_t a1)
{
  if (!*(a1 + 400))
  {
    *(a1 + 400) = 1;
    if (!*(a1 + 404))
    {
      *(a1 + 404) = 1;
    }

    v2 = a1 + 48 + *(*(a1 + 48) - 24);
    if ((*(v2 + 32) & 5) != 0)
    {
      *(v2 + 40) = *(MEMORY[0x277D82668] + *(*MEMORY[0x277D82668] - 24) + 40);
      std::ios_base::clear(v2, 0);
    }

    v3 = a1 + 216 + *(*(a1 + 216) - 24);
    if ((*(v3 + 32) & 5) != 0)
    {
      *(v3 + 40) = *(MEMORY[0x277D82678] + *(*MEMORY[0x277D82678] - 24) + 40);
      std::ios_base::clear(v3, 0);
    }

    v4 = *(a1 + 432);
    if (!v4 || !*(v4 + 8 * *(a1 + 416)))
    {
      v5 = sub_2216F5734(a1);
      *(*(a1 + 432) + 8 * *(a1 + 416)) = (*(*a1 + 32))(a1, a1 + 48, 0x4000, v5);
    }

    sub_2216F1A48(a1);
  }

  v6 = (a1 + 392);
  v7 = (a1 + 448);
  while (1)
  {
LABEL_13:
    v8 = *(a1 + 392);
    *v8 = *(a1 + 376);
    v9 = *(a1 + 404);
    v10 = v8;
    do
    {
LABEL_14:
      v11 = byte_2218126C8[*v10];
      if (word_2218127C8[v9])
      {
        *(a1 + 440) = v9;
        *(a1 + 448) = v10;
      }

      v12 = v9;
      v13 = word_221818430[v9] + v11;
      if (v9 != word_221812EE6[v13])
      {
        do
        {
          v12 = word_221818C9A[v12];
          if (v12 >= 911)
          {
            v11 = *(&unk_221819504 + v11);
          }

          v13 = word_221818430[v12] + v11;
        }

        while (word_221812EE6[v13] != v12);
      }

      v9 = word_22181957A[v13];
      ++v10;
    }

    while (v9 != 910);
    v14 = *(a1 + 440);
    v15 = v7;
    while (2)
    {
      v16 = *v15;
      v17 = word_2218127C8[v14];
      *(a1 + 8) = v8;
      *(a1 + 16) = v16 - v8;
      *(a1 + 376) = *v16;
      *v16 = 0;
      *(a1 + 392) = v16;
LABEL_23:
      switch(v17)
      {
        case 0:
          *v16 = *(a1 + 376);
          v14 = *(a1 + 440);
          v15 = (a1 + 448);
          continue;
        case 1:
          sub_2212B8B80(a1, *(a1 + 8));
          sub_2216F5834(a1, 40);
          return 258;
        case 2:
          sub_2212B8B80(a1, *(a1 + 8));
          v55 = *(a1 + 600);
          if (*(a1 + 592) != v55)
          {
            v57 = *(v55 - 1);
            v56 = v55 - 1;
            if (v57 == 40)
            {
              *(a1 + 600) = v56;
            }
          }

          return 259;
        case 3:
          sub_2212B8B80(a1, *(a1 + 8));
          sub_2216F5834(a1, 123);
          return 260;
        case 4:
          sub_2212B8B80(a1, *(a1 + 8));
          v52 = *(a1 + 600);
          if (*(a1 + 592) != v52)
          {
            v54 = *(v52 - 1);
            v53 = v52 - 1;
            if (v54 == 123)
            {
              *(a1 + 600) = v53;
            }
          }

          return 261;
        case 5:
          sub_2212B8B80(a1, *(a1 + 8));
          return 292;
        case 6:
          sub_2212B8B80(a1, *(a1 + 8));
          return 291;
        case 7:
          sub_2212B8B80(a1, *(a1 + 8));
          return 294;
        case 8:
          sub_2212B8B80(a1, *(a1 + 8));
          return 293;
        case 9:
          sub_2212B8B80(a1, *(a1 + 8));
          return 295;
        case 10:
          sub_2212B8B80(a1, *(a1 + 8));
          return 301;
        case 11:
          sub_2212B8B80(a1, *(a1 + 8));
          return 297;
        case 12:
          sub_2212B8B80(a1, *(a1 + 8));
          return 296;
        case 13:
          sub_2212B8B80(a1, *(a1 + 8));
          sub_2212B88AC(a1, 0);
          return 280;
        case 14:
          sub_2212B8B80(a1, *(a1 + 8));
          return 300;
        case 15:
          sub_2212B8B80(a1, *(a1 + 8));
          v27 = *(a1 + 600);
          result = 279;
          if (*(a1 + 592) == v27)
          {
            return result;
          }

          v28 = *(v27 - 1) == 123;
          v29 = 262;
          goto LABEL_94;
        case 16:
          sub_2212B8B80(a1, *(a1 + 8));
          v58 = *(a1 + 600);
          result = 262;
          if (*(a1 + 592) == v58)
          {
            return result;
          }

          v28 = *(v58 - 1) == 123;
          v29 = 279;
LABEL_94:
          if (v28)
          {
            return v29;
          }

          else
          {
            return result;
          }

        case 17:
          sub_2212B8B80(a1, *(a1 + 8));
          return 290;
        case 18:
          sub_2212B8B80(a1, *(a1 + 8));
          return 289;
        case 19:
          sub_2212B8B80(a1, *(a1 + 8));
          return 287;
        case 20:
          sub_2212B8B80(a1, *(a1 + 8));
          return 286;
        case 21:
          sub_2212B8B80(a1, *(a1 + 8));
          return 284;
        case 22:
          sub_2212B8B80(a1, *(a1 + 8));
          return 285;
        case 23:
          sub_2212B8B80(a1, *(a1 + 8));
          return 288;
        case 24:
          sub_2212B8B80(a1, *(a1 + 8));
          return 263;
        case 25:
          sub_2212B8B80(a1, *(a1 + 8));
          return 298;
        case 26:
          sub_2212B8B80(a1, *(a1 + 8));
          return 299;
        case 27:
          sub_2212B8B80(a1, *(a1 + 8));
          return 273;
        case 28:
          v33 = sub_2212B894C(a1);
          if (!v33)
          {
            v34 = MEMORY[0x277D81150];
            v35 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v30, "virtual int TSTCommaLexer::yylex()", v32);
            v38 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v36, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCommaLexer.lmm", v37);
            objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v34, v39, v35, v38, 289, 0, "Unable to lex tokenAttachment.");
            objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
          }

          v43 = objc_msgSend_expressionNode(v33, v30, v31, v32, a1 + 448);
          sub_2212B88AC(a1, v43);
          v47 = objc_msgSend_tokenType(v43, v44, v45, v46);
          v48 = v47;
          if (v47 > 5)
          {
            if (v47 > 8)
            {
              if (v47 == 9)
              {
                return 274;
              }

              else if (v47 == 10)
              {
                return 277;
              }

              else
              {
                result = 0;
                if (v48 == 11)
                {
                  return 278;
                }
              }
            }

            else if (v47 == 6)
            {
              return 276;
            }

            else if (v47 == 7)
            {
              return 275;
            }

            else
            {
              result = 0;
              if (v48 == 8)
              {
                return 281;
              }
            }
          }

          else if (v47 > 2)
          {
            if (v47 == 3)
            {
              v59 = 282;
            }

            else
            {
              v59 = 0;
            }

            if ((v47 - 4) >= 2)
            {
              return v59;
            }

            else
            {
              return 280;
            }
          }

          else if (v47)
          {
            if (v47 == 1)
            {
              sub_2216F5834(a1, 40);
              return 271;
            }

            else
            {
              result = 0;
              if (v48 == 2)
              {
                v49 = *(a1 + 600);
                if (*(a1 + 592) != v49)
                {
                  v51 = *(v49 - 1);
                  v50 = v49 - 1;
                  if (v51 == 40)
                  {
                    *(a1 + 600) = v50;
                  }
                }

                return 272;
              }
            }
          }

          else
          {
            return 283;
          }

          return result;
        case 29:
          sub_2212B8B80(a1, *(a1 + 8));
          return 265;
        case 30:
        case 31:
          sub_2212B8B80(a1, *(a1 + 8));
          if (sub_2212B8C04(a1, *(a1 + 8)))
          {
            return 267;
          }

          else
          {
            return 268;
          }

        case 32:
          sub_2212B8B80(a1, *(a1 + 8));
          return 266;
        case 33:
          sub_2212B8B80(a1, *(a1 + 8));
          return 270;
        case 34:
          sub_2212B8B80(a1, *(a1 + 8));
          return 269;
        case 35:
          sub_2212B8B80(a1, *(a1 + 8));
          return 264;
        case 36:
          v25 = v6;
          (*(*a1 + 104))(a1, *(a1 + 8), *(a1 + 16));
          goto LABEL_41;
        case 37:
          v18 = *(a1 + 8);
          *v16 = *(a1 + 376);
          v19 = *(a1 + 432);
          v20 = *(a1 + 416);
          v21 = *(v19 + 8 * v20);
          if (*(v21 + 64))
          {
            v22 = *(a1 + 384);
          }

          else
          {
            v22 = *(v21 + 32);
            *(a1 + 384) = v22;
            *v21 = *(a1 + 88 + *(*(a1 + 48) - 24));
            v21 = *(v19 + 8 * v20);
            *(v21 + 64) = 1;
          }

          v60 = v6;
          if (*v6 <= (*(v21 + 8) + v22))
          {
            *(a1 + 392) = *(a1 + 8) + ~v18 + v16;
            v24 = sub_2216F5928(a1);
            v9 = sub_2216F59EC(a1, v24);
            v8 = *(a1 + 8);
            if (!v9)
            {
              v14 = *(a1 + 440);
              v15 = (a1 + 448);
              v6 = v60;
              continue;
            }

            v6 = v60;
            v10 = (*v60 + 1);
            *v60 = v10;
            goto LABEL_37;
          }

          v23 = sub_2216F5A70(a1);
          if (v23 != 1)
          {
            if (v23)
            {
              *(a1 + 392) = *(*(*(a1 + 432) + 8 * *(a1 + 416)) + 8) + *(a1 + 384);
              v14 = sub_2216F5928(a1);
              v8 = *(a1 + 8);
              v6 = v60;
              v15 = v60;
              continue;
            }

            *(a1 + 392) = *(a1 + 8) + ~v18 + v16;
            v9 = sub_2216F5928(a1);
            v10 = *(a1 + 392);
            v8 = *(a1 + 8);
            v6 = v60;
LABEL_37:
            v7 = (a1 + 448);
            goto LABEL_14;
          }

          *(a1 + 408) = 0;
          if ((*(*a1 + 88))(a1))
          {
            *(a1 + 392) = *(a1 + 8);
            v17 = (*(a1 + 404) - 1) / 2 + 38;
            v6 = v60;
            goto LABEL_23;
          }

          v6 = v60;
          v7 = (a1 + 448);
          if (!*(a1 + 408))
          {
            (*(*a1 + 56))(a1, a1 + 48);
            v6 = v60;
          }

          break;
        case 38:
          sub_2212B8B80(a1, "");
          return 0;
        default:
          v25 = v6;
          (*(*a1 + 112))(a1, "fatal flex scanner internal error--no action found");
LABEL_41:
          v6 = v25;
          v7 = (a1 + 448);
          goto LABEL_13;
      }

      break;
    }
  }
}

double sub_2216F5734(void *a1)
{
  v2 = a1[54];
  if (v2)
  {
    v3 = a1[53];
    if (a1[52] >= (v3 - 1))
    {
      v4 = v3 + 8;
      v5 = malloc_type_realloc(v2, 8 * (v3 + 8), 0x97B204D7uLL);
      a1[54] = v5;
      if (!v5)
      {
        (*(*a1 + 112))(a1, "out of dynamic memory in yyensure_buffer_stack()");
        v5 = a1[54];
      }

      v6 = &v5[8 * a1[53]];
      result = 0.0;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *v6 = 0u;
      *(v6 + 1) = 0u;
      a1[53] = v4;
    }
  }

  else
  {
    v8 = malloc_type_malloc(8uLL, 0xAEBFE2E0uLL);
    a1[54] = v8;
    if (!v8)
    {
      (*(*a1 + 112))(a1, "out of dynamic memory in yyensure_buffer_stack()");
      v8 = a1[54];
    }

    *v8 = 0;
    result = 0.0;
    *(a1 + 26) = xmmword_2217E0F60;
  }

  return result;
}

void sub_2216F5834(void *a1, char a2)
{
  v3 = a1[75];
  v4 = a1[76];
  if (v3 >= v4)
  {
    v6 = a1[74];
    v7 = (v3 - v6);
    v8 = v3 - v6 + 1;
    if (v8 < 0)
    {
      sub_22107C148();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v3 - v6;
    *v7 = a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    a1[74] = 0;
    a1[75] = v7 + 1;
    a1[76] = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v3 = a2;
    v5 = v3 + 1;
  }

  a1[75] = v5;
}

uint64_t sub_2216F5928(uint64_t a1)
{
  v1 = *(a1 + 404);
  v2 = *(a1 + 8);
  v3 = *(a1 + 392);
  if (v2 < v3)
  {
    do
    {
      if (*v2)
      {
        v4 = byte_2218126C8[*v2];
      }

      else
      {
        v4 = 1u;
      }

      if (word_2218127C8[v1])
      {
        *(a1 + 440) = v1;
        *(a1 + 448) = v2;
      }

      v5 = v1;
      v6 = word_221818430[v1] + v4;
      if (v1 != word_221812EE6[v6])
      {
        do
        {
          v5 = word_221818C9A[v5];
          if (v5 >= 911)
          {
            v4 = *(&unk_221819504 + v4);
          }

          v6 = word_221818430[v5] + v4;
        }

        while (word_221812EE6[v6] != v5);
      }

      v1 = word_22181957A[v6];
      ++v2;
    }

    while (v2 != v3);
  }

  return v1;
}

uint64_t sub_2216F59EC(uint64_t a1, int a2)
{
  v2 = a2;
  if (word_2218127C8[a2])
  {
    v3 = *(a1 + 392);
    *(a1 + 440) = a2;
    *(a1 + 448) = v3;
  }

  v4 = word_221818430[a2] + 1;
  if (word_221812EE6[v4] != a2)
  {
    do
    {
      v5 = word_221818C9A[v2];
      v2 = v5;
      v4 = word_221818430[v5] + 1;
    }

    while (v5 != word_221812EE6[v4]);
  }

  v6 = word_22181957A[v4];
  if (v6 == 910)
  {
    LOWORD(v6) = 0;
  }

  return v6;
}

uint64_t sub_2216F5A70(void *a1)
{
  v2 = *(a1[54] + 8 * a1[52]);
  v3 = *(v2 + 8);
  v4 = a1[1];
  if (a1[49] > &v3[a1[48] + 1])
  {
    (*(*a1 + 112))(a1, "fatal flex scanner internal error--end of buffer missed");
    v2 = *(a1[54] + 8 * a1[52]);
  }

  v5 = a1[49];
  v6 = a1[1];
  if (!*(v2 + 60))
  {
    if (v5 - v6 == 1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  v7 = ~v6;
  v8 = v7 + v5;
  if (v7 + v5 >= 1)
  {
    v9 = v7 + v5;
    do
    {
      v10 = *v4++;
      *v3++ = v10;
      --v9;
    }

    while (v9);
    v2 = *(a1[54] + 8 * a1[52]);
  }

  if (*(v2 + 64) == 2)
  {
    a1[48] = 0;
    *(v2 + 32) = 0;
LABEL_28:
    if (v8)
    {
      v20 = 0;
      v11 = 2;
      *(v2 + 64) = 2;
    }

    else
    {
      (*(*a1 + 56))(a1, a1 + 6);
      v20 = a1[48];
      v2 = *(a1[54] + 8 * a1[52]);
      v11 = 1;
    }

    goto LABEL_31;
  }

  v12 = ~v8;
  v13 = *(v2 + 24);
  v14 = v13 + ~v8;
  if (!v14)
  {
    v15 = a1[49];
    while (1)
    {
      v16 = *(v2 + 8);
      if (!*(v2 + 40))
      {
        break;
      }

      v17 = 2 * v13;
      *(v2 + 24) = v17;
      v18 = malloc_type_realloc(v16, v17 + 2, 0x97B204D7uLL);
      *(v2 + 8) = v18;
      if (!v18)
      {
        goto LABEL_19;
      }

LABEL_20:
      v15 = &v18[v15 - v16];
      a1[49] = v15;
      v2 = *(a1[54] + 8 * a1[52]);
      v13 = *(v2 + 24);
      v14 = v13 + v12;
      if (v13 + v12)
      {
        goto LABEL_21;
      }
    }

    *(v2 + 8) = 0;
LABEL_19:
    (*(*a1 + 112))(a1, "fatal error - scanner input buffer overflow");
    v18 = *(v2 + 8);
    goto LABEL_20;
  }

LABEL_21:
  if (v14 >= 0x2000)
  {
    v19 = 0x2000;
  }

  else
  {
    v19 = v14;
  }

  v20 = (*(*a1 + 96))(a1, *(v2 + 8) + v8, v19);
  a1[48] = v20;
  if ((v20 & 0x80000000) != 0)
  {
    (*(*a1 + 112))(a1, "input in flex scanner failed");
    v20 = a1[48];
  }

  v2 = *(a1[54] + 8 * a1[52]);
  *(v2 + 32) = v20;
  if (!v20)
  {
    goto LABEL_28;
  }

  v11 = 0;
LABEL_31:
  v21 = v20 + v8;
  if (v21 > *(v2 + 24))
  {
    v22 = v21 + (v20 >> 1);
    v23 = malloc_type_realloc(*(v2 + 8), v22, 0x97B204D7uLL);
    v24 = a1[54];
    v25 = a1[52];
    *(*(v24 + 8 * v25) + 8) = v23;
    v2 = *(v24 + 8 * v25);
    if (!*(v2 + 8))
    {
      (*(*a1 + 112))(a1, "out of dynamic memory in yy_get_next_buffer()");
      v2 = *(a1[54] + 8 * a1[52]);
    }

    *(v2 + 24) = v22 - 2;
    v21 = a1[48] + v8;
  }

  a1[48] = v21;
  *(*(v2 + 8) + v21) = 0;
  *(*(*(a1[54] + 8 * a1[52]) + 8) + a1[48] + 1) = 0;
  a1[1] = *(*(a1[54] + 8 * a1[52]) + 8);
  return v11;
}

void sub_2216F5DE4(void *a1, uint64_t a2, void *a3)
{
  v6 = a1[54];
  if (v6)
  {
    v7 = *(v6 + 8 * a1[52]);
  }

  else
  {
    v7 = 0;
  }

  (*(*a1 + 40))(a1, v7);
  v8 = (*(*a1 + 32))(a1, a2, 0x4000);
  (*(*a1 + 16))(a1, v8);
  v9 = (a1 + *(a1[27] - 24) + 216);
  v9->__rdbuf_ = *(a3 + *(*a3 - 24) + 40);

  std::ios_base::clear(v9, 0);
}

uint64_t sub_2216F5F38(uint64_t a1)
{
  v1 = (a1 + 48);
  if ((*(a1 + 48 + *(*(a1 + 48) - 24) + 32) & 7) != 0)
  {
    return 0;
  }

  std::istream::read();
  if (*(v1 + *(*v1 - 24) + 32))
  {
    return -1;
  }

  else
  {
    return *(a1 + 56);
  }
}

void sub_2216F5FC4(void *a1, void *a2)
{
  v4 = a1[54];
  if (v4 && (v5 = a1[52], *(v4 + 8 * v5)) || (v6 = sub_2216F5734(a1), v7 = (*(*a1 + 32))(a1, a1 + 6, 0x4000, v6), v5 = a1[52], *(a1[54] + 8 * v5) = v7, (v4 = a1[54]) != 0))
  {
    v8 = *(v4 + 8 * v5);
  }

  else
  {
    v8 = 0;
  }

  sub_2216F24B4(a1, v8, a2);

  sub_2216F1A48(a1);
}

void sub_2216F60A4(uint64_t a1, uint64_t a2)
{
  sub_2216F5734(a1);
  v4 = *(a1 + 432);
  if (v4)
  {
    v5 = *(a1 + 416);
    v6 = *(v4 + 8 * v5);
    if (v6 != a2)
    {
      if (v6)
      {
        **(a1 + 392) = *(a1 + 376);
        v4 = *(a1 + 432);
        v5 = *(a1 + 416);
        v7 = *(a1 + 384);
        *(*(v4 + 8 * v5) + 16) = *(a1 + 392);
        *(*(v4 + 8 * v5) + 32) = v7;
      }

      *(v4 + 8 * v5) = a2;
      sub_2216F1A48(a1);
      *(a1 + 408) = 1;
    }
  }
}

_DWORD *sub_2216F6124(void *a1, void *a2, int a3)
{
  v6 = malloc_type_malloc(0x48uLL, 0xAEBFE2E0uLL);
  if (!v6)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[6] = a3;
  v7 = malloc_type_malloc(a3 + 2, 0xAEBFE2E0uLL);
  *(v6 + 1) = v7;
  if (!v7)
  {
    (*(*a1 + 112))(a1, "out of dynamic memory in yy_create_buffer()");
  }

  v6[10] = 1;
  sub_2216F24B4(a1, v6, a2);
  return v6;
}

void sub_2216F622C(uint64_t a1, void **a2)
{
  if (a2)
  {
    v3 = *(a1 + 432);
    if (v3)
    {
      v4 = *(v3 + 8 * *(a1 + 416));
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a2)
    {
      *(v3 + 8 * *(a1 + 416)) = 0;
    }

    if (*(a2 + 10))
    {
      free(a2[1]);
    }

    free(a2);
  }
}

void sub_2216F62A0(uint64_t a1, char *a2)
{
  v2 = sub_2216F27EC(MEMORY[0x277D82670], a2);
  sub_2216F2834(v2);
  exit(2);
}

uint64_t sub_2216F62C4(void *a1)
{
  *a1 = &unk_2834BAD10;
  v2 = a1[74];
  if (v2)
  {
    a1[75] = v2;
    operator delete(v2);
  }

  return sub_2212B87E0(a1);
}

void sub_2216F6324(void *a1)
{
  *a1 = &unk_2834BAD10;
  v2 = a1[74];
  if (v2)
  {
    a1[75] = v2;
    operator delete(v2);
  }

  sub_2212B87E0(a1);

  JUMPOUT(0x223DA1450);
}

id TSCECalculationEngine.owner(for:)()
{
  v20 = *MEMORY[0x277D85DE8];
  v11 = sub_22170BB04();
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v9 = [v0 ownerForUUIDBytes_];

  return v9;
}

uint64_t sub_2216F6A80(uint64_t a1, const char *a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2 != 0x7FFF && v5 > a2;
  if (!v6 || (v7 = *(*(a1 + 24) + 2 * a2), v7 == 0xFFFF))
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else if (*(a1 + 34))
  {
    v8 = 4 * v7;
  }

  else
  {
    v8 = *(*(a1 + 24) + 2 * a2);
  }

  if (a2 == a3)
  {
    v9 = *(a1 + 8);
  }

  else
  {
    v10 = a2 + 1;
    if (a3 < (a2 + 1))
    {
LABEL_18:
      objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "NSUInteger _storageSizeInBuffer(TSTTableTileRowBuffer *, TSUColumnIndex, TSUColumnIndex)", a4);
      objc_claimAutoreleasedReturnValue();
      v12 = sub_22113CA24();
      v15 = objc_msgSend_stringWithUTF8String_(v12, v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTTableTileRowInfo.mm", v14);
      v16 = sub_22113CA04();
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v17, v18, v19, 440, 0);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v20, v21, v22);
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      while (1)
      {
        if (v10 != 0x7FFF && v5 > v10)
        {
          v11 = *(*(a1 + 24) + 2 * v10);
          if (v11 != 0xFFFF)
          {
            break;
          }
        }

        if (a3 < ++v10)
        {
          goto LABEL_18;
        }
      }

      if (*(a1 + 34))
      {
        v9 = 4 * v11;
      }

      else
      {
        v9 = *(*(a1 + 24) + 2 * v10);
      }
    }
  }

  return v9 - v8;
}

uint64_t sub_2216F6BD8(uint64_t result, unint64_t *a2)
{
  v2 = 0;
  v3 = 0;
  do
  {
    if (v2 < *(result + 80))
    {
      v4 = *(result + 72);
      if (*(v4 + 2 * v2) != -1 && ++v3 > *a2)
      {
        *(v4 + 2 * v2) = -1;
      }
    }

    ++v2;
  }

  while (v2 != 255);
  if (v3 < *a2)
  {
    *a2 = v3;
  }

  return result;
}

unsigned __int16 *sub_2216F6C34(unsigned __int16 *result, const char *a2, unsigned int a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  do
  {
    if (v5 != 0x7FFF && v6[20] > v5 && *(*(v6 + 4) + 2 * v5) != -1)
    {
      result = objc_msgSend__removeCellAtIndex_(v6, a2, v5, a4);
    }

    ++v5;
  }

  while (a3 > v5);
  return result;
}

id *sub_2216F6D84(id *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return objc_msgSend_count(result[8], a2, a3, a4);
  }

  return result;
}

id *sub_2216F6D9C(id *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result = objc_msgSend_minKey(result[8], a2, a3, a4);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

id *sub_2216F6DD4(id *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    result = objc_msgSend_maxKey(result[8], a2, a3, a4);
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0;
    }

    else
    {
      return result;
    }
  }

  return result;
}

double sub_2216F6E0C(uint64_t a1)
{
  if (!a1)
  {
    return 0.0;
  }

  v1 = sub_2211AE5A4(a1, 64);
  v5 = objc_msgSend_objectForKey_(v1, v2, v3, v4);
  if (!v5)
  {
    return 0.0;
  }

  return sub_2216F7E7C(v5);
}

uint64_t sub_2216F6E58(uint64_t result, unsigned int a2, double a3)
{
  if (result)
  {
    v8 = sub_2211AE5B0(result);
    result = objc_msgSend_objectForKey_(v8, v9, v10, v11);
    v15 = result;
    if (!result)
    {
      if (a3 == 0.0)
      {
        return result;
      }

      v15 = sub_2211ACAD8(v3, a2);
    }

    objc_msgSend_willModify(v3, v12, v13, v14);
    sub_2216F7E90(v15, a3);
    result = sub_2216F7C84(v15);
    if ((result & 1) == 0)
    {
      v18 = *&v3[*(v5 + 2568)];

      return objc_msgSend_removeObjectForKey_(v18, v16, v4, v17);
    }
  }

  return result;
}

uint64_t sub_2216F6F28(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = sub_2211AE5A4(a1, 64);
  v5 = objc_msgSend_objectForKey_(v1, v2, v3, v4);
  if (!v5)
  {
    return 0;
  }

  return sub_2216F7E9C(v5);
}

uint64_t sub_2216F6F74(uint64_t result, const char *a2, unsigned int a3, uint64_t a4)
{
  if (result)
  {
    v5 = a2;
    v6 = result;
    v7 = a3;
    result = objc_msgSend_objectForKey_(*(result + 64), a2, a3, a4);
    v11 = result;
    if (!result)
    {
      if (!v5)
      {
        return result;
      }

      v11 = sub_2211ACAD8(v6, a3);
    }

    objc_msgSend_willModify(v6, v8, v9, v10);
    sub_2216F7EA8(v11, v5);
    result = sub_2216F7C84(v11);
    if ((result & 1) == 0)
    {
      v14 = v6[8];

      return objc_msgSend_removeObjectForKey_(v14, v12, v7, v13);
    }
  }

  return result;
}

void *sub_2216F7044(void *a1)
{
  if (a1)
  {
    if (a1[9])
    {
      v2 = sub_2211AE5A4(a1, 64);
      a1 = objc_msgSend_objectForKey_(v2, v3, v4, v5);
      if (a1)
      {
        a1 = sub_2216F7E44(a1);
      }

      return a1;
    }

    a1 = 0;
  }

  return a1;
}

TSTColumnRowMetadata *sub_2216F70B4(TSTColumnRowMetadata *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v9 = sub_2211AE5A4(a1, 64);
    a1 = objc_msgSend_objectForKey_(v9, v10, v11, v12);
    if (a1)
    {
      a1 = sub_2216F7CE8(a1, a3, a4, a5);
    }

    v5 = vars8;
  }

  return a1;
}

uint64_t sub_2216F7128(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 72) || (v6 = sub_2211AE5A4(a1, 64), objc_msgSend_objectForKey_(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    return 0;
  }

  return sub_2216F7D54(v10);
}

uint64_t sub_2216F71C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 72) || (v6 = sub_2211AE5A4(a1, 64), objc_msgSend_objectForKey_(v6, v7, v8, v9), v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
      *a4 = 0;
    }

    return 0;
  }

  return sub_2216F7DBC(v10);
}

id sub_2216F7268(id result)
{
  if (result)
  {
    v1 = sub_2211AE5A4(result, 64);
    result = objc_msgSend_objectForKey_(v1, v2, v3, v4);
    if (result)
    {
      return sub_2216F7EB4(result);
    }
  }

  return result;
}

id sub_2216F72A8(id result, unsigned int a2, uint64_t a3)
{
  if (result)
  {
    v5 = result;
    v6 = sub_2211AE5A4(result, 64);
    result = objc_msgSend_objectForKey_(v6, v7, v8, v9);
    v13 = result;
    if (!result)
    {
      if (!a3)
      {
        return result;
      }

      v13 = sub_2211ACAD8(v5, a2);
    }

    objc_msgSend_willModify(v5, v10, v11, v12);
    v14 = sub_2216F7EB4(v13) + a3;

    return sub_2216F7EC0(v13, v14);
  }

  return result;
}

uint64_t sub_2216F7350(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v7 = sub_2211AE5B0(result);
    result = objc_msgSend_objectForKey_(v7, v8, v9, v10);
    if (result)
    {
      v14 = result;
      objc_msgSend_willModify(v3, v11, v12, v13);
      v15 = sub_2216F7EB4(v14);
      if (v15 >= a3)
      {
        sub_2216F7EC0(v14, v15 - a3);
      }

      result = sub_2216F7C84(v14);
      if ((result & 1) == 0)
      {
        v18 = *&v3[*(v5 + 2568)];

        return objc_msgSend_removeObjectForKey_(v18, v16, v4, v17);
      }
    }
  }

  return result;
}

id *sub_2216F73F8(id *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    return objc_msgSend_foreach_(result[8], a2, &unk_2834A2AB0, a4);
  }

  return result;
}

void *sub_2216F7418(void *result, const char *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v4 = result;
    objc_msgSend_willModify(result, a2, a3, a4);
    v4[9] = 0;
    v8 = v4[8];

    return objc_msgSend_clear(v8, v5, v6, v7);
  }

  return result;
}

uint64_t sub_2216F746C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    *(result + 80) = a2;
    *(result + 88) = a3;
  }

  return result;
}

uint64_t sub_2216F754C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v5 = result;
    if (!objc_msgSend_valueIsEmptyWithContext_(a2, a2, a3, a4))
    {
      return 0;
    }

    v9 = objc_msgSend_nativeType(a2, v6, v7, v8);
    v13 = objc_msgSend_argumentType(v5, v10, v11, v12);
    if (v9 == 6)
    {
      if (v13 == 6 || v13 == 255 || objc_msgSend_referenceForGeometryOnly(v5, v14, v15, v16))
      {
        return 0;
      }
    }

    else
    {
      objc_msgSend_referenceForGeometryOnly(v5, v14, v15, v16);
    }

    return 1;
  }

  return result;
}

void sub_2216F764C(void *a1)
{
  if (__cxa_guard_acquire(byte_27CFB53D8))
  {
    qword_27CFB53E8 = 0;
    unk_27CFB53F0 = 0;
    qword_27CFB53E0 = 0x7FFF7FFFFFFFLL;
    byte_27CFB53F8 &= 0xF0u;
    __cxa_guard_release(byte_27CFB53D8);
  }

  *a1 = &qword_27CFB53E0;
}

TSTIndexingChunk *sub_2216F7AC8(TSKUIDStruct *a1)
{
  v2 = [TSTIndexingChunk alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = TSTIndexingChunk;
    v2 = [(TSKUIDStruct *)&v4 init];
    if (v2)
    {
      v2->_tableUID = a1[2];
    }
  }

  return v2;
}

TSTIndexingChunk *sub_2216F7B38(TSKUIDStruct *a1)
{
  v2 = [TSTIndexingChunk alloc];
  if (v2)
  {
    v4.receiver = v2;
    v4.super_class = TSTIndexingChunk;
    v2 = [(TSKUIDStruct *)&v4 init];
    if (v2)
    {
      v2->_tableUID = a1[2];
    }
  }

  return v2;
}

BOOL sub_2216F7C84(_BOOL8 result)
{
  if (result)
  {
    return *(result + 32) != 0.0 || *(result + 12) || *(result + 16) || *(result + 24) || *(result + 8) != 0;
  }

  return result;
}

BOOL sub_2216F7CC4(_BOOL8 result)
{
  if (result)
  {
    return *(result + 16) || *(result + 24) != 0;
  }

  return result;
}

TSTColumnRowMetadata *sub_2216F7CE8(TSTColumnRowMetadata *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v8 = a1;
    v9 = [TSTColumnRowMetadata alloc];
    a1 = objc_msgSend_initWithSize_hidingAction_cellStyle_textStyle_columnRowUID_(v9, v10, a2, v8->_columnRowUID.var0.var0._upper, *&v8->_size, a3, a4, *&v8->_hidingAction);
    v4 = vars8;
  }

  return a1;
}

uint64_t sub_2216F7D54(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_221480668();
  if (v5)
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      *v4 = v6;
      v2 = 1;
    }
  }

  if (v1)
  {
    v7 = *(v3 + 24);
    if (v7)
    {
      v2 |= 2uLL;
      *v1 = v7;
    }
  }

  return v2;
}

uint64_t sub_2216F7DBC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  sub_221480668();
  if (v5)
  {
    v7 = *(v3 + 16);
    if (v7)
    {
      *v4 = objc_msgSend_handleForCellStyle_(TSTCellStyleHandle, v5, v7, v6);
      v2 = 1;
    }
  }

  if (v1)
  {
    v8 = *(v3 + 24);
    if (v8)
    {
      v2 |= 2uLL;
      *v1 = objc_msgSend_handleForTextStyle_(TSTTextStyleHandle, v5, v8, v6);
    }
  }

  return v2;
}

uint64_t sub_2216F7E44(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void sub_2216F7E50(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 16), a2);
  }
}

uint64_t sub_2216F7E60(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

void sub_2216F7E6C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 24), a2);
  }
}

double sub_2216F7E7C(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  else
  {
    return 0.0;
  }
}

uint64_t sub_2216F7E90(uint64_t result, double a2)
{
  if (result)
  {
    *(result + 32) = a2;
  }

  return result;
}

uint64_t sub_2216F7E9C(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

uint64_t sub_2216F7EA8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_2216F7EB4(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_2216F7EC0(uint64_t result, int a2)
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

uint64_t sub_2216F7EF4(uint64_t a1, uint64_t (***a2)(void))
{
  v3 = a1 - 96;
  v4 = (a1 - 96);
  v5 = (a1 - 96);
  do
  {
    v6 = *v5;
    v5 -= 12;
    result = (*v6)(v4);
    v3 -= 96;
    v8 = v4 == a2;
    v4 = v5;
  }

  while (!v8);
  return result;
}

char *sub_2216F7F9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::CFUUIDArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F806C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellCoordinateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2216F813C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUID::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F820C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangeCoordinateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F82DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::IndexSetArchive_IndexSetEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F83AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::IndexSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F847C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellCoordSetArchive_ColumnEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F854C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellCoordSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F861C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::InternalCellRefSetArchive_OwnerEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F86EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ColumnRowSize::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F87BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellRefSetArchive_OwnerEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F888C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UidCoordSetArchive_ColumnEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F895C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UidCoordSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8A2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UidCellRefSetArchive_OwnerEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8AFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::InternalCellRefSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8BCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::InternalRangeReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8C9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CoordMapperArchive_BaseToViewEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8D6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CoordMapperArchive_SummaryToViewEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8E3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8F0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangeReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F8FDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::EdgeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F90AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::EdgesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F917C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellRecordArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F924C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ExpandedEdgesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F931C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellRecordExpandedArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F93EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RTreeNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F94BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RTreeInternalNodeContentsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F958C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RTreeLeafNodeContentsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F965C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangeBackDependencyArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F972C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellRectArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F97FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangePrecedentsTileArchive_FromToRangeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F98CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::InternalCellReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F999C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesArchive_ReferringColumnToLocalCells::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9A6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesArchive_ReferringColumnToRemoteCells::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9B3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesExpandedArchive_ExtentRange::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9C0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesExpandedArchive_ExtentRangeWithTableWithContext::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9CDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesExpandedArchive_CellCoordRefersToExtents::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9DAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ErrorArchive_ErrorDictionaryEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9E7C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::WarningArchive_WarningDictionaryEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216F9F4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ErrorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA01C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::WarningArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA0EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellErrorsArchive_ErrorForCell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA1BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellErrorsArchive_EnhancedErrorForCell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA28C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellSpillSizesArchive_SpillForCell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA35C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferencesArchive_UuidRef::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA42C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferencesArchive_TableRef::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA4FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferencesArchive_TableWithUuidRef::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA5CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellDependenciesExpandedArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA69C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangeDependenciesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA76C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::VolatileDependenciesExpandedArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA83C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesExpandedArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA90C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::WholeOwnerDependenciesExpandedArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FA9DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellErrorsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAAAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellDependenciesTiledArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAB7C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferencesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAC4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RangeDependenciesTiledArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAD1C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellSpillSizesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FADEC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellDependenciesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAEBC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::VolatileDependenciesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FAF8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpanningDependenciesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB05C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::WholeOwnerDependenciesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB12C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::OwnerIDMapArchive_OwnerIDMapArchiveEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB1FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FormulaOwnerInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB2CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::OwnerIDMapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB39C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RemoteDataSpecifierArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB46C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB53C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RemoteDataValueMapArchive_RemoteDataMapEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB60C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::StockArchive_AttributeEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB6DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RemoteDataValueMapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB7AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::StockArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB87C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::NameTrackedReferencePair::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FB94C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::NamesByTrackedReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBA1C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidSetStoreArchive_UuidSet::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBAEC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferenceMapArchive_CellRefsForUuid::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBBBC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::GroupByNodeMapArchive_CellRefsForGroupNode::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBC8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::GroupByNodeMapArchive_GroupNodesForGroupBy::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBD5C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::DependencyTrackerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBE2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UuidReferenceMapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBEFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RewriteTableUIDInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FBFCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::GroupByNodeMapArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC09C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CategoryReferenceArchive_CatRefUidList::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC16C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::PreserveColumnRowFlagsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC23C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTUidList::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC30C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTUidTract::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC3DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTStickyBits::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC4AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CategoryReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC57C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractRelativeRangeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FC64C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTColonTractArchive_ASTColonTractAbsoluteRangeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void TSCE::ASTNodeArrayArchive_ASTNodeArchive::_InternalParse(uint64_t a1, google::protobuf::internal *a2, uint64_t a3)
{
  v197 = a2;
  v5 = sub_221567030(a3, &v197, *(a3 + 92));
  v6 = v197;
  if ((v5 & 1) == 0)
  {
    while (2)
    {
      v7 = (v6 + 1);
      LODWORD(v8) = *v6;
      if (*v6 < 0)
      {
        v8 = (v8 + (*v7 << 7) - 128);
        if (*v7 < 0)
        {
          TagFallback = google::protobuf::internal::ReadTagFallback(v6, v8);
          v197 = TagFallback;
          if (!TagFallback)
          {
            return;
          }

          v7 = TagFallback;
          goto LABEL_7;
        }

        v7 = (v6 + 2);
      }

      v197 = v7;
LABEL_7:
      switch(v8 >> 3)
      {
        case 1u:
          if (v8 != 8)
          {
            goto LABEL_236;
          }

          v9 = (v7 + 1);
          v10 = *v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_12;
          }

          sub_221572E30();
          if (v12 < 0)
          {
            v197 = google::protobuf::internal::VarintParseSlow64(v11, v10);
            if (!v197)
            {
              return;
            }

            v10 = v186;
          }

          else
          {
            v9 = (v11 + 2);
LABEL_12:
            v197 = v9;
          }

          if (TSCE::ASTNodeArrayArchive_ASTNodeType_IsValid(v10))
          {
            *(a1 + 20) |= 0x800u;
            *(a1 + 288) = v10;
            goto LABEL_222;
          }

          v195 = *(a1 + 8);
          if ((v195 & 1) == 0)
          {
            goto LABEL_292;
          }

          goto LABEL_290;
        case 2u:
          if (v8 != 16)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x100000u;
          sub_221572D50();
          if ((v80 & 0x80000000) == 0)
          {
            goto LABEL_110;
          }

          sub_221572D2C();
          if (v82 < 0)
          {
            v174 = google::protobuf::internal::VarintParseSlow32(v81, v78);
            v197 = v174;
            *(a1 + 192) = v175;
            if (!v174)
            {
              return;
            }
          }

          else
          {
            v79 = (v81 + 2);
LABEL_110:
            v197 = v79;
            *(a1 + 192) = v78;
          }

          goto LABEL_222;
        case 3u:
          if (v8 != 24)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x200000u;
          sub_221572D50();
          if ((v115 & 0x80000000) == 0)
          {
            goto LABEL_158;
          }

          sub_221572D2C();
          if (v117 < 0)
          {
            v187 = google::protobuf::internal::VarintParseSlow32(v116, v113);
            v197 = v187;
            *(a1 + 196) = v188;
            if (!v187)
            {
              return;
            }
          }

          else
          {
            v114 = (v116 + 2);
LABEL_158:
            v197 = v114;
            *(a1 + 196) = v113;
          }

          goto LABEL_222;
        case 4u:
          if (v8 != 33)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x400000u;
          v77 = *v7;
          v76 = (v7 + 8);
          *(a1 + 200) = v77;
          goto LABEL_192;
        case 5u:
          if (v8 != 40)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x40000000u;
          if ((*v7 & 0x8000000000000000) != 0 && (sub_221572D14(), v103 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v102, v101);
            sub_221572D80();
            *(a1 + 244) = v182;
            if (!v183)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 244) = v104;
          }

          goto LABEL_222;
        case 6u:
          if (v8 != 50)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 1);
          if (v112)
          {
            sub_221572E04();
          }

          goto LABEL_220;
        case 7u:
          if (v8 != 57)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x800000u;
          v126 = *v7;
          v76 = (v7 + 8);
          *(a1 + 208) = v126;
          goto LABEL_192;
        case 8u:
          if (v8 != 65)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x1000000u;
          v127 = *v7;
          v76 = (v7 + 8);
          *(a1 + 216) = v127;
LABEL_192:
          v197 = v76;
          goto LABEL_222;
        case 9u:
          if (v8 != 72)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x2000000u;
          v54 = (v7 + 1);
          LODWORD(v53) = *v7;
          if ((v53 & 0x80) == 0)
          {
            goto LABEL_84;
          }

          sub_221572D2C();
          if (v56 < 0)
          {
            v164 = google::protobuf::internal::VarintParseSlow64(v55, v53);
            v197 = v164;
            *(a1 + 224) = v165;
            if (!v164)
            {
              return;
            }
          }

          else
          {
            v54 = (v55 + 2);
LABEL_84:
            v197 = v54;
            *(a1 + 224) = v53;
          }

          goto LABEL_222;
        case 0xAu:
          if (v8 != 80)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 0x10);
          if (v128 < 0 && (sub_221572D14(), v131 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v130, v129);
            sub_221572D80();
            *(a1 + 256) = v189;
            if (!v190)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 256) = v132;
          }

          goto LABEL_222;
        case 0xBu:
          if (v8 != 88)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x4000000u;
          sub_221572D50();
          if ((v68 & 0x80000000) == 0)
          {
            goto LABEL_99;
          }

          sub_221572D2C();
          if (v70 < 0)
          {
            v170 = google::protobuf::internal::VarintParseSlow32(v69, v66);
            v197 = v170;
            *(a1 + 228) = v171;
            if (!v170)
            {
              return;
            }
          }

          else
          {
            v67 = (v69 + 2);
LABEL_99:
            v197 = v67;
            *(a1 + 228) = v66;
          }

          goto LABEL_222;
        case 0xCu:
          if (v8 != 96)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x8000000u;
          sub_221572D50();
          if ((v107 & 0x80000000) == 0)
          {
            goto LABEL_143;
          }

          sub_221572D2C();
          if (v109 < 0)
          {
            v184 = google::protobuf::internal::VarintParseSlow32(v108, v105);
            v197 = v184;
            *(a1 + 232) = v185;
            if (!v184)
            {
              return;
            }
          }

          else
          {
            v106 = (v108 + 2);
LABEL_143:
            v197 = v106;
            *(a1 + 232) = v105;
          }

          goto LABEL_222;
        case 0xDu:
          if (v8 != 104)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x10000000u;
          sub_221572D50();
          if ((v93 & 0x80000000) == 0)
          {
            goto LABEL_130;
          }

          sub_221572D2C();
          if (v95 < 0)
          {
            v178 = google::protobuf::internal::VarintParseSlow32(v94, v91);
            v197 = v178;
            *(a1 + 236) = v179;
            if (!v178)
            {
              return;
            }
          }

          else
          {
            v92 = (v94 + 2);
LABEL_130:
            v197 = v92;
            *(a1 + 236) = v91;
          }

          goto LABEL_222;
        case 0xEu:
          if (v8 != 114)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x40u;
          v49 = *(a1 + 80);
          if (!v49)
          {
            v50 = *(a1 + 8);
            if (v50)
            {
              v50 = sub_221572DB0(v50);
            }

            v49 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive>(v50, v49);
            *(a1 + 80) = v49;
            v7 = v197;
          }

          v28 = sub_2216FD54C(a3, v49, v7);
          goto LABEL_221;
        case 0xFu:
          if (v8 != 122)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x80u;
          v122 = *(a1 + 88);
          if (!v122)
          {
            v123 = *(a1 + 8);
            if (v123)
            {
              v123 = sub_221572DB0(v123);
            }

            v122 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive>(v123);
            *(a1 + 88) = v122;
            v7 = v197;
          }

          v28 = sub_2216FD61C(a3, v122, v7);
          goto LABEL_221;
        case 0x10u:
          if (v8 != 130)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x100u;
          v124 = *(a1 + 96);
          if (!v124)
          {
            v125 = *(a1 + 8);
            if (v125)
            {
              v125 = sub_221572DB0(v125);
            }

            v124 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive>(v125);
            *(a1 + 96) = v124;
            v7 = v197;
          }

          v28 = sub_2216FD6EC(a3, v124, v7);
          goto LABEL_221;
        case 0x11u:
          if (v8 != 138)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 2);
          if (v143)
          {
            sub_221572E04();
          }

          goto LABEL_220;
        case 0x12u:
          if (v8 != 144)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x20000000u;
          sub_221572D50();
          if ((v140 & 0x80000000) == 0)
          {
            goto LABEL_206;
          }

          sub_221572D2C();
          if (v142 < 0)
          {
            v193 = google::protobuf::internal::VarintParseSlow32(v141, v138);
            v197 = v193;
            *(a1 + 240) = v194;
            if (!v193)
            {
              return;
            }
          }

          else
          {
            v139 = (v141 + 2);
LABEL_206:
            v197 = v139;
            *(a1 + 240) = v138;
          }

          goto LABEL_222;
        case 0x13u:
          if (v8 != 152)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x80000000;
          if ((*v7 & 0x8000000000000000) != 0 && (sub_221572D14(), v37 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v36, v35);
            sub_221572D80();
            *(a1 + 245) = v158;
            if (!v159)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 245) = v38;
          }

          goto LABEL_222;
        case 0x14u:
          if (v8 != 160)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 1);
          if (v96 < 0 && (sub_221572D14(), v99 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v98, v97);
            sub_221572D80();
            *(a1 + 246) = v180;
            if (!v181)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 246) = v100;
          }

          goto LABEL_222;
        case 0x15u:
          if (v8 != 170)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 4);
          if (v146)
          {
            sub_221572E04();
          }

          goto LABEL_220;
        case 0x16u:
          if (v8 != 176)
          {
            goto LABEL_236;
          }

          *(a1 + 20) |= 4u;
          sub_221572D50();
          if ((v46 & 0x80000000) == 0)
          {
            goto LABEL_67;
          }

          sub_221572D2C();
          if (v48 < 0)
          {
            v162 = google::protobuf::internal::VarintParseSlow32(v47, v44);
            v197 = v162;
            *(a1 + 248) = v163;
            if (!v162)
            {
              return;
            }
          }

          else
          {
            v45 = (v47 + 2);
LABEL_67:
            v197 = v45;
            *(a1 + 248) = v44;
          }

          goto LABEL_222;
        case 0x17u:
          if (v8 != 184)
          {
            goto LABEL_236;
          }

          *(a1 + 20) |= 8u;
          sub_221572D50();
          if ((v88 & 0x80000000) == 0)
          {
            goto LABEL_125;
          }

          sub_221572D2C();
          if (v90 < 0)
          {
            v176 = google::protobuf::internal::VarintParseSlow32(v89, v86);
            v197 = v176;
            *(a1 + 252) = v177;
            if (!v176)
            {
              return;
            }
          }

          else
          {
            v87 = (v89 + 2);
LABEL_125:
            v197 = v87;
            *(a1 + 252) = v86;
          }

          goto LABEL_222;
        case 0x18u:
          if (v8 != 192)
          {
            goto LABEL_236;
          }

          *(a1 + 20) |= 0x40u;
          sub_221572D50();
          if ((v59 & 0x80000000) == 0)
          {
            goto LABEL_89;
          }

          sub_221572D2C();
          if (v61 < 0)
          {
            v166 = google::protobuf::internal::VarintParseSlow32(v60, v57);
            v197 = v166;
            *(a1 + 260) = v167;
            if (!v166)
            {
              return;
            }
          }

          else
          {
            v58 = (v60 + 2);
LABEL_89:
            v197 = v58;
            *(a1 + 260) = v57;
          }

          goto LABEL_222;
        case 0x19u:
          if (v8 != 202)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 8);
          if (v118)
          {
            sub_221572E04();
          }

          goto LABEL_220;
        case 0x1Au:
          if (v8 != 210)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x200u;
          v51 = *(a1 + 104);
          if (!v51)
          {
            v52 = *(a1 + 8);
            if (v52)
            {
              v52 = sub_221572DB0(v52);
            }

            v51 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive>(v52);
            *(a1 + 104) = v51;
            v7 = v197;
          }

          v28 = sub_2216FD7BC(a3, v51, v7);
          goto LABEL_221;
        case 0x1Bu:
          if (v8 != 218)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x400u;
          v29 = *(a1 + 112);
          if (!v29)
          {
            v30 = *(a1 + 8);
            if (v30)
            {
              v30 = sub_221572DB0(v30);
            }

            v29 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive>(v30);
            *(a1 + 112) = v29;
            v7 = v197;
          }

          v28 = sub_2216FD88C(a3, v29, v7);
          goto LABEL_221;
        case 0x1Cu:
          if (v8 != 226)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x800u;
          v148 = *(a1 + 120);
          if (!v148)
          {
            v149 = *(a1 + 8);
            if (v149)
            {
              v149 = sub_221572DB0(v149);
            }

            v148 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive>(v149);
            *(a1 + 120) = v148;
            v7 = v197;
          }

          v28 = sub_2216FD95C(a3, v148, v7);
          goto LABEL_221;
        case 0x1Du:
          if (v8 != 232)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 2);
          if (v71 < 0 && (sub_221572D14(), v74 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v73, v72);
            sub_221572D80();
            *(a1 + 247) = v172;
            if (!v173)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 247) = v75;
          }

          goto LABEL_222;
        case 0x1Eu:
          if (v8 != 242)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x1000u;
          v83 = *(a1 + 128);
          if (!v83)
          {
            v84 = *(a1 + 8);
            if (v84)
            {
              v84 = sub_221572DB0(v84);
            }

            v83 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive>(v84);
            *(a1 + 128) = v83;
            v7 = v197;
          }

          v28 = sub_2216FDA2C(a3, v83, v7);
          goto LABEL_221;
        case 0x21u:
          if (v8 != 10)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x2000u;
          v24 = *(a1 + 136);
          if (v24)
          {
            goto LABEL_175;
          }

          v121 = *(a1 + 8);
          if (v121)
          {
            v121 = sub_221572DB0(v121);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v121);
          *(a1 + 136) = v24;
          goto LABEL_174;
        case 0x22u:
          if (v8 != 18)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 0x10);
          if (v85)
          {
            sub_221572E04();
          }

          goto LABEL_220;
        case 0x23u:
          if (v8 != 26)
          {
            goto LABEL_236;
          }

          sub_221572E10(*(a1 + 16) | 0x20);
          if (v19)
          {
            sub_221572E04();
          }

LABEL_220:
          google::protobuf::internal::ArenaStringPtr::Mutable();
          v28 = google::protobuf::internal::InlineGreedyStringParser();
          goto LABEL_221;
        case 0x24u:
          if (v8 != 32)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 0x20);
          if (v39 < 0 && (sub_221572D14(), v42 < 0))
          {
            google::protobuf::internal::VarintParseSlow64(v41, v40);
            sub_221572D80();
            *(a1 + 257) = v160;
            if (!v161)
            {
              return;
            }
          }

          else
          {
            sub_221572DA0();
            *(a1 + 257) = v43;
          }

          goto LABEL_222;
        case 0x25u:
          if (v8 != 40)
          {
            goto LABEL_236;
          }

          *(a1 + 20) |= 0x80u;
          sub_221572D50();
          if ((v135 & 0x80000000) == 0)
          {
            goto LABEL_201;
          }

          sub_221572D2C();
          if (v137 < 0)
          {
            v191 = google::protobuf::internal::VarintParseSlow32(v136, v133);
            v197 = v191;
            *(a1 + 264) = v192;
            if (!v191)
            {
              return;
            }
          }

          else
          {
            v134 = (v136 + 2);
LABEL_201:
            v197 = v134;
            *(a1 + 264) = v133;
          }

          goto LABEL_222;
        case 0x26u:
          if (v8 != 50)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x4000u;
          v150 = *(a1 + 144);
          if (!v150)
          {
            v151 = *(a1 + 8);
            if (v151)
            {
              v151 = sub_221572DB0(v151);
            }

            v150 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTUidTractList>(v151);
            *(a1 + 144) = v150;
            v7 = v197;
          }

          v28 = sub_2216FDAFC(a3, v150, v7);
          goto LABEL_221;
        case 0x27u:
          if (v8 != 58)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x8000u;
          v26 = *(a1 + 152);
          if (!v26)
          {
            v27 = *(a1 + 8);
            if (v27)
            {
              v27 = sub_221572DB0(v27);
            }

            v26 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive>(v27);
            *(a1 + 152) = v26;
            v7 = v197;
          }

          v28 = sub_2216FDBCC(a3, v26, v7);
          goto LABEL_221;
        case 0x28u:
          if (v8 != 66)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x10000u;
          v119 = *(a1 + 160);
          if (!v119)
          {
            v120 = *(a1 + 8);
            if (v120)
            {
              v120 = sub_221572DB0(v120);
            }

            v119 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTColonTractArchive>(v120);
            *(a1 + 160) = v119;
            v7 = v197;
          }

          v28 = sub_2216FDC9C(a3, v119, v7);
          goto LABEL_221;
        case 0x29u:
          if (v8 != 74)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x20000u;
          v24 = *(a1 + 168);
          if (v24)
          {
            goto LABEL_175;
          }

          v25 = *(a1 + 8);
          if (v25)
          {
            v25 = sub_221572DB0(v25);
          }

          v24 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTStickyBits>(v25);
          *(a1 + 168) = v24;
LABEL_174:
          v7 = v197;
LABEL_175:
          v28 = sub_2216FC3DC(a3, v24, v7);
          goto LABEL_221;
        case 0x2Au:
          if (v8 != 80)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 0x200);
          if ((v20 & 0x8000000000000000) == 0)
          {
            goto LABEL_30;
          }

          sub_221572D14();
          if (v23 < 0)
          {
            v155 = google::protobuf::internal::VarintParseSlow64(v22, v20);
            v197 = v155;
            *(a1 + 272) = v156;
            if (!v155)
            {
              return;
            }
          }

          else
          {
            v21 = (v22 + 2);
LABEL_30:
            v197 = v21;
            *(a1 + 272) = v20;
          }

          goto LABEL_222;
        case 0x2Bu:
          if (v8 != 88)
          {
            goto LABEL_236;
          }

          sub_221572D90(*(a1 + 20) | 0x400);
          if ((v62 & 0x8000000000000000) == 0)
          {
            goto LABEL_94;
          }

          sub_221572D14();
          if (v65 < 0)
          {
            v168 = google::protobuf::internal::VarintParseSlow64(v64, v62);
            v197 = v168;
            *(a1 + 280) = v169;
            if (!v168)
            {
              return;
            }
          }

          else
          {
            v63 = (v64 + 2);
LABEL_94:
            v197 = v63;
            *(a1 + 280) = v62;
          }

          goto LABEL_222;
        case 0x2Cu:
          if (v8 != 98)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x40000u;
          v110 = *(a1 + 176);
          if (!v110)
          {
            v111 = *(a1 + 8);
            if (v111)
            {
              v111 = sub_221572DB0(v111);
            }

            v110 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTCategoryLevels>(v111);
            *(a1 + 176) = v110;
            v7 = v197;
          }

          v28 = sub_2216FDD6C(a3, v110, v7);
          goto LABEL_221;
        case 0x2Du:
          if (v8 != 106)
          {
            goto LABEL_236;
          }

          *(a1 + 16) |= 0x80000u;
          v144 = *(a1 + 184);
          if (!v144)
          {
            v145 = *(a1 + 8);
            if (v145)
            {
              v145 = sub_221572DB0(v145);
            }

            v144 = google::protobuf::Arena::CreateMaybeMessage<TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive>(v145);
            *(a1 + 184) = v144;
            v7 = v197;
          }

          v28 = sub_2216FDE3C(a3, v144, v7);
          goto LABEL_221;
        case 0x2Eu:
          if (v8 != 112)
          {
            goto LABEL_236;
          }

          *(a1 + 20) |= 0x100u;
          sub_221572D50();
          if ((v16 & 0x80000000) == 0)
          {
            goto LABEL_21;
          }

          sub_221572D2C();
          if (v18 < 0)
          {
            v153 = google::protobuf::internal::VarintParseSlow32(v17, v14);
            v197 = v153;
            *(a1 + 268) = v154;
            if (!v153)
            {
              return;
            }
          }

          else
          {
            v15 = (v17 + 2);
LABEL_21:
            v197 = v15;
            *(a1 + 268) = v14;
          }

          goto LABEL_222;
        case 0x2Fu:
          if (v8 != 120)
          {
            goto LABEL_236;
          }

          v31 = (v7 + 1);
          v32 = *v7;
          if ((v32 & 0x8000000000000000) == 0)
          {
            goto LABEL_52;
          }

          sub_221572E30();
          if (v34 < 0)
          {
            v197 = google::protobuf::internal::VarintParseSlow64(v33, v32);
            if (!v197)
            {
              return;
            }

            v32 = v157;
          }

          else
          {
            v31 = (v33 + 2);
LABEL_52:
            v197 = v31;
          }

          if (TSCE::ASTNodeArrayArchive_ASTNodeType_IsValid(v32))
          {
            *(a1 + 20) |= 0x1000u;
            *(a1 + 292) = v32;
          }

          else
          {
            v195 = *(a1 + 8);
            if (v195)
            {
LABEL_290:
              v196 = sub_221572DBC(v195);
            }

            else
            {
LABEL_292:
              v196 = sub_221567188((a1 + 8));
            }

            google::protobuf::UnknownFieldSet::AddVarint(v196);
          }

          goto LABEL_222;
        default:
LABEL_236:
          if (v8)
          {
            v152 = (v8 & 7) == 4;
          }

          else
          {
            v152 = 1;
          }

          if (v152)
          {
            *(a3 + 80) = v8 - 1;
            return;
          }

          if ((*(a1 + 8) & 1) == 0)
          {
            sub_221567188((a1 + 8));
          }

          v28 = google::protobuf::internal::UnknownFieldParse();
LABEL_221:
          v197 = v28;
          if (!v28)
          {
            return;
          }

LABEL_222:
          v147 = sub_221567030(a3, &v197, *(a3 + 92));
          v6 = v197;
          if (v147)
          {
            return;
          }

          continue;
      }
    }
  }
}

google::protobuf::internal *sub_2216FD54C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FD61C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTLocalCellReferenceNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FD6EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTCrossTableCellReferenceNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FD7BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTColumnCoordinateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FD88C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTRowCoordinateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FD95C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTCrossTableReferenceExtraInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDA2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTUidCoordinateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDAFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTUidTractList::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDBCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTCategoryReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDC9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTColonTractArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDD6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTCategoryLevels::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FDE3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ASTNodeArrayArchive_ASTLambdaIdentsListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void sub_2216FDF0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    SizeFallback = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!SizeFallback)
    {
      return;
    }

    v6 = SizeFallback;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 == v11)
  {
    TSCE::ASTNodeArrayArchive_ASTNodeArchive::_InternalParse(a2, v6, a1);
    if (v12)
    {
      ++*(a1 + 88);
      if (!*(a1 + 80))
      {
        v13 = *(a1 + 28) + v10 - v9;
        *(a1 + 28) = v13;
        *a1 = *(a1 + 8) + (v13 & (v13 >> 31));
      }
    }
  }
}

google::protobuf::internal *sub_2216FDFDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FormulaTranslationFlagsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE0AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FormulaArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE17C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RewriteTableUIDInfoArchive_TableUIDMapEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2216FE24C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDMapArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE31C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::GroupByChangeArchive_GroupingColumnChangeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE3EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::IndexedUidsArchive_IndexedUid::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE4BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::IndexedUidsArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE58C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RewriteRangeEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE65C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RegionInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE72C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ExpandedCellRefObjectPairArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE7FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FormulaAtCoordArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FE8CC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FormulaCoordPairsByOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2216FE99C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CommandArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FEA6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::TrackedReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FEB3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ExpandedTrackedReferenceArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2216FEC0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::FormatStructArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FECDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::BooleanCellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FEDAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::DateCellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FEE7C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::NumberCellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FEF4C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::StringCellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2216FF01C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ErrorCellValueArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2216FF0EC()
{
  sub_221572DF8();
  if (v1)
  {
    v2 = sub_221572DBC(v1);
  }

  else
  {
    v2 = sub_221567188(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_2216FF128(uint64_t *a1)
{
  v1 = *a1;
  v3 = *(v1 - 8);
  v2 = (v1 - 8);
  if (!v3)
  {
    operator delete(v2);
  }
}

void sub_2216FF13C()
{
  sub_221572E60();
  if (!(v4 ^ v5 | v3) && !*(*v2 - 8))
  {
    operator delete((*v2 - 8));
  }

  if (*v1 > 0)
  {
    v6 = (*v0 - 8);
    if (!*v6)
    {

      operator delete(v6);
    }
  }
}

void sub_2216FF1A4(int *a1, void *a2)
{
  if (*a1 >= 1 && !*(*a2 - 8))
  {
    operator delete((*a2 - 8));
  }
}

uint64_t sub_2216FF1C4()
{
  sub_221572DF8();
  if (v1)
  {
    v2 = sub_221572DBC(v1);
  }

  else
  {
    v2 = sub_221567188(v0);
  }

  return sub_221572E48(v2);
}

uint64_t sub_2216FF1F8()
{
  sub_221572DF8();
  if (v1)
  {
    v2 = sub_221572DBC(v1);
  }

  else
  {
    v2 = sub_221567188(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

google::protobuf::internal *sub_221700F44(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSTSOS::SpecSetTableStrokePresetListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_221701014(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecBoolArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_2217010E4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecIntegerArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_2217011B4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecFillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_221701284(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWPSOS::SpecPaddingArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_221701354(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSDSOS::SpecStrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221701424(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSTSOS::SpecTableStrokePresetListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2217014F4(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSSSOS::SpecStringArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221701698(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UidLookupListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701768(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellUIDLookupListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701838(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellID::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701908(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableSize::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217019D8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ExpandedTableSize::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701AA8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellRange::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701B78(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TileRowInfo::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701C48(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TileStorage_Tile::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701D18(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::PopUpMenuModel_CellValue::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701DE8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ImportWarningSetArchive_FormulaImportWarning::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701EB8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ImportWarningSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221701F88(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellRefImportWarningSetPairArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_221702058(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::CustomFormatArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221702128(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellSpecArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217021F8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableDataList_ListEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2217022C8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Range::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221702398(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableRBTree_Node::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702468(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HeaderStorageBucket_Header::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702538(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HeaderStorage::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702608(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TileStorage::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217026D8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableRBTree::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2217027A8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::DrawableArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221702878(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::CoordMapperArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702948(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::LayoutEngineArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702A18(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableInfoArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702AE8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableGroupSortOrderUIDArchive_GroupSortRuleUIDArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702BB8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableSortOrderArchive_SortRuleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702C88(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableSortOrderUIDArchive_SortRuleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_221702D58(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDRectArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_221702E28(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSK::StructuredTextImportSettings::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221702EF8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellRegion::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221702FC8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellUIDRegionArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

void TST::TableModelArchive::_InternalParse()
{
  sub_221688FDC();
  v4 = sub_221567030(v0, &v223, *(v3 + 92));
  TagFallback = sub_22168904C(v4, v5, v6, v7, v8, v9, v10, v11, v221, v223);
  if (v13)
  {
    return;
  }

  while (2)
  {
    v14 = (TagFallback + 1);
    v15 = *TagFallback;
    if ((*TagFallback & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v15 = v15 + (*v14 << 7) - 128;
    if ((*v14 & 0x80000000) == 0)
    {
      v14 = (TagFallback + 2);
LABEL_6:
      v223 = v14;
      goto LABEL_7;
    }

    TagFallback = google::protobuf::internal::ReadTagFallback(TagFallback, v15);
    v223 = TagFallback;
    if (!TagFallback)
    {
      return;
    }

    v14 = TagFallback;
LABEL_7:
    switch(v15 >> 3)
    {
      case 1u:
        if (v15 != 10)
        {
          goto LABEL_501;
        }

        sub_221572E10(*(v1 + 16) | 1);
        if (v16)
        {
          sub_221572E04();
        }

        goto LABEL_302;
      case 3u:
        if (v15 != 26)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x10u;
        v17 = *(v1 + 112);
        if (v17)
        {
          goto LABEL_451;
        }

        v114 = *(v1 + 8);
        if (v114)
        {
          sub_221572DB0(v114);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 112) = v17;
        goto LABEL_450;
      case 4u:
        if (v15 != 34)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x20u;
        v93 = *(v1 + 120);
        if (!v93)
        {
          v94 = *(v1 + 8);
          if (v94)
          {
            v94 = sub_221572DB0(v94);
          }

          v93 = google::protobuf::Arena::CreateMaybeMessage<TST::DataStore>(v94);
          *(v1 + 120) = v93;
          v14 = v223;
        }

        TagFallback = sub_22170498C(v0, v93, v14);
        goto LABEL_452;
      case 5u:
        if (v15 != 42)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x40u;
        v17 = *(v1 + 128);
        if (v17)
        {
          goto LABEL_451;
        }

        v134 = *(v1 + 8);
        if (v134)
        {
          sub_221572DB0(v134);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 128) = v17;
        goto LABEL_450;
      case 6u:
        if (v15 != 48)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x8000000u;
        sub_221572D50();
        if ((v137 & 0x80000000) == 0)
        {
          goto LABEL_282;
        }

        sub_221572D2C();
        if (v139 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v138, v15);
          v223 = TagFallback;
          *(v1 + 552) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v136 = (v138 + 2);
LABEL_282:
          v223 = v136;
          *(v1 + 552) = v15;
        }

        goto LABEL_453;
      case 7u:
        if (v15 != 56)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x10000000u;
        sub_221572D50();
        if ((v103 & 0x80000000) == 0)
        {
          goto LABEL_216;
        }

        sub_221572D2C();
        if (v105 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v104, v15);
          v223 = TagFallback;
          *(v1 + 556) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v102 = (v104 + 2);
LABEL_216:
          v223 = v102;
          *(v1 + 556) = v15;
        }

        goto LABEL_453;
      case 8u:
        if (v15 != 66)
        {
          goto LABEL_501;
        }

        sub_221572E10(*(v1 + 16) | 2);
        if (v115)
        {
          sub_221572E04();
        }

        goto LABEL_302;
      case 9u:
        if (v15 != 72)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x20000000u;
        sub_221572D50();
        if ((v117 & 0x80000000) == 0)
        {
          goto LABEL_248;
        }

        sub_221572D2C();
        if (v119 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v118, v15);
          v223 = TagFallback;
          *(v1 + 560) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v116 = (v118 + 2);
LABEL_248:
          v223 = v116;
          *(v1 + 560) = v15;
        }

        goto LABEL_453;
      case 0xAu:
        if (v15 != 80)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x40000000u;
        sub_221572D50();
        if ((v156 & 0x80000000) == 0)
        {
          goto LABEL_320;
        }

        sub_221572D2C();
        if (v158 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v157, v15);
          v223 = TagFallback;
          *(v1 + 564) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v155 = (v157 + 2);
LABEL_320:
          v223 = v155;
          *(v1 + 564) = v15;
        }

        goto LABEL_453;
      case 0xBu:
        if (v15 != 88)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x80000000;
        sub_221572D50();
        if ((v143 & 0x80000000) == 0)
        {
          goto LABEL_293;
        }

        sub_221572D2C();
        if (v145 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v144, v15);
          v223 = TagFallback;
          *(v1 + 568) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v142 = (v144 + 2);
LABEL_293:
          v223 = v142;
          *(v1 + 568) = v15;
        }

        goto LABEL_453;
      case 0xCu:
        if (v15 != 96)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x1000);
        if (v75 < 0 && (sub_221572D14(), v78 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v77, v76);
          sub_221572D80();
          *(v1 + 607) = v212;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 607) = v79;
        }

        goto LABEL_453;
      case 0xDu:
        if (v15 != 104)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x10);
        if (v106 < 0 && (sub_221572D14(), v109 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v108, v107);
          sub_221572D80();
          *(v1 + 596) = v214;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 596) = v110;
        }

        goto LABEL_453;
      case 0xEu:
        if (v15 != 112)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 1u;
        sub_221572D50();
        if ((v89 & 0x80000000) == 0)
        {
          goto LABEL_194;
        }

        sub_221572D2C();
        if (v91 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v90, v15);
          v223 = TagFallback;
          *(v1 + 572) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v88 = (v90 + 2);
LABEL_194:
          v223 = v88;
          *(v1 + 572) = v15;
        }

        goto LABEL_453;
      case 0xFu:
        if (v15 != 120)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 8u;
        sub_221572D50();
        if ((v69 & 0x80000000) == 0)
        {
          goto LABEL_145;
        }

        sub_221572D2C();
        if (v71 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v70, v15);
          v223 = TagFallback;
          *(v1 + 592) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v68 = (v70 + 2);
LABEL_145:
          v223 = v68;
          *(v1 + 592) = v15;
        }

        goto LABEL_453;
      case 0x10u:
        if (v15 != 129)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 2u;
        v122 = *v14;
        v100 = (v14 + 8);
        *(v1 + 576) = v122;
        goto LABEL_259;
      case 0x11u:
        if (v15 != 137)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 4u;
        v123 = *v14;
        v100 = (v14 + 8);
        *(v1 + 584) = v123;
        goto LABEL_259;
      case 0x12u:
        if (v15 != 146)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x80u;
        v17 = *(v1 + 136);
        if (v17)
        {
          goto LABEL_451;
        }

        v161 = *(v1 + 8);
        if (v161)
        {
          sub_221572DB0(v161);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 136) = v17;
        goto LABEL_450;
      case 0x13u:
        if (v15 != 154)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x100u;
        v17 = *(v1 + 144);
        if (v17)
        {
          goto LABEL_451;
        }

        v159 = *(v1 + 8);
        if (v159)
        {
          sub_221572DB0(v159);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 144) = v17;
        goto LABEL_450;
      case 0x14u:
        if (v15 != 162)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x200u;
        v17 = *(v1 + 152);
        if (v17)
        {
          goto LABEL_451;
        }

        v65 = *(v1 + 8);
        if (v65)
        {
          sub_221572DB0(v65);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 152) = v17;
        goto LABEL_450;
      case 0x15u:
        if (v15 != 170)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x400u;
        v17 = *(v1 + 160);
        if (v17)
        {
          goto LABEL_451;
        }

        v92 = *(v1 + 8);
        if (v92)
        {
          sub_221572DB0(v92);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 160) = v17;
        goto LABEL_450;
      case 0x16u:
        if (v15 != 176)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x400);
        if (v165 < 0 && (sub_221572D14(), v168 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v167, v166);
          sub_221572D80();
          *(v1 + 605) = v217;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 605) = v169;
        }

        goto LABEL_453;
      case 0x17u:
        if (v15 != 186)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x800u;
        v66 = *(v1 + 168);
        if (!v66)
        {
          v67 = *(v1 + 8);
          if (v67)
          {
            v67 = sub_221572DB0(v67);
          }

          v66 = google::protobuf::Arena::CreateMaybeMessage<TST::CellID>(v67);
          *(v1 + 168) = v66;
          v14 = v223;
        }

        TagFallback = sub_221701838(v0, v66, v14);
        goto LABEL_452;
      case 0x18u:
        if (v15 != 194)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x1000u;
        v17 = *(v1 + 176);
        if (v17)
        {
          goto LABEL_451;
        }

        v87 = *(v1 + 8);
        if (v87)
        {
          sub_221572DB0(v87);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 176) = v17;
        goto LABEL_450;
      case 0x19u:
        if (v15 != 202)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x2000u;
        v17 = *(v1 + 184);
        if (v17)
        {
          goto LABEL_451;
        }

        v74 = *(v1 + 8);
        if (v74)
        {
          sub_221572DB0(v74);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 184) = v17;
        goto LABEL_450;
      case 0x1Au:
        if (v15 != 210)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x4000u;
        v17 = *(v1 + 192);
        if (v17)
        {
          goto LABEL_451;
        }

        v112 = *(v1 + 8);
        if (v112)
        {
          sub_221572DB0(v112);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 192) = v17;
        goto LABEL_450;
      case 0x1Bu:
        if (v15 != 218)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x8000u;
        v17 = *(v1 + 200);
        if (v17)
        {
          goto LABEL_451;
        }

        v72 = *(v1 + 8);
        if (v72)
        {
          sub_221572DB0(v72);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 200) = v17;
        goto LABEL_450;
      case 0x1Cu:
        if (v15 != 224)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 0x100u;
        sub_221572D50();
        if ((v181 & 0x80000000) == 0)
        {
          goto LABEL_384;
        }

        sub_221572D2C();
        if (v183 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v182, v15);
          v223 = TagFallback;
          *(v1 + 600) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v180 = (v182 + 2);
LABEL_384:
          v223 = v180;
          *(v1 + 600) = v15;
        }

        goto LABEL_453;
      case 0x1Du:
        if (v15 != 232)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x20);
        if (v175 < 0 && (sub_221572D14(), v178 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v177, v176);
          sub_221572D80();
          *(v1 + 597) = v218;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 597) = v179;
        }

        goto LABEL_453;
      case 0x1Eu:
        if (v15 != 242)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x10000u;
        v17 = *(v1 + 208);
        if (v17)
        {
          goto LABEL_451;
        }

        v82 = *(v1 + 8);
        if (v82)
        {
          sub_221572DB0(v82);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 208) = v17;
        goto LABEL_450;
      case 0x1Fu:
        if (v15 != 248)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x40);
        if (v95 < 0 && (sub_221572D14(), v98 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v97, v96);
          sub_221572D80();
          *(v1 + 598) = v213;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 598) = v99;
        }

        goto LABEL_453;
      case 0x20u:
        if (v15)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x80);
        if (v129 < 0 && (sub_221572D14(), v132 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v131, v130);
          sub_221572D80();
          *(v1 + 599) = v216;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 599) = v133;
        }

        goto LABEL_453;
      case 0x21u:
        if (v15 != 9)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 0x2000u;
        v101 = *v14;
        v100 = (v14 + 8);
        *(v1 + 608) = v101;
LABEL_259:
        v223 = v100;
        goto LABEL_453;
      case 0x22u:
        if (v15 != 18)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x20000u;
        v17 = *(v1 + 216);
        if (v17)
        {
          goto LABEL_451;
        }

        v191 = *(v1 + 8);
        if (v191)
        {
          sub_221572DB0(v191);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 216) = v17;
        goto LABEL_450;
      case 0x23u:
        if (v15 != 26)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x40000u;
        v17 = *(v1 + 224);
        if (v17)
        {
          goto LABEL_451;
        }

        v80 = *(v1 + 8);
        if (v80)
        {
          sub_221572DB0(v80);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 224) = v17;
        goto LABEL_450;
      case 0x24u:
        if (v15 != 34)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x80000u;
        v17 = *(v1 + 232);
        if (v17)
        {
          goto LABEL_451;
        }

        v160 = *(v1 + 8);
        if (v160)
        {
          sub_221572DB0(v160);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 232) = v17;
        goto LABEL_450;
      case 0x25u:
        if (v15 != 40)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x800);
        if (v186 < 0 && (sub_221572D14(), v189 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v188, v187);
          sub_221572D80();
          *(v1 + 606) = v219;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 606) = v190;
        }

        goto LABEL_453;
      case 0x26u:
        if (v15 != 50)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x100000u;
        v17 = *(v1 + 240);
        if (v17)
        {
          goto LABEL_451;
        }

        v61 = *(v1 + 8);
        if (v61)
        {
          sub_221572DB0(v61);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 240) = v17;
        goto LABEL_450;
      case 0x27u:
        if (v15 != 58)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x200000u;
        v140 = *(v1 + 248);
        if (!v140)
        {
          v141 = *(v1 + 8);
          if (v141)
          {
            sub_221572DB0(v141);
          }

          v140 = MEMORY[0x223DA0300]();
          *(v1 + 248) = v140;
          v14 = v223;
        }

        TagFallback = sub_2216F7F9C(v0, v140, v14);
        goto LABEL_452;
      case 0x28u:
        if (v15 != 64)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 0x4000u;
        sub_221572D50();
        if ((v58 & 0x80000000) == 0)
        {
          goto LABEL_113;
        }

        sub_221572D2C();
        if (v60 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v59, v15);
          v223 = TagFallback;
          *(v1 + 616) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v57 = (v59 + 2);
LABEL_113:
          v223 = v57;
          *(v1 + 616) = v15;
        }

        goto LABEL_453;
      case 0x29u:
        if (v15 != 72)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 0x8000u;
        sub_221572D50();
        if ((v47 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        sub_221572D2C();
        if (v49 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v48, v15);
          v223 = TagFallback;
          *(v1 + 620) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v46 = (v48 + 2);
LABEL_95:
          v223 = v46;
          *(v1 + 620) = v15;
        }

        goto LABEL_453;
      case 0x2Au:
        if (v15 != 80)
        {
          goto LABEL_501;
        }

        *(v1 + 24) |= 0x10000u;
        sub_221572D50();
        if ((v84 & 0x80000000) == 0)
        {
          goto LABEL_184;
        }

        sub_221572D2C();
        if (v86 < 0)
        {
          TagFallback = google::protobuf::internal::VarintParseSlow32(v85, v15);
          v223 = TagFallback;
          *(v1 + 624) = v15;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          v83 = (v85 + 2);
LABEL_184:
          v223 = v83;
          *(v1 + 624) = v15;
        }

        goto LABEL_453;
      case 0x2Bu:
        if (v15 != 90)
        {
          goto LABEL_501;
        }

        sub_221572E10(*(v1 + 16) | 4);
        if (v113)
        {
          sub_221572E04();
        }

        goto LABEL_302;
      case 0x2Cu:
        if (v15 != 98)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x400000u;
        v163 = *(v1 + 256);
        if (!v163)
        {
          v164 = *(v1 + 8);
          if (v164)
          {
            v164 = sub_221572DB0(v164);
          }

          v163 = google::protobuf::Arena::CreateMaybeMessage<TST::TableSortOrderArchive>(v164);
          *(v1 + 256) = v163;
          v14 = v223;
        }

        TagFallback = sub_221704A5C(v0, v163, v14);
        goto LABEL_452;
      case 0x2Du:
        if (v15 != 106)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x800000u;
        v33 = *(v1 + 264);
        if (!v33)
        {
          v34 = *(v1 + 8);
          if (v34)
          {
            v34 = sub_221572DB0(v34);
          }

          v33 = google::protobuf::Arena::CreateMaybeMessage<TST::SortRuleReferenceTrackerArchive>(v34);
          *(v1 + 264) = v33;
          v14 = v223;
        }

        TagFallback = sub_221704B2C(v0, v33, v14);
        goto LABEL_452;
      case 0x2Eu:
        if (v15 != 114)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x1000000u;
        v17 = *(v1 + 272);
        if (v17)
        {
          goto LABEL_451;
        }

        v62 = *(v1 + 8);
        if (v62)
        {
          sub_221572DB0(v62);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 272) = v17;
        goto LABEL_450;
      case 0x2Fu:
        if (v15 != 122)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x2000000u;
        v120 = *(v1 + 280);
        if (!v120)
        {
          v121 = *(v1 + 8);
          if (v121)
          {
            v121 = sub_221572DB0(v121);
          }

          v120 = google::protobuf::Arena::CreateMaybeMessage<TST::MergeOwnerArchive>(v121);
          *(v1 + 280) = v120;
          v14 = v223;
        }

        TagFallback = sub_221704BFC(v0, v120, v14);
        goto LABEL_452;
      case 0x30u:
        if (v15 != 130)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x4000000u;
        v17 = *(v1 + 288);
        if (v17)
        {
          goto LABEL_451;
        }

        v135 = *(v1 + 8);
        if (v135)
        {
          sub_221572DB0(v135);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 288) = v17;
        goto LABEL_450;
      case 0x31u:
        if (v15 != 138)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x8000000u;
        v17 = *(v1 + 296);
        if (v17)
        {
          goto LABEL_451;
        }

        v192 = *(v1 + 8);
        if (v192)
        {
          sub_221572DB0(v192);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 296) = v17;
        goto LABEL_450;
      case 0x32u:
        if (v15 != 144)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x200);
        if (v124 < 0 && (sub_221572D14(), v127 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v126, v125);
          sub_221572D80();
          *(v1 + 604) = v215;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 604) = v128;
        }

        goto LABEL_453;
      case 0x33u:
        if (v15 != 152)
        {
          goto LABEL_501;
        }

        sub_221688F8C(*(v1 + 24) | 0x20000);
        if (v39 < 0 && (sub_221572D14(), v42 < 0))
        {
          google::protobuf::internal::VarintParseSlow64(v41, v40);
          sub_221572D80();
          *(v1 + 628) = v211;
          if (!TagFallback)
          {
            return;
          }
        }

        else
        {
          sub_221572DA0();
          *(v1 + 628) = v43;
        }

        goto LABEL_453;
      case 0x34u:
        if (v15 != 162)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x10000000u;
        v35 = *(v1 + 304);
        if (!v35)
        {
          v36 = *(v1 + 8);
          if (v36)
          {
            v36 = sub_221572DB0(v36);
          }

          v35 = google::protobuf::Arena::CreateMaybeMessage<TST::StructuredTextImportRecord>(v36);
          *(v1 + 304) = v35;
          v14 = v223;
        }

        TagFallback = sub_221704CCC(v0, v35, v14);
        goto LABEL_452;
      case 0x3Cu:
        if (v15 != 226)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x20000000u;
        v17 = *(v1 + 312);
        if (v17)
        {
          goto LABEL_451;
        }

        v196 = *(v1 + 8);
        if (v196)
        {
          sub_221572DB0(v196);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 312) = v17;
        goto LABEL_450;
      case 0x3Du:
        if (v15 != 234)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x40000000u;
        v17 = *(v1 + 320);
        if (v17)
        {
          goto LABEL_451;
        }

        v185 = *(v1 + 8);
        if (v185)
        {
          sub_221572DB0(v185);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 320) = v17;
        goto LABEL_450;
      case 0x3Eu:
        if (v15 != 242)
        {
          goto LABEL_501;
        }

        *(v1 + 16) |= 0x80000000;
        v17 = *(v1 + 328);
        if (v17)
        {
          goto LABEL_451;
        }

        v38 = *(v1 + 8);
        if (v38)
        {
          sub_221572DB0(v38);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 328) = v17;
        goto LABEL_450;
      case 0x3Fu:
        if (v15 != 250)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 1u;
        v17 = *(v1 + 336);
        if (v17)
        {
          goto LABEL_451;
        }

        v146 = *(v1 + 8);
        if (v146)
        {
          sub_221572DB0(v146);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 336) = v17;
        goto LABEL_450;
      case 0x40u:
        if (v15 != 2)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 2u;
        v17 = *(v1 + 344);
        if (v17)
        {
          goto LABEL_451;
        }

        v162 = *(v1 + 8);
        if (v162)
        {
          sub_221572DB0(v162);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 344) = v17;
        goto LABEL_450;
      case 0x41u:
        if (v15 != 10)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 4u;
        v17 = *(v1 + 352);
        if (v17)
        {
          goto LABEL_451;
        }

        v37 = *(v1 + 8);
        if (v37)
        {
          sub_221572DB0(v37);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 352) = v17;
        goto LABEL_450;
      case 0x42u:
        if (v15 != 18)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 8u;
        v17 = *(v1 + 360);
        if (v17)
        {
          goto LABEL_451;
        }

        v174 = *(v1 + 8);
        if (v174)
        {
          sub_221572DB0(v174);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 360) = v17;
        goto LABEL_450;
      case 0x43u:
        if (v15 != 26)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x10u;
        v17 = *(v1 + 368);
        if (v17)
        {
          goto LABEL_451;
        }

        v170 = *(v1 + 8);
        if (v170)
        {
          sub_221572DB0(v170);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 368) = v17;
        goto LABEL_450;
      case 0x44u:
        if (v15 != 34)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x20u;
        v17 = *(v1 + 376);
        if (v17)
        {
          goto LABEL_451;
        }

        v200 = *(v1 + 8);
        if (v200)
        {
          sub_221572DB0(v200);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 376) = v17;
        goto LABEL_450;
      case 0x45u:
        if (v15 != 42)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x40u;
        v17 = *(v1 + 384);
        if (v17)
        {
          goto LABEL_451;
        }

        v194 = *(v1 + 8);
        if (v194)
        {
          sub_221572DB0(v194);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 384) = v17;
        goto LABEL_450;
      case 0x46u:
        if (v15 != 50)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x80u;
        v197 = *(v1 + 392);
        if (!v197)
        {
          v198 = *(v1 + 8);
          if (v198)
          {
            v198 = sub_221572DB0(v198);
          }

          v197 = google::protobuf::Arena::CreateMaybeMessage<TST::HiddenStatesOwnerArchive>(v198);
          *(v1 + 392) = v197;
          v14 = v223;
        }

        TagFallback = sub_221704D9C(v0, v197, v14);
        goto LABEL_452;
      case 0x47u:
        if (v15 != 58)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x100u;
        v17 = *(v1 + 400);
        if (v17)
        {
          goto LABEL_451;
        }

        v171 = *(v1 + 8);
        if (v171)
        {
          sub_221572DB0(v171);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 400) = v17;
        goto LABEL_450;
      case 0x48u:
        if (v15 != 66)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x200u;
        v17 = *(v1 + 408);
        if (v17)
        {
          goto LABEL_451;
        }

        v172 = *(v1 + 8);
        if (v172)
        {
          sub_221572DB0(v172);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 408) = v17;
        goto LABEL_450;
      case 0x49u:
        if (v15 != 74)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x400u;
        v17 = *(v1 + 416);
        if (v17)
        {
          goto LABEL_451;
        }

        v73 = *(v1 + 8);
        if (v73)
        {
          sub_221572DB0(v73);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 416) = v17;
        goto LABEL_450;
      case 0x4Au:
        if (v15 != 82)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x800u;
        v17 = *(v1 + 424);
        if (v17)
        {
          goto LABEL_451;
        }

        v184 = *(v1 + 8);
        if (v184)
        {
          sub_221572DB0(v184);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 424) = v17;
        goto LABEL_450;
      case 0x4Bu:
        if (v15 != 90)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x1000u;
        v17 = *(v1 + 432);
        if (v17)
        {
          goto LABEL_451;
        }

        v21 = *(v1 + 8);
        if (v21)
        {
          sub_221572DB0(v21);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 432) = v17;
        goto LABEL_450;
      case 0x4Cu:
        if (v15 != 98)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x2000u;
        v17 = *(v1 + 440);
        if (v17)
        {
          goto LABEL_451;
        }

        v193 = *(v1 + 8);
        if (v193)
        {
          sub_221572DB0(v193);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 440) = v17;
        goto LABEL_450;
      case 0x4Du:
        if (v15 != 106)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x4000u;
        v17 = *(v1 + 448);
        if (v17)
        {
          goto LABEL_451;
        }

        v195 = *(v1 + 8);
        if (v195)
        {
          sub_221572DB0(v195);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 448) = v17;
        goto LABEL_450;
      case 0x4Eu:
        if (v15 != 114)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x8000u;
        v17 = *(v1 + 456);
        if (v17)
        {
          goto LABEL_451;
        }

        v111 = *(v1 + 8);
        if (v111)
        {
          sub_221572DB0(v111);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 456) = v17;
        goto LABEL_450;
      case 0x4Fu:
        if (v15 != 122)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x10000u;
        v17 = *(v1 + 464);
        if (v17)
        {
          goto LABEL_451;
        }

        v199 = *(v1 + 8);
        if (v199)
        {
          sub_221572DB0(v199);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 464) = v17;
        goto LABEL_450;
      case 0x50u:
        if (v15 != 130)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x20000u;
        v17 = *(v1 + 472);
        if (v17)
        {
          goto LABEL_451;
        }

        v173 = *(v1 + 8);
        if (v173)
        {
          sub_221572DB0(v173);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 472) = v17;
        goto LABEL_450;
      case 0x51u:
        if (v15 != 138)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x40000u;
        v29 = *(v1 + 480);
        if (!v29)
        {
          v30 = *(v1 + 8);
          if (v30)
          {
            v30 = sub_221572DB0(v30);
          }

          v29 = google::protobuf::Arena::CreateMaybeMessage<TST::CategoryOwnerArchive>(v30);
          *(v1 + 480) = v29;
          v14 = v223;
        }

        TagFallback = sub_221704E6C(v0, v29, v14);
        goto LABEL_452;
      case 0x52u:
        if (v15 != 146)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x80000u;
        v63 = *(v1 + 488);
        if (!v63)
        {
          v64 = *(v1 + 8);
          if (v64)
          {
            v64 = sub_221572DB0(v64);
          }

          v63 = google::protobuf::Arena::CreateMaybeMessage<TST::PencilAnnotationOwnerArchive>(v64);
          *(v1 + 488) = v63;
          v14 = v223;
        }

        TagFallback = sub_221704F3C(v0, v63, v14);
        goto LABEL_452;
      case 0x53u:
        if (v15 != 154)
        {
          goto LABEL_501;
        }

        sub_221572E10(*(v1 + 16) | 8);
        if (v147)
        {
          sub_221572E04();
        }

LABEL_302:
        google::protobuf::internal::ArenaStringPtr::Mutable();
        TagFallback = google::protobuf::internal::InlineGreedyStringParser();
        goto LABEL_452;
      case 0x54u:
        if (v15 != 162)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x100000u;
        v31 = *(v1 + 496);
        if (!v31)
        {
          v32 = *(v1 + 8);
          if (v32)
          {
            v32 = sub_221572DB0(v32);
          }

          v31 = google::protobuf::Arena::CreateMaybeMessage<TSCE::HauntedOwnerArchive>(v32);
          *(v1 + 496) = v31;
          v14 = v223;
        }

        TagFallback = sub_22170500C(v0, v31, v14);
        goto LABEL_452;
      case 0x55u:
        if (v15 != 170)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x200000u;
        v17 = *(v1 + 504);
        if (v17)
        {
          goto LABEL_451;
        }

        v201 = *(v1 + 8);
        if (v201)
        {
          sub_221572DB0(v201);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 504) = v17;
        goto LABEL_450;
      case 0x56u:
        if (v15 != 178)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x400000u;
        v17 = *(v1 + 512);
        if (v17)
        {
          goto LABEL_451;
        }

        v20 = *(v1 + 8);
        if (v20)
        {
          sub_221572DB0(v20);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 512) = v17;
        goto LABEL_450;
      case 0x57u:
        if (v15 != 186)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x800000u;
        v17 = *(v1 + 520);
        if (v17)
        {
          goto LABEL_451;
        }

        v81 = *(v1 + 8);
        if (v81)
        {
          sub_221572DB0(v81);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 520) = v17;
        goto LABEL_450;
      case 0x58u:
        if (v15 != 194)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x1000000u;
        v17 = *(v1 + 528);
        if (v17)
        {
          goto LABEL_451;
        }

        v18 = *(v1 + 8);
        if (v18)
        {
          sub_221572DB0(v18);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 528) = v17;
        goto LABEL_450;
      case 0x59u:
        if (v15 != 202)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x2000000u;
        v17 = *(v1 + 536);
        if (v17)
        {
          goto LABEL_451;
        }

        v19 = *(v1 + 8);
        if (v19)
        {
          sub_221572DB0(v19);
        }

        v17 = MEMORY[0x223DA0390]();
        *(v1 + 536) = v17;
LABEL_450:
        v14 = v223;
LABEL_451:
        TagFallback = sub_22170B7F8(v0, v17, v14);
        goto LABEL_452;
      case 0x5Au:
        if (v15 == 208)
        {
          while (1)
          {
            sub_221688FC4();
            if (v51 < 0)
            {
              sub_22168901C();
              if (v54 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow32(v53, v2);
                v2 = v15;
              }

              else
              {
                TagFallback = (v52 + 4);
              }
            }

            else
            {
              TagFallback = v50;
            }

            v223 = TagFallback;
            v55 = *(v1 + 32);
            if (v55 == *(v1 + 36))
            {
              v56 = v55 + 1;
              sub_2210BBC64((v1 + 32), v55 + 1);
              *(*(v1 + 40) + 4 * v55) = v2;
              TagFallback = v223;
            }

            else
            {
              *(*(v1 + 40) + 4 * v55) = v2;
              v56 = v55 + 1;
            }

            *(v1 + 32) = v56;
            if (!TagFallback)
            {
              return;
            }

            if (*v0 <= TagFallback || *TagFallback != 1488)
            {
              goto LABEL_453;
            }
          }
        }

        if (v15 == 210)
        {
          goto LABEL_500;
        }

        goto LABEL_501;
      case 0x5Bu:
        if (v15 == 216)
        {
          while (1)
          {
            sub_221688FC4();
            if (v149 < 0)
            {
              sub_22168901C();
              if (v152 < 0)
              {
                TagFallback = google::protobuf::internal::VarintParseSlow32(v151, v2);
                v2 = v15;
              }

              else
              {
                TagFallback = (v150 + 4);
              }
            }

            else
            {
              TagFallback = v148;
            }

            v223 = TagFallback;
            v153 = *(v1 + 48);
            if (v153 == *(v1 + 52))
            {
              v154 = v153 + 1;
              sub_2210BBC64((v1 + 48), v153 + 1);
              *(*(v1 + 56) + 4 * v153) = v2;
              TagFallback = v223;
            }

            else
            {
              *(*(v1 + 56) + 4 * v153) = v2;
              v154 = v153 + 1;
            }

            *(v1 + 48) = v154;
            if (!TagFallback)
            {
              return;
            }

            if (*v0 <= TagFallback || *TagFallback != 1496)
            {
              goto LABEL_453;
            }
          }
        }

        if (v15 == 218)
        {
          goto LABEL_500;
        }

        goto LABEL_501;
      case 0x5Cu:
        if (v15 != 224)
        {
          if (v15 == 226)
          {
LABEL_500:
            TagFallback = google::protobuf::internal::PackedUInt32Parser();
          }

          else
          {
LABEL_501:
            if (v15)
            {
              v220 = (v15 & 7) == 4;
            }

            else
            {
              v220 = 1;
            }

            if (v220)
            {
              *(v0 + 80) = v15 - 1;
              return;
            }

            if ((*(v1 + 8) & 1) == 0)
            {
              v2 = v15;
              sub_221567188((v1 + 8));
            }

            TagFallback = google::protobuf::internal::UnknownFieldParse();
          }

LABEL_452:
          v223 = TagFallback;
          if (!TagFallback)
          {
            return;
          }

LABEL_453:
          v202 = sub_221689030(TagFallback, v15);
          TagFallback = sub_22168904C(v202, v203, v204, v205, v206, v207, v208, v209, v222, v223);
          if (v210)
          {
            return;
          }

          continue;
        }

        while (1)
        {
          sub_221688FC4();
          if (v23 < 0)
          {
            sub_22168901C();
            if (v26 < 0)
            {
              TagFallback = google::protobuf::internal::VarintParseSlow32(v25, v2);
              v2 = v15;
            }

            else
            {
              TagFallback = (v24 + 4);
            }
          }

          else
          {
            TagFallback = v22;
          }

          v223 = TagFallback;
          v27 = *(v1 + 64);
          if (v27 == *(v1 + 68))
          {
            v28 = v27 + 1;
            sub_2210BBC64((v1 + 64), v27 + 1);
            *(*(v1 + 72) + 4 * v27) = v2;
            TagFallback = v223;
          }

          else
          {
            *(*(v1 + 72) + 4 * v27) = v2;
            v28 = v27 + 1;
          }

          *(v1 + 64) = v28;
          if (!TagFallback)
          {
            return;
          }

          if (*v0 <= TagFallback || *TagFallback != 1504)
          {
            goto LABEL_453;
          }
        }

      case 0x5Du:
        if (v15 != 234)
        {
          goto LABEL_501;
        }

        *(v1 + 20) |= 0x4000000u;
        v44 = *(v1 + 544);
        if (!v44)
        {
          v45 = *(v1 + 8);
          if (v45)
          {
            v45 = sub_221572DB0(v45);
          }

          v44 = google::protobuf::Arena::CreateMaybeMessage<TSCE::SpillOwnerArchive>(v45);
          *(v1 + 544) = v44;
          v14 = v223;
        }

        TagFallback = sub_2217050DC(v0, v44, v14);
        goto LABEL_452;
      default:
        goto LABEL_501;
    }
  }
}

google::protobuf::internal *sub_22170498C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::DataStore::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704A5C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableSortOrderArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704B2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::SortRuleReferenceTrackerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704BFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::MergeOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704CCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::StructuredTextImportRecord::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704D9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HiddenStatesOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704E6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CategoryOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221704F3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::PencilAnnotationOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170500C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::HauntedOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217050DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::SpillOwnerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217051AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TableGroupSortOrderUIDArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170527C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::StrokeLayerArchive_StrokeRunArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t TST::DurationWrapperArchive::_InternalParse()
{
  sub_221688FDC();
  while (1)
  {
    v4 = sub_221689030(v2, v3);
    v12 = sub_22168904C(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
    if (v13)
    {
      return v12;
    }

    sub_22168900C();
    if (v14 < 0)
    {
      sub_221688FB0();
      if (v16 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v1);
        sub_2216890A0();
        if (!v22)
        {
          return v24;
        }

        v1 = v21;
      }
    }

    sub_2216890B8();
    v18 = v18 || v17 == 4;
    if (v18)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_22168907C();
    }

    else
    {
      sub_221567188((v0 + 8));
      sub_221689070();
    }

    v2 = sub_2216890C4(v19, v20);
    v26 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2216890AC();
  return v24;
}

google::protobuf::internal *sub_221705408(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellBorderArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217054D8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellUIDListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217055A8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::MergeOperationArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221705678(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::Cell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221705748(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellListArchive_OptionalCell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221705818(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ConcurrentCellListArchive_OptionalCell::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2217058E8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::CommandPropertyMapArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_2217059B8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeArray::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_221705A88(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::LargeArraySegment::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221705B58(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::CellDiffArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_221705C28(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::IndexSet::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_221705CF8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HierarchicalCellDiffMapArchive_BoxedRow::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221705DC8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::DoubleStyleMapArchive_DoubleStyleMapEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221705E98(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::StyleTableMapArchive_StyleTableMapEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_221705F68(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::UUIDCoordArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t TST::ControlCellSelectionArchive::_InternalParse()
{
  sub_221688FDC();
  while (1)
  {
    v4 = sub_221689030(v2, v3);
    v12 = sub_22168904C(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
    if (v13)
    {
      return v12;
    }

    sub_22168900C();
    if (v14 < 0)
    {
      sub_221688FB0();
      if (v16 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v1);
        sub_2216890A0();
        if (!v22)
        {
          return v24;
        }

        v1 = v21;
      }
    }

    sub_2216890B8();
    v18 = v18 || v17 == 4;
    if (v18)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_22168907C();
    }

    else
    {
      sub_221567188((v0 + 8));
      sub_221689070();
    }

    v2 = sub_2216890C4(v19, v20);
    v26 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2216890AC();
  return v24;
}

uint64_t TST::StockCellSelectionArchive::_InternalParse()
{
  sub_221688FDC();
  while (1)
  {
    v4 = sub_221689030(v2, v3);
    v12 = sub_22168904C(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
    if (v13)
    {
      return v12;
    }

    sub_22168900C();
    if (v14 < 0)
    {
      sub_221688FB0();
      if (v16 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v1);
        sub_2216890A0();
        if (!v22)
        {
          return v24;
        }

        v1 = v21;
      }
    }

    sub_2216890B8();
    v18 = v18 || v17 == 4;
    if (v18)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_22168907C();
    }

    else
    {
      sub_221567188((v0 + 8));
      sub_221689070();
    }

    v2 = sub_2216890C4(v19, v20);
    v26 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2216890AC();
  return v24;
}

uint64_t TST::TableNameSelectionArchive::_InternalParse()
{
  sub_221688FDC();
  while (1)
  {
    v4 = sub_221689030(v2, v3);
    v12 = sub_22168904C(v4, v5, v6, v7, v8, v9, v10, v11, v25, v26);
    if (v13)
    {
      return v12;
    }

    sub_22168900C();
    if (v14 < 0)
    {
      sub_221688FB0();
      if (v16 < 0)
      {
        google::protobuf::internal::ReadTagFallback(v15, v1);
        sub_2216890A0();
        if (!v22)
        {
          return v24;
        }

        v1 = v21;
      }
    }

    sub_2216890B8();
    v18 = v18 || v17 == 4;
    if (v18)
    {
      break;
    }

    if (*(v0 + 8))
    {
      sub_22168907C();
    }

    else
    {
      sub_221567188((v0 + 8));
      sub_221689070();
    }

    v2 = sub_2216890C4(v19, v20);
    v26 = v2;
    if (!v2)
    {
      return 0;
    }
  }

  sub_2216890AC();
  return v24;
}

google::protobuf::internal *sub_22170626C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaPredicatePrePivotArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170633C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaPredicateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_22170640C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSS::StyleArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2217064DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216DA0D8(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217065AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216D4F4C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170667C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaPredArgDataArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170674C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::RelativeCellRefArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170681C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::ViewTractRefArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217068EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaPredArgArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217069BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ConditionalStyleSetArchive_ConditionalStyleRule::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706A8C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ConditionalStyleSetArchive_ConditionalStyleRulePrePivot::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706B5C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ConditionalStyleSetArchive_ConditionalStyleRules::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706C2C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FilterRulePrePivotArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706CFC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FilterRuleArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706DCC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::UniqueIndexArchive_UniqueIndexEntryArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706E9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HiddenStateExtentArchive_RowOrColumnState::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221706F6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::UniqueIndexArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170703C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HiddenStateExtentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170710C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HiddenStatesArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_2217071DC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::UIGraphicalAttachment::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_2217072AC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ExpressionNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170737C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::OperatorNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_22170744C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Size::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_22170751C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::TokenAttachmentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217075EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaStoreArchive_FormulaStorePair::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217076BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::FormulaStoreArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170778C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::FunctorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170785C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupColumnArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170792C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ColumnAggregateArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217079FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::AccumulatorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707ACC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive_AggNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707B9C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive_RowSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707C6C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive_GroupNodeArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707D3C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive_GroupNodeArchive_FormatManagerArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707E0C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive_AggregatorArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707EDC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupByArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_221707FAC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::GroupColumnListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170807C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::ColumnAggregateListArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_22170814C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::SelectionArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_22170821C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::OwnerUIDMapperArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217082EC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::SummaryCellVendorArchive_SummaryCellEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217083BC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TSCE::UidCellRefSetArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170848C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HeaderNameMgrTileArchive_NameFragmentArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170855C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::HeaderNameMgrArchive_PerTableArchive::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170862C(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::WidthHeightCacheFittingEntry::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_2217086FC(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = TST::WidthHeightCache::_InternalParse(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

uint64_t sub_2217087CC()
{
  sub_221572DF8();
  if (v1)
  {
    v2 = sub_221572DBC(v1);
  }

  else
  {
    v2 = sub_221567188(v0);
  }

  return sub_221689058(v2);
}

uint64_t sub_221708800()
{
  sub_221572DF8();
  if (v1)
  {
    v2 = sub_221572DBC(v1);
  }

  else
  {
    v2 = sub_221567188(v0);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

void sub_22170883C()
{
  sub_221688F9C();
  if (v1 == v2 && !*(*v0 - 8))
  {
    operator delete((*v0 - 8));
  }

  sub_221689094();
  if (v1 == v2)
  {
    v3 = sub_221689088();
    if (!v4)
    {

      operator delete(v3);
    }
  }
}

void *sub_22170A75C(void *a1)
{
  if (a1)
  {
    v2 = a1[6];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A7B0(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1[12];
    if (v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = sub_2216A4D80(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void *sub_22170A7F8(void *a1)
{
  if (a1)
  {
    v2 = a1[11];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A84C(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A8A0(void *a1)
{
  if (a1)
  {
    v2 = a1[14];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A8F4(void *a1)
{
  if (a1)
  {
    v2 = a1[8];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A948(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1[13];
    if (v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = sub_22170ABF0(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void *sub_22170A990(void *a1)
{
  if (a1)
  {
    v2 = a1[9];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170A9E4(void *a1)
{
  if (a1)
  {
    v2 = a1[15];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170AA38(void *a1, const char *a2)
{
  if (a1)
  {
    v3 = a1[10];
    if (v3)
    {
      a1 = v3;
    }

    else
    {
      a1 = sub_22170ABA0(a1, a2);
    }

    v2 = vars8;
  }

  return a1;
}

void *sub_22170AA80(void *a1)
{
  if (a1)
  {
    v2 = a1[16];
    if (v2)
    {
      a1 = v2;
    }

    else
    {
      sub_2216AE12C();
      a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(v3, v4, v5, v6);
    }

    v1 = vars8;
  }

  return a1;
}

void *sub_22170ABA0(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(a1, a2, (a1 + 10), a1[26], &unk_2834B9F68);
    v2 = vars8;
  }

  return a1;
}

void *sub_22170ABF0(void *a1, const char *a2)
{
  if (a1)
  {
    a1 = objc_msgSend__loadDatalist_forLazyReference_completionBlock_(a1, a2, (a1 + 13), a1[29], &unk_2834B9F88);
    v2 = vars8;
  }

  return a1;
}

_DWORD *sub_22170AC80(_DWORD *result, unsigned int *a2)
{
  if (result)
  {
    v2 = result[2];
    if (v2 == 0x7FFFFFFF)
    {
      return sub_2216B20DC();
    }

    v3 = result[3];
    if (v3 == 0x7FFFFFFF)
    {
      return sub_2216B20DC();
    }

    if (*a2 < v2)
    {
      return sub_2216B20DC();
    }

    if (*a2 > v2 + result[4] - 1)
    {
      return sub_2216B20DC();
    }

    v4 = a2[1];
    if (v4 < v3)
    {
      return sub_2216B20DC();
    }

    else
    {
      return (v4 <= v3 + result[5] - 1);
    }
  }

  return result;
}

void sub_22170B01C(unint64_t *a1, uint64_t a2, void *a3, id obj)
{
  v4 = *a1;
  if (*a1)
  {
    v4 = (a2 - *(v4 + 8) + (HIDWORD(a2) - *(v4 + 12)) * *(v4 + 16));
  }

  objc_storeStrong((*a3 + 8 * v4), obj);
}

uint64_t sub_22170B04C(void *a1, int32x2_t *a2, uint64_t *a3, double a4, uint64_t a5)
{
  v6 = a1[6];
  if (v6)
  {
    *&v7 = sub_2216B20C4(v6, *a2);
    objc_msgSend_valueAt1DIndex_(v11, v12, (v10 + v9 * v8), v13, v7);
  }

  else
  {
    objc_msgSend_valueAt1DIndex_(a1, a2, 0, a5, a4);
  }
  result = ;
  *a3 = result;
  return result;
}

TSUIndexSet *sub_22170B094(void *a1, int32x2_t *a2, void *a3, unsigned int *a4)
{
  v8 = a1[6];
  if (sub_22170AC80(v8, a2))
  {
    if (v8)
    {
LABEL_3:
      v11 = vsub_s32(*a2, v8[1]);
      v12 = (v11.i32[0] + v11.i32[1] * v8[2].i32[0]);
      goto LABEL_4;
    }
  }

  else
  {
    sub_2216AEB78(a1, a2, v9, v10);
    v8 = a1[6];
    if (v8)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_4:
  objc_storeStrong((a1[7] + 8 * v12), a3);
  sub_2215C2F88((a1 + 1), a2->i32[0], *a4);
  v13 = a1[10];
  if (v13)
  {
    TSUIndexSet::addIndex(v13);
  }

  result = a1[11];
  if (result)
  {

    return TSUIndexSet::addIndex(result);
  }

  return result;
}

TSUIndexSet *sub_22170B17C(void *a1, int32x2_t *a2, unsigned int *a3, uint64_t a4)
{
  sub_2216AEB78(a1, a2, a3, a4);
  sub_2215C2F88((a1 + 1), a2->i32[0], *a3);
  v7 = a1[6];
  if (v7)
  {
    sub_2216B20C4(v7, *a2);
    v7 = (v10 + v9 * v8);
  }

  v11 = a1[7];
  v12 = *(v11 + 8 * v7);
  *(v11 + 8 * v7) = 0;

  v13 = a1[10];
  if (v13)
  {
    TSUIndexSet::addIndex(v13);
  }

  result = a1[11];
  if (result)
  {

    return TSUIndexSet::addIndex(result);
  }

  return result;
}

char *sub_22170B248(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::StrokeArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

char *sub_22170B318(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSD::FillArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_22170B3E8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216D42AC(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_22170B4B8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSWP::PaddingArchive::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

google::protobuf::internal *sub_22170B588(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216D656C(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170B658(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216D7148(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

google::protobuf::internal *sub_22170B728(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v5 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v5);
    if (!result)
    {
      return result;
    }

    v6 = result;
  }

  else
  {
    v6 = (this + 1);
  }

  v8 = *(a1 + 8);
  v9 = v5 + v6 - v8;
  *a1 = v8 + (v9 & (v9 >> 31));
  v10 = *(a1 + 28);
  *(a1 + 28) = v9;
  LODWORD(v8) = *(a1 + 88);
  v11 = __OFSUB__(v8, 1);
  LODWORD(v8) = v8 - 1;
  *(a1 + 88) = v8;
  if (v8 < 0 != v11)
  {
    return 0;
  }

  result = sub_2216D7E08(a2, v6, a1);
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 28) + v10 - v9;
  *(a1 + 28) = v12;
  *a1 = *(a1 + 8) + (v12 & (v12 >> 31));
  return result;
}

char *sub_22170B7F8(uint64_t a1, uint64_t a2, google::protobuf::internal *this)
{
  v4 = *this;
  if (*this < 0)
  {
    result = google::protobuf::internal::ReadSizeFallback(this, v4);
    if (!result)
    {
      return result;
    }

    v5 = result;
  }

  else
  {
    v5 = this + 1;
  }

  v7 = *(a1 + 8);
  v8 = v4 + v5 - v7;
  *a1 = v7 + (v8 & (v8 >> 31));
  v9 = *(a1 + 28);
  *(a1 + 28) = v8;
  LODWORD(v7) = *(a1 + 88);
  v10 = __OFSUB__(v7, 1);
  LODWORD(v7) = v7 - 1;
  *(a1 + 88) = v7;
  if (v7 < 0 != v10)
  {
    return 0;
  }

  result = TSP::Reference::_InternalParse();
  if (!result)
  {
    return result;
  }

  ++*(a1 + 88);
  if (*(a1 + 80))
  {
    return 0;
  }

  v11 = *(a1 + 28) + v9 - v8;
  *(a1 + 28) = v11;
  *a1 = *(a1 + 8) + (v11 & (v11 >> 31));
  return result;
}

uint64_t sub_22170B8C8(uint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v2 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v2 = sub_221567188(a1);
  }

  return google::protobuf::UnknownFieldSet::AddVarint(v2);
}

CGRect CGContextGetClipBoundingBox(CGContextRef c)
{
  MEMORY[0x282110B10](c);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGPathGetBoundingBox(CGPathRef path)
{
  MEMORY[0x2821114C8](path);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x2821115D0](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t String()
{
  return MEMORY[0x2821EB0D0]();
}

{
  return MEMORY[0x2821EB118]();
}

{
  return MEMORY[0x2821EB120]();
}

uint64_t TSUDecimal::operator=()
{
  return MEMORY[0x2821EC680]();
}

{
  return MEMORY[0x2821EC688]();
}

{
  return MEMORY[0x2821EC690]();
}

{
  return MEMORY[0x2821EC698]();
}

{
  return MEMORY[0x2821EC6A0]();
}

{
  return MEMORY[0x2821EC6A8]();
}

uint64_t google::protobuf::internal::ArenaStringPtr::Set()
{
  return MEMORY[0x2821EAD00]();
}

{
  return MEMORY[0x2821EAD08]();
}

uint64_t TSUCellRect::contains(TSUCellRect *this)
{
  return MEMORY[0x2821EC9B0](this);
}

{
  return MEMORY[0x2821EC9B8](this);
}

uint64_t *TSUUnivNumberParser::parseAsNumber@<X0>(uint64_t *__return_ptr a1@<X8>, TSUUnivNumberParser *this@<X0>, NSString *a3@<X1>)
{
  return MEMORY[0x2821ECAA0](a1, this, a3);
}

{
  return MEMORY[0x2821ECAA8](a1, this, a3);
}

uint64_t std::istream::~istream()
{
  return MEMORY[0x2821F7818]();
}

{
  return MEMORY[0x2821F7820]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void operator new()
{
    ;
  }
}