@interface HPSSiriLanguageSetting
- (id)languages;
@end

@implementation HPSSiriLanguageSetting

- (id)languages
{
  v5[1] = *MEMORY[0x277D85DE8];
  value = [(HPSSetting *)self value];
  v5[0] = value;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end