@interface GEORequestCounterTicketBase
- (void)dealloc;
@end

@implementation GEORequestCounterTicketBase

- (void)dealloc
{
  if (self->_nwActivity && !self->_nwActivityCompleted)
  {
    nw_activity_complete_with_reason();
    self->_nwActivityCompleted = 1;
  }

  parentTask = self->_parentTask;
  if (parentTask && self->_result == 254)
  {
    [(GEORequestCounterTicketBase *)parentTask _subTask:self completed:255 error:0 started:0 finished:0 xmitBytes:0 recvBytes:0.0 usedInterfaces:0.0];
    v4 = self->_parentTask;
    self->_parentTask = 0;
  }

  v5.receiver = self;
  v5.super_class = GEORequestCounterTicketBase;
  [(GEORequestCounterTicketBase *)&v5 dealloc];
}

@end