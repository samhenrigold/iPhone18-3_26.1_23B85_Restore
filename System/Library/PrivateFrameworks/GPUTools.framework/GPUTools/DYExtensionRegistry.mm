@interface DYExtensionRegistry
+ (id)sharedExtensionRegistry;
- (DYExtensionRegistry)init;
- (void)dealloc;
- (void)registerExtension:(id)extension;
@end

@implementation DYExtensionRegistry

+ (id)sharedExtensionRegistry
{
  if (sharedExtensionRegistry_registry_once != -1)
  {
    +[DYExtensionRegistry sharedExtensionRegistry];
  }

  return sharedExtensionRegistry_registry;
}

uint64_t __46__DYExtensionRegistry_sharedExtensionRegistry__block_invoke(uint64_t a1, uint64_t a2)
{
  result = objc_opt_new();
  sharedExtensionRegistry_registry = result;
  return result;
}

- (DYExtensionRegistry)init
{
  v4.receiver = self;
  v4.super_class = DYExtensionRegistry;
  v2 = [(DYExtensionRegistry *)&v4 init];
  if (v2)
  {
    v2->_slotsMap = objc_opt_new();
    v2->_identifiersMap = objc_opt_new();
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = DYExtensionRegistry;
  [(DYExtensionRegistry *)&v3 dealloc];
}

- (void)registerExtension:(id)extension
{
  v5 = -[NSMutableDictionary objectForKey:](self->_identifiersMap, "objectForKey:", [extension identifier]);
  if (v5)
  {
    DYLog(*MEMORY[0x277D0B240], "extension with identifier '%s' already registered:\n    current: %s\n    candidate: %s", [objc_msgSend(v5 "identifier")], objc_msgSend(objc_msgSend(v5, "description"), "UTF8String"), objc_msgSend(objc_msgSend(extension, "description"), "UTF8String"));
  }

  else
  {
    v6 = -[NSMutableDictionary objectForKey:](self->_slotsMap, "objectForKey:", [extension slot]);
    if (!v6)
    {
      v6 = objc_opt_new();
      -[NSMutableDictionary setObject:forKey:](self->_slotsMap, "setObject:forKey:", v6, [extension slot]);
    }

    [v6 addObject:extension];
    identifiersMap = self->_identifiersMap;
    identifier = [extension identifier];

    [(NSMutableDictionary *)identifiersMap setObject:extension forKey:identifier];
  }
}

@end