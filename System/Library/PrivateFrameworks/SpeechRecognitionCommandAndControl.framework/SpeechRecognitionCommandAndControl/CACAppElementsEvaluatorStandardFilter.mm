@interface CACAppElementsEvaluatorStandardFilter
- (id)actionableAXElementsFromAXElements:(id)elements;
@end

@implementation CACAppElementsEvaluatorStandardFilter

- (id)actionableAXElementsFromAXElements:(id)elements
{
  v28 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = elementsCopy;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v20;
    v10 = *MEMORY[0x277CE6D78] | *MEMORY[0x277CE6D00] | *MEMORY[0x277CE6E08] | *MEMORY[0x277CE6D70];
    v11 = *MEMORY[0x277CE6D38] | *MEMORY[0x277CE6E70] | *MEMORY[0x277CE6D68];
    *&v7 = 138478083;
    v18 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 hasAnyTraits:{v10 | v11, v18, v19}];
        if (v14)
        {
          [array addObject:v13];
        }

        else
        {
          v15 = CACLogElementEvaluation(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            [v13 traits];
            v16 = _AXTraitsAsString();
            *buf = v18;
            v24 = v13;
            v25 = 2112;
            v26 = v16;
            _os_log_debug_impl(&dword_26B354000, v15, OS_LOG_TYPE_DEBUG, "Filtering %{private}@ with traits %@", buf, 0x16u);
          }
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v8);
  }

  return array;
}

@end