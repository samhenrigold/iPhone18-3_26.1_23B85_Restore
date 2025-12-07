@interface TPGilliganCompatibilityDelegate
- (Class)exporterClassForType:(id)type options:(id)options;
@end

@implementation TPGilliganCompatibilityDelegate

- (Class)exporterClassForType:(id)type options:(id)options
{
  typeCopy = type;
  optionsCopy = options;
  if (typeCopy && !objc_msgSend_caseInsensitiveCompare_(typeCopy, v6, v11, v12, v13, v14, *MEMORY[0x277D80818], v7, v8, v9))
  {
    v15 = objc_opt_class();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

@end