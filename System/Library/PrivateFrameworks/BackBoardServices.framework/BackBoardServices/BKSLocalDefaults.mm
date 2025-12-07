@interface BKSLocalDefaults
- (BKSLocalDefaults)init;
- (id)valueForKey:(id)key defaultValueProvider:(id)provider;
- (void)_bindAndRegisterDefaults;
- (void)migrateDefaultsIfNecessary;
- (void)setValue:(id)value forKey:(id)key;
@end

@implementation BKSLocalDefaults

- (id)valueForKey:(id)key defaultValueProvider:(id)provider
{
  providerCopy = provider;
  keyCopy = key;
  _store = [(BSAbstractDefaultDomain *)self _store];
  v9 = [_store objectForKey:?];

  if (providerCopy && !v9)
  {
    v9 = providerCopy[2](providerCopy);
  }

  return v9;
}

- (void)setValue:(id)value forKey:(id)key
{
  keyCopy = key;
  valueCopy = value;
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store setObject:? forKey:?];
}

- (void)migrateDefaultsIfNecessary
{
  _store = [(BSAbstractDefaultDomain *)self _store];
  [_store removeObjectForKey:?];
}

- (void)_bindAndRegisterDefaults
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:@"scroll" count:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v33 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v39 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v41 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v42 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v44 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
}

- (BKSLocalDefaults)init
{
  v3.receiver = self;
  v3.super_class = BKSLocalDefaults;
  return [(BSAbstractDefaultDomain *)&v3 _initWithDomain:@"com.apple.backboardd"];
}

@end