id GSSDefaultLog(uint64_t a1)
{
  if (GSSDefaultLog_onceToken != -1)
  {
    GSSDefaultLog_cold_1();
  }

  v2 = GSSDefaultLog_sLog;

  return v2;
}

id _setUpTemporaryDirectory()
{
  bzero(v5, 0x400uLL);
  [@"com.apple.SharePlay.GroupSessionService" UTF8String];
  v0 = _set_user_dir_suffix();
  if (!v0 || (v0 = confstr(65537, v5, 0x400uLL)) == 0 || mkdir(v5, 0x1C0u) && (v0 = __error(), *v0 != 17))
  {
    v3 = GSSDefaultLog(v0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _setUpTemporaryDirectory_cold_2();
    }

LABEL_13:

    exit(1);
  }

  bzero(v4, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v5, v4))
  {
    v3 = GSSDefaultLog(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _setUpTemporaryDirectory_cold_1();
    }

    goto LABEL_13;
  }

  v1 = [NSString stringWithUTF8String:v4];

  return v1;
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

int main(int argc, const char **argv, const char **envp)
{
  _setUpSandbox();
  flags = [objc_allocWithZone(CPFeatureFlags) init];
  v3 = [objc_opt_self() serviceListener];
  listener.super.isa = v3;
  type metadata accessor for BackgroundSessionManagerHost();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000017B0;
  *(v4 + 32) = v3;
  v5 = flags;
  v6 = v3;
  v7 = v5;
  host = BackgroundSessionManagerHost.__allocating_init(listeners:featureFlags:)();
  BackgroundSessionManagerHost.resume()();
  exit(1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void _setUpTemporaryDirectory_cold_1()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v1, v2, "failed to resolve temporary directory (%d): %s", v3, v4, v5, v6);
}

void _setUpTemporaryDirectory_cold_2()
{
  __error();
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&_mh_execute_header, v1, v2, "failed to initialize temporary directory (%d): %s", v3, v4, v5, v6);
}