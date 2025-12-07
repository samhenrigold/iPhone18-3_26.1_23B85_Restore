@interface TSTCSEData
- (TSTCSEData)init;
- (id).cxx_construct;
- (id)description;
- (id)expressionsIdenticalToExpression:(id)expression;
- (id)expressionsMatchingCSENodeData:(TSTCSENodeData)data forNode:(id)node;
- (unint64_t)expressionSize:(id)size;
- (void)recordExpression:(id)expression data:(TSTCSENodeData)data;
@end

@implementation TSTCSEData

- (TSTCSEData)init
{
  v8.receiver = self;
  v8.super_class = TSTCSEData;
  v2 = [(TSTCSEData *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    hashesToNodeSets = v2->_hashesToNodeSets;
    v2->_hashesToNodeSets = v3;

    v5 = objc_opt_new();
    retainedExpressions = v2->_retainedExpressions;
    v2->_retainedExpressions = v5;
  }

  return v2;
}

- (void)recordExpression:(id)expression data:(TSTCSENodeData)data
{
  var1 = data.var1;
  var0 = data.var0;
  expressionCopy = expression;
  v25[0] = expressionCopy;
  v25[1] = var0;
  v25[2] = var1;
  sub_22113183C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, v25, v25);
  objc_msgSend_addObject_(self->_retainedExpressions, v8, expressionCopy, v9);
  hashesToNodeSets = self->_hashesToNodeSets;
  v13 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v11, var0, v12);
  v16 = objc_msgSend_objectForKey_(hashesToNodeSets, v14, v13, v15);

  if (!v16)
  {
    v19 = objc_alloc_init(MEMORY[0x277D81258]);
    v20 = self->_hashesToNodeSets;
    v23 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v21, var0, v22);
    objc_msgSend_setObject_forKey_(v20, v24, v19, v23);

    v16 = v19;
  }

  objc_msgSend_addObject_(v16, v17, expressionCopy, v18);
}

- (id)expressionsMatchingCSENodeData:(TSTCSENodeData)data forNode:(id)node
{
  var0 = data.var0;
  v35 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  hashesToNodeSets = self->_hashesToNodeSets;
  v10 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v8, var0, v9);
  v13 = objc_msgSend_objectForKey_(hashesToNodeSets, v11, v10, v12);

  v17 = objc_msgSend_set(MEMORY[0x277D81258], v14, v15, v16);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v13;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v30, v34, 16);
  if (v22)
  {
    v23 = *v31;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v31 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v30 + 1) + 8 * i);
        if (objc_msgSend_isEqualToExpressionNode_(nodeCopy, v20, v25, v21, v30))
        {
          objc_msgSend_addObject_(v17, v20, v25, v21);
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v20, &v30, v34, 16);
    }

    while (v22);
  }

  v28 = objc_msgSend_setWithSet_(MEMORY[0x277D812C0], v26, v17, v27);

  return v28;
}

- (id)expressionsIdenticalToExpression:(id)expression
{
  expressionCopy = expression;
  v9 = expressionCopy;
  v5 = sub_2210BE30C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, &v9);
  if (v5)
  {
    v7 = objc_msgSend_expressionsMatchingCSENodeData_forNode_(self, v6, v5[3], v5[4], expressionCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)expressionSize:(id)size
{
  sizeCopy = size;
  v8 = sizeCopy;
  v5 = sub_2210BE30C(&self->_nodesToData.__table_.__bucket_list_.__ptr_, &v8);
  if (v5)
  {
    v6 = v5[4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, v2, v3);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = self->_hashesToNodeSets;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v18, v22, 16);
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = objc_msgSend_objectForKey_(self->_hashesToNodeSets, v8, v13, v9);
        objc_msgSend_appendFormat_(v5, v15, @"%@ -> %@\n", v16, v13, v14, v18);
      }

      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v18, v22, 16);
    }

    while (v10);
  }

  return v5;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end