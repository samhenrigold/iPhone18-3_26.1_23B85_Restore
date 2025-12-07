@interface NSUserDefaults
@end

@implementation NSUserDefaults

uint64_t __67__NSUserDefaults_NSUserDefaults_TSUAdditions__tsu_registerDefaults__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = SFUBundle(a1, a2);
  v8 = [v2 URLForResource:@"Defaults" withExtension:@"plist"];

  if (v8)
  {
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:?];
    v5 = v4;
    if (v4 && [v4 count])
    {
      v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      [v6 registerDefaults:v5];
    }
  }

  return MEMORY[0x2821F9730](v3);
}

@end