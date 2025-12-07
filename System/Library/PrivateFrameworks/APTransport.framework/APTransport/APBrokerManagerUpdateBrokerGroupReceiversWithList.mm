@interface APBrokerManagerUpdateBrokerGroupReceiversWithList
@end

@implementation APBrokerManagerUpdateBrokerGroupReceiversWithList

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke(uint64_t a1, void *key, void *value)
{
  v6 = *(a1 + 32);
  if (!v6 || !CFDictionaryContainsKey(v6, key))
  {
    v7 = *(a1 + 40);

    CFDictionarySetValue(v7, key, value);
  }
}

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke_2(uint64_t a1, const void *a2)
{
  CFDictionaryRemoveValue(*(a1 + 32), a2);
  v3 = *(a1 + 40);

  _APBrokerManagerFireBrokeredReceiverEvent(v3);
}

void ___APBrokerManagerUpdateBrokerGroupReceiversWithList_block_invoke_3(uint64_t a1, const void *a2, const void *a3)
{
  CFDictionaryContainsKey(*(a1 + 32), a2);
  CFDictionarySetValue(*(a1 + 32), a2, a3);
  v6 = *(a1 + 40);

  _APBrokerManagerFireBrokeredReceiverEvent(v6);
}

@end