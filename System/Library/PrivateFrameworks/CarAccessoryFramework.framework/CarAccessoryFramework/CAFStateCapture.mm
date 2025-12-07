@interface CAFStateCapture
- (CAFStateCapture)initWithIdentifier:(id)identifier capture:(id)capture;
- (id)description;
- (os_state_data_s)stateCapture;
- (void)dealloc;
- (void)stateCapture;
@end

@implementation CAFStateCapture

- (CAFStateCapture)initWithIdentifier:(id)identifier capture:(id)capture
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  captureCopy = capture;
  v8 = CAFGeneralLogging(captureCopy);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);

  if (!v9)
  {
    v11 = CAFGeneralLogging(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v29 = 2080;
      v30 = "[CAFStateCapture initWithIdentifier:capture:]";
      _os_log_impl(&dword_231618000, v11, OS_LOG_TYPE_DEFAULT, "%@ %s disabled", buf, 0x16u);
    }
  }

  v26.receiver = self;
  v26.super_class = CAFStateCapture;
  v12 = [(CAFStateCapture *)&v26 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    identifier = v12->_identifier;
    v12->_identifier = v13;

    v15 = MEMORY[0x231933C60](captureCopy);
    capture = v12->_capture;
    v12->_capture = v15;

    v18 = CAFStateCaptureLogging(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [CAFStateCapture initWithIdentifier:capture:];
    }

    v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.caraccessoryframework.StateCapture-%@-%p", v12->_identifier, v12];
    uTF8String = [v19 UTF8String];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(uTF8String, v21);
    queue = v12->_queue;
    v12->_queue = v22;

    objc_initWeak(buf, v12);
    objc_copyWeak(&v25, buf);
    v12->_handler = os_state_add_handler();
    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  return v12;
}

uint64_t __46__CAFStateCapture_initWithIdentifier_capture___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = CAFStateCaptureLogging(WeakRetained);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __46__CAFStateCapture_initWithIdentifier_capture___block_invoke_cold_1();
  }

  if (WeakRetained && *(a2 + 16) == 3)
  {
    v5 = [WeakRetained stateCapture];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v2 = 2080;
  v3 = "[CAFStateCapture dealloc]";
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ %s", v1, 0x16u);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CAFStateCapture *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier=%@>", v4, self, identifier];

  return v6;
}

- (os_state_data_s)stateCapture
{
  capture = [(CAFStateCapture *)self capture];
  v4 = capture[2]();

  v17 = 0;
  v5 = MEMORY[0x231933890](v4, 0, &v17);
  v6 = v5;
  if (v17)
  {
    v7 = CAFStateCaptureLogging(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CAFStateCapture stateCapture];
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v8 = [v5 length];
  if (v8 >= 0x7D01)
  {
    v7 = CAFStateCaptureLogging(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CAFStateCapture *)self stateCapture];
    }

    goto LABEL_12;
  }

  v9 = [v6 length];
  v10 = v9;
  v11 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
  if (!v11)
  {
    v7 = CAFStateCaptureLogging(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CAFStateCapture stateCapture];
    }

    goto LABEL_12;
  }

  v12 = v11;
  v11->var0 = 3;
  __strlcpy_chk();
  v13 = objc_opt_class();
  class_getName(v13);
  __strlcpy_chk();
  v12->var1.var1 = v9;
  identifier = [(CAFStateCapture *)self identifier];
  [identifier UTF8String];
  __strlcpy_chk();

  v15 = memcpy(v12->var4, [v6 bytes], v10);
  v7 = CAFStateCaptureLogging(v15);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(CAFStateCapture *)self stateCapture];
  }

LABEL_13:

  return v12;
}

- (void)initWithIdentifier:capture:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v2 = 2080;
  v3 = "[CAFStateCapture initWithIdentifier:capture:]";
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ %s", v1, 0x16u);
}

void __46__CAFStateCapture_initWithIdentifier_capture___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_231618000, v0, OS_LOG_TYPE_DEBUG, "%@ got called os_state_add_handler", v1, 0xCu);
}

- (void)stateCapture
{
  v5 = *MEMORY[0x277D85DE8];
  [a2 length];
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(&dword_231618000, a3, OS_LOG_TYPE_ERROR, "%@ over data limit, length=%lu", v4, 0x16u);
}

@end