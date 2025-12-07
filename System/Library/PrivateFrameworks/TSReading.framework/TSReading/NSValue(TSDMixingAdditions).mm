@interface NSValue(TSDMixingAdditions)
- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:;
- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions;
@end

@implementation NSValue(TSDMixingAdditions)

- (uint64_t)mixingTypeWithObject:()TSDMixingAdditions
{
  objc_opt_class();
  if ([self isEqualToValue:TSUCheckedDynamicCast()])
  {
    return 5;
  }

  if (!strcmp([self objCType], objc_msgSend(self, "objCType")))
  {
    return 3;
  }

  return 1;
}

- (uint64_t)mixedObjectWithFraction:()TSDMixingAdditions ofObject:
{
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (!strcmp([self objCType], "{CGPoint=dd}"))
  {
    [self CGPointValue];
    [v6 CGPointValue];
    v11 = MEMORY[0x277CCAE60];
    TSUMixPoints();

    return [v11 valueWithCGPoint:?];
  }

  else if (!strcmp([self objCType], "{CGSize=dd}"))
  {
    [self CGSizeValue];
    [v6 CGSizeValue];
    v12 = MEMORY[0x277CCAE60];
    TSUMixSizes();

    return [v12 valueWithCGSize:?];
  }

  else if (!strcmp([self objCType], "{CGRect={CGPoint=dd}{CGSize=dd}}"))
  {
    [self CGRectValue];
    [v6 CGRectValue];
    v13 = MEMORY[0x277CCAE60];
    TSUMixRects();

    return [v13 valueWithCGRect:?];
  }

  else if (!strcmp([self objCType], "{CGAffineTransform=dddddd}"))
  {
    v14 = 0uLL;
    v46 = 0u;
    v47 = 0u;
    v45 = 0u;
    if (self)
    {
      objc_msgSend_CGAffineTransformValue(self);
      v14 = 0uLL;
    }

    v38 = v14;
    v39 = v14;
    v37 = v14;
    if (v6)
    {
      objc_msgSend_CGAffineTransformValue(v6);
    }

    v15 = MEMORY[0x277CCAE60];
    v21 = v45;
    v22 = v46;
    v23 = v47;
    v53[0] = v37;
    v53[1] = v38;
    v53[2] = v39;
    TSDTransformMixAffineTransforms(&v21, v53, &v29, a2);
    return [v15 valueWithCGAffineTransform:&v29];
  }

  else if (!strcmp([self objCType], "{CATransform3D=dddddddddddddddd}"))
  {
    v16 = 0uLL;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    if (self)
    {
      objc_msgSend_CATransform3DValue(self);
      v16 = 0uLL;
    }

    v43 = v16;
    v44 = v16;
    v41 = v16;
    v42 = v16;
    v39 = v16;
    v40 = v16;
    v37 = v16;
    v38 = v16;
    if (v6)
    {
      objc_msgSend_CATransform3DValue(v6);
    }

    v17 = *(MEMORY[0x277CD9DE8] + 80);
    v33 = *(MEMORY[0x277CD9DE8] + 64);
    v34 = v17;
    v18 = *(MEMORY[0x277CD9DE8] + 112);
    v35 = *(MEMORY[0x277CD9DE8] + 96);
    v36 = v18;
    v19 = *(MEMORY[0x277CD9DE8] + 16);
    v29 = *MEMORY[0x277CD9DE8];
    v30 = v19;
    v20 = *(MEMORY[0x277CD9DE8] + 48);
    v31 = *(MEMORY[0x277CD9DE8] + 32);
    v32 = v20;
    MEMORY[0x26D6A75C0](&v29, &v45, &v37, a2);
    v25 = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v21 = v29;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    return [MEMORY[0x277CCAE60] valueWithCATransform3D:&v21];
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[NSValue(TSDMixingAdditions) mixedObjectWithFraction:ofObject:]"];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/drawables/TSDMagicMove.m"];
    [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:347 description:{@"Unknown objcType in NSValue: %@", objc_msgSend(MEMORY[0x277CCACA8], "stringWithUTF8String:", objc_msgSend(self, "objCType"))}];
    return 0;
  }
}

@end