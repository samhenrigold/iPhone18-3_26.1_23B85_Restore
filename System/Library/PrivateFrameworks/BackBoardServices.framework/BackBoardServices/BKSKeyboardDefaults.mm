@interface BKSKeyboardDefaults
- (void)_bindAndRegisterDefaults;
- (void)migrateIfNeeded;
@end

@implementation BKSKeyboardDefaults

- (void)migrateIfNeeded
{
  v10 = *MEMORY[0x1E69E9840];
  oldModifierKeyRemapping = [(BKSKeyboardDefaults *)self oldModifierKeyRemapping];
  v4 = BKLogKeyboard();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (oldModifierKeyRemapping)
  {
    if (v5)
    {
      v6 = [MEMORY[0x1E698E688] descriptionForRootObject:?];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "migrating key modifiers %{public}@", &v8, 0xCu);
    }

    v7 = [oldModifierKeyRemapping copy];
    [(BKSKeyboardDefaults *)self setModifierKeyRemapping:?];

    [(BKSKeyboardDefaults *)self setOldModifierKeyRemapping:?];
  }

  else
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "nothing to migrate", &v8, 2u);
    }
  }
}

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
}

@end