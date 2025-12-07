@interface CKXStructProxyChildCache
- (CKXStructProxyBase)proxy;
- (CKXStructProxyChildCache)initWithProxy:(id)proxy;
- (id).cxx_construct;
- (id)structListProxyForListReference:(unint64_t)reference mutable:(BOOL)mutable;
- (id)structProxyForStructReference:(unint64_t)reference mutable:(BOOL)mutable;
- (void)reset;
@end

@implementation CKXStructProxyChildCache

- (CKXStructProxyChildCache)initWithProxy:(id)proxy
{
  proxyCopy = proxy;
  v8.receiver = self;
  v8.super_class = CKXStructProxyChildCache;
  v5 = [(CKXStructProxyChildCache *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_proxy, proxyCopy);
  }

  return v6;
}

- (void)reset
{
  if (self->fieldToProxy.__table_.__size_)
  {
    sub_243985DC8(self->fieldToProxy.__table_.__first_node_.__next_);
    self->fieldToProxy.__table_.__first_node_.__next_ = 0;
    size = self->fieldToProxy.__table_.__bucket_list_.__deleter_.__size_;
    if (size)
    {
      for (i = 0; i != size; ++i)
      {
        self->fieldToProxy.__table_.__bucket_list_.__ptr_[i] = 0;
      }
    }

    self->fieldToProxy.__table_.__size_ = 0;
  }
}

- (id)structProxyForStructReference:(unint64_t)reference mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  referenceCopy = reference;
  referenceCopy2 = reference;
  if (!sub_243985D18(&self->fieldToProxy.__table_.__bucket_list_.__ptr_, reference))
  {
    v13 = objc_msgSend_proxy(self, v7, v8, v9, v10, v11, v12);
    v26 = objc_msgSend_backingStore(v13, v14, v15, v16, v17, v18, v19);
    if (v13)
    {
      objc_msgSend_structInstance(v13, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v27 = objc_msgSend_structProxyForStructReference_inStructInstance_mutable_(v26, v20, referenceCopy, v33, mutableCopy, v24, v25);

    v33[0] = &referenceCopy2;
    v28 = sub_243985E0C(&self->fieldToProxy, referenceCopy, v33);
    v29 = v28[3];
    v28[3] = v27;

    referenceCopy = referenceCopy2;
  }

  v30 = sub_243985D18(&self->fieldToProxy.__table_.__bucket_list_.__ptr_, referenceCopy);
  if (!v30)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v31 = v30[3];

  return v31;
}

- (id)structListProxyForListReference:(unint64_t)reference mutable:(BOOL)mutable
{
  mutableCopy = mutable;
  referenceCopy = reference;
  referenceCopy2 = reference;
  if (!sub_243985D18(&self->fieldToProxy.__table_.__bucket_list_.__ptr_, reference))
  {
    v13 = objc_msgSend_proxy(self, v7, v8, v9, v10, v11, v12);
    v26 = objc_msgSend_backingStore(v13, v14, v15, v16, v17, v18, v19);
    if (v13)
    {
      objc_msgSend_structInstance(v13, v20, v21, v22, v23, v24, v25);
    }

    else
    {
      memset(v33, 0, sizeof(v33));
    }

    v27 = objc_msgSend_structListProxyForListReference_inStructInstance_mutable_(v26, v20, referenceCopy, v33, mutableCopy, v24, v25);

    v33[0] = &referenceCopy2;
    v28 = sub_243985E0C(&self->fieldToProxy, referenceCopy, v33);
    v29 = v28[3];
    v28[3] = v27;

    referenceCopy = referenceCopy2;
  }

  v30 = sub_243985D18(&self->fieldToProxy.__table_.__bucket_list_.__ptr_, referenceCopy);
  if (!v30)
  {
    sub_2438CB54C("unordered_map::at: key not found");
  }

  v31 = v30[3];

  return v31;
}

- (CKXStructProxyBase)proxy
{
  WeakRetained = objc_loadWeakRetained(&self->_proxy);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end