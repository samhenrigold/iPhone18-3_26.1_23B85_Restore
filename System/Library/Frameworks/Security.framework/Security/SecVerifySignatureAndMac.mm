@interface SecVerifySignatureAndMac
@end

@implementation SecVerifySignatureAndMac

__n128 __SecVerifySignatureAndMac_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6[2] = __SecVerifySignatureAndMac_block_invoke_2;
  v6[3] = &unk_1E70E11B0;
  v11 = *(a1 + 64);
  v8 = a2;
  v9 = a3;
  v10 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __PerformWithBufferAndClear_block_invoke;
  v12[3] = &unk_1E70E46A8;
  v12[4] = v6;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  __PerformWithBufferAndClear_block_invoke(v12, 0x20uLL, v13);
  return result;
}

@end