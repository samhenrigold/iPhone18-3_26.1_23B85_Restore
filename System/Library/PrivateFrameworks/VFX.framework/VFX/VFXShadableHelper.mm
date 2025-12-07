@interface VFXShadableHelper
- (NSDictionary)shaderModifiers;
- (VFXProgram)program;
- (VFXShadableHelper)initWithCoder:(id)coder;
- (VFXShadableHelper)initWithOwner:(id)owner;
- (void)_commonInit;
- (void)_customEncodingOfVFXShadableHelper:(id)helper;
- (void)_parseAndSetShaderModifier:(id)modifier;
- (void)_programDidChange:(id)change;
- (void)_programDidCompile:(id)compile;
- (void)_setCFXProgram;
- (void)_startObservingProgram;
- (void)_stopObservingProgram;
- (void)copyModifiersFrom:(id)from;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setMinimumLanguageVersion:(id)version;
- (void)setProgram:(id)program;
- (void)setShaderModifiers:(id)modifiers;
@end

@implementation VFXShadableHelper

- (void)_commonInit
{
  self->_symbolToBinder = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_symbolToUnbinder = objc_alloc_init(MEMORY[0x1E695DF90]);
  self->_arguments = objc_alloc_init(MEMORY[0x1E695DF90]);
}

- (VFXShadableHelper)initWithOwner:(id)owner
{
  v9.receiver = self;
  v9.super_class = VFXShadableHelper;
  v4 = [(VFXShadableHelper *)&v9 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend__commonInit(v4, v5, v6);
    v7->_owner = owner;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_owner)
  {
    v3 = sub_1AF0D5194(self, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8768(v3);
    }
  }

  v4.receiver = self;
  v4.super_class = VFXShadableHelper;
  [(VFXShadableHelper *)&v4 dealloc];
}

- (void)_startObservingProgram
{
  if (self->_program)
  {
    v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
    program = self->_program;

    objc_msgSend_addObserver_selector_name_object_(v4, v5, self, sel__programDidChange_, @"VFXProgramDidChangeNotification", program);
  }
}

- (void)_stopObservingProgram
{
  if (self->_program)
  {
    v4 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], a2, v2);
    objc_msgSend_removeObserver_name_object_(v4, v5, self, @"VFXProgramDidChangeNotification", self->_program);
    v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v6, v7);

    objc_msgSend_removeObserver_name_object_(v8, v9, self, @"VFXProgramDidCompileNotification", 0);
  }
}

- (void)setProgram:(id)program
{
  if (program)
  {
    v5 = objc_msgSend_count(self->_shaderModifiers, a2, program);
    if (v5)
    {
      v6 = sub_1AF0D5194(v5, a2);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1AF0CE000, v6, OS_LOG_TYPE_DEFAULT, "Warning: VFXProgram overrides shader modifiers", buf, 2u);
      }
    }
  }

  if (self->_program != program)
  {
    objc_msgSend__stopObservingProgram(self, a2, program);

    self->_program = program;
    owner = self->_owner;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1AF329F7C;
    v9[3] = &unk_1E7A7E1D0;
    v9[4] = self;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v8, owner, v9);
  }
}

- (VFXProgram)program
{
  v2 = self->_program;

  return v2;
}

- (void)_parseAndSetShaderModifier:(id)modifier
{
  v35 = *MEMORY[0x1E69E9840];
  objc_msgSend_removeAllObjects(self->_arguments, a2, modifier);
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(modifier, v5, &v30, v34, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(modifier);
        }

        v11 = sub_1AF148894(*(*(&v30 + 1) + 8 * i), v7);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = sub_1AF32A280;
        v29[3] = &unk_1E7A7E7E8;
        v29[4] = self;
        objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v11, v12, v29);
      }

      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(modifier, v7, &v30, v34, 16);
    }

    while (v8);
  }

  p_owner = &self->_owner;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass))
  {
    v17 = objc_msgSend___CFObject(*p_owner, v14, v15);
    v18 = *p_owner;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = sub_1AF32A30C;
    v28[3] = &unk_1E7A7E248;
    v28[4] = modifier;
    v28[5] = v17;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v19, v18, v28);
  }

  else
  {
    v22 = sub_1AF0D5194(isKindOfClass, v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF87EC();
    }
  }

  v23 = objc_msgSend_worldRef(*p_owner, v20, v21);
  if (v23)
  {
    v24 = v23;
    if (!sub_1AF1CFF64(v23, 1))
    {
      v26 = *p_owner;
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = sub_1AF32A318;
      v27[3] = &unk_1E7A7E6C0;
      v27[4] = v24;
      objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v25, v26, v27);
    }
  }
}

- (NSDictionary)shaderModifiers
{
  v2 = self->_shaderModifiers;

  return v2;
}

- (void)setShaderModifiers:(id)modifiers
{
  if (self->_program && (v5 = objc_msgSend_count(modifiers, a2, modifiers)) != 0)
  {
    v7 = sub_1AF0D5194(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1AFDF8864();
    }
  }

  else
  {
    shaderModifiers = self->_shaderModifiers;
    if (shaderModifiers != modifiers)
    {

      if (objc_msgSend_count(modifiers, v9, v10))
      {
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v15 = objc_msgSend_initWithDictionary_copyItems_(v13, v14, modifiers, 1);
      }

      else if (modifiers)
      {
        v15 = MEMORY[0x1E695E0F8];
      }

      else
      {
        v15 = 0;
      }

      self->_shaderModifiers = v15;
      objc_msgSend_owner(self, v11, v12);
      v16 = self->_shaderModifiers;
      v17 = MEMORY[0x1E695DF70];
      v20 = objc_msgSend_count(v16, v18, v19);
      v22 = objc_msgSend_arrayWithCapacity_(v17, v21, v20);
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = sub_1AF32B16C;
      v26[3] = &unk_1E7A7E7E8;
      v26[4] = v22;
      objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v16, v23, v26);

      v24 = v22;
      self->_cfxShaderModifierCache = v24;
      objc_msgSend__parseAndSetShaderModifier_(self, v25, v24);
    }
  }
}

- (void)copyModifiersFrom:(id)from
{
  v4 = *(from + 4);
  v5 = objc_msgSend_shaderModifiers(from, a2, from);
  v7 = v5;
  if (v4 && !sub_1AF333168(v5, v6))
  {
    if (self->_program && (v9 = objc_msgSend_count(v7, v6, v8)) != 0)
    {
      v11 = sub_1AF0D5194(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_1AFDF8864();
      }
    }

    else
    {
      shaderModifiers = self->_shaderModifiers;
      if (shaderModifiers != v7)
      {

        if (objc_msgSend_count(v7, v13, v14))
        {
          v15 = objc_alloc(MEMORY[0x1E695DF20]);
          v17 = objc_msgSend_initWithDictionary_copyItems_(v15, v16, v7, 1);
        }

        else if (v7)
        {
          v17 = MEMORY[0x1E695E0F8];
        }

        else
        {
          v17 = 0;
        }

        self->_shaderModifiers = v17;

        self->_cfxShaderModifierCache = v4;

        objc_msgSend__parseAndSetShaderModifier_(self, v18, v4);
      }
    }
  }

  else
  {

    objc_msgSend_setShaderModifiers_(self, v6, v7);
  }
}

- (void)setMinimumLanguageVersion:(id)version
{
  minimumLanguageVersion = self->_minimumLanguageVersion;
  if (minimumLanguageVersion != version)
  {
    v10[8] = v3;
    v10[9] = v4;

    self->_minimumLanguageVersion = version;
    owner = self->_owner;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = sub_1AF32A688;
    v10[3] = &unk_1E7A7E220;
    v10[4] = self;
    v10[5] = version;
    objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, v9, owner, v10);
  }
}

- (void)_programDidChange:(id)change
{
  owner = self->_owner;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = sub_1AF32A7BC;
  v4[3] = &unk_1E7A7E1D0;
  v4[4] = self;
  objc_msgSend_postCommandWithObject_applyBlock_(VFXTransaction, a2, owner, v4);
}

- (void)_programDidCompile:(id)compile
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_userInfo(compile, a2, compile);
  v6 = objc_msgSend_valueForKey_(v4, v5, @"bindings");
  objc_msgSend_removeAllObjects(self->_arguments, v7, v8);
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v9, &v39, v43, 16);
  if (v10)
  {
    v13 = v10;
    v14 = *v40;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v40 != v14)
        {
          objc_enumerationMutation(v6);
        }

        v16 = *(*(&v39 + 1) + 8 * i);
        if (objc_msgSend_type(v16, v11, v12))
        {
          if (objc_msgSend_type(v16, v17, v18) != 2)
          {
            continue;
          }

          v19 = objc_alloc_init(VFXShaderArgument);
          v22 = objc_msgSend_name(v16, v20, v21);
          objc_msgSend_setName_(v19, v23, v22);
          objc_msgSend_setType_(v19, v24, 58);
        }

        else
        {
          v19 = objc_alloc_init(VFXShaderArgument);
          v29 = objc_msgSend_name(v16, v27, v28);
          objc_msgSend_setName_(v19, v30, v29);
          v33 = objc_msgSend_bufferDataType(v16, v31, v32);
          objc_msgSend_setType_(v19, v34, v33);
        }

        arguments = self->_arguments;
        v36 = objc_msgSend_name(v19, v25, v26);
        objc_msgSend_setValue_forKey_(arguments, v37, v19, v36);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v11, &v39, v43, 16);
    }

    while (v13);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1AF32AA40;
  block[3] = &unk_1E7A7A770;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_setCFXProgram
{
  IfNeeded = objc_msgSend_materialRefCreateIfNeeded(self->_owner, a2, v2);
  if (!IfNeeded)
  {
    v7 = sub_1AF0D5194(0, v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1AFDF8914(v7);
    }
  }

  v8 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v4, v5);
  objc_msgSend_removeObserver_name_object_(v8, v9, self, @"VFXProgramDidCompileNotification", 0);
  program = self->_program;
  if (program)
  {
    if (objc_msgSend_source(self->_program, v10, v11))
    {
      v15 = objc_msgSend_vertexFunctionName(self->_program, v13, v14);
      v18 = objc_msgSend_fragmentFunctionName(self->_program, v16, v17);
      v21 = objc_msgSend_source(self->_program, v19, v20);
      v23 = sub_1AF1F32F0(v21, v22);
      v24 = sub_1AF1D5628(v15, v18, 0, v21, 0, 0, 0, 0, v23, 1);
    }

    else
    {
      v43[4] = program;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = sub_1AF32AD28;
      v44[3] = &unk_1E7A7F100;
      v44[4] = program;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = sub_1AF32ADB4;
      v43[3] = &unk_1E7A7F128;
      v31 = objc_msgSend_vertexFunctionName(self->_program, v13, v14);
      v34 = objc_msgSend_fragmentFunctionName(self->_program, v32, v33);
      v24 = sub_1AF1D5518(v31, v34, 0, v44, v43);
    }

    v35 = v24;
    v36 = objc_msgSend__bufferBindings(self->_program, v25, v26);
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = sub_1AF32ADF0;
    v42[3] = &unk_1E7A7F148;
    v42[4] = v35;
    objc_msgSend_enumerateKeysAndObjectsUsingBlock_(v36, v37, v42);
    sub_1AF1D5E48(v35, 1);
    v40 = objc_msgSend_defaultCenter(MEMORY[0x1E696AD88], v38, v39);
    objc_msgSend_addObserver_selector_name_object_(v40, v41, self, sel__programDidCompile_, @"VFXProgramDidCompileNotification", v35);
    sub_1AF1A1AB0(IfNeeded, v35);
    CFRelease(v35);
  }

  else
  {
    sub_1AF1A1AB0(IfNeeded, 0);
    sub_1AF1A1A4C(IfNeeded, v27);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = objc_msgSend_modelRef(self->_owner, v28, v29);
      sub_1AF1B3970(v30, 0);
    }
  }
}

- (void)_customEncodingOfVFXShadableHelper:(id)helper
{
  owner = self->_owner;
  if (owner)
  {
    objc_msgSend_encodeObject_forKey_(helper, a2, owner, @"owner");
  }
}

- (void)encodeWithCoder:(id)coder
{
  objc_msgSend__customEncodingOfVFXShadableHelper_(self, a2, coder);
  program = self->_program;
  if (program)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, program, @"program");
  }

  shaderModifiers = self->_shaderModifiers;
  if (shaderModifiers)
  {
    objc_msgSend_encodeObject_forKey_(coder, v5, shaderModifiers, @"shaderModifiers");
  }

  minimumLanguageVersion = self->_minimumLanguageVersion;
  if (minimumLanguageVersion)
  {

    objc_msgSend_encodeObject_forKey_(coder, v5, minimumLanguageVersion, @"minimumLanguageVersion");
  }
}

- (VFXShadableHelper)initWithCoder:(id)coder
{
  v36[2] = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = VFXShadableHelper;
  v4 = [(VFXShadableHelper *)&v35 init];
  v7 = v4;
  if (v4)
  {
    objc_msgSend__commonInit(v4, v5, v6);
    v10 = objc_msgSend_immediateMode(VFXTransaction, v8, v9);
    v12 = objc_msgSend_setImmediateMode_(VFXTransaction, v11, 1);
    v14 = sub_1AF37287C(v12, v13);
    v16 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v15, v14, @"owner");
    v7->_owner = v16;
    if (v16)
    {
      v18 = objc_opt_class();
      v20 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v19, v18, @"program");
      objc_msgSend_setProgram_(v7, v21, v20);
      v22 = MEMORY[0x1E695DFD8];
      v36[0] = objc_opt_class();
      v36[1] = objc_opt_class();
      v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v23, v36, 2);
      v26 = objc_msgSend_setWithArray_(v22, v25, v24);
      v28 = objc_msgSend_decodeObjectOfClasses_forKey_(coder, v27, v26, @"shaderModifiers");
      objc_msgSend_setShaderModifiers_(v7, v29, v28);
      v30 = objc_opt_class();
      v32 = objc_msgSend_decodeObjectOfClass_forKey_(coder, v31, v30, @"minimumLanguageVersion");
      objc_msgSend_setMinimumLanguageVersion_(v7, v33, v32);
    }

    objc_msgSend_setImmediateMode_(VFXTransaction, v17, v10);
  }

  return v7;
}

@end