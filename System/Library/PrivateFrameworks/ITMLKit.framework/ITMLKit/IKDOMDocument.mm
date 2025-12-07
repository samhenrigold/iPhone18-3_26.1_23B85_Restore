@interface IKDOMDocument
- (BOOL)markUpdated;
- (IKDOMDocument)initWithAppContext:(id)context;
- (IKDOMDocument)initWithAppContext:(id)context input:(id)input error:(id *)error;
- (IKDOMDocument)initWithAppContext:(id)context qualifiedName:(id)name;
- (IKDOMDocument)initWithAppContext:(id)context xmlStr:(id)str error:(id *)error;
- (IKDOMElement)documentElement;
- (IKDOMImplementation)implementation;
- (id)asPrivateIKJSDOMDocument;
- (id)createCDATASection:(id)section;
- (id)createComment:(id)comment;
- (id)createDocumentFragment;
- (id)createElement:(id)element;
- (id)createTextNode:(id)node;
- (id)getElementById:(id)id;
- (id)getElementsByTagName:(id)name;
- (void)dealloc;
- (void)prepareForPresentationWithExtraInfo:(id)info;
- (void)setAppBridge:(id)bridge;
- (void)setNavigationDocument:(id)document;
@end

@implementation IKDOMDocument

- (id)asPrivateIKJSDOMDocument
{
  if ([(IKDOMDocument *)self conformsToProtocol:&unk_2866FB8D8])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IKDOMDocument)initWithAppContext:(id)context
{
  contextCopy = context;
  v5 = [(IKDOMNode *)self initWithAppContext:contextCopy xmlNode:xmlNewDoc("1.0")];

  return v5;
}

- (IKDOMDocument)initWithAppContext:(id)context xmlStr:(id)str error:(id *)error
{
  contextCopy = context;
  strCopy = str;
  v10 = [objc_opt_class() _documentWithXMLStr:strCopy lsInput:0 error:error];

  if (v10)
  {
    self = [(IKDOMNode *)self initWithAppContext:contextCopy xmlNode:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = selfCopy;

  return v12;
}

- (IKDOMDocument)initWithAppContext:(id)context input:(id)input error:(id *)error
{
  contextCopy = context;
  inputCopy = input;
  v10 = [objc_opt_class() _documentWithXMLStr:0 lsInput:inputCopy error:error];

  if (v10)
  {
    self = [(IKDOMNode *)self initWithAppContext:contextCopy xmlNode:v10];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v12 = selfCopy;

  return v12;
}

- (IKDOMDocument)initWithAppContext:(id)context qualifiedName:(id)name
{
  nameCopy = name;
  contextCopy = context;
  v8 = xmlNewDoc(0);
  v15.receiver = self;
  v15.super_class = IKDOMDocument;
  v9 = [(IKDOMNode *)&v15 initWithAppContext:contextCopy xmlNode:v8];

  if (v9)
  {
    v10 = [(IKDOMDocument *)v9 createElement:nameCopy];
    v11 = v10;
    if (v10)
    {
      nodePtr = [v10 nodePtr];
      v13 = xmlDocSetRootElement(v8, nodePtr);
      if (v13)
      {
        [IKDOMNode handleNodeParentDidChange:v13];
      }

      [IKDOMNode handleNodeParentDidChange:nodePtr];
    }
  }

  return v9;
}

- (void)dealloc
{
  if (self->__requestLoader)
  {
    appContext = [(IKJSObject *)self appContext];
    webInspectorController = [appContext webInspectorController];
    _requestLoader = [(IKDOMDocument *)self _requestLoader];
    identifier = [_requestLoader identifier];
    [webInspectorController unregisterLoaderWithIdentifier:identifier];
  }

  v7.receiver = self;
  v7.super_class = IKDOMDocument;
  [(IKDOMNode *)&v7 dealloc];
}

- (void)setAppBridge:(id)bridge
{
  bridgeCopy = bridge;
  objc_storeWeak(&self->_appBridge, bridgeCopy);
  p_appBridgeFlags = &self->_appBridgeFlags;
  self->_appBridgeFlags.hasSetNeedsUpdate = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasSnapshotImpressions = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasRecordedImpressions = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasRecordedImpressionsCallback = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasRecordedImpressionsMatchingCallback = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasImpressionsMatchingTag = objc_opt_respondsToSelector() & 1;
  self->_appBridgeFlags.hasScrollToTop = objc_opt_respondsToSelector() & 1;
  LOBYTE(self) = objc_opt_respondsToSelector();

  p_appBridgeFlags->hasRunTest = self & 1;
}

- (void)prepareForPresentationWithExtraInfo:(id)info
{
  infoCopy = info;
  if (![(IKDOMDocument *)self isEmbeddedScriptExecuted])
  {
    [(IKDOMDocument *)self _executeEmbeddedScriptWithExtraInfo:infoCopy];
  }
}

- (BOOL)markUpdated
{
  appBridge = [(IKDOMDocument *)self appBridge];
  if (appBridge)
  {
    appBridge2 = [(IKDOMDocument *)self appBridge];
    if ([appBridge2 conformsToProtocol:&unk_2866F7420])
    {
      appBridge3 = [(IKDOMDocument *)self appBridge];
      _isUpdateAllowed = [appBridge3 _isUpdateAllowed];

      if (!_isUpdateAllowed)
      {
        LOBYTE(appBridge) = 0;
        return appBridge;
      }
    }

    else
    {
    }

    jsNodeData = [(IKDOMNode *)self jsNodeData];
    isUpdated = [jsNodeData isUpdated];

    if (isUpdated)
    {
      LOBYTE(appBridge) = 1;
    }

    else
    {
      jsNodeData2 = [(IKDOMNode *)self jsNodeData];
      LOBYTE(appBridge) = 1;
      [jsNodeData2 setUpdated:1];

      appContext = [(IKJSObject *)self appContext];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __28__IKDOMDocument_markUpdated__block_invoke;
      v12[3] = &unk_2797998D0;
      v12[4] = self;
      [appContext addPostEvaluateBlock:v12];
    }
  }

  return appBridge;
}

uint64_t __28__IKDOMDocument_markUpdated__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appBridge];
  [v2 updateForDocument:*(a1 + 32)];

  v3 = objc_opt_class();
  v4 = *(a1 + 32);

  return [v3 _resetUpdatesForNode:v4];
}

- (void)setNavigationDocument:(id)document
{
  if (document)
  {
    v4 = MEMORY[0x277CD4658];
    documentCopy = document;
    appContext = [(IKJSObject *)self appContext];
    jsContext = [appContext jsContext];
    v8 = [v4 valueWithObject:documentCopy inContext:jsContext];
  }

  else
  {
    v8 = 0;
  }

  [(IKJSObject *)self setJSValue:v8 forProperty:@"navigationDocument"];
}

- (IKDOMImplementation)implementation
{
  v3 = [IKDOMImplementation alloc];
  appContext = [(IKJSObject *)self appContext];
  v5 = [(IKJSObject *)v3 initWithAppContext:appContext];

  return v5;
}

- (IKDOMElement)documentElement
{
  nodePtr = [(IKDOMNode *)self nodePtr];
  if (nodePtr && (RootElement = xmlDocGetRootElement(nodePtr)) != 0)
  {
    v5 = RootElement;
    appContext = [(IKJSObject *)self appContext];
    v7 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createElement:(id)element
{
  elementCopy = element;
  nodePtr = [(IKDOMNode *)self nodePtr];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 0;
    if ([elementCopy length] && nodePtr)
    {
      v7 = xmlNewDocNode(nodePtr, 0, [elementCopy UTF8String], 0);
      appContext = [(IKJSObject *)self appContext];
      v6 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v7];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createDocumentFragment
{
  nodePtr = [(IKDOMNode *)self nodePtr];
  if (nodePtr)
  {
    v4 = xmlNewDocFragment(nodePtr);
    appContext = [(IKJSObject *)self appContext];
    v6 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)createTextNode:(id)node
{
  nodeCopy = node;
  nodePtr = [(IKDOMNode *)self nodePtr];
  if (nodePtr)
  {
    v6 = nodePtr;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([nodeCopy length])
      {
        v7 = nodeCopy;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = xmlNewDocText(v6, [v7 UTF8String]);
    appContext = [(IKJSObject *)self appContext];
    v8 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createComment:(id)comment
{
  commentCopy = comment;
  nodePtr = [(IKDOMNode *)self nodePtr];
  if (nodePtr)
  {
    v6 = nodePtr;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([commentCopy length])
      {
        v7 = commentCopy;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    v9 = xmlNewDocComment(v6, [v7 UTF8String]);
    appContext = [(IKJSObject *)self appContext];
    v8 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v9];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)createCDATASection:(id)section
{
  sectionCopy = section;
  nodePtr = [(IKDOMNode *)self nodePtr];
  if (nodePtr)
  {
    v6 = nodePtr;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([sectionCopy length])
      {
        v7 = sectionCopy;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    uTF8String = [v7 UTF8String];
    v10 = uTF8String;
    if (uTF8String)
    {
      v11 = strlen(uTF8String);
    }

    else
    {
      v11 = 0;
    }

    v12 = xmlNewCDataBlock(v6, v10, v11);
    appContext = [(IKJSObject *)self appContext];
    v8 = [IKDOMNode nodeWithAppContext:appContext nodePtr:v12];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)getElementsByTagName:(id)name
{
  nameCopy = name;
  appContext = [(IKJSObject *)self appContext];
  v6 = [@"//" stringByAppendingString:nameCopy];

  v7 = [IKDOMNodeList nodeListWithAppContext:appContext contextNode:self xpath:v6];

  return v7;
}

- (id)getElementById:(id)id
{
  }

LABEL_7:
  [(IKCSSToken *)v7 setStringValue:v8];
  *a4 = v9;

  return v7;
}

@end