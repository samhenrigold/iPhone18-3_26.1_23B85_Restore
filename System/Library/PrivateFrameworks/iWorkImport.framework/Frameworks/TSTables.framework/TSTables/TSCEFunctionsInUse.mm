@interface TSCEFunctionsInUse
- (TSCEFunctionsInUse)initWithCalcEngine:(id)engine;
- (id).cxx_construct;
- (id)description;
- (vector<TSCEFunctionIndex,)functionsUsed;
- (void)addFunctionUsesInFormula:(id)formula atCellRef:(const TSCECellRef *)ref outContainsVolatileFunction:(BOOL *)function;
- (void)addUseOfFunctions:(const void *)functions atCellRef:(const TSCECellRef *)ref;
- (void)dealloc;
- (void)dirtyCellsUsingFunction:(unsigned __int16)function;
- (void)resetCellsUsingFunction:(unsigned __int16)function;
@end

@implementation TSCEFunctionsInUse

- (TSCEFunctionsInUse)initWithCalcEngine:(id)engine
{
  v11 = *MEMORY[0x277D85DE8];
  engineCopy = engine;
  v9.receiver = self;
  v9.super_class = TSCEFunctionsInUse;
  v6 = [(TSCEFunctionsInUse *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_calcEngine, engine);
    pthread_mutexattr_init(&v10);
    pthread_mutexattr_settype(&v10, 0);
    pthread_mutex_init(&v7->_mutex, &v10);
  }

  return v7;
}

- (void)dealloc
{
  for (i = self->_cellRefsUsingFunction.__table_.__first_node_.__next_; i; i = *i)
  {
    v4 = i[3];
    if (v4)
    {
      (*(*v4 + 8))(v4, a2);
    }
  }

  sub_2210BE918(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_);
  pthread_mutex_destroy(&self->_mutex);
  v5.receiver = self;
  v5.super_class = TSCEFunctionsInUse;
  [(TSCEFunctionsInUse *)&v5 dealloc];
}

- (vector<TSCEFunctionIndex,)functionsUsed
{
  retstr->var0 = 0;
  retstr->var1 = 0;
  retstr->var2 = 0;
  var1 = self[1].var1;
  if (var1)
  {
    v5 = 0;
    do
    {
      var2 = retstr->var2;
      if (v5 >= var2)
      {
        var0 = retstr->var0;
        v8 = v5 - retstr->var0;
        v9 = v8 >> 1;
        if (v8 >> 1 <= -2)
        {
          sub_22107C148();
        }

        v10 = var2 - var0;
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

        *(2 * v9) = var1[8];
        v5 = (2 * v9 + 2);
        memcpy(0, var0, v8);
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
        *v5++ = var1[8];
      }

      retstr->var1 = v5;
      var1 = *var1;
    }

    while (var1);
  }

  return self;
}

- (void)addUseOfFunctions:(const void *)functions atCellRef:(const TSCECellRef *)ref
{
  if (*&ref->coordinate != 0x7FFFFFFF && (*&ref->coordinate & 0xFFFF00000000) != 0x7FFF00000000 && *&ref->_tableUID != 0 && *(functions + 3) != 0)
  {
    v9 = objc_msgSend_calcEngine(self, a2, functions, ref);
    v13 = objc_msgSend_dependencyTracker(v9, v10, v11, v12);

    pthread_mutex_lock(&self->_mutex);
    for (i = *(functions + 2); i; i = *i)
    {
      v16 = *(i + 8);
      if (!sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v16))
      {
        operator new();
      }

      v17 = &v16;
      v15 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &v16, &unk_2217E0538, &v17)[3];
      if (v15)
      {
        TSCEReferenceSet::insertRef(v15, ref);
      }
    }

    pthread_mutex_unlock(&self->_mutex);
  }
}

- (void)addFunctionUsesInFormula:(id)formula atCellRef:(const TSCECellRef *)ref outContainsVolatileFunction:(BOOL *)function
{
  formulaCopy = formula;
  TSCEFormulaRewriteContext::TSCEFormulaRewriteContext(&v26, 0, ref);
  v12 = objc_msgSend_const_astNodeArray(formulaCopy, v9, v10, v11);
  sub_22115D634(v24, v12, &v26);
  TSCEASTStreamIterator::rewrite(v24, v13, v14, v15);
  v23 = 154;
  if (sub_2210C3024(v25, &v23) || (v22 = 97, sub_2210C3024(v25, &v22)) || (v21 = 118, sub_2210C3024(v25, &v21)) || (v20 = 119, sub_2210C3024(v25, &v20)))
  {
    v17 = 1;
  }

  else
  {
    v19 = 346;
    v17 = sub_2210C3024(v25, &v19) != 0;
  }

  *function = v17;
  objc_msgSend_addUseOfFunctions_atCellRef_(self, v16, v25, ref);
  v24[0] = &unk_2834A22D0;
  sub_2210BDEC0(v25);
  TSCEASTStreamIterator::~TSCEASTStreamIterator(v24, v18);
}

- (void)dirtyCellsUsingFunction:(unsigned __int16)function
{
  functionCopy = function;
  pthread_mutex_lock(&self->_mutex);
  if (sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &functionCopy))
  {
    v18 = &functionCopy;
    v4 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &functionCopy, &unk_2217E0538, &v18)[3];
    if (v4)
    {
      v5 = [TSCEReferenceSetWrapper alloc];
      v8 = objc_msgSend_initWithReferenceSet_(v5, v6, v4, v7);
      objc_msgSend_beginBatchingGroupCellDirtying(self->_calcEngine, v9, v10, v11);
      objc_msgSend_markCellRefsAsDirty_(self->_calcEngine, v12, v8, v13);
      objc_msgSend_endBatchingGroupCellDirtying(self->_calcEngine, v14, v15, v16);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (void)resetCellsUsingFunction:(unsigned __int16)function
{
  functionCopy = function;
  pthread_mutex_lock(&self->_mutex);
  if (sub_2210C3024(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &functionCopy))
  {
    v13 = &functionCopy;
    v7 = sub_22115DBD8(&self->_cellRefsUsingFunction.__table_.__bucket_list_.__ptr_, &functionCopy, &unk_2217E0538, &v13)[3];
    if (v7)
    {
      v8 = objc_msgSend_upgradingFormulasMinion(self->_calcEngine, v4, v5, v6);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = sub_22115D46C;
      v10[3] = &unk_27845FBD8;
      v11 = v8;
      v9 = v8;
      TSCEReferenceSet::foreachCellRef(v7, v10);
    }
  }

  pthread_mutex_unlock(&self->_mutex);
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v9 = objc_msgSend_stringWithFormat_(v3, v5, @"<%@>", v6, v4);
  for (i = self->_cellRefsUsingFunction.__table_.__first_node_.__next_; i; i = *i)
  {
    v11 = objc_msgSend_englishFunctionNameFromFunctionIndex_(TSCEFunctionSpec, v7, i[8], v8);
    v12 = *(i + 3);
    if (v12)
    {
      v13 = TSCEReferenceSet::description(v12);
      objc_msgSend_appendFormat_(v9, v14, @"\n  %@ used at: %@", v15, v11, v13);
    }
  }

  return v9;
}

- (id).cxx_construct
{
  *(self + 1) = 0u;
  *(self + 2) = 0u;
  *(self + 12) = 1065353216;
  return self;
}

@end