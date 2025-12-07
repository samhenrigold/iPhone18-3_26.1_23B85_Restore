@interface PKPaletteToolViewFactory
- (id)makePaletteToolViewForTool:(uint64_t)tool;
@end

@implementation PKPaletteToolViewFactory

- (id)makePaletteToolViewForTool:(uint64_t)tool
{
  v3 = a2;
  v4 = v3;
  if (tool)
  {
    if (!v3)
    {
      v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tool parameter can not be nil." userInfo:0];
      objc_exception_throw(v25);
    }

    v5 = [v3 ink];
    identifier = [v5 identifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      customConfigurationCopy = [v4 customConfigurationCopy];
    }

    else if ([v4 _isRulerTool])
    {
      v8 = @"com.apple.tool.ruler";

      customConfigurationCopy = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:v8];
      identifier = v8;
    }

    else
    {
      _configuration = [v4 _configuration];

      if (_configuration)
      {
        _configuration2 = [v4 _configuration];
        customConfigurationCopy = [_configuration2 copy];
      }

      else
      {
        _configuration2 = [v4 ink];
        identifier2 = [_configuration2 identifier];
        v12 = [v4 ink];
        v13 = objc_msgSend_version(v12);
        customConfigurationCopy = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:identifier2 inkVersion:v13];
      }
    }

    _toolPickerItemIdentifier = [v4 _toolPickerItemIdentifier];
    v15 = [v4 ink];
    variant = [v15 variant];
    v17 = [PKPaletteToolView toolViewWithToolIdentifier:identifier itemIdentifier:_toolPickerItemIdentifier variant:variant configuration:customConfigurationCopy];

    v18 = [v4 ink];
    properties = [v18 properties];
    [v17 setToolProperties:properties];

    v20 = [v4 ink];
    LODWORD(properties) = [v20 _isHandwritingInk];

    if (properties)
    {
      tool = [v17 tool];
      handwritingTool = [tool handwritingTool];
      localeIdentifier = [v4 localeIdentifier];
      [handwritingTool setLocaleIdentifier:localeIdentifier];
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end