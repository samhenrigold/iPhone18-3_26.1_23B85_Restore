@interface ISGraphicSymbolDescriptor
+ (id)descriptorFromGraphicIconConfiguration:(id)configuration;
+ (id)descriptorFromGraphicSymbolRecipe:(id)recipe;
- (BOOL)placeholder;
- (id)description;
@end

@implementation ISGraphicSymbolDescriptor

+ (id)descriptorFromGraphicSymbolRecipe:(id)recipe
{
  recipeCopy = recipe;
  v4 = objc_alloc_init(ISGraphicSymbolDescriptor);
  v5 = _ISDefaultLog(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ISGraphicSymbolDescriptor *)recipeCopy descriptorFromGraphicSymbolRecipe:v5];
  }

  if (!recipeCopy)
  {
    v7 = _ISDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v18 = 0;
      _os_log_impl(&dword_1A77B8000, v7, OS_LOG_TYPE_INFO, "No graphic variant recipe was provided", v18, 2u);
    }
  }

  v8 = [(ISIconConfigurationMarkupParser *)[ISGraphicIconConfigurationParser alloc] initWithConfigurationDictionary:recipeCopy];
  aliasedConfigurationDictionary = [(ISGraphicIconConfigurationParser *)v8 aliasedConfigurationDictionary];
  v10 = aliasedConfigurationDictionary;
  if (aliasedConfigurationDictionary)
  {
    v11 = _ISDefaultLog(aliasedConfigurationDictionary);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:];
    }

    v12 = [(ISIconConfigurationMarkupParser *)[ISGraphicIconConfigurationParser alloc] initWithConfigurationDictionary:v10];
    v8 = v12;
  }

  symbolName = [(ISGraphicIconConfigurationParser *)v8 symbolName];
  [(IFGraphicSymbolDescriptor *)v4 setName:symbolName];

  symbolColors = [(ISGraphicIconConfigurationParser *)v8 symbolColors];
  [(IFGraphicSymbolDescriptor *)v4 setSymbolColors:symbolColors];

  enclosureColors = [(ISGraphicIconConfigurationParser *)v8 enclosureColors];
  [(IFGraphicSymbolDescriptor *)v4 setEnclosureColors:enclosureColors];

  v16 = _ISDefaultLog([(IFGraphicSymbolDescriptor *)v4 setRenderingMode:[(ISGraphicIconConfigurationParser *)v8 renderingMode]]);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ISGraphicSymbolDescriptor descriptorFromGraphicSymbolRecipe:v4];
  }

  return v4;
}

+ (id)descriptorFromGraphicIconConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = objc_alloc_init(ISGraphicSymbolDescriptor);
  symbolColors = [configurationCopy symbolColors];
  [(IFGraphicSymbolDescriptor *)v4 setSymbolColors:symbolColors];

  enclosureColors = [configurationCopy enclosureColors];
  [(IFGraphicSymbolDescriptor *)v4 setEnclosureColors:enclosureColors];

  v7 = _ISDefaultLog(-[IFGraphicSymbolDescriptor setRenderingMode:](v4, "setRenderingMode:", [configurationCopy renderingMode]));
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ISGraphicSymbolDescriptor descriptorFromGraphicIconConfiguration:v4];
  }

  return v4;
}

- (BOOL)placeholder
{
  symbolColors = [(IFGraphicSymbolDescriptor *)self symbolColors];
  if (symbolColors)
  {
    symbolColors2 = [(IFGraphicSymbolDescriptor *)self symbolColors];
    if ([symbolColors2 count])
    {
      LOBYTE(v6) = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  enclosureColors = [(IFGraphicSymbolDescriptor *)self enclosureColors];
  if (enclosureColors)
  {
    enclosureColors2 = [(IFGraphicSymbolDescriptor *)self enclosureColors];
    if ([enclosureColors2 count] || -[IFGraphicSymbolDescriptor renderingMode](self, "renderingMode"))
    {
      LOBYTE(v6) = 1;
LABEL_8:

      goto LABEL_11;
    }
  }

  else if ([(IFGraphicSymbolDescriptor *)self renderingMode])
  {
    LOBYTE(v6) = 1;
    goto LABEL_11;
  }

  name = [(IFGraphicSymbolDescriptor *)self name];
  if (name)
  {
    v10 = name;
    name2 = [(IFGraphicSymbolDescriptor *)self name];
    v6 = [name2 isEqual:0x1F1A4EC20] ^ 1;

    if (enclosureColors)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
    if (enclosureColors)
    {
      goto LABEL_8;
    }
  }

LABEL_11:
  if (symbolColors)
  {
    goto LABEL_12;
  }

LABEL_13:

  return v6 ^ 1;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  name = [(IFGraphicSymbolDescriptor *)self name];
  [(IFGraphicSymbolDescriptor *)self size];
  v7 = v6;
  [(IFGraphicSymbolDescriptor *)self size];
  v9 = v8;
  [(IFSymbolImageDescriptor *)self scale];
  v11 = [v3 stringWithFormat:@"<%@ %p> %@ - (%0.2f, %0.2f)@%.0fx", v4, self, name, v7, v9, v10];

  return v11;
}

+ (void)descriptorFromGraphicSymbolRecipe:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_DEBUG, "Attempting to make descriptor for %@", &v2, 0xCu);
}

+ (void)descriptorFromGraphicSymbolRecipe:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_4();
  v3 = v0;
  _os_log_debug_impl(&dword_1A77B8000, v1, OS_LOG_TYPE_DEBUG, "Updated recipe found for %@ => %@", v2, 0x16u);
}

+ (void)descriptorFromGraphicSymbolRecipe:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1A77B8000, v2, v3, "Created %@ from graphic variant dictionary %@", v4, v5, v6, v7);
}

+ (void)descriptorFromGraphicIconConfiguration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 description];
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_1A77B8000, v2, v3, "Created %@ from graphic icon configuration %@", v4, v5, v6, v7);
}

@end