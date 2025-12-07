@interface LACWeakBox
- (LACWeakBox)initWithReceiver:(id)receiver;
- (id)forwardingTargetForSelector:(SEL)selector;
- (id)receiver;
- (void)dealloc;
@end

@implementation LACWeakBox

- (LACWeakBox)initWithReceiver:(id)receiver
{
  receiverCopy = receiver;
  v10.receiver = self;
  v10.super_class = LACWeakBox;
  v5 = [(LACWeakBox *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_receiver, receiverCopy);
    v8 = LACLogDefault(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [(LACWeakBox *)v6 initWithReceiver:receiverCopy, v8];
    }
  }

  return v6;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B0233000, v2, v3, "Deallocated: %@, receiver: %@", v4, v5, v6, v7);
}

- (id)forwardingTargetForSelector:(SEL)selector
{
  v4 = LACLogDefault(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [LACWeakBox forwardingTargetForSelector:?];
  }

  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (id)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

- (void)initWithReceiver:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1B0233000, log, OS_LOG_TYPE_DEBUG, "Allocated: %@, receiver: %@", &v3, 0x16u);
}

- (void)forwardingTargetForSelector:(uint64_t)a1 .cold.1(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  OUTLINED_FUNCTION_0_7();
  OUTLINED_FUNCTION_1_5(&dword_1B0233000, v2, v3, "%@, forwarding to: %@", v4, v5, v6, v7);
}

@end