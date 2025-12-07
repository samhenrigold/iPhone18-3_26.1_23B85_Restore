@interface WFOperation
- (id)description;
- (void)finish;
- (void)start;
@end

@implementation WFOperation

- (void)start
{
  self->_finished = 0;
  self->_start = [MEMORY[0x277CBEAA8] date];

  MEMORY[0x2821F96F8]();
}

- (void)finish
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = WFLogForCategory(0);
  v4 = OSLogForWFLogLevel(4uLL);
  v5 = v4;
  if (WFCurrentLogLevel(v4, v6) >= 4 && v3)
  {
    v7 = v3;
    if (os_log_type_enabled(v7, v5))
    {
      name = [(WFOperation *)self name];
      [(NSDate *)self->_start timeIntervalSinceNow];
      v10 = 138412546;
      v11 = name;
      v12 = 2048;
      v13 = v9;
      _os_log_impl(&dword_273ECD000, v7, v5, "%@ finished.  Elapsed: %f seconds.", &v10, 0x16u);
    }
  }

  [(WFOperation *)self willChangeValueForKey:@"isFinished"];
  self->_finished = 1;
  [(WFOperation *)self didChangeValueForKey:@"isFinished"];
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ : %p", v5, self];

  name = [(WFOperation *)self name];

  if (name)
  {
    name2 = [(WFOperation *)self name];
    [v6 appendFormat:@" %@", name2];
  }

  start = self->_start;
  if (start)
  {
    [(NSDate *)start timeIntervalSinceNow];
    [v6 appendFormat:@" started: %f seconds", -v10];
  }

  [v6 appendString:@">"];

  return v6;
}

@end