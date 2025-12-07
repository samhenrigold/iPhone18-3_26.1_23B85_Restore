@interface _WBSParsecArraySchema
- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler;
- (_WBSParsecArraySchema)initWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional;
@end

@implementation _WBSParsecArraySchema

- (_WBSParsecArraySchema)initWithElementSchema:(id)schema associatedError:(id)error isOptional:(BOOL)optional
{
  optionalCopy = optional;
  schemaCopy = schema;
  errorCopy = error;
  v11 = objc_opt_class();
  v15.receiver = self;
  v15.super_class = _WBSParsecArraySchema;
  v12 = [(WBSParsecSchema *)&v15 _initWithExpectedClass:v11 associatedError:errorCopy isOptional:optionalCopy];

  if (v12)
  {
    objc_storeStrong(&v12->_elementSchema, schema);
    v13 = v12;
  }

  return v12;
}

- (BOOL)_validateChild:(id)child ofParent:(id)parent withParentAssociatedError:(id)error errorHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  childCopy = child;
  parentCopy = parent;
  errorCopy = error;
  handlerCopy = handler;
  v34.receiver = self;
  v34.super_class = _WBSParsecArraySchema;
  if ([(WBSParsecSchema *)&v34 _validateChild:childCopy ofParent:parentCopy withParentAssociatedError:errorCopy errorHandler:handlerCopy])
  {
    associatedError = [(WBSParsecSchema *)self associatedError];
    v27 = associatedError;
    v28 = errorCopy;
    if (associatedError)
    {
      v15 = associatedError;
    }

    else
    {
      v15 = errorCopy;
    }

    v16 = v15;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v29 = childCopy;
    v17 = childCopy;
    v18 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v31;
      v21 = 1;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v23 = [(WBSParsecSchema *)self->_elementSchema _validateChild:*(*(&v30 + 1) + 8 * i) ofParent:v17 withParentAssociatedError:v16 errorHandler:handlerCopy];
          if ((v23 & 1) == 0)
          {
            v25 = WBS_LOG_CHANNEL_PREFIXSafariSuggestions(v23, v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              *buf = 134349312;
              v36 = v17;
              v37 = 2050;
              v38 = parentCopy;
              _os_log_error_impl(&dword_1BB6F3000, v25, OS_LOG_TYPE_ERROR, "Array element schema validation failed on child %{public}p of parent %{public}p", buf, 0x16u);
            }

            v21 = 0;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v19);
    }

    else
    {
      v21 = 1;
    }

    errorCopy = v28;
    childCopy = v29;
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

@end