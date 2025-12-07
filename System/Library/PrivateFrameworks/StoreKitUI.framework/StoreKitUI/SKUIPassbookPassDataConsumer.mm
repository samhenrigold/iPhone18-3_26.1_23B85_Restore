@interface SKUIPassbookPassDataConsumer
- (id)objectForData:(id)data response:(id)response error:(id *)error;
@end

@implementation SKUIPassbookPassDataConsumer

- (id)objectForData:(id)data response:(id)response error:(id *)error
{
  dataCopy = data;
  has_internal_content = os_variant_has_internal_content();
  if (has_internal_content)
  {
    has_internal_content = _os_feature_enabled_impl();
    if (has_internal_content)
    {
      has_internal_content = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (has_internal_content)
      {
        [SKUIPassbookPassDataConsumer objectForData:response:error:];
      }
    }
  }

  v9 = SKUIPassKitCoreFramework(has_internal_content, v8);
  v13 = 0;
  v10 = [objc_alloc(SKUIWeakLinkedClassForString(&cfstr_Pkpass.isa v9))];

  v11 = v13;
  if (error && !v10)
  {
    v11 = v11;
    *error = v11;
  }

  return v10;
}

- (void)objectForData:response:error:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136446210;
  v1 = "[SKUIPassbookPassDataConsumer objectForData:response:error:]";
}

@end