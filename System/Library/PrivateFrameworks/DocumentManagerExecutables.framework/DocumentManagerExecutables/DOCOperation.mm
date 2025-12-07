@interface DOCOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (void)cancel;
- (void)setExecuting:(BOOL)executing;
- (void)setFinished:(BOOL)finished;
- (void)start;
@end

@implementation DOCOperation

- (void)start
{
  selfCopy = self;
  DOCOperation.start()();
}

- (BOOL)isFinished
{
  selfCopy = self;
  DOCOperation.isFinished.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)setFinished:(BOOL)finished
{
  selfCopy = self;
  DOCOperation.isFinished.setter(finished);
}

- (BOOL)isExecuting
{
  selfCopy = self;
  DOCOperation.isExecuting.getter();
  v4 = v3;

  return v4 & 1;
}

- (void)setExecuting:(BOOL)executing
{
  selfCopy = self;
  DOCOperation.isExecuting.setter(executing);
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCOperation();
  v2 = v3.receiver;
  [(DOCOperation *)&v3 cancel];
  DOCOperation._finishIfCanceled()();
}

@end