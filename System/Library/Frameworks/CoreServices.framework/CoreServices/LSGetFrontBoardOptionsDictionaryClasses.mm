@interface LSGetFrontBoardOptionsDictionaryClasses
@end

@implementation LSGetFrontBoardOptionsDictionaryClasses

void ___LSGetFrontBoardOptionsDictionaryClasses_block_invoke(uint64_t a1)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v1 = XNSGetPropertyListClasses(a1);
  v14[0] = objc_opt_class();
  v14[1] = objc_opt_class();
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];
  v3 = [v1 setByAddingObjectsFromArray:v2];
  v4 = _LSGetFrontBoardOptionsDictionaryClasses_result;
  _LSGetFrontBoardOptionsDictionaryClasses_result = v3;

  BSServiceConnectionEndpointClass = getBSServiceConnectionEndpointClass();
  if (BSServiceConnectionEndpointClass)
  {
    v6 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:BSServiceConnectionEndpointClass];
    v7 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v6;
  }

  UISClickAttributionClass = getUISClickAttributionClass();
  if (UISClickAttributionClass)
  {
    v9 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:UISClickAttributionClass];
    v10 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v9;
  }

  UISPasteSharingTokenClass = getUISPasteSharingTokenClass();
  if (UISPasteSharingTokenClass)
  {
    v12 = [_LSGetFrontBoardOptionsDictionaryClasses_result setByAddingObject:UISPasteSharingTokenClass];
    v13 = _LSGetFrontBoardOptionsDictionaryClasses_result;
    _LSGetFrontBoardOptionsDictionaryClasses_result = v12;
  }
}

@end