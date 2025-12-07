@interface CFPrefsMessageSenderIsSandboxed
@end

@implementation CFPrefsMessageSenderIsSandboxed

uint64_t ___CFPrefsMessageSenderIsSandboxed_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 52);
  if (v3 == 255)
  {
    result = _CFPrefsSandboxCheckForMessage(*(result + 32), 0, *MEMORY[0x1E69E9BD0]);
    v5 = result != 0;
    *(a2 + 52) = result != 0;
  }

  else
  {
    v5 = v3 == 1;
  }

  *(*(*(v2 + 40) + 8) + 24) = v5;
  return result;
}

uint64_t ___CFPrefsMessageSenderIsSandboxed_block_invoke_0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(a2 + 52);
  if (v3 == 255)
  {
    result = _CFPrefsSandboxCheckForMessage_0(*(result + 32), 0, *MEMORY[0x1E69E9BD0]);
    v5 = result != 0;
    *(a2 + 52) = result != 0;
  }

  else
  {
    v5 = v3 == 1;
  }

  *(*(*(v2 + 40) + 8) + 24) = v5;
  return result;
}

@end