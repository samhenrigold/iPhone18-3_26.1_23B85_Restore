@interface CFXShaderModifierArrayEncoder
+ (id)shaderModifierArrayEncoderWithArray:(id)array;
- (CFXShaderModifierArrayEncoder)initWithArray:(id)array;
- (CFXShaderModifierArrayEncoder)initWithCoder:(id)coder;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CFXShaderModifierArrayEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXShaderModifierArrayEncoder;
  [(CFXShaderModifierArrayEncoder *)&v3 dealloc];
}

+ (id)shaderModifierArrayEncoderWithArray:(id)array
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithArray_(v4, v5, array);

  return v6;
}

- (CFXShaderModifierArrayEncoder)initWithArray:(id)array
{
  v6.receiver = self;
  v6.super_class = CFXShaderModifierArrayEncoder;
  v4 = [(CFXShaderModifierArrayEncoder *)&v6 init];
  if (v4)
  {
    v4->_shaderModifiers = array;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695DF70];
  v6 = objc_msgSend_count(self->_shaderModifiers, a2, coder);
  v8 = objc_msgSend_arrayWithCapacity_(v5, v7, v6);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  shaderModifiers = self->_shaderModifiers;
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderModifiers, v10, &v18, v22, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(shaderModifiers);
        }

        v16 = objc_msgSend_shaderModifierEncoderWithShaderModifier_(CFXShaderModifierEncoder, v12, *(*(&v18 + 1) + 8 * v15));
        objc_msgSend_addObject_(v8, v17, v16);
        ++v15;
      }

      while (v13 != v15);
      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(shaderModifiers, v12, &v18, v22, 16);
    }

    while (v13);
  }

  objc_msgSend_encodeObject_forKey_(coder, v12, v8, @"modifiers");
}

- (CFXShaderModifierArrayEncoder)initWithCoder:(id)coder
{
  v34[2] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CFXShaderModifierArrayEncoder;
  v4 = [(CFXShaderModifierArrayEncoder *)&v32 init];
  if (v4)
  {
    v5 = MEMORY[0x1E695DFD8];
    v34[0] = objc_opt_class();
    v34[1] = objc_opt_class();
    v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v6, v34, 2);
    v9 = objc_msgSend_setWithArray_(v5, v8, v7);
    v11 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v10, v9, @"modifiers");
    v12 = MEMORY[0x1E695DF70];
    v15 = objc_msgSend_count(v11, v13, v14);
    v17 = objc_msgSend_arrayWithCapacity_(v12, v16, v15);
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v18, &v28, v33, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v29;
      do
      {
        v24 = 0;
        do
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(v11);
          }

          v25 = objc_msgSend_shaderModifier(*(*(&v28 + 1) + 8 * v24), v20, v21);
          objc_msgSend_addObject_(v17, v26, v25);
          ++v24;
        }

        while (v22 != v24);
        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v20, &v28, v33, 16);
      }

      while (v22);
    }

    v4->_shaderModifiers = v17;
  }

  return v4;
}

@end