void sub_1000C7AF4(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v4 = +[(REMCDObject *)REMCDAccount];
  [*(a1 + 32) _heightOfEntityNodeInMOMTreeForEffectiveMinimumSupportedVersionPropagation:v4 heightMap:v2];
  v3 = qword_100952B08;
  qword_100952B08 = v2;
}

uint64_t sub_1000C7C48(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 entity];
  v7 = [v6 name];

  v8 = [v5 entity];

  v9 = [v8 name];

  if (v7)
  {
    v10 = [*(a1 + 32) objectForKey:v7];
    v11 = [v10 unsignedIntegerValue];

    if (v9)
    {
LABEL_3:
      v12 = [*(a1 + 32) objectForKey:v9];
      v13 = [v12 unsignedIntegerValue];

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  if (v11 <= v13)
  {
    if (v11 >= v13)
    {
      v14 = 0;
      if (v7 && v9)
      {
        v14 = [v7 compare:v9];
      }
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = -1;
  }

  return v14;
}

void sub_1000C8050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000C8078(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) containsObject:v3] & 1) == 0)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 40);
    v20 = 0;
    v6 = [v5 existingObjectWithID:v3 error:&v20];
    v7 = v20;
    v8 = v7;
    if (v7)
    {
      v9 = [v7 userInfo];
      v10 = [v9 objectForKeyedSubscript:NSDebugDescriptionErrorKey];

      if (!v10)
      {
        v10 = [v8 description];
      }

      v11 = [v8 domain];
      v12 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 code]);
      v13 = [NSString stringWithFormat:@"%@[%@] - %@", v11, v12, v10];

      v14 = +[REMLogStore write];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        sub_10076C034(v3, v13, v14);
      }
    }

    else
    {
      objc_opt_class();
      v10 = REMDynamicCast();
      if (v10)
      {
        v15 = &off_1008D4208;
        if (!*(a1 + 64))
        {
          v15 = off_1008D41C0;
        }

        v13 = objc_alloc_init(*v15);
        v16 = [v10 objectID];
        [v13 setManagedObjectID:v16];

        [v13 setBackingCDObject:v10];
        v17 = [*(a1 + 40) objectTreeProcessorDelegateFactoryWithTreeNode:v13];
        v18 = [[REMCDObjectTreeProcessor alloc] initWithTraversalOrder:0 batchSize:*(a1 + 56) delegate:v17];
        v19 = [(REMCDObjectTreeProcessor *)v18 traverse:v13];
        [*(a1 + 32) addObjectsFromArray:v19];
        ++*(*(*(a1 + 48) + 8) + 24);
      }

      else
      {
        v13 = +[REMLogStore write];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          sub_10076C0BC(v3, v13);
        }
      }
    }

    objc_autoreleasePoolPop(v4);
  }
}

uint64_t sub_1000C8D64(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000C8D7C(void *a1)
{
  v2 = +[REMLogStore container];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(*(a1[6] + 8) + 40);
    v4 = [*(*(a1[7] + 8) + 40) count];
    *buf = 138543618;
    v55 = v3;
    v56 = 2048;
    v57 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "[%{public}@] after save {attachmentIDs.count: %ld}", buf, 0x16u);
  }

  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  obj = *(*(a1[7] + 8) + 40);
  v5 = REMCRMergeableOrderedSet_ptr;
  v41 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
  if (v41)
  {
    v39 = *v50;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v50 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v49 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [*(*(a1[7] + 8) + 40) objectForKeyedSubscript:v7];
        v10 = a1[4];
        v48 = 0;
        v11 = [v10 purgeAttachmentFilesWithAttachmentIDs:v9 accountID:v7 error:&v48];
        v12 = v48;
        v13 = [v5[51] container];
        v14 = v13;
        if (v12)
        {
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v35 = *(*(a1[6] + 8) + 40);
            v33 = [v12 code];
            v15 = [v12 localizedDescription];
            *buf = 138544642;
            v55 = v35;
            v56 = 2114;
            v57 = v7;
            v58 = 2048;
            v59 = v33;
            v60 = 2112;
            v61 = v15;
            v62 = 2114;
            v63 = v9;
            v64 = 2114;
            v65 = v11;
            _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Purge attachment files failed {accountID: %{public}@, code: %ld, error: %@, attachmentIDs: %{public}@, purged: %{public}@}", buf, 0x3Eu);

            v5 = REMCRMergeableOrderedSet_ptr;
          }
        }

        else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v16 = *(*(a1[6] + 8) + 40);
          v17 = [v9 count];
          v18 = [v11 count];
          *buf = 138544130;
          v55 = v16;
          v56 = 2114;
          v57 = v7;
          v58 = 2048;
          v59 = v17;
          v5 = REMCRMergeableOrderedSet_ptr;
          v60 = 2048;
          v61 = v18;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged attachment files for {accountID: %{public}@, attachmentIDs.count: %ld, purged.count: %ld}", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v8);
      }

      v41 = [obj countByEnumeratingWithState:&v49 objects:v66 count:16];
    }

    while (v41);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = *(*(a1[8] + 8) + 40);
  v42 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v42)
  {
    v40 = *v45;
    do
    {
      for (j = 0; j != v42; j = j + 1)
      {
        if (*v45 != v40)
        {
          objc_enumerationMutation(obja);
        }

        v20 = *(*(&v44 + 1) + 8 * j);
        v21 = objc_autoreleasePoolPush();
        v22 = [*(*(a1[8] + 8) + 40) objectForKeyedSubscript:v20];
        v23 = a1[4];
        v43 = 0;
        v24 = [v23 purgeAttachmentFilesWithSha512SumsAndExtensions:v22 accountID:v20 error:&v43];
        v25 = v43;
        v26 = [v5[51] container];
        v27 = v26;
        if (v25)
        {
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            v36 = *(*(a1[6] + 8) + 40);
            v34 = [v25 code];
            v28 = [v25 localizedDescription];
            *buf = 138544642;
            v55 = v36;
            v56 = 2114;
            v57 = v20;
            v58 = 2048;
            v59 = v34;
            v60 = 2112;
            v61 = v28;
            v62 = 2114;
            v63 = v22;
            v64 = 2114;
            v65 = v24;
            _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] Purge attachment files failed {accountID: %{public}@, code: %ld, error: %@, fileNames: %{public}@, purged: %{public}@}", buf, 0x3Eu);

            v5 = REMCRMergeableOrderedSet_ptr;
          }
        }

        else if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v29 = *(*(a1[6] + 8) + 40);
          v30 = [v22 count];
          v31 = [v24 count];
          *buf = 138544130;
          v55 = v29;
          v56 = 2114;
          v57 = v20;
          v58 = 2048;
          v59 = v30;
          v5 = REMCRMergeableOrderedSet_ptr;
          v60 = 2048;
          v61 = v31;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "[%{public}@] Purged attachment files for {accountID: %{public}@, fileNames.count: %ld, purged.count: %ld}", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v21);
      }

      v42 = [obja countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v42);
  }

  result = a1[5];
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_1000C9670(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void sub_1000C99A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v3 = +[REMLogStore search];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      sub_10076C2B0();
    }

    objc_end_catch();
    JUMPOUT(0x1000C9970);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000C9BB0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076C380(v3, a1, v4);
    }
  }
}

void sub_1000CACF0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

void sub_1000CB5E8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[REMLog utility];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10076C534(v5, v7);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [*(a1 + 32) identifier];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Done unset didChooseToMigrate and didFinishMigration on ACAccount (%@)", &v10, 0xCu);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, a2, v5);
  }
}

id sub_1000CB8BC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDsToDelete];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBA3C(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordIDs];
    v5 = [v4 containsObject:*(a1 + 32)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBBBC(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 recordsToSave];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CBC9C;
    v7[3] = &unk_1008DC4A0;
    v8 = *(a1 + 32);
    v5 = [v4 ic_containsObjectPassingTest:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id sub_1000CBC9C(uint64_t a1, void *a2)
{
  v3 = [a2 recordID];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void sub_1000CBFE0(id a1)
{
  v1 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = v1;
  v2 = [NSArray arrayWithObjects:&v5 count:1];
  v3 = [NSManagedObjectModel mergedModelFromBundles:v2];
  v4 = qword_100952B18;
  qword_100952B18 = v3;
}

void sub_1000CC508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000CC524(uint64_t a1)
{
  v2 = +[NSMapTable strongToWeakObjectsMapTable];
  [*(a1 + 32) setL_accountStoreMap:v2];

  v3 = +[NSMapTable strongToStrongObjectsMapTable];
  [*(a1 + 32) setL_accountStorageCacheByObjectIDs:v3];

  v4 = +[NSMapTable strongToStrongObjectsMapTable];
  [*(a1 + 32) setL_accountExternalIdentifiersToObjectIDsMap:v4];

  v5 = [NSHashTable hashTableWithOptions:0];
  [*(a1 + 32) setL_allGenericAccountsObjectIDs:v5];

  v6 = objc_alloc_init(REMAutoCategorizationActivity);
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v6];

  v7 = *(a1 + 32);
  v11 = 0;
  v8 = [v7 l_loadAccountStoresFromDiskDeletingFilesMarkedDeleted:1 shouldDeleteInvalidStoresImmediately:1 error:&v11];
  v9 = v11;
  if ((v8 & 1) == 0)
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076C670();
    }

    [*(a1 + 40) accountStoresFailToLoadWithError:v9];
  }
}

void sub_1000CC670(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = +[REMLogStore search];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10076C6D8();
    }
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v6 = WeakRetained;
      os_unfair_lock_lock(WeakRetained + 4);
      v4 = v6;
      [v4 l_activateCoreSpotlightDelegates];
      os_unfair_lock_unlock(v6 + 4);
    }

    else
    {
      v4 = 0;
    }
  }
}

void sub_1000D04AC(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = v5;
  if (v5 && ([v5 isEqual:@"NullMetadataAccountIdentifier"] & 1) == 0)
  {
    [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
  }
}

void sub_1000D39C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, ...)
{
  va_start(va, a44);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D39EC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000D3A04(uint64_t a1)
{
  v2 = [*(a1 + 32) _deduplicateStore:*(a1 + 40) withStore:*(a1 + 48) isLocalAccountType:*(a1 + 72) managedObjectContext:*(a1 + 56)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000D3D50(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = [NSPredicate predicateWithValue:1];
  [v2 setPredicate:v3];

  [v2 setResultType:2];
  v75[0] = @"identifier";
  v75[1] = @"type";
  v4 = [NSArray arrayWithObjects:v75 count:2];
  [v2 setPropertiesToFetch:v4];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = *(a1 + 32);
  v6 = [v5 countByEnumeratingWithState:&v59 objects:v74 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v60;
    *&v7 = 138544386;
    v48 = v7;
    v52 = v2;
    v53 = v5;
    v55 = *v60;
    do
    {
      v10 = 0;
      v56 = v8;
      do
      {
        if (*v60 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v59 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        v13 = [v11 URL];
        v14 = [v13 isEqual:*(a1 + 40)];

        if (v14)
        {
          [*(a1 + 48) setObject:v11 forKey:@"local"];
          goto LABEL_43;
        }

        v73 = v11;
        v15 = [NSArray arrayWithObjects:&v73 count:1];
        [v2 setAffectedStores:v15];

        v16 = *(a1 + 56);
        v58 = 0;
        v17 = [v16 executeFetchRequest:v2 error:&v58];
        v57 = v58;
        v18 = [v17 valueForKey:@"identifier"];
        v19 = [v17 valueForKey:@"type"];
        v20 = v19;
        if (!v18 || !v19)
        {
          v25 = +[REMLogStore container];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v64 = v57;
            v65 = 2112;
            v66 = v11;
            _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Error fetching account ID from store {error: %{public}@, store: %@}", buf, 0x16u);
          }

          [*(a1 + 72) addObject:v11];
          goto LABEL_42;
        }

        v21 = [v18 valueForKey:@"UUIDString"];
        if ([v21 count] == 1)
        {
          v54 = v21;
          if (![v20 count])
          {
            v31 = +[REMLogStore container];
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              v43 = [v54 firstObject];
              *buf = 138543618;
              v64 = v43;
              v65 = 2112;
              v66 = v11;
              _os_log_fault_impl(&_mh_execute_header, v31, OS_LOG_TYPE_FAULT, "[_validateAccountStores] RDCDAccountTypeKey from [REMCDAccount fetchRequest] yields no result unexpectedly {accountID: %{public}@, store: %@}", buf, 0x16u);
            }

LABEL_24:
            v32 = +[REMLogStore container];
            if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
            {
              v42 = [v54 firstObject];
              *buf = 138543618;
              v64 = v42;
              v65 = 2112;
              v66 = v11;
              _os_log_fault_impl(&_mh_execute_header, v32, OS_LOG_TYPE_FAULT, "[_validateAccountStores] Found corrupted store with unkwown account type {accountID: %{public}@, store: %@}", buf, 0x16u);

              v5 = v53;
            }

            [*(a1 + 72) addObject:v11];
            v26 = v54;
            goto LABEL_41;
          }

          objc_opt_class();
          v22 = [v20 objectAtIndexedSubscript:0];
          v23 = REMDynamicCast();
          v24 = [v23 intValue];

          v5 = v53;
          if (!v24)
          {
            goto LABEL_24;
          }

          if (v24 == 1)
          {
            [*(a1 + 64) addObject:v11];
          }

          else
          {
            v24 = 0;
          }

          v33 = [v54 firstObject];
          v34 = [*(a1 + 48) valueForKey:v33];
          v51 = v34;
          if (v34)
          {
            v50 = v33;
            v35 = v34;
            v36 = [*(a1 + 80) _deduplicateStore:v34 withStore:v11 isLocalAccountType:v24 managedObjectContext:*(a1 + 56)];
            [*(a1 + 72) addObject:v36];
            v37 = v35;
            if (v36 == v37)
            {
              v38 = v37;
              v39 = v36;
              v40 = v11;

              [*(a1 + 48) setObject:v40 forKey:v50];
              v49 = v40;
              v36 = v39;
            }

            else
            {
              v49 = v37;
            }

            v41 = +[REMLogStore container];
            v26 = v54;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              [v49 identifier];
              v45 = v44 = v36;
              v46 = [v44 identifier];
              *buf = v48;
              v64 = v50;
              v65 = 2114;
              v66 = v45;
              v67 = 2112;
              v68 = v49;
              v69 = 2114;
              v70 = v46;
              v47 = v46;
              v71 = 2112;
              v72 = v44;
              _os_log_error_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Found duplicated stores for the same account, treating one of them as invalid {accountID: %{public}@, valid: storeid=%{public}@ %@, invalid: storeid=%{public}@ %@}", buf, 0x34u);

              v36 = v44;
              v26 = v54;
            }

            v33 = v50;
          }

          else
          {
            [*(a1 + 48) setObject:v11 forKey:v33];
            v26 = v54;
          }
        }

        else
        {
          v26 = v21;
          v27 = [v21 count];
          v28 = +[REMLogStore container];
          v29 = v28;
          if (v27)
          {
            if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
            {
              v30 = [v26 count];
              *buf = 134218498;
              v64 = v30;
              v65 = 2114;
              v66 = v26;
              v67 = 2112;
              v68 = v11;
              _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "[_validateAccountStores] Found corrupted store with %ld REMCDAccount objects {accountIDs: %{public}@, store: %@}", buf, 0x20u);
            }
          }

          else if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v64 = v11;
            _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "[_validateAccountStores] Found store with no REMCDAccount. Going to disconnect and destroy {store: %@}", buf, 0xCu);
          }

          [*(a1 + 72) addObject:v11];
        }

        v5 = v53;
LABEL_41:

        v2 = v52;
LABEL_42:

        v9 = v55;
        v8 = v56;
LABEL_43:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v5 countByEnumeratingWithState:&v59 objects:v74 count:16];
    }

    while (v8);
  }
}

void sub_1000D523C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v7 = 0;
  v2 = [v1 save:&v7];
  v3 = v7;
  v4 = +[REMLogStore container];
  v5 = v4;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "RDStoreControllerMigrator: [MIGRATE STORE] Did update stores metadata", v6, 2u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10076CE14();
  }
}

void sub_1000D5C08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 URL];
  v6 = [v5 lastPathComponent];
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 URLByDeletingLastPathComponent];
    v9 = [v8 URLByDeletingLastPathComponent];

    v10 = [v9 path];
    v56 = 0;
    if (!v10 || ![*(a1 + 40) fileExistsAtPath:v10 isDirectory:&v56] || (v56 & 1) == 0)
    {
      v20 = +[REMLogStore container];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v58 = v10;
        v59 = 1024;
        *v60 = v56;
        *&v60[4] = 2112;
        *&v60[6] = v5;
        _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[addValidatedStoresToAccountStoreMapWithStores] Cannot obtain a valid container directory path from storeURL {reminderDataContainerPath: %@, isDirectory: %d, storeURL: %@}", buf, 0x1Cu);
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_21;
    }

    v11 = objc_msgSend_databaseBackupDirectoryURLWithContainerURL_(*(a1 + 48));
    v12 = *(a1 + 40);
    v55 = 0;
    v13 = [v12 rem_createDirectoryIfNecessaryAtURL:v11 error:&v55];
    v48 = v55;
    v49 = v11;
    if ((v13 & 1) == 0)
    {
      v14 = +[REMLogStore container];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v38 = objc_opt_class();
        v51 = NSStringFromClass(v38);
        v47 = NSStringFromSelector(*(a1 + 56));
        v45 = [NSString stringWithFormat:@"%@.%@", v51, v47];
        v39 = [v48 localizedDescription];
        *buf = 138544130;
        v58 = v45;
        v59 = 2112;
        *v60 = v9;
        *&v60[8] = 2112;
        *&v60[10] = v11;
        v61 = 2112;
        v62 = v39;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "[%{public}@] Create directory failed {reminderDataContainerURL: %@, databaseBackupDirectoryURL: %@, error: %@}", buf, 0x2Au);
      }
    }

    [v11 setRd_isExcludedFromBackup:1];
    v50 = [*(a1 + 48) invalidStoreBackupURLWithFileName:v7 withContainerURL:v9];
    if (!v50)
    {
      v21 = +[REMLogStore container];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_10076D054();
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_48;
    }

    v15 = *(a1 + 40);
    v54 = 0;
    [v15 copyItemAtURL:v5 toURL:v50 error:&v54];
    v16 = v54;
    if (v16)
    {
      v17 = v16;
      v18 = +[REMLogStore container];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_10076CE8C();
      }

      [*(a1 + 32) addObject:v3];
      goto LABEL_47;
    }

    v22 = [v5 URLByDeletingPathExtension];
    v23 = [v22 URLByAppendingPathExtension:@"sqlite-wal"];

    v24 = [v5 URLByDeletingPathExtension];
    v25 = [v24 URLByAppendingPathExtension:@"sqlite-shm"];

    v42 = v23;
    v43 = [v23 path];
    v41 = v25;
    v46 = [v25 path];
    v26 = [v50 URLByDeletingPathExtension];
    v27 = [v26 URLByAppendingPathExtension:@"sqlite-wal"];

    v28 = [v50 URLByDeletingPathExtension];
    v44 = [v28 URLByAppendingPathExtension:@"sqlite-shm"];

    v29 = v43;
    v17 = 0;
    v40 = v27;
    if (v43 && v27)
    {
      if ([*(a1 + 40) fileExistsAtPath:v43])
      {
        v30 = *(a1 + 40);
        v53 = 0;
        [v30 copyItemAtURL:v42 toURL:v27 error:&v53];
        v17 = v53;
        if (v17)
        {
          v31 = +[REMLogStore container];
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            sub_10076CF24();
          }

          v29 = v43;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    if (v46 && v44 && [*(a1 + 40) fileExistsAtPath:v46])
    {
      v32 = *(a1 + 40);
      v52 = v17;
      [v32 copyItemAtURL:v41 toURL:v44 error:&v52];
      v33 = v52;

      if (v33)
      {
        v34 = +[REMLogStore container];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          sub_10076CFBC();
        }

        v17 = v33;
        v29 = v43;
        goto LABEL_42;
      }
    }

    else if (v17)
    {
LABEL_42:
      [*(a1 + 32) addObject:v3];
LABEL_46:

LABEL_47:
LABEL_48:

LABEL_21:
      goto LABEL_22;
    }

    v35 = +[REMLogStore container];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      [v3 identifier];
      v37 = v36 = v29;
      *buf = 138543874;
      v58 = v37;
      v59 = 2112;
      *v60 = v3;
      *&v60[8] = 2112;
      *&v60[10] = v50;
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "[addValidatedStoresToAccountStoreMapWithStores] Created back up of invalid store {store: id=%{public}@ %@, backupURL: %@}", buf, 0x20u);

      v29 = v36;
    }

    v17 = 0;
    goto LABEL_46;
  }

  v19 = +[REMLogStore container];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    sub_10076D0CC();
  }

  [*(a1 + 32) addObject:v3];
LABEL_22:

  objc_autoreleasePoolPop(v4);
}

void sub_1000D7304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D731C(uint64_t a1)
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 keyEnumerator];

  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [*(a1 + 32) l_accountStoreMap];
        v10 = [v9 objectForKey:v8];

        v11 = *(a1 + 40);
        v12 = [v10 identifier];
        LODWORD(v11) = [v11 isEqualToString:v12];

        if (v11)
        {
          objc_storeStrong((*(*(a1 + 48) + 8) + 40), v8);

          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

void sub_1000D75CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D75E4(uint64_t a1)
{
  v5 = [*(a1 + 32) l_accountStoreMap];
  v2 = [v5 objectForKey:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1000D782C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v15 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v15];
  v5 = v15;
  v6 = [v4 valueForKey:@"identifier"];

  if (v6)
  {
    v7 = [v6 valueForKey:@"UUIDString"];
    os_unfair_lock_lock((a1[6] + 16));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000D7998;
    v11[3] = &unk_1008D9C10;
    v8 = a1[6];
    v9 = a1[7];
    v12 = v7;
    v13 = v8;
    v14 = v9;
    v10 = v7;
    sub_1000D7998(v11);
    os_unfair_lock_unlock((a1[6] + 16));
  }

  else
  {
    v10 = +[REMLogStore container];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10076D260();
    }
  }
}

void sub_1000D7998(id *a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [a1[5] l_accountStoreMap];
        v9 = [v8 objectForKey:v7];

        if (v9)
        {
          [a1[6] addObject:v9];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_1000D7B64(uint64_t a1)
{
  v1 = [REMChangeTracking entityNamesToIncludeFromTrackingWithOptionProvider:*(a1 + 32)];
  v10 = NSPersistentHistoryTrackingEntitiesToInclude;
  v11 = v1;
  v2 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v8[0] = NSPersistentHistoryTrackingKey;
  v8[1] = NSMigratePersistentStoresAutomaticallyOption;
  v9[0] = v2;
  v9[1] = &__kCFBooleanTrue;
  v9[2] = &__kCFBooleanTrue;
  v8[2] = NSInferMappingModelAutomaticallyOption;
  v8[3] = NSPersistentStoreCoordinatorResourceBundlesForMigration;
  v7 = v3;
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  v8[4] = NSPersistentStoreServiceConfigurationOptionKey;
  v9[3] = v4;
  v9[4] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:5];
  v6 = qword_100952B28;
  qword_100952B28 = v5;
}

void sub_1000D7E50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000D7E74(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[8];
  obj = 0;
  v5 = [v2 l_createAccountStoresWithIdentifiers:v3 didAddNewStores:v4 error:&obj];
  v6 = obj;
  *(*(a1[6] + 8) + 24) = v5;
  objc_storeStrong((*(a1[7] + 8) + 40), v6);
}

void sub_1000D8F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a56, 8);
  _Block_object_dispose(&STACK[0x320], 8);
  _Block_object_dispose(&a60, 8);
  _Unwind_Resume(a1);
}

void sub_1000D8FD8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[REMLogStore container];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_10076D35C();
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
    *(*(*(a1 + 56) + 8) + 24) = 0;
    if ([v6 rem_isDiskFullSQLError])
    {
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    objc_opt_class();
    v8 = [*(a1 + 32) options];
    v9 = [v8 valueForKey:NSPersistentStoreConnectionPoolMaxSizeKey];
    v10 = REMDynamicCast();

    v11 = +[REMLogStore container];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v12;
      v15 = 2114;
      v16 = v10;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[createOrLoadAccountStores] didAdd store {fileName: %{public}@, connectionPoolMaxSize: %{public}@, addedStoreDescription: %@}", &v13, 0x20u);
    }
  }
}

void sub_1000D92D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000D92EC(uint64_t a1)
{
  v2 = [*(a1 + 32) metadata];
  v3 = [v2 mutableCopy];

  [v3 setObject:*(a1 + 40) forKeyedSubscript:@"RDStoreControllerAccountIdentifier"];
  v4 = [v3 copy];
  [*(a1 + 32) setMetadata:v4];

  v5 = *(a1 + 48);
  v8 = 0;
  LOBYTE(v4) = [v5 save:&v8];
  v6 = v8;
  v7 = *(a1 + 64);
  *(*(*(a1 + 56) + 8) + 24) = v4;
  if (v7 && v6)
  {
    v6 = v6;
    **(a1 + 64) = v6;
  }
}

void sub_1000D95AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v20 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  v26 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v18 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1000D95DC(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  v5 = *(v4 + 40);
  v8 = 0;
  obj = v5;
  v6 = [v2 l_removeAccountStoresWithIdentifiers:v3 deletedObjectIDs:&obj error:&v8];
  objc_storeStrong((v4 + 40), obj);
  v7 = v8;
  *(*(a1[6] + 8) + 24) = v6;
  objc_storeStrong((*(a1[8] + 8) + 40), v7);
}

void sub_1000DA16C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  _Block_object_dispose((v48 - 176), 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DA1E0(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) metadata];
  v4 = [v3 mutableCopy];

  v5 = [v4 objectForKeyedSubscript:@"RDStoreControllerAccountIdentifier"];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:@"RDMarkedForDeletion"];
  v8 = [v4 copy];
  [*v2 setMetadata:v8];

  v10 = *(a1 + 56);
  v9 = a1 + 56;
  v11 = *(v9 - 16);
  v12 = *(v10 + 8);
  obj = *(v12 + 40);
  v13 = [v11 save:&obj];
  objc_storeStrong((v12 + 40), obj);
  if ((v13 & 1) == 0)
  {
    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10076D454(v2, v9, v14);
    }
  }
}

void sub_1000DA300(uint64_t a1)
{
  v2 = [[NSFetchRequest alloc] initWithEntityName:*(a1 + 32)];
  v31 = *(a1 + 40);
  v3 = [NSArray arrayWithObjects:&v31 count:1];
  [v2 setAffectedStores:v3];

  v4 = [[NSBatchDeleteRequest alloc] initWithFetchRequest:v2];
  v30 = *(a1 + 40);
  v5 = [NSArray arrayWithObjects:&v30 count:1];
  [v4 setAffectedStores:v5];

  [v4 setResultType:1];
  v6 = *(a1 + 48);
  v20 = 0;
  v7 = [v6 executeRequest:v4 error:&v20];
  v8 = v20;
  v9 = v20;
  v10 = [v7 result];
  v11 = v10;
  if (v10)
  {
    v22 = NSDeletedObjectsKey;
    v23 = v10;
    v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v21 = *(a1 + 48);
    v13 = [NSArray arrayWithObjects:&v21 count:1];
    [NSManagedObjectContext mergeChangesFromRemoteContextSave:v12 intoContexts:v13];

    v14 = +[REMLogStore container];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138412546;
      v25 = v15;
      v26 = 2112;
      v27 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[markAccountStoreDeleted] Done deleting objects for entity {entity: %@, store: %@}", buf, 0x16u);
    }

    [*(a1 + 56) addObjectsFromArray:v11];
  }

  else
  {
    v17 = +[REMLogStore container];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      *buf = 138412802;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      v28 = 2114;
      v29 = v9;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "[markAccountStoreDeleted] Failed to delete objects for entity {entity: %@, store: %@, error: %{public}@}", buf, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v8);
    if (+[REMSystemUtilities isInternalInstall])
    {
      [REMRadarUtilities promptUserToFileBugWithAlertMessage:REMRadarUtilitiesAlertMessageDefault bugTitle:@"nil localDeletedObjectIDs in RDStoreController.l_markAccountStoreDeletedAndDeleteData" bugDescription:REMRadarUtilitiesBugDescriptionDefault];
    }
  }
}

void sub_1000DA730(id a1)
{
  attr = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_get_global_queue(17, 0);
  v2 = dispatch_queue_create_with_target_V2("com.apple.remindd.RDStoreController.fileIOWorker", attr, v1);
  v3 = qword_100952B38;
  qword_100952B38 = v2;
}

void sub_1000DACAC(uint64_t a1)
{
  v1 = [*(a1 + 32) coreSpotlightDelegateManager];
  [v1 reindexAllSearchableItems];
}

void sub_1000DADAC(uint64_t a1)
{
  v2 = [*(a1 + 32) coreSpotlightDelegateManager];
  [v2 reindexSearchableItemsWithIdentifiers:*(a1 + 40)];
}

id sub_1000DAE9C(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  [v2 _removeAllPersistentStores:*(a1 + 40)];

  v3 = [*(a1 + 32) l_accountStoreMap];
  [v3 removeAllObjects];

  v4 = *(a1 + 32);

  return [v4 l_invalidateAccountStorageCaches:@"invalidateStoreConnections"];
}

void sub_1000DAFEC(uint64_t a1)
{
  [*(a1 + 32) setStoreController:*(a1 + 40)];
  v2 = [*(a1 + 40) persistentStoreCoordinator];
  [*(a1 + 32) setPersistentStoreCoordinator:v2];

  v3 = [*(a1 + 40) mergePolicy];
  [*(a1 + 32) setMergePolicy:v3];

  [*(a1 + 32) setTransactionAuthor:*(a1 + 48)];
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _setAllowsExpandedUserInfoKeys:1];
  }

  if (*(a1 + 56) == 1)
  {
    v4 = *(a1 + 32);
    v5 = +[NSQueryGenerationToken currentQueryGenerationToken];
    v9 = 0;
    v6 = [v4 setQueryGenerationFromToken:v5 error:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      v8 = +[REMLogStore read];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_10076D4F0();
      }
    }
  }
}

void sub_1000DBE48(uint64_t a1)
{
  v3 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v2 = [v3 activityByMergingWithActivity:*(a1 + 40)];
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v2];
}

void sub_1000DBFD0(uint64_t a1)
{
  v3 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v2 = [v3 activityBySubtractingActivity:*(a1 + 40)];
  [*(a1 + 32) setL_currentAutoCategorizationActivity:v2];
}

void sub_1000DC240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  objc_sync_exit(v23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC27C(uint64_t a1)
{
  v2 = [*(a1 + 32) l_currentAutoCategorizationActivity];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000DC434(uint64_t a1)
{
  v2 = [*(a1 + 32) recordID];
  v4 = [REMCDAccount existingCloudObjectForRecordID:v2 accountID:*(a1 + 40) context:*(a1 + 48)];

  v3 = v4;
  if (v4)
  {
    [v4 mergeMigrationStateFromRecord:*(a1 + 32)];
    [*(a1 + 48) ic_saveWithLogDescription:@"merged migration state from user record"];
    v3 = v4;
  }
}

void sub_1000DC690(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[ICCloudContext appZoneID];
  LODWORD(v2) = [v2 isEqual:v3];

  if (v2)
  {
    v4 = [REMCDAccount accountWithCKIdentifier:*(a1 + 40) context:*(a1 + 48)];
    v5 = [v4 allChildObjects];
  }

  else
  {
    v5 = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        [v11 setInCloud:{0, v12}];
        [v11 clearServerRecord];
        if (([v11 markedForDeletion] & 1) == 0)
        {
          [v11 updateChangeCount];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [*(a1 + 48) ic_saveWithLogDescription:@"cleared server records for all cloud objects"];
}

void sub_1000DC9B4(uint64_t a1)
{
  v2 = [*(a1 + 32) ownerName];
  v3 = [NSPredicate predicateWithFormat:@"ckZoneOwnerName == %@", v2];

  v26 = v3;
  v4 = [REMCDObject ic_objectsMatchingPredicate:v3 context:*(a1 + 40)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v29;
    v8 = REMCRMergeableOrderedSet_ptr;
    do
    {
      v9 = 0;
      v27 = v6;
      do
      {
        if (*v29 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v28 + 1) + 8 * v9);
        v11 = [v10 recordID];
        v12 = [v11 zoneID];
        v13 = [v12 isEqual:*(a1 + 32)];

        v14 = objc_msgSend_cloudkit(v8[50]);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (v13)
        {
          if (v15)
          {
            v16 = [v10 shortLoggingDescription];
            v17 = *(a1 + 48);
            *buf = 138412546;
            v33 = v16;
            v34 = 2114;
            v35 = v17;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Deleting shared %@ for accountID %{public}@", buf, 0x16u);
          }

          [v10 deleteFromLocalDatabase];
        }

        else
        {
          if (v15)
          {
            v18 = [v10 shortLoggingDescription];
            v19 = [v10 recordID];
            v20 = [v19 zoneID];
            [v20 ic_loggingDescription];
            v21 = v7;
            v22 = v8;
            v24 = v23 = v4;
            v25 = *(a1 + 48);
            *buf = 138412802;
            v33 = v18;
            v34 = 2114;
            v35 = v24;
            v36 = 2114;
            v37 = v25;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Not deleting shared %@ in wrong zone %{public}@ for account ID %{public}@", buf, 0x20u);

            v4 = v23;
            v8 = v22;
            v7 = v21;
            v6 = v27;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v6);
  }

  [*(a1 + 40) ic_saveWithLogDescription:@"deleted all local database objects after shared zone was deleted"];
}

void sub_1000DCE68(uint64_t a1)
{
  v2 = [REMCDAccount accountWithCKIdentifier:*(a1 + 32) context:*(a1 + 40)];
  v3 = [v2 allChildObjects];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        if ([v8 isDeletable])
        {
          [*(a1 + 48) deleteCloudObjectIfFullyPushed:v8];
        }

        else
        {
          [v8 clearServerRecord];
          [v8 setInCloud:0];
          [v8 updateChangeCount];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  if ([*(a1 + 40) hasChanges])
  {
    v9 = *(a1 + 40);
    v13 = 0;
    v10 = [v9 save:&v13];
    v11 = v13;
    if ((v10 & 1) == 0)
    {
      v12 = objc_msgSend_cloudkit(REMLog);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10076D67C();
      }
    }
  }
}

void sub_1000DDE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DDECC(void *a1)
{
  v8 = [REMCDAccount unsafeUntilSystemReady_primaryCloudKitAccountInContext:a1[4] appleAccountUtilities:a1[5]];
  v2 = [v8 identifier];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [v8 personIDSalt];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *(*(a1[8] + 8) + 24) = [v8 inactive];
}

void sub_1000DDF70(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = +[RDAccountPersonIDSaltObserver AccountAbsentError];
  (*(v1 + 16))(v1, v2);
}

void sub_1000DE108(id a1)
{
  v28 = +[REMCDAccount cdEntityName];
  v29[0] = v28;
  v27 = +[REMCDList cdEntityName];
  v29[1] = v27;
  v26 = +[REMCDReminder cdEntityName];
  v29[2] = v26;
  v25 = +[REMCDSharee cdEntityName];
  v29[3] = v25;
  v24 = +[REMCDCalDAVNotification cdEntityName];
  v29[4] = v24;
  v23 = +[REMCDAssignment cdEntityName];
  v29[5] = v23;
  v22 = +[REMCDHashtag cdEntityName];
  v29[6] = v22;
  v21 = +[REMCDSmartList cdEntityName];
  v29[7] = v21;
  v20 = +[REMCDSharedToMeReminderPlaceholder cdEntityName];
  v29[8] = v20;
  v19 = +[REMCDTemplate cdEntityName];
  v29[9] = v19;
  v18 = +[REMCDSavedReminder cdEntityName];
  v29[10] = v18;
  v17 = +[REMCDAlarm cdEntityName];
  v29[11] = v17;
  v16 = +[REMCDAlarmDateTrigger cdEntityName];
  v29[12] = v16;
  v15 = +[REMCDAlarmTimeIntervalTrigger cdEntityName];
  v29[13] = v15;
  v14 = +[REMCDAlarmLocationTrigger cdEntityName];
  v29[14] = v14;
  v13 = +[REMCDAlarmVehicleTrigger cdEntityName];
  v29[15] = v13;
  v1 = +[REMCDListSection cdEntityName];
  v29[16] = v1;
  v2 = +[REMCDSmartListSection cdEntityName];
  v29[17] = v2;
  v3 = +[REMCDTemplateSection cdEntityName];
  v29[18] = v3;
  v4 = +[REMCDAuxiliaryChangeInfo cdEntityName];
  v29[19] = v4;
  v5 = +[REMCDAuxiliaryReminderChangeInfo cdEntityName];
  v29[20] = v5;
  v6 = +[REMCDAuxiliaryReminderChangeDeleteInfo cdEntityName];
  v29[21] = v6;
  v7 = +[REMCDAuxiliaryReminderChangeMoveInfo cdEntityName];
  v29[22] = v7;
  v8 = +[REMCDHashtagLabel cdEntityName];
  v29[23] = v8;
  v9 = +[REMCKSharedEntitySyncActivity cdEntityName];
  v29[24] = v9;
  v10 = +[REMCDDueDateDeltaAlert cdEntityName];
  v29[25] = v10;
  v11 = [NSArray arrayWithObjects:v29 count:26];
  v12 = qword_100952B48;
  qword_100952B48 = v11;
}

uint64_t sub_1000DECEC(uint64_t a1)
{
  v2 = [*(a1 + 32) l_primaryActiveCloudKitAccountREMObjectID];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

uint64_t sub_1000DEDE8(uint64_t a1)
{
  v2 = [*(a1 + 32) l_primaryActiveCloudKitAccountREMObjectID];
  v3 = *(a1 + 40);
  if (v3 != v2)
  {
    v5 = v2;
    v3 = [v3 isEqual:v2];
    v2 = v5;
    if ((v3 & 1) == 0)
    {
      v3 = [*(a1 + 32) setL_primaryActiveCloudKitAccountREMObjectID:*(a1 + 40)];
      v2 = v5;
    }
  }

  return _objc_release_x1(v3, v2);
}

void sub_1000DEF88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DEFA0(uint64_t a1)
{
  v2 = [*(a1 + 32) l_accountStoragesForAccountObjectIDs:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000DF204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DF21C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [*(a1 + 40) l_accountExternalIdentifiersToObjectIDsMap];
        v10 = [v9 objectForKey:v8];

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) l_accountStoragesForAccountObjectIDs:v2];
  v12 = *(*(a1 + 48) + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void sub_1000DF43C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [v8 objectID];
        v10 = REMCheckedDynamicCast();

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) count];
  if (v11 == [v2 count])
  {
    [*(a1 + 40) l_setAccountStorages:*(a1 + 32) forAccountObjectIDs:v2];
  }
}

void sub_1000DF6C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000DF6D8(uint64_t a1)
{
  v2 = [*(a1 + 32) l_allGenericAccountsObjectIDs];
  v3 = [v2 count];

  if (v3)
  {
    v4 = +[NSMutableArray array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = [*(a1 + 32) l_accountStorageCacheByObjectIDs];
    v6 = [v5 keyEnumerator];

    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [*(a1 + 32) l_allGenericAccountsObjectIDs];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v14 = [*(a1 + 32) l_accountStorageCacheByObjectIDs];
            v15 = [v14 objectForKey:v11];

            [v4 addObject:v15];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    v16 = *(*(a1 + 40) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v4;
  }

  else
  {
    v18 = *(*(a1 + 40) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = &__NSArray0__struct;
  }
}

void sub_1000DF99C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v25;
    do
    {
      v7 = 0;
      do
      {
        if (*v25 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v24 + 1) + 8 * v7);
        objc_opt_class();
        v9 = [v8 objectID];
        v10 = REMCheckedDynamicCast();

        if (v10)
        {
          [v2 addObject:v10];
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 32) count];
  if (v11 == [v2 count])
  {
    [*(a1 + 40) l_setAccountStorages:*(a1 + 32) forAccountObjectIDs:v2];
    v12 = [*(a1 + 40) l_allGenericAccountsObjectIDs];
    [v12 removeAllObjects];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v13 = v2;
    v14 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          v19 = [*(a1 + 40) l_allGenericAccountsObjectIDs];
          [v19 addObject:v18];

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }
  }
}

void sub_1000E024C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1000E027C(uint64_t a1)
{
  v1 = a1;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v39 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [v2 count]);

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = [*(v1 + 32) l_accountStoreMap];
  v4 = [v3 keyEnumerator];

  v5 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v45;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v45 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v44 + 1) + 8 * i);
        v10 = [*(v1 + 32) l_accountStoreMap];
        v11 = [v10 objectForKey:v9];

        v12 = [v11 URL];
        v13 = [v12 lastPathComponent];
        v14 = v1;
        v15 = v13;
        if (v13)
        {
          v16 = v13;
        }

        else
        {
          v16 = @"(nil)";
        }

        v17 = v16;

        v1 = v14;
        [v39 setObject:v17 forKeyedSubscript:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v44 objects:v54 count:16];
    }

    while (v6);
  }

  [v39 removeObjectForKey:@"local"];
  v18 = +[REMLogStore container];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [*(v1 + 32) isolatedReminderDataContainerURL];
    v20 = +[RDPaths defaultReminderDataContainerURL];
    *buf = 138412802;
    v49 = v19;
    v50 = 2112;
    v51 = v20;
    v52 = 2112;
    v53 = v39;
  }

  v21 = *(*(v1 + 40) + 8);
  if (*(v21 + 24))
  {
    v22 = *(v1 + 32);
    v23 = [v39 allKeys];
    v24 = *(*(v1 + 48) + 8);
    v25 = *(v24 + 40);
    v42 = 0;
    v43 = v25;
    v26 = [v22 l_removeAccountStoresWithIdentifiers:v23 deletedObjectIDs:&v43 error:&v42];
    objc_storeStrong((v24 + 40), v43);
    v27 = v42;
    *(*(*(v1 + 40) + 8) + 24) = v26;
  }

  else
  {
    v27 = 0;
    *(v21 + 24) = 0;
  }

  v28 = *(*(v1 + 40) + 8);
  if (*(v28 + 24))
  {
    v29 = [*(v1 + 32) persistentStoreCoordinator];
    v41 = v27;
    v30 = [v29 _removeAllPersistentStores:&v41];
    v31 = v41;

    *(*(*(v1 + 40) + 8) + 24) = v30;
    v27 = v31;
  }

  else
  {
    *(v28 + 24) = 0;
  }

  v32 = *(*(v1 + 40) + 8);
  if (*(v32 + 24) == 1 && ([*(v1 + 32) l_accountStoreMap], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "removeAllObjects"), v33, objc_msgSend(*(v1 + 32), "l_invalidateAccountStorageCaches:", @"nukeData"), v32 = *(*(v1 + 40) + 8), (*(v32 + 24) & 1) != 0))
  {
    v34 = *(v1 + 32);
    v40 = v27;
    v35 = [v34 l_loadAccountStoresFromDiskDeletingFilesMarkedDeleted:0 shouldDeleteInvalidStoresImmediately:0 error:&v40];
    v36 = v40;

    v32 = *(*(v1 + 40) + 8);
    v27 = v36;
  }

  else
  {
    v35 = 0;
  }

  *(v32 + 24) = v35;
  objc_storeStrong((*(*(v1 + 56) + 8) + 40), v27);
  v37 = +[REMLogStore container];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
  {
    v38 = *(*(*(v1 + 40) + 8) + 24);
    *buf = 134218242;
    v49 = v38;
    v50 = 2114;
    v51 = v27;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "RDStoreController nukeData completed {allSuccess: %ld, error: %{public}@}", buf, 0x16u);
  }
}

void sub_1000E07AC(uint64_t a1)
{
  v13 = [NSPredicate predicateWithFormat:@"markedForDeletion == YES"];
  v2 = [REMCDObject ic_objectsMatchingPredicate:"ic_objectsMatchingPredicate:context:" context:?];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 copy];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        if (([v8 isDeleted] & 1) == 0)
        {
          v9 = +[REMLogStore write];
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            sub_10076D82C(v19, v8);
          }

          [v8 deleteFromLocalDatabase];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v5);
  }

  v10 = *(a1 + 32);
  v14 = 0;
  [v10 save:&v14];
  v11 = v14;
  if (v11)
  {
    v12 = +[REMLogStore write];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10076D888();
    }
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000E1898(uint64_t a1)
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = [*(a1 + 32) l_accountStoreMap];
  v3 = [v2 keyEnumerator];

  obj = v3;
  v20 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v20)
  {
    v19 = *v23;
    do
    {
      v4 = 0;
      do
      {
        if (*v23 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * v4);
        v6 = [[NSUUID alloc] initWithUUIDString:v5];
        v7 = [NSPredicate predicateWithFormat:@"%K == %@", @"identifier", v6];

        v8 = +[REMCDAccount fetchRequest];
        [v8 setPredicate:v7];
        [v8 setResultType:0];
        v9 = *(a1 + 40);
        v21 = 0;
        v10 = [v9 executeFetchRequest:v8 error:&v21];
        v11 = v21;
        objc_opt_class();
        v12 = [v10 firstObject];
        v13 = REMDynamicCast();

        if (v11)
        {
          v14 = *(a1 + 48);
          v15 = [v11 debugDescription];
          [v14 addObject:v15];
        }

        if (v13)
        {
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
          [*(a1 + 32) _populateCountForEntity:objc_opt_class() withinCDAccount:v13 statsAccumulator:*(a1 + 56) errorAccumulator:*(a1 + 48)];
        }

        else
        {
          v16 = *(a1 + 48);
          v17 = [NSString stringWithFormat:@"Cannot fetch CD account with identifier %@", v5];
          [v16 addObject:v17];
        }

        v4 = v4 + 1;
      }

      while (v20 != v4);
      v20 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v20);
  }
}

void sub_1000E1E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E1EB4(uint64_t a1)
{
  v2 = [*(a1 + 32) l_accountStoreMap];
  *(*(*(a1 + 40) + 8) + 24) = [v2 count];
}

void sub_1000E2AD0(uint64_t a1)
{
  v2 = [*(a1 + 32) persistentStoreCoordinator];
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v20 = 0;
  v5 = [v2 executeRequest:v3 withContext:v4 error:&v20];
  v6 = v20;

  if (v5)
  {
    if ([v5 resultType] == 2 && (objc_msgSend(v5, "result"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
    {
      v9 = [v5 result];
      v10 = [v9 integerValue];
    }

    else
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = [NSNumber numberWithInteger:v10];
    v15 = [NSString stringWithFormat:@"%@.%@(%@)", v12, v13, v14];
    [v11 addObject:v15];

    v16 = +[REMLogStore container];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = *(a1 + 64);
      v18 = *(a1 + 72);
      v19 = [NSNumber numberWithInteger:v10];
      *buf = 138412802;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v19;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "PopulateDefaultValues END {entity: %@, attributeName: %@, updated.count: %@}", buf, 0x20u);
    }
  }

  else
  {
    v16 = +[REMLogStore container];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_10076D8F0(v6, a1, v16);
    }
  }
}

void sub_1000E2FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:kReachabilityChangedNotification object:v3];
}

void sub_1000E38B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E38DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E38F4(void *a1)
{
  v2 = a1[4];
  v6 = a1[5];
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  LOBYTE(v2) = [v2 obtainPermanentIDsForObjects:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(a1[6] + 8) + 24) = v2;
}

void sub_1000E4040(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) managedObjectContext];
  v5 = [v2 ic_objectsMatchingPredicate:v3 context:v4];

  if ([v5 count])
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = objc_alloc_init(NSMutableDictionary);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v34 = v5;
    obj = v5;
    v39 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    if (v39)
    {
      v37 = 0;
      v38 = *v48;
      v36 = a1;
      do
      {
        for (i = 0; i != v39; i = i + 1)
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v47 + 1) + 8 * i);
          objc_opt_class();
          v12 = REMDynamicCast();
          v13 = [v12 ckIdentifier];
          v41 = v12;
          v14 = [v12 accountCKIdentifier];
          if (v14)
          {
            v15 = v14;
          }

          else
          {
            v16 = objc_msgSend_cloudkit(REMLog);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v54 = v13;
              _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "ICBatchFetchHelper found object %{public}@ with nil accountIdentifier", buf, 0xCu);
            }

            if ((v37 & 1) == 0)
            {
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v17 = [*(a1 + 40) ckIdentifierAccountPairs];
              v18 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
              if (v18)
              {
                v19 = v18;
                v20 = *v44;
                do
                {
                  for (j = 0; j != v19; j = j + 1)
                  {
                    if (*v44 != v20)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v22 = *(*(&v43 + 1) + 8 * j);
                    v23 = [v22 ckIdentifier];
                    [v9 setObject:v22 forKeyedSubscript:v23];
                  }

                  v19 = [v17 countByEnumeratingWithState:&v43 objects:v52 count:16];
                }

                while (v19);
              }

              a1 = v36;
            }

            v24 = [v9 objectForKeyedSubscript:v13];
            v15 = [v24 accountIdentifier];

            v37 = 1;
          }

          v40 = v13;
          v25 = [[_REMCKIdentifierAccountIdentifierPair alloc] initWithCkIdentifier:v13 accountIdentifier:v15];
          v26 = [*(a1 + 40) managedObjectContext];
          v51 = v11;
          [NSArray arrayWithObjects:&v51 count:1];
          v28 = v27 = a1;
          v42 = 0;
          v29 = [v26 obtainPermanentIDsForObjects:v28 error:&v42];
          v30 = v42;

          if (v29)
          {
            v31 = [*(v27 + 40) managedObjectIDCache];
            v32 = [v11 objectID];
            [v31 setObject:v32 forKey:v25];

            [*(*(*(v27 + 48) + 8) + 40) addObject:v25];
            a1 = v27;
          }

          else
          {
            v33 = objc_msgSend_cloudkit(REMLog);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v54 = v25;
              _os_log_error_impl(&_mh_execute_header, v33, OS_LOG_TYPE_ERROR, "Cannot obtain permanent ID for %{public}@", buf, 0xCu);
            }

            a1 = v36;
          }
        }

        v39 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
      }

      while (v39);
    }

    v5 = v34;
  }
}

void sub_1000E47A8(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = [_REMCKIdentifierAccountIdentifierPair alloc];
        v9 = [(_REMCKIdentifierAccountIdentifierPair *)v8 initWithCkIdentifier:v7 accountIdentifier:*(a1 + 40), v16];
        v10 = [*(a1 + 48) ckIdentifierAccountPairs];
        [v10 addObject:v9];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }

  v11 = [*(a1 + 48) dispatchBlocks];
  v12 = objc_retainBlock(*(a1 + 56));
  [v11 addObject:v12];

  v13 = [*(a1 + 48) dispatchBlocks];
  v14 = [v13 count];
  v15 = [*(a1 + 48) batchSize];

  if (v14 >= v15)
  {
    [*(a1 + 48) _flush];
  }
}

void sub_1000E49DC(uint64_t a1)
{
  v2 = [*(a1 + 32) dispatchBlocks];
  v3 = objc_retainBlock(*(a1 + 40));
  [v2 addObject:v3];

  v4 = [*(a1 + 32) dispatchBlocks];
  v5 = [v4 count];
  v6 = [*(a1 + 32) batchSize];

  if (v5 >= v6)
  {
    v7 = *(a1 + 32);

    [v7 _flush];
  }
}

void sub_1000E5084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E50C4(void *a1)
{
  WeakRetained = objc_loadWeakRetained((a1[4] + 24));
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [WeakRetained existingObjectWithID:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

void sub_1000E5F64(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  dispatch_async(&_dispatch_main_q, v2);
}

void sub_1000E6354(uint64_t a1)
{
  v2 = +[REMCDReminder cdEntityName];
  v3 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:v2];

  v4 = [NSPredicate predicateWithFormat:@"%K != NULL", @"ckServerRecordData"];
  [v3 setPredicate:v4];

  [v3 setIncludesSubentities:1];
  [v3 setResultType:2];
  v5 = [NSString stringWithFormat:@"%@.%@", @"parentReminder", @"ckIdentifier"];
  v18 = @"ckParentReminderIdentifier";
  v6 = [NSExpression expressionForKeyPath:v5];
  v19 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [v3 setPropertiesToUpdate:v7];

  v17 = *(a1 + 32);
  v8 = [NSArray arrayWithObjects:&v17 count:1];
  [v3 setAffectedStores:v8];

  v9 = [*(a1 + 32) persistentStoreCoordinator];
  v10 = *(a1 + 40);
  v16 = 0;
  v11 = [v9 executeRequest:v3 withContext:v10 error:&v16];
  v12 = v16;

  if (!v11)
  {
    v15 = +[REMLogStore container];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10076DF64(v12, v15);
    }

    goto LABEL_7;
  }

  if ([v11 resultType] == 2)
  {
    v13 = [v11 result];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v15 = [v11 result];
      *(*(*(a1 + 48) + 8) + 24) = [v15 integerValue];
LABEL_7:
    }
  }
}

void sub_1000E6870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E6888(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000E68A0(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = [REMCDAccount predicateForCloudKitAccountsWithKeyPathPrefix:0];
  [v2 setPredicate:v3];

  v4 = *(a1 + 32);
  v26 = 0;
  v5 = [v4 executeFetchRequest:v2 error:&v26];
  v6 = v26;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  if (v6)
  {
    v9 = objc_msgSend_cloudkit(REMLog);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10076E02C();
    }
  }

  else
  {
    v21 = v2;
    v10 = +[NSMutableArray array];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v20 = a1;
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v16 ckUserRecordName];

          if (!v17)
          {
            v18 = objc_msgSend_cloudkit(REMLog);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v28 = v16;
              _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "Found extended account without CK user record name: %@", buf, 0xCu);
            }
          }

          [v10 addObject:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v22 objects:v29 count:16];
      }

      while (v13);
    }

    v2 = v21;
    v19 = *(*(v20 + 40) + 8);
    v9 = *(v19 + 40);
    *(v19 + 40) = v10;
    v6 = 0;
  }
}

void sub_1000E6C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E6C7C(uint64_t a1)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E6D18;
  v4[3] = &unk_1008DC798;
  v3 = *(a1 + 32);
  v2 = v3;
  v5 = v3;
  v6 = *(a1 + 48);
  [v2 performBlockAndWait:v4];
}

void sub_1000E6D18(uint64_t a1)
{
  v2 = [qword_100952B60 objectForKey:*(a1 + 32)];
  v3 = [v2 allValues];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 40) + 8) + 40);
  v7 = v6;
  if (v6 || ([*(a1 + 48) _fetchCloudKitAccountsInContext:*(a1 + 32)], v8 = objc_claimAutoreleasedReturnValue(), v9 = *(*(a1 + 40) + 8), v10 = *(v9 + 40), *(v9 + 40) = v8, v10, v11 = *(a1 + 40), (v7 = *(*(v11 + 8) + 40)) != 0))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = v7;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * i) managedObjectContext];

          if (!v17)
          {
            v18 = *(*(a1 + 40) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = 0;

            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    v11 = *(a1 + 40);
    if (*(*(v11 + 8) + 40))
    {
      if (v6)
      {
        return;
      }
    }

    else
    {
      v20 = [*(a1 + 48) _fetchCloudKitAccountsInContext:*(a1 + 32)];
      v21 = *(*(a1 + 40) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v11 = *(a1 + 40);
    }
  }

  v23 = [*(a1 + 48) accountByCKIdentifierFrom:{*(*(v11 + 8) + 40), v24}];
  [qword_100952B60 setObject:v23 forKey:*(a1 + 32)];
}

void sub_1000E6FE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E7000(uint64_t a1)
{
  v2 = +[REMCDAccount fetchRequest];
  v3 = cloudBasedAccountTypes();
  v4 = [NSPredicate predicateWithFormat:@"type IN %@", v3];
  [v2 setPredicate:v4];

  v5 = *(a1 + 32);
  v9 = 0;
  v6 = [v5 countForFetchRequest:v2 error:&v9];
  v7 = v9;
  *(*(*(a1 + 40) + 8) + 24) = v6;
  if (v7)
  {
    v8 = objc_msgSend_cloudkit(REMLog);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10076E098();
    }
  }
}

void sub_1000E74D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E74E8(uint64_t a1)
{
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (!v2)
  {
    goto LABEL_26;
  }

  v4 = v2;
  v5 = *v36;
  *&v3 = 138543618;
  v33 = v3;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v36 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v7 = *(*(&v35 + 1) + 8 * i);
      v8 = [v7 accountTypeHost];
      v9 = [v8 isPrimaryCloudKit];

      v10 = [v7 identifier];
      v11 = [v10 UUIDString];
      v12 = [*(a1 + 40) identifier];
      v13 = [v11 isEqualToString:v12];

      v14 = [v7 identifier];
      v15 = [v14 UUIDString];
      v16 = [v15 isEqualToString:@"55CF9DED-2785-46E1-9991-04987805FEE7"];

      v17 = v13 ^ 1;
      if (((v9 ^ 1) & 1) == 0 && (v17 & 1) == 0)
      {
        v28 = objc_msgSend_cloudkit(REMLog);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v7 identifier];
          v30 = [v29 UUIDString];
          v31 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v30;
          v41 = 2114;
          v42 = v31;
          v32 = "CloudKitUtils: Found a CloudKit REMCDAccount that matches the primary iCloud ACAccount {cdAccount: %{public}@, acAccount: %{public}@}";
LABEL_24:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_INFO, v32, buf, 0x16u);
        }

LABEL_25:

        objc_storeStrong((*(*(a1 + 48) + 8) + 40), v7);
        goto LABEL_26;
      }

      if (v16)
      {
        v28 = objc_msgSend_cloudkit(REMLog);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = [v7 identifier];
          v30 = [v29 UUIDString];
          v31 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v30;
          v41 = 2114;
          v42 = v31;
          v32 = "CloudKitUtils: Found a PPT fixture CK account, ASSUMED to be matching the primary iCloud ACAccount {cdAccount: %{public}@, acAccount: %{public}@}";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      if ((v9 ^ 1 | v13))
      {
        if ((v9 | v17))
        {
          continue;
        }

        v18 = objc_msgSend_cloudkit(REMLog);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          v19 = [v7 identifier];
          v20 = [v19 UUIDString];
          v21 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v20;
          v41 = 2114;
          v42 = v21;
          _os_log_fault_impl(&_mh_execute_header, v18, OS_LOG_TYPE_FAULT, "CloudKitUtils: Found a non-primary CloudKit REMCDAccount that matches the primary iCloud ACAccount, this is unexpected {cdAccount: %{public}@, acAccount: %{public}@}", buf, 0x16u);
        }
      }

      else
      {
        v22 = objc_msgSend_cloudkit(REMLog);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          v25 = [v7 identifier];
          v26 = [v25 UUIDString];
          v27 = [*(a1 + 40) identifier];
          *buf = v33;
          v40 = v26;
          v41 = 2114;
          v42 = v27;
          _os_log_fault_impl(&_mh_execute_header, v22, OS_LOG_TYPE_FAULT, "CloudKitUtils: Found a primary CloudKit REMCDAccount that does NOT match with the primary iCloud ACAccount, this is unexpected {cdAccount: %{public}@, acAccount: %{public}@}", buf, 0x16u);
        }

        v23 = *(*(a1 + 48) + 8);
        v24 = v7;
        v18 = *(v23 + 40);
        *(v23 + 40) = v24;
      }
    }

    v4 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

LABEL_26:
}

void sub_1000E7C40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000E7C60(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E7D18;
  v5[3] = &unk_1008DC7C0;
  v6 = v2;
  v4 = *(a1 + 40);
  v3 = v4;
  v7 = v4;
  v8 = *(a1 + 56);
  [v6 performBlockAndWait:v5];
}

void sub_1000E7D18(uint64_t a1)
{
  v2 = [qword_100952B60 objectForKey:*(a1 + 32)];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = 0;
    v9 = *(v6 + 40);
    v10 = v2;
  }

  else
  {
    v8 = [*(a1 + 56) _fetchCloudKitAccountsInContext:*(a1 + 32)];
    v10 = [*(a1 + 56) accountByCKIdentifierFrom:v8];

    v11 = [v10 objectForKey:*(a1 + 40)];
    v12 = *(*(a1 + 48) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = objc_msgSend_cloudkit(REMLog);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = *(a1 + 40);
      v16 = [v10 allKeys];
      v26 = 138543618;
      v27 = v15;
      v28 = 2114;
      v29 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "cloudKitAccountWithCKIdentifier: not in cache, ckIdentifier: %{public}@, all ckIdentifiers: %{public}@", &v26, 0x16u);
    }

    v9 = *(*(*(a1 + 48) + 8) + 40);
    if (!v9)
    {
      goto LABEL_12;
    }
  }

  v17 = [v9 managedObjectContext];

  if (!v17)
  {
    v18 = [*(a1 + 56) _fetchCloudKitAccountsInContext:*(a1 + 32)];

    v19 = [*(a1 + 56) accountByCKIdentifierFrom:v18];

    v20 = [v19 objectForKey:*(a1 + 40)];
    v21 = *(*(a1 + 48) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v23 = objc_msgSend_cloudkit(REMLog);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 40);
      v25 = [v19 allKeys];
      v26 = 138543618;
      v27 = v24;
      v28 = 2114;
      v29 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "cloudKitAccountWithCKIdentifier: nil context, ckIdentifier: %{public}@, all ckIdentifiers: %{public}@", &v26, 0x16u);
    }

    v8 = v18;
    v10 = v19;
    goto LABEL_12;
  }

  if (!v7)
  {
LABEL_12:
    [qword_100952B60 setObject:v10 forKey:*(a1 + 32)];
  }
}

void sub_1000E84C4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

int main(int argc, const char **argv, const char **envp)
{
  ReminderKitInternalVerify()();
  v3 = type metadata accessor for Logger();
  sub_1000EECAC(v3, qword_1009359A0);
  v4 = sub_100006654(v3, qword_1009359A0);
  if (qword_100936410 != -1)
  {
    swift_once();
  }

  v5 = sub_100006654(v3, qword_100974F78);
  (*(*(v3 - 8) + 16))(v4, v5, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = [objc_opt_self() processInfo];
    v10 = [v9 processIdentifier];

    *(v8 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "LAUNCH remindd {pid: %d}", v8, 8u);
  }

  v11 = objc_autoreleasePoolPush();
  sub_1000E89FC();
  objc_autoreleasePoolPop(v11);
  sub_100052F58();
  return 0;
}

uint64_t sub_1000E89FC()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v0 - 8);
  v21 = v0;
  __chkstk_darwin(v0, v1);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v18 = *(v4 - 8);
  v19 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  sub_100006654(v8, &unk_1009359A0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.launch}", v11, 2u);
  }

  v12 = os_transaction_create();
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v13 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  aBlock[4] = sub_1000FCE9C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E52F8;
  v15 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v16 = v21;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  swift_unknownObjectRelease();

  (*(v20 + 8))(v3, v16);
  return (*(v18 + 8))(v7, v19);
}

id sub_1000E8D90(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v101 = a2;
  v99 = type metadata accessor for DispatchWorkItemFlags();
  v98 = *(v99 - 8);
  __chkstk_darwin(v99, v7);
  v96 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for DispatchQoS();
  v95 = *(v97 - 8);
  __chkstk_darwin(v97, v9);
  v94 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, &unk_1009359A0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction INIT {name: com.apple.remindd.xpcEvents}", v14, 2u);
  }

  v93 = os_transaction_create();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v15 = qword_100974CC8;
  v16 = type metadata accessor for RDXPCEventStream.SystemXPCEventInterface();
  v17 = swift_allocObject();
  if (byte_10093F008 == 1)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    byte_10093F008 = 1;
    v104 = v16;
    v105 = &off_1008EBEB0;
    aBlock[0] = v17;
    type metadata accessor for RDXPCEventStream();
    v18 = swift_allocObject();
    v19 = sub_10000C9DC(aBlock, v16);
    v20 = __chkstk_darwin(v19, v19);
    v22 = (&v81 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22, v20);
    v24 = *v22;
    *(v18 + 64) = v16;
    *(v18 + 72) = &off_1008EBEB0;
    *(v18 + 24) = 0;
    *(v18 + 32) = &_swiftEmptyArrayStorage;
    *(v18 + 40) = v24;
    *(v18 + 16) = v15;
    v25 = v15;
    sub_10000607C(aBlock);
    v26 = type metadata accessor for RDLocationManager();
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_q_locationManager] = 0;
    *&v27[OBJC_IVAR____TtC7remindd17RDLocationManager_queue] = v25;
    v109.receiver = v27;
    v109.super_class = v26;
    v28 = v25;
    v29 = objc_msgSendSuper2(&v109, "init");
    v30 = qword_100935D18;

    v31 = v29;
    if (v30 != -1)
    {
      swift_once();
    }

    v32 = qword_100974CB0;
    v92 = type metadata accessor for RDDaemon();
    v33 = objc_allocWithZone(v92);
    v34 = v32;
    v35 = a3;
    v36 = a1;
    v37 = v101;

    v89 = v31;
    v38 = sub_1000F55EC(v18, v36, v37, v35, v31, a4, v34, v33);
    v100 = v38;
    type metadata accessor for RDMigrationClient();
    sub_100311E94(v36);
    v39 = &v38[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
    v40 = *&v38[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon + 8];
    type metadata accessor for RDAccountUtils();
    v41 = swift_allocObject();
    *(v41 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakInit();
    *(v41 + 24) = v40;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectWeakAssign();
    *(v41 + 40) = 0;
    [v36 setAccountUtils:v41];

    v91 = type metadata accessor for RDExchangeAccountComplimentaryService();
    swift_allocObject();
    v42 = v36;
    v90 = sub_100157C6C(v42, 0, 0, 0);
    v43 = type metadata accessor for RDDaemonController();
    v44 = *(v39 + 1);
    v110 = xmmword_1007912E0;
    v112 = 0;
    memset(v113, 0, 14);
    v111 = 0;
    ObjectType = swift_getObjectType();
    v46 = swift_unknownObjectRetain();
    v47 = sub_1005564D4(v46, &v110, 0, v43, ObjectType, v44);
    v48 = [objc_allocWithZone(REMStore) initWithDaemonController:v47];

    v49 = objc_opt_self();
    v50 = v48;
    v51 = [v49 sharedInstance];
    v52 = [objc_opt_self() daemonUserDefaults];
    v53 = type metadata accessor for RDAccountInitializer();
    v54 = objc_allocWithZone(v53);
    *&v54[OBJC_IVAR____TtC7remindd20RDAccountInitializer_store] = v50;
    *&v54[OBJC_IVAR____TtC7remindd20RDAccountInitializer_storeController] = v42;
    *&v54[OBJC_IVAR____TtC7remindd20RDAccountInitializer_appleAccountUtilities] = v51;
    *&v54[OBJC_IVAR____TtC7remindd20RDAccountInitializer_userDefaults] = v52;
    v108.receiver = v54;
    v108.super_class = v53;
    v55 = v42;
    v56 = objc_msgSendSuper2(&v108, "init");
    sub_100455ED0();

    v57 = type metadata accessor for RDNotifydEventStream();
    swift_allocObject();
    v58 = v18;
    v59 = v28;
    v60 = v50;
    v88 = v60;
    v61 = sub_10028F604(v59, 0);
    sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
    v62 = [swift_getObjCClassFromMetadata() daemonUserDefaults];
    v63 = [objc_opt_self() sharedConfiguration];
    v64 = swift_allocObject();
    *(v64 + 16) = v60;
    v87 = type metadata accessor for RDSyncPoller();
    v65 = swift_allocObject();
    v65[4] = &off_1008F7BC8;
    v65[9] = v63;
    v65[10] = &off_1008F7BE8;
    v65[7] = v61;
    v65[8] = &off_1008EC760;
    v65[2] = v59;
    v65[3] = v62;
    v65[5] = sub_1000FC404;
    v65[6] = v64;
    v66 = type metadata accessor for RDDisplayDateUpdater();
    v86 = v66;
    v67 = objc_allocWithZone(v66);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    v85 = v57;
    swift_allocObject();
    v68 = v59;
    v69 = v55;
    *&v67[OBJC_IVAR____TtC7remindd20RDDisplayDateUpdater_significantTimeNotificationStream] = sub_10028F604(v68, 0);
    v107.receiver = v67;
    v107.super_class = v66;
    v84 = objc_msgSendSuper2(&v107, "init");

    swift_allocObject();
    v70 = sub_10028F604(v68, 0);
    sub_1005D0E0C();
    sub_1005B560C();
    v71 = swift_allocObject();
    v71[2] = v65;
    v71[3] = v58;
    v83 = v58;
    v72 = v89;
    v71[4] = v89;
    v71[5] = v70;
    v82 = v70;
    v71[6] = v93;
    v105 = sub_1000FC40C;
    v106 = v71;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100019200;
    v104 = &unk_1008E4D08;
    v73 = _Block_copy(aBlock);

    v89 = v72;

    swift_unknownObjectRetain();
    v74 = v94;
    static DispatchQoS.unspecified.getter();
    v102 = &_swiftEmptyArrayStorage;
    sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_1000F5104(&unk_100939E50, &unk_100791AD0);
    sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
    v75 = v96;
    v76 = v99;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v73);
    (*(v98 + 8))(v75, v76);
    (*(v95 + 8))(v74, v97);

    sub_1000F5104(&unk_100936EC0, &unk_100791AE0);
    v77 = swift_allocObject();
    *(v77 + 16) = xmmword_1007912F0;
    *(v77 + 56) = v92;
    *(v77 + 64) = &off_1008E4A58;
    v78 = v100;
    *(v77 + 32) = v100;
    *(v77 + 96) = type metadata accessor for RDStoreControllerNotificationCenter();
    *(v77 + 104) = &off_1008E4A38;
    *(v77 + 72) = v101;
    *(v77 + 136) = v87;
    *(v77 + 144) = &off_1008E4A30;
    *(v77 + 112) = v65;
    *(v77 + 176) = v86;
    *(v77 + 184) = &off_1008E4A28;
    *(v77 + 152) = v84;
    *(v77 + 216) = v85;
    *(v77 + 224) = &off_1008E4A20;
    *(v77 + 192) = v82;
    *(v77 + 256) = v91;
    *(v77 + 264) = &off_1008E4A18;
    *(v77 + 232) = v90;

    v79 = v78;
    swift_unknownObjectRelease();

    return v79;
  }

  return result;
}

void sub_1000E99C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  sub_100006654(v5, &unk_1009359A0);
  sub_1005819E4();
  sub_10025DB14();
  sub_100507624();
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  *(a4 + 16) = sub_1000E9AD0;
  *(a4 + 24) = 0;
  sub_10003E114(v6, v7);
  oslog = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v8, "os_transaction RELEASE {name: com.apple.remindd.xpcEvents}", v9, 2u);
  }
}

uint64_t sub_1000E9AD0()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Triggered proactiveExitStream.eventHandler. Exiting... {name: com.apple.remindd.xpcEvents}", v3, 2u);
  }

  return _xpc_transaction_exit_clean();
}

void sub_1000E9B88()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0, v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100006654(v5, &unk_1009359A0);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  String.utf8CString.getter();
  v8, v9, v10, v11, v12, v13, v14, v15;
  LOBYTE(v8) = _set_user_dir_suffix();

  if ((v8 & 1) == 0)
  {
    (*(v1 + 16))(v4, v6, v0);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    v38 = xmmword_100791300;
    *(inited + 16) = xmmword_100791300;
    *(inited + 32) = 49;
    *(inited + 40) = 0xE100000000000000;
    v17 = errno.getter();
    if (!strerror(v17))
    {
      __break(1u);
    }

    v18 = String.init(cString:)();
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v18;
    *(inited + 56) = v19;
    v20 = sub_1001F67C8(inited);
    inited, v21, v22, v23, v24, v25, v26, v27;
    v28 = swift_initStackObject();
    *(v28 + 16) = v38;
    *(v28 + 32) = 48;
    *(v28 + 40) = 0xE100000000000000;
    v29 = errno.getter();
    *(v28 + 72) = &type metadata for Int32;
    *(v28 + 48) = v29;
    v30 = sub_1001F67C8(v28);
    v28, v31, v32, v33, v34, v35, v36, v37;
    sub_10054573C("Sandbox: _set_user_dir_suffix() failed %{public}d (%@)", 54, 2, v20, v30);
    __break(1u);
  }
}

void sub_1000E9D7C(int a1)
{
  v2 = type metadata accessor for Logger();
  sub_100006654(v2, &unk_1009359A0);
  v3 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v3 + 16) = 1024;
  bzero((v3 + 32), 0x400uLL);
  if (!confstr(a1, (v3 + 32), 0x400uLL))
  {
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v87 = v7;
      *v6 = 67240706;
      *(v6 + 4) = a1;
      *(v6 + 8) = 1026;
      *(v6 + 10) = errno.getter();
      *(v6 + 14) = 2080;
      v8 = errno.getter();
      if (!strerror(v8))
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v9 = String.init(cString:)();
      v11 = v10;
      v12 = sub_10000668C(v9, v10, &v87);
      v11, v13, v14, v15, v16, v17, v18, v19;
      *(v6 + 16) = v12;
      _os_log_impl(&_mh_execute_header, v4, v5, "Sandbox: confstr() for type %{public}d failed %{public}d (%s)", v6, 0x18u);
      sub_10000607C(v7);
    }
  }

  v20 = realpath_DARWIN_EXTSN((v3 + 32), 0);
  if (v20)
  {
    v28 = v20;
    v3, v21, v22, v23, v24, v25, v26, v27;
    sub_1000EA11C(v28);

    return;
  }

  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.fault.getter();
  v3, v31, v32, v33, v34, v35, v36, v37;
  if (os_log_type_enabled(v29, v30))
  {
    v45 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    *v45 = 136315650;
    v46 = *(v3 + 16);
    if (!v46)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (*(v3 + 32))
    {
      v47 = 0;
      v48 = v46 - 1;
      while (v48 != v47)
      {
        if (!*(v3 + 33 + v47++))
        {
          goto LABEL_18;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

LABEL_18:
    v50 = static String._fromUTF8Repairing(_:)();
    v52 = v51;
    v3, v51, v53, v54, v55, v56, v57, v58;
    v59 = sub_10000668C(v50, v52, &v87);
    v52, v60, v61, v62, v63, v64, v65, v66;
    *(v45 + 4) = v59;
    *(v45 + 12) = 1026;
    *(v45 + 14) = errno.getter();
    *(v45 + 18) = 2080;
    v67 = errno.getter();
    if (!strerror(v67))
    {
LABEL_26:
      __break(1u);
      return;
    }

    v68 = String.init(cString:)();
    v70 = v69;
    v71 = sub_10000668C(v68, v69, &v87);
    v70, v72, v73, v74, v75, v76, v77, v78;
    *(v45 + 20) = v71;
    _os_log_impl(&_mh_execute_header, v29, v30, "Sandbox: realpath(%s) failed %{public}d (%s)", v45, 0x1Cu);
    swift_arrayDestroy();
  }

  else
  {
    v3, v38, v39, v40, v41, v42, v43, v44;
  }

  v79 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v79 + 16) = 1;
  *(v79 + 32) = 0;
  sub_1000EA11C(v79 + 32);

  v79, v80, v81, v82, v83, v84, v85, v86;
}

void sub_1000EA11C(uint64_t a1)
{
  v1 = type metadata accessor for Logger();
  sub_100006654(v1, &unk_1009359A0);
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v17 = v4;
    *v3 = 136315138;
    v5 = String.init(cString:)();
    v7 = v6;
    v8 = sub_10000668C(v5, v6, &v17);
    v7, v9, v10, v11, v12, v13, v14, v15;
    *(v3 + 4) = v8;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Sandbox: TMPDIR=%s", v3, 0xCu);
    sub_10000607C(v4);
  }
}

id sub_1000EA240(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v4 - 8);
  v26 = v4;
  __chkstk_darwin(v4, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v23 = *(v8 - 8);
  v24 = v8;
  __chkstk_darwin(v8, v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  sub_100006654(v12, &unk_1009359A0);
  if (qword_100935FC8 != -1)
  {
    swift_once();
  }

  v29 = xmmword_100791310;
  v31 = 0;
  v32[0] = 0;
  v30 = 0;
  *(v32 + 6) = 0;
  sub_1000081D8(&v29, a1, a2);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v13, v14, "os_transaction INIT {name: com.apple.remindd.xpcEvents}", v15, 2u);
  }

  v16 = os_transaction_create();
  v17 = [objc_allocWithZone(type metadata accessor for RDBarebonesDaemon()) init];
  sub_1005D19E8();
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  aBlock[4] = sub_1000FC3E0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4C18;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  v27 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v20 = v26;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  swift_unknownObjectRelease();
  (*(v25 + 8))(v7, v20);
  (*(v23 + 8))(v11, v24);

  return v17;
}

void sub_1000EA66C(uint64_t a1, const char *a2)
{
  v3 = type metadata accessor for Logger();
  sub_100006654(v3, &unk_1009359A0);
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v4, a2, v5, 2u);
  }
}

void sub_1000EA72C(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  __chkstk_darwin(v5 - 8, v6);
  v8 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v9, v10);
  v12 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Logger();
  v14 = sub_100006654(v13, &unk_1009359A0);
  if ([objc_opt_self() isSetupUser])
  {
    *&v109 = REMCDList.cleanUpAfterLocalObjectMerge();
    *(&v109 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_1000EBA84;
    *(&v108 + 1) = &unk_1008E4BA0;
    v15 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.alarm", 0, v15);
    _Block_release(v15);
    *&v109 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v109 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_1000EBA84;
    *(&v108 + 1) = &unk_1008E4BC8;
    v16 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v16);
    _Block_release(v16);
    if (qword_100935D38 != -1)
    {
      swift_once();
    }

    sub_1005A9F48(qword_100974CD0, sub_1000EBAE4, 0);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Running in the buddy setup user. Going to run a barebones daemon.", v19, 2u);
    }

    sub_1000F5104(&qword_100936E88, &unk_100791AC0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_100791300;
    v21 = sub_1000EA240(0x754265726F666542, 0xEB00000000796464);
    *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
    *(v20 + 64) = &off_1008E4A50;
    *(v20 + 32) = v21;
    goto LABEL_46;
  }

  v99 = v8;
  v98 = v13;
  v97 = a1;
  v106 = v14;
  v104 = v2;
  v102 = a2;
  v22 = [objc_allocWithZone(UNUserNotificationCenter) initWithBundleIdentifier:REMAppBundleIdentifier];
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v23 = qword_100974CC8;
  v24 = type metadata accessor for RDUserNotificationCenter();
  v25 = objc_allocWithZone(v24);
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_assignmentNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_sharedListUpdateNotificationDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_queue] = v23;
  *&v25[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_notificationCenter] = v22;
  v110.receiver = v25;
  v110.super_class = v24;
  v26 = v23;
  v101 = v22;
  v27 = objc_msgSendSuper2(&v110, "init");
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1000F50E0;
  *(v29 + 24) = v28;
  v100 = v28;
  *&v109 = sub_1000529DC;
  *(&v109 + 1) = v29;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v108 = sub_10000F160;
  *(&v108 + 1) = &unk_1008E4AB0;
  v30 = _Block_copy(&aBlock);
  v31 = v27;

  dispatch_sync(v26, v30);
  _Block_release(v30);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
    goto LABEL_48;
  }

  UnlockNotificationEngine = type metadata accessor for RDBeforeFirstUnlockNotificationEngine();
  v32 = swift_allocObject();
  v32[2] = v26;
  v32[3] = v31;
  v103 = v32;
  v32[4] = &off_1008F5BC0;
  v105 = v31;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&_mh_execute_header, v33, v34, "os_transaction INIT {name: com.apple.remindd.firstUnlockManager.launch}", v35, 2u);
  }

  v36 = os_transaction_create();
  v95 = type metadata accessor for RDFirstUnlockManager();
  v37 = swift_allocObject();
  type metadata accessor for RDTransactionRegistrar();
  v38 = swift_allocObject();
  v38[4] = 0;
  v38[5] = 0;
  v38[2] = 0xD000000000000058;
  v38[3] = 0x80000001007EAE60;
  *&aBlock = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
  sub_1000F5104(&qword_100936E68, &unk_100791AB0);
  sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
  v39 = v37;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  type metadata accessor for UnfairLock();
  swift_allocObject();
  v38[6] = UnfairLock.init(options:)();
  *(v37 + 16) = v38;
  *(v37 + 24) = 0;
  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v40 = static OS_dispatch_queue.main.getter();
  *&v109 = 0;
  aBlock = 0u;
  v108 = 0u;

  swift_unknownObjectRetain();
  v41 = sub_100294A20(v40, &aBlock, v37, sub_1000EBB04, 0, v37, v36);

  swift_unknownObjectRelease();

  sub_1000050A4(&aBlock, &qword_100936E80, qword_10079F000);
  if (v41 == 1)
  {
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.fault.getter();
    v49 = os_log_type_enabled(v47, v48);
    v42 = v99;
    if (v49)
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unexpected currentUnlockState - .firstUnlock is a transitional state that should be passed to the unlock handler only.", v50, 2u);
    }
  }

  else
  {
    v42 = v99;
    if (!v41)
    {
      *&v109 = REMCDList.cleanUpAfterLocalObjectMerge();
      *(&v109 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v108 = sub_1000EBA84;
      *(&v108 + 1) = &unk_1008E4B78;
      v43 = _Block_copy(&aBlock);
      xpc_set_event_stream_handler("com.apple.alarm", 0, v43);
      _Block_release(v43);
      v44 = v105;
      *&v105[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_beforeFirstUnlockReminderDelegate + 8] = &off_1008ED8B8;
      v45 = v103;
      swift_unknownObjectWeakAssign();

      sub_10030088C();

      sub_1000F5104(&qword_100936E88, &unk_100791AC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100791320;
      v46 = sub_1000EA240(0x616F4C74416E7552, 0xE900000000000064);
      *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
      *(v20 + 64) = &off_1008E4A50;
      *(v20 + 32) = v46;
      *(v20 + 96) = UnlockNotificationEngine;
      *(v20 + 104) = &off_1008E4A40;
      *(v20 + 72) = v45;
      *(v20 + 136) = v95;
      *(v20 + 144) = &off_1008E4A48;
      *(v20 + 112) = v37;

LABEL_45:
      swift_unknownObjectRelease();

      a2 = v102;
LABEL_46:
      *a2 = v20;
      return;
    }
  }

  v12 = [objc_allocWithZone(RDStoreController) init];
  if ([v12 hasFailedLoadingAccountStoresFromDiskDueToDiskFull])
  {
    *&v109 = REMCDList.cleanUpAfterLocalObjectMerge();
    *(&v109 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_1000EBA84;
    *(&v108 + 1) = &unk_1008E4B00;
    v51 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.alarm", 0, v51);
    _Block_release(v51);
    *&v109 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v109 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_1000EBA84;
    *(&v108 + 1) = &unk_1008E4B28;
    v52 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v52);
    _Block_release(v52);
    if (qword_100935D38 == -1)
    {
LABEL_20:
      sub_1005A9F48(qword_100974CD0, sub_1000EBBC0, 0);
      v53 = static OS_dispatch_queue.main.getter();
      *&v109 = sub_1000EBD84;
      *(&v109 + 1) = 0;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      *&v108 = sub_1000EC630;
      *(&v108 + 1) = &unk_1008E4B50;
      v54 = _Block_copy(&aBlock);

      [v12 requestFreeSpaceToLoadAccountStoresWithQueue:v53 completionBlock:v54];
      _Block_release(v54);

      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&_mh_execute_header, v55, v56, "Could not load some of our databases due to disk full. Going to run a barebones daemon.", v57, 2u);
      }

      sub_1000F5104(&qword_100936E88, &unk_100791AC0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_100791300;
      v58 = sub_1000EA240(0x6C6C75466B736944, 0xE800000000000000);
      *(v20 + 56) = type metadata accessor for RDBarebonesDaemon();
      *(v20 + 64) = &off_1008E4A50;
      *(v20 + 32) = v58;

      goto LABEL_44;
    }

LABEL_48:
    swift_once();
    goto LABEL_20;
  }

  *&v111 = 0x4014000000000000;
  type metadata accessor for RDStoreControllerNotificationCenter();
  v112 = 0;
  v113 = 0;
  *(&v111 + 1) = 0;
  v114 = 0;
  swift_allocObject();
  v59 = v12;
  v60 = sub_1004417C4(0, 0, v59, &v111);

  if (qword_100935D20 != -1)
  {
    swift_once();
  }

  sub_10043B68C(qword_100974CB8, sub_10002ABC8, 0, v42);
  sub_1000FBE54(v42);

  sub_1003016CC();

  if (qword_100935D18 != -1)
  {
    swift_once();
  }

  v61 = sub_1000EC6A0(0xD00000000000001BLL, 0x80000001007EAEC0, qword_100974CB0, &qword_100937040, &qword_100791C28, &qword_100937048, &unk_100791C30);
  v63 = v62;
  v99 = v61;
  v106 = sub_1000E8D90(v59, v60, v105, v61);
  v65 = v64;
  if (qword_100936870 != -1)
  {
    swift_once();
  }

  v66 = byte_1009753A9;
  *v97 = byte_1009753A9;
  if (v66 != 1)
  {
    if (qword_100936440 != -1)
    {
      swift_once();
    }

    sub_100006654(v98, qword_100975008);
    v84 = Logger.logObject.getter();
    v85 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "Not Running DataAccess", v86, 2u);
    }

    *&v109 = j_j___s7remindd28RDLaunchAnalyticsPostNotifydyySo13OS_xpc_object_pF;
    *(&v109 + 1) = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v108 = sub_1000EBA84;
    *(&v108 + 1) = &unk_1008E4AD8;
    v87 = _Block_copy(&aBlock);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", 0, v87);
    _Block_release(v87);
    goto LABEL_43;
  }

  v95 = v65;
  UnlockNotificationEngine = v59;
  v97 = v39;
  if (qword_100936440 != -1)
  {
    swift_once();
  }

  sub_100006654(v98, qword_100975008);
  v67 = Logger.logObject.getter();
  v68 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    *v69 = 0;
    _os_log_impl(&_mh_execute_header, v67, v68, "Running DataAccess", v69, 2u);
  }

  type metadata accessor for RDDARequestsQueue();
  v70 = swift_allocObject();
  v70[6] = 0;
  swift_unknownObjectWeakInit();
  v70[2] = 0xD000000000000019;
  v70[3] = 0x80000001007EAF20;
  v71 = *(v63 + 32);
  v70[4] = v71;
  v70[7] = v63;
  v70[8] = &_swiftEmptyArrayStorage;
  swift_retain_n();
  v72 = v71;
  sub_1000ECBB4(v70, v72, sub_10004FD78, 0);

  v73 = *&v106[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
  v74 = *&v106[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon + 8];
  v75 = type metadata accessor for RDDaemonController();
  aBlock = xmmword_100791330;
  *&v109 = 0;
  v108 = 0uLL;
  *(&v109 + 6) = 0;
  ObjectType = swift_getObjectType();
  v77 = v105;
  swift_unknownObjectRetain_n();
  v78 = v77;
  v79 = sub_1005564D4(v73, &aBlock, 0, v75, ObjectType, v74);
  v80 = qword_100951C88;
  qword_100951C88 = v79;
  off_100951C90 = v60;
  qword_100951C98 = v78;
  qword_100951CA0 = &off_1008F5BC0;

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (qword_100936868 != -1)
  {
    swift_once();
  }

  v81 = qword_1009753A0;
  v82 = objc_autoreleasePoolPush();
  v83 = v104;
  sub_10075AC18(v81, v70);
  v104 = v83;
  if (!v83)
  {
    objc_autoreleasePoolPop(v82);

    v59 = UnlockNotificationEngine;
    v65 = v95;
LABEL_43:
    v20 = sub_1002706C8(v65);

    v65, v88, v89, v90, v91, v92, v93, v94;

LABEL_44:

    goto LABEL_45;
  }

  objc_autoreleasePoolPop(v82);
  __break(1u);
}

uint64_t sub_1000EBA84(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_1000EBB04()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  raise(1);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 67109120;
    *(v3 + 4) = 1;
    _os_log_impl(&_mh_execute_header, v1, v2, "remindd raised signal (%d) in try to terminate asap", v3, 8u);
  }

  exit(0);
}

void sub_1000EBBE0(unsigned __int8 a1, const char *a2, ...)
{
  v4 = type metadata accessor for Logger();
  sub_100006654(v4, &unk_1009359A0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    v9 = 0xD000000000000030;
    v10 = "REMCDTemplateOperationQueueItem";
    *v7 = 136446210;
    v11 = "d.ICCloudConfigurationUpdater";
    v12 = 0xD000000000000034;
    v13 = "atchUpSyncController";
    v14 = 0xD000000000000031;
    if (a1 != 3)
    {
      v14 = 0xD00000000000001BLL;
      v13 = "ActivityScheduler";
    }

    if (a1 != 2)
    {
      v12 = v14;
      v11 = v13;
    }

    if (a1)
    {
      v9 = 0xD00000000000002DLL;
      v10 = "butesAutoTrainer";
    }

    if (a1 <= 1u)
    {
      v15 = v9;
    }

    else
    {
      v15 = v12;
    }

    if (a1 <= 1u)
    {
      v16 = v10;
    }

    else
    {
      v16 = v11;
    }

    v17 = sub_10000668C(v15, (v16 | 0x8000000000000000), &v25);
    (v16 | 0x8000000000000000), v18, v19, v20, v21, v22, v23, v24;
    *(v7 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
    sub_10000607C(v8);
  }
}

void sub_1000EBD84(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v49 = a2;
  v50 = a3;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4, v6);
  v53 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for DispatchQoS();
  v52 = *(v54 - 8);
  __chkstk_darwin(v54, v8);
  v51 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10, v12);
  v14 = (&v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for DispatchTime();
  v15 = *(v58 - 8);
  __chkstk_darwin(v58, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19, v20);
  v22 = &v49 - v21;
  v23 = type metadata accessor for Logger();
  v24 = sub_100006654(v23, &unk_1009359A0);
  v55 = v5;
  v56 = v4;
  v57 = v24;
  if ((a1 - 2) < 3 || !a1)
  {
    v25 = v10;
    v26 = v22;
    v27 = v15;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v28, v29))
    {
      v15 = v27;
      v22 = v26;
      v10 = v25;
      goto LABEL_7;
    }

    v30 = swift_slowAlloc();
    *v30 = 134218496;
    *(v30 + 4) = a1;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v49;
    *(v30 + 22) = 2048;
    *(v30 + 24) = v50;
    _os_log_impl(&_mh_execute_header, v28, v29, "RDStoreController.requestFreeSpaceToLoadAccountStores did not succeed {result: %lu, requested: %llu, available: %llu}", v30, 0x20u);
    v15 = v27;
    v22 = v26;
    v10 = v25;
    goto LABEL_5;
  }

  if (a1 != 1)
  {
    v47 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    v48 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("Unknown RDFreeSpaceResult value", 31, 2, v47, v48);
    __break(1u);
    return;
  }

  v28 = Logger.logObject.getter();
  v40 = static os_log_type_t.error.getter();
  v41 = os_log_type_enabled(v28, v40);
  if (v50 >= v49)
  {
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 134218240;
      *(v43 + 4) = v49;
      *(v43 + 12) = 2048;
      *(v43 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v28, v40, "remindd is now exiting in response to requested free space to load account stores {requested: %llu, available: %llu}", v43, 0x16u);
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&_mh_execute_header, v44, v45, "Notifying stores must refresh due to relaunching upon requested free space to load account stores", v46, 2u);
    }

    notify_post(_REMStoreMustRefreshNotificationName);

    sub_1000EBB04();
  }

  if (v41)
  {
    v42 = swift_slowAlloc();
    *v42 = 134218240;
    *(v42 + 4) = v49;
    *(v42 + 12) = 2048;
    *(v42 + 14) = v50;
    _os_log_impl(&_mh_execute_header, v28, v40, "RDStoreController.requestFreeSpaceToLoadAccountStores completes with .success but still doesn't have enough space {requested: %llu, available: %llu}", v42, 0x16u);
LABEL_5:
  }

LABEL_7:

  static DispatchTime.now()();
  *v14 = 300;
  (*(v11 + 104))(v14, enum case for DispatchTimeInterval.seconds(_:), v10);
  + infix(_:_:)();
  (*(v11 + 8))(v14, v10);
  v31 = *(v15 + 8);
  v50 = v15 + 8;
  v31(v18, v58);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = 300;
    _os_log_impl(&_mh_execute_header, v32, v33, "remindd couldn't get the requested free space to load account stores, will terminate after {delay: %ld}", v34, 0xCu);
  }

  sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v35 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000EC578;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4C40;
  v36 = _Block_copy(aBlock);

  v37 = v51;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v38 = v53;
  v39 = v56;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v36);

  (*(v55 + 8))(v38, v39);
  (*(v52 + 8))(v37, v54);
  v31(v22, v58);
}

void sub_1000EC578()
{
  v0 = type metadata accessor for Logger();
  sub_100006654(v0, &unk_1009359A0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "remindd is now exiting after failure to get requested disk space to load account stores in hope to get relaunched in some better future", v3, 2u);
  }

  sub_1000EBB04();
}

uint64_t sub_1000EC630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

void *sub_1000EC6A0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  sub_1000F5104(a4, a5);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12[6] = 0;
  v12[7] = 0;
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  sub_1000F5104(a6, a7);
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v13[5] = v12;
  swift_bridgeObjectRetain_n();
  v14 = a3;

  return v13;
}

uint64_t sub_1000EC808@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

void sub_1000EC890(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v9 = *(v4 + 32);
  if (static NSObject.== infix(_:_:)())
  {
    if (*(v4 + 48))
    {
      if (qword_100936210 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100948430);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_10000668C(*(v5 + 16), *(v5 + 24), &v35);
        _os_log_impl(&_mh_execute_header, v11, v12, "Replacing existing eventHandler in Reader. This is usually a programmer error. {identifier: %s}", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    swift_unknownObjectWeakAssign();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v15;
    v18[5] = a3;
    v18[6] = a4;
    v19 = *(v5 + 48);
    v20 = *(v5 + 56);
    *(v5 + 48) = sub_1000FC550;
    *(v5 + 56) = v18;

    sub_10003E114(v19, v20);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948430);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    *(inited + 48) = v9;
    *(inited + 72) = v23;
    *(inited + 80) = 49;
    *(inited + 120) = v23;
    *(inited + 88) = 0xE100000000000000;
    *(inited + 96) = a2;
    v24 = v9;
    v25 = a2;
    v26 = sub_1001F67C8(inited);
    inited, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("Unexpected eventHandler queue {self.queue: %@, queue: %@}", 57, 2, v26, v34);
    __break(1u);
  }
}

void sub_1000ECBB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
  v9 = *(v4 + 32);
  if (static NSObject.== infix(_:_:)())
  {
    if (*(v4 + 48))
    {
      if (qword_100936210 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100006654(v10, qword_100948430);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v35 = v14;
        *v13 = 136315138;
        *(v13 + 4) = sub_10000668C(*(v5 + 16), *(v5 + 24), &v35);
        _os_log_impl(&_mh_execute_header, v11, v12, "Replacing existing eventHandler in Reader. This is usually a programmer error. {identifier: %s}", v13, 0xCu);
        sub_10000607C(v14);
      }
    }

    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    swift_unknownObjectWeakAssign();
    v17 = swift_allocObject();
    swift_weakInit();
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = v16;
    v18[4] = v15;
    v18[5] = a3;
    v18[6] = a4;
    v19 = *(v5 + 48);
    v20 = *(v5 + 56);
    *(v5 + 48) = sub_10004FD30;
    *(v5 + 56) = v18;

    sub_10003E114(v19, v20);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100006654(v21, qword_100948430);
    sub_1000F5104(&qword_100936EB0, &unk_1007954A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100791340;
    *(inited + 32) = 48;
    *(inited + 40) = 0xE100000000000000;
    v23 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    *(inited + 48) = v9;
    *(inited + 72) = v23;
    *(inited + 80) = 49;
    *(inited + 120) = v23;
    *(inited + 88) = 0xE100000000000000;
    *(inited + 96) = a2;
    v24 = v9;
    v25 = a2;
    v26 = sub_1001F67C8(inited);
    inited, v27, v28, v29, v30, v31, v32, v33;
    v34 = sub_1001F67C8(&_swiftEmptyArrayStorage);
    sub_10054573C("Unexpected eventHandler queue {self.queue: %@, queue: %@}", 57, 2, v26, v34);
    __break(1u);
  }
}

id variable initialization expression of RDSynchronizedKeyValueStore.queue()
{
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v1 = qword_100974CC8;

  return v1;
}

void sub_1000ECF58(uint64_t a1, _TtC7remindd19RDXPCStorePerformer *a2)
{
  v3 = v2;
  v6 = [objc_opt_self() sharedBabysitter];
  if (v6)
  {
    v7 = v6;
    v52 = sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr);
    v53 = &off_1008F54F0;
    *&v51 = v7;
    sub_100054B6C(&v51, v54);
    sub_10000F61C(v54, v54[3]);
    sub_10050C4C0(v3);
    if (qword_100936370 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006654(v8, qword_10094B320);

    v9 = v3;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v19 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v19 = 136446466;
      v20 = [v9 waiterID];

      a2, v21, v22, v23, v24, v25, v26, v27;
      if (!v20)
      {
        __break(1u);
        return;
      }

      v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v30 = v29;

      v31 = sub_10000668C(v28, v30, &v50);
      v30, v32, v33, v34, v35, v36, v37, v38;
      *(v19 + 4) = v31;
      *(v19 + 12) = 2082;
      *&v51 = a1;
      *(&v51 + 1) = a2;
      sub_1000F5104(&unk_100939E40, &qword_100791BD0);
      v39 = Optional.descriptionOrNil.getter();
      v41 = v40;
      v42 = sub_10000668C(v39, v40, &v50);
      v41, v43, v44, v45, v46, v47, v48, v49;
      *(v19 + 14) = v42;
      _os_log_impl(&_mh_execute_header, v10, v11, "Reset babysitter for {waiterID: %{public}s, event: %{public}s}", v19, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
      a2, v12, v13, v14, v15, v16, v17, v18;
    }

    sub_10000607C(v54);
  }
}

void sub_1000ED1F0(uint64_t a1, uint64_t a2, uint64_t a3, _TtC7remindd19RDXPCStorePerformer *a4, void (*a5)(uint64_t, uint64_t *))
{
  v23 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    a5(Strong, &v23);
  }

  else
  {
    if (qword_100936210 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100006654(v10, qword_100948430);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    a4, v13, v14, v15, v16, v17, v18, v19;
    if (os_log_type_enabled(v11, v12))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_10000668C(a3, a4, &v22);
      _os_log_impl(&_mh_execute_header, v11, v12, "Dropping reader message because target has been deallocated {identifier: %s}", v20, 0xCu);
      sub_10000607C(v21);
    }
  }
}

uint64_t sub_1000ED380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  __chkstk_darwin(v18, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1000FC564;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = &unk_1008E4F60;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v20 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v18);
}

void sub_1000ED658()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v5 = __chkstk_darwin(v2, v4);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = v1[2];
  *v7 = v8;
  (*(v3 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v2, v5);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v7, v2);
  if (v10)
  {
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v11 = type metadata accessor for Logger();
  sub_100006654(v11, qword_100949DE0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "CloudSchemaCatchUpSyncController: Starting", v14, 2u);
  }

  swift_beginAccess();
  if (v1[3])
  {
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "CloudSchemaCatchUpSyncController: backgroundScheduler has already instantiated, duplicate call to q_start?";
LABEL_10:
      _os_log_impl(&_mh_execute_header, v15, v16, v18, v17, 2u);
    }
  }

  else
  {
    v19 = v1[4];
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = *(v19 + 16);
    type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivity();
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    v23 = swift_allocObject();
    v23[2] = v9;
    v23[3] = sub_1000FCE6C;
    v23[4] = v20;
    type metadata accessor for RDDynamicXPCActivity();
    swift_allocObject();
    v24 = v9;

    v25 = v21;
    v26 = sub_1005A9A28(2u, sub_1000FCE88, v23);

    *(v22 + 24) = v26;

    v1[3] = v22;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = "CloudSchemaCatchUpSyncController: Instantiated a background scheduler (xpcActivity) upon q_start";
      goto LABEL_10;
    }
  }
}

void sub_1000ED9E8()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2, v4);
  v6 = &v44[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7, v8);
  v10 = &v44[-v9];
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v14 = __chkstk_darwin(v11, v13);
  v16 = &v44[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = *(v1 + 16);
  *v16 = v17;
  (*(v12 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v11, v14);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v16, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_10;
  }

  v19 = *(v1 + 40);
  swift_getObjectType();
  if ([v19 schedulingState] != 1)
  {
    return;
  }

  v20 = [v19 lastScheduledDate];
  if (v20)
  {
    v21 = v20;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceNow.getter();
    if (v22 >= -604800.0)
    {
      (*(v3 + 8))(v10, v2);
    }

    else
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_100006654(v23, qword_100949DE0);
      (*(v3 + 16))(v6, v10, v2);

      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v48 = v47;
        *v26 = 134349314;
        *(v26 + 4) = 0x4122750000000000;
        *(v26 + 12) = 2082;
        sub_1000F4E04(&qword_100937010, &type metadata accessor for Date, &protocol conformance descriptor for Date);
        v46 = v24;
        v27 = dispatch thunk of CustomStringConvertible.description.getter();
        v29 = v28;
        v30 = *(v3 + 8);
        v45 = v25;
        v30(v6, v2);
        v31 = sub_10000668C(v27, v29, &v48);
        v29, v32, v33, v34, v35, v36, v37, v38;
        *(v26 + 14) = v31;
        v39 = v46;
        _os_log_impl(&_mh_execute_header, v46, v45, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): It had been too long since we scheudled the background activity and catch up sync still hasn't ran yet, force running the activity manually now {timeout: %{public}f, lastScheduledDate: %{public}s}", v26, 0x16u);
        sub_10000607C(v47);
      }

      else
      {

        v30 = *(v3 + 8);
        v30(v6, v2);
      }

      sub_1000EE4E0();
      v30(v10, v2);
    }

    return;
  }

  if (qword_1009362D8 != -1)
  {
    goto LABEL_18;
  }

LABEL_10:
  v40 = type metadata accessor for Logger();
  sub_100006654(v40, qword_100949DE0);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&_mh_execute_header, v41, v42, "CloudSchemaCatchUpSyncController: q_repairSchedulingStateIfNeeded(): schedulingState is .scheduled but we don't have a lastScheduledDate, force re-scheduling now", v43, 2u);
  }

  sub_1004C1FD4();
  sub_1000EDEFC();
}

void sub_1000EDEFC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v4 = __chkstk_darwin(v1, v3);
  v6 = (&v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = v0[2];
  *v6 = v7;
  (*(v2 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v1, v4);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v9 = (v2 + 8);
  v10(v6, v1);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_5:
    v13 = type metadata accessor for Logger();
    sub_100006654(v13, qword_100949DE0);

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134349312;
      *(v16 + 4) = v9;
      *(v16 + 12) = 1026;
      v30 = *(*(v1 + 24) + 120);
      type metadata accessor for UnfairLock();

      Lock.sync<A>(_:)();

      *(v16 + 14) = v31;

      _os_log_impl(&_mh_execute_header, v14, v15, "CloudSchemaCatchUpSyncController: SchedulingState is not .unset so no need to schedule another one {schedulingState: %{public}ld, hasPendingActivity: %{BOOL,public}d}", v16, 0x12u);
    }

    else
    {
    }

    return;
  }

  swift_beginAccess();
  v1 = v0[3];
  if (v1)
  {
    v11 = v0[5];
    swift_getObjectType();

    v12 = [v11 schedulingState];
    if (v12)
    {
      v9 = v12;
      if (qword_1009362D8 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_25;
    }

    v30 = *(*(v1 + 24) + 120);
    type metadata accessor for UnfairLock();

    Lock.sync<A>(_:)();

    if (v31)
    {
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      sub_100006654(v21, qword_100949DE0);
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 134349056;
        *(v24 + 4) = 0;
        _os_log_impl(&_mh_execute_header, v22, v23, "CloudSchemaCatchUpSyncController: Already having a pending activity with the background scheduler (xpcActivity) so no need to schedule another one {schedulingState: (%{public}ld)}", v24, 0xCu);
      }

      sub_1004C2318();
    }

    else
    {
      sub_1004C261C();
      sub_1004C2318();
      if (qword_1009362D8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_100006654(v25, qword_100949DE0);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "CloudSchemaCatchUpSyncController: Updated background activity (xpcActivity) criteria", v28, 2u);
      }
    }
  }

  else
  {
    if (qword_1009362D8 != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    sub_100006654(v17, qword_100949DE0);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "CloudSchemaCatchUpSyncController: backgroundScheduler is unexpectedly not instantiated yet when calling q_scheduleBackgroundActivity(), bailing out", v20, 2u);
    }
  }
}

uint64_t sub_1000EE480(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000EE4E0();
  }

  return result;
}

void sub_1000EE4E0()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v2 - 8);
  __chkstk_darwin(v2, v3);
  v5 = v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v50 = *(v6 - 8);
  __chkstk_darwin(v6, v7);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v13 = __chkstk_darwin(v10, v12);
  v15 = (v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v1[2];
  *v15 = v16;
  (*(v11 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v10, v13);
  v49 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v11 + 8))(v15, v10);
  if (v16)
  {
    if (qword_1009362D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_100949DE0);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "CloudSchemaCatchUpSyncController: Running scheduled background activity...", v20, 2u);
  }

  v21 = v1[5];
  swift_getObjectType();
  v22 = [v21 schedulingState];
  if (v22 == 1)
  {
    v48 = v6;
    sub_1004C201C();
    Strong = swift_unknownObjectWeakLoadStrong();
    v24 = v1[7];
    v25 = Logger.logObject.getter();
    if (Strong)
    {
      v26 = Strong;
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v25, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v25, v27, "os_transaction INIT {name: com.apple.remindd.ICCloudSchemaCatchUpSyncController.q_syncRunScheduledActivity}", v28, 2u);
      }

      v29 = os_transaction_create();
      v30 = swift_allocObject();
      v30[2] = v26;
      v30[3] = v24;
      v45 = v26;
      v30[4] = v29;
      v47 = v29;
      v57 = sub_1000FCE50;
      v58 = v30;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v46 = &v55;
      v55 = sub_100019200;
      v56 = &unk_1008E5208;
      v31 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      static DispatchQoS.unspecified.getter();
      v52 = &_swiftEmptyArrayStorage;
      v43[1] = sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      v43[0] = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
      sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
      v32 = v5;
      v33 = v2;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v31);
      v34 = *(v51 + 8);
      v51 += 8;
      v44 = v34;
      v34(v32, v2);
      v50 = *(v50 + 8);
      v35 = v48;
      (v50)(v9, v48);

      v57 = sub_1000FCE5C;
      v58 = v1;
      aBlock = _NSConcreteStackBlock;
      v54 = 1107296256;
      v55 = sub_100019200;
      v56 = &unk_1008E5230;
      v36 = _Block_copy(&aBlock);

      static DispatchQoS.unspecified.getter();
      v52 = &_swiftEmptyArrayStorage;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v36);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v44(v32, v33);
      (v50)(v9, v35);
    }

    else
    {
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&_mh_execute_header, v25, v41, "CloudSchemaCatchUpSyncController: Unexpected nil RDICCloudSchemaCatchUpSyncPerformer (ICCloudContext), bailing out from q_syncRunScheduledActivity()", v42, 2u);
      }
    }
  }

  else
  {
    v37 = v22;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134349056;
      *(v40 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v38, v39, "CloudSchemaCatchUpSyncController: SchedulingState is not .scheduled when trying to call q_syncRunScheduledActivity(), bailing out {schedulingState: %{public}ld}", v40, 0xCu);
    }
  }
}

uint64_t sub_1000EEC50(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 24))
  {

    sub_1005A4C98();
  }

  return result;
}

uint64_t *sub_1000EECAC(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

id sub_1000EED10(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = v3;
  v8 = [objc_opt_self() sharedBabysitter];
  if (!v8 || (v11 = v8, sub_1000060C8(0, &qword_100936FB0, DABabysitter_ptr), v9 = sub_10050C458(v3), v11, !v9))
  {
    v9 = v5;
    a3(a1, a2);
    swift_willThrow();
  }

  return v9;
}

uint64_t sub_1000EEDF0(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1000EEE10, 0, 0);
}

void sub_1000EEE10()
{
  v52 = v0;
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[5];
  sub_10000F61C(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[10] = sub_1000EED10(v4, v5, sub_1004646D4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v15 = v0[9];
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094B320);
  sub_100030E2C(v14, (v0 + 2));
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[9];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v22 = 136446466;
    v23 = [v21 waiterID];

    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10000668C(v24, v26, v51);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v35 = v0[5];
    v36 = v0[7];
    sub_10000F61C(v0 + 2, v35);
    v37 = (*(v36 + 8))(v35, v36);
    v39 = v38;
    sub_10000607C(v0 + 2);
    v40 = sub_10000668C(v37, v39, v51);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v22 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v18, v19, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000607C(v0 + 2);
  }

  v48 = sub_10000F61C(v0[8], v1[3]);
  v50 = (*(*v48 + 32) + **(*v48 + 32));
  v49 = swift_task_alloc();
  v0[11] = v49;
  *v49 = v0;
  v49[1] = sub_1000EF1C8;

  v50();
}

uint64_t sub_1000EF1C8()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000EF348;
  }

  else
  {
    v2 = sub_1000EF2DC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EF2DC()
{
  v1 = *(v0 + 80);
  sub_1000FC788(*(v0 + 72), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EF348()
{
  v1 = *(v0 + 80);
  sub_1000FC788(*(v0 + 72), *(v0 + 64));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000EF3B4(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return _swift_task_switch(sub_1000EF3D4, 0, 0);
}

void sub_1000EF3D4()
{
  v52 = v0;
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[5];
  sub_10000F61C(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v0[10] = sub_1000EED10(v4, v5, sub_1004646D4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  if (qword_100936370 != -1)
  {
    swift_once();
  }

  v14 = v0[8];
  v15 = v0[9];
  v16 = type metadata accessor for Logger();
  sub_100006654(v16, qword_10094B320);
  sub_100030E2C(v14, (v0 + 2));
  v17 = v15;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  v20 = os_log_type_enabled(v18, v19);
  v21 = v0[9];
  if (v20)
  {
    v22 = swift_slowAlloc();
    v51[0] = swift_slowAlloc();
    *v22 = 136446466;
    v23 = [v21 waiterID];

    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    v27 = sub_10000668C(v24, v26, v51);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v22 + 4) = v27;
    *(v22 + 12) = 2082;
    v35 = v0[5];
    v36 = v0[7];
    sub_10000F61C(v0 + 2, v35);
    v37 = (*(v36 + 8))(v35, v36);
    v39 = v38;
    sub_10000607C(v0 + 2);
    v40 = sub_10000668C(v37, v39, v51);
    v39, v41, v42, v43, v44, v45, v46, v47;
    *(v22 + 14) = v40;
    _os_log_impl(&_mh_execute_header, v18, v19, "Obtained babysitter token for {waiterID: %{public}s, executable: %{public}s}", v22, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000607C(v0 + 2);
  }

  v48 = sub_10000F61C(v0[8], v1[3]);
  v50 = (*(*v48 + 32) + **(*v48 + 32));
  v49 = swift_task_alloc();
  v0[11] = v49;
  *v49 = v0;
  v49[1] = sub_1000EF78C;

  v50();
}

uint64_t sub_1000EF78C()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1000FDAFC;
  }

  else
  {
    v2 = sub_1000FDB0C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000EF8AC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v30 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v30 - 8);
  __chkstk_darwin(v30, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for DispatchQoS();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31, v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchTime();
  v28 = v13;
  v14 = *(v13 - 8);
  __chkstk_darwin(v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18, v19);
  v21 = &v26 - v20;
  v26 = *(v4 + qword_10094FAC0);
  static DispatchTime.now()();
  + infix(_:_:)();
  v27 = *(v14 + 8);
  v27(v17, v13);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = a2;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  aBlock[3] = a3;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v33 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v24 = v30;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v23);
  (*(v32 + 8))(v9, v24);
  (*(v29 + 8))(v12, v31);
  v27(v21, v28);
}

void sub_1000EFC84(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_10094FAD8;
    swift_beginAccess();
    v4 = *&v2[v3];
    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = __CocoaSet.count.getter();
      v4, v6, v7, v8, v9, v10, v11, v12;
      if (v5)
      {
LABEL_5:

        return;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_5;
    }

    sub_1000EFEE4(&off_1008E41C8, &unk_1008E41E8, &unk_1008E51C8, sub_1000FDA78, sub_1000F5208, sub_1000F524C);
    sub_1000F0B08(1, &unk_1008E5128, &unk_100791BE0);
    goto LABEL_5;
  }
}

void sub_1000EFDB4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = qword_10094FAD8;
    swift_beginAccess();
    v4 = *&v2[v3];
    if ((v4 & 0xC000000000000001) != 0)
    {

      v5 = __CocoaSet.count.getter();
      v4, v6, v7, v8, v9, v10, v11, v12;
      if (v5)
      {
LABEL_5:

        return;
      }
    }

    else if (*(v4 + 16))
    {
      goto LABEL_5;
    }

    sub_1000EFEE4(&off_1008E41F8, &unk_1008E4218, &unk_1008E50B0, sub_1000FC9D8, sub_1000F532C, sub_1000F5370);
    sub_1000F0B08(1, &unk_1008E5010, &unk_100791B80);
    goto LABEL_5;
  }
}

void sub_1000EFEE4(void (*a1)(char *, uint64_t, uint64_t, uint64_t), uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v102 = a6;
  v91 = a4;
  v92 = a5;
  v86 = a3;
  v85 = a2;
  v84 = a1;
  v7 = v6;
  ObjectType = swift_getObjectType();
  v8 = sub_1000F5104(&unk_100936F50, &unk_100791B40);
  v94 = *(v8 - 8);
  v95 = v8;
  __chkstk_darwin(v8, v9);
  v93 = &v80 - v10;
  v100 = sub_1000F5104(&unk_100939970, &unk_10079ADB0);
  v98 = *(v100 - 8);
  __chkstk_darwin(v100, v11);
  v96 = &v80 - v12;
  v101 = sub_1000F5104(&unk_100936F60, &unk_100791B50);
  v99 = *(v101 - 8);
  __chkstk_darwin(v101, v13);
  v97 = &v80 - v14;
  v15 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v15 - 8, v16);
  v83 = &v80 - v17;
  v81 = sub_1000F5104(&unk_10093D130, &unk_100791BA0);
  v82 = *(v81 - 8);
  __chkstk_darwin(v81, v18);
  v20 = &v80 - v19;
  v88 = sub_1000F5104(&unk_100936FC0, &qword_10079C9A0);
  v87 = *(v88 - 1);
  __chkstk_darwin(v88, v21);
  v23 = &v80 - v22;
  v24 = sub_1000F5104(&unk_10094CE00, &unk_100791BB0);
  v89 = *(v24 - 8);
  v90 = v24;
  __chkstk_darwin(v24, v25);
  v27 = &v80 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  v31 = __chkstk_darwin(v28, v30);
  v33 = (&v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = v7;
  v35 = *(v7 + qword_10094FAC0);
  *v33 = v35;
  (*(v29 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v28, v31);
  v36 = v35;
  v37 = _dispatchPreconditionTest(_:)();
  (*(v29 + 8))(v33, v28);
  if (v37)
  {
    v103 = v34;
    v38 = *(v34 + qword_10094FAB0);
    v39 = *(v34 + qword_10094FAD0);
    v40 = *(v34 + qword_10094FAD0 + 8);
    sub_1000F5104(&unk_100936FD0, &unk_100795D40);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_100791300;
    *(v41 + 32) = v39;
    *(v41 + 40) = v40;

    v42 = sub_100441DF8(v38, v39, v40, v41);
    v41, v43, v44, v45, v46, v47, v48, v49;
    v50 = sub_10038D894(v84);
    sub_100034610(v85);
    v106 = v42;
    *(swift_allocObject() + 16) = v50;
    sub_1000F5104(&unk_10093D170, &unk_100791BC0);
    sub_1000F5104(&unk_100936FE0, &unk_1007A05A0);
    v86 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000CB48(&unk_10093D180, &unk_10093D170, &unk_100791BC0, &protocol conformance descriptor for AnyPublisher<A, B>);
    Publisher.map<A>(_:)();

    v91 = &protocol conformance descriptor for Publishers.Map<A, B>;
    sub_10000CB48(&unk_100936FF0, &unk_10093D130, &unk_100791BA0, &protocol conformance descriptor for Publishers.Map<A, B>);
    v51 = v81;
    Publisher.filter(_:)();

    v82[1](v20, v51);
    v106 = v36;
    v52 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v53 = *(v52 - 8);
    v84 = *(v53 + 56);
    v85 = v53 + 56;
    v54 = v83;
    v84(v83, 1, 1, v52);
    v81 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
    v82 = &protocol conformance descriptor for Publishers.Filter<A>;
    sub_10000CB48(&qword_10093D190, &unk_100936FC0, &qword_10079C9A0, &protocol conformance descriptor for Publishers.Filter<A>);
    v80 = sub_100006CA4();
    v55 = v36;
    v56 = v88;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v54, &qword_100939980, &unk_10079ADA0);

    (*(v87 + 8))(v23, v56);
    v88 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
    sub_10000CB48(&unk_100937000, &unk_10094CE00, &unk_100791BB0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
    v57 = v90;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v89 + 8))(v27, v57);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    v106 = sub_100441A9C(0xD000000000000010, 0x80000001007EB570, 0);
    sub_1000F5104(&unk_10093D140, qword_1007969F0);
    sub_1000F5104(&unk_100936F70, &unk_100791B60);
    sub_10000CB48(&unk_10093D150, &unk_10093D140, qword_1007969F0, v86);
    v58 = v93;
    Publisher.map<A>(_:)();
    sub_10000CB48(&unk_100936F80, &unk_100936F50, &unk_100791B40, v91);
    v59 = v95;
    v60 = v96;
    Publisher.filter(_:)();

    (*(v94 + 8))(v58, v59);
    v106 = v55;
    v36 = ObjectType;
    v84(v54, 1, 1, v52);
    sub_10000CB48(&unk_10093D160, &unk_100939970, &unk_10079ADB0, v82);
    v61 = v97;
    v62 = v100;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v54, &qword_100939980, &unk_10079ADA0);

    (*(v98 + 8))(v60, v62);
    sub_10000CB48(&unk_100936F90, &unk_100936F60, &unk_100791B50, v88);
    v63 = v101;
    Publisher.sink<A>(weakTarget:receiveValue:receiveCompletion:)();
    (*(v99 + 8))(v61, v63);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    if (qword_1009366D8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v64 = type metadata accessor for Logger();
  sub_100006654(v64, qword_10094FA90);
  v65 = Logger.logObject.getter();
  v66 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v105 = v68;
    v106 = v36;
    *v67 = 136446210;
    swift_getMetatypeMetadata();
    v69 = String.init<A>(describing:)();
    v71 = v70;
    v72 = sub_10000668C(v69, v70, &v105);
    v71, v73, v74, v75, v76, v77, v78, v79;
    *(v67 + 4) = v72;
    _os_log_impl(&_mh_execute_header, v65, v66, "%{public}s: Did set up subscriptions", v67, 0xCu);
    sub_10000607C(v68);
  }
}

uint64_t sub_1000F0B08(int a1, uint64_t a2, uint64_t a3)
{
  v65 = a3;
  v63 = a2;
  v4 = v3;
  v66 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_1000F5104(&qword_100936FA8, &qword_100791B70);
  __chkstk_darwin(v6 - 8, v7);
  v62 = &v59 - v8;
  v64 = type metadata accessor for Date();
  v9 = *(v64 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v64, v11);
  v61 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12, v13);
  v15 = &v59 - v14;
  v16 = type metadata accessor for DispatchPredicate();
  v17 = *(v16 - 8);
  v19 = __chkstk_darwin(v16, v18);
  v21 = (&v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *&v4[qword_10094FAC0];
  *v21 = v22;
  (*(v17 + 104))(v21, enum case for DispatchPredicate.onQueue(_:), v16, v19);
  v23 = v22;
  LOBYTE(v22) = _dispatchPreconditionTest(_:)();
  result = (*(v17 + 8))(v21, v16);
  if ((v22 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (v4[qword_10094FAE8])
  {
    return result;
  }

  v4[qword_10094FAE8] = 1;
  sub_1000F0FE8(0);
  if (qword_1009366D8 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v25 = type metadata accessor for Logger();
  sub_100006654(v25, qword_10094FA90);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v67[0] = swift_slowAlloc();
    v67[1] = ObjectType;
    *v28 = 136446466;
    swift_getMetatypeMetadata();
    v29 = String.init<A>(describing:)();
    v31 = v30;
    v32 = sub_10000668C(v29, v30, v67);
    v60 = ObjectType;
    v33 = v32;
    v31, v34, v35, v36, v37, v38, v39, v40;
    *(v28 + 4) = v33;
    *(v28 + 12) = 2082;
    if (v66)
    {
      v41 = 1702195828;
    }

    else
    {
      v41 = 0x65736C6166;
    }

    if (v66)
    {
      v42 = 0xE400000000000000;
    }

    else
    {
      v42 = 0xE500000000000000;
    }

    v43 = sub_10000668C(v41, v42, v67);
    v42, v44, v45, v46, v47, v48, v49, v50;
    *(v28 + 14) = v43;
    ObjectType = v60;
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s: Began handling operation queue items {isOnLaunch: %{public}s}", v28, 0x16u);
    swift_arrayDestroy();
  }

  Date.init()();
  v51 = type metadata accessor for TaskPriority();
  v52 = v62;
  (*(*(v51 - 8) + 56))(v62, 1, 1, v51);
  v53 = v61;
  v54 = v64;
  (*(v9 + 16))(v61, v15, v64);
  v55 = (*(v9 + 80) + 41) & ~*(v9 + 80);
  v56 = (v10 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  *(v57 + 24) = 0;
  *(v57 + 32) = v4;
  *(v57 + 40) = v66 & 1;
  (*(v9 + 32))(v57 + v55, v53, v54);
  *(v57 + v56) = ObjectType;
  v58 = v4;
  sub_1001955C4(0, 0, v52, v65, v57);

  return (*(v9 + 8))(v15, v54);
}

void sub_1000F0FE8(char a1)
{
  v3 = type metadata accessor for OSSignpostID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006654(v8, qword_10094FA90);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "os_transaction INIT {name: com.apple.remindd.RDOperationQueue.handleIncompleteOperationQueueItems}", v11, 2u);
  }

  if (*(v1 + qword_10094FAE8) != (a1 & 1))
  {
    if (*(v1 + qword_10094FAE8))
    {
      *(v1 + qword_10094FAE0) = os_transaction_create();
      swift_unknownObjectRelease();
      static os_signpost_type_t.begin.getter();
      if (qword_1009366E0 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
    }

    else
    {
      static os_signpost_type_t.end.getter();
      if (qword_1009366E0 != -1)
      {
        swift_once();
      }

      static OSSignpostID.exclusive.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      (*(v4 + 8))(v7, v3);
      *(v1 + qword_10094FAE0) = 0;
      swift_unknownObjectRelease();
    }

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "os_transaction RELEASE {name: com.apple.remindd.RDOperationQueue.handleIncompleteOperationQueueItems}", v14, 2u);
    }
  }
}

uint64_t sub_1000F1330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 296) = a5;
  *(v7 + 192) = a4;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 216) = v8;
  *(v7 + 224) = *(v8 - 8);
  *(v7 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1000F13F8, 0, 0);
}

uint64_t sub_1000F13F8()
{
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 192) + qword_10094FAB0);
  v3 = *(v0 + 296);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 newBackgroundContextWithAuthor:v4];
  *(v0 + 240) = v5;

  v6 = v3 == 0;
  if (v3)
  {
    v7 = 0xD00000000000002BLL;
  }

  else
  {
    v7 = 0xD000000000000023;
  }

  if (v6)
  {
    v8 = "atabaseController";
  }

  else
  {
    v8 = "OperationQueueItems";
  }

  v9 = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v1;
  v12 = type metadata accessor for RDSimpleExecutable();
  v13 = swift_allocObject();
  *(v0 + 248) = v13;
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = &unk_100791BF0;
  v13[5] = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = &off_1008F5520;
  *(v0 + 16) = v13;
  *(v0 + 56) = &off_1008F5510;
  v14 = v5;

  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_1000F15E4;

  return sub_1000EEDF0(v0 + 16);
}

uint64_t sub_1000F15E4()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1000F1784;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v3 = sub_1000F1700;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F1700()
{

  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F1784()
{
  v51 = v0;
  sub_10000607C((v0 + 16));
  swift_getErrorValue();
  if (Error.isREMError(withErrorCode:)())
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 240);
    v3 = *(v0 + 216);
    v4 = *(v0 + 224);
    v5 = swift_allocObject();
    *(v0 + 272) = v5;
    *(v5 + 16) = v2;
    (*(v4 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = v2;
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_1000F1B50;
    v8 = *(v0 + 232);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 176, v8, sub_1000FCDD8, v5, &type metadata for Int);
  }

  else
  {
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FA90);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v49 = *(v0 + 240);
      v12 = *(v0 + 208);
      v13 = *(v0 + 296);
      v14 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v14 = 136446722;
      *(v0 + 136) = v12;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v50);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      if (v13)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v13)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      v28 = sub_10000668C(v26, v27, &v50);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v14 + 14) = v28;
      *(v14 + 22) = 2082;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter();
      v38 = v37;
      v39 = sub_10000668C(v36, v37, &v50);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v14 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: Failed to handle incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1000F1B50()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  *(*v1 + 288) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000F1F44;
  }

  else
  {
    v5 = sub_1000F1CE4;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F1CE4()
{
  v35 = v0;
  v1 = *(v0 + 176);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 240);
  if (v5)
  {
    v7 = *(v0 + 208);
    v8 = *(v0 + 296);
    v33 = v1;
    v9 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v9 = 136446722;
    *(v0 + 152) = v7;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v34);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v9 + 4) = v13;
    *(v9 + 12) = 2082;
    if (v8)
    {
      v21 = 1702195828;
    }

    else
    {
      v21 = 0x65736C6166;
    }

    if (v8)
    {
      v22 = 0xE400000000000000;
    }

    else
    {
      v22 = 0xE500000000000000;
    }

    v23 = sub_10000668C(v21, v22, &v34);
    v22, v24, v25, v26, v27, v28, v29, v30;
    *(v9 + 14) = v23;
    *(v9 + 22) = 2048;
    *(v9 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Blocked by babysitter. Batch completed all incomplete operation queue items. {isOnLaunch: %{public}s, affectedCount: %ld}", v9, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1000F1F44()
{
  v43 = v0;
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006654(v1, qword_10094FA90);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v41 = *(v0 + 240);
    v4 = *(v0 + 208);
    v5 = *(v0 + 296);
    v6 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v6 = 136446722;
    *(v0 + 144) = v4;
    swift_getMetatypeMetadata();
    v7 = String.init<A>(describing:)();
    v9 = v8;
    v10 = sub_10000668C(v7, v8, &v42);
    v9, v11, v12, v13, v14, v15, v16, v17;
    *(v6 + 4) = v10;
    *(v6 + 12) = 2082;
    if (v5)
    {
      v18 = 1702195828;
    }

    else
    {
      v18 = 0x65736C6166;
    }

    if (v5)
    {
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE500000000000000;
    }

    v20 = sub_10000668C(v18, v19, &v42);
    v19, v21, v22, v23, v24, v25, v26, v27;
    *(v6 + 14) = v20;
    *(v6 + 22) = 2082;
    swift_getErrorValue();
    v28 = Error.rem_errorDescription.getter();
    v30 = v29;
    v31 = sub_10000668C(v28, v29, &v42);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v6 + 24) = v31;
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s: Failed to batch complete all incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

  v39 = *(v0 + 8);

  return v39();
}

uint64_t sub_1000F21FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 200) = a6;
  *(v7 + 208) = a7;
  *(v7 + 296) = a5;
  *(v7 + 192) = a4;
  v8 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  *(v7 + 216) = v8;
  *(v7 + 224) = *(v8 - 8);
  *(v7 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1000F22C4, 0, 0);
}

uint64_t sub_1000F22C4()
{
  v1 = *(v0 + 208);
  v2 = *(*(v0 + 192) + qword_10094FAB0);
  v3 = *(v0 + 296);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v2 newBackgroundContextWithAuthor:v4];
  *(v0 + 240) = v5;

  v6 = v3 == 0;
  if (v3)
  {
    v7 = 0xD00000000000002BLL;
  }

  else
  {
    v7 = 0xD000000000000023;
  }

  if (v6)
  {
    v8 = "atabaseController";
  }

  else
  {
    v8 = "OperationQueueItems";
  }

  v9 = v8 | 0x8000000000000000;
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = v5;
  v11[4] = v1;
  v12 = type metadata accessor for RDSimpleExecutable();
  v13 = swift_allocObject();
  *(v0 + 248) = v13;
  v13[2] = v7;
  v13[3] = v9;
  v13[4] = &unk_100791B90;
  v13[5] = v11;
  *(v0 + 40) = v12;
  *(v0 + 48) = &off_1008F5520;
  *(v0 + 16) = v13;
  *(v0 + 56) = &off_1008F5510;
  v14 = v5;

  v15 = swift_task_alloc();
  *(v0 + 256) = v15;
  *v15 = v0;
  v15[1] = sub_1000F24B0;

  return sub_1000EF3B4(v0 + 16);
}

uint64_t sub_1000F24B0()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_1000F25CC;
  }

  else
  {
    sub_10000607C((v2 + 16));
    v3 = sub_1000FDB04;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1000F25CC()
{
  v51 = v0;
  sub_10000607C((v0 + 16));
  swift_getErrorValue();
  if (Error.isREMError(withErrorCode:)())
  {
    v1 = *(v0 + 232);
    v2 = *(v0 + 240);
    v3 = *(v0 + 216);
    v4 = *(v0 + 224);
    v5 = swift_allocObject();
    *(v0 + 272) = v5;
    *(v5 + 16) = v2;
    (*(v4 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = v2;
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    *v7 = v0;
    v7[1] = sub_1000F2998;
    v8 = *(v0 + 232);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 176, v8, sub_1000FC764, v5, &type metadata for Int);
  }

  else
  {
    if (qword_1009366D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100006654(v9, qword_10094FA90);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v49 = *(v0 + 240);
      v12 = *(v0 + 208);
      v13 = *(v0 + 296);
      v14 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v14 = 136446722;
      *(v0 + 136) = v12;
      swift_getMetatypeMetadata();
      v15 = String.init<A>(describing:)();
      v17 = v16;
      v18 = sub_10000668C(v15, v16, &v50);
      v17, v19, v20, v21, v22, v23, v24, v25;
      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      if (v13)
      {
        v26 = 1702195828;
      }

      else
      {
        v26 = 0x65736C6166;
      }

      if (v13)
      {
        v27 = 0xE400000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }

      v28 = sub_10000668C(v26, v27, &v50);
      v27, v29, v30, v31, v32, v33, v34, v35;
      *(v14 + 14) = v28;
      *(v14 + 22) = 2082;
      swift_getErrorValue();
      v36 = Error.rem_errorDescription.getter();
      v38 = v37;
      v39 = sub_10000668C(v36, v37, &v50);
      v38, v40, v41, v42, v43, v44, v45, v46;
      *(v14 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s: Failed to handle incomplete operation queue items. {isOnLaunch: %{public}s, error: %{public}s}", v14, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_1000F2B2C(*(v0 + 192), *(v0 + 296), *(v0 + 200), *(v0 + 208));

    v47 = *(v0 + 8);

    return v47();
  }
}

uint64_t sub_1000F2998()
{
  v2 = *(*v1 + 232);
  v3 = *(*v1 + 224);
  v4 = *(*v1 + 216);
  *(*v1 + 288) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000FDB1C;
  }

  else
  {
    v5 = sub_1000FDB00;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_1000F2B2C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8, v10);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + qword_10094FAE8);
  *(a1 + qword_10094FAE8) = 0;
  sub_1000F0FE8(v13);
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100006654(v14, qword_10094FA90);
  (*(v9 + 16))(v12, a3, v8);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    v41[1] = a4;
    *v17 = 136446722;
    swift_getMetatypeMetadata();
    v18 = String.init<A>(describing:)();
    v20 = v19;
    v21 = sub_10000668C(v18, v19, v41);
    v20, v22, v23, v24, v25, v26, v27, v28;
    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    if (a2)
    {
      v29 = 1702195828;
    }

    else
    {
      v29 = 0x65736C6166;
    }

    if (a2)
    {
      v30 = 0xE400000000000000;
    }

    else
    {
      v30 = 0xE500000000000000;
    }

    v31 = sub_10000668C(v29, v30, v41);
    v30, v32, v33, v34, v35, v36, v37, v38;
    *(v17 + 14) = v31;
    *(v17 + 22) = 2048;
    Date.rem_elapsedInMilliseconds.getter();
    v40 = v39;
    (*(v9 + 8))(v12, v8);
    *(v17 + 24) = v40;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s: Finished handling operation queue items {isOnLaunch: %{public}s, elapsedSeconds: %f}", v17, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_1000F2DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000F2EBC, 0, 0);
}

uint64_t sub_1000F2EBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = [objc_allocWithZone(REMStore) initWithDaemonController:*(Strong + qword_10094FAB8)];
    v0[14] = v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1000F2FE8;
    v4 = v0[8];

    return sub_1001741E4(v4, v2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000F2FE8(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1000F329C;
  }

  else
  {

    *(v4 + 160) = a1 & 1;
    v5 = sub_1000F311C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F311C()
{
  if (*(v0 + 160) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_allocObject();
    *(v0 + 136) = v5;
    *(v5 + 16) = v4;
    (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = v4;
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_1000F330C;
    v8 = *(v0 + 96);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v8, sub_1000FCDFC, v5, &type metadata for Int);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000F329C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000F330C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000F365C;
  }

  else
  {
    v5 = sub_1000F34A0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F34A0()
{
  v24 = v0;
  v1 = v0[6];
  if (qword_1009366D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006654(v2, qword_10094FA90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  if (v5)
  {
    v7 = v0[9];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136446466;
    v0[5] = v7;
    swift_getMetatypeMetadata();
    v10 = String.init<A>(describing:)();
    v12 = v11;
    v13 = sub_10000668C(v10, v11, &v23);
    v12, v14, v15, v16, v17, v18, v19, v20;
    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    *(v8 + 14) = v1;
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s: Batch deleted completed operation queue items. {deletionCount: %ld}", v8, 0x16u);
    sub_10000607C(v9);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1000F365C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000F36C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();

  return _swift_task_switch(sub_1000F378C, 0, 0);
}

uint64_t sub_1000F378C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[13] = Strong;
  if (Strong)
  {
    v2 = [objc_allocWithZone(REMStore) initWithDaemonController:*(Strong + qword_10094FAB8)];
    v0[14] = v2;
    v3 = swift_task_alloc();
    v0[15] = v3;
    *v3 = v0;
    v3[1] = sub_1000F38B8;
    v4 = v0[8];

    return sub_100175A40(v4, v2);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1000F38B8(char a1)
{
  v4 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v5 = sub_1000FDA40;
  }

  else
  {

    *(v4 + 160) = a1 & 1;
    v5 = sub_1000F39EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000F39EC()
{
  if (*(v0 + 160) == 1)
  {
    v2 = *(v0 + 88);
    v1 = *(v0 + 96);
    v3 = *(v0 + 80);
    v4 = *(v0 + 64);
    v5 = swift_allocObject();
    *(v0 + 136) = v5;
    *(v5 + 16) = v4;
    (*(v2 + 104))(v1, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v3);
    v6 = v4;
    v7 = swift_task_alloc();
    *(v0 + 144) = v7;
    *v7 = v0;
    v7[1] = sub_1000F3B6C;
    v8 = *(v0 + 96);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 48, v8, sub_1000FC9B8, v5, &type metadata for Int);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1000F3B6C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 152) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_1000FDA8C;
  }

  else
  {
    v5 = sub_1000FDA50;
  }

  return _swift_task_switch(v5, 0, 0);
}

_WORD *sub_1000F3D00@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1000F3D9C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

void sub_1000F3E1C(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;
  *a2 = v5;
}

Swift::Int sub_1000F3E74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000F3EBC(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000F3F10(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_1000F3F7C(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_1000F3FE8(void *a1, uint64_t a2)
{
  v4 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_1000F409C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1000F4118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F4178(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937258, type metadata accessor for NLLanguage, &unk_100792104);
  v3 = sub_1000F4E04(&qword_100937260, type metadata accessor for NLLanguage, &unk_1007920A4);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4234(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937208, type metadata accessor for REMSmartListType, &unk_100792990);
  v3 = sub_1000F4E04(&qword_100937210, type metadata accessor for REMSmartListType, &unk_100792938);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F42F0(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D08, type metadata accessor for ICCloudContextSyncReason, &unk_100791878);
  v3 = sub_1000F4E04(&qword_100936D10, type metadata accessor for ICCloudContextSyncReason, &unk_100791820);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F43AC(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D18, type metadata accessor for REMXPCSyncInterfaceSyncReason, &unk_100791738);
  v3 = sub_1000F4E04(&qword_100936D20, type metadata accessor for REMXPCSyncInterfaceSyncReason, &unk_1007916E0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4468(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937228, type metadata accessor for NLTagScheme, &unk_1007926F0);
  v3 = sub_1000F4E04(&qword_100937230, type metadata accessor for NLTagScheme, &unk_100792690);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4524(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937218, type metadata accessor for NLTag, &unk_100792848);
  v3 = sub_1000F4E04(&qword_100937220, type metadata accessor for NLTag, &unk_1007927E8);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F45E0(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100936D28, type metadata accessor for URLResourceKey, &unk_1007915F0);
  v3 = sub_1000F4E04(&qword_100936D30, type metadata accessor for URLResourceKey, &unk_100791590);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F469C(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937248, type metadata accessor for DocumentReadingOptionKey, &unk_100792C80);
  v3 = sub_1000F4E04(&qword_100937250, type metadata accessor for DocumentReadingOptionKey, &unk_10079231C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4758(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_100937238, type metadata accessor for DocumentType, &unk_100792474);
  v3 = sub_1000F4E04(&qword_100937240, type metadata accessor for DocumentType, &unk_10079241C);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4814(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371B0, type metadata accessor for CKError, &unk_1007925E4);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000F4880(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371B0, type metadata accessor for CKError, &unk_1007925E4);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_1000F48EC(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

uint64_t sub_1000F4958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000F4E04(&qword_1009371E8, type metadata accessor for CKError, &unk_100792B70);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

void sub_1000F49DC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = String._bridgeToObjectiveC()();
  v3, v5, v6, v7, v8, v9, v10, v11;
  *a2 = v4;
}

uint64_t sub_1000F4A24(uint64_t a1)
{
  v2 = sub_1000F4E04(&qword_1009371F8, type metadata accessor for FileAttributeKey, &unk_100792B2C);
  v3 = sub_1000F4E04(&qword_100937200, type metadata accessor for FileAttributeKey, &unk_100792A80);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_1000F4AE0()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = v0;
  v2 = String.hashValue.getter();
  v1, v3, v4, v5, v6, v7, v8, v9;
  return v2;
}

void sub_1000F4B1C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  String.hash(into:)();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

Swift::Int sub_1000F4B70(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v3 = Hasher._finalize()();
  v2, v4, v5, v6, v7, v8, v9, v10;
  return v3;
}

uint64_t sub_1000F4BE4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v6;
  if (v2 == v5 && v4 == v6)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  v4, v6, v7, v8, v9, v10, v11, v12;
  v13, v16, v17, v18, v19, v20, v21, v22;
  return v15 & 1;
}

uint64_t sub_1000F4CA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F4CC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_1000F4E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F508C()
{
  result = qword_100936E58;
  if (!qword_100936E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936E58);
  }

  return result;
}

uint64_t sub_1000F5104(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F514C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000F5194(uint64_t result, uint64_t *a2)
{
  v4 = *a2;
  v2 = *(result + 48);
  if (v2)
  {
    v3 = *(result + 56);

    v2(&v4);

    return sub_10003E114(v2, v3);
  }

  return result;
}

void sub_1000F524C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000ECF58(0xD00000000000001ALL, 0x80000001007EB590);

  objc_autoreleasePoolPop(v2);
}

_TtC7remindd19RDXPCStorePerformer *sub_1000F52D0@<X0>(_TtC7remindd19RDXPCStorePerformer *a1@<X0>, unint64_t a2@<X1>, _TtC7remindd19RDXPCStorePerformer **a3@<X8>)
{
  type metadata accessor for REMCDOperationQueueItem();
  result = sub_10034C26C(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

void sub_1000F5370(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1000ECF58(0xD00000000000001ALL, 0x80000001007EB590);
  v3 = [objc_allocWithZone(REMStore) initWithDaemonController:*(a1 + qword_10094FAB8)];
  [v3 requestDownloadGroceryModelAssetsFromTrial];

  objc_autoreleasePoolPop(v2);
}

char *sub_1000F5404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RDAlarmProducerDataSource();
  v21[3] = v7;
  v21[4] = &off_1008F0840;
  v21[0] = a3;
  v8 = type metadata accessor for RDLocationAlarmProducer();
  v9 = objc_allocWithZone(v8);
  v10 = sub_10000C9DC(v21, v7);
  v11 = __chkstk_darwin(v10, v10);
  v13 = (&v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = *v13;
  v20[4] = &off_1008F0840;
  v20[3] = v7;
  v20[0] = v15;
  *&v9[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();

  *&v9[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_queue] = a1;
  v16 = &v9[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager];
  *v16 = a2;
  *(v16 + 1) = &off_1008F52F0;
  sub_10000A87C(v20, &v9[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_dataSource]);
  v19.receiver = v9;
  v19.super_class = v8;
  v17 = objc_msgSendSuper2(&v19, "init");
  sub_10000607C(v20);
  *(*&v17[OBJC_IVAR____TtC7remindd23RDLocationAlarmProducer_locationManager] + OBJC_IVAR____TtC7remindd17RDLocationManager_delegate + 8) = &off_1008F8410;
  swift_unknownObjectWeakAssign();
  sub_10000607C(v21);
  return v17;
}

id sub_1000F55EC(void *a1, void *a2, uint64_t a3, char *a4, void *a5, uint64_t a6, char *a7, char *a8)
{
  v402 = a7;
  v437 = a6;
  v446 = a4;
  v439 = a3;
  v430 = a1;
  v12 = sub_1000F5104(&qword_100939980, &unk_10079ADA0);
  __chkstk_darwin(v12 - 8, v13);
  v417 = v394 - v14;
  v418 = type metadata accessor for NSNotificationCenter.Publisher();
  v416 = *(v418 - 8);
  __chkstk_darwin(v418, v15);
  v415 = v394 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000F5104(&unk_100936ED0, &unk_100791AF0);
  v420 = *(v17 - 8);
  v421 = v17;
  __chkstk_darwin(v17, v18);
  v419 = v394 - v19;
  v20 = type metadata accessor for REMFeatureFlags();
  v410 = *(v20 - 8);
  v411 = v20;
  __chkstk_darwin(v20, v21);
  v409 = v394 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v444 = *(v23 - 1);
  v445 = v23;
  __chkstk_darwin(v23, v24);
  v438 = v394 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = type metadata accessor for UnfairLock.Options();
  __chkstk_darwin(v407, v26);
  v408 = v394 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000F5104(&unk_10093CFD0, qword_10079AA70);
  v405 = *(v28 - 8);
  v406 = v28;
  __chkstk_darwin(v28, v29);
  v404 = v394 - v30;
  v434 = type metadata accessor for DispatchWorkItemFlags();
  v443 = *(v434 - 8);
  __chkstk_darwin(v434, v31);
  v433 = v394 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v435 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v431 = *(v435 - 1);
  __chkstk_darwin(v435, v33);
  v428 = v394 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v426 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v426, v35);
  v425 = (v394 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v432 = type metadata accessor for DispatchQoS();
  v442 = *(v432 - 8);
  __chkstk_darwin(v432, v37);
  v441 = v394 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v423 = type metadata accessor for DispatchQoS.QoSClass();
  v413 = *(v423 - 1);
  __chkstk_darwin(v423, v39);
  v41 = v394 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v412 = OBJC_IVAR____TtC7remindd8RDDaemon_autoCategorizationOperationQueue;
  *&a8[OBJC_IVAR____TtC7remindd8RDDaemon_autoCategorizationOperationQueue] = 0;
  v42 = &a8[OBJC_IVAR____TtC7remindd8RDDaemon_manualSortHintUpdater];
  v447 = a8;
  *v42 = 0u;
  *(v42 + 1) = 0u;
  v414 = v42;
  v399 = 0xD000000000000013;
  v436 = sub_1000EC6A0(0xD000000000000013, 0x80000001007EB040, a7, &qword_100937030, &qword_100791C18, &qword_100937038, &qword_100791C20);
  v422 = v43;
  v44 = type metadata accessor for RDCoreSuggestionsController();
  v45 = [objc_opt_self() serviceForReminders];
  swift_getObjectType();
  v46 = sub_1003E6C10(v45, v44);
  v398 = OBJC_IVAR____TtC7remindd8RDDaemon_coreSuggestionController;
  *&a8[OBJC_IVAR____TtC7remindd8RDDaemon_coreSuggestionController] = v46;
  v459 = &off_1008F0550;
  *(&v458 + 1) = v44;
  *&v457 = v46;
  v424 = v46;
  v427 = type metadata accessor for RDXPCDaemon();
  v47 = objc_allocWithZone(v427);
  v48 = sub_10000C9DC(&v457, v44);
  v49 = __chkstk_darwin(v48, v48);
  v51 = (v394 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v52 + 16))(v51, v49);
  v53 = *v51;
  v466 = &off_1008F0550;
  v465 = v44;
  v464[0] = v53;
  swift_unknownObjectWeakInit();
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_storeController] = a2;
  v403 = type metadata accessor for RDXPCDebugPerformer();
  v54 = objc_allocWithZone(v403);
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8) = 0;
  swift_unknownObjectWeakInit();
  v55 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerByContainerURL;
  v56 = objc_opt_self();
  v57 = a2;
  v58 = v446;
  v59 = a5;
  swift_retain_n();
  v401 = v57;
  v440 = v58;
  *&v429 = v59;

  v446 = v402;
  *(v54 + v55) = [v56 strongToWeakObjectsMapTable];
  v60 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_q_storeControllerNotificationCenterByContainerURL;
  *(v54 + v60) = [objc_opt_self() strongToStrongObjectsMapTable];
  v402 = OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_accessQueue;
  v61 = sub_1000060C8(0, &qword_10093E6E0, OS_dispatch_queue_ptr);
  v400 = "Contact Interaction";
  v62 = v413;
  v63 = v423;
  (*(v413 + 104))(v41, enum case for DispatchQoS.QoSClass.utility(_:), v423);
  static OS_dispatch_queue.global(qos:)();
  (*(v62 + 8))(v41, v63);
  static DispatchQoS.unspecified.getter();
  *&v455[0] = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936EE0, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  sub_1000F5104(&unk_10093FEE0, &qword_100791B00);
  sub_10000CB48(&qword_100936EF0, &unk_10093FEE0, &qword_100791B00, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (v431[13])(v428, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v435);
  v413 = v61;
  v64 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v65 = v401;
  *&v402[v54] = v64;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_manualHashtagLabelUpdater) = 0;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeController) = v65;
  *(v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_storeContainerToken) = 0;
  v66 = (v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_notificationCenter);
  v67 = v440;
  *v66 = v440;
  v66[1] = &off_1008F5BC0;
  v68 = v54 + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_locationManager;
  v69 = v429;
  *v68 = v429;
  v68[1] = &off_1008F52F0;
  v463.receiver = v54;
  v463.super_class = v403;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer] = objc_msgSendSuper2(&v463, "init");
  type metadata accessor for RDXPCSyncInterfacePerformerFactory();
  swift_allocObject();
  v70 = v65;
  v71 = v437;

  v72 = v446;
  v73 = sub_1001C64D8(v70, v71, v72);

  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_syncInterfacePerformerFactory] = v73;
  v74 = type metadata accessor for RDXPCIndexingPerformer();
  v75 = objc_allocWithZone(v74);
  *&v75[OBJC_IVAR____TtC7remindd22RDXPCIndexingPerformer_storeController] = v70;
  v462.receiver = v75;
  v462.super_class = v74;
  v76 = v70;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_indexingPerformer] = objc_msgSendSuper2(&v462, "init");
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_dataAccessRequestsWriter] = v71;
  *&v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_contactInteractionWriter] = v436;
  sub_10000A87C(v464, &v47[OBJC_IVAR____TtC7remindd11RDXPCDaemon_coreSuggestionsHandler]);
  v461.receiver = v47;
  v461.super_class = v427;
  v77 = v76;

  v78 = objc_msgSendSuper2(&v461, "init");

  v79 = v69;
  v80 = v447;

  v403 = v72;

  sub_10000607C(v464);
  *(*&v78[OBJC_IVAR____TtC7remindd11RDXPCDaemon_debugPerformer] + OBJC_IVAR____TtC7remindd19RDXPCDebugPerformer_xpcDaemon + 8) = &off_1008F03B0;
  swift_unknownObjectWeakAssign();
  sub_10000607C(&v457);
  v81 = &v80[OBJC_IVAR____TtC7remindd8RDDaemon_xpcDaemon];
  *v81 = v78;
  v81[1] = &off_1008F03B0;
  v431 = v81;
  v82 = qword_100935D10;
  v83 = v78;
  if (v82 != -1)
  {
    swift_once();
  }

  v84 = qword_100974CA8;
  v85 = objc_allocWithZone(type metadata accessor for RDClientConnectionListener());
  v86 = sub_1005D1BD0(v83, v84, v85);
  v402 = OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener;
  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_xpcClientConnectionListener] = v86;
  if (qword_100935F68 != -1)
  {
    swift_once();
  }

  v446 = v77;
  v435 = v83;
  v87 = static RDSynchronizedKeyValueStore.default;
  v401 = OBJC_IVAR____TtC7remindd8RDDaemon_synchronizedKeyValueStores;
  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_synchronizedKeyValueStores] = static RDSynchronizedKeyValueStore.default;
  v88 = qword_100935D38;

  if (v88 != -1)
  {
    swift_once();
  }

  v89 = qword_100974CD0;
  v459 = sub_1000FC41C;
  v460 = v87;
  *&v457 = _NSConcreteStackBlock;
  *(&v457 + 1) = 1107296256;
  *&v458 = sub_100019200;
  *(&v458 + 1) = &unk_1008E4D30;
  v90 = _Block_copy(&v457);

  v91 = v441;
  static DispatchQoS.unspecified.getter();
  v464[0] = &_swiftEmptyArrayStorage;
  v92 = sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  v93 = sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  v94 = sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v96 = v433;
  v95 = v434;
  v427 = v93;
  v428 = v92;
  v424 = v94;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v423 = v89;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v90);
  v97 = *(v443 + 8);
  v443 += 8;
  v426 = v97;
  v97(v96, v95);
  v98 = *(v442 + 8);
  v442 += 8;
  v425 = v98;
  v98(v91, v432);

  type metadata accessor for RDDisabledAccountsEventHandler();
  v99 = swift_allocObject();
  v99[2] = 0;
  v99[3] = 0;
  v99[4] = _swiftEmptySetSingleton;
  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_disabledAccountsEventHandler] = v99;
  v100 = v446;
  v101 = &qword_100936000;
  if ([v446 supportsAlarmEngine])
  {
    v102 = swift_allocObject();
    v400 = v102;
    *(v102 + 16) = xmmword_100791350;
    *(v102 + 32) = 0x402E000000000000;
    *&v475[0] = sub_1000FC4D4;
    *(&v475[0] + 1) = v102;
    v475[1] = xmmword_100791360;
    v476 = 1;
    type metadata accessor for RDStoreControllerNotificationCenter();
    swift_allocObject();
    v103 = v100;
    v104 = sub_1004417C4(0x676E456D72616C41, 0xEB00000000656E69, v103, v475);
    v397 = v104;

    v105 = v431;
    v106 = *v431;
    v107 = v431[1];
    v108 = v429;
    swift_unknownObjectRetain();

    v109 = v104;
    v110 = v440;
    v111 = sub_1000F9330(v430, v106, v107, v103, v109, v440, v108, v422);
    swift_unknownObjectRelease();
    v101 = &qword_100936000;

    *&v447[OBJC_IVAR____TtC7remindd8RDDaemon_alarmEngine] = v111;
    v471 = 0x404E000000000000uLL;
    v472 = 0;
    v473 = 0;
    v474 = 0;
    swift_allocObject();
    v112 = v103;
    v80 = v447;
    v113 = v112;

    v114 = sub_1004417C4(0x676E457961646F54, 0xEB00000000656E69, v113, &v471);

    v116 = *v105;
    v115 = v105[1];
    v117 = *&v401[v80];
    swift_unknownObjectRetain();

    v118 = sub_1000FA268(v430, v116, v115, v114, v110, v117);

    swift_unknownObjectRelease();
    v100 = v446;
  }

  else
  {

    if (qword_100936698 != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    sub_100006654(v119, qword_10094DFE0);
    v120 = Logger.logObject.getter();
    v121 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v120, v121))
    {
      v122 = swift_slowAlloc();
      *v122 = 0;
      _os_log_impl(&_mh_execute_header, v120, v121, "Alarm and today engines are disabled because store controller does not support them", v122, 2u);
    }

    v118 = 0;
    *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_alarmEngine] = 0;
  }

  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_todayEngine] = v118;
  if ([v100 supportsTimelineEngine])
  {
    v123 = v430[2];
    swift_unknownObjectRetain();
    v124 = sub_100123D70(v123, v100);

    swift_unknownObjectRelease();
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_100006654(v125, qword_10094DFE0);
    v126 = Logger.logObject.getter();
    v127 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&_mh_execute_header, v126, v127, "Timeline engine is disabled because store controller does not support it.", v128, 2u);
    }

    v124 = 0;
  }

  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_timelineEngine] = v124;
  p_class_meths = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
  if ([v100 supportsAssignmentNotificationEngine])
  {
    v467 = 0x403E000000000000uLL;
    v468 = 0;
    v469 = 0;
    v470 = 256;
    type metadata accessor for RDStoreControllerNotificationCenter();
    swift_allocObject();
    v130 = v100;
    v131 = sub_1004417C4(0xD000000000000015, 0x80000001007EB390, v130, &v467);

    v132 = *v431;
    v133 = v431[1];
    v134 = qword_100935D30;
    swift_unknownObjectRetain();
    if (v134 != -1)
    {
      swift_once();
    }

    v135 = sub_1000FA9DC(v132, v133, v130, v131, v440, qword_100974CC8, 0);
    swift_unknownObjectRelease();

    v100 = v446;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v136 = type metadata accessor for Logger();
    sub_100006654(v136, qword_10094DFE0);
    v137 = Logger.logObject.getter();
    v138 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&_mh_execute_header, v137, v138, "Assignment notification engine is disabled because store controller does not support it", v139, 2u);
    }

    v135 = 0;
  }

  *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_assignmentNotificationEngine] = v135;
  if ([v100 supportsHashtagLabelUpdater])
  {
    if (qword_100935D30 != -1)
    {
      swift_once();
    }

    v140 = qword_100974CC8;
    v429 = *v431;
    v141 = qword_100935C00;
    v396 = v100;
    v401 = v140;
    v400 = v429;
    swift_unknownObjectRetain();
    if (v141 != -1)
    {
      swift_once();
    }

    v142 = v406;
    v143 = sub_100006654(v406, qword_100974C50);
    v144 = *(v405 + 16);
    v397 = (v405 + 16);
    v398 = v144;
    v144(v404, v143, v142);
    type metadata accessor for RDHashtagLabelUpdater(0);
    v145 = swift_allocObject();
    *(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
    swift_unknownObjectWeakInit();
    *(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_started) = 0;
    *(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_cloudAccountsDidChangeCancellable) = 0;
    v395 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_highPrioritySubscriptionTransactionRegistrar;
    type metadata accessor for RDTransactionRegistrar();
    v146 = swift_allocObject();
    v146[4] = 0;
    v146[5] = 0;
    v146[2] = 0xD000000000000040;
    v146[3] = 0x80000001007EB230;
    *&v457 = &_swiftEmptyArrayStorage;
    v394[1] = sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
    sub_1000F5104(&qword_100936E68, &unk_100791AB0);
    sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v146[6] = UnfairLock.init(options:)();
    *(v145 + v395) = v146;
    v147 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_lowPrioritySubscriptionTransactionRegistrar;
    v148 = swift_allocObject();
    v148[4] = 0;
    v148[5] = 0;
    v148[2] = 0xD00000000000003FLL;
    v148[3] = 0x80000001007EB280;
    *&v457 = &_swiftEmptyArrayStorage;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    swift_allocObject();
    v148[6] = UnfairLock.init(options:)();
    *(v145 + v147) = v148;
    v149 = (v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumed);
    *v149 = 0xD000000000000017;
    v149[1] = 0x80000001007EB2C0;
    v150 = (v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitterOperationRefreshFromLastConsumedOnLaunch);
    *v150 = 0xD00000000000001FLL;
    v150[1] = 0x80000001007EB2E0;
    v151 = (v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_analyticsCrashDetected);
    *v151 = 0xD000000000000035;
    v151[1] = 0x80000001007EB300;
    v152 = OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_babysitTarget;
    *(v145 + v152) = [objc_allocWithZone(type metadata accessor for RDHashtagLabelUpdater.BabysitTarget()) init];
    v153 = (v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_changeTrackingClientName);
    *v153 = 0xD000000000000027;
    v153[1] = 0x80000001007EB340;
    v154 = v396;
    v145[2] = v401;
    v145[3] = v154;
    v155 = type metadata accessor for RDDaemonController();
    v156 = objc_allocWithZone(v155);
    *&v156[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon] = v429;
    v157 = &v156[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v157 = v399;
    v157[1] = 0x80000001007EB370;
    *(v157 + 38) = 0;
    v157[3] = 0;
    v157[4] = 0;
    v157[2] = 0;
    *&v156[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v448.receiver = v156;
    v448.super_class = v155;
    swift_unknownObjectRetain();
    v145[4] = objc_msgSendSuper2(&v448, "init");
    v158 = v404;
    v159 = v406;
    v398(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_timeGroupingStrategy, v404, v406);
    *(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_delegate + 8) = 0;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    (*(v405 + 8))(v158, v159);
    *(v145 + OBJC_IVAR____TtC7remindd21RDHashtagLabelUpdater_hashtagInsertEventCancellables) = &_swiftEmptyArrayStorage;
    v80 = v447;
    *&v447[OBJC_IVAR____TtC7remindd8RDDaemon_hashtagLabelUpdater] = v145;
    v459 = sub_1000FC4CC;
    v460 = v145;
    *&v457 = _NSConcreteStackBlock;
    *(&v457 + 1) = 1107296256;
    *&v458 = sub_100019200;
    *(&v458 + 1) = &unk_1008E4DF8;
    v160 = _Block_copy(&v457);
    swift_retain_n();
    v161 = v441;
    static DispatchQoS.unspecified.getter();
    v464[0] = &_swiftEmptyArrayStorage;
    v163 = v433;
    v162 = v434;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v160);

    v426(v163, v162);
    v425(v161, v432);

    v101 = &qword_100936000;
    v100 = v446;
    p_class_meths = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v164 = type metadata accessor for Logger();
    sub_100006654(v164, qword_10094DFE0);
    v165 = Logger.logObject.getter();
    v166 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v165, v166))
    {
      v167 = swift_slowAlloc();
      *v167 = 0;
      _os_log_impl(&_mh_execute_header, v165, v166, "RDHashtagLabelUpdater is disabled because store controller does not support it", v167, 2u);
    }

    *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_hashtagLabelUpdater] = 0;
  }

  if ([v100 supportsStalePinnedListsEventHandler])
  {
    v168 = p_class_meths[422];
    v169 = v100;
    if (v168 != -1)
    {
      swift_once();
    }

    v170 = qword_100974CC8;
    v171 = v438;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v172 = [objc_opt_self() defaultCenter];
    type metadata accessor for RDStalePinnedListsEventHandler(0);
    v173 = swift_allocObject();
    v173[3] = 0;
    swift_unknownObjectWeakInit();
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_cancellables) = _swiftEmptySetSingleton;
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForHandlingEvent) = 0;
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_osTransactionForDebouncingEvent) = 0;
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isHandlingEvent) = 0;
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_isDebouncingEvent) = 0;
    v173[4] = v169;
    v173[5] = v170;
    (v444)[4](v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_debounceInterval, v171, v445);
    *(v173 + OBJC_IVAR____TtC7remindd30RDStalePinnedListsEventHandler_notificationCenter) = v172;
    *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_stalePinnedListsEventHandler] = v173;

    sub_1003CAAC8();

    v100 = v446;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    sub_100006654(v174, qword_10094DFE0);
    v175 = Logger.logObject.getter();
    v176 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v175, v176))
    {
      v177 = swift_slowAlloc();
      *v177 = 0;
      _os_log_impl(&_mh_execute_header, v175, v176, "RDStalePinnedListsEventHandler is disabled because store controller does not support it", v177, 2u);
    }

    *&v80[OBJC_IVAR____TtC7remindd8RDDaemon_stalePinnedListsEventHandler] = 0;
  }

  p_attr = &stru_100923FF8.attr;
  if ([v100 supportsTemplateOperation])
  {
    v179 = type metadata accessor for RDPublicCloudDatabaseController();
    v180 = swift_allocObject();
    type metadata accessor for RDTransactionRegistrar();
    v181 = v100;
    v182 = swift_allocObject();
    v182[4] = 0;
    v182[5] = 0;
    v182[2] = 0xD000000000000031;
    v182[3] = 0x80000001007EB130;
    *&v457 = &_swiftEmptyArrayStorage;
    sub_1000F4E04(&qword_100936E60, &type metadata accessor for UnfairLock.Options, &protocol conformance descriptor for UnfairLock.Options);
    sub_1000F5104(&qword_100936E68, &unk_100791AB0);
    sub_10000CB48(&qword_100936E70, &qword_100936E68, &unk_100791AB0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    type metadata accessor for UnfairLock();
    swift_allocObject();
    v182[6] = UnfairLock.init(options:)();
    v180[4] = v182;
    v180[5] = 0;
    v180[2] = sub_1005D0DE0;
    v180[3] = 0;
    v183 = p_class_meths[422];
    v184 = v181;
    *&v429 = v435;
    if (v183 != -1)
    {
      swift_once();
    }

    v185 = v447;
    v186 = *(*&v402[v447] + OBJC_IVAR____TtC7remindd26RDClientConnectionListener_clientConnectionDidClosePublisher);
    v187 = qword_100974CC8;
    v459 = &off_1008F82C8;
    *(&v458 + 1) = v179;
    *&v457 = v180;
    type metadata accessor for RDTemplateOperationQueue();
    v188 = swift_allocObject();
    *(v188 + 64) = 0;
    swift_unknownObjectWeakInit();
    *(v188 + 104) = _swiftEmptySetSingleton;
    *(v188 + 112) = 0;
    *(v188 + 120) = 0;
    *(v188 + 128) = 0xD000000000000023;
    *(v188 + 136) = 0x80000001007EB170;
    *(v188 + 144) = 0xD00000000000002BLL;
    *(v188 + 152) = 0x80000001007EB1A0;
    *(v188 + 160) = 0xD000000000000038;
    *(v188 + 168) = 0x80000001007EB1D0;
    v189 = objc_allocWithZone(type metadata accessor for RDTemplateOperationQueue.BabysitTarget());
    v190 = v187;

    *(v188 + 176) = [v189 init];
    *(v188 + 72) = v184;
    v191 = type metadata accessor for RDDaemonController();
    v192 = objc_allocWithZone(v191);
    v193 = &v192[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v193 = v429;
    *(v193 + 1) = &off_1008F03B0;
    v194 = &v192[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v194 = 0xD000000000000016;
    *(v194 + 1) = 0x80000001007EB210;
    *(v194 + 38) = 0;
    *(v194 + 3) = 0;
    *(v194 + 4) = 0;
    *(v194 + 2) = 0;
    *&v192[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v449.receiver = v192;
    v449.super_class = v191;
    *(v188 + 80) = objc_msgSendSuper2(&v449, "init");
    *(v188 + 88) = v190;
    sub_100054B6C(&v457, v188 + 16);
    *(v188 + 96) = v186;
    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue] = v188;

    sub_1005871D0(5.0);

    v196 = v444;
    v195 = v445;
    v101 = &qword_100936000;
    v100 = v446;
    p_attr = (&stru_100923FF8 + 8);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v197 = type metadata accessor for Logger();
    sub_100006654(v197, qword_10094DFE0);
    v198 = Logger.logObject.getter();
    v199 = static os_log_type_t.default.getter();
    v200 = os_log_type_enabled(v198, v199);
    v196 = v444;
    v195 = v445;
    if (v200)
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&_mh_execute_header, v198, v199, "RDTemplateOperationQueue is disabled because store controller does not support it", v201, 2u);
    }

    v185 = v447;
    *&v447[OBJC_IVAR____TtC7remindd8RDDaemon_templateOperationQueue] = 0;
  }

  if ([v100 p_attr[461]])
  {
    v202 = qword_100935D30;
    v203 = v100;
    if (v202 != -1)
    {
      swift_once();
    }

    v204 = qword_100974CC8;
    v205 = v438;
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v206 = [objc_opt_self() defaultCenter];
    type metadata accessor for RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler(0);
    v207 = swift_allocObject();
    v207[3] = 0;
    swift_unknownObjectWeakInit();
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_cancellables) = _swiftEmptySetSingleton;
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForHandlingEvent) = 0;
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_osTransactionForDebouncingEvent) = 0;
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isHandlingEvent) = 0;
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_isDebouncingEvent) = 0;
    v207[4] = v203;
    v207[5] = v204;
    (v196)[4](v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_debounceInterval, v205, v195);
    *(v207 + OBJC_IVAR____TtC7remindd80RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler_notificationCenter) = v206;
    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_staleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler] = v207;

    sub_1003D03E0();

    v101 = &qword_100936000;
    v100 = v446;
    v208 = (&OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm + 32);
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v209 = type metadata accessor for Logger();
    sub_100006654(v209, qword_10094DFE0);
    v210 = Logger.logObject.getter();
    v211 = static os_log_type_t.default.getter();
    v208 = &OBJC_PROTOCOL___ICCloudConfigurationExtraneousAlarm.class_meths;
    if (os_log_type_enabled(v210, v211))
    {
      v212 = swift_slowAlloc();
      *v212 = 0;
      _os_log_impl(&_mh_execute_header, v210, v211, "RDStaleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler is disabled because store controller does not support it", v212, 2u);
    }

    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_staleSharedToMeListMostRecentTargetTemplateIdentifierByCurrentUserEventHandler] = 0;
  }

  if ([v100 supportsGroceryOperation])
  {
    v213 = v208[422];
    v214 = v100;
    v215 = v435;
    if (v213 != -1)
    {
      swift_once();
    }

    v216 = qword_100974CC8;
    v217 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v219 = v218;
    v220 = sub_1000F5104(&unk_100939E10, &qword_1007970D0);
    v221 = objc_allocWithZone(v220);
    *&v221[qword_10094FAD8] = _swiftEmptySetSingleton;
    *&v221[qword_10094FAE0] = 0;
    v221[qword_10094FAE8] = 0;
    *&v221[qword_10094FAB0] = v214;
    *&v221[qword_10094FAC0] = v216;
    v222 = &v221[qword_10094FAC8];
    *v222 = 0xD000000000000017;
    v222[1] = 0x80000001007EB110;
    v223 = &v221[qword_10094FAD0];
    *v223 = v217;
    v223[1] = v219;
    v224 = type metadata accessor for RDDaemonController();
    v225 = objc_allocWithZone(v224);
    v226 = &v225[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v226 = v215;
    *(v226 + 1) = &off_1008F03B0;
    v227 = &v225[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v227 = 0xD000000000000017;
    *(v227 + 1) = 0x80000001007EB110;
    *(v227 + 38) = 0;
    *(v227 + 3) = 0;
    *(v227 + 4) = 0;
    *(v227 + 2) = 0;
    *&v225[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v451.receiver = v225;
    v451.super_class = v224;
    v228 = v214;
    v229 = v215;
    v230 = v216;
    *&v221[qword_10094FAB8] = objc_msgSendSuper2(&v451, "init");
    v450.receiver = v221;
    v450.super_class = v220;
    v231 = objc_msgSendSuper2(&v450, "init");

    v185 = v447;
    *&v447[OBJC_IVAR____TtC7remindd8RDDaemon_groceryOperationQueue] = v231;
    v232 = v231;
    sub_1000EF8AC(&unk_1008E4FC0, sub_1000FC578, &unk_1008E4FD8, 5.0);

    v101 = &qword_100936000;
    v100 = v446;
  }

  else
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v233 = type metadata accessor for Logger();
    sub_100006654(v233, qword_10094DFE0);
    v234 = Logger.logObject.getter();
    v235 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      *v236 = 0;
      _os_log_impl(&_mh_execute_header, v234, v235, "RDGroceryOperationQueue is disabled because store controller does not support it", v236, 2u);
    }

    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_groceryOperationQueue] = 0;
  }

  v238 = v409;
  v237 = v410;
  v239 = v411;
  (*(v410 + 104))(v409, enum case for REMFeatureFlags.autoCategorize(_:), v411);
  v240 = REMFeatureFlags.isEnabled.getter();
  (*(v237 + 8))(v238, v239);
  v241 = v439;
  if ((v240 & 1) == 0 || ![v100 supportsAutoCategorizationOperation])
  {
    if (v101[211] != -1)
    {
      swift_once();
    }

    v265 = type metadata accessor for Logger();
    sub_100006654(v265, qword_10094DFE0);
    v266 = Logger.logObject.getter();
    v267 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v266, v267))
    {
      v268 = swift_slowAlloc();
      *v268 = 0;
      _os_log_impl(&_mh_execute_header, v266, v267, "RDAutoCategorizationOperationQueue is disabled because store controller does not support it", v268, 2u);
    }

    v264 = *&v412[v185];
    *&v412[v185] = 0;
    goto LABEL_87;
  }

  v242 = qword_100935D30;
  v243 = v100;
  v244 = v435;
  if (v242 != -1)
  {
    goto LABEL_140;
  }

  while (1)
  {
    v245 = qword_100974CC8;
    v246 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v248 = v247;
    v249 = sub_1000F5104(&unk_100936F40, &unk_100791B30);
    v250 = objc_allocWithZone(v249);
    *&v250[qword_10094FAD8] = _swiftEmptySetSingleton;
    *&v250[qword_10094FAE0] = 0;
    v250[qword_10094FAE8] = 0;
    *&v250[qword_10094FAB0] = v243;
    *&v250[qword_10094FAC0] = v245;
    v251 = &v250[qword_10094FAC8];
    *v251 = 0xD000000000000022;
    v251[1] = 0x80000001007EB0E0;
    v252 = &v250[qword_10094FAD0];
    *v252 = v246;
    v252[1] = v248;
    v253 = type metadata accessor for RDDaemonController();
    v254 = objc_allocWithZone(v253);
    v255 = &v254[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
    *v255 = v244;
    *(v255 + 1) = &off_1008F03B0;
    v256 = &v254[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
    *v256 = 0xD000000000000022;
    *(v256 + 1) = 0x80000001007EB0E0;
    *(v256 + 38) = 0;
    *(v256 + 3) = 0;
    *(v256 + 4) = 0;
    *(v256 + 2) = 0;
    *&v254[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
    v453.receiver = v254;
    v453.super_class = v253;
    v257 = v243;
    v258 = v244;
    v259 = v245;
    *&v250[qword_10094FAB8] = objc_msgSendSuper2(&v453, "init");
    v452.receiver = v250;
    v452.super_class = v249;
    v260 = objc_msgSendSuper2(&v452, "init");

    v185 = v447;
    v261 = v412;
    v262 = *&v412[v447];
    *&v412[v447] = v260;

    v263 = *&v261[v185];
    v241 = v439;
    v101 = &qword_100936000;
    v100 = v446;
    if (v263)
    {
      v264 = v263;
      sub_1000EF8AC(&unk_1008E50D8, sub_1000FC9E0, &unk_1008E50F0, 5.0);
LABEL_87:
    }

    if ([v100 supportsApplicationShortcuts])
    {
      type metadata accessor for RDApplicationShortcutAssembly();
      v269 = v431[1];
      v270 = swift_unknownObjectRetain();
      sub_10013AFCC(v270, v269, v241, &v457);
      swift_unknownObjectRelease();
      v271 = &v185[OBJC_IVAR____TtC7remindd8RDDaemon_applicationShortcutEngine];
      v272 = v458;
      *v271 = v457;
      *(v271 + 1) = v272;
      *(v271 + 4) = v459;
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v273 = type metadata accessor for Logger();
      sub_100006654(v273, qword_10094DFE0);
      v274 = Logger.logObject.getter();
      v275 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v274, v275))
      {
        v276 = swift_slowAlloc();
        *v276 = 0;
        _os_log_impl(&_mh_execute_header, v274, v275, "Application shortcut engine is disabled because store controller does not support application shortcuts", v276, 2u);
      }

      v277 = &v185[OBJC_IVAR____TtC7remindd8RDDaemon_applicationShortcutEngine];
      *(v277 + 4) = 0;
      *v277 = 0u;
      *(v277 + 1) = 0u;
    }

    v278 = v446;
    if ([v446 supportsSuggestedAttributes])
    {
      v279 = type metadata accessor for RDDaemonController();
      v280 = objc_allocWithZone(v279);
      v281 = &v280[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
      v282 = v435;
      *v281 = v435;
      *(v281 + 1) = &off_1008F03B0;
      v283 = &v280[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
      *v283 = 0xD00000000000001ELL;
      *(v283 + 1) = 0x80000001007EB0C0;
      *(v283 + 38) = 0;
      *(v283 + 3) = 0;
      *(v283 + 4) = 0;
      *(v283 + 2) = 0;
      *&v280[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
      v454.receiver = v280;
      v454.super_class = v279;
      v284 = v282;
      v285 = objc_msgSendSuper2(&v454, "init");
      v286 = [objc_allocWithZone(REMStore) initWithDaemonController:v285];
      v287 = objc_opt_self();
      v288 = v423;

      v289 = [v287 daemonUserDefaults];
      v290 = [objc_opt_self() sharedConfiguration];

      v291 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
      v459 = &off_1008FCFA0;
      *(&v458 + 1) = v291;
      *&v457 = v290;
      type metadata accessor for RDSuggestedAttributesAutoTrainer(0);
      v292 = swift_allocObject();
      v293 = OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_storeControllerObserverToken;
      v294 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
      (*(*(v294 - 8) + 56))(&v292[v293], 1, 1, v294);
      *&v292[OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_xpcActivity] = 0;
      *(v292 + 2) = v288;
      *(v292 + 3) = v241;
      *(v292 + 4) = v286;
      *(v292 + 5) = v289;
      v278 = v446;
      *(v292 + 6) = &off_1008FCF68;
      sub_100054B6C(&v457, (v292 + 56));
      v292[OBJC_IVAR____TtC7remindd32RDSuggestedAttributesAutoTrainer_started] = 0;
      v295 = v438;
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v296 = type metadata accessor for Logger();
      sub_100006654(v296, qword_10094DFE0);
      v297 = Logger.logObject.getter();
      v298 = static os_log_type_t.default.getter();
      v299 = os_log_type_enabled(v297, v298);
      v295 = v438;
      if (v299)
      {
        v300 = swift_slowAlloc();
        *v300 = 0;
        _os_log_impl(&_mh_execute_header, v297, v298, "Suggested attributes disabled because not supported by store controller", v300, 2u);
      }

      v292 = 0;
    }

    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_suggestedAttributesAutoTrainer] = v292;
    if ([v278 supportsWidgetRefresh])
    {
      if (qword_100935D30 != -1)
      {
        swift_once();
      }

      v301 = qword_100974CC8;
      type metadata accessor for RDWidgetRefreshEngine(0);
      swift_allocObject();

      v302 = sub_1003CD694(v301, v241);
    }

    else
    {
      if (v101[211] != -1)
      {
        swift_once();
      }

      v303 = type metadata accessor for Logger();
      sub_100006654(v303, qword_10094DFE0);
      v304 = Logger.logObject.getter();
      v305 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v304, v305))
      {
        v306 = swift_slowAlloc();
        *v306 = 0;
        _os_log_impl(&_mh_execute_header, v304, v305, "Widget refresh disabled because not supported by store controller", v306, 2u);
      }

      v302 = 0;
    }

    *&v185[OBJC_IVAR____TtC7remindd8RDDaemon_widgetRefresh] = v302;
    v307 = v278;

    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    v412 = objc_opt_self();
    v308 = [v412 defaultCenter];
    v309 = type metadata accessor for RDManualSortHintUpdater(0);
    v310 = v295;
    v311 = swift_allocObject();
    *(v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_accountsAndRemindersChangesSubscription) = 0;
    *(v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = 0;
    v312 = (v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_clientIdentity);
    *&v457 = v309;
    sub_1000F5104(&qword_100936EF8, &qword_100791B08);
    *v312 = String.init<A>(reflecting:)();
    v312[1] = v313;
    v312[3] = 0;
    v312[4] = 0;
    v312[2] = 0;
    *(v312 + 38) = 0;
    v311[2] = v307;
    v311[3] = v241;
    v314 = v423;
    v311[4] = v423;
    (v444)[2](v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_debounceInterval, v310, v445);
    *(v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_notificationCenter) = v308;
    v315 = qword_100936298;
    v446 = v307;
    v316 = v314;

    v317 = v308;
    if (v315 != -1)
    {
      swift_once();
    }

    v318 = v415;
    v431 = v317;
    NSNotificationCenter.publisher(for:object:)();
    *&v457 = v316;
    v319 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v320 = v417;
    (*(*(v319 - 8) + 56))(v417, 1, 1, v319);
    sub_1000F4E04(&qword_100936F00, &type metadata accessor for NSNotificationCenter.Publisher, &protocol conformance descriptor for NSNotificationCenter.Publisher);
    sub_100006CA4();
    v321 = v418;
    v322 = v419;
    Publisher.receive<A>(on:options:)();
    sub_1000050A4(v320, &qword_100939980, &unk_10079ADA0);
    (*(v416 + 8))(v318, v321);
    swift_allocObject();
    swift_weakInit();
    sub_10000CB48(&qword_100936F10, &unk_100936ED0, &unk_100791AF0, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

    v323 = v421;
    v324 = Publisher<>.sink(receiveValue:)();

    (*(v420 + 8))(v322, v323);
    *(v311 + OBJC_IVAR____TtC7remindd23RDManualSortHintUpdater_manualSortHintChangesSubscription) = v324;

    v325 = swift_allocObject();
    swift_weakInit();

    v459 = sub_1000FC42C;
    v460 = v325;
    *&v457 = _NSConcreteStackBlock;
    *(&v457 + 1) = 1107296256;
    *&v458 = sub_100019200;
    *(&v458 + 1) = &unk_1008E4D80;
    v326 = _Block_copy(&v457);

    v327 = v441;
    static DispatchQoS.unspecified.getter();
    v464[0] = &_swiftEmptyArrayStorage;
    v329 = v433;
    v328 = v434;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    *&v429 = v316;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v326);
    v330 = v446;

    v426(v329, v328);
    v425(v327, v432);
    (v444[1])(v438, v445);

    *(&v458 + 1) = v309;
    *&v457 = v311;
    v331 = v414;
    swift_beginAccess();
    sub_1000FC434(&v457, v331);
    swift_endAccess();
    v332 = [v330 cloudContext];
    v333 = v447;
    if (!v332)
    {
      break;
    }

    v243 = v332;
    if (![v330 supportsCloudSchemaCatchUpSyncBackgroundScheduling])
    {

      break;
    }

    v334 = [v243 processingQueue];
    type metadata accessor for RDICCloudSchemaCatchUpSyncXPCActivityFactory();
    v335 = swift_allocObject();
    *(v335 + 16) = v330;
    v336 = v330;
    v337 = [v243 icUserDefaults];
    v338 = [v337 cloudSchemaCatchUpSyncSchedulingStateStorage];

    v244 = sub_1000F5104(&qword_100936F38, &qword_100791B28);
    v339 = swift_allocObject();
    v339[3] = 0;
    v339[7] = 0;
    swift_unknownObjectWeakInit();
    v339[2] = v334;
    v339[4] = v335;
    v339[5] = v338;
    v339[7] = &off_1008F8500;
    swift_unknownObjectWeakAssign();
    v339[8] = 0x4122750000000000;
    [v243 setCloudSchemaCatchUpSyncController:v339];
    v340 = v339[2];
    v341 = swift_allocObject();
    *(v341 + 16) = sub_1000FC4A4;
    *(v341 + 24) = v339;
    v459 = sub_1000FDA90;
    v460 = v341;
    *&v457 = _NSConcreteStackBlock;
    *(&v457 + 1) = 1107296256;
    *&v458 = sub_10000F160;
    *(&v458 + 1) = &unk_1008E4DD0;
    v342 = _Block_copy(&v457);

    dispatch_sync(v340, v342);
    _Block_release(v342);
    LOBYTE(v340) = swift_isEscapingClosureAtFileLocation();

    if ((v340 & 1) == 0)
    {

      v343 = &v447[OBJC_IVAR____TtC7remindd8RDDaemon_cloudSchemaCatchUpSyncController];
      *v343 = v339;
      *(v343 + 3) = v244;
      *(v343 + 4) = &off_1008F4778;
      goto LABEL_119;
    }

    __break(1u);
LABEL_140:
    swift_once();
  }

  v344 = &v333[OBJC_IVAR____TtC7remindd8RDDaemon_cloudSchemaCatchUpSyncController];
  *(v344 + 4) = 0;
  *v344 = 0u;
  *(v344 + 1) = 0u;
LABEL_119:
  v345 = objc_opt_self();
  v346 = [v345 sharedConfiguration];
  if (qword_100935D30 != -1)
  {
    swift_once();
  }

  v347 = qword_100974CC8;
  type metadata accessor for RDICCloudConfigurationUpdaterXPCActivityFactory();
  v348 = swift_allocObject();
  v349 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v351 = v347;
  v352 = v346;
  v353 = [ObjCClassFromMetadata daemonUserDefaults];
  v354 = sub_1000F5104(&qword_100936F20, &qword_100791B18);
  v355 = swift_allocObject();
  v444 = v351;
  v445 = v352;
  v355[2] = v352;
  v355[3] = v351;
  v355[4] = v353;
  v355[5] = &off_1008F80F8;
  v355[6] = 0;
  v355[7] = v348;
  v356 = v446;
  v357 = &v447[OBJC_IVAR____TtC7remindd8RDDaemon_cloudConfigurationUpdater];
  *v357 = v355;
  *(v357 + 3) = v354;
  *(v357 + 4) = &off_1008F8218;
  v358 = [v356 cloudContext];
  if (v358)
  {
    v359 = v358;
    v360 = v356;
    v361 = v429;
    v362 = v429;
    v363 = [v412 defaultCenter];
    v364 = [v345 sharedConfiguration];
    v365 = sub_1000060C8(0, &qword_100936F28, off_1008D4108);
    v459 = &off_1008EC9F0;
    *(&v458 + 1) = v365;
    *&v457 = v364;
    v366 = [ObjCClassFromMetadata daemonUserDefaults];
    v466 = &off_1008ECA10;
    v465 = v349;
    v464[0] = v366;
    v367 = type metadata accessor for RDICCloudExtraneousAlarmsCollector();
    v368 = swift_allocObject();
    *(v368 + 40) = 0;
    swift_unknownObjectWeakInit();
    *(v368 + 144) = 0;
    swift_unknownObjectWeakInit();
    *(v368 + 152) = 0;
    *(v368 + 160) = 0;
    *(v368 + 168) = 0xD000000000000022;
    *(v368 + 176) = 0x80000001007EB090;
    *(v368 + 192) = 0;
    *(v368 + 200) = 0;
    *(v368 + 184) = 0;
    *(v368 + 206) = 0;
    *&v455[0] = v367;
    sub_1000F5104(&qword_100936F30, &qword_100791B20);
    *(v368 + 216) = String.init<A>(reflecting:)();
    *(v368 + 224) = v369;
    *(v368 + 272) = 0u;
    *(v368 + 288) = 0u;
    *(v368 + 304) = 0;
    *(v368 + 16) = v360;
    *(v368 + 24) = v362;
    *(v368 + 40) = &off_1008F8510;
    swift_unknownObjectWeakAssign();
    *(v368 + 128) = v363;
    sub_10000A87C(&v457, v368 + 48);
    sub_10000A87C(v464, v368 + 88);
    sub_10000A87C(v464, v455);
    v370 = type metadata accessor for RDICCloudExtraneousAlarmsCollector.RDICCloudExtraneousAlarmsCollectorExecutionDateStorage();
    v371 = swift_allocObject();
    sub_100054B6C(v455, v371 + 16);
    *(v368 + 256) = v370;
    *(v368 + 264) = &off_1008ECA48;
    *(v368 + 232) = v371;
    v356 = v446;

    sub_10000607C(v464);
    sub_10000607C(&v457);
    *(v368 + 144) = 0;
    swift_unknownObjectWeakAssign();
    v372 = &qword_100936000;
  }

  else
  {
    v368 = 0;
    v372 = &qword_100936000;
    v361 = v429;
  }

  v373 = v447;
  *&v447[OBJC_IVAR____TtC7remindd8RDDaemon_extraneousAlarmsCollector] = v368;
  v374 = v361;
  v375 = v444;
  sub_10023DA1C(v374, v444, v356, &v457);
  v376 = &v373[OBJC_IVAR____TtC7remindd8RDDaemon_housekeepingActivityScheduler];
  v377 = v458;
  *v376 = v457;
  *(v376 + 1) = v377;
  *(v376 + 4) = v459;
  if ([v356 supportsSyncActivityNotificationEngine])
  {
    v378 = [ObjCClassFromMetadata daemonUserDefaults];
    LOBYTE(v457) = 1;
    *(&v457 + 1) = 5;
    LOBYTE(v458) = 1;
    *(&v458 + 1) = 30;
    LOBYTE(v459) = 0;
    v379 = v378;
    v380 = sub_1000FB4B8(v375, v356, v440, v379, &v457);
  }

  else
  {
    if (v372[211] != -1)
    {
      swift_once();
    }

    v381 = type metadata accessor for Logger();
    sub_100006654(v381, qword_10094DFE0);
    v382 = Logger.logObject.getter();
    v383 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v382, v383))
    {
      v384 = swift_slowAlloc();
      *v384 = 0;
      _os_log_impl(&_mh_execute_header, v382, v383, "RDSyncActivityNotificationEngine is disabled because sharedListNotifications feature flag is off", v384, 2u);
      v356 = v446;
    }

    v380 = 0;
  }

  *&v373[OBJC_IVAR____TtC7remindd8RDDaemon_syncActivityNotificationEngine] = v380;
  if ([v356 supportsSharedInlineTagAutoConvertEngine])
  {
    v385 = sub_10034BB78(v356, v375);
  }

  else
  {
    if (v372[211] != -1)
    {
      swift_once();
    }

    v386 = type metadata accessor for Logger();
    sub_100006654(v386, qword_10094DFE0);
    v387 = Logger.logObject.getter();
    v388 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v387, v388))
    {
      v389 = swift_slowAlloc();
      *v389 = 0;
      _os_log_impl(&_mh_execute_header, v387, v388, "RDSharedInlineTagAutoConvertEngineAssembly is disabled because supportsSharedInlineTagAutoConvertEngine feature flag is off", v389, 2u);
      v356 = v446;
    }

    v385 = 0;
  }

  *&v373[OBJC_IVAR____TtC7remindd8RDDaemon_sharedInlineTagAutoConvertEngine] = v385;
  v390 = type metadata accessor for RDDaemon();
  v456.receiver = v373;
  v456.super_class = v390;
  v391 = objc_msgSendSuper2(&v456, "init");

  v392 = v435;
  swift_unknownObjectWeakAssign();

  return v391;
}

char *sub_1000F9330(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char *a6, char *a7, id *a8)
{
  v121 = a7;
  v123 = a8;
  v122 = *a8;
  v130 = type metadata accessor for DispatchWorkItemFlags();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130, v14);
  v127 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for DispatchQoS();
  v126 = *(v128 - 8);
  __chkstk_darwin(v128, v16);
  v125 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100936830 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006654(v18, qword_100951898);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "os_transaction INIT {name: com.apple.remindd.RDAlarmEngineAssembly}", v21, 2u);
  }

  v124 = os_transaction_create();
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&_mh_execute_header, v22, v23, "Starting alarm engine assembly", v24, 2u);
  }

  v25 = a1[2];
  v26 = [a4 supportsAlarmEngine];
  v134 = a1;
  if (v26)
  {
    type metadata accessor for RDBeforeFirstUnlockNotificationEngine();
    v27 = swift_allocObject();
    v27[2] = v25;
    v27[3] = a6;
    v27[4] = &off_1008F5BC0;
    v28 = v25;
    v29 = a6;
  }

  else
  {
    v27 = 0;
  }

  type metadata accessor for RDAlarmEngine(0);
  swift_allocObject();
  swift_retain_n();
  v30 = v25;

  swift_unknownObjectRetain();
  v31 = a3;
  v133 = sub_1007450B4(v30, a2, a3, a5, v27);
  v119 = a6;
  *&a6[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_reminderAlarmDelegate + 8] = &off_1008FDFC0;
  swift_unknownObjectWeakAssign();
  v32 = type metadata accessor for RDAlarmProducerDataSource();
  swift_allocObject();
  v33 = v30;
  swift_unknownObjectRetain();
  v34 = sub_1004075DC(v33, a2, a3, a4);
  v131 = v34;
  type metadata accessor for RDXPCActivityTimeEventStream(0);
  v35 = swift_allocObject();
  v36 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  v37 = type metadata accessor for RDXPCEventStream.Token(0);
  v118 = a2;
  v38 = v37;
  v39 = *(v37 - 8);
  v113 = *(v39 + 56);
  v117 = v31;
  v114 = (v39 + 56);
  v113(&v35[v36], 1, 1, v37);
  v40 = &v35[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v40 = 0;
  *(v40 + 1) = 0;
  *(v35 + 2) = v33;
  *(v35 + 3) = 0xD00000000000001CLL;
  v41 = v134;
  *(v35 + 4) = 0x80000001007EB430;
  *(v35 + 5) = v41;
  v137 = v32;
  v138 = &off_1008F0850;
  *&aBlock = v34;
  v42 = type metadata accessor for RDTimeAlarmProducer();
  v43 = objc_allocWithZone(v42);
  v44 = sub_10000C9DC(&aBlock, v32);
  v115 = &v113;
  v45 = __chkstk_darwin(v44, v44);
  v47 = v27;
  v48 = (&v113 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v49 + 16))(v48, v45);
  v50 = *v48;
  v144 = v32;
  v145 = &off_1008F0850;
  v143 = v50;
  v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_started] = 0;
  *&v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_queue] = v33;
  v51 = &v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_timeEventStream];
  v120 = v35;
  *v51 = v35;
  v51[1] = &off_1008E86D8;
  sub_10000A87C(&v143, &v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_dataSource]);
  *&v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_beforeFirstUnlockNotificationEngine] = v47;
  *&v43[OBJC_IVAR____TtC7remindd19RDTimeAlarmProducer_delegate + 8] = &off_1008FDFD0;
  swift_unknownObjectUnownedInit();
  v142.receiver = v43;
  v142.super_class = v42;
  v52 = v33;
  v132 = v47;

  v53 = v134;

  v54 = v131;

  v116 = objc_msgSendSuper2(&v142, "init");
  sub_10000607C(&v143);
  sub_10000607C(&aBlock);
  v55 = swift_allocObject();
  v113(&v55[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken], 1, 1, v38);
  v56 = &v55[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v56 = 0;
  *(v56 + 1) = 0;
  *(v55 + 2) = v52;
  *(v55 + 3) = 0xD000000000000024;
  *(v55 + 4) = 0x80000001007EB450;
  *(v55 + 5) = v53;
  v57 = v55;
  v137 = v32;
  v138 = &off_1008F07F0;
  *&aBlock = v54;
  v58 = type metadata accessor for RDDueDateDeltaAlarmProducer();
  v59 = objc_allocWithZone(v58);
  v60 = sub_10000C9DC(&aBlock, v137);
  v114 = &v113;
  v61 = __chkstk_darwin(v60, v60);
  v63 = (&v113 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v64 + 16))(v63, v61);
  v65 = *v63;
  v144 = v32;
  v145 = &off_1008F07F0;
  v143 = v65;
  v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_started] = 0;
  *&v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_queue] = v52;
  v66 = &v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_timeEventStream];
  v115 = v57;
  *v66 = v57;
  v66[1] = &off_1008E86D8;
  sub_10000A87C(&v143, &v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_dataSource]);
  *&v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_beforeFirstUnlockNotificationEngine] = v47;
  *&v59[OBJC_IVAR____TtC7remindd27RDDueDateDeltaAlarmProducer_delegate + 8] = &off_1008FDFD0;
  v67 = v133;
  swift_unknownObjectUnownedInit();
  v141.receiver = v59;
  v141.super_class = v58;
  v68 = v52;

  v134 = objc_msgSendSuper2(&v141, "init");
  sub_10000607C(&v143);
  sub_10000607C(&aBlock);
  v69 = v68;

  v121 = sub_1000F5404(v69, v121, v54, v67);
  v137 = v32;
  v138 = &off_1008F0830;
  *&aBlock = v54;
  v70 = v54;
  v71 = objc_allocWithZone(type metadata accessor for RDVehicleAlarmProducer());
  v72 = sub_10000C9DC(&aBlock, v137);
  v73 = __chkstk_darwin(v72, v72);
  v75 = (&v113 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v76 + 16))(v75, v73);
  v77 = *v75;
  v78 = v69;

  v114 = sub_1000FBEB0(v78, v77, v67, v71);

  sub_10000607C(&aBlock);
  v79 = v123;
  v81 = v123[2];
  v80 = v123[3];
  v82 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v82[6] = 0;
  v82[7] = 0;
  v82[2] = v81;
  v82[3] = v80;
  v82[4] = v78;
  v83 = swift_allocObject();
  *(v83 + 16) = v78;
  *(v83 + 24) = v82;
  v84 = v79[6];
  v85 = v79[7];
  v79[6] = sub_1000FC4E8;
  v79[7] = v83;
  v86 = v78;

  sub_10003E114(v84, v85);
  v87 = objc_opt_self();

  v88 = [v87 daemonUserDefaults];
  v137 = sub_1000060C8(0, &qword_100936EB8, REMDaemonUserDefaults_ptr);
  v138 = &off_1008F2758;
  *&aBlock = v88;
  type metadata accessor for RDUserInteractionSessionManager();
  v89 = swift_allocObject();
  sub_100054B6C(&aBlock, v89 + 16);
  v90 = v67;
  v91 = sub_1000FBFCC(v86, v82, v89, v70, v67);

  type metadata accessor for RDAlarmNotificationConsumer();
  v92 = swift_allocObject();
  v92[7] = 0xD000000000000014;
  v92[8] = 0x80000001007EB480;
  v92[10] = 0;
  v92[11] = 0;
  v92[9] = 0;
  *(v92 + 94) = 0;
  v92[4] = v86;
  v93 = type metadata accessor for RDDaemonController();
  v94 = objc_allocWithZone(v93);
  v95 = &v94[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v96 = v117;
  *v95 = v118;
  v95[1] = v96;
  v97 = &v94[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v97 = 0xD000000000000014;
  *(v97 + 1) = 0x80000001007EB480;
  *(v97 + 38) = 0;
  *(v97 + 3) = 0;
  *(v97 + 4) = 0;
  *(v97 + 2) = 0;
  *&v94[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v123 = v86;
  swift_unknownObjectRetain();
  sub_10000C71C(0xD000000000000014, 0x80000001007EB480, 0, 0, 0, 0);
  v140.receiver = v94;
  v140.super_class = v93;
  v98 = objc_msgSendSuper2(&v140, "init");
  v99 = v119;
  v92[2] = v119;
  v92[3] = &off_1008F5BC0;
  v92[5] = v132;
  v92[6] = v98;
  v100 = swift_allocObject();
  v101 = v116;
  v100[2] = v90;
  v100[3] = v101;
  v102 = v134;
  v103 = v121;
  v100[4] = v134;
  v100[5] = v103;
  v104 = v114;
  v100[6] = v114;
  v100[7] = v91;
  v105 = v124;
  v100[8] = v92;
  v100[9] = v105;
  v138 = sub_1000FC4F4;
  v139 = v100;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  v136 = sub_100019200;
  v137 = &unk_1008E4EC0;
  v106 = _Block_copy(&aBlock);
  v107 = v99;

  v122 = v101;
  v134 = v102;
  v121 = v103;
  v119 = v104;
  v108 = v91;

  swift_unknownObjectRetain();
  v109 = v125;
  static DispatchQoS.unspecified.getter();
  v143 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v110 = v127;
  v111 = v130;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v106);

  swift_unknownObjectRelease();
  (*(v129 + 8))(v110, v111);
  (*(v126 + 8))(v109, v128);

  return v133;
}

char *sub_1000FA268(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v54 = a5;
  v55 = a3;
  v56 = a2;
  v9 = *a6;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v10 - 8);
  v62 = v10;
  __chkstk_darwin(v10, v11);
  v58 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v59 = *(v13 - 8);
  v60 = v13;
  __chkstk_darwin(v13, v14);
  v57 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69[3] = v9;
  v69[4] = &protocol witness table for RDSynchronizedKeyValueStore;
  v69[0] = a6;
  v16 = qword_100935D78;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100006654(v17, qword_10093EF38);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Starting RDTodayNotificationAssembly", v20, 2u);
  }

  v21 = *(a1 + 16);
  type metadata accessor for RDXPCActivityTimeEventStream(0);
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_xpcEventStreamToken;
  v24 = type metadata accessor for RDXPCEventStream.Token(0);
  (*(*(v24 - 8) + 56))(&v22[v23], 1, 1, v24);
  v25 = &v22[OBJC_IVAR____TtC7remindd28RDXPCActivityTimeEventStream_eventHandler];
  *v25 = 0;
  *(v25 + 1) = 0;
  *(v22 + 2) = v21;
  *(v22 + 3) = 0xD000000000000024;
  *(v22 + 4) = 0x80000001007EB3B0;
  *(v22 + 5) = a1;
  type metadata accessor for RDNotifydEventStream();
  swift_allocObject();
  v26 = v21;

  v27 = sub_10028F604(v26, 0);
  v28 = *(a4 + 16);
  v65 = &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter;
  v66 = &off_1008F5130;
  type metadata accessor for RDDynamicSignificantTimeNotificationEngine();
  v29 = swift_allocObject();
  sub_10000C9DC(aBlock, &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter);
  *(v29 + 56) = &type metadata for RDDynamicSignificantTimeNotificationEngine.XPCEventSetter;
  *(v29 + 64) = &off_1008F5130;
  *(v29 + 72) = 2;
  *(v29 + 16) = v26;
  *(v29 + 24) = v28;
  v30 = v26;
  v51 = v30;
  v31 = v28;
  sub_10000607C(aBlock);
  sub_10000A87C(v69, aBlock);
  type metadata accessor for RDTodayNotificationEngine(0);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_storeControllerObservationToken;
  v34 = type metadata accessor for RDStoreControllerNotificationCenter.Token(0);
  (*(*(v34 - 8) + 56))(&v32[v33], 1, 1, v34);
  v32[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_started] = 0;
  *&v32[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_todayNotificationTimeObserver] = 0;
  *&v32[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_badgeCountCriteriaObserver] = 0;
  *&v32[OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_lastDismissedDateDidChangeExternally] = 0;
  v35 = OBJC_IVAR____TtC7remindd25RDTodayNotificationEngine_cachedLastDismissedDate;
  v36 = type metadata accessor for Date();
  (*(*(v36 - 8) + 56))(&v32[v35], 1, 1, v36);
  *(v32 + 2) = v30;
  *(v32 + 3) = v22;
  v52 = v22;
  *(v32 + 4) = &off_1008E86D8;
  *(v32 + 5) = v27;
  v53 = v27;
  v37 = v54;
  *(v32 + 6) = &off_1008EC760;
  *(v32 + 7) = v37;
  *(v32 + 8) = &off_1008F5BC0;
  *(v32 + 9) = a4;
  sub_10000A87C(aBlock, (v32 + 80));
  v38 = type metadata accessor for RDDaemonController();
  v39 = objc_allocWithZone(v38);
  v40 = &v39[OBJC_IVAR____TtC7remindd18RDDaemonController_xpcDaemon];
  v41 = v55;
  *v40 = v56;
  v40[1] = v41;
  v42 = &v39[OBJC_IVAR____TtC7remindd18RDDaemonController_clientIdentity];
  *v42 = 0xD000000000000017;
  *(v42 + 1) = 0x80000001007EB3E0;
  *(v42 + 38) = 0;
  *(v42 + 3) = 0;
  *(v42 + 4) = 0;
  *(v42 + 2) = 0;
  *&v39[OBJC_IVAR____TtC7remindd18RDDaemonController_storeContainerToken] = 0;
  v68.receiver = v39;
  v68.super_class = v38;
  v55 = v51;

  v43 = v37;
  swift_unknownObjectRetain();
  v44 = objc_msgSendSuper2(&v68, "init");
  sub_10000607C(aBlock);
  *(v32 + 15) = v44;
  *(v32 + 16) = v29;
  *&v43[OBJC_IVAR____TtC7remindd24RDUserNotificationCenter_todayNotificationDelegate + 8] = &off_1008FD6D0;
  swift_unknownObjectWeakAssign();
  v66 = sub_1000FC4E0;
  v67 = v32;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100019200;
  v65 = &unk_1008E4E48;
  v45 = _Block_copy(aBlock);

  v46 = v57;
  static DispatchQoS.unspecified.getter();
  v63 = &_swiftEmptyArrayStorage;
  sub_1000F4E04(&qword_100936E90, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_1000F5104(&unk_100939E50, &unk_100791AD0);
  sub_10000CB48(&qword_100936EA0, &unk_100939E50, &unk_100791AD0, &protocol conformance descriptor for [A]);
  v47 = v58;
  v48 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v45);

  (*(v61 + 8))(v47, v48);
  (*(v59 + 8))(v46, v60);

  sub_10000607C(v69);
  return v32;
}