@interface EXExtensionRequest
- (EXExtensionRequest)init;
- (NSExtensionContext)context;
- (id)description;
- (void)applyActiveWebPageAlternativeIfNeededForExtension:(id)extension;
- (void)dealloc;
@end

@implementation EXExtensionRequest

- (void)dealloc
{
  [self->_assertion setInvalidationHandler:0];
  [self->_assertion invalidate];
  v3.receiver = self;
  v3.super_class = EXExtensionRequest;
  [(EXExtensionRequest *)&v3 dealloc];
}

- (EXExtensionRequest)init
{
  v6.receiver = self;
  v6.super_class = EXExtensionRequest;
  v2 = [(EXExtensionRequest *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    pkUUID = v2->_pkUUID;
    v2->_pkUUID = v3;
  }

  return v2;
}

- (NSExtensionContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

- (void)applyActiveWebPageAlternativeIfNeededForExtension:(id)extension
{
  extensionCopy = extension;
  v5 = objc_opt_class();
  inputItems = [(EXExtensionRequest *)self inputItems];
  LODWORD(v5) = [v5 _inputItemsMatchActiveWebPageAlternative:inputItems];

  if (v5)
  {
    v8 = _EXLegacyLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [EXExtensionRequest(NSExtensionActiveWebPageAlternative) applyActiveWebPageAlternativeIfNeededForExtension:v8];
    }

    infoDictionary = [extensionCopy infoDictionary];
    v10 = [infoDictionary _EX_dictionaryForKey:@"NSExtensionAttributes"];

    v11 = [v10 _EX_dictionaryForKey:@"NSExtensionAttributes"];
    v12 = [v11 objectForKeyedSubscript:@"NSExtensionActivationRule"];
    v13 = v12;
    if (v12)
    {
      v14 = _EXLegacyLog(v12);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [(EXExtensionRequest(NSExtensionActiveWebPageAlternative) *)self applyActiveWebPageAlternativeIfNeededForExtension:v13, v14];
      }

      v15 = objc_opt_class();
      inputItems2 = [(EXExtensionRequest *)self inputItems];
      v17 = [v15 _inputItemsByApplyingActiveWebPageAlternative:inputItems2 ifNeededByActivationRule:v13];
      [(EXExtensionRequest *)self setInputItems:v17];
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = EXExtensionRequest;
  v4 = [(EXExtensionRequest *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ Request PK UUID: %@ with item count %lu", v4, self->_pkUUID, -[NSArray count](self->_inputItems, "count")];

  return v5;
}

@end