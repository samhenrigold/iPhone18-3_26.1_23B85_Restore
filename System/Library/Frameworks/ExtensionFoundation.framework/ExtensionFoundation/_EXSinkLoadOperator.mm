@interface _EXSinkLoadOperator
- (_EXSinkLoadOperator)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options;
@end

@implementation _EXSinkLoadOperator

- (_EXSinkLoadOperator)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = _EXSinkLoadOperator;
  _init = [(_EXLoadOperator *)&v9 _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endpoint"];
    endpoint = _init->_endpoint;
    _init->_endpoint = v6;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  v3 = _EXDefaultLog(coder);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    v4 = 136315650;
    v5 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/ItemProvider/EXLoadOperator.m";
    v6 = 1024;
    v7 = 229;
    v8 = 2080;
    v9 = "[_EXSinkLoadOperator encodeWithCoder:]";
    _os_log_fault_impl(&dword_1847D1000, v3, OS_LOG_TYPE_FAULT, "%s - %d: %s unexpected call in destination process", &v4, 0x1Cu);
  }

  __break(1u);
}

- (void)loadItemForTypeIdentifier:(id)identifier completionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  v51 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  optionsCopy = options;
  v13 = _EXDefaultLog(optionsCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v33 = NSStringFromClass(class);
    *buf = 136446978;
    v44 = "[_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:]";
    v45 = 2114;
    v46 = identifierCopy;
    v47 = 2114;
    v48 = v33;
    v49 = 2114;
    v50 = optionsCopy;
    _os_log_debug_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEBUG, "%{public}s typeIdentifier: %{public}@ expectedValueClass: %{public}@ options: %{public}@", buf, 0x2Au);
  }

  if (!class)
  {
    v16 = +[_EXDefaults sharedInstance];
    itemProviderTypes = [v16 itemProviderTypes];

    v14 = _EXDefaultLog(v18);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:];
    }

    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v19 = +[_EXDefaults sharedInstance];
    itemProviderTypes = [v19 itemProviderTypes];

    v14 = _EXDefaultLog(v20);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [_EXSinkLoadOperator loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:];
    }

    goto LABEL_15;
  }

  if (objc_opt_class() == class)
  {
    v21 = MEMORY[0x1E695DFD8];
    v42[0] = class;
    v42[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    plistAndValueTypes = [v21 setWithArray:v14];
    goto LABEL_14;
  }

  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || [(objc_class *)class isSubclassOfClass:objc_opt_class()])
  {
    v14 = +[_EXDefaults sharedInstance];
    plistAndValueTypes = [v14 plistAndValueTypes];
LABEL_14:
    itemProviderTypes = plistAndValueTypes;
LABEL_15:

    goto LABEL_16;
  }

  itemProviderTypes = [MEMORY[0x1E695DFD8] setWithObject:class];
LABEL_16:
  v22 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A5190];
  [v22 setClasses:itemProviderTypes forSelector:sel_resolveWithIdentifier_className_options_reply_ argumentIndex:0 ofReply:1];
  v23 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
  [v23 setRemoteObjectInterface:v22];
  [v23 resume];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke;
  v38[3] = &unk_1E6E4DB38;
  v24 = handlerCopy;
  v39 = v24;
  v25 = [v23 remoteObjectProxyWithErrorHandler:v38];
  v26 = NSStringFromClass(class);
  if (v26)
  {
    v27 = [optionsCopy objectForKeyedSubscript:@"com.apple.Foundation.NSItemProviderExpectedClass"];
    v28 = v27;
    if (!v27 || ![v27 length])
    {
      v40 = @"com.apple.Foundation.NSItemProviderExpectedClass";
      v41 = v26;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];

      optionsCopy = v29;
    }
  }

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __94___EXSinkLoadOperator_loadItemForTypeIdentifier_completionHandler_expectedValueClass_options___block_invoke_126;
  v34[3] = &unk_1E6E4E6E8;
  v35 = v26;
  v36 = identifierCopy;
  v37 = v24;
  v30 = v24;
  v31 = identifierCopy;
  v32 = v26;
  [v25 resolveWithIdentifier:v31 className:v32 options:optionsCopy reply:v34];
}

- (void)loadPreviewImageWithCompletionHandler:(id)handler expectedValueClass:(Class)class options:(id)options
{
  handlerCopy = handler;
  optionsCopy = options;
  v10 = _EXDefaultLog(optionsCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [_EXSinkLoadOperator loadPreviewImageWithCompletionHandler:class expectedValueClass:optionsCopy options:v10];
  }

  v11 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EF2A5190];
  v12 = +[_EXDefaults sharedInstance];
  plistTypes = [v12 plistTypes];
  [v11 setClasses:plistTypes forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:2 ofReply:0];

  v14 = +[_EXDefaults sharedInstance];
  imageTypes = [v14 imageTypes];
  [v11 setClasses:imageTypes forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:0 ofReply:1];

  v16 = +[_EXDefaults sharedInstance];
  errorTypes = [v16 errorTypes];
  [v11 setClasses:errorTypes forSelector:sel_previewImageWithClassName_options_reply_ argumentIndex:1 ofReply:1];

  v18 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:self->_endpoint];
  [v18 setRemoteObjectInterface:v11];
  [v18 resume];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke;
  v25[3] = &unk_1E6E4DB38;
  v19 = handlerCopy;
  v26 = v19;
  v20 = [v18 remoteObjectProxyWithErrorHandler:v25];
  v21 = NSStringFromClass(class);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __88___EXSinkLoadOperator_loadPreviewImageWithCompletionHandler_expectedValueClass_options___block_invoke_129;
  v23[3] = &unk_1E6E4E710;
  v24 = v19;
  v22 = v19;
  [v20 previewImageWithClassName:v21 options:optionsCopy reply:v23];
}

- (void)loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0_6();
  v3 = v0;
}

- (void)loadItemForTypeIdentifier:completionHandler:expectedValueClass:options:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0_6();
  v3 = v0;
  _os_log_fault_impl(&dword_1847D1000, v1, OS_LOG_TYPE_FAULT, "%{public}s nil expectedValueClass allowing %{public}@", v2, 0x16u);
}

- (void)loadPreviewImageWithCompletionHandler:(objc_class *)a1 expectedValueClass:(uint64_t)a2 options:(NSObject *)a3 .cold.1(objc_class *a1, uint64_t a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromClass(a1);
  v6 = 136315650;
  v7 = "[_EXSinkLoadOperator loadPreviewImageWithCompletionHandler:expectedValueClass:options:]";
  v8 = 2112;
  v9 = v5;
  v10 = 2112;
  v11 = a2;
  _os_log_debug_impl(&dword_1847D1000, a3, OS_LOG_TYPE_DEBUG, "%s expectedValueClass: %@ options: %@", &v6, 0x20u);
}

@end