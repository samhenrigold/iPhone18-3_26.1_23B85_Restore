@interface IDSAccount
@end

@implementation IDSAccount

void __47__IDSAccount_HMDAccounts__isSentinelIDSHandle___block_invoke()
{
  v8[2] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = objc_alloc(MEMORY[0x277D18A48]);
  v2 = [v1 initWithUnprefixedURI:*MEMORY[0x277D18AB8]];
  v8[0] = v2;
  v3 = objc_alloc(MEMORY[0x277D18A48]);
  v4 = [v3 initWithUnprefixedURI:*MEMORY[0x277D18AC0]];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v0 setWithArray:v5];
  v7 = isSentinelIDSHandle__sentinelURIs;
  isSentinelIDSHandle__sentinelURIs = v6;
}

@end