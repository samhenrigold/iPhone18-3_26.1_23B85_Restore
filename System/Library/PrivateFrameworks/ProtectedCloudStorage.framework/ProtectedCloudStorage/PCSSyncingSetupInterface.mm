@interface PCSSyncingSetupInterface
@end

@implementation PCSSyncingSetupInterface

Class ___PCSSyncingSetupInterface_block_invoke()
{
  v21[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
  v2 = [v0 setWithArray:v1];
  v3 = _PCSSyncingSetupInterface_keyClasses;
  _PCSSyncingSetupInterface_keyClasses = v2;

  v4 = MEMORY[0x1E695DFA8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v5 = getCKAcceptableValueClassesSymbolLoc_ptr;
  v19 = getCKAcceptableValueClassesSymbolLoc_ptr;
  if (!getCKAcceptableValueClassesSymbolLoc_ptr)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __getCKAcceptableValueClassesSymbolLoc_block_invoke;
    v15[3] = &unk_1E7B18A90;
    v15[4] = &v16;
    __getCKAcceptableValueClassesSymbolLoc_block_invoke(v15);
    v5 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v5)
  {
    [PCSAccountsModel init];
    __break(1u);
  }

  v6 = v5();
  v7 = [v4 setWithSet:v6];
  v8 = _PCSSyncingSetupInterface_errClasses;
  _PCSSyncingSetupInterface_errClasses = v7;

  v9 = MEMORY[0x1E695DFD8];
  v20 = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
  v11 = [v9 setWithArray:v10];
  v12 = _PCSSyncingSetupInterface_statsClasses;
  _PCSSyncingSetupInterface_statsClasses = v11;

  for (i = 0; i != 5; ++i)
  {
    result = objc_getClass(off_1E7B19C60[i]);
    if (result)
    {
      result = [_PCSSyncingSetupInterface_errClasses addObject:result];
    }
  }

  return result;
}

@end