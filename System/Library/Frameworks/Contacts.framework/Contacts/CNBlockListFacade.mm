@interface CNBlockListFacade
+ (void)newItemWithHandle:(id)handle;
- (BOOL)isHandleBlocked:(id)blocked;
- (void)setBlocked:(BOOL)blocked forHandle:(id)handle;
@end

@implementation CNBlockListFacade

- (BOOL)isHandleBlocked:(id)blocked
{
  blockedCopy = blocked;
  v4 = [objc_opt_class() newItemWithHandle:blockedCopy];
  if (v4)
  {
    v5 = v4;
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v6 = getCMFBlockListIsItemBlockedSymbolLoc_ptr;
    v15 = getCMFBlockListIsItemBlockedSymbolLoc_ptr;
    if (!getCMFBlockListIsItemBlockedSymbolLoc_ptr)
    {
      v7 = CommunicationsFilterLibrary();
      v13[3] = dlsym(v7, "CMFBlockListIsItemBlocked");
      getCMFBlockListIsItemBlockedSymbolLoc_ptr = v13[3];
      v6 = v13[3];
    }

    _Block_object_dispose(&v12, 8);
    if (!v6)
    {
      getMDItemUniqueIdentifier_cold_1();
      v11 = v10;
      _Block_object_dispose(&v12, 8);
      _Unwind_Resume(v11);
    }

    v8 = v6(v5) != 0;
    CFRelease(v5);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setBlocked:(BOOL)blocked forHandle:(id)handle
{
  blockedCopy = blocked;
  handleCopy = handle;
  v6 = [objc_opt_class() newItemWithHandle:handleCopy];
  if (v6)
  {
    v7 = v6;
    v8 = &v15;
    if (blockedCopy)
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v9 = getCMFBlockListAddItemForAllServicesSymbolLoc_ptr;
      v18 = getCMFBlockListAddItemForAllServicesSymbolLoc_ptr;
      if (!getCMFBlockListAddItemForAllServicesSymbolLoc_ptr)
      {
        v10 = CommunicationsFilterLibrary();
        v16[3] = dlsym(v10, "CMFBlockListAddItemForAllServices");
        getCMFBlockListAddItemForAllServicesSymbolLoc_ptr = v16[3];
        v9 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (v9)
      {
        goto LABEL_10;
      }

      getMDItemUniqueIdentifier_cold_1();
    }

    v15 = 0;
    v16 = v8;
    v17 = 0x2020000000;
    v9 = getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr;
    v18 = getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr;
    if (!getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr)
    {
      v14 = v8;
      v11 = CommunicationsFilterLibrary();
      *(v14[1] + 24) = dlsym(v11, "CMFBlockListRemoveItemFromAllServices");
      getCMFBlockListRemoveItemFromAllServicesSymbolLoc_ptr = *(v14[1] + 24);
      v9 = v16[3];
    }

    _Block_object_dispose(&v15, 8);
    if (!v9)
    {
      getMDItemUniqueIdentifier_cold_1();
      v13 = v12;
      _Block_object_dispose(&v15, 8);
      _Unwind_Resume(v13);
    }

LABEL_10:
    v9(v7);
    CFRelease(v7);
  }
}

+ (void)newItemWithHandle:(id)handle
{
  handleCopy = handle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getCreateCMFItemFromStringSymbolLoc_ptr;
  v13 = getCreateCMFItemFromStringSymbolLoc_ptr;
  if (!getCreateCMFItemFromStringSymbolLoc_ptr)
  {
    v5 = CommunicationsFilterLibrary();
    v11[3] = dlsym(v5, "CreateCMFItemFromString");
    getCreateCMFItemFromStringSymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    getMDItemUniqueIdentifier_cold_1();
    v9 = v8;
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v6 = v4(handleCopy);

  return v6;
}

@end