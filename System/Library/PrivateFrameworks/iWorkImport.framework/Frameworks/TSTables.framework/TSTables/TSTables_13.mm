__n128 TSCEASTViewTractRefElement::setTableUID(TSCEASTViewTractRefElement *this, __n128 *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8) - 29;
  v10 = v9 > 0x27;
  v11 = (1 << v9) & 0xC000200081;
  v12 = v10 || v11 == 0;
  if (!v12 && ((*(this + 16) & 1) == 0 ? (v13 = *(a3 + 2)) : (v13 = (a3 + 24)), (*(*v13 + v8 + 1) & 1) != 0))
  {
    sub_22120CA10(a3, a2, a3, a4);
    if (*(this + 16))
    {
      v25 = (a3 + 24);
    }

    else
    {
      v25 = *(a3 + 2);
    }

    v26 = *v25;
    if (v26)
    {
      result = *a2;
      *(v26 + *(this + 1) + 3) = *a2;
    }
  }

  else if (*a2 != 0)
  {
    v14 = MEMORY[0x277D81150];
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTViewTractRefElement::setTableUID(const TSCEOwnerUID &, TSCEASTIteratorBase *)", a4);
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v16, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v17);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v14, v19, v15, v18, 3138, 0, "Cannot use setTableUID on a tag that isn't already cross-table");

    v23 = MEMORY[0x277D81150];

    objc_msgSend_logBacktraceThrottled(v23, v20, v21, v22);
  }

  return result;
}

uint64_t TSCEASTViewTractRefElement::columnGroupLevel(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a2 + 24);
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = *(*v11 + v6 + 1) & 1;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 3), v14, v15);
  if (v12)
  {
    sub_22120C7F0(v13, (v13[1] + 16), v16, v17);
  }

  v18 = v13[1];
  result = *(**v13 + v18);
  v13[1] = v18 + 1;
  return result;
}

uint64_t TSCEASTViewTractRefElement::rowGroupLevel(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a2 + 24);
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = *(*v11 + v6 + 1) & 1;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 4), v14, v15);
  if (v12)
  {
    sub_22120C7F0(v13, (v13[1] + 16), v16, v17);
  }

  v18 = v13[1];
  result = *(**v13 + v18);
  v13[1] = v18 + 1;
  return result;
}

uint64_t TSCEASTViewTractRefElement::aggIndexLevel(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 2);
  }

  v6 = *(this + 1);
  v7 = *(*v5 + v6) - 29;
  v8 = v7 > 0x27;
  v9 = (1 << v7) & 0xC000200081;
  if (v8 || v9 == 0)
  {
    v12 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v11 = (a2 + 24);
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = *(*v11 + v6 + 1) & 1;
  }

  v13 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v13, (*(this + 1) + 5), v14, v15);
  if (v12)
  {
    sub_22120C7F0(v13, (v13[1] + 16), v16, v17);
  }

  v18 = v13[1];
  result = *(**v13 + v18);
  v13[1] = v18 + 2;
  return result;
}

uint64_t TSCEASTViewTractRefElement::preserveFlags(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v4 = (a2 + 24);
  }

  else
  {
    v4 = *(a2 + 2);
  }

  v5 = *(this + 1);
  v6 = *(*v4 + v5) - 29;
  v7 = v6 > 0x27;
  v8 = (1 << v6) & 0xC000200081;
  if (v7 || v8 == 0)
  {
    v11 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v10 = (a2 + 24);
    }

    else
    {
      v10 = *(a2 + 2);
    }

    v11 = (*(*v10 + v5 + 1) >> 4) & 3;
  }

  return (TSCEASTViewTractRefElement::colonTractFlags(this, a2, a3, a4) >> 2) & 0xC | v11;
}

_BYTE *TSCEASTViewTractRefElement::setPreserveFlags(TSCEASTViewTractRefElement *this, const TSUPreserveFlags *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  if (*(this + 16))
  {
    v7 = (a3 + 24);
  }

  else
  {
    v7 = *(a3 + 2);
  }

  v8 = *(this + 1);
  v9 = *(*v7 + v8) - 29;
  v10 = v9 > 0x27;
  v11 = (1 << v9) & 0xC000200081;
  if (v10 || v11 == 0)
  {
    v14 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v13 = (a3 + 24);
    }

    else
    {
      v13 = *(a3 + 2);
    }

    v14 = *(*v13 + v8 + 1) & 0xCF;
  }

  TSCEASTElement::setRefFlags(this, ((16 * (a2->_flags & 3)) | v14), a3, a4);
  v17 = TSCEASTViewTractRefElement::colonTractFlags(this, a3, v15, v16);
  flags = a2->_flags;
  v19 = *(this + 1);
  result = sub_22120CA10(a3, v20, v21, v22);
  if (*(this + 16))
  {
    v24 = (a3 + 24);
  }

  else
  {
    v24 = *(a3 + 2);
  }

  v25 = *v24;
  if (v25)
  {
    *(v25 + v19 + 2) = v17 & 0xCF | (16 * ((flags >> 2) & 3));
  }

  return result;
}

BOOL TSCEASTViewTractRefElement::mayHaveBeenImplicitIntersection(TSCEASTViewTractRefElement *this, TSCEASTRewriter *a2)
{
  v2 = (*(*this + 96))(this, a2);
  if (objc_msgSend_tractCount(v2, v3, v4, v5))
  {
    v9 = objc_msgSend_activeUidTract(v2, v6, v7, v8);
    v13 = v9;
    v21 = 0;
    if (v9)
    {
      if ((v14 = objc_msgSend_columnUids(v9, v10, v11, v12), v18 = *v14, *(v14 + 8) - *v14 == 16) && !*v18 && !v18[1] || (v19 = objc_msgSend_rowUids(v13, v15, v16, v17), v20 = *v19, *(v19 + 8) - *v19 == 16) && !*v20 && !v20[1])
      {
        v21 = 1;
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void TSCEASTViewTractRefElement::uidReference(uint64_t *__return_ptr a1@<X8>, TSCEASTViewTractRefElement *this@<X0>, TSCEASTIteratorBase *a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v20 = TSCEASTViewTractRefElement::preserveFlags(this, a3, a4, a5);
  v10 = (*(*this + 96))(this, a3);
  if (*(this + 16))
  {
    v11 = (a3 + 24);
  }

  else
  {
    v11 = *(a3 + 2);
  }

  v12 = *(this + 1);
  v13 = *(*v11 + v12) - 29;
  v14 = v13 > 0x27;
  v15 = (1 << v13) & 0xC000200081;
  v16 = v14 || v15 == 0;
  if (!v16 && ((*(this + 16) & 1) == 0 ? (v17 = *(a3 + 2)) : (v17 = (a3 + 24)), (*(*v17 + v12 + 1) & 1) != 0))
  {
    *&v19 = TSCEASTViewTractRefElement::tableUID(this, a3, v8, v9);
    *(&v19 + 1) = v18;
    sub_22122B9B8(a1, &v19, v10, &v20);
  }

  else
  {
    sub_22122B92C(a1, v10, &v20);
  }
}

TSCEViewTractRef *TSCEASTViewTractRefElement::viewTractRef(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTViewTractRefElement::columnGroupLevel(this, a2, a3, a4);
  v9 = TSCEASTViewTractRefElement::rowGroupLevel(this, a2, v7, v8);
  v12 = TSCEASTViewTractRefElement::aggIndexLevel(this, a2, v10, v11);
  v17 = TSCEASTViewTractRefElement::preserveFlags(this, a2, v13, v14);
  v35 = 0;
  v36 = 0;
  if (*(this + 16))
  {
    v18 = (a2 + 24);
  }

  else
  {
    v18 = *(a2 + 2);
  }

  v19 = *(this + 1);
  v20 = *(*v18 + v19) - 29;
  v21 = v20 > 0x27;
  v22 = (1 << v20) & 0xC000200081;
  if (!v21 && v22 != 0)
  {
    v24 = (*(this + 16) & 1) != 0 ? (a2 + 24) : *(a2 + 2);
    if (*(*v24 + v19 + 1))
    {
      v35 = TSCEASTViewTractRefElement::tableUID(this, a2, v15, v16);
      v36 = v25;
    }
  }

  v26 = (*(*this + 96))(this, a2);
  v30 = objc_msgSend_activeUidTract(v26, v27, v28, v29, v35, v36);
  v31 = [TSCEViewTractRef alloc];
  v33 = objc_msgSend_initWithTract_tableUID_preserveFlags_columnGroupLevel_rowGroupLevel_aggrIndexLevel_(v31, v32, v30, &v35, v17, v6, v9, v12);

  return v33;
}

TSCEViewTractRef *TSCEASTViewTractRefElement::mutableViewTractRef(TSCEASTViewTractRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTViewTractRefElement::viewTractRef(this, a2, a3, a4);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_copy(v4, v5, v6, v7);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  return v10;
}

unint64_t TSCEASTViewTractRefElement::appendViewTractRefElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, TSCEViewTractRef *a3)
{
  v4 = a2;
  v40._flags = 0;
  v38.n128_u8[0] = objc_msgSend_preserveFlags(v4, v5, v6, v7);
  TSCEASTRefFlags::setPreserveFlags(&v40, &v38);
  v11 = objc_msgSend_preserveFlags(v4, v8, v9, v10);
  v39 = (4 * v11) & 0x10 | (32 * ((objc_msgSend_preserveFlags(v4, v12, v13, v14) & 8) != 0));
  v15 = objc_opt_new();
  v19 = objc_msgSend_tract(v4, v16, v17, v18);
  objc_msgSend_addTractAtFront_(v15, v20, v19, v21);

  v38.n128_u64[0] = objc_msgSend_tableUID(v4, v22, v23, v24);
  v38.n128_u64[1] = v25;
  LOBYTE(v19) = objc_msgSend_columnGroupLevel(v4, v25, v26, v27);
  v31 = objc_msgSend_rowGroupLevel(v4, v28, v29, v30);
  v35 = objc_msgSend_aggregateIndexLevel(v4, v32, v33, v34);
  appended = TSCEASTViewTractRefElement::appendViewTractRefElement(this, &v38, &v40, &v39, v15, v19, v31, v35);

  return appended;
}

unint64_t TSCEASTViewTractRefElement::appendViewTractRefElement(TSCEASTNodeArray *a1, __n128 *a2, char *a3, char *a4, void *a5, char a6, char a7, __int16 a8)
{
  v15 = a5;
  v16 = *a3;
  if (!objc_msgSend_tractCount(v15, v17, v18, v19))
  {

    v15 = 0;
  }

  v22 = *a2 != 0;
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, 68, v20, v21);
  TSCEASTNodeArray::writeUInt8(a1, v16 & 0xFC | (2 * (v15 != 0)) | v22, v24, v25);
  __src = *a4;
  sub_22120D7E8(a1, &__src, 1uLL, v26);
  if (v22)
  {
    sub_22122C498(a1, a2, v27, v28);
  }

  TSCEASTNodeArray::writeUInt8(a1, a6, v27, v28);
  TSCEASTNodeArray::writeUInt8(a1, a7, v29, v30);
  TSCEASTNodeArray::writeUInt16(a1, a8, v31, v32);
  if (v15)
  {
    TSCEASTNodeArray::writeUidTractList(a1, v15);
  }

  return var1;
}

unint64_t TSCEASTViewTractRefElement::appendViewTractRefElement(TSCEASTNodeArray *a1, uint64_t a2, char a3, char a4, __int16 a5)
{
  v14._flags = 0;
  v12._flags = sub_22122B9BC(a2);
  TSCEASTRefFlags::setPreserveFlags(&v14, &v12);
  v10 = (4 * sub_22122B9BC(a2)) & 0x10;
  v13 = v10 & 0xDF | (32 * ((sub_22122B9BC(a2) & 8) != 0));
  return TSCEASTViewTractRefElement::appendViewTractRefElement(a1, (a2 + 8), &v14, &v13, *a2, a3, a4, a5);
}

void TSCEASTViewTractRefElement::copyIntoNodeArray(TSCEASTViewTractRefElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v32.n128_u64[0] = TSCEASTViewTractRefElement::tableUID(this, a3, v7, v8);
  v32.n128_u64[1] = v9;
  if (*(this + 16))
  {
    v12 = (a3 + 24);
  }

  else
  {
    v12 = *(a3 + 2);
  }

  v13 = *(this + 1);
  v14 = *(*v12 + v13) - 29;
  v15 = v14 > 0x27;
  v16 = (1 << v14) & 0xC000200081;
  if (v15 || v16 == 0)
  {
    v19 = 0;
  }

  else
  {
    if (*(this + 16))
    {
      v18 = (a3 + 24);
    }

    else
    {
      v18 = *(a3 + 2);
    }

    v19 = *(*v18 + v13 + 1);
  }

  v31 = v19;
  v30 = TSCEASTViewTractRefElement::colonTractFlags(this, a3, v10, v11);
  v20 = (*(*this + 96))(this, a3);
  v23 = TSCEASTViewTractRefElement::columnGroupLevel(this, a3, v21, v22);
  v26 = TSCEASTViewTractRefElement::rowGroupLevel(this, a3, v24, v25);
  v29 = TSCEASTViewTractRefElement::aggIndexLevel(this, a3, v27, v28);
  TSCEASTViewTractRefElement::appendViewTractRefElement(a2, &v32, &v31, &v30, v20, v23, v26, v29);

  operator new();
}

uint64_t TSCEASTArrayElement::numColumns(TSCEASTArrayElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 2;
  return result;
}

_BYTE *TSCEASTArrayElement::setNumColumns(TSCEASTArrayElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = v5;
  }

  return result;
}

uint64_t TSCEASTArrayElement::numRows(TSCEASTArrayElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 3), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 2;
  return result;
}

_BYTE *TSCEASTArrayElement::setNumRows(TSCEASTArrayElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 3) = v5;
  }

  return result;
}

unint64_t TSCEASTArrayElement::appendArrayNode(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v5 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 25, a3, a4);
  TSCEASTNodeArray::writeUInt16(this, v5, v8, v9);
  TSCEASTNodeArray::writeUInt16(this, v4, v10, v11);
  return var1;
}

void TSCEASTArrayElement::copyIntoNodeArray(TSCEASTArrayElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTArrayElement::numColumns(this, a3, v7, v8);
  v12 = TSCEASTArrayElement::numRows(this, a3, v10, v11);
  TSCEASTArrayElement::appendArrayNode(a2, v9, v12, v13);
  operator new();
}

uint64_t TSCEASTListElement::numArgs(TSCEASTListElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 4;
  return result;
}

_BYTE *TSCEASTListElement::setNumArgs(TSCEASTListElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = v5;
  }

  return result;
}

uint64_t TSCEASTListElement::mayHaveBeenImplicitIntersection(void *a1, uint64_t a2)
{
  v4 = (*(*a1 + 48))(a1);
  if (v4 != 1)
  {
    return v4 > 1;
  }

  v5 = a1[3];
  if (a1[4] == v5)
  {
    return v4 > 1;
  }

  v6 = *v5;
  if (!v6)
  {
    return v4 > 1;
  }

  v7 = *(*v6 + 88);

  return v7(v6, a2);
}

unint64_t TSCEASTListElement::appendListNode(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 26, a3, a4);
  TSCEASTNodeArray::writeUInt32(this, v4, v7, v8);
  return var1;
}

void TSCEASTListElement::copyIntoNodeArray(TSCEASTListElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  v4 = a3;
  sub_22120CA10(a3, a2, a3, a4);
  LODWORD(v4) = (*(*this + 48))(this, v4);
  TSCEASTNodeArray::writeUInt8(a2, 26, v7, v8);
  TSCEASTNodeArray::writeUInt32(a2, v4, v9, v10);
  operator new();
}

uint64_t TSCEASTThunkElement::numBytes(TSCEASTThunkElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 8;
  return result;
}

_BYTE *TSCEASTThunkElement::setNumBytes(TSCEASTThunkElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = a2;
  }

  return result;
}

void TSCEASTThunkElement::nodeArray(TSCEASTThunkElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    *(this + 16) |= 4u;
  }

  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (*(v4 + 1) + 1), v5, v6);

  TSCEASTNodeArrayReader::readNodeArray(v4);
}

BOOL TSCEASTThunkElement::isEquivalent(TSCEASTThunkElement *this, TSCEASTIteratorBase *a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, uint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  if ((a5 & 1) == 0)
  {
    return TSCEASTElement::isEquivalent(this, a2, a3, a4, a5, a6, a7);
  }

  if (*(a4 + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *(*v8 + *(a4 + 1));
  return v9 == 27 || v9 == 56;
}

unint64_t TSCEASTThunkElement::appendThunkNodeHeader(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  v19 = a2;
  var1 = this->var1;
  if (a3 != 27 && a3 != 56)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "static size_t TSCEASTThunkElement::appendThunkNodeHeader(TSCEASTNodeArray *, size_t, TSCEASTNodeTag)", a4);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 3505, 0, "Incorrect tag for thunk node");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  TSCEASTNodeArray::writeUInt8(this, v4, a3, a4);
  sub_22120D918(this, &v19, v16, v17);
  return var1;
}

void TSCEASTThunkElement::copyIntoNodeArray(TSCEASTThunkElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTThunkElement::numBytes(this, a3, v7, v8);
  if (*(this + 16))
  {
    v11 = (a3 + 24);
  }

  else
  {
    v11 = *(a3 + 2);
  }

  TSCEASTThunkElement::appendThunkNodeHeader(a2, v9, *(*v11 + *(this + 1)), v10);
  operator new();
}

uint64_t TSCEASTLetBindElement::size(TSCEASTLetBindElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, v5[1] + 6, v6, v7);
  v8 = **v5;
  v9 = v5[1] + *(v5[1] + v8) + 8;
  v5[1] = v9;
  v10 = v9 + *(v8 + v9) + 8;
  v5[1] = v10;
  return v10 - *(this + 1);
}

BOOL TSCEASTLetBindElement::isContinuation(TSCEASTLetBindElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  v8 = *(**v4 + v7);
  v4[1] = v7 + 1;
  return v8 != 0;
}

uint64_t TSCEASTLetBindElement::symbol(TSCEASTLetBindElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 2), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 4;
  return result;
}

id TSCEASTLetBindElement::identifier(TSCEASTLetBindElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 6, v5, v6);
  v9 = v4[1];
  v10 = **v4;
  v11 = *(v9 + v10);
  v12 = v9 + 1;
  v4[1] = v12;
  if (v11)
  {
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, v12 + v10, v8);
    v4[1] = (v4[1] + v11);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void TSCEASTLetBindElement::letWhitespace(TSCEASTLetBindElement *this@<X0>, TSCEASTIteratorBase *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v6, v6[1] + 6, v7, v8);
  v11 = **v6;
  v12 = v6[1] + *(v6[1] + v11);
  v6[1] = (v12 + 8);
  v13 = *(v11 + v12 + 8);
  v14 = (v12 + 16);
  v6[1] = v14;
  if (v13)
  {
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v14 + v11, v10);
    v6[1] = (v6[1] + v13);
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  TSCEASTCompactWhitespace::whitespaceFromCombinedString(v15, a5);
}

unint64_t TSCEASTLetBindElement::appendLetNodeHeader(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, id **a3, const TSCEASTCompactWhitespace *a4, char a5)
{
  v6 = a4;
  v9 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 52, v11, v12);
  TSCEASTNodeArray::writeUInt8(this, a5, v13, v14);
  TSCEASTNodeArray::writeUInt32(this, v6, v15, v16);
  TSCEASTNodeArray::writeString(this, v9);
  v17 = TSCEASTCompactWhitespace::encodeIntoCombinedString(a3);
  TSCEASTNodeArray::writeString(this, v17);

  return var1;
}

void TSCEASTLetBindElement::copyIntoNodeArray(TSCEASTLetBindElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTLetBindElement::identifier(this, a3, v7, v8);
  TSCEASTLetBindElement::letWhitespace(this, a3, v10, v11, v18);
  v14 = TSCEASTLetBindElement::symbol(this, a3, v12, v13);
  isContinuation = TSCEASTLetBindElement::isContinuation(this, a3, v15, v16);
  TSCEASTLetBindElement::appendLetNodeHeader(a2, v9, v18, v14, isContinuation);
  v19 = v18;
  sub_22107C2C0(&v19);

  operator new();
}

unint64_t TSCEASTLetBindElement::appendEndScopeNode(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 54, a3, a4);
  return var1;
}

uint64_t TSCEASTVariableElement::symbol(TSCEASTVariableElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 4;
  return result;
}

_BYTE *TSCEASTVariableElement::setSymbol(TSCEASTVariableElement *this, const char *a2, TSCEASTIteratorBase *a3, uint64_t a4)
{
  v5 = a2;
  result = sub_22120CA10(a3, a2, a3, a4);
  if (*(this + 16))
  {
    v8 = (a3 + 24);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = *v8;
  if (v9)
  {
    *(v9 + *(this + 1) + 1) = v5;
  }

  return result;
}

unint64_t TSCEASTVariableElement::appendVariableElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, uint64_t a3, uint64_t a4)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 53, a3, a4);
  TSCEASTNodeArray::writeUInt32(this, v4, v7, v8);
  return var1;
}

void TSCEASTVariableElement::copyIntoNodeArray(TSCEASTVariableElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  v4 = a3;
  sub_22120CA10(a3, a2, a3, a4);
  LODWORD(v4) = TSCEASTVariableElement::symbol(this, v4, v7, v8);
  TSCEASTNodeArray::writeUInt8(a2, 53, v9, v10);
  TSCEASTNodeArray::writeUInt32(a2, v4, v11, v12);
  operator new();
}

void TSCEASTEndScopeElement::copyIntoNodeArray(TSCEASTEndScopeElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  TSCEASTNodeArray::writeUInt8(a2, 54, v5, v6);
  operator new();
}

uint64_t TSCEASTLambdaElement::size(TSCEASTLambdaElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, v5[1] + 5, v6, v7);
  v8 = v5[1];
  v9 = **v5;
  v10 = *(v8 + v9);
  v11 = (v8 + 1);
  v5[1] = v11;
  if (v10)
  {
    for (i = 0; i < v10; ++i)
    {
      v11 = (v11 + *(v11 + v9) + 8);
      v5[1] = v11;
    }
  }

  v13 = v11 + *(v11 + v9) + 8;
  v5[1] = v13;
  v14 = v13 + *(v9 + v13) + 8;
  v5[1] = v14;
  return v14 - *(this + 1);
}

uint64_t TSCEASTLambdaElement::firstSymbol(TSCEASTLambdaElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 4;
  return result;
}

id TSCEASTLambdaElement::identifiers(TSCEASTLambdaElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 5, v5, v6);
  v7 = v4[1];
  v8 = *(v7 + **v4);
  v4[1] = (v7 + 1);
  v11 = objc_opt_new();
  if (v8)
  {
    for (i = 0; i < v8; ++i)
    {
      v13 = v4[1];
      v14 = **v4;
      v15 = *(v13 + v14);
      v16 = v13 + 1;
      v4[1] = v16;
      if (v15)
      {
        v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v16 + v14, v10);
        v4[1] = (v4[1] + v15);
        objc_msgSend_addObject_(v11, v18, v17, v19);
      }

      else
      {
        v17 = 0;
        objc_msgSend_addObject_(v11, v9, 0, v10);
      }
    }
  }

  return v11;
}

uint64_t TSCEASTLambdaElement::numIdentifiers(TSCEASTLambdaElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 5), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 1;
  return result;
}

void TSCEASTLambdaElement::whitespaceBefore(TSCEASTLambdaElement *this@<X0>, TSCEASTIteratorBase *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v6, v6[1] + 5, v7, v8);
  v11 = v6[1];
  v12 = **v6;
  v13 = *(v11 + v12);
  v14 = (v11 + 1);
  v6[1] = v14;
  if (v13)
  {
    for (i = 0; i < v13; ++i)
    {
      v14 = (v14 + *(v14 + v12) + 8);
      v6[1] = v14;
    }
  }

  v16 = *(v14 + v12);
  v17 = v14 + 1;
  v6[1] = v17;
  if (v16)
  {
    v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v17 + v12, v10);
    v6[1] = (v6[1] + v16);
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;
  TSCEASTCompactWhitespace::whitespaceFromCombinedString(v18, a5);
}

void TSCEASTLambdaElement::whitespaceAfter(TSCEASTLambdaElement *this@<X0>, TSCEASTIteratorBase *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v6 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v6, v6[1] + 5, v7, v8);
  v11 = v6[1];
  v12 = **v6;
  v13 = *(v11 + v12);
  v14 = (v11 + 1);
  v6[1] = v14;
  if (v13)
  {
    for (i = 0; i < v13; ++i)
    {
      v14 = (v14 + *(v14 + v12) + 8);
      v6[1] = v14;
    }
  }

  v16 = v14 + *(v14 + v12);
  v6[1] = (v16 + 8);
  v17 = *(v12 + v16 + 8);
  v18 = (v16 + 16);
  v6[1] = v18;
  if (v17)
  {
    v19 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, v18 + v12, v10);
    v6[1] = (v6[1] + v17);
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;
  TSCEASTCompactWhitespace::whitespaceFromCombinedString(v19, a5);
}

unint64_t TSCEASTLambdaElement::appendLambdaNode(TSCEASTNodeArray *a1, void *a2, id **a3, id **a4, int a5)
{
  v9 = a2;
  v39 = a5;
  var1 = a1->var1;
  TSCEASTNodeArray::writeUInt8(a1, 55, v11, v12);
  sub_22134351C(a1, &v39, v13, v14);
  v18 = objc_msgSend_count(v9, v15, v16, v17);
  v22 = v18;
  if (v18 >= 0xFF)
  {
    v23 = MEMORY[0x277D81150];
    v24 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "static size_t TSCEASTLambdaElement::appendLambdaNode(TSCEASTNodeArray *, NSArray<NSString *> *__strong, const TSCEASTCompactWhitespace &, const TSCEASTCompactWhitespace &, TSCESymbol)", v21);
    v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v25, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElements.mm", v26);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v23, v28, v24, v27, 3748, 0, "Too many identifiers, limited to uint8_t, atm.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v29, v30, v31);
  }

  TSCEASTNodeArray::writeUInt8(a1, v22, v20, v21);
  if (v22)
  {
    v34 = 0;
    do
    {
      v35 = objc_msgSend_objectAtIndexedSubscript_(v9, v32, v34, v33);
      TSCEASTNodeArray::writeString(a1, v35);

      ++v34;
    }

    while (v34 < v22);
  }

  v36 = TSCEASTCompactWhitespace::encodeIntoCombinedString(a3);
  TSCEASTNodeArray::writeString(a1, v36);

  v37 = TSCEASTCompactWhitespace::encodeIntoCombinedString(a4);
  TSCEASTNodeArray::writeString(a1, v37);

  return var1;
}

void sub_22134351C(TSCEASTNodeArray *this, const char *a2, uint64_t a3, uint64_t a4)
{
  if (!this->var0)
  {
    v6 = MEMORY[0x277D81150];
    v7 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "void TSCEASTNodeArray::write(const T &) [T = unsigned int]", a4);
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeArray.h", v9);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v6, v11, v7, v10, 171, 0, "invalid nil value for '%{public}s'", "_nodeArray");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v12, v13, v14);
  }

  var1 = this->var1;
  if (this->var2 - var1 < 4 || (var0 = this->var0) == 0)
  {
    TSCEASTNodeArray::resizeCapacity(this, 4uLL, a3, a4);
    var0 = this->var0;
    if (!this->var0)
    {
      return;
    }

    var1 = this->var1;
  }

  *&var0[var1] = *a2;
  this->var1 += 4;
}

void TSCEASTLambdaElement::copyIntoNodeArray(TSCEASTLambdaElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTLambdaElement::identifiers(this, a3, v7, v8);
  TSCEASTLambdaElement::whitespaceBefore(this, a3, v10, v11, v18);
  TSCEASTLambdaElement::whitespaceAfter(this, a3, v12, v13, v17);
  Symbol = TSCEASTLambdaElement::firstSymbol(this, a3, v14, v15);
  TSCEASTLambdaElement::appendLambdaNode(a2, v9, v18, v17, Symbol);
  v19 = v17;
  sub_22107C2C0(&v19);
  v17[0] = v18;
  sub_22107C2C0(v17);

  operator new();
}

void sub_221343744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  sub_22107C2C0(&a10);

  _Unwind_Resume(a1);
}

TSCECategoryRef *TSCEASTCategoryRefElement::categoryRef(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, v4[1] + 1, v5, v6);

  return TSCEASTNodeArrayReader::readCategoryRef(v4);
}

TSCECategoryRef *TSCEASTCategoryRefElement::mutableCategoryRef(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTCategoryRefElement::categoryRef(this, a2, a3, a4);
  v8 = v4;
  if (v4)
  {
    v9 = objc_msgSend_copy(v4, v5, v6, v7);
  }

  else
  {
    v9 = objc_opt_new();
  }

  v10 = v9;

  return v10;
}

void TSCEASTCategoryRefElement::setCategoryRef(TSCEASTCategoryRefElement *this, TSCECategoryRef *a2, TSCEASTIteratorBase *a3)
{
  v9 = a2;
  sub_22120CA10(a3, v5, v6, v7);
  *(this + 1) = TSCEASTCategoryRefElement::appendCategoryRefElement((a3 + 24), v9, v8);
  *(this + 16) |= 1u;
}

unint64_t TSCEASTCategoryRefElement::appendCategoryRefElement(TSCEASTNodeArray *this, TSCEASTNodeArray *a2, TSCECategoryRef *a3)
{
  v4 = a2;
  var1 = this->var1;
  TSCEASTNodeArray::writeUInt8(this, 66, v6, v7);
  v72.n128_u64[0] = objc_msgSend_groupByUid(v4, v8, v9, v10);
  v72.n128_u64[1] = v11;
  *&v14 = sub_22122C498(this, &v72, v12, v13).n128_u64[0];
  v72.n128_u64[0] = objc_msgSend_columnUid(v4, v15, v16, v17, v14);
  v72.n128_u64[1] = v18;
  *&v21 = sub_22122C498(this, &v72, v19, v20).n128_u64[0];
  v72.n128_u64[0] = objc_msgSend_relativeGroupUid(v4, v22, v23, v24, v21);
  v72.n128_u64[1] = v25;
  *&v28 = sub_22122C498(this, &v72, v26, v27).n128_u64[0];
  v72.n128_u64[0] = objc_msgSend_absoluteGroupUid(v4, v29, v30, v31, v28);
  v72.n128_u64[1] = v32;
  *&v35 = sub_22122C498(this, &v72, v33, v34).n128_u64[0];
  v39 = objc_msgSend_preserveFlags(v4, v36, v37, v38, v35);
  TSCEASTNodeArray::writeUInt8(this, v39, v40, v41);
  v45 = objc_msgSend_type(v4, v42, v43, v44);
  TSCEASTNodeArray::writeUInt8(this, v45, v46, v47);
  v51 = objc_msgSend_groupLevel(v4, v48, v49, v50);
  TSCEASTNodeArray::writeUInt8(this, v51, v52, v53);
  v57 = objc_msgSend_aggrIndexLevel(v4, v54, v55, v56);
  TSCEASTNodeArray::writeUInt16(this, v57, v58, v59);
  v72.n128_u16[0] = objc_msgSend_relativeColumn(v4, v60, v61, v62);
  sub_22133FA18(this, &v72, v63, v64);
  v68 = objc_msgSend_options(v4, v65, v66, v67);
  TSCEASTNodeArray::writeUInt8(this, v68, v69, v70);

  return var1;
}

uint64_t TSCEASTCategoryRefElement::groupByUid(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 1), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 16;
  return result;
}

uint64_t TSCEASTCategoryRefElement::columnUid(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 17), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 16;
  return result;
}

uint64_t TSCEASTCategoryRefElement::relativeGroupUid(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 33), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 16;
  return result;
}

uint64_t TSCEASTCategoryRefElement::absoluteGroupUid(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v4 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v4, (v4[1] + 49), v5, v6);
  v7 = v4[1];
  result = *(**v4 + v7);
  v4[1] = v7 + 16;
  return result;
}

uint64_t TSCEASTCategoryRefElement::size(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, uint64_t a3, uint64_t a4)
{
  v5 = TSCEASTIteratorBase::readerForElement(a2, this, a3, a4);
  sub_22120C7F0(v5, (v5[1] + 73), v6, v7);
  return v5[1] - *(this + 1);
}

void TSCEASTCategoryRefElement::copyIntoNodeArray(TSCEASTCategoryRefElement *this, TSCEASTNodeArray *a2, TSCEASTRewriter *a3, uint64_t a4)
{
  sub_22120CA10(a3, a2, a3, a4);
  v9 = TSCEASTCategoryRefElement::categoryRef(this, a3, v7, v8);
  TSCEASTCategoryRefElement::appendCategoryRefElement(a2, v9, v10);

  operator new();
}

BOOL TSCEASTCategoryRefElement::isEquivalent(TSCEASTCategoryRefElement *this, TSCEASTIteratorBase *a2, TSCEASTIteratorBase *a3, TSCEASTElement *a4, uint64_t a5, TSCECellRef *a6, TSCECellRef *a7)
{
  if ((a5 & 2) != 0)
  {
    if (*(this + 16))
    {
      v10 = (a2 + 24);
    }

    else
    {
      v10 = *(a2 + 2);
    }

    v11 = *(*v10 + *(this + 1));
    if (*(a4 + 16))
    {
      v12 = (a3 + 24);
    }

    else
    {
      v12 = *(a3 + 2);
    }

    if (v11 != *(*v12 + *(a4 + 1)))
    {
      return 0;
    }

    v13 = TSCEASTCategoryRefElement::categoryRef(this, a2, a3, a4);
    v16 = TSCEASTCategoryRefElement::categoryRef(a4, a3, v14, v15);
    if ((objc_msgSend_isEqual_(v13, v17, v16, v18) & 1) == 0)
    {
      v23 = objc_msgSend_groupByUid(v13, v19, v20, v21);
      v25 = v24;
      v22 = 0;
      if (v23 != objc_msgSend_groupByUid(v16, v24, v26, v27) || v25 != v28)
      {
        goto LABEL_22;
      }

      v31 = objc_msgSend_groupLevel(v13, v28, v29, v30);
      if (v31 != objc_msgSend_groupLevel(v16, v32, v33, v34))
      {
        goto LABEL_21;
      }

      v38 = objc_msgSend_columnUid(v13, v35, v36, v37);
      v40 = v39;
      v22 = 0;
      if (v38 != objc_msgSend_columnUid(v16, v39, v41, v42) || v40 != v43)
      {
        goto LABEL_22;
      }

      v46 = objc_msgSend_preserveFlags(v13, v43, v44, v45);
      if ((v46 ^ objc_msgSend_preserveFlags(v16, v47, v48, v49)))
      {
LABEL_21:
        v22 = 0;
        goto LABEL_22;
      }

      v53 = objc_msgSend_absoluteGroupUid(v13, v50, v51, v52);
      v55 = v54;
      if (v53 != objc_msgSend_absoluteGroupUid(v16, v54, v56, v57) || v55 != v58)
      {
        v61 = objc_msgSend_relativeGroupUid(v13, v58, v59, v60);
        v63 = v62;
        v22 = 0;
        if (v61 != objc_msgSend_relativeGroupUid(v16, v62, v64, v65) || v63 != v66)
        {
          goto LABEL_22;
        }

        if (!objc_msgSend_relativeGroupUid(v13, v66, v67, v68))
        {
          v22 = v69 != 0;
          goto LABEL_22;
        }
      }
    }

    v22 = 1;
LABEL_22:

    return v22;
  }

  return TSCEASTElement::isEquivalent(this, a2, a3, a4, a5, a6, a7);
}

void sub_221343F5C(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344030(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344184(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344258(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344694(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344758(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_22134481C(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344B28(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344C40(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344D0C(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344DE0(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

void sub_221344FA4(TSCEASTElementWithChildren *a1)
{
  TSCEASTElementWithChildren::~TSCEASTElementWithChildren(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_2213450E4(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2834A5408;
  v3 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  *a1 = &unk_2834A5370;
  *(a1 + 8) = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v5 = *(a2 + 24);
  for (i = *(a2 + 32); v5 != i; v5 += 8)
  {
    v7 = (*(**v5 + 16))();
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    if (v9 >= v8)
    {
      v11 = (v9 - *v4) >> 3;
      if ((v11 + 1) >> 61)
      {
        sub_22107C148();
      }

      v12 = v8 - *v4;
      v13 = v12 >> 2;
      if (v12 >> 2 <= (v11 + 1))
      {
        v13 = v11 + 1;
      }

      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        sub_221122DC8(v4, v14);
      }

      v15 = (8 * v11);
      *v15 = v7;
      v10 = 8 * v11 + 8;
      v16 = *(a1 + 24);
      v17 = *(a1 + 32) - v16;
      v18 = v15 - v17;
      memcpy(v15 - v17, v16, v17);
      v19 = *(a1 + 24);
      *(a1 + 24) = v18;
      *(a1 + 32) = v10;
      *(a1 + 40) = 0;
      if (v19)
      {
        operator delete(v19);
      }
    }

    else
    {
      *v9 = v7;
      v10 = (v9 + 1);
    }

    *(a1 + 32) = v10;
  }

  return a1;
}

void sub_221345260(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_221345280(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_221122DC8(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void *sub_2213457C8(void *a1, void *a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_221345818(a1, a2);
  return a1;
}

uint64_t sub_221345818(uint64_t a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = (a1 + 8);
    sub_221279750(a1, *(a1 + 8));
    *a1 = v4;
    *(a1 + 16) = 0;
    *v4 = 0;
    v7 = *a2;
    v5 = a2 + 1;
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        v13 = (v6 + 4);
        v8 = sub_2213460C4(a1, v6 + 4, &unk_2217E1797, &v13);
        if (v6 != v8)
        {
          *(v8 + 80) = *(v6 + 20);
          sub_2211F2900((v8 + 48), v6[8], 0);
        }

        v9 = v6[1];
        if (v9)
        {
          do
          {
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
        }

        else
        {
          do
          {
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }

  return a1;
}

void *sub_221345900(uint64_t **a1, uint64_t a2)
{
  v5 = a2;
  v3 = sub_2213460C4(a1, a2, &unk_2217E1797, &v5);
  return sub_2210C2B00((v3 + 48), (a2 + 16), (a2 + 16));
}

void sub_221345950(uint64_t **a1, void *a2)
{
  v2 = a2 + 1;
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = a1 + 1;
    do
    {
      v6 = sub_22112C8D0(a1, v3 + 4);
      if (v5 == v6)
      {
        v13 = (v3 + 4);
        v9 = sub_2213460C4(a1, v3 + 4, &unk_2217E1797, &v13);
        if (v3 != v9)
        {
          *(v9 + 80) = *(v3 + 20);
          sub_2211F2900((v9 + 48), v3[8], 0);
        }
      }

      else
      {
        v7 = v3[8];
        if (v7)
        {
          v8 = v6;
          do
          {
            sub_2210C2B00(v8 + 6, v7 + 2, v7 + 1);
            v7 = *v7;
          }

          while (v7);
        }
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
    }

    while (v11 != v2);
  }
}

void *sub_221345A60(uint64_t a1, unint64_t *a2)
{
  result = sub_22112C8D0(a1, a2);
  if ((a1 + 8) != result)
  {
    v5 = result;
    result = sub_2211F2EF4(result + 6, a2 + 2);
    if (!v5[9])
    {

      return sub_2213461D4(a1, a2);
    }
  }

  return result;
}

uint64_t sub_221345ADC(void *a1)
{
  v3 = *a1;
  v1 = a1 + 1;
  v2 = v3;
  if (v3 == v1)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v2[1];
    v6 = v2;
    if (v5)
    {
      do
      {
        v7 = v5;
        v5 = *v5;
      }

      while (v5);
    }

    else
    {
      do
      {
        v7 = v6[2];
        v8 = *v7 == v6;
        v6 = v7;
      }

      while (!v8);
    }

    v4 += v2[9];
    v2 = v7;
  }

  while (v7 != v1);
  return v4;
}

uint64_t sub_221345B40(void *a1)
{
  v1 = a1 + 1;
  v2 = *a1;
  result = 1;
  if (v2 != v1)
  {
    while (1)
    {
      v4 = v2[9];
      v5 = v4 == 0;
      if (v4)
      {
        break;
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      result = v5 & result;
      v2 = v7;
      if (v7 == v1)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

void sub_221345BAC(void *a1, void *a2)
{
  v3 = a2;
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = objc_autoreleasePoolPush();
      v15 = 0;
      v8 = v5[8];
      if (v8)
      {
        while (1)
        {
          TSKMakeUIDStructCoord();
          v16[0] = v13;
          v16[1] = v14;
          v3[2](v3, v16, &v15);
          v9 = v15;
          if (v15)
          {
            break;
          }

          v8 = *v8;
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        v9 = 1;
      }

      else
      {
        v9 = 0;
      }

LABEL_8:
      objc_autoreleasePoolPop(v7);
      if (v9)
      {
        break;
      }

      v10 = v5[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v4);
  }
}

void sub_221345CC8(TSKUIDStruct **a1, uint64_t a2)
{
  v2 = a1 + 1;
  v3 = *a1;
  if (*a1 != (a1 + 1))
  {
    do
    {
      v33 = v3[2];
      v5 = *(a2 + 32);
      if (!v5)
      {
        goto LABEL_7;
      }

      v6 = *(a2 + 24);
      v7 = *v5;
      if (v6 < *v5)
      {
        *(a2 + 24) = v6 + 1;
        v8 = *&v5[2 * v6 + 2];
        goto LABEL_9;
      }

      if (v7 == *(a2 + 28))
      {
LABEL_7:
        google::protobuf::internal::RepeatedPtrFieldBase::Reserve((a2 + 16));
        v5 = *(a2 + 32);
        v7 = *v5;
      }

      *v5 = v7 + 1;
      v8 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidCoordSetArchive_ColumnEntry>(*(a2 + 16));
      v9 = *(a2 + 24);
      v10 = *(a2 + 32) + 8 * v9;
      *(a2 + 24) = v9 + 1;
      *(v10 + 8) = v8;
LABEL_9:
      *(v8 + 16) |= 1u;
      v11 = *(v8 + 48);
      if (!v11)
      {
        v12 = *(v8 + 8);
        if (v12)
        {
          v12 = *(v12 & 0xFFFFFFFFFFFFFFFELL);
        }

        v11 = MEMORY[0x223DA0360](v12);
        *(v8 + 48) = v11;
      }

      TSKUIDStruct::saveToMessage(&v33, v11);
      v30 = 0;
      v31 = 0;
      v32 = 0;
      lower = v3[4]._lower;
      if (lower)
      {
        v14 = 0;
        v15 = v3[4]._lower;
        do
        {
          ++v14;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        v14 = 0;
      }

      sub_221346230(&v30, 0, lower, 0, v14);
      v17 = 126 - 2 * __clz(v31 - v30);
      if (v31 == v30)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      sub_221287C38(v30, v31, &v34, v18, 1, v16);
      v19 = v30;
      v20 = v31;
      if (v30 != v31)
      {
        while (1)
        {
          v21 = *(v8 + 40);
          if (!v21)
          {
            goto LABEL_27;
          }

          v22 = *(v8 + 32);
          v23 = *v21;
          if (v22 >= *v21)
          {
            break;
          }

          *(v8 + 32) = v22 + 1;
          v24 = *&v21[2 * v22 + 2];
LABEL_29:
          TSKUIDStruct::saveToMessage(v19++, v24);
          if (v19 == v20)
          {
            v19 = v30;
            goto LABEL_31;
          }
        }

        if (v23 == *(v8 + 36))
        {
LABEL_27:
          google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v8 + 24));
          v21 = *(v8 + 40);
          v23 = *v21;
        }

        *v21 = v23 + 1;
        v24 = MEMORY[0x223DA0360](*(v8 + 24));
        v25 = *(v8 + 32);
        v26 = *(v8 + 40) + 8 * v25;
        *(v8 + 32) = v25 + 1;
        *(v26 + 8) = v24;
        goto LABEL_29;
      }

LABEL_31:
      if (v19)
      {
        v31 = v19;
        operator delete(v19);
      }

      upper = v3->_upper;
      if (upper)
      {
        do
        {
          v28 = upper;
          upper = upper->_lower;
        }

        while (upper);
      }

      else
      {
        do
        {
          v28 = v3[1]._lower;
          v29 = *v28 == v3;
          v3 = v28;
        }

        while (!v29);
      }

      v3 = v28;
    }

    while (v28 != v2);
  }
}

void sub_221345F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221345F58(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 8);
  sub_221279750(a1, *(a1 + 8));
  *a1 = v4;
  *(a1 + 16) = 0;
  *v4 = 0;
  v6 = *(a2 + 24);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = *(*(a2 + 32) + 8 * i + 8);
      v19 = 0;
      v20 = 0;
      if (*(v8 + 48))
      {
        v9 = *(v8 + 48);
      }

      else
      {
        v9 = MEMORY[0x277D809E0];
      }

      v19 = TSKUIDStruct::loadFromMessage(v9, v5);
      v20 = v10;
      v16 = 0u;
      v17 = 0u;
      v18 = 1065353216;
      v11 = *(v8 + 32);
      if (v11 >= 1)
      {
        v12 = 8;
        do
        {
          v15 = 0uLL;
          *&v15 = TSKUIDStruct::loadFromMessage(*(*(v8 + 40) + v12), v10);
          *(&v15 + 1) = v13;
          sub_2210C2B00(&v16, &v15, &v15);
          v12 += 8;
          --v11;
        }

        while (v11);
      }

      *&v15 = &v19;
      v14 = sub_2213460C4(a1, &v19, &unk_2217E1797, &v15);
      if ((v14 + 48) != &v16)
      {
        *(v14 + 80) = v18;
        sub_2211F2900((v14 + 48), v17, 0);
      }

      sub_2210BDEC0(&v16);
    }
  }
}

void sub_2213460AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2210BDEC0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2213460C4(uint64_t **a1, unint64_t *a2, uint64_t a3, __int128 **a4)
{
  v4 = *sub_22112C810(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t sub_221346188(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_2210BDEC0(v2 + 48);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t sub_2213461D4(uint64_t **a1, unint64_t *a2)
{
  v3 = sub_22112C8D0(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  sub_22112C950(a1, v3);
  sub_2210BDEC0((v4 + 6));
  operator delete(v4);
  return 1;
}

char *sub_221346230(void *a1, char *__src, void *a3, void *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return __src;
  }

  v7 = a3;
  v9 = a1[1];
  v10 = a1[2];
  if (a5 <= (v10 - v9) >> 4)
  {
    v16 = (v9 - __src) >> 4;
    if (v16 >= a5)
    {
      v21 = &__src[16 * a5];
      v22 = &v9[-16 * a5];
      v23 = a1[1];
      while (v22 < v9)
      {
        v24 = *v22;
        v22 += 16;
        *v23++ = v24;
      }

      a1[1] = v23;
      if (v9 != v21)
      {
        memmove(&__src[16 * a5], __src, v9 - v21);
      }

      *__src = *(v7 + 1);
      if (a5 != 1)
      {
        v25 = __src + 16;
        v26 = a5 + 1;
        do
        {
          v7 = *v7;
          *v25 = *(v7 + 1);
          v25 += 16;
          --v26;
        }

        while (v26 > 2);
      }
    }

    else
    {
      v17 = a3;
      if (v16 >= 1)
      {
        v18 = v16 + 1;
        v17 = a3;
        do
        {
          v17 = *v17;
          --v18;
        }

        while (v18 > 1);
      }

      v19 = a1[1];
      if (v17 == a4)
      {
        v20 = a1[1];
      }

      else
      {
        v35 = v17;
        v20 = a1[1];
        do
        {
          *v20 = *(v35 + 1);
          v20 += 16;
          v35 = *v35;
          ++v19;
        }

        while (v35 != a4);
      }

      a1[1] = v19;
      if (v16 >= 1)
      {
        v36 = &__src[16 * a5];
        v37 = &v19[-a5];
        v38 = v19;
        while (v37 < v9)
        {
          v39 = *v37;
          v37 += 16;
          *v38++ = v39;
        }

        a1[1] = v38;
        if (v20 != v36)
        {
          memmove(&__src[16 * a5], __src, v19 - v36);
        }

        if (v17 != v7)
        {
          v40 = __src;
          do
          {
            *v40 = *(v7 + 1);
            v40 += 16;
            v7 = *v7;
          }

          while (v7 != v17);
        }
      }
    }

    return __src;
  }

  v11 = *a1;
  v12 = a5 + (&v9[-*a1] >> 4);
  if (v12 >> 60)
  {
    sub_22107C148();
  }

  v13 = __src - v11;
  v14 = v10 - v11;
  if (v14 >> 3 > v12)
  {
    v12 = v14 >> 3;
  }

  if (v14 >= 0x7FFFFFFFFFFFFFF0)
  {
    v15 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v15 = v12;
  }

  if (v15)
  {
    sub_221086F74(a1, v15);
  }

  v27 = 16 * (v13 >> 4);
  v28 = 16 * a5;
  v29 = v27;
  do
  {
    *v29++ = *(v7 + 1);
    v7 = *v7;
    v28 -= 16;
  }

  while (v28);
  memcpy((v27 + 16 * a5), __src, a1[1] - __src);
  v30 = *a1;
  v31 = v27 + 16 * a5 + a1[1] - __src;
  a1[1] = __src;
  v32 = (__src - v30);
  v33 = (v27 - (__src - v30));
  memcpy(v33, v30, v32);
  v34 = *a1;
  *a1 = v33;
  a1[1] = v31;
  a1[2] = 0;
  if (v34)
  {
    operator delete(v34);
  }

  return v27;
}

void sub_2213465FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221346628(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221347604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v11;

  _Unwind_Resume(a1);
}

void sub_221347C3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_221347C5C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_indexesOfVisibleInRange_(*(*(a1 + 32) + 8), a2, a2, a3);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v11 = v4;
  if (v7)
  {
    objc_msgSend_addIndexes_(v7, v4, v4, v6);
  }

  else
  {
    v8 = objc_msgSend_mutableCopy(v4, v4, v5, v6);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_2213481A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_2213481C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_indexesOfVisibleInRange_(*(*(a1 + 32) + 16), a2, a2, a3);
  v7 = *(*(*(a1 + 40) + 8) + 40);
  v11 = v4;
  if (v7)
  {
    objc_msgSend_addIndexes_(v7, v4, v4, v6);
  }

  else
  {
    v8 = objc_msgSend_mutableCopy(v4, v4, v5, v6);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }
}

void sub_22134A4F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, void *a44, void *a45)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v50 - 224), 8);
  _Block_object_dispose((v50 - 192), 8);
  v52 = *(v50 - 144);
  if (v52)
  {
    *(v50 - 136) = v52;
    operator delete(v52);
  }

  _Unwind_Resume(a1);
}

__n128 sub_22134A5F0(__n128 *a1, __n128 *a2)
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

void sub_22134A614(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22134A62C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_removeAllIndexes(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_strokeLayerForLeftSideOfColumn_(*(a1 + 40), v6, a2, v7);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_22134A964;
  v56[3] = &unk_278462E90;
  v57 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v8, v11, v9, v10, v56);
  v14 = objc_msgSend_strokeLayerForRightSideOfColumn_(*(a1 + 40), v12, a2, v13);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_22134A96C;
  v54[3] = &unk_278462E90;
  v55 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v14, v17, v15, v16, v54);
  v24 = objc_msgSend_count(*(a1 + 32), v18, v19, v20);
  v25 = *(a1 + 48);
  if (v24)
  {
    if (!objc_msgSend_count(v25, v21, v22, v23))
    {
      *(*(*(a1 + 56) + 8) + 24) = a2;
      goto LABEL_8;
    }

    if ((objc_msgSend_isEqual_(*(a1 + 32), v26, *(a1 + 48), v27) & 1) == 0)
    {
      v31 = *(a1 + 48);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_22134A974;
      v51[3] = &unk_278462EB8;
      v53 = a2;
      v52 = *(a1 + 56);
      objc_msgSend_enumerateRangesUsingBlock_(v31, v28, v51, v30);
      *(*(*(a1 + 56) + 8) + 24) = a2;
      objc_msgSend_removeAllIndexes(*(a1 + 48), v32, v33, v34);
LABEL_8:
      objc_msgSend_addIndexes_(*(a1 + 48), v26, *(a1 + 32), v27);
    }
  }

  else if (objc_msgSend_count(v25, v21, v22, v23))
  {
    v35 = *(a1 + 48);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22134A9C4;
    v48[3] = &unk_278462EB8;
    v50 = a2;
    v49 = *(a1 + 56);
    objc_msgSend_enumerateRangesUsingBlock_(v35, v28, v48, v30);
    *(*(*(a1 + 56) + 8) + 24) = 0x7FFF;
    objc_msgSend_removeAllIndexes(*(a1 + 48), v36, v37, v38);
  }

  if (*(a1 + 88) == a2 && objc_msgSend_count(*(a1 + 48), v28, v29, v30))
  {
    v41 = *(a1 + 48);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22134AA14;
    v45[3] = &unk_278462EB8;
    v47 = *(a1 + 88);
    v46 = *(a1 + 56);
    objc_msgSend_enumerateRangesUsingBlock_(v41, v39, v45, v40);
    *(*(*(a1 + 56) + 8) + 24) = 0x7FFF;
    objc_msgSend_removeAllIndexes(*(a1 + 48), v42, v43, v44);
  }
}

void sub_22134A974(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(a1 + 48);
  *&v6 = a2 | (v4 << 32);
  *(&v6 + 1) = (v5 - v4) | (a3 << 32);
  sub_221083454(*(v3 + 8) + 48, &v6);
}

void sub_22134A9C4(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(a1 + 48);
  *&v6 = a2 | (v4 << 32);
  *(&v6 + 1) = (v5 - v4) | (a3 << 32);
  sub_221083454(*(v3 + 8) + 48, &v6);
}

void sub_22134AA14(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = *(a1 + 48);
  *&v6 = a2 | (v4 << 32);
  *(&v6 + 1) = (v5 - v4 + 1) | (a3 << 32);
  sub_221083454(*(v3 + 8) + 48, &v6);
}

void sub_22134AA68(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  objc_msgSend_removeAllIndexes(*(a1 + 32), a2, a3, a4);
  v8 = objc_msgSend_strokeLayerForTopOfRow_(*(a1 + 40), v6, a2, v7);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_22134ADA0;
  v56[3] = &unk_278462E90;
  v57 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v8, v11, v9, v10, v56);
  v14 = objc_msgSend_strokeLayerForBottomOfRow_(*(a1 + 40), v12, a2, v13);
  v15 = *(a1 + 72);
  v16 = *(a1 + 80);
  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = sub_22134ADA8;
  v54[3] = &unk_278462E90;
  v55 = *(a1 + 32);
  objc_msgSend_enumerateStrokesInRange_usingBlock_(v14, v17, v15, v16, v54);
  v24 = objc_msgSend_count(*(a1 + 32), v18, v19, v20);
  v25 = *(a1 + 48);
  if (v24)
  {
    if (!objc_msgSend_count(v25, v21, v22, v23))
    {
      *(*(*(a1 + 56) + 8) + 24) = a2;
      goto LABEL_8;
    }

    if ((objc_msgSend_isEqual_(*(a1 + 32), v26, *(a1 + 48), v27) & 1) == 0)
    {
      v31 = *(a1 + 48);
      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = sub_22134ADB0;
      v51[3] = &unk_278462F08;
      v53 = a2;
      v52 = *(a1 + 56);
      objc_msgSend_enumerateRangesUsingBlock_(v31, v28, v51, v30);
      *(*(*(a1 + 56) + 8) + 24) = a2;
      objc_msgSend_removeAllIndexes(*(a1 + 48), v32, v33, v34);
LABEL_8:
      objc_msgSend_addIndexes_(*(a1 + 48), v26, *(a1 + 32), v27);
    }
  }

  else if (objc_msgSend_count(v25, v21, v22, v23))
  {
    v35 = *(a1 + 48);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = sub_22134ADFC;
    v48[3] = &unk_278462F08;
    v50 = a2;
    v49 = *(a1 + 56);
    objc_msgSend_enumerateRangesUsingBlock_(v35, v28, v48, v30);
    *(*(*(a1 + 56) + 8) + 24) = 0x7FFFFFFF;
    objc_msgSend_removeAllIndexes(*(a1 + 48), v36, v37, v38);
  }

  if (*(a1 + 88) == a2 && objc_msgSend_count(*(a1 + 48), v28, v29, v30))
  {
    v41 = *(a1 + 48);
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = sub_22134AE48;
    v45[3] = &unk_278462F08;
    v47 = *(a1 + 88);
    v46 = *(a1 + 56);
    objc_msgSend_enumerateRangesUsingBlock_(v41, v39, v45, v40);
    *(*(*(a1 + 56) + 8) + 24) = 0x7FFFFFFF;
    objc_msgSend_removeAllIndexes(*(a1 + 48), v42, v43, v44);
  }
}

void sub_22134ADB0(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = a3 | ((*(a1 + 48) - v4) << 32);
  *&v6 = v4 & 0xFFFF0000FFFFFFFFLL | (a2 << 32);
  *(&v6 + 1) = v5;
  sub_221083454(*(v3 + 8) + 48, &v6);
}

void sub_22134ADFC(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = a3 | ((*(a1 + 48) - v4) << 32);
  *&v6 = v4 & 0xFFFF0000FFFFFFFFLL | (a2 << 32);
  *(&v6 + 1) = v5;
  sub_221083454(*(v3 + 8) + 48, &v6);
}

void sub_22134AE48(uint64_t a1, unsigned __int16 a2, unsigned int a3)
{
  v3 = *(a1 + 40);
  v4 = *(*(*(a1 + 32) + 8) + 24);
  v5 = a3 | ((*(a1 + 48) - v4 + 1) << 32);
  *&v6 = v4 & 0xFFFF0000FFFFFFFFLL | (a2 << 32);
  *(&v6 + 1) = v5;
  sub_221083454(*(v3 + 8) + 48, &v6);
}

uint64_t sub_22134B248(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3)
{
  TSCEASTIteratorBase::TSCEASTIteratorBase(a1, a2, a3);
  *v4 = &unk_2834A67A8;
  v5 = v4[2];
  v4[13] = v5;
  v4[15] = 0;
  v4[16] = 0;
  v4[14] = 0;
  if (v5)
  {
    v5 = *(v5 + 8);
  }

  *(a1 + 120) = v5;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 96) = 1;
  *(a1 + 136) = malloc_type_malloc(0x60uLL, 0xA7149BE9uLL);
  return a1;
}

void sub_22134B2D8(_Unwind_Exception *a1)
{
  sub_22120E388(v2);
  TSCEASTIteratorBase::~TSCEASTIteratorBase(v1, v4);
  _Unwind_Resume(a1);
}

void sub_22134B2F8(TSCEASTIteratorBase *a1)
{
  *a1 = &unk_2834A67A8;
  v2 = *(a1 + 18);
  if (v2)
  {
    (*(*v2 + 32))(v2);
    *(a1 + 18) = 0;
  }

  v3 = *(a1 + 17);
  if (v3)
  {
    free(v3);
  }

  sub_22120E388(a1 + 104);

  TSCEASTIteratorBase::~TSCEASTIteratorBase(a1, v4);
}

void sub_22134B394(TSCEASTIteratorBase *a1)
{
  sub_22134B2F8(a1);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22134B3CC(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    if ((*(v2 + 16) & 4) != 0 && (TSCEASTElement::tag(v2, a1) == 27 || TSCEASTElement::tag(*(a1 + 144), a1) == 56))
    {
      v3 = *(a1 + 128);
      if (v3)
      {
        v4 = *(*(a1 + 128) + 8);
        if (v4 != *v3)
        {
          v5 = *(v4 - 8);
          TSCEASTNodeArrayReader::popEndPoint((a1 + 104));
          sub_22120C7F0((a1 + 104), v5, v6, v7);
        }
      }
    }

    v8 = *(a1 + 144);
    if (v8)
    {
      (*(*v8 + 32))(v8);
      *(a1 + 144) = 0;
    }
  }

  v9 = *(a1 + 112);
  v10 = *(a1 + 128);
  if (v9 >= *(a1 + 120))
  {
    if (!v10 || *(*(a1 + 128) + 8) == *v10)
    {
      return 0;
    }

LABEL_20:
    TSCEASTNodeArrayReader::popEndPoint((a1 + 104));
    v18 = *(a1 + 136);
    *(v18 + 16) = *(v18 + 16) & 0xF8 | 2;
    *v18 = &unk_2834A6908;
    *(v18 + 8) = 0;
LABEL_50:
    *(a1 + 144) = v18;
    return v18;
  }

  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = v10[1];
  if (*v10 != v11 && v9 >= *(v11 - 8))
  {
    goto LABEL_20;
  }

  v13 = *v10;
  v12 = v10[1];
  if (v13 == v12 || v9 < *(v12 - 8))
  {
LABEL_16:
    v14 = *(**(a1 + 104) + v9);
    *(a1 + 112) = v9 + 1;
    v17 = TSCEASTElement::simpleTagForTag(v14);
    switch(v17)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A54C8;
        goto LABEL_48;
      case 13:
      case 14:
      case 15:
      case 70:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A56D8;
        goto LABEL_48;
      case 16:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A5D08;
        goto LABEL_48;
      case 18:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5998;
        goto LABEL_48;
      case 19:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5A48;
        goto LABEL_48;
      case 20:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A58E8;
        goto LABEL_48;
      case 21:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5AF8;
        goto LABEL_48;
      case 22:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5BA8;
        goto LABEL_48;
      case 23:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5838;
        goto LABEL_48;
      case 24:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5C58;
        goto LABEL_48;
      case 25:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A6208;
        goto LABEL_48;
      case 26:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A62B8;
        goto LABEL_48;
      case 27:
      case 56:
        v18 = *(a1 + 136);
        *(v18 + 16) = *(v18 + 16) & 0xF8 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        *v18 = &unk_2834A6368;
        *(v18 + 8) = v9;
        v21 = (off_2834A63B0() + v9);
        v24 = TSCEASTThunkElement::numBytes(v18, a1, v22, v23);
        TSCEASTNodeArrayReader::pushEndPoint((a1 + 104), &v21[v24], v25, v26);
        sub_22120C7F0((a1 + 104), v21, v27, v28);
        v20 = *v18;
        v19 = *(v18 + 16) & 0xFD;
        goto LABEL_49;
      case 28:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A5578;
        goto LABEL_48;
      case 29:
      case 36:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5F18;
        goto LABEL_48;
      case 30:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A5DB8;
        goto LABEL_48;
      case 31:
      case 32:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A5E68;
        goto LABEL_48;
      case 50:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A60A8;
        goto LABEL_48;
      case 52:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A6418;
        goto LABEL_48;
      case 53:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A64C8;
        goto LABEL_48;
      case 54:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A6578;
        goto LABEL_48;
      case 55:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A6628;
        goto LABEL_48;
      case 63:
      case 64:
      case 65:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5FE8;
        goto LABEL_48;
      case 66:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A66D8;
        goto LABEL_48;
      case 67:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A5628;
        goto LABEL_48;
      case 68:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        v20 = &unk_2834A6158;
        goto LABEL_48;
      case 69:
        v18 = *(a1 + 136);
        *(v18 + 8) = v9;
        v19 = *(v18 + 16) & 0xF8;
        *(v18 + 16) = v19 | 2;
        *(v18 + 32) = 0;
        *(v18 + 40) = 0;
        *(v18 + 24) = 0;
        v20 = &unk_2834A5788;
LABEL_48:
        *v18 = v20;
LABEL_49:
        *(v18 + 16) = v19;
        v29 = v20[9](v18, a1);
        sub_22120C7F0((a1 + 104), (v29 + v9), v30, v31);
        break;
      default:
        v33 = MEMORY[0x277D81150];
        v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, "TSCEASTElement *TSCEASTElementIterator::nextElement()", v16);
        v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v35, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElementIterator.mm", v36);
        v38 = TSCEASTNodeArray::description(*(a1 + 16));
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v33, v39, v34, v37, 256, 0, "%d is not a valid node tag, seen at offset: %lu, seen in %{public}@", v17, 0, v38);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v40, v41, v42);
        v18 = 0;
        break;
    }

    goto LABEL_50;
  }

  return 0;
}

uint64_t sub_22134BE94(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277D81150];
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual void TSCEASTElementIterator::rewrite()", a4);
  v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTElementIterator.h", v7);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v4, v9, v5, v8, 35, 0, "No rewrite method implemented for this class - use nextElement() API, or derive from a different AST iterator base class");

  v13 = MEMORY[0x277D81150];

  return objc_msgSend_logBacktraceThrottled(v13, v10, v11, v12);
}

void sub_22134BFF8(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, _OWORD *a4, _OWORD *a5)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v7 = &unk_2834A69B8;
  *(v7 + 136) = *a4;
  *(v7 + 152) = *a5;
  *(v7 + 168) = *a4 == 0;
  *(v7 + 169) = 0;
  *(v7 + 171) = 0;
  *(v7 + 96) = 1;
}

TSCEASTCategoryRefElement *sub_22134C070(TSCEASTIteratorBase *a1, TSCEASTCategoryRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTCategoryRefElement::categoryRef(this, a1, a3, a4);
  v10 = objc_msgSend_groupByUid(v6, v7, v8, v9);
  if ((*(a1 + 168) & 1) != 0 || v10 == *(a1 + 17) && v11 == *(a1 + 18))
  {
LABEL_2:
    *(a1 + 169) = 1;
    goto LABEL_3;
  }

  v13 = *(a1 + 19);
  if (v13)
  {
    if (v10 != v13)
    {
      goto LABEL_3;
    }

    v14 = *(a1 + 20);
    goto LABEL_11;
  }

  v14 = *(a1 + 20);
  if (v14 && !v10)
  {
LABEL_11:
    if (v11 != v14)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

LABEL_3:

  return this;
}

void sub_22134C148(TSCEASTStreamIterator *a1, TSCEASTNodeArray *a2)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, a2);

  JUMPOUT(0x223DA1450);
}

void sub_22134C9DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_22134F58C(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a2;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v14, v18, 16);
  if (v5)
  {
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        objc_msgSend_setGroupBy_(v8, v9, *(a1 + 32), v10, v14);
        objc_msgSend_addAggregator_(*(a1 + 32), v11, v8, v12);

        ++v7;
      }

      while (v5 != v7);
      v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v13, &v14, v18, 16);
    }

    while (v5);
  }
}

uint64_t sub_22134F6E8(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(*(a1 + 32) + 120);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  if (v6)
  {
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v2);
        }

        objc_msgSend_unpackAfterUnarchiveForGroupBy_(*(*(&v11 + 1) + 8 * v8++), v4, *(a1 + 32), v5, v11);
      }

      while (v6 != v8);
      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v11, v15, 16);
    }

    while (v6);
  }

  return objc_msgSend_unpackAfterUnarchiveForGroupBy_atLevel_(*(*(a1 + 32) + 104), v9, *(a1 + 32), 0);
}

void sub_221351024(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_groupLevel(v3, v4, v5, v6);
  if (v7 > objc_msgSend_groupLevel(*(a1 + 32), v8, v9, v10) && objc_msgSend_containsAnyRowUidInRowUidSet_(v3, v11, *(a1 + 40), v12))
  {
    v16 = objc_msgSend_groupValueTuple(v3, v13, v14, v15);
    v20 = objc_msgSend_groupValueTuple(*(a1 + 32), v17, v18, v19);
    v24 = objc_msgSend_groupLevel(*(a1 + 32), v21, v22, v23);
    v26 = objc_msgSend_groupValueTupleByMergingTuple_toLevel_(v16, v25, v20, v24);

    v27 = *(a1 + 48);
    v36[0] = objc_msgSend_groupUid(v3, v28, v29, v30);
    v36[1] = v31;
    v35[0] = objc_msgSend_groupValueUid(v26, v31, v32, v33);
    v35[1] = v34;
    objc_msgSend_mapPreviousGroupNodeUid_toUpdatedGroupNodeUid_(v27, v34, v36, v35);
  }
}

void sub_221351E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

void sub_2213523F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10[0] = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10[1] = v8;
  objc_msgSend_addRemoveOfGroupUid_(v4, v8, v10, v9);
}

void sub_221352450(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = *(a1 + 32);
  v7 = objc_msgSend_previousLevel(v3, v4, v5, v6);
  objc_msgSend_addChangesTo_forRemovingValueAtLevel_(v9, v8, v3, v7);
}

void sub_2213524C4(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  v7 = objc_msgSend_previousLevel(v3, v4, v5, v6);
  v11 = objc_msgSend_updatedLevel(*(a1 + 32), v8, v9, v10);
  objc_msgSend_addChangesTo_forPromotingValueAtLevel_toLevel_(v13, v12, v3, v7, v11);
}

void sub_221352550(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = *(a1 + 32);
  v7 = objc_msgSend_previousLevel(v3, v4, v5, v6);
  v11 = objc_msgSend_updatedLevel(*(a1 + 32), v8, v9, v10);
  objc_msgSend_addChangesTo_forDemotingValueAtLevel_toLevel_(v13, v12, v3, v7, v11);
}

void sub_221352E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_221352F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22135302C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221353294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (v10)
  {
    *(v9 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

void sub_2213536B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  objc_msgSend_addUUID_(v4, v9, v8, v9);
}

void sub_221354284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);

  sub_2210BDEC0(&a23);
  sub_2210BDEC0(va);

  _Unwind_Resume(a1);
}

void sub_22135527C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213553A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_221355464;
  v7[3] = &unk_27845D900;
  v8 = *(a1 + 40);
  objc_msgSend_enumerateRowUidsWithBlock_(v4, v5, v7, v6);
}

void sub_221355560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22135558C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v12 = v5;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a3 = 1;
  }

  else
  {
    v9 = *(a1 + 32);
    v10 = objc_msgSend_groupUid(v5, v6, v7, v8);
    (*(v9 + 16))(v9, v10, v11, *(*(a1 + 40) + 8) + 24);
  }
}

void sub_22135571C(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3);
  v5 = *(a1 + 40);
  v12 = v4;
  v9 = objc_msgSend_childGroupUids(v4, v6, v7, v8);
  objc_msgSend_addUuidsFromSet_(v5, v10, v9, v11);
}

void sub_221355894(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), a2, a2, a3);
  v8 = objc_msgSend_labelUid(v9, v4, v5, v6);
  if (v8 | v7)
  {
    objc_msgSend_addUUID_(*(a1 + 40), v7, v8, v7);
  }
}

void sub_221355B74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v23 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);

  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);

  _Unwind_Resume(a1);
}

id *sub_221355BE4(id *result, const char *a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v5 = 1 << a5;
  if ((*(*(result[5] + 1) + 24) & v5) != 0)
  {
    v7 = a2;
    v8 = result;
    result = objc_msgSend_numberOfLevels(result[4], a2, a3, a4);
    if (v7)
    {
      if (result >= a5)
      {
        *(*(v8[5] + 1) + 24) &= ~v5;
        *(*(v8[6] + 1) + 24) |= v5;
      }
    }
  }

  return result;
}

void sub_221355C78(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10 = sub_2211A8DF4(v8, v9);
  objc_msgSend_addUUID_(v4, v11, v10, v11);
}

void sub_221355E60(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t sub_221355E94(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  if (*(result + 40) == a5)
  {
    *a6 = 1;
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  return result;
}

void sub_221355EB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  v10 = sub_2211A8DF4(v8, v9);
  objc_msgSend_addUUID_(v4, v11, v10, v11);
}

void sub_221356000(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  objc_msgSend_addUUID_(v4, v9, v8, v9);
}

void sub_22135694C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_groupCellValue(a2, a2, a3, a4);
  if (v7)
  {
    objc_msgSend_addObject_(*(a1 + 32), v5, v7, v6);
  }
}

void sub_22135742C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

void sub_221358140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a25, 8);
  if (a40)
  {
    a41 = a40;
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22135824C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221358264(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v47[0] = a2;
  v47[1] = a3;
  v7 = objc_msgSend_columnRowUIDMap(*(a1 + 32), a2, a3, a4);
  v45 = objc_msgSend_rowIndexForRowUID_(v7, v8, a2, a3);

  v46 = objc_opt_new();
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  if (v11 != v12)
  {
    v13 = 0;
    v14 = 0;
    do
    {
      v15 = objc_msgSend_mergeOriginForBaseCellCoord_(*(a1 + 40), v9, v45 | (*(v11 + 2 * v14) << 32), v10);
      v20 = objc_msgSend_cellValueAtBaseCellCoord_(*(a1 + 32), v16, v15, v17);
      if (!v20)
      {
        v21 = *(*(*(a1 + 64) + 8) + 40);
        if (!v21)
        {
          v22 = [TSCENilCellValue alloc];
          v26 = objc_msgSend_documentLocale(*(a1 + 48), v23, v24, v25);
          v29 = objc_msgSend_initWithLocale_(v22, v27, v26, v28);
          v30 = *(*(a1 + 64) + 8);
          v31 = *(v30 + 40);
          *(v30 + 40) = v29;

          v21 = *(*(*(a1 + 64) + 8) + 40);
        }

        v20 = v21;
      }

      v32 = objc_msgSend_objectAtIndex_(*(*(a1 + 56) + 88), v18, v14, v19);
      v34 = objc_msgSend_groupValueForValue_calcEngine_(v32, v33, v20, *(a1 + 48));

      if (v34)
      {
        objc_msgSend_addObject_(v46, v35, v34, v36);
      }

      ++v14;

      v13 += 2;
    }

    while (v11 + v13 != v12);
  }

  v37 = [TSTGroupValueTuple alloc];
  v40 = objc_msgSend_initWithValueArray_(v37, v38, v46, v39);
  if (objc_msgSend_numberOfLevels(v40, v41, v42, v43) == (*(a1 + 80) - *(a1 + 72)) >> 1)
  {
    objc_msgSend_insertRowUid_atRowIndex_forGroupValue_(*(a1 + 56), v44, v47, v45, v40);
  }
}

uint64_t *sub_2213584A4(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v2 = (a1 + 72);
  v2[2] = 0;
  return sub_221362914(v2, *(a2 + 72), *(a2 + 80), (*(a2 + 80) - *(a2 + 72)) >> 1);
}

void sub_2213584C0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }
}

void sub_2213598F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, TSCEReferenceSet *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char *a39, uint64_t a40, uint64_t a41)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a30, 8);
  sub_22107C860(v43 + 64, a39);

  TSCEReferenceSet::~TSCEReferenceSet(&a41);
  _Unwind_Resume(a1);
}

__n128 sub_2213599CC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

void sub_2213599DC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  if (v6 == objc_msgSend_groupByUid(*(a1 + 32), a2, a3, a4) && v7 == v8)
  {
    *&v60 = *a2;
    v22 = objc_msgSend_valueForFormulaCoord_(*(a1 + 32), v8, &v60, v10);
    objc_msgSend_accumulate_(*(a1 + 40), v36, v22, v37);
LABEL_16:

    return;
  }

  v13 = *(a2 + 1);
  v12 = *(a2 + 2);
  if (v13 == objc_msgSend_tableUID(*(a1 + 48), v8, v9, v10) && v12 == v14)
  {
    v17 = *a2;
    v18 = objc_msgSend_hiddenStates(*(a1 + 32), v14, v15, v16);
    v22 = objc_msgSend_rowHiddenStateExtent(v18, v19, v20, v21);

    if (!v22 || (*&v60 = objc_msgSend_rowUIDForRowIndex_(*(a1 + 48), v23, v17, v24, 0, 0), *(&v60 + 1) = v25, (objc_msgSend_hidingActionForUid_(v22, v25, &v60, v26) & 2) == 0))
    {
      v27 = *(a1 + 48);
      v63 = 0;
      RichTextAttributesIfPlainText = objc_msgSend_getValue_atBaseCellCoord_fetchRichTextAttributesIfPlainText_(v27, v23, &v63, v17, 0);
      v31 = v63;
      if (RichTextAttributesIfPlainText == 1000)
      {
        v38 = *(*(a1 + 72) + 8);
        v39 = *(a2 + 1);
        v40 = *(a2 + 2);
        if (*(v38 + 48) != v39 || *(v38 + 56) != v40)
        {
          *(v38 + 48) = v39;
          *(v38 + 56) = v40;
          v41 = *(a1 + 56);
          if (v41)
          {
            objc_msgSend_cellsInACycleInOwner_(v41, v29, *(*(a1 + 72) + 8) + 48, v30);
          }

          else
          {
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
          }

          TSCECellCoordSet::operator=((*(*(a1 + 80) + 8) + 48), &v60);
          sub_22107C860(&v61, *(&v61 + 1));
        }

        v50 = *(*(a1 + 80) + 8);
        *&v60 = *a2;
        if (TSCECellCoordSet::containsCellCoord((v50 + 48), &v60))
        {
          v54 = objc_msgSend_circularReferenceError(TSCEError, v51, v52, v53);
          v57 = objc_msgSend_errorValue_(TSCEErrorValue, v55, v54, v56);

          v31 = v57;
          objc_msgSend_accumulateValue_(*(a1 + 40), v58, v57, v59);
        }

        else
        {
          objc_msgSend_accumulateValue_(*(a1 + 40), v51, *(a1 + 64), v53);
        }
      }

      else if (!RichTextAttributesIfPlainText)
      {
        v32 = *(*(a1 + 72) + 8);
        v33 = *(a2 + 1);
        v34 = *(a2 + 2);
        if (*(v32 + 48) != v33 || *(v32 + 56) != v34)
        {
          *(v32 + 48) = v33;
          *(v32 + 56) = v34;
          v35 = *(a1 + 56);
          if (v35)
          {
            objc_msgSend_cellsInACycleInOwner_(v35, v29, *(*(a1 + 72) + 8) + 48, v30);
          }

          else
          {
            v62 = 0;
            v60 = 0u;
            v61 = 0u;
          }

          TSCECellCoordSet::operator=((*(*(a1 + 80) + 8) + 48), &v60);
          sub_22107C860(&v61, *(&v61 + 1));
        }

        v42 = *(*(a1 + 80) + 8);
        *&v60 = *a2;
        if (TSCECellCoordSet::containsCellCoord((v42 + 48), &v60))
        {
          v46 = objc_msgSend_circularReferenceError(TSCEError, v43, v44, v45);
          v49 = objc_msgSend_errorValue_(TSCEErrorValue, v47, v46, v48);

          v31 = v49;
        }

        objc_msgSend_accumulateValue_(*(a1 + 40), v43, v31, v45);
      }
    }

    goto LABEL_16;
  }
}

__n128 sub_22135AFA8(__n128 *a1, __n128 *a2)
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

void sub_22135AFCC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22135AFE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    objc_msgSend_rowUidsAsVector(v3, v4, v5, v6);
    v8 = *__p;
  }

  else
  {
    v8 = 0uLL;
    __p[0] = 0;
  }

  sub_22133594C((*(*(a1 + 32) + 8) + 48), *(*(*(a1 + 32) + 8) + 56), v8, *(&v8 + 1), (*(&v8 + 1) - v8) >> 4);
  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_22135D000(int a1)
{
  if ((a1 - 1) > 0x20)
  {
    return 0;
  }

  else
  {
    return word_2217E17E2[(a1 - 1)];
  }
}

void sub_22135D55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22135D7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  *(v19 - 56) = v18;
  sub_22107C2C0((v19 - 56));

  _Unwind_Resume(a1);
}

__n128 sub_22135D830(__n128 *a1, __n128 *a2)
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

void sub_22135D880(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = objc_msgSend_copy(*(a1 + 32), v4, v5, v6);
  v16 = v7;
  v15[0] = objc_msgSend_groupUid(v3, v8, v9, v10);
  v15[1] = v11;
  objc_msgSend_setAsAbsoluteWithGroupUid_(v7, v11, v15, v12);
  objc_msgSend_setGroupLevel_(v7, v13, *(a1 + 48), v14);
  sub_22135D934((*(*(a1 + 40) + 8) + 48), &v16);
}

id sub_22135D934(void *a1, id *a2)
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

void sub_22135DA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22107C26C(va);
  _Unwind_Resume(a1);
}

void sub_22135E304(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  v8 = *(a1 + 32);
  if (v3)
  {
    objc_msgSend_rowUidsAsVector(v3, v4, v5, v6);
  }

  else
  {
    __p = 0;
    v10 = 0;
    v11 = 0;
  }

  objc_msgSend_addUuidsFromVector_(v8, v4, &__p, v6);
  if (__p)
  {
    v10 = __p;
    operator delete(__p);
  }
}

void sub_22135E39C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = v3;
  v8 = objc_msgSend_groupUid(v3, v5, v6, v7);
  objc_msgSend_addUUID_(v4, v9, v8, v9);
}

void sub_22135E40C(uint64_t a1, void *a2)
{
  v6 = a2;
  if (*(a1 + 40))
  {
    v7 = 0;
    do
    {
      v8 = *(a1 + 42);
      v9 = *(a1 + 32);
      v10 = objc_msgSend_groupUid(v6, v3, v4, v5);
      if (v8 == 0xFFFF)
      {
        v14 = v7;
      }

      else
      {
        v14 = v8;
      }

      v17[0] = v10;
      v17[1] = v11;
      v15 = sub_2211A8E7C(v17, v14, v12, v13);
      objc_msgSend_addUUID_(v9, v16, v15, v16);
      ++v7;
    }

    while (v7 < *(a1 + 40));
  }
}

void sub_22135E744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void **a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  sub_22107C2C0(&a18);

  _Unwind_Resume(a1);
}

void sub_22135EA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v24 = va_arg(va1, void **);
  v26 = va_arg(va1, void);
  v27 = va_arg(va1, void);
  v28 = va_arg(va1, void);
  *(v22 - 72) = v21;
  sub_22107C2C0((v22 - 72));
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  sub_22107C2C0(va);
  _Block_object_dispose((v22 - 120), 8);

  _Unwind_Resume(a1);
}

void sub_22135EA94(uint64_t a1, void *a2, _BYTE *a3)
{
  v75 = a2;
  v8 = objc_msgSend_cell(v75, v5, v6, v7);
  v15 = objc_msgSend_formulaObject(v8, v9, v10, v11);
  if (v15)
  {
    v16 = objc_msgSend_calcEngine(*(a1 + 32), v12, v13, v14);
    objc_msgSend_getCategoryReferencesWithCalcEngine_(v15, v17, v16, v18);

    v19 = v78;
    for (i = v79; v19 != i; ++v19)
    {
      v21 = *v19;
      v77 = v21;
      v25 = *(*(*(a1 + 40) + 8) + 24);
      if (v25 == 255)
      {
        *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_groupLevel(v21, v22, v23, v24);
        v25 = *(*(*(a1 + 40) + 8) + 24);
        v21 = v77;
      }

      if (v25 == objc_msgSend_groupLevel(v21, v22, v23, v24))
      {
        if (*(a1 + 64) == 1)
        {
          v29 = objc_msgSend_absoluteGroupUid(v77, v26, v27, v28);
          v31 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), v30, v29, v30);
          v38 = objc_msgSend_parentNode(v31, v32, v33, v34);
          if (v38)
          {
            do
            {
              v76._lower = objc_msgSend_groupUid(v38, v35, v36, v37);
              v76._upper = v39;
              v40 = TSKUIDStruct::NSUUIDValue(&v76);
              v43 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v41, v40, v42);

              if (v43)
              {
                v46 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v44, v40, v45);
                v50 = objc_msgSend_absoluteGroupUid(v77, v47, v48, v49);
                objc_msgSend_addUUID_(v46, v51, v50, v51);
              }

              else
              {
                v52 = [TSCEMutableUIDSet alloc];
                v56 = objc_msgSend_absoluteGroupUid(v77, v53, v54, v55);
                v46 = objc_msgSend_initWithUUID_(v52, v57, v56, v57);
                objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v58, v46, v40);
              }

              objc_msgSend_groupUid(v38, v59, v60, v61);
              v65 = objc_msgSend_parentNode(v38, v62, v63, v64);

              v38 = v65;
            }

            while (v65);
          }
        }

        objc_msgSend_setType_(v77, v26, 11, v28);
        sub_22135D934((*(*(a1 + 56) + 8) + 48), &v77);
      }
    }

    v76._lower = &v78;
    sub_22107C2C0(&v76);
  }

  else
  {
    v66 = MEMORY[0x277D81150];
    v67 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "[TSTGroupBy captureCategoryRefsFromIterator:atLevel:asSpanning:]_block_invoke", v14);
    v70 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v68, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v69);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v66, v71, v67, v70, 4326, 0, "invalid nil value for '%{public}s'", "formula");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v72, v73, v74);
    *a3 = 1;
  }
}

void sub_22135F070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_22107C2C0(va);

  _Unwind_Resume(a1);
}

void sub_22135F6A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = *(*(a1 + 48) + 8);
  if (*(v6 + 24) == 1)
  {
    v13 = v3;
    v7 = objc_msgSend_objectForKeyedSubscript_(*(a1 + 32), v4, *(a1 + 40), v5);
    v11 = objc_msgSend_groupUid(v13, v8, v9, v10);
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_containsUuid_(v7, v12, v11, v12);

    v3 = v13;
  }

  else
  {
    *(v6 + 24) = 0;
  }
}

void sub_22135FB68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, ...)
{
  va_start(va, a33);
  *(v37 - 96) = v35;
  sub_22107C2C0((v37 - 96));

  a19 = &a31;
  sub_22107C2C0(&a19);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v37 - 216), 8);

  _Block_object_dispose((v37 - 168), 8);
  *(v37 - 216) = v36;
  sub_22107C2C0((v37 - 216));

  _Unwind_Resume(a1);
}

void sub_22135FC48(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4);
  v9 = objc_msgSend_rowUIDForRowIndex_(v6, v7, a2, v8);
  v11 = v10;

  v13 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 32), v12, v9, v11);
  v17 = v13;
  if (v13)
  {
    v18 = *(*(*(a1 + 40) + 8) + 24);
    if (v18 == 255)
    {
      *(*(*(a1 + 40) + 8) + 24) = objc_msgSend_groupLevel(v13, v14, v15, v16);
      v18 = *(*(*(a1 + 40) + 8) + 24);
    }

    if (v18 == objc_msgSend_groupLevel(v17, v14, v15, v16))
    {
      v19 = [TSCECategoryRef alloc];
      v64._lower = objc_msgSend_groupByUid(*(a1 + 32), v20, v21, v22);
      v64._upper = v23;
      v63[0] = objc_msgSend_groupUid(v17, v23, v24, v25);
      v63[1] = v26;
      v29 = objc_msgSend_groupLevel(v17, v26, v27, v28);
      v34 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v19, v30, &v64, v63, "category column", 7, v29);
      v65 = v34;
      if (*(a1 + 64) == 1)
      {
        v38 = objc_msgSend_parentNode(v17, v31, v32, v33);
        if (v38)
        {
          do
          {
            v64._lower = objc_msgSend_groupUid(v38, v35, v36, v37);
            v64._upper = v39;
            v40 = TSKUIDStruct::NSUUIDValue(&v64);
            v43 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v41, v40, v42);

            if (v43)
            {
              v46 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v44, v40, v45);
              v50 = objc_msgSend_absoluteGroupUid(v34, v47, v48, v49);
              objc_msgSend_addUUID_(v46, v51, v50, v51);
            }

            else
            {
              v52 = [TSCEMutableUIDSet alloc];
              v56 = objc_msgSend_absoluteGroupUid(v34, v53, v54, v55);
              v46 = objc_msgSend_initWithUUID_(v52, v57, v56, v57);
              objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 48) + 8) + 40), v58, v46, v40);
            }

            v62 = objc_msgSend_parentNode(v38, v59, v60, v61);

            v38 = v62;
          }

          while (v62);
        }
      }

      sub_22135D934((*(*(a1 + 56) + 8) + 48), &v65);
    }
  }
}

void sub_22135FEE4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_msgSend_tableInfo(*(a1 + 32), a2, a3, a4);
  v32[0] = objc_msgSend_columnUIDForColumnIndex_(v6, v7, a2, v8);
  v32[1] = v9;

  if (*(*(*(a1 + 40) + 8) + 24) == 255)
  {
    v12 = MEMORY[0x277D81150];
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "[TSTGroupBy captureCategoryLabelRefsForViewRegion:atLevel:asSpanning:forRows:]_block_invoke_2", v11);
    v16 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v14, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTGroupBy.mm", v15);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v12, v17, v13, v16, 4524, 0, "No level for agg function labels!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v18, v19, v20);
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v21 = [TSCECategoryRef alloc];
  v30[0] = objc_msgSend_groupByUid(*(a1 + 32), v22, v23, v24);
  v30[1] = v25;
  v29[0] = objc_msgSend_topLevelGroupUid(*(a1 + 32), v25, v26, v27);
  v29[1] = v28;
  v31 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v21, v28, v30, v29, v32, 12, *(*(*(a1 + 40) + 8) + 24));
  sub_22135D934((*(*(a1 + 48) + 8) + 48), &v31);
}

void sub_221360354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  *(v44 - 88) = v43;
  sub_22107C2C0((v44 - 88));

  a13 = &a27;
  sub_22107C2C0(&a13);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);

  _Block_object_dispose((v44 - 160), 8);
  sub_22107C2C0(&a35);

  _Unwind_Resume(a1);
}

void sub_221360400(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = WORD2(a2);
  v6 = objc_msgSend_rowUIDForRowIndex_(*(a1 + 32), a2, a2, a4);
  v8 = v7;
  v64[0] = objc_msgSend_columnUIDForColumnIndex_(*(a1 + 32), v7, v4, v9);
  v64[1] = v10;
  v11 = objc_msgSend_groupNodeForGroupUid_(*(a1 + 40), v10, v6, v8);
  v15 = v11;
  if (v11)
  {
    v16 = *(*(*(a1 + 48) + 8) + 24);
    if (v16 == 255)
    {
      *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_groupLevel(v11, v12, v13, v14);
      v16 = *(*(*(a1 + 48) + 8) + 24);
    }

    if (v16 == objc_msgSend_groupLevel(v15, v12, v13, v14))
    {
      v17 = [TSCECategoryRef alloc];
      v62._lower = objc_msgSend_groupByUid(*(a1 + 40), v18, v19, v20);
      v62._upper = v21;
      v61[0] = objc_msgSend_groupUid(v15, v21, v22, v23);
      v61[1] = v24;
      v27 = objc_msgSend_groupLevel(v15, v24, v25, v26);
      v32 = objc_msgSend_initWithGroupByUID_absGroupUid_columnUid_aggType_groupLevel_(v17, v28, &v62, v61, v64, 11, v27);
      v63 = v32;
      if (*(a1 + 72) == 1)
      {
        v36 = objc_msgSend_parentNode(v15, v29, v30, v31);
        if (v36)
        {
          do
          {
            v62._lower = objc_msgSend_groupUid(v36, v33, v34, v35);
            v62._upper = v37;
            v38 = TSKUIDStruct::NSUUIDValue(&v62);
            v41 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v39, v38, v40);

            if (v41)
            {
              v44 = objc_msgSend_objectForKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v42, v38, v43);
              v48 = objc_msgSend_absoluteGroupUid(v32, v45, v46, v47);
              objc_msgSend_addUUID_(v44, v49, v48, v49);
            }

            else
            {
              v50 = [TSCEMutableUIDSet alloc];
              v54 = objc_msgSend_absoluteGroupUid(v32, v51, v52, v53);
              v44 = objc_msgSend_initWithUUID_(v50, v55, v54, v55);
              objc_msgSend_setObject_forKeyedSubscript_(*(*(*(a1 + 56) + 8) + 40), v56, v44, v38);
            }

            v60 = objc_msgSend_parentNode(v36, v57, v58, v59);

            v36 = v60;
          }

          while (v60);
        }
      }

      sub_22135D934((*(*(a1 + 64) + 8) + 48), &v63);
    }
  }
}

void sub_221360928(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2213615A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221361674(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_221361E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, ...)
{
  va_start(va, a57);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_221361FE8(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v39 = objc_opt_new();
  v6 = *(a1 + 96);
  v7 = *(a1 + 104);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = objc_msgSend_mergeOriginForBaseCellCoord_(*(a1 + 32), v4, a2 | (*(v6 + 2 * v9) << 32), v5);
      v15 = objc_msgSend_cellValueAtBaseCellCoord_(*(a1 + 40), v11, v10, v12);
      if (!v15)
      {
        v16 = *(*(*(a1 + 80) + 8) + 40);
        if (!v16)
        {
          v17 = [TSCENilCellValue alloc];
          v20 = objc_msgSend_initWithLocale_(v17, v18, *(a1 + 48), v19);
          v21 = *(*(a1 + 80) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          v16 = *(*(*(a1 + 80) + 8) + 40);
        }

        v15 = v16;
      }

      v23 = objc_msgSend_objectAtIndex_(*(a1 + 56), v13, v9, v14);
      v25 = objc_msgSend_groupValueForValue_calcEngine_(v23, v24, v15, *(a1 + 64));

      if (v25)
      {
        objc_msgSend_addObject_(v39, v26, v25, v27);
      }

      ++v9;

      v8 += 2;
    }

    while (v6 + v8 != v7);
  }

  v28 = [TSTGroupValueTuple alloc];
  v31 = objc_msgSend_initWithValueArray_(v28, v29, v39, v30);
  if (objc_msgSend_numberOfLevels(v31, v32, v33, v34) == (*(a1 + 104) - *(a1 + 96)) >> 1)
  {
    v36 = objc_msgSend_insertRowUid_atRowIndex_forGroupValueTuple_atLevel_withLocale_createdGroupNodeCount_(*(a1 + 72), v35, a1 + 120, a2, v31, 1, *(a1 + 48), *(*(a1 + 88) + 8) + 24);
    if (*(*(*(a1 + 88) + 8) + 24) > *(a1 + 136) && !*(a1 + 144))
    {
      *a3 = 1;
    }
  }
}

uint64_t *sub_221362218(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v2 = (a1 + 96);
  v2[2] = 0;
  return sub_221362914(v2, *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 1);
}

void sub_221362234(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }
}

uint64_t *sub_221362600(uint64_t *a1, unint64_t a2, _OWORD *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    sub_221086F38(a1, a2);
  }

  return a1;
}

void sub_221362668(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2213626F0(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    if (a5 + ((v10 - *a1) >> 1) < 0)
    {
      sub_22107C148();
    }

    v12 = __dst - v11;
    v13 = v9 - v11;
    if (v13 <= a5 + ((v10 - *a1) >> 1))
    {
      v14 = a5 + ((v10 - *a1) >> 1);
    }

    else
    {
      v14 = v13;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 1;
    if (v15)
    {
      sub_22115DB94(a1, v15);
    }

    v33 = 2 * v16;
    v34 = 2 * a5;
    v35 = (2 * v16);
    do
    {
      v36 = *v7;
      v7 += 2;
      *v35++ = v36;
      v34 -= 2;
    }

    while (v34);
    memcpy((v33 + 2 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 2 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (2 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 1;
  if (v18 >= a5)
  {
    v29 = &__dst[2 * a5];
    v30 = (v10 - 2 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v29);
    }

    v28 = 2 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_30;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[2 * a5];
    v23 = v10 + v20;
    if (&v21[-2 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -2 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 2;
        v24 += 2;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[2 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_30:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t *sub_221362914(uint64_t *result, const void *a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_22116D40C(result, a4);
  }

  return result;
}

void sub_221362974(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_221362990(void *a1, unsigned int *a2, uint64_t a3, void **a4)
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

void sub_221362BF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

void sub_221362E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCEDependencyTracker;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_221363188()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_2213631C8()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_221363208()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_221363A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221363D68()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22136410C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);

  sub_2212E22F0(va);
  sub_221122744(v11);
  _Unwind_Resume(a1);
}

void sub_22136421C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  sub_221122744(v13);
  _Unwind_Resume(a1);
}

void sub_2213642DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_22136447C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

char *sub_221364720(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      sub_22107C148();
    }

    v12 = &__src[-v10];
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v27 = a1;
    if (v14)
    {
      sub_22137718C(a1, v14);
    }

    v24 = 0;
    v25 = 8 * v15;
    v26 = (8 * v15);
    sub_221377084(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_2213648A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_221364B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_2212E22F0(va);
  sub_221087B80(va1);

  _Unwind_Resume(a1);
}

void sub_221365018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  if (__p)
  {
    operator delete(__p);
  }

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221365210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose(&a25, 8);
  _Block_object_dispose((v30 - 128), 8);

  _Block_object_dispose((v30 - 80), 8);
  sub_2212E22F0(v30 - 48);
  _Unwind_Resume(a1);
}

uint64_t sub_22136526C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_221365284(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), a2, a2, a4);
  *(*(*(a1 + 40) + 8) + 24) = v6;

  v10 = objc_msgSend_cellDependencies(*(*(*(a1 + 40) + 8) + 24), v7, v8, v9);
  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v16 = objc_msgSend_errors(*(*(*(a1 + 40) + 8) + 24), v13, v14, v15);
  v17 = *(*(a1 + 56) + 8);
  v18 = *(v17 + 40);
  *(v17 + 40) = v16;

  v22 = objc_msgSend_spillSizes(*(*(*(a1 + 40) + 8) + 24), v19, v20, v21);
  v23 = *(*(a1 + 64) + 8);
  v24 = *(v23 + 40);
  *(v23 + 40) = v22;

  v28 = objc_msgSend_formulaOwnerId(*(*(*(a1 + 40) + 8) + 24), v25, v26, v27);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_2213653C8;
  v29[3] = &unk_278463168;
  v29[4] = *(a1 + 32);
  v32 = v28;
  v30 = *(a1 + 48);
  v31 = *(a1 + 64);
  TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v29);
}

void *sub_2213653C8(uint64_t a1, const char *a2)
{
  result = *(*(*(a1 + 40) + 8) + 40);
  if (result)
  {
    CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(result, a2, a2, 1);
    if (CellRecord_willModifyOnTile && (*(CellRecord_willModifyOnTile + 38) & 4) != 0)
    {
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v20, 0, 1);
      v8 = *(a1 + 32);
      v9 = *(a1 + 64);
      v10 = *a2;
      v11 = v8[66];
      TSCEReplaceFormulaOptions::TSCEReplaceFormulaOptions(&v19, &v20);
      objc_msgSend_dgl_replaceCellWithFormulaForOwner_formulaCoord_precedents_replaceOptions_(v8, v12, v9, v10, v11, &v19);

      atomic_fetch_add((*(a1 + 32) + 456), 0xFFFFFFFFFFFFFFFFLL);
      v15 = objc_msgSend_findCellRecord_willModifyOnTile_(*(*(*(a1 + 40) + 8) + 40), v13, a2, 0);
      if (v15)
      {
        objc_msgSend_setContainsFormula_containsFormula_(*(*(*(a1 + 40) + 8) + 40), v14, v15, 0);
        if ((sub_2215C5AB8(v15) & 1) == 0 && !sub_2215C5AF0(v15))
        {
          objc_msgSend_markCellRecordForPruning_(*(*(*(a1 + 40) + 8) + 40), v16, a2, v17);
        }
      }
    }

    v18 = *(*(*(a1 + 48) + 8) + 40);
    if (v18)
    {
      objc_msgSend_clearErrorAndWarningsForCell_(v18, v6, a2, v7);
    }

    result = *(*(*(a1 + 56) + 8) + 40);
    if (result)
    {
      return objc_msgSend_clearSpillSizeForCell_(result, v6, a2, v7);
    }
  }

  return result;
}

void sub_2213656D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  sub_2212E22F0(&a14);
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221365718(__n128 *a1, __n128 *a2)
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

void sub_22136573C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221365754(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 32) | (*(a2 + 36) << 32);
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - v7;
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

    if (v11)
    {
      sub_2210874C4((v3 + 6), v11);
    }

    v12 = (8 * v8);
    *v12 = v2;
    v6 = 8 * v8 + 8;
    v13 = v3[6];
    v14 = v3[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v3[6];
    v3[6] = v15;
    v3[7] = v6;
    v3[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = v2;
    v6 = (v5 + 1);
  }

  v3[7] = v6;
}

void sub_221365964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  sub_2212E22F0(&a14);
  sub_22107C800(&a16, a17);

  _Unwind_Resume(a1);
}

void sub_221365CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char *a25)
{
  sub_2212E22F0(&a14);
  _Block_object_dispose(&a16, 8);
  sub_22107C860(v25 + 64, a25);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_221365D48(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v4.row = *(a2 + 32);
  v4.column = *(a2 + 36);
  return TSCECellCoordSet::addCellCoord((v2 + 48), &v4);
}

void sub_221366050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2212E22F0(va);

  _Unwind_Resume(a1);
}

void sub_221366124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_2213662D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 96), 8);
  sub_2212E22F0(v20 - 64);
  _Unwind_Resume(a1);
}

__n128 sub_2213664A0(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t sub_2213664B0(uint64_t a1, const char *a2)
{
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(*(a1 + 40) + 8);
  if (__PAIR128__(v5, v4) != *(v6 + 48))
  {
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_internalFormulaOwnerIDForFormulaOwnerUID_createIfMissing_(*(a1 + 32), a2, *(*(a1 + 40) + 8) + 48, 0);
  }

  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(*(*(a1 + 48) + 8) + 24);

  return objc_msgSend_dgl_setError_andWarnings_forCell_inOwnerID_(v7, a2, 0, 0, v8, v9);
}

void sub_221366614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366A08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366BE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22107C860(v15 + 16, a12);

  sub_2212E22F0(va);
  sub_22107C860(v13, *v16);
  _Unwind_Resume(a1);
}

void sub_221366CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221366E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22107C860(v15 + 16, a12);

  sub_22107C860(v13, *v16);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136707C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22107C860(v15 + 16, a12);

  sub_22107C860(v13, *v16);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136725C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void *);
  v10 = va_arg(va1, void);

  sub_22107C800(va, v9);
  sub_2212E22F0(va1);
  _Unwind_Resume(a1);
}

void sub_221367758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2213688B4(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x2C0], 8);
  _Block_object_dispose((v3 - 232), 8);

  _Unwind_Resume(a1);
}

void sub_221368A84(uint64_t a1, uint64_t a2)
{
  sub_2215C52D0(*(a1 + 32), a2, 1);
  if (*(a2 + 8) == *(a1 + 48))
  {
    v4 = *(a1 + 40);
    if (*a2 == v4 && ((v4 ^ *a2) & 0x101FFFF00000000) == 0)
    {
      *(*(a1 + 32) + 38) |= 2u;
    }
  }
}

void sub_221368AF8(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  v32 = *(a2 + 1);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (!v7 || (objc_msgSend_formulaOwnerUid(v7, a2, a3, a4) == v32 ? (v9 = a2 == *(&v32 + 1)) : (v9 = 0), !v9))
  {
    v10 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), a2, &v32, a4);
    *(*(*(a1 + 40) + 8) + 24) = v10;

    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      objc_msgSend_dgl_registerOwnerUID_owner_ownerIndex_(*(a1 + 32), a2, &v32, 0, 0);
      v13 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), v11, &v32, v12);
      *(*(*(a1 + 40) + 8) + 24) = v13;
    }
  }

  v14 = objc_msgSend_rangeDependencies(*(*(*(a1 + 40) + 8) + 24), a2, v8, a4, v32);
  v18 = v14;
  if (!v14)
  {
    goto LABEL_33;
  }

  v19 = *(*(a1 + 48) + 8);
  if (*(v19 + 24) == 1)
  {
    v20 = objc_msgSend_addRangeReference_toRange_(v14, v15, a1 + 72, a2);
    v19 = *(*(a1 + 48) + 8);
  }

  else
  {
    v20 = 0;
  }

  *(v19 + 24) = v20;
  v21 = objc_msgSend_formulaOwnerUid(*(a1 + 56), v15, v16, v17);
  if (v32 != __PAIR128__(v22, v21))
  {
    goto LABEL_33;
  }

  v24 = *a2;
  v23 = a2[1];
  v25 = *(a1 + 84);
  v26 = HIDWORD(v23);
  v27 = *a2 & 0xFFFF00000000;
  v28 = v23 & 0xFFFF00000000;
  v29 = *a2;
  if (v29 != 0x7FFFFFFF && v27 == 0x7FFF00000000 && v28 == 0x7FFF00000000)
  {
    if (v23 != 0x7FFFFFFF)
    {
      if (v25 == 0x7FFFFFFF || v24 > v25)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }
  }

  else if (v29 == 0x7FFFFFFF && v27 != 0x7FFF00000000 && v28 != 0x7FFF00000000 && v23 == 0x7FFFFFFFLL)
  {
    v30 = *(a1 + 88);
    if (v30 != 0x7FFF && WORD2(*a2) <= v30 && v30 <= v26)
    {
LABEL_32:
      *(*(a1 + 64) + 38) |= 2u;
      goto LABEL_33;
    }

    goto LABEL_33;
  }

  v31 = *(a1 + 88);
  if (v31 >= WORD2(*a2) && v25 >= v24 && v31 <= WORD2(v23))
  {
LABEL_31:
    if (v25 > v23)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

LABEL_33:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_221368D54(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v40 = *(a2 + 16);
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (!v7 || (objc_msgSend_formulaOwnerUid(v7, a2, a3, a4) == v40 ? (v9 = a2 == *(&v40 + 1)) : (v9 = 0), !v9))
  {
    v10 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), a2, &v40, a4);
    *(*(*(a1 + 40) + 8) + 24) = v10;

    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      objc_msgSend_dgl_registerOwnerUID_owner_ownerIndex_(*(a1 + 32), a2, &v40, 0, 0);
      v13 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), v11, &v40, v12);
      *(*(*(a1 + 40) + 8) + 24) = v13;
    }
  }

  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v39 = *a2;
    v14 = *(a2 + 32);
    topLeft = v39._topLeft;
    row = v39._bottomRight.row;
    v17 = *&v39._topLeft & 0xFFFF00000000;
    v18 = *&v39._bottomRight & 0xFFFF00000000;
    if (v39._topLeft.row != 0x7FFFFFFFLL && v17 == 0x7FFF00000000 && v18 == 0x7FFF00000000)
    {
      if (v39._bottomRight.row != 0x7FFFFFFF)
      {
        while (topLeft <= row)
        {
          v19 = *(*(a1 + 48) + 8);
          if (*(v19 + 24) == 1)
          {
            v20 = objc_msgSend_spanningRowDependencies(*(*(*(a1 + 40) + 8) + 24), a2, v8, a4);
            *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_addReference_toColumn_rangeContext_(v20, v21, a1 + 56, topLeft, v14);
          }

          else
          {
            *(v19 + 24) = 0;
          }

          topLeft = (topLeft + 1);
        }

        goto LABEL_31;
      }

      goto LABEL_29;
    }

    if (v39._topLeft.row != 0x7FFFFFFFLL || v17 == 0x7FFF00000000 || v18 == 0x7FFF00000000 || v39._bottomRight.row != 0x7FFFFFFFLL)
    {
LABEL_29:
      if (TSCERangeCoordinate::isValid(&v39))
      {
        v29 = MEMORY[0x277D81150];
        v30 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "[TSCEDependencyTracker dgl_replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]_block_invoke_3", v28);
        v33 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v31, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v32);
        v34 = TSCERangeCoordinate::description(&v39);
        objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v29, v35, v30, v33, 2002, 0, "nonspanning range %{public}@ found in a spanning reference", v34);

        objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v36, v37, v38);
      }

      goto LABEL_31;
    }

    v22 = HIDWORD(*&v39._bottomRight);
    if (v39._topLeft.column <= v39._bottomRight.column)
    {
      v23 = HIDWORD(*&v39._topLeft);
      do
      {
        v24 = *(*(a1 + 48) + 8);
        if (*(v24 + 24) == 1)
        {
          v25 = objc_msgSend_spanningColumnDependencies(*(*(*(a1 + 40) + 8) + 24), a2, v8, a4);
          *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_addReference_toColumn_rangeContext_(v25, v26, a1 + 56, v23, v14);
        }

        else
        {
          *(v24 + 24) = 0;
        }

        LOWORD(v23) = v23 + 1;
      }

      while (v23 <= v22);
    }
  }

LABEL_31:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_22136906C(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v19 = *a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (!v6 || (objc_msgSend_formulaOwnerUid(v6, a2, a3, a4) == v19 ? (v8 = a2 == *(&v19 + 1)) : (v8 = 0), !v8))
  {
    v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), a2, &v19, a4);
    *(*(*(a1 + 40) + 8) + 24) = v9;

    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      objc_msgSend_dgl_registerOwnerUID_owner_ownerIndex_(*(a1 + 32), a2, &v19, 0, 0);
      v12 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), v10, &v19, v11);
      *(*(*(a1 + 40) + 8) + 24) = v12;
    }
  }

  v13 = objc_msgSend_wholeOwnerDependencies(*(*(*(a1 + 40) + 8) + 24), a2, v7, a4, v19);
  v16 = v13;
  if (v13)
  {
    v17 = *(*(a1 + 48) + 8);
    if (*(v17 + 24) == 1)
    {
      v18 = objc_msgSend_addOwnerReference_(v13, v14, a1 + 56, v15);
      v17 = *(*(a1 + 48) + 8);
    }

    else
    {
      v18 = 0;
    }

    *(v17 + 24) = v18;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

void sub_2213691AC(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  v19 = *a2;
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (!v6 || (objc_msgSend_formulaOwnerUid(v6, a2, a3, a4) == v19 ? (v8 = a2 == *(&v19 + 1)) : (v8 = 0), !v8))
  {
    v9 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), a2, &v19, a4);
    *(*(*(a1 + 40) + 8) + 24) = v9;

    if (!*(*(*(a1 + 40) + 8) + 24))
    {
      objc_msgSend_dgl_registerOwnerUID_owner_ownerIndex_(*(a1 + 32), a2, &v19, 0, 0);
      v12 = objc_msgSend_dgl_ownerDependenciesForOwnerUID_(*(a1 + 32), v10, &v19, v11);
      *(*(*(a1 + 40) + 8) + 24) = v12;
    }
  }

  v13 = objc_msgSend_volatileDependencies(*(*(*(a1 + 40) + 8) + 24), a2, v7, a4, v19);
  v16 = v13;
  if (v13)
  {
    v17 = *(*(a1 + 48) + 8);
    if (*(v17 + 24) == 1)
    {
      v18 = objc_msgSend_addVolatileGeometryReference_(v13, v14, a1 + 56, v15);
      v17 = *(*(a1 + 48) + 8);
    }

    else
    {
      v18 = 0;
    }

    *(v17 + 24) = v18;
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }
}

uint64_t sub_2213692EC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_uuidReferenceMap(*(*(a1 + 32) + 16), a2, a3, a4);
  objc_msgSend_addCellRef_forUuid_(v7, v8, a1 + 48, a3);

  v10 = *(a1 + 40);

  return objc_msgSend_addCellCoord_referringToTableUID_forColumnRowUuid_(v10, v9, a1 + 60, a2, a3);
}

uint64_t sub_221369370(uint64_t a1, const char *a2)
{
  objc_msgSend_addCellRef_forUuid_(*(a1 + 32), a2, a1 + 48, a2);
  v5 = *(a1 + 40);

  return objc_msgSend_addCellCoord_referringToTableUID_(v5, v4, a1 + 60, a2);
}

void sub_2213693C0(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_msgSend_addCellRef_usingCategoryRef_(*(a1 + 32), v3, a1 + 48, v5);
  objc_msgSend_addCellCoord_referringToCategoryRef_(*(a1 + 40), v4, a1 + 60, v5);
}

void *sub_221369438(uint64_t a1, const char *a2, _BYTE *a3, uint64_t a4)
{
  if (a2 <= 6)
  {
    if ((a2 - 4) < 2)
    {
      v7 = *(*(a1 + 40) + 8);
      if (*(v7 + 24) == 1)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_msgSend_addVolatileTimeReference_(result, a2, *(a1 + 80), a4);
          goto LABEL_25;
        }

LABEL_27:
        *(v7 + 24) = result;
        goto LABEL_28;
      }

LABEL_26:
      result = 0;
      goto LABEL_27;
    }

    if (a2 == 6)
    {
      v7 = *(*(a1 + 40) + 8);
      if (*(v7 + 24) == 1)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_msgSend_addVolatileRandomReference_(result, a2, *(a1 + 80), a4);
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }

LABEL_18:
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "[TSCEDependencyTracker dgl_replaceCellWithFormulaForOwner:formulaCoord:precedents:replaceOptions:]_block_invoke_9", a4);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 2145, 0, "unimplemented reference type found: %d", a2);

    result = objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
    goto LABEL_28;
  }

  if ((a2 - 11) >= 2)
  {
    if (a2 == 7)
    {
      v7 = *(*(a1 + 40) + 8);
      if (*(v7 + 24) == 1)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_msgSend_addVolatileLocaleReference_(result, a2, *(a1 + 80), a4);
          goto LABEL_25;
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    if (a2 == 13)
    {
      v7 = *(*(a1 + 40) + 8);
      if (*(v7 + 24) == 1)
      {
        result = *(a1 + 32);
        if (result)
        {
          result = objc_msgSend_addVolatileSheetTableNameReference_(result, a2, *(a1 + 80), a4);
LABEL_25:
          v7 = *(*(a1 + 40) + 8);
          goto LABEL_27;
        }

        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_18;
  }

  v9 = *(*(a1 + 40) + 8);
  if (*(v9 + 24) == 1)
  {
    result = objc_msgSend_addVolatileRemoteDataReference_(*(a1 + 32), a2, *(a1 + 80), a4);
    v9 = *(*(a1 + 40) + 8);
  }

  else
  {
    result = 0;
  }

  *(v9 + 24) = result;
  if (*(a1 + 72))
  {
    result = objc_msgSend_replaceRemoteDataKeyInterestedInForReference_specifierSet_(*(a1 + 32), a2, a1 + 80, *(a1 + 72));
  }

LABEL_28:
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a3 = 1;
  }

  return result;
}

void sub_221369A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221369BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_22136A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  sub_2212E22F0(v25 - 80);

  _Unwind_Resume(a1);
}

__n128 sub_22136A3D8(__n128 *a1, __n128 *a2)
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

void sub_22136A3FC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_22136A414(void *a1, uint64_t a2)
{
  if (a1[5] != *a2 || a1[6] != *(a2 + 8))
  {
    sub_221083454(*(a1[4] + 8) + 48, a2);
  }
}

void sub_22136A6EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136A9FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_2212E22F0(v16 - 96);

  _Unwind_Resume(a1);
}

void sub_22136AA6C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cellDependencies(*(a1 + 40), a2, a3, a4, a2, (a3 + a2 - 1) | 0x3E700000000);
  objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v5, v6, &v7, *(a1 + 32), *(a1 + 48));
}

void sub_22136AAE0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_cellDependencies(*(a1 + 40), a2, a3, a4, a2 << 32, (((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0xF423F);
  objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(v5, v6, &v7, *(a1 + 32), *(a1 + 48));
}

void sub_22136AF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  sub_2212E22F0(v23 - 120);

  _Unwind_Resume(a1);
}

uint64_t sub_22136B000(uint64_t a1, const char *a2, int a3)
{
  v4[0] = a2;
  v4[1] = (a3 + a2 - 1) | 0x3E700000000;
  return objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(*(a1 + 32), a2, v4, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_22136B048(uint64_t a1, const char *a2, int a3)
{
  v4[0] = a2 << 32;
  v4[1] = (((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0xF423F;
  return objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(*(a1 + 32), a2, v4, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_22136B09C(uint64_t a1, const char *a2, int a3)
{
  v4[0] = a2;
  v4[1] = (a3 + a2 - 1) | 0x3E700000000;
  return objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(*(a1 + 32), a2, v4, *(a1 + 40), *(a1 + 48));
}

uint64_t sub_22136B0E4(uint64_t a1, const char *a2, int a3)
{
  v4[0] = a2 << 32;
  v4[1] = (((a2 + a3) << 32) + 0xFFFF00000000) & 0xFFFF00000000 | 0xF423F;
  return objc_msgSend_formulaCellsInRange_rewriteSpec_outFormulaCells_(*(a1 + 32), a2, v4, *(a1 + 40), *(a1 + 48));
}

void sub_22136B788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_2212E22F0(v35 - 120);
  _Unwind_Resume(a1);
}

TSCECellCoordSet *sub_22136BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 32) | (*(a2 + 36) << 32);
  v5 = *(a1 + 40);
  v6 = objc_msgSend_srcTableUID(*(a1 + 32), a2, a3, a4);
  v9.coordinate = v4;
  v9._tableUID._lower = v6;
  v9._tableUID._upper = v7;
  return TSCECellRefSet::addCellRef(v5, &v9);
}

TSCECellCoordSet *sub_22136BA68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4.coordinate.row = *(a2 + 32);
  v4.coordinate.column = *(a2 + 36);
  v4._tableUID = *(a1 + 40);
  return TSCECellRefSet::addCellRef(v2, &v4);
}

void sub_22136C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136CDEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22136D0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  sub_22107C800(v10, *(v10 + 8));

  _Unwind_Resume(a1);
}

void sub_22136DAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  sub_221087AA4(&a45);
  _Block_object_dispose((v45 - 216), 8);
  sub_221122744(v45 - 168);
  _Unwind_Resume(a1);
}

void sub_22136DB88(uint64_t a1, TSUCellCoord a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(*(a1 + 40) + 8) + 24);
  if (!v6)
  {
    v8 = *(*&a2 + 8);
    goto LABEL_5;
  }

  v7 = objc_msgSend_formulaOwnerId(v6, *&a2, a3, a4);
  v8 = *(*&a2 + 8);
  if (v7 != v8)
  {
LABEL_5:
    v9 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(*(a1 + 32), *&a2, v8, a4);
    *(*(*(a1 + 40) + 8) + 24) = v9;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v10 = *(*(*(a1 + 40) + 8) + 24);
  if (!v10)
  {
    return;
  }

  v13 = objc_msgSend_cellDependencies(v10, *&a2, v8, a4);
  v14 = **&a2;
  v37 = **&a2;
  if (*(a1 + 92) == 1)
  {
    CellRecord = *(a1 + 72);
    if (CellRecord)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v16 = *(*(*(a1 + 48) + 8) + 24);
  if (!v16 || (objc_msgSend_coordInRange_(v16, v11, v14, v12) & 1) == 0)
  {
    v17 = objc_msgSend_tileForCoord_(v13, v11, &v37, v12);
    *(*(*(a1 + 48) + 8) + 24) = v17;

    objc_msgSend_willModify(*(*(*(a1 + 48) + 8) + 24), v18, v19, v20);
  }

  CellRecord = objc_msgSend_findCellRecord_(*(*(*(a1 + 48) + 8) + 24), v11, v37, v12);
  if (!CellRecord)
  {
LABEL_14:
    if ((*(a1 + 92) & 1) == 0)
    {
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v11, *&a2, v12);
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v21, a1 + 80, v22);
    }
  }

LABEL_16:
  v23 = *(*(a1 + 56) + 8);
  v35 = a2;
  v27 = sub_2213773B0((v23 + 48), *&a2, &unk_2217E1838, &v35)[4];
  if (!v27)
  {
    v27 = objc_opt_new();
    v33 = *(*(a1 + 56) + 8);
    v35 = a2;
    v34 = sub_2213773B0((v33 + 48), *&a2, &unk_2217E1838, &v35);
    objc_storeStrong(v34 + 4, v27);
    if (CellRecord)
    {
      goto LABEL_18;
    }

LABEL_26:
    if (*(a1 + 92))
    {
      objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v24, v27, &v37, 0);
    }

    goto LABEL_28;
  }

  if (!CellRecord)
  {
    goto LABEL_26;
  }

LABEL_18:
  v28 = *(CellRecord + 38);
  if (v13)
  {
    if ((v28 & 2) != 0)
    {
      v29 = *(*(a1 + 64) + 8);
      v30 = *(CellRecord + 36);
      v31 = *(CellRecord + 32);
      v32 = objc_msgSend_internalOwnerID(v13, v24, v25, v26);
      v35 = v31 | (v30 << 32);
      v36 = v32;
      sub_2212DFCE8((v29 + 48), &v35);
    }

    objc_msgSend_clearCycleAndPushDependents_outDependents_(v13, v24, CellRecord, v27);
  }

  if ((*(a1 + 92) & 1) != 0 || (v28 & 2) != 0)
  {
    objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v24, v27, &v37, (*(CellRecord + 38) >> 1) & 1);
  }

LABEL_28:
}

void sub_22136E0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38)
{
  _Block_object_dispose(&a32, 8);
  sub_221087AA4(&a38);
  _Unwind_Resume(a1);
}

void sub_22136E14C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (!v7)
  {
    v9 = *(a2 + 4);
    goto LABEL_5;
  }

  v8 = objc_msgSend_formulaOwnerId(v7, a2, a3, a4);
  v9 = *(a2 + 4);
  if (v8 != v9)
  {
LABEL_5:
    v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(*(a1 + 32), a2, v9, a4);
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (!v11)
  {
    return;
  }

  v14 = objc_msgSend_cellDependencies(v11, a2, v9, a4);
  v15 = *a2;
  v42 = *a2;
  if (*(a1 + 84) == 1)
  {
    CellRecord = *(a1 + 64);
    if (CellRecord)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v17 = *(*(*(a1 + 48) + 8) + 24);
  if (!v17 || (objc_msgSend_coordInRange_(v17, v12, v15, v13) & 1) == 0)
  {
    v18 = objc_msgSend_tileForCoord_(v14, v12, &v42, v13);
    *(*(*(a1 + 48) + 8) + 24) = v18;

    objc_msgSend_willModify(*(*(*(a1 + 48) + 8) + 24), v19, v20, v21);
  }

  CellRecord = objc_msgSend_findCellRecord_(*(*(*(a1 + 48) + 8) + 24), v12, v42, v13);
  if (!CellRecord)
  {
LABEL_14:
    if ((*(a1 + 84) & 1) == 0)
    {
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v12, a2, v13);
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v22, a1 + 72, v23);
    }
  }

LABEL_16:
  v24 = *(*(a1 + 56) + 8);
  v43 = a2;
  v26 = sub_2213773B0((v24 + 48), a2, &unk_2217E1838, &v43)[4];
  if (!v26)
  {
    v26 = objc_opt_new();
    v28 = *(*(a1 + 56) + 8);
    v43 = a2;
    v29 = sub_2213773B0((v28 + 48), a2, &unk_2217E1838, &v43);
    objc_storeStrong(v29 + 4, v26);
    if (CellRecord)
    {
      goto LABEL_18;
    }

LABEL_24:
    if (*(a1 + 84) == 1)
    {
      v30 = objc_opt_new();
      objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v31, v30, &v42, 0);
      v35 = objc_msgSend_referencesToDirty(*(*(a1 + 32) + 16), v32, v33, v34);
      v39 = objc_msgSend_asCellRefSet(v30, v36, v37, v38);
      objc_msgSend_dirtyInternalCellRefs_(v35, v40, v39, v41);
    }

    goto LABEL_26;
  }

  if (!CellRecord)
  {
    goto LABEL_24;
  }

LABEL_18:
  v27 = *(CellRecord + 16);
  if (v14)
  {
    objc_msgSend_adjustDirtyCountAndPushDependents_outDependents_isInitialCell_adjustBy_(v14, v25, CellRecord, v26, *(a1 + 84), a3);
  }

  if ((*(a1 + 84) & 1) != 0 || !v27)
  {
    objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v25, v26, &v42, (*(CellRecord + 38) >> 1) & 1);
  }

LABEL_26:
}

void sub_22136E6C8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_startRecalcTaskIfNecessary(WeakRetained, v1, v2, v3);
}

void sub_22136E9B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136EA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void *sub_22136EAB0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  v6 = *a2 & 0xFFFFFFFFFFFFLL;
  v15 = 0;
  v16 = v6;
  v17 = v5;
  v12 = v6;
  v13 = v5;
  v14 = 0;
  objc_msgSend_dgl_loadCacheForCell_(*(a1 + 32), a2, &v12, a4);
  result = objc_msgSend_dgl_cellIsClean_(*(a1 + 32), v7, &v12, v8);
  if (result)
  {
    return objc_msgSend_dgl_markDependentsDirty_(*(a1 + 32), v10, &v16, v11);
  }

  return result;
}

void sub_22136EE18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  sub_2212E22F0(v26 - 128);

  _Unwind_Resume(a1);
}

void sub_22136EE90(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if (!v7)
  {
    v9 = *(a2 + 4);
    goto LABEL_5;
  }

  v8 = objc_msgSend_formulaOwnerId(v7, a2, a3, a4);
  v9 = *(a2 + 4);
  if (v8 != v9)
  {
LABEL_5:
    v10 = objc_msgSend_dgl_ownerDependenciesForOwnerID_(*(a1 + 32), a2, v9, a4);
    *(*(*(a1 + 40) + 8) + 24) = v10;

    *(*(*(a1 + 48) + 8) + 24) = 0;
  }

  v11 = *(*(*(a1 + 40) + 8) + 24);
  if (!v11)
  {
    return;
  }

  v14 = objc_msgSend_cellDependencies(v11, a2, v9, a4);
  v15 = *a2;
  v44 = *a2;
  v16 = *(*(*(a1 + 48) + 8) + 24);
  if (!v16 || (objc_msgSend_coordInRange_(v16, v12, v15, v13) & 1) == 0)
  {
    v17 = objc_msgSend_tileForCoord_(v14, v12, &v44, v13);
    *(*(*(a1 + 48) + 8) + 24) = v17;

    objc_msgSend_willModify(*(*(*(a1 + 48) + 8) + 24), v18, v19, v20);
  }

  v21 = *(*(*(a1 + 48) + 8) + 24);
  if (v21 && (CellRecord = objc_msgSend_findCellRecord_(v21, v12, v44, v13)) != 0)
  {
    v23 = 0;
  }

  else
  {
    if ((*(a1 + 76) & 1) == 0)
    {
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v12, a2, v13);
      objc_msgSend_noteCorruptCellRef_(*(a1 + 32), v24, a1 + 64, v25);
    }

    CellRecord = 0;
    v23 = 1;
  }

  v26 = *(a1 + 56);
  v45 = a2;
  v28 = sub_2213773B0(v26, a2, &unk_2217E1838, &v45)[4];
  if (v28)
  {
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_21:
    v43 = *(CellRecord + 16);
    if (v14)
    {
      objc_msgSend_adjustDirtyCountAndPushDependents_outDependents_isInitialCell_adjustBy_(v14, v27, CellRecord, v28, *(a1 + 76), a3);
    }

    if (!v43 || *(a1 + 76) == 1)
    {
      objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v27, v28, &v44, (*(CellRecord + 38) >> 1) & 1);
    }

    goto LABEL_26;
  }

  v28 = objc_opt_new();
  v41 = *(a1 + 56);
  v45 = a2;
  v42 = sub_2213773B0(v41, a2, &unk_2217E1838, &v45);
  objc_storeStrong(v42 + 4, v28);
  if ((v23 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_18:
  if (*(a1 + 76) == 1)
  {
    v29 = objc_opt_new();
    objc_msgSend_pushRangeAndSpanningDependents_fromCoord_cellIsInACycle_(*(*(*(a1 + 40) + 8) + 24), v30, v29, &v44, 0);
    v34 = objc_msgSend_referencesToDirty(*(*(a1 + 32) + 16), v31, v32, v33);
    v38 = objc_msgSend_asCellRefSet(v29, v35, v36, v37);
    objc_msgSend_dirtyInternalCellRefs_(v34, v39, v38, v40);
  }

LABEL_26:
}

void sub_22136F4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  if (v14)
  {
    operator delete(v14);
  }

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22136F6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  sub_2212E22F0(&a10);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22136F718(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      sub_22107C1F0(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_22136FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221370328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_2213705D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void *);
  v21 = va_arg(va1, void);
  va_copy(va2, va1);
  v22 = va_arg(va2, void);
  v24 = va_arg(va2, void);

  sub_22107C800(va, v20);
  sub_2212E22F0(va1);
  sub_221122744(va2);
  _Unwind_Resume(a1);
}

void sub_22137064C(uint64_t a1, const char *a2, void *a3, uint64_t a4)
{
  v6 = objc_msgSend_tableResolverForTableUID_(*(a1 + 32), a2, a2, a4);
  v10 = v6;
  if (v6 && objc_msgSend_resolverIsATable(v6, v7, v8, v9))
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = sub_221370744;
    v11[3] = &unk_278461BA0;
    v12 = v10;
    v13 = *(a1 + 40);
    TSCECellCoordSet::enumerateCoordsUsingBlock(a3, v11);
  }
}

void sub_221370860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221370974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221370A6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22107C860(v14 + 16, a12);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221370B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2212E22F0(va);

  _Unwind_Resume(a1);
}

void sub_221370C68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_221370D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_2212E22F0(&a9);

  _Unwind_Resume(a1);
}

void sub_221370E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2212E22F0(va);

  _Unwind_Resume(a1);
}

void sub_2213712E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221371A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  sub_2212E22F0(&a25);
  _Block_object_dispose(&a27, 8);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_221371A94(__n128 *a1, __n128 *a2)
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

void sub_221371AB8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void sub_221371AD0(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 5)
  {
    if (!(a2 >> 59))
    {
      sub_22123E9D0(a1, a2);
    }

    sub_22107C148();
  }
}

void sub_221371B70(uint64_t a1, const char *a2)
{
  CellRecord_willModifyOnTile = objc_msgSend_findCellRecord_willModifyOnTile_(*(a1 + 32), a2, a2, 0);
  v5 = *(a1 + 56);
  v6 = *a2 & 0xFFFFFFFFFFFFLL;
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(v7 + 8);
  v10 = v9[7];
  v11 = v9[8];
  if (v10 >= v11)
  {
    v13 = v9[6];
    v14 = (v10 - v13) >> 5;
    v15 = v14 + 1;
    if ((v14 + 1) >> 59)
    {
      sub_22107C148();
    }

    v16 = v11 - v13;
    if (v16 >> 4 > v15)
    {
      v15 = v16 >> 4;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v17 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      sub_22123E9D0((v9 + 6), v17);
    }

    v18 = 32 * v14;
    *v18 = v6;
    *(v18 + 8) = v5;
    *(v18 + 16) = v8;
    *(v18 + 24) = CellRecord_willModifyOnTile;
    v12 = 32 * v14 + 32;
    v19 = v9[6];
    v20 = v9[7] - v19;
    v21 = (32 * v14 - v20);
    memcpy(v21, v19, v20);
    v22 = v9[6];
    v9[6] = v21;
    v9[7] = v12;
    v9[8] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = v6;
    *(v10 + 8) = v5;
    v12 = v10 + 32;
    *(v10 + 16) = v8;
    *(v10 + 24) = CellRecord_willModifyOnTile;
  }

  v9[7] = v12;
}

void sub_221371EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221372154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_221372E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_2213730D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34)
{
  sub_22107C800(&a19, a20);

  sub_22107C800(&a22, a23);
  sub_2212E22F0(&a25);
  _Block_object_dispose(&a27, 8);
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_22137316C(uint64_t a1, uint64_t *a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *a2;
  v5 = v2[7];
  v4 = v2[8];
  if (v5 >= v4)
  {
    v7 = v2[6];
    v8 = (v5 - v7) >> 3;
    if ((v8 + 1) >> 61)
    {
      sub_22107C148();
    }

    v9 = v4 - v7;
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

    if (v11)
    {
      sub_2210874C4((v2 + 6), v11);
    }

    v12 = (8 * v8);
    *v12 = v3;
    v6 = 8 * v8 + 8;
    v13 = v2[6];
    v14 = v2[7] - v13;
    v15 = v12 - v14;
    memcpy(v12 - v14, v13, v14);
    v16 = v2[6];
    v2[6] = v15;
    v2[7] = v6;
    v2[8] = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *v5 = v3;
    v6 = (v5 + 1);
  }

  v2[7] = v6;
}

void sub_22137334C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_22137343C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_22107C860(v15 + 16, a12);

  sub_2212E22F0(va);
  sub_22107C860(v13, *v16);
  _Unwind_Resume(a1);
}

void sub_221373CF4(_Unwind_Exception *a1, TSCEReferenceSet *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  TSCEReferenceSet::~TSCEReferenceSet(&a10);
  sub_2212E22F0(v11 - 64);
  TSCEReferenceSet::~TSCEReferenceSet(v10);
  _Unwind_Resume(a1);
}

void sub_22137401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2212E22F0(va);
  _Unwind_Resume(a1);
}

void sub_2213740FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_2212E22F0(va);
  sub_221122744(v5);
  _Unwind_Resume(a1);
}

void sub_22137425C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char *a13)
{
  sub_22107C860(v15 + 16, a13);
  sub_2212E22F0(v16 - 64);
  sub_221122744(v13);
  _Unwind_Resume(a1);
}

void sub_221374390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  sub_2212E22F0(va);
  sub_22107C860(v13, *v15);
  _Unwind_Resume(a1);
}

void sub_221374980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  sub_2212E22F0(&a25);
  _Block_object_dispose(va, 8);
  TSCEReferenceSet::~TSCEReferenceSet((v31 + 48));
  _Unwind_Resume(a1);
}

void sub_221375AB0(uint64_t a1, void *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = a2;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v3, &v47, v51, 16);
  if (v6)
  {
    v44 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v44)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        objc_msgSend_setDependencyTracker_(v8, v4, *(a1 + 32), v5);
        v9 = *(a1 + 32);
        LOWORD(v46._lower) = objc_msgSend_formulaOwnerId(v8, v10, v11, v12);
        v16 = sub_2210C3024((v9 + 264), &v46);
        if (v16)
        {
          v17 = MEMORY[0x277D81150];
          v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "[TSCEDependencyTracker initWithCalcEngine:archive:unarchiver:]_block_invoke", v15);
          v21 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEDependencyTracker.mm", v20);
          v46._lower = objc_msgSend_formulaOwnerUid(v16[3], v22, v23, v24);
          v46._upper = v25;
          v26 = TSKUIDStruct::description(&v46);
          v27 = *(v16 + 8);
          v45._lower = objc_msgSend_formulaOwnerUid(v8, v28, v29, v30);
          v45._upper = v31;
          v32 = TSKUIDStruct::description(&v45);
          v36 = objc_msgSend_formulaOwnerId(v8, v33, v34, v35);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v17, v37, v18, v21, 6263, 0, "Unarchiving formulaOwnerDependencies: Want to replace owner %@ (%lu) with %@ (%lu) - highly unexpected", v26, v27, v32, v36);

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v38, v39, v40);
        }

        v41 = *(a1 + 32);
        LOWORD(v45._lower) = objc_msgSend_formulaOwnerId(v8, v13, v14, v15);
        v46._lower = &v45;
        v42 = sub_221377754((v41 + 264), &v45, &unk_2217E1838, &v46);
        objc_storeStrong(v42 + 3, v8);
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v4, &v47, v51, 16);
    }

    while (v6);
  }
}

void sub_221375DAC(void *a1, uint64_t a2, void *a3, void *a4)
{
  v11 = a1;
  v7 = a3;
  v8 = a4;
  v9 = objc_opt_class();
  objc_msgSend_readWeakReferenceMessage_class_protocol_completion_(v11, v10, a2, v9, v7, v8);
}

void *sub_221375E64(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 48))
  {
    lock = (*(a1 + 32) + 8);
    os_unfair_lock_lock(lock);
    v61 = 1;
    for (i = *(a1 + 32) + 280; ; objc_msgSend_unpackAfterUnarchive(*(i + 24), v5, v6, v7))
    {
      i = *i;
      if (!i)
      {
        break;
      }
    }

    os_unfair_lock_unlock(lock);
    v61 = 0;
    sub_2212E22F0(&lock);
  }

  v9 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, a3, a4, lock);
  v10 = *(a1 + 32);
  v11 = *(v10 + 488);
  *(v10 + 488) = v9;

  for (j = *(*(a1 + 32) + 280); j; j = *j)
  {
    v16 = j[3];
    v17 = objc_msgSend_calcEngineRegistrationObject(v16, v12, v13, v14);

    if (v17)
    {
      v21 = objc_msgSend_calcEngineRegistrationObject(v16, v18, v19, v20);
      v22 = objc_opt_respondsToSelector();

      v26 = objc_msgSend_calcEngineRegistrationObject(v16, v23, v24, v25);
      v30 = v26;
      if (v22)
      {
        v31 = objc_msgSend_formulaOwner(v26, v27, v28, v29);
        objc_msgSend_setFormulaOwner_(v16, v32, v31, v33);
      }

      else
      {
        objc_msgSend_setFormulaOwner_(v16, v27, v26, v29);
      }
    }

    else if (objc_msgSend_ownerIndex(v16, v18, v19, v20) == 1 || objc_msgSend_ownerIndex(v16, v34, v35, v36) == 2)
    {
      *(*(a1 + 32) + 307) = 1;
    }

    v37 = objc_msgSend_formulaOwner(v16, v34, v35, v36);
    if (v37)
    {
      v41 = v37;
      isRegisteredWithCalcEngine = objc_msgSend_isRegisteredWithCalcEngine(v16, v38, v39, v40);

      if ((isRegisteredWithCalcEngine & 1) == 0)
      {
        v43 = *(*(a1 + 32) + 488);
        v44 = objc_msgSend_calcEngineRegistrationObject(v16, v38, v39, v40);
        objc_msgSend_addObject_(v43, v45, v44, v46);
      }
    }

    v47 = objc_msgSend_formulaOwner(v16, v38, v39, v40);
    v51 = objc_msgSend_evaluationMode(v47, v48, v49, v50);

    if (v51 == 1)
    {
      v52 = *(*(a1 + 32) + 312);
      v53 = objc_msgSend_formulaOwnerId(v16, v12, v13, v14);
      objc_msgSend_addMultiEvalOwnerID_(v52, v54, v53, v55);
    }
  }

  result = objc_msgSend_hasPreUFFVersion(*(a1 + 40), v12, v13, v14);
  if (result)
  {
    if (*(a1 + 52))
    {
      result = objc_msgSend_count(*(*(a1 + 32) + 488), v57, v58, v59);
      if (!result)
      {
        *(*(a1 + 32) + 306) = 1;
      }
    }
  }

  if (*(a1 + 56) == 1)
  {
    return objc_msgSend_resetNumberOfFormulas(*(a1 + 32), v57, v58, v59);
  }

  return result;
}

void sub_22137648C(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  sub_2212E22F0(va);
  sub_2210BDEC0(va1);

  _Unwind_Resume(a1);
}

void sub_221376524(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_22107C148();
    }

    v8 = v4 - *a1;
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
      sub_22137718C(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void sub_2213765F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_dgl_ownerIDIsRegistered_(*(a1 + 32), a2, a2, a4) & 1) == 0)
  {
    sub_22125FF5C((*(a1 + 32) + 24), a2);
    *(*(a1 + 32) + 520) = 1;
    v6 = *(a1 + 32);
    LOWORD(v7) = a2;
    HIDWORD(v7) = 0;
    sub_221376524(v6 + 496, &v7);
  }
}

uint64_t sub_221376D8C(uint64_t a1)
{
  sub_2210BDEC0(a1 + 72);
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  sub_2210BDEC0(a1 + 8);
  return a1;
}

uint64_t **sub_221376DD0(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

void sub_221377024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_221377038(void *a1, unsigned __int16 *a2)
{
  result = sub_2210C3024(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087E7C(v4);
    return 1;
  }

  return result;
}

void sub_221377084(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      sub_22137718C(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void sub_22137718C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_22107C238();
}

void sub_2213771D4(void *a1, uint64_t *a2, uint64_t *a3)
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
        *(v8 + 8) = *(v4 + 8);
        objc_storeStrong(v8 + 3, v4[3]);
        v10 = *v8;
        v11 = *(v8 + 8);
        v8[1] = v11;
        v12 = sub_2211DC0DC(a1, v11, v8 + 8);
        sub_2210BD408(a1, v8, v12);
        v4 = *v4;
        if (v10)
        {
          v13 = v4 == a3;
        }

        else
        {
          v13 = 1;
        }

        v8 = v10;
      }

      while (!v13);
    }

    sub_221087BBC(a1, v10);
  }

  if (v4 != a3)
  {
    sub_2213772F0(a1, (v4 + 2));
  }
}

void sub_2213772C4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_221087BBC(v1, v2);
  __cxa_rethrow();
}

void sub_22137739C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_2213773B0(void *a1, uint64_t *a2, uint64_t a3, uint64_t **a4)
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

void sub_22137763C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087224(va);
  _Unwind_Resume(a1);
}

uint64_t ***sub_221377650(void *a1, uint64_t *a2)
{
  result = sub_221123474(a1, a2);
  if (result)
  {
    sub_221087680(a1, result, v4);
    sub_221087224(v4);
    return 1;
  }

  return result;
}

uint64_t *sub_22137769C(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_221377718(result, a4);
  }

  return result;
}

void sub_2213776FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_221377718(uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_22123E9D0(a1, a2);
  }

  sub_22107C148();
}

uint64_t **sub_221377754(void *a1, unsigned __int16 *a2, uint64_t a3, _WORD **a4)
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

void sub_2213779A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_221087E7C(va);
  _Unwind_Resume(a1);
}

id sub_2213779BC(TSCEASTNodeArray *a1, TSCEFormulaRewriteContext *a2, uint64_t a3)
{
  sub_22137A554(v12, a1, a2, a3);
  TSCEASTStreamIterator::rewrite(v12, v3, v4, v5);
  v9 = sub_221377A4C(v12, v6, v7, v8);

  TSCEASTStreamIterator::~TSCEASTStreamIterator(v12, v10);

  return v9;
}

__CFString *sub_221377A4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_count(*(a1 + 136), a2, a3, a4) != 1)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "NSString *TSCEASTNodeFormulaStringIterator::formulaString()", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 536, 0, "Unable to properly create a formula string. Possibly a bad ASTNodeArray?");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  if (objc_msgSend_count(*(a1 + 136), v5, v6, v7))
  {
    v19 = objc_msgSend_objectAtIndex_(*(a1 + 136), v17, 0, v18);
  }

  else
  {
    v19 = &stru_2834BADA0;
  }

  return v19;
}

void sub_221377B4C(id *a1)
{

  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);
}

uint64_t sub_221377B88(uint64_t a1, uint64_t a2)
{
  v4 = TSCEASTElement::tag(a2, a1);
  if ((v4 - 1) >= 0xC)
  {
    v8 = v4;
    v9 = MEMORY[0x277D81150];
    v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::binaryInfixOperatorNode(TSCEASTBinaryElement *)", v6);
    v13 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v12);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v9, v14, v10, v13, 120, 0, "Unknown operator tag: %d", v8);

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v15, v16, v17);
    v7 = &stru_2834BADA0;
  }

  else
  {
    v7 = *(&off_278463560 + (v4 - 1));
  }

  sub_221377C9C(a1, v7);
  return a2;
}

void sub_221377C9C(uint64_t a1, void *a2)
{
  v32 = a2;
  v3 = *(a1 + 136);
  v9 = objc_msgSend_count(v3, v4, v5, v6);
  v10 = v9 - 1;
  if (v9 <= 1)
  {
    v11 = MEMORY[0x277D81150];
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEASTNodeFormulaStringIterator::processOperatorNode(NSString *__strong)", v8);
    v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v14);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 574, 0, "improper number of arguments for operator node.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  }

  v20 = MEMORY[0x277CCACA8];
  v21 = v9 - 2;
  v22 = objc_msgSend_objectAtIndex_(v3, v7, v9 - 2, v8);
  v25 = objc_msgSend_objectAtIndex_(v3, v23, v10, v24);
  v28 = objc_msgSend_stringWithFormat_(v20, v26, @"%@%@%@", v27, v22, v32, v25);

  objc_msgSend_removeObjectsInRange_(v3, v29, v21, 2);
  objc_msgSend_addObject_(v3, v30, v28, v31);
}

uint64_t sub_221377E5C(uint64_t a1, uint64_t a2, int a3)
{
  v6 = TSCEASTElement::tag(a2, a1);
  v9 = v6;
  if (v6 <= 14)
  {
    if (v6 == 13)
    {
      v10 = @"-";
      goto LABEL_13;
    }

    if (v6 == 14)
    {
      v10 = @"+";
      goto LABEL_13;
    }
  }

  else
  {
    switch(v6)
    {
      case 0xF:
        v10 = @"%";
        goto LABEL_13;
      case 0x45:
        v10 = @"@";
        goto LABEL_13;
      case 0x46:
        v10 = @"#";
        goto LABEL_13;
    }
  }

  v11 = MEMORY[0x277D81150];
  v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::unaryOperatorNode(TSCEASTUnaryElement *, BOOL)", v8);
  v15 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v13, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v14);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v11, v16, v12, v15, 156, 0, "Unknown operator tag: %d", v9);

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v17, v18, v19);
  v10 = &stru_2834BADA0;
LABEL_13:
  if (a3)
  {
    sub_221377FCC(a1, v10);
  }

  else
  {
    sub_221378148(a1, v10);
  }

  return a2;
}

void sub_221377FCC(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = *(a1 + 136);
  v9 = objc_msgSend_count(v3, v4, v5, v6);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEASTNodeFormulaStringIterator::processPostfixOperatorNode(NSString *__strong)", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 586, 0, "improper number of arguments for postfix operator node.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = objc_msgSend_objectAtIndex_(v3, v7, v9 - 1, v8);
  v23 = objc_msgSend_stringWithFormat_(v19, v21, @"%@%@", v22, v20, v29);

  objc_msgSend_removeLastObject(v3, v24, v25, v26);
  objc_msgSend_addObject_(v3, v27, v23, v28);
}

void sub_221378148(uint64_t a1, void *a2)
{
  v29 = a2;
  v3 = *(a1 + 136);
  v9 = objc_msgSend_count(v3, v4, v5, v6);
  if (!v9)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void TSCEASTNodeFormulaStringIterator::processPrefixOperatorNode(NSString *__strong)", v8);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 597, 0, "improper number of arguments for prefix operator node.");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v19 = MEMORY[0x277CCACA8];
  v20 = objc_msgSend_objectAtIndex_(v3, v7, v9 - 1, v8);
  v23 = objc_msgSend_stringWithFormat_(v19, v21, @"%@%@", v22, v29, v20);

  objc_msgSend_removeLastObject(v3, v24, v25, v26);
  objc_msgSend_addObject_(v3, v27, v23, v28);
}

TSCEASTFunctionElement *sub_2213782EC(TSCEASTIteratorBase *a1, TSCEASTFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTFunctionElement::functionIndex(this, a1, a3, a4);
  v7 = (*(*this + 48))(this, a1);
  v12 = TSCEASTFunctionElement::whitespace(this, a1, v8, v9);
  if ((v6 - 285) <= 3u)
  {
    v13 = *(a1 + 18);
    if (v13)
    {
      *v13 = 1;
    }
  }

  v14 = objc_msgSend_functionSpecForFunctionIndex_(TSCEFunctionSpec, v10, v6, v11);
  sub_2213783EC(a1, v7, v14, 0, v12);

  return this;
}

void sub_2213783EC(uint64_t a1, unsigned int a2, void *a3, void *a4, void *a5)
{
  v90 = a3;
  v9 = a4;
  v87 = a5;
  v92 = *(a1 + 136);
  v86 = objc_msgSend_count(v92, v10, v11, v12);
  v15 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v13, 1, v14);
  v91 = objc_msgSend_functionIndex(v90, v16, v17, v18);
  if (v91 != 280)
  {
    if (v90)
    {
      v22 = objc_msgSend_functionName(v90, v19, v20, v21);
      objc_msgSend_appendString_(v15, v23, v22, v24);
    }

    else if (v9)
    {
      objc_msgSend_appendString_(v15, v19, v9, v21);
    }

    else
    {
      v25 = MEMORY[0x277D81150];
      v26 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v19, "void TSCEASTNodeFormulaStringIterator::processFunctionNode(uint32_t, TSCEFunctionSpec *__strong, NSString *__strong, NSString *__strong)", v21);
      v29 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v27, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v28);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v25, v30, v26, v29, 619, 0, "Have to either specify a function spec or an unknown function name.");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v31, v32, v33);
    }
  }

  if (v87)
  {
    objc_msgSend_appendString_(v15, v19, v87, v21);
  }

  objc_msgSend_appendString_(v15, v19, @"("), v21;
  v85 = v9;
  v36 = a2;
  v84 = a2;
  if (a2)
  {
    v37 = 0;
    v88 = 0;
    v38 = @",";
    if (v91 == 280)
    {
      v38 = @" ";
    }

    v89 = v38;
    v39 = v86 - a2;
    while (1)
    {
      if (v37)
      {
        objc_msgSend_appendString_(v15, v34, v89, v35);
      }

      v40 = objc_msgSend_objectAtIndex_(v92, v34, v39 + v37, v35);
      v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v41, @"%C%C", v42, 57344, 57344);
      v47 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v44, v45, v46);
      v50 = objc_msgSend_stringByTrimmingCharactersInSet_(v40, v48, v47, v49);
      isEqualToString = objc_msgSend_isEqualToString_(v50, v51, v43, v52);

      if (isEqualToString)
      {
        break;
      }

      if (v91 != 280)
      {
        goto LABEL_26;
      }

      v64 = objc_msgSend_rangeOfString_(v40, v54, @"SFTGlobalID_", v55);
      if (v64 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = objc_msgSend_substringWithRange_(v40, v54, &v54[v64 + 1], 16);
        v59 = v65;
        if (v37)
        {
          if (v88)
          {
            if (objc_msgSend_isEqualToString_(v65, v66, v88, v67))
            {
              v69 = objc_msgSend_rangeOfString_(v40, v66, @"::", v67);
              if (v69 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v70 = v66;
                v71 = objc_msgSend_length(v40, v66, v68, v67);
                v72 = &v70[v69 + 1];
                if (v72 < v71)
                {
                  v61 = objc_msgSend_substringFromIndex_(v40, v66, v72, v67);
                  objc_msgSend_appendString_(v15, v73, v61, v74);
                  goto LABEL_19;
                }
              }
            }
          }

          objc_msgSend_appendString_(v15, v66, @"#REF!", v67);
        }

        else
        {
          v75 = v65;

          objc_msgSend_appendString_(v15, v76, v40, v77);
          v88 = v75;
        }

LABEL_20:

        goto LABEL_27;
      }

      if (!v37 || !v88)
      {
LABEL_26:
        objc_msgSend_appendString_(v15, v54, v40, v55);
        goto LABEL_27;
      }

      objc_msgSend_appendString_(v15, v54, @"#REF!", v55);
LABEL_27:

      if (v36 == ++v37)
      {
        goto LABEL_40;
      }
    }

    v56 = objc_msgSend_nativeSyntaxStringForArgument_(v90, v54, v37, v55);
    v57 = v56;
    v58 = &stru_2834BADA0;
    if (v56)
    {
      v58 = v56;
    }

    v59 = v58;

    v61 = objc_msgSend_stringByReplacingOccurrencesOfString_withString_(v40, v60, v43, v59);
    objc_msgSend_appendString_(v15, v62, v61, v63);
LABEL_19:

    goto LABEL_20;
  }

  v88 = 0;
LABEL_40:
  objc_msgSend_appendString_(v15, v34, @""), v35);
  if (v91 == 280 && objc_msgSend_rangeOfString_(v15, v78, @"#REF!", v79) != 0x7FFFFFFFFFFFFFFFLL)
  {
    v81 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], v78, @"#REF!", v80);

    v15 = v81;
  }

  objc_msgSend_removeObjectsInRange_(v92, v78, v86 - v84, v36);
  objc_msgSend_addObject_(v92, v82, v15, v83);
}

TSCEASTUnknownFunctionElement *sub_2213789A0(TSCEASTIteratorBase *a1, TSCEASTUnknownFunctionElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTUnknownFunctionElement::unknownFunctionName(this, a1, a3, a4);
  v7 = (*(*this + 48))(this, a1);
  sub_2213783EC(a1, v7, 0, v6, 0);

  return this;
}

uint64_t sub_221378A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  v154 = v2;
  v8 = objc_msgSend_count(v2, v3, v4, v5);
  v9 = v8 - 1;
  if (v8 <= 1)
  {
    v10 = MEMORY[0x277D81150];
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v6, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::colonNode(TSCEASTColonElement *)", v7);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v12, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v10, v15, v11, v14, 213, 0, "improper number of arguments for colon node.");

    v2 = v154;
    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v16, v17, v18);
  }

  v152 = v8 - 2;
  v160 = objc_msgSend_objectAtIndex_(v2, v6, v8 - 2, v7);
  v158 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v160, v19, v20, v21);
  if (objc_msgSend_count(v158, v22, v23, v24) < 2)
  {
    v159 = 0;
  }

  else
  {
    v27 = objc_msgSend_objectAtIndex_(v158, v25, 0, v26);
    v159 = objc_msgSend_stringByAppendingString_(v27, v28, @"::", v29);

    v32 = objc_msgSend_objectAtIndex_(v158, v30, 1, v31);

    v160 = v32;
  }

  v33 = objc_msgSend_objectAtIndex_(v2, v25, v9, v26);
  v37 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v34, v35, v36);
  v41 = objc_msgSend_invertedSet(v37, v38, v39, v40);
  v44 = objc_msgSend_rangeOfCharacterFromSet_(v33, v42, v41, v43);

  if (v44)
  {
    v48 = objc_msgSend_substringToIndex_(v33, v45, v44, v47);
    v51 = objc_msgSend_substringFromIndex_(v33, v49, v44, v50);
    v157 = v48;

    v33 = v51;
  }

  else
  {
    v157 = &stru_2834BADA0;
  }

  v52 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v45, v46, v47);
  v56 = objc_msgSend_invertedSet(v52, v53, v54, v55);
  v58 = objc_msgSend_rangeOfCharacterFromSet_options_(v33, v57, v56, 4);

  if (v58 == 0x7FFFFFFFFFFFFFFFLL || (v62 = objc_msgSend_length(v33, v59, v60, v61), v66 = v58 + 1, v58 + 1 >= objc_msgSend_length(v33, v63, v64, v65)))
  {
    v155 = &stru_2834BADA0;
  }

  else
  {
    v67 = objc_msgSend_substringWithRange_(v33, v59, v58 + 1, v62 + ~v58);
    v70 = objc_msgSend_substringToIndex_(v33, v68, v66, v69);
    v155 = v67;

    v33 = v70;
  }

  v156 = objc_msgSend_tsce_referenceComponentsSeparatedByPathDelimiter(v33, v59, v60, v61);
  if (objc_msgSend_count(v156, v71, v72, v73) < 2)
  {
    v80 = 0;
  }

  else
  {
    v77 = objc_msgSend_objectAtIndex_(v156, v74, 0, v76);
    v80 = objc_msgSend_stringByAppendingString_(v77, v78, @"::", v79);

    v83 = objc_msgSend_objectAtIndex_(v156, v81, 1, v82);

    v33 = v83;
  }

  v84 = objc_msgSend_tsce_referenceComponentsSeparatedByColon(v160, v74, v75, v76);
  if (objc_msgSend_count(v84, v85, v86, v87) == 2)
  {
    v91 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCAB50], v88, v89, v90);
    objc_msgSend_addCharactersInString_(v91, v92, @"$", v93);
    v96 = objc_msgSend_objectAtIndex_(v84, v94, 0, v95);
    v99 = objc_msgSend_objectAtIndex_(v84, v97, 1, v98);
    v102 = objc_msgSend_stringByTrimmingCharactersInSet_(v96, v100, v91, v101);
    v105 = objc_msgSend_stringByTrimmingCharactersInSet_(v99, v103, v91, v104);
    v109 = objc_msgSend_intValue(v102, v106, v107, v108);
    v113 = objc_msgSend_intValue(v105, v110, v111, v112);
    if (v109 >= 1 && v113 >= 1 && v109 == v113)
    {
      v114 = v96;

      v160 = v114;
    }
  }

  v115 = objc_msgSend_tsce_referenceComponentsSeparatedByColon(v33, v88, v89, v90);
  if (objc_msgSend_count(v115, v116, v117, v118) == 2)
  {
    v122 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCAB50], v119, v120, v121);
    objc_msgSend_addCharactersInString_(v122, v123, @"$", v124);
    v127 = objc_msgSend_objectAtIndex_(v115, v125, 0, v126);
    v130 = objc_msgSend_objectAtIndex_(v115, v128, 1, v129);
    v133 = objc_msgSend_stringByTrimmingCharactersInSet_(v127, v131, v122, v132);
    v136 = objc_msgSend_stringByTrimmingCharactersInSet_(v130, v134, v122, v135);
    v140 = objc_msgSend_intValue(v133, v137, v138, v139);
    v144 = objc_msgSend_intValue(v136, v141, v142, v143);
    if (v140 >= 1 && v144 >= 1 && v140 == v144)
    {
      v145 = v127;

      v33 = v145;
    }
  }

  if (v159)
  {
    v146 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v119, @"%@%@%@%@%@%@", v121, v159, v160, @":", v157, v33, v155);
  }

  else
  {
    if (v80)
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v119, @"%@%@%@%@%@%@", v121, v160, @":", v157, v80, v33, v155);
    }

    else
    {
      objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v119, @"%@%@%@%@%@", v121, v160, @":", v157, v33, v155);
    }
    v146 = ;
  }

  v148 = v146;
  objc_msgSend_removeObjectsInRange_(v154, v147, v152, 2);
  objc_msgSend_addObject_(v154, v149, v148, v150);

  return a2;
}

TSCEASTColonTractElement *sub_221379200(TSCEASTIteratorBase *a1, TSCEASTColonTractElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTColonTractElement::relativeTractRef(this, a1, a3, a4);
  v43._lower = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  v9 = objc_msgSend_absoluteCellTractRefForHostCell_(v6, v7, &v43, v8);
  v13 = objc_msgSend_tableUID(v6, v10, v11, v12);
  v15 = v14;
  v43._lower = v13;
  v43._upper = v14;
  v16 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  if (v13 == v16->var0.var0._tableUID._lower && v15 == v16->var0.var0._tableUID._upper)
  {
    v43._lower = 0;
    v43._upper = 0;
  }

  v20 = sub_2212C47E0(&v43, 1, v17, v18);
  v42 = objc_msgSend_topLeft(v9, v21, v22, v23);
  v41 = objc_msgSend_bottomRight(v9, v24, v25, v26);
  v40 = objc_msgSend_preserveFlags(v9, v27, v28, v29) & 3;
  v30 = sub_2212C62E0(&v42, &v40);
  v40 = (objc_msgSend_preserveFlags(v9, v31, v32, v33) >> 2) & 3;
  v34 = sub_2212C62E0(&v41, &v40);
  objc_msgSend_appendFormat_(v20, v35, @"%@%@%@", v36, v30, @":", v34);
  if (v20)
  {
    objc_msgSend_addObject_(*(a1 + 17), v37, v20, v38);
  }

  return this;
}

TSCEASTNumberElement *sub_2213793BC(id *a1, TSCEASTNumberElement *this, uint64_t a3, uint64_t a4)
{
  v17._decimal.w[0] = TSCEASTNumberElement::value(this, a1, a3, a4);
  v17._decimal.w[1] = v6;
  if (TSUDecimal::isNaN(&v17))
  {
    objc_msgSend_addObject_(a1[17], v7, @"#REF!", v8);
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x277CCACA8]);
    TSUDecimal::doubleValue(&v17);
    v13 = objc_msgSend_initWithFormat_(v9, v10, @"%.17G", v11, v12);
    objc_msgSend_addObject_(a1[17], v14, v13, v15);
  }

  return this;
}

TSCEASTBooleanElement *sub_221379474(id *a1, TSCEASTBooleanElement *this, uint64_t a3, uint64_t a4)
{
  if (TSCEASTBooleanElement::value(this, a1, a3, a4))
  {
    objc_msgSend_addObject_(a1[17], v6, @"TRUE", v7);
  }

  else
  {
    objc_msgSend_addObject_(a1[17], v6, @"FALSE", v7);
  }

  return this;
}

TSCEASTStringElement *sub_2213794CC(TSCEASTIteratorBase *a1, TSCEASTStringElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTStringElement::string(this, a1, a3, a4);
  v10 = objc_msgSend_tsce_newStringByAddingDoubleQuoteEscapesIfNecessary(v6, v7, v8, v9);
  v11 = *(a1 + 17);
  v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"%@", v13, v10);
  objc_msgSend_addObject_(v11, v15, v14, v16);

  return this;
}

TSCEASTDateElement *sub_22137958C(id *a1, TSCEASTDateElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDateElement::value(this, a1, a3, a4);
  v10 = objc_msgSend_gregorianCalendar(TSCECalendar, v7, v8, v9);
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v20 = 0uLL;
  v19 = 0;
  objc_msgSend_extractComponentsFromDate_year_month_day_hour_minute_second_(v10, v11, v6, &v23, &v22, &v21, &v20 + 8, &v20, &v19);
  if (v20 != 0 || v19)
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"(DATE(%li,%li,%li)+TIMEVALUE(TIME(%li,%li,%li)))", v13, v23, v22, v21, *(&v20 + 1), v20, v19);
  }

  else
  {
    v14 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v12, @"DATE(%li,%li,%li)", v13, v23, v22, v21);
  }

  v17 = v14;
  objc_msgSend_addObject_(a1[17], v15, v14, v16);

  return this;
}

TSCEASTDurationElement *sub_2213796BC(TSCEASTIteratorBase *a1, TSCEASTDurationElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTDurationElement::unitNum(this, a1, a3, a4);
  v58 = a1;
  v9 = TSCEASTDurationElement::unit(this, a1, v7, v8);
  v10 = 0;
  v11 = 0.0;
  if (v9 > 3)
  {
    if (v9 != 4)
    {
      if (v9 != 5)
      {
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        v16 = 0.0;
        v17 = 0.0;
        v18 = 0.0;
        if (v9 != 6)
        {
          goto LABEL_16;
        }

LABEL_15:
        v18 = trunc(v6);
        v6 = v6 - v18;
        v10 = 1;
        v15 = v12;
        v16 = v13;
        v17 = v14;
        goto LABEL_16;
      }

      v13 = 0.0;
      v12 = 0.0;
LABEL_14:
      v14 = v11;
      v11 = floor(v6 / 60.0);
      v6 = v6 + v11 * -60.0;
      goto LABEL_15;
    }

    v13 = 0.0;
LABEL_13:
    v12 = v11;
    v11 = floor(v6 / 3600.0);
    v6 = v6 + v11 * -3600.0;
    goto LABEL_14;
  }

  if (v9 == 2)
  {
    v11 = floor(v6 / 604800.0);
    v6 = v6 + v11 * -604800.0;
    goto LABEL_12;
  }

  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if (v9 == 3)
  {
LABEL_12:
    v13 = v11;
    v11 = floor(v6 / 86400.0);
    v6 = v6 + v11 * -86400.0;
    goto LABEL_13;
  }

LABEL_16:
  if (v9 == 7)
  {
    v10 = 1;
  }

  if (v10)
  {
    v19 = v6 * 1000.0;
  }

  else
  {
    v19 = 0.0;
  }

  v20 = objc_alloc(MEMORY[0x277CCABB0]);
  v60 = objc_msgSend_initWithDouble_(v20, v21, v22, v23, v16);
  v24 = objc_alloc(MEMORY[0x277CCABB0]);
  v59 = objc_msgSend_initWithDouble_(v24, v25, v26, v27, v15);
  v28 = objc_alloc(MEMORY[0x277CCABB0]);
  v62 = objc_msgSend_initWithDouble_(v28, v29, v30, v31, v17);
  v32 = objc_alloc(MEMORY[0x277CCABB0]);
  v61 = objc_msgSend_initWithDouble_(v32, v33, v34, v35, v11);
  v36 = objc_alloc(MEMORY[0x277CCABB0]);
  v40 = objc_msgSend_initWithDouble_(v36, v37, v38, v39, v18);
  v41 = objc_alloc(MEMORY[0x277CCABB0]);
  v45 = objc_msgSend_initWithDouble_(v41, v42, v43, v44, v19);
  v46 = sub_221379A88(v60);
  v47 = sub_221379A88(v59);
  v48 = sub_221379A88(v62);
  v49 = sub_221379A88(v61);
  v50 = sub_221379A88(v40);
  v51 = sub_221379A88(v45);
  v54 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v52, @"DURATION(%@,%@,%@,%@,%@,%@)", v53, v46, v47, v48, v49, v50, v51);
  objc_msgSend_addObject_(*(v58 + 17), v55, v54, v56);

  return this;
}

id sub_221379A88(void *a1)
{
  v1 = a1;
  if (qword_27CFB5480 != -1)
  {
    sub_2216F77E4();
  }

  os_unfair_lock_lock(&unk_27CFB5478);
  StringWithNumber = objc_msgSend_createStringWithNumber_(qword_27CFB5470, v2, v1, v3);
  os_unfair_lock_unlock(&unk_27CFB5478);

  return StringWithNumber;
}

const char *sub_221379B4C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 136);
  v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"%C%C", a4, 57344, 57344);
  objc_msgSend_addObject_(v5, v7, v6, v8);

  return a2;
}

TSCEASTArrayElement *sub_221379BD0(TSCEASTIteratorBase *a1, TSCEASTArrayElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTArrayElement::numColumns(this, a1, a3, a4);
  v9 = TSCEASTArrayElement::numRows(this, a1, v7, v8);
  if (v9 > 1 || v6 >= 0x100)
  {
    v10 = *(a1 + 18);
    if (v10)
    {
      *v10 = 1;
    }
  }

  sub_221379C50(a1, v6, v9, 0);
  return this;
}

void sub_221379C50(uint64_t a1, int a2, int a3, int a4)
{
  v32 = *(a1 + 136);
  v9 = objc_msgSend_count(v32, v6, v7, v8);
  v12 = objc_msgSend_stringWithCapacity_(MEMORY[0x277CCAB68], v10, 1, v11);
  v15 = v12;
  v30 = a4;
  if (a4)
  {
    objc_msgSend_appendString_(v12, v13, @"("), v14;
  }

  else
  {
    objc_msgSend_appendString_(v12, v13, @"{", v14);
  }

  v29 = (a3 * a2);
  v18 = v9 - v29;
  if (a3)
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if (v20)
      {
        objc_msgSend_appendString_(v15, v16, @";", v17);
      }

      if (a2)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (v21)
          {
            objc_msgSend_appendString_(v15, v16, @",", v17);
          }

          v23 = objc_msgSend_objectAtIndex_(v32, v16, v18 + v22, v17);
          objc_msgSend_appendString_(v15, v24, v23, v25);

          ++v21;
          ++v22;
        }

        while (a2 != v21);
      }

      ++v20;
      v19 += a2;
    }

    while (v20 != a3);
  }

  if (v30)
  {
    objc_msgSend_appendString_(v15, v16, @""), v17);
  }

  else
  {
    objc_msgSend_appendString_(v15, v16, @"}", v17);
  }

  objc_msgSend_removeObjectsInRange_(v32, v26, v18, v29);
  objc_msgSend_addObject_(v32, v27, v15, v28);
}

uint64_t sub_221379E20(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 48))(a2, a1);
  sub_221379C50(a1, v4, 1, 1);
  return a2;
}

TSCEASTRelativeCoordRefElement *sub_221379E88(TSCEASTIteratorBase *a1, TSCEASTRelativeCoordRefElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTRelativeCoordRefElement::tableUID(this, a1, a3, a4);
  v8 = v7;
  v23._lower = v6;
  v23._upper = v7;
  v9 = TSCEFormulaRewriteContext::containingCell(*(a1 + 1));
  if (v6 == v9->var0.var0._tableUID._lower && v8 == v9->var0.var0._tableUID._upper)
  {
    v23._lower = 0;
    v23._upper = 0;
  }

  v13 = sub_2212C47E0(&v23, 1, v10, v11);
  coordinate = TSCEFormulaRewriteContext::containingCell(*(a1 + 1))->var0.var0.coordinate;
  (*(*this + 136))(&v22, this, a1, &coordinate);
  v20 = TSCEASTRelativeCoordRefElement::preserveFlags(this, a1);
  coordinate = v22;
  v14 = sub_2212C62E0(&coordinate, &v20);
  objc_msgSend_appendString_(v13, v15, v14, v16);
  if (TSCEASTRelativeCoordRefElement::spansAllColumns(this, a1) && (*&v22 & 0xFFFFFFFFFFFFLL) != 0x7FFF7FFFFFFFLL)
  {
    objc_msgSend_appendFormat_(v13, v17, @":%@", v18, v14);
  }

  if (v13)
  {
    objc_msgSend_addObject_(*(a1 + 17), v17, v13, v18);
  }

  return this;
}

const char *sub_22137A098(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::uidReferenceNode(TSCEASTUidReferenceElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 526, 0, "Shouldn't see uid-form references when making Sage formula strings.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return a2;
}

const char *sub_22137A154(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::viewTractRefNode(TSCEASTViewTractRefElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 531, 0, "Shouldn't see view cellRef references when making Sage formula strings.");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return a2;
}

TSCEASTWhitespaceElement *sub_22137A210(id *a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4);
  v10 = objc_msgSend_lastObject(a1[17], v7, v8, v9);
  v13 = objc_msgSend_stringByAppendingString_(v10, v11, v6, v12);
  v14 = a1[17];
  v18 = objc_msgSend_count(v14, v15, v16, v17);
  objc_msgSend_replaceObjectAtIndex_withObject_(v14, v19, v18 - 1, v13);

  return this;
}

TSCEASTWhitespaceElement *sub_22137A2CC(id *a1, TSCEASTWhitespaceElement *this, uint64_t a3, uint64_t a4)
{
  v6 = TSCEASTWhitespaceElement::whitespace(this, a1, a3, a4);
  v10 = objc_msgSend_lastObject(a1[17], v7, v8, v9);
  v13 = objc_msgSend_stringByAppendingString_(v6, v11, v10, v12);
  v14 = a1[17];
  v18 = objc_msgSend_count(v14, v15, v16, v17);
  objc_msgSend_replaceObjectAtIndex_withObject_(v14, v19, v18 - 1, v13);

  return this;
}

const char *sub_22137A38C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::letBindNode(TSCEASTLetBindElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 560, 0, "Let nodes should have been removed prior to Sage export");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return a2;
}

const char *sub_22137A448(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x277D81150];
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "virtual TSCEASTElement *TSCEASTNodeFormulaStringIterator::variableNode(TSCEASTVariableElement *)", a4);
  v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEASTNodeFormulaStringIterator.mm", v8);
  objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v5, v10, v6, v9, 565, 0, "Variable nodes should have been removed prior to Sage export");

  objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v11, v12, v13);
  return a2;
}

void sub_22137A504(id *a1)
{
  TSCEASTStreamIterator::~TSCEASTStreamIterator(a1, v2);

  JUMPOUT(0x223DA1450);
}

uint64_t sub_22137A554(uint64_t a1, TSCEASTNodeArray *a2, TSCEFormulaRewriteContext *a3, uint64_t a4)
{
  TSCEASTStreamIterator::TSCEASTStreamIterator(a1, a2, a3);
  *v6 = &unk_2834A6C50;
  *(a1 + 136) = objc_msgSend_array(MEMORY[0x277CBEB18], v7, v8, v9);
  *(a1 + 144) = a4;
  *(a1 + 96) = 1;
  return a1;
}

void sub_22137A5CC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v11 = objc_msgSend_usEnglishLocale(MEMORY[0x277D81228], a2, a3, a4);
  v6 = objc_msgSend_createHarmonizedDecimalFormatterOfStyle_(v11, v4, 0, v5);
  objc_msgSend_setFormat_(v6, v7, @"0", v8);
  objc_msgSend_setMinFractionDigits_maxFractionDigits_(v6, v9, 0, 0x7FFFFFFFLL);
  v10 = qword_27CFB5470;
  qword_27CFB5470 = v6;
}

uint64_t sub_22137A674(const char *a1, int a2)
{
  printf("\n%s ", a1);
  dword_27CFB6C68 = a2;
  if ((a2 - 7) >= 0xFFFFFFFA)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0;
  }

  printf("%s error\n", off_2784635C0[v3]);
  return 0;
}

unsigned int *sub_22137A6E0(unsigned int *a1, const char *a2, unsigned int a3, uint64_t a4)
{
  *a1 = -1;
  if (a2 != -1 && a3 != -1)
  {
    v6 = a2;
    if (a2 >= 0xFFF)
    {
      v7 = MEMORY[0x277D81150];
      v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTLookupKeyCoord::TSTLookupKeyCoord(TSCEUidLookupKey, TSCEUidLookupKey)", a4);
      v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDLookupList.mm", v10);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 33, 0, "Can't support a column key larger than %lu", 4095);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
    }

    if (a3 >= 0xFFFFF)
    {
      v16 = MEMORY[0x277D81150];
      v17 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], a2, "TSTLookupKeyCoord::TSTLookupKeyCoord(TSCEUidLookupKey, TSCEUidLookupKey)", a4);
      v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v18, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDLookupList.mm", v19);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v16, v21, v17, v20, 34, 0, "Can't support a row key larger than %lu", 0xFFFFFLL);

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v22, v23, v24);
    }

    *a1 = v6 | (a3 << 12);
  }

  return a1;
}

uint64_t sub_22137A86C(uint64_t a1)
{
  sub_22132A30C(a1 + 64);
  sub_2210BDEC0(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_22137A8B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_2210BCA4C(a1, a2);
    sub_2210BCA4C(a1 + 104, a2 + 104);
    sub_22137BB5C((a1 + 208), *(a2 + 208), *(a2 + 216), (*(a2 + 216) - *(a2 + 208)) >> 2);
  }

  return a1;
}

void sub_22137A908(const void **a1, _OWORD *a2)
{
  v4 = sub_2210BCDEC(a1, a2);
  v5 = sub_2210BCDEC(a1 + 13, a2 + 1);
  sub_22137A6E0(&v7, v4, v5, v6);
  sub_2210C47D0(a1 + 26, &v7);
}

void *sub_22137A96C@<X0>(void *result@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = result[26];
  if (a2 < (result[27] - v4) >> 2)
  {
    v5 = result;
    v6 = *(v4 + 4 * a2);
    v7 = v6 == -1;
    if (v6 == -1)
    {
      v8 = -1;
    }

    else
    {
      v8 = v6 & 0xFFF;
    }

    v9 = v6 >> 12;
    if (v7)
    {
      v10 = -1;
    }

    else
    {
      v10 = v9;
    }

    sub_2210BCEA0(result, v8);
    sub_2210BCEA0(v5 + 13, v10);

    return TSTMakeCellUID(a3);
  }

  return result;
}

void sub_22137AA18(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = 0;
  v4 = *(a1 + 208);
  v5 = *(a1 + 216);
  if (v4 != v5)
  {
    v6 = 0;
    do
    {
      v3[2](v3, v4, v6, &v7);
      if (v7)
      {
        break;
      }

      ++v6;
      v4 += 4;
    }

    while (v4 != v5);
  }
}

void sub_22137AAB4(void *a1, void *a2)
{
  v14 = a2;
  v16 = 0;
  v2 = a1[26];
  v12 = a1[27];
  if (v2 != v12)
  {
    v3 = 0;
    v4 = v2 + 4;
    v5 = -1;
    v6 = -1;
    do
    {
      v7 = *(v4 - 4);
      v8 = v7 == -1;
      if (v7 == -1)
      {
        v9 = -1;
      }

      else
      {
        v9 = *(v4 - 4) & 0xFFF;
      }

      v10 = v7 >> 12;
      if (v8)
      {
        v11 = -1;
      }

      else
      {
        v11 = v10;
      }

      if (v9 != v5)
      {
        sub_2210BCEA0(a1, v9);
        v5 = v9;
      }

      if (v11 != v6)
      {
        sub_2210BCEA0(a1 + 13, v11);
        v6 = v11;
      }

      memset(v15, 0, sizeof(v15));
      TSTMakeCellUID(v15);
      v14[2](v14, v15, v3, &v16);
      if (v16)
      {
        break;
      }

      ++v3;
      v8 = v4 == v12;
      v4 += 4;
    }

    while (!v8);
  }
}

void sub_22137AC20(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v9 = objc_msgSend_regionByIntersectingRange_(v7, v8, 0, ((a4[1] - *a4) << 28) & 0xFFFFFFFF00000000 | ((a3[1] - *a3) >> 4));

  v13 = objc_msgSend_cellCount(v9, v10, v11, v12);
  sub_2211663C4((a1 + 208), v13);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22137AD20;
  v16[3] = &unk_2784635F8;
  v16[4] = a1;
  v16[5] = a3;
  v16[6] = a4;
  objc_msgSend_enumerateCellIDsUsingBlock_(v9, v14, v16, v15);
}

void sub_22137AD20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  TSTMakeCellUID(v3);
  sub_22137A908(v2, v3);
}

uint64_t sub_22137AD84(uint64_t a1, void *a2, void *a3, unint64_t a4, void *a5)
{
  v8 = a3;
  v9 = a5;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1065353216;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 1065353216;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 1065353216;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 1065353216;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  if ((objc_msgSend_isEmptyPivot(v8, v10, v11, v12) & 1) == 0)
  {
    v89 = v9;
    v88 = objc_msgSend_translator(v8, v13, v14, v15, a1 + 208, a1 + 104);
    v87 = objc_msgSend_indexesForSummaryRows(v88, v16, v17, v18);
    v86 = objc_msgSend_indexesForLabelRows(v88, v19, v20, v21);
    v85 = objc_msgSend_indexesForSummaryColumns(v8, v22, v23, v24);
    isCategorized = objc_msgSend_isCategorized(v8, v25, v26, v27);
    isAPivotTable = objc_msgSend_isAPivotTable(v8, v29, v30, v31);
    v36 = (a4 >> 9) & 1 | isCategorized;
    if ((a4 >> 9) & 1 | isCategorized & 1 | isAPivotTable & 1)
    {
      v37 = objc_msgSend_groupByForRows(v8, v32, v33, v34);
      v84 = objc_msgSend_numberOfLevels(v37, v38, v39, v40);
    }

    else
    {
      v84 = 0;
    }

    if ((a4 & 2) != 0)
    {
      v41 = isAPivotTable;
    }

    else
    {
      v41 = 1;
    }

    if (isAPivotTable)
    {
      v42 = 6;
    }

    else
    {
      v42 = 4;
    }

    v43 = (a4 & 8) == 0;
    v82 = (a4 & 0x10) == 0;
    v83 = (a4 & 0x100) == 0;
    v44 = v36 ^ 1;
    if ((a4 & 0x40) != 0)
    {
      v45 = v36 ^ 1;
    }

    else
    {
      v45 = 1;
    }

    if ((a4 & 0x20) != 0)
    {
      v46 = v36 ^ 1;
    }

    else
    {
      v46 = 1;
    }

    if ((v36 & v41) != 0)
    {
      v44 = v43 & v45;
    }

    v80 = v44;
    v81 = v46;
    if ((a4 & 1) == 0)
    {
      v47 = MEMORY[0x277D81150];
      v48 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "TSTCellUIDLookupList::TSTCellUIDLookupList(const TSTCellUIDLookupList &, TSTTableInfo *__strong, TSTPruneBehavior, BOOL (^__strong)(const TSTCellUID &, NSUInteger))", v34);
      v51 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v49, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDLookupList.mm", v50);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v47, v52, v48, v51, 233, 0, "Oh in what case do we need to prune away base cells?");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v53, v54, v55);
    }

    v56 = v42 & a4;
    if (v56)
    {
      v57 = v41;
    }

    else
    {
      v57 = 1;
    }

    if ((v57 & 1) == 0)
    {
      v58 = MEMORY[0x277D81150];
      v59 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "TSTCellUIDLookupList::TSTCellUIDLookupList(const TSTCellUIDLookupList &, TSTTableInfo *__strong, TSTPruneBehavior, BOOL (^__strong)(const TSTCellUID &, NSUInteger))", v34);
      v62 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v60, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDLookupList.mm", v61);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v58, v63, v59, v62, 234, 0, "Allowing both summary cells and wildcards makes little sense");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v64, v65, v66);
    }

    if ((~a4 & 0x18) == 0)
    {
      v67 = MEMORY[0x277D81150];
      v68 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v32, "TSTCellUIDLookupList::TSTCellUIDLookupList(const TSTCellUIDLookupList &, TSTTableInfo *__strong, TSTPruneBehavior, BOOL (^__strong)(const TSTCellUID &, NSUInteger))", v34);
      v71 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v69, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/tables/TSTCellUIDLookupList.mm", v70);
      objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v67, v72, v68, v71, 235, 0, "Allowing both label cells and wildcards makes little sense");

      objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v73, v74, v75);
    }

    v91[0] = MEMORY[0x277D85DD0];
    v91[1] = 3221225472;
    v91[2] = sub_22137B2B0;
    v91[3] = &unk_278463620;
    v92 = v8;
    v76 = v87;
    v93 = v76;
    v98 = v56 == 0;
    v99 = v45;
    v77 = v86;
    v94 = v77;
    v100 = v82;
    v101 = v80;
    v102 = v41;
    v103 = v84;
    v104 = v43;
    v105 = v81;
    v78 = v85;
    v95 = v78;
    v106 = v83;
    v9 = v89;
    v96 = v89;
    v97 = a1;
    sub_22137AAB4(a2, v91);
  }

  return a1;
}

void sub_22137B1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18)
{
  v23 = *a9;
  if (*a9)
  {
    *(v19 + 216) = v23;
    operator delete(v23);
  }

  sub_22137A86C(a10);
  sub_22137A86C(v19);

  _Unwind_Resume(a1);
}

void sub_22137B2B0(uint64_t a1, char *a2, uint64_t a3)
{
  v8 = objc_msgSend_rowIndexForRowUID_(*(a1 + 32), a2, *(a2 + 2), *(a2 + 3));
  if (v8 != 0x7FFFFFFF)
  {
    if (objc_msgSend_containsIndex_(*(a1 + 40), v6, v8, v7))
    {
      if (*(a1 + 80) == 1 && (*(a1 + 81) & 1) != 0)
      {
        return;
      }

      v14 = 0;
      v13 = 1;
      goto LABEL_19;
    }

    if (objc_msgSend_containsIndex_(*(a1 + 48), v12, v8, v15) && (*(a1 + 82) & 1) != 0)
    {
      return;
    }

    goto LABEL_18;
  }

  if (*(a1 + 83))
  {
    return;
  }

  v9 = *(a2 + 1);
  v21[0] = *a2;
  v21[1] = v9;
  v10 = sub_2211A8FF4(v21);
  if (v10 == 255)
  {
    return;
  }

  v11 = v10;
  if (!sub_2211A8E4C(*(a2 + 2), *(a2 + 3)))
  {
    if ((*(a1 + 86) & 1) != 0 || v11 > *(a1 + 85))
    {
      return;
    }

LABEL_18:
    v13 = 0;
    v14 = 0;
    goto LABEL_19;
  }

  if (*(a1 + 84) == 1 && (*(a1 + 81) & 1) != 0 || v11 > *(a1 + 85))
  {
    return;
  }

  v13 = 0;
  v14 = 1;
LABEL_19:
  v16 = objc_msgSend_columnIndexForColumnUID_(*(a1 + 32), v12, *a2, *(a2 + 1));
  v19 = v16;
  if (*a2 == *"category column" && *(a2 + 1) == *" column")
  {
    if ((v13 | v14) != 1 || *(a1 + 81) == 1) && (*(a1 + 87))
    {
      return;
    }
  }

  else
  {
    if (v16 == 0x7FFF)
    {
      return;
    }

    if (objc_msgSend_containsIndex_(*(a1 + 56), v17, v16, v18))
    {
      goto LABEL_30;
    }

    if (v14 && (*(a1 + 84) & 1) != 0)
    {
      return;
    }

    if (v13)
    {
LABEL_30:
      if (*(a1 + 80))
      {
        return;
      }
    }
  }

  if (*(a1 + 88) != 1 || v8 == 0x7FFFFFFF || v19 == 0x7FFF || (objc_msgSend_hasMergeFragmentAtCellID_(*(a1 + 32), v17, v8 | (v19 << 32), v18) & 1) == 0)
  {
    v20 = *(a1 + 64);
    if (!v20 || (*(v20 + 16))(v20, a2, a3))
    {
      sub_22137A908(*(a1 + 72), a2);
    }
  }
}

void sub_22137B4D0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56))
  {
    v4 = *(a2 + 56);
  }

  else
  {
    v4 = &TSCE::_UidLookupListArchive_default_instance_;
  }

  sub_2210BCFE0(a1, v4);
  if (*(a2 + 64))
  {
    v5 = *(a2 + 64);
  }

  else
  {
    v5 = &TSCE::_UidLookupListArchive_default_instance_;
  }

  sub_2210BCFE0((a1 + 104), v5);
  v7 = *(a2 + 40);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 4 * v7;
    do
    {
      sub_22137A6E0(&v10, *(*(a2 + 32) + v8), *(*(a2 + 48) + v8), v6);
      sub_2210C47D0((a1 + 208), &v10);
      v8 += 4;
    }

    while (v9 != v8);
  }
}

void sub_22137B574(TSKUIDStruct **a1, uint64_t a2)
{
  *(a2 + 16) |= 1u;
  v4 = *(a2 + 56);
  if (!v4)
  {
    v5 = *(a2 + 8);
    if (v5)
    {
      v5 = *(v5 & 0xFFFFFFFFFFFFFFFELL);
    }

    v4 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v5);
    *(a2 + 56) = v4;
  }

  sub_2210BCF18(a1, v4);
  *(a2 + 16) |= 2u;
  v6 = *(a2 + 64);
  if (!v6)
  {
    v7 = *(a2 + 8);
    if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
    }

    v6 = google::protobuf::Arena::CreateMaybeMessage<TSCE::UidLookupListArchive>(v7);
    *(a2 + 64) = v6;
  }

  sub_2210BCF18(a1 + 13, v6);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = sub_22137B66C;
  v8[3] = &unk_278463640;
  v8[4] = a2;
  sub_22137AA18(a1, v8);
}

void sub_22137B66C(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 32);
  if (*a2 == -1)
  {
    v5 = -1;
  }

  else
  {
    v5 = *a2 & 0xFFF;
  }

  v6 = *(v4 + 24);
  if (v6 == *(v4 + 28))
  {
    v7 = v6 + 1;
    sub_2210BBC64((v4 + 24), v6 + 1);
    *(*(v4 + 32) + 4 * v6) = v5;
    v8 = *(a1 + 32);
  }

  else
  {
    *(*(v4 + 32) + 4 * v6) = v5;
    v7 = v6 + 1;
    v8 = v4;
  }

  *(v4 + 24) = v7;
  if (*a2 == -1)
  {
    v9 = -1;
  }

  else
  {
    v9 = *a2 >> 12;
  }

  v10 = *(v8 + 40);
  if (v10 == *(v8 + 44))
  {
    v11 = v10 + 1;
    sub_2210BBC64((v8 + 40), v10 + 1);
    *(*(v8 + 48) + 4 * v10) = v9;
  }

  else
  {
    *(*(v8 + 48) + 4 * v10) = v9;
    v11 = v10 + 1;
  }

  *(v8 + 40) = v11;
}

void sub_22137B828(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_22137BAE8(va);

  _Unwind_Resume(a1);
}

void sub_22137B94C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_22137BAE8(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    *(a1 + 216) = v2;
    operator delete(v2);
  }

  sub_22132A30C(a1 + 168);
  sub_2210BDEC0(a1 + 128);
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  sub_22132A30C(a1 + 64);
  sub_2210BDEC0(a1 + 24);
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_22137BB5C(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 2)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 62))
    {
      v9 = v7 >> 1;
      if (v7 >> 1 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_221287954(v6, v10);
    }

    sub_22107C148();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 2)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

double sub_22137C1A8(unsigned int a1, unsigned int a2, double a3)
{
  if (a1 < 1 || a2 < 1 || a3 < 0.0)
  {
    sub_22137A674("fdtr", 1);
    return 0.0;
  }

  else
  {
    v4 = a1 * a3;
    v5 = vcvtd_n_f64_u32(a1, 1uLL);
    v6 = v4 / (v4 + a2);
    v7 = vcvtd_n_f64_u32(a2, 1uLL);

    return sub_2212F4E64(v5, v7, v6);
  }
}

void sub_22137C214(signed int a1, signed int a2, double a3)
{
  v5 = a3 > 1.0 || a1 < 1 || a2 < 1;
  if (v5 || a3 <= 0.0)
  {
    sub_22137A674("fdtri", 1);
  }

  else
  {
    v6 = vcvtd_n_f64_u32(a2, 1uLL);
    v7 = vcvtd_n_f64_u32(a1, 1uLL);
    v8 = sub_2212F4E64(v6, v7, 0.5);
    if (a3 >= 0.001 && v8 <= a3)
    {
      sub_221125004(v7, v6, 1.0 - a3);
    }

    else
    {
      sub_221125004(v6, v7, a3);
    }
  }
}

void sub_22137C6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = TSCERemoteDataStore;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t sub_22137C7D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (objc_msgSend_registeredWithCoordinator(*(a1 + 32), a2, a3, a4))
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataStore registerWithCoordinator]_block_invoke", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 176, 0, "Store is already registered!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_sharedCoordinator(TSCERemoteDataCoordinator, v5, v6, v7);
  objc_msgSend_registerStore_(v17, v18, *(a1 + 32), v19);

  v21 = *(a1 + 32);

  return MEMORY[0x2821F9670](v21, sel_setRegisteredWithCoordinator_, 1, v20);
}

uint64_t sub_22137C94C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if ((objc_msgSend_registeredWithCoordinator(*(a1 + 32), a2, a3, a4) & 1) == 0)
  {
    v8 = MEMORY[0x277D81150];
    v9 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v5, "[TSCERemoteDataStore unregisterWithCoordinator]_block_invoke", v7);
    v12 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v10, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERemoteDataStore.mm", v11);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v8, v13, v9, v12, 185, 0, "Store is already unregistered!");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v14, v15, v16);
  }

  v17 = objc_msgSend_sharedCoordinator(TSCERemoteDataCoordinator, v5, v6, v7);
  objc_msgSend_unregisterStore_(v17, v18, *(a1 + 32), v19);

  v21 = *(a1 + 32);

  return MEMORY[0x2821F9670](v21, sel_setRegisteredWithCoordinator_, 0, v20);
}

uint64_t sub_22137CCF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22137CD0C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_remoteDataMap(*(a1 + 32), a2, a3, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v5, *(a1 + 40), v6);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_22137CD8C()
{
  v0 = TSULogCreateCategory();
  v1 = __C;
  __C = v0;
}

void sub_22137D0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

void sub_22137D13C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v10 = objc_msgSend_cachedStocks(*(a1 + 32), a2, a3, a4);
  v7 = objc_msgSend_objectForKeyedSubscript_(v10, v5, *(a1 + 40), v6);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_22137D1BC(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_unSyncedStocks(*(a1 + 32), a2, a3, a4);
  objc_msgSend_addObject_(v7, v5, *(a1 + 40), v6);
}

void sub_22137D360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_22137D3A4(uint64_t a1)
{
  v41 = TSKUIDStruct::description(*(a1 + 56));
  v5 = objc_msgSend_ownerMap(*(a1 + 32), v2, v3, v4);
  v8 = objc_msgSend_objectForKey_(v5, v6, v41, v7);

  if (!v8)
  {
    v12 = objc_msgSend_set(TSCERemoteDataSpecifierSet, v9, v10, v11);
    v16 = objc_msgSend_ownerMap(*(a1 + 32), v13, v14, v15);
    objc_msgSend_setObject_forKey_(v16, v17, v12, v41);

    v8 = v12;
  }

  objc_msgSend_insertSpecifiersFromSet_(v8, v9, *(a1 + 40), v11);
  v18 = *(a1 + 40);
  v22 = objc_msgSend_interestingKeys(*(a1 + 32), v19, v20, v21);
  v25 = objc_msgSend_setOfSpecifiersNotContainedInSet_(v18, v23, v22, v24);
  v26 = *(*(a1 + 48) + 8);
  v27 = *(v26 + 40);
  *(v26 + 40) = v25;

  v31 = objc_msgSend_interestingKeys(*(a1 + 32), v28, v29, v30);
  objc_msgSend_insertSpecifiersFromSet_(v31, v32, *(a1 + 40), v33);

  v37 = objc_msgSend_interestingKeys(*(a1 + 32), v34, v35, v36);
  *(*(a1 + 32) + 64) = objc_msgSend_count(v37, v38, v39, v40) != 0;
}