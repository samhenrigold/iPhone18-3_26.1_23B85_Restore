@interface UIBuiltinTraitStorageDescription
@end

@implementation UIBuiltinTraitStorageDescription

void *___UIBuiltinTraitStorageDescription_block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  result = *a2;
  if (*a2 != a4)
  {
    v8 = _UIBuiltinTraitStorageDescriptionForIntegerTraitName(result, a3);
    v9 = *(a1 + 32);
    v10 = MEMORY[0x1E696AEC0];
    v11 = _UIDescriptionForTraitName(a3);
    if (v8)
    {
      v12 = [v10 stringWithFormat:@"%@ = %@", v11, v8];
    }

    else
    {
      v12 = [v10 stringWithFormat:@"%@ = %ld", v11, *a2];
    }

    return [v9 addObject:v12];
  }

  return result;
}

void *___UIBuiltinTraitStorageDescription_block_invoke_3(void *result, void *a2, void *a3, double a4)
{
  if (*a2 != a4)
  {
    v5 = result[4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %g", _UIDescriptionForTraitName(a3), *a2];

    return [v5 addObject:v6];
  }

  return result;
}

void *___UIBuiltinTraitStorageDescription_block_invoke_2(void *result, void *a2, void *a3, uint64_t a4)
{
  if (*a2 != a4)
  {
    v5 = result[4];
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ = %ld", _UIDescriptionForTraitName(a3), *a2];

    return [v5 addObject:v6];
  }

  return result;
}

@end