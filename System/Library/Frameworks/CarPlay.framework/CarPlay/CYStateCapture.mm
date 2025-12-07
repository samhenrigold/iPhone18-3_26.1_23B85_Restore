@interface CYStateCapture
- (CYStateCapture)initWithIdentifier:(id)identifier capture:(id)capture;
- (id)description;
- (os_state_data_s)stateCapture;
- (void)dealloc;
- (void)stateCapture;
@end

@implementation CYStateCapture

- (CYStateCapture)initWithIdentifier:(id)identifier capture:(id)capture
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  captureCopy = capture;
  v22.receiver = self;
  v22.super_class = CYStateCapture;
  v8 = [(CYStateCapture *)&v22 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = MEMORY[0x2383C2A40](captureCopy);
    capture = v8->_capture;
    v8->_capture = v11;

    v14 = CarPlayFrameworkStateCaptureLogging(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = v8;
      v25 = 2080;
      v26 = "[CYStateCapture initWithIdentifier:capture:]";
      _os_log_impl(&dword_236ED4000, v14, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
    }

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.caraccessoryframework.StateCapture-%@-%p", v8->_identifier, v8];
    uTF8String = [v15 UTF8String];
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create(uTF8String, v17);
    queue = v8->_queue;
    v8->_queue = v18;

    objc_initWeak(buf, v8);
    objc_copyWeak(&v21, buf);
    v8->_handler = os_state_add_handler();
    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }

  return v8;
}

uint64_t __45__CYStateCapture_initWithIdentifier_capture___block_invoke(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = CarPlayFrameworkStateCaptureLogging(WeakRetained);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = WeakRetained;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "%@ got called os_state_add_handler", &v7, 0xCu);
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
  v9 = *MEMORY[0x277D85DE8];
  v3 = CarPlayFrameworkStateCaptureLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy = self;
    v7 = 2080;
    v8 = "[CYStateCapture dealloc]";
    _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_DEFAULT, "%@ %s", buf, 0x16u);
  }

  if ([(CYStateCapture *)self handler])
  {
    [(CYStateCapture *)self handler];
    os_state_remove_handler();
  }

  v4.receiver = self;
  v4.super_class = CYStateCapture;
  [(CYStateCapture *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  identifier = [(CYStateCapture *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p identifier=%@>", v4, self, identifier];

  return v6;
}

- (os_state_data_s)stateCapture
{
  v23 = *MEMORY[0x277D85DE8];
  capture = [(CYStateCapture *)self capture];
  v4 = capture[2]();

  v18 = 0;
  v5 = MEMORY[0x2383C2580](v4, 0, &v18);
  v6 = v5;
  if (v18)
  {
    v7 = CarPlayFrameworkStateCaptureLogging(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
    }

LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  v8 = [v5 length];
  if (v8 >= 0x7D01)
  {
    v7 = CarPlayFrameworkStateCaptureLogging(v8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
    }

    goto LABEL_12;
  }

  v9 = [v6 length];
  v10 = v9;
  v11 = malloc_type_calloc(1uLL, v9 + 200, 0x1000040BEF03554uLL);
  if (!v11)
  {
    v7 = CarPlayFrameworkStateCaptureLogging(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(CYStateCapture *)self stateCapture];
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
  identifier = [(CYStateCapture *)self identifier];
  [identifier UTF8String];
  __strlcpy_chk();

  v15 = memcpy(v12->var4, [v6 bytes], v10);
  v7 = CarPlayFrameworkStateCaptureLogging(v15);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v6 length];
    *buf = 138412546;
    selfCopy = self;
    v21 = 2048;
    v22 = v16;
    _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "%@ captured state data.length=%lu", buf, 0x16u);
  }

LABEL_13:

  return v12;
}

- (void)stateCapture
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 138412546;
  selfCopy = self;
  v6 = 2048;
  v7 = [a2 length];
  _os_log_error_impl(&dword_236ED4000, a3, OS_LOG_TYPE_ERROR, "%@ over data limit, length=%lu", &v4, 0x16u);
}

@end