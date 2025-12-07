@interface VFXBindingWrapper
- (VFXBindingWrapper)initWithBinding:(id)binding coreEntityHandle:(id)handle;
- (float32x2_t)range;
- (int64_t)componentCount;
- (unint64_t)componentSize;
- (void)dealloc;
- (void)setRawValue:(id)value;
@end

@implementation VFXBindingWrapper

- (VFXBindingWrapper)initWithBinding:(id)binding coreEntityHandle:(id)handle
{
  v8.receiver = self;
  v8.super_class = VFXBindingWrapper;
  v6 = [(VFXBindingWrapper *)&v8 init];
  if (v6)
  {
    v6->_binding = binding;
    objc_storeWeak(&v6->_handle, handle);
  }

  return v6;
}

- (void)dealloc
{
  objc_storeWeak(&self->_handle, 0);
  v3.receiver = self;
  v3.super_class = VFXBindingWrapper;
  [(VFXBindingWrapper *)&v3 dealloc];
}

- (void)setRawValue:(id)value
{
  objc_msgSend_setRawValue_(self->_binding, a2, value);
  Weak = objc_loadWeak(&self->_handle);
  if (Weak)
  {
    v8 = Weak;
    v9 = objc_msgSend_name(self, v6, v7);
    v12 = objc_msgSend_handle(v8, v10, v11);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1AF2BEFB8;
    v14[3] = &unk_1E7A7E2E8;
    v14[5] = value;
    v14[6] = v12;
    v14[4] = v9;
    objc_msgSend_postCommandWithObject_keyPath_applyBlock_(VFXTransaction, v13, v8, v9, v14);
  }
}

- (int64_t)componentCount
{
  v3 = objc_msgSend_type(self->_binding, a2, v2);
  if ((v3 - 13) > 0xA)
  {
    return 1;
  }

  else
  {
    return qword_1AFE47788[v3 - 13];
  }
}

- (unint64_t)componentSize
{
  v3 = objc_msgSend_type(self->_binding, a2, v2);
  if ((v3 - 1) > 0x16)
  {
    return 8;
  }

  else
  {
    return qword_1AFE477E0[v3 - 1];
  }
}

- (float32x2_t)range
{
  objc_msgSend_min(*(self + 8), a2, a3);
  v10 = v4;
  objc_msgSend_max(*(self + 8), v5, v6);
  v7.f64[0] = v10;
  v7.f64[1] = v8;
  return vcvt_f32_f64(v7);
}

@end