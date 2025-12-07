@interface CAPropertyAnimation(AVTExtensions)
- (uint64_t)avt_isUseless;
@end

@implementation CAPropertyAnimation(AVTExtensions)

- (uint64_t)avt_isUseless
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    keyPath = [selfCopy keyPath];
    lastPathComponent = [keyPath lastPathComponent];
    v5 = [lastPathComponent isEqualToString:?];

    if (v5)
    {
      values = [selfCopy values];
      v7 = [values countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = v7;
        v9 = MEMORY[0];
        v73 = vdupq_n_s32(0x3A83126Fu);
LABEL_5:
        v10 = 0;
        while (1)
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(values);
          }

          [*(8 * v10) avt_float3Value];
          v12 = vcgtq_f32(vabsq_f32(v11), v73);
          v12.i32[3] = v12.i32[2];
          if ((vmaxvq_u32(v12) & 0x80000000) != 0)
          {
            break;
          }

          if (v8 == ++v10)
          {
            v8 = [values countByEnumeratingWithState:? objects:? count:?];
            v13 = 1;
            if (v8)
            {
              goto LABEL_5;
            }

            goto LABEL_73;
          }
        }

LABEL_71:
        v13 = 0;
LABEL_73:

LABEL_74:
        return v13;
      }

      goto LABEL_72;
    }

    keyPath2 = [selfCopy keyPath];
    lastPathComponent2 = [keyPath2 lastPathComponent];
    v16 = [lastPathComponent2 isEqualToString:?];

    if (v16)
    {
      values = [selfCopy values];
      v17 = [values countByEnumeratingWithState:? objects:? count:?];
      if (v17)
      {
        v18 = v17;
        v19 = MEMORY[0];
        v74 = vdupq_n_s32(0x3A83126Fu);
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(values);
          }

          [*(8 * v20) avt_float3Value];
          v22 = vcgtq_f32(vabsq_f32(v21), v74);
          v22.i32[3] = v22.i32[2];
          if ((vmaxvq_u32(v22) & 0x80000000) != 0)
          {
            goto LABEL_71;
          }

          if (v18 == ++v20)
          {
            v18 = [values countByEnumeratingWithState:? objects:? count:?];
            v13 = 1;
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_73;
          }
        }
      }

LABEL_72:
      v13 = 1;
      goto LABEL_73;
    }

    keyPath3 = [selfCopy keyPath];
    lastPathComponent3 = [keyPath3 lastPathComponent];
    if ([lastPathComponent3 hasSuffix:?])
    {
      goto LABEL_26;
    }

    keyPath4 = [selfCopy keyPath];
    lastPathComponent4 = [keyPath4 lastPathComponent];
    if ([lastPathComponent4 hasSuffix:?])
    {

LABEL_26:
      goto LABEL_27;
    }

    keyPath5 = [selfCopy keyPath];
    lastPathComponent5 = [keyPath5 lastPathComponent];
    v34 = [lastPathComponent5 hasSuffix:?];

    if (v34)
    {
LABEL_27:
      values = [selfCopy values];
      v27 = [values countByEnumeratingWithState:? objects:? count:?];
      if (v27)
      {
        v28 = v27;
        v29 = MEMORY[0];
LABEL_29:
        v30 = 0;
        while (1)
        {
          if (MEMORY[0] != v29)
          {
            objc_enumerationMutation(values);
          }

          [*(8 * v30) floatValue];
          if (fabsf(v31) > 0.001)
          {
            goto LABEL_71;
          }

          if (v28 == ++v30)
          {
            v28 = [values countByEnumeratingWithState:? objects:? count:?];
            v13 = 1;
            if (v28)
            {
              goto LABEL_29;
            }

            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    keyPath6 = [selfCopy keyPath];
    lastPathComponent6 = [keyPath6 lastPathComponent];
    v37 = [lastPathComponent6 isEqualToString:?];

    if (v37)
    {
      values = [selfCopy values];
      v38 = [values countByEnumeratingWithState:? objects:? count:?];
      if (v38)
      {
        v39 = v38;
        v40 = MEMORY[0];
        __asm { FMOV            V1.4S, #-1.0 }

        v72 = vdupq_n_s32(0x3A83126Fu);
        v75 = _Q1;
LABEL_40:
        v46 = 0;
        while (1)
        {
          if (MEMORY[0] != v40)
          {
            objc_enumerationMutation(values);
          }

          [*(8 * v46) avt_float3Value];
          v48 = vcgtq_f32(vabsq_f32(vaddq_f32(v47, v75)), v72);
          v48.i32[3] = v48.i32[2];
          if ((vmaxvq_u32(v48) & 0x80000000) != 0)
          {
            goto LABEL_71;
          }

          if (v39 == ++v46)
          {
            v39 = [values countByEnumeratingWithState:? objects:? count:?];
            v13 = 1;
            if (v39)
            {
              goto LABEL_40;
            }

            goto LABEL_73;
          }
        }
      }

      goto LABEL_72;
    }

    keyPath7 = [selfCopy keyPath];
    lastPathComponent7 = [keyPath7 lastPathComponent];
    if (([lastPathComponent7 hasSuffix:?] & 1) == 0)
    {
      keyPath8 = [selfCopy keyPath];
      lastPathComponent8 = [keyPath8 lastPathComponent];
      if (([lastPathComponent8 hasSuffix:?] & 1) == 0)
      {
        keyPath9 = [selfCopy keyPath];
        lastPathComponent9 = [keyPath9 lastPathComponent];
        v60 = [lastPathComponent9 hasSuffix:?];

        if ((v60 & 1) == 0)
        {
          keyPath10 = [selfCopy keyPath];
          lastPathComponent10 = [keyPath10 lastPathComponent];
          v63 = [lastPathComponent10 isEqualToString:?];

          if (!v63)
          {
            v13 = 0;
            goto LABEL_74;
          }

          values = [selfCopy values];
          v64 = [values countByEnumeratingWithState:? objects:? count:?];
          if (v64)
          {
            v65 = v64;
            v66 = MEMORY[0];
LABEL_64:
            v67 = 0;
            while (1)
            {
              if (MEMORY[0] != v66)
              {
                objc_enumerationMutation(values);
              }

              [*(8 * v67) avt_float4Value];
              v69 = vmulq_f32(v68, v68);
              v70 = atan2f(sqrtf(v69.f32[2] + vaddv_f32(*v69.f32)), v68.f32[3]);
              if (fabsf(v70 + v70) > 0.001)
              {
                goto LABEL_71;
              }

              if (v65 == ++v67)
              {
                v65 = [values countByEnumeratingWithState:? objects:? count:?];
                v13 = 1;
                if (v65)
                {
                  goto LABEL_64;
                }

                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

        goto LABEL_51;
      }
    }

LABEL_51:
    values = [selfCopy values];
    v53 = [values countByEnumeratingWithState:? objects:? count:?];
    if (v53)
    {
      v54 = v53;
      v55 = MEMORY[0];
LABEL_53:
      v56 = 0;
      while (1)
      {
        if (MEMORY[0] != v55)
        {
          objc_enumerationMutation(values);
        }

        [*(8 * v56) floatValue];
        if (fabsf(v57 + -1.0) > 0.001)
        {
          goto LABEL_71;
        }

        if (v54 == ++v56)
        {
          v54 = [values countByEnumeratingWithState:? objects:? count:?];
          v13 = 1;
          if (v54)
          {
            goto LABEL_53;
          }

          goto LABEL_73;
        }
      }
    }

    goto LABEL_72;
  }

  return 0;
}

@end