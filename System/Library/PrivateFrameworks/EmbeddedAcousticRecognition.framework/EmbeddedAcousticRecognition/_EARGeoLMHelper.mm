@interface _EARGeoLMHelper
- (_EARGeoLMHelper)initWithConfiguration:(id)configuration;
- (_EARGeoLMHelper)initWithLocale:(id)locale config:(id)config;
- (id)regionIdForLatitude:(double)latitude longitude:(double)longitude;
- (id)regionIdForLocale:(id)locale latitude:(double)latitude longitude:(double)longitude;
@end

@implementation _EARGeoLMHelper

- (_EARGeoLMHelper)initWithLocale:(id)locale config:(id)config
{
  v26 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  configCopy = config;
  v9 = [(__CFString *)localeCopy length];
  if (v9 && (v9 = [(__CFString *)configCopy length]) != 0)
  {
    v21.receiver = self;
    v21.super_class = _EARGeoLMHelper;
    v10 = [(_EARGeoLMHelper *)&v21 init];
    v11 = v10;
    if (v10)
    {
      v12 = EarGeoLMHelperLogger(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [_EARGeoLMHelper initWithLocale:config:];
      }

      objc_storeStrong(&v11->_locale, locale);
      v20 = &unk_1F2D13EE8;
      operator new();
    }

    self = 0;
    selfCopy = self;
  }

  else
  {
    v13 = EarGeoLMHelperLogger(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = [(__CFString *)localeCopy length];
      v17 = [(__CFString *)configCopy length];
      v18 = @"(none)";
      if (v16)
      {
        v19 = localeCopy;
      }

      else
      {
        v19 = @"(none)";
      }

      if (v17)
      {
        v18 = configCopy;
      }

      __p = 138412546;
      __p_4 = v19;
      v24 = 2112;
      v25 = v18;
      _os_log_error_impl(&dword_1B501D000, v13, OS_LOG_TYPE_ERROR, "GeoLM: Cannot initialize helper with locale: %@, config: %@", &__p, 0x16u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)regionIdForLocale:(id)locale latitude:(double)latitude longitude:(double)longitude
{
  v19 = *MEMORY[0x1E69E9840];
  localeCopy = locale;
  v9 = [(__CFString *)localeCopy isEqualToString:self->_locale];
  if (v9)
  {
    quasar::Location::makeAny(v9, latitude, longitude);
    __p[5] = v10;
    __p[6] = v11;
    memset(buf, 0, sizeof(buf));
    std::string::basic_string[abi:ne200100]<0>(__p, "");
    quasar::Geography::getGeoContext();
  }

  v12 = EarGeoLMHelperLogger(v9);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    locale = self->_locale;
    v15 = [(__CFString *)localeCopy length];
    v16 = @"(none)";
    if (v15)
    {
      v16 = localeCopy;
    }

    *buf = 138412546;
    *&buf[4] = locale;
    *&buf[12] = 2112;
    *&buf[14] = v16;
    _os_log_error_impl(&dword_1B501D000, v12, OS_LOG_TYPE_ERROR, "GeoLM: This helper only supports %@, not %@", buf, 0x16u);
  }

  return 0;
}

- (_EARGeoLMHelper)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (configurationCopy && [configurationCopy length])
  {
    v10.receiver = self;
    v10.super_class = _EARGeoLMHelper;
    v6 = [(_EARGeoLMHelper *)&v10 init];
    if (v6)
    {
      v7 = EarGeoLMHelperLogger(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        [_EARGeoLMHelper initWithConfiguration:];
      }

      operator new();
    }

    self = 0;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)regionIdForLatitude:(double)latitude longitude:(double)longitude
{
  v13 = *MEMORY[0x1E69E9840];
  quasar::Location::makeAny(self, latitude, longitude);
  v11 = v4;
  v12 = v5;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  quasar::Geography::getGeoContext();
}

- (void)initWithLocale:config:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1B501D000, v1, OS_LOG_TYPE_DEBUG, "GeoLM: Initializing helper with locale: %@, config: %@", v2, 0x16u);
}

- (void)initWithLocale:config:.cold.3()
{
  OUTLINED_FUNCTION_0_2();
  (*(v0 + 16))();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_3(&dword_1B501D000, v1, v2, "GeoLM: Internal C++ exception: %s", v3, v4, v5, v6);
}

- (void)regionIdForLocale:latitude:longitude:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_1B501D000, v0, OS_LOG_TYPE_DEBUG, "GeoLM: Resolved regionId: %@", v1, 0xCu);
}

- (void)initWithConfiguration:.cold.1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_1B501D000, v0, OS_LOG_TYPE_DEBUG, "GeoLM: geo config path: %@", v1, 0xCu);
}

- (void)regionIdForLatitude:(os_log_t)log longitude:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B501D000, log, OS_LOG_TYPE_DEBUG, "GeoLM: selected regionId: %@", buf, 0xCu);
}

@end