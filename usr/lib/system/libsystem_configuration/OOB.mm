@interface OOB
@end

@implementation OOB

BOOL __get_agent_uuid_if_OOB_data_required_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = 1;
  if (a3)
  {
    if (MEMORY[0x29C2B1550](a3, a2) == MEMORY[0x29EDCAA00])
    {
      *(*(*(a1 + 32) + 8) + 24) = xpc_dictionary_get_value(a3, "OutOfBandDataUUID");
      if (*(*(*(a1 + 32) + 8) + 24))
      {
        return 0;
      }
    }
  }

  return result;
}

@end