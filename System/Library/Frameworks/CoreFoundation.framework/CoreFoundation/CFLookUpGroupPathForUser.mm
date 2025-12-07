@interface CFLookUpGroupPathForUser
@end

@implementation CFLookUpGroupPathForUser

uint64_t ___CFLookUpGroupPathForUser_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(*(a1 + 32) + 8) + 24);
  identifier = container_get_identifier();
  path = container_get_path();
  xpc_dictionary_set_string(v2, identifier, path);
  return 1;
}

@end