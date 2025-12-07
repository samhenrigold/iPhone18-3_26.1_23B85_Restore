@interface ECMessageBodyParser
+ (BOOL)isLinebreakImpliedAfterTagName:(id)name;
+ (BOOL)isLinebreakImpliedBeforeTagName:(id)name;
- (BOOL)isLandmarkTagName:(id)name;
- (BOOL)shouldIgnoreTagWithTagName:(id)name;
- (BOOL)shouldProceedParsing;
- (ECMessageBodyParser)init;
- (NSError)parserError;
- (NSNumberFormatter)currencyFormatter;
- (id)getAvailableMessageBodyElement;
- (id)newStringAccumulatorWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit;
- (unint64_t)quoteLevelForBodyNode:(id)node;
- (void)addSubparser:(id)subparser;
- (void)dealloc;
- (void)didFindBodyElement:(id)element;
- (void)didFindError:(id)error;
- (void)didFinishParsing;
- (void)enqueueParagraphNode:(id)node withTagName:(id)name;
- (void)flushParagraphNodes;
- (void)getLevel:(int64_t *)level quoteLevel:(int64_t *)quoteLevel forBodyNode:(id)node;
- (void)setFoundMessageBodyElementBlock:(id)block;
- (void)willBeginParsing;
@end

@implementation ECMessageBodyParser

os_log_t ___ef_log_ECMessageBodyParser_block_invoke()
{
  result = os_log_create("com.apple.email", "ECMessageBodyParser");
  _ef_log_ECMessageBodyParser_log = result;
  return result;
}

- (ECMessageBodyParser)init
{
  v4.receiver = self;
  v4.super_class = ECMessageBodyParser;
  v2 = [(ECMessageBodyParser *)&v4 init];
  if (v2)
  {
    v2->_elementPool = objc_alloc_init(MEMORY[0x277CBEB18]);
  }

  return v2;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  elementPool = self->_elementPool;
  v4 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(elementPool);
        }

        [*(*(&v12 + 1) + 8 * i) setParser:0];
      }

      v5 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  nodesStackCache = self->_nodesStackCache;
  if (nodesStackCache)
  {
    CFRelease(nodesStackCache);
  }

  nodesLevelCache = self->_nodesLevelCache;
  if (nodesLevelCache)
  {
    CFRelease(nodesLevelCache);
  }

  nodesQuoteLevelCache = self->_nodesQuoteLevelCache;
  if (nodesQuoteLevelCache)
  {
    CFRelease(nodesQuoteLevelCache);
  }

  v11.receiver = self;
  v11.super_class = ECMessageBodyParser;
  [(ECMessageBodyParser *)&v11 dealloc];
}

- (BOOL)shouldProceedParsing
{
  v5.receiver = self;
  v5.super_class = ECMessageBodyParser;
  shouldProceedParsing = [(ECMessageBodyParserObject *)&v5 shouldProceedParsing];
  if (shouldProceedParsing)
  {
    LOBYTE(shouldProceedParsing) = self->_parserError == 0;
  }

  return shouldProceedParsing;
}

- (NSError)parserError
{
  v2 = self->_parserError;

  return v2;
}

- (NSNumberFormatter)currencyFormatter
{
  result = self->_currencyFormatter;
  if (!result)
  {
    self->_currencyFormatter = objc_alloc_init(MEMORY[0x277CCABB8]);
    -[NSNumberFormatter setLocale:](self->_currencyFormatter, "setLocale:", [MEMORY[0x277CBEAF8] currentLocale]);
    [(NSNumberFormatter *)self->_currencyFormatter setNumberStyle:2];
    return self->_currencyFormatter;
  }

  return result;
}

- (id)newStringAccumulatorWithOptions:(unint64_t)options lengthLimit:(unint64_t)limit
{
  v7 = objc_alloc([(ECMessageBodyParser *)self messageBodyStringAccumulatorClass]);
  messageBodyStringAccumulatorDefaultOptions = [(ECMessageBodyParser *)self messageBodyStringAccumulatorDefaultOptions];
  currencyFormatter = [(ECMessageBodyParser *)self currencyFormatter];

  return [v7 initWithOptions:messageBodyStringAccumulatorDefaultOptions | options lengthLimit:limit currencyFormatter:currencyFormatter];
}

- (void)setFoundMessageBodyElementBlock:(id)block
{
  foundMessageBodyElementBlock = self->_foundMessageBodyElementBlock;
  if (foundMessageBodyElementBlock != block)
  {

    self->_foundMessageBodyElementBlock = [block copy];
  }
}

- (void)addSubparser:(id)subparser
{
  subparsers = self->_subparsers;
  if (!subparsers)
  {
    subparsers = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_subparsers = subparsers;
  }

  [(NSMutableArray *)subparsers addObject:subparser];
}

- (id)getAvailableMessageBodyElement
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  elementPool = self->_elementPool;
  v4 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(elementPool);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      if (![v8 isExternallyRetained])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    if (v8)
    {
      return v8;
    }
  }

LABEL_11:
  v8 = objc_alloc_init([(ECMessageBodyParser *)self messageBodyElementClass]);
  [v8 setParser:self];
  [(NSMutableArray *)self->_elementPool addObject:v8];

  return v8;
}

- (BOOL)isLandmarkTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"p", 3) && objc_msgSend(name, "compare:options:", @"br", 3))
  {
    return [name compare:@"blockquote" options:3] == 0;
  }

  return 1;
}

- (BOOL)shouldIgnoreTagWithTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"title" options:3] && objc_msgSend(name, "compare:options:", @"script", 3))
  {
    return [name compare:@"style" options:3] == 0;
  }

  return 1;
}

+ (BOOL)isLinebreakImpliedBeforeTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"p", 3) && objc_msgSend(name, "compare:options:", @"h1", 3) && objc_msgSend(name, "compare:options:", @"h2", 3) && objc_msgSend(name, "compare:options:", @"h3", 3) && objc_msgSend(name, "compare:options:", @"h4", 3) && objc_msgSend(name, "compare:options:", @"h5", 3) && objc_msgSend(name, "compare:options:", @"h6", 3))
  {
    return [name compare:@"li" options:3] == 0;
  }

  return 1;
}

+ (BOOL)isLinebreakImpliedAfterTagName:(id)name
{
  if (!name)
  {
    return 0;
  }

  if ([name compare:@"div" options:3] && objc_msgSend(name, "compare:options:", @"br", 3) && objc_msgSend(name, "compare:options:", @"p", 3))
  {
    return [name compare:@"blockquote" options:3] == 0;
  }

  return 1;
}

- (void)enqueueParagraphNode:(id)node withTagName:(id)name
{
  if ([objc_opt_class() isLinebreakImpliedBeforeTagName:name])
  {
    [(ECMessageBodyParser *)self flushParagraphNodes];
  }

  paragraphNodes = self->_paragraphNodes;
  if (!paragraphNodes)
  {
    paragraphNodes = objc_alloc_init(MEMORY[0x277CBEB18]);
    self->_paragraphNodes = paragraphNodes;
  }

  [(NSMutableArray *)paragraphNodes addObject:node];
  if ([objc_opt_class() isLinebreakImpliedAfterTagName:name])
  {

    [(ECMessageBodyParser *)self flushParagraphNodes];
  }
}

- (void)flushParagraphNodes
{
  if ([(NSMutableArray *)self->_paragraphNodes count])
  {
    getAvailableMessageBodyElement = [(ECMessageBodyParser *)self getAvailableMessageBodyElement];
    [getAvailableMessageBodyElement setNodes:self->_paragraphNodes];
    [(ECMessageBodyParser *)self didFindBodyElement:getAvailableMessageBodyElement];
    paragraphNodes = self->_paragraphNodes;

    [(NSMutableArray *)paragraphNodes removeAllObjects];
  }
}

- (void)didFindBodyElement:(id)element
{
  v17 = *MEMORY[0x277D85DE8];
  foundMessageBodyElementBlock = self->_foundMessageBodyElementBlock;
  if (foundMessageBodyElementBlock)
  {
    foundMessageBodyElementBlock[2](foundMessageBodyElementBlock, element);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  subparsers = self->_subparsers;
  v7 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(subparsers);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 shouldProceedParsing])
        {
          [v11 messageBodyParser:self foundMessageBodyElement:element];
        }
      }

      v8 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }
}

- (void)willBeginParsing
{
  v13 = *MEMORY[0x277D85DE8];
  [(ECMessageBodyParserObject *)self messageBodyParserWillBeginParsing:self];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  subparsers = self->_subparsers;
  v4 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(subparsers);
        }

        [*(*(&v8 + 1) + 8 * i) messageBodyParserWillBeginParsing:self];
      }

      v5 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)didFinishParsing
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  subparsers = self->_subparsers;
  v4 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(subparsers);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([v8 shouldProceedParsing])
        {
          [v8 messageBodyParserDidFinishParsing:self];
        }
      }

      v5 = [(NSMutableArray *)subparsers countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v5);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  elementPool = self->_elementPool;
  v10 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(elementPool);
        }

        [*(*(&v14 + 1) + 8 * j) setParser:0];
      }

      v11 = [(NSMutableArray *)elementPool countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }

  [(NSMutableArray *)self->_elementPool removeAllObjects];
}

- (void)didFindError:(id)error
{
  if (_ef_log_ECMessageBodyParser_onceToken != -1)
  {
    _ef_log_ECMessageBodyParser_cold_1();
  }

  v5 = _ef_log_ECMessageBodyParser_log;
  if (os_log_type_enabled(_ef_log_ECMessageBodyParser_log, OS_LOG_TYPE_ERROR))
  {
    [(ECMessageBodyParser *)error didFindError:v5];
  }

  if (!self->_parserError)
  {
    self->_parserError = error;
  }
}

- (unint64_t)quoteLevelForBodyNode:(id)node
{
  v4 = 0;
  [(ECMessageBodyParser *)self getLevel:0 quoteLevel:&v4 forBodyNode:node];
  return v4;
}

- (void)getLevel:(int64_t *)level quoteLevel:(int64_t *)quoteLevel forBodyNode:(id)node
{
  v14 = 0;
  value = 0;
  if (node)
  {
    if (!self->_nodesStackCache)
    {
      if ([objc_opt_class() cacheRetainsNodes])
      {
        v9 = MEMORY[0x277CBF128];
      }

      else
      {
        v9 = 0;
      }

      self->_nodesStackCache = CFArrayCreateMutable(0, 50, v9);
    }

    nodesLevelCache = self->_nodesLevelCache;
    if (!nodesLevelCache)
    {
      nodesLevelCache = CFDictionaryCreateMutable(0, 50, 0, 0);
      self->_nodesLevelCache = nodesLevelCache;
    }

    if (!self->_nodesQuoteLevelCache)
    {
      self->_nodesQuoteLevelCache = CFDictionaryCreateMutable(0, 50, 0, 0);
      nodesLevelCache = self->_nodesLevelCache;
    }

    if (!CFDictionaryGetValueIfPresent(nodesLevelCache, node, &value) || !CFDictionaryGetValueIfPresent(self->_nodesQuoteLevelCache, node, &v14))
    {
      -[ECMessageBodyParser getLevel:quoteLevel:forBodyNode:](self, "getLevel:quoteLevel:forBodyNode:", &value, &v14, [node parentNode]);
      value = value + 1;
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![@"blockquote" compare:objc_msgSend(node options:{"tagName"), 1}] && ((objc_opt_respondsToSelector() & 1) == 0 || !objc_msgSend(@"cite", "compare:options:", objc_msgSend(node, "getAttribute:", @"type"), 1) || !objc_msgSend(@"gmail_quote", "compare:options:", objc_msgSend(node, "getAttribute:", @"class"), 1)))
      {
        v14 = v14 + 1;
      }

      Count = CFArrayGetCount(self->_nodesStackCache);
      if (Count >= value)
      {
        v12 = Count + 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(self->_nodesStackCache, v12 - 2);
          CFDictionaryRemoveValue(self->_nodesLevelCache, ValueAtIndex);
          CFDictionaryRemoveValue(self->_nodesQuoteLevelCache, ValueAtIndex);
          CFArrayRemoveValueAtIndex(self->_nodesStackCache, v12 - 2);
          --v12;
        }

        while (v12 > value);
      }

      CFArrayAppendValue(self->_nodesStackCache, node);
      CFDictionarySetValue(self->_nodesLevelCache, node, value);
      CFDictionarySetValue(self->_nodesQuoteLevelCache, node, v14);
    }
  }

  if (level)
  {
    *level = value;
  }

  if (quoteLevel)
  {
    *quoteLevel = v14;
  }
}

- (void)didFindError:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = [a1 ef_publicDescription];
  _os_log_error_impl(&dword_22D092000, a2, OS_LOG_TYPE_ERROR, "Did find error: %{public}@", &v3, 0xCu);
}

@end