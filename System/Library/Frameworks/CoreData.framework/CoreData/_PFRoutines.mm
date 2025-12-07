@interface _PFRoutines
+ (BOOL)_isInMemoryStore:(uint64_t)store;
+ (BOOL)createExternalReferenceLinkFromPath:(uint64_t)path toPath:(uint64_t)toPath protectionLevel:(void *)level error:;
+ (BOOL)isSanitizedVersionOf:(void *)of equalTo:;
+ (_PFArray)_newObjectIDsArrayWithMapping:(void *)mapping andEntries:(void *)entries andCoordinator:;
+ (__CFDictionary)_createDictionaryPartitioningObjectIDs:(id)ds intoHierarchies:(BOOL)hierarchies;
+ (__CFDictionary)_createDictionaryPartitioningObjects:(id)objects intoHierarchies:(BOOL)hierarchies;
+ (__CFDictionary)createDictionaryPartitioningObjectsByEntity:(uint64_t)entity;
+ (__CFDictionary)createDictionaryPartitioningObjectsIDByRootEntity:(uint64_t)entity;
+ (__CFString)_getUUID;
+ (id)_coalescedPrefetchKeypaths:(uint64_t)keypaths;
+ (id)_frameworkHash;
+ (id)_newCollectionFromCollection:(void *)collection forParentContext:(objc_class *)context andClass:;
+ (id)_replaceBaseline:(void *)baseline inOrderedSet:(void *)set withOrderedSet:;
+ (id)newCollection:(void *)collection fromCollection:(void *)fromCollection byAddingItems:;
+ (id)newMutableArrayFromCollection:(void *)collection byRemovingItems:;
+ (id)newMutableArrayFromCollection:(void *)collection forParentContext:;
+ (id)newMutableOrderedSetFromCollection:(void *)collection forParentContext:;
+ (id)newMutableSetFromCollection:(void *)collection byIntersectingWithCollection:;
+ (id)newMutableSetFromCollection:(void *)collection byRemovingItems:;
+ (id)newMutableSetFromCollection:(void *)collection forParentContext:;
+ (id)newOrderedSetFromCollection:(void *)collection byAddingItems:;
+ (id)newOrderedSetFromCollection:(void *)collection byRemovingItems:;
+ (id)newSetFromCollection:(void *)collection byAddingItems:;
+ (id)retainedDecodeValue:(void *)value forTransformableAttribute:;
+ (id)retainedEncodeObjectValue:(void *)value forTransformableAttribute:;
+ (id)transformDecodeValue:(id)value forTransformerNamed:(id)named;
+ (id)valueForProcessArgument:(uint64_t)argument;
+ (uint64_t)BOOLValueForOverride:(uint64_t)override;
+ (uint64_t)_doNameAndTypeCheck:(uint64_t)check;
+ (uint64_t)_expressionIsCompoundIndexCompatible:(uint64_t)compatible;
+ (uint64_t)_generateObjectIDMaptableForArray:(uint64_t *)array withMapping:(uint64_t *)mapping andEntries:;
+ (uint64_t)_getPFBundleVersionNumber;
+ (uint64_t)_groupObjectsByRootEntity:(uint64_t)entity;
+ (uint64_t)_objectsInOrderedCollection:(void *)collection formSubstringInOrderedCollection:;
+ (uint64_t)_rootEntityGroupsForObjects:(uint64_t)objects passingBlock:;
+ (uint64_t)attributeClassesForSecureCoding;
+ (uint64_t)convertCString:(unint64_t *)string toUnsignedInt64:(int)int64 withBase:;
+ (uint64_t)fetchHeterogeneousCollectionByObjectIDs:(uint64_t)ds intoContext:;
+ (uint64_t)historyChangesArrayClassesForSecureCoding;
+ (uint64_t)historyQueryGenDataClassesForSecureCoding;
+ (uint64_t)insecureBoolValueForOverride:(uint64_t)override;
+ (uint64_t)integerValueForOverride:(uint64_t)override;
+ (uint64_t)moveInterimFileToPermanentLocation:(uint64_t)location;
+ (uint64_t)newArrayOfObjectIDsFromCollection:(uint64_t)collection;
+ (uint64_t)newMutableOrderedSetFromCollection:(uint64_t)collection;
+ (uint64_t)newOrderedSetFromCollection:(void *)collection byInsertingItems:(_BYTE *)items atIndex:;
+ (uint64_t)newSetOfObjectIDsFromCollection:(uint64_t)collection;
+ (uint64_t)plistClassesForSecureCoding;
+ (uint64_t)readBytesForExternalReferenceData:(void *)data intoBuffer:(off_t)buffer range:(size_t)range;
+ (uint64_t)sanitize:(uint64_t)sanitize;
+ (uint64_t)sensitiveIntegerValueForOverride:(uint64_t)override;
+ (uint64_t)unarchiveCylicGraphObjectOfClasses:(uint64_t)classes fromData:(uint64_t)data error:;
+ (uint64_t)writePFExternalReferenceDataToInterimFile:(uint64_t)file;
+ (uint64_t)xpcStoreArchiverObjectIDClassesForSecureCoding;
+ (void)_isInMemoryStoreURL:(uint64_t)l;
+ (void)_logDirectoryAccessDebugInformation:(__darwin_ino64_t)information checkSandboxAccess:;
+ (void)_logFileAccessDebugInformation:(uint64_t)information checkSandboxAccess:;
+ (void)anyObjectFromCollection:(uint64_t)collection;
+ (void)deleteFileForPFExternalReferenceData:(uint64_t)data;
+ (void)efficientlyEnumerateManagedObjectsInFetchRequest:(void *)request usingManagedObjectContext:(uint64_t)context andApplyBlock:;
+ (void)getIndexes:(void *)indexes fromCollection:(void *)collection forObjectsInCollection:;
+ (void)initialize;
+ (void)readExternalReferenceDataFromFile:(uint64_t)file;
+ (void)stringValueForOverride:(uint64_t)override;
+ (void)wrapBlockInGuardedAutoreleasePool:(id)pool;
@end

@implementation _PFRoutines

+ (void)initialize
{
  *&byte_1ED4BEECD = 257;
  byte_1ED4BEECF = 1;
  z9dsptsiQ80etb9782fsrs98bfdle88 = 0x101010101010101;
  *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 7) = 0x101010101010101;
  dword_1ED4BEEC8 = 16843009;
  __pflogFaultLog = _PFLogGetErrorLog();
  _PF_USE_IOS_PLATFORM = 1;
  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    byte_1ED4BEECF = 0;
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      byte_1ED4BEECE = 0;
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
        byte_1ED4BEECD = 0;
        if ((dyld_program_sdk_at_least() & 1) == 0)
        {
          HIBYTE(dword_1ED4BEEC8) = 0;
          if ((dyld_program_sdk_at_least() & 1) == 0)
          {
            BYTE1(dword_1ED4BEEC8) = 0;
            if ((dyld_program_sdk_at_least() & 1) == 0)
            {
              LOBYTE(dword_1ED4BEEC8) = 0;
              if ((dyld_program_sdk_at_least() & 1) == 0)
              {
                byte_1ED4BEEC6 = 0;
                if ((dyld_program_sdk_at_least() & 1) == 0)
                {
                  byte_1ED4BEEC5 = 0;
                  if ((dyld_program_sdk_at_least() & 1) == 0)
                  {
                    byte_1ED4BEEC4 = 0;
                    program_sdk_version = dyld_get_program_sdk_version();
                    if (_CFExecutableLinkedOnOrAfter() == 1)
                    {
                      v3 = vand_s8(vmovn_s32(vcgtq_u32(vdupq_n_s32(program_sdk_version), xmmword_18592E410)), 0x1000100010001);
                      dword_1ED4BEEC0 = vuzp1_s8(v3, v3).u32[0];
                    }

                    else
                    {
                      *(&dword_1ED4BEEC0 + 3) = 0;
                      *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 7) = 0;
                      if (_CFExecutableLinkedOnOrAfter() != 1)
                      {
                        *(&z9dsptsiQ80etb9782fsrs98bfdle88 + 5) = 0;
                        if (_CFExecutableLinkedOnOrAfter() != 1)
                        {
                          BYTE4(z9dsptsiQ80etb9782fsrs98bfdle88) = 0;
                          if (_CFExecutableLinkedOnOrAfter() != 1)
                          {
                            WORD1(z9dsptsiQ80etb9782fsrs98bfdle88) = 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  BYTE2(dword_1ED4BEEC8) = BYTE1(dword_1ED4BEEC8);
  _PF_Private_Malloc_Zone = 0;
  _PF_INTERNAL_DATA_SIZE_THRESHOLD = 1;
  pthread_key_init_np();
  pthread_key_init_np();
  NSArray_EmptyArray = objc_alloc_init(MEMORY[0x1E695DEC8]);
  NSSet_EmptySet = objc_alloc_init(MEMORY[0x1E695DFD8]);
  NSOrderedSet_EmptyOrderedSet = objc_alloc_init(MEMORY[0x1E695DFB8]);
  NSDictionary_EmptyDictionary = objc_alloc_init(MEMORY[0x1E695DF20]);
  qword_1ED4BE8F0 = objc_alloc_init(MEMORY[0x1E696AC90]);
  NSKeyValueCoding_NullValue = [MEMORY[0x1E695DFB0] null];
  _SELF_Expression = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  if (os_variant_has_internal_content())
  {
    byte_1ED4BEEC7 = 1;
  }

  if (qword_1ED4BE958 != -1)
  {
    dispatch_once(&qword_1ED4BE958, &__block_literal_global_363);
  }

  if ((_MergedGlobals_67 & 1) == 0)
  {
    byte_1ED4BEECC = 1;
  }

  v4 = imp_implementationWithBlock(&__block_literal_global_60);
  imp_removeBlock(v4);
  objc_opt_self();

  objc_opt_self();
}

+ (uint64_t)attributeClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE910 != -1)
  {
    dispatch_once(&qword_1ED4BE910, &__block_literal_global_135);
  }

  return qword_1ED4BE908;
}

+ (uint64_t)plistClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE950 != -1)
  {
    dispatch_once(&qword_1ED4BE950, &__block_literal_global_150);
  }

  return qword_1ED4BE948;
}

+ (uint64_t)_getPFBundleVersionNumber
{
  objc_opt_self();
  if (!_PF_BundleVersion)
  {
    v1 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInteger:1522];
    v2 = 0;
    atomic_compare_exchange_strong(&_PF_BundleVersion, &v2, v1);
    if (v2)
    {
    }
  }

  return _PF_BundleVersion;
}

+ (__CFString)_getUUID
{
  objc_opt_self();
  v1 = CFUUIDCreate(*MEMORY[0x1E695E480]);
  v2 = CFUUIDCreateString(0, v1);
  CFRelease(v1);

  return v2;
}

+ (uint64_t)_generateObjectIDMaptableForArray:(uint64_t *)array withMapping:(uint64_t *)mapping andEntries:
{
  v124 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 count])
  {
    return 0;
  }

  arrayCopy = array;
  mappingCopy = mapping;
  v94 = objc_opt_class();
  v7 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  v9 = CFDictionaryCreateMutable(v7, 0, 0, 0);
  v10 = CFDictionaryCreateMutable(v7, 0, 0, 0);
  v98 = CFArrayCreateMutable(v7, 0, 0);
  v87 = v7;
  v97 = CFArrayCreateMutable(v7, 0, 0);
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v93 = [a2 countByEnumeratingWithState:&v115 objects:v123 count:16];
  v11 = 0;
  if (v93)
  {
    v12 = 0;
    v95 = 0;
    v13 = 0;
    v89 = 0;
    v90 = 0;
    v88 = 0;
    v14 = *v116;
    v91 = a2;
    v92 = v14;
    while (2)
    {
      for (i = 0; i != v93; ++i)
      {
        if (*v116 != v92)
        {
          objc_enumerationMutation(v91);
        }

        v16 = *(*(&v115 + 1) + 8 * i);
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v32 = 0;
          goto LABEL_104;
        }

        v96 = v11;
        persistentStore = [v16 persistentStore];
        entity = [v16 entity];
        if (persistentStore != v13 || entity != v95)
        {
          v20 = entity;
          Value = CFDictionaryGetValue(Mutable, persistentStore);
          if (Value)
          {
            v22 = Value;
          }

          else
          {
            v22 = v88 + 1;
            CFDictionarySetValue(Mutable, persistentStore, ++v88);
          }

          v23 = CFDictionaryGetValue(v9, v20);
          if (v23)
          {
            v24 = v23;
          }

          else
          {
            v24 = v90 + 1;
            CFDictionarySetValue(v9, v20, ++v90);
          }

          v25 = (v24 | (v22 << 16));
          v26 = CFDictionaryGetValue(v10, v25);
          if (v26)
          {
            v12 = v26;
            v95 = v20;
            v13 = persistentStore;
          }

          else
          {
            v12 = (v89 + 1);
            CFDictionarySetValue(v10, v25, (v89 + 1));
            v95 = v20;
            v13 = persistentStore;
            ++v89;
          }
        }

        CFArrayAppendValue(v98, v12 - 1);
        _referenceData64 = [v16 _referenceData64];
        v11 = v96;
        if (_referenceData64 > v96)
        {
          v11 = _referenceData64;
        }

        CFArrayAppendValue(v97, _referenceData64);
      }

      v93 = [v91 countByEnumeratingWithState:&v115 objects:v123 count:16];
      if (v93)
      {
        continue;
      }

      break;
    }
  }

  Count = CFDictionaryGetCount(Mutable);
  if (Count <= 1)
  {
    v29 = 1;
  }

  else
  {
    v29 = Count;
  }

  if (Count >= 0x201)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29;
  }

  v31 = &arrayCopy - ((8 * v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = &arrayCopy;
  v96 = v11;
  v93 = Count;
  if (Count > 0x200)
  {
    v31 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&arrayCopy - ((8 * v30 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v29);
  }

  v113 = 0u;
  v114 = 0u;
  v111 = 0u;
  v112 = 0u;
  arrayCopy = [(__CFDictionary *)Mutable countByEnumeratingWithState:&v111 objects:v122 count:16, arrayCopy];
  if (arrayCopy)
  {
    v34 = arrayCopy;
    v35 = *v112;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v112 != v35)
        {
          objc_enumerationMutation(Mutable);
        }

        v37 = *(*(&v111 + 1) + 8 * j);
        v38 = CFDictionaryGetValue(Mutable, v37);
        *&v31[8 * v38 - 8] = [v37 identifier];
      }

      v34 = [(__CFDictionary *)Mutable countByEnumeratingWithState:&v111 objects:v122 count:16];
    }

    while (v34);
  }

  v39 = v93;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:v93];
  if (v39 >= 0x201)
  {
    NSZoneFree(0, v31);
  }

  v41 = CFDictionaryGetCount(v9);
  if (v41 <= 1)
  {
    v42 = 1;
  }

  else
  {
    v42 = v41;
  }

  if (v41 >= 0x201)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  v44 = &arrayCopy - ((8 * v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v40;
  v92 = v41;
  if (v41 > 0x200)
  {
    v44 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&arrayCopy - ((8 * v43 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v42);
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v45 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v107 objects:v121 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v108;
    do
    {
      for (k = 0; k != v46; ++k)
      {
        if (*v108 != v47)
        {
          objc_enumerationMutation(v9);
        }

        v49 = *(*(&v107 + 1) + 8 * k);
        v50 = CFDictionaryGetValue(v9, v49);
        *&v44[8 * v50 - 8] = [v49 name];
      }

      v46 = [(__CFDictionary *)v9 countByEnumeratingWithState:&v107 objects:v121 count:16];
    }

    while (v46);
  }

  v51 = v92;
  v52 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:v92];
  if (v51 >= 0x201)
  {
    NSZoneFree(0, v44);
  }

  v53 = CFDictionaryGetCount(v10);
  v54 = v53;
  if (v53 <= 1)
  {
    v55 = 1;
  }

  else
  {
    v55 = v53;
  }

  if (v53 >= 0x201)
  {
    v56 = 1;
  }

  else
  {
    v56 = v55;
  }

  v57 = (&arrayCopy - ((8 * v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = v52;
  if (v53 > 0x200)
  {
    v57 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&arrayCopy - ((8 * v56 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v55);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v58 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v103 objects:v120 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v104;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v104 != v60)
        {
          objc_enumerationMutation(v10);
        }

        v62 = *(*(&v103 + 1) + 8 * m);
        v57[CFDictionaryGetValue(v10, v62) - 1] = v62;
      }

      v59 = [(__CFDictionary *)v10 countByEnumeratingWithState:&v103 objects:v120 count:16];
    }

    while (v59);
  }

  v63 = CFArrayCreate(v87, v57, v54, 0);
  if (v54 >= 0x201)
  {
    NSZoneFree(0, v57);
  }

  v64 = MEMORY[0x1E695DEC8];
  v65 = v96;
  v66 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v96];
  v67 = [v64 arrayWithObjects:{v94, v93, v63, v66, 0}];
  *arrayCopy = v67;
  CFRelease(v63);
  if ([(__CFArray *)v63 count]> 0xFE || v65 > 0xFFFFFF)
  {
    v72 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v98, v97, 0}];
    *mappingCopy = v72;
  }

  else
  {
    v68 = CFArrayGetCount(v97);
    v96 = &arrayCopy;
    if (v68 <= 1)
    {
      v69 = 1;
    }

    else
    {
      v69 = v68;
    }

    if (v68 >= 0x201)
    {
      v70 = 1;
    }

    else
    {
      v70 = v69;
    }

    v71 = (&arrayCopy - ((8 * v70 + 15) & 0xFFFFFFFFFFFFFFF0));
    v94 = v68;
    if (v68 > 0x200)
    {
      v71 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&arrayCopy - ((8 * v70 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v69);
    }

    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    v73 = [(__CFArray *)v97 countByEnumeratingWithState:&v99 objects:v119 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = 0;
      v76 = *v100;
      do
      {
        v77 = 0;
        v78 = v75;
        do
        {
          if (*v100 != v76)
          {
            objc_enumerationMutation(v97);
          }

          v79 = *(*(&v99 + 1) + 8 * v77);
          v80 = v79 & 0xFFFFFF | (CFArrayGetValueAtIndex(v98, v78) << 24);
          v75 = v78 + 1;
          v71[v78] = v80;
          ++v77;
          ++v78;
        }

        while (v74 != v77);
        v74 = [(__CFArray *)v97 countByEnumeratingWithState:&v99 objects:v119 count:16];
      }

      while (v74);
    }

    v81 = v94;
    v82 = CFArrayCreate(v87, v71, v94, 0);
    if (v81 >= 0x201)
    {
      NSZoneFree(0, v71);
    }

    v83 = [MEMORY[0x1E695DEC8] arrayWithObject:v82];
    *mappingCopy = v83;
    CFRelease(v82);
  }

  v32 = 1;
LABEL_104:
  CFRelease(Mutable);
  CFRelease(v9);
  CFRelease(v10);
  CFRelease(v98);
  CFRelease(v97);
  return v32;
}

+ (_PFArray)_newObjectIDsArrayWithMapping:(void *)mapping andEntries:(void *)entries andCoordinator:
{
  v99 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 objectAtIndex:0];
  v76 = [a2 objectAtIndex:1];
  v8 = [a2 objectAtIndex:2];
  v68 = [objc_msgSend(a2 objectAtIndex:{3), "unsignedLongLongValue"}];
  v73 = [mapping objectAtIndex:0];
  v70 = v73;
  if ([mapping count] >= 2)
  {
    v70 = [mapping objectAtIndex:1];
  }

  v9 = [v7 count];
  v74 = [v76 count];
  v10 = [v8 count];
  if (v9 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9;
  }

  if (v9 >= 0x201)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  v72 = v9;
  if (v9 > 0x200)
  {
    v78 = NSAllocateScannedUncollectable();
  }

  else
  {
    v78 = &v67 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v78, 8 * v11);
  }

  if (v74 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = v74;
  }

  if (v74 >= 0x201)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = &v67 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v74 > 0x200)
  {
    v15 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v67 - ((8 * v14 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v13);
  }

  if (v10 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v10;
  }

  if (v10 >= 0x201)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = &v67 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 > 0x200)
  {
    v18 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(&v67 - ((8 * v17 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v16);
  }

  v19 = [(__CFArray *)v73 count];
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  if (v19 >= 0x201)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = &v67 - ((8 * v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v19;
  v77 = v15;
  v71 = v10;
  if (v19 > 0x200)
  {
    v75 = NSAllocateScannedUncollectable();
  }

  else
  {
    v75 = v22;
    bzero(v22, 8 * v20);
  }

  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  v23 = [v7 countByEnumeratingWithState:&v91 objects:v98 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = 0;
    v26 = *v92;
    while (2)
    {
      v27 = 0;
      v28 = v25;
      do
      {
        if (*v92 != v26)
        {
          objc_enumerationMutation(v7);
        }

        v29 = [entries persistentStoreForIdentifier:*(*(&v91 + 1) + 8 * v27)];
        if (!v29)
        {
          v64 = 0;
          v56 = v71;
LABEL_90:
          v32 = v77;
LABEL_92:
          v65 = v69;
          goto LABEL_93;
        }

        v25 = v28 + 1;
        *&v78[8 * v28] = v29;
        ++v27;
        ++v28;
      }

      while (v24 != v27);
      v24 = [v7 countByEnumeratingWithState:&v91 objects:v98 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

  v30 = [objc_msgSend(entries "managedObjectModel")];
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v31 = [v76 countByEnumeratingWithState:&v87 objects:v97 count:16];
  v32 = v77;
  if (v31)
  {
    v33 = v31;
    v34 = 0;
    v35 = *v88;
    while (2)
    {
      v36 = 0;
      v37 = v34;
      do
      {
        if (*v88 != v35)
        {
          objc_enumerationMutation(v76);
        }

        v38 = [v30 objectForKey:*(*(&v87 + 1) + 8 * v36)];
        if (!v38)
        {
          v64 = 0;
          v56 = v71;
          goto LABEL_92;
        }

        v34 = v37 + 1;
        v32[v37] = v38;
        ++v36;
        ++v37;
      }

      while (v33 != v36);
      v33 = [v76 countByEnumeratingWithState:&v87 objects:v97 count:16];
      if (v33)
      {
        continue;
      }

      break;
    }
  }

  v85 = 0u;
  v86 = 0u;
  v83 = 0u;
  v84 = 0u;
  v39 = [v8 countByEnumeratingWithState:&v83 objects:v96 count:16];
  if (v39)
  {
    v40 = v39;
    v41 = 0;
    v42 = *v84;
    do
    {
      v43 = 0;
      v44 = v41;
      do
      {
        if (*v84 != v42)
        {
          objc_enumerationMutation(v8);
        }

        v41 = v44 + 1;
        *&v18[8 * v44++] = *(*(&v83 + 1) + 8 * v43++);
      }

      while (v40 != v43);
      v40 = [v8 countByEnumeratingWithState:&v83 objects:v96 count:16];
    }

    while (v40);
  }

  v45 = [v8 count];
  v79 = 0u;
  v80 = 0u;
  v47 = v45 < 0xFF && v68 < 0x1000000;
  v81 = 0uLL;
  v82 = 0uLL;
  v48 = [(__CFArray *)v73 countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = 0;
    v51 = 0;
    v76 = *v80;
    v52 = 0x7FFFFFFFLL;
    while (2)
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v80 != v76)
        {
          objc_enumerationMutation(v73);
        }

        v54 = *(*(&v79 + 1) + 8 * i);
        if (v47)
        {
          v55 = v54 >> 24;
        }

        else
        {
          v55 = *(*(&v79 + 1) + 8 * i);
        }

        if (v55 != v52)
        {
          v56 = v71;
          if (v55 >= v71 || ((v57 = WORD1(*&v18[8 * v55]) - 1, v58 = *&v18[8 * v55] - 1, v57 < v72) ? (v59 = v58 >= v74) : (v59 = 1), v59))
          {
            v64 = 0;
            goto LABEL_90;
          }

          v50 = [*&v78[8 * v57] objectIDFactoryForEntity:*&v77[8 * v58]];
          v52 = v55;
        }

        if (v47)
        {
          ValueAtIndex = v54 & 0xFFFFFF;
        }

        else
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v70, v51);
        }

        v32 = v77;
        v61 = [[v50 alloc] initWithPK64:ValueAtIndex];
        v75[v51++] = v61;
      }

      v49 = [(__CFArray *)v73 countByEnumeratingWithState:&v79 objects:v95 count:16];
      if (v49)
      {
        continue;
      }

      break;
    }
  }

  v62 = [_PFArray alloc];
  v63 = [(__CFArray *)v73 count];
  v64 = [(_PFArray *)v62 initWithObjects:v75 count:v63 andFlags:18];
  v65 = v69;
  v56 = v71;
LABEL_93:
  if (v65 >= 0x201)
  {
    NSZoneFree(0, v75);
  }

  if (v72 >= 0x201)
  {
    NSZoneFree(0, v78);
  }

  if (v74 >= 0x201)
  {
    NSZoneFree(0, v32);
  }

  if (v56 >= 0x201)
  {
    NSZoneFree(0, v18);
  }

  return v64;
}

+ (id)_frameworkHash
{
  if (qword_1ED4BE8F8 != -1)
  {
    dispatch_once(&qword_1ED4BE8F8, &__block_literal_global_68);
  }

  v3 = qword_1ED4BE900;

  return v3;
}

+ (uint64_t)_rootEntityGroupsForObjects:(uint64_t)objects passingBlock:
{
  v24 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(a2);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        if ((*(objects + 16))(objects, v10))
        {
          entity = [v10 entity];
          if (entity)
          {
            if (atomic_load((entity + 124)))
            {
              v13 = *(entity + 72);
            }

            else
            {
              do
              {
                v13 = entity;
                entity = [entity superentity];
              }

              while (entity);
            }
          }

          else
          {
            v13 = 0;
          }

          name = [v13 name];
          v15 = [v5 objectForKey:name];
          if (!v15)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v5 setObject:v15 forKey:name];
          }

          [v15 addObject:v10];
        }

        ++v9;
      }

      while (v9 != v7);
      v16 = [a2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v7 = v16;
    }

    while (v16);
  }

  allValues = [v5 allValues];

  return allValues;
}

+ (uint64_t)_groupObjectsByRootEntity:(uint64_t)entity
{
  objc_opt_self();

  return [_PFRoutines _rootEntityGroupsForObjects:a2 passingBlock:&__block_literal_global_82];
}

+ (id)_coalescedPrefetchKeypaths:(uint64_t)keypaths
{
  objc_opt_self();
  v3 = [a2 count];
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  if ([a2 isNSSet])
  {
    a2 = [a2 allObjects];
  }

  if ([a2 isNSArray])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v6 = v5;
    if (v3)
    {
      v16 = v4;
      v17 = v5;
      for (i = 0; i != v3; ++i)
      {
        v8 = [objc_msgSend(a2 objectAtIndex:{i, v16), "componentsSeparatedByString:", @"."}];
        v9 = [v8 count];
        if (v9)
        {
          v10 = v9;
          v11 = 0;
          v12 = v17;
          do
          {
            v13 = [v8 objectAtIndex:v11];
            if ([v13 length])
            {
              dictionary = [v12 objectForKey:v13];
              if (!dictionary)
              {
                dictionary = [MEMORY[0x1E695DF90] dictionary];
              }

              [v12 setObject:dictionary forKey:v13];
              v12 = dictionary;
            }

            ++v11;
          }

          while (v10 != v11);
        }
      }

      v4 = v16;
      v6 = v17;
    }
  }

  else if ([a2 isNSDictionary])
  {
    v6 = a2;
  }

  else
  {
    v6 = 0;
  }

  [v4 drain];

  return v6;
}

+ (void)_logDirectoryAccessDebugInformation:(__darwin_ino64_t)information checkSandboxAccess:
{
  v122 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v4 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v5 = _pflogging_catastrophic_mode;
    LogStream = _PFLogGetLogStream(1);
    v7 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
    if (v5)
    {
      if (!v7)
      {
        goto LABEL_6;
      }

      v121.st_dev = 138412290;
      *&v121.st_mode = a2;
    }

    else
    {
      if (!v7)
      {
        goto LABEL_6;
      }

      v121.st_dev = 138412290;
      *&v121.st_mode = a2;
    }

    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Logging status information for directory path: %@\n", &v121, 0xCu);
  }

LABEL_6:
  informationCopy = information;
  _NSCoreDataLog_console(1, "Logging status information for directory path: %@", a2);
  objc_autoreleasePoolPop(v4);
  obj = [a2 pathComponents];
  memset(&v121, 0, sizeof(v121));
  v8 = geteuid();
  v9 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v10 = _pflogging_catastrophic_mode;
    v11 = _PFLogGetLogStream(1);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (v12)
      {
        *buf = 67109120;
        LODWORD(st_size) = v8;
LABEL_164:
        _os_log_error_impl(&dword_18565F000, v11, OS_LOG_TYPE_ERROR, "CoreData: error: Executing as effective user %u\n", buf, 8u);
      }
    }

    else if (v12)
    {
      *buf = 67109120;
      LODWORD(st_size) = v8;
      goto LABEL_164;
    }
  }

  _NSCoreDataLog_console(1, "Executing as effective user %u", v8);
  objc_autoreleasePoolPop(v9);
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v13 = [obj countByEnumeratingWithState:&v110 objects:v120 count:16];
  if (!v13)
  {
    goto LABEL_138;
  }

  v14 = v13;
  v15 = &stru_1EF3F1768;
  v109 = *v111;
  do
  {
    v16 = 0;
    do
    {
      if (*v111 != v109)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v110 + 1) + 8 * v16);
      LOBYTE(v121.st_dev) = 0;
      v15 = [(__CFString *)v15 stringByAppendingPathComponent:v17];
      fileSystemRepresentation = [(__CFString *)v15 fileSystemRepresentation];
      if (stat(fileSystemRepresentation, &v121))
      {
        v19 = *__error();
        v20 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v21 = _pflogging_catastrophic_mode;
          v22 = _PFLogGetLogStream(1);
          v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
          if (v21)
          {
            if (v23)
            {
LABEL_118:
              v89 = strerror(v19);
              *buf = 136315650;
              st_size = fileSystemRepresentation;
              v116 = 1024;
              v117 = v19;
              v118 = 2080;
              v119 = v89;
              _os_log_error_impl(&dword_18565F000, v22, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to stat path '%s', errno %d / %s.\n", buf, 0x1Cu);
            }
          }

          else if (v23)
          {
            goto LABEL_118;
          }
        }

        strerror(v19);
        _NSCoreDataLog_console(1, "Failed to stat path '%s', errno %d / %s.");
        goto LABEL_116;
      }

      v24 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v25 = _pflogging_catastrophic_mode;
        v26 = _PFLogGetLogStream(1);
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        if (v25)
        {
          if (!v27)
          {
            goto LABEL_28;
          }
        }

        else if (!v27)
        {
          goto LABEL_28;
        }

        *buf = 136315138;
        st_size = fileSystemRepresentation;
        _os_log_error_impl(&dword_18565F000, v26, OS_LOG_TYPE_ERROR, "CoreData: error: Information for %s\n", buf, 0xCu);
      }

LABEL_28:
      _NSCoreDataLog_console(1, "Information for %s", fileSystemRepresentation);
      objc_autoreleasePoolPop(v24);
      v28 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_33;
      }

      v29 = _pflogging_catastrophic_mode;
      v30 = _PFLogGetLogStream(1);
      v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
      if (v29)
      {
        if (!v31)
        {
          goto LABEL_33;
        }
      }

      else if (!v31)
      {
        goto LABEL_33;
      }

      *buf = 67109120;
      LODWORD(st_size) = v121.st_rdev;
      _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error:   File Device ID: \t%d\n", buf, 8u);
LABEL_33:
      _NSCoreDataLog_console(1, "  File Device ID: \t%d", v121.st_rdev);
      objc_autoreleasePoolPop(v28);
      v32 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_38;
      }

      v33 = _pflogging_catastrophic_mode;
      v34 = _PFLogGetLogStream(1);
      v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
      if (v33)
      {
        if (!v35)
        {
          goto LABEL_38;
        }
      }

      else if (!v35)
      {
        goto LABEL_38;
      }

      *buf = 67109120;
      LODWORD(st_size) = v121.st_dev;
      _os_log_error_impl(&dword_18565F000, v34, OS_LOG_TYPE_ERROR, "CoreData: error:   Device ID: \t\t%d\n", buf, 8u);
LABEL_38:
      _NSCoreDataLog_console(1, "  Device ID: \t\t%d", v121.st_dev);
      objc_autoreleasePoolPop(v32);
      v36 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_43;
      }

      v37 = _pflogging_catastrophic_mode;
      v38 = _PFLogGetLogStream(1);
      v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
      if (v37)
      {
        if (!v39)
        {
          goto LABEL_43;
        }
      }

      else if (!v39)
      {
        goto LABEL_43;
      }

      *buf = 134217984;
      st_size = v121.st_size;
      _os_log_error_impl(&dword_18565F000, v38, OS_LOG_TYPE_ERROR, "CoreData: error:   File Size: \t\t%lld bytes\n", buf, 0xCu);
LABEL_43:
      _NSCoreDataLog_console(1, "  File Size: \t\t%lld bytes", v121.st_size);
      objc_autoreleasePoolPop(v36);
      v40 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_48;
      }

      v41 = _pflogging_catastrophic_mode;
      v42 = _PFLogGetLogStream(1);
      v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
      if (v41)
      {
        if (!v43)
        {
          goto LABEL_48;
        }
      }

      else if (!v43)
      {
        goto LABEL_48;
      }

      *buf = 134217984;
      st_size = v121.st_ino;
      _os_log_error_impl(&dword_18565F000, v42, OS_LOG_TYPE_ERROR, "CoreData: error:   File inode: \t\t%llu\n", buf, 0xCu);
LABEL_48:
      _NSCoreDataLog_console(1, "  File inode: \t\t%llu", v121.st_ino);
      objc_autoreleasePoolPop(v40);
      v44 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_53;
      }

      v45 = _pflogging_catastrophic_mode;
      v46 = _PFLogGetLogStream(1);
      v47 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);
      if (v45)
      {
        if (!v47)
        {
          goto LABEL_53;
        }
      }

      else if (!v47)
      {
        goto LABEL_53;
      }

      *buf = 67109120;
      LODWORD(st_size) = v121.st_uid;
      _os_log_error_impl(&dword_18565F000, v46, OS_LOG_TYPE_ERROR, "CoreData: error:   File user ID: \t\t%u\n", buf, 8u);
LABEL_53:
      _NSCoreDataLog_console(1, "  File user ID: \t\t%u", v121.st_uid);
      objc_autoreleasePoolPop(v44);
      v48 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_58;
      }

      v49 = _pflogging_catastrophic_mode;
      v50 = _PFLogGetLogStream(1);
      v51 = os_log_type_enabled(v50, OS_LOG_TYPE_ERROR);
      if (v49)
      {
        if (!v51)
        {
          goto LABEL_58;
        }
      }

      else if (!v51)
      {
        goto LABEL_58;
      }

      *buf = 67109120;
      LODWORD(st_size) = v121.st_gid;
      _os_log_error_impl(&dword_18565F000, v50, OS_LOG_TYPE_ERROR, "CoreData: error:   File group ID: \t\t%u\n", buf, 8u);
LABEL_58:
      _NSCoreDataLog_console(1, "  File group ID: \t\t%u", v121.st_gid);
      objc_autoreleasePoolPop(v48);
      v52 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_63;
      }

      v53 = _pflogging_catastrophic_mode;
      v54 = _PFLogGetLogStream(1);
      v55 = os_log_type_enabled(v54, OS_LOG_TYPE_ERROR);
      if (v53)
      {
        if (!v55)
        {
          goto LABEL_63;
        }
      }

      else if (!v55)
      {
        goto LABEL_63;
      }

      *buf = 0;
      _os_log_error_impl(&dword_18565F000, v54, OS_LOG_TYPE_ERROR, "CoreData: error:   File Permissions: \t\n", buf, 2u);
LABEL_63:
      _NSCoreDataLog_console(1, "  File Permissions: \t");
      objc_autoreleasePoolPop(v52);
      v56 = v121.st_mode & 0xF000;
      v57 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (v56 == 0x4000)
      {
        if (_pflogging_enable_oslog >= 1)
        {
          v58 = _pflogging_catastrophic_mode;
          v59 = _PFLogGetLogStream(1);
          v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
          if (v58)
          {
            if (v60)
            {
              goto LABEL_133;
            }
          }

          else if (v60)
          {
LABEL_133:
            *buf = 0;
            _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: d\n", buf, 2u);
          }
        }

        _NSCoreDataLog_console(1, "d");
        goto LABEL_76;
      }

      if (_pflogging_enable_oslog >= 1)
      {
        v61 = _pflogging_catastrophic_mode;
        v62 = _PFLogGetLogStream(1);
        v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
        if (v61)
        {
          if (v63)
          {
            goto LABEL_134;
          }
        }

        else if (v63)
        {
LABEL_134:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v62, OS_LOG_TYPE_ERROR, "CoreData: error: -\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "-");
LABEL_76:
      objc_autoreleasePoolPop(v57);
      v64 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_81;
      }

      v65 = _pflogging_catastrophic_mode;
      v66 = _PFLogGetLogStream(1);
      v67 = os_log_type_enabled(v66, OS_LOG_TYPE_ERROR);
      if (v65)
      {
        if (!v67)
        {
          goto LABEL_81;
        }
      }

      else if (!v67)
      {
        goto LABEL_81;
      }

      *buf = 67109120;
      LODWORD(st_size) = v121.st_mode & 0x1FF;
      _os_log_error_impl(&dword_18565F000, v66, OS_LOG_TYPE_ERROR, "CoreData: error:   %3o\n", buf, 8u);
LABEL_81:
      _NSCoreDataLog_console(1, "  %3o", v121.st_mode & 0x1FF);
      objc_autoreleasePoolPop(v64);
      v68 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog < 1)
      {
        goto LABEL_88;
      }

      v69 = _pflogging_catastrophic_mode;
      v70 = _PFLogGetLogStream(1);
      v71 = os_log_type_enabled(v70, OS_LOG_TYPE_ERROR);
      if (v69)
      {
        if (!v71)
        {
          goto LABEL_88;
        }

        v72 = "is not";
        if ((v121.st_mode & 0xF000) == 0xA000)
        {
          v72 = "is";
        }
      }

      else
      {
        if (!v71)
        {
          goto LABEL_88;
        }

        v72 = "is not";
        if ((v121.st_mode & 0xF000) == 0xA000)
        {
          v72 = "is";
        }
      }

      *buf = 136315138;
      st_size = v72;
      _os_log_error_impl(&dword_18565F000, v70, OS_LOG_TYPE_ERROR, "CoreData: error:   component %s a symbolic link\n", buf, 0xCu);
LABEL_88:
      v73 = "is not";
      if ((v121.st_mode & 0xF000) == 0xA000)
      {
        v73 = "is";
      }

      _NSCoreDataLog_console(1, "  component %s a symbolic link", v73);
      objc_autoreleasePoolPop(v68);
      if (access(fileSystemRepresentation, 4))
      {
        v74 = *__error();
        v75 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v76 = _pflogging_catastrophic_mode;
          v77 = _PFLogGetLogStream(1);
          v78 = os_log_type_enabled(v77, OS_LOG_TYPE_ERROR);
          if (v76)
          {
            if (v78)
            {
LABEL_131:
              *buf = 67109120;
              LODWORD(st_size) = v74;
              _os_log_error_impl(&dword_18565F000, v77, OS_LOG_TYPE_ERROR, "CoreData: error:   component is not readable with errno %d\n", buf, 8u);
            }
          }

          else if (v78)
          {
            goto LABEL_131;
          }
        }

        _NSCoreDataLog_console(1, "  component is not readable with errno %d");
        goto LABEL_103;
      }

      v75 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v79 = _pflogging_catastrophic_mode;
        v80 = _PFLogGetLogStream(1);
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_ERROR);
        if (v79)
        {
          if (v81)
          {
            goto LABEL_135;
          }
        }

        else if (v81)
        {
LABEL_135:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v80, OS_LOG_TYPE_ERROR, "CoreData: error:   component is readable\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "  component is readable");
LABEL_103:
      objc_autoreleasePoolPop(v75);
      if (access(fileSystemRepresentation, 2))
      {
        v82 = *__error();
        v20 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v83 = _pflogging_catastrophic_mode;
          v84 = _PFLogGetLogStream(1);
          v85 = os_log_type_enabled(v84, OS_LOG_TYPE_ERROR);
          if (v83)
          {
            if (v85)
            {
              goto LABEL_132;
            }
          }

          else if (v85)
          {
LABEL_132:
            *buf = 67109120;
            LODWORD(st_size) = v82;
            _os_log_error_impl(&dword_18565F000, v84, OS_LOG_TYPE_ERROR, "CoreData: error:   component is not writeable with errno %d\n", buf, 8u);
          }
        }

        _NSCoreDataLog_console(1, "  component is not writeable with errno %d");
        goto LABEL_116;
      }

      v20 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v86 = _pflogging_catastrophic_mode;
        v87 = _PFLogGetLogStream(1);
        v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
        if (v86)
        {
          if (v88)
          {
            goto LABEL_136;
          }
        }

        else if (v88)
        {
LABEL_136:
          *buf = 0;
          _os_log_error_impl(&dword_18565F000, v87, OS_LOG_TYPE_ERROR, "CoreData: error:   component is writeable\n", buf, 2u);
        }
      }

      _NSCoreDataLog_console(1, "  component is writeable");
LABEL_116:
      objc_autoreleasePoolPop(v20);
      ++v16;
    }

    while (v14 != v16);
    v90 = [obj countByEnumeratingWithState:&v110 objects:v120 count:16];
    v14 = v90;
  }

  while (v90);
LABEL_138:
  if (!informationCopy)
  {
    return;
  }

  getpid();
  v91 = sandbox_check();
  if (v91 == 1)
  {
    v92 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v96 = _pflogging_catastrophic_mode;
      v97 = _PFLogGetLogStream(1);
      v98 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);
      if (v96)
      {
        if (v98)
        {
          *buf = 136315138;
          st_size = informationCopy;
LABEL_168:
          _os_log_error_impl(&dword_18565F000, v97, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s denied\n", buf, 0xCu);
        }
      }

      else if (v98)
      {
        *buf = 136315138;
        st_size = informationCopy;
        goto LABEL_168;
      }
    }

    _NSCoreDataLog_console(1, "  Sandbox access to %s denied");
    goto LABEL_159;
  }

  if (v91)
  {
    v99 = *__error();
    v92 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v100 = _pflogging_catastrophic_mode;
      v101 = _PFLogGetLogStream(1);
      v102 = os_log_type_enabled(v101, OS_LOG_TYPE_ERROR);
      if (v100)
      {
        if (v102)
        {
          goto LABEL_169;
        }
      }

      else if (v102)
      {
LABEL_169:
        v104 = __error();
        v105 = strerror(*v104);
        *buf = 136315650;
        st_size = informationCopy;
        v116 = 1024;
        v117 = v99;
        v118 = 2080;
        v119 = v105;
        _os_log_error_impl(&dword_18565F000, v101, OS_LOG_TYPE_ERROR, "CoreData: error:   Unable to determine if sandbox access to %s is allowed: %d (%s)\n", buf, 0x1Cu);
      }
    }

    v103 = __error();
    strerror(*v103);
    _NSCoreDataLog_console(1, "  Unable to determine if sandbox access to %s is allowed: %d (%s)");
    goto LABEL_159;
  }

  v92 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v93 = _pflogging_catastrophic_mode;
    v94 = _PFLogGetLogStream(1);
    v95 = os_log_type_enabled(v94, OS_LOG_TYPE_ERROR);
    if (v93)
    {
      if (v95)
      {
        *buf = 136315138;
        st_size = informationCopy;
        goto LABEL_166;
      }
    }

    else if (v95)
    {
      *buf = 136315138;
      st_size = informationCopy;
LABEL_166:
      _os_log_error_impl(&dword_18565F000, v94, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s allowed\n", buf, 0xCu);
    }
  }

  _NSCoreDataLog_console(1, "  Sandbox access to %s allowed");
LABEL_159:
  objc_autoreleasePoolPop(v92);
}

+ (void)_logFileAccessDebugInformation:(uint64_t)information checkSandboxAccess:
{
  v180 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    return;
  }

  memset(&v174, 0, sizeof(v174));
  v5 = stat(a2, &v174);
  if (v5)
  {
    v6 = *__error();
    v7 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v8 = _pflogging_catastrophic_mode;
      LogStream = _PFLogGetLogStream(1);
      v10 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
      if (v8)
      {
        if (v10)
        {
          goto LABEL_235;
        }
      }

      else if (v10)
      {
LABEL_235:
        v169 = strerror(v6);
        v179.f_bsize = 136315650;
        *&v179.f_iosize = a2;
        WORD2(v179.f_blocks) = 1024;
        *(&v179.f_blocks + 6) = v6;
        WORD1(v179.f_bfree) = 2080;
        *(&v179.f_bfree + 4) = v169;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to stat path '%s', errno %d / %s.\n", &v179, 0x1Cu);
      }
    }

    v11 = strerror(v6);
    _NSCoreDataLog_console(1, "Failed to stat path '%s', errno %d / %s.", a2, v6, v11);
    objc_autoreleasePoolPop(v7);
  }

  v12 = geteuid();
  v13 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_14;
  }

  v14 = _pflogging_catastrophic_mode;
  v15 = _PFLogGetLogStream(1);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
  if (v14)
  {
    if (!v16)
    {
      goto LABEL_14;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v12;
  }

  else
  {
    if (!v16)
    {
      goto LABEL_14;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v12;
  }

  _os_log_error_impl(&dword_18565F000, v15, OS_LOG_TYPE_ERROR, "CoreData: error: Executing as effective user %u\n", &v179, 8u);
LABEL_14:
  _NSCoreDataLog_console(1, "Executing as effective user %u", v12);
  objc_autoreleasePoolPop(v13);
  if (v5)
  {
    goto LABEL_90;
  }

  v17 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v18 = _pflogging_catastrophic_mode;
    v19 = _PFLogGetLogStream(1);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v179.f_bsize = 136315138;
      *&v179.f_iosize = a2;
    }

    else
    {
      if (!v20)
      {
        goto LABEL_20;
      }

      v179.f_bsize = 136315138;
      *&v179.f_iosize = a2;
    }

    _os_log_error_impl(&dword_18565F000, v19, OS_LOG_TYPE_ERROR, "CoreData: error: Information for %s\n", &v179, 0xCu);
  }

LABEL_20:
  _NSCoreDataLog_console(1, "Information for %s", a2);
  objc_autoreleasePoolPop(v17);
  v21 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_25;
  }

  v22 = _pflogging_catastrophic_mode;
  v23 = _PFLogGetLogStream(1);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (v22)
  {
    if (!v24)
    {
      goto LABEL_25;
    }

    LOWORD(v179.f_bsize) = 0;
  }

  else
  {
    if (!v24)
    {
      goto LABEL_25;
    }

    LOWORD(v179.f_bsize) = 0;
  }

  _os_log_error_impl(&dword_18565F000, v23, OS_LOG_TYPE_ERROR, "CoreData: error: ---------------------------\n", &v179, 2u);
LABEL_25:
  _NSCoreDataLog_console(1, "---------------------------");
  objc_autoreleasePoolPop(v21);
  v25 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_30;
  }

  v26 = _pflogging_catastrophic_mode;
  v27 = _PFLogGetLogStream(1);
  v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_30;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_rdev;
  }

  else
  {
    if (!v28)
    {
      goto LABEL_30;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_rdev;
  }

  _os_log_error_impl(&dword_18565F000, v27, OS_LOG_TYPE_ERROR, "CoreData: error:   File Device ID: \t%d\n", &v179, 8u);
LABEL_30:
  _NSCoreDataLog_console(1, "  File Device ID: \t%d", v174.st_rdev);
  objc_autoreleasePoolPop(v25);
  v29 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_35;
  }

  v30 = _pflogging_catastrophic_mode;
  v31 = _PFLogGetLogStream(1);
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_ERROR);
  if (v30)
  {
    if (!v32)
    {
      goto LABEL_35;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_dev;
  }

  else
  {
    if (!v32)
    {
      goto LABEL_35;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_dev;
  }

  _os_log_error_impl(&dword_18565F000, v31, OS_LOG_TYPE_ERROR, "CoreData: error:   Device ID: \t\t%d\n", &v179, 8u);
LABEL_35:
  _NSCoreDataLog_console(1, "  Device ID: \t\t%d", v174.st_dev);
  objc_autoreleasePoolPop(v29);
  v33 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_40;
  }

  v34 = _pflogging_catastrophic_mode;
  v35 = _PFLogGetLogStream(1);
  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (v34)
  {
    if (!v36)
    {
      goto LABEL_40;
    }

    v179.f_bsize = 134217984;
    *&v179.f_iosize = v174.st_size;
  }

  else
  {
    if (!v36)
    {
      goto LABEL_40;
    }

    v179.f_bsize = 134217984;
    *&v179.f_iosize = v174.st_size;
  }

  _os_log_error_impl(&dword_18565F000, v35, OS_LOG_TYPE_ERROR, "CoreData: error:   File Size: \t\t%lld bytes\n", &v179, 0xCu);
LABEL_40:
  _NSCoreDataLog_console(1, "  File Size: \t\t%lld bytes", v174.st_size);
  objc_autoreleasePoolPop(v33);
  v37 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_45;
  }

  v38 = _pflogging_catastrophic_mode;
  v39 = _PFLogGetLogStream(1);
  v40 = os_log_type_enabled(v39, OS_LOG_TYPE_ERROR);
  if (v38)
  {
    if (!v40)
    {
      goto LABEL_45;
    }

    v179.f_bsize = 134217984;
    *&v179.f_iosize = v174.st_ino;
  }

  else
  {
    if (!v40)
    {
      goto LABEL_45;
    }

    v179.f_bsize = 134217984;
    *&v179.f_iosize = v174.st_ino;
  }

  _os_log_error_impl(&dword_18565F000, v39, OS_LOG_TYPE_ERROR, "CoreData: error:   File inode: \t\t%llu\n", &v179, 0xCu);
LABEL_45:
  _NSCoreDataLog_console(1, "  File inode: \t\t%llu", v174.st_ino);
  objc_autoreleasePoolPop(v37);
  v41 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_50;
  }

  v42 = _pflogging_catastrophic_mode;
  v43 = _PFLogGetLogStream(1);
  v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
  if (v42)
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_uid;
  }

  else
  {
    if (!v44)
    {
      goto LABEL_50;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_uid;
  }

  _os_log_error_impl(&dword_18565F000, v43, OS_LOG_TYPE_ERROR, "CoreData: error:   File user ID: \t\t%u\n", &v179, 8u);
LABEL_50:
  _NSCoreDataLog_console(1, "  File user ID: \t\t%u", v174.st_uid);
  objc_autoreleasePoolPop(v41);
  v45 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_55;
  }

  v46 = _pflogging_catastrophic_mode;
  v47 = _PFLogGetLogStream(1);
  v48 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_55;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_gid;
  }

  else
  {
    if (!v48)
    {
      goto LABEL_55;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_gid;
  }

  _os_log_error_impl(&dword_18565F000, v47, OS_LOG_TYPE_ERROR, "CoreData: error:   File group ID: \t\t%u\n", &v179, 8u);
LABEL_55:
  _NSCoreDataLog_console(1, "  File group ID: \t\t%u", v174.st_gid);
  objc_autoreleasePoolPop(v45);
  v49 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_60;
  }

  v50 = _pflogging_catastrophic_mode;
  v51 = _PFLogGetLogStream(1);
  v52 = os_log_type_enabled(v51, OS_LOG_TYPE_ERROR);
  if (v50)
  {
    if (!v52)
    {
      goto LABEL_60;
    }

    LOWORD(v179.f_bsize) = 0;
  }

  else
  {
    if (!v52)
    {
      goto LABEL_60;
    }

    LOWORD(v179.f_bsize) = 0;
  }

  _os_log_error_impl(&dword_18565F000, v51, OS_LOG_TYPE_ERROR, "CoreData: error:   File Permissions: \t\n", &v179, 2u);
LABEL_60:
  _NSCoreDataLog_console(1, "  File Permissions: \t");
  objc_autoreleasePoolPop(v49);
  v53 = v174.st_mode & 0xF000;
  v54 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (v53 == 0x4000)
  {
    if (_pflogging_enable_oslog >= 1)
    {
      v55 = _pflogging_catastrophic_mode;
      v56 = _PFLogGetLogStream(1);
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_ERROR);
      if (v55)
      {
        if (v57)
        {
          LOWORD(v179.f_bsize) = 0;
LABEL_290:
          _os_log_error_impl(&dword_18565F000, v56, OS_LOG_TYPE_ERROR, "CoreData: error: d\n", &v179, 2u);
        }
      }

      else if (v57)
      {
        LOWORD(v179.f_bsize) = 0;
        goto LABEL_290;
      }
    }

    _NSCoreDataLog_console(1, "d");
    goto LABEL_73;
  }

  if (_pflogging_enable_oslog >= 1)
  {
    v58 = _pflogging_catastrophic_mode;
    v59 = _PFLogGetLogStream(1);
    v60 = os_log_type_enabled(v59, OS_LOG_TYPE_ERROR);
    if (v58)
    {
      if (v60)
      {
        LOWORD(v179.f_bsize) = 0;
LABEL_292:
        _os_log_error_impl(&dword_18565F000, v59, OS_LOG_TYPE_ERROR, "CoreData: error: -\n", &v179, 2u);
      }
    }

    else if (v60)
    {
      LOWORD(v179.f_bsize) = 0;
      goto LABEL_292;
    }
  }

  _NSCoreDataLog_console(1, "-");
LABEL_73:
  objc_autoreleasePoolPop(v54);
  v61 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_78;
  }

  v62 = _pflogging_catastrophic_mode;
  v63 = _PFLogGetLogStream(1);
  v64 = os_log_type_enabled(v63, OS_LOG_TYPE_ERROR);
  if (v62)
  {
    if (!v64)
    {
      goto LABEL_78;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_mode & 0x1FF;
  }

  else
  {
    if (!v64)
    {
      goto LABEL_78;
    }

    v179.f_bsize = 67109120;
    v179.f_iosize = v174.st_mode & 0x1FF;
  }

  _os_log_error_impl(&dword_18565F000, v63, OS_LOG_TYPE_ERROR, "CoreData: error:   %3o\n", &v179, 8u);
LABEL_78:
  _NSCoreDataLog_console(1, "  %3o", v174.st_mode & 0x1FF);
  objc_autoreleasePoolPop(v61);
  v65 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v66 = _pflogging_catastrophic_mode;
    v67 = _PFLogGetLogStream(1);
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_ERROR);
    if (v66)
    {
      if (v68)
      {
        if ((v174.st_mode & 0xF000) == 0xA000)
        {
          v69 = "is";
        }

        else
        {
          v69 = "is not";
        }

        v179.f_bsize = 136315138;
        *&v179.f_iosize = v69;
LABEL_261:
        _os_log_error_impl(&dword_18565F000, v67, OS_LOG_TYPE_ERROR, "CoreData: error:   file %s a symbolic link\n", &v179, 0xCu);
      }
    }

    else if (v68)
    {
      if ((v174.st_mode & 0xF000) == 0xA000)
      {
        v171 = "is";
      }

      else
      {
        v171 = "is not";
      }

      v179.f_bsize = 136315138;
      *&v179.f_iosize = v171;
      goto LABEL_261;
    }
  }

  if ((v174.st_mode & 0xF000) == 0xA000)
  {
    v70 = "is";
  }

  else
  {
    v70 = "is not";
  }

  _NSCoreDataLog_console(1, "  file %s a symbolic link", v70);
  objc_autoreleasePoolPop(v65);
LABEL_90:
  memset(&v179, 0, 512);
  if (statfs(a2, &v179))
  {
    v71 = *__error();
    v72 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v73 = _pflogging_catastrophic_mode;
      v74 = _PFLogGetLogStream(1);
      v75 = os_log_type_enabled(v74, OS_LOG_TYPE_ERROR);
      if (v73)
      {
        if (v75)
        {
          goto LABEL_236;
        }
      }

      else if (v75)
      {
LABEL_236:
        v170 = strerror(v71);
        *buf = 67109378;
        *v176 = v71;
        *&v176[4] = 2080;
        *&v176[6] = v170;
        _os_log_error_impl(&dword_18565F000, v74, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to statfs file; errno %d / %s.\n", buf, 0x12u);
      }
    }

    strerror(v71);
    _NSCoreDataLog_console(1, "Failed to statfs file; errno %d / %s.");
LABEL_101:
    objc_autoreleasePoolPop(v72);
    return;
  }

  v76 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v77 = _pflogging_catastrophic_mode;
    v78 = _PFLogGetLogStream(1);
    v79 = os_log_type_enabled(v78, OS_LOG_TYPE_ERROR);
    if (v77)
    {
      if (!v79)
      {
        goto LABEL_104;
      }

      *buf = 0;
    }

    else
    {
      if (!v79)
      {
        goto LABEL_104;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v78, OS_LOG_TYPE_ERROR, "CoreData: error: Information for file system\n", buf, 2u);
  }

LABEL_104:
  _NSCoreDataLog_console(1, "Information for file system");
  objc_autoreleasePoolPop(v76);
  v80 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_109;
  }

  v81 = _pflogging_catastrophic_mode;
  v82 = _PFLogGetLogStream(1);
  v83 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);
  if (v81)
  {
    if (!v83)
    {
      goto LABEL_109;
    }

    *buf = 0;
  }

  else
  {
    if (!v83)
    {
      goto LABEL_109;
    }

    *buf = 0;
  }

  _os_log_error_impl(&dword_18565F000, v82, OS_LOG_TYPE_ERROR, "CoreData: error: ---------------------------\n", buf, 2u);
LABEL_109:
  _NSCoreDataLog_console(1, "---------------------------");
  objc_autoreleasePoolPop(v80);
  v84 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_114;
  }

  v85 = _pflogging_catastrophic_mode;
  v86 = _PFLogGetLogStream(1);
  v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
  if (v85)
  {
    if (!v87)
    {
      goto LABEL_114;
    }

    *buf = 134217984;
    *v176 = v179.f_type;
  }

  else
  {
    if (!v87)
    {
      goto LABEL_114;
    }

    *buf = 134217984;
    *v176 = v179.f_type;
  }

  _os_log_error_impl(&dword_18565F000, v86, OS_LOG_TYPE_ERROR, "CoreData: error:   File system type: \t\t%#lx\n", buf, 0xCu);
LABEL_114:
  _NSCoreDataLog_console(1, "  File system type: \t\t%#lx", v179.f_type);
  objc_autoreleasePoolPop(v84);
  v88 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_119;
  }

  v89 = _pflogging_catastrophic_mode;
  v90 = _PFLogGetLogStream(1);
  v91 = os_log_type_enabled(v90, OS_LOG_TYPE_ERROR);
  if (v89)
  {
    if (!v91)
    {
      goto LABEL_119;
    }

    *buf = 134217984;
    *v176 = v179.f_flags;
  }

  else
  {
    if (!v91)
    {
      goto LABEL_119;
    }

    *buf = 134217984;
    *v176 = v179.f_flags;
  }

  _os_log_error_impl(&dword_18565F000, v90, OS_LOG_TYPE_ERROR, "CoreData: error:   File system flags: \t\t%#lx\n", buf, 0xCu);
LABEL_119:
  _NSCoreDataLog_console(1, "  File system flags: \t\t%#lx", v179.f_flags);
  objc_autoreleasePoolPop(v88);
  f_flags = v179.f_flags;
  if ((v179.f_flags & 1) == 0)
  {
    if ((v179.f_flags & 0x2000) == 0)
    {
      goto LABEL_121;
    }

    goto LABEL_132;
  }

  v93 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v94 = _pflogging_catastrophic_mode;
    v95 = _PFLogGetLogStream(1);
    v96 = os_log_type_enabled(v95, OS_LOG_TYPE_ERROR);
    if (v94)
    {
      if (!v96)
      {
        goto LABEL_131;
      }

      *buf = 0;
    }

    else
    {
      if (!v96)
      {
        goto LABEL_131;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v95, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_RDONLY\n", buf, 2u);
  }

LABEL_131:
  _NSCoreDataLog_console(1, "  MNT_RDONLY");
  objc_autoreleasePoolPop(v93);
  f_flags = v179.f_flags;
  if ((v179.f_flags & 0x2000) == 0)
  {
LABEL_121:
    if ((f_flags & 0x4000) == 0)
    {
      goto LABEL_122;
    }

    goto LABEL_138;
  }

LABEL_132:
  v97 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_137;
  }

  v98 = _pflogging_catastrophic_mode;
  v99 = _PFLogGetLogStream(1);
  v100 = os_log_type_enabled(v99, OS_LOG_TYPE_ERROR);
  if (v98)
  {
    if (!v100)
    {
      goto LABEL_137;
    }

    *buf = 0;
  }

  else
  {
    if (!v100)
    {
      goto LABEL_137;
    }

    *buf = 0;
  }

  _os_log_error_impl(&dword_18565F000, v99, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_QUOTA\n", buf, 2u);
LABEL_137:
  _NSCoreDataLog_console(1, "  MNT_QUOTA");
  objc_autoreleasePoolPop(v97);
  f_flags = v179.f_flags;
  if ((v179.f_flags & 0x4000) == 0)
  {
LABEL_122:
    if ((f_flags & 0x200000) == 0)
    {
      goto LABEL_123;
    }

    goto LABEL_144;
  }

LABEL_138:
  v101 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_143;
  }

  v102 = _pflogging_catastrophic_mode;
  v103 = _PFLogGetLogStream(1);
  v104 = os_log_type_enabled(v103, OS_LOG_TYPE_ERROR);
  if (v102)
  {
    if (!v104)
    {
      goto LABEL_143;
    }

    *buf = 0;
  }

  else
  {
    if (!v104)
    {
      goto LABEL_143;
    }

    *buf = 0;
  }

  _os_log_error_impl(&dword_18565F000, v103, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_ROOTFS\n", buf, 2u);
LABEL_143:
  _NSCoreDataLog_console(1, "  MNT_ROOTFS");
  objc_autoreleasePoolPop(v101);
  f_flags = v179.f_flags;
  if ((v179.f_flags & 0x200000) == 0)
  {
LABEL_123:
    if ((f_flags & 0x800000) == 0)
    {
      goto LABEL_124;
    }

LABEL_150:
    v109 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog < 1)
    {
      goto LABEL_155;
    }

    v110 = _pflogging_catastrophic_mode;
    v111 = _PFLogGetLogStream(1);
    v112 = os_log_type_enabled(v111, OS_LOG_TYPE_ERROR);
    if (v110)
    {
      if (!v112)
      {
        goto LABEL_155;
      }

      *buf = 0;
    }

    else
    {
      if (!v112)
      {
        goto LABEL_155;
      }

      *buf = 0;
    }

    _os_log_error_impl(&dword_18565F000, v111, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_JOURNALED\n", buf, 2u);
LABEL_155:
    _NSCoreDataLog_console(1, "  MNT_JOURNALED");
    objc_autoreleasePoolPop(v109);
    if ((v179.f_flags & 0x2000000) == 0)
    {
      goto LABEL_162;
    }

LABEL_156:
    v113 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v114 = _pflogging_catastrophic_mode;
      v115 = _PFLogGetLogStream(1);
      v116 = os_log_type_enabled(v115, OS_LOG_TYPE_ERROR);
      if (v114)
      {
        if (v116)
        {
          *buf = 0;
LABEL_304:
          _os_log_error_impl(&dword_18565F000, v115, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_DEFWRITE\n", buf, 2u);
        }
      }

      else if (v116)
      {
        *buf = 0;
        goto LABEL_304;
      }
    }

    _NSCoreDataLog_console(1, "  MNT_DEFWRITE");
    objc_autoreleasePoolPop(v113);
    goto LABEL_162;
  }

LABEL_144:
  v105 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_149;
  }

  v106 = _pflogging_catastrophic_mode;
  v107 = _PFLogGetLogStream(1);
  v108 = os_log_type_enabled(v107, OS_LOG_TYPE_ERROR);
  if (v106)
  {
    if (!v108)
    {
      goto LABEL_149;
    }

    *buf = 0;
  }

  else
  {
    if (!v108)
    {
      goto LABEL_149;
    }

    *buf = 0;
  }

  _os_log_error_impl(&dword_18565F000, v107, OS_LOG_TYPE_ERROR, "CoreData: error:   MNT_UNKNOWNPERMISSIONS\n", buf, 2u);
LABEL_149:
  _NSCoreDataLog_console(1, "  MNT_UNKNOWNPERMISSIONS");
  objc_autoreleasePoolPop(v105);
  f_flags = v179.f_flags;
  if ((v179.f_flags & 0x800000) != 0)
  {
    goto LABEL_150;
  }

LABEL_124:
  if ((f_flags & 0x2000000) != 0)
  {
    goto LABEL_156;
  }

LABEL_162:
  v117 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_167;
  }

  v118 = _pflogging_catastrophic_mode;
  v119 = _PFLogGetLogStream(1);
  v120 = os_log_type_enabled(v119, OS_LOG_TYPE_ERROR);
  if (v118)
  {
    if (!v120)
    {
      goto LABEL_167;
    }

    *buf = 134217984;
    *v176 = v179.f_blocks;
  }

  else
  {
    if (!v120)
    {
      goto LABEL_167;
    }

    *buf = 134217984;
    *v176 = v179.f_blocks;
  }

  _os_log_error_impl(&dword_18565F000, v119, OS_LOG_TYPE_ERROR, "CoreData: error:   Total data blocks: \t\t%lu\n", buf, 0xCu);
LABEL_167:
  _NSCoreDataLog_console(1, "  Total data blocks: \t\t%lu", v179.f_blocks);
  objc_autoreleasePoolPop(v117);
  v121 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_172;
  }

  v122 = _pflogging_catastrophic_mode;
  v123 = _PFLogGetLogStream(1);
  v124 = os_log_type_enabled(v123, OS_LOG_TYPE_ERROR);
  if (v122)
  {
    if (!v124)
    {
      goto LABEL_172;
    }

    *buf = 134217984;
    *v176 = v179.f_bfree;
  }

  else
  {
    if (!v124)
    {
      goto LABEL_172;
    }

    *buf = 134217984;
    *v176 = v179.f_bfree;
  }

  _os_log_error_impl(&dword_18565F000, v123, OS_LOG_TYPE_ERROR, "CoreData: error:   Free data blocks: \t\t%lu\n", buf, 0xCu);
LABEL_172:
  _NSCoreDataLog_console(1, "  Free data blocks: \t\t%lu", v179.f_bfree);
  objc_autoreleasePoolPop(v121);
  v125 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_177;
  }

  v126 = _pflogging_catastrophic_mode;
  v127 = _PFLogGetLogStream(1);
  v128 = os_log_type_enabled(v127, OS_LOG_TYPE_ERROR);
  if (v126)
  {
    if (!v128)
    {
      goto LABEL_177;
    }

    *buf = 134217984;
    *v176 = v179.f_bavail;
  }

  else
  {
    if (!v128)
    {
      goto LABEL_177;
    }

    *buf = 134217984;
    *v176 = v179.f_bavail;
  }

  _os_log_error_impl(&dword_18565F000, v127, OS_LOG_TYPE_ERROR, "CoreData: error:   Free blocks for nonsuperuser:\t%lu\n", buf, 0xCu);
LABEL_177:
  _NSCoreDataLog_console(1, "  Free blocks for nonsuperuser:\t%lu", v179.f_bavail);
  objc_autoreleasePoolPop(v125);
  v129 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_182;
  }

  v130 = _pflogging_catastrophic_mode;
  v131 = _PFLogGetLogStream(1);
  v132 = os_log_type_enabled(v131, OS_LOG_TYPE_ERROR);
  if (v130)
  {
    if (!v132)
    {
      goto LABEL_182;
    }

    *buf = 134217984;
    *v176 = v179.f_files;
  }

  else
  {
    if (!v132)
    {
      goto LABEL_182;
    }

    *buf = 134217984;
    *v176 = v179.f_files;
  }

  _os_log_error_impl(&dword_18565F000, v131, OS_LOG_TYPE_ERROR, "CoreData: error:   Total i-nodes: \t\t\t%lu\n", buf, 0xCu);
LABEL_182:
  _NSCoreDataLog_console(1, "  Total i-nodes: \t\t\t%lu", v179.f_files);
  objc_autoreleasePoolPop(v129);
  v133 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_187;
  }

  v134 = _pflogging_catastrophic_mode;
  v135 = _PFLogGetLogStream(1);
  v136 = os_log_type_enabled(v135, OS_LOG_TYPE_ERROR);
  if (v134)
  {
    if (!v136)
    {
      goto LABEL_187;
    }
  }

  else if (!v136)
  {
    goto LABEL_187;
  }

  *buf = 67109376;
  *v176 = v179.f_fsid.val[0];
  *&v176[4] = 1024;
  *&v176[6] = v179.f_fsid.val[1];
  _os_log_error_impl(&dword_18565F000, v135, OS_LOG_TYPE_ERROR, "CoreData: error:   File system ID: \t\t%#x, %#x\n", buf, 0xEu);
LABEL_187:
  _NSCoreDataLog_console(1, "  File system ID: \t\t%#x, %#x", v179.f_fsid.val[0], v179.f_fsid.val[1]);
  objc_autoreleasePoolPop(v133);
  v137 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_192;
  }

  v138 = _pflogging_catastrophic_mode;
  v139 = _PFLogGetLogStream(1);
  v140 = os_log_type_enabled(v139, OS_LOG_TYPE_ERROR);
  if (v138)
  {
    if (!v140)
    {
      goto LABEL_192;
    }

    *buf = 134217984;
    *v176 = v179.f_ffree;
  }

  else
  {
    if (!v140)
    {
      goto LABEL_192;
    }

    *buf = 134217984;
    *v176 = v179.f_ffree;
  }

  _os_log_error_impl(&dword_18565F000, v139, OS_LOG_TYPE_ERROR, "CoreData: error:   Free i-nodes: \t\t\t%llu\n", buf, 0xCu);
LABEL_192:
  _NSCoreDataLog_console(1, "  Free i-nodes: \t\t\t%llu", v179.f_ffree);
  objc_autoreleasePoolPop(v137);
  v141 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_197;
  }

  v142 = _pflogging_catastrophic_mode;
  v143 = _PFLogGetLogStream(1);
  v144 = os_log_type_enabled(v143, OS_LOG_TYPE_ERROR);
  if (v142)
  {
    if (!v144)
    {
      goto LABEL_197;
    }

    *buf = 67109120;
    *v176 = v179.f_owner;
  }

  else
  {
    if (!v144)
    {
      goto LABEL_197;
    }

    *buf = 67109120;
    *v176 = v179.f_owner;
  }

  _os_log_error_impl(&dword_18565F000, v143, OS_LOG_TYPE_ERROR, "CoreData: error:   Owner UID: \t\t\t%u\n", buf, 8u);
LABEL_197:
  _NSCoreDataLog_console(1, "  Owner UID: \t\t\t%u", v179.f_owner);
  objc_autoreleasePoolPop(v141);
  v145 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_202;
  }

  v146 = _pflogging_catastrophic_mode;
  v147 = _PFLogGetLogStream(1);
  v148 = os_log_type_enabled(v147, OS_LOG_TYPE_ERROR);
  if (v146)
  {
    if (!v148)
    {
      goto LABEL_202;
    }

    *buf = 136315138;
    *v176 = v179.f_fstypename;
  }

  else
  {
    if (!v148)
    {
      goto LABEL_202;
    }

    *buf = 136315138;
    *v176 = v179.f_fstypename;
  }

  _os_log_error_impl(&dword_18565F000, v147, OS_LOG_TYPE_ERROR, "CoreData: error:   Filesystem type name: \t\t%s\n", buf, 0xCu);
LABEL_202:
  _NSCoreDataLog_console(1, "  Filesystem type name: \t\t%s", v179.f_fstypename);
  objc_autoreleasePoolPop(v145);
  v149 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_207;
  }

  v150 = _pflogging_catastrophic_mode;
  v151 = _PFLogGetLogStream(1);
  v152 = os_log_type_enabled(v151, OS_LOG_TYPE_ERROR);
  if (v150)
  {
    if (!v152)
    {
      goto LABEL_207;
    }

    *buf = 136315138;
    *v176 = v179.f_mntonname;
  }

  else
  {
    if (!v152)
    {
      goto LABEL_207;
    }

    *buf = 136315138;
    *v176 = v179.f_mntonname;
  }

  _os_log_error_impl(&dword_18565F000, v151, OS_LOG_TYPE_ERROR, "CoreData: error:   Mount on name: \t\t\t%s\n", buf, 0xCu);
LABEL_207:
  _NSCoreDataLog_console(1, "  Mount on name: \t\t\t%s", v179.f_mntonname);
  objc_autoreleasePoolPop(v149);
  v153 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog < 1)
  {
    goto LABEL_212;
  }

  v154 = _pflogging_catastrophic_mode;
  v155 = _PFLogGetLogStream(1);
  v156 = os_log_type_enabled(v155, OS_LOG_TYPE_ERROR);
  if (v154)
  {
    if (!v156)
    {
      goto LABEL_212;
    }

    *buf = 136315138;
    *v176 = v179.f_mntfromname;
  }

  else
  {
    if (!v156)
    {
      goto LABEL_212;
    }

    *buf = 136315138;
    *v176 = v179.f_mntfromname;
  }

  _os_log_error_impl(&dword_18565F000, v155, OS_LOG_TYPE_ERROR, "CoreData: error:   Mount from name: \t\t%s\n", buf, 0xCu);
LABEL_212:
  _NSCoreDataLog_console(1, "  Mount from name: \t\t%s", v179.f_mntfromname);
  objc_autoreleasePoolPop(v153);
  if (information)
  {
    getpid();
    v157 = sandbox_check();
    if (v157 != 1)
    {
      if (!v157)
      {
        v72 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v158 = _pflogging_catastrophic_mode;
          v159 = _PFLogGetLogStream(1);
          v160 = os_log_type_enabled(v159, OS_LOG_TYPE_ERROR);
          if (v158)
          {
            if (v160)
            {
              *buf = 136315138;
              *v176 = information;
LABEL_306:
              _os_log_error_impl(&dword_18565F000, v159, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s allowed\n", buf, 0xCu);
            }
          }

          else if (v160)
          {
            *buf = 136315138;
            *v176 = information;
            goto LABEL_306;
          }
        }

        _NSCoreDataLog_console(1, "  Sandbox access to %s allowed");
        goto LABEL_101;
      }

      v164 = *__error();
      v72 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v165 = _pflogging_catastrophic_mode;
        v166 = _PFLogGetLogStream(1);
        v167 = os_log_type_enabled(v166, OS_LOG_TYPE_ERROR);
        if (v165)
        {
          if (v167)
          {
            goto LABEL_309;
          }
        }

        else if (v167)
        {
LABEL_309:
          v172 = __error();
          v173 = strerror(*v172);
          *buf = 136315650;
          *v176 = information;
          *&v176[8] = 1024;
          *&v176[10] = v164;
          v177 = 2080;
          v178 = v173;
          _os_log_error_impl(&dword_18565F000, v166, OS_LOG_TYPE_ERROR, "CoreData: error:   Unable to determine if sandbox access to %s is allowed: %d (%s)\n", buf, 0x1Cu);
        }
      }

      v168 = __error();
      strerror(*v168);
      _NSCoreDataLog_console(1, "  Unable to determine if sandbox access to %s is allowed: %d (%s)");
      goto LABEL_101;
    }

    v72 = objc_autoreleasePoolPush();
    _pflogInitialize(1);
    if (_pflogging_enable_oslog >= 1)
    {
      v161 = _pflogging_catastrophic_mode;
      v162 = _PFLogGetLogStream(1);
      v163 = os_log_type_enabled(v162, OS_LOG_TYPE_ERROR);
      if (v161)
      {
        if (v163)
        {
          *buf = 136315138;
          *v176 = information;
LABEL_308:
          _os_log_error_impl(&dword_18565F000, v162, OS_LOG_TYPE_ERROR, "CoreData: error:   Sandbox access to %s denied\n", buf, 0xCu);
        }
      }

      else if (v163)
      {
        *buf = 136315138;
        *v176 = information;
        goto LABEL_308;
      }
    }

    _NSCoreDataLog_console(1, "  Sandbox access to %s denied");
    goto LABEL_101;
  }
}

+ (uint64_t)_doNameAndTypeCheck:(uint64_t)check
{
  objc_opt_self();
  if (!a2)
  {
    return 1;
  }

  v3 = [a2 count];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = objc_opt_class();
  v6 = 0;
  v7 = 1;
  while (1)
  {
    result = [objc_msgSend(a2 objectAtIndex:{v6), "name"}];
    if (!result)
    {
      break;
    }

    if (v5 == objc_opt_class())
    {
      return 0;
    }

    v6 = v7;
    if (v4 <= v7++)
    {
      return 1;
    }
  }

  return result;
}

+ (uint64_t)convertCString:(unint64_t *)string toUnsignedInt64:(int)int64 withBase:
{
  objc_opt_self();
  __endptr = 0;
  v7 = strtouq(a2, &__endptr, int64);
  if (__endptr)
  {
    v8 = __endptr == a2;
  }

  else
  {
    v8 = 1;
  }

  if (v8 || *__endptr)
  {
    v7 = 0;
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  *string = v7;
  return v9;
}

+ (uint64_t)xpcStoreArchiverObjectIDClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE920 != -1)
  {
    dispatch_once(&qword_1ED4BE920, &__block_literal_global_142);
  }

  return qword_1ED4BE918;
}

+ (uint64_t)historyChangesArrayClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE930 != -1)
  {
    dispatch_once(&qword_1ED4BE930, &__block_literal_global_145);
  }

  return qword_1ED4BE928;
}

+ (uint64_t)historyQueryGenDataClassesForSecureCoding
{
  objc_opt_self();
  if (qword_1ED4BE940 != -1)
  {
    dispatch_once(&qword_1ED4BE940, &__block_literal_global_148);
  }

  return qword_1ED4BE938;
}

+ (id)valueForProcessArgument:(uint64_t)argument
{
  v20 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-%@", a2];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v16;
LABEL_4:
    v10 = 0;
    v11 = v8;
    v8 += v7;
    while (1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v4);
      }

      if ([*(*(&v15 + 1) + 8 * v10) isEqualToString:v5])
      {
        break;
      }

      ++v11;
      if (v7 == ++v10)
      {
        v7 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v7)
        {
          goto LABEL_4;
        }

        goto LABEL_10;
      }
    }

    if (v11 >= [v4 count] - 1)
    {
      goto LABEL_13;
    }

    v12 = [v4 objectAtIndex:v11 + 1];
  }

  else
  {
LABEL_10:

LABEL_13:
    v12 = 0;
  }

  v13 = v12;
  objc_autoreleasePoolPop(v3);
  return v12;
}

+ (void)stringValueForOverride:(uint64_t)override
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  v4 = v3;
  if (((byte_1ED4BEEC7 & 1) != 0 || (byte_1ED4BEECC & 1) == 0) && (!v3 || ![v3 length]))
  {
    v5 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    if (!v5 || (v4 = v5, ![v5 length]))
    {
      v4 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    }
  }

  if ([v4 length])
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

+ (uint64_t)integerValueForOverride:(uint64_t)override
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length])
  {
    goto LABEL_6;
  }

  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ([v3 length])
  {
LABEL_6:

    return [v3 integerValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults integerForKey:a2];
  }
}

+ (uint64_t)sensitiveIntegerValueForOverride:(uint64_t)override
{
  objc_opt_self();
  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v4 = [_PFRoutines valueForProcessArgument:a2];
  if ([v4 length] || (v4 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "environment"), "objectForKey:", a2), objc_msgSend(v4, "length")))
  {

    return [v4 integerValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults integerForKey:a2];
  }
}

+ (uint64_t)BOOLValueForOverride:(uint64_t)override
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length])
  {
    goto LABEL_6;
  }

  if (byte_1ED4BEEC7 & 1) == 0 && (byte_1ED4BEECC)
  {
    return 0;
  }

  v3 = [objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
  if ([v3 length])
  {
LABEL_6:

    return [v3 BOOLValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults BOOLForKey:a2];
  }
}

+ (uint64_t)insecureBoolValueForOverride:(uint64_t)override
{
  objc_opt_self();
  v3 = [_PFRoutines valueForProcessArgument:a2];
  if ([v3 length] || (v3 = objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AE30], "processInfo"), "environment"), "objectForKey:", a2), objc_msgSend(v3, "length")))
  {

    return [v3 BOOLValue];
  }

  else
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];

    return [standardUserDefaults BOOLForKey:a2];
  }
}

+ (uint64_t)writePFExternalReferenceDataToInterimFile:(uint64_t)file
{
  v54 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (![a2 hasExternalReferenceContent])
  {
    return 0;
  }

  _externalReferenceLocation = [a2 _externalReferenceLocation];
  v4 = strlen(_externalReferenceLocation);
  v5 = malloc_type_calloc(1uLL, v4 + 9, 0x375C96A5uLL);
  strcat(&strncat(v5, _externalReferenceLocation, v4)[v4 - 1], ".interim");
  _originalData = [a2 _originalData];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  v8 = objc_opt_class();
  if (v8 == objc_opt_class())
  {
    _safeguardLocation = [_originalData _safeguardLocation];
    if (!_safeguardLocation)
    {
      goto LABEL_23;
    }

    path = [MEMORY[0x1E696AEC0] stringWithUTF8String:_safeguardLocation];
    v43 = 0;
    if (!+[_PFRoutines createExternalReferenceLinkFromPath:toPath:protectionLevel:error:](_PFRoutines, path, v7, [a2 preferredProtectionLevel], &v43))
    {
      v11 = objc_autoreleasePoolPush();
      _pflogInitialize(1);
      if (_pflogging_enable_oslog >= 1)
      {
        v17 = _pflogging_catastrophic_mode;
        LogStream = _PFLogGetLogStream(1);
        v18 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
        if (v17)
        {
          if (v18)
          {
            goto LABEL_21;
          }
        }

        else if (v18)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    }

LABEL_13:
    v16 = v5;
    goto LABEL_42;
  }

  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    path = [-[_PFEvanescentData url](_originalData) path];
    if ([path UTF8String])
    {
      v43 = 0;
      if (!+[_PFRoutines createExternalReferenceLinkFromPath:toPath:protectionLevel:error:](_PFRoutines, path, v7, [a2 preferredProtectionLevel], &v43))
      {
        v11 = objc_autoreleasePoolPush();
        _pflogInitialize(1);
        if (_pflogging_enable_oslog >= 1)
        {
          v12 = _pflogging_catastrophic_mode;
          LogStream = _PFLogGetLogStream(1);
          v14 = os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR);
          if (v12)
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if (v14)
          {
LABEL_21:
            *buf = 138412802;
            v49 = path;
            v50 = 2112;
            v51 = v7;
            v52 = 2112;
            v53 = v43;
            _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to clone external data reference from %@ to %@ error: %@\n", buf, 0x20u);
          }
        }

LABEL_22:
        _NSCoreDataLog_console(1, "Failed to clone external data reference from %@ to %@ error: %@", path, v7, v43);
        objc_autoreleasePoolPop(v11);
        goto LABEL_23;
      }

      goto LABEL_13;
    }
  }

LABEL_23:
  v42 = _externalReferenceLocation;
  v19 = open(v5, 2561, 420);
  if (v19 < 0)
  {
    free(v5);
    v34 = MEMORY[0x1E695DF30];
    v35 = *MEMORY[0x1E695D930];
    v40 = MEMORY[0x1E696AEC0];
    v41 = __error();
    v36 = objc_msgSend_stringWithFormat_(v40, *v41);
    v46 = @"Problem Path";
    v47 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_externalReferenceLocation];
    v37 = MEMORY[0x1E695DF20];
    v38 = &v47;
    v39 = &v46;
LABEL_46:
    objc_exception_throw([v34 exceptionWithName:v35 reason:v36 userInfo:{objc_msgSend(v37, "dictionaryWithObjects:forKeys:count:", v38, v39, 1)}]);
  }

  v20 = v19;
  _bytesLengthForExternalReference = [a2 _bytesLengthForExternalReference];
  v22 = malloc_type_malloc(0x40000uLL, 0x100004077774924uLL);
  v23 = 0;
  if (_bytesLengthForExternalReference >= 0x40000)
  {
    v24 = 0x40000;
  }

  else
  {
    v24 = _bytesLengthForExternalReference;
  }

  do
  {
    [_originalData getBytes:v22 range:{v23, v24}];
    if (pwrite(v20, v22, v24, v23) != v24)
    {
      v33 = *__error();
      close(v20);
      free(v5);
      free(v22);
      v34 = MEMORY[0x1E695DF30];
      v35 = *MEMORY[0x1E695D930];
      v36 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v33);
      v44 = @"Problem Path";
      v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v42];
      v37 = MEMORY[0x1E695DF20];
      v38 = &v45;
      v39 = &v44;
      goto LABEL_46;
    }

    _bytesLengthForExternalReference -= v24;
    v23 += v24;
    if (_bytesLengthForExternalReference >= 0x40000)
    {
      v24 = 0x40000;
    }

    else
    {
      v24 = _bytesLengthForExternalReference;
    }
  }

  while (_bytesLengthForExternalReference > 0);
  preferredProtectionLevel = [a2 preferredProtectionLevel];
  fcntl(v20, 64, preferredProtectionLevel);
  close(v20);
  _safeguardLocation2 = [a2 _safeguardLocation];
  if (!_safeguardLocation2)
  {
    goto LABEL_41;
  }

  v43 = 0;
  v27 = [MEMORY[0x1E696AEC0] stringWithUTF8String:_safeguardLocation2];
  if ([_PFRoutines createExternalReferenceLinkFromPath:v7 toPath:v27 protectionLevel:preferredProtectionLevel error:&v43])
  {
    [a2 doCleanupOnDealloc];
    goto LABEL_41;
  }

  v28 = objc_autoreleasePoolPush();
  _pflogInitialize(1);
  if (_pflogging_enable_oslog >= 1)
  {
    v29 = _pflogging_catastrophic_mode;
    v30 = _PFLogGetLogStream(1);
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
    if (v29)
    {
      if (v31)
      {
LABEL_44:
        *buf = 138412802;
        v49 = v7;
        v50 = 2112;
        v51 = v27;
        v52 = 2112;
        v53 = v43;
        _os_log_error_impl(&dword_18565F000, v30, OS_LOG_TYPE_ERROR, "CoreData: error: Failed to clone external data reference from %@ to %@ error: %@\n", buf, 0x20u);
      }
    }

    else if (v31)
    {
      goto LABEL_44;
    }
  }

  _NSCoreDataLog_console(1, "Failed to clone external data reference from %@ to %@ error: %@", v7, v27, v43);
  objc_autoreleasePoolPop(v28);
LABEL_41:
  free(v5);
  v16 = v22;
LABEL_42:
  free(v16);
  return v7;
}

+ (BOOL)createExternalReferenceLinkFromPath:(uint64_t)path toPath:(uint64_t)toPath protectionLevel:(void *)level error:
{
  v31 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v24 = 0;
  if ([objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")])
  {
    goto LABEL_2;
  }

  if ([v24 code] == 516)
  {
    domain = [v24 domain];
    if ([domain isEqualToString:*MEMORY[0x1E696A250]])
    {
      v24 = 0;
LABEL_2:
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v29[0] = a2;
      v29[1] = path;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = open([*(*(&v20 + 1) + 8 * i) UTF8String], 1, 420);
            if (v14 >= 1)
            {
              v15 = v14;
              fcntl(v14, 64, toPath);
              close(v15);
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v30 count:16];
        }

        while (v11);
      }

      return 1;
    }
  }

  if (v24)
  {
    if (level)
    {
      result = 0;
      *level = v24;
      return result;
    }

    return 0;
  }

  LogStream = _PFLogGetLogStream(17);
  if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_PFRoutines.m";
    v27 = 1024;
    v28 = 2157;
    _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
  }

  v19 = _PFLogGetLogStream(17);
  result = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
  if (result)
  {
    *buf = 136315394;
    v26 = "/Library/Caches/com.apple.xbs/Sources/Persistence/_PFRoutines.m";
    v27 = 1024;
    v28 = 2157;
    _os_log_fault_impl(&dword_18565F000, v19, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
    return 0;
  }

  return result;
}

+ (uint64_t)moveInterimFileToPermanentLocation:(uint64_t)location
{
  v13[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  _externalReferenceLocation = [a2 _externalReferenceLocation];
  v4 = strlen(_externalReferenceLocation);
  v5 = malloc_type_calloc(1uLL, v4 + 9, 0x685324CAuLL);
  strcat(&strncat(v5, _externalReferenceLocation, v4)[v4 - 1], ".interim");
  rename(v5, _externalReferenceLocation, v6);
  if (v7)
  {
    v9 = *__error();
    free(v5);
    v10 = *MEMORY[0x1E695D930];
    v12 = @"Problem object";
    v13[0] = a2;
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:v10 reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{v9), objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v13, &v12, 1)}];
    objc_exception_throw(v11);
  }

  free(v5);
  return 1;
}

+ (void)readExternalReferenceDataFromFile:(uint64_t)file
{
  objc_opt_self();
  if (![a2 hasExternalReferenceContent])
  {
    return 0;
  }

  _safeguardLocation = [a2 _safeguardLocation];
  if (_safeguardLocation)
  {
    _externalReferenceLocation = _safeguardLocation;
    v5 = open(_safeguardLocation, 0);
    if (v5 < 0)
    {
      _externalReferenceLocation = [a2 _externalReferenceLocation];
      v5 = open(_externalReferenceLocation, 0);
      if (v5 < 0)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
    _externalReferenceLocation = [a2 _externalReferenceLocation];
    v5 = open(_externalReferenceLocation, 0);
    if (v5 < 0)
    {
LABEL_16:
      v18 = __error();
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D940];
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], _externalReferenceLocation, *v18);
LABEL_18:
      v15 = v21;
      v16 = v19;
      v17 = v20;
LABEL_19:
      objc_exception_throw([v16 exceptionWithName:v17 reason:v15 userInfo:0]);
    }
  }

  v7 = v5;
  fcntl(v5, 48, 1);
  _bytesLengthForExternalReference = [a2 _bytesLengthForExternalReference];
  v9 = _PF_Private_Malloc_Zone;
  if (!_PF_Private_Malloc_Zone)
  {
    v9 = malloc_default_zone();
  }

  v6 = malloc_type_zone_calloc(v9, _bytesLengthForExternalReference, 1uLL, 0x100004077774924uLL);
  v10 = read(v7, v6, _bytesLengthForExternalReference);
  if (v10 < 0)
  {
    v11 = *__error();
    close(v7);
    if (v11 >= 1)
    {
      v19 = MEMORY[0x1E695DF30];
      v20 = *MEMORY[0x1E695D930];
      v21 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, _externalReferenceLocation);
      goto LABEL_18;
    }
  }

  else
  {
    close(v7);
  }

  if (v10 != _bytesLengthForExternalReference)
  {
    v13 = MEMORY[0x1E695DF30];
    v14 = *MEMORY[0x1E695D930];
    v15 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], _externalReferenceLocation, _bytesLengthForExternalReference, v10);
    v16 = v13;
    v17 = v14;
    goto LABEL_19;
  }

  return v6;
}

+ (uint64_t)readBytesForExternalReferenceData:(void *)data intoBuffer:(off_t)buffer range:(size_t)range
{
  objc_opt_self();
  result = [a2 hasExternalReferenceContent];
  if (result)
  {
    _safeguardLocation = [a2 _safeguardLocation];
    if ((!_safeguardLocation || (v11 = _safeguardLocation, v12 = open(_safeguardLocation, 0), v12 < 0)) && (v11 = [a2 _externalReferenceLocation], v12 = open(v11, 0), v12 < 0))
    {
      v25 = __error();
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, *v25);
    }

    else
    {
      v13 = v12;
      fcntl(v12, 48, 1);
      v14 = pread(v13, data, range, buffer);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v15 = v14;
        result = close(v13);
        if (v15 == range)
        {
          return result;
        }

        v20 = MEMORY[0x1E695DF30];
        v21 = *MEMORY[0x1E695D940];
        v22 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v11, v15);
        v23 = v20;
        v24 = v21;
LABEL_12:
        objc_exception_throw([v23 exceptionWithName:v24 reason:v22 userInfo:0]);
      }

      close(v13);
      v16 = MEMORY[0x1E695DF30];
      v17 = *MEMORY[0x1E695D940];
      v18 = MEMORY[0x1E696AEC0];
      v26 = *__error();
      v19 = objc_msgSend_stringWithFormat_(v18, v11, v26);
    }

    v22 = v19;
    v23 = v16;
    v24 = v17;
    goto LABEL_12;
  }

  return result;
}

+ (void)deleteFileForPFExternalReferenceData:(uint64_t)data
{
  objc_opt_self();
  result = [a2 hasExternalReferenceContent];
  if (result)
  {
    externalReferenceLocationString = [a2 externalReferenceLocationString];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    result = [defaultManager fileExistsAtPath:externalReferenceLocationString];
    if (result)
    {

      return [defaultManager removeItemAtPath:externalReferenceLocationString error:0];
    }
  }

  return result;
}

+ (void)_isInMemoryStoreURL:(uint64_t)l
{
  objc_opt_self();
  result = [a2 isFileURL];
  if (result)
  {
    path = [a2 path];

    return [path hasPrefix:@"/dev/null"];
  }

  return result;
}

+ (BOOL)_isInMemoryStore:(uint64_t)store
{
  objc_opt_self();
  if ([a2 type] != @"SQLite")
  {
    return [a2 type] == @"InMemory";
  }

  if (a2)
  {
    return (a2[201] >> 6) & 1;
  }

  return 0;
}

+ (id)transformDecodeValue:(id)value forTransformerNamed:(id)named
{
  if (named && (v6 = [MEMORY[0x1E696B0A0] valueTransformerForName:named]) != 0)
  {
    v7 = v6;
    objc_opt_self();
    if ((objc_opt_isKindOfClass() & 1) == 0 && ([named isEqualToString:@"NSUnarchiveFromData"] & 1) == 0 && (objc_msgSend(named, "isEqualToString:", @"NSKeyedUnarchiveFromData") & 1) == 0 && (objc_msgSend(named, "isEqualToString:", @"NSSecureUnarchiveFromData") & 1) == 0)
    {
      return [v7 reverseTransformedValue:value];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A510]];
  }

  return [v7 transformedValue:value];
}

+ (uint64_t)unarchiveCylicGraphObjectOfClasses:(uint64_t)classes fromData:(uint64_t)data error:
{
  objc_opt_self();
  v7 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:classes error:data];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  [v7 setRequiresSecureCoding:1];
  [v8 setDecodingFailurePolicy:1];
  [v8 _allowDecodingCyclesInSecureMode];
  v9 = [v8 decodeTopLevelObjectOfClasses:a2 forKey:*MEMORY[0x1E696A508] error:data];

  return v9;
}

+ (id)retainedDecodeValue:(void *)value forTransformableAttribute:
{
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  v6 = +[_PFRoutines transformDecodeValue:forTransformerNamed:](_PFRoutines, "transformDecodeValue:forTransformerNamed:", a2, [value valueTransformerName]);
  objc_autoreleasePoolPop(v5);
  return v6;
}

+ (id)retainedEncodeObjectValue:(void *)value forTransformableAttribute:
{
  objc_opt_self();
  v5 = objc_autoreleasePoolPush();
  valueTransformerName = [value valueTransformerName];
  objc_opt_self();
  if (!valueTransformerName || (v7 = [MEMORY[0x1E696B0A0] valueTransformerForName:valueTransformerName]) == 0)
  {
    v8 = [MEMORY[0x1E696B0A0] valueTransformerForName:*MEMORY[0x1E696A510]];
LABEL_9:
    v9 = [v8 reverseTransformedValue:a2];
    goto LABEL_10;
  }

  v8 = v7;
  objc_opt_self();
  if (objc_opt_isKindOfClass() & 1) != 0 || ([valueTransformerName isEqualToString:@"NSUnarchiveFromData"] & 1) != 0 || (objc_msgSend(valueTransformerName, "isEqualToString:", @"NSKeyedUnarchiveFromData") & 1) != 0 || (objc_msgSend(valueTransformerName, "isEqualToString:", @"NSSecureUnarchiveFromData"))
  {
    goto LABEL_9;
  }

  v9 = [v8 transformedValue:a2];
LABEL_10:
  v10 = v9;
  objc_autoreleasePoolPop(v5);
  return v10;
}

+ (void)getIndexes:(void *)indexes fromCollection:(void *)collection forObjectsInCollection:
{
  v82 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([collection count])
  {
    v81 = 0u;
    v80 = 0u;
    v79 = 0u;
    v78 = 0u;
    v77 = 0u;
    v76 = 0u;
    v75 = 0u;
    v74 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v7 = [indexes count];
    v8 = MEMORY[0x1EEE9AC00](v7);
    v11 = (v32 - v10);
    v12 = 8 * v9;
    collectionCopy = collection;
    v34 = v8;
    v32[1] = v13;
    if (v8 > 0x200)
    {
      v11 = NSAllocateScannedUncollectable();
      v15 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v32 - v10, 8 * v9);
      MEMORY[0x1EEE9AC00](v14);
      v15 = v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v15, v12);
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v16 = [indexes countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v44;
      do
      {
        v20 = 0;
        v21 = v18;
        do
        {
          if (*v44 != v19)
          {
            objc_enumerationMutation(indexes);
          }

          v22 = *(*(&v43 + 1) + 8 * v20);
          v18 = v21 + 1;
          *&v15[8 * v21] = v21 + 1;
          v11[v21] = v22;
          ++v20;
          ++v21;
        }

        while (v17 != v20);
        v17 = [indexes countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v17);
    }

    memset(v42, 0, sizeof(v42));
    v23 = collectionCopy;
    [collectionCopy countByEnumeratingWithState:v42 objects:&v48 count:16];
    v24 = _PFStackAllocatorCreate(&v50, 1024);
    memset(v39, 0, sizeof(v39));
    v40 = *(MEMORY[0x1E695E9D8] + 24);
    v41 = *(MEMORY[0x1E695E9D8] + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = 0;
    }

    else
    {
      v25 = v39;
    }

    v26 = CFDictionaryCreate(v24, v11, v15, v34, v25, 0);
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v27 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = 0;
      v30 = *v36;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v36 != v30)
          {
            objc_enumerationMutation(v23);
          }

          *(a2 + 4 * v29++) = CFDictionaryGetValue(v26, *(*(&v35 + 1) + 8 * i)) - 1;
        }

        v28 = [v23 countByEnumeratingWithState:&v35 objects:v47 count:16];
      }

      while (v28);
    }

    if (v34 >= 0x201)
    {
      NSZoneFree(0, v15);
      NSZoneFree(0, v11);
    }

    if (*(&v51 + 1))
    {
      if (v26)
      {
        CFRelease(v26);
      }
    }
  }
}

+ (uint64_t)newMutableOrderedSetFromCollection:(uint64_t)collection
{
  v10[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v10 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 > 0x200)
  {
    v7 = NSAllocateScannedUncollectable();
  }

  else
  {
    bzero(v10 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
  }

  [a2 getObjects:v7];
  v8 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v8;
}

+ (void)anyObjectFromCollection:(uint64_t)collection
{
  v6 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(v4, 0, sizeof(v4));
  result = [a2 countByEnumeratingWithState:v4 objects:v5 count:16];
  if (result)
  {
    return **(&v4[0] + 1);
  }

  return result;
}

+ (uint64_t)newArrayOfObjectIDsFromCollection:(uint64_t)collection
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [a2 getObjects:v7];
  }

  else
  {
    bzero(v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [a2 getObjects:v7];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    *&v7[8 * v8] = [*&v7[8 * v8] objectID];
    ++v8;
  }

  while (v4 != v8);
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v9;
}

+ (uint64_t)newSetOfObjectIDsFromCollection:(uint64_t)collection
{
  v11[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v3 = [a2 count];
  v4 = v3;
  if (v3 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if (v3 >= 0x201)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v3 >= 0x201)
  {
    v7 = NSAllocateScannedUncollectable();
    [a2 getObjects:v7];
  }

  else
  {
    bzero(v11 - ((8 * v6 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v5);
    [a2 getObjects:v7];
    if (!v4)
    {
      goto LABEL_13;
    }
  }

  v8 = 0;
  do
  {
    *&v7[8 * v8] = [*&v7[8 * v8] objectID];
    ++v8;
  }

  while (v4 != v8);
LABEL_13:
  v9 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v7 count:v4];
  if (v4 >= 0x201)
  {
    NSZoneFree(0, v7);
  }

  return v9;
}

+ (uint64_t)_objectsInOrderedCollection:(void *)collection formSubstringInOrderedCollection:
{
  objc_opt_self();
  v5 = [a2 count];
  if (v5 - 1 >= [collection count])
  {
    return 0;
  }

  v6 = [collection indexOfObject:{objc_msgSend(a2, "firstObject")}];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v7 = v6;
  v8 = [a2 count] + v6;
  if (v8 > [collection count])
  {
    return 0;
  }

  v10 = [a2 count];
  if (!v10)
  {
    return 1;
  }

  v11 = v10;
  for (i = 0; i != v11; ++i)
  {
    result = [objc_msgSend(a2 objectAtIndex:{i), "isEqual:", objc_msgSend(collection, "objectAtIndex:", v7)}];
    if (!result)
    {
      break;
    }

    ++v7;
  }

  return result;
}

+ (uint64_t)newOrderedSetFromCollection:(void *)collection byInsertingItems:(_BYTE *)items atIndex:
{
  v35 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if ([collection count])
  {
    v7 = [a2 count];
    v8 = [collection count];
    v9 = [a2 count];
    v10 = v9;
    if (v9 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v9;
    }

    if (v9 >= 0x201)
    {
      v12 = 1;
    }

    else
    {
      v12 = v11;
    }

    v13 = &v30 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v9 > 0x200)
    {
      v13 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v30 - ((8 * v12 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v11);
    }

    v17 = v7 + v8 + 1;
    if (v17 > 1)
    {
      v18 = v7 + v8 + 1;
    }

    else
    {
      v18 = 1;
    }

    if (v17 >= 0x201)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = &v30 - ((8 * v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v33 = v7 + v8 + 1;
    v34 = v7;
    if (v17 > 0x200)
    {
      v20 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v30 - ((8 * v19 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v18);
    }

    if (v8 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v8;
    }

    if (v8 >= 0x201)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    v23 = &v30 - ((8 * v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v8 > 0x200)
    {
      v23 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v30 - ((8 * v22 + 15) & 0xFFFFFFFFFFFFFFF0), 8 * v21);
    }

    [a2 getObjects:v13];
    [collection getObjects:v23];
    memmove(v20, v13, 8 * items);
    if (v8)
    {
      itemsCopy = items;
      v32 = &v30;
      v24 = 0;
      v25 = v23;
      v26 = v8;
      do
      {
        if (([a2 containsObject:*v25] & 1) == 0)
        {
          *&v20[8 * items++] = *v25;
          ++v24;
        }

        v25 += 8;
        --v26;
      }

      while (v26);
      v27 = v24;
      items = itemsCopy;
    }

    else
    {
      v27 = 0;
    }

    if (v34 != items)
    {
      memmove(&v20[8 * &items[v27]], &v13[8 * items], 8 * (v34 - items));
    }

    v28 = objc_alloc(MEMORY[0x1E695DFA0]);
    v29 = [v28 initWithObjects:v20 count:&v34[v27]];
    if (v10 >= 0x201)
    {
      NSZoneFree(0, v13);
    }

    if (v33 >= 0x201)
    {
      NSZoneFree(0, v20);
    }

    if (v8 >= 0x201)
    {
      NSZoneFree(0, v23);
    }

    return v29;
  }

  else
  {
    isNSArray = [a2 isNSArray];
    v15 = objc_alloc(MEMORY[0x1E695DFA0]);
    if (isNSArray)
    {

      return [v15 initWithArray:a2];
    }

    else
    {

      return [v15 initWithOrderedSet:a2];
    }
  }
}

+ (id)newCollection:(void *)collection fromCollection:(void *)fromCollection byAddingItems:
{
  v89 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [collection count];
  v8 = [fromCollection count];
  v9 = v8 + v7;
  if (v8 + v7)
  {
    if (collection)
    {
      collectionCopy = collection;
    }

    else
    {
      collectionCopy = NSSet_EmptySet;
    }

    MEMORY[0x1EEE9AC00](v8);
    v12 = &v36 - v11;
    if (v9 > 0x200)
    {
      v12 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v36 - v11, 8 * v9);
    }

    v14 = [fromCollection count];
    if (v14)
    {
      v38 = v9;
      v36 = &v36;
      v88 = 0u;
      v87 = 0u;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      v83 = 0u;
      v82 = 0u;
      v81 = 0u;
      v80 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0uLL;
      v59 = 0uLL;
      v57 = 0uLL;
      MEMORY[0x1EEE9AC00](v14);
      v17 = (&v36 - v16);
      if (v7 > 0x200)
      {
        v17 = NSAllocateScannedUncollectable();
      }

      else
      {
        bzero(&v36 - v16, 8 * v15);
      }

      memset(v53, 0, sizeof(v53));
      [fromCollection countByEnumeratingWithState:v53 objects:&v56 count:{16, v36}];
      v41 = v7;
      fromCollectionCopy = fromCollection;
      v40 = a2;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v19 = [collectionCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
      v39 = &v36;
      if (v19)
      {
        v20 = v19;
        v18 = 0;
        v21 = *v50;
        do
        {
          v22 = 0;
          v23 = v18;
          do
          {
            if (*v50 != v21)
            {
              objc_enumerationMutation(collectionCopy);
            }

            v24 = *(*(&v49 + 1) + 8 * v22);
            *&v12[8 * v23] = v24;
            v18 = v23 + 1;
            v17[v23] = v24;
            ++v22;
            ++v23;
          }

          while (v20 != v22);
          v20 = [collectionCopy countByEnumeratingWithState:&v49 objects:v55 count:16];
        }

        while (v20);
      }

      else
      {
        v18 = 0;
      }

      v25 = _PFStackAllocatorCreate(&v57, 1024);
      v26 = *MEMORY[0x1E695E9F8];
      v46[1] = 0;
      v46[2] = 0;
      v46[0] = v26;
      v47 = *(MEMORY[0x1E695E9F8] + 24);
      v48 = *(MEMORY[0x1E695E9F8] + 40);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = 0;
      }

      else
      {
        v27 = v46;
      }

      v28 = CFSetCreate(v25, v17, v41, v27);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v29 = fromCollectionCopy;
      v30 = [fromCollectionCopy countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v43;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v43 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v42 + 1) + 8 * i);
            if (!CFSetGetValue(v28, v34))
            {
              *&v12[8 * v18++] = v34;
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
        }

        while (v31);
      }

      if (v41 >= 0x201)
      {
        NSZoneFree(0, v17);
      }

      a2 = v40;
      if (*(&v58 + 1))
      {
        v9 = v38;
        if (v28)
        {
          CFRelease(v28);
        }
      }

      else
      {
        *(&v57 + 1) = v57;
        v9 = v38;
      }
    }

    else
    {
      [collectionCopy getObjects:v12];
      v18 = v9;
    }

    v35 = [[a2 alloc] initWithObjects:v12 count:v18];
    if (v9 >= 0x201)
    {
      NSZoneFree(0, v12);
    }

    return v35;
  }

  else
  {

    return objc_alloc_init(a2);
  }
}

+ (id)newOrderedSetFromCollection:(void *)collection byAddingItems:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines newCollection:v5 fromCollection:a2 byAddingItems:collection];
}

+ (id)newSetFromCollection:(void *)collection byAddingItems:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines newCollection:v5 fromCollection:a2 byAddingItems:collection];
}

+ (id)newOrderedSetFromCollection:(void *)collection byRemovingItems:
{
  v84 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [collection count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v38 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v38 = v34 - v8;
      bzero(v34 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v34 - v10);
        v35 = v7;
        v36 = v34;
        v37 = v5;
        v34[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v34 - v10, 8 * v5);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v47;
          do
          {
            v21 = 0;
            v22 = v19;
            do
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(collection);
              }

              v19 = v22 + 1;
              v11[v22++] = *(*(&v46 + 1) + 8 * v21++);
            }

            while (v18 != v21);
            v18 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v18);
        }

        v23 = _PFStackAllocatorCreate(&v52, 1024);
        v24 = *MEMORY[0x1E695E9F8];
        v43[1] = 0;
        v43[2] = 0;
        v43[0] = v24;
        v44 = *(MEMORY[0x1E695E9F8] + 24);
        v45 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = 0;
        }

        else
        {
          v25 = v43;
        }

        v26 = CFSetCreate(v23, v11, v37, v25);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v27)
        {
          v28 = v27;
          v16 = 0;
          v29 = *v40;
          v30 = v38;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v40 != v29)
              {
                objc_enumerationMutation(a2);
              }

              v32 = *(*(&v39 + 1) + 8 * i);
              if (!CFSetGetValue(v26, v32))
              {
                *&v30[8 * v16++] = v32;
              }
            }

            v28 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v28);
        }

        else
        {
          v16 = 0;
        }

        if (v37 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v35;
        if (*(&v53 + 1))
        {
          if (v26)
          {
            CFRelease(v26);
          }
        }

        else
        {
          *(&v52 + 1) = v52;
        }

        v15 = v38;
        goto LABEL_40;
      }
    }

    v15 = v38;
    [a2 getObjects:v38];
    v16 = v7;
LABEL_40:
    v33 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v15 count:v16];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    return v33;
  }

  v13 = MEMORY[0x1E695DFA0];

  return objc_alloc_init(v13);
}

+ (id)newMutableSetFromCollection:(void *)collection byRemovingItems:
{
  v84 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [collection count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v38 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v38 = v34 - v8;
      bzero(v34 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v34 - v10);
        v35 = v7;
        v36 = v34;
        v37 = v5;
        v34[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v34 - v10, 8 * v5);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v47;
          do
          {
            v21 = 0;
            v22 = v19;
            do
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(collection);
              }

              v19 = v22 + 1;
              v11[v22++] = *(*(&v46 + 1) + 8 * v21++);
            }

            while (v18 != v21);
            v18 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v18);
        }

        v23 = _PFStackAllocatorCreate(&v52, 1024);
        v24 = *MEMORY[0x1E695E9F8];
        v43[1] = 0;
        v43[2] = 0;
        v43[0] = v24;
        v44 = *(MEMORY[0x1E695E9F8] + 24);
        v45 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = 0;
        }

        else
        {
          v25 = v43;
        }

        v26 = CFSetCreate(v23, v11, v37, v25);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v27)
        {
          v28 = v27;
          v16 = 0;
          v29 = *v40;
          v30 = v38;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v40 != v29)
              {
                objc_enumerationMutation(a2);
              }

              v32 = *(*(&v39 + 1) + 8 * i);
              if (!CFSetGetValue(v26, v32))
              {
                *&v30[8 * v16++] = v32;
              }
            }

            v28 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v28);
        }

        else
        {
          v16 = 0;
        }

        if (v37 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v35;
        if (*(&v53 + 1))
        {
          if (v26)
          {
            CFRelease(v26);
          }
        }

        else
        {
          *(&v52 + 1) = v52;
        }

        v15 = v38;
        goto LABEL_40;
      }
    }

    v15 = v38;
    [a2 getObjects:v38];
    v16 = v7;
LABEL_40:
    v33 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v15 count:v16];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    return v33;
  }

  v13 = MEMORY[0x1E695DFA8];

  return objc_alloc_init(v13);
}

+ (id)newMutableSetFromCollection:(void *)collection byIntersectingWithCollection:
{
  v83 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [a2 count];
  v6 = [collection count];
  if (v5 && (v7 = v6) != 0)
  {
    v34 = &v34;
    MEMORY[0x1EEE9AC00](v6);
    v9 = &v34 - v8;
    v36 = v5;
    if (v5 > 0x200)
    {
      v10 = NSAllocateScannedUncollectable();
      v9 = v10;
    }

    else
    {
      bzero(&v34 - v8, 8 * v5);
    }

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    MEMORY[0x1EEE9AC00](v10);
    v14 = (&v34 - v13);
    v37 = v7;
    if (v7 > 0x200)
    {
      v14 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(&v34 - v13, 8 * v7);
    }

    v35 = a2;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v15 = [collection countByEnumeratingWithState:&v45 objects:v50 count:{16, v34}];
    if (v15)
    {
      v16 = v15;
      v17 = 0;
      v18 = *v46;
      do
      {
        v19 = 0;
        v20 = v17;
        do
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(collection);
          }

          v17 = v20 + 1;
          v14[v20++] = *(*(&v45 + 1) + 8 * v19++);
        }

        while (v16 != v19);
        v16 = [collection countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v16);
    }

    v21 = _PFStackAllocatorCreate(&v51, 1024);
    v22 = *MEMORY[0x1E695E9F8];
    v42[1] = 0;
    v42[2] = 0;
    v42[0] = v22;
    v43 = *(MEMORY[0x1E695E9F8] + 24);
    v44 = *(MEMORY[0x1E695E9F8] + 40);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v23 = 0;
    }

    else
    {
      v23 = v42;
    }

    v24 = CFSetCreate(v21, v14, v37, v23);
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v25 = v35;
    v26 = [v35 countByEnumeratingWithState:&v38 objects:v49 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = 0;
      v29 = *v39;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v39 != v29)
          {
            objc_enumerationMutation(v25);
          }

          v31 = *(*(&v38 + 1) + 8 * i);
          if (CFSetGetValue(v24, v31))
          {
            *&v9[8 * v28++] = v31;
          }
        }

        v27 = [v25 countByEnumeratingWithState:&v38 objects:v49 count:16];
      }

      while (v27);
    }

    else
    {
      v28 = 0;
    }

    if (v37 >= 0x201)
    {
      NSZoneFree(0, v14);
    }

    if (*(&v52 + 1))
    {
      v32 = v36;
      if (v24)
      {
        CFRelease(v24);
      }
    }

    else
    {
      *(&v51 + 1) = v51;
      v32 = v36;
    }

    v33 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:v9 count:v28];
    if (v32 >= 0x201)
    {
      NSZoneFree(0, v9);
    }

    return v33;
  }

  else
  {
    v11 = MEMORY[0x1E695DFA8];

    return objc_alloc_init(v11);
  }
}

+ (id)newMutableArrayFromCollection:(void *)collection byRemovingItems:
{
  v84 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v5 = [collection count];
  v6 = [a2 count];
  if (v6)
  {
    v7 = v6;
    MEMORY[0x1EEE9AC00](v6);
    if (v7 > 0x200)
    {
      v9 = NSAllocateScannedUncollectable();
      v38 = v9;
      if (v5)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v38 = v34 - v8;
      bzero(v34 - v8, 8 * v7);
      if (v5)
      {
LABEL_4:
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        MEMORY[0x1EEE9AC00](v9);
        v11 = (v34 - v10);
        v35 = v7;
        v36 = v34;
        v37 = v5;
        v34[1] = v12;
        if (v5 > 0x200)
        {
          v11 = NSAllocateScannedUncollectable();
        }

        else
        {
          bzero(v34 - v10, 8 * v5);
        }

        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = 0;
          v20 = *v47;
          do
          {
            v21 = 0;
            v22 = v19;
            do
            {
              if (*v47 != v20)
              {
                objc_enumerationMutation(collection);
              }

              v19 = v22 + 1;
              v11[v22++] = *(*(&v46 + 1) + 8 * v21++);
            }

            while (v18 != v21);
            v18 = [collection countByEnumeratingWithState:&v46 objects:v51 count:16];
          }

          while (v18);
        }

        v23 = _PFStackAllocatorCreate(&v52, 1024);
        v24 = *MEMORY[0x1E695E9F8];
        v43[1] = 0;
        v43[2] = 0;
        v43[0] = v24;
        v44 = *(MEMORY[0x1E695E9F8] + 24);
        v45 = *(MEMORY[0x1E695E9F8] + 40);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v25 = 0;
        }

        else
        {
          v25 = v43;
        }

        v26 = CFSetCreate(v23, v11, v37, v25);
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v27 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v27)
        {
          v28 = v27;
          v16 = 0;
          v29 = *v40;
          v30 = v38;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v40 != v29)
              {
                objc_enumerationMutation(a2);
              }

              v32 = *(*(&v39 + 1) + 8 * i);
              if (!CFSetGetValue(v26, v32))
              {
                *&v30[8 * v16++] = v32;
              }
            }

            v28 = [a2 countByEnumeratingWithState:&v39 objects:v50 count:16];
          }

          while (v28);
        }

        else
        {
          v16 = 0;
        }

        if (v37 >= 0x201)
        {
          NSZoneFree(0, v11);
        }

        v7 = v35;
        if (*(&v53 + 1))
        {
          if (v26)
          {
            CFRelease(v26);
          }
        }

        else
        {
          *(&v52 + 1) = v52;
        }

        v15 = v38;
        goto LABEL_40;
      }
    }

    v15 = v38;
    [a2 getObjects:v38];
    v16 = v7;
LABEL_40:
    v33 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v15 count:v16];
    if (v7 >= 0x201)
    {
      NSZoneFree(0, v15);
    }

    return v33;
  }

  v13 = MEMORY[0x1E695DF70];

  return objc_alloc_init(v13);
}

+ (id)_newCollectionFromCollection:(void *)collection forParentContext:(objc_class *)context andClass:
{
  v27 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [a2 count];
  if (v7)
  {
    v8 = v7;
    v21[1] = v21;
    if (v7 >= 0x201)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    v10 = (8 * v9 + 15) & 0xFFFFFFFFFFFFFFF0;
    v11 = v21 - v10;
    if (v7 > 0x200)
    {
      v11 = NSAllocateScannedUncollectable();
    }

    else
    {
      bzero(v21 - v10, 8 * v7);
    }

    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    v22 = 0u;
    v13 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v23;
      do
      {
        v17 = 0;
        v18 = v15;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(a2);
          }

          v15 = v18 + 1;
          *&v11[8 * v18++] = _PFRetainedObjectForMappedChildObjectIDInParentContext([*(*(&v22 + 1) + 8 * v17++) objectID], collection);
        }

        while (v14 != v17);
        v14 = [a2 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v19 = [[context alloc] initWithObjects:v11 count:v15];
    for (i = 0; i != v8; ++i)
    {
    }

    if (v8 >= 0x201)
    {
      NSZoneFree(0, v11);
    }

    return v19;
  }

  else
  {

    return objc_alloc_init(context);
  }
}

+ (id)newMutableArrayFromCollection:(void *)collection forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:collection andClass:v5];
}

+ (id)newMutableSetFromCollection:(void *)collection forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:collection andClass:v5];
}

+ (id)newMutableOrderedSetFromCollection:(void *)collection forParentContext:
{
  objc_opt_self();
  v5 = objc_opt_class();

  return [_PFRoutines _newCollectionFromCollection:a2 forParentContext:collection andClass:v5];
}

+ (id)_replaceBaseline:(void *)baseline inOrderedSet:(void *)set withOrderedSet:
{
  v42 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v7 = [baseline count];
  v8 = [a2 count];
  if (v7)
  {
    v9 = v8;
    if ([set count])
    {
      if (v9)
      {
        v10 = [baseline indexOfObject:{objc_msgSend(a2, "firstObject")}];
        if (v10)
        {
          v11 = v10;
          if (v10 + v9 == v7)
          {
            v12 = v7 - v9;
            v13 = [set count];
            v14 = v13 + v12;
            MEMORY[0x1EEE9AC00](v13);
            v17 = &v37 - v16;
            if (v14 > 0x200)
            {
              v17 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(&v37 - v16, 8 * v15);
            }

            [baseline getObjects:v17 range:{0, v12}];
            v24 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:v17 count:v12];
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v25 = [set countByEnumeratingWithState:&v37 objects:v41 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v38;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v38 != v27)
                  {
                    objc_enumerationMutation(set);
                  }

                  v29 = *(*(&v37 + 1) + 8 * i);
                  if (([v24 containsObject:v29] & 1) == 0)
                  {
                    *&v17[8 * v12++] = v29;
                  }
                }

                v26 = [set countByEnumeratingWithState:&v37 objects:v41 count:16];
              }

              while (v26);
            }

            v30 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithObjects:v17 count:v12];
            if (v14 >= 0x201)
            {
              NSZoneFree(0, v17);
            }
          }

          else
          {
            MEMORY[0x1EEE9AC00](v10);
            v23 = &v37 - v22;
            if (v7 > 0x200)
            {
              v23 = NSAllocateScannedUncollectable();
            }

            else
            {
              bzero(&v37 - v22, 8 * v7);
            }

            [baseline getObjects:v23];
            v31 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:v23 count:v7];
            if (v7 >= 0x201)
            {
              NSZoneFree(0, v23);
            }

            v32 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v9}];
            if (v9 == [set count])
            {
              if (([set isNSArray] & 1) == 0)
              {
                set = [set array];
              }

              [v31 replaceObjectsAtIndexes:v32 withObjects:set];
            }

            else
            {
              [v31 removeObjectsAtIndexes:v32];
              v33 = [set count];
              v34 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v33}];
              if ([set isNSArray])
              {
                v35 = v31;
                setCopy = set;
              }

              else
              {
                setCopy = [set array];
                v35 = v31;
              }

              [v35 insertObjects:setCopy atIndexes:v34];
            }

            v30 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithArray:v31];
          }

          return v30;
        }

        baselineCopy = [baseline objectsAtIndexes:{objc_msgSend(MEMORY[0x1E696AC90], "indexSetWithIndexesInRange:", v9, v7 - v9)}];
        setCopy3 = set;
      }

      else
      {
        setCopy3 = set;
        baselineCopy = baseline;
      }

      return [_PFRoutines newOrderedSetFromCollection:setCopy3 byAddingItems:baselineCopy];
    }

    else if (v9)
    {

      return [_PFRoutines newOrderedSetFromCollection:baseline byRemovingItems:a2];
    }

    else
    {

      return [_PFRoutines newMutableOrderedSetFromCollection:baseline];
    }
  }

  else if ([set isNSOrderedSet])
  {

    return [set mutableCopy];
  }

  else
  {
    v19 = objc_alloc(MEMORY[0x1E695DFA0]);

    return [v19 initWithArray:set];
  }
}

+ (uint64_t)_expressionIsCompoundIndexCompatible:(uint64_t)compatible
{
  objc_opt_self();
  result = [a2 expressionType];
  if (result != 1)
  {
    if (result == 3)
    {
      keyPath = [a2 keyPath];
      return [@"self" caseInsensitiveCompare:keyPath] || objc_msgSend(@"self", "caseInsensitiveCompare:", keyPath) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (__CFDictionary)_createDictionaryPartitioningObjects:(id)objects intoHierarchies:(BOOL)hierarchies
{
  hierarchiesCopy = hierarchies;
  v27 = *MEMORY[0x1E69E9840];
  memset(&callBacks, 0, sizeof(callBacks));
  callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
  memset(&keyCallBacks, 0, 24);
  *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
  keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
  valueCallBacks.version = 0;
  *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
  valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  valueCallBacks.equal = 0;
  v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  v7 = [objects count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [objects countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(objects);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        entity = [v12 entity];
        if (hierarchiesCopy)
        {
          if (entity)
          {
            if (atomic_load((entity + 124)))
            {
              v15 = *(entity + 72);
            }

            else
            {
              do
              {
                v15 = entity;
                entity = [entity superentity];
              }

              while (entity);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = entity;
        }

        Value = CFDictionaryGetValue(v6, v15);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, v7, &callBacks);
          CFDictionarySetValue(v6, v15, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, v12);
        ++v11;
      }

      while (v11 != v9);
      v17 = [objects countByEnumeratingWithState:&v19 objects:v26 count:16];
      v9 = v17;
    }

    while (v17);
  }

  return v6;
}

+ (__CFDictionary)_createDictionaryPartitioningObjectIDs:(id)ds intoHierarchies:(BOOL)hierarchies
{
  hierarchiesCopy = hierarchies;
  v27 = *MEMORY[0x1E69E9840];
  memset(&callBacks, 0, sizeof(callBacks));
  callBacks.copyDescription = *(MEMORY[0x1E695E9F8] + 24);
  memset(&keyCallBacks, 0, 24);
  *&keyCallBacks.copyDescription = *(MEMORY[0x1E695E9D8] + 24);
  keyCallBacks.hash = *(MEMORY[0x1E695E9D8] + 40);
  valueCallBacks.version = 0;
  *&valueCallBacks.retain = *(MEMORY[0x1E695E9E8] + 8);
  valueCallBacks.copyDescription = *(MEMORY[0x1E695E9E8] + 24);
  valueCallBacks.equal = 0;
  v6 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, &keyCallBacks, &valueCallBacks);
  v7 = [ds count];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [ds countByEnumeratingWithState:&v19 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(ds);
        }

        v12 = *(*(&v19 + 1) + 8 * v11);
        entity = [v12 entity];
        if (hierarchiesCopy)
        {
          if (entity)
          {
            if (atomic_load((entity + 124)))
            {
              v15 = *(entity + 72);
            }

            else
            {
              do
              {
                v15 = entity;
                entity = [entity superentity];
              }

              while (entity);
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = entity;
        }

        Value = CFDictionaryGetValue(v6, v15);
        if (!Value)
        {
          Value = CFSetCreateMutable(0, v7, &callBacks);
          CFDictionarySetValue(v6, v15, Value);
          CFRelease(Value);
        }

        CFSetAddValue(Value, v12);
        ++v11;
      }

      while (v11 != v9);
      v17 = [ds countByEnumeratingWithState:&v19 objects:v26 count:16];
      v9 = v17;
    }

    while (v17);
  }

  return v6;
}

+ (uint64_t)fetchHeterogeneousCollectionByObjectIDs:(uint64_t)ds intoContext:
{
  objc_opt_self();
  objc_opt_self();
  v5 = [_PFRoutines _createDictionaryPartitioningObjects:a2 intoHierarchies:1];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__9;
  v13 = __Block_byref_object_dispose__9;
  array = [MEMORY[0x1E695DF70] array];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __67___PFRoutines_fetchHeterogeneousCollectionByObjectIDs_intoContext___block_invoke;
  v8[3] = &unk_1E6EC1CD8;
  v8[4] = ds;
  v8[5] = &v9;
  [(__CFDictionary *)v5 enumerateKeysAndObjectsUsingBlock:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

+ (__CFDictionary)createDictionaryPartitioningObjectsByEntity:(uint64_t)entity
{
  objc_opt_self();

  return [_PFRoutines _createDictionaryPartitioningObjects:a2 intoHierarchies:0];
}

+ (__CFDictionary)createDictionaryPartitioningObjectsIDByRootEntity:(uint64_t)entity
{
  objc_opt_self();

  return [_PFRoutines _createDictionaryPartitioningObjectIDs:a2 intoHierarchies:1];
}

+ (BOOL)isSanitizedVersionOf:(void *)of equalTo:
{
  objc_opt_self();
  uTF8String = [a2 UTF8String];
  uTF8String2 = [of UTF8String];
  v7 = strlen(uTF8String2);
  return strncmp(uTF8String, uTF8String2, v7) == 0;
}

+ (uint64_t)sanitize:(uint64_t)sanitize
{
  objc_opt_self();
  v3 = MEMORY[0x1E696AEC0];
  uTF8String = [a2 UTF8String];

  return [v3 stringWithUTF8String:uTF8String];
}

+ (void)wrapBlockInGuardedAutoreleasePool:(id)pool
{
  v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
  (*(pool + 2))(pool);
}

+ (void)efficientlyEnumerateManagedObjectsInFetchRequest:(void *)request usingManagedObjectContext:(uint64_t)context andApplyBlock:
{
  v38[1] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v27 = a2;
  if (![a2 fetchBatchSize])
  {
    v24 = MEMORY[0x1E695DF30];
    v37 = @"offendingFetch";
    v38[0] = a2;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    objc_exception_throw([v24 exceptionWithName:*MEMORY[0x1E695D940] reason:@"This method can't be very efficient if you don't bother to set a batch size!" userInfo:v25]);
  }

  requestCopy = request;
  if ([request hasChanges])
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to begin batch processing with pending changes. At best these changes may be saved unpredictably (depending on the batching algorithm used and downstream code) leading to inconsistent behavior across platforms / datasets. At worst they will be forgotten, and references to them invalidated when the context is reset between batches. Only call this method on clean contexts.\n", buf, 2u);
    }

    v7 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v7, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to begin batch processing with pending changes. At best these changes may be saved unpredictably (depending on the batching algorithm used and downstream code) leading to inconsistent behavior across platforms / datasets. At worst they will be forgotten, and references to them invalidated when the context is reset between batches. Only call this method on clean contexts.", buf, 2u);
    }
  }

  context = objc_autoreleasePoolPush();
  v32 = 0;
  v31 = 0;
  queryGenerationToken = [request queryGenerationToken];
  if (queryGenerationToken == +[NSQueryGenerationToken unpinnedQueryGenerationToken])
  {
    v9 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = a2;
      _os_log_error_impl(&dword_18565F000, v9, OS_LOG_TYPE_ERROR, "CoreData: fault: Efficient batching requires the use of query generations: %@\n", buf, 0xCu);
    }

    v10 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v36 = a2;
      _os_log_fault_impl(&dword_18565F000, v10, OS_LOG_TYPE_FAULT, "CoreData: Efficient batching requires the use of query generations: %@", buf, 0xCu);
    }
  }

  buf[0] = 0;
  v29 = [request executeFetchRequest:a2 error:&v32];
  if (v29)
  {
    fetchBatchSize = [a2 fetchBatchSize];
    v12 = [v29 count];
    v13 = v12;
    if (v12 / fetchBatchSize * fetchBatchSize == v12)
    {
      v14 = v12 / fetchBatchSize;
    }

    else
    {
      v14 = v12 / fetchBatchSize + 1;
    }

    if (v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = fetchBatchSize;
      do
      {
        if (v13 >= v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v13;
        }

        v20 = objc_autoreleasePoolPush();
        v21 = objc_autoreleasePoolPush();
        (*(context + 16))(context, [v29 subarrayWithRange:{v16, v19 + v15}], 0, &v31, buf);
        objc_autoreleasePoolPop(v21);
        if ((v31 & 1) == 0 && [requestCopy hasChanges])
        {
          v22 = MEMORY[0x1E695DF30];
          v33 = @"offendingFetch";
          v34 = v27;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
          objc_exception_throw([v22 exceptionWithName:*MEMORY[0x1E695D940] reason:@"Batch finished processing with pending changes in the moc. This prevents the context from being reset and purging rows / snapshots from memory. Please save at the end of each batch." userInfo:v23]);
        }

        [requestCopy reset];
        objc_autoreleasePoolPop(v20);
        ++v17;
        v16 += fetchBatchSize;
        v18 += fetchBatchSize;
        v15 -= fetchBatchSize;
      }

      while (v17 < v14);
    }
  }

  else
  {
    (*(context + 16))(context, 0, v32, &v31, buf);
    v31 = 1;
  }

  [requestCopy reset];
  objc_autoreleasePoolPop(context);
}

@end