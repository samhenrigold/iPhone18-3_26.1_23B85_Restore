@interface SSNFCAssertion
- (SSNFCAssertion)init;
- (void)_assert;
- (void)_deassert;
- (void)dealloc;
@end

@implementation SSNFCAssertion

- (SSNFCAssertion)init
{
  v5.receiver = self;
  v5.super_class = SSNFCAssertion;
  v2 = [(SSNFCAssertion *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(SSNFCAssertion *)v2 _assert];
  }

  return v3;
}

- (void)dealloc
{
  [(SSNFCAssertion *)self _deassert];
  v3.receiver = self;
  v3.super_class = SSNFCAssertion;
  [(SSNFCAssertion *)&v3 dealloc];
}

- (void)_assert
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138543618;
  selfCopy = self;
  v4 = 2080;
  v5 = "[SSNFCAssertion _assert]";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]assertion fail with error: %{public}@ @%s", &v2, 0x16u);
}

- (void)_deassert
{
  v10 = *MEMORY[0x277D85DE8];
  if (self->_preventConnectionHandoverAssertion)
  {
    sharedHardwareManagerWithNoUI = [getNFHardwareManagerClass() sharedHardwareManagerWithNoUI];
    v4 = [sharedHardwareManagerWithNoUI releaseAssertion:self->_preventConnectionHandoverAssertion];

    preventConnectionHandoverAssertion = self->_preventConnectionHandoverAssertion;
    self->_preventConnectionHandoverAssertion = 0;

    v7 = _TSLogDomain(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315138;
      v9 = "[SSNFCAssertion _deassert]";
      _os_log_impl(&dword_262AA8000, v7, OS_LOG_TYPE_DEFAULT, "assertion released @%s", &v8, 0xCu);
    }
  }
}

@end