@interface PSContactResolver
@end

@implementation PSContactResolver

void __48___PSContactResolver_handlesForContactFavorites__block_invoke(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v20 objects:v33 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        v7 = [v6 contactProperty];
        v8 = [v7 key];

        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v9 = getCNContactPhoneNumbersKeySymbolLoc_ptr_1;
        v32 = getCNContactPhoneNumbersKeySymbolLoc_ptr_1;
        if (!getCNContactPhoneNumbersKeySymbolLoc_ptr_1)
        {
          v24 = MEMORY[0x1E69E9820];
          v25 = 3221225472;
          v26 = __getCNContactPhoneNumbersKeySymbolLoc_block_invoke_1;
          v27 = &unk_1E7C23BF0;
          v28 = &v29;
          v10 = ContactsLibrary_2();
          v11 = dlsym(v10, "CNContactPhoneNumbersKey");
          *(v28[1] + 24) = v11;
          getCNContactPhoneNumbersKeySymbolLoc_ptr_1 = *(v28[1] + 24);
          v9 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v9)
        {
LABEL_23:
          [_PSBlockedHandlesCache beginSyncingWithTU];
          __break(1u);
        }

        if ([v8 isEqualToString:*v9])
        {
          v12 = [v6 contactProperty];
          v13 = [v12 value];

          v14 = [v13 unformattedInternationalStringValue];
LABEL_16:
          v18 = v14;

          goto LABEL_18;
        }

        v29 = 0;
        v30 = &v29;
        v31 = 0x2020000000;
        v15 = getCNContactEmailAddressesKeySymbolLoc_ptr_1;
        v32 = getCNContactEmailAddressesKeySymbolLoc_ptr_1;
        if (!getCNContactEmailAddressesKeySymbolLoc_ptr_1)
        {
          v24 = MEMORY[0x1E69E9820];
          v25 = 3221225472;
          v26 = __getCNContactEmailAddressesKeySymbolLoc_block_invoke_1;
          v27 = &unk_1E7C23BF0;
          v28 = &v29;
          v16 = ContactsLibrary_2();
          v17 = dlsym(v16, "CNContactEmailAddressesKey");
          *(v28[1] + 24) = v17;
          getCNContactEmailAddressesKeySymbolLoc_ptr_1 = *(v28[1] + 24);
          v15 = v30[3];
        }

        _Block_object_dispose(&v29, 8);
        if (!v15)
        {
          goto LABEL_23;
        }

        if ([v8 isEqualToString:*v15])
        {
          v13 = [v6 contactProperty];
          v14 = [v13 value];
          goto LABEL_16;
        }

        v18 = 0;
LABEL_18:
        if ([v18 length])
        {
          [*(a1 + 32) addObject:v18];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v20 objects:v33 count:16];
    }

    while (v3);
  }
}

@end