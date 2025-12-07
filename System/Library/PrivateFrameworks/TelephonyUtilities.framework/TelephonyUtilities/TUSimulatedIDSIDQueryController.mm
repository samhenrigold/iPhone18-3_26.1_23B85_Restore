@interface TUSimulatedIDSIDQueryController
- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block;
@end

@implementation TUSimulatedIDSIDQueryController

- (BOOL)currentIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v11 = _validDictionaryForDestinations(destinations);
  (*(block + 2))(blockCopy, v11);

  return 1;
}

- (BOOL)refreshIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v11 = _validDictionaryForDestinations(destinations);
  (*(block + 2))(blockCopy, v11);

  return 1;
}

- (BOOL)requiredIDStatusForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  v11 = _validDictionaryForDestinations(destinations);
  (*(block + 2))(blockCopy, v11);

  return 1;
}

- (BOOL)currentRemoteDevicesForDestinations:(id)destinations service:(id)service preferredFromID:(id)d listenerID:(id)iD queue:(id)queue completionBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  destinationsCopy = destinations;
  blockCopy = block;
  v30 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(destinationsCopy, "count")}];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = destinationsCopy;
  v10 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
  if (v10)
  {
    v11 = v10;
    v29 = *v32;
    v28 = *MEMORY[0x1E69A5070];
    do
    {
      v12 = 0;
      do
      {
        if (*v32 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v31 + 1) + 8 * v12);
        v14 = [objc_alloc(MEMORY[0x1E69A5428]) initWithPrefixedURI:v13];
        v15 = objc_alloc(MEMORY[0x1E69A5248]);
        v16 = [@"push-token" dataUsingEncoding:4];
        data = [MEMORY[0x1E695DEF0] data];
        date = [MEMORY[0x1E695DF00] date];
        date2 = [MEMORY[0x1E695DF00] date];
        v20 = [v15 initWithURI:v14 clientData:MEMORY[0x1E695E0F8] pushToken:v16 sessionToken:data expireDate:date refreshDate:date2];

        v21 = objc_alloc(MEMORY[0x1E69A5250]);
        v36 = v28;
        v37 = &unk_1F09C5E60;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
        v23 = [v21 initWithCapabilitiesMap:v22];

        [v20 setValue:v23 forKey:@"_capabilities"];
        v35 = v20;
        v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
        [v30 setObject:v24 forKeyedSubscript:v13];

        ++v12;
      }

      while (v11 != v12);
      v11 = [obj countByEnumeratingWithState:&v31 objects:v38 count:16];
    }

    while (v11);
  }

  blockCopy[2](blockCopy, v30);
  return 1;
}

@end