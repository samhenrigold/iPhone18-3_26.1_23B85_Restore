@interface CHSWidgetDescriptorsBox
- (CHSWidgetDescriptorsBox)initWithCoder:(id)coder;
- (CHSWidgetDescriptorsBox)initWithDescriptors:(id)descriptors;
- (NSSet)descriptors;
- (void)_performValidation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSWidgetDescriptorsBox

- (void)_performValidation
{
  descriptorsByExtensionIdentifier = self->_descriptorsByExtensionIdentifier;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __45__CHSWidgetDescriptorsBox__performValidation__block_invoke;
  v3[3] = &unk_1E7453818;
  v3[4] = self;
  v3[5] = a2;
  [(NSDictionary *)descriptorsByExtensionIdentifier enumerateKeysAndObjectsUsingBlock:v3];
}

void __45__CHSWidgetDescriptorsBox__performValidation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    v23 = [v5 description];
    v24 = [v21 stringWithFormat:@"Key for CHSWidgetDescriptorsBox was of unexpected type: %@, value: %@", v22, v23];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v25 = NSStringFromSelector(*(a1 + 40));
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = *(a1 + 32);
      *buf = 138544642;
      v45 = v25;
      v46 = 2114;
      v47 = v27;
      v48 = 2048;
      v49 = v28;
      v50 = 2114;
      v51 = @"CHSWidgetDescriptorsBox.m";
      v52 = 1024;
      v53 = 36;
      v54 = 2114;
      v55 = v24;
      _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v29 = v24;
    [v24 UTF8String];
    _bs_set_crash_log_message();
    __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1();
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v30 = MEMORY[0x1E696AEC0];
    v31 = objc_opt_class();
    v32 = [v6 description];
    v33 = [v30 stringWithFormat:@"Array type for CHSWidgetDescriptorsBox at key: %@ was of unexpected type: %@, value: %@", v5, v31, v32];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(*(a1 + 40));
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      v37 = *(a1 + 32);
      *buf = 138544642;
      v45 = v34;
      v46 = 2114;
      v47 = v36;
      v48 = 2048;
      v49 = v37;
      v50 = 2114;
      v51 = @"CHSWidgetDescriptorsBox.m";
      v52 = 1024;
      v53 = 37;
      v54 = 2114;
      v55 = v33;
      _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v38 = v33;
    [v33 UTF8String];
    _bs_set_crash_log_message();
    __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1();
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v8)
  {
    v9 = *v40;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v40 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v39 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = objc_opt_class();
          v14 = [v11 description];
          v15 = [v12 stringWithFormat:@"Array value for CHSWidgetDescriptorsBox at key: %@ was of unexpected type: %@, value: %@", v5, v13, v14];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v16 = NSStringFromSelector(*(a1 + 40));
            v17 = objc_opt_class();
            v18 = NSStringFromClass(v17);
            v19 = *(a1 + 32);
            *buf = 138544642;
            v45 = v16;
            v46 = 2114;
            v47 = v18;
            v48 = 2048;
            v49 = v19;
            v50 = 2114;
            v51 = @"CHSWidgetDescriptorsBox.m";
            v52 = 1024;
            v53 = 39;
            v54 = 2114;
            v55 = v15;
            _os_log_error_impl(&dword_195EB2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
          }

          v20 = v15;
          [v15 UTF8String];
          _bs_set_crash_log_message();
          __45__CHSWidgetDescriptorsBox__performValidation__block_invoke_cold_1();
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v39 objects:v43 count:16];
    }

    while (v8);
  }
}

- (NSSet)descriptors
{
  v2 = MEMORY[0x1E695DFD8];
  allValues = [(NSDictionary *)self->_descriptorsByExtensionIdentifier allValues];
  bs_flatten = [allValues bs_flatten];
  v5 = [v2 setWithArray:bs_flatten];

  return v5;
}

- (CHSWidgetDescriptorsBox)initWithDescriptors:(id)descriptors
{
  descriptorsCopy = descriptors;
  v9.receiver = self;
  v9.super_class = CHSWidgetDescriptorsBox;
  v5 = [(CHSWidgetDescriptorsBox *)&v9 init];
  if (v5)
  {
    v6 = [descriptorsCopy copy];
    descriptorsByExtensionIdentifier = v5->_descriptorsByExtensionIdentifier;
    v5->_descriptorsByExtensionIdentifier = v6;

    [(CHSWidgetDescriptorsBox *)v5 _performValidation];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(CHSWidgetDescriptorsBox *)self _performValidation];
  [coderCopy encodeObject:self->_descriptorsByExtensionIdentifier forKey:@"descriptors"];
}

- (CHSWidgetDescriptorsBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v5 setWithObjects:{v6, v7, v8, objc_opt_class(), 0}];
  v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"descriptors"];

  v12 = __41__CHSWidgetDescriptorsBox_initWithCoder___block_invoke(v11, v10);

  if (v12)
  {
    self = [(CHSWidgetDescriptorsBox *)self initWithDescriptors:v12];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

id __41__CHSWidgetDescriptorsBox_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v4)
    {
      v5 = *v21;
      v14 = v3;
      v15 = v2;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
LABEL_20:

            goto LABEL_21;
          }

          v18 = 0u;
          v19 = 0u;
          v16 = 0u;
          v17 = 0u;
          v8 = [v3 objectForKeyedSubscript:v7];
          v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
          if (v9)
          {
            v10 = *v17;
            while (2)
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v17 != v10)
                {
                  objc_enumerationMutation(v8);
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {

                  v3 = v14;
                  v2 = v15;
                  goto LABEL_20;
                }
              }

              v9 = [v8 countByEnumeratingWithState:&v16 objects:v24 count:16];
              if (v9)
              {
                continue;
              }

              break;
            }
          }

          v3 = v14;
          v2 = v15;
        }

        v4 = [v14 countByEnumeratingWithState:&v20 objects:v25 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v12 = v3;
  }

  else
  {
LABEL_21:
    v12 = 0;
  }

  return v12;
}

@end