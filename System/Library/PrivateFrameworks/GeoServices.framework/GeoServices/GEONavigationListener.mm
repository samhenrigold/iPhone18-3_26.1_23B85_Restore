@interface GEONavigationListener
- (void)requestGuidanceState;
- (void)requestRouteSummary;
- (void)requestTransitSummary;
@end

@implementation GEONavigationListener

- (void)requestRouteSummary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__GEONavigationListener_requestRouteSummary__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)requestTransitSummary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__GEONavigationListener_requestTransitSummary__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(queue, block);
}

void __46__GEONavigationListener_requestTransitSummary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2[1] remoteObjectProxy];
    [v3 requestTransitSummary];
  }

  else
  {

    [v2 _notifyWithTransitSummary:0];
  }
}

- (void)requestGuidanceState
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__GEONavigationListener_requestGuidanceState__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(queue, block);
}

void __44__GEONavigationListener_requestRouteSummary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2[1] remoteObjectProxy];
    [v3 requestRouteSummary];
  }

  else
  {

    [v2 _notifyWithRouteSummary:0];
  }
}

void __45__GEONavigationListener_requestGuidanceState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = [v2[1] remoteObjectProxy];
    [v3 requestGuidanceState];
  }

  else
  {

    [v2 _notifyWithGuidanceState:0];
  }
}

@end