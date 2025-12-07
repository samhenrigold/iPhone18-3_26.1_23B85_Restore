@interface INCIntentDefaultValueProvider
- (BOOL)isExpectedDefaultValueError:(id)error;
- (INCIntentDefaultValueProvider)initWithIntent:(id)intent;
- (void)loadDefaultValuesWithAttributes:(id)attributes extensionProxy:(id)proxy completionHandler:(id)handler;
- (void)loadDefaultValuesWithCompletionHandler:(id)handler;
@end

@implementation INCIntentDefaultValueProvider

- (BOOL)isExpectedDefaultValueError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CD4450]])
  {
    v5 = [errorCopy code] == 1003;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)loadDefaultValuesWithAttributes:(id)attributes extensionProxy:(id)proxy completionHandler:(id)handler
{
  v53 = *MEMORY[0x277D85DE8];
  attributesCopy = attributes;
  proxyCopy = proxy;
  handlerCopy = handler;
  selfCopy = self;
  intent = [(INCIntentDefaultValueProvider *)self intent];
  group = dispatch_group_create();
  v50[0] = 0;
  v50[1] = v50;
  v50[2] = 0x3032000000;
  v50[3] = __Block_byref_object_copy__639;
  v50[4] = __Block_byref_object_dispose__640;
  v51 = 0;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = attributesCopy;
  v10 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
  if (v10)
  {
    v11 = *v47;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v47 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v46 + 1) + 8 * i);
        relationship = [v13 relationship];
        parentCodableAttribute = [relationship parentCodableAttribute];

        if (!parentCodableAttribute || ([v13 relationship], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "relation") == 0, v16, v17) || (objc_msgSend(parentCodableAttribute, "propertyName"), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(intent, "valueForKey:", v18), v19 = objc_claimAutoreleasedReturnValue(), v18, objc_msgSend(v13, "relationship"), v20 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v20, "compareValue:", v19), v20, v19, (v18 & 1) != 0))
        {
          if ([v13 supportsDynamicEnumeration])
          {
            dispatch_group_enter(group);
            propertyName = [v13 propertyName];
            v41[0] = MEMORY[0x277D85DD0];
            v41[1] = 3221225472;
            v41[2] = __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke;
            v41[3] = &unk_2797E7C58;
            v41[4] = selfCopy;
            v45 = v50;
            v42 = group;
            v43 = intent;
            v44 = v13;
            [proxyCopy getDefaultValueForParameterNamed:propertyName completionHandler:v41];
          }

          else
          {
            metadata = [v13 metadata];
            v23 = metadata;
            if (metadata)
            {
              if ([metadata conformsToProtocol:&unk_2867761D0])
              {
                v24 = v23;
              }

              else
              {
                v24 = 0;
              }
            }

            else
            {
              v24 = 0;
            }

            v25 = v24;

            defaultValueForIntentDefaultValueProvider = [v25 defaultValueForIntentDefaultValueProvider];
            if (defaultValueForIntentDefaultValueProvider)
            {
              if (![v13 modifier])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  v27 = [MEMORY[0x277CBEA60] arrayWithObject:defaultValueForIntentDefaultValueProvider];

                  defaultValueForIntentDefaultValueProvider = v27;
                }
              }

              propertyName2 = [v13 propertyName];
              [intent setValue:defaultValueForIntentDefaultValueProvider forKey:propertyName2];
            }
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v46 objects:v52 count:16];
    }

    while (v10);
  }

  v29 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke_2;
  block[3] = &unk_2797E7C80;
  v39 = handlerCopy;
  v40 = v50;
  v38 = intent;
  v30 = intent;
  v31 = handlerCopy;
  dispatch_group_notify(group, v29, block);

  _Block_object_dispose(v50, 8);
}

void __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v5 && ([*(a1 + 32) isExpectedDefaultValueError:v5] & 1) == 0)
  {
    v8 = *(*(a1 + 64) + 8);
    v9 = v5;
    v7 = *(v8 + 40);
    *(v8 + 40) = v9;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    v6 = *(a1 + 48);
    v7 = [*(a1 + 56) propertyName];
    [v6 setValue:v10 forKey:v7];
  }

LABEL_7:
  dispatch_group_leave(*(a1 + 40));
}

uint64_t __98__INCIntentDefaultValueProvider_loadDefaultValuesWithAttributes_extensionProxy_completionHandler___block_invoke_2(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(*(*(v3 + 8) + 8) + 40))
  {
    return (*(v2 + 16))(v2, 0);
  }

  else
  {
    return (*(v2 + 16))(v2, *(a1 + 32));
  }
}

- (void)loadDefaultValuesWithCompletionHandler:(id)handler
{
  v40 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  intent = [(INCIntentDefaultValueProvider *)self intent];
  intent2 = [(INCIntentDefaultValueProvider *)self intent];
  _codableDescription = [intent2 _codableDescription];
  displayOrderedAttributes = [_codableDescription displayOrderedAttributes];
  array = [displayOrderedAttributes array];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = array;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v11)
  {
    v12 = *v34;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v10);
        }

        if ([*(*(&v33 + 1) + 8 * v13) supportsDynamicEnumeration])
        {

          if (MKBDeviceUnlockedSinceBoot())
          {
            v14 = [[INCExtensionConnection alloc] initWithIntent:intent];
            [(INCExtensionConnection *)v14 setRequiresTCC:0];
            v31[0] = 0;
            v31[1] = v31;
            v31[2] = 0x2020000000;
            v32 = 0;
            objc_initWeak(&location, v14);
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke;
            v26[3] = &unk_2797E7BE0;
            v26[4] = self;
            v28 = v31;
            objc_copyWeak(&v29, &location);
            v27 = handlerCopy;
            v15 = MEMORY[0x259C36E60](v26);
            v24[0] = MEMORY[0x277D85DD0];
            v24[1] = 3221225472;
            v24[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_3;
            v24[3] = &unk_2797E7C08;
            v16 = v15;
            v25 = v16;
            [(INCExtensionConnection *)v14 setInterruptionHandler:v24];
            v21[0] = MEMORY[0x277D85DD0];
            v21[1] = 3221225472;
            v21[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_4;
            v21[3] = &unk_2797E7C30;
            v17 = v16;
            v23 = v17;
            v21[4] = self;
            v22 = v10;
            [(INCExtensionConnection *)v14 resumeWithCompletionHandler:v21];

            objc_destroyWeak(&v29);
            objc_destroyWeak(&location);
            _Block_object_dispose(v31, 8);
          }

          else
          {
            v18 = MEMORY[0x277CCA9B8];
            v37 = *MEMORY[0x277CCA450];
            v38 = @"Loading default values from an intent handler requires that the device be unlocked at least once";
            v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
            v20 = [v18 errorWithDomain:@"INCExtensionErrorDomain" code:1310 userInfo:v19];
            (*(handlerCopy + 2))(handlerCopy, 0, v20);
          }

          goto LABEL_13;
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  [(INCIntentDefaultValueProvider *)self loadDefaultValuesWithAttributes:v10 extensionProxy:0 completionHandler:handlerCopy];
LABEL_13:
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) completionHandlingQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_2;
  block[3] = &unk_2797E7BB8;
  v15 = *(a1 + 48);
  objc_copyWeak(&v16, (a1 + 56));
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);

  objc_destroyWeak(&v16);
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_5;
    v7[3] = &unk_2797E8118;
    v8 = *(a1 + 48);
    [v4 loadDefaultValuesWithAttributes:v5 extensionProxy:a2 completionHandler:v7];
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __72__INCIntentDefaultValueProvider_loadDefaultValuesWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained reset];
    (*(*(a1 + 48) + 16))();
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }
}

- (INCIntentDefaultValueProvider)initWithIntent:(id)intent
{
  intentCopy = intent;
  v14.receiver = self;
  v14.super_class = INCIntentDefaultValueProvider;
  v5 = [(INCIntentDefaultValueProvider *)&v14 init];
  if (v5)
  {
    v6 = [intentCopy copy];
    intent = v5->_intent;
    v5->_intent = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_DEFAULT, 0);
    v10 = dispatch_queue_create("com.apple.Intents.IntentDefaultValueProvider.Completion", v9);
    completionHandlingQueue = v5->_completionHandlingQueue;
    v5->_completionHandlingQueue = v10;

    v12 = v5;
  }

  return v5;
}

@end