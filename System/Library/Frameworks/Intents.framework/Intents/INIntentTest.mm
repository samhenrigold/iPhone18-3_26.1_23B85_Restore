@interface INIntentTest
+ (id)executeIntent:(id)intent withHandler:(id)handler;
@end

@implementation INIntentTest

+ (id)executeIntent:(id)intent withHandler:(id)handler
{
  v110 = *MEMORY[0x1E69E9840];
  intentCopy = intent;
  handlerCopy = handler;
  v44 = intentCopy;
  NSLog(@"Testing intent:%@ on handler: %@", intentCopy, handlerCopy);
  v6 = [[DummyHandlerProvider alloc] initWithHandler:handlerCopy];
  v7 = [_INExtensionContext alloc];
  v40 = v6;
  v43 = [(_INExtensionContext *)v7 initWithInputItems:MEMORY[0x1E695E0F0] privateIntentHandlerProvider:v6];
  v8 = dispatch_semaphore_create(0);
  identifier = [v44 identifier];
  v107[0] = MEMORY[0x1E69E9820];
  v107[1] = 3221225472;
  v107[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke;
  v107[3] = &unk_1E72882F8;
  v10 = v8;
  v108 = v10;
  [(_INExtensionContext *)v43 beginTransactionWithIntentIdentifier:identifier completion:v107];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  _intentInstanceDescription = [v44 _intentInstanceDescription];
  LOBYTE(v6) = [v44 _type] == 2;
  slotDescriptions = [_intentInstanceDescription slotDescriptions];
  v12 = slotDescriptions;
  if ((v6 & 1) == 0)
  {
    v13 = [slotDescriptions sortedArrayUsingComparator:&__block_literal_global_20853];

    v12 = v13;
  }

  array = [MEMORY[0x1E695DF70] array];
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v103 objects:v109 count:16];
  if (v16)
  {
    v17 = *v104;
    do
    {
      v18 = 0;
      do
      {
        if (*v104 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v103 + 1) + 8 * v18);
        if (![v19 isPrivate])
        {
          goto LABEL_12;
        }

        if (INIsInternalInstall_onceToken != -1)
        {
          dispatch_once(&INIsInternalInstall_onceToken, &__block_literal_global_227);
        }

        if (INIsInternalInstall_isInternal == 1)
        {
LABEL_12:
          name = [v19 name];
          [array addObject:name];
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v103 objects:v109 count:16];
    }

    while (v16);
  }

  NSLog(@"    Resolving parameters: %@", array);
  NSLog(@"    Executing slot resolution...");
  v99 = 0;
  v100 = &v99;
  v101 = 0x2020000000;
  v102 = 0;
  v93 = 0;
  v94 = &v93;
  v95 = 0x3032000000;
  v96 = __Block_byref_object_copy__20857;
  v97 = __Block_byref_object_dispose__20858;
  v98 = 0;
  v87 = 0;
  v88 = &v87;
  v89 = 0x3032000000;
  v90 = __Block_byref_object_copy__20857;
  v91 = __Block_byref_object_dispose__20858;
  v92 = 0;
  v21 = dispatch_semaphore_create(0);

  v22 = [v44 copy];
  v82[0] = MEMORY[0x1E69E9820];
  v82[1] = 3221225472;
  v82[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_80;
  v82[3] = &unk_1E727F4B0;
  v84 = &v99;
  v85 = &v93;
  v86 = &v87;
  v23 = v21;
  v83 = v23;
  [(_INExtensionContext *)v43 resolveIntentSlots:array forIntent:v22 completionBlock:v82];

  dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
  NSLog(@"    Updated intent:%@", v94[5]);
  v24 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v88[5], "count")}];
  v25 = v88[5];
  v79[0] = MEMORY[0x1E69E9820];
  v79[1] = 3221225472;
  v79[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_2_95;
  v79[3] = &unk_1E727F4D8;
  v81 = &v93;
  v26 = v24;
  v80 = v26;
  [v25 enumerateKeysAndObjectsUsingBlock:v79];
  if ((v100[3] & 1) == 0)
  {
    [v26 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_100];
  }

  v27 = [v94[5] copy];
  v73 = 0;
  v74 = &v73;
  v75 = 0x3032000000;
  v76 = __Block_byref_object_copy__20857;
  v77 = __Block_byref_object_dispose__20858;
  v78 = 0;
  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__20857;
  v71 = __Block_byref_object_dispose__20858;
  v72 = 0;
  if (*(v100 + 24) == 1)
  {
    v28 = dispatch_semaphore_create(0);

    v63[0] = MEMORY[0x1E69E9820];
    v63[1] = 3221225472;
    v63[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_4;
    v63[3] = &unk_1E727F520;
    v65 = &v73;
    v66 = &v67;
    v23 = v28;
    v64 = v23;
    [(_INExtensionContext *)v43 confirmIntent:v27 withCompletion:v63];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    NSLog(@"    Confirmation response:%@ with error: %@", v74[5], v68[5]);
  }

  else
  {
    NSLog(@"    Skipping confirmation as parameter resolution was not successful");
  }

  v29 = v68[5];
  if (v29)
  {
    [MEMORY[0x1E695DF30] raise:@"Unexpected exception confirming Intent" format:{@"Encountered error confirming intent: %@, error: %@", v27, v29}];
  }

  v30 = [v94[5] copy];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__20857;
  v61 = __Block_byref_object_dispose__20858;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__20857;
  v55 = __Block_byref_object_dispose__20858;
  v56 = 0;
  v31 = v74[5];
  if (v31 && [v31 _intentResponseCode] == 1)
  {
    v32 = dispatch_semaphore_create(0);

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_5;
    v47[3] = &unk_1E727F520;
    v49 = &v57;
    v50 = &v51;
    v23 = v32;
    v48 = v23;
    [(_INExtensionContext *)v43 handleIntent:v30 withCompletion:v47];
    dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    NSLog(@"    Handle response:%@ with error: %@", v58[5], v52[5]);
  }

  else
  {
    NSLog(@"    Skipping handle as confirmation was not run or was not successful");
  }

  v33 = v52[5];
  if (v33)
  {
    [MEMORY[0x1E695DF30] raise:@"Unexpected exception handling Intent" format:{@"Encountered error handling intent: %@, error: %@", v30, v33}];
  }

  v34 = dispatch_semaphore_create(0);

  identifier2 = [v44 identifier];
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __42__INIntentTest_executeIntent_withHandler___block_invoke_6;
  v45[3] = &unk_1E72882F8;
  v36 = v34;
  v46 = v36;
  [(_INExtensionContext *)v43 completeTransactionWithIntentIdentifier:identifier2 completion:v45];

  dispatch_semaphore_wait(v36, 0xFFFFFFFFFFFFFFFFLL);
  v37 = [INIntentTestResult alloc];
  v38 = [(INIntentTestResult *)v37 initWithResolvedIntent:v94[5] resolvedParameters:v26 resolvedAllParametersSuccesfully:*(v100 + 24) confirmResponse:v74[5] handleResponse:v58[5]];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v73, 8);

  _Block_object_dispose(&v87, 8);
  _Block_object_dispose(&v93, 8);

  _Block_object_dispose(&v99, 8);

  return v38;
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_80(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = @"NO";
  if (a2)
  {
    v9 = @"YES";
  }

  NSLog(@"    Slot resolution success:%@", v9);
  *(*(*(a1 + 40) + 8) + 24) = a2;
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
  v15 = v7;

  v12 = *(*(a1 + 56) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v8;
  v14 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_2_95(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[INIntentTestResolvedParameter alloc] initWithParameter:v6 forIntent:*(*(*(a1 + 40) + 8) + 40) extensionContextResolutionResult:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_5(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;
  v14 = v7;

  v11 = *(*(a1 + 48) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v8;
  v13 = v8;

  dispatch_semaphore_signal(*(a1 + 32));
}

void __42__INIntentTest_executeIntent_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v4 = a3;
  v5 = [v4 extensionContextResolutionResult];
  if ([v5 result] == 1)
  {
    v6 = [v4 results];

    if (!v6)
    {
      [MEMORY[0x1E695DF30] raise:@"Unexpected exception resolving parameter" format:{@"Encountered error resolving parameter: %@", v7}];
    }
  }

  else
  {
  }
}

uint64_t __42__INIntentTest_executeIntent_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rank];
  v6 = [v4 rank];

  v7 = [v5 compare:v6];
  return v7;
}

@end