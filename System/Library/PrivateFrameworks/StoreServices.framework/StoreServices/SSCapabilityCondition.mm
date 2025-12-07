@interface SSCapabilityCondition
- (BOOL)evaluateWithContext:(id)context;
@end

@implementation SSCapabilityCondition

- (BOOL)evaluateWithContext:(id)context
{
  operator = self->super._operator;
  if (operator)
  {
    if (operator != 1)
    {
      v6 = 0;
LABEL_12:
      v14 = 0;
      goto LABEL_17;
    }

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:v5];
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v7 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v6, self->super._value, 0}];
  v9 = SSVMobileInstallationFramework(v7, v8);
  v10 = SSVWeakLinkedSymbolForString("MobileInstallationCheckCapabilitiesMatch", v9);
  if (v10 && (v11 = v10(v7, 0)) != 0)
  {
    v12 = v11;
    Value = CFDictionaryGetValue(v11, @"CapabilitiesMatch");
    if (Value)
    {
      v14 = CFBooleanGetValue(Value) != 0;
    }

    else
    {
      v14 = 0;
    }

    CFRelease(v12);
  }

  else
  {
    v14 = 0;
  }

LABEL_17:
  return v14;
}

@end