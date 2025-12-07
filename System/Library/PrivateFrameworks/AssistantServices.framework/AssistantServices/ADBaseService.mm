@interface ADBaseService
- (ADBaseService)init;
- (SEL)_selectorForCommandClass:(id)class andDomain:(id)domain;
- (id)commandsForDomain:(id)domain;
- (void)_registerCommandClass:(id)class forDomain:(id)domain withSelector:(SEL)selector forRegistry:(id)registry;
- (void)_unhandledCommand:(id)command forDomain:(id)domain completion:(id)completion;
- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply;
@end

@implementation ADBaseService

- (void)_unhandledCommand:(id)command forDomain:(id)domain completion:(id)completion
{
  if (completion)
  {
    completionCopy = completion;
    v7 = [[SACommandFailed alloc] initWithReason:@"Command not supported"];
    (*(completion + 2))(completionCopy, v7, 0);
  }
}

- (void)handleCommand:(id)command forDomain:(id)domain executionContext:(id)context reply:(id)reply
{
  domainCopy = domain;
  replyCopy = reply;
  commandCopy = command;
  encodedClassName = [commandCopy encodedClassName];
  v12 = [(ADBaseService *)self _selectorForCommandClass:encodedClassName andDomain:domainCopy];

  if (v12)
  {
    [self v12];
  }

  else
  {
    [(ADBaseService *)self _unhandledCommand:commandCopy forDomain:domainCopy completion:replyCopy];
  }
}

- (id)commandsForDomain:(id)domain
{
  v3 = objc_msgSend_objectForKey_(self->_commandRegistry, a2, domain);
  allKeys = [v3 allKeys];

  return allKeys;
}

- (SEL)_selectorForCommandClass:(id)class andDomain:(id)domain
{
  classCopy = class;
  v6 = objc_msgSend_objectForKey_(self->_commandRegistry);
  v7 = v6;
  if (v6)
  {
    v8 = objc_msgSend_objectForKey_(v6);
    v9 = v8;
    if (v8)
    {
      pointerValue = [v8 pointerValue];
    }

    else
    {
      pointerValue = 0;
    }
  }

  else
  {
    pointerValue = 0;
  }

  return pointerValue;
}

- (void)_registerCommandClass:(id)class forDomain:(id)domain withSelector:(SEL)selector forRegistry:(id)registry
{
  domainCopy = domain;
  registryCopy = registry;
  if (registryCopy)
  {
    classCopy = class;
    v11 = objc_msgSend_objectForKey_(registryCopy);
    if (!v11)
    {
      v11 = +[NSMutableDictionary dictionary];
      [registryCopy setObject:v11 forKey:domainCopy];
    }

    v12 = [NSValue valueWithPointer:selector];
    [v11 setObject:v12 forKey:classCopy];
  }
}

- (ADBaseService)init
{
  v9.receiver = self;
  v9.super_class = ADBaseService;
  v2 = [(ADBaseService *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    [(ADService *)v2 setIdentifier:v4];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(ADBaseService *)v2 _registerCommandHandlersWithRegistry:v5];
    v6 = [v5 copy];
    commandRegistry = v2->_commandRegistry;
    v2->_commandRegistry = v6;
  }

  return v2;
}

@end