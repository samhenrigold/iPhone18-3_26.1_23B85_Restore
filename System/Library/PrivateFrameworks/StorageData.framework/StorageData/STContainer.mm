@interface STContainer
+ (STContainer)containerWithIdentifier:(id)identifier containerClass:(unint64_t)class personaUniqueString:(id)string;
+ (id)containersWithClass:(unint64_t)class personaUniqueString:(id)string;
- (STContainer)initWithLibsystemContainer:(container_object_s *)container;
- (void)dealloc;
@end

@implementation STContainer

- (STContainer)initWithLibsystemContainer:(container_object_s *)container
{
  v9.receiver = self;
  v9.super_class = STContainer;
  v3 = [(STContainer *)&v9 init];
  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:container_get_identifier()];
    identifier = v3->_identifier;
    v3->_identifier = v4;

    v3->_containerClass = container_get_class();
    v6 = [MEMORY[0x277CBEBC0] fileURLWithFileSystemRepresentation:container_get_path() isDirectory:1 relativeToURL:0];
    url = v3->_url;
    v3->_url = v6;

    v3->_container = container_copy_object();
  }

  return v3;
}

- (void)dealloc
{
  MEMORY[0x26D68EE10](self->_container, a2);
  v3.receiver = self;
  v3.super_class = STContainer;
  [(STContainer *)&v3 dealloc];
}

+ (id)containersWithClass:(unint64_t)class personaUniqueString:(id)string
{
  v4 = MEMORY[0x277CBEB18];
  stringCopy = string;
  array = [v4 array];
  container_query_create();
  container_query_set_class();
  container_query_set_include_other_owners();
  [stringCopy UTF8String];

  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  v10 = MEMORY[0x277D85DD0];
  v7 = array;
  v11 = v7;
  if ((container_query_iterate_results_sync() & 1) == 0)
  {

    v7 = 0;
  }

  container_query_free();
  v8 = [v7 copy];

  return v8;
}

uint64_t __55__STContainer_containersWithClass_personaUniqueString___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 40)) initWithLibsystemContainer:a2];
  if (v3)
  {
    [*(a1 + 32) addObject:v3];
  }

  return 1;
}

+ (STContainer)containerWithIdentifier:(id)identifier containerClass:(unint64_t)class personaUniqueString:(id)string
{
  stringCopy = string;
  identifierCopy = identifier;
  container_query_create();
  uTF8String = [identifierCopy UTF8String];

  v10 = xpc_string_create(uTF8String);
  container_query_set_identifiers();

  container_query_set_class();
  container_query_set_include_other_owners();
  [stringCopy UTF8String];

  container_query_set_persona_unique_string();
  container_query_operation_set_flags();
  single_result = container_query_get_single_result();
  if (single_result)
  {
    v12 = [[self alloc] initWithLibsystemContainer:single_result];
  }

  else
  {
    v12 = 0;
  }

  container_query_free();

  return v12;
}

@end