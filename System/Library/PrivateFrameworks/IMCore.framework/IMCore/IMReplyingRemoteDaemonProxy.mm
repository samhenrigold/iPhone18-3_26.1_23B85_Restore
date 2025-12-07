@interface IMReplyingRemoteDaemonProxy
- (IMDaemonController)daemonController;
- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)controller synchronousReplies:(BOOL)replies;
- (id)methodSignatureForSelector:(SEL)selector;
- (void)forwardInvocation:(id)invocation;
@end

@implementation IMReplyingRemoteDaemonProxy

- (IMReplyingRemoteDaemonProxy)initWithDaemonController:(id)controller synchronousReplies:(BOOL)replies
{
  if (self)
  {
    objc_storeWeak(&self->_daemonController, controller);
    self->_synchronousReplies = replies;
  }

  return self;
}

- (id)methodSignatureForSelector:(SEL)selector
{
  daemonController = [(IMReplyingRemoteDaemonProxy *)self daemonController];
  v5 = [daemonController methodSignatureForSelector:selector];

  return v5;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  daemonController = [(IMReplyingRemoteDaemonProxy *)self daemonController];
  synchronousReplies = [(IMReplyingRemoteDaemonProxy *)self synchronousReplies];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1A8359910;
  v8[3] = &unk_1E7810140;
  v9 = invocationCopy;
  selfCopy = self;
  v7 = invocationCopy;
  [daemonController sendQueryWithReply:synchronousReplies query:v8];
}

- (IMDaemonController)daemonController
{
  WeakRetained = objc_loadWeakRetained(&self->_daemonController);

  return WeakRetained;
}

@end