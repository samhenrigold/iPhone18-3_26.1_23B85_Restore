@interface VMUScanOverlay
+ (id)defaultOverlayWithScanner:(id)scanner;
- (VMUScanOverlay)initWithScanner:(id)scanner;
- (void)addMetadataRefinementRule:(id)rule;
@end

@implementation VMUScanOverlay

+ (id)defaultOverlayWithScanner:(id)scanner
{
  scannerCopy = scanner;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__VMUScanOverlay_defaultOverlayWithScanner___block_invoke;
  block[3] = &unk_1E8278288;
  v10 = scannerCopy;
  v4 = defaultOverlayWithScanner__onceToken;
  v5 = scannerCopy;
  if (v4 != -1)
  {
    dispatch_once(&defaultOverlayWithScanner__onceToken, block);
  }

  v6 = defaultOverlayWithScanner__s_defaultOverlay;
  v7 = defaultOverlayWithScanner__s_defaultOverlay;

  return v6;
}

void __44__VMUScanOverlay_defaultOverlayWithScanner___block_invoke(uint64_t a1)
{
  v1 = [[VMUScanOverlay alloc] initWithScanner:*(a1 + 32)];
  v2 = defaultOverlayWithScanner__s_defaultOverlay;
  defaultOverlayWithScanner__s_defaultOverlay = v1;
}

- (VMUScanOverlay)initWithScanner:(id)scanner
{
  scannerCopy = scanner;
  if (getenv("DT_NO_SCAN_OVERLAY"))
  {
    selfCopy = 0;
  }

  else
  {
    v48.receiver = self;
    v48.super_class = VMUScanOverlay;
    v6 = [(VMUScanOverlay *)&v48 init];
    if (v6)
    {
      v7 = objc_opt_new();
      rules = v6->_rules;
      v6->_rules = v7;

      v9 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4638A70];
      v10 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F4638A88];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __34__VMUScanOverlay_initWithScanner___block_invoke;
      aBlock[3] = &unk_1E8278300;
      v11 = v9;
      v45 = v11;
      v46 = v10;
      v47 = &unk_1F4638AA0;
      v12 = v10;
      v13 = _Block_copy(aBlock);
      v14 = [v11 setByAddingObject:@"libswiftCore.dylib"];
      objectIdentifier = [scannerCopy objectIdentifier];
      swiftRuntimeInfoStableABI = [objectIdentifier swiftRuntimeInfoStableABI];
      v17 = swiftRuntimeInfoStableABI;
      if (swiftRuntimeInfoStableABI)
      {
        swiftRuntimeInfoPreABI = swiftRuntimeInfoStableABI;
      }

      else
      {
        objectIdentifier2 = [scannerCopy objectIdentifier];
        swiftRuntimeInfoPreABI = [objectIdentifier2 swiftRuntimeInfoPreABI];
      }

      swiftRuntimeInfoStableABI2 = [objectIdentifier swiftRuntimeInfoStableABI];
      if (swiftRuntimeInfoStableABI2)
      {
        [scannerCopy objectIdentifier];
        v36 = objectIdentifier;
        v21 = scannerCopy;
        v22 = swiftRuntimeInfoPreABI;
        v23 = v6;
        v24 = v14;
        v25 = v13;
        v26 = v11;
        v28 = v27 = v12;
        swiftRuntimeInfoPreABI2 = [v28 swiftRuntimeInfoPreABI];

        v12 = v27;
        v11 = v26;
        v13 = v25;
        v14 = v24;
        v6 = v23;
        swiftRuntimeInfoPreABI = v22;
        scannerCopy = v21;
        objectIdentifier = v36;
      }

      else
      {
        swiftRuntimeInfoPreABI2 = 0;
      }

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_4;
      v37[3] = &unk_1E82783B0;
      v38 = &unk_1F4638B30;
      v39 = objectIdentifier;
      v40 = swiftRuntimeInfoPreABI;
      v41 = swiftRuntimeInfoPreABI2;
      v42 = v14;
      v43 = v13;
      v30 = v13;
      v31 = v14;
      v32 = swiftRuntimeInfoPreABI2;
      v33 = swiftRuntimeInfoPreABI;
      v34 = objectIdentifier;
      [(VMUScanOverlay *)v6 addMetadataRefinementRule:v37];
    }

    self = v6;
    selfCopy = self;
  }

  return selfCopy;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 binaryName];
  v6 = [v3 className];
  if (v5)
  {
    v7 = *(a1 + 32);
    v8 = [v3 binaryName];
    LODWORD(v7) = [v7 containsObject:v8];

    if (v7)
    {
      if (v6 && ([*(a1 + 40) containsObject:v6] & 1) == 0)
      {
        v9 = [v3 pointerSize];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_2;
        v10[3] = &unk_1E82782D8;
        v11 = *(a1 + 48);
        v12 = v3;
        v13 = v9;
        [v12 mutateTypeFieldsWithBlock:v10];
      }
    }
  }

  objc_autoreleasePoolPop(v4);
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * v8);
        v10 = [v3 ivarName];
        LODWORD(v9) = [v10 isEqualToString:v9];

        if (v9)
        {
          v11 = [v3 mutableCopy];
          [v11 setScanType:4];
          v12 = *(a1 + 40);
          v15[0] = MEMORY[0x1E69E9820];
          v15[1] = 3221225472;
          v15[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_3;
          v15[3] = &unk_1E82782B0;
          v16 = v3;
          v17 = *(a1 + 48);
          [v12 addVariant:v11 forField:v16 withEvaluator:v15];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v13 = [v3 ivarName];
  if (![v13 isEqualToString:@"_bytes"])
  {
    goto LABEL_13;
  }

  v14 = [v3 scanType];

  if (v14 == 1)
  {
    v13 = _makeStorageFieldClassInfo(*(a1 + 40), @" (Bytes Storage)");
    [v13 setDefaultScanType:1];
    [v3 setDestinationLayout:v13];
LABEL_13:
  }
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  [*(a1 + 32) offset];
  LODWORD(a1) = *(a1 + 40);
  v8 = v7;
  v9 = v8[2];
  if (a1 == 8)
  {
    v10 = v9();
    if (v10)
    {
      v11 = *v10;
      goto LABEL_7;
    }
  }

  else
  {
    v12 = v9();
    if (v12)
    {
      v11 = *v12;
      goto LABEL_7;
    }
  }

  v11 = 0;
LABEL_7:

  if (v11)
  {
    v13 = [v6 classInfoForObjectAtAddress:v11];
    v14 = [v13 className];

    v11 = [v14 isEqualToString:@"NSWeakObjectValue"] ^ 1;
  }

  return v11;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_4(uint64_t a1, void *a2)
{
  v151[3] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 infoType] == 1 || objc_msgSend(v3, "infoType") == 8 || objc_msgSend(v3, "infoType") == 64 || objc_msgSend(v3, "infoType") == 128)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = [v3 className];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = &stru_1F461F9C8;
    }

    v9 = [v5 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v3 setDisplayName:v9];
    }

    if ([v3 infoType] == 8 || objc_msgSend(v3, "infoType") == 64 || _isSwiftRootClass(v3))
    {
      v10 = [v3 className];
      if ([v10 hasPrefix:@"__"])
      {
        v11 = [v3 binaryPath];
        v12 = [v11 hasSuffix:@"libswiftCore.dylib"];

        if (v12)
        {
          v13 = 2;
          goto LABEL_20;
        }
      }

      else
      {
      }

      v14 = [*(a1 + 40) vmuTask];
      if (![v14 isExclaveCore])
      {
LABEL_21:

        goto LABEL_22;
      }

      v15 = [v3 className];
      v16 = [v15 hasPrefix:@"Swift.__"];

      if (!v16)
      {
LABEL_22:
        v20 = *(a1 + 48);
        v19 = *(a1 + 56);
        v21 = *(a1 + 40);
        objc_initWeak(&location, v3);
        v22 = v20;
        v23 = v19;
        objc_initWeak(&from, v21);
        v24 = objc_loadWeakRetained(&location);
        LODWORD(v20) = _isSwiftRootClass(v24);

        v25 = objc_loadWeakRetained(&location);
        v140 = MEMORY[0x1E69E9820];
        v141 = 3221225472;
        if (v20)
        {
          v142 = ___variantForSwiftClass_block_invoke;
          v143 = &unk_1E82783D8;
          objc_copyWeak(&v145, &location);
          v144 = v22;
          [v25 mutateTypeFieldsWithBlock:&v140];

          objc_destroyWeak(&v145);
        }

        else
        {
          v142 = ___variantForSwiftClass_block_invoke_2;
          v143 = &unk_1E82784A0;
          v144 = v22;
          objc_copyWeak(&v146, &location);
          v145 = v23;
          objc_copyWeak(&v147, &from);
          [v25 mutateTypeFieldsRecursivelyWithBlock:&v140];

          objc_destroyWeak(&v147);
          objc_destroyWeak(&v146);
        }

        objc_destroyWeak(&from);

        objc_destroyWeak(&location);
        goto LABEL_26;
      }

      v13 = 8;
LABEL_20:
      v14 = [v3 className];
      v17 = [v14 substringFromIndex:v13];
      v18 = [@"Swift." stringByAppendingString:v17];
      [v3 setDisplayName:v18];

      goto LABEL_21;
    }

    if ([*(a1 + 40) taskIsDriverKit] && objc_msgSend(v3, "infoType") == 128)
    {
      goto LABEL_26;
    }

    determineOSClassInstanceSize(v3, 1);
    if ([v3 isARR])
    {
      goto LABEL_26;
    }

    v26 = *(a1 + 64);
    v27 = [v3 binaryName];
    LODWORD(v26) = [v26 containsObject:v27];

    if (!v26)
    {
      goto LABEL_26;
    }

    v28 = [v3 className];
    v29 = [v28 isEqualToString:@"_CFXNotificationRegistrationContainer"];

    if (v29)
    {
      v30 = [v3 pointerSize];
      v31 = [v3 firstFieldWithName:@"_children"];
      if (v31)
      {
        v32 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.elements", @"^v", 2, [v31 offset], v30);
        v33 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.singleChildKey", @"^v", 1, [v31 offset] + v30, v30);
        v34 = -[VMUFieldInfo initWithName:type:scan:offset:size:]([VMUMutableFieldInfo alloc], "initWithName:type:scan:offset:size:", @"_children.callbacks", @"^v", 2, [v31 offset] + 2 * v30, v30);
        v151[0] = v32;
        v151[1] = v33;
        v151[2] = v34;
        v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v151 count:3];
        [v3 replaceField:v31 withFields:v35];

        v36 = [(VMUFieldInfo *)v33 mutableCopy];
        [v36 setScanType:4];
        v37 = [(VMUFieldInfo *)v34 offset];
        v137[0] = MEMORY[0x1E69E9820];
        v137[1] = 3221225472;
        v137[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_5;
        v137[3] = &__block_descriptor_40_e45_B32__0Q8__VMUTaskMemoryScanner_16____v__QQ_24l;
        v138 = v37;
        v139 = v30;
        [v3 addVariant:v36 forField:v33 withEvaluator:v137];
      }

      goto LABEL_40;
    }

    v38 = [v3 className];
    if ([v38 isEqualToString:@"__NSCFDictionary"])
    {

LABEL_39:
      _variantForCFBasicHash(v3);
      goto LABEL_40;
    }

    v39 = [v3 className];
    v40 = [v39 isEqualToString:@"__NSCFSet"];

    if (v40)
    {
      goto LABEL_39;
    }

    v41 = [v3 className];
    v42 = [v41 isEqualToString:@"__NSCFString"];

    if (v42)
    {
      v43 = _destinationLayoutStorageVariant(v3, 16, @"content", 0, &stru_1F461F9C8);
      [v3 addVariant:v43 forField:0 withEvaluator:&__block_literal_global_5];
      [v3 setVariantScanType:0 withEvaluator:&__block_literal_global_481];

      goto LABEL_40;
    }

    v44 = [v3 className];
    v45 = [v44 isEqualToString:@"NSConcreteHashTable"];

    if (v45 || ([v3 className], v46 = objc_claimAutoreleasedReturnValue(), v47 = objc_msgSend(v46, "isEqualToString:", @"NSConcretePointerArray"), v46, v47))
    {
      v48 = @"slice";
      v49 = @"Object";
LABEL_46:
      _variantForNSSlice(v3, v48, v49);
      goto LABEL_40;
    }

    v50 = [v3 className];
    v51 = [v50 isEqualToString:@"NSConcreteMapTable"];

    if (v51)
    {
      _variantForNSSlice(v3, @"keys", @"Key");
      v48 = @"values";
      v49 = @"Value";
      goto LABEL_46;
    }

    v52 = [v3 className];
    v53 = [v52 isEqualToString:@"_CFXNotificationRegistrationBase"];

    if (v53)
    {
      v54 = &__block_literal_global_504;
      goto LABEL_59;
    }

    v55 = [v3 className];
    v56 = [v55 isEqualToString:@"_NSThreadData"];

    if (v56)
    {
      v54 = &__block_literal_global_509;
      goto LABEL_59;
    }

    v57 = [v3 className];
    v58 = [v57 isEqualToString:@"_CFXNotificationObserverRegistration"];

    if (v58)
    {
      v54 = &__block_literal_global_514;
      goto LABEL_59;
    }

    v59 = [v3 className];
    if ([v59 isEqualToString:@"_CFXNotificationObjectRegistration"])
    {

LABEL_58:
      v54 = &__block_literal_global_525;
      goto LABEL_59;
    }

    v60 = [v3 className];
    v61 = [v60 isEqualToString:@"_CFXNotificationObjcObserverRegistration"];

    if (v61)
    {
      goto LABEL_58;
    }

    v62 = [v3 className];
    v63 = [v62 isEqualToString:@"__NSObserver"];

    if (v63)
    {
      v54 = &__block_literal_global_533;
      goto LABEL_59;
    }

    v64 = [v3 className];
    v65 = [v64 isEqualToString:@"_NSBindingInfo"];

    if (v65)
    {
      v54 = &__block_literal_global_541;
      goto LABEL_59;
    }

    v66 = [v3 className];
    v67 = [v66 isEqualToString:@"_NSModelObservingTracker"];

    if (v67)
    {
      v54 = &__block_literal_global_549;
      goto LABEL_59;
    }

    v68 = [v3 className];
    v69 = [v68 isEqualToString:@"__NSOperationInternal"];

    if (v69)
    {
      v54 = &__block_literal_global_557;
      goto LABEL_59;
    }

    v70 = [v3 className];
    v71 = [v70 isEqualToString:@"NSKeyValueObservance"];

    if (v71)
    {
      v54 = &__block_literal_global_568;
      goto LABEL_59;
    }

    v72 = [v3 className];
    v73 = [v72 isEqualToString:@"__NSSingleObjectArrayI"];

    if (v73)
    {
      v54 = &__block_literal_global_573;
      goto LABEL_59;
    }

    v74 = [v3 className];
    v75 = [v74 isEqualToString:@"__NSSingleObjectSetI"];

    if (v75)
    {
      v54 = &__block_literal_global_575;
      goto LABEL_59;
    }

    v76 = [v3 className];
    if ([v76 isEqualToString:@"__NSArrayM"])
    {
    }

    else
    {
      v77 = [v3 className];
      v78 = [v77 isEqualToString:@"__NSFrozenArrayM"];

      if (!v78)
      {
        v79 = [v3 className];
        if ([v79 isEqualToString:@"__NSDictionaryM"])
        {
        }

        else
        {
          v80 = [v3 className];
          v81 = [v80 isEqualToString:@"__NSFrozenDictionaryM"];

          if (!v81)
          {
            v82 = [v3 className];
            if ([v82 isEqualToString:@"__NSSetM"])
            {
            }

            else
            {
              v83 = [v3 className];
              v84 = [v83 isEqualToString:@"__NSFrozenSetM"];

              if (!v84)
              {
                v85 = [v3 className];
                v86 = [v85 isEqualToString:@"__NSArrayI"];

                if (v86)
                {
                  [v3 setDefaultScanType:2];
                  goto LABEL_40;
                }

                v87 = [v3 className];
                v88 = [v87 isEqualToString:@"NSResponder"];

                if (v88)
                {
                  v54 = &__block_literal_global_589;
                  goto LABEL_59;
                }

                v89 = [v3 className];
                v90 = [v89 isEqualToString:@"NSMenuItem"];

                if (v90)
                {
                  v54 = &__block_literal_global_597;
                  goto LABEL_59;
                }

                v91 = [v3 className];
                v92 = [v91 isEqualToString:@"NSActionCell"];

                if (v92)
                {
                  v54 = &__block_literal_global_611;
                  goto LABEL_59;
                }

                v93 = [v3 className];
                v94 = [v93 isEqualToString:@"NSCellAuxiliary"];

                if (v94)
                {
                  v54 = &__block_literal_global_619;
                  goto LABEL_59;
                }

                v95 = [v3 className];
                v96 = [v95 isEqualToString:@"NSMenu"];

                if (v96)
                {
                  v54 = &__block_literal_global_627;
                  goto LABEL_59;
                }

                v97 = [v3 className];
                v98 = [v97 isEqualToString:@"NSLayoutConstraint"];

                if (v98)
                {
                  v54 = &__block_literal_global_635;
                  goto LABEL_59;
                }

                v99 = [v3 className];
                v100 = [v99 isEqualToString:@"NSLayoutAnchor"];

                if (v100)
                {
                  v54 = &__block_literal_global_649;
                  goto LABEL_59;
                }

                v101 = [v3 className];
                v102 = [v101 isEqualToString:@"NSView"];

                if (v102)
                {
                  v54 = &__block_literal_global_657;
                  goto LABEL_59;
                }

                v103 = [v3 className];
                v104 = [v103 isEqualToString:@"_NSViewAuxiliary"];

                if (v104)
                {
                  v54 = &__block_literal_global_674;
                  goto LABEL_59;
                }

                v105 = [v3 className];
                v106 = [v105 isEqualToString:@"NSTextInputContext"];

                if (v106)
                {
                  v54 = &__block_literal_global_679;
                  goto LABEL_59;
                }

                v107 = [v3 className];
                v108 = [v107 isEqualToString:@"NSWeakObjectValue"];

                if (v108)
                {
                  v54 = &__block_literal_global_684;
                  goto LABEL_59;
                }

                v109 = [v3 className];
                v110 = [v109 isEqualToString:@"NSAccessibilityWeakReferenceContainer"];

                if (v110)
                {
                  v54 = &__block_literal_global_692;
                  goto LABEL_59;
                }

                v111 = [v3 className];
                if ([v111 isEqualToString:@"NSInputStream"])
                {
                }

                else
                {
                  v112 = [v3 className];
                  v113 = [v112 isEqualToString:@"NSOutputStream"];

                  if (!v113)
                  {
                    v120 = [v3 displayName];
                    v121 = [v120 isEqualToString:@"__SwiftNativeNSError"];

                    if (v121)
                    {
                      [v3 setInfoType:8];
                      goto LABEL_26;
                    }

                    v122 = [v3 className];
                    v123 = [v122 isEqualToString:@"_NSKVODeallocSentinel"];

                    if (!v123)
                    {
LABEL_40:
                      (*(*(a1 + 72) + 16))();
LABEL_26:

                      objc_autoreleasePoolPop(v4);
                      goto LABEL_27;
                    }

                    v54 = &__block_literal_global_733;
LABEL_59:
                    [v3 mutateTypeFieldsWithBlock:v54];
                    goto LABEL_40;
                  }
                }

                v127 = [v3 firstFieldWithName:@"_reserved"];
                if (v127)
                {
                  v114 = [v3 pointerSize];
                  v126 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"error" type:@"^v" scan:1 offset:(3 * v114) size:v114];
                  v125 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"client" type:@"^{_CFStreamClient=}" scan:1 offset:(4 * v114) size:v114];
                  v124 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"info" type:@"^v" scan:1 offset:(5 * v114) size:v114];
                  v115 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"callBacks" type:@"^{_CFStreamCallBacks=}" scan:1 offset:(6 * v114) size:v114];
                  v116 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"streamLock" type:@"^v" scan:1 offset:(7 * v114) size:v114];
                  v117 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"previousRunloopsAndModes" type:@"^v" scan:1 offset:(8 * v114) size:v114];
                  v118 = [(VMUFieldInfo *)[VMUMutableFieldInfo alloc] initWithName:@"queue" type:@"^v" scan:1 offset:(9 * v114) size:v114];
                  v150[0] = v126;
                  v150[1] = v125;
                  v150[2] = v124;
                  v150[3] = v115;
                  v150[4] = v116;
                  v150[5] = v117;
                  v150[6] = v118;
                  v119 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:7];
                  [v3 replaceField:v127 withFields:v119];
                }

                goto LABEL_40;
              }
            }

            v140 = 0;
            v141 = &v140;
            v142 = 0x2020000000;
            LOBYTE(v143) = 0;
            v128[0] = MEMORY[0x1E69E9820];
            v128[1] = 3221225472;
            v128[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_21;
            v128[3] = &unk_1E8278388;
            v129 = v3;
            v130 = &v140;
            [v129 mutateTypeFieldsWithBlock:v128];

LABEL_78:
            _Block_object_dispose(&v140, 8);
            goto LABEL_40;
          }
        }

        v140 = 0;
        v141 = &v140;
        v142 = 0x2020000000;
        LOBYTE(v143) = 0;
        v131[0] = MEMORY[0x1E69E9820];
        v131[1] = 3221225472;
        v131[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_20;
        v131[3] = &unk_1E8278388;
        v132 = v3;
        v133 = &v140;
        [v132 mutateTypeFieldsWithBlock:v131];

        goto LABEL_78;
      }
    }

    v140 = 0;
    v141 = &v140;
    v142 = 0x2020000000;
    LOBYTE(v143) = 0;
    v134[0] = MEMORY[0x1E69E9820];
    v134[1] = 3221225472;
    v134[2] = __34__VMUScanOverlay_initWithScanner___block_invoke_19;
    v134[3] = &unk_1E8278388;
    v135 = v3;
    v136 = &v140;
    [v135 mutateTypeFieldsWithBlock:v134];

    goto LABEL_78;
  }

LABEL_27:
}

BOOL __34__VMUScanOverlay_initWithScanner___block_invoke_5(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = v7[2];
  if (*(a1 + 36) != 8)
  {
    v11 = v8();
    if (!v11)
    {
      goto LABEL_7;
    }

    v10 = *v11;
    if (!*v11)
    {
      goto LABEL_7;
    }

LABEL_9:
    v13 = *(a1 + 36);
    v14 = v7[2];
    v15 = v10 + v13;
    if (v13 == 8)
    {
      v16 = v14(v7, v15, 8);
      if (v16)
      {
        v17 = *v16;
LABEL_15:
        v12 = v17 == 0;
        goto LABEL_16;
      }
    }

    else
    {
      v18 = v14(v7, v15, 4);
      if (v18)
      {
        v17 = *v18;
        goto LABEL_15;
      }
    }

    v17 = 0;
    goto LABEL_15;
  }

  v9 = v8();
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_9;
    }
  }

LABEL_7:
  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a4, a2, 16);
  if (result)
  {
    return !stringHasInlineContents(result);
  }

  return result;
}

uint64_t __34__VMUScanOverlay_initWithScanner___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 16))(a4, a2, 16);
  if (result)
  {

    return stringHasInlineContents(result);
  }

  return result;
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_parent"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_target"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_observer"];

  if (v3)
  {
    [v4 setScanType:0];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_11(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_object"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_12(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"object"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_13(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_retainedController"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_14(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_modelObserver"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_15(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 ivarName];
  v3 = [v2 isEqualToString:@"__outerOp"];

  if (v3)
  {
    [v6 setScanType:4];
  }

  v4 = [v6 ivarName];
  v5 = [v4 isEqualToString:@"__completion"];

  if (v5)
  {
    [v6 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_16(uint64_t a1, void *a2)
{
  v4 = a2;
  if ([v4 scanType] == 1)
  {
    v2 = [v4 ivarName];
    v3 = [v2 isEqualToString:@"_context"];

    if ((v3 & 1) == 0)
    {
      [v4 setScanType:4];
    }
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_17(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_object"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_18(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"element"];

  if (v3)
  {
    [v4 setScanType:2];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_19(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_20(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_21(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 ivarName];
  v4 = [v3 isEqualToString:@"storage"];

  if (v4)
  {
    v5 = _makeStorageFieldClassInfo(*(a1 + 32), @" (Storage)");
    [v5 setDefaultScanType:2];
    [v6 setDestinationLayout:v5];
    [v6 setScanType:2];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_22(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_nextResponder"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_23(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 ivarName];
  v3 = [v2 isEqualToString:@"_repObject"];

  if (v3)
  {
    [v8 setScanType:2];
  }

  v4 = [v8 ivarName];
  v5 = [v4 isEqualToString:@"_submenu"];

  if (v5)
  {
    [v8 setScanType:2];
  }

  v6 = [v8 ivarName];
  v7 = [v6 isEqualToString:@"_menu"];

  if (v7)
  {
    [v8 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_24(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_controlView"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_25(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"controlView"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_26(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_supermenu"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_27(uint64_t a1, void *a2)
{
  v8 = a2;
  v2 = [v8 ivarName];
  v3 = [v2 isEqualToString:@"_container"];

  if (v3)
  {
    [v8 setScanType:4];
  }

  v4 = [v8 ivarName];
  v5 = [v4 isEqualToString:@"_firstItem"];

  if (v5)
  {
    [v8 setScanType:4];
  }

  v6 = [v8 ivarName];
  v7 = [v6 isEqualToString:@"_secondItem"];

  if (v7)
  {
    [v8 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_28(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_referenceItem"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_29(uint64_t a1, void *a2)
{
  v10 = a2;
  v2 = [v10 ivarName];
  v3 = [v2 isEqualToString:@"_superview"];

  if (v3)
  {
    [v10 setScanType:4];
  }

  v4 = [v10 ivarName];
  v5 = [v4 isEqualToString:@"_window"];

  if (v5)
  {
    [v10 setScanType:4];
  }

  v6 = [v10 ivarName];
  v7 = [v6 isEqualToString:@"_viewController"];

  if (v7)
  {
    [v10 setScanType:8];
  }

  v8 = [v10 ivarName];
  v9 = [v8 isEqualToString:@"_ancestorWithLayerForLastLayerGeometryUpdate"];

  if (v9)
  {
    [v10 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_30(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_viewController"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_31(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_client"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_32(uint64_t a1, void *a2)
{
  v6 = a2;
  v2 = [v6 ivarName];
  v3 = [v2 isEqualToString:@"_value"];

  if (v3)
  {
    [v6 setScanType:4];
  }

  v4 = [v6 ivarName];
  v5 = [v4 isEqualToString:@"_object"];

  if (v5)
  {
    [v6 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_33(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_weakReference"];

  if (v3)
  {
    [v4 setScanType:4];
  }
}

void __34__VMUScanOverlay_initWithScanner___block_invoke_34(uint64_t a1, void *a2)
{
  v4 = a2;
  v2 = [v4 ivarName];
  v3 = [v2 isEqualToString:@"_observedObject"];

  if (v3)
  {
    [v4 setScanType:8];
  }
}

- (void)addMetadataRefinementRule:(id)rule
{
  rules = self->_rules;
  v4 = _Block_copy(rule);
  [(NSMutableArray *)rules addObject:v4];
}

@end