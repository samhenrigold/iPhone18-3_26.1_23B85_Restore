@interface TVRCMediaInfo
@end

@implementation TVRCMediaInfo

uint64_t __59__TVRCMediaInfo_TVRUIAdditions__tvrui_formattedReleaseDate__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCA968]);
  v1 = tvrui_formattedReleaseDate_formatter;
  tvrui_formattedReleaseDate_formatter = v0;

  [tvrui_formattedReleaseDate_formatter setDateStyle:2];
  v2 = tvrui_formattedReleaseDate_formatter;

  return [v2 setTimeStyle:0];
}

id *__55__TVRCMediaInfo_TVRUIAdditions__tvrui_formattedSummary__block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

@end