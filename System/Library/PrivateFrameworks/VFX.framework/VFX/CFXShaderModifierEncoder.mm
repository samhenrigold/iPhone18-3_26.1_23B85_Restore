@interface CFXShaderModifierEncoder
+ (id)shaderModifierEncoderWithShaderModifier:(__CFXShaderModifier *)modifier;
- (CFXShaderModifierEncoder)initWithCoder:(id)coder;
- (CFXShaderModifierEncoder)initWithShaderModifier:(__CFXShaderModifier *)modifier;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CFXShaderModifierEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXShaderModifierEncoder;
  [(CFXShaderModifierEncoder *)&v3 dealloc];
}

+ (id)shaderModifierEncoderWithShaderModifier:(__CFXShaderModifier *)modifier
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithShaderModifier_(v4, v5, modifier);

  return v6;
}

- (CFXShaderModifierEncoder)initWithShaderModifier:(__CFXShaderModifier *)modifier
{
  v6.receiver = self;
  v6.super_class = CFXShaderModifierEncoder;
  v4 = [(CFXShaderModifierEncoder *)&v6 init];
  if (v4)
  {
    v4->_shaderModifier = modifier;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  shaderModifier = self->_shaderModifier;
  objc_msgSend_encodeObject_forKey_(coder, a2, shaderModifier->var1, @"declaration");
  objc_msgSend_encodeObject_forKey_(coder, v5, shaderModifier->var2, @"code");
  objc_msgSend_encodeObject_forKey_(coder, v6, shaderModifier->var3, @"defines");
  objc_msgSend_encodeObject_forKey_(coder, v7, shaderModifier->var4, @"standardUniforms");
  objc_msgSend_encodeObject_forKey_(coder, v8, shaderModifier->var5, @"arguments");
  objc_msgSend_encodeObject_forKey_(coder, v9, shaderModifier->var6, @"argumentsDefaultValues");
  objc_msgSend_encodeObject_forKey_(coder, v10, shaderModifier->var7, @"varyings");
  objc_msgSend_encodeInt32_forKey_(coder, v11, shaderModifier->var8, @"entryPoint");
  objc_msgSend_encodeInt32_forKey_(coder, v12, shaderModifier->var9, @"flags");
  objc_msgSend_encodeInt32_forKey_(coder, v13, shaderModifier->var11, @"materialPropertyMaskForTexcoordsUse");
  objc_msgSend_encodeInt32_forKey_(coder, v14, shaderModifier->var12, @"mappingChannelMaskForTexcoordsUse");
  v17 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v15, shaderModifier->var13, 32, 0);

  objc_msgSend_encodeObject_forKey_(coder, v16, v17, @"hash");
}

- (CFXShaderModifierEncoder)initWithCoder:(id)coder
{
  v33[3] = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = CFXShaderModifierEncoder;
  v4 = [(CFXShaderModifierEncoder *)&v32 init];
  if (v4)
  {
    if (qword_1EB654CE8 != -1)
    {
      sub_1AFDD535C();
    }

    v5 = sub_1AF0D160C(qword_1EB654CE0, 0x68uLL);
    v4->_shaderModifier = v5;
    v6 = MEMORY[0x1E695DFD8];
    v33[0] = objc_opt_class();
    v33[1] = objc_opt_class();
    v33[2] = objc_opt_class();
    v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v7, v33, 3);
    v10 = objc_msgSend_setWithArray_(v6, v9, v8);
    v11 = objc_opt_class();
    *(v5 + 16) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v12, v11, @"declaration");
    v13 = objc_opt_class();
    *(v5 + 24) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v14, v13, @"code");
    *(v5 + 32) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v15, v10, @"defines");
    *(v5 + 40) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v16, v10, @"standardUniforms");
    *(v5 + 48) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v17, v10, @"arguments");
    *(v5 + 56) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v18, v10, @"argumentsDefaultValues");
    *(v5 + 64) = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v19, v10, @"varyings");
    *(v5 + 72) = objc_msgSend_decodeInt32ForKey_(coder, v20, @"entryPoint");
    *(v5 + 73) = objc_msgSend_decodeInt32ForKey_(coder, v21, @"flags");
    *(v5 + 80) = objc_msgSend_decodeInt32ForKey_(coder, v22, @"materialPropertyMaskForTexcoordsUse");
    *(v5 + 84) = objc_msgSend_decodeInt32ForKey_(coder, v23, @"mappingChannelMaskForTexcoordsUse");
    v24 = objc_opt_class();
    v26 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v25, v24, @"hash");
    v29 = objc_msgSend_bytes(v26, v27, v28);
    v30 = v29[1];
    *(v5 + 88) = *v29;
    *(v5 + 104) = v30;
  }

  return v4;
}

@end