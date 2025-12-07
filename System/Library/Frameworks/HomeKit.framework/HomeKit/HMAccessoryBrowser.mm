@interface HMAccessoryBrowser
+ (id)logCategory;
- (HMAccessoryBrowser)init;
- (NSArray)discoveredAccessories;
- (id)delegate;
- (void)_fetchNewAccessories;
- (void)_fetchNewAccessoriesWithPrivacyCheck;
- (void)_handleNewAccessoriesFound:(id)found;
- (void)_handleNewAccessoriesRemoved:(id)removed;
- (void)_registerNotificationHandlers;
- (void)_start;
- (void)_startSearchingForNewAccessories;
- (void)_stopSearchingForNewAccessoriesWithError:(id)error;
- (void)_updateNewAccessories:(id)accessories;
- (void)dealloc;
- (void)handleStartWithError:(id)error response:(id)response;
- (void)setDelegate:(id)delegate;
- (void)startSearchingForNewAccessories;
- (void)stopSearchingForNewAccessories;
- (void)stopSearchingForNewAccessoriesWithError:(id)error;
@end

@implementation HMAccessoryBrowser

- (void)_handleNewAccessoriesRemoved:(id)removed
{
  v79 = *MEMORY[0x1E69E9840];
  removedCopy = removed;
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v6 = [removedCopy dataForKey:@"kAccessoriesInfoDataKey"];
    if (v6)
    {
      v7 = MEMORY[0x1E696ACD0];
      v8 = MEMORY[0x1E695DFD8];
      v74[0] = objc_opt_class();
      v74[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:2];
      v10 = [v8 setWithArray:v9];
      v70 = 0;
      v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v70];
      v47 = v70;

      if (v11)
      {
        v44 = v6;
        v45 = context;
        v46 = removedCopy;
        v43 = v11;
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v51 = v13;

        array = [MEMORY[0x1E695DF70] array];
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v69 = 0u;
        selfCopy = self;
        obj = [(HMAccessoryBrowser *)self discoveredAccessories];
        v52 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
        if (v52)
        {
          v50 = *v67;
          do
          {
            for (i = 0; i != v52; i = i + 1)
            {
              if (*v67 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v16 = *(*(&v66 + 1) + 8 * i);
              v62 = 0u;
              v63 = 0u;
              v64 = 0u;
              v65 = 0u;
              v17 = v51;
              v18 = [v17 countByEnumeratingWithState:&v62 objects:v72 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v63;
                do
                {
                  for (j = 0; j != v19; ++j)
                  {
                    if (*v63 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v62 + 1) + 8 * j);
                    uuid = [v16 uuid];
                    uuid2 = [v22 uuid];
                    v25 = [uuid isEqual:uuid2];

                    if (v25)
                    {
                      [array addObject:v16];
                    }
                  }

                  v19 = [v17 countByEnumeratingWithState:&v62 objects:v72 count:16];
                }

                while (v19);
              }
            }

            v52 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
          }

          while (v52);
        }

        accessories = [(HMAccessoryBrowser *)selfCopy accessories];
        [accessories removeObjectsInArray:array];

        delegate = [(HMAccessoryBrowser *)selfCopy delegate];
        if ([array count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v60 = 0u;
          v61 = 0u;
          v58 = 0u;
          v59 = 0u;
          v53 = array;
          v28 = [v53 countByEnumeratingWithState:&v58 objects:v71 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v59;
            do
            {
              for (k = 0; k != v29; ++k)
              {
                if (*v59 != v30)
                {
                  objc_enumerationMutation(v53);
                }

                v32 = *(*(&v58 + 1) + 8 * k);
                context2 = [(HMAccessoryBrowser *)selfCopy context];
                delegateCaller = [context2 delegateCaller];
                v54[0] = MEMORY[0x1E69E9820];
                v54[1] = 3221225472;
                v54[2] = __51__HMAccessoryBrowser__handleNewAccessoriesRemoved___block_invoke;
                v54[3] = &unk_1E754E5E8;
                v55 = delegate;
                v56 = selfCopy;
                v57 = v32;
                [delegateCaller invokeBlock:v54];
              }

              v29 = [v53 countByEnumeratingWithState:&v58 objects:v71 count:16];
            }

            while (v29);
          }
        }

        context = v45;
        removedCopy = v46;
        v11 = v43;
        v6 = v44;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          *buf = 138543618;
          v76 = v42;
          v77 = 2112;
          v78 = v47;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessories from accessories data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
      }
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v76 = v38;
      v77 = 2080;
      v78 = "[HMAccessoryBrowser _handleNewAccessoriesRemoved:]";
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
  }
}

- (void)_handleNewAccessoriesFound:(id)found
{
  v102 = *MEMORY[0x1E69E9840];
  foundCopy = found;
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    selfCopy = self;
    v6 = [foundCopy dataForKey:@"kAccessoriesInfoDataKey"];
    if (v6 && [(HMAccessoryBrowser *)self isBrowsing])
    {
      v7 = MEMORY[0x1E696ACD0];
      v8 = MEMORY[0x1E695DFD8];
      v97[0] = objc_opt_class();
      v97[1] = objc_opt_class();
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v97 count:2];
      v10 = [v8 setWithArray:v9];
      v92 = 0;
      v11 = [v7 unarchivedObjectOfClasses:v10 fromData:v6 error:&v92];
      v59 = v92;

      if (v11)
      {
        v56 = v6;
        v57 = context;
        v58 = foundCopy;
        v55 = v11;
        v12 = v11;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = v13;

        array = [MEMORY[0x1E695DF70] array];
        v62 = v14;
        [array setArray:v14];
        delegate = [(HMAccessoryBrowser *)selfCopy delegate];
        v17 = [delegate conformsToProtocol:&unk_1F0F63660];

        delegate2 = 0;
        if (v17)
        {
          delegate2 = [(HMAccessoryBrowser *)selfCopy delegate];
        }

        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        obj = [(HMAccessoryBrowser *)selfCopy discoveredAccessories];
        v63 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
        if (v63)
        {
          v61 = *v89;
          do
          {
            v18 = 0;
            do
            {
              if (*v89 != v61)
              {
                objc_enumerationMutation(obj);
              }

              v64 = v18;
              v19 = *(*(&v88 + 1) + 8 * v18);
              v84 = 0u;
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v20 = v62;
              v21 = [v20 countByEnumeratingWithState:&v84 objects:v95 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v85;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v85 != v23)
                    {
                      objc_enumerationMutation(v20);
                    }

                    v25 = *(*(&v84 + 1) + 8 * i);
                    uuid = [v19 uuid];
                    uuid2 = [v25 uuid];
                    v28 = [uuid isEqual:uuid2];

                    if (v28)
                    {
                      [v19 _updateFromAccessory:v25];
                      if ([array count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
                      {
                        context2 = [(HMAccessoryBrowser *)selfCopy context];
                        delegateCaller = [context2 delegateCaller];
                        v80[0] = MEMORY[0x1E69E9820];
                        v80[1] = 3221225472;
                        v80[2] = __49__HMAccessoryBrowser__handleNewAccessoriesFound___block_invoke;
                        v80[3] = &unk_1E754E5E8;
                        v81 = delegate2;
                        v82 = selfCopy;
                        v83 = v19;
                        [delegateCaller invokeBlock:v80];
                      }

                      [array removeObject:v25];
                    }
                  }

                  v22 = [v20 countByEnumeratingWithState:&v84 objects:v95 count:16];
                }

                while (v22);
              }

              v18 = v64 + 1;
            }

            while (v64 + 1 != v63);
            v63 = [obj countByEnumeratingWithState:&v88 objects:v96 count:16];
          }

          while (v63);
        }

        accessories = [(HMAccessoryBrowser *)selfCopy accessories];
        [accessories addObjectsFromArray:array];

        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
        v76 = 0u;
        v32 = array;
        v33 = [v32 countByEnumeratingWithState:&v76 objects:v94 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v77;
          do
          {
            for (j = 0; j != v34; ++j)
            {
              if (*v77 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v76 + 1) + 8 * j);
              context3 = [(HMAccessoryBrowser *)selfCopy context];
              [v37 __configureWithContext:context3 home:0];
            }

            v34 = [v32 countByEnumeratingWithState:&v76 objects:v94 count:16];
          }

          while (v34);
        }

        delegate3 = [(HMAccessoryBrowser *)selfCopy delegate];
        if ([v32 count] && -[HMAccessoryBrowser isBrowsing](selfCopy, "isBrowsing") && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v65 = v32;
          v40 = [v65 countByEnumeratingWithState:&v72 objects:v93 count:16];
          if (v40)
          {
            v41 = v40;
            v42 = *v73;
            do
            {
              for (k = 0; k != v41; ++k)
              {
                if (*v73 != v42)
                {
                  objc_enumerationMutation(v65);
                }

                v44 = *(*(&v72 + 1) + 8 * k);
                context4 = [(HMAccessoryBrowser *)selfCopy context];
                delegateCaller2 = [context4 delegateCaller];
                v68[0] = MEMORY[0x1E69E9820];
                v68[1] = 3221225472;
                v68[2] = __49__HMAccessoryBrowser__handleNewAccessoriesFound___block_invoke_2;
                v68[3] = &unk_1E754E5E8;
                v69 = delegate3;
                v70 = selfCopy;
                v71 = v44;
                [delegateCaller2 invokeBlock:v68];
              }

              v41 = [v65 countByEnumeratingWithState:&v72 objects:v93 count:16];
            }

            while (v41);
          }
        }

        context = v57;
        foundCopy = v58;
        v11 = v55;
        v6 = v56;
      }

      else
      {
        v51 = objc_autoreleasePoolPush();
        v52 = selfCopy;
        v53 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v54 = HMFGetLogIdentifier();
          *buf = 138543618;
          v99 = v54;
          v100 = 2112;
          v101 = v59;
          _os_log_impl(&dword_19BB39000, v53, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessories from accessories data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v51);
      }
    }
  }

  else
  {
    v47 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = HMFGetLogIdentifier();
      *buf = 138543618;
      v99 = v50;
      v100 = 2080;
      v101 = "[HMAccessoryBrowser _handleNewAccessoriesFound:]";
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v47);
  }
}

- (void)_registerNotificationHandlers
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    context2 = [(HMAccessoryBrowser *)self context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher registerForMessage:@"kNewAccessoriesFoundNotificationKey" receiver:self selector:sel__handleNewAccessoriesFound_];

    context3 = [(HMAccessoryBrowser *)self context];
    messageDispatcher2 = [context3 messageDispatcher];
    [messageDispatcher2 registerForMessage:@"kNewAccessoriesRemovedNotificationKey" receiver:self selector:sel__handleNewAccessoriesRemoved_];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = 138543618;
      v13 = v11;
      v14 = 2080;
      v15 = "[HMAccessoryBrowser _registerNotificationHandlers]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", &v12, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)_updateNewAccessories:(id)accessories
{
  v84 = *MEMORY[0x1E69E9840];
  accessoriesCopy = accessories;
  delegate = [(HMAccessoryBrowser *)self delegate];
  v5 = objc_opt_new();
  obj = objc_opt_new();
  v50 = objc_opt_new();
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  discoveredAccessories = [(HMAccessoryBrowser *)self discoveredAccessories];
  v7 = [discoveredAccessories countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v76;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v76 != v9)
        {
          objc_enumerationMutation(discoveredAccessories);
        }

        v11 = *(*(&v75 + 1) + 8 * i);
        uniqueIdentifier = [v11 uniqueIdentifier];
        v13 = [accessoriesCopy hmf_firstObjectWithUniqueIdentifier:uniqueIdentifier];

        if (v13)
        {
          v14 = v5;
        }

        else
        {
          v14 = v50;
        }

        [v14 addObject:v11];
      }

      v8 = [discoveredAccessories countByEnumeratingWithState:&v75 objects:v83 count:16];
    }

    while (v8);
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v15 = accessoriesCopy;
  v16 = [v15 countByEnumeratingWithState:&v71 objects:v82 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v72;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v72 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v71 + 1) + 8 * j);
        uniqueIdentifier2 = [v20 uniqueIdentifier];
        v22 = [v5 hmf_firstObjectWithUniqueIdentifier:uniqueIdentifier2];

        if (!v22)
        {
          [obj addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v71 objects:v82 count:16];
    }

    while (v17);
  }

  v45 = v15;

  [v5 addObjectsFromArray:obj];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v23 = obj;
  v24 = [v23 countByEnumeratingWithState:&v67 objects:v81 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v68;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v68 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v67 + 1) + 8 * k);
        context = [(HMAccessoryBrowser *)self context];
        [v28 __configureWithContext:context home:0];
      }

      v25 = [v23 countByEnumeratingWithState:&v67 objects:v81 count:16];
    }

    while (v25);
  }

  accessories = [(HMAccessoryBrowser *)self accessories];
  [accessories setArray:v5];

  if (delegate && [(HMAccessoryBrowser *)self isBrowsing])
  {
    if (objc_opt_respondsToSelector())
    {
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      obja = v50;
      v31 = [obja countByEnumeratingWithState:&v63 objects:v80 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v64;
        do
        {
          for (m = 0; m != v32; ++m)
          {
            if (*v64 != v33)
            {
              objc_enumerationMutation(obja);
            }

            v35 = *(*(&v63 + 1) + 8 * m);
            context2 = [(HMAccessoryBrowser *)self context];
            delegateCaller = [context2 delegateCaller];
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __44__HMAccessoryBrowser__updateNewAccessories___block_invoke;
            v59[3] = &unk_1E754E5E8;
            v60 = delegate;
            selfCopy = self;
            v62 = v35;
            [delegateCaller invokeBlock:v59];
          }

          v32 = [obja countByEnumeratingWithState:&v63 objects:v80 count:16];
        }

        while (v32);
      }
    }

    if (objc_opt_respondsToSelector())
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      objb = v23;
      v38 = [objb countByEnumeratingWithState:&v55 objects:v79 count:16];
      if (v38)
      {
        v39 = v38;
        v40 = *v56;
        do
        {
          for (n = 0; n != v39; ++n)
          {
            if (*v56 != v40)
            {
              objc_enumerationMutation(objb);
            }

            v42 = *(*(&v55 + 1) + 8 * n);
            context3 = [(HMAccessoryBrowser *)self context];
            delegateCaller2 = [context3 delegateCaller];
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __44__HMAccessoryBrowser__updateNewAccessories___block_invoke_2;
            v51[3] = &unk_1E754E5E8;
            v52 = delegate;
            selfCopy2 = self;
            v54 = v42;
            [delegateCaller2 invokeBlock:v51];
          }

          v39 = [objb countByEnumeratingWithState:&v55 objects:v79 count:16];
        }

        while (v39);
      }
    }
  }
}

- (void)_fetchNewAccessories
{
  v23 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessoryBrowser *)self uuid];
    v6 = [v4 initWithTarget:uuid];

    v7 = MEMORY[0x1E69A2A10];
    v18 = @"kConfigGenerationCounterKey";
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessoryBrowser generationCounter](self, "generationCounter")}];
    v19 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [v7 messageWithName:@"kFetchNewAccessoriesRequestKey" destination:v6 payload:v9];

    objc_initWeak(location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __42__HMAccessoryBrowser__fetchNewAccessories__block_invoke;
    v16[3] = &unk_1E754CD70;
    objc_copyWeak(&v17, location);
    [v10 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v10];

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v15;
      v21 = 2080;
      v22 = "[HMAccessoryBrowser _fetchNewAccessories]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __42__HMAccessoryBrowser__fetchNewAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (!v5 && v6)
    {
      v9 = [v6 hmf_numberForKey:@"kConfigGenerationCounterKey"];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_19;
      }

      v11 = [v9 unsignedIntegerValue];
      if (v11 == [v8 generationCounter])
      {
        goto LABEL_19;
      }

      [v8 setGenerationCounter:{objc_msgSend(v10, "unsignedIntegerValue")}];
      v12 = [v6 hmf_dataForKey:@"kAccessoriesInfoDataKey"];
      if (v12)
      {
        v13 = MEMORY[0x1E695DFD8];
        v31[0] = objc_opt_class();
        v31[1] = objc_opt_class();
        v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
        v15 = [v13 setWithArray:v14];

        v26 = 0;
        v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v15 fromData:v12 error:&v26];
        v17 = v26;
        if (!v16)
        {
          v21 = objc_autoreleasePoolPush();
          v22 = v8;
          v23 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v24 = v25 = v21;
            *buf = 138543618;
            v28 = v24;
            v29 = 2112;
            v30 = v17;
            _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory from accessory data: %@", buf, 0x16u);

            v21 = v25;
          }

          objc_autoreleasePoolPop(v21);
          goto LABEL_18;
        }

        v18 = v16;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = v18;
        }

        else
        {
          v19 = 0;
        }

        v20 = v19;

        v17 = v20;
      }

      else
      {
        v17 = 0;
      }

      [v8 _updateNewAccessories:v17];
LABEL_18:

LABEL_19:
      goto LABEL_20;
    }

    [WeakRetained _updateNewAccessories:0];
  }

LABEL_20:
}

- (void)_fetchNewAccessoriesWithPrivacyCheck
{
  v14 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    objc_initWeak(location, self);
    queue = [context queue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __58__HMAccessoryBrowser__fetchNewAccessoriesWithPrivacyCheck__block_invoke;
    v9[3] = &unk_1E754BCB8;
    objc_copyWeak(&v10, location);
    __HMPrivacyRequestAccessForService(*MEMORY[0x1E69D5620], queue, v9);

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v8;
      v12 = 2080;
      v13 = "[HMAccessoryBrowser _fetchNewAccessoriesWithPrivacyCheck]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void __58__HMAccessoryBrowser__fetchNewAccessoriesWithPrivacyCheck__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fetchNewAccessories];
}

- (void)_start
{
  v14 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    [(HMAccessoryBrowser *)self _registerNotificationHandlers];
    objc_initWeak(location, self);
    xpcClient = [context xpcClient];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __28__HMAccessoryBrowser__start__block_invoke;
    v9[3] = &unk_1E754E540;
    objc_copyWeak(&v10, location);
    [xpcClient registerReconnectionHandler:v9];

    objc_destroyWeak(&v10);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v8;
      v12 = 2080;
      v13 = "[HMAccessoryBrowser _start]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }
}

void __28__HMAccessoryBrowser__start__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setGenerationCounter:-1];
  if ([WeakRetained isBrowsing])
  {
    [WeakRetained _startSearchingForNewAccessories];
  }

  else
  {
    [WeakRetained _stopSearchingForNewAccessoriesWithError:0];
  }
}

- (void)_stopSearchingForNewAccessoriesWithError:(id)error
{
  v34 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  context = [(HMAccessoryBrowser *)self context];
  if (!context)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v32 = 2080;
      v33 = "[HMAccessoryBrowser _stopSearchingForNewAccessoriesWithError:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    goto LABEL_13;
  }

  if (![(HMAccessoryBrowser *)self isBrowsing])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v22;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Asked to stop searching for new accessories but we are not currently browsing", location, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v18);
    goto LABEL_14;
  }

  v6 = MEMORY[0x1E695DF90];
  v29 = @"kStartSearch";
  v30 = MEMORY[0x1E695E110];
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v8 = [v6 dictionaryWithDictionary:v7];

  if (errorCopy)
  {
    v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:errorCopy requiringSecureCoding:1 error:0];
    if (v9)
    {
      [v8 setObject:v9 forKeyedSubscript:@"kStopSearchReason"];
    }
  }

  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  uuid = [(HMAccessoryBrowser *)self uuid];
  v12 = [v10 initWithTarget:uuid];

  v13 = MEMORY[0x1E69A2A10];
  v14 = [v8 copy];
  v15 = [v13 messageWithName:@"kSearchForNewAccessoriesRequestKey" destination:v12 payload:v14];

  objc_initWeak(location, self);
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke;
  v26 = &unk_1E754BC90;
  objc_copyWeak(&v28, location);
  v16 = context;
  v27 = v16;
  [v15 setResponseHandler:&v23];
  messageDispatcher = [v16 messageDispatcher];
  [messageDispatcher sendMessage:v15];

  objc_destroyWeak(&v28);
  objc_destroyWeak(location);

LABEL_14:
}

void __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke_2;
    block[3] = &unk_1E754E2A8;
    block[4] = WeakRetained;
    dispatch_async(v3, block);
  }
}

uint64_t __63__HMAccessoryBrowser__stopSearchingForNewAccessoriesWithError___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) accessories];
  [v2 removeAllObjects];

  v3 = *(a1 + 32);
  v4 = [v3 discoveredAccessories];
  [v3 _updateNewAccessories:v4];

  [*(a1 + 32) setBrowsing:0];
  v5 = *(a1 + 32);

  return [v5 setGenerationCounter:-1];
}

- (void)stopSearchingForNewAccessoriesWithError:(id)error
{
  v18 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  context = [(HMAccessoryBrowser *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__HMAccessoryBrowser_stopSearchingForNewAccessoriesWithError___block_invoke;
    v12[3] = &unk_1E754E5C0;
    v12[4] = self;
    v13 = errorCopy;
    dispatch_async(queue, v12);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v11;
      v16 = 2080;
      v17 = "[HMAccessoryBrowser stopSearchingForNewAccessoriesWithError:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }
}

- (void)stopSearchingForNewAccessories
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Asked to stop searching for new accessories", &v7, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMAccessoryBrowser *)selfCopy stopSearchingForNewAccessoriesWithError:0];
}

- (void)handleStartWithError:(id)error response:(id)response
{
  v23 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  responseCopy = response;
  context = [(HMAccessoryBrowser *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMAccessoryBrowser_handleStartWithError_response___block_invoke;
    block[3] = &unk_1E754E5E8;
    v16 = errorCopy;
    v17 = responseCopy;
    selfCopy = self;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v14;
      v21 = 2080;
      v22 = "[HMAccessoryBrowser handleStartWithError:response:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __52__HMAccessoryBrowser_handleStartWithError_response___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
    v2 = [*(a1 + 40) hmf_dataForKey:@"kIdentifierSaltKey"];
    if (v2)
    {
      [MEMORY[0x1E696AFB0] hm_setIdentifierSalt:v2];
      [*(a1 + 48) setBrowsing:1];
      [*(a1 + 48) _fetchNewAccessoriesWithPrivacyCheck];
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 48);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = HMFGetLogIdentifier();
        v7 = 138543362;
        v8 = v6;
        _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_ERROR, "%{public}@Missing identifier salt, failed to start browse", &v7, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
    }
  }
}

- (void)_startSearchingForNewAccessories
{
  v22 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  if (context)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessoryBrowser *)self uuid];
    v6 = [v4 initWithTarget:uuid];

    v7 = MEMORY[0x1E69A2A10];
    v17 = @"kStartSearch";
    v18 = MEMORY[0x1E695E118];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v9 = [v7 messageWithName:@"kSearchForNewAccessoriesRequestKey" destination:v6 payload:v8];

    objc_initWeak(location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__HMAccessoryBrowser__startSearchingForNewAccessories__block_invoke;
    v15[3] = &unk_1E754CD70;
    objc_copyWeak(&v16, location);
    [v9 setResponseHandler:v15];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];

    objc_destroyWeak(&v16);
    objc_destroyWeak(location);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v14;
      v20 = 2080;
      v21 = "[HMAccessoryBrowser _startSearchingForNewAccessories]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void __54__HMAccessoryBrowser__startSearchingForNewAccessories__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleStartWithError:v6 response:v5];
}

- (void)startSearchingForNewAccessories
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMAccessoryBrowser *)self context];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Asked to start searching for new accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMAccessoryBrowser_startSearchingForNewAccessories__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v10;
      v14 = 2080;
      v15 = "[HMAccessoryBrowser startSearchingForNewAccessories]";
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (NSArray)discoveredAccessories
{
  accessories = [(HMAccessoryBrowser *)self accessories];
  array = [accessories array];

  return array;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)dealloc
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Deallocating HMAccessoryBrowser", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  array = [(HMMutableArray *)selfCopy->_accessories array];
  queue = [(_HMContext *)selfCopy->_context queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __29__HMAccessoryBrowser_dealloc__block_invoke;
  block[3] = &unk_1E754E2A8;
  v12 = array;
  v9 = array;
  dispatch_async(queue, block);

  v10.receiver = selfCopy;
  v10.super_class = HMAccessoryBrowser;
  [(HMAccessoryBrowser *)&v10 dealloc];
}

void __29__HMAccessoryBrowser_dealloc__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v6 + 1) + 8 * v5++) _unconfigure];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

- (HMAccessoryBrowser)init
{
  v11.receiver = self;
  v11.super_class = HMAccessoryBrowser;
  v2 = [(HMAccessoryBrowser *)&v11 init];
  if (v2)
  {
    v3 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.AccessoryBrowser"];
    context = v2->_context;
    v2->_context = v3;

    if (initializeMappingsAndPaths_pred != -1)
    {
      dispatch_once(&initializeMappingsAndPaths_pred, &__block_literal_global_25877);
    }

    v5 = +[HMMutableArray array];
    accessories = v2->_accessories;
    v2->_accessories = v5;

    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"BF2B0921-858B-42F5-B2EB-C915FB953E5B"];
    v8 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v7];
    uuid = v2->_uuid;
    v2->_uuid = v8;

    v2->_generationCounter = -1;
    v2->_browsing = 0;
    [(HMAccessoryBrowser *)v2 _start];
  }

  return v2;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t24_41578 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t24_41578, &__block_literal_global_41579);
  }

  v3 = logCategory__hmf_once_v25_41580;

  return v3;
}

uint64_t __33__HMAccessoryBrowser_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v25_41580;
  logCategory__hmf_once_v25_41580 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end