@interface AFSynchronousClientLite
- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion;
@end

@implementation AFSynchronousClientLite

- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion
{
  wayCopy = way;
  requestCopy = request;
  completionCopy = completion;
  handlerCopy = handler;
  commandCopy = command;
  v15 = dispatch_group_create();
  dispatch_group_enter(v15);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __97__AFSynchronousClientLite__handleCommand_afterCurrentRequest_isOneWay_commandHandler_completion___block_invoke;
  v19[3] = &unk_1E7345A40;
  v20 = v15;
  v21 = completionCopy;
  v18.receiver = self;
  v18.super_class = AFSynchronousClientLite;
  v16 = v15;
  v17 = completionCopy;
  [(AFClientLite *)&v18 _handleCommand:commandCopy afterCurrentRequest:requestCopy isOneWay:wayCopy commandHandler:handlerCopy completion:v19];

  dispatch_group_wait(v16, 0xFFFFFFFFFFFFFFFFLL);
}

void __97__AFSynchronousClientLite__handleCommand_afterCurrentRequest_isOneWay_commandHandler_completion___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  dispatch_group_leave(v2);
}

@end