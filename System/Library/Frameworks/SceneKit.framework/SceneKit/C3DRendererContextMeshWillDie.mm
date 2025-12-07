@interface C3DRendererContextMeshWillDie
@end

@implementation C3DRendererContextMeshWillDie

void ___C3DRendererContextMeshWillDie_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 0x40000000;
  v8[2] = ___C3DRendererContextMeshWillDie_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_27;
  v8[4] = v7;
  v9 = *(a1 + 40);
  C3DRendererContextExecuteOnContext(v7, v8);
  C3DRendererContextReleaseContext(*(a1 + 32));
  CFRelease(*(a1 + 32));
}

uint64_t ___C3DRendererContextMeshWillDie_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  result = (*(v1 + 1944))(1, &v3, v1);
  --*(v1 + 428);
  return result;
}

@end