@interface TSCEPartialResultTreeEnumerator
- (TSCEPartialResultTreeEnumerator)initWithPartialResultTree:(id)tree;
- (id).cxx_construct;
- (id)nextResult;
@end

@implementation TSCEPartialResultTreeEnumerator

- (TSCEPartialResultTreeEnumerator)initWithPartialResultTree:(id)tree
{
  treeCopy = tree;
  v13.receiver = self;
  v13.super_class = TSCEPartialResultTreeEnumerator;
  v6 = [(TSCEPartialResultTreeEnumerator *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_tree, tree);
    v12 = objc_msgSend_root(treeCopy, v8, v9, v10);
    sub_2212E30F4(&v7->_inProgressStack.__begin_, &v12);
  }

  return v7;
}

- (id)nextResult
{
  p_lastResult = &self->_lastResult;
  lastResult = self->_lastResult;
  if (lastResult)
  {
    v7 = objc_msgSend_children(lastResult, a2, v2, v3);
    v11 = objc_msgSend_count(v7, v8, v9, v10);
    if (v11)
    {
      v14 = v11 - 1;
      do
      {
        v20 = objc_msgSend_objectAtIndexedSubscript_(v7, v12, v14, v13);
        sub_2212E30F4(&self->_inProgressStack.__begin_, &v20);

        --v14;
      }

      while (v14 != -1);
    }

    v15 = *p_lastResult;
    *p_lastResult = 0;
  }

  var0 = self->_inProgressStack.var0;
  if (self->_inProgressStack.__begin_ == var0)
  {
    v17 = 0;
  }

  else
  {
    v17 = *(var0 - 1);
    v18 = self->_inProgressStack.var0;

    self->_inProgressStack.var0 = v18 - 1;
  }

  objc_storeStrong(p_lastResult, v17);

  return v17;
}

- (id).cxx_construct
{
  *(self + 2) = 0;
  *(self + 3) = 0;
  *(self + 4) = 0;
  return self;
}

@end