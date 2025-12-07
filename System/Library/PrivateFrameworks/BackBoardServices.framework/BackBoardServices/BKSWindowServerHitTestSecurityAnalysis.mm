@interface BKSWindowServerHitTestSecurityAnalysis
+ (BKSWindowServerHitTestSecurityAnalysis)new;
+ (id)build:(id)build;
+ (id)securityAnalysisFromCAHitTestDictionary:(id)dictionary errorString:(id *)string;
- (BKSWindowServerHitTestSecurityAnalysis)init;
- (BOOL)isEqual:(id)equal;
- (CATransform3D)cumulativeLayerTransform;
- (id)_init;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_initWithCopyOf:(void *)of;
- (void)appendDescriptionToFormatter:(id)formatter;
@end

@implementation BKSWindowServerHitTestSecurityAnalysis

void __56__BKSWindowServerHitTestSecurityAnalysis_protobufSchema__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
  [v2 addField:?];
}

- (void)_initWithCopyOf:(void *)of
{
  v3 = a2;
  if (of)
  {
    _init = [(BKSWindowServerHitTestSecurityAnalysis *)of _init];
    of = _init;
    if (_init)
    {
      v5 = *(v3 + 8);
      v6 = *(v3 + 24);
      v7 = *(v3 + 40);
      *(_init + 56) = *(v3 + 56);
      *(_init + 40) = v7;
      *(_init + 24) = v6;
      *(_init + 8) = v5;
      v8 = *(v3 + 72);
      v9 = *(v3 + 88);
      v10 = *(v3 + 104);
      *(_init + 120) = *(v3 + 120);
      *(_init + 104) = v10;
      *(_init + 88) = v9;
      *(_init + 72) = v8;
      *(_init + 34) = *(v3 + 34);
      _init[140] = v3[140];
      _init[141] = v3[141];
      *(_init + 36) = *(v3 + 36);
      *(_init + 37) = *(v3 + 37);
      *(_init + 19) = *(v3 + 19);
    }
  }

  return of;
}

- (id)_init
{
  if (result)
  {
    v1 = result;
    v2 = objc_opt_class();
    if (v2 != objc_opt_class())
    {
      v3 = objc_opt_class();
      if (v3 != objc_opt_class())
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:? object:? file:? lineNumber:? description:?];
      }
    }

    v5.receiver = v1;
    v5.super_class = BKSWindowServerHitTestSecurityAnalysis;
    return objc_msgSendSuper2(&v5, sel_init);
  }

  return result;
}

- (CATransform3D)cumulativeLayerTransform
{
  v3 = *&self->m34;
  *&retstr->m31 = *&self->m32;
  *&retstr->m33 = v3;
  v4 = *&self->m44;
  *&retstr->m41 = *&self->m42;
  *&retstr->m43 = v4;
  v5 = *&self->m14;
  *&retstr->m11 = *&self->m12;
  *&retstr->m13 = v5;
  v6 = *&self->m24;
  *&retstr->m21 = *&self->m22;
  *&retstr->m23 = v6;
  return self;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  v4 = MEMORY[0x1E696B098];
  v5 = *&self->_cumulativeLayerTransform.m33;
  v22 = *&self->_cumulativeLayerTransform.m31;
  v23 = v5;
  v6 = *&self->_cumulativeLayerTransform.m43;
  v24 = *&self->_cumulativeLayerTransform.m41;
  v25 = v6;
  v7 = *&self->_cumulativeLayerTransform.m13;
  v18 = *&self->_cumulativeLayerTransform.m11;
  v19 = v7;
  v8 = *&self->_cumulativeLayerTransform.m23;
  v20 = *&self->_cumulativeLayerTransform.m21;
  v21 = v8;
  formatterCopy = formatter;
  v10 = [v4 valueWithCATransform3D:{v18, v19, v20, v21, v22, v23, v24, v25}];
  v11 = [formatterCopy appendObject:? withName:?];

  v12 = [formatterCopy appendFloat:? withName:?];
  v13 = [formatterCopy appendBool:? withName:?];
  v14 = [formatterCopy appendBool:? withName:?];
  v15 = [formatterCopy appendInt:? withName:?];
  v16 = [formatterCopy appendFloat:? withName:?];
  v17 = NSStringFromBKSWindowServerHitTestOcclusionType(self->_occlusionType);
  [formatterCopy appendString:? withName:?];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [BKSMutableWindowServerHitTestSecurityAnalysis alloc];

  return [(BKSWindowServerHitTestSecurityAnalysis *)v4 _initWithCopyOf:?];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = (vminvq_u8(vuzp1q_s8(vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v5 + 8), *&self->_cumulativeLayerTransform.m11), vceqq_f64(*(v5 + 24), *&self->_cumulativeLayerTransform.m13)), vuzp1q_s32(vceqq_f64(*(v5 + 40), *&self->_cumulativeLayerTransform.m21), vceqq_f64(*(v5 + 56), *&self->_cumulativeLayerTransform.m23))), vuzp1q_s16(vuzp1q_s32(vceqq_f64(*(v5 + 72), *&self->_cumulativeLayerTransform.m31), vceqq_f64(*(v5 + 88), *&self->_cumulativeLayerTransform.m33)), vuzp1q_s32(vceqq_f64(*(v5 + 104), *&self->_cumulativeLayerTransform.m41), vceqq_f64(*(v5 + 120), *&self->_cumulativeLayerTransform.m43))))) & 1) != 0 && BSFloatEqualToFloat() && v5[140] == self->_hasInsecureFilter && v5[141] == self->_parentsHaveInsecureLayerProperties && *(v5 + 36) == self->_occlusionMask && BSFloatEqualToFloat() && *(v5 + 19) == self->_occlusionType;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v2 = [MEMORY[0x1E696B098] valueWithBytes:*&self->_cumulativeLayerTransform.m11 objCType:{*&self->_cumulativeLayerTransform.m13, *&self->_cumulativeLayerTransform.m21, *&self->_cumulativeLayerTransform.m23, *&self->_cumulativeLayerTransform.m24, *&self->_cumulativeLayerTransform.m31, *&self->_cumulativeLayerTransform.m33, *&self->_cumulativeLayerTransform.m41, *&self->_cumulativeLayerTransform.m43}];
  [v2 hash];

  v3 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [v3 hash];

  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
  [v4 hash];

  v5 = [MEMORY[0x1E696AD98] numberWithFloat:?];
  [v5 hash];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  [v6 hash];

  return BSHashPurifyNS();
}

- (BKSWindowServerHitTestSecurityAnalysis)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

+ (BKSWindowServerHitTestSecurityAnalysis)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
  [currentHandler handleFailureInFunction:? file:? lineNumber:? description:?];

  return 0;
}

+ (id)build:(id)build
{
  buildCopy = build;
  _init = [(BKSWindowServerHitTestSecurityAnalysis *)[BKSMutableWindowServerHitTestSecurityAnalysis alloc] _init];
  buildCopy[2](buildCopy, _init);

  v5 = [_init copy];

  return v5;
}

+ (id)securityAnalysisFromCAHitTestDictionary:(id)dictionary errorString:(id *)string
{
  dictionaryCopy = dictionary;
  *string = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v6 = getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr;
  v31 = getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr;
  if (!getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr)
  {
    v7 = QuartzCoreLibrary_11890();
    v29[3] = dlsym(v7, "kCAWindowServerHitTestSecurityAnalysisOcclusionType");
    getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr = v29[3];
    v6 = v29[3];
  }

  _Block_object_dispose(&v28, 8);
  if (!v6)
  {
    goto LABEL_38;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:?];
  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v9 = getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr;
      v31 = getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr;
      if (!getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr)
      {
        v10 = QuartzCoreLibrary_11890();
        v29[3] = dlsym(v10, "kCAWindowServerOcclusionTypeLayer");
        getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr = v29[3];
        v9 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (v9)
      {
        if ([v8 isEqual:?])
        {
          goto LABEL_32;
        }

        v28 = 0;
        v29 = &v28;
        v30 = 0x2020000000;
        v19 = getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr;
        v31 = getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr;
        if (!getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr)
        {
          v20 = QuartzCoreLibrary_11890();
          v29[3] = dlsym(v20, "kCAWindowServerOcclusionTypeClipped");
          getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr = v29[3];
          v19 = v29[3];
        }

        _Block_object_dispose(&v28, 8);
        if (v19)
        {
          if ([v8 isEqual:?])
          {
LABEL_32:
            v27 = dictionaryCopy;
            v11 = [(BKSWindowServerHitTestSecurityAnalysis *)BKSMutableWindowServerHitTestSecurityAnalysis build:?];

            goto LABEL_35;
          }

          v28 = 0;
          v29 = &v28;
          v30 = 0x2020000000;
          v21 = getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr;
          v31 = getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr;
          if (!getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr)
          {
            v22 = QuartzCoreLibrary_11890();
            v29[3] = dlsym(v22, "kCAWindowServerOcclusionTypeBorder");
            getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr = v29[3];
            v21 = v29[3];
          }

          _Block_object_dispose(&v28, 8);
          if (v21)
          {
            [v8 isEqual:?];
            goto LABEL_32;
          }
        }
      }

LABEL_38:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      [currentHandler handleFailureInFunction:dlerror() file:? lineNumber:? description:?];

      __break(1u);
      return result;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [v8 unsignedIntValue];
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v13 = getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr;
      v31 = getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr;
      if (!getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr)
      {
        v14 = QuartzCoreLibrary_11890();
        v29[3] = dlsym(v14, "kCAWindowServerHitTestSecurityAnalysisOcclusionPercent");
        getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr = v29[3];
        v13 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (!v13)
      {
        goto LABEL_38;
      }

      v15 = [dictionaryCopy objectForKeyedSubscript:?];
      v16 = objc_opt_class();
      v17 = v15;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }

      v23 = v18;

      if (v23)
      {
        [v23 floatValue];

        goto LABEL_32;
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:unsignedIntValue];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
    }

    *string = v11 = 0;
    goto LABEL_35;
  }

  v11 = 0;
LABEL_35:

  return v11;
}

void __94__BKSWindowServerHitTestSecurityAnalysis_securityAnalysisFromCAHitTestDictionary_errorString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setOcclusionType:?];
  [v3 setOcclusionMask:?];
  [v3 setOcclusionPercentage:?];
  v4 = *(a1 + 32);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v5 = getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr;
  v36 = getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr;
  if (!getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr)
  {
    *&v25 = MEMORY[0x1E69E9820];
    *(&v25 + 1) = 3221225472;
    *&v26 = __getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_block_invoke;
    *(&v26 + 1) = &unk_1E6F476B0;
    *&v27 = &v33;
    v6 = QuartzCoreLibrary_11890();
    v34[3] = dlsym(v6, "kCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransform");
    getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr = *(*(v27 + 8) + 24);
    v5 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (v5)
  {
    v7 = [v4 objectForKeyedSubscript:?];
    if (v7)
    {
      [&v25 CATransform3DValue];
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
    }

    [v3 setCumulativeLayerTransform:?];
    v8 = *(a1 + 32);
    v33 = 0;
    v34 = &v33;
    v35 = 0x2020000000;
    v9 = getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr;
    v36 = getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr;
    if (!getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr)
    {
      *&v25 = MEMORY[0x1E69E9820];
      *(&v25 + 1) = 3221225472;
      *&v26 = __getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_block_invoke;
      *(&v26 + 1) = &unk_1E6F476B0;
      *&v27 = &v33;
      v10 = QuartzCoreLibrary_11890();
      v11 = dlsym(v10, "kCAWindowServerHitTestSecurityAnalysisCumulativeOpacity");
      *(*(v27 + 8) + 24) = v11;
      getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr = *(*(v27 + 8) + 24);
      v9 = v34[3];
    }

    _Block_object_dispose(&v33, 8);
    if (v9)
    {
      v12 = [v8 objectForKeyedSubscript:?];
      [v12 floatValue];
      [v3 setCumulativeOpacity:?];

      v13 = *(a1 + 32);
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v14 = getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr;
      v36 = getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr;
      if (!getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr)
      {
        *&v25 = MEMORY[0x1E69E9820];
        *(&v25 + 1) = 3221225472;
        *&v26 = __getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_block_invoke;
        *(&v26 + 1) = &unk_1E6F476B0;
        *&v27 = &v33;
        v15 = QuartzCoreLibrary_11890();
        v16 = dlsym(v15, "kCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerProperties");
        *(*(v27 + 8) + 24) = v16;
        getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr = *(*(v27 + 8) + 24);
        v14 = v34[3];
      }

      _Block_object_dispose(&v33, 8);
      if (v14)
      {
        v17 = [v13 objectForKeyedSubscript:?];
        [v17 BOOLValue];
        [v3 setParentsHaveInsecureLayerProperties:?];

        v18 = *(a1 + 32);
        v33 = 0;
        v34 = &v33;
        v35 = 0x2020000000;
        v19 = getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr;
        v36 = getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr;
        if (!getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr)
        {
          *&v25 = MEMORY[0x1E69E9820];
          *(&v25 + 1) = 3221225472;
          *&v26 = __getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_block_invoke;
          *(&v26 + 1) = &unk_1E6F476B0;
          *&v27 = &v33;
          v20 = QuartzCoreLibrary_11890();
          v21 = dlsym(v20, "kCAWindowServerHitTestSecurityAnalysisIsInsecureFiltered");
          *(*(v27 + 8) + 24) = v21;
          getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr = *(*(v27 + 8) + 24);
          v19 = v34[3];
        }

        _Block_object_dispose(&v33, 8);
        if (v19)
        {
          v22 = [v18 objectForKeyedSubscript:?];
          [v22 BOOLValue];
          [v3 setHasInsecureFilter:?];

          return;
        }
      }
    }

    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v23 handleFailureInFunction:dlerror() file:? lineNumber:? description:?];
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v23 handleFailureInFunction:dlerror() file:? lineNumber:? description:?];
  }

  __break(1u);
}

@end