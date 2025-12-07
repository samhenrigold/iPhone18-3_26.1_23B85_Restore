@interface CECRouterInterface
- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error;
- (BOOL)setAddressMask:(unsigned __int16)mask error:(id *)error;
- (BOOL)setSnoopingMode:(BOOL)mode error:(id *)error;
- (CECRouterInterface)initWithRouter:(id)router;
- (void)dealloc;
- (void)receivedFrame:(CECFrame *)frame;
@end

@implementation CECRouterInterface

- (CECRouterInterface)initWithRouter:(id)router
{
  v8.receiver = self;
  v8.super_class = CECRouterInterface;
  v4 = [(CECInterface *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_router = router;
    routerCopy = router;
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CECRouterInterface;
  [(CoreRCInterface *)&v3 dealloc];
}

- (BOOL)setAddressMask:(unsigned __int16)mask error:(id *)error
{
  maskCopy = mask;
  v9.receiver = self;
  v9.super_class = CECRouterInterface;
  v7 = [CECInterface setAddressMask:sel_setAddressMask_error_ error:?];
  if (v7)
  {
    LOBYTE(v7) = [(CECRouter *)self->_router interface:self setAddressMask:maskCopy error:error];
  }

  return v7;
}

- (BOOL)setSnoopingMode:(BOOL)mode error:(id *)error
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = CECRouterInterface;
  v7 = [CECInterface setSnoopingMode:sel_setSnoopingMode_error_ error:?];
  if (v7)
  {
    LOBYTE(v7) = [(CECRouter *)self->_router interface:self setSnoopingMode:modeCopy error:error];
  }

  return v7;
}

- (BOOL)sendFrame:(CECFrame *)frame withRetryCount:(unsigned __int8)count error:(id *)error
{
  v9 = *MEMORY[0x277D85DE8];
  router = self->_router;
  v8 = *frame;
  return [(CECRouter *)router interface:self sendFrame:&v8 withRetryCount:count error:error];
}

- (void)receivedFrame:(CECFrame *)frame
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(CECInterface *)self snoopingMode])
  {
    goto LABEL_5;
  }

  if (~frame->blocks[0] & 0xF) == 0 || (([(CECInterface *)self addressMask]>> (frame->blocks[0] & 0xF)))
  {
    v6 = *frame->blocks;
    v7 = *(frame + 4);
    [(CECInterface *)self setLastReceivedFrame:&v6];
LABEL_5:
    delegate = [(CECInterface *)self delegate];
    v6 = *frame->blocks;
    v7 = *(frame + 4);
    [(CECInterfaceDelegate *)delegate interface:self receivedFrame:&v6];
    return;
  }

  if (gLogCategory_CoreRCInterface <= 90 && (gLogCategory_CoreRCInterface != -1 || _LogCategory_Initialize()))
  {
    [CECRouterInterface receivedFrame:frame];
  }
}

@end