@interface CFXProgramHashCodeEncoder
+ (id)programHashCodeEncoderWithHashCode:(__CFXProgramHashCode *)code;
- (CFXProgramHashCodeEncoder)initWithCoder:(id)coder;
- (CFXProgramHashCodeEncoder)initWithHashCode:(__CFXProgramHashCode *)code;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CFXProgramHashCodeEncoder

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CFXProgramHashCodeEncoder;
  [(CFXProgramHashCodeEncoder *)&v3 dealloc];
}

+ (id)programHashCodeEncoderWithHashCode:(__CFXProgramHashCode *)code
{
  v4 = [self alloc];
  v6 = objc_msgSend_initWithHashCode_(v4, v5, code);

  return v6;
}

- (CFXProgramHashCodeEncoder)initWithHashCode:(__CFXProgramHashCode *)code
{
  v6.receiver = self;
  v6.super_class = CFXProgramHashCodeEncoder;
  v4 = [(CFXProgramHashCodeEncoder *)&v6 init];
  if (v4)
  {
    v4->_hashCode = code;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  hashCode = self->_hashCode;
  objc_msgSend_encodeObject_forKey_(coder, a2, hashCode->var2, @"hash");
  objc_msgSend_encodeInt32_forKey_(coder, v5, hashCode->var3, @"version");
  v7 = objc_msgSend_dataWithBytesNoCopy_length_freeWhenDone_(MEMORY[0x1E695DEF0], v6, &hashCode->var1, 180, 0);
  objc_msgSend_encodeObject_forKey_(coder, v8, v7, @"desc");
  v10 = hashCode->var4[0];
  if (v10)
  {
    v11 = objc_msgSend_shaderModifierArrayEncoderWithArray_(CFXShaderModifierArrayEncoder, v9, v10);
    objc_msgSend_encodeObject_forKey_(coder, v12, v11, @"shaderModifiers[material]");
  }

  v13 = hashCode->var4[1];
  if (v13)
  {
    v14 = objc_msgSend_shaderModifierArrayEncoderWithArray_(CFXShaderModifierArrayEncoder, v9, v13);
    objc_msgSend_encodeObject_forKey_(coder, v15, v14, @"shaderModifiers[model]");
  }

  v17 = objc_msgSend_arrayWithCapacity_(MEMORY[0x1E695DF70], v9, 8);
  v18 = 0;
  var5 = hashCode->var5;
  do
  {
    v20 = var5[v18];
    if (!v20)
    {
      break;
    }

    objc_msgSend_addObject_(v17, v16, v20);
    ++v18;
  }

  while (v18 != 8);

  objc_msgSend_encodeObject_forKey_(coder, v16, v17, @"customPropertyNames");
}

- (CFXProgramHashCodeEncoder)initWithCoder:(id)coder
{
  v81 = *MEMORY[0x1E69E9840];
  v62.receiver = self;
  v62.super_class = CFXProgramHashCodeEncoder;
  v4 = [(CFXProgramHashCodeEncoder *)&v62 init];
  if (v4)
  {
    v80 = 0;
    memset(v79, 0, sizeof(v79));
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v5 = objc_opt_class();
    *(&v77 + 1) = objc_msgSend_decodeObjectOfClass_forKey_(coder, v6, v5, @"hash");
    LODWORD(v78) = objc_msgSend_decodeInt32ForKey_(coder, v7, @"version");
    v8 = objc_opt_class();
    v10 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v9, v8, @"desc");
    v13 = objc_msgSend_bytes(v10, v11, v12);
    v14 = *(v13 + 48);
    v16 = *v13;
    v15 = *(v13 + 16);
    v68 = *(v13 + 32);
    v69 = v14;
    v66 = v16;
    v67 = v15;
    v17 = *(v13 + 112);
    v19 = *(v13 + 64);
    v18 = *(v13 + 80);
    v72 = *(v13 + 96);
    v73 = v17;
    v70 = v19;
    v71 = v18;
    v21 = *(v13 + 144);
    v20 = *(v13 + 160);
    v22 = *(v13 + 128);
    LODWORD(v77) = *(v13 + 176);
    v75 = v21;
    v76 = v20;
    v74 = v22;
    v23 = objc_opt_class();
    v25 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v24, v23, @"shaderModifiers[material]");
    *(&v78 + 1) = objc_msgSend_shaderModifiers(v25, v26, v27);
    v28 = objc_opt_class();
    v30 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v29, v28, @"shaderModifiers[model]");
    *&v79[0] = objc_msgSend_shaderModifiers(v30, v31, v32);
    v33 = MEMORY[0x1E695DFD8];
    v64[0] = objc_opt_class();
    v64[1] = objc_opt_class();
    v35 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v34, v64, 2);
    v37 = objc_msgSend_setWithArray_(v33, v36, v35);
    v39 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v38, v37, @"customPropertyNames");
    v42 = objc_msgSend_count(v39, v40, v41);
    if (v42 >= 8)
    {
      v44 = sub_1AF0D5194(v42, v43);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_FAULT))
      {
        sub_1AFDD4A64(v44, v43, v45, v46, v47, v48, v49, v50);
      }
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v51 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v43, &v58, v63, 16);
    if (v51)
    {
      v52 = v51;
      LODWORD(v53) = 0;
      v54 = *v59;
      do
      {
        v55 = 0;
        v53 = v53;
        do
        {
          if (*v59 != v54)
          {
            objc_enumerationMutation(v39);
          }

          *(v79 + ++v53) = *(*(&v58 + 1) + 8 * v55++);
        }

        while (v52 != v55);
        v52 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v56, &v58, v63, 16);
      }

      while (v52);
    }

    v4->_hashCode = sub_1AF13F3D8(&v65);
  }

  return v4;
}

@end