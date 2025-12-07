@interface ICPythonistaArgumentsContentMapping
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
@end

@implementation ICPythonistaArgumentsContentMapping

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v10[3] = &unk_1E837DBF8;
  v11 = representationCopy;
  v9 = representationCopy;
  [(WFInterchangeContentMapping *)self getContentCollection:v10 withInput:input parameters:parameters];
}

void __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2;
    v5[3] = &unk_1E837F588;
    v6 = *(a1 + 32);
    [a2 getStringRepresentations:v5];
  }

  else
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }
}

void __84__ICPythonistaArgumentsContentMapping_getStringRepresentation_withInput_parameters___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x1E696AB08] URLQueryAllowedCharacterSet];
    v5 = [v4 mutableCopy];

    [v5 removeCharactersInString:@"?&="];
    v6 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v7 = v3;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v13 + 1) + 8 * i) stringByAddingPercentEncodingWithAllowedCharacters:v5];
          [v6 appendFormat:@"&argv=%@", v12];
        }

        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end