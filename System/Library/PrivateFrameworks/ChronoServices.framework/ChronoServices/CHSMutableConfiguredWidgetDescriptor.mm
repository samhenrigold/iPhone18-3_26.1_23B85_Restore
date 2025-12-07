@interface CHSMutableConfiguredWidgetDescriptor
- (id)copyWithZone:(_NSZone *)zone;
- (void)setSupportedRenderSchemes:(id)schemes;
- (void)setSupportedRenderingModes:(unint64_t)modes;
@end

@implementation CHSMutableConfiguredWidgetDescriptor

- (void)setSupportedRenderingModes:(unint64_t)modes
{
  modesCopy = modes;
  v10 = objc_opt_new();
  if (modesCopy)
  {
    widget = [(CHSConfiguredWidgetDescriptor *)self widget];
    IsAccessory = CHSWidgetFamilyIsAccessory([widget family]);

    v7 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:1 backgroundViewPolicy:IsAccessory];
    [v10 addObject:v7];
  }

  if ((modesCopy & 4) != 0)
  {
    v8 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:4 backgroundViewPolicy:1];
    [v10 addObject:v8];
  }

  if ((modesCopy & 2) != 0)
  {
    v9 = [[CHSWidgetRenderScheme alloc] initWithRenderingModes:2 backgroundViewPolicy:1];
    [v10 addObject:v9];
  }

  [(CHSMutableConfiguredWidgetDescriptor *)self setSupportedRenderSchemes:v10];
}

- (void)setSupportedRenderSchemes:(id)schemes
{
  v19 = *MEMORY[0x1E69E9840];
  schemesCopy = schemes;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = schemesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        _compatibilityRenderSchemesFromDeprecatedRenderingModes = [v10 _compatibilityRenderSchemesFromDeprecatedRenderingModes];
        if ([_compatibilityRenderSchemesFromDeprecatedRenderingModes count])
        {
          [(NSArray *)array addObjectsFromArray:_compatibilityRenderSchemesFromDeprecatedRenderingModes];
        }

        else
        {
          v12 = [v10 copy];
          [(NSArray *)array addObject:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  supportedRenderSchemes = self->super._supportedRenderSchemes;
  self->super._supportedRenderSchemes = array;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CHSConfiguredWidgetDescriptor alloc];

  return [(CHSConfiguredWidgetDescriptor *)v4 _initWithDescriptor:self];
}

@end