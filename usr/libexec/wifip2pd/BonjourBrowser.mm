@interface BonjourBrowser
- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser)init;
- (void)subscribeLostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address;
- (void)subscribeReceivedDiscoveryResult:(id)result;
- (void)subscribeTerminatedWithReason:(int64_t)reason;
@end

@implementation BonjourBrowser

- (void)subscribeTerminatedWithReason:(int64_t)reason
{
  selfCopy = self;
  sub_100084414();
}

- (void)subscribeReceivedDiscoveryResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  sub_100079590(resultCopy);
}

- (void)subscribeLostDiscoveryResultForPublishID:(unsigned __int8)d address:(id)address
{
  dCopy = d;
  addressCopy = address;
  selfCopy = self;
  sub_100079A0C(dCopy, addressCopy);
}

- (_TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end