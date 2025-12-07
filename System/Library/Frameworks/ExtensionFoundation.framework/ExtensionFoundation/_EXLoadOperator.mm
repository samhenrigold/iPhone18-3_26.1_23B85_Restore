@interface _EXLoadOperator
+ (id)allocWithZone:(_NSZone *)zone;
- (_EXLoadOperator)initWithCoder:(id)coder;
- (_EXLoadOperator)initWithItemProvider:(id)provider;
- (id)_init;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
@end

@implementation _EXLoadOperator

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __33___EXLoadOperator_allocWithZone___block_invoke;
    block[3] = &__block_descriptor_48_e5_v8__0l;
    block[4] = zone;
    block[5] = self;
    if (allocWithZone__onceToken != -1)
    {
      dispatch_once(&allocWithZone__onceToken, block);
    }

    v6 = allocWithZone__factory;

    return v6;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS____EXLoadOperator;
    return objc_msgSendSuper2(&v7, sel_allocWithZone_, zone);
  }
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _EXLoadOperator;
  return [(_EXLoadOperator *)&v3 init];
}

- (_EXLoadOperator)initWithItemProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[_EXSourceLoadOperator alloc] initWithItemProvider:providerCopy];

  return &v5->super;
}

- (_EXLoadOperator)initWithCoder:(id)coder
{
  v3 = _EXDefaultLog(coder);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v5 = 136315650;
    v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v7 = 1024;
    v8 = 78;
    v9 = 2080;
    v10 = "[_EXLoadOperator initWithCoder:]";
  }

  __break(1u);
  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = _EXDefaultLog(coder);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v6 = 1024;
    v7 = 83;
    v8 = 2080;
    v9 = "[_EXLoadOperator encodeWithCoder:]";
  }

  __break(1u);
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  identifierCopy = identifier;
  handlerCopy = handler;
  optionsCopy = options;
  v12 = _EXDefaultLog(optionsCopy);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = NSStringFromClass(class);
    v16 = 136315906;
    v17 = "[_EXLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
    v18 = 2112;
    *v19 = identifierCopy;
    *&v19[8] = 2112;
    *&v19[10] = v13;
    v20 = 2112;
    v21 = optionsCopy;
    _os_log_debug_impl(&dword_1847D1000, v12, OS_LOG_TYPE_DEBUG, "%s typeIdentifier: %@ expectedValueClass: %@ options: %@", &v16, 0x2Au);
  }

  v15 = _EXDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    v16 = 136315650;
    v17 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v18 = 1024;
    *v19 = 89;
    *&v19[4] = 2080;
    *&v19[6] = "[_EXLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
  }

  __break(1u);
}

- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  v9 = _EXDefaultLog(optionsCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = NSStringFromClass(class);
    v13 = 136315650;
    v14 = "[_EXLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
    v15 = 2112;
    *v16 = v10;
    *&v16[8] = 2112;
    *&v16[10] = optionsCopy;
    _os_log_debug_impl(&dword_1847D1000, v9, OS_LOG_TYPE_DEBUG, "%s expectedValueClass: %@ options: %@", &v13, 0x20u);
  }

  v12 = _EXDefaultLog(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    v13 = 136315650;
    v14 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v15 = 1024;
    *v16 = 94;
    *&v16[4] = 2080;
    *&v16[6] = "[_EXLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
  }

  __break(1u);
}

@end