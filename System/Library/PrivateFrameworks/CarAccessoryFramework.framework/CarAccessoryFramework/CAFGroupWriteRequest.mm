@interface CAFGroupWriteRequest
- (id)groupRequestValueForRequests:(id)requests;
- (void)addCharacteristic:(id)characteristic value:(id)value;
- (void)addCharacteristicsAndValues:(id)values;
- (void)completedRequests:(id)requests withResponse:(id)response;
@end

@implementation CAFGroupWriteRequest

- (void)addCharacteristic:(id)characteristic value:(id)value
{
  characteristicCopy = characteristic;
  valueCopy = value;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__CAFGroupWriteRequest_addCharacteristic_value___block_invoke;
  v10[3] = &unk_27890D598;
  v11 = characteristicCopy;
  v12 = valueCopy;
  selfCopy = self;
  v8 = valueCopy;
  v9 = characteristicCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:v10];
}

uint64_t __48__CAFGroupWriteRequest_addCharacteristic_value___block_invoke(uint64_t a1)
{
  v2 = [CAFWriteRequest requestWithCharacteristic:*(a1 + 32) value:*(a1 + 40)];
  if (v2)
  {
    [*(a1 + 48) _addRequest:v2];
  }

  return MEMORY[0x2821F96F8]();
}

- (void)addCharacteristicsAndValues:(id)values
{
  valuesCopy = values;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke;
  v6[3] = &unk_27890D548;
  v7 = valuesCopy;
  selfCopy = self;
  v5 = valuesCopy;
  [(CAFGroupRequest *)self _lockedPerformBlock:v6];
}

uint64_t __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke_2;
  v3[3] = &unk_27890D5C0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

uint64_t __52__CAFGroupWriteRequest_addCharacteristicsAndValues___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [CAFWriteRequest requestWithCharacteristic:a2 value:a3];
  if (v4)
  {
    [*(a1 + 32) _addRequest:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)groupRequestValueForRequests:(id)requests
{
  v27 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  objc_opt_class();
  v5 = requestsCopy;
  if (!v5 || (v6 = v5, (objc_opt_isKindOfClass() & 1) == 0))
  {

    v8 = CAFGeneralLogging(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CAFGroupWriteRequest groupRequestValueForRequests:v8];
    }

    v6 = 0;
  }

  v21 = v5;
  v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        value = [v15 value];
        v17 = value;
        if (!value)
        {
          null = [MEMORY[0x277CBEB68] null];
          v17 = null;
        }

        characteristic = [v15 characteristic];
        instanceID = [characteristic instanceID];
        [v9 setObject:v17 forKeyedSubscript:instanceID];

        if (!value)
        {
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)completedRequests:(id)requests withResponse:(id)response
{
  v27 = *MEMORY[0x277D85DE8];
  requestsCopy = requests;
  responseCopy = response;
  values = [responseCopy values];

  if (values)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v21 = requestsCopy;
    v8 = requestsCopy;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        v12 = 0;
        do
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          values2 = [responseCopy values];
          characteristic = [v13 characteristic];
          instanceID = [characteristic instanceID];
          v17 = [values2 objectForKeyedSubscript:instanceID];

          if (v17)
          {
            characteristic2 = [v13 characteristic];
            characteristic3 = [v13 characteristic];
            instanceID2 = [characteristic3 instanceID];
            [characteristic2 handleWrite:instanceID2 value:v17];
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
    }

    requestsCopy = v21;
  }
}

@end