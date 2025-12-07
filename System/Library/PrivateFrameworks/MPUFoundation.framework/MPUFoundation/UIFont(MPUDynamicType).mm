@interface UIFont(MPUDynamicType)
- (double)MPU_scaledValueForValue:()MPUDynamicType;
@end

@implementation UIFont(MPUDynamicType)

- (double)MPU_scaledValueForValue:()MPUDynamicType
{
  fontDescriptor = [self fontDescriptor];
  v5 = [fontDescriptor objectForKey:*MEMORY[0x277D74378]];

  if (!v5)
  {
    goto LABEL_12;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr;
  v19 = getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr;
  if (!getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr)
  {
    v7 = CoreTextLibrary();
    v17[3] = dlsym(v7, "kCTFontDescriptorTextStyleRegular");
    getkCTFontDescriptorTextStyleRegularSymbolLoc_ptr = v17[3];
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v6)
  {
    [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    goto LABEL_14;
  }

  v8 = *v6;
  if ([v5 isEqualToString:v8])
  {

    goto LABEL_12;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v9 = getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr;
  v19 = getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr;
  if (!getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr)
  {
    v10 = CoreTextLibrary();
    v17[3] = dlsym(v10, "kCTFontDescriptorTextStyleEmphasized");
    getkCTFontDescriptorTextStyleEmphasizedSymbolLoc_ptr = v17[3];
    v9 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v9)
  {
LABEL_14:
    [UIFont(MPUDynamicType) MPU_scaledValueForValue:];
    v15 = v14;
    _Block_object_dispose(&v16, 8);
    _Unwind_Resume(v15);
  }

  v11 = [v5 isEqualToString:*v9];

  if ((v11 & 1) == 0)
  {
    [self _scaledValueForValue:a2];
    a2 = v12;
  }

LABEL_12:

  return a2;
}

- (void)MPU_scaledValueForValue:()MPUDynamicType .cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  +[MPUFontDescriptorCache sharedFontDescriptorCache];
}

@end