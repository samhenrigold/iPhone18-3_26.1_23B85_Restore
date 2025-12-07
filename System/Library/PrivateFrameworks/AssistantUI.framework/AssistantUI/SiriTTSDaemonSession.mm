@interface SiriTTSDaemonSession
@end

@implementation SiriTTSDaemonSession

uint64_t __51__SiriTTSDaemonSession_AFAddition__afSharedSession__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277D613F8]);
  v1 = afSharedSession_session;
  afSharedSession_session = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end