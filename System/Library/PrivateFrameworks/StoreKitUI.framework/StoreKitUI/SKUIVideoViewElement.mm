@interface SKUIVideoViewElement
- (BOOL)isEnabled;
- (NSArray)assets;
- (SKUIImageViewElement)thumbnailImage;
- (SKUIVideoViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (id)applyUpdatesWithElement:(id)element;
@end

@implementation SKUIVideoViewElement

- (SKUIVideoViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  if (os_variant_has_internal_content() && _os_feature_enabled_impl() && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [SKUIVideoViewElement initWithDOMElement:parent:elementFactory:];
  }

  v40.receiver = self;
  v40.super_class = SKUIVideoViewElement;
  v11 = [(SKUIViewElement *)&v40 initWithDOMElement:elementCopy parent:parentCopy elementFactory:factoryCopy];
  if (v11)
  {
    v37 = [elementCopy getAttribute:@"playback"];
    if (objc_msgSend_isEqualToString_(v37))
    {
      v11->_playbackStyle = 1;
    }

    v35 = [(SKUIViewElement *)v11 firstChildForElementType:49];
    if (!v35)
    {
      v12 = objc_opt_class();
      [v12 registerClass:objc_opt_class() forElementName:@"video" elementType:{49, 0}];
      v13 = [[SKUIImageViewElement alloc] initWithDOMElement:elementCopy parent:v11 elementFactory:factoryCopy];
      thumbnailImage = v11->_thumbnailImage;
      v11->_thumbnailImage = v13;

      v15 = [(SKUIImageViewElement *)v11->_thumbnailImage URL];

      if (!v15)
      {
        v16 = v11->_thumbnailImage;
        v11->_thumbnailImage = 0;
      }

      v17 = objc_opt_class();
      [v17 registerClass:objc_opt_class() forElementName:@"video" elementType:152];
    }

    v18 = [elementCopy getAttribute:{@"disabled", v35}];
    if ([v18 length])
    {
      v19 = [v18 BOOLValue] ^ 1;
    }

    else
    {
      v19 = -1;
    }

    v11->_enabled = v19;
    v20 = [elementCopy getAttribute:@"data-content-id"];
    if ([v20 length])
    {
      v11->_itemIdentifier = [v20 longLongValue];
    }

    v21 = [elementCopy getAttribute:@"data-metrics"];
    objc_opt_class();
    v39 = parentCopy;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
      v23 = v22;
      if (v22)
      {
        v24 = MEMORY[0x277CCAAA0];
        v25 = [v22 dataUsingEncoding:4];
        v26 = [v24 JSONObjectWithData:v25 options:0 error:0];

        goto LABEL_22;
      }
    }

    else
    {
      v23 = 0;
    }

    v26 = 0;
LABEL_22:
    v38 = factoryCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
      v28 = v27;
      if (v27)
      {
        v29 = [v27 objectForKey:@"kind"];
LABEL_27:
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v30 = v29;
          isEqualToString = objc_msgSend_isEqualToString_(v30);
        }

        else
        {
          v30 = 0;
          isEqualToString = objc_msgSend_isEqualToString_(0);
        }

        if (isEqualToString)
        {
          v32 = 1;
        }

        else
        {
          v33 = objc_msgSend_isEqualToString_(v30);
          v32 = 2;
          if (!v33)
          {
            v32 = 0;
          }
        }

        v11->_kind = v32;

        factoryCopy = v38;
        parentCopy = v39;
        goto LABEL_35;
      }
    }

    else
    {
      v28 = 0;
    }

    v29 = 0;
    goto LABEL_27;
  }

LABEL_35:

  return v11;
}

- (NSArray)assets
{
  array = [MEMORY[0x277CBEB18] array];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __30__SKUIVideoViewElement_assets__block_invoke;
  v6[3] = &unk_2781F9640;
  v4 = array;
  v7 = v4;
  [(SKUIViewElement *)self enumerateChildrenUsingBlock:v6];

  return v4;
}

void __30__SKUIVideoViewElement_assets__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 elementType] == 5)
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (SKUIImageViewElement)thumbnailImage
{
  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    v3 = thumbnailImage;
  }

  else
  {
    v3 = [(SKUIViewElement *)self firstChildForElementType:49];
  }

  return v3;
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = SKUIVideoViewElement;
  v5 = [(SKUIViewElement *)&v8 applyUpdatesWithElement:elementCopy];
  v6 = v5;
  if (elementCopy != self || [v5 updateType])
  {
    self->_enabled = elementCopy->_enabled;
    self->_itemIdentifier = [(SKUIVideoViewElement *)elementCopy itemIdentifier];
    self->_playbackStyle = [(SKUIVideoViewElement *)elementCopy playbackStyle];
    objc_storeStrong(&self->_thumbnailImage, elementCopy->_thumbnailImage);
  }

  return v6;
}

- (BOOL)isEnabled
{
  enabled = self->_enabled;
  if (enabled != 255)
  {
    return enabled != 0;
  }

  v7 = v2;
  v8 = v3;
  v6.receiver = self;
  v6.super_class = SKUIVideoViewElement;
  return [(SKUIViewElement *)&v6 isEnabled];
}

- (void)initWithDOMElement:parent:elementFactory:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIVideoViewElement initWithDOMElement:parent:elementFactory:]";
}

@end