@interface GEOComposedString
+ (id)localizationProvider;
- (id)defaultOptions;
@end

@implementation GEOComposedString

+ (id)localizationProvider
{
  v2 = _localizationProvider;
  if (_localizationProvider)
  {
    v3 = _localizationProvider;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "GEOComposedString.localizationProvider must be set before building any strings that require localization.", buf, 2u);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      *v5 = 0;
      _os_log_fault_impl(&dword_18660C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: _localizationProvider != nil", v5, 2u);
    }
  }

  return v2;
}

- (id)defaultOptions
{
  v3 = objc_alloc_init(GEOComposedStringOptions);
  v4 = [(NSArray *)self->_arguments _geo_map:&__block_literal_global_11_60348];
  [(GEOComposedStringOptions *)v3 setArguments:v4];

  return v3;
}

@end