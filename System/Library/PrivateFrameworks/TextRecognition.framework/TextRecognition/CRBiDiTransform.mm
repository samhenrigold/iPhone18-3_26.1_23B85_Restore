@interface CRBiDiTransform
+ (unint64_t)layoutDirectionForVisualString:(id)string visualDirectionality:(unint64_t)directionality logicalBaseDirection:(int)direction;
- (CRBiDiTransform)init;
- (id)transformVisualToLogical:(id)logical visualDirectionality:(unint64_t)directionality logicalBaseDirectionality:(unint64_t)baseDirectionality baseDirectionalityPredictionMode:(unint64_t)mode outTokenizedLogicalOrderIndexes:(id *)indexes outReorderingPermutation:(id *)permutation outMirroredVisualString:(id *)string outLogicalBaseDirection:(char *)self0;
- (void)dealloc;
@end

@implementation CRBiDiTransform

- (CRBiDiTransform)init
{
  v6.receiver = self;
  v6.super_class = CRBiDiTransform;
  v2 = [(CRBiDiTransform *)&v6 init];
  if (v2)
  {
    v3 = ubidi_open();
    v2->_icuBiDiTransform = v3;
    if (!v3)
    {
      v4 = 0;
      goto LABEL_6;
    }

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  v4 = v2;
LABEL_6:

  return v4;
}

- (void)dealloc
{
  if (self->_icuBiDiTransform)
  {
    ubidi_close();
    self->_icuBiDiTransform = 0;
  }

  v3.receiver = self;
  v3.super_class = CRBiDiTransform;
  [(CRBiDiTransform *)&v3 dealloc];
}

- (id)transformVisualToLogical:(id)logical visualDirectionality:(unint64_t)directionality logicalBaseDirectionality:(unint64_t)baseDirectionality baseDirectionalityPredictionMode:(unint64_t)mode outTokenizedLogicalOrderIndexes:(id *)indexes outReorderingPermutation:(id *)permutation outMirroredVisualString:(id *)string outLogicalBaseDirection:(char *)self0
{
  permutationCopy = permutation;
  v100 = *MEMORY[0x1E69E9840];
  logicalCopy = logical;
  v16 = logicalCopy;
  stringCopy = string;
  indexesCopy = indexes;
  directionalityCopy = directionality;
  if (directionality == 2)
  {
    _crStringByReversingComposedCharacterSequences = [logicalCopy _crStringByReversingComposedCharacterSequences];
    v17_crStringByReversingComposedCharacterSequences = v16;
  }

  else
  {
    _crStringByReversingComposedCharacterSequences = logicalCopy;
    v17_crStringByReversingComposedCharacterSequences = [_crStringByReversingComposedCharacterSequences _crStringByReversingComposedCharacterSequences];
  }

  v19 = v17_crStringByReversingComposedCharacterSequences;
  v20 = [_crStringByReversingComposedCharacterSequences length];
  v89 = v81;
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = v81 - v22;
  [_crStringByReversingComposedCharacterSequences getCharacters:{v81 - v22, v21}];
  *&v23[2 * [_crStringByReversingComposedCharacterSequences length]] = 0;
  [_crStringByReversingComposedCharacterSequences length];
  v96 = 0;
  os_unfair_lock_lock(&self->_lock);
  v24 = 1;
  ubidi_setInverse();
  if (baseDirectionality > 1)
  {
    if (baseDirectionality == 2)
    {
      goto LABEL_33;
    }

    if (baseDirectionality != 4)
    {
      if (baseDirectionality == 3)
      {
        v24 = -2;
        goto LABEL_33;
      }

LABEL_15:
      v25 = CROSLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 134217984;
        baseDirectionalityCopy = baseDirectionality;
        v26 = "BiDi Visual->Logical unsupported base direction: %ld";
        v27 = v25;
        v28 = 12;
LABEL_42:
        _os_log_impl(&dword_1B40D2000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
        goto LABEL_43;
      }

      goto LABEL_43;
    }

    goto LABEL_32;
  }

  if (!baseDirectionality)
  {
    ubidi_setReorderingMode();
    ubidi_setPara();
    if (v96 >= 1)
    {
      v25 = CROSLogForCategory(0);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v26 = "BiDi Visual->Logical transform failed in ubidi_setPara (base directionality prediction)";
LABEL_41:
        v27 = v25;
        v28 = 2;
        goto LABEL_42;
      }

LABEL_43:

      os_unfair_lock_unlock(&self->_lock);
      v40 = 0;
      goto LABEL_44;
    }

    ParaLevel = ubidi_getParaLevel();
    if ([v19 length])
    {
      LODWORD(orderedSet) = ParaLevel;
      v83 = v16;
      v30 = 0;
      v31 = 0;
      ParaLevel = 0;
      do
      {
        v32 = [v19 characterAtIndex:v30];
        if ((v32 - 1611) >= 8u)
        {
          v33 = vcgt_u16(0x9002B000900030, vadd_s16(vdup_n_s16(v32), 0x19004B0F790F8B0));
          if ((vmaxv_u16(v33) & 1) != 0 || (v32 & 0xFF00) == 0x600)
          {
            ++ParaLevel;
          }

          else
          {
            v33.i16[0] = v32;
            v33.i16[1] = v32 & 0xFFDF;
            v34 = vdup_lane_s16(v33, 0);
            v34.i16[1] = v32 & 0xFFDF;
            v31 += vmaxv_u16(vcgt_u16(0x158001F001A0017, vadd_s16(v34, 0xFF08FF28FFBFFF40))) & 1;
          }
        }

        ++v30;
      }

      while ([v19 length] > v30);
      v35 = v31;
      v36 = ParaLevel;
      v16 = v83;
      LOBYTE(ParaLevel) = orderedSet;
      if (!mode)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v36 = 0.0;
      v35 = 0.0;
      if (!mode)
      {
LABEL_29:
        if ((ParaLevel & ((v35 / v36) < 0.5)) != 0)
        {
          v24 = 1;
        }

        else
        {
          v24 = -1;
        }

        goto LABEL_33;
      }
    }

    if (mode != 1)
    {
LABEL_32:
      v24 = -1;
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  if (baseDirectionality != 1)
  {
    goto LABEL_15;
  }

  v24 = 0;
LABEL_33:
  if (direction)
  {
    *direction = v24;
  }

  ubidi_setReorderingMode();
  ubidi_setPara();
  if (v96 >= 1)
  {
    v25 = CROSLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "BiDi Visual->Logical transform failed in ubidi_setPara";
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  v37 = [v19 length];
  MEMORY[0x1EEE9AC00](v37);
  v39 = v81 - v38;
  ubidi_getVisualMap();
  if (v96 >= 1)
  {
    v25 = CROSLogForCategory(0);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v26 = "BiDi Visual->Logical transform failed in ubidi_getVisualMap";
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if ([v19 length])
  {
    v42 = 0;
    do
    {
      v43 = [v19 length] + ~*&v39[4 * v42];
      v44 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v19, "length") + ~*&v39[4 * v42]}];
      [array2 addObject:v44];

      if ([v19 characterAtIndex:v43] == 32)
      {
        v45 = orderedSet;
        v46 = [orderedSet copy];
        [array addObject:v46];

        [v45 removeAllObjects];
      }

      else
      {
        v47 = [MEMORY[0x1E696AD98] numberWithInteger:v43];
        [orderedSet addObject:v47];
      }

      ++v42;
    }

    while ([v19 length] > v42);
  }

  if ([orderedSet count] || !objc_msgSend(v19, "length"))
  {
    v48 = [orderedSet mutableCopy];
    [array addObject:v48];
  }

  string = [MEMORY[0x1E696AD60] string];
  _crBiDiMirroredCharacterSet = [MEMORY[0x1E696AB08] _crBiDiMirroredCharacterSet];
  if (![v19 length])
  {
LABEL_60:
    v82 = _crBiDiMirroredCharacterSet;
    [string appendString:v19];
LABEL_61:
    os_unfair_lock_unlock(&self->_lock);
    string2 = [MEMORY[0x1E696AD60] string];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v53 = array2;
    v54 = [v53 countByEnumeratingWithState:&v92 objects:v97 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v93;
      do
      {
        for (i = 0; i != v55; ++i)
        {
          if (*v93 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v58 = [string substringWithRange:{objc_msgSend(*(*(&v92 + 1) + 8 * i), "unsignedIntegerValue"), 1}];
          [string2 appendString:v58];
        }

        v55 = [v53 countByEnumeratingWithState:&v92 objects:v97 count:16];
      }

      while (v55);
    }

    if (directionalityCopy == 2)
    {
      _crStringByReversingComposedCharacterSequences2 = string;
    }

    else
    {
      v83 = v16;
      if ([v53 count])
      {
        v60 = 0;
        do
        {
          v61 = MEMORY[0x1E696AD98];
          v62 = [v53 count];
          v63 = [v53 objectAtIndexedSubscript:v60];
          v64 = [v61 numberWithUnsignedInteger:{v62 + ~objc_msgSend(v63, "unsignedIntegerValue")}];
          [v53 setObject:v64 atIndexedSubscript:v60];

          ++v60;
        }

        while (v60 < [v53 count]);
      }

      _crStringByReversingComposedCharacterSequences2 = [string _crStringByReversingComposedCharacterSequences];
      v16 = v83;
    }

    v65 = permutationCopy;
    _crBiDiMirroredCharacterSet = v82;
    if (permutationCopy)
    {
      v66 = v53;
      *v65 = v53;
    }

    v67 = indexesCopy;
    if (indexesCopy)
    {
      *v67 = [array copy];
    }

    v68 = stringCopy;
    if (stringCopy)
    {
      *v68 = [_crStringByReversingComposedCharacterSequences2 copy];
    }

    v40 = [string2 copy];

    goto LABEL_89;
  }

  v51 = 0;
  while (![_crBiDiMirroredCharacterSet characterIsMember:{objc_msgSend(v19, "characterAtIndex:", v51)}])
  {
    if (++v51 >= [v19 length])
    {
      goto LABEL_60;
    }
  }

  v69 = [_crStringByReversingComposedCharacterSequences length];
  v81[1] = v81;
  *&v70 = MEMORY[0x1EEE9AC00](v69).n128_u64[0];
  v72 = v81 - v71;
  v73 = [v19 length];
  MEMORY[0x1EEE9AC00](v73);
  v75 = v81 - v74;
  ubidi_writeReordered();
  if (v96 >= 1)
  {
    v76 = CROSLogForCategory(0);
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v77 = "BiDi Visual->Logical transform failed in ubidi_writeReordered";
LABEL_87:
      _os_log_impl(&dword_1B40D2000, v76, OS_LOG_TYPE_ERROR, v77, buf, 2u);
      goto LABEL_88;
    }

    goto LABEL_88;
  }

  ubidi_getLogicalMap();
  if (v96 <= 0)
  {
    v82 = _crBiDiMirroredCharacterSet;
    v83 = v16;
    if ([v19 length])
    {
      v78 = 0;
      v79 = v75 - 4;
      do
      {
        *buf = *&v72[2 * *&v79[4 * [v19 length]]];
        v80 = [MEMORY[0x1E696AEC0] stringWithCharacters:buf length:1];
        [string appendString:v80];

        ++v78;
        v79 -= 4;
      }

      while (v78 < [v19 length]);
    }

    v16 = v83;
    goto LABEL_61;
  }

  v76 = CROSLogForCategory(0);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v77 = "BiDi Visual->Logical transform failed in ubidi_getLogicalMap";
    goto LABEL_87;
  }

LABEL_88:

  os_unfair_lock_unlock(&self->_lock);
  v40 = 0;
LABEL_89:

LABEL_44:

  return v40;
}

+ (unint64_t)layoutDirectionForVisualString:(id)string visualDirectionality:(unint64_t)directionality logicalBaseDirection:(int)direction
{
  v15 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v8 = stringCopy;
  if (!direction)
  {
    goto LABEL_9;
  }

  if (direction != 255)
  {
    if (direction == 1)
    {
LABEL_4:
      v9 = 2;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (directionality != 1)
  {
    if (directionality != 2)
    {
LABEL_10:
      v10 = CROSLogForCategory(0);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v13 = 134217984;
        directionCopy = direction;
        _os_log_impl(&dword_1B40D2000, v10, OS_LOG_TYPE_FAULT, "Unsupported base direction %lu for layout direction determination.", &v13, 0xCu);
      }

      v9 = 0;
      goto LABEL_18;
    }

    if (objc_opt_respondsToSelector() & 1) != 0 && ([v8 _isNaturallyRTL])
    {
      goto LABEL_4;
    }

LABEL_9:
    v9 = 1;
    goto LABEL_18;
  }

  _crStringByReversingExtendedGraphemeClusters = [stringCopy _crStringByReversingExtendedGraphemeClusters];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([_crStringByReversingExtendedGraphemeClusters _isNaturallyRTL])
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

LABEL_18:
  return v9;
}

@end