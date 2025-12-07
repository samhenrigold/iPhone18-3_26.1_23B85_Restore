@interface ComputeCustomSlotsUsage
@end

@implementation ComputeCustomSlotsUsage

void ____ComputeCustomSlotsUsage_block_invoke(uint64_t a1, const void *a2, CFTypeRef cf)
{
  v3 = cf;
  v6 = CFGetTypeID(cf);
  TypeID = C3DValueGetTypeID(v6, v7);
  if (v6 == TypeID)
  {
    if (C3DValueGetTypeSemantic(v3, v9) != 1)
    {
      return;
    }

    Bytes = C3DValueGetBytes(v3, v10);
    v3 = *Bytes;
  }

  else
  {
    Bytes = C3DEffectSlotGetTypeID(TypeID, v9);
    if (v6 != Bytes)
    {
      return;
    }
  }

  if (v3)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 162);
    if (v14 == 8)
    {
      v15 = scn_default_log(Bytes, v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ____ComputeCustomSlotsUsage_block_invoke_cold_1(v15);
      }
    }

    else
    {
      *(v13 + 8 * v14 + 216) = a2;
      CFRetain(a2);
      UVSet = C3DEffectSlotGetUVSet(v3, v16);
      if (UVSet == -1)
      {
        v18 = 0;
      }

      else
      {
        v18 = UVSet;
      }

      HasInterpolationModesPerKey = C3DKeyframeControllerHasInterpolationModesPerKey(v3);
      *(*(a1 + 32) + v14 + 203) = __UpdateHashCodeUVSetForEffectProperty(*(a1 + 32), v18, HasInterpolationModesPerKey, v14 + 27);
      ++*(*(a1 + 32) + 162);
    }
  }
}

void ____ComputeCustomSlotsUsage_block_invoke_cold_1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 8;
  _os_log_error_impl(&dword_21BEF7000, log, OS_LOG_TYPE_ERROR, "Error: Too many uniform custom samplers given (Max is %d)", v1, 8u);
}

@end