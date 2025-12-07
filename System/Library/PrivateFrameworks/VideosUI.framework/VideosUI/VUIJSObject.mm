@interface VUIJSObject
- (VUIAppContext)appContext;
- (VUIJSObject)initWithAppContext:(id)context;
- (id)invokeMethod:(id)method withArguments:(id)arguments;
- (id)jsValueForProperty:(id)property;
- (void)setJSValue:(id)value forProperty:(id)property;
@end

@implementation VUIJSObject

- (VUIJSObject)initWithAppContext:(id)context
{
  contextCopy = context;
  v8.receiver = self;
  v8.super_class = VUIJSObject;
  v5 = [(VUIJSObject *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_appContext, contextCopy);
  }

  return v6;
}

- (void)setJSValue:(id)value forProperty:(id)property
{
  valueCopy = value;
  propertyCopy = property;
  v8 = +[VUIJSThreadUtils isVideosUICoreJSThread];
  if ((v8 & 1) == 0)
  {
    v9 = VUIDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject setJSValue:forProperty:];
    }
  }

  appContext = [(VUIJSObject *)self appContext];
  managedProperties = [(VUIJSObject *)self managedProperties];
  v12 = [managedProperties objectForKey:propertyCopy];

  if (v12)
  {
    jsContext = [appContext jsContext];
    virtualMachine = [jsContext virtualMachine];
    [virtualMachine removeManagedReference:v12 withOwner:self];

    managedProperties2 = [(VUIJSObject *)self managedProperties];
    [managedProperties2 removeObjectForKey:propertyCopy];
  }

  if (valueCopy)
  {
    managedProperties3 = [(VUIJSObject *)self managedProperties];

    if (!managedProperties3)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [(VUIJSObject *)self setManagedProperties:dictionary];
    }

    v18 = [MEMORY[0x1E696EB48] managedValueWithValue:valueCopy];
    jsContext2 = [appContext jsContext];
    virtualMachine2 = [jsContext2 virtualMachine];
    [virtualMachine2 addManagedReference:v18 withOwner:self];

    managedProperties4 = [(VUIJSObject *)self managedProperties];
    [managedProperties4 setObject:v18 forKey:propertyCopy];
  }
}

- (id)jsValueForProperty:(id)property
{
  propertyCopy = property;
  v5 = +[VUIJSThreadUtils isVideosUICoreJSThread];
  if ((v5 & 1) == 0)
  {
    v6 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject jsValueForProperty:];
    }
  }

  managedProperties = [(VUIJSObject *)self managedProperties];
  v8 = [managedProperties objectForKey:propertyCopy];
  value = [v8 value];

  return value;
}

- (id)invokeMethod:(id)method withArguments:(id)arguments
{
  methodCopy = method;
  argumentsCopy = arguments;
  v8 = +[VUIJSThreadUtils isVideosUICoreJSThread];
  if ((v8 & 1) == 0)
  {
    v9 = VUIDefaultLogObject(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [VUIJSObject invokeMethod:withArguments:];
    }
  }

  appContext = [(VUIJSObject *)self appContext];
  v11 = MEMORY[0x1E696EB58];
  jsContext = [appContext jsContext];
  v13 = [v11 valueWithObject:self inContext:jsContext];

  if ([v13 hasProperty:methodCopy])
  {
    v14 = [v13 invokeMethod:methodCopy withArguments:argumentsCopy];
  }

  else
  {
    v15 = MEMORY[0x1E696EB58];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"invokeMethod: failed - Method [%@] not defined in [%@]", methodCopy, objc_opt_class()];
    jsContext2 = [appContext jsContext];
    v14 = [v15 valueWithNewErrorFromMessage:v16 inContext:jsContext2];
  }

  return v14;
}

- (VUIAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

@end