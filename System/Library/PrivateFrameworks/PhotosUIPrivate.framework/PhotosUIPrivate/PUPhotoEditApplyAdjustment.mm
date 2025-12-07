@interface PUPhotoEditApplyAdjustment
@end

@implementation PUPhotoEditApplyAdjustment

uint64_t (**__PUPhotoEditApplyAdjustment_block_invoke(uint64_t a1))(void)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEqual:@"auto"])
  {
    v2 = *(a1 + 40);
    v3 = *(a1 + 64);

    return [v2 ppt_applyAutoenhance:v3];
  }

  else if ([&unk_1F2B7CCC8 containsObject:*(a1 + 32)])
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);

    return [v5 ppt_scrollSliderNamed:v6 value:v7 completion:v8];
  }

  else
  {
    v9 = *(a1 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 32);
      v11 = 138412290;
      v12 = v10;
      _os_log_impl(&dword_1B36F3000, v9, OS_LOG_TYPE_DEFAULT, "PUPhotoEditApplyAdjustment: Unknown Adjustment Type: %@", &v11, 0xCu);
    }

    result = *(a1 + 64);
    if (result)
    {
      return result[2]();
    }
  }

  return result;
}

@end