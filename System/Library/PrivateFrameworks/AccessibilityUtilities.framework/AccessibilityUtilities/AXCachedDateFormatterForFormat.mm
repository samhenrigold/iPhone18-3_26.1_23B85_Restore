@interface AXCachedDateFormatterForFormat
@end

@implementation AXCachedDateFormatterForFormat

uint64_t ___AXCachedDateFormatterForFormat_block_invoke()
{
  v0 = dispatch_queue_create("AXDateFormatter", 0);
  v1 = _AXCachedDateFormatterForFormat_AXDateFormatterQueue;
  _AXCachedDateFormatterForFormat_AXDateFormatterQueue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void ___AXCachedDateFormatterForFormat_block_invoke_2(uint64_t a1)
{
  if (_block_invoke_twiceToken != -1)
  {
    ___AXCachedDateFormatterForFormat_block_invoke_2_cold_1();
  }

  v2 = [_block_invoke_DateFormatters objectForKey:*(a1 + 32)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    v8 = MEMORY[0x1E696AB78];
    v9 = *(a1 + 32);
    v10 = [MEMORY[0x1E695DF58] autoupdatingCurrentLocale];
    v11 = [v8 dateFormatFromTemplate:v9 options:0 locale:v10];

    [*(*(*(a1 + 40) + 8) + 40) setDateFormat:v11];
    [_block_invoke_DateFormatters setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
  }
}

uint64_t ___AXCachedDateFormatterForFormat_block_invoke_3()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _block_invoke_DateFormatters;
  _block_invoke_DateFormatters = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end