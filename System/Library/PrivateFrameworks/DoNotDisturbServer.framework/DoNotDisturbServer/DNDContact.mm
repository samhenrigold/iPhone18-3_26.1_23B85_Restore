@interface DNDContact
@end

@implementation DNDContact

void __35__DNDContact_Contacts__keysToFetch__block_invoke()
{
  v6[8] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CBCFC0];
  v6[0] = *MEMORY[0x277CBD018];
  v6[1] = v0;
  v1 = *MEMORY[0x277CBD000];
  v6[2] = *MEMORY[0x277CBD098];
  v6[3] = v1;
  v2 = *MEMORY[0x277CBCFF8];
  v6[4] = *MEMORY[0x277CBD058];
  v6[5] = v2;
  v3 = *MEMORY[0x277CBD090];
  v6[6] = *MEMORY[0x277CBD078];
  v6[7] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:8];
  v5 = keysToFetch_keys;
  keysToFetch_keys = v4;
}

@end