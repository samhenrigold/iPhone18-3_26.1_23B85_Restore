void sub_1000021D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000021E8(uint64_t a1)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100002290;
  v7[3] = &unk_100212A20;
  v10 = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v3;
  v9 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 48) + 8) + 24);

  return v5;
}

uint64_t sub_100002290(void *a1, void *a2, void *a3, _BYTE *a4)
{
  result = sub_1000022EC(SQLiteEntity, a3, a2, a1[6], a1[4]);
  if ((result & 1) == 0)
  {
    *(*(a1[5] + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

uint64_t sub_1000022EC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a3;
  v9 = a5;
  v10 = objc_opt_self();
  v11 = [[NSMutableString alloc] initWithString:@"INSERT OR REPLACE INTO "];
  [v11 appendString:v8];
  objc_msgSend(v11, "appendString:", @" (");
  v30 = v10;
  v12 = [v10 foreignKeyColumnForTable:v8];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = @"ROWID";
  }

  [v11 appendString:v14];
  v42 = 0u;
  v43 = 0u;
  v41 = 0u;
  v40 = 0u;
  v15 = v7;
  v16 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v41;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v41 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v40 + 1) + 8 * i);
        [v11 appendString:{@", "}];
        [v11 appendString:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v17);
  }

  [v11 appendString:@") VALUES (?"];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v21 = v15;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    while (1)
    {
      if (*v37 != v24)
      {
        objc_enumerationMutation(v21);
      }

      [v11 appendString:{@", ?"}];
      if (!--v23)
      {
        v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (!v23)
        {
          break;
        }
      }
    }
  }

  [v11 appendString:@";"]);
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100003BF8;
  v32[3] = &unk_100212C20;
  v34 = a4;
  v35 = 0;
  v25 = v21;
  v33 = v25;
  v26 = sub_1001ABB68(v9, v11, &v35, v32);
  v27 = v35;
  if (v27)
  {
    v28 = os_log_create("com.apple.AdAttributionKit", "SQL");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_100003F78(v30, v27, v28);
    }
  }

  return v26;
}

uint64_t sub_1000028A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [objc_opt_class() databaseTable];
  *(*(*(a1 + 40) + 8) + 24) = sub_1001AAE0C(v3, v4, @"ROWID");

  [objc_opt_class() foreignDatabaseTablesToDelete];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v20 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [objc_opt_class() foreignKeyColumnForTable:{v10, v17}];
        if (v11)
        {
          *(*(*(a1 + 40) + 8) + 24) = sub_1001AAE0C(*(a1 + 32), v10, v11);
          if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
          {

            goto LABEL_12;
          }
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v12 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v7 = v12;
    }

    while (v12);
  }

LABEL_12:

  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 8);
    *(v13 + 8) = 0;

    v15 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_100002A80(uint64_t a1)
{
  v2 = +[NSNotificationCenter defaultCenter];
  v5 = @"SQLiteUserInfoKeyPersistentID";
  v3 = [NSNumber numberWithLongLong:*(a1 + 32)];
  v6 = v3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  [v2 postNotificationName:@"SQLiteDidDeleteEntityNotification" object:0 userInfo:v4];
}

void sub_100002C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100002C7C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = sub_100004308(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_100003058(id *a1, void *a2, uint64_t a3)
{
  v5 = a1[6];
  v6 = a2;
  v8 = [v5 disambiguatedSQLForProperty:v6];
  if (a3)
  {
    [a1[4] appendString:{@", "}];
  }

  [a1[4] appendString:v8];
  v7 = [a1[6] joinClauseForProperty:v6];

  if (v7)
  {
    [a1[5] addObject:v7];
  }
}

void sub_10000310C(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000031D4;
  v5[3] = &unk_100212B30;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  sub_1001AB28C(v4, v5);
}

void sub_1000031D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (v5)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000032B0;
    v9[3] = &unk_100212B08;
    v8 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = v5;
    [v8 enumerateObjectsUsingBlock:v9];
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1000032B0(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = SQLiteCopyFoundationValue(v5, a3);
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

void sub_100003510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10000352C(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 56) foreignKeyColumnForTable:v7];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = @"ROWID";
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 1;
  if (([v7 isEqualToString:*(a1 + 32)] & 1) == 0)
  {
    v11 = [[NSMutableString alloc] initWithString:@"SELECT 1 FROM "];
    [v11 appendString:v7];
    [v11 appendString:@" WHERE "];
    [v11 appendString:v10];
    [v11 appendString:@" =  ? LIMIT 1;"];
    v12 = *(a1 + 40);
    v13 = *(v12 + 8);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000038D8;
    v30[3] = &unk_100212AB8;
    v30[4] = v12;
    v30[5] = &v31;
    sub_1000061F0(v13, v11, v30);
  }

  if (v32[3])
  {
    v14 = objc_alloc_init(NSMutableArray);
    v15 = [[NSMutableString alloc] initWithString:@"UPDATE "];
    [v15 appendString:v7];
    [v15 appendString:@" SET "];
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x2020000000;
    v29 = 0;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_100003938;
    v24[3] = &unk_100212B80;
    v27 = v28;
    v16 = v15;
    v25 = v16;
    v17 = v14;
    v26 = v17;
    [v8 enumerateKeysAndObjectsUsingBlock:v24];
    [v16 appendString:@" WHERE "];
    [v16 appendString:v7];
    [v16 appendString:@"."];
    [v16 appendString:v10];
    [v16 appendString:@" = ?;"];
    v18 = *(*(a1 + 40) + 8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = sub_1000039E8;
    v21[3] = &unk_100212BA8;
    v19 = v17;
    v20 = *(a1 + 40);
    v22 = v19;
    v23 = v20;
    *(*(*(a1 + 48) + 8) + 24) = sub_1001ABB68(v18, v16, 0, v21);

    _Block_object_dispose(v28, 8);
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = sub_1000022EC(SQLiteEntity, v8, v7, *(*(a1 + 40) + 16), *(*(a1 + 40) + 8));
  }

  *a4 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  _Block_object_dispose(&v31, 8);
}

void sub_1000038D8(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 16);
  v4 = a2;
  [v4 bindInt64:v3 atPosition:1];
  LOBYTE(v3) = sub_100004308(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_100003938(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    [*(a1 + 32) appendString:{@", "}];
  }

  [*(a1 + 32) appendString:v6];
  [*(a1 + 32) appendString:@" = ?"];
  *(*(*(a1 + 48) + 8) + 24) = 1;
  [*(a1 + 40) addObject:v5];
}

void sub_1000039E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    v8 = 1;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        SQLiteBindFoundationValue(v3, v10, *(*(&v11 + 1) + 8 * v9));
        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 1;
  }

  [v3 bindInt64:*(*(a1 + 40) + 16) atPosition:{v8, v11}];
}

void sub_100003BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 bindInt64:*(a1 + 40) atPosition:1];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    v8 = 2;
    do
    {
      v9 = 0;
      v10 = v8;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v8 = (v10 + 1);
        v11 = [*(a1 + 32) objectForKeyedSubscript:{*(*(&v12 + 1) + 8 * v9), v12}];
        SQLiteBindFoundationValue(v3, v10, v11);

        v9 = v9 + 1;
        v10 = v8;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void sub_100003D40(id *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([v10 isEqualToString:@"ROWID"] & 1) == 0)
  {
    v6 = [a1[6] foreignDatabaseTableForProperty:v10];
    if (v6)
    {
      v7 = v6;
      v8 = [a1[6] foreignDatabaseColumnForProperty:v10];
    }

    else
    {
      v8 = v10;
      v7 = a1[4];
    }

    v9 = [a1[5] objectForKey:v7];
    if (!v9)
    {
      v9 = objc_alloc_init(NSMutableDictionary);
      [a1[5] setObject:v9 forKey:v7];
    }

    [v9 setObject:v5 forKey:v8];
  }
}

uint64_t sub_100003E84(uint64_t a1)
{

  return objc_opt_isKindOfClass();
}

id sub_100003E9C(char a1)
{
  if (a1)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_100003EB4(uint64_t a1)
{
  v2 = sub_1001AAD08(*(a1 + 32), *(a1 + 40));
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000352C;
  v7[3] = &unk_100212BD0;
  v11 = *(a1 + 64);
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v8 = v3;
  v9 = v4;
  v10 = *(a1 + 56);
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = *(*(*(a1 + 56) + 8) + 24);

  return v5;
}

void sub_100003F78(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = 138543618;
  v7 = objc_opt_class();
  v8 = 2112;
  v9 = a2;
  v5 = v7;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Error: %@", &v6, 0x16u);
}

uint64_t sub_100004020(uint64_t a1)
{
  v2 = sqlite3_step(*(a1 + 48));
  if (v2 == 100)
  {
    (*(*(a1 + 40) + 16))();
  }

  return v2;
}

uint64_t sub_100004080(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100004148;
  v3[3] = &unk_100212CC0;
  v3[4] = &v4;
  sub_1001AB28C(a1, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void sub_100004130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

sqlite3_int64 sub_100004148(sqlite3_int64 result, sqlite3_int64 a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v5 = result;
    result = sub_1001AD630(a2, 0);
    *(*(*(v5 + 32) + 8) + 24) = result;
  }

  *a4 = 1;
  return result;
}

id sub_100004190(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x3032000000;
    v7 = sub_10000429C;
    v8 = sub_1000042AC;
    v9 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000042B4;
    v3[3] = &unk_100212CC0;
    v3[4] = &v4;
    sub_1001AB28C(a1, v3);
    v1 = v5[5];
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

void sub_100004284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000429C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000042B4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    v6 = sub_1001AD804(a2, 0);
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  *a4 = 1;
}

uint64_t sub_100004308(uint64_t a1)
{
  if (a1)
  {
    v4 = 0;
    v5 = &v4;
    v6 = 0x2020000000;
    v7 = 0;
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_1000043D0;
    v3[3] = &unk_100212CC0;
    v3[4] = &v4;
    sub_1001AB28C(a1, v3);
    v1 = *(v5 + 24);
    _Block_object_dispose(&v4, 8);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1000043B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1000043D0(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (a2)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
  }

  *a4 = 1;
  return result;
}

void sub_1000060DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v10 = 0;
    v7 = sub_1001AB6FC(a1, v5, &v10);
    v8 = v10;
    if (v7)
    {
      v9 = sub_1001AB214([SQLiteQueryResults alloc], v7);
    }

    else
    {
      v9 = 0;
    }

    v6[2](v6, v9, v8);
    [v7 clearBindings];
    sub_1001ACED0(v7);
  }
}

void sub_1000061F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v11 = 0;
    v7 = sub_1001ABA14(a1, v5, &v11);
    v8 = v11;
    v9 = sub_1001ADD04([SQLitePreparedStatement alloc], *(a1 + 16), v5);
    if (v9)
    {
      [*(a1 + 32) setObject:v7 forKey:v9];
    }

    if (v7)
    {
      v10 = sub_1001AB214([SQLiteQueryResults alloc], v7);
    }

    else
    {
      v10 = 0;
    }

    v6[2](v6, v10, v8);
    sub_1001ACE2C(v7);
    if (v9)
    {
      [*(a1 + 32) removeObjectForKey:v9];
    }
  }
}

uint64_t sub_10000635C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSUUID UUID];
    v5 = [v4 UUIDString];
    v6 = [v5 stringByReplacingOccurrencesOfString:@"-" withString:&stru_100227AF8];
    v7 = [NSString stringWithFormat:@"SP_%@", v6];

    v8 = [NSString stringWithFormat:@"SAVEPOINT %@", v7];
    LODWORD(v5) = sub_1001ABB68(a1, v8, 0, 0);

    if (v5)
    {
      if (v3[2](v3))
      {
        sub_100006CF0(v7, a1, &v11);
        a1 = v11;
        goto LABEL_6;
      }

      v9 = [NSString stringWithFormat:@"ROLLBACK TRANSACTION TO SAVEPOINT %@", v7];
      sub_1001ABB68(a1, v9, 0, 0);
    }

    a1 = 0;
LABEL_6:
  }

  return a1;
}

void sub_1000064FC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    if (v4 < 1)
    {
      if (!sub_1001ABB68(a1, @"BEGIN DEFERRED TRANSACTION", 0, 0))
      {
        goto LABEL_6;
      }

      *(a1 + 40) = 1;
      *(a1 + 48) = 0;
    }

    else
    {
      *(a1 + 40) = v4 + 1;
    }

    os_variant_has_internal_content();
    v5 = v3[2](v3);
    v6 = *(a1 + 40);
    v7 = v5 ^ 1;
    v8 = (*(a1 + 48) | v5 ^ 1) & 1;
    *(a1 + 48) = (*(a1 + 48) | v7) & 1;
    *(a1 + 40) = --v6;
    if (!v6)
    {
      sub_100006E28(v8, a1);
    }
  }

LABEL_6:
}

id sub_1000065E0(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = sub_1000069DC;
    v14 = sub_1000069EC;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000069F4;
    v9[3] = &unk_100212D70;
    v9[5] = &v10;
    v9[6] = [v5 UTF8String];
    v9[4] = a1;
    sub_1001AC098(a1, a3, v9);
    v7 = v11[5];
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_100006708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100006720(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100006810;
    v6[3] = &unk_100212AB8;
    v7 = v3;
    v8 = &v9;
    sub_1000061F0(a1, @"SELECT name FROM sqlite_master where name = ?", v6);
    LOBYTE(a1) = *(v10 + 24);

    _Block_object_dispose(&v9, 8);
  }

  return a1 & 1;
}

void sub_1000067F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100006810(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindString:v3 atPosition:1];
  LOBYTE(v3) = sub_100004308(v4);

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

void sub_1000068A4(uint64_t a1)
{
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

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100006998(sqlite3_context *a1)
{
  +[NSDate timeIntervalSinceReferenceDate];

  sqlite3_result_int64(a1, v2);
}

uint64_t sub_1000069DC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1000069F4(uint64_t a1)
{
  ppStmt = 0;
  v2 = sqlite3_prepare_v2(*(*(a1 + 32) + 16), *(a1 + 48), -1, &ppStmt, 0);
  if (SQLiteResultIsSuccess(v2))
  {
    v3 = [SQLiteStatement alloc];
    v4 = sub_1001ACC8C(&v3->super.isa, ppStmt, *(a1 + 32));
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    sqlite3_finalize(ppStmt);
  }

  return v2;
}

void sub_100006B14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_100006B9C(uint64_t a1, NSObject *a2)
{
  v3 = sub_1001AB480(*(a1 + 56), a2);
  v4 = 138543362;
  v5 = v3;
  _os_log_fault_impl(&_mh_execute_header, a2, OS_LOG_TYPE_FAULT, "Connection taken down HARD, please call close before deallocating: %{public}@", &v4, 0xCu);
}

void sub_100006C38(void *a1)
{
  v1 = a1;
  v2 = os_log_create("com.apple.AdAttributionKit", "SQL");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100006B4C();
    _os_log_fault_impl(v3, v4, v5, v6, v7, v8);
  }

  objc_end_catch();
}

void sub_100006CF0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [NSString stringWithFormat:@"RELEASE SAVEPOINT %@", a1];
  *a3 = sub_1001ABB68(a2, v5, 0, 0);
}

void sub_100006D6C(void *a1)
{
  v1 = objc_begin_catch(a1);
  v2 = os_log_create("com.apple.AdAttributionKit", "SQL");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    sub_100006B4C();
    _os_log_impl(v3, v4, v5, v6, v7, v8);
  }

  objc_end_catch();
}

void sub_100006E28(char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = @"ROLLBACK TRANSACTION";
  }

  else
  {
    v3 = @"COMMIT TRANSACTION";
  }

  sub_1001ABB68(a2, v3, 0, 0);
  sub_1001ABEC0(a2);
}

id sub_100007088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 32) + 16);
  if (a3)
  {
    return [v3 setObject:a3 forKey:a2];
  }

  else
  {
    return [v3 removeObjectForKey:a2];
  }
}

void sub_100007580(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (v5 && *(a1 + 48) == 1)
  {
    *(*(a1 + 32) + 24) = 0;
    objc_storeStrong((*(a1 + 32) + 16), a3);
  }

  (*(*(a1 + 40) + 16))();
}

void SQLiteBindFoundationValue(void *a1, uint64_t a2, void *a3)
{
  v9 = a1;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindArray:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindDictionary:v5 atPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindString:v5 atPosition:a2];
    goto LABEL_10;
  }

  if (!v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    [v9 bindNullAtPosition:a2];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 timeIntervalSinceReferenceDate];
LABEL_15:
    [v9 bindDouble:a2 atPosition:?];
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v9 bindData:v5 atPosition:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v9 bindUUID:v5 atPosition:a2];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v5 absoluteString];
        [v9 bindString:v6 atPosition:a2];
      }

      else
      {
        v7 = [v5 objCType];
        v8 = *v7;
        if ((v8 == 102 || v8 == 100) && !v7[1])
        {
          [v5 doubleValue];
          goto LABEL_15;
        }

        [v9 bindInt64:objc_msgSend(v5 atPosition:{"longLongValue"), a2}];
      }
    }
  }

LABEL_10:
}

__CFString *SQLitePlaceholderGenerator(uint64_t a1)
{
  if (a1)
  {
    v2 = [[NSMutableString alloc] initWithCapacity:3 * a1 + 1];
    [v2 appendString:@"?"];
    v3 = a1 - 1;
    if (a1 != 1)
    {
      do
      {
        [v2 appendString:{@", ?"}];
        --v3;
      }

      while (v3);
    }

    v4 = [v2 copy];
  }

  else
  {
    v4 = &stru_100227AF8;
  }

  return v4;
}

void sub_1000081D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_1000082D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000083B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000083D0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(*(a1 + 32) + 8)];
  *(*(*(a1 + 40) + 8) + 24) = [v6 deleteFromDatabase];
  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

void sub_100008624(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(*(a1 + 40));
  [v4 setDatabaseID:a2];
  (*(*(a1 + 32) + 16))();
}

void sub_1000086A4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = a3;
  v7 = objc_alloc_init(v5);
  [v7 setDatabaseID:a2];
  [v7 setValuesWithDictionary:v6];

  (*(*(a1 + 32) + 16))();
}

void sub_1000088E0(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v14 = 1;
  [a1[4] applyBinding:v5 atIndex:&v14];
  v7 = [a1[5] count];
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v13[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100008A04;
  v8[3] = &unk_100212F18;
  v12 = v7;
  v9 = a1[5];
  v10 = a1[6];
  v11 = v13;
  sub_1001AB28C(v5, v8);

  _Block_object_dispose(v13, 8);
}

void sub_1000089EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100008A04(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [NSMutableDictionary dictionaryWithCapacity:a1[7]];
  v9 = v8;
  if (v5)
  {
    v10 = a1[4];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100008B58;
    v15[3] = &unk_100212B08;
    v11 = v8;
    v16 = v11;
    v12 = v5;
    v17 = v12;
    [v10 enumerateObjectsUsingBlock:v15];
    v13 = a1[5];
    v14 = sub_1001AD630(v12, 0);
    ++*(*(a1[6] + 8) + 24);
    (*(v13 + 16))(v13, v14, v11);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_100008B58(uint64_t a1, void *a2, int a3)
{
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = SQLiteCopyFoundationValue(v5, (a3 + 1));
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

id sub_1000091C0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000932C;
  v19 = sub_10000933C;
  v20 = 0;
  v7 = sub_100009344(v6, v4, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000093C8;
  v11[3] = &unk_100212F68;
  v13 = &v15;
  v14 = v6;
  v8 = v4;
  v12 = v8;
  [v7 enumeratePersistentIDsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_100009314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000932C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100009344(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = sub_100009B04(v6, v5, v4, 0, 0, 0, 0);

  return v7;
}

void sub_1000093C8(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

id sub_100009428(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_10000932C;
  v19 = sub_10000933C;
  v20 = objc_opt_new();
  v7 = sub_100009344(v6, v4, v5);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000095A8;
  v11[3] = &unk_100212F90;
  v14 = v6;
  v8 = v4;
  v12 = v8;
  v13 = &v15;
  [v7 enumeratePersistentIDsUsingBlock:v11];
  v9 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_100009590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000095A8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_alloc(*(a1 + 48)) initWithPersistentID:a2 onConnection:*(a1 + 32)];
  [*(*(*(a1 + 40) + 8) + 40) addObject:v3];
}

id sub_100009614(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1000096A4(v9, v8, @"COUNT", v7, v6);

  return v10;
}

id sub_1000096A4(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = objc_opt_self();
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_10000932C;
  v32 = sub_10000933C;
  v33 = 0;
  v13 = [[SQLiteQueryDescriptor alloc] initWithEntityClass:v12];
  v15 = v13;
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v14, v10, 64);
  }

  v16 = [NSString alloc];
  v17 = [v12 disambiguatedSQLForProperty:v8];
  v18 = [v16 initWithFormat:@"%@(%@)", v9, v17];

  v34 = v8;
  v19 = [NSArray arrayWithObjects:&v34 count:1];
  v20 = [NSArray arrayWithObject:v18];
  v21 = [(SQLiteQueryDescriptor *)v15 _newSelectSQLWithProperties:v19 columns:v20];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_10000AC44;
  v25[3] = &unk_100212AB8;
  v22 = v15;
  v26 = v22;
  v27 = &v28;
  sub_1000061F0(v11, v21, v25);
  v23 = v29[5];

  _Block_object_dispose(&v28, 8);

  return v23;
}

void sub_100009908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100009930(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1000096A4(v9, v8, @"MAX", v7, v6);

  return v10;
}

id sub_1000099C0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1000096A4(v9, v8, @"MIN", v7, v6);

  return v10;
}

_UNKNOWN **sub_100009A50(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_1000096A4(v9, v8, @"SUM", v7, v6);

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = &off_1002283E0;
  }

  v12 = v11;

  return v11;
}

id sub_100009B04(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = a2;
  v16 = objc_opt_self();
  v17 = sub_100009DB4(v16, v15, v14, v13, v12, a6, a7, v16);

  return v17;
}

id sub_100009BC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = sub_100009B04(v9, v8, v7, v6, 0, 0, 0);

  return v10;
}

id sub_100009C58(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = objc_opt_self();
  v13 = sub_100009B04(v12, v11, v10, v9, v8, 0, 0);

  return v13;
}

id sub_100009D04(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6)
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = sub_100009B04(v14, v13, v12, v11, v10, a6, 0);

  return v15;
}

id sub_100009DB4(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a2;
  objc_opt_self();
  v18 = [SQLiteQueryDescriptor alloc];
  v19 = [a8 memoryEntityClass];
  if (v18 && (v20 = v19, v28.receiver = v18, v28.super_class = SQLiteQueryDescriptor, (v21 = objc_msgSendSuper2(&v28, "init")) != 0))
  {
    v23 = v21;
    v21[1] = a8;
    v21[4] = v20;
    objc_setProperty_nonatomic_copy(v21, v22, v15, 56);
    objc_setProperty_nonatomic_copy(v23, v24, v16, 48);
    objc_setProperty_nonatomic_copy(v23, v25, v14, 64);
    v23[2] = a6;
    v23[3] = a7;
  }

  else
  {
    v23 = 0;
  }

  v26 = [[SQLiteQuery alloc] initOnConnection:v17 descriptor:v23];

  return v26;
}

id sub_100009F04(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a2;
  v8 = objc_opt_self();
  v9 = sub_100009DB4(v8, v7, v6, 0, 0, 0, 0, a4);

  return v9;
}

id sub_100009F90(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_self();
  v12 = sub_100009DB4(v11, v10, v9, v8, 0, 0, 0, a5);

  return v12;
}

id sub_10000A034(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = sub_100009DB4(v14, v13, v12, v11, v10, 0, 0, a6);

  return v15;
}

id sub_10000A0E8(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v11 = a5;
  v12 = a3;
  v13 = a2;
  v14 = objc_opt_self();
  v15 = sub_100009DB4(v14, v13, v12, v11, v11, a6, 0, a7);

  return v15;
}

void sub_10000A190(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = SQLiteCopyFoundationValue(a2, 0);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  *a4 = 1;
}

id sub_10000A1E0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_self();
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10000932C;
  v15 = sub_10000933C;
  v16 = 0;
  v7 = sub_10000A328(v6, v4, v5);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10000A3A0;
  v10[3] = &unk_100212FB8;
  v10[4] = &v11;
  [v7 enumerateMemoryEntitiesUsingBlock:v10];
  v8 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v8;
}

void sub_10000A310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10000A328(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = objc_opt_self();
  v7 = sub_10000A3D8(v6, v5, v4, 0);

  return v7;
}

id sub_10000A3D8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a2;
  v9 = objc_opt_self();
  v10 = [SQLiteQueryDescriptor alloc];
  v11 = [v9 databaseEntityClass];
  if (v10 && (v12 = v11, v19.receiver = v10, v19.super_class = SQLiteQueryDescriptor, (v13 = objc_msgSendSuper2(&v19, "init")) != 0))
  {
    v15 = v13;
    v13[1] = v12;
    v13[4] = v9;
    objc_setProperty_nonatomic_copy(v13, v14, v7, 56);
    objc_setProperty_nonatomic_copy(v15, v16, v6, 64);
  }

  else
  {
    v15 = 0;
  }

  v17 = [[SQLiteQuery alloc] initOnConnection:v8 descriptor:v15];

  return v17;
}

id sub_10000A984(uint64_t a1, uint64_t a2)
{
  v5 = 1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 64);
  }

  else
  {
    v3 = 0;
  }

  return [v3 applyBinding:a2 atIndex:&v5];
}

uint64_t sub_10000A9C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[2];
  if (v3)
  {
    v3 = *(v3 + 8);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000083D0;
  v6[3] = &unk_100212E50;
  v6[6] = v3;
  v4 = *(a1 + 40);
  v6[4] = v2;
  v6[5] = v4;
  [v2 enumeratePersistentIDsUsingBlock:v6];
  return *(*(*(a1 + 40) + 8) + 24);
}

void sub_10000AC44(uint64_t a1, void *a2)
{
  v7 = 1;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *(v3 + 64);
  }

  else
  {
    v4 = 0;
  }

  v5 = a2;
  [v4 applyBinding:v5 atIndex:&v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000A190;
  v6[3] = &unk_100212CC0;
  v6[4] = *(a1 + 40);
  sub_1001AB28C(v5, v6);
}

void sub_10000AD50(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = *(a1 + 32);
  if (!v5 || [v5 containsObject:v7])
  {
    v6 = SQLiteCopyFoundationValue(*(a1 + 48), a3);
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }
}

id SQLiteCopyFoundationValue(void *a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = v3;
  if (!v3 || (v2 & 0x80000000) != 0)
  {
    if (!v3)
    {
      goto LABEL_29;
    }

    goto LABEL_7;
  }

  if (*(v3 + 2) <= v2 || (v5 = 0, v6 = *(v3[2] + v2), !*(v3[2] + v2)))
  {
LABEL_7:
    v7 = sqlite3_column_type(v3[6], v2);
    if (v7 <= 2)
    {
      if (v7 == 1)
      {
        v8 = [NSNumber numberWithLongLong:sqlite3_column_int64(v4[6], v2)];
        goto LABEL_14;
      }

      if (v7 == 2)
      {
        v8 = [NSNumber numberWithDouble:sqlite3_column_double(v4[6], v2)];
LABEL_14:
        v5 = v8;
        goto LABEL_15;
      }

LABEL_29:
      v8 = sub_1001AD364(v4, v2);
      goto LABEL_14;
    }

    if (v7 == 5)
    {
      v5 = 0;
      goto LABEL_15;
    }

    if (v7 != 3)
    {
      goto LABEL_29;
    }

LABEL_28:
    v8 = sub_1001AD928(v4, v2);
    goto LABEL_14;
  }

  if (*(v3[2] + v2) > 3u)
  {
    switch(v6)
    {
      case 4:
        v8 = sub_1001ADACC(v3, v2);
        goto LABEL_14;
      case 5:
        goto LABEL_28;
      case 6:
        v8 = sub_1001AD2F4(v3, v2);
        goto LABEL_14;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        v8 = sub_1001AD470(v3, v2);
        goto LABEL_14;
      case 2:
        v8 = sub_1001AD694(v3, v2);
        goto LABEL_14;
      case 3:
        v8 = sub_1001AD9F4(v3, v2);
        goto LABEL_14;
    }
  }

LABEL_15:

  return v5;
}

uint64_t sub_10000AF9C(uint64_t a1, signed int a2)
{
  result = 0;
  if (a1 && (a2 & 0x80000000) == 0)
  {
    if (*(a1 + 8) <= a2)
    {
      return 0;
    }

    else
    {
      return *(*(a1 + 16) + a2);
    }
  }

  return result;
}

uint64_t sub_10000B034(uint64_t a1, int a2)
{
  v3 = *(a1 + 48);

  return sqlite3_column_type(v3, a2);
}

id sub_10000B050()
{
  v3 = *(v1 + 40);

  return [v3 indexOfObject:v0];
}

uint64_t SQLiteApplyConnectionOptions(sqlite3 *a1, void *a2)
{
  v3 = a2;
  sqlite3_extended_result_codes(a1, 1);
  v4 = sub_1001AB494(v3);

  if (v4)
  {
    sub_1001AB494(v3);
  }

  v5 = sqlite3_exec(a1, "PRAGMA journal_mode=WAL", 0, 0, 0);
  if (!v5)
  {
    v6 = [[NSString alloc] initWithFormat:@"PRAGMA cache_size=%ld", sub_1001AB474(v3)];
    v5 = sqlite3_exec(a1, [v6 UTF8String], 0, 0, 0);
  }

  return v5;
}

id SQLiteCreateErrorForResultCode(int a1)
{
  if (a1 - 100 < 2 || a1 == 0)
  {
    v2 = 0;
  }

  else
  {
    v4 = sqlite3_errstr(a1);
    if (v4 && *v4)
    {
      v8 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:v4];
      v9 = v5;
      v6 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    }

    else
    {
      v6 = 0;
    }

    v2 = [[NSError alloc] initWithDomain:@"SQLiteErrorDomain" code:a1 userInfo:v6];
  }

  return v2;
}

void SQLiteTrashDatabaseName(void *a1, void *a2)
{
  v3 = a1;
  v4 = +[NSUUID UUID];
  v5 = [v4 UUIDString];
  v6 = [v5 substringToIndex:8];

  v7 = SQLiteGetRelatedFilePath(v3, 0);
  v8 = SQLiteGetRelatedFilePath(v3, 1);
  v9 = +[NSFileManager defaultManager];
  v10 = [v7 stringByAppendingString:v6];
  v21 = 0;
  [v9 moveItemAtPath:v7 toPath:v10 error:&v21];
  v11 = v21;

  v12 = +[NSFileManager defaultManager];
  v13 = [v8 stringByAppendingString:v6];
  v20 = v11;
  [v12 moveItemAtPath:v8 toPath:v13 error:&v20];
  v14 = v20;

  v15 = +[NSFileManager defaultManager];
  v16 = [v3 stringByAppendingString:v6];
  v19 = v14;
  [v15 moveItemAtPath:v3 toPath:v16 error:&v19];

  v17 = v19;
  if (v17)
  {
    v18 = v17;
    *a2 = v17;
  }
}

id SQLiteGetRelatedFilePath(void *a1, uint64_t a2)
{
  v4 = a1;
  v5 = v4;
  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_6;
    }

    v6 = @"-wal";
  }

  else
  {
    v6 = @"-shm";
  }

  v2 = [v4 stringByAppendingString:v6];
LABEL_6:

  return v2;
}

id SQLiteDeleteDatabase(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_alloc_init(NSFileManager);
  v5 = SQLiteGetRelatedFilePath(v3, 0);
  v15 = 0;
  [v4 removeItemAtPath:v5 error:&v15];
  v6 = v15;

  v7 = SQLiteGetRelatedFilePath(v3, 1);
  v14 = v6;
  [v4 removeItemAtPath:v7 error:&v14];
  v8 = v14;

  v13 = v8;
  v9 = [v4 removeItemAtPath:v3 error:&v13];

  v10 = v13;
  if (a2 && v10)
  {
    v11 = v10;
    *a2 = v10;
  }

  return v9;
}

uint64_t SQLiteOpenDatabaseAndApplyOptions(sqlite3 **a1, void *a2)
{
  v3 = a2;
  ppDb = 0;
  v5 = sub_1001AB480(v3, v4);
  if (sub_1001AB4D4(v3))
  {
    v6 = 2;
  }

  else
  {
    v7 = objc_alloc_init(NSFileManager);
    v8 = [v5 stringByDeletingLastPathComponent];
    [v7 createDirectoryAtPath:v8 withIntermediateDirectories:1 attributes:0 error:0];

    v6 = 6;
  }

  v9 = sub_1001AB4B4(v3);
  v10 = v9;
  if (v9)
  {
    v6 |= SQLiteOpenFlagForProtectionType(v9);
  }

  v11 = sqlite3_open_v2([v5 fileSystemRepresentation], &ppDb, v6, 0);
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = SQLiteApplyConnectionOptions(ppDb, v3);
    if (!v12)
    {
      *a1 = ppDb;
      goto LABEL_12;
    }
  }

  if (ppDb)
  {
    sqlite3_close(ppDb);
  }

LABEL_12:

  return v12;
}

uint64_t SQLiteOpenFlagForProtectionType(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    if ([v1 isEqualToString:NSFileProtectionNone])
    {
      v3 = 0x400000;
    }

    else if ([v2 isEqualToString:NSFileProtectionComplete])
    {
      v3 = 0x100000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUnlessOpen])
    {
      v3 = 0x200000;
    }

    else if ([v2 isEqualToString:NSFileProtectionCompleteUntilFirstUserAuthentication])
    {
      v3 = 3145728;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id AKErrorWithDescription(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = v7;
  if (v6)
  {
    [v7 setObject:v6 forKeyedSubscript:NSDebugDescriptionErrorKey];
  }

  v9 = [NSError errorWithDomain:v5 code:a2 userInfo:v8];

  return v9;
}

uint64_t sub_10000B894()
{
  type metadata accessor for TaskGreyhound(0);
  swift_allocObject();
  result = sub_10000B8D4();
  qword_10023FC28 = result;
  return result;
}

uint64_t sub_10000B8D4()
{
  v1 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_10000CDE0(&qword_100239EE8, &qword_1001B3648);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v24 - v6;
  v8 = sub_10000CDE0(&qword_100239EF0, &qword_1001B3650);
  v9 = v8 - 8;
  v10 = __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v24 - v13;
  swift_defaultActor_initialize();
  sub_10000CDE0(&qword_100239DB8, &qword_1001B35A0);
  (*(v5 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v4);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v5 + 8))(v7, v4);
  sub_10000D7AC(v14, v12);
  v15 = *(v9 + 56);
  v16 = OBJC_IVAR____TtC20AttributionKitDaemon13TaskGreyhound_taskStream;
  v17 = sub_10000CDE0(&qword_100239EF8, &qword_1001B3658);
  v18 = *(v17 - 8);
  (*(v18 + 32))(v0 + v16, v12, v17);
  v19 = sub_10000CDE0(&qword_100239ED8, &qword_1001B3638);
  v20 = *(v19 - 8);
  (*(v20 + 8))(&v12[v15], v19);
  sub_10000D7AC(v14, v12);
  (*(v20 + 32))(v0 + OBJC_IVAR____TtC20AttributionKitDaemon13TaskGreyhound_taskScheduler, &v12[*(v9 + 56)], v19);
  (*(v18 + 8))(v12, v17);
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v3, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = v0;

  sub_10001267C(0, 0, v3, &unk_1001B3668, v22);

  sub_10000DAF8(v14, &qword_100239EF0, &qword_1001B3650);
  return v0;
}

uint64_t sub_10000BCA0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10000BE24();
}

uint64_t sub_10000BD30()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10000BE24()
{
  v1[17] = v0;
  v2 = sub_10000CDE0(&qword_100239F00, &unk_1001B3670);
  v1[18] = v2;
  v1[19] = *(v2 - 8);
  v1[20] = swift_task_alloc();

  return _swift_task_switch(sub_10000BEF0, v0, 0);
}

uint64_t sub_10000BEF0()
{
  sub_10000CDE0(&qword_100239EF8, &qword_1001B3658);
  AsyncStream.makeAsyncIterator()();
  v1 = sub_10000DD18(&qword_100239F08, type metadata accessor for TaskGreyhound, &unk_1001B3608);
  v0[21] = v1;
  v2 = v0[17];
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_10000C010;
  v4 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v2, v1, v4);
}

uint64_t sub_10000C010()
{
  v1 = *(*v0 + 136);

  return _swift_task_switch(sub_10000C120, v1, 0);
}

uint64_t sub_10000C120()
{
  if (*(v0 + 40))
  {
    sub_10000DA64((v0 + 16), v0 + 56);
    type metadata accessor for Transaction();
    *(v0 + 184) = swift_initStackObject();
    *(v0 + 192) = sub_1001799E0(0xD000000000000013, 0x80000001001CAF90);
    v1 = *(v0 + 80);
    v2 = *(v0 + 88);
    sub_10000DA7C((v0 + 56), v1);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 200) = AssociatedTypeWitness;
    *(v0 + 208) = *(AssociatedTypeWitness - 8);
    v4 = swift_task_alloc();
    *(v0 + 216) = v4;
    v8 = (*(v2 + 16) + **(v2 + 16));
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v5[1] = sub_10000C374;

    return v8(v4, v1, v2);
  }

  else
  {
    (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10000C374()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = v2[17];
    v4 = sub_10000C6C8;
  }

  else
  {
    v5 = v2[17];
    (*(v2[26] + 8))(v2[27], v2[25]);
    v4 = sub_10000C4AC;
    v3 = v5;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10000C4AC()
{
  v17 = v0;

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FC70);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[24];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 24);
    v9 = *(v5 + 32);

    v10 = sub_10017AD04(v8, v9, &v16);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "Transaction %s out of scope", v6, 0xCu);
    sub_10000DB58(v7);
  }

  else
  {
  }

  sub_10000DB58(v0 + 7);
  v11 = v0[21];
  v12 = v0[17];
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_10000C010;
  v14 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v12, v11, v14);
}

uint64_t sub_10000C6C8()
{

  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000DAC0(v1, qword_10023FC70);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Task failed with error: %@", v4, 0xCu);
    sub_10000DAF8(v5, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  sub_10000DB58(v0 + 7);
  v7 = v0[21];
  v8 = v0[17];
  v9 = swift_task_alloc();
  v0[22] = v9;
  *v9 = v0;
  v9[1] = sub_10000C010;
  v10 = v0[18];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, v8, v7, v10);
}

uint64_t sub_10000C8E0()
{
  v1 = OBJC_IVAR____TtC20AttributionKitDaemon13TaskGreyhound_taskStream;
  v2 = sub_10000CDE0(&qword_100239EF8, &qword_1001B3658);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC20AttributionKitDaemon13TaskGreyhound_taskScheduler;
  v4 = sub_10000CDE0(&qword_100239ED8, &qword_1001B3638);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10000C9BC(uint64_t a1)
{
  v2[7] = a1;
  v3 = sub_10000CDE0(&qword_100239ED0, &qword_1001B3630);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[10] = v4;
  v2[11] = v5;

  return _swift_task_switch(sub_10000CA88, v5, 0);
}

uint64_t sub_10000CA88()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  sub_10000CE28(v0[7], (v0 + 2));
  sub_10000CDE0(&qword_100239ED8, &qword_1001B3638);
  AsyncStream.Continuation.yield(_:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t type metadata accessor for TaskGreyhound(uint64_t a1)
{
  result = qword_100239DA0;
  if (!qword_100239DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000CBB4(uint64_t a1)
{
  sub_10000CD08(319, &qword_100239DB0, &type metadata accessor for AsyncStream);
  if (v1 <= 0x3F)
  {
    sub_10000CD08(319, &unk_100239DC0, &type metadata accessor for AsyncStream.Continuation);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_10000CCC0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_10000CD08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_10000CCC0(&qword_100239DB8, &qword_1001B35A0);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

__n128 sub_10000CD74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_10000CD84(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000CDA4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000CDE0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000CE28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000CE8C()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_10000CEC8(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_10000CF1C(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t sub_10000CF90(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_10000D008(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_10000D088@<X0>(void *a2@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D0E4(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239F70, type metadata accessor for AKSQLError, &unk_1001B38A0);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10000D150(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239F70, type metadata accessor for AKSQLError, &unk_1001B38A0);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10000D1C0(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);

  return _BridgedStoredNSError._getEmbeddedNSError()(a1, v2);
}

BOOL sub_10000D240(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

Swift::Int sub_10000D33C(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10000D3A4(void *a1, uint64_t *a2)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

uint64_t sub_10000D43C(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);

  return _BridgedStoredNSError.errorCode.getter(a1, v2);
}

uint64_t sub_10000D4A8(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);

  return _BridgedStoredNSError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10000D514(void *a1, uint64_t a2)
{
  v4 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);
  v5 = a1;

  return _BridgedStoredNSError.init(_bridgedNSError:)(v5, a2, v4);
}

uint64_t sub_10000D5C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);

  return _BridgedStoredNSError.hash(into:)(a1, a2, v4);
}

Swift::Int sub_10000D644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void *sub_10000D6A4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10000D6CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)(v4, v5, a3, WitnessTable);
}

uint64_t sub_10000D738@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t sub_10000D780@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000D7AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_100239EF0, &qword_1001B3650);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000D81C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000D85C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_10000BCA0();
}

uint64_t sub_10000D910(uint64_t a1)
{
  v2 = sub_10000DD18(&qword_100239FB0, type metadata accessor for _ASCLockupKey, &unk_1001B3A18);
  v3 = sub_10000DD18(&qword_100239FB8, type metadata accessor for _ASCLockupKey, &unk_1001B3940);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_10000D9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000DD18(&qword_100239FA8, type metadata accessor for AKSQLError, &unk_1001B3A58);

  return static _BridgedStoredNSError.== infix(_:_:)(a1, a2, a3, v6);
}

uint64_t sub_10000DA64(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void *sub_10000DA7C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10000DAC0(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_10000DAF8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000CDE0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_10000DB58(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_10000DC00(uint64_t a1, int a2)
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

uint64_t sub_10000DC20(uint64_t result, int a2, int a3)
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

__n128 sub_10000DC5C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_10000DC70(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000DC90(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 20) = v3;
  return result;
}

uint64_t sub_10000DD18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_10000E000()
{
  result = qword_100239F98;
  if (!qword_100239F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100239F98);
  }

  return result;
}

void sub_10000E10C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void *sub_10000E200(uint64_t a1, uint64_t (**a2)(char *, uint64_t, uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = __chkstk_darwin(v4);
  v100 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = v5;
  v8 = *(a1 + 16);
  if (v8)
  {
    v98 = v6;
    v99 = a2;
    v9 = (a1 + 32);
    v10 = v8 - 1;
    v11 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v12 = v9[1];
      v106 = *v9;
      v107 = v12;
      v108[0] = v9[2];
      *(v108 + 9) = *(v9 + 41);
      v13 = *(&v12 + 1);
      sub_10000E7C0(&v106, &v102);
      sub_10000E7C0(&v106, &v102);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v118 = v11;
      v15 = sub_1000C3CA8(v13);
      v17 = v11[2];
      v18 = (v16 & 1) == 0;
      v19 = __OFADD__(v17, v18);
      v20 = v17 + v18;
      if (v19)
      {
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v21 = v16;
      if (v11[3] < v20)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_8;
      }

      v30 = v15;
      sub_10009873C();
      v15 = v30;
      if (v21)
      {
LABEL_9:
        v11 = v118;
        v23 = (v118[7] + (v15 << 6));
        v25 = v23[1];
        v24 = v23[2];
        v26 = *v23;
        *(v104 + 9) = *(v23 + 41);
        v103 = v25;
        v104[0] = v24;
        v102 = v26;
        v27 = v106;
        v28 = v107;
        v29 = v108[0];
        *(v23 + 41) = *(v108 + 9);
        v23[1] = v28;
        v23[2] = v29;
        *v23 = v27;
        sub_10000E81C(&v102);
        sub_10000E81C(&v106);
        if (!v10)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

LABEL_12:
      v11 = v118;
      v118[(v15 >> 6) + 8] |= 1 << v15;
      *(v11[6] + 8 * v15) = v13;
      v31 = (v11[7] + (v15 << 6));
      v32 = *(v108 + 9);
      v34 = v107;
      v33 = v108[0];
      *v31 = v106;
      v31[1] = v34;
      v31[2] = v33;
      *(v31 + 41) = v32;
      sub_10000E81C(&v106);
      v35 = v11[2];
      v19 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v19)
      {
        goto LABEL_37;
      }

      v11[2] = v36;
      if (!v10)
      {
LABEL_15:
        v4 = v101;
        v6 = v98;
        a2 = v99;
        v37 = v99[2];
        if (v37)
        {
          goto LABEL_16;
        }

        return v11;
      }

LABEL_14:
      --v10;
      v9 += 4;
    }

    sub_100097EC4(v20, isUniquelyReferenced_nonNull_native);
    v15 = sub_1000C3CA8(v13);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_40;
    }

LABEL_8:
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  v11 = &_swiftEmptyDictionarySingleton;
  v37 = a2[2];
  if (v37)
  {
LABEL_16:
    v38 = a2 + 4;
    v98 = v6 + 1;
    v99 = (v6 + 2);
    v39 = v37 - 1;
    v40 = &_swiftEmptyDictionarySingleton;
    while (1)
    {
      v41 = *(v38 + 11);
      v115 = *(v38 + 10);
      v116 = v41;
      v117[0] = *(v38 + 12);
      *(v117 + 9) = *(v38 + 201);
      v42 = *(v38 + 7);
      v111 = *(v38 + 6);
      v112 = v42;
      v43 = *(v38 + 9);
      v113 = *(v38 + 8);
      v114 = v43;
      v44 = *(v38 + 3);
      v108[0] = *(v38 + 2);
      v108[1] = v44;
      v45 = *(v38 + 5);
      v109 = *(v38 + 4);
      v110 = v45;
      v46 = *(v38 + 1);
      v106 = *v38;
      v107 = v46;
      if (BYTE8(v117[0]))
      {
        v47 = Logger.impression.unsafeMutableAddressor();
        v48 = v100;
        (*v99)(v100, v47, v4);
        v49 = Logger.logObject.getter();
        v50 = v4;
        v51 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v49, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&_mh_execute_header, v49, v51, "Missing ordering index for skan impression", v52, 2u);
        }

        (*v98)(v48, v50);
        v4 = v50;
        if (!v39)
        {
          return v11;
        }

        goto LABEL_33;
      }

      v53 = *&v117[0];
      sub_10000E870(&v106, &v102);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v118 = v40;
      v55 = sub_1000C3CA8(v53);
      v57 = v40[2];
      v58 = (v56 & 1) == 0;
      v19 = __OFADD__(v57, v58);
      v59 = v57 + v58;
      if (v19)
      {
        goto LABEL_38;
      }

      v60 = v56;
      if (v40[3] >= v59)
      {
        if ((v54 & 1) == 0)
        {
          v83 = v55;
          sub_100098538();
          v55 = v83;
          v4 = v101;
          if (v60)
          {
LABEL_28:
            v40 = v118;
            v62 = (v118[7] + 224 * v55);
            v63 = v62[1];
            v102 = *v62;
            v103 = v63;
            v64 = v62[5];
            v66 = v62[2];
            v65 = v62[3];
            v104[2] = v62[4];
            v104[3] = v64;
            v104[0] = v66;
            v104[1] = v65;
            v67 = v62[9];
            v69 = v62[6];
            v68 = v62[7];
            v104[6] = v62[8];
            v104[7] = v67;
            v104[4] = v69;
            v104[5] = v68;
            v71 = v62[11];
            v70 = v62[12];
            v72 = v62[10];
            *(v105 + 9) = *(v62 + 201);
            v104[9] = v71;
            v105[0] = v70;
            v104[8] = v72;
            v73 = v107;
            *v62 = v106;
            v62[1] = v73;
            v74 = v108[0];
            v75 = v108[1];
            v76 = v110;
            v62[4] = v109;
            v62[5] = v76;
            v62[2] = v74;
            v62[3] = v75;
            v77 = v111;
            v78 = v112;
            v79 = v114;
            v62[8] = v113;
            v62[9] = v79;
            v62[6] = v77;
            v62[7] = v78;
            v80 = v115;
            v81 = v116;
            v82 = v117[0];
            *(v62 + 201) = *(v117 + 9);
            v62[11] = v81;
            v62[12] = v82;
            v62[10] = v80;
            sub_10000E8CC(&v102);
            if (!v39)
            {
              return v11;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }
      }

      else
      {
        sub_100097A3C(v59, v54);
        v55 = sub_1000C3CA8(v53);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_40;
        }
      }

      v4 = v101;
      if (v60)
      {
        goto LABEL_28;
      }

LABEL_31:
      v40 = v118;
      v118[(v55 >> 6) + 8] |= 1 << v55;
      *(v40[6] + 8 * v55) = v53;
      v84 = (v40[7] + 224 * v55);
      v85 = v107;
      *v84 = v106;
      v84[1] = v85;
      v86 = v110;
      v88 = v108[0];
      v87 = v108[1];
      v84[4] = v109;
      v84[5] = v86;
      v84[2] = v88;
      v84[3] = v87;
      v89 = v114;
      v91 = v111;
      v90 = v112;
      v84[8] = v113;
      v84[9] = v89;
      v84[6] = v91;
      v84[7] = v90;
      v92 = v115;
      v93 = v116;
      v94 = v117[0];
      *(v84 + 201) = *(v117 + 9);
      v84[11] = v93;
      v84[12] = v94;
      v84[10] = v92;
      v95 = v40[2];
      v19 = __OFADD__(v95, 1);
      v96 = v95 + 1;
      if (v19)
      {
        goto LABEL_39;
      }

      v40[2] = v96;
      if (!v39)
      {
        return v11;
      }

LABEL_33:
      --v39;
      v38 += 28;
    }
  }

  return v11;
}

unint64_t sub_10000E924()
{
  result = qword_10023A050;
  if (!qword_10023A050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A050);
  }

  return result;
}

unint64_t sub_10000E97C()
{
  result = qword_10023A058;
  if (!qword_10023A058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A058);
  }

  return result;
}

uint64_t sub_10000E9D0(uint64_t a1)
{
  *(a1 + 8) = sub_100010454(&qword_10023A0A8, type metadata accessor for SnoutStoryModel, &unk_1001B3CB4);
  result = sub_100010454(&qword_10023A0B0, type metadata accessor for SnoutStoryModel, &unk_1001B3C8C);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for SnoutStoryModel(uint64_t a1)
{
  result = qword_10023A178;
  if (!qword_10023A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000EAA4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x64695F79726F7473;
    v6 = 0x69737265766E6F63;
    if (a1 != 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x5F676E69646E6570;
    v2 = 0xD000000000000017;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0xD000000000000011;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10000EBF0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000EF24(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_10000EC40(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10000ED94(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10000EF24(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10000F098(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

uint64_t sub_10000F210(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

Swift::Int sub_10000F37C(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_10000EF24(v4, v2);
  return Hasher._finalize()();
}

unint64_t sub_10000F3C0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000102F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000F3F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10000EAA4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10000F438@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000102F4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10000F488(uint64_t a1)
{
  v2 = sub_10000E97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000F4C4(uint64_t a1)
{
  v2 = sub_10000E97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000F500(uint64_t a1)
{
  result = type metadata accessor for SnoutStoryModel(0);
  if (*(v1 + *(result + 36)) == 1)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v45 = *(result + 44);
      v46 = *(result + 48);
      v5 = *(v1 + v46);
      v6 = *(v1 + v45);
      v7 = *(a1 + 208);
      v58 = *(a1 + 192);
      v59 = v7;
      v8 = *(a1 + 240);
      v60 = *(a1 + 224);
      v61 = v8;
      v9 = *(a1 + 144);
      v54 = *(a1 + 128);
      v55 = v9;
      v10 = *(a1 + 176);
      v56 = *(a1 + 160);
      v57 = v10;
      v11 = *(a1 + 80);
      v50 = *(a1 + 64);
      v51 = v11;
      v12 = *(a1 + 112);
      v52 = *(a1 + 96);
      v53 = v12;
      v13 = *(a1 + 48);
      v48 = *(a1 + 32);
      v49 = v13;
      v14 = *(&v51 + 1) + v5;
      if (__CFADD__(*(&v51 + 1), v5))
      {
LABEL_16:
        __break(1u);
      }

      else
      {
        v15 = (a1 + 256);
        v16 = 1;
        while ((v5 ^ (v16 - 1)) != 0xFFFFFFFFFFFFFFFFLL)
        {
          v17 = *(v15 - 13);
          v72 = *(v15 - 14);
          v73 = v17;
          v74 = *(v15 - 12);
          v75 = *(v15 - 22);
          v18 = *(v15 - 3);
          v68 = *(v15 - 4);
          v69 = v18;
          v19 = *(v15 - 1);
          v70 = *(v15 - 2);
          v71 = v19;
          v20 = *(v15 - 7);
          v64 = *(v15 - 8);
          v65 = v20;
          v21 = *(v15 - 5);
          v66 = *(v15 - 6);
          v67 = v21;
          v22 = *(v15 - 9);
          v62 = *(v15 - 10);
          v63 = v22;
          sub_100010568(&v48, v47);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_100088AB4(0, *(v6 + 16) + 1, 1, v6);
            v6 = result;
          }

          v24 = *(v6 + 16);
          v23 = *(v6 + 24);
          if (v24 >= v23 >> 1)
          {
            result = sub_100088AB4((v23 > 1), v24 + 1, 1, v6);
            v6 = result;
          }

          *(v6 + 16) = v24 + 1;
          v25 = v6 + 224 * v24;
          v26 = v72;
          v27 = v74;
          v28 = v75;
          *(v25 + 48) = v73;
          *(v25 + 64) = v27;
          *(v25 + 32) = v26;
          *(v25 + 80) = v28;
          *(v25 + 88) = v14;
          v29 = v63;
          *(v25 + 96) = v62;
          *(v25 + 112) = v29;
          v30 = v64;
          v31 = v65;
          v32 = v67;
          *(v25 + 160) = v66;
          *(v25 + 176) = v32;
          *(v25 + 128) = v30;
          *(v25 + 144) = v31;
          v33 = v68;
          v34 = v69;
          v35 = v71;
          *(v25 + 224) = v70;
          *(v25 + 240) = v35;
          *(v25 + 192) = v33;
          *(v25 + 208) = v34;
          if (v4 == v16)
          {
            *(v1 + v45) = v6;
            *(v1 + v46) = v5 + v16;
            return result;
          }

          v36 = v5 + v16;
          v37 = v15[11];
          v58 = v15[10];
          v59 = v37;
          v38 = v15[13];
          v60 = v15[12];
          v61 = v38;
          v39 = v15[7];
          v54 = v15[6];
          v55 = v39;
          v40 = v15[9];
          v56 = v15[8];
          v57 = v40;
          v41 = v15[3];
          v50 = v15[2];
          v51 = v41;
          v42 = v15[5];
          v52 = v15[4];
          v53 = v42;
          v43 = *v15;
          v44 = v15[1];
          v15 += 14;
          v48 = v43;
          v49 = v44;
          ++v16;
          v14 = *(&v51 + 1) + v36;
          if (__CFADD__(*(&v51 + 1), v36))
          {
            goto LABEL_16;
          }
        }
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10000F740(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SnoutStoryModel(0);
  v11 = (v3 + *(v10 + 28));

  *v11 = a1;
  v11[1] = a2;
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v13 = v12;
  result = (*(v7 + 8))(v9, v6);
  v15 = v13 * 1000.0;
  if (COERCE__INT64(fabs(v13 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v15 < 1.84467441e19)
  {
    v16 = v3 + *(v10 + 32);
    *v16 = v15;
    *(v16 + 8) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_10000F8C4(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023A100, &qword_1001B3DD0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_10000E97C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for SnoutStoryModel(0);
  LOBYTE(v12) = 0;
  type metadata accessor for UUID();
  sub_100010454(&qword_10023A108, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 44));
    v11[7] = 6;
    sub_10000CDE0(&qword_10023A0E8, &qword_1001B3DC8);
    sub_10001049C(&qword_10023A110, sub_100010514, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10000FC2C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v23 = *(v4 - 8);
  __chkstk_darwin(v4);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10000CDE0(&qword_10023A0D8, &qword_1001B3DC0);
  v25 = *(v27 - 8);
  __chkstk_darwin(v27);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SnoutStoryModel(0);
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v10 = 0;
  v10[8] = 1;
  sub_10000DA7C(a1, a1[3]);
  sub_10000E97C();
  v26 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000DB58(a1);
  }

  else
  {
    v11 = v23;
    LOBYTE(v29) = 0;
    sub_100010454(&qword_10023A0E0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    v12 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 32))(&v10[v8[5]], v12, v4);
    LOBYTE(v29) = 1;
    *&v10[v8[6]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v29) = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v14 = &v10[v8[7]];
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v29) = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = &v10[v8[8]];
    *v17 = v16;
    v17[8] = v18 & 1;
    LOBYTE(v29) = 4;
    v10[v8[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v29) = 5;
    v10[v8[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    sub_10000CDE0(&qword_10023A0E8, &qword_1001B3DC8);
    v28 = 6;
    sub_10001049C(&qword_10023A0F0, sub_100010340, &protocol conformance descriptor for <A> [A]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v10[v8[11]] = v29;
    LOBYTE(v29) = 7;
    *&v10[v8[12]] = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v29) = 8;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v25 + 8))(v26, v27);
    *&v10[v8[13]] = v19;
    sub_100010394(v10, v22);
    sub_10000DB58(a1);
    return sub_1000103F8(v10);
  }
}

unint64_t sub_1000101E0()
{
  result = qword_10023A0B8;
  if (!qword_10023A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A0B8);
  }

  return result;
}

unint64_t sub_100010238()
{
  result = qword_10023A0C0;
  if (!qword_10023A0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A0C0);
  }

  return result;
}

unint64_t sub_100010290()
{
  result = qword_10023A0C8;
  if (!qword_10023A0C8)
  {
    sub_10000CCC0(&qword_10023A0D0, &qword_1001B3D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A0C8);
  }

  return result;
}

unint64_t sub_1000102F4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213300, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100010340()
{
  result = qword_10023A0F8;
  if (!qword_10023A0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A0F8);
  }

  return result;
}

uint64_t sub_100010394(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000103F8(uint64_t a1)
{
  v2 = type metadata accessor for SnoutStoryModel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100010454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10001049C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000CCC0(&qword_10023A0E8, &qword_1001B3DC8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100010514()
{
  result = qword_10023A118;
  if (!qword_10023A118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A118);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnoutEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100010748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 44));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_10001081C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for UUID();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  return result;
}

void sub_1000108D8(uint64_t a1)
{
  sub_100010A58(319, &qword_10023A188, &type metadata for Int64, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v2 <= 0x3F)
    {
      sub_100010A58(319, &qword_10023A190, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_100010A58(319, &qword_10023A198, &type metadata for UInt64, &type metadata accessor for Optional);
        if (v4 <= 0x3F)
        {
          sub_100010A58(319, &unk_10023A1A0, &type metadata for SnoutEvent, &type metadata accessor for Array);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100010A58(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_100010AAC()
{
  result = qword_10023A1F0;
  if (!qword_10023A1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A1F0);
  }

  return result;
}

unint64_t sub_100010B08()
{
  result = qword_10023A1F8;
  if (!qword_10023A1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A1F8);
  }

  return result;
}

unint64_t sub_100010B60()
{
  result = qword_10023A200;
  if (!qword_10023A200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A200);
  }

  return result;
}

unint64_t sub_100010BB4(uint64_t a1)
{
  *(a1 + 8) = sub_100010BE4();
  result = sub_100010C38();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100010BE4()
{
  result = qword_10023A250;
  if (!qword_10023A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A250);
  }

  return result;
}

unint64_t sub_100010C38()
{
  result = qword_10023A258;
  if (!qword_10023A258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A258);
  }

  return result;
}

uint64_t sub_100010C8C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023A290, &qword_1001B4018);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100010B60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10[14] = *(v3 + 32);
    v10[13] = 1;
    sub_100011758();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int sub_100010E64()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100010F38(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100010FF8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000110C8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100011450(*a1);
  *a2 = result;
  return result;
}

void sub_1000110F8(unint64_t *a1@<X8>)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = 0xEB00000000746E75;
  v5 = 0x6F635F7972746572;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000016;
    v4 = 0x80000001001CA100;
  }

  if (*v1)
  {
    v3 = 0x616E5F70756F7267;
    v2 = 0xEA0000000000656DLL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 <= 1u)
  {
    v7 = v2;
  }

  else
  {
    v7 = v4;
  }

  *a1 = v6;
  a1[1] = v7;
}

unint64_t sub_100011188()
{
  v1 = 0x696669746E656469;
  v2 = 0x6F635F7972746572;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x616E5F70756F7267;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100011214@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100011450(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100011258(uint64_t a1)
{
  v2 = sub_100010B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100011294(uint64_t a1)
{
  v2 = sub_100010B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000112D0@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_10001149C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

unint64_t sub_10001133C()
{
  result = qword_10023A260;
  if (!qword_10023A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A260);
  }

  return result;
}

unint64_t sub_100011394()
{
  result = qword_10023A268;
  if (!qword_10023A268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A268);
  }

  return result;
}

unint64_t sub_1000113EC()
{
  result = qword_10023A270;
  if (!qword_10023A270)
  {
    sub_10000CCC0(&qword_10023A278, &qword_1001B3FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A270);
  }

  return result;
}

unint64_t sub_100011450(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213428, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001149C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023A280, &qword_1001B4010);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - v7;
  sub_10000DA7C(a1, a1[3]);
  sub_100010B60();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v24 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v19 = v9;
  v22 = 1;
  sub_100011704();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v23;
  v21 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v17 = v12;
  v18 = v13;
  v20 = 3;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = sub_10000DB58(a1);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v19;
  *(a2 + 24) = v11;
  *(a2 + 32) = v17;
  *(a2 + 40) = v18;
  *(a2 + 48) = v14;
  return result;
}

unint64_t sub_100011704()
{
  result = qword_10023A288;
  if (!qword_10023A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A288);
  }

  return result;
}

unint64_t sub_100011758()
{
  result = qword_10023A298;
  if (!qword_10023A298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A298);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SnoutEvent.AdType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SnoutEvent.AdType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_1000118FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100011918(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100011960(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000119C0()
{
  result = qword_10023A2A0;
  if (!qword_10023A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A2A0);
  }

  return result;
}

uint64_t sub_100011A34()
{
  v1 = *(v0 + 1336);
  swift_asyncLet_begin();
  v2 = swift_task_alloc();
  *(v0 + 1344) = v2;
  *(v2 + 16) = v1;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 1352, sub_100011B0C, v0 + 1296);
}

uint64_t sub_100011B78()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 1352, sub_100011BE4, v0 + 656);
}

uint64_t sub_100011C44()
{
  if (qword_100239D20 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FD78;
  *(v0 + 88) = qword_10023FD78;

  return _swift_task_switch(sub_100011CDC, v1, 0);
}

uint64_t sub_100011CDC()
{
  v1 = *(*(v0 + 88) + 112);
  if (v1 == 2)
  {
    sub_100012564();
    swift_getObjectType();
    v2 = dispatch thunk of Actor.unownedExecutor.getter();
    v4 = v3;
    v5 = sub_100011D90;
    v6 = v2;
    v7 = v4;
  }

  else
  {
    *(v0 + 98) = v1 & 1;
    v5 = sub_100011FBC;
    v6 = 0;
    v7 = 0;
  }

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100011D90()
{
  v1 = v0 + 2;
  v0[2] = v0;
  v0[7] = v0 + 12;
  v0[3] = sub_100011E94;
  v2 = swift_continuation_init();
  v3 = [objc_opt_self() sharedConnection];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isDiagnosticSubmissionAllowed];

    **(*(v2 + 64) + 40) = v5;
    swift_continuation_resume();
    v3 = v1;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v3);
}

uint64_t sub_100011E94()
{
  v1 = *(*v0 + 88);
  *(*v0 + 97) = *(*v0 + 96);

  return _swift_task_switch(sub_100011F90, v1, 0);
}

uint64_t sub_100011F90()
{
  v1 = *(v0 + 97);
  *(*(v0 + 88) + 112) = v1;
  *(v0 + 98) = v1;
  return _swift_task_switch(sub_100011FBC, 0, 0);
}

uint64_t sub_100011FE0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100012088;

  return sub_100158B54(1);
}

uint64_t sub_100012088(char a1)
{
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_100012188, 0, 0);
}

uint64_t sub_1000121B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000BD30;

  return sub_100011FE0(a1);
}

uint64_t sub_10001226C()
{
  if (sub_1000125BC())
  {
    v1 = *(v0 + 8);

    return v1(1);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 16) = v3;
    *v3 = v0;
    v3[1] = sub_10001234C;

    return sub_100158594(2);
  }
}

uint64_t sub_10001234C(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 24) = a1;
  *(v3 + 32) = a2;

  return _swift_task_switch(sub_100012450, 0, 0);
}

uint64_t sub_100012450()
{
  if (*(v0 + 32))
  {
    v1 = 0.1;
  }

  else
  {
    v1 = *(v0 + 24);
  }

  v2 = vcvtd_n_f64_u64(sub_1000124D8(0x20000000000001uLL), 0x35uLL) <= v1;
  v3 = *(v0 + 8);

  return v3(v2);
}

unint64_t sub_1000124D8(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100012564()
{
  result = qword_10023A2A8;
  if (!qword_10023A2A8)
  {
    type metadata accessor for Restrictions();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A2A8);
  }

  return result;
}

__n128 sub_1000125C8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000125DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100012624(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10001267C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100014B50(a3, v25 - v10, &qword_100239EE0, &qword_1001B3640);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10000DAF8(v11, &qword_100239EE0, &qword_1001B3640);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10000DAF8(a3, &qword_100239EE0, &qword_1001B3640);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void main()()
{
  v0 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  __chkstk_darwin(v0 - 8);
  v2 = &v5 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_10001267C(0, 0, v2, &unk_1001B41C8, v4);

  dispatch_main();
}

uint64_t sub_100012A60()
{
  v1 = type metadata accessor for Logger();
  v0[23] = v1;
  v0[24] = *(v1 - 8);
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return _swift_task_switch(sub_100012BA4, 0, 0);
}

uint64_t sub_100012BA4()
{
  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 184);
  v4 = *(v0 + 192);
  v5 = sub_10000DAC0(v3, qword_10023FC70);
  v6 = *(v4 + 16);
  v6(v2, v5, v3);
  (*(v4 + 56))(v2, 0, 1, v3);
  sub_100014B50(v2, v1, &qword_10023A2B8, &qword_1001BC460);
  type metadata accessor for LogActivity();
  v7 = swift_allocObject();
  if (qword_100239D28 != -1)
  {
    swift_once();
  }

  v8 = _os_activity_create(&_mh_execute_header, "Starting attributionkitd", qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 168) = 0;
  *(v0 + 176) = 0;
  os_activity_scope_enter(v8, (v0 + 168));
  swift_unknownObjectRelease();
  *(v7 + 16) = *(v0 + 168);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v9 = *(v0 + 128);
  if (v9)
  {
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v9 = swift_allocObject();
    *(v9 + 36) = 0;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = -1;
  }

  v10 = *(v0 + 216);
  v11 = *(v0 + 184);
  v12 = *(v0 + 192);
  sub_100014B50(*(v0 + 224), v10, &qword_10023A2B8, &qword_1001BC460);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000DAF8(*(v0 + 224), &qword_10023A2B8, &qword_1001BC460);
    v13 = 0;
  }

  else
  {
    v14 = *(v0 + 208);
    v16 = *(v0 + 192);
    v15 = *(v0 + 200);
    v17 = v7;
    v18 = v6;
    v19 = *(v0 + 184);
    v30 = *(v0 + 224);
    (*(v16 + 32))(v14, *(v0 + 216), v19);
    v18(v15, v14, v19);
    v7 = v17;
    type metadata accessor for SignpostInterval(0);
    swift_allocObject();
    v13 = sub_1000F61B0("Starting attributionkitd", 24, 2, v15);
    (*(v16 + 8))(v14, v19);
    sub_10000DAF8(v30, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 144) = v7;
  *(v0 + 152) = v9;
  *(v0 + 160) = v13;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  sub_10000CDE0(&qword_10023A2C8, &qword_1001B41F0);
  swift_task_localValuePush();
  os_unfair_lock_lock((v9 + 36));
  v20 = *(v9 + 16);
  v21 = *(v9 + 24);
  v22 = *(v9 + 32);
  sub_100014BB8(v20, v21, *(v9 + 32));
  os_unfair_lock_unlock((v9 + 36));
  if (v22 != 255)
  {
    sub_1000262C0(v20, v21, v22 & 1);
    v23 = sub_100014BE0(v20, v21, v22);
  }

  sub_100013468(v23);
  v24 = *(v0 + 232);
  v25 = *(v0 + 32);
  *(v0 + 240) = *(v0 + 16);
  *(v0 + 256) = v25;
  v26 = *(v0 + 64);
  *(v0 + 272) = *(v0 + 48);
  *(v0 + 288) = v26;
  v27 = *(v0 + 96);
  *(v0 + 304) = *(v0 + 80);
  *(v0 + 320) = v27;
  *(v0 + 336) = *(v0 + 112);
  swift_task_localValuePop();

  sub_10000DAF8(v24, &qword_10023A2B8, &qword_1001BC460);
  v28 = swift_task_alloc();
  *(v0 + 344) = v28;
  *v28 = v0;
  v28[1] = sub_100013114;

  return withCheckedContinuation<A>(isolation:function:_:)(v28, 0, 0, 0xD000000000000010, 0x80000001001CB030, sub_100014280, 0, &type metadata for () + 8);
}

uint64_t sub_100013114()
{

  return _swift_task_switch(sub_10001323C, 0, 0);
}

uint64_t sub_10001323C()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 304);
  v5 = *(v0 + 280);
  v4 = *(v0 + 288);
  v6 = *(v0 + 264);
  v7 = *(v0 + 272);
  v8 = *(v0 + 248);
  v9 = *(v0 + 256);
  v12 = *(v0 + 320);
  v13 = *(v0 + 328);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100013384()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000133BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_100012A60();
}

uint64_t sub_100013468(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v121 = type metadata accessor for DispatchQoS.QoSClass();
  v113 = *(v121 - 8);
  __chkstk_darwin(v121);
  v120 = &v102 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_10000DAC0(v4, qword_10023FC70);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Configuring UserDefaults", v8, 2u);
  }

  _CFPreferencesSetBackupDisabled();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Registering DAS activities", v11, 2u);
  }

  v12 = [objc_opt_self() sharedScheduler];
  v141[3] = &type metadata for BackgroundSystemTaskScheduler;
  v141[4] = &off_100217910;
  v141[0] = v12;
  sub_1000BF87C();
  sub_1000BBD5C(v13);

  v14 = sub_1000BF99C();
  sub_1000BBF28(v14);

  sub_10004FD4C(v140);
  sub_100014E1C(v140, v139);
  v15 = type metadata accessor for ServiceXPCBridge();
  v16 = objc_allocWithZone(v15);
  sub_100014E1C(v139, v16 + OBJC_IVAR____TtC20AttributionKitDaemon16ServiceXPCBridge_service);
  v138.receiver = v16;
  v138.super_class = v15;
  v17 = objc_msgSendSuper2(&v138, "init");
  sub_100014E78(v139);
  v18 = type metadata accessor for ServiceListenerDelegate();
  v19 = objc_allocWithZone(v18);
  *&v19[OBJC_IVAR____TtC20AttributionKitDaemon23ServiceListenerDelegate_serviceBridge] = v17;
  v137.receiver = v19;
  v137.super_class = v18;
  v117 = v17;
  v20 = objc_msgSendSuper2(&v137, "init");
  ServiceMachName.unsafeMutableAddressor();
  v21 = objc_allocWithZone(NSXPCListener);

  v22 = String._bridgeToObjectiveC()();

  v23 = [v21 initWithMachServiceName:v22];

  v119 = v20;
  [v23 setDelegate:v20];
  v118 = v23;
  [v23 activate];
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "API service listener setup complete", v26, 2u);
  }

  sub_1000F844C(v136);
  sub_100014ECC(v136, v139);
  v27 = type metadata accessor for ImpressionIntakeServiceXPCBridge();
  v28 = objc_allocWithZone(v27);
  sub_100014ECC(v139, v28 + OBJC_IVAR____TtC20AttributionKitDaemon32ImpressionIntakeServiceXPCBridge_service);
  v135.receiver = v28;
  v135.super_class = v27;
  v29 = objc_msgSendSuper2(&v135, "init");
  sub_100014F28(v139);
  v30 = type metadata accessor for ImpressionIntakeServiceListenerDelegate();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR____TtC20AttributionKitDaemon39ImpressionIntakeServiceListenerDelegate_serviceBridge] = v29;
  v134.receiver = v31;
  v134.super_class = v30;
  v114 = v29;
  v32 = objc_msgSendSuper2(&v134, "init");
  ImpressionIntakeServiceMachName.unsafeMutableAddressor();
  v33 = objc_allocWithZone(NSXPCListener);

  v34 = String._bridgeToObjectiveC()();

  v35 = [v33 initWithMachServiceName:v34];

  v116 = v32;
  [v35 setDelegate:v32];
  v115 = v35;
  [v35 activate];
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "Impression intake service listener setup complete", v38, 2u);
  }

  sub_10009EA60(v133);
  sub_100014F7C(v133, v139);
  v39 = type metadata accessor for TokenHandoffServiceXPCBridge();
  v40 = objc_allocWithZone(v39);
  sub_100014F7C(v139, v40 + OBJC_IVAR____TtC20AttributionKitDaemon28TokenHandoffServiceXPCBridge_service);
  v132.receiver = v40;
  v132.super_class = v39;
  v41 = objc_msgSendSuper2(&v132, "init");
  sub_100014FD8(v139);
  v42 = type metadata accessor for TokenHandoffServiceListenerDelegate();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR____TtC20AttributionKitDaemon35TokenHandoffServiceListenerDelegate_serviceBridge] = v41;
  v131.receiver = v43;
  v131.super_class = v42;
  v110 = v41;
  v44 = objc_msgSendSuper2(&v131, "init");
  TokenHandoffServiceMachName.unsafeMutableAddressor();
  v45 = objc_allocWithZone(NSXPCListener);

  v46 = String._bridgeToObjectiveC()();

  v47 = [v45 initWithMachServiceName:v46];

  v112 = v44;
  [v47 setDelegate:v44];
  v111 = v47;
  [v47 activate];
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Token handoff service listener setup complete", v50, 2u);
  }

  sub_100026860(v130);
  sub_10001502C(v130, v139);
  v51 = type metadata accessor for DeveloperModeServiceXPCBridge();
  v52 = objc_allocWithZone(v51);
  sub_10001502C(v139, v52 + OBJC_IVAR____TtC20AttributionKitDaemon29DeveloperModeServiceXPCBridge_service);
  v129.receiver = v52;
  v129.super_class = v51;
  v53 = objc_msgSendSuper2(&v129, "init");
  sub_100015088(v139);
  v54 = type metadata accessor for DeveloperModeServiceListenerDelegate();
  v55 = objc_allocWithZone(v54);
  *&v55[OBJC_IVAR____TtC20AttributionKitDaemon36DeveloperModeServiceListenerDelegate_serviceBridge] = v53;
  v128.receiver = v55;
  v128.super_class = v54;
  v107 = v53;
  v56 = objc_msgSendSuper2(&v128, "init");
  DeveloperModeServiceMachName.unsafeMutableAddressor();
  v57 = objc_allocWithZone(NSXPCListener);

  v58 = String._bridgeToObjectiveC()();

  v59 = [v57 initWithMachServiceName:v58];

  v109 = v56;
  [v59 setDelegate:v56];
  v108 = v59;
  [v59 activate];
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&_mh_execute_header, v60, v61, "Developer mode service listener setup complete", v62, 2u);
  }

  sub_10003E860(v127);
  sub_1000150DC(v127, v139);
  v63 = type metadata accessor for PostbackProxyServiceXPCBridge();
  v64 = objc_allocWithZone(v63);
  sub_1000150DC(v139, v64 + OBJC_IVAR____TtC20AttributionKitDaemon29PostbackProxyServiceXPCBridge_service);
  v126.receiver = v64;
  v126.super_class = v63;
  v65 = objc_msgSendSuper2(&v126, "init");
  sub_100015138(v139);
  v66 = type metadata accessor for PostbackProxyServiceListenerDelegate();
  v67 = objc_allocWithZone(v66);
  *&v67[OBJC_IVAR____TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate_serviceBridge] = v65;
  v125.receiver = v67;
  v125.super_class = v66;
  v104 = v65;
  v68 = objc_msgSendSuper2(&v125, "init");
  PostbackProxyServiceMachName.unsafeMutableAddressor();
  v69 = objc_allocWithZone(NSXPCListener);

  v70 = String._bridgeToObjectiveC()();

  v71 = [v69 initWithMachServiceName:v70];

  v106 = v68;
  [v71 setDelegate:v68];
  v105 = v71;
  [v71 activate];
  v141[7] = v5;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Postback proxy service listener setup complete", v74, 2u);
  }

  sub_1000FC398(v139);
  sub_10001518C(v139, v124);
  updated = type metadata accessor for PostbackUpdateTestingServiceXPCBridge();
  v76 = objc_allocWithZone(updated);
  sub_10001518C(v124, v76 + OBJC_IVAR____TtC20AttributionKitDaemon37PostbackUpdateTestingServiceXPCBridge_service);
  v123.receiver = v76;
  v123.super_class = updated;
  v77 = objc_msgSendSuper2(&v123, "init");
  sub_1000151E8(v124);
  v78 = type metadata accessor for PostbackUpdateTestingServiceListenerDelegate();
  v79 = objc_allocWithZone(v78);
  *&v79[OBJC_IVAR____TtC20AttributionKitDaemon44PostbackUpdateTestingServiceListenerDelegate_serviceBridge] = v77;
  v122.receiver = v79;
  v122.super_class = v78;
  v103 = v77;
  v80 = objc_msgSendSuper2(&v122, "init");
  PostbackUpdateTestingServiceMachName.unsafeMutableAddressor();
  v81 = objc_allocWithZone(NSXPCListener);

  v82 = String._bridgeToObjectiveC()();

  v83 = [v81 initWithMachServiceName:v82];

  [v83 setDelegate:v80];
  [v83 activate];
  v84 = Logger.logObject.getter();
  v85 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    *v86 = 0;
    _os_log_impl(&_mh_execute_header, v84, v85, "Postback update testing service listener setup complete", v86, 2u);
  }

  type metadata accessor for LaunchServicesObserver();
  swift_allocObject();
  v87 = sub_1000B4864();
  sub_10001523C(0, &qword_10023B300, OS_dispatch_queue_ptr);
  v88 = v113;
  v90 = v120;
  v89 = v121;
  (*(v113 + 104))(v120, enum case for DispatchQoS.QoSClass.default(_:), v121);
  v91 = static OS_dispatch_queue.global(qos:)();
  (*(v88 + 8))(v90, v89);
  v124[4] = sub_10016F838;
  v124[5] = 0;
  v124[0] = _NSConcreteStackBlock;
  v124[1] = 1107296256;
  v124[2] = sub_100014758;
  v124[3] = &unk_100216F50;
  v92 = _Block_copy(v124);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", v91, v92);
  _Block_release(v92);

  v93 = Logger.logObject.getter();
  v94 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v93, v94))
  {
    v95 = swift_slowAlloc();
    *v95 = 0;
    _os_log_impl(&_mh_execute_header, v93, v94, "Launch completed", v95, 2u);
  }

  sub_1000151E8(v139);
  sub_100015138(v127);
  sub_100015088(v130);
  sub_100014FD8(v133);
  sub_100014F28(v136);
  sub_100014E78(v140);
  result = sub_100015284(v141);
  v97 = v119;
  *v2 = v118;
  v2[1] = v97;
  v98 = v116;
  v2[2] = v115;
  v2[3] = v98;
  v99 = v112;
  v2[4] = v111;
  v2[5] = v99;
  v100 = v109;
  v2[6] = v108;
  v2[7] = v100;
  v2[8] = v83;
  v2[9] = v80;
  v101 = v106;
  v2[10] = v105;
  v2[11] = v101;
  v2[12] = v87;
  return result;
}

uint64_t sub_100014280(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v2 - 8);
  v22 = v2;
  __chkstk_darwin(v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000CDE0(&qword_10023A2D0, qword_1001B41F8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  v13 = SIG_IGN.getter();
  signal(15, v13);
  sub_10001523C(0, &qword_10023A2D8, OS_dispatch_source_ptr);
  v14 = static OS_dispatch_source.makeSignalSource(signal:queue:)();
  swift_getObjectType();
  (*(v9 + 16))(v12, a1, v8);
  v15 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v15, v12, v8);
  *(v16 + ((v10 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v14;
  aBlock[4] = sub_100014CB0;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_100216F28;
  v17 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  static DispatchQoS.unspecified.getter();
  sub_1000146D0();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v17);
  (*(v21 + 8))(v4, v22);
  (*(v19 + 8))(v7, v20);

  OS_dispatch_source.activate()();
  return swift_unknownObjectRelease();
}

void sub_1000145CC(uint64_t a1, uint64_t a2)
{
  sub_10000CDE0(&qword_10023A2D0, qword_1001B41F8);
  CheckedContinuation.resume(returning:)();
  swift_getObjectType();
  OS_dispatch_source.cancel()();
  if (qword_100239CC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FC70);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Received SIGTERM; shutting down", v5, 2u);
  }

  exit(0);
}

uint64_t sub_1000146D0()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_100014D60();
  sub_10000CDE0(&qword_10023A348, &unk_1001B6A30);
  sub_100014DB8();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100014758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1000147B8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000148B0;

  return v6(a1);
}

uint64_t sub_1000148B0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000149A8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000149E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000147B8(a1, v4);
}

uint64_t sub_100014A98(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return sub_1000147B8(a1, v4);
}

uint64_t sub_100014B50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000CDE0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100014BB8(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100014BD0(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100014BD0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100014BE0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_100014BF8(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100014BF8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100014C08()
{
  v1 = sub_10000CDE0(&qword_10023A2D0, qword_1001B41F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_100014CB0()
{
  v1 = *(sub_10000CDE0(&qword_10023A2D0, qword_1001B41F8) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1000145CC(v0 + v2, v3);
}

uint64_t sub_100014D48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100014D60()
{
  result = qword_10023A340;
  if (!qword_10023A340)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A340);
  }

  return result;
}

unint64_t sub_100014DB8()
{
  result = qword_10023A350;
  if (!qword_10023A350)
  {
    sub_10000CCC0(&qword_10023A348, &unk_1001B6A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A350);
  }

  return result;
}

uint64_t sub_10001523C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1000152E8()
{
  v1 = [v0 connection];
  Date.timeIntervalSince1970.getter();
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v4 = String._bridgeToObjectiveC()();
  v5 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v6 = [objc_opt_self() predicateWithProperty:v4 value:v5 comparisonType:4];
  swift_unknownObjectRelease();

  v7 = sub_100084BCC(v1, v6, _swiftEmptyArrayStorage, 0, 0);
  if (([v7 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id XPCClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10001558C()
{
  result = qword_100239FA8;
  if (!qword_100239FA8)
  {
    type metadata accessor for AKSQLError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100239FA8);
  }

  return result;
}

uint64_t sub_1000155E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = sub_10000CDE0(&qword_10023A508, &qword_1001B4638);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000DA7C(a1, a1[3]);
  sub_10001846C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  sub_10000CDE0(&qword_10023A470, &unk_1001B4600);
  sub_10001981C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    sub_10000CDE0(&qword_10023A488, &qword_1001C19D0);
    sub_1000198F4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    sub_10000CDE0(&qword_10023A4A0, &qword_1001B4610);
    sub_1000199CC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1000157FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000015;
  v4 = 0x80000001001CA130;
  if (v2 == 1)
  {
    v5 = 0x80000001001CA130;
  }

  else
  {
    v3 = 0x65722D726F727265;
    v5 = 0xEF7365736E6F7073;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6F707365722D6163;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEC0000007365736ELL;
  }

  v8 = 0xD000000000000015;
  if (*a2 != 1)
  {
    v8 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6F707365722D6163;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC0000007365736ELL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100015914()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000159D0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100015A78(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100015B30@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100017AF0(*a1);
  *a2 = result;
  return result;
}

void sub_100015B60(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC0000007365736ELL;
  v4 = 0x80000001001CA130;
  v5 = 0xD000000000000015;
  if (v2 != 1)
  {
    v5 = 0x65722D726F727265;
    v4 = 0xEF7365736E6F7073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6F707365722D6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_100015BD8()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x65722D726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F707365722D6163;
  }
}

unint64_t sub_100015C4C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100017AF0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100015C80(uint64_t a1)
{
  v2 = sub_10001846C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100015CBC(uint64_t a1)
{
  v2 = sub_10001846C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100015CF8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_100017B3C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_100015D48(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x524F525245;
  }

  else
  {
    v3 = 19279;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x524F525245;
  }

  else
  {
    v5 = 19279;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100015DE0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100015E54(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100015EB4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100015F30(uint64_t *a1@<X8>)
{
  v2 = 19279;
  if (*v1)
  {
    v2 = 0x524F525245;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100016010(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023A4F8, &qword_1001B4630);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100019664();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = *(v3 + 48);
  v18 = *(v3 + 32);
  v19 = v9;
  v20 = *(v3 + 64);
  v21 = *(v3 + 80);
  v10 = *(v3 + 16);
  v16 = *v3;
  v17 = v10;
  v15 = 0;
  sub_100019760(v3, v13);
  sub_1000197C8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v13[2] = v18;
  v13[3] = v19;
  v13[4] = v20;
  v14 = v21;
  v13[0] = v16;
  v13[1] = v17;
  sub_10001970C(v13);
  if (!v2)
  {
    v12[15] = *(v3 + 88);
    v12[14] = 1;
    sub_10001879C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100016248(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737574617473;
  }

  else
  {
    v3 = 0x6B63616274736F70;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x737574617473;
  }

  else
  {
    v5 = 0x6B63616274736F70;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000162EC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10001636C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000163D8(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100016460@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_1000164BC(uint64_t *a1@<X8>)
{
  v2 = 0x6B63616274736F70;
  if (*v1)
  {
    v2 = 0x737574617473;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000164F8()
{
  if (*v0)
  {
    return 0x737574617473;
  }

  else
  {
    return 0x6B63616274736F70;
  }
}

uint64_t sub_100016530@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1002135B0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000165A0(uint64_t a1)
{
  v2 = sub_100019664();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000165DC(uint64_t a1)
{
  v2 = sub_100019664();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100016618@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_100017DD8(a2, v7);
  if (!v2)
  {
    v5 = v7[3];
    a1[2] = v7[2];
    a1[3] = v5;
    a1[4] = v8[0];
    *(a1 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  return result;
}

uint64_t sub_1000166B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x726F727265;
  if (v2 != 1)
  {
    v4 = 0x676E69726564726FLL;
    v3 = 0xEE007865646E692DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x737574617473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x726F727265;
  if (*a2 != 1)
  {
    v8 = 0x676E69726564726FLL;
    v7 = 0xEE007865646E692DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x737574617473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000167C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100016870(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100016904(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000169A8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000187F0(*a1);
  *a2 = result;
  return result;
}

void sub_1000169D8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x726F727265;
  if (v2 != 1)
  {
    v5 = 0x676E69726564726FLL;
    v4 = 0xEE007865646E692DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x737574617473;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100016A3C()
{
  v1 = 0x726F727265;
  if (*v0 != 1)
  {
    v1 = 0x676E69726564726FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737574617473;
  }
}

unint64_t sub_100016A9C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000187F0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100016AC4(uint64_t a1)
{
  v2 = sub_10001A194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100016B00(uint64_t a1)
{
  v2 = sub_10001A194();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100016B48()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100016C24(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_100016CEC(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100016DC4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000180A4(*a1);
  *a2 = result;
  return result;
}

void sub_100016DF4(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xEB00000000726F72;
  v5 = 0x7265206E656B6F74;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001001CA1A0;
  }

  if (*v1)
  {
    v3 = 0x7265747369676572;
    v2 = 0xEE00726F72726520;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_100016E98(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a3;
  v13[1] = a4;
  v8 = sub_10000CDE0(&qword_10023A5A8, &qword_1001B4B70);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v13 - v10;
  sub_10000DA7C(a1, a1[3]);
  sub_10001A194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2 & 1;
  v16 = 0;
  sub_10001879C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v5)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_100017060(char a1)
{
  result = 0x727574616E676973;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x642D656372756F73;
      break;
    case 4:
      result = 0x6E676961706D6163;
      break;
    case 5:
      result = 0x6E6F6973726576;
      break;
    case 6:
      result = 7107189;
      break;
    case 7:
      result = 0x746361736E617274;
      break;
    case 8:
      result = 0x64692D6D616461;
      break;
    case 9:
      result = 0x6F6C6E776F646572;
      break;
    case 10:
      result = 0x612D6E696769726FLL;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0x7974696C65646966;
      break;
    case 14:
      result = 0x6E69772D646964;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 16:
      result = 0x737574617473;
      break;
    case 17:
      result = 0x6F7774656E2D6461;
      break;
    case 18:
      result = 0x676E69726564726FLL;
      break;
    case 19:
      result = 0x2D7972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10001732C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023A4B8, &qword_1001B4618);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000DA7C(a1, a1[3]);
  sub_100018748();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 11;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = 15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 194);
    v10[14] = 16;
    sub_10001879C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = 17;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = 19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100017758@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_10001883C(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
    *(a1 + 24) = v7;
  }

  return result;
}

uint64_t sub_1000177B4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100017060(*a1);
  v5 = v4;
  if (v3 == sub_100017060(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10001783C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100017060(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000178A0(uint64_t a1)
{
  sub_100017060(*v1);
  String.hash(into:)();
}

Swift::Int sub_1000178F4(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  sub_100017060(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100017954@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100018A5C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_100017984@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100017060(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000179B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100018A5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000179EC(uint64_t a1)
{
  v2 = sub_100018748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100017A28(uint64_t a1)
{
  v2 = sub_100018748();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100017A64@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_100018AB0(a2, v11);
  if (!v2)
  {
    v5 = v11[13];
    *(a1 + 192) = v11[12];
    *(a1 + 208) = v5;
    *(a1 + 224) = v11[14];
    v6 = v11[9];
    *(a1 + 128) = v11[8];
    *(a1 + 144) = v6;
    v7 = v11[11];
    *(a1 + 160) = v11[10];
    *(a1 + 176) = v7;
    v8 = v11[5];
    *(a1 + 64) = v11[4];
    *(a1 + 80) = v8;
    v9 = v11[7];
    *(a1 + 96) = v11[6];
    *(a1 + 112) = v9;
    v10 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v10;
    result = v11[3];
    *(a1 + 32) = v11[2];
    *(a1 + 48) = result;
  }

  return result;
}

unint64_t sub_100017AF0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002134F8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100017B3C(void *a1)
{
  v2 = sub_10000CDE0(&qword_10023A460, &qword_1001B45F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000DA7C(a1, a1[3]);
  sub_10001846C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10000CDE0(&qword_10023A470, &unk_1001B4600);
  v9 = 0;
  sub_1000184C0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  sub_10000CDE0(&qword_10023A488, &qword_1001C19D0);
  v9 = 1;
  sub_100018598();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10000CDE0(&qword_10023A4A0, &qword_1001B4610);
  v9 = 2;
  sub_100018670();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000DB58(a1);
  return v7;
}

uint64_t sub_100017DD8@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v4 = sub_10000CDE0(&qword_10023A4E0, &qword_1001B4628);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - v6;
  sub_10000DA7C(a1, a1[3]);
  sub_100019664();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(a1);
  }

  v8 = v5;
  v9 = v37;
  v24 = 0;
  sub_1000196B8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v31 = v25;
  v32 = v26;
  v22 = 1;
  sub_1000195A8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v7, v4);
  v10 = v23;
  v16 = v33;
  v17 = v34;
  v18[0] = v35;
  *&v18[1] = v36;
  v14 = v31;
  v15 = v32;
  BYTE8(v18[1]) = v23;
  sub_100019760(&v14, v19);
  sub_10000DB58(a1);
  v19[2] = v33;
  v19[3] = v34;
  v19[4] = v35;
  v20 = v36;
  v19[0] = v31;
  v19[1] = v32;
  v21 = v10;
  result = sub_100019798(v19);
  v12 = v17;
  v9[2] = v16;
  v9[3] = v12;
  v9[4] = v18[0];
  *(v9 + 73) = *(v18 + 9);
  v13 = v15;
  *v9 = v14;
  v9[1] = v13;
  return result;
}

unint64_t sub_1000180A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213600, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

__n128 sub_100018100(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_100018144(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001818C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100018218(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10001823C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018284(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000182EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100018300(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100018348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100018398(uint64_t a1)
{
  result = sub_1000183C0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000183C0()
{
  result = qword_10023A450;
  if (!qword_10023A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A450);
  }

  return result;
}

unint64_t sub_100018418()
{
  result = qword_10023A458;
  if (!qword_10023A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A458);
  }

  return result;
}

unint64_t sub_10001846C()
{
  result = qword_10023A468;
  if (!qword_10023A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A468);
  }

  return result;
}

unint64_t sub_1000184C0()
{
  result = qword_10023A478;
  if (!qword_10023A478)
  {
    sub_10000CCC0(&qword_10023A470, &unk_1001B4600);
    sub_100018544();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A478);
  }

  return result;
}

unint64_t sub_100018544()
{
  result = qword_10023A480;
  if (!qword_10023A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A480);
  }

  return result;
}

unint64_t sub_100018598()
{
  result = qword_10023A490;
  if (!qword_10023A490)
  {
    sub_10000CCC0(&qword_10023A488, &qword_1001C19D0);
    sub_10001861C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A490);
  }

  return result;
}

unint64_t sub_10001861C()
{
  result = qword_10023A498;
  if (!qword_10023A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A498);
  }

  return result;
}

unint64_t sub_100018670()
{
  result = qword_10023A4A8;
  if (!qword_10023A4A8)
  {
    sub_10000CCC0(&qword_10023A4A0, &qword_1001B4610);
    sub_1000186F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4A8);
  }

  return result;
}

unint64_t sub_1000186F4()
{
  result = qword_10023A4B0;
  if (!qword_10023A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4B0);
  }

  return result;
}

unint64_t sub_100018748()
{
  result = qword_10023A4C0;
  if (!qword_10023A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4C0);
  }

  return result;
}

unint64_t sub_10001879C()
{
  result = qword_10023A4C8;
  if (!qword_10023A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4C8);
  }

  return result;
}

unint64_t sub_1000187F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213680, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10001883C(void *a1)
{
  v3 = sub_10000CDE0(&qword_10023A590, &qword_1001B4B68);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_10001A194();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    sub_1000195A8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v13;
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 2;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000DB58(a1);
  return v7;
}

unint64_t sub_100018A5C(uint64_t a1, uint64_t a2)
{
  v2 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v2 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100018AB0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023A4D0, &qword_1001B4620);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v44 - v7;
  v9 = a1[3];
  v136 = a1;
  sub_10000DA7C(a1, v9);
  sub_100018748();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000DB58(v136);
  }

  v10 = v6;
  LOBYTE(v91[0]) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v74 = v13;
  LOBYTE(v91[0]) = 1;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v135 = v15 & 1;
  LOBYTE(v91[0]) = 2;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v72 = v17;
  v73 = v16;
  LOBYTE(v91[0]) = 3;
  v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v71 = v18;
  LOBYTE(v91[0]) = 4;
  v62 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v70 = v19;
  LOBYTE(v91[0]) = 5;
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v69 = v20;
  LOBYTE(v91[0]) = 6;
  v60 = KeyedDecodingContainer.decode(_:forKey:)();
  v68 = v21;
  LOBYTE(v91[0]) = 7;
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v67 = v22;
  LOBYTE(v91[0]) = 8;
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v23;
  v75 = 0;
  LOBYTE(v91[0]) = 9;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  v25 = v24;
  LOBYTE(v91[0]) = 10;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v65 = v26;
  v75 = 0;
  LOBYTE(v91[0]) = 11;
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  LOBYTE(v91[0]) = 12;
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  LOBYTE(v91[0]) = 13;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v64 = v27;
  v75 = 0;
  LOBYTE(v91[0]) = 14;
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  LOBYTE(v91[0]) = 15;
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = 0;
  LOBYTE(v76) = 16;
  sub_1000195A8();
  v28 = v75;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v75 = v28;
  if (v28)
  {
    (*(v10 + 8))(v8, v5);
    sub_10000DB58(v136);
  }

  else
  {
    v50 = LOBYTE(v91[0]);
    LOBYTE(v91[0]) = 17;
    v49 = KeyedDecodingContainer.decode(_:forKey:)();
    v51 = v29;
    v75 = 0;
    LOBYTE(v91[0]) = 18;
    v48 = KeyedDecodingContainer.decode(_:forKey:)();
    v75 = 0;
    v128 = 19;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v46 = v31;
    v47 = v30;
    v75 = 0;
    (*(v10 + 8))(v8, v5);
    *(&v85 + 1) = *v133;
    *(&v86 + 10) = v131;
    *(&v88 + 3) = v129;
    v32 = v73;
    *&v76 = v12;
    *(&v76 + 1) = v74;
    v45 = v14;
    *&v77 = v14;
    DWORD1(v85) = *&v133[3];
    HIWORD(v86) = v132;
    BYTE7(v88) = v130;
    v33 = v135;
    BYTE8(v77) = v135;
    v34 = v72;
    *&v78 = v73;
    *(&v78 + 1) = v72;
    v35 = v62;
    v36 = v70;
    *&v79 = v63;
    *(&v79 + 1) = v71;
    *&v80 = v62;
    *(&v80 + 1) = v70;
    *&v81 = v61;
    *(&v81 + 1) = v69;
    *&v82 = v60;
    *(&v82 + 1) = v68;
    *&v83 = v59;
    *(&v83 + 1) = v67;
    *&v84 = v58;
    *(&v84 + 1) = v66;
    LOBYTE(v85) = v25;
    *(&v85 + 1) = v57;
    *&v86 = v65;
    BYTE8(v86) = v56;
    BYTE9(v86) = v55;
    *&v87 = v54;
    *(&v87 + 1) = v64;
    LOBYTE(v88) = v53;
    BYTE1(v88) = v52;
    BYTE2(v88) = v50;
    *(&v88 + 1) = v49;
    *&v89 = v51;
    *(&v89 + 1) = v48;
    *&v90 = v47;
    *(&v90 + 1) = v46;
    sub_1000195FC(&v76, v91);
    sub_10000DB58(v136);
    v91[0] = v12;
    v91[1] = v74;
    v91[2] = v45;
    v92 = v33;
    *v93 = *v134;
    *&v93[3] = *&v134[3];
    v94 = v32;
    v95 = v34;
    v96 = v63;
    v97 = v71;
    v98 = v35;
    v99 = v36;
    v100 = v61;
    v101 = v69;
    v102 = v60;
    v103 = v68;
    v104 = v59;
    v105 = v67;
    v106 = v58;
    v107 = v66;
    v108 = v25;
    *v109 = *v133;
    *&v109[3] = *&v133[3];
    v110 = v57;
    v111 = v65;
    v112 = v56;
    v113 = v55;
    v114 = v131;
    v115 = v132;
    v116 = v54;
    v117 = v64;
    v118 = v53;
    v119 = v52;
    v120 = v50;
    v122 = v130;
    v121 = v129;
    v123 = v49;
    v124 = v51;
    v125 = v48;
    v126 = v47;
    v127 = v46;
    result = sub_100019634(v91);
    v37 = v89;
    a2[12] = v88;
    a2[13] = v37;
    a2[14] = v90;
    v38 = v85;
    a2[8] = v84;
    a2[9] = v38;
    v39 = v87;
    a2[10] = v86;
    a2[11] = v39;
    v40 = v81;
    a2[4] = v80;
    a2[5] = v40;
    v41 = v83;
    a2[6] = v82;
    a2[7] = v41;
    v42 = v77;
    *a2 = v76;
    a2[1] = v42;
    v43 = v79;
    a2[2] = v78;
    a2[3] = v43;
  }

  return result;
}

unint64_t sub_1000195A8()
{
  result = qword_10023A4D8;
  if (!qword_10023A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4D8);
  }

  return result;
}

unint64_t sub_100019664()
{
  result = qword_10023A4E8;
  if (!qword_10023A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4E8);
  }

  return result;
}

unint64_t sub_1000196B8()
{
  result = qword_10023A4F0;
  if (!qword_10023A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A4F0);
  }

  return result;
}

unint64_t sub_1000197C8()
{
  result = qword_10023A500;
  if (!qword_10023A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A500);
  }

  return result;
}

unint64_t sub_10001981C()
{
  result = qword_10023A510;
  if (!qword_10023A510)
  {
    sub_10000CCC0(&qword_10023A470, &unk_1001B4600);
    sub_1000198A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A510);
  }

  return result;
}

unint64_t sub_1000198A0()
{
  result = qword_10023A518;
  if (!qword_10023A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A518);
  }

  return result;
}

unint64_t sub_1000198F4()
{
  result = qword_10023A520;
  if (!qword_10023A520)
  {
    sub_10000CCC0(&qword_10023A488, &qword_1001C19D0);
    sub_100019978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A520);
  }

  return result;
}

unint64_t sub_100019978()
{
  result = qword_10023A528;
  if (!qword_10023A528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A528);
  }

  return result;
}

unint64_t sub_1000199CC()
{
  result = qword_10023A530;
  if (!qword_10023A530)
  {
    sub_10000CCC0(&qword_10023A4A0, &qword_1001B4610);
    sub_100019A50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A530);
  }

  return result;
}

unint64_t sub_100019A50()
{
  result = qword_10023A538;
  if (!qword_10023A538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SKANPostback.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SKANPostback.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_100019C1C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100019C28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100019C70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SystemEnvironment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemEnvironment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100019E28()
{
  result = qword_10023A540;
  if (!qword_10023A540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A540);
  }

  return result;
}

unint64_t sub_100019E80()
{
  result = qword_10023A548;
  if (!qword_10023A548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A548);
  }

  return result;
}

unint64_t sub_100019ED8()
{
  result = qword_10023A550;
  if (!qword_10023A550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A550);
  }

  return result;
}

unint64_t sub_100019F30()
{
  result = qword_10023A558;
  if (!qword_10023A558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A558);
  }

  return result;
}

unint64_t sub_100019F88()
{
  result = qword_10023A560;
  if (!qword_10023A560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A560);
  }

  return result;
}

unint64_t sub_100019FE0()
{
  result = qword_10023A568;
  if (!qword_10023A568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A568);
  }

  return result;
}

unint64_t sub_10001A038()
{
  result = qword_10023A570;
  if (!qword_10023A570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A570);
  }

  return result;
}

unint64_t sub_10001A090()
{
  result = qword_10023A578;
  if (!qword_10023A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A578);
  }

  return result;
}

unint64_t sub_10001A0E8()
{
  result = qword_10023A580;
  if (!qword_10023A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A580);
  }

  return result;
}

unint64_t sub_10001A140()
{
  result = qword_10023A588;
  if (!qword_10023A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A588);
  }

  return result;
}

unint64_t sub_10001A194()
{
  result = qword_10023A598;
  if (!qword_10023A598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A598);
  }

  return result;
}

unint64_t sub_10001A1E8()
{
  result = qword_10023A5A0;
  if (!qword_10023A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A5A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConversionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConversionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001A390()
{
  result = qword_10023A5B0;
  if (!qword_10023A5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A5B0);
  }

  return result;
}

unint64_t sub_10001A3E8()
{
  result = qword_10023A5B8;
  if (!qword_10023A5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A5B8);
  }

  return result;
}

unint64_t sub_10001A440()
{
  result = qword_10023A5C0;
  if (!qword_10023A5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A5C0);
  }

  return result;
}

id sub_10001A654(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CurrencyExchangeRateEntity();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10001A6B0()
{
  result = qword_10023A5F0;
  if (!qword_10023A5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A5F0);
  }

  return result;
}

uint64_t sub_10001A71C(uint64_t a1)
{
  String.hash(into:)();
}

unint64_t sub_10001A860@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10001ABF4(*a1);
  *a2 = result;
  return result;
}

void sub_10001A890(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0x7A69726F68747541;
  v5 = 0xEF65676175676E61;
  v6 = 0x4C2D747065636341;
  if (v2 != 5)
  {
    v6 = 0xD000000000000015;
    v5 = 0x80000001001CA360;
  }

  v7 = 0xE500000000000000;
  v8 = 0x65676E6152;
  if (v2 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = 0x80000001001CA330;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000065707954;
  v10 = 0x2D746E65746E6F43;
  if (v2 != 1)
  {
    v10 = 0x6567412D72657355;
    v9 = 0xEA0000000000746ELL;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for HTTPHeader(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HTTPHeader(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001ABA0()
{
  result = qword_10023A610;
  if (!qword_10023A610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A610);
  }

  return result;
}

unint64_t sub_10001ABF4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002138E8, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10001AC40()
{
  result = qword_10023A618;
  if (!qword_10023A618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A618);
  }

  return result;
}

uint64_t sub_10001AC94()
{
  v1[31] = v0;
  v1[32] = type metadata accessor for PostbackFetchTask(0);
  v1[33] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[34] = v2;
  v1[35] = *(v2 - 8);
  v1[36] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return _swift_task_switch(sub_10001ADD4, 0, 0);
}

uint64_t sub_10001ADD4()
{
  sub_10000DA7C((v0[31] + 168), *(v0[31] + 192));
  v1 = swift_task_alloc();
  v0[40] = v1;
  *v1 = v0;
  v1[1] = sub_10001AE7C;
  v2 = v0[38];

  return sub_100157BD8(v2, 10);
}

uint64_t sub_10001AE7C()
{

  return _swift_task_switch(sub_10001AF78, 0, 0);
}

uint64_t sub_10001AF78()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 272);
  v3 = *(v0 + 280);
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = *(v0 + 312);
  if (v5 == 1)
  {
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10001B884(*(v0 + 304));
    }
  }

  else
  {
    (*(v3 + 32))(*(v0 + 312), v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  sub_10001B8EC(*(v0 + 312), v7);
  if (v4(v7, 1, v8) == 1)
  {
    v9 = *(v0 + 312);
    sub_10001B884(*(v0 + 296));
    sub_10001B95C();
    swift_allocError();
    *v10 = 0;
    swift_willThrow();
    sub_10001B884(v9);

    v11 = *(v0 + 8);

    return v11();
  }

  else
  {
    v13 = *(v0 + 288);
    v14 = *(v0 + 272);
    v15 = *(v0 + 280);
    v17 = *(v0 + 256);
    v16 = *(v0 + 264);
    v18 = *(v0 + 248);
    (*(v15 + 32))(v13, *(v0 + 296), v14);
    (*(v15 + 16))(v16, v13, v14);
    v20 = *(v18 + 1);
    v19 = *(v18 + 2);
    *(v0 + 16) = *v18;
    *(v0 + 32) = v20;
    *(v0 + 48) = v19;
    v22 = *(v18 + 4);
    v21 = *(v18 + 5);
    v23 = *(v18 + 3);
    *(v0 + 111) = *(v18 + 95);
    *(v0 + 80) = v22;
    *(v0 + 96) = v21;
    *(v0 + 64) = v23;
    v24 = *(v18 + 13);
    v25 = *(v18 + 14);
    v27 = *(v18 + 15);
    v26 = *(v18 + 16);
    v29 = *(v18 + 17);
    v28 = *(v18 + 18);
    v33 = *(v18 + 152);
    memmove((v16 + v17[5]), v18, 0x63uLL);
    *(v16 + v17[6]) = v24;
    *(v16 + v17[7]) = v25;
    v30 = (v16 + v17[8]);
    *v30 = v27;
    v30[1] = v26;
    *(v16 + v17[9]) = v33;
    *(v16 + v17[10]) = 0;
    v31 = (v16 + v17[11]);
    *v31 = v29;
    v31[1] = v28;
    sub_10001B9B0(v0 + 16, v0 + 120);

    v32 = swift_task_alloc();
    *(v0 + 328) = v32;
    *v32 = v0;
    v32[1] = sub_10001B2D4;

    return sub_10007CF2C();
  }
}

uint64_t sub_10001B2D4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[42] = a1;
  v4[43] = a2;
  v4[44] = v2;

  if (v2)
  {
    v5 = sub_10001B604;
  }

  else
  {
    v5 = sub_10001B3EC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10001B3EC()
{
  v1 = v0[44];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10001BA68();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v3 = v0[42];
  v2 = v0[43];
  v4 = v0[39];
  if (v1)
  {
    v6 = v0[35];
    v5 = v0[36];
    v8 = v0[33];
    v7 = v0[34];

    sub_10001BABC(v3, v2);
    sub_10001BA0C(v8);
    (*(v6 + 8))(v5, v7);
    sub_10001B884(v4);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[35];
    v12 = v0[36];
    v14 = v0[33];
    v13 = v0[34];

    sub_10001BABC(v3, v2);
    sub_10001BA0C(v14);
    (*(v11 + 8))(v12, v13);
    sub_10001B884(v4);
    v15 = v0[28];
    v16 = v0[29];
    v17 = v0[30];

    v18 = v0[1];

    return v18(v15, v16, v17);
  }
}

uint64_t sub_10001B604()
{
  v1 = v0[39];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[34];
  sub_10001BA0C(v0[33]);
  (*(v3 + 8))(v2, v4);
  sub_10001B884(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10001B6D0(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001B760;

  return sub_10001AC94();
}

uint64_t sub_10001B760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v4;
  v9 = *v4;

  if (!v3)
  {
    v10 = *(v8 + 16);
    *v10 = a1;
    v10[1] = a2;
    v10[2] = a3;
  }

  v11 = *(v9 + 8);

  return v11();
}

uint64_t sub_10001B884(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001B8EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10001B95C()
{
  result = qword_10023A620;
  if (!qword_10023A620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A620);
  }

  return result;
}

uint64_t sub_10001BA0C(uint64_t a1)
{
  Task = type metadata accessor for PostbackFetchTask(0);
  (*(*(Task - 8) + 8))(a1, Task);
  return a1;
}

unint64_t sub_10001BA68()
{
  result = qword_10023A628;
  if (!qword_10023A628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A628);
  }

  return result;
}

uint64_t sub_10001BABC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 sub_10001BB10(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t sub_10001BB4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 208))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10001BB94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 208) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10001BC18@<D0>(uint64_t a3@<X8>)
{
  v6 = [v3 connection];
  v7 = String._bridgeToObjectiveC()();

  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  v10 = sub_100084E74(v6, v9, _swiftEmptyArrayStorage, 0, 0);
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v15[2] = &v16;
  sub_10003445C(sub_10001BF0C, v15, v10);

  if (v4)
  {
  }

  else
  {
    v12 = v19;
    result = *&v16;
    v13 = v17;
    v14 = v18;
    *a3 = v16;
    *(a3 + 16) = v13;
    *(a3 + 32) = v14;
    *(a3 + 48) = v12;
  }

  return result;
}

id sub_10001BE28(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for RetryCountDatabaseSession();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10001BE80(uint64_t *a1, uint64_t a2, _BYTE *a3, void *a4)
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v9 = a1[2];
  v8 = a1[3];
  v10 = *(a1 + 32);
  v11 = a1[5];
  v12 = a1[6];

  *a4 = v6;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = v11;
  a4[6] = v12;
  *a3 = 1;
}

uint64_t sub_10001BF14()
{
  v1[6] = v0;
  sub_10000CDE0(&qword_10023A670, &qword_1001B4FA8);
  v1[7] = swift_task_alloc();
  v2 = type metadata accessor for TimeZone();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v3 = type metadata accessor for Calendar.Identifier();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  v4 = type metadata accessor for Calendar();
  v1[14] = v4;
  v1[15] = *(v4 - 8);
  v1[16] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v6 = type metadata accessor for URLRequest();
  v1[21] = v6;
  v1[22] = *(v6 - 8);
  v1[23] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v1[24] = v7;
  v1[25] = *(v7 - 8);
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return _swift_task_switch(sub_10001C24C, 0, 0);
}

uint64_t sub_10001C24C()
{
  sub_10000DA7C(*(v0 + 48), *(*(v0 + 48) + 24));
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10001C2F0;
  v2 = *(v0 + 240);

  return sub_100157BD8(v2, 19);
}

uint64_t sub_10001C2F0()
{

  return _swift_task_switch(sub_10001C3EC, 0, 0);
}

void sub_10001C3EC()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[31];
  if (v5 == 1)
  {
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10000DAF8(v0[30], &qword_10023C230, &qword_1001B4FB0);
    }
  }

  else
  {
    (*(v3 + 32))(v0[31], v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v7 = v0[29];
  v8 = v0[24];
  sub_10001B8EC(v0[31], v7);
  if (v4(v7, 1, v8) == 1)
  {
    sub_10000DAF8(v0[29], &qword_10023C230, &qword_1001B4FB0);
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000DAC0(v9, qword_10023FC88);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Invalid URL for token fetch task", v12, 2u);
    }

    v13 = v0[31];

    sub_10001E5B0();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 1;
    swift_willThrow();
    sub_10000DAF8(v13, &qword_10023C230, &qword_1001B4FB0);

    v15 = v0[1];

    v15();
    return;
  }

  v17 = v0[27];
  v16 = v0[28];
  v18 = v0[25];
  v19 = v0[26];
  v20 = v0[24];
  v21 = v0[12];
  v40 = v0[13];
  v39 = v0[11];
  v42 = v0[9];
  v43 = v0[8];
  v41 = v0[7];
  (*(v18 + 32))(v16, v0[29], v20);
  v22 = *(v18 + 16);
  v22(v17, v16, v20);
  v22(v19, v17, v20);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  v23 = *(v18 + 8);
  v0[33] = v23;
  v0[34] = (v18 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v17, v20);
  (*(v21 + 104))(v40, enum case for Calendar.Identifier.iso8601(_:), v39);
  Calendar.init(identifier:)();
  (*(v21 + 8))(v40, v39);
  TimeZone.init(secondsFromGMT:)();
  if ((*(v42 + 48))(v41, 1, v43) == 1)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v24 = v0[19];
  v25 = v0[17];
  v26 = v0[18];
  v28 = v0[15];
  v27 = v0[16];
  v29 = v0[14];
  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  Calendar.timeZone.setter();
  static Date.now.getter();
  Calendar.startOfDay(for:)();
  v30 = *(v26 + 8);
  v0[35] = v30;
  v0[36] = (v26 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v30(v24, v25);
  (*(v28 + 8))(v27, v29);
  Date.timeIntervalSince1970.getter();
  v32 = v31 * 1000.0;
  if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v32 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v32 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = v0[23];
  v34 = v0[6];
  v0[4] = v32;
  v35.value._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v36._object = 0x80000001001CA360;
  v36._countAndFlagsBits = 0xD000000000000015;
  URLRequest.setValue(_:forHTTPHeaderField:)(v35, v36);

  v37 = swift_task_alloc();
  v0[37] = v37;
  *(v37 + 16) = v34;
  *(v37 + 24) = v33;
  v38 = swift_task_alloc();
  v0[38] = v38;
  *v38 = v0;
  v38[1] = sub_10001CA68;

  sub_10001DB1C((v0 + 2), 0, dword_1001B4FC0, v37);
}

uint64_t sub_10001CA68()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_10001CEF8;
  }

  else
  {
    v2 = sub_10001CB9C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10001CB9C()
{
  v1 = v0[39];
  v2 = v0[22];
  v3 = v0[2];
  v4 = v0[3];
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10001E6B0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v5 = (v2 + 8);
  v6 = v0[35];
  v23 = v0[33];
  v24 = v0[31];
  if (v1)
  {
    v7 = v0[28];
    v8 = v0[24];
    v9 = v0[20];
    v21 = v0[21];
    v22 = v0[23];
    v10 = v0[17];

    sub_10001BABC(v3, v4);
    v6(v9, v10);
    v23(v7, v8);
    sub_10000DAF8(v24, &qword_10023C230, &qword_1001B4FB0);
    (*v5)(v22, v21);

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[28];
    v14 = v0[24];
    v15 = v0[20];
    v19 = v0[23];
    v20 = v0[21];
    v16 = v0[17];

    sub_10001BABC(v3, v4);
    v6(v15, v16);
    v23(v13, v14);
    sub_10000DAF8(v24, &qword_10023C230, &qword_1001B4FB0);
    v17 = v0[5];
    (*v5)(v19, v20);

    v18 = v0[1];

    return v18(v17);
  }
}

uint64_t sub_10001CEF8()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 248);
  v3 = *(v0 + 224);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 168);
  v7 = *(v0 + 176);
  (*(v0 + 280))(*(v0 + 160), *(v0 + 136));
  v1(v3, v4);
  sub_10000DAF8(v2, &qword_10023C230, &qword_1001B4FB0);
  (*(v7 + 8))(v5, v6);

  v8 = *(v0 + 8);

  return v8();
}