@interface SidecarResponse
- (void)accept;
@end

@implementation SidecarResponse

- (void)accept
{
  v5[2] = *MEMORY[0x277D85DE8];
  if ((atomic_exchange(&self->_accepted, 1u) & 1) == 0)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:5];
    SidecarMessageSetType(v3, 2);
    uuid = [(SidecarRequest *)self uuid];
    v5[0] = 0;
    v5[1] = 0;
    [uuid getUUIDBytes:v5];
    SidecarMessageSetRequestID(v3, bswap32(v5[0]));

    [(SidecarRequest *)self _sendMessage:v3];
  }
}

@end