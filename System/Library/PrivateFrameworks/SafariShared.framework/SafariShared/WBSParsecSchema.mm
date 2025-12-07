@interface WBSParsecSchema
+ (id)schemaForArrayWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional;
+ (id)schemaForDictionaryWithStructure:(id)structure associatedError:(id)error isOptional:(BOOL)optional;
+ (id)schemaWithConstantValue:(id)value;
+ (id)schemaWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional;
- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler;
- (id)_initWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional;
@end

@implementation WBSParsecSchema

+ (id)schemaWithConstantValue:(id)value
{
  valueCopy = value;
  v5 = [self schemaWithExpectedClass:objc_opt_class()];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__WBSParsecSchema_schemaWithConstantValue___block_invoke;
  v8[3] = &unk_1E7FC9028;
  v9 = valueCopy;
  v6 = valueCopy;
  [v5 setValidationBlock:v8];

  return v5;
}

+ (id)schemaForArrayWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  schemaCopy = schema;
  v9 = [[_WBSParsecArraySchema alloc] initWithElementSchema:schemaCopy associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

+ (id)schemaForDictionaryWithStructure:(id)structure associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  structureCopy = structure;
  v9 = [[_WBSParsecDictionarySchema alloc] initWithSchemaDictionary:structureCopy associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

+ (id)schemaWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  errorCopy = error;
  v9 = [[self alloc] _initWithExpectedClass:class associatedError:errorCopy isOptional:optionalCopy];

  return v9;
}

- (id)_initWithExpectedClass:(Class)class associatedError:(id)error isOptional:(BOOL)optional
{
  errorCopy = error;
  v14.receiver = self;
  v14.super_class = WBSParsecSchema;
  v10 = [(WBSParsecSchema *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_expectedClass, class);
    objc_storeStrong(&v11->_associatedError, error);
    v11->_optional = optional;
    v12 = v11;
  }

  return v11;
}

- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  errorCopy = error;
  handlerCopy = handler;
  associatedError = self->_associatedError;
  if (!associatedError)
  {
    associatedError = errorCopy;
  }

  v15 = associatedError;
  v17 = v15;
  if (childCopy)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v20 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(isKindOfClass, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        expectedClass = self->_expectedClass;
        v22 = v20;
        v37 = 134349826;
        v38 = childCopy;
        v39 = 2050;
        v40 = parentCopy;
        v41 = 2114;
        v42 = expectedClass;
        v43 = 2114;
        v44 = objc_opt_class();
        v23 = v44;
        _os_log_error_impl(&dword_1BB6F3000, v22, OS_LOG_TYPE_ERROR, "Child %{public}p of parent %{public}p: expected class %{public}@, actual class %{public}@", &v37, 0x2Au);
      }

LABEL_19:
      handlerCopy[2](handlerCopy, v17);
LABEL_20:
      v32 = 0;
      goto LABEL_21;
    }
  }

  else if (!self->_optional)
  {
    v33 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v15, v16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      [WBSParsecSchema _validateChild:parentCopy ofParent:v33 withParentAssociatedError:? errorHandler:?];
    }

    goto LABEL_19;
  }

  validationBlock = self->_validationBlock;
  if (validationBlock)
  {
    v25 = validationBlock[2](validationBlock, childCopy, parentCopy);
    if ((v25 & 1) == 0)
    {
      v34 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v25, v26);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [WBSParsecSchema _validateChild:ofParent:withParentAssociatedError:errorHandler:];
      }

      goto LABEL_19;
    }
  }

  specializedSchemaBlock = self->_specializedSchemaBlock;
  if (specializedSchemaBlock)
  {
    v28 = specializedSchemaBlock[2](specializedSchemaBlock, childCopy, parentCopy);
    v29 = v28;
    if (v28)
    {
      v30 = [v28 _validateChild:childCopy ofParent:parentCopy withParentAssociatedError:v17 errorHandler:handlerCopy];
      if ((v30 & 1) == 0)
      {
        v36 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v30, v31);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          [WBSParsecSchema _validateChild:ofParent:withParentAssociatedError:errorHandler:];
        }

        goto LABEL_20;
      }
    }
  }

  v32 = 1;
LABEL_21:

  return v32;
}

- (void)_validateChild:(uint64_t)a1 ofParent:(NSObject *)a2 withParentAssociatedError:errorHandler:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134349056;
  v3 = a1;
  _os_log_error_impl(&dword_1BB6F3000, a2, OS_LOG_TYPE_ERROR, "Non-optional child of parent %{public}p was missing", &v2, 0xCu);
}

@end