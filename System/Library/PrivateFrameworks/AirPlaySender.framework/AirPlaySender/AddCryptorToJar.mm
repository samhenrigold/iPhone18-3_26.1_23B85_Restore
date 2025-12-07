@interface AddCryptorToJar
@end

@implementation AddCryptorToJar

void __audioHoseManagerBuffered_AddCryptorToJar_block_invoke(uint64_t a1)
{
  if (!CFDictionaryContainsKey(*(*(a1 + 40) + 448), *(a1 + 48)) && (CMNotificationCenterGetDefaultLocalCenter(), *(*(*(a1 + 32) + 8) + 24) = FigNotificationCenterAddWeakListener(), v2 = *(*(*(a1 + 32) + 8) + 24), v2))
  {
    __audioHoseManagerBuffered_AddCryptorToJar_block_invoke_cold_1(v2);
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = *(*(a1 + 40) + 448);
    v5 = *(a1 + 64);

    CFDictionarySetValue(v4, v3, v5);
  }
}

@end