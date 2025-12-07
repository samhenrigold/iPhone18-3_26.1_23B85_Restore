@interface SKUITemplateDefinitionViewElement
- (NSString)definitionMode;
- (NSString)definitionType;
- (SKUIPredicateListViewElement)predicateListViewElement;
- (SKUIViewElement)contentViewElement;
- (void)contentViewElement;
- (void)definitionMode;
- (void)definitionType;
- (void)predicateListViewElement;
@end

@implementation SKUITemplateDefinitionViewElement

- (SKUIViewElement)contentViewElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 contentViewElement:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:26];

  return v11;
}

- (NSString)definitionMode
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 definitionMode:v4];
      }
    }
  }

  attributes = [(SKUITemplateDefinitionViewElement *)self attributes];
  v12 = [attributes objectForKey:@"mode"];

  return v12;
}

- (NSString)definitionType
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 definitionType:v4];
      }
    }
  }

  attributes = [(SKUITemplateDefinitionViewElement *)self attributes];
  v12 = [attributes objectForKey:@"type"];

  return v12;
}

- (SKUIPredicateListViewElement)predicateListViewElement
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUITemplateDefinitionViewElement *)v3 predicateListViewElement:v4];
      }
    }
  }

  v11 = [(SKUIViewElement *)self firstChildForElementType:89];

  return v11;
}

- (void)contentViewElement
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITemplateDefinitionViewElement contentViewElement]";
}

- (void)definitionMode
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITemplateDefinitionViewElement definitionMode]";
}

- (void)definitionType
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITemplateDefinitionViewElement definitionType]";
}

- (void)predicateListViewElement
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUITemplateDefinitionViewElement predicateListViewElement]";
}

@end