void sub_10008B88C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog StoreXPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10008CF28();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_10008CF90();
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008BDC0(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Fetched configuration UIs: %lu", v3, v4, v5, v6);
}

void sub_10008BEA0(void *a1)
{
  [a1 count];
  sub_100006C08();
  sub_100022548(&_mh_execute_header, v1, v2, "Fetched profile configurations: %lu", v3, v4, v5, v6);
}

void sub_10008CE54()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not read metadata for key %{public}@: %{public}@");
}

void sub_10008CEBC()
{
  sub_100019898(__stack_chk_guard);
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_10000A924(&_mh_execute_header, v1, v2, "Read metadata for key %{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_10008CF28()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not set metadata for key %{public}@: %{public}@");
}

void sub_10008CF90()
{
  sub_100019898(__stack_chk_guard);
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_10000A924(&_mh_execute_header, v1, v2, "Set metadata for key %{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_10008D830(id a1)
{
  qword_1000E6B98 = os_log_create("com.apple.remotemanagementd", "statusNotificationCenter");

  _objc_release_x1();
}

void sub_10008D8B8(id a1)
{
  v1 = +[RMPersistentController sharedController];
  v4 = [v1 persistentContainer];

  v2 = [[RMSubscribedStatusKeyPathUpdater alloc] initWithPersistentContainer:v4];
  v3 = qword_1000E6BA8;
  qword_1000E6BA8 = v2;
}

void sub_10008E370(uint64_t a1)
{
  v2 = +[RMSubscribedStatusKeyPath fetchRequest];
  [v2 setPredicate:*(a1 + 32)];
  v26 = 0;
  v3 = [v2 execute:&v26];
  v4 = v26;
  if (!v3)
  {
    v5 = +[RMLog statusNotificationCenter];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      sub_10008E9A4((a1 + 32), v4, v5);
    }

    goto LABEL_16;
  }

  if (![v3 count])
  {
    v5 = +[RMLog statusNotificationCenter];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_10008E928((a1 + 32), v5);
    }

LABEL_16:
    v17 = v4;
    goto LABEL_20;
  }

  v19 = v4;
  v20 = v2;
  v5 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        [v11 setLastReceivedDate:v5];
        v12 = *(a1 + 40);
        v13 = [v11 managementSource];
        v14 = [v13 objectID];
        [v12 addObject:v14];
      }

      v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v8);
  }

  v15 = *(a1 + 48);
  v21 = v19;
  v16 = [v15 save:&v21];
  v17 = v21;

  if (v16)
  {
    v2 = v20;
  }

  else
  {
    v18 = +[RMLog statusNotificationCenter];
    v2 = v20;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      sub_10008E8B0(v17, v18);
    }

    [*(a1 + 40) removeAllObjects];
  }

LABEL_20:
}

void sub_10008E620(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"managementSource", a2];
  v7 = v5;
  v8 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      v13 = 0;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * v13);
        v15 = [v14 pathExtension];
        v16 = [v15 length];

        if (v16)
        {
          while (([v8 containsObject:v14] & 1) == 0)
          {
            [v8 addObject:v14];
            v17 = [v14 stringByDeletingPathExtension];

            v18 = [v17 pathExtension];
            v19 = [v18 length];

            v14 = v17;
            if (!v19)
            {
              goto LABEL_11;
            }
          }
        }

        v17 = v14;
LABEL_11:
        [v8 addObject:v17];

        v13 = v13 + 1;
      }

      while (v13 != v11);
      v11 = [v9 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v11);
  }

  v20 = [NSPredicate predicateWithFormat:@"%K IN %@", @"keyPath", v8, v23];

  v27[0] = v6;
  v27[1] = v20;
  v21 = [NSArray arrayWithObjects:v27 count:2];
  v22 = [NSCompoundPredicate andPredicateWithSubpredicates:v21];

  [*(a1 + 32) addObject:v22];
}

void sub_10008E8B0(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Could not update subscribed status key paths: %{public}@", &v2, 0xCu);
}

void sub_10008E928(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138543362;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "No subscribed status key paths matching %{public}@", &v3, 0xCu);
}

void sub_10008E9A4(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v3 = *a1;
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&_mh_execute_header, log, OS_LOG_TYPE_FAULT, "Unable to fetch for subscribed status key paths for %{public}@: %{public}@", &v4, 0x16u);
}

void sub_10008EBD8(id a1)
{
  qword_1000E6BB8 = os_log_create("com.apple.remotemanagementd", "XPCListenerDelegate");

  _objc_release_x1();
}

void sub_10008F334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_100093324();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with %{public}@: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008F65C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10009338C();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with account %{public}@: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008F9B8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000933F4();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543618;
    v11 = v9;
    v12 = 2114;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Enrolled with DDM %{public}@: %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10008FCE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog XPCListenerDelegate];
  v7 = v6;
  if (!v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v9 = *(a1 + 32);
      v12 = 138543362;
      v13 = v9;
      v10 = "Unenrolled %{public}@ (checked out with the server)";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = *(a1 + 32);
      v12 = 138543362;
      v13 = v11;
      v10 = "Unenrolled %{public}@";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v10, &v12, 0xCu);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10009345C();
  }

LABEL_10:

  (*(*(a1 + 40) + 16))(*(a1 + 40), a2);
}

void sub_10009001C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000934C4();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Synced with %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1000902AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_10009352C();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Periodic sync done", v6, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100090584(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093594();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated with %{public}@ with push message", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_10009089C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000935FC();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updated with %{public}@ with sync tokens", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100090B30(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = +[RMLog XPCListenerDelegate];
  v7 = v6;
  if (!v5)
  {
    v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v12 = 0;
      v9 = "Device channel enrollment exists";
      v10 = &v12;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Device channel enrollment does not exist";
      v10 = &v11;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_100093664();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100090DC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog XPCListenerDelegate];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Found management channel";
      v10 = &v11;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      *buf = 0;
      v9 = "Did not find management channel";
      v10 = buf;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  v7 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000936CC();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100091074(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v7 = +[RMLog XPCListenerDelegate];
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      v11 = 0;
      v9 = "Found management channel";
      v10 = &v11;
    }

    else
    {
      if (!v8)
      {
        goto LABEL_10;
      }

      *buf = 0;
      v9 = "Did not find management channel";
      v10 = buf;
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    goto LABEL_10;
  }

  v7 = +[RMLog XPCListenerDelegate];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_1000936CC();
  }

LABEL_10:

  (*(*(a1 + 32) + 16))(*(a1 + 32));
}

void sub_100091394(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093734();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status with %{public}@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100091650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100091674(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10009168C(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [RMManagementSource fetchRequestWithIdentifier:*(a1 + 32)];
  v14 = 0;
  v4 = [v3 execute:&v14];
  v5 = v14;
  if (v4)
  {
    v6 = [v4 firstObject];
    if (v6)
    {
      v7 = [[RMManagementChannel alloc] initWithManagementSource:v6];
      v8 = 48;
    }

    else
    {
      v7 = [RMErrorUtilities createManagementSourceNotFoundErrorWithIdentifier:*v2];
      v8 = 40;
    }

    v12 = *(*(a1 + v8) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v7;
  }

  else
  {
    v9 = +[RMLog XPCListenerDelegate];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_10009379C();
    }

    v10 = +[RMErrorUtilities createInternalError];
    v11 = *(*(a1 + 40) + 8);
    v6 = *(v11 + 40);
    *(v11 + 40) = v10;
  }
}

void sub_100091EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093818(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status of types %{public}@ with %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100092290(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[RMLog XPCListenerDelegate];
  v8 = v7;
  if (v5)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000938EC();
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 138543362;
    v11 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Queried for status subscriptions from %{public}@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100092640(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[RMLog XPCListenerDelegate];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_100093954(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = [v6 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
    v8 = [v7 componentsJoinedByString:{@", "}];

    v9 = *(a1 + 40);
    v10 = 138543618;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Sent status subscriptions with identifiers %{public}@ with %{public}@", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

int64_t sub_100093094(id a1, NSDictionary *a2, NSDictionary *a3)
{
  v4 = a3;
  v5 = [(NSDictionary *)a2 objectForKeyedSubscript:@"Location"];
  v6 = [v5 componentsSeparatedByString:@"/"];
  v7 = [v6 lastObject];

  v8 = [(NSDictionary *)v4 objectForKeyedSubscript:@"Location"];

  v9 = [v8 componentsSeparatedByString:@"/"];
  v10 = [v9 lastObject];

  if ([v7 isEqualToString:v10])
  {
    v11 = 0;
  }

  else if ([v7 isEqualToString:@"Internal"])
  {
    v11 = -1;
  }

  else if ([v10 isEqualToString:@"Internal"])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v7 caseInsensitiveCompare:v10];
  }

  return v11;
}

void sub_100093214(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_100093324()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not enroll with %{public}@: %{public}@");
}

void sub_10009338C()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not enroll with account %{public}@: %{public}@");
}

void sub_1000933F4()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not enroll DDM with %{public}@: %{public}@");
}

void sub_10009345C()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not unenroll with %{public}@: %{public}@");
}

void sub_1000934C4()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not sync with %{public}@: %{public}@");
}

void sub_100093594()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not update with %{public}@ with push message: %{public}@");
}

void sub_1000935FC()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not update with %{public}@ with sync tokens: %{public}@");
}

void sub_100093734()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not send status with %{public}@: %{public}@");
}

void sub_100093818(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_1000931F4();
  sub_100093214(&_mh_execute_header, v4, v5, "Could not send status of types %{public}@ with %{public}@: %{public}@", v6, v7, v8, v9);
}

void sub_1000938EC()
{
  sub_100019898(__stack_chk_guard);
  sub_100019810();
  sub_100019834(&_mh_execute_header, v0, v1, "Could not query for status subscriptions from %{public}@: %{public}@");
}

void sub_100093954(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 sortedArrayUsingSelector:"caseInsensitiveCompare:"];
  v3 = [v2 componentsJoinedByString:{@", "}];

  sub_1000931F4();
  sub_100093214(&_mh_execute_header, v4, v5, "Could not send status subscriptions with identifiers %{public}@ with %{public}@: %{public}@", v6, v7, v8, v9);
}

void sub_100093A3C(uint8_t *buf, int a2, int a3, os_log_t log)
{
  *buf = 138543874;
  *(buf + 4) = @"remotemanagementd";
  *(buf + 6) = 1024;
  *(buf + 14) = a2;
  *(buf + 9) = 1024;
  *(buf + 5) = a3;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "Starting %{public}@... uid %d euid %d", buf, 0x18u);
}

void sub_100093AE8(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Startup migration failed - process exiting: %{public}@", &v2, 0xCu);
}

void sub_100093BA4(uint64_t a1, NSObject *a2)
{
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "CoreData migration failed - process exiting: %{public}@", &v2, 0xCu);
}