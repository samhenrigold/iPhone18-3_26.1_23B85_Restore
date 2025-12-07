@interface POXMLNode
- (POXMLNode)init;
- (id)content;
- (id)evaluateXPath:(id)path;
- (id)parent;
- (id)rawXMLString;
- (id)valueForProperty:(id)property;
@end

@implementation POXMLNode

- (POXMLNode)init
{
  v3.receiver = self;
  v3.super_class = POXMLNode;
  result = [(POXMLNode *)&v3 init];
  if (result)
  {
    result->_node = 0;
  }

  return result;
}

- (id)evaluateXPath:(id)path
{
  pathCopy = path;
  if (-[POXMLNode node](self, "node")[8] == 1 && (v5 = -[POXMLNode node](self, "node"), v6 = [pathCopy UTF8String], -[POXMLNode xpathResultSet](self, "xpathResultSet"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "xpathContext"), v8 = objc_claimAutoreleasedReturnValue(), v9 = xmlXPathNodeEval(v5, v6, objc_msgSend(v8, "xpathCtx")), v8, v7, v9) && (nodesetval = v9->nodesetval) != 0 && nodesetval->nodeNr && nodesetval->nodeTab)
  {
    v11 = objc_alloc_init(POXMLXPathResult);
    [(POXMLXPathResult *)v11 setXpathObj:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)parent
{
  if ([(POXMLNode *)self node][40])
  {
    v3 = objc_alloc_init(POXMLNode);
    [(POXMLNode *)v3 setNode:[(POXMLNode *)self node][40]];
    xpathResultSet = [(POXMLNode *)self xpathResultSet];
    [(POXMLNode *)v3 setXpathResultSet:xpathResultSet];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)valueForProperty:(id)property
{
  propertyCopy = property;
  node = [(POXMLNode *)self node];
  uTF8String = [propertyCopy UTF8String];

  Prop = xmlGetProp(node, uTF8String);
  if (Prop)
  {
    v8 = Prop;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
    free(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)content
{
  Content = xmlNodeGetContent([(POXMLNode *)self node]);
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
  free(Content);

  return v3;
}

- (id)rawXMLString
{
  xpathResultSet = [(POXMLNode *)self xpathResultSet];
  xpathContext = [xpathResultSet xpathContext];
  xmldocContext = [xpathContext xmldocContext];

  v6 = xmlBufferCreate();
  v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v6->content length:xmlNodeDump(v6 encoding:{objc_msgSend(xmldocContext, "xmldoc"), -[POXMLNode node](self, "node"), 0, 0), 4}];
  xmlBufferFree(v6);

  return v7;
}

@end