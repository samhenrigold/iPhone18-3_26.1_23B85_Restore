@interface SKScriptStoreSheetRequest
+ (id)webScriptNameForKey:(const char *)key;
+ (id)webScriptNameForSelector:(SEL)selector;
+ (void)initialize;
- (NSString)productURL;
- (WebScriptObject)productParameters;
- (id)_safeValueForValue:(id)value;
- (id)newNativeStorePageRequest;
- (id)scriptAttributeKeys;
- (int64_t)productPageStyle;
- (int64_t)productPageStyleAutomatic;
- (int64_t)productPageStyleBanner;
- (int64_t)productPageStylePad;
- (int64_t)productPageStylePhone;
- (void)newNativeStorePageRequest;
- (void)productPageStyle;
- (void)productPageStyleAutomatic;
- (void)productPageStyleBanner;
- (void)productPageStylePad;
- (void)productPageStylePhone;
- (void)productParameters;
- (void)productURL;
- (void)setProductPageStyle:(int64_t)style;
- (void)setProductParameters:(id)parameters;
- (void)setProductURL:(id)l;
@end

@implementation SKScriptStoreSheetRequest

- (id)newNativeStorePageRequest
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 newNativeStorePageRequest:v4];
      }
    }
  }

  v11 = objc_alloc_init(MEMORY[0x277CDD3A0]);
  webFrame = [(SUScriptObject *)self webFrame];
  globalContext = [webFrame globalContext];

  [(SUScriptObject *)self lock];
  [v11 setProductPageStyle:self->_pageStyle];
  productParameters = self->_productParameters;
  if (productParameters)
  {
    v15 = globalContext == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = [(WebScriptObject *)productParameters copyArrayOrDictionaryWithContext:globalContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v11 setProductParameters:v16];
    }
  }

  if (self->_productURL)
  {
    v17 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:self->_productURL];
    [v11 setProductURL:v17];
  }

  [(SUScriptObject *)self unlock];
  return v11;
}

- (int64_t)productPageStyle
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productPageStyle:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  pageStyle = self->_pageStyle;
  [(SUScriptObject *)self unlock];
  return pageStyle;
}

- (WebScriptObject)productParameters
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productParameters:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  v11 = self->_productParameters;
  [(SUScriptObject *)self unlock];

  return v11;
}

- (NSString)productURL
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKScriptStoreSheetRequest *)v3 productURL:v4];
      }
    }
  }

  [(SUScriptObject *)self lock];
  v11 = self->_productURL;
  [(SUScriptObject *)self unlock];

  return v11;
}

- (void)setProductPageStyle:(int64_t)style
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKScriptStoreSheetRequest *)v5 setProductPageStyle:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  [(SUScriptObject *)self lock];
  self->_pageStyle = style;
  [(SUScriptObject *)self unlock];
}

- (void)setProductParameters:(id)parameters
{
  parametersCopy = parameters;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (has_internal_content)
      {
        [(SKScriptStoreSheetRequest *)has_internal_content setProductParameters:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = SKUIWebCoreFramework(has_internal_content, v6);
  v14 = SKUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa, v13);
  v15 = [(SKScriptStoreSheetRequest *)self _safeValueForValue:parametersCopy];

  if (v15 && (objc_opt_isKindOfClass() & 1) == 0)
  {
    [v14 throwException:@"Invalid argument"];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productParameters != v15)
    {
      objc_storeStrong(&self->_productParameters, v15);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (void)setProductURL:(id)l
{
  lCopy = l;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKScriptStoreSheetRequest *)v5 setProductURL:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [(SKScriptStoreSheetRequest *)self _safeValueForValue:lCopy];

  if (v13 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v16 = SKUIWebCoreFramework(isKindOfClass, v15);
    [SKUIWeakLinkedClassForString(&cfstr_Webscriptobjec.isa v16)];
  }

  else
  {
    [(SUScriptObject *)self lock];
    if (self->_productURL != v13)
    {
      objc_storeStrong(&self->_productURL, v13);
    }

    [(SUScriptObject *)self unlock];
  }
}

- (int64_t)productPageStyleAutomatic
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStyleAutomatic:v3];
      }
    }
  }

  return 0;
}

- (int64_t)productPageStyleBanner
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStyleBanner:v3];
      }
    }
  }

  return 1;
}

- (int64_t)productPageStylePad
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStylePad:v3];
      }
    }
  }

  return 3;
}

- (int64_t)productPageStylePhone
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKScriptStoreSheetRequest *)v2 productPageStylePhone:v3];
      }
    }
  }

  return 2;
}

- (id)_safeValueForValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass & 1) != 0 || (v6 = SKUIWebCoreFramework(isKindOfClass, v5), SKUIWeakLinkedClassForString(&cfstr_Webundefined.isa, v6), v7 = valueCopy, (objc_opt_isKindOfClass()))
  {

    v7 = 0;
  }

  return v7;
}

+ (id)webScriptNameForKey:(const char *)key
{
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:key];
  v6 = [__KeyMapping objectForKey:v5];
  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = &OBJC_METACLASS___SKScriptStoreSheetRequest;
    v6 = objc_msgSendSuper2(&v8, sel_webScriptNameForKey_, key);
  }

  return v6;
}

+ (id)webScriptNameForSelector:(SEL)selector
{
  v5 = SUWebScriptNameForSelector2();
  if (!v5)
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___SKScriptStoreSheetRequest;
    v5 = objc_msgSendSuper2(&v7, sel_webScriptNameForSelector_, selector);
  }

  return v5;
}

- (id)scriptAttributeKeys
{
  v5.receiver = self;
  v5.super_class = SKScriptStoreSheetRequest;
  scriptAttributeKeys = [(SUScriptObject *)&v5 scriptAttributeKeys];
  allKeys = [__KeyMapping allKeys];
  [scriptAttributeKeys addObjectsFromArray:allKeys];

  return scriptAttributeKeys;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjectsAndKeys:{@"sheetStyle", @"productPageStyle", @"productParameters", @"productParameters", @"productURL", @"productURL", @"SHEET_STYLE_AUTOMATIC", @"productPageStyleAutomatic", @"SHEET_STYLE_BANNER", @"productPageStyleBanner", @"SHEET_STYLE_PAD", @"productPageStylePad", @"SHEET_STYLE_PHONE", @"productPageStylePhone", 0}];
    v3 = __KeyMapping;
    __KeyMapping = v2;

    MEMORY[0x2821F96F8](v2, v3);
  }
}

- (void)newNativeStorePageRequest
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest newNativeStorePageRequest]";
}

- (void)productPageStyle
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productPageStyle]";
}

- (void)productParameters
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productParameters]";
}

- (void)productURL
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productURL]";
}

- (void)setProductPageStyle:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest setProductPageStyle:]";
}

- (void)setProductParameters:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest setProductParameters:]";
}

- (void)setProductURL:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest setProductURL:]";
}

- (void)productPageStyleAutomatic
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productPageStyleAutomatic]";
}

- (void)productPageStyleBanner
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productPageStyleBanner]";
}

- (void)productPageStylePad
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productPageStylePad]";
}

- (void)productPageStylePhone
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKScriptStoreSheetRequest productPageStylePhone]";
}

@end