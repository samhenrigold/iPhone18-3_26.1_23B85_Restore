@interface TSCEFormulasForUndo
- (BOOL)isEmpty;
- (TSCEFormulasForUndo)initWithArchive:(const void *)archive;
- (id).cxx_construct;
- (id)description;
- (id)formulaStringAtCellRef:(const TSCECellRef *)ref;
- (id)splitIntoChunksForExcessiveSize;
- (id)subsetForOwnerKind:(unsigned __int16)kind;
- (unint64_t)count;
- (unint64_t)countForOwnerKind:(unsigned __int16)kind;
- (unordered_set<TSKUIDStruct,)ownerUIDsForOwnerKind:()std:(std:(TSCEFormulasForUndo *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(unsigned __int16)a4 equal_to<TSKUIDStruct>;
- (vector<TSCESubFormulaOwnerIndex,)allOwnerKinds;
- (void)addFormulaObject:(id)object atCellRef:(const TSCECellRef *)ref forOwnerKind:(unsigned __int16)kind;
- (void)addFormulaString:(id)string atCellRef:(const TSCECellRef *)ref;
- (void)foreachFormulaInOwnerKind:(unsigned __int16)kind performBlock:(id)block;
- (void)saveToArchive:(void *)archive archiver:(id)archiver;
@end

@implementation TSCEFormulasForUndo

- (void)addFormulaObject:(id)object atCellRef:(const TSCECellRef *)ref forOwnerKind:(unsigned __int16)kind
{
  objectCopy = object;
  kindCopy = kind;
  v9 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v9)
  {
    v10 = v9[3];
    objc_msgSend_addFormula_atCellRef_(v10, v11, objectCopy, ref);
  }

  else
  {
    v12 = objc_opt_new();
    v16 = &kindCopy;
    v13 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy, &unk_2217E1E09, &v16);
    objc_storeStrong(v13 + 3, v12);
    v10 = v12;
    objc_msgSend_addFormula_atCellRef_(v12, v14, objectCopy, ref);
  }
}

- (unint64_t)count
{
  next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
  if (!next)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v10 = next + 8;
    v5 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, next + 8, &unk_2217E1E09, &v10);
    v4 += objc_msgSend_count(v5[3], v6, v7, v8);
    next = *next;
  }

  while (next);
  return v4;
}

- (BOOL)isEmpty
{
  p_first_node = &self->_formulasForOwnerKind.__table_.__first_node_;
  do
  {
    p_first_node = p_first_node->__next_;
    if (!p_first_node)
    {
      break;
    }

    v9 = p_first_node + 2;
    v4 = sub_221485E1C(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &p_first_node[2], &unk_2217E1E09, &v9);
  }

  while (!objc_msgSend_count(v4[3], v5, v6, v7));
  return p_first_node == 0;
}

- (unordered_set<TSKUIDStruct,)ownerUIDsForOwnerKind:()std:(std:(TSCEFormulasForUndo *)self :(SEL)a3 allocator<TSKUIDStruct>> *__return_ptr)retstr :(unsigned __int16)a4 equal_to<TSKUIDStruct>
{
  v9 = a4;
  retstr->__table_.__bucket_list_ = 0u;
  *&retstr->__table_.__first_node_.__next_ = 0u;
  retstr->__table_.__max_load_factor_ = 1.0;
  result = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &v9);
  if (result)
  {
    result = objc_msgSend_formulaOwnerUIDs(result->__table_.__size_, v6, v7, v8);
    if (result != retstr)
    {
      retstr->__table_.__max_load_factor_ = result->__table_.__max_load_factor_;
      sub_2211F2900(retstr, result->__table_.__first_node_.__next_, 0);
    }
  }

  return result;
}

- (vector<TSCESubFormulaOwnerIndex,)allOwnerKinds
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  var0 = self[1].var0;
  if (var0)
  {
    v5 = 0;
    do
    {
      var2 = retstr->var2;
      if (v5 >= var2)
      {
        v7 = retstr->var0;
        v8 = v5 - retstr->var0;
        v9 = v8 >> 1;
        if (v8 >> 1 <= -2)
        {
          sub_22107C148();
        }

        v10 = var2 - v7;
        if (v10 <= v9 + 1)
        {
          v11 = v9 + 1;
        }

        else
        {
          v11 = v10;
        }

        if (v10 >= 0x7FFFFFFFFFFFFFFELL)
        {
          v12 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v12 = v11;
        }

        if (v12)
        {
          sub_22115DB94(retstr, v12);
        }

        *(2 * v9) = var0[8];
        v5 = (2 * v9 + 2);
        memcpy(0, v7, v8);
        self = retstr->var0;
        retstr->var0 = 0;
        retstr->var1 = v5;
        retstr->var2 = 0;
        if (self)
        {
          operator delete(self);
        }
      }

      else
      {
        *v5++ = var0[8];
      }

      retstr->var1 = v5;
      var0 = *var0;
    }

    while (var0);
  }

  return self;
}

- (id)subsetForOwnerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  v4 = objc_opt_new();
  v5 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v5)
  {
    v9 = objc_msgSend_copy(v5[3], v6, v7, v8);
    v14 = &kindCopy;
    v10 = sub_221485E1C(v4 + 1, &kindCopy, &unk_2217E1E09, &v14);
    v11 = v10[3];
    v10[3] = v9;
  }

  return v4;
}

- (unint64_t)countForOwnerKind:(unsigned __int16)kind
{
  kindCopy = kind;
  result = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (result)
  {
    return objc_msgSend_count(*(result + 24), v4, v5, v6);
  }

  return result;
}

- (id)splitIntoChunksForExcessiveSize
{
  v6 = objc_opt_new();
  if (self->_formulaStringsForCellRefs.__table_.__size_)
  {
    v7 = MEMORY[0x277D81150];
    v8 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v3, "[TSCEFormulasForUndo splitIntoChunksForExcessiveSize]", v5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v9, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCEFormulasForUndo.mm", v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v7, v12, v8, v11, 186, 0, "Can't split FormulasForOwner that uses formulaStrings (TSTCommandRewriteFormulasForTranspose)");

    objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v13, v14, v15);
  }

  if (objc_msgSend_count(self, v3, v4, v5) > 0xC350)
  {
    v19 = objc_msgSend_count(self, v16, v17, v18);
    v23 = objc_msgSend_count(self, v20, v21, v22);
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = sub_2214846C4;
    v51 = sub_2214846D4;
    v52 = objc_opt_new();
    next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
    if (next)
    {
      v28 = v23 / (v19 / 0xC350 + 1);
      do
      {
        v29 = *(next + 8);
        v30 = *(next + 3);
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = sub_2214846DC;
        v42[3] = &unk_2784659C8;
        v46 = v29;
        v44 = &v47;
        v45 = v28;
        v43 = v6;
        objc_msgSend_foreachFormula_(v30, v31, v42, v32);

        next = *next;
      }

      while (next);
    }

    v36 = objc_msgSend_lastObject(v6, v24, v25, v26);
    v37 = v48[5];
    if (v36 == v37)
    {
    }

    else
    {
      isEmpty = objc_msgSend_isEmpty(v37, v33, v34, v35);

      if ((isEmpty & 1) == 0)
      {
        objc_msgSend_addObject_(v6, v39, v48[5], v40);
      }
    }

    _Block_object_dispose(&v47, 8);
  }

  else
  {
    objc_msgSend_addObject_(v6, v16, self, v18);
  }

  return v6;
}

- (void)foreachFormulaInOwnerKind:(unsigned __int16)kind performBlock:(id)block
{
  kindCopy = kind;
  blockCopy = block;
  v6 = sub_2210C3024(&self->_formulasForOwnerKind.__table_.__bucket_list_.__ptr_, &kindCopy);
  if (v6)
  {
    objc_msgSend_foreachFormula_(v6[3], v7, blockCopy, v8);
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v10 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@>:\n", v6, v4);
  for (i = self->_formulasForOwnerKind.__table_.__first_node_.__next_; i; i = *i)
  {
    v12 = *(i + 8);
    v13 = objc_msgSend_description(i[3], v7, v8, v9);
    objc_msgSend_appendFormat_(v10, v14, @"  ownerKind %d = %@\n", v15, v12, v13);
  }

  return v10;
}

- (TSCEFormulasForUndo)initWithArchive:(const void *)archive
{
  v33.receiver = self;
  v33.super_class = TSCEFormulasForUndo;
  v4 = [(TSCEFormulasForUndo *)&v33 init];
  if (v4)
  {
    v22 = *(archive + 6);
    if (v22 >= 1)
    {
      for (i = 0; i != v22; ++i)
      {
        v6 = *(*(archive + 4) + 8 * i + 8);
        v7 = *(v6 + 56);
        if (*(v6 + 48))
        {
          v8 = *(v6 + 48);
        }

        else
        {
          v8 = MEMORY[0x277D809E0];
        }

        v9 = TSKUIDStruct::loadFromMessage(v8, v3);
        v10 = *(v6 + 32);
        if (v10 >= 1)
        {
          v11 = v9;
          v12 = v3;
          v13 = 0;
          v14 = 8;
          do
          {
            TSCE::FormulaAtCoordArchive::FormulaAtCoordArchive(v28, *(*(v6 + 40) + v14));
            v24 = v31;
            v25 = v30;
            v26 = v11;
            v27 = v12;
            if (v28[16])
            {
              v16 = [TSCEFormulaObject alloc];
              if (v29)
              {
                isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v16, v17, v29, 0);
              }

              else
              {
                isPreUFF = objc_msgSend_initWithArchive_isPreUFF_(v16, v17, TSCE::_FormulaArchive_default_instance_, 0);
              }

              v20 = isPreUFF;
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v19, isPreUFF, &v24, v7);

              v13 = v20;
            }

            else if (v32)
            {
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v15, v13, &v24, v7);
            }

            else
            {
              objc_msgSend_addFormulaObject_atCellRef_forOwnerKind_(v4, v15, 0, &v24, v7);
            }

            TSCE::FormulaAtCoordArchive::~FormulaAtCoordArchive(v28);
            v14 += 8;
            --v10;
          }

          while (v10);
        }
      }
    }
  }

  return v4;
}

- (void)saveToArchive:(void *)archive archiver:(id)archiver
{
  archiverCopy = archiver;
  next = self->_formulasForOwnerKind.__table_.__first_node_.__next_;
  if (next)
  {
    v10 = v14;
    do
    {
      v6 = *(next + 8);
      v7 = *(next + 3);
      v24[0] = 0;
      v24[1] = v24;
      v24[2] = 0x2020000000;
      v24[3] = 0;
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x4012000000;
      v23[3] = sub_221484CC0;
      v23[4] = nullsub_81;
      v23[5] = &unk_22188E88F;
      v23[6] = 0;
      v23[7] = 0;
      v21[0] = 0;
      v21[1] = v21;
      v21[2] = 0x3032000000;
      v21[3] = sub_2214846C4;
      v21[4] = sub_2214846D4;
      v22 = 0;
      if (v7)
      {
        v13[0] = MEMORY[0x277D85DD0];
        v13[1] = 3221225472;
        v14[0] = sub_221484CD0;
        v14[1] = &unk_2784659F0;
        v16 = v24;
        v17 = v23;
        v20 = v6;
        v18 = v21;
        archiveCopy = archive;
        v15 = archiverCopy;
        objc_msgSend_foreachFormula_(v7, v8, v13, v9, v10);
      }

      _Block_object_dispose(v21, 8);

      _Block_object_dispose(v23, 8);
      _Block_object_dispose(v24, 8);

      next = *next;
    }

    while (next);
  }
}

- (void)addFormulaString:(id)string atCellRef:(const TSCECellRef *)ref
{
  stringCopy = string;
  if (stringCopy)
  {
    refCopy = ref;
    v8 = sub_221486084(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref, &unk_2217E1E09, &refCopy);
    objc_storeStrong(v8 + 5, string);
  }

  else
  {
    sub_22148632C(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref);
  }
}

- (id)formulaStringAtCellRef:(const TSCECellRef *)ref
{
  v3 = sub_221244B44(&self->_formulaStringsForCellRefs.__table_.__bucket_list_.__ptr_, ref);
  if (v3)
  {
    v3 = v3[5];
  }

  return v3;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 20) = 1065353216;
  return self;
}

@end