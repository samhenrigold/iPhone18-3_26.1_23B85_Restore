@interface ICSkypeCallContentMapping
- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters;
- (void)getStringRepresentationWithoutContact:(id)contact withInput:(id)input parameters:(id)parameters;
@end

@implementation ICSkypeCallContentMapping

- (void)getStringRepresentationWithoutContact:(id)contact withInput:(id)input parameters:(id)parameters
{
  v18[2] = *MEMORY[0x1E69E9840];
  contactCopy = contact;
  parametersCopy = parameters;
  inputCopy = input;
  v18[0] = objc_opt_class();
  v18[1] = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__ICSkypeCallContentMapping_getStringRepresentationWithoutContact_withInput_parameters___block_invoke;
  v14[3] = &unk_1E837FF18;
  selfCopy = self;
  v17 = contactCopy;
  v15 = parametersCopy;
  v12 = parametersCopy;
  v13 = contactCopy;
  [inputCopy generateCollectionByCoercingToItemClasses:v11 completionHandler:v14];
}

id __88__ICSkypeCallContentMapping_getStringRepresentationWithoutContact_withInput_parameters___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = ICSkypeCallContentMapping;
  return objc_msgSendSuper2(&v5, sel_getStringRepresentation_withInput_parameters_, v2, a2, v3);
}

- (void)getStringRepresentation:(id)representation withInput:(id)input parameters:(id)parameters
{
  representationCopy = representation;
  inputCopy = input;
  parametersCopy = parameters;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __74__ICSkypeCallContentMapping_getStringRepresentation_withInput_parameters___block_invoke;
  v14[3] = &unk_1E837D3E0;
  v14[4] = self;
  v15 = inputCopy;
  v16 = parametersCopy;
  v17 = representationCopy;
  v11 = parametersCopy;
  v12 = inputCopy;
  v13 = representationCopy;
  [(WFInterchangeContentMapping *)self getContentCollection:v14 withInput:v12 parameters:v11];
}

void __74__ICSkypeCallContentMapping_getStringRepresentation_withInput_parameters___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v61[2] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v41 = a3;
  v43 = a4;
  v40 = v7;
  if ([v7 numberOfItems])
  {
    v38 = a1;
    v42 = [v7 collectionByFilteringToItemClass:objc_opt_class() excludedItems:0];
    if ([v42 numberOfItems])
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = [v42 items];
      v37 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
      if (v37)
      {
        v8 = *v50;
        v35 = *v50;
        do
        {
          v9 = 0;
          do
          {
            if (*v50 != v8)
            {
              v10 = v9;
              objc_enumerationMutation(obj);
              v9 = v10;
            }

            v36 = v9;
            v11 = *(*(&v49 + 1) + 8 * v9);
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v12 = [v11 contact];
            v44 = [v12 instantMessageAddresses];

            v13 = [v44 countByEnumeratingWithState:&v45 objects:v58 count:16];
            if (v13)
            {
              v14 = *v46;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v46 != v14)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v16 = *(*(&v45 + 1) + 8 * i);
                  v17 = [v16 value];
                  v18 = [v17 service];
                  v54 = 0;
                  v55 = &v54;
                  v56 = 0x2020000000;
                  v19 = getCNInstantMessageServiceSkypeSymbolLoc_ptr;
                  v57 = getCNInstantMessageServiceSkypeSymbolLoc_ptr;
                  if (!getCNInstantMessageServiceSkypeSymbolLoc_ptr)
                  {
                    v53[0] = MEMORY[0x1E69E9820];
                    v53[1] = 3221225472;
                    v53[2] = __getCNInstantMessageServiceSkypeSymbolLoc_block_invoke;
                    v53[3] = &unk_1E837FAC0;
                    v53[4] = &v54;
                    __getCNInstantMessageServiceSkypeSymbolLoc_block_invoke(v53);
                    v19 = v55[3];
                  }

                  _Block_object_dispose(&v54, 8);
                  if (!v19)
                  {
                    v33 = [MEMORY[0x1E696AAA8] currentHandler];
                    v34 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getCNInstantMessageServiceSkype(void)"];
                    [v33 handleFailureInFunction:v34 file:@"ICSkypeCallContentMapping.m" lineNumber:14 description:{@"%s", dlerror()}];

                    __break(1u);
                  }

                  v20 = *v19;
                  if (objc_msgSend_isEqualToString_(v18))
                  {
                    v21 = [v16 value];
                    v22 = [v21 username];
                    v23 = [v22 length] == 0;

                    if (!v23)
                    {
                      v30 = *(v38 + 56);
                      v31 = [v16 value];
                      v32 = [v31 username];
                      (*(v30 + 16))(v30, v32, 0);

                      goto LABEL_30;
                    }
                  }

                  else
                  {
                  }
                }

                v13 = [v44 countByEnumeratingWithState:&v45 objects:v58 count:16];
              }

              while (v13);
            }

            v9 = v36 + 1;
            v8 = v35;
          }

          while (v36 + 1 != v37);
          v37 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
          v8 = v35;
        }

        while (v37);
      }
    }

    [*(v38 + 32) getStringRepresentationWithoutContact:*(v38 + 56) withInput:*(v38 + 40) parameters:*(v38 + 48)];
LABEL_30:
  }

  else
  {
    v24 = [*(a1 + 32) destinationType];
    isEqualToString = objc_msgSend_isEqualToString_(v24);

    if (!v43 && (isEqualToString & 1) == 0)
    {
      v26 = MEMORY[0x1E696ABC0];
      v60[0] = *MEMORY[0x1E696A588];
      v27 = WFLocalizedString(@"Error");
      v61[0] = v27;
      v60[1] = *MEMORY[0x1E696A578];
      v28 = WFLocalizedString(@"No phone numbers or Skype usernames were passed into this action.");
      v61[1] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v61 forKeys:v60 count:2];
      v43 = [v26 errorWithDomain:*MEMORY[0x1E696A250] code:260 userInfo:v29];
    }

    (*(*(a1 + 56) + 16))();
  }
}

@end