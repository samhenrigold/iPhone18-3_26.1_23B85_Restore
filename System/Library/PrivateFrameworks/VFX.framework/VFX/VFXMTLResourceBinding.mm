@interface VFXMTLResourceBinding
- (NSMutableArray)usedResources;
- (VFXMTLResourceBinding)init;
- (id)description;
- (void)dealloc;
@end

@implementation VFXMTLResourceBinding

- (VFXMTLResourceBinding)init
{
  v3.receiver = self;
  v3.super_class = VFXMTLResourceBinding;
  result = [(VFXMTLResourceBinding *)&v3 init];
  *&result->_indices.vertexIndex = -1;
  result->_usedResources = 0;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VFXMTLResourceBinding;
  [(VFXMTLResourceBinding *)&v3 dealloc];
}

- (id)description
{
  v4 = objc_msgSend_string(MEMORY[0x1E696AD60], a2, v2);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9 = objc_msgSend_name(self->_binding, v7, v8);
  objc_msgSend_appendFormat_(v4, v10, @"<%@: %p> %@", v6, self, v9);
  return v4;
}

- (NSMutableArray)usedResources
{
  result = self->_usedResources;
  if (!result)
  {
    v4 = objc_alloc(MEMORY[0x1E695DF70]);
    result = objc_msgSend_initWithCapacity_(v4, v5, 0);
    self->_usedResources = result;
  }

  return result;
}

@end