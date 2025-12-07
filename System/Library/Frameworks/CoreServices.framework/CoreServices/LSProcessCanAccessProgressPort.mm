@interface LSProcessCanAccessProgressPort
@end

@implementation LSProcessCanAccessProgressPort

void ___LSProcessCanAccessProgressPort_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [__LSDefaultsGetSharedInstance(a1 a2)];
  v3 = _LSGetAuditTokenForSelf(v4, v2);
  _LSProcessCanAccessProgressPort_canAccessProgressPort = _LSCheckMachPortAccessForAuditToken(v3, v4);
}

@end