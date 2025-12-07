@interface CTServerConnectionRegisterForEvent
@end

@implementation CTServerConnectionRegisterForEvent

void ___CTServerConnectionRegisterForEvent_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = _Block_copy(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 48);
  v7 = (a1 + 56);
  v5 = std::__tree<std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>,std::__map_value_compare<int,std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>,std::less<int>,true>,std::allocator<std::__value_type<int,dispatch::block<void({block_pointer})(__CFDictionary const*)>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(v4 + 32, (a1 + 56), &std::piecewise_construct, &v7);
  v6 = v5[5];
  v5[5] = v3;
  if (v6)
  {
    _Block_release(v6);
  }
}

@end