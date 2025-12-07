@interface AXCachedDateComponentsFormatter
@end

@implementation AXCachedDateComponentsFormatter

uint64_t ___AXCachedDateComponentsFormatter_block_invoke()
{
  v0 = dispatch_queue_create("AXDateComponentsFormatter", 0);
  v1 = _AXCachedDateComponentsFormatter_AXDateComponentsFormatterQueue;
  _AXCachedDateComponentsFormatter_AXDateComponentsFormatterQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void ___AXCachedDateComponentsFormatter_block_invoke_2(uint64_t a1)
{
  if (_block_invoke_2_twiceToken != -1)
  {
    ___AXCachedDateComponentsFormatter_block_invoke_2_cold_1();
  }

  v2 = _block_invoke_2_DateFormatters;
  v3 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    v7 = objc_opt_new();
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    [*(*(*(a1 + 32) + 8) + 40) setZeroFormattingBehavior:1];
    [*(*(*(a1 + 32) + 8) + 40) setUnitsStyle:4];
    if (*(a1 + 40))
    {
      v10 = 224;
    }

    else
    {
      v10 = 96;
    }

    [*(*(*(a1 + 32) + 8) + 40) setAllowedUnits:v10];
    v11 = *(*(*(a1 + 32) + 8) + 40);
    v12 = _block_invoke_2_DateFormatters;
    v13 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
    [v12 setObject:v11 forKeyedSubscript:v13];
  }
}

uint64_t ___AXCachedDateComponentsFormatter_block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _block_invoke_2_DateFormatters;
  _block_invoke_2_DateFormatters = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end