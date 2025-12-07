void sub_2479F1ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __ValidateGlyphNode(uint64_t a1, uint64_t a2, void *a3)
{
  if (CGSVGNodeGetType() != 1)
  {
    goto LABEL_19;
  }

  ChildCount = CGSVGNodeGetChildCount();
  if (!ChildCount)
  {
    v8 = 1;
    return v8 & 1;
  }

  v6 = ChildCount;
  v7 = 0;
  v23 = *MEMORY[0x277CCA450];
  v8 = 1;
  v9 = 0x277CCA000uLL;
  v10 = @"Symbol image file %@ contains a text node.";
  while (1)
  {
    ChildAtIndex = CGSVGNodeGetChildAtIndex();
    Type = CGSVGNodeGetType();
    if (Type == 1)
    {
      if ((__ValidateGlyphNode(ChildAtIndex, a2, a3) & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    if (Type == 2)
    {
      if (CGSVGShapeNodeGetPrimitive() == 10001)
      {
        v13 = [*(v9 + 3240) stringWithFormat:v10, a2];
        if (a3)
        {
          v14 = objc_alloc(MEMORY[0x277CCA9B8]);
          v15 = v10;
          v16 = v9;
          v17 = CoreThemeDefinitionErrorDomain[0];
          v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v13, v23, 0}];
          v19 = v17;
          v9 = v16;
          v10 = v15;
          *a3 = [v14 initWithDomain:v19 code:1014 userInfo:v18];
        }

        NSLog(&stru_28599C078.isa, v13);
        v8 = 0;
      }

      goto LABEL_13;
    }

    if (Type == 3)
    {
      break;
    }

LABEL_13:
    if (v6 == ++v7)
    {
      return v8 & 1;
    }
  }

  v20 = [*(v9 + 3240) stringWithFormat:@"Symbol image file %@ has a custom node.", a2];
  if (a3)
  {
    v21 = objc_alloc(MEMORY[0x277CCA9B8]);
    *a3 = [v21 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:1013 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v20, v23, 0)}];
  }

  NSLog(&stru_28599C078.isa, v20);
LABEL_19:
  v8 = 0;
  return v8 & 1;
}

uint64_t __nodesAreInterpolationCompatible(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ChildCount = CGSVGNodeGetChildCount();
  if (CGSVGNodeGetChildCount() != ChildCount)
  {
    return 1;
  }

  v5 = CGSVGNodeGetChildCount();
  result = 1;
  if (v5 == ChildCount && ChildCount)
  {
    v7 = 0;
    while (1)
    {
      ChildAtIndex = CGSVGNodeGetChildAtIndex();
      v9 = CGSVGNodeGetChildAtIndex();
      v10 = CGSVGNodeGetChildAtIndex();
      if (CGSVGNodeGetType() == 2)
      {
        Primitive = CGSVGShapeNodeGetPrimitive();
        v12 = CGSVGShapeNodeGetPrimitive();
        v13 = CGSVGShapeNodeGetPrimitive();
        result = 0;
        if (Primitive != v12 || v13 != v12)
        {
          return result;
        }

        v14 = a3;
        ClassSet = __createClassSet(ChildAtIndex);
        v16 = __createClassSet(v9);
        v17 = __createClassSet(v10);
        if (![v16 isEqualToSet:ClassSet] || (objc_msgSend(v16, "isEqualToSet:", v17) & 1) == 0)
        {

          return 0;
        }

        a3 = v14;
        if (Primitive <= 0x2D && ((1 << Primitive) & 0x340000000000) != 0)
        {
          CGSVGShapeNodeGetPath();
          CGSVGShapeNodeGetPath();
          CGSVGShapeNodeGetPath();
          CGPath = CGSVGPathCreateCGPath();
          v19 = CGSVGPathCreateCGPath();
          v20 = CGSVGPathCreateCGPath();
          v53 = 0;
          v54 = &v53;
          v55 = 0x2020000000;
          v56 = 0;
          v49 = 0;
          v50 = &v49;
          v51 = 0x2020000000;
          v52 = 0;
          v45 = 0;
          v46 = &v45;
          v47 = 0x2020000000;
          v48 = 0;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = ____nodesAreInterpolationCompatible_block_invoke;
          block[3] = &unk_278EBADD0;
          block[4] = &v53;
          CGPathApplyWithBlock(CGPath, block);
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = ____nodesAreInterpolationCompatible_block_invoke_2;
          v43[3] = &unk_278EBADD0;
          v43[4] = &v49;
          CGPathApplyWithBlock(v19, v43);
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = ____nodesAreInterpolationCompatible_block_invoke_3;
          v42[3] = &unk_278EBADD0;
          v42[4] = &v45;
          CGPathApplyWithBlock(v20, v42);
          v21 = v50[3];
          if (v21 && v54[3] == v21 && v46[3] == v21)
          {
            v38 = 0;
            v39 = &v38;
            v40 = 0x2020000000;
            v41 = malloc_type_calloc(v21, 4uLL, 0x100004052888210uLL);
            v34 = 0;
            v35 = &v34;
            v36 = 0x2020000000;
            v37 = 0;
            v33[0] = MEMORY[0x277D85DD0];
            v33[1] = 3221225472;
            v33[2] = ____nodesAreInterpolationCompatible_block_invoke_4;
            v33[3] = &unk_278EBADF8;
            v33[4] = &v38;
            v33[5] = &v34;
            CGPathApplyWithBlock(v19, v33);
            v29 = 0;
            v30 = &v29;
            v31 = 0x2020000000;
            v32 = 1;
            v35[3] = 0;
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = ____nodesAreInterpolationCompatible_block_invoke_5;
            v28[3] = &unk_278EBAE20;
            v28[4] = &v38;
            v28[5] = &v34;
            v28[6] = &v29;
            CGPathApplyWithBlock(CGPath, v28);
            v24 = 0;
            v25 = &v24;
            v26 = 0x2020000000;
            v27 = 1;
            v35[3] = 0;
            v23[0] = MEMORY[0x277D85DD0];
            v23[1] = 3221225472;
            v23[2] = ____nodesAreInterpolationCompatible_block_invoke_6;
            v23[3] = &unk_278EBAE20;
            v23[4] = &v38;
            v23[5] = &v34;
            v23[6] = &v24;
            CGPathApplyWithBlock(v20, v23);
            v22 = *(v30 + 24) == 1 && (v25[3] & 1) != 0;
            free(v39[3]);
            _Block_object_dispose(&v24, 8);
            _Block_object_dispose(&v29, 8);
            _Block_object_dispose(&v34, 8);
            _Block_object_dispose(&v38, 8);
          }

          else
          {
            v22 = 0;
          }

          CGPathRelease(CGPath);
          CGPathRelease(v19);
          CGPathRelease(v20);
          _Block_object_dispose(&v45, 8);
          _Block_object_dispose(&v49, 8);
          _Block_object_dispose(&v53, 8);
          a3 = v14;
          if (!v22)
          {
            return 0;
          }
        }
      }

      else if (CGSVGNodeGetChildCount())
      {
        result = __nodesAreInterpolationCompatible(ChildAtIndex, v9, v10);
        if (!result)
        {
          return result;
        }
      }

      if (ChildCount == ++v7)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_2479F527C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 200), 8);
  _Block_object_dispose((v48 - 168), 8);
  _Block_object_dispose((v48 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t __interpolateChildShapes(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8, double a9)
{
  ChildCount = CGSVGNodeGetChildCount();
  result = CGSVGNodeGetChildCount();
  v35 = ChildCount;
  if (result == ChildCount)
  {
    result = CGSVGNodeGetChildCount();
    if (result == ChildCount)
    {
      result = CGSVGNodeGetChildCount();
      if (result == ChildCount)
      {
        if (ChildCount)
        {
          for (i = 0; v35 != i; ++i)
          {
            ChildAtIndex = CGSVGNodeGetChildAtIndex();
            v20 = CGSVGNodeGetChildAtIndex();
            v21 = CGSVGNodeGetChildAtIndex();
            v22 = CGSVGNodeGetChildAtIndex();
            Type = CGSVGNodeGetType();
            result = CGSVGNodeGetChildCount();
            if (result)
            {
              result = __interpolateChildShapes(ChildAtIndex, v20, v21, v22, a5, a6, a7, a8, a9);
            }

            if (Type != 2)
            {
              continue;
            }

            Primitive = CGSVGShapeNodeGetPrimitive();
            if (Primitive > 31)
            {
              if (Primitive == 32)
              {
                CGSVGShapeNodeGetLineGeometry();
                CGSVGShapeNodeGetLineGeometry();
                CGSVGShapeNodeGetLineGeometry();
                CGSVGShapeNodeSetLineGeometry();
                goto LABEL_19;
              }

              if (Primitive != 49)
              {
                goto LABEL_16;
              }

              CGSVGShapeNodeGetRectGeometry();
              CGSVGShapeNodeGetRectGeometry();
              CGSVGShapeNodeGetRectGeometry();
              CGSVGShapeNodeSetRectGeometry();
            }

            else
            {
              if (Primitive == 3)
              {
                CGSVGShapeNodeGetCircleGeometry();
                CGSVGShapeNodeGetCircleGeometry();
                CGSVGShapeNodeGetCircleGeometry();
                CGSVGShapeNodeSetCircleGeometry();
                goto LABEL_19;
              }

              if (Primitive != 16)
              {
LABEL_16:
                v25 = CUICreatePathFromSVGShapeNode();
                v34 = CUICreatePathFromSVGShapeNode();
                v26 = CUICreatePathFromSVGShapeNode();
                v27 = v25;
                v28 = [objc_alloc(MEMORY[0x277D02718]) initWithPointSize:v34 regular:v25 ultralight:v26 black:a9];
                v29 = a3;
                v30 = a4;
                v31 = v28;
                [v28 pathForScalars:a5 andTransform:{a6, a7, a8}];
                CUIAddPathToSVGShapeNode();

                a4 = v30;
                a3 = v29;

                goto LABEL_19;
              }

              CGSVGShapeNodeGetEllipseGeometry();
              CGSVGShapeNodeGetEllipseGeometry();
              CGSVGShapeNodeGetEllipseGeometry();
              CGSVGShapeNodeSetEllipseGeometry();
            }

LABEL_19:
            CGSVGNodeGetAttributeMap();
            CGSVGNodeGetAttributeMap();
            CGSVGNodeGetAttributeMap();
            Attribute = CGSVGAttributeMapGetAttribute();
            v33 = CGSVGAttributeMapGetAttribute();
            result = CGSVGAttributeMapGetAttribute();
            if (Attribute)
            {
              if (v33)
              {
                if (result)
                {
                  result = CGSVGAttributeGetFloat();
                  if (result)
                  {
                    result = CGSVGAttributeGetFloat();
                    if (result)
                    {
                      result = CGSVGAttributeGetFloat();
                      if (result)
                      {
                        CGSVGAttributeCreateWithFloat();
                        CGSVGNodeSetAttribute();
                        result = CGSVGAttributeRelease();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

id __CUIVectorGlyphGuideIDs_block_invoke()
{
  v14 = *MEMORY[0x277D85DE8];
  if (__CUIVectorGlyphNodeIDs_onceToken != -1)
  {
    [TDVectorGlyphReader _readSVGNodesError:];
  }

  v0 = __CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs;
  v1 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(__CUIVectorGlyphNodeIDs__CUIVectorGlyphNodeIDs, "count")}];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v0 countByEnumeratingWithState:&v8 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        [v1 addObject:{objc_msgSend(@"left-margin", "stringByAppendingFormat:", @"-%@", v6)}];
        [v1 addObject:{objc_msgSend(@"right-margin", "stringByAppendingFormat:", @"-%@", v6)}];
      }

      v3 = [v0 countByEnumeratingWithState:&v8 objects:v13 count:16];
    }

    while (v3);
  }

  v12[0] = @"Baseline-S";
  v12[1] = @"Capline-S";
  v12[2] = @"Baseline-M";
  v12[3] = @"Capline-M";
  v12[4] = @"Baseline-L";
  v12[5] = @"Capline-L";
  v12[6] = @"left-margin";
  v12[7] = @"right-margin";
  result = [v1 arrayByAddingObjectsFromArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 8)}];
  CUIVectorGlyphGuideIDs__CUIVectorGlyphGuideIDs = result;
  return result;
}

void *__createClassSet(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  if (CGSVGNodeGetAttributeMap() && CGSVGAttributeMapGetAttribute())
  {
    v1 = CGSVGAttributeCopyString();
    v2 = [v1 componentsSeparatedByString:@" "];
    v3 = objc_opt_new();
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v11;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (([v8 hasPrefix:@"monochrome-"] & 1) != 0 || (objc_msgSend(v8, "hasPrefix:", @"multicolor-") & 1) != 0 || objc_msgSend(v8, "hasPrefix:", @"hierarchical-"))
          {
            [v3 addObject:v8];
          }
        }

        v5 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    return v3;
  }

  else
  {

    return objc_opt_new();
  }
}

uint64_t ____nodesAreInterpolationCompatible_block_invoke_4(uint64_t result, int *a2)
{
  v2 = *a2;
  v3 = *(*(*(result + 32) + 8) + 24);
  v4 = *(*(result + 40) + 8);
  v5 = *(v4 + 24);
  *(v4 + 24) = v5 + 1;
  *(v3 + 4 * v5) = v2;
  return result;
}

void *____nodesAreInterpolationCompatible_block_invoke_5(void *result, _DWORD *a2)
{
  v2 = *(*(result[4] + 8) + 24);
  v3 = *(result[5] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  v5 = *(result[6] + 8);
  if (*(v5 + 24) == 1 && *a2 != *(v2 + 4 * v4))
  {
    *(v5 + 24) = 0;
  }

  return result;
}

void *____nodesAreInterpolationCompatible_block_invoke_6(void *result, _DWORD *a2)
{
  v2 = *(*(result[4] + 8) + 24);
  v3 = *(result[5] + 8);
  v4 = *(v3 + 24);
  *(v3 + 24) = v4 + 1;
  v5 = *(result[6] + 8);
  if (*(v5 + 24) == 1 && *a2 != *(v2 + 4 * v4))
  {
    *(v5 + 24) = 0;
  }

  return result;
}

uint64_t indexOfFirstUncommonItemInArrays(void *a1, void *a2)
{
  v4 = [a1 count];
  v5 = [a2 count];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = v4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __indexOfFirstUncommonItemInArrays_block_invoke;
  v8[3] = &unk_278EBB450;
  v8[5] = &v9;
  v8[6] = v5;
  v8[4] = a2;
  [a1 enumerateObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_247A099C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247A152A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __valueForAttributeNamed(void *a1, uint64_t a2)
{
  v3 = [a1 keySpec];
  switch(a2)
  {
    case 1:
      v4 = [v3 element];
      goto LABEL_27;
    case 2:
      v4 = [v3 part];
      goto LABEL_27;
    case 3:
      v4 = [v3 size];
      goto LABEL_27;
    case 4:
      v4 = [v3 direction];
      goto LABEL_27;
    case 6:
      v4 = [v3 value];
      goto LABEL_27;
    case 7:
      v4 = [v3 appearance];
      goto LABEL_27;
    case 8:
      LODWORD(result) = [v3 dimension1];
      goto LABEL_28;
    case 9:
      LODWORD(result) = [v3 dimension2];
      goto LABEL_28;
    case 10:
    case 14:
      v4 = [v3 state];
      goto LABEL_27;
    case 11:
      v4 = [v3 layer];
      goto LABEL_27;
    case 12:
      LODWORD(result) = [v3 scaleFactor];
      goto LABEL_28;
    case 13:
      v4 = [v3 localization];
      goto LABEL_27;
    case 15:
      v4 = [v3 idiom];
      goto LABEL_27;
    case 16:
      LODWORD(result) = [v3 subtype];
      goto LABEL_28;
    case 17:
      LODWORD(result) = [v3 nameIdentifier];
      goto LABEL_28;
    case 18:
      v4 = [v3 previousValue];
      goto LABEL_27;
    case 19:
      v4 = [v3 previousState];
      goto LABEL_27;
    case 20:
      v4 = [v3 sizeClassHorizontal];
      goto LABEL_27;
    case 21:
      v4 = [v3 sizeClassVertical];
      goto LABEL_27;
    case 22:
      LODWORD(result) = [v3 memoryClass];
      goto LABEL_28;
    case 23:
      v4 = [v3 graphicsFeatureSetClass];
      goto LABEL_27;
    case 24:
      v4 = [v3 gamut];
      goto LABEL_27;
    case 25:
      v4 = [v3 target];
      goto LABEL_27;
    case 26:
      v4 = [v3 glyphWeight];
      goto LABEL_27;
    case 27:
      v4 = [v3 glyphSize];
LABEL_27:
      LODWORD(result) = [v4 identifier];
LABEL_28:
      result = result;
      break;
    default:
      NSLog(&cfstr_SCalledWithAtt.isa, "__valueForAttributeNamed", a2);
      result = 0;
      break;
  }

  return result;
}

void sub_247A1CD58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (*(v13 + 160))
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Exception Raised during asset import"}];
      NSLog(&cfstr_AssetImportDid.isa);
      (*(*(v13 + 160) + 16))();
    }

    objc_end_catch();
    JUMPOUT(0x247A1C9F8);
  }

  _Unwind_Resume(exception_object);
}

void sub_247A1D29C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (*(v13 + 152))
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Exception Raised during asset import (2)"}];
      NSLog(&cfstr_AssetImportDid.isa);
      (*(*(v13 + 152) + 16))();
    }

    objc_end_catch();
    JUMPOUT(0x247A1D25CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_247A208A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    NSLog(&cfstr_GotException.isa);
    objc_end_catch();
    JUMPOUT(0x247A20884);
  }

  _Unwind_Resume(exception_object);
}

void sub_247A26900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_247A27224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, ...)
{
  va_start(va, a27);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *__indexOfFirstUncommonItemInArrays_block_invoke(id *result, void *a2, unint64_t a3, _BYTE *a4)
{
  v6 = result;
  if (result[6] <= a3 || (result = [a2 isEqual:{objc_msgSend(result[4], "objectAtIndex:", a3)}], (result & 1) == 0))
  {
    *(*(v6[5] + 1) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

double ____indexAreaOverMax_block_invoke(uint64_t a1, void *a2)
{
  v3 = ([a2 width] + 2);
  [a2 height];
  return v3;
}

uint64_t TDColorSpaceGetExtendedRangeSRGB(uint64_t a1, uint64_t a2)
{
  if (TDColorSpaceGetExtendedRangeSRGB___once != -1)
  {
    TDColorSpaceGetExtendedRangeSRGB_cold_1();
  }

  return TDColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace;
}

CGColorSpaceRef __TDColorSpaceGetExtendedRangeSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  TDColorSpaceGetExtendedRangeSRGB_sExtendedRangeSRGBColorSpace = result;
  return result;
}

void TDSchemaLog(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = getenv("CoreThemeLoggingEnabled");
  if (v9)
  {
    if (*v9 == 49)
    {
      NSLogv(a1, va);
    }
  }
}

_WORD *__CUITransmutePathSlashes(_WORD *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 2 && *result == 92)
  {
    v3 = 2 * (result[1] == 92);
  }

  else
  {
    v3 = 0;
  }

  if (v3 < v2)
  {
    v4 = v3;
    while (1)
    {
      v5 = result[v4];
      if (v5 == 47)
      {
        break;
      }

      v8 = v4 + 1;
      result[v3] = v5;
LABEL_16:
      ++v3;
      v4 = v8;
      if (v8 >= v2)
      {
        goto LABEL_19;
      }
    }

    result[v3] = 47;
    if (v2 <= v4 + 1)
    {
      v6 = v4 + 1;
    }

    else
    {
      v6 = v2;
    }

    v7 = v6 - 1;
    while (v7 != v4)
    {
      v8 = v4 + 1;
      v9 = result[++v4];
      if (v9 != 47)
      {
        goto LABEL_16;
      }
    }

    ++v3;
  }

LABEL_19:
  *a2 = v3;
  return result;
}

uint64_t _pathHasDotDot(unsigned __int16 *a1, uint64_t a2, int a3)
{
  v3 = 0;
  v4 = *a1;
  v6 = v4 != 126 && v4 != 47;
  if (a2 >= 2 && !v6)
  {
    if (a3)
    {
      v7 = 3;
      if (a2 >= 4)
      {
        while (a1[v7] != 47)
        {
          if (a2 == ++v7)
          {
            v7 = a2;
            break;
          }
        }
      }

      v8 = v7 + 1;
      if (a2 <= v7 + 1)
      {
        v9 = v7 + 1;
      }

      else
      {
        v9 = a2;
      }

      v10 = v9 - 1;
      while (v8 < a2)
      {
        v11 = a1[v8++];
        if (v11 == 47)
        {
          v10 = v8 - 2;
          break;
        }
      }

      v12 = v10 + 2;
    }

    else
    {
      v12 = 0;
    }

    if (v12 < a2 - 1)
    {
      for (i = &a1[v12]; ; ++i)
      {
        if (*i != 46 || i[1] != 46)
        {
          goto LABEL_37;
        }

        if (a2 != 2 && !v12)
        {
          break;
        }

        if (v12 < 1 || *(i - 1) != 47)
        {
          goto LABEL_37;
        }

        if (v12 + 2 < a2)
        {
          v14 = i[2];
LABEL_30:
          if (v14 == 47)
          {
            return 1;
          }

          goto LABEL_37;
        }

        if (a2 - 2 == v12)
        {
          return 1;
        }

LABEL_37:
        if (a2 - 1 == ++v12)
        {
          return 0;
        }
      }

      v14 = a1[2];
      goto LABEL_30;
    }

    return 0;
  }

  return v3;
}

void sub_247A3ACF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, ...)
{
  va_start(va, a43);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v43 - 248), 8);
  _Block_object_dispose((v43 - 200), 8);
  _Unwind_Resume(a1);
}

void sub_247A3F434(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *__arrayToString(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return @"*";
  }

  v3 = v2;
  v4 = [MEMORY[0x277CCAB68] string];
  for (i = 0; i != v3; ++i)
  {
    v6 = [a1 objectAtIndex:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v7 = [v6 count];
      objc_msgSend(v4, "appendString:", @"(");
      if (v7)
      {
        v8 = 0;
        do
        {
          [v4 appendString:{objc_msgSend(objc_msgSend(v6, "objectAtIndex:", v8), "stringValue")}];
          if (v7 != 1)
          {
            [v4 appendString:{@", "}];
          }

          ++v8;
          --v7;
        }

        while (v7);
      }

      v9 = v4;
      v10 = @"");
    }

    else
    {
      v10 = [v6 stringValue];
      v9 = v4;
    }

    [v9 appendString:v10];
    if (i != v3 - 1)
    {
      [v4 appendString:{@", "}];
    }
  }

  return v4;
}

void __midpointQuickPermuteInRange(void *a1, uint64_t a2, unint64_t a3, void *a4)
{
  v6 = a2 + (a3 >> 1);
  if (a3 < 2)
  {
    if (a3 == 1)
    {
      v12 = [a1 objectAtIndex:a2];

      [a4 addObject:v12];
    }
  }

  else
  {
    v8 = a3 >> 1;
    v9 = a3 - 1;
    v10 = a3 - 1 + a2;
    [a4 addObject:{objc_msgSend(a1, "objectAtIndex:", a2 + (a3 >> 1))}];
    v11 = objc_autoreleasePoolPush();
    __midpointQuickPermuteInRange(a1, a2, v8, a4);
    if (v10 > v6)
    {
      __midpointQuickPermuteInRange(a1, v6 + 1, v9 - v8, a4);
    }

    objc_autoreleasePoolPop(v11);
  }
}

CGRect CGPDFPageGetBoxRect(CGPDFPageRef page, CGPDFBox box)
{
  MEMORY[0x282111360](page, *&box);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x282111558](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

NSRect NSRectFromString(NSString *aString)
{
  MEMORY[0x28211F868](aString);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSSize NSSizeFromString(NSString *aString)
{
  MEMORY[0x28211F8B0](aString);
  result.height = v2;
  result.width = v1;
  return result;
}

NSRect NSUnionRect(NSRect aRect, NSRect bRect)
{
  MEMORY[0x28211F920](aRect.origin, *&aRect.origin.y, aRect.size, *&aRect.size.height, bRect.origin, *&bRect.origin.y, bRect.size, *&bRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v2 = MEMORY[0x2822026A8](__x, __y);
  result.rem = v3;
  result.quot = v2;
  return result;
}