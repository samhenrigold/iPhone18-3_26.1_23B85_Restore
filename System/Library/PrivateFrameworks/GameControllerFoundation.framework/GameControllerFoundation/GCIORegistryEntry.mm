@interface GCIORegistryEntry
- (BOOL)setProperty:(id)property forKey:(id)key;
- (GCIORegistryEntry)initWithPort:(unsigned int)port error:(id *)error;
- (NSString)debugDescription;
- (NSString)description;
- (NSString)name;
- (id)propertyForKey:(id)key;
- (id)propertyForKey:(id)key inPlane:(const char *)plane options:(unsigned int)options;
- (id)redactedDescription;
@end

@implementation GCIORegistryEntry

- (GCIORegistryEntry)initWithPort:(unsigned int)port error:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v13.receiver = self;
  v13.super_class = GCIORegistryEntry;
  v5 = [(GCIOObject *)&v13 initWithPort:*&port error:?];
  port = [(GCIOObject *)v5 port];
  RegistryEntryID = IORegistryEntryGetRegistryEntryID(port, &v5->_registryEntryID);
  if (RegistryEntryID || !v5->_registryEntryID)
  {
    if (error)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A5A0];
      v11 = RegistryEntryID;
      v14 = *MEMORY[0x1E696A580];
      v15[0] = @"Did not return a valid registry entry ID.";
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      *error = [v9 errorWithDomain:v10 code:v11 userInfo:v12];

      error = 0;
    }
  }

  else
  {
    error = v5;
  }

  return error;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = [v3 stringWithFormat:@"<Kernel/%@ registryEntryID='%#010llx'>", className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v5;
}

- (id)redactedDescription
{
  v3 = MEMORY[0x1E696AEC0];
  className = [(GCIOObject *)self className];
  v5 = [v3 stringWithFormat:@"<Kernel/%@ registryEntryID='%#010llx'>", className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  className = [(GCIOObject *)self className];
  v7 = [v3 stringWithFormat:@"<%@ %p Kernel/%@ registryEntryID='%#010llx'>", v5, self, className, -[GCIORegistryEntry registryEntryID](self, "registryEntryID")];

  return v7;
}

- (id)propertyForKey:(id)key inPlane:(const char *)plane options:(unsigned int)options
{
  keyCopy = key;
  port = [(GCIOObject *)self port];
  v10 = IORegistryEntrySearchCFProperty(port, plane, keyCopy, *MEMORY[0x1E695E480], options);

  return v10;
}

- (id)propertyForKey:(id)key
{
  keyCopy = key;
  port = [(GCIOObject *)self port];
  CFProperty = IORegistryEntryCreateCFProperty(port, keyCopy, *MEMORY[0x1E695E480], 0);

  return CFProperty;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  keyCopy = key;
  propertyCopy = property;
  port = [(GCIOObject *)self port];
  v9 = IORegistryEntrySetCFProperty(port, keyCopy, propertyCopy);

  if (v9)
  {
    [(GCIORegistryEntry *)self setProperty:keyCopy forKey:v9];
  }

  return v9 == 0;
}

- (NSString)name
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  port = [(GCIOObject *)self port];
  if (MEMORY[0x1D38AAC10](port, v5))
  {
    v3 = 0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithCString:v5 encoding:4];
  }

  return v3;
}

- (void)setProperty:(int)a3 forKey:.cold.1(uint64_t a1, uint64_t a2, int a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = _gc_log_iokit(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = 138412802;
    v8 = a1;
    v9 = 2114;
    v10 = a2;
    v11 = 1024;
    v12 = a3;
    _os_log_error_impl(&dword_1D2C3B000, v6, OS_LOG_TYPE_ERROR, "%@ Error setting property '%{public}@': %{mach.errno}d", &v7, 0x1Cu);
  }
}

@end