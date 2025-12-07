@interface SCNNode
@end

@implementation SCNNode

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:?];
  avt_enableSubdivisionOnHierarchyWithQuality_animoji__disableSubdivision = [v0 BOOLForKey:?];
}

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke_2()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 userInterfaceIdiom];

  if (v1 == 1)
  {
    avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality = 1;
  }
}

void __77__SCNNode_AVTExtension__avt_enableSubdivisionOnHierarchyWithQuality_animoji___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 geometry];
  if (v3)
  {
    v4 = [v11 name];
    v5 = v4;
    if ((*(a1 + 40) & 1) != 0 || ([v4 isEqualToString:?] & 1) == 0 && (objc_msgSend(v5, "isEqualToString:") & 1) == 0)
    {
      if ([v5 hasSuffix:?])
      {
        v6 = avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality;
      }

      else
      {
        v7 = [v5 isEqualToString:?];
        v6 = avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality;
        if ((avt_enableSubdivisionOnHierarchyWithQuality_animoji__forceHighQuality & 1) == 0 && (v7 & 1) == 0)
        {
          v6 = *(a1 + 32);
        }
      }

      if ((*(a1 + 40) & 1) == 0 && (([v5 containsString:?] & 1) != 0 || objc_msgSend(v5, "containsString:")))
      {
        v6 = 2;
      }

      v8 = [v3 tessellator];
      v9 = [v3 tessellator];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x1E697A880]);

        [v3 setTessellator:?];
        [v3 setWantsAdaptiveSubdivision:?];
        v8 = v10;
      }

      if (v6 <= 2)
      {
        [v3 setSubdivisionLevel:?];
        [v8 setTessellationFactorScale:?];
      }
    }
  }
}

void __75__SCNNode_AVTExtension__avt_setGeometryPrimitiveRangesFromFaceIndexRanges___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  v4 = [*(a1 + 32) objectAtIndexedSubscript:?];
  v5 = [v4 count];
  v6 = v5 >> 1;
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
  if (v5 >= 2)
  {
    v8 = 1;
    do
    {
      v9 = [v4 objectAtIndexedSubscript:?];
      [v9 unsignedIntegerValue];

      v10 = [v4 objectAtIndexedSubscript:?];
      [v10 unsignedIntegerValue];

      v11 = [MEMORY[0x1E696B098] valueWithRange:?];
      [v7 addObject:?];

      v8 += 2;
      --v6;
    }

    while (v6);
  }

  [v12 setPrimitiveRanges:?];
}

@end