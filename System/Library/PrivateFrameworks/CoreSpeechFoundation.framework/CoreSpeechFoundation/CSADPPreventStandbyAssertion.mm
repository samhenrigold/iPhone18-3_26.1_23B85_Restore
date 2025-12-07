@interface CSADPPreventStandbyAssertion
- (CSADPPreventStandbyAssertion)initWithName:(id)name clientQueue:(id)queue;
- (OS_dispatch_queue)clientQueue;
- (void)_setupADPAssertion:(id)assertion;
- (void)dealloc;
@end

@implementation CSADPPreventStandbyAssertion

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (self->_adpAssertion)
  {
    ADPAssertionDestroy();
    self->_adpAssertion = 0;
  }

  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[CSADPPreventStandbyAssertion dealloc]";
    _os_log_impl(&dword_1DDA4B000, v3, OS_LOG_TYPE_DEFAULT, "%s Destroyed ADP assertion for darwinOS", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = CSADPPreventStandbyAssertion;
  [(CSADPPreventStandbyAssertion *)&v4 dealloc];
}

- (OS_dispatch_queue)clientQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_clientQueue);

  return WeakRetained;
}

- (void)_setupADPAssertion:(id)assertion
{
  v13 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  if (self->_adpAssertion)
  {
    ADPAssertionDestroy();
    self->_adpAssertion = 0;
  }

  self->_adpAssertion = ADPAssertionCreateWithDispatchQueue();
  objc_initWeak(&location, self);
  objc_copyWeak(&v7, &location);
  v5 = assertionCopy;
  ADPAssertionSetCancelHandler();
  v6 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[CSADPPreventStandbyAssertion _setupADPAssertion:]";
    v11 = 2114;
    v12 = v5;
    _os_log_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_DEFAULT, "%s Taking ADP assertion %{public}@ for darwinOS", buf, 0x16u);
  }

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained clientQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke_2;
  v5[3] = &unk_1E865C970;
  v6 = *(a1 + 32);
  v7 = WeakRetained;
  v4 = WeakRetained;
  dispatch_async(v3, v5);
}

uint64_t __51__CSADPPreventStandbyAssertion__setupADPAssertion___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 136315394;
    v6 = "[CSADPPreventStandbyAssertion _setupADPAssertion:]_block_invoke_2";
    v7 = 2114;
    v8 = v3;
    _os_log_impl(&dword_1DDA4B000, v2, OS_LOG_TYPE_DEFAULT, "%s appledisplayplatformd is lost, reset ADP assertion for %{public}@", &v5, 0x16u);
  }

  return [*(a1 + 40) _setupADPAssertion:*(a1 + 32)];
}

- (CSADPPreventStandbyAssertion)initWithName:(id)name clientQueue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  if (+[CSUtils deviceRequirePreventStandbyAssertion])
  {
    v13.receiver = self;
    v13.super_class = CSADPPreventStandbyAssertion;
    v9 = [(CSADPPreventStandbyAssertion *)&v13 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_name, name);
      objc_storeWeak(p_isa + 3, queueCopy);
      [p_isa _setupADPAssertion:nameCopy];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

@end