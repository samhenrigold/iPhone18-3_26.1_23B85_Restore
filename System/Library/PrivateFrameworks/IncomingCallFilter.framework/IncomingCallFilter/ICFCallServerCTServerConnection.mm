@interface ICFCallServerCTServerConnection
@end

@implementation ICFCallServerCTServerConnection

uint64_t (*__ICFCallServerCTServerConnection_block_invoke())(void, void, void, void)
{
  result = MEMORY[0x259C24230]("_CTServerConnectionCreateWithIdentifier", @"CoreTelephony");
  ICFCallServerCTServerConnection___CTServerConnectionCreateWithIdentifier = result;
  return result;
}

@end