@interface _LSBindingForLog
- (_LSBindingForLog)initWithState:(const void *)state binding:(const LSBinding *)binding;
- (id).cxx_construct;
- (id)description;
- (id)redactedDescription;
@end

@implementation _LSBindingForLog

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 3) = 0;
  *(self + 8) = 0;
  *(self + 40) = 0u;
  *(self + 56) = 0u;
  return self;
}

- (_LSBindingForLog)initWithState:(const void *)state binding:(const LSBinding *)binding
{
  v10.receiver = self;
  v10.super_class = _LSBindingForLog;
  v6 = [(_LSBindingForLog *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_db, **state);
    v8 = *&binding->claim;
    *&v7->_binding.bundle = *&binding->bundle;
    *&v7->_binding.claim = v8;
    objc_storeStrong(&v7->_binding.userInfo, binding->userInfo);
    objc_storeStrong(&v7->_binding.var0, binding->var0);
    v7->_binding.provenance = binding->provenance;
  }

  return v7;
}

- (id)description
{
  [(_LSDatabase *)self->_db store];
  v3 = _CSStringCopyCFString();
  if (!v3)
  {
    [(_LSDatabase *)self->_db store];
    v3 = _CSStringCopyCFString();
    if (!v3)
    {
      [(_LSDatabase *)self->_db store];
      v3 = _CSStringCopyCFString();
    }
  }

  v4 = v3;
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%@ (B:0x%llx, C:0x%llx)", v3, &stru_1EEF65710, self->_binding.bundle, self->_binding.claim];

  return v5;
}

- (id)redactedDescription
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<private>%@ (B:0x%llx, C:0x%llx)", &stru_1EEF65710, self->_binding.bundle, self->_binding.claim];

  return v2;
}

@end