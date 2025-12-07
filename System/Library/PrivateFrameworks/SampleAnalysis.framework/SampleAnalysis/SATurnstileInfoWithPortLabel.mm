@interface SATurnstileInfoWithPortLabel
- (SATurnstileInfoWithPortLabel)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)info;
- (void)setPortDomain:(unint64_t)domain;
- (void)setPortFlags:(unint64_t)flags;
@end

@implementation SATurnstileInfoWithPortLabel

- (SATurnstileInfoWithPortLabel)initWithKCDataTurnstileInfo:(const stackshot_thread_turnstileinfo_v2 *)info
{
  v3 = *__error();
  v4 = _sa_logt();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1E0E2F000, v4, OS_LOG_TYPE_ERROR, "SATurnstileInfoWithPortLabel init with port info", v6, 2u);
  }

  *__error() = v3;
  _SASetCrashLogMessage(3451, "SATurnstileInfoWithPortLabel init with port info");
  result = _os_crash();
  __break(1u);
  return result;
}

- (void)setPortFlags:(unint64_t)flags
{
  v9 = *MEMORY[0x1E69E9840];
  if (flags >= 0x10000)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      flagsCopy = flags;
      _os_log_fault_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_FAULT, "port label flags 0x%llx is too large", &v7, 0xCu);
    }

    *__error() = v5;
  }

  self->_portFlags = flags;
}

- (void)setPortDomain:(unint64_t)domain
{
  v9 = *MEMORY[0x1E69E9840];
  if (domain >= 0x100)
  {
    v5 = *__error();
    v6 = _sa_logt();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = 134217984;
      domainCopy = domain;
      _os_log_fault_impl(&dword_1E0E2F000, v6, OS_LOG_TYPE_FAULT, "port label domain %llu is too large", &v7, 0xCu);
    }

    *__error() = v5;
  }

  self->_portDomain = domain;
}

@end