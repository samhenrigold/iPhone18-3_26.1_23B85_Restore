void CRLLogSinkf(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a2;
  v12 = a5;
  v16 = a6;
  v17 = a6;
  v13 = [[NSString alloc] crl_initRedactedWithFormat:v12 arguments:a6];
  if (s_logSinkBlocks && [s_logSinkBlocks count] && objc_msgSend(s_logSinkBlocks, "count"))
  {
    v14 = 0;
    do
    {
      v15 = [s_logSinkBlocks objectAtIndexedSubscript:{v14, v16, v17}];
      (v15)[2](v15, a1, v11, a3, a4, v13);

      ++v14;
    }

    while (v14 < [s_logSinkBlocks count]);
  }
}

void CRLLogSinkv(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = [NSString stringWithUTF8String:a5];
  CRLLogSinkf(a1, v11, a3, a4, v12, a6);
}

id CRLLogSinkSetBlock(void *a1)
{
  v1 = a1;
  v2 = [s_logSinkBlocks copy];
  if (v1)
  {
    v3 = objc_retainBlock(v1);
    v8 = v3;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    v5 = s_logSinkBlocks;
    s_logSinkBlocks = v4;
  }

  else
  {
    v6 = s_logSinkBlocks;
    s_logSinkBlocks = &__NSArray0__struct;
  }

  return v2;
}

id CRLLogSinkSetBlocks(void *a1)
{
  v1 = a1;
  v2 = [s_logSinkBlocks copy];
  v3 = s_logSinkBlocks;
  s_logSinkBlocks = v1;

  return v2;
}

os_log_t CRLLogCreateCategory(char *category)
{
  v1 = os_log_create("com.apple.freeform", category);

  return v1;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id EnabledCategories(uint64_t a1)
{
  if (EnabledCategories_pred != -1)
  {
    EnabledCategories_cold_1();
  }

  v2 = EnabledCategories_sYESCategories;

  return v2;
}

id DisabledCategories(uint64_t a1)
{
  if (DisabledCategories_pred != -1)
  {
    DisabledCategories_cold_1();
  }

  v2 = DisabledCategories_sNOCategories;

  return v2;
}

id CRLLogCat_GetSortedCategories(uint64_t a1)
{
  v1 = EnabledCategories(a1);
  v2 = [v1 allObjects];

  v4 = DisabledCategories(v3);
  v5 = [v4 allObjects];

  if (v5)
  {
    if (v2)
    {
      v6 = [v2 arrayByAddingObjectsFromArray:v5];

      v2 = v6;
    }

    else
    {
      v2 = v5;
    }
  }

  v7 = [v2 sortedArrayUsingSelector:"caseInsensitiveCompare:"];

  return v7;
}

BOOL CRLLogCat_AreAnyCategoriesEnabled(uint64_t a1)
{
  v1 = EnabledCategories(a1);
  v2 = [v1 count] != 0;

  return v2;
}

BOOL CRLLogCat_AreAnyCategoriesDisabled(uint64_t a1)
{
  v1 = DisabledCategories(a1);
  v2 = [v1 count] != 0;

  return v2;
}

id CRLLogCat_IsCategoryEnabled(void *a1)
{
  v1 = a1;
  v2 = EnabledCategories(v1);
  v3 = [v2 containsObject:v1];

  return v3;
}

id CRLLogCat_IsCategoryDefined(void *a1)
{
  v1 = a1;
  v2 = EnabledCategories(v1);
  v3 = [v2 containsObject:v1];
  if (v3)
  {
    v4 = &dword_0 + 1;
  }

  else
  {
    v5 = DisabledCategories(v3);
    v4 = [v5 containsObject:v1];
  }

  return v4;
}

void CRLLogCat_SetCategoryEnabled(void *a1, int a2)
{
  v3 = a1;
  v4 = EnabledCategories(v3);
  v5 = DisabledCategories(v4);
  v6 = [v5 containsObject:v3];
  if ([v4 containsObject:v3])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 containsObject:v3] ^ 1;
  }

  if (a2)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (a2)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  [v8 removeObject:v3];
  [v9 addObject:v3];
  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v4 allObjects];
  [v10 setObject:v11 forKey:@"CRLLogCatYES"];

  v12 = [v5 allObjects];
  [v10 setObject:v12 forKey:@"CRLLogCatNO"];

  if (v7)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___sendCategoryAddedNotification_block_invoke;
    block[3] = &unk_4CF08;
    v16 = v3;
    dispatch_async(&_dispatch_main_q, block);
  }

  if (v6 == a2)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __CRLLogCat_SetCategoryEnabled_block_invoke;
    v13[3] = &unk_4CF08;
    v14 = v3;
    dispatch_async(&_dispatch_main_q, v13);
  }
}

void CRLLogCat_ToggleCategoryEnabled(void *a1)
{
  v2 = a1;
  v1 = CRLLogCat_IsCategoryEnabled(v2);
  CRLLogCat_SetCategoryEnabled(v2, v1 ^ 1);
}

void CRLLogCat_RemoveCategory(void *a1)
{
  v1 = a1;
  v3 = EnabledCategories(v1);
  v2 = DisabledCategories(v3);
  [v3 removeObject:v1];
  [v2 removeObject:v1];
}

id CRLLogCat_GetEnabledCategories(uint64_t a1)
{
  v1 = EnabledCategories(a1);
  v2 = [v1 immutableSet];

  return v2;
}

id CRLLogCat_GetDisabledCategories(uint64_t a1)
{
  v1 = DisabledCategories(a1);
  v2 = [v1 immutableSet];

  return v2;
}

id CRLLogGetNameDictionary(uint64_t a1)
{
  if (CRLLogGetNameDictionary_onceToken != -1)
  {
    CRLLogGetNameDictionary_cold_1();
  }

  v2 = CRLLogGetNameDictionary_nameDictionary;

  return v2;
}

void *CRLLogEnsureCreated(void *a1, void *a2, dispatch_once_t *a3)
{
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = __CRLLogEnsureCreated_block_invoke;
  v15 = &unk_4CF50;
  v16 = a1;
  v17 = a2;
  v5 = *a3;
  v6 = a1;
  v7 = v6;
  if (v5 != -1)
  {
    dispatch_once(a3, &v12);
  }

  v8 = CRLLogGetNameDictionary(v6);
  [v8 setObject:v7 forKey:{*a2, v12, v13, v14, v15, v16, v17}];

  v9 = *a2;
  v10 = v9;

  return v9;
}

void __CRLLogEnsureCreated_block_invoke(uint64_t a1)
{
  v2 = os_log_create("com.apple.freeform", [*(a1 + 32) UTF8String]);

  **(a1 + 40) = v2;
}

id CRLLogGetName(void *a1)
{
  v1 = a1;
  v2 = CRLLogGetNameDictionary(v1);
  v3 = [v2 objectForKey:v1];

  return v3;
}

void ___sendCategoryAddedNotification_block_invoke(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    v2 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      ___sendCategoryAddedNotification_block_invoke_cold_1();
    }

    v3 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      ___sendCategoryAddedNotification_block_invoke_cold_2(v2, v3);
    }

    if (CRLAssertCat_init_token != -1)
    {
      ___sendCategoryAddedNotification_block_invoke_cold_3();
    }

    v4 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      ___sendCategoryAddedNotification_block_invoke_cold_4(v4, v2);
    }

    v5 = [NSString stringWithUTF8String:"void _sendCategoryAddedNotification(NSString *__strong)_block_invoke"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLLog.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:151 isFatal:0 description:"invalid nil value for '%{public}s'", "category"];
  }

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = *(a1 + 32);
  v10 = @"CRLLogCatCategoryKey";
  v11 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  [v7 postNotificationName:@"CRLLogCatCategoryAdded" object:0 userInfo:v9];
}

void ___sendCategoryAddedNotification_block_invoke_2(id a1)
{
  CRLAssertCat_log_t = os_log_create("com.apple.freeform", "CRLAssertCat");

  _objc_release_x1();
}

void ___sendCategoryAddedNotification_block_invoke_58(id a1)
{
  CRLAssertCat_log_t = os_log_create("com.apple.freeform", "CRLAssertCat");

  _objc_release_x1();
}

uint64_t CRLBuildIndexFromBuildVersion(void *a1)
{
  v1 = a1;
  v25 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"([0-9]+)([A-Za-z])([0-9]+)([A-Za-z])?" options:1 error:&v25];
  v3 = [v2 firstMatchInString:v1 options:0 range:{0, objc_msgSend(v1, "length")}];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rangeAtIndex:1];
    v7 = [v1 substringWithRange:{v5, v6}];
    v8 = [v7 intValue];

    v9 = [v4 rangeAtIndex:2];
    v11 = [v1 substringWithRange:{v9, v10}];
    v12 = [v11 uppercaseString];
    v13 = [v12 characterAtIndex:0];

    v14 = [v4 rangeAtIndex:3];
    v16 = [v1 substringWithRange:{v14, v15}];
    v17 = [v16 intValue];

    v18 = [v4 rangeAtIndex:4];
    v20 = 0;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = [v1 substringWithRange:{v18, v19}];
      v22 = [v21 uppercaseString];
      v20 = [v22 characterAtIndex:0] - 64;
    }

    v23 = v20 | (32 * (((v13 << 14) + 0x7FFFFFFFFF00000) | (v8 << 19) | v17));
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

id CRLBuildIndexSetFromString(void *a1)
{
  v1 = a1;
  v23 = 0;
  v2 = [NSRegularExpression regularExpressionWithPattern:@"([0-9A-Za-z]+)([- options:])? *" error:1, &v23];
  v3 = v23;
  v4 = [v1 length];
  v22 = +[NSMutableIndexSet indexSet];
  if (!v4)
  {
    goto LABEL_28;
  }

  v21 = v3;
  v5 = 0;
  v6 = 0;
  while (1)
  {
    v7 = [v2 firstMatchInString:v1 options:0 range:{v5, v4}];
    v8 = v7;
    if (!v7)
    {
      break;
    }

    v9 = [v7 rangeAtIndex:1];
    v11 = [v1 substringWithRange:{v9, v10}];
    v12 = [v8 rangeAtIndex:2];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
      if ([0 isEqualToString:@"-"])
      {
        goto LABEL_8;
      }

LABEL_12:
      if (v6)
      {
        v15 = CRLBuildIndexFromBuildVersion(v6);
        v16 = CRLBuildIndexFromBuildVersion(v11);
        if (v15 && v16 && v16 >= v15)
        {
          [v22 addIndexesInRange:{v15, v16 - v15 + 1}];
        }

        v6 = 0;
      }

      else
      {
        v17 = CRLBuildIndexFromBuildVersion(v11);
        if (v17)
        {
          [v22 addIndex:v17];
        }

        v6 = 0;
      }

      goto LABEL_21;
    }

    v14 = [v1 substringWithRange:{v12, v13}];
    if ([v14 isEqualToString:@"-"])
    {
LABEL_8:
      if (!v6)
      {
        v6 = v11;
      }

      goto LABEL_21;
    }

    if (!v14 || [v14 isEqualToString:{@", "}])
    {
      goto LABEL_12;
    }

LABEL_21:
    [v8 rangeAtIndex:0];
    v5 += v18;
    v4 -= v18;

    if (!v4)
    {
      goto LABEL_24;
    }
  }

LABEL_24:
  v3 = v21;
  if (v6)
  {
    v19 = CRLBuildIndexFromBuildVersion(v6);
    if (v19)
    {
      [v22 addIndexesInRange:{v19, 0x7FFFFFFFFFFFFFFELL - v19}];
    }
  }

LABEL_28:

  return v22;
}

id CRLProductBuildVersion()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"../../CoreServices/SystemVersion.plist"];
  v3 = [v2 stringByStandardizingPath];

  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];
  v5 = [v4 objectForKey:@"ProductBuildVersion"];
  v6 = [NSString stringWithFormat:@"%@", v5];

  return v6;
}

id CRLProductName()
{
  v0 = [NSBundle bundleForClass:objc_opt_class()];
  v1 = [v0 bundlePath];
  v2 = [v1 stringByAppendingPathComponent:@"../../CoreServices/SystemVersion.plist"];
  v3 = [v2 stringByStandardizingPath];

  v4 = [NSDictionary dictionaryWithContentsOfFile:v3];
  v5 = [v4 objectForKey:@"ProductName"];
  v6 = [NSString stringWithFormat:@"%@", v5];

  return v6;
}

uint64_t CRLProductBuildIndex()
{
  result = CRLProductBuildIndex_s_buildIndex;
  if (!CRLProductBuildIndex_s_buildIndex)
  {
    v1 = CRLProductBuildVersion();
    CRLProductBuildIndex_s_buildIndex = CRLBuildIndexFromBuildVersion(v1);

    return CRLProductBuildIndex_s_buildIndex;
  }

  return result;
}

id CRLSystemVersion()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 systemVersion];

  return v1;
}

uint64_t CRLSystemVersionNumber()
{
  v0 = CRLSystemVersion();
  v1 = CRLVersionNumberFromString(v0);

  return v1;
}

uint64_t CRLVersionNumberFromString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  v2 = [v1 count];
  if (v2 < 1)
  {
    v5 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [v1 objectAtIndexedSubscript:0];
    v5 = 1000000 * [v4 integerValue];

    if (v3 != 1)
    {
      v6 = [v1 objectAtIndexedSubscript:1];
      v5 += 1000 * [v6 integerValue];

      if (v3 >= 3)
      {
        v7 = [v1 objectAtIndexedSubscript:2];
        v5 += [v7 integerValue];
      }
    }
  }

  return v5;
}

id CRLValidPlatformTags()
{
  v0 = CRLValidPlatformTags_validPlatforms;
  if (!CRLValidPlatformTags_validPlatforms)
  {
    v1 = [NSMutableSet setWithObject:@"ios"];
    v2 = CRLValidPlatformTags_validPlatforms;
    CRLValidPlatformTags_validPlatforms = v1;

    p_appendPlatformComponent(CRLValidPlatformTags_validPlatforms, @"-arm");
    v3 = CRLValidPlatformTags_validPlatforms;
    v4 = +[UIScreen mainScreen];
    [v4 scale];
    if (v5 == 2.0)
    {
      v6 = @"@2x";
    }

    else
    {
      v6 = @"@1x";
    }

    p_appendPlatformComponent(v3, v6);

    [CRLValidPlatformTags_validPlatforms addObject:@"default"];
    v0 = CRLValidPlatformTags_validPlatforms;
  }

  return v0;
}

void p_appendPlatformComponent(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = +[NSMutableSet set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [NSString stringWithFormat:@"%@%@", *(*(&v12 + 1) + 8 * v10), v4, v12];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [v6 unionSet:v5];
}

__CFString *CRLPlatformTag()
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v0 = CRLValidPlatformTags();
  v1 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    v4 = &stru_4EB10;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v10 + 1) + 8 * i);
        if (([v6 isEqualToString:{@"default", v10}] & 1) == 0)
        {
          v7 = [v6 length];
          if (v7 > [(__CFString *)v4 length])
          {
            v8 = v6;

            v4 = v8;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  else
  {
    v4 = &stru_4EB10;
  }

  return v4;
}

id CRLPlatformSpecificStringForBuildIndex(void *a1, uint64_t a2)
{
  v2 = a1;
  v36 = 0;
  v35 = [NSRegularExpression regularExpressionWithPattern:@"(?:\\[(ios|ios-sim|ios-sim@1x|ios-sim@2x|ios-arm|ios@2x|mac|mac32|mac64|default)(?:\\:([^\\]]*))?\\])?([^\\[]*)" options:1 error:&v36];
  v32 = v36;
  v3 = [v2 length];
  v4 = 0;
  v34 = 0;
  do
  {
    if (!v3)
    {
      break;
    }

    v5 = [v35 firstMatchInString:v2 options:0 range:{v4, v3}];
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = [v5 rangeAtIndex:1];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = v7;
    }

    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = 0;
    }

    else
    {
      v10 = v8;
    }

    v11 = [v2 substringWithRange:{v9, v10}];
    v12 = [v6 rangeAtIndex:2];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 0;
    }

    else
    {
      v14 = v12;
    }

    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = 0;
    }

    else
    {
      v15 = v13;
    }

    v16 = [v2 substringWithRange:{v14, v15}];
    v17 = [v6 rangeAtIndex:3];
    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = 0;
    }

    else
    {
      v19 = v17;
    }

    if (v17 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0;
    }

    else
    {
      v20 = v18;
    }

    v21 = [v2 substringWithRange:{v19, v20}];
    if ([v11 length])
    {
      v22 = CRLValidPlatformTags();
      v23 = [v22 containsObject:v11];

      if (!v23)
      {
        goto LABEL_29;
      }
    }

    if (![v16 length])
    {
      v29 = v21;

      v27 = 0;
      v34 = v29;
      goto LABEL_31;
    }

    v24 = CRLBuildIndexSetFromString(v16);
    v25 = v24;
    if (!v24 || ([v24 containsIndex:a2] & 1) == 0)
    {

LABEL_29:
      [v6 rangeAtIndex:0];
      v4 += v28;
      v3 -= v28;
      v27 = 1;
      goto LABEL_31;
    }

    v26 = v21;

    v27 = 0;
    v34 = v26;
LABEL_31:
  }

  while ((v27 & 1) != 0);
  v30 = v34;

  return v34;
}

id CRLPlatformSpecificString(void *a1)
{
  v1 = a1;
  v2 = CRLProductBuildIndex();
  v3 = CRLPlatformSpecificStringForBuildIndex(v1, v2);

  return v3;
}

void sub_4FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x12u);
}

void OUTLINED_FUNCTION_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x2Cu);
}

void CRLNormalizeRanges(void *a1)
{
  v15 = a1;
  [v15 sortUsingFunction:compareRangeValues context:0];
  if ([v15 count] >= 2)
  {
    v1 = 0;
    v2 = 1;
    do
    {
      v3 = v1;
      v1 = v2;
      v4 = [v15 objectAtIndex:v3];
      location = [v4 rangeValue];
      length = v6;

      v8 = [v15 objectAtIndex:v2];
      v9 = [v8 rangeValue];
      v11 = v10;
      while (1)
      {

        v17.location = location;
        v17.length = length;
        v19.location = v9;
        v19.length = v11;
        if (!NSIntersectionRange(v17, v19).length)
        {
          break;
        }

        v18.location = location;
        v18.length = length;
        v20.location = v9;
        v20.length = v11;
        v12 = NSUnionRange(v18, v20);
        location = v12.location;
        length = v12.length;
        v8 = [NSValue valueWithRange:v12.location, v12.length];
        [v15 replaceObjectAtIndex:v3 withObject:v8];
        [v15 removeObjectAtIndex:v2];
        if ([v15 count] <= v2)
        {
          v11 = 0;
        }

        else
        {
          v13 = [v15 objectAtIndex:v2];
          v9 = [v13 rangeValue];
          v11 = v14;
        }
      }

      v2 = (v2 + 1);
    }

    while ([v15 count] > v2);
  }
}

uint64_t compareRangeValues(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 rangeValue];
  v5 = [v3 rangeValue];

  if (v4 < v5)
  {
    return -1;
  }

  else
  {
    return v4 > v5;
  }
}

id CRLIntersectionLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [NSMutableArray arrayWithCapacity:v7];
  v9 = [v3 mutableCopy];
  v10 = [v4 mutableCopy];
  CRLNormalizeRanges(v9);
  CRLNormalizeRanges(v10);
  if (v5 && v6)
  {
    while ([v9 count] && objc_msgSend(v10, "count"))
    {
      v11 = [v9 objectAtIndex:0];
      v12 = [v11 rangeValue];
      v14 = v13;

      v15 = [v10 objectAtIndex:0];
      v16 = [v15 rangeValue];
      v18 = v17;

      v24.location = v12;
      v24.length = v14;
      v26.location = v16;
      v26.length = v18;
      if (NSIntersectionRange(v24, v26).length)
      {
        v25.location = v12;
        v25.length = v14;
        v27.location = v16;
        v27.length = v18;
        v19 = NSIntersectionRange(v25, v27);
        v20 = [NSValue valueWithRange:v19.location, v19.length];
        [v8 addObject:v20];
      }

      if (v12 >= v16)
      {
        v21 = v10;
      }

      else
      {
        v21 = v9;
      }

      [v21 removeObjectAtIndex:0];
    }
  }

  return v8;
}

id CRLUnionLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  [NSMutableArray arrayWithCapacity:v7];
  v32 = v31 = v3;
  v8 = [v3 mutableCopy];
  v30 = v4;
  v9 = [v4 mutableCopy];
  CRLNormalizeRanges(v8);
  CRLNormalizeRanges(v9);
LABEL_5:
  if ([v8 count] && objc_msgSend(v9, "count"))
  {
    v10 = [v8 objectAtIndex:0];
    v11 = [v10 rangeValue];
    v13 = v12;

    v14 = [v9 objectAtIndex:0];
    v15 = [v14 rangeValue];
    v17 = v16;

    if (v11 >= v15)
    {
      length = v17;
    }

    else
    {
      length = v13;
    }

    if (v11 >= v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = v11;
    }

    while (1)
    {
      while (1)
      {
        if (![v8 count] || !objc_msgSend(v9, "count"))
        {
LABEL_24:
          v28 = [NSValue valueWithRange:v19, length];
          [v32 addObject:v28];

          goto LABEL_5;
        }

        v34.location = v11;
        v34.length = v13;
        v38.location = v19;
        v38.length = length;
        location = NSIntersectionRange(v34, v38).location;
        v21 = location != 0;
        if (location)
        {
          v35.location = v11;
          v35.length = v13;
          v39.location = v19;
          v39.length = length;
          v22 = NSUnionRange(v35, v39);
          v19 = v22.location;
          length = v22.length;
          [v8 removeObjectAtIndex:0];
          if ([v8 count])
          {
            v23 = [v8 objectAtIndex:0];
            v11 = [v23 rangeValue];
            v13 = v24;
          }
        }

        v36.location = v15;
        v36.length = v17;
        v40.location = v19;
        v40.length = length;
        if (NSIntersectionRange(v36, v40).location)
        {
          break;
        }

LABEL_21:
        if (!v21)
        {
          goto LABEL_24;
        }
      }

      v37.location = v15;
      v37.length = v17;
      v41.location = v19;
      v41.length = length;
      v25 = NSUnionRange(v37, v41);
      v19 = v25.location;
      length = v25.length;
      [v9 removeObjectAtIndex:0];
      if (![v9 count])
      {
        v21 = 1;
        goto LABEL_21;
      }

      v26 = [v9 objectAtIndex:0];
      v15 = [v26 rangeValue];
      v17 = v27;
    }
  }

  [v32 addObjectsFromArray:v8];
  [v32 addObjectsFromArray:v9];

  return v32;
}

id CRLComplementLocations(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [v3 count];
  v6 = [v4 count];
  if (v5 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = v5;
  }

  v8 = [NSMutableArray arrayWithCapacity:v7];
  v28 = v3;
  v9 = [v3 mutableCopy];
  v27 = v4;
  v10 = [v4 mutableCopy];
  CRLNormalizeRanges(v9);
  CRLNormalizeRanges(v10);
  v11 = [v9 objectAtIndex:0];
  v12 = [v11 rangeValue];

  if ([v9 count])
  {
    v13 = 0;
    do
    {
      if (![v10 count])
      {
        break;
      }

      v14 = [v9 objectAtIndex:0];
      v15 = [v14 rangeValue];
      v17 = v16;

      v18 = [v10 objectAtIndex:0];
      v19 = [v18 rangeValue];
      v21 = v20;

      v30.location = v15;
      v30.length = v17;
      v31.location = v19;
      v31.length = v21;
      v22 = NSIntersectionRange(v30, v31);
      if (v22.location)
      {
        if (v22.location > v12)
        {
          v13 = v22.location - v12;
        }

        if (v13)
        {
          v23 = [NSValue valueWithRange:v12, v13];
          [v8 addObject:v23];
        }

        if (&v15[v17] <= v22.location + v22.length)
        {
          goto LABEL_16;
        }

        [v10 removeObjectAtIndex:0];
        v13 = 0;
        v12 = (v22.location + v22.length);
      }

      else
      {
        if (v19 > v15)
        {
          v13 = &v15[v17] - v12;
          v24 = [NSValue valueWithRange:v12, v13];
          [v8 addObject:v24];

LABEL_16:
          [v9 removeObjectAtIndex:0];
          if ([v9 count])
          {
            v25 = [v9 objectAtIndex:0];
            v12 = [v25 rangeValue];

            v13 = 0;
          }

          continue;
        }

        [v10 removeObjectAtIndex:0];
      }
    }

    while ([v9 count]);
  }

  return v8;
}

NSUInteger CRLIntersectionRangeWithEdge(NSRange a1, NSRange a2, int a3)
{
  length = a2.length;
  location = a2.location;
  v6 = a1.length;
  v7 = a1.location;
  v8 = NSIntersectionRange(a1, a2);
  if (length)
  {
    v9 = v6 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v7 | location)
  {
    v11 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v10;
  }

  if (v8 == 0uLL)
  {
    v12 = v11;
  }

  else
  {
    v12 = v8.location;
  }

  if (location + length == v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v12;
  }

  if (v7 + v6 == location)
  {
    v14 = location;
  }

  else
  {
    v14 = v13;
  }

  if (a3)
  {
    return v14;
  }

  else
  {
    return v12;
  }
}

uint64_t CRLAdjustSelectionRangeForChangedRange(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  if (!a5)
  {
    return v5;
  }

  if (a1 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [CRLAssertionHandler _atomicIncrementAssertCount:a3];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_9();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_10();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_11();
    }

    v7 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v7 withFormat:?];
    }

    v8 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v9 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    [CRLAssertionHandler handleFailureInFunction:v8 file:v9 lineNumber:218 isFatal:0 description:"Bad selectionRange passed to CRLAdjustSelectionRangeForChangedRange"];

    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (a3 != 0x7FFFFFFFFFFFFFFFLL)
    {
      return v5;
    }

    goto LABEL_14;
  }

  if (a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_13();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_14();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_15();
    }

    v10 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v10 withFormat:?];
    }

    v11 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    v13 = "Bad changingRange passed to CRLAdjustSelectionRangeForChangedRange";
    v14 = v11;
    v15 = v12;
    v16 = 219;
LABEL_23:
    [CRLAssertionHandler handleFailureInFunction:v14 file:v15 lineNumber:v16 isFatal:0 description:v13];

    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (-a4 > a5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_5();
    }

    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      CRLAdjustSelectionRangeForChangedRange_cold_6();
    }

    if (CRLAssertCat_init_token != -1)
    {
      CRLAdjustSelectionRangeForChangedRange_cold_7();
    }

    v19 = CRLAssertCat_log_t;
    if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
    {
      [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v19 withFormat:?];
    }

    v11 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
    v13 = "Bad delta passed to CRLAdjustSelectionRangeForChangedRange";
    v14 = v11;
    v15 = v12;
    v16 = 223;
    goto LABEL_23;
  }

  v20 = a1 + a2;
  if (a1 + a2 >= a3)
  {
    v21 = a3 + a4;
    if (a3 + a4 >= a1)
    {
      if ((a3 != a1 || a4 != a2) && (a1 > a3 || v20 < v21) && a3 <= a1)
      {
        if (v21 >= v20)
        {
          if (-a2 > a5 && a1 >= a4 + a5 + a3)
          {
            return a4 + a5 + a3;
          }
        }

        else
        {
          if (a1 <= a3)
          {
            +[CRLAssertionHandler _atomicIncrementAssertCount];
            if (CRLAssertCat_init_token != -1)
            {
              CRLAdjustSelectionRangeForChangedRange_cold_1();
            }

            if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              CRLAdjustSelectionRangeForChangedRange_cold_2();
            }

            if (CRLAssertCat_init_token != -1)
            {
              CRLAdjustSelectionRangeForChangedRange_cold_3();
            }

            v22 = CRLAssertCat_log_t;
            if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
            {
              [NSString(CRLAdditions) crl_stringByUniquingPathInsideDirectory:v22 withFormat:?];
            }

            v23 = [NSString stringWithUTF8String:"NSRange CRLAdjustSelectionRangeForChangedRange(NSRange, NSRange, NSInteger)"];
            v24 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLRangeUtils.m"];
            [CRLAssertionHandler handleFailureInFunction:v23 file:v24 lineNumber:262 isFatal:0 description:"expected selectionRange to start within changingRange"];
          }

          if (a3 > v5 + a5)
          {
            return a3;
          }
        }
      }
    }

    else
    {
      return a1 + a5;
    }
  }

  return v5;
}

unint64_t enumerateAllSubrangesOfRange(unint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result + a2;
  if (!__CFADD__(result, a2))
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = 0;
      do
      {
        result = (*(a3 + 16))(a3, v5, v7, v6 + v7);
        ++v7;
      }

      while (v5 + v7 <= v3);
      ++v5;
      v6 += v7;
    }

    while (v5 <= v3);
  }

  return result;
}

NSUInteger NSIntersectionRangeInclusive(NSRange a1, NSRange range1)
{
  if (a1.location != range1.location + range1.length)
  {
    if (a1.location + a1.length == range1.location)
    {
      a1.location = range1.location;
    }

    else
    {
      a1.location = NSIntersectionRange(a1, range1).location;
    }
  }

  return a1.location;
}

unint64_t NSExpandedRange(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v5 = a4 + a5;
  if (a4 + a3 >= a1)
  {
    v6 = a4;
  }

  else
  {
    v6 = a1 - a3;
  }

  if (a1 + a2 + a3 < v5)
  {
    v5 = a1 + a2 + a3;
  }

  if (v6 >= v5)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

void OUTLINED_FUNCTION_4_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x22u);
}

BOOL CRLVersionIsPatchSupportedForVersions(unint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = HIDWORD(a1) & 0xFFFFFF;
  for (i = a3 - 1; ; --i)
  {
    v6 = *a2++;
    v5 = v6;
    v7 = HIDWORD(v6);
    if (v3 == HIDWORD(v6))
    {
      break;
    }

    if (v3 > v7 || i == 0)
    {
      return 0;
    }
  }

  return (a1 & 0xFFFFFF) >= v5;
}

uint64_t CRLVersionParse(uint64_t result, _WORD *a2, _WORD *a3, _DWORD *a4)
{
  if (a2)
  {
    *a2 = HIWORD(result);
  }

  if (a3)
  {
    *a3 = WORD2(result);
  }

  if (a4)
  {
    *a4 = result;
  }

  return result;
}

unint64_t CRLVersionFromNSString(void *a1)
{
  v1 = [a1 componentsSeparatedByString:@"."];
  if ([v1 count] == &dword_0 + 3)
  {
    v2 = [v1 objectAtIndexedSubscript:0];
    v3 = [v2 integerValue];

    if (v3 >= 0x10000)
    {
      CRLVersionFromNSString_cold_6();
      v4 = 0xFFFF000000000000;
    }

    else if (v3 < 0)
    {
      CRLVersionFromNSString_cold_5();
      v4 = 0;
    }

    else
    {
      v4 = v3 << 48;
    }

    v5 = [v1 objectAtIndexedSubscript:1];
    v6 = [v5 integerValue];

    if (v6 >= 0x10000)
    {
      CRLVersionFromNSString_cold_8();
      v7 = 0xFFFF00000000;
    }

    else if (v6 < 0)
    {
      CRLVersionFromNSString_cold_7();
      v7 = 0;
    }

    else
    {
      v7 = v6 << 32;
    }

    v8 = [v1 objectAtIndexedSubscript:2];
    v9 = [v8 integerValue];

    if (v9 >= 0x100000000)
    {
      CRLVersionFromNSString_cold_10(&v19, &v20);
    }

    else
    {
      if ((v9 & 0x8000000000000000) == 0)
      {
LABEL_10:
        v10 = v7 | v4 | v9;
        goto LABEL_20;
      }

      CRLVersionFromNSString_cold_9(&v19, &v20);
    }

    v16 = v19;
    v9 = v20;
    v17 = [NSString stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
    v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
    [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:178 isFatal:0 description:v16];

    goto LABEL_10;
  }

  v11 = +[CRLAssertionHandler _atomicIncrementAssertCount];
  if (CRLAssertCat_init_token != -1)
  {
    CRLVersionFromNSString_cold_1();
  }

  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    CRLVersionFromNSString_cold_2(v11);
  }

  if (CRLAssertCat_init_token != -1)
  {
    CRLVersionFromNSString_cold_3();
  }

  v12 = CRLAssertCat_log_t;
  if (os_log_type_enabled(CRLAssertCat_log_t, OS_LOG_TYPE_ERROR))
  {
    CRLVersionFromNSString_cold_4(v12);
  }

  v13 = [NSString stringWithUTF8String:"CRLVersion CRLVersionFromNSString(NSString * _Nonnull __strong)"];
  v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLUtility/CRLVersion.m"];
  [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:172 isFatal:0 description:"Version should consist of 3 numbers separated by '.'"];

  v10 = 0;
LABEL_20:

  return v10;
}

BOOL OUTLINED_FUNCTION_4_1()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_9()
{
  v2 = *v0;

  return os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return +[CRLAssertionHandler _atomicIncrementAssertCount];
}

uint64_t NSStringFromCRLError(unsigned int a1)
{
  if (a1 > 5)
  {
    return 0;
  }

  else
  {
    return *(&off_4DA10 + a1);
  }
}

id CRLAppBundleIdentifier(uint64_t a1)
{
  if (CRLAppBundleIdentifier_onceToken != -1)
  {
    CRLAppBundleIdentifier_cold_1();
  }

  v2 = CRLAppBundleIdentifier_identifier;

  return v2;
}

id CRLAppGroupIdentifier(uint64_t a1)
{
  if (CRLAppGroupIdentifier_onceToken != -1)
  {
    CRLAppGroupIdentifier_cold_1();
  }

  v2 = CRLAppGroupIdentifier_identifier;

  return v2;
}

uint64_t CRLDynamicBaseAddress()
{
  v0 = getsectbyname("__TEXT", "__text");
  addr = v0->addr;
  offset = v0->offset;
  bufsize = 1024;
  if (_NSGetExecutablePath(buf, &bufsize))
  {
    image_vmaddr_slide = -1;
  }

  else if (_dyld_image_count())
  {
    v4 = 0;
    while (1)
    {
      image_name = _dyld_get_image_name(v4);
      if (!strcmp(image_name, buf))
      {
        break;
      }

      if (++v4 >= _dyld_image_count())
      {
        goto LABEL_7;
      }
    }

    image_vmaddr_slide = _dyld_get_image_vmaddr_slide(v4);
  }

  else
  {
LABEL_7:
    image_vmaddr_slide = 0;
  }

  return addr - offset + image_vmaddr_slide;
}

void CRLCrashFinalThrow()
{
  v0 = [NSException exceptionWithName:@"CRLCrash" reason:@"CRLCrash was called" userInfo:0];
  objc_exception_throw(v0);
}

void CRLSetCrashReporterInfov(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a2;
  v2 = [NSString stringWithUTF8String:a1];
  v3 = [[NSString alloc] crl_initRedactedWithFormat:v2 arguments:v7];
  v4 = [v3 UTF8String];
  v6 = 0;
  if (v4)
  {
    asprintf(&v6, "%s", v4);
    v5 = v6;
  }

  else
  {
    v5 = 0;
  }

  if (!v5)
  {
    v5 = "CRLSetCrashReporterInfo: unknown reason";
  }

  __crashreporter_info__ = v5;
}

NSString one-time initialization function for deviceManagementRestrictionsChangedNotificationName()
{
  result = String._bridgeToObjectiveC()();
  static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName = result;
  return result;
}

uint64_t *CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.unsafeMutableAddressor()
{
  if (one-time initialization token for deviceManagementRestrictionsChangedNotificationName != -1)
  {
    swift_once();
  }

  return &static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName;
}

uint64_t CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isMathPaperSolvingAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isKeyboardMathSolvingAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path getter for CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed : CRLDeviceManagementRestrictionsManager@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t key path setter for CRLDeviceManagementRestrictionsManager.isDefinitionLookupAllowed : CRLDeviceManagementRestrictionsManager(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id CRLDeviceManagementRestrictionsManager.connection.getter()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v2 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  v3 = v2;
  if (v2 == &dword_0 + 1)
  {
    v3 = [objc_opt_self() sharedConnection];
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;
    v5 = v3;
    outlined consume of MCProfileConnection??(v4);
  }

  outlined copy of MCProfileConnection??(v2);
  return v3;
}

id CRLDeviceManagementRestrictionsManager.__deallocating_deinit()
{
  v1 = CRLDeviceManagementRestrictionsManager.connection.getter();
  if (v1)
  {
    v2 = v1;
    [v1 unregisterObserver:v0];
  }

  v4.receiver = v0;
  v4.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void one-time initialization function for _sharedManager()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLDeviceManagementRestrictionsManager()) init];
  CRLDeviceManagementRestrictionsManager.registerObserver()();
  static CRLDeviceManagementRestrictionsManager._sharedManager = v0;
}

id CRLDeviceManagementRestrictionsManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id @objc static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.getter(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

Swift::Void __swiftcall CRLDeviceManagementRestrictionsManager.registerObserver()()
{
  v1 = CRLDeviceManagementRestrictionsManager.connection.getter();
  if (v1)
  {
    v2 = v1;
    [v1 registerObserver:v0];
  }

  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection;
  v4 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection);
  if (v4)
  {
    v5 = [v4 isMathPaperSolvingAllowed];
  }

  else
  {
    v5 = 1;
  }

  v6 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  v7 = 1;
  swift_beginAccess();
  *(v0 + v6) = v5;
  v8 = *(v0 + v3);
  if (v8)
  {
    v7 = [v8 isKeyboardMathSolvingAllowed];
  }

  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  v10 = 1;
  swift_beginAccess();
  *(v0 + v9) = v7;
  v11 = *(v0 + v3);
  if (v11)
  {
    v10 = [v11 isDefinitionLookupAllowed];
  }

  v12 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(v0 + v12) = v10;
}

id CRLDeviceManagementRestrictionsManager.init()()
{
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed] = 1;
  v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed] = 1;
  *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection] = 1;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return objc_msgSendSuper2(&v2, "init");
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance ACAccountDataclass(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance ACAccountDataclass(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance ACAccountDataclass@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ACAccountDataclass@<X0>(void *a2@<X8>)
{
  v3 = String._bridgeToObjectiveC()();

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance ACAccountDataclass@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance ACAccountDataclass(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(&lazy protocol witness table cache variable for type ACAccountDataclass and conformance ACAccountDataclass, &protocol conformance descriptor for ACAccountDataclass);
  v3 = lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(&lazy protocol witness table cache variable for type ACAccountDataclass and conformance ACAccountDataclass, &protocol conformance descriptor for ACAccountDataclass);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance ACAccountDataclass()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ACAccountDataclass(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ACAccountDataclass(uint64_t a1)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v1 = Hasher._finalize()();

  return v1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ACAccountDataclass(void *a1, uint64_t *a2)
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

void specialized CRLDeviceManagementRestrictionsManager.profileConnectionDidReceiveEffectiveSettingsChangedNotification(_:userInfo:)(void *a1)
{
  if (!a1)
  {
    __break(1u);
    return;
  }

  v3 = [a1 isMathPaperSolvingAllowed];
  v4 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  v5 = v3 ^ *(v1 + v4);
  if (v5)
  {
    *(v1 + v4) = [a1 isMathPaperSolvingAllowed];
  }

  v6 = [a1 isKeyboardMathSolvingAllowed];
  v7 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  if (v6 != *(v1 + v7))
  {
    *(v1 + v7) = [a1 isKeyboardMathSolvingAllowed];
    v5 = 1;
  }

  v8 = [a1 isDefinitionLookupAllowed];
  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  if (v8 == *(v1 + v9))
  {
    if ((v5 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(v1 + v9) = [a1 isDefinitionLookupAllowed];
  }

  v10 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for deviceManagementRestrictionsChangedNotificationName != -1)
  {
    swift_once();
  }

  [v10 postNotificationName:static CRLDeviceManagementRestrictionsManager.deviceManagementRestrictionsChangedNotificationName object:0 userInfo:0];
}

uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
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

void outlined consume of MCProfileConnection??(id a1)
{
  if (a1 != &dword_0 + 1)
  {
  }
}

id outlined copy of MCProfileConnection??(id result)
{
  if (result != &dword_0 + 1)
  {
    return result;
  }

  return result;
}

void type metadata accessor for os_unfair_lock_s(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t lazy protocol witness table accessor for type ACAccountDataclass and conformance ACAccountDataclass(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ACAccountDataclass(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Error.publicDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  __chkstk_darwin(v5 - 8);
  v76 = (&v66 - v6);
  v7 = type metadata accessor for Mirror.DisplayStyle();
  v8 = *(v7 - 8);
  v77 = v7;
  v78 = v8;
  v9 = __chkstk_darwin(v7);
  v73 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v74 = &v66 - v11;
  v12 = type metadata accessor for Mirror();
  v75 = *(v12 - 8);
  v13 = __chkstk_darwin(v12);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 - 8);
  v17 = __chkstk_darwin(v13);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v22 = v3;
  DynamicType = swift_getDynamicType();
  swift_getMetatypeMetadata();
  v23 = String.init<A>(reflecting:)();
  v25 = v24;
  type metadata accessor for NSError();
  if (!swift_dynamicCastMetatype())
  {
    v70 = v19;
    v71 = v25;
    v72 = v23;
    v79 = v12;
    v83[1] = a1;
    v26 = __swift_allocate_boxed_opaque_existential_0(&DynamicType);
    v29 = *(v16 + 16);
    v28 = v16 + 16;
    v27 = v29;
    v29(v26, v22, a1);
    Mirror.init(reflecting:)();
    v30 = v76;
    Mirror.displayStyle.getter();
    v31 = v77;
    v32 = v78;
    v33 = v15;
    if ((*(v78 + 48))(v30, 1, v77) == 1)
    {
      (*(v75 + 8))(v15, v79);
      outlined destroy of Mirror.DisplayStyle?(v30);
      return v72;
    }

    v67 = a1;
    v68 = v27;
    v69 = v28;
    v44 = v74;
    (*(v32 + 32))(v74, v30, v31);
    v45 = v73;
    (*(v32 + 104))(v73, enum case for Mirror.DisplayStyle.enum(_:), v31);
    v46 = static Mirror.DisplayStyle.== infix(_:_:)();
    v49 = *(v32 + 8);
    v47 = v32 + 8;
    v48 = v49;
    (v49)(v45, v31);
    if ((v46 & 1) == 0)
    {
      DynamicType = 0;
      v82 = 0xE000000000000000;
      v55._countAndFlagsBits = v72;
      v55._object = v71;
      String.append(_:)(v55);

      v56._countAndFlagsBits = 40;
      v56._object = 0xE100000000000000;
      String.append(_:)(v56);
      _print_unlocked<A, B>(_:_:)();
      v57._countAndFlagsBits = 41;
      v57._object = 0xE100000000000000;
      String.append(_:)(v57);
      v58 = DynamicType;
      (v48)(v44, v31);
      (*(v75 + 8))(v33, v79);
      return v58;
    }

    v76 = v48;
    v73 = v22;
    v78 = v47;
    Mirror.children.getter();
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = dispatch thunk of _AnyIndexBox._typeID.getter();
    swift_getObjectType();
    result = dispatch thunk of _AnyIndexBox._typeID.getter();
    if (v50 != result)
    {
      __break(1u);
      return result;
    }

    v51 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v51)
    {
      swift_unknownObjectRelease();

      v52 = v77;
      v53 = v79;
      v54 = v72;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v60 = DynamicType;
      v59 = v82;
      __swift_destroy_boxed_opaque_existential_0(v83);
      v52 = v77;
      v53 = v79;
      v54 = v72;
      if (v59)
      {
LABEL_15:
        v62 = v75;
        v63 = v76;
        DynamicType = v54;
        v82 = v71;
        v64._countAndFlagsBits = 46;
        v64._object = 0xE100000000000000;
        String.append(_:)(v64);
        v65._countAndFlagsBits = v60;
        v65._object = v59;
        String.append(_:)(v65);

        v58 = DynamicType;
        v63(v74, v52);
        (*(v62 + 8))(v33, v53);
        return v58;
      }
    }

    v68(v70, v73, v67);
    v60 = String.init<A>(describing:)();
    v59 = v61;

    goto LABEL_15;
  }

  (*(v16 + 16))(v21, v22, a1);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v16 + 8))(v21, a1);
  }

  else
  {
    swift_allocError();
    (*(v16 + 32))(v35, v21, a1);
  }

  v36 = _convertErrorToNSError(_:)();

  DynamicType = 0;
  v82 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  DynamicType = 0x20726F727245534ELL;
  v82 = 0xEF3D6E69616D6F44;
  v37 = [v36 domain];
  v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41._countAndFlagsBits = v38;
  v41._object = v40;
  String.append(_:)(v41);

  v42._countAndFlagsBits = 0x3D65646F4320;
  v42._object = 0xE600000000000000;
  String.append(_:)(v42);
  v80 = [v36 code];
  v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v43);

  return DynamicType;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t type metadata accessor for NSError()
{
  result = lazy cache variable for type metadata for NSError;
  if (!lazy cache variable for type metadata for NSError)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSError);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of Mirror.DisplayStyle?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd, &_ss6MirrorV12DisplayStyleOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t Error.fullDescription.getter(uint64_t a1)
{
  __chkstk_darwin(a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return String.init<A>(reflecting:)();
}

id CRLAssetFileManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLAssetFileManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for CRLAssetFileManager(uint64_t a1)
{
  result = type metadata singleton initialization cache for CRLAssetFileManager;
  if (!type metadata singleton initialization cache for CRLAssetFileManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for CRLAssetFileManager(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CRLAssetFileManager.purgeAllAssetsFromDisk()()
{
  v1 = [objc_opt_self() defaultManager];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject() + v5;
  v7 = *(v3 + 16);
  v7(v6, v0 + OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_assetsDirectoryURL, v2);
  v7(v6 + v4, v0 + OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_deletedAssetsDirectoryURL, v2);
  closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(v6, v1);
  closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(v6 + v4, v1);

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
}

uint64_t closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(uint64_t a1, void *a2)
{
  URL.path.getter();
  v5 = String._bridgeToObjectiveC()();

  v23 = 0;
  v6 = [a2 contentsOfDirectoryAtPath:v5 error:&v23];

  v7 = v23;
  if (v6)
  {
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v7;

    __chkstk_darwin(v10);
    v22[2] = a2;
    v22[3] = a1;
    specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk(), v22, v8);
    if (!v2)
    {
    }
  }

  else
  {
    v11 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v12 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3A290;
  swift_getErrorValue();
  v14 = Error.publicDescription.getter(v22[10], v22[11]);
  v16 = v15;
  *(inited + 56) = &type metadata for String;
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v17;
  *(inited + 32) = v14;
  *(inited + 40) = v16;
  swift_getErrorValue();
  v18 = Error.fullDescription.getter(v22[6]);
  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v19;
  v20 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v12, &dword_0, v20, "Failed to remove all assets with error %{public}@ <%@>", 54, 2, inited);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  return swift_arrayDestroy();
}

id closure #1 in closure #1 in CRLAssetFileManager.purgeAllAssetsFromDisk()(void *a1, void *a2)
{
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  URL.path.getter();
  (*(v4 + 8))(v6, v3);
  v7 = String._bridgeToObjectiveC()();

  v10 = 0;
  LOBYTE(a2) = [a2 removeItemAtPath:v7 error:&v10];

  if (a2)
  {
    return v10;
  }

  v9 = v10;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void (*specialized Sequence.forEach(_:)(void (*result)(void *), uint64_t a2, uint64_t a3))(void *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

id specialized CRLAssetFileManager.init(store:)(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  URL.appendingPathComponent(_:isDirectory:)();
  v6 = *(v3 + 32);
  v6(&v1[OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_assetsDirectoryURL], v5, v2);
  URL.appendingPathComponent(_:isDirectory:)();
  v6(&v1[OBJC_IVAR____TtC22FreeformDataclassOwner19CRLAssetFileManager_deletedAssetsDirectoryURL], v5, v2);
  v7 = type metadata accessor for CRLAssetFileManager(0);
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "init");
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t NSFileManager.crl_freeformLibraryURL()()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v5 = [v0 URLForDirectory:5 inDomain:1 appropriateForURL:0 create:1 error:&v11];
  v6 = v11;
  if (v5)
  {
    v7 = v5;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v6;

    URL.appendingPathComponent(_:isDirectory:)();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    v10 = v11;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t getEnumTagSinglePayload for NSFileManager.crl_Error(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for NSFileManager.crl_Error(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error()
{
  result = lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error;
  if (!lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error;
  if (!lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error);
  }

  return result;
}

Swift::Int UUID.UUIDCodingError.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSFileManager.crl_Error(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void static CRLBoardDataStoreProvider.mainDataDirectory(legacyLocation:)(char a1@<W0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v21 = *(v8 - 8);
  v22 = v8;
  __chkstk_darwin(v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 defaultManager];
  if (a1)
  {
    NSFileManager.crl_freeformLibraryURL()();
    if (!v2)
    {
      goto LABEL_7;
    }

LABEL_18:

    return;
  }

  v13 = [v11 defaultManager];
  v14 = CRLAppGroupIdentifier(v13);
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = [v13 containerURLForSecurityApplicationGroupIdentifier:v14];

  if (!v16)
  {
    lazy protocol witness table accessor for type NSFileManager.crl_Error and conformance NSFileManager.crl_Error();
    swift_allocError();
    swift_willThrow();
    goto LABEL_18;
  }

  static URL._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_7:
  if (one-time initialization token for shouldUseSandboxEnvironment != -1)
  {
    swift_once();
  }

  if (static CRLCloudSyncConstants.shouldUseSandboxEnvironment == 1)
  {
    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v17 = static OS_os_log.boardStore;
    v18 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v17, &dword_0, v18, "Using sandbox path Development/Boards", 37, 2, &_swiftEmptyArrayStorage);
  }

  else
  {
    if (one-time initialization token for boardStore != -1)
    {
      swift_once();
    }

    v19 = static OS_os_log.boardStore;
    v20 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v19, &dword_0, v20, "Using production path Boards", 28, 2, &_swiftEmptyArrayStorage);
  }

  (*(v5 + 104))(v7, enum case for URL.DirectoryHint.isDirectory(_:), v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(components:directoryHint:)();

  (*(v5 + 8))(v7, v4);
  (*(v21 + 8))(v10, v22);
}

uint64_t UUID.init(crl_data:)(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
LABEL_17:
      lazy protocol witness table accessor for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of Data._Representation(a1, a2);
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_24;
      }

      v9 = __DataStorage._bytes.getter();
      if (!v9)
      {
        goto LABEL_29;
      }

      v10 = v9;
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(a1, v11))
      {
        goto LABEL_26;
      }

      v12 = a1 - v11 + v10;
      __DataStorage._length.getter();
      if (v12)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_23;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v14 = *(a1 + 16);
    v15 = __DataStorage._bytes.getter();
    if (!v15)
    {
      goto LABEL_27;
    }

    v16 = v15;
    v17 = __DataStorage._offset.getter();
    if (!__OFSUB__(v14, v17))
    {
      v18 = v14 - v17 + v16;
      __DataStorage._length.getter();
      if (!v18)
      {
        goto LABEL_28;
      }

LABEL_21:
      UUID.init(uuid:)();
      return outlined consume of Data._Representation(a1, a2);
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __DataStorage._length.getter();
LABEL_28:
  __break(1u);
LABEL_29:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError()
{
  result = lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError;
  if (!lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError;
  if (!lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID.UUIDCodingError and conformance UUID.UUIDCodingError);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t UUID.crl_data()()
{
  v9 = UUID.uuid.getter();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  UUID.uuid.getter();
  return specialized Data.init(bytes:count:)(&v9, 0x10uLL);
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

const char *CRLFeatureFlags.feature.getter(char a1)
{
  result = "AdoptTipsNext";
  switch(a1)
  {
    case 1:
      result = "AppAnalytics";
      break;
    case 2:
      result = "AppIntents";
      break;
    case 3:
      result = "AppIntentsSettings";
      break;
    case 4:
      result = "BatteriesIncluded";
      break;
    case 5:
      result = "BetterPencilSelection";
      break;
    case 6:
      result = "ChangeShape";
      break;
    case 7:
      result = "CloudQuotaMessaging";
      break;
    case 8:
      result = "ContentLanguageCopyPaste";
      break;
    case 9:
      result = "DrawingDataDetectors";
      break;
    case 10:
      result = "EasierConnectionLines";
      break;
    case 11:
      result = "FileImportExport";
      break;
    case 12:
      result = "PKDrawingExport";
      break;
    case 13:
      result = "Follow";
      break;
    case 14:
      result = "GenerativePlayground";
      break;
    case 15:
      result = "MathPaper";
      break;
    case 16:
      result = "MagicLists";
      break;
    case 17:
      result = "MacMediaReplacer";
      break;
    case 18:
      result = "MediaLibrary";
      break;
    case 19:
      result = "PlaceholderImages";
      break;
    case 20:
      result = "Scenes";
      break;
    case 21:
      result = "SendACopy";
      break;
    case 22:
      result = "SignOutRedesign";
      break;
    case 23:
      result = "SnapToGrid";
      break;
    case 24:
      result = "Stencils";
      break;
    case 25:
      result = "VerticalTextBoxAlignment";
      break;
    case 26:
      result = "AllowMinRequiredVersionForGoodEnoughFidelityToSaveToCloudKit";
      break;
    case 27:
      result = "UseSandboxEnvironment";
      break;
    case 28:
      result = "Spatial";
      break;
    case 29:
      result = "InlineQuickLook";
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CRLFeatureFlags()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CRLFeatureFlags(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance CRLPencilAndPaperFeatureFlags()
{
  if (*v0)
  {
    return "DrawingDataDetectors";
  }

  else
  {
    return "MathPaper";
  }
}

uint64_t @objc static CRLFeatureFlagGroup.isDrawingDataDetectorsEnabled.getter(uint64_t a1, uint64_t a2, char a3, char a4)
{
  v10 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v11 = lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags();
  LOBYTE(v9[0]) = a3;
  v6 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (v6)
  {
    v10 = &type metadata for CRLFeatureFlags;
    v11 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
    LOBYTE(v9[0]) = a4;
    v7 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t @objc static CRLFeatureFlagGroup.isAaBrandingEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6[3] = a3;
  v6[4] = a4(a1, a2);
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4 & 1;
}

uint64_t @objc static CRLFeatureFlagGroup.isAdoptTipsNextEnabled.getter(uint64_t a1, uint64_t a2, char a3)
{
  v6[3] = &type metadata for CRLFeatureFlags;
  v6[4] = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v6[0]) = a3;
  v4 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v6);
  return v4 & 1;
}

id CRLFeatureFlagGroup.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CRLFeatureFlagGroup();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t specialized static CRLFeatureFlagGroup.isMathPaperEnabled.getter()
{
  v6 = &type metadata for CRLPencilAndPaperFeatureFlags;
  v7 = lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags();
  LOBYTE(v5[0]) = 0;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v0 & 1) == 0)
  {
    return 0;
  }

  v6 = &type metadata for CRLFeatureFlags;
  v7 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v5[0]) = 15;
  v1 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if ((v1 & 1) == 0)
  {
    return 0;
  }

  if (one-time initialization token for _sharedManager != -1)
  {
    swift_once();
  }

  v2 = static CRLDeviceManagementRestrictionsManager._sharedManager;
  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(v2 + v3);
}

uint64_t specialized static CRLFeatureFlagGroup.isAILabelingEnabled.getter()
{
  v0 = type metadata accessor for OSEligibilityAnswer();
  v22 = *(v0 - 8);
  v23 = v0;
  v1 = __chkstk_darwin(v0);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v1);
  v5 = &v21 - v4;
  v6 = type metadata accessor for OSEligibilityDomain();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13OSEligibility0A6ResultVSgMd, &_s13OSEligibility0A6ResultVSgMR);
  __chkstk_darwin(v10 - 8);
  v12 = &v21 - v11;
  v13 = type metadata accessor for OSEligibilityResult();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 104))(v9, enum case for OSEligibilityDomain.aiLabeling(_:), v6);
  static OSEligibilityResult.result(for:)();
  (*(v7 + 8))(v9, v6);
  (*(v14 + 56))(v12, 0, 1, v13);
  (*(v14 + 32))(v16, v12, v13);
  OSEligibilityResult.answer.getter();
  v18 = v22;
  v17 = v23;
  (*(v22 + 104))(v3, enum case for OSEligibilityAnswer.eligible(_:), v23);
  LOBYTE(v6) = static OSEligibilityAnswer.== infix(_:_:)();
  v19 = *(v18 + 8);
  v19(v3, v17);
  v19(v5, v17);
  (*(v14 + 8))(v16, v13);
  return v6 & 1;
}

uint64_t outlined destroy of OSEligibilityResult?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13OSEligibility0A6ResultVSgMd, &_s13OSEligibility0A6ResultVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLFeatureFlags and conformance CRLFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLUIKitFeatureFlags and conformance CRLUIKitFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLPencilAndPaperFeatureFlags and conformance CRLPencilAndPaperFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags()
{
  result = lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags;
  if (!lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CRLAppleAccountFeatureFlags and conformance CRLAppleAccountFeatureFlags);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CRLPencilAndPaperFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CRLFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

id CRLDataclassOwner.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = &_swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = &_swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        type metadata accessor for ACDataclassAction();
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      type metadata accessor for ACDataclassAction();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

Class @objc CRLDataclassOwner.actions(forDeleting:forDataclass:)(void *a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(void *))
{
  v8 = a1;
  v9 = a3;
  v10 = a4;
  v11 = a5(a3);

  if (v11)
  {
    v12.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v12.super.isa = 0;
  }

  return v12.super.isa;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22FreeformDataclassOwner17CRLBoardDataStoreC5TableOGMd, &_ss23_ContiguousArrayStorageCy22FreeformDataclassOwner17CRLBoardDataStoreC5TableOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void specialized CRLDataclassOwner.setDefaultToEnsureOwnershipOfUserData()(uint64_t a1)
{
  v1 = CRLAppBundleIdentifier(a1);
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v8 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v3];

  if (v8)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.dataclassOwner;
    v5 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v4, &dword_0, v5, "Setting the user default to tell the app that it needs to ensure ownership of its data.", 87, 2, &_swiftEmptyArrayStorage);
    [v8 setBool:1 forKey:@"CRLEnsureOwnershipOfDataUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.dataclassOwner;
    v7 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v6, &dword_0, v7, "Unable to access Freeform's defaults for setting CRLEnsureOwnershipOfDataUserDefault.", 85, 2, &_swiftEmptyArrayStorage);
  }
}

void specialized CRLDataclassOwner.setDefaultThatDataclassOwnerIsLaunchingAppInBackground()(uint64_t a1)
{
  v1 = CRLAppBundleIdentifier(a1);
  if (v1)
  {
    v2 = v1;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v8 = [objc_allocWithZone(NSUserDefaults) initWithSuiteName:v3];

  if (v8)
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v4 = static OS_os_log.dataclassOwner;
    v5 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v4, &dword_0, v5, "Setting the user default to tell the app that it dataclass owner is launching it.", 81, 2, &_swiftEmptyArrayStorage);
    [v8 setBool:1 forKey:@"CRLDataclassOwnerDidLaunchAppInBackgroundUserDefault"];
  }

  else
  {
    if (one-time initialization token for dataclassOwner != -1)
    {
      swift_once();
    }

    v6 = static OS_os_log.dataclassOwner;
    v7 = static os_log_type_t.fault.getter();

    _CRLLog(_:dso:type:format:_:)(v6, &dword_0, v7, "Unable to access Freeform's defaults for setting CRLDataclassOwnerDidLaunchAppInBackgroundUserDefault.", 102, 2, &_swiftEmptyArrayStorage);
  }
}

char *specialized CRLDataclassOwner.actionsForDisablingDataclass(on:forDataclass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v35[-2] - v4;
  if (!a1)
  {
    __break(1u);
    goto LABEL_22;
  }

  v6 = ACAccount.crl_identifier.getter();
  v8 = v7;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v34 = xmmword_3A860;
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  v10 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v10;
  *(inited + 32) = v6;
  *(inited + 40) = v8;

  v11 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v11, "Calling actionsForDisablingDataclass on account: [%@]", 53, 2, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  v12 = type metadata accessor for URL();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  LOWORD(inited) = specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(v5);
  v15 = v14;
  v17 = v16;
  outlined destroy of URL?(v5);
  v18 = swift_initStackObject();
  *(v18 + 16) = v34;

  v19 = CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(inited & 0x101, v15, v17);
  v21 = v20;

  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = v10;
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  v22 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v22, "Current boardDataStoreMetadata:\n%@", 34, 2, v18);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v18 + 32));
  v36 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v37 = lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags();
  LOBYTE(v18) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v35);
  if ((v18 & 1) == 0 || (v36 = &type metadata for CRLFeatureFlags, v37 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags(), LOBYTE(v35[0]) = 22, v23 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(v35), (v23 & 1) == 0))
  {
    if ((inited & 1) == 0)
    {
      goto LABEL_15;
    }

    v28 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v28, "User has unsynced Freeform data: returning an action that unsynced data will be lost.", 85, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v25 = swift_allocObject();
    v25[1] = xmmword_3A870;
    v9 = objc_opt_self();
    inited = &stru_55000;
    result = [v9 actionWithType:8];
    if (result)
    {
      *(v25 + 4) = result;
      result = [v9 actionWithType:0];
      if (result)
      {
LABEL_19:
        v32 = result;

        *(v25 + 5) = v32;
        goto LABEL_20;
      }

      __break(1u);
LABEL_15:
      if ((inited & 0x100) == 0)
      {
        goto LABEL_16;
      }

      v30 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v30, "User has synced Freeform data: returning an action that local synced data will be deleted.", 90, 2, &_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v25 = swift_allocObject();
      v25[1] = xmmword_3A870;
      v31 = objc_opt_self();
      result = [v31 actionWithType:3];
      if (result)
      {
        *(v25 + 4) = result;
        result = [v31 actionWithType:0];
        if (result)
        {
          goto LABEL_19;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((inited & 0x100) == 0)
  {
LABEL_16:

    v29 = static os_log_type_t.default.getter();
    v25 = &_swiftEmptyArrayStorage;
    _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v29, "User has no Freeform data: not returning any actions.", 53, 2, &_swiftEmptyArrayStorage);
    goto LABEL_20;
  }

  v24 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v24, "User has synced Freeform data: returning 2 actions: .mergeSyncDataIntoLocalData and .deleteSyncData.", 100, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v25 = swift_allocObject();
  v25[1] = xmmword_3A880;
  v26 = objc_opt_self();
  result = [v26 actionWithType:2];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  *(v25 + 4) = result;
  result = [v26 destructiveActionWithType:3];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v25 + 5) = result;
  result = [v26 actionWithType:0];
  if (result)
  {
    v27 = result;

    *(v25 + 6) = v27;
LABEL_20:
    v33 = specialized _arrayForceCast<A, B>(_:)(v25);

    return v33;
  }

LABEL_27:
  __break(1u);
  return result;
}

id specialized CRLDataclassOwner.actionsForEnablingDataclass(on:forDataclass:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  result = __chkstk_darwin(v2 - 8);
  v5 = &v46 - v4;
  if (!a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v6 = ACAccount.crl_identifier.getter();
  v8 = v7;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v9 = static OS_os_log.dataclassOwner;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  v48 = xmmword_3A860;
  *(inited + 16) = xmmword_3A860;
  *(inited + 56) = &type metadata for String;
  v11 = lazy protocol witness table accessor for type String and conformance String();
  *(inited + 64) = v11;
  v46 = v6;
  *(inited + 32) = v6;
  *(inited + 40) = v8;
  v47 = v8;

  v12 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v12, "Calling actionsForEnablingDataclass on account: [%@]", 52, 2, inited);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((inited + 32));
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = specialized static CRLBoardDataStore.fetchBoardDataStoreMetadata(dataDirectory:)(v5);
  v16 = v15;
  v18 = v17;
  outlined destroy of URL?(v5);
  v19 = swift_initStackObject();
  *(v19 + 16) = v48;

  v20 = CRLBoardDataStore.CRLBoardDataStoreMetadata.description.getter(v14 & 0x101, v16, v18);
  v22 = v21;

  *(v19 + 56) = &type metadata for String;
  *(v19 + 64) = v11;
  *(v19 + 32) = v20;
  *(v19 + 40) = v22;
  v23 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v23, "Current boardDataStoreMetadata:\n%@", 34, 2, v19);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0((v19 + 32));
  v50 = &type metadata for CRLAppleAccountUIFeatureFlags;
  v51 = lazy protocol witness table accessor for type CRLAppleAccountUIFeatureFlags and conformance CRLAppleAccountUIFeatureFlags();

  LOBYTE(v22) = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v49);
  if ((v22 & 1) == 0 || (v50 = &type metadata for CRLFeatureFlags, v51 = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags(), LOBYTE(v49[0]) = 22, v24 = isFeatureEnabled(_:)(), __swift_destroy_boxed_opaque_existential_0(v49), (v24 & 1) == 0))
  {
    if ((v14 & 0x100) != 0 && !v18)
    {
      v29 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v29, "User has existing Freeform data, returning an action to enable to merge local data into the sync data.", 102, 2, &_swiftEmptyArrayStorage);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_3A290;
      v30 = objc_opt_self();
      result = [v30 actionWithType:5];
      if (result)
      {
        v31 = result;
        v32 = type metadata accessor for ACDataclassAction();
        *(v26 + 56) = v32;
        *(v26 + 32) = v31;
        result = [v30 actionWithType:0];
        if (result)
        {
          v33 = result;

          *(v26 + 88) = v32;
          *(v26 + 64) = v33;
          return v26;
        }

        goto LABEL_32;
      }

LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v27 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v27, "User has no existing Freeform data, returning an action to enable to create the sync data store.", 96, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = v48;
    result = [objc_opt_self() actionWithType:1];
    if (result)
    {
LABEL_12:
      v28 = result;

      *(v26 + 56) = type metadata accessor for ACDataclassAction();
      *(v26 + 32) = v28;
      return v26;
    }

LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v14 & 0x100) == 0)
  {

    v25 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v25, "User has no existing Freeform data, returning an action to enable to create the sync data store.", 96, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = v48;
    result = [objc_opt_self() actionWithType:1];
    if (result)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

  v34 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v34, "User has existing Freeform data.", 32, 2, &_swiftEmptyArrayStorage);
  if (!v18)
  {
    goto LABEL_22;
  }

  if (v16 == v46 && v18 == v47)
  {

    goto LABEL_22;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v35)
  {
LABEL_22:
    v36 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v36, "Data was never synced, or belonged to this user, returning an action to merge local data into the sync data.", 108, 2, &_swiftEmptyArrayStorage);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_3A290;
    v37 = objc_opt_self();
    result = [v37 actionWithType:5];
    if (result)
    {
      v38 = result;
      v39 = type metadata accessor for ACDataclassAction();
      *(v26 + 56) = v39;
      *(v26 + 32) = v38;
      result = [v37 actionWithType:0];
      if (result)
      {
        v40 = result;

        *(v26 + 88) = v39;
        *(v26 + 64) = v40;
        return v26;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v41 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v41, "Data belonged to another user, returning options to merge, or delete and start over.", 84, 2, &_swiftEmptyArrayStorage);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_3A890;
  v42 = objc_opt_self();
  result = [v42 actionWithType:5];
  if (!result)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v43 = result;
  v44 = type metadata accessor for ACDataclassAction();
  *(v26 + 56) = v44;
  *(v26 + 32) = v43;
  result = [v42 actionWithType:6];
  if (!result)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  *(v26 + 88) = v44;
  *(v26 + 64) = result;
  result = [v42 actionWithType:0];
  if (result)
  {
    v45 = result;

    *(v26 + 120) = v44;
    *(v26 + 96) = v45;
    return v26;
  }

LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized CRLDataclassOwner.perform(_:for:withChildren:forDataclass:)(void *a1, uint64_t a2)
{
  v27 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v3 - 8);
  v25 = &v24 - v4;
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  v5 = static OS_os_log.dataclassOwner;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  result = swift_initStackObject();
  v26 = xmmword_3A860;
  *(result + 16) = xmmword_3A860;
  if (a1)
  {
    v8 = result;
    v9 = [a1 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v8[7] = &type metadata for String;
    v13 = lazy protocol witness table accessor for type String and conformance String();
    v8[8] = v13;
    v14 = a1;
    v8[4] = v10;
    v8[5] = v12;
    v15 = static os_log_type_t.default.getter();
    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v15, "perform(_:for:withChildren:forDataclass:) called with action: %{public}@.", 73, 2, v8);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0(v8 + 4);
    v24 = v6;
    inited = swift_initStackObject();
    *(inited + 16) = v26;
    v28 = [v14 type];
    type metadata accessor for ACDataclassActionType(0);
    v17 = String.init<A>(describing:)();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v13;
    *(inited + 32) = v17;
    *(inited + 40) = v18;
    v19 = static os_log_type_t.default.getter();
    *&v26 = v5;
    _CRLLog(_:dso:type:format:_:)(v5, &dword_0, v19, "Action type: %@.", 16, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    result = specialized static CRLBoardDataStore.dataStoreDataClassAction(_:)([v14 type]);
    v20 = v27;
    if (v27)
    {
      v21 = result;
      v22 = type metadata accessor for URL();
      v23 = v25;
      (*(*(v22 - 8) + 56))(v25, 1, 1, v22);
      specialized static CRLBoardDataStore.performDataStoreDataclassAction(_:for:dataDirectory:)(v21, v20, v23);
      outlined destroy of URL?(v23);
      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t type metadata accessor for ACDataclassAction()
{
  result = lazy cache variable for type metadata for ACDataclassAction;
  if (!lazy cache variable for type metadata for ACDataclassAction)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ACDataclassAction);
  }

  return result;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t one-time initialization function for shouldUseSandboxEnvironment()
{
  v2[3] = &type metadata for CRLFeatureFlags;
  v2[4] = lazy protocol witness table accessor for type CRLFeatureFlags and conformance CRLFeatureFlags();
  LOBYTE(v2[0]) = 27;
  v0 = isFeatureEnabled(_:)();
  result = __swift_destroy_boxed_opaque_existential_0(v2);
  static CRLCloudSyncConstants.shouldUseSandboxEnvironment = v0 & 1;
  return result;
}

uint64_t *OS_os_log.boardStore.unsafeMutableAddressor()
{
  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardStore;
}

uint64_t *OS_os_log.dataclassOwner.unsafeMutableAddressor()
{
  if (one-time initialization token for dataclassOwner != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataclassOwner;
}

void one-time initialization function for crlDefault()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDefaultCat_log_t, &CRLDefaultCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDefault = v1;
}

uint64_t *OS_os_log.crlDefault.unsafeMutableAddressor()
{
  if (one-time initialization token for crlDefault != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDefault;
}

void one-time initialization function for crlAssert()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssertCat_log_t, &CRLAssertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssert = v1;
}

uint64_t *OS_os_log.crlAssert.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAssert != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssert;
}

void one-time initialization function for crlError()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLErrorCat_log_t, &CRLErrorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlError = v1;
}

uint64_t *OS_os_log.crlError.unsafeMutableAddressor()
{
  if (one-time initialization token for crlError != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlError;
}

void one-time initialization function for crlWarning()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLWarningCat_log_t, &CRLWarningCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlWarning = v1;
}

uint64_t *OS_os_log.crlWarning.unsafeMutableAddressor()
{
  if (one-time initialization token for crlWarning != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlWarning;
}

void one-time initialization function for crlAlert()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAlertCat_log_t, &CRLAlertCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAlert = v1;
}

uint64_t *OS_os_log.crlAlert.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAlert != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAlert;
}

void one-time initialization function for crlPerformance()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPerformanceCat_log_t, &CRLPerformanceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPerformance = v1;
}

uint64_t *OS_os_log.crlPerformance.unsafeMutableAddressor()
{
  if (one-time initialization token for crlPerformance != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPerformance;
}

void one-time initialization function for crlStatusHUD()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStatusHUDCat_log_t, &CRLStatusHUDCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStatusHUD = v1;
}

uint64_t *OS_os_log.crlStatusHUD.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStatusHUD != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStatusHUD;
}

void one-time initialization function for crlTextInput()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTextInputCat_log_t, &CRLTextInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTextInput = v1;
}

uint64_t *OS_os_log.crlTextInput.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTextInput != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTextInput;
}

void one-time initialization function for crlTraceableResource()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTraceableResourceCat_log_t, &CRLTraceableResourceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTraceableResource = v1;
}

uint64_t *OS_os_log.crlTraceableResource.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTraceableResource != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTraceableResource;
}

void one-time initialization function for crlStorageHierachy()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStorageHierachyCat_log_t, &CRLStorageHierachyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStorageHierachy = v1;
}

uint64_t *OS_os_log.crlStorageHierachy.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStorageHierachy != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStorageHierachy;
}

void one-time initialization function for crlSerializableObject()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSerializableObjectCat_log_t, &CRLSerializableObjectCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSerializableObject = v1;
}

uint64_t *OS_os_log.crlSerializableObject.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSerializableObject != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSerializableObject;
}

void one-time initialization function for crlCollaborationParticipant()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaborationParticipantCat_log_t, &CRLCollaborationParticipantCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaborationParticipant = v1;
}

uint64_t *OS_os_log.crlCollaborationParticipant.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCollaborationParticipant != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaborationParticipant;
}

void one-time initialization function for crlSpotlight()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSpotlightCat_log_t, &CRLSpotlightCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSpotlight = v1;
}

uint64_t *OS_os_log.crlSpotlight.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSpotlight != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSpotlight;
}

void one-time initialization function for crlNetworkReachability()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLNetworkReachabilityCat_log_t, &CRLNetworkReachabilityCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlNetworkReachability = v1;
}

uint64_t *OS_os_log.crlNetworkReachability.unsafeMutableAddressor()
{
  if (one-time initialization token for crlNetworkReachability != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlNetworkReachability;
}

void one-time initialization function for crlAssetDownloadManager()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetDownloadManagerCat_log_t, &CRLAssetDownloadManagerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAssetDownloadManager = v1;
}

uint64_t *OS_os_log.crlAssetDownloadManager.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAssetDownloadManager != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAssetDownloadManager;
}

void one-time initialization function for crlAnalytics()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAnalyticsCat_log_t, &CRLAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnalytics = v1;
}

uint64_t *OS_os_log.crlAnalytics.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAnalytics != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnalytics;
}

void one-time initialization function for crlAppAnalytics()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppAnalyticsCat_log_t, &CRLAppAnalyticsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAppAnalytics = v1;
}

uint64_t *OS_os_log.crlAppAnalytics.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAppAnalytics != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAppAnalytics;
}

uint64_t (*static OS_os_log.crlAppAnalytics.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for crlAppAnalytics != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.crlAppAnalytics.modify;
}

void one-time initialization function for crlKeyboard()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardCat_log_t, &CRLKeyboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlKeyboard = v1;
}

uint64_t *OS_os_log.crlKeyboard.unsafeMutableAddressor()
{
  if (one-time initialization token for crlKeyboard != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlKeyboard;
}

void one-time initialization function for crlFolderUI()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFolderUICat_log_t, &CRLFolderUICat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFolderUI = v1;
}

uint64_t *OS_os_log.crlFolderUI.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFolderUI != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFolderUI;
}

void one-time initialization function for crlBoardLibrary()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardLibraryCat_log_t, &CRLBoardLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardLibrary = v1;
}

uint64_t *OS_os_log.crlBoardLibrary.unsafeMutableAddressor()
{
  if (one-time initialization token for crlBoardLibrary != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardLibrary;
}

void one-time initialization function for crlBoardPreviewImageCache()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardPreviewImageCacheCat_log_t, &CRLBoardPreviewImageCacheCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlBoardPreviewImageCache = v1;
}

uint64_t *OS_os_log.crlBoardPreviewImageCache.unsafeMutableAddressor()
{
  if (one-time initialization token for crlBoardPreviewImageCache != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlBoardPreviewImageCache;
}

void one-time initialization function for crlDragAndDrop()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDragAndDropCat_log_t, &CRLDragAndDropCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlDragAndDrop = v1;
}

uint64_t *OS_os_log.crlDragAndDrop.unsafeMutableAddressor()
{
  if (one-time initialization token for crlDragAndDrop != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlDragAndDrop;
}

void one-time initialization function for crlSharingExtension()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSharingExtensionCat_log_t, &CRLSharingExtensionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSharingExtension = v1;
}

uint64_t *OS_os_log.crlSharingExtension.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSharingExtension != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSharingExtension;
}

void one-time initialization function for crlStencilLibrary()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStencilLibraryCat_log_t, &CRLStencilLibraryCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStencilLibrary = v1;
}

uint64_t *OS_os_log.crlStencilLibrary.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStencilLibrary != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStencilLibrary;
}

void one-time initialization function for crlRealTimeMessageTransfer()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeMessageTransferCat_log_t, &CRLCarmelRealTimeMessageTransferCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlRealTimeMessageTransfer = v1;
}

uint64_t *OS_os_log.crlRealTimeMessageTransfer.unsafeMutableAddressor()
{
  if (one-time initialization token for crlRealTimeMessageTransfer != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlRealTimeMessageTransfer;
}

void one-time initialization function for crlZoneRefetch()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLZoneRefetchCat_log_t, &CRLZoneRefetchCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlZoneRefetch = v1;
}

uint64_t *OS_os_log.crlZoneRefetch.unsafeMutableAddressor()
{
  if (one-time initialization token for crlZoneRefetch != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlZoneRefetch;
}

void one-time initialization function for crlSendACopy()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSendACopyCat_log_t, &CRLSendACopyCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSendACopy = v1;
}

uint64_t *OS_os_log.crlSendACopy.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSendACopy != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSendACopy;
}

void one-time initialization function for crlCloudKitEnvironment()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudKitEnvironmentCat_log_t, &CRLCloudKitEnvironmentCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudKitEnvironment = v1;
}

uint64_t *OS_os_log.crlCloudKitEnvironment.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCloudKitEnvironment != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudKitEnvironment;
}

void one-time initialization function for crlSidebar()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSidebarCat_log_t, &CRLSidebarCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSidebar = v1;
}

uint64_t *OS_os_log.crlSidebar.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSidebar != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSidebar;
}

void one-time initialization function for crlInsertMedia()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLInsertMediaCat_log_t, &CRLInsertMediaCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlInsertMedia = v1;
}

uint64_t *OS_os_log.crlInsertMedia.unsafeMutableAddressor()
{
  if (one-time initialization token for crlInsertMedia != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlInsertMedia;
}

void one-time initialization function for crlCollaboratorCursor()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCollaboratorCursorCat_log_t, &CRLCollaboratorCursorCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCollaboratorCursor = v1;
}

uint64_t *OS_os_log.crlCollaboratorCursor.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCollaboratorCursor != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCollaboratorCursor;
}

void one-time initialization function for crlStateRestoration()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLStateRestorationCat_log_t, &CRLStateRestorationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlStateRestoration = v1;
}

uint64_t *OS_os_log.crlStateRestoration.unsafeMutableAddressor()
{
  if (one-time initialization token for crlStateRestoration != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlStateRestoration;
}

void one-time initialization function for crlFollow()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFollowCat_log_t, &CRLFollowCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFollow = v1;
}

uint64_t *OS_os_log.crlFollow.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFollow != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFollow;
}

void one-time initialization function for crlJoinLeave()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLJoinLeaveCat_log_t, &CRLJoinLeaveCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlJoinLeave = v1;
}

uint64_t *OS_os_log.crlJoinLeave.unsafeMutableAddressor()
{
  if (one-time initialization token for crlJoinLeave != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlJoinLeave;
}

void one-time initialization function for crlPencilHover()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPencilHoverCat_log_t, &CRLPencilHoverCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlPencilHover = v1;
}

uint64_t *OS_os_log.crlPencilHover.unsafeMutableAddressor()
{
  if (one-time initialization token for crlPencilHover != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlPencilHover;
}

void one-time initialization function for crlScenes()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLScenesCat_log_t, &CRLScenesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlScenes = v1;
}

uint64_t *OS_os_log.crlScenes.unsafeMutableAddressor()
{
  if (one-time initialization token for crlScenes != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlScenes;
}

void one-time initialization function for crlTables()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTablesCat_log_t, &CRLTablesCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlTables = v1;
}

uint64_t *OS_os_log.crlTables.unsafeMutableAddressor()
{
  if (one-time initialization token for crlTables != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlTables;
}

void one-time initialization function for crlThreeDimensionalObjects()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLThreeDimensionalObjectsCat_log_t, &CRLThreeDimensionalObjectsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlThreeDimensionalObjects = v1;
}

uint64_t *OS_os_log.crlThreeDimensionalObjects.unsafeMutableAddressor()
{
  if (one-time initialization token for crlThreeDimensionalObjects != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlThreeDimensionalObjects;
}

void one-time initialization function for crlChangeShape()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLChangeShapeCat_log_t, &CRLChangeShapeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlChangeShape = v1;
}

uint64_t *OS_os_log.crlChangeShape.unsafeMutableAddressor()
{
  if (one-time initialization token for crlChangeShape != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlChangeShape;
}

void one-time initialization function for crlCloudQuotaMessaging()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCloudQuotaMessagingCat_log_t, &CRLCloudQuotaMessagingCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlCloudQuotaMessaging = v1;
}

uint64_t *OS_os_log.crlCloudQuotaMessaging.unsafeMutableAddressor()
{
  if (one-time initialization token for crlCloudQuotaMessaging != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlCloudQuotaMessaging;
}

void one-time initialization function for crl3DBreakthrough()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRL3DBreakthroughCat_log_t, &CRL3DBreakthroughCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crl3DBreakthrough = v1;
}

uint64_t *OS_os_log.crl3DBreakthrough.unsafeMutableAddressor()
{
  if (one-time initialization token for crl3DBreakthrough != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crl3DBreakthrough;
}

void one-time initialization function for crlObjectTransform()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLObjectTransformCat_log_t, &CRLObjectTransformCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlObjectTransform = v1;
}

uint64_t *OS_os_log.crlObjectTransform.unsafeMutableAddressor()
{
  if (one-time initialization token for crlObjectTransform != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlObjectTransform;
}

void one-time initialization function for crlLayerAnimation()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLLayerAnimationCat_log_t, &CRLLayerAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlLayerAnimation = v1;
}

uint64_t *OS_os_log.crlLayerAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for crlLayerAnimation != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlLayerAnimation;
}

void one-time initialization function for crlAnimationImpl()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAnimationImplCat_log_t, &CRLAnimationImplCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlAnimationImpl = v1;
}

uint64_t *OS_os_log.crlAnimationImpl.unsafeMutableAddressor()
{
  if (one-time initialization token for crlAnimationImpl != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlAnimationImpl;
}

void one-time initialization function for crlMiniFormatter()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLMiniFormatterCat_log_t, &CRLMiniFormatterCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlMiniFormatter = v1;
}

uint64_t *OS_os_log.crlMiniFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for crlMiniFormatter != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlMiniFormatter;
}

void one-time initialization function for sceneManagement()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSceneManagementCat_log_t, &CRLSceneManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sceneManagement = v1;
}

uint64_t *OS_os_log.sceneManagement.unsafeMutableAddressor()
{
  if (one-time initialization token for sceneManagement != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sceneManagement;
}

void one-time initialization function for composition()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCompositionCat_log_t, &CRLCompositionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.composition = v1;
}

uint64_t *OS_os_log.composition.unsafeMutableAddressor()
{
  if (one-time initialization token for composition != -1)
  {
    swift_once();
  }

  return &static OS_os_log.composition;
}

void one-time initialization function for CRLViewController()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLViewControllerCat_log_t, &CRLViewControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.CRLViewController = v1;
}

uint64_t *OS_os_log.CRLViewController.unsafeMutableAddressor()
{
  if (one-time initialization token for CRLViewController != -1)
  {
    swift_once();
  }

  return &static OS_os_log.CRLViewController;
}

void one-time initialization function for appIntents()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppIntentsCat_log_t, &CRLAppIntentsCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appIntents = v1;
}

uint64_t *OS_os_log.appIntents.unsafeMutableAddressor()
{
  if (one-time initialization token for appIntents != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appIntents;
}

void one-time initialization function for appState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAppStateCat_log_t, &CRLAppStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.appState = v1;
}

uint64_t *OS_os_log.appState.unsafeMutableAddressor()
{
  if (one-time initialization token for appState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.appState;
}

void one-time initialization function for interaction()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLInteractionCat_log_t, &CRLInteractionCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.interaction = v1;
}

uint64_t *OS_os_log.interaction.unsafeMutableAddressor()
{
  if (one-time initialization token for interaction != -1)
  {
    swift_once();
  }

  return &static OS_os_log.interaction;
}

void one-time initialization function for contentState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLContentStateCat_log_t, &CRLContentStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.contentState = v1;
}

uint64_t *OS_os_log.contentState.unsafeMutableAddressor()
{
  if (one-time initialization token for contentState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.contentState;
}

void one-time initialization function for boardStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardDataStoreCat_log_t, &CRLBoardDataStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardStore = v1;
}

void one-time initialization function for fileProviderStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFileProviderStoreCat_log_t, &CRLFileProviderStoreCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.fileProviderStore = v1;
}

uint64_t *OS_os_log.fileProviderStore.unsafeMutableAddressor()
{
  if (one-time initialization token for fileProviderStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.fileProviderStore;
}

void one-time initialization function for persistence()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPersistenceCat_log_t, &CRLPersistenceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.persistence = v1;
}

uint64_t *OS_os_log.persistence.unsafeMutableAddressor()
{
  if (one-time initialization token for persistence != -1)
  {
    swift_once();
  }

  return &static OS_os_log.persistence;
}

void one-time initialization function for dataSync()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataSyncCat_log_t, &CRLDataSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataSync = v1;
}

uint64_t *OS_os_log.dataSync.unsafeMutableAddressor()
{
  if (one-time initialization token for dataSync != -1)
  {
    swift_once();
  }

  return &static OS_os_log.dataSync;
}

void one-time initialization function for commandController()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCommandControllerCat_log_t, &CRLCommandControllerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.commandController = v1;
}

uint64_t *OS_os_log.commandController.unsafeMutableAddressor()
{
  if (one-time initialization token for commandController != -1)
  {
    swift_once();
  }

  return &static OS_os_log.commandController;
}

void one-time initialization function for suspendResumeCollaboration()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSuspendResumeCollaborationCat_log_t, &CRLSuspendResumeCollaborationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.suspendResumeCollaboration = v1;
}

uint64_t *OS_os_log.suspendResumeCollaboration.unsafeMutableAddressor()
{
  if (one-time initialization token for suspendResumeCollaboration != -1)
  {
    swift_once();
  }

  return &static OS_os_log.suspendResumeCollaboration;
}

void one-time initialization function for realTimeSync()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLCarmelRealTimeSyncCat_log_t, &CRLCarmelRealTimeSyncCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.realTimeSync = v1;
}

uint64_t *OS_os_log.realTimeSync.unsafeMutableAddressor()
{
  if (one-time initialization token for realTimeSync != -1)
  {
    swift_once();
  }

  return &static OS_os_log.realTimeSync;
}

void one-time initialization function for keyboardInput()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLKeyboardInputCat_log_t, &CRLKeyboardInputCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.keyboardInput = v1;
}

uint64_t *OS_os_log.keyboardInput.unsafeMutableAddressor()
{
  if (one-time initialization token for keyboardInput != -1)
  {
    swift_once();
  }

  return &static OS_os_log.keyboardInput;
}

void one-time initialization function for target_gesture()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLTargetGestureCat_log_t, &CRLTargetGestureCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.target_gesture = v1;
}

uint64_t *OS_os_log.target_gesture.unsafeMutableAddressor()
{
  if (one-time initialization token for target_gesture != -1)
  {
    swift_once();
  }

  return &static OS_os_log.target_gesture;
}

void one-time initialization function for upgrade()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataStoreUpgradeCat_log_t, &CRLDataStoreUpgradeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.upgrade = v1;
}

uint64_t *OS_os_log.upgrade.unsafeMutableAddressor()
{
  if (one-time initialization token for upgrade != -1)
  {
    swift_once();
  }

  return &static OS_os_log.upgrade;
}

void one-time initialization function for pasteboard()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLPasteboardCat_log_t, &CRLPasteboardCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.pasteboard = v1;
}

uint64_t *OS_os_log.pasteboard.unsafeMutableAddressor()
{
  if (one-time initialization token for pasteboard != -1)
  {
    swift_once();
  }

  return &static OS_os_log.pasteboard;
}

void one-time initialization function for boardItemDataSize()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemDataSizeCat_log_t, &CRLBoardItemDataSizeCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemDataSize = v1;
}

uint64_t *OS_os_log.boardItemDataSize.unsafeMutableAddressor()
{
  if (one-time initialization token for boardItemDataSize != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemDataSize;
}

void one-time initialization function for boardItemLifecycle()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLBoardItemLifecycleCat_log_t, &CRLBoardItemLifecycleCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.boardItemLifecycle = v1;
}

uint64_t *OS_os_log.boardItemLifecycle.unsafeMutableAddressor()
{
  if (one-time initialization token for boardItemLifecycle != -1)
  {
    swift_once();
  }

  return &static OS_os_log.boardItemLifecycle;
}

void one-time initialization function for assetManagement()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLAssetManagementCat_log_t, &CRLAssetManagementCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.assetManagement = v1;
}

uint64_t *OS_os_log.assetManagement.unsafeMutableAddressor()
{
  if (one-time initialization token for assetManagement != -1)
  {
    swift_once();
  }

  return &static OS_os_log.assetManagement;
}

void one-time initialization function for dataclassOwner()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDataclassOwnerCat_log_t, &CRLDataclassOwnerCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.dataclassOwner = v1;
}

void one-time initialization function for shareState()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLShareStateCat_log_t, &CRLShareStateCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.shareState = v1;
}

uint64_t *OS_os_log.shareState.unsafeMutableAddressor()
{
  if (one-time initialization token for shareState != -1)
  {
    swift_once();
  }

  return &static OS_os_log.shareState;
}

void one-time initialization function for DrawingDataDetectors()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLDrawingDataDetectors_log_t, &CRLDrawingDataDetectors_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.DrawingDataDetectors = v1;
}

uint64_t *OS_os_log.DrawingDataDetectors.unsafeMutableAddressor()
{
  if (one-time initialization token for DrawingDataDetectors != -1)
  {
    swift_once();
  }

  return &static OS_os_log.DrawingDataDetectors;
}

void one-time initialization function for sideStore()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSideStore_log_t, &CRLSideStore_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.sideStore = v1;
}

uint64_t *OS_os_log.sideStore.unsafeMutableAddressor()
{
  if (one-time initialization token for sideStore != -1)
  {
    swift_once();
  }

  return &static OS_os_log.sideStore;
}

void one-time initialization function for crlSurface()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLSurfaceCat_log_t, &CRLSurfaceCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlSurface = v1;
}

uint64_t *OS_os_log.crlSurface.unsafeMutableAddressor()
{
  if (one-time initialization token for crlSurface != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlSurface;
}

void one-time initialization function for writingTools()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLWritingTools_log_t, &CRLWritingTools_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.writingTools = v1;
}

uint64_t *OS_os_log.writingTools.unsafeMutableAddressor()
{
  if (one-time initialization token for writingTools != -1)
  {
    swift_once();
  }

  return &static OS_os_log.writingTools;
}

uint64_t (*static OS_os_log.writingTools.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for writingTools != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.writingTools.modify;
}

void one-time initialization function for crlFreehandDrawingStrokeAnimation()
{
  swift_beginAccess();
  swift_beginAccess();
  v0 = String._bridgeToObjectiveC()();
  v1 = CRLLogEnsureCreated(v0, &CRLFreehandDrawingStrokeAnimationCat_log_t, &CRLFreehandDrawingStrokeAnimationCat_init_token);
  swift_endAccess();
  swift_endAccess();

  static OS_os_log.crlFreehandDrawingStrokeAnimation = v1;
}

uint64_t *OS_os_log.crlFreehandDrawingStrokeAnimation.unsafeMutableAddressor()
{
  if (one-time initialization token for crlFreehandDrawingStrokeAnimation != -1)
  {
    swift_once();
  }

  return &static OS_os_log.crlFreehandDrawingStrokeAnimation;
}

id static OS_os_log.crlAppAnalytics.getter(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = *a2;

  return v4;
}

void static OS_os_log.crlAppAnalytics.setter(void *a1, void *a2, void **a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = *a3;
  *a3 = a1;
}

uint64_t (*static OS_os_log.crlFreehandDrawingStrokeAnimation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for crlFreehandDrawingStrokeAnimation != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static OS_os_log.crlAppAnalytics.modify;
}

uint64_t _CRLLog(_:dso:type:format:_:)(uint64_t a1, int *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  switch(*(a7 + 16))
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_3A860;
      v9 = a7 + 32;
      v10 = v20 + 32;
      goto LABEL_25;
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_3A290;
      outlined init with copy of CVarArg(a7 + 32, v16 + 32);
      v9 = a7 + 72;
      v10 = v16 + 72;
      goto LABEL_25;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_3A890;
      outlined init with copy of CVarArg(a7 + 32, v18 + 32);
      outlined init with copy of CVarArg(a7 + 72, v18 + 72);
      v9 = a7 + 112;
      v10 = v18 + 112;
      goto LABEL_25;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_3AA30;
      outlined init with copy of CVarArg(a7 + 32, v13 + 32);
      outlined init with copy of CVarArg(a7 + 72, v13 + 72);
      outlined init with copy of CVarArg(a7 + 112, v13 + 112);
      v9 = a7 + 152;
      v10 = v13 + 152;
      goto LABEL_25;
    case 5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_3AA20;
      outlined init with copy of CVarArg(a7 + 32, v23 + 32);
      outlined init with copy of CVarArg(a7 + 72, v23 + 72);
      outlined init with copy of CVarArg(a7 + 112, v23 + 112);
      outlined init with copy of CVarArg(a7 + 152, v23 + 152);
      v9 = a7 + 192;
      v10 = v23 + 192;
      goto LABEL_25;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_3AA10;
      outlined init with copy of CVarArg(a7 + 32, v26 + 32);
      outlined init with copy of CVarArg(a7 + 72, v26 + 72);
      outlined init with copy of CVarArg(a7 + 112, v26 + 112);
      outlined init with copy of CVarArg(a7 + 152, v26 + 152);
      outlined init with copy of CVarArg(a7 + 192, v26 + 192);
      v9 = a7 + 232;
      v10 = v26 + 232;
      goto LABEL_25;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_3AA00;
      outlined init with copy of CVarArg(a7 + 32, v19 + 32);
      outlined init with copy of CVarArg(a7 + 72, v19 + 72);
      outlined init with copy of CVarArg(a7 + 112, v19 + 112);
      outlined init with copy of CVarArg(a7 + 152, v19 + 152);
      outlined init with copy of CVarArg(a7 + 192, v19 + 192);
      outlined init with copy of CVarArg(a7 + 232, v19 + 232);
      v9 = a7 + 272;
      v10 = v19 + 272;
      goto LABEL_25;
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_3A9F0;
      outlined init with copy of CVarArg(a7 + 32, v29 + 32);
      outlined init with copy of CVarArg(a7 + 72, v29 + 72);
      outlined init with copy of CVarArg(a7 + 112, v29 + 112);
      outlined init with copy of CVarArg(a7 + 152, v29 + 152);
      outlined init with copy of CVarArg(a7 + 192, v29 + 192);
      outlined init with copy of CVarArg(a7 + 232, v29 + 232);
      outlined init with copy of CVarArg(a7 + 272, v29 + 272);
      v9 = a7 + 312;
      v10 = v29 + 312;
      goto LABEL_25;
    case 9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_3A9E0;
      outlined init with copy of CVarArg(a7 + 32, v15 + 32);
      outlined init with copy of CVarArg(a7 + 72, v15 + 72);
      outlined init with copy of CVarArg(a7 + 112, v15 + 112);
      outlined init with copy of CVarArg(a7 + 152, v15 + 152);
      outlined init with copy of CVarArg(a7 + 192, v15 + 192);
      outlined init with copy of CVarArg(a7 + 232, v15 + 232);
      outlined init with copy of CVarArg(a7 + 272, v15 + 272);
      outlined init with copy of CVarArg(a7 + 312, v15 + 312);
      v9 = a7 + 352;
      v10 = v15 + 352;
      goto LABEL_25;
    case 0xALL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_3A9D0;
      outlined init with copy of CVarArg(a7 + 32, v28 + 32);
      outlined init with copy of CVarArg(a7 + 72, v28 + 72);
      outlined init with copy of CVarArg(a7 + 112, v28 + 112);
      outlined init with copy of CVarArg(a7 + 152, v28 + 152);
      outlined init with copy of CVarArg(a7 + 192, v28 + 192);
      outlined init with copy of CVarArg(a7 + 232, v28 + 232);
      outlined init with copy of CVarArg(a7 + 272, v28 + 272);
      outlined init with copy of CVarArg(a7 + 312, v28 + 312);
      outlined init with copy of CVarArg(a7 + 352, v28 + 352);
      v9 = a7 + 392;
      v10 = v28 + 392;
      goto LABEL_25;
    case 0xBLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_3A9C0;
      outlined init with copy of CVarArg(a7 + 32, v12 + 32);
      outlined init with copy of CVarArg(a7 + 72, v12 + 72);
      outlined init with copy of CVarArg(a7 + 112, v12 + 112);
      outlined init with copy of CVarArg(a7 + 152, v12 + 152);
      outlined init with copy of CVarArg(a7 + 192, v12 + 192);
      outlined init with copy of CVarArg(a7 + 232, v12 + 232);
      outlined init with copy of CVarArg(a7 + 272, v12 + 272);
      outlined init with copy of CVarArg(a7 + 312, v12 + 312);
      outlined init with copy of CVarArg(a7 + 352, v12 + 352);
      outlined init with copy of CVarArg(a7 + 392, v12 + 392);
      v9 = a7 + 432;
      v10 = v12 + 432;
      goto LABEL_25;
    case 0xCLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_3A9B0;
      outlined init with copy of CVarArg(a7 + 32, v14 + 32);
      outlined init with copy of CVarArg(a7 + 72, v14 + 72);
      outlined init with copy of CVarArg(a7 + 112, v14 + 112);
      outlined init with copy of CVarArg(a7 + 152, v14 + 152);
      outlined init with copy of CVarArg(a7 + 192, v14 + 192);
      outlined init with copy of CVarArg(a7 + 232, v14 + 232);
      outlined init with copy of CVarArg(a7 + 272, v14 + 272);
      outlined init with copy of CVarArg(a7 + 312, v14 + 312);
      outlined init with copy of CVarArg(a7 + 352, v14 + 352);
      outlined init with copy of CVarArg(a7 + 392, v14 + 392);
      outlined init with copy of CVarArg(a7 + 432, v14 + 432);
      v9 = a7 + 472;
      v10 = v14 + 472;
      goto LABEL_25;
    case 0xDLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_3A9A0;
      outlined init with copy of CVarArg(a7 + 32, v25 + 32);
      outlined init with copy of CVarArg(a7 + 72, v25 + 72);
      outlined init with copy of CVarArg(a7 + 112, v25 + 112);
      outlined init with copy of CVarArg(a7 + 152, v25 + 152);
      outlined init with copy of CVarArg(a7 + 192, v25 + 192);
      outlined init with copy of CVarArg(a7 + 232, v25 + 232);
      outlined init with copy of CVarArg(a7 + 272, v25 + 272);
      outlined init with copy of CVarArg(a7 + 312, v25 + 312);
      outlined init with copy of CVarArg(a7 + 352, v25 + 352);
      outlined init with copy of CVarArg(a7 + 392, v25 + 392);
      outlined init with copy of CVarArg(a7 + 432, v25 + 432);
      outlined init with copy of CVarArg(a7 + 472, v25 + 472);
      v9 = a7 + 512;
      v10 = v25 + 512;
      goto LABEL_25;
    case 0xELL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_3A990;
      outlined init with copy of CVarArg(a7 + 32, v11 + 32);
      outlined init with copy of CVarArg(a7 + 72, v11 + 72);
      outlined init with copy of CVarArg(a7 + 112, v11 + 112);
      outlined init with copy of CVarArg(a7 + 152, v11 + 152);
      outlined init with copy of CVarArg(a7 + 192, v11 + 192);
      outlined init with copy of CVarArg(a7 + 232, v11 + 232);
      outlined init with copy of CVarArg(a7 + 272, v11 + 272);
      outlined init with copy of CVarArg(a7 + 312, v11 + 312);
      outlined init with copy of CVarArg(a7 + 352, v11 + 352);
      outlined init with copy of CVarArg(a7 + 392, v11 + 392);
      outlined init with copy of CVarArg(a7 + 432, v11 + 432);
      outlined init with copy of CVarArg(a7 + 472, v11 + 472);
      outlined init with copy of CVarArg(a7 + 512, v11 + 512);
      v9 = a7 + 552;
      v10 = v11 + 552;
      goto LABEL_25;
    case 0xFLL:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_3A980;
      outlined init with copy of CVarArg(a7 + 32, v17 + 32);
      outlined init with copy of CVarArg(a7 + 72, v17 + 72);
      outlined init with copy of CVarArg(a7 + 112, v17 + 112);
      outlined init with copy of CVarArg(a7 + 152, v17 + 152);
      outlined init with copy of CVarArg(a7 + 192, v17 + 192);
      outlined init with copy of CVarArg(a7 + 232, v17 + 232);
      outlined init with copy of CVarArg(a7 + 272, v17 + 272);
      outlined init with copy of CVarArg(a7 + 312, v17 + 312);
      outlined init with copy of CVarArg(a7 + 352, v17 + 352);
      outlined init with copy of CVarArg(a7 + 392, v17 + 392);
      outlined init with copy of CVarArg(a7 + 432, v17 + 432);
      outlined init with copy of CVarArg(a7 + 472, v17 + 472);
      outlined init with copy of CVarArg(a7 + 512, v17 + 512);
      outlined init with copy of CVarArg(a7 + 552, v17 + 552);
      v9 = a7 + 592;
      v10 = v17 + 592;
      goto LABEL_25;
    case 0x10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_3A970;
      outlined init with copy of CVarArg(a7 + 32, v8 + 32);
      outlined init with copy of CVarArg(a7 + 72, v8 + 72);
      outlined init with copy of CVarArg(a7 + 112, v8 + 112);
      outlined init with copy of CVarArg(a7 + 152, v8 + 152);
      outlined init with copy of CVarArg(a7 + 192, v8 + 192);
      outlined init with copy of CVarArg(a7 + 232, v8 + 232);
      outlined init with copy of CVarArg(a7 + 272, v8 + 272);
      outlined init with copy of CVarArg(a7 + 312, v8 + 312);
      outlined init with copy of CVarArg(a7 + 352, v8 + 352);
      outlined init with copy of CVarArg(a7 + 392, v8 + 392);
      outlined init with copy of CVarArg(a7 + 432, v8 + 432);
      outlined init with copy of CVarArg(a7 + 472, v8 + 472);
      outlined init with copy of CVarArg(a7 + 512, v8 + 512);
      outlined init with copy of CVarArg(a7 + 552, v8 + 552);
      outlined init with copy of CVarArg(a7 + 592, v8 + 592);
      v9 = a7 + 632;
      v10 = v8 + 632;
      goto LABEL_25;
    case 0x11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_3A960;
      outlined init with copy of CVarArg(a7 + 32, v21 + 32);
      outlined init with copy of CVarArg(a7 + 72, v21 + 72);
      outlined init with copy of CVarArg(a7 + 112, v21 + 112);
      outlined init with copy of CVarArg(a7 + 152, v21 + 152);
      outlined init with copy of CVarArg(a7 + 192, v21 + 192);
      outlined init with copy of CVarArg(a7 + 232, v21 + 232);
      outlined init with copy of CVarArg(a7 + 272, v21 + 272);
      outlined init with copy of CVarArg(a7 + 312, v21 + 312);
      outlined init with copy of CVarArg(a7 + 352, v21 + 352);
      outlined init with copy of CVarArg(a7 + 392, v21 + 392);
      outlined init with copy of CVarArg(a7 + 432, v21 + 432);
      outlined init with copy of CVarArg(a7 + 472, v21 + 472);
      outlined init with copy of CVarArg(a7 + 512, v21 + 512);
      outlined init with copy of CVarArg(a7 + 552, v21 + 552);
      outlined init with copy of CVarArg(a7 + 592, v21 + 592);
      outlined init with copy of CVarArg(a7 + 632, v21 + 632);
      v9 = a7 + 672;
      v10 = v21 + 672;
      goto LABEL_25;
    case 0x12:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_3A950;
      outlined init with copy of CVarArg(a7 + 32, v27 + 32);
      outlined init with copy of CVarArg(a7 + 72, v27 + 72);
      outlined init with copy of CVarArg(a7 + 112, v27 + 112);
      outlined init with copy of CVarArg(a7 + 152, v27 + 152);
      outlined init with copy of CVarArg(a7 + 192, v27 + 192);
      outlined init with copy of CVarArg(a7 + 232, v27 + 232);
      outlined init with copy of CVarArg(a7 + 272, v27 + 272);
      outlined init with copy of CVarArg(a7 + 312, v27 + 312);
      outlined init with copy of CVarArg(a7 + 352, v27 + 352);
      outlined init with copy of CVarArg(a7 + 392, v27 + 392);
      outlined init with copy of CVarArg(a7 + 432, v27 + 432);
      outlined init with copy of CVarArg(a7 + 472, v27 + 472);
      outlined init with copy of CVarArg(a7 + 512, v27 + 512);
      outlined init with copy of CVarArg(a7 + 552, v27 + 552);
      outlined init with copy of CVarArg(a7 + 592, v27 + 592);
      outlined init with copy of CVarArg(a7 + 632, v27 + 632);
      outlined init with copy of CVarArg(a7 + 672, v27 + 672);
      v9 = a7 + 712;
      v10 = v27 + 712;
      goto LABEL_25;
    case 0x13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_3A940;
      outlined init with copy of CVarArg(a7 + 32, v30 + 32);
      outlined init with copy of CVarArg(a7 + 72, v30 + 72);
      outlined init with copy of CVarArg(a7 + 112, v30 + 112);
      outlined init with copy of CVarArg(a7 + 152, v30 + 152);
      outlined init with copy of CVarArg(a7 + 192, v30 + 192);
      outlined init with copy of CVarArg(a7 + 232, v30 + 232);
      outlined init with copy of CVarArg(a7 + 272, v30 + 272);
      outlined init with copy of CVarArg(a7 + 312, v30 + 312);
      outlined init with copy of CVarArg(a7 + 352, v30 + 352);
      outlined init with copy of CVarArg(a7 + 392, v30 + 392);
      outlined init with copy of CVarArg(a7 + 432, v30 + 432);
      outlined init with copy of CVarArg(a7 + 472, v30 + 472);
      outlined init with copy of CVarArg(a7 + 512, v30 + 512);
      outlined init with copy of CVarArg(a7 + 552, v30 + 552);
      outlined init with copy of CVarArg(a7 + 592, v30 + 592);
      outlined init with copy of CVarArg(a7 + 632, v30 + 632);
      outlined init with copy of CVarArg(a7 + 672, v30 + 672);
      outlined init with copy of CVarArg(a7 + 712, v30 + 712);
      v9 = a7 + 752;
      v10 = v30 + 752;
      goto LABEL_25;
    case 0x14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_3A930;
      outlined init with copy of CVarArg(a7 + 32, v22 + 32);
      outlined init with copy of CVarArg(a7 + 72, v22 + 72);
      outlined init with copy of CVarArg(a7 + 112, v22 + 112);
      outlined init with copy of CVarArg(a7 + 152, v22 + 152);
      outlined init with copy of CVarArg(a7 + 192, v22 + 192);
      outlined init with copy of CVarArg(a7 + 232, v22 + 232);
      outlined init with copy of CVarArg(a7 + 272, v22 + 272);
      outlined init with copy of CVarArg(a7 + 312, v22 + 312);
      outlined init with copy of CVarArg(a7 + 352, v22 + 352);
      outlined init with copy of CVarArg(a7 + 392, v22 + 392);
      outlined init with copy of CVarArg(a7 + 432, v22 + 432);
      outlined init with copy of CVarArg(a7 + 472, v22 + 472);
      outlined init with copy of CVarArg(a7 + 512, v22 + 512);
      outlined init with copy of CVarArg(a7 + 552, v22 + 552);
      outlined init with copy of CVarArg(a7 + 592, v22 + 592);
      outlined init with copy of CVarArg(a7 + 632, v22 + 632);
      outlined init with copy of CVarArg(a7 + 672, v22 + 672);
      outlined init with copy of CVarArg(a7 + 712, v22 + 712);
      outlined init with copy of CVarArg(a7 + 752, v22 + 752);
      v9 = a7 + 792;
      v10 = v22 + 792;
LABEL_25:
      outlined init with copy of CVarArg(v9, v10);
      os_log(_:dso:log:type:_:)();

      break;
    default:

      result = os_log(_:dso:log:type:_:)();
      break;
  }

  return result;
}

uint64_t outlined init with copy of CVarArg(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t CRLUnfairLock.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SQLiteError.localizedDescription.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v5);

    v6._countAndFlagsBits = 2112062;
    v6._object = 0xE300000000000000;
    String.append(_:)(v6);
    v7 = a2;
    v8 = a3;
  }

  else
  {
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v7 = 62;
    v8 = 0xE100000000000000;
  }

  String.append(_:)(*&v7);
  return 60;
}

uint64_t one-time initialization function for inMemoryDatabaseURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for URL();
  __swift_allocate_value_buffer(v3, static SQLiteDatabase.inMemoryDatabaseURL);
  v4 = __swift_project_value_buffer(v3, static SQLiteDatabase.inMemoryDatabaseURL);
  URL.init(string:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t SQLiteDatabase.init(name:url:accessQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 0;
  v10 = (v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_name);
  *v10 = a1;
  v10[1] = a2;

  _StringGuts.grow(_:)(32);

  v11._object = 0x800000000003E420;
  v11._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v11);
  v12 = (v4 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation);
  *v12 = a1;
  v12[1] = a2;
  v13 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_url;
  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 32))(v5 + v13, a3, v14);
  *(v5 + 32) = a4;
  return v5;
}

Swift::Int_optional __swiftcall SQLiteRow.getInt32(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  v10 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = sqlite3_column_type(*(v2 + 24), at);
  if (v12 == 5)
  {
    v10 = 0;
  }

  else
  {
    v10 = sqlite3_column_int(*(v2 + 24), at);
  }

  v11 = v12 == 5;
LABEL_11:
  result.value = v10;
  result.is_nil = v11;
  return result;
}

Swift::Bool __swiftcall SQLiteDatabase.enableIncrementalAutoVacuum()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 32);
  *v4 = v5;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v6 = v5;
  LOBYTE(v5) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v4, v1);
  if ((v5 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  LODWORD(v1) = specialized static SQLiteStatement.execute(database:query:)(v0, 0xD000000000000017, 0x800000000003E3B0);
  if (v1 != 101)
  {
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_4:
      v7 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = v1;
      v9 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v7, &dword_0, v9, "Failed to enable incremental auto-vacuum on the database with error %d", 70, 2, inited);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      return v1 == 101;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 101;
}

Swift::Bool __swiftcall SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(Swift::Int32 timeoutInMilliseconds)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + 32);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v6, v3);
  if ((v7 & 1) == 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  swift_beginAccess();
  LODWORD(v1) = sqlite3_busy_timeout(*(v1 + 16), timeoutInMilliseconds);
  if (v1)
  {
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_4:
      v9 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A290;
      *(inited + 56) = &type metadata for Int32;
      *(inited + 64) = &protocol witness table for Int32;
      *(inited + 32) = timeoutInMilliseconds;
      *(inited + 96) = &type metadata for Int32;
      *(inited + 104) = &protocol witness table for Int32;
      *(inited + 72) = v1;
      v11 = static os_log_type_t.default.getter();
      _CRLLog(_:dso:type:format:_:)(v9, &dword_0, v11, "Failed to set busy_timeout to %d, result = %d", 45, 2, inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      swift_arrayDestroy();
      return v1 == 0;
    }

LABEL_7:
    swift_once();
    goto LABEL_4;
  }

  return v1 == 0;
}

uint64_t SQLiteDatabase.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_url;
  v2 = type metadata accessor for URL();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SQLiteDatabase(uint64_t a1)
{
  result = type metadata singleton initialization cache for SQLiteDatabase;
  if (!type metadata singleton initialization cache for SQLiteDatabase)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SQLiteDatabase(uint64_t a1)
{
  result = type metadata accessor for URL();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SQLiteStatement.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v0 + 24);
  if (v10)
  {
    v11 = *(*(v1 + 16) + 32);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    aBlock[4] = partial apply for closure #1 in SQLiteStatement.deinit;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor;
    v13 = _Block_copy(aBlock);
    v18 = v6;
    v14 = v13;
    v15 = v11;
    static DispatchQoS.unspecified.getter();
    v19 = &_swiftEmptyArrayStorage;
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v3 + 8))(v5, v2);
    (*(v7 + 8))(v9, v18);
  }

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall SQLiteStatement.bind(_:at:)(Swift::String _, Swift::Int at)
{
  v3 = v2;
  v21[0] = _._object;
  countAndFlagsBits = _._countAndFlagsBits;
  v6 = type metadata accessor for String.Encoding();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = (v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(*(v3 + 16) + 32);
  *v13 = v14;
  (*(v11 + 104))(v13, enum case for DispatchPredicate.onQueue(_:), v10);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  v17 = *(v11 + 8);
  v16 = v11 + 8;
  v18 = v17(v13, v10);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v21[1] = countAndFlagsBits;
  v21[2] = v21[0];
  static String.Encoding.utf8.getter();
  lazy protocol witness table accessor for type String and conformance String();
  v16 = StringProtocol.cString(using:)();
  (*(v7 + 8))(v9, v6);
  v18 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (at <= 0x7FFFFFFF)
  {
    v18 = *(v3 + 24);
    if (one-time initialization token for SQLiteTransientDestructor == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  v20 = v18;
  swift_once();
  v18 = v20;
LABEL_5:
  if (v16)
  {
    v19 = (v16 + 32);
  }

  else
  {
    v19 = 0;
  }

  sqlite3_bind_text(v18, at, v19, -1, static SQLiteStatement.SQLiteTransientDestructor);
}

Swift::String_optional __swiftcall SQLiteRow.getString(at:)(Swift::Int at)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v2 + 16) + 32);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = swift_beginAccess();
  if (at < 0xFFFFFFFF80000000)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (at > 0x7FFFFFFF)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (sqlite3_column_type(*(v2 + 24), at) == 5)
  {
    v10 = 0;
LABEL_8:
    v11 = 0;
    goto LABEL_13;
  }

  v10 = sqlite3_column_text(*(v2 + 24), at);
  if (!v10)
  {
    goto LABEL_8;
  }

  v10 = String.init(cString:)();
LABEL_13:
  result.value._object = v11;
  result.value._countAndFlagsBits = v10;
  return result;
}

uint64_t SQLiteRowIterator.next()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = v0[2];
  v6 = *(*(v5 + 16) + 32);
  *v4 = v6;
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v4, v1);
  if (v6)
  {
    v9 = v0[4];
    v10 = v0[3];
    v11 = v0[5];
    v0[3] = 0;
    v0[4] = 0;
    v0[5] = 1;
    outlined consume of SQLiteError?(v10, v9, v11);
    swift_beginAccess();
    v12 = sqlite3_step(*(v5 + 24));
    result = 0;
    if (v12 && v12 != 101)
    {
      if (v12 == 100)
      {
      }

      else
      {
        v13 = v0[3];
        v14 = v0[4];
        v15 = v0[5];
        v0[3] = v12;
        v0[4] = 0;
        v0[5] = 0;
        outlined consume of SQLiteError?(v13, v14, v15);
        return 0;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SQLiteRowIterator.__deallocating_deinit()
{

  outlined consume of SQLiteError?(v0[3], v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for IteratorProtocol.next() in conformance SQLiteRowIterator@<X0>(uint64_t *a1@<X8>)
{
  result = SQLiteRowIterator.next()();
  *a1 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLTransaction.begin()()
{
  v2 = v1;
  v3 = v0;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + 16);
  v9 = *(v8 + 32);
  *v7 = v9;
  v10 = *(v5 + 104);
  v62 = enum case for DispatchPredicate.onQueue(_:);
  v63 = v10;
  v64 = v5 + 104;
  v10(v7);
  v11 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  v14 = *(v5 + 8);
  v13 = v5 + 8;
  v12 = v14;
  v14(v7, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  if (*(v8 + 24) != 1)
  {
    goto LABEL_5;
  }

  v57 = v3;
  v58 = v1;
  v59 = v12;
  v60 = v13;
  v61 = v4;
  v56 = objc_opt_self();
  LODWORD(v2) = [v56 _atomicIncrementAssertCount];
  v65 = [objc_allocWithZone(NSString) init];
  specialized withVaList<A>(_:_:)(&_swiftEmptyArrayStorage, &v65, "There is already an open transaction on the database", 52, 2u);
  StaticString.description.getter("begin()", 7, 2);
  v55 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/SQL.swift", 75, 2);
  v15 = String._bridgeToObjectiveC()();

  v16 = [v15 lastPathComponent];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v17;

  if (one-time initialization token for crlAssert != -1)
  {
    goto LABEL_24;
  }

LABEL_4:
  v54 = static OS_os_log.crlAssert;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_3AA20;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v2;
  v19 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
  *(inited + 96) = v19;
  v20 = lazy protocol witness table accessor for type NSString and conformance NSObject();
  *(inited + 104) = v20;
  v21 = v55;
  *(inited + 72) = v55;
  *(inited + 136) = &type metadata for String;
  v22 = lazy protocol witness table accessor for type String and conformance String();
  v23 = v53;
  *(inited + 112) = v4;
  *(inited + 120) = v23;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v22;
  *(inited + 152) = 697;
  v24 = v65;
  *(inited + 216) = v19;
  *(inited + 224) = v20;
  *(inited + 192) = v24;
  v25 = v21;
  v26 = v24;
  v27 = static os_log_type_t.error.getter();
  v28 = v54;
  _CRLLog(_:dso:type:format:_:)(v54, &dword_0, v27, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
  swift_arrayDestroy();
  v29 = static os_log_type_t.error.getter();
  _CRLLog(_:dso:type:format:_:)(v28, &dword_0, v29, "There is already an open transaction on the database", 52, 2, &_swiftEmptyArrayStorage);

  type metadata accessor for __VaListBuilder();
  v30 = swift_allocObject();
  v30[2] = 8;
  v30[3] = 0;
  v30[4] = 0;
  v30[5] = 0;
  v31 = __VaListBuilder.va_list()();
  StaticString.description.getter("begin()", 7, 2);
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/SQL.swift", 75, 2);
  v33 = String._bridgeToObjectiveC()();

  StaticString.description.getter("There is already an open transaction on the database", 52, 2);
  v34 = String._bridgeToObjectiveC()();

  [v56 handleFailureInFunction:v32 file:v33 lineNumber:697 isFatal:0 format:v34 args:v31];

  v4 = v61;
  v2 = v58;
  v12 = v59;
  v3 = v57;
LABEL_5:
  v65 = 0;
  v66 = 0xE000000000000000;

  _StringGuts.grow(_:)(20);

  v65 = 0x204E49474542;
  v66 = 0xE600000000000000;
  v35 = 0x54414944454D4D49;
  if (*(v3 + 24) != 1)
  {
    v35 = 0x564953554C435845;
  }

  if (*(v3 + 24))
  {
    v36 = v35;
  }

  else
  {
    v36 = 0x4445525245464544;
  }

  if (*(v3 + 24))
  {
    v37 = 0xE900000000000045;
  }

  else
  {
    v37 = 0xE800000000000000;
  }

  v38 = v37;
  String.append(_:)(*&v36);

  v39._countAndFlagsBits = 0x4341534E41525420;
  v39._object = 0xEC0000004E4F4954;
  String.append(_:)(v39);
  v40 = v65;
  v41 = v66;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();
  v42 = specialized SQLiteStatement.init(database:query:)(v8, v40, v41);

  if (!v2)
  {
    v43 = *(*(v42 + 16) + 32);
    *v7 = v43;
    v63(v7, v62, v4);
    v44 = v43;
    LOBYTE(v43) = _dispatchPreconditionTest(_:)();
    v12(v7, v4);
    if (v43)
    {
      v45 = *(v42 + 16);

      v46 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v45, v42);

      if (v46 == 101)
      {
        *(v8 + 24) = 1;
        v47 = *(*(v42 + 16) + 32);
        *v7 = v47;
        v63(v7, v62, v4);
        v48 = v47;
        v46 = _dispatchPreconditionTest(_:)();
        v12(v7, v4);
        if (v46)
        {
LABEL_19:
          swift_beginAccess();
          v52 = *(v42 + 24);
          if (v52)
          {
            sqlite3_finalize(v52);
            *(v42 + 24) = 0;
          }

          return;
        }

        __break(1u);
      }

      lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
      swift_allocError();
      *v49 = v46;
      *(v49 + 8) = 0xD00000000000001DLL;
      *(v49 + 16) = 0x800000000003E270;
      swift_willThrow();
      v50 = *(*(v42 + 16) + 32);
      *v7 = v50;
      v63(v7, v62, v4);
      v51 = v50;
      LOBYTE(v50) = _dispatchPreconditionTest(_:)();
      v12(v7, v4);
      if (v50)
      {
        goto LABEL_19;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLTransaction.commit()()
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + 16);
  v7 = *(v6 + 32);
  *v5 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v23 = *(v3 + 104);
  v23(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v24 = *(v3 + 8);
  v24(v5, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v11 = specialized SQLiteStatement.init(database:query:)(v10, 0xD000000000000012, 0x800000000003E230);

  if (v1)
  {
    return;
  }

  v12 = *(*(v11 + 16) + 32);
  *v5 = v12;
  v23(v5, v8, v2);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  v24(v5, v2);
  if ((v12 & 1) == 0)
  {
    goto LABEL_13;
  }

  v14 = *(v11 + 16);

  v15 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v14, v11);

  *(v6 + 24) = 0;
  if (v15 != 101)
  {
    goto LABEL_7;
  }

  v16 = *(*(v11 + 16) + 32);
  *v5 = v16;
  v23(v5, v8, v2);
  v17 = v16;
  v8 = _dispatchPreconditionTest(_:)();
  v24(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = 0xD00000000000001ELL;
    *(v18 + 16) = 0x800000000003E250;
    swift_willThrow();
    v19 = *(*(v11 + 16) + 32);
    *v5 = v19;
    v23(v5, v8, v2);
    v20 = v19;
    v21 = _dispatchPreconditionTest(_:)();
    v24(v5, v2);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
  }

LABEL_8:
  swift_beginAccess();
  v22 = *(v11 + 24);
  if (v22)
  {
    sqlite3_finalize(v22);
    *(v11 + 24) = 0;
  }
}

Swift::Bool __swiftcall SQLTransaction.rollback()()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 16);
  v6 = *(v5 + 32);
  *v4 = v6;
  v7 = enum case for DispatchPredicate.onQueue(_:);
  v8 = *(v2 + 104);
  v8(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v9 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v10(v4, v1);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  *(v5 + 24) = 0;
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v12 = specialized SQLiteStatement.init(database:query:)(v11, 0xD000000000000014, 0x800000000003E210);

  v13 = *(*(v12 + 16) + 32);
  *v4 = v13;
  v8(v4, v7, v1);

  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v13 & 1) == 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  v15 = *(v12 + 16);

  v16 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v15, v12);

  v17 = v16 == 101;
  v18 = *(*(v12 + 16) + 32);
  *v4 = v18;
  v8(v4, v7, v1);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  v10(v4, v1);
  if ((v18 & 1) == 0)
  {
    goto LABEL_9;
  }

  swift_beginAccess();
  v20 = *(v12 + 24);
  if (v20)
  {
    sqlite3_finalize(v20);
    *(v12 + 24) = 0;
  }

  return v17;
}

uint64_t SQLTransaction.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for SQLTransaction.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SQLTransaction.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SQLiteError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLiteError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SQLTransaction.Kind and conformance SQLTransaction.Kind()
{
  result = lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind;
  if (!lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLTransaction.Kind and conformance SQLTransaction.Kind);
  }

  return result;
}

uint64_t specialized SQLiteStatement.init(database:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v23 = a2;
  v24 = type metadata accessor for String.Encoding();
  v5 = *(v24 - 8);
  __chkstk_darwin(v24);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = v3;
  *(v3 + 24) = 0;
  v13 = (v3 + 24);
  v14 = *(a1 + 32);
  *v11 = v14;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v15 = v14;
  LOBYTE(v14) = _dispatchPreconditionTest(_:)();
  result = (*(v9 + 8))(v11, v8);
  if (v14)
  {
    *(v12 + 16) = a1;
    v26 = v23;
    v27 = v25;

    static String.Encoding.utf8.getter();
    lazy protocol witness table accessor for type String and conformance String();
    v17 = StringProtocol.cString(using:)();
    (*(v5 + 8))(v7, v24);

    swift_beginAccess();
    v18 = *(a1 + 16);
    if (v17)
    {
      v19 = (v17 + 32);
    }

    else
    {
      v19 = 0;
    }

    swift_beginAccess();
    v20 = sqlite3_prepare_v2(v18, v19, -1, v13, 0);
    swift_endAccess();

    if (v20)
    {
      lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
      swift_allocError();
      *v21 = v20;
      *(v21 + 8) = 0;
      *(v21 + 16) = 0;
      swift_willThrow();
    }

    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_step(*(a2 + 24));
  }

  v31[1] = v2;
  v32 = a2;
  *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v13 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3A870;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

  *(v14 + 32) = v17;
  *(v14 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v18 initWithExplanation:v19 target:v13 attributes:isa];

  v35[0] = 0;
  if (([v5 acquireWithError:v35] & 1) == 0)
  {
    v22 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v23 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v25 = Error.publicDescription.getter(v33, v34);
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v23, &dword_0, v28, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v21 = v35[0];
LABEL_8:
  v29 = v32;
  swift_beginAccess();
  v30 = sqlite3_step(*(v29 + 24));
  [v5 invalidate];

  result = v30;
  *(v9 + a1) = 0;
  return result;
}

{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 1);
  __chkstk_darwin(v5);
  v8 = (v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(a1 + 32);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  v11 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    swift_beginAccess();
    return sqlite3_close_v2(*(a2 + 16));
  }

  v31[1] = v2;
  v32 = a2;
  *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v13 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_3A870;
  v15 = String._bridgeToObjectiveC()();
  v16 = String._bridgeToObjectiveC()();
  v17 = [objc_opt_self() attributeWithDomain:v15 name:v16];

  *(v14 + 32) = v17;
  *(v14 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v18 = objc_allocWithZone(RBSAssertion);
  v19 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v18 initWithExplanation:v19 target:v13 attributes:isa];

  v35[0] = 0;
  if (([v5 acquireWithError:v35] & 1) == 0)
  {
    v22 = v35[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v23 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v25 = Error.publicDescription.getter(v33, v34);
      v27 = v26;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v25;
      *(inited + 40) = v27;
      v28 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v23, &dword_0, v28, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
    goto LABEL_7;
  }

  v21 = v35[0];
LABEL_8:
  v29 = v32;
  swift_beginAccess();
  v30 = sqlite3_close_v2(*(v29 + 16));
  [v5 invalidate];

  result = v30;
  *(v9 + a1) = 0;
  return result;
}

{
  return sub_1D8AC(a1, a2);
}

uint64_t specialized static SQLiteStatement.execute(database:query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for SQLiteStatement();
  swift_initStackObject();

  v10 = specialized SQLiteStatement.init(database:query:)(v9, a2, a3);

  v11 = *(*(v10 + 16) + 32);
  *v8 = v11;
  v12 = enum case for DispatchPredicate.onQueue(_:);
  v13 = *(v6 + 104);
  v13(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v14 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  v15 = *(v6 + 8);
  v15(v8, v5);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
  }

  v16 = *(v10 + 16);

  v17 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v16, v10);

  v18 = *(*(v10 + 16) + 32);
  *v8 = v18;
  v13(v8, v12, v5);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  v15(v8, v5);
  if ((v20 & 1) == 0)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v21 = *(v10 + 24);
  if (v21)
  {
    sqlite3_finalize(v21);
    *(v10 + 24) = 0;
  }

  return v17;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 1);
  __chkstk_darwin(v8);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(a1 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  if (*(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) != 1)
  {
    v34 = a4;
    *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
    v32 = *(a1 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_runningboardAssertionExplanation + 8);
    v33 = a2;
    v16 = [objc_opt_self() currentProcess];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_3A870;
    v18 = String._bridgeToObjectiveC()();
    v19 = String._bridgeToObjectiveC()();
    v20 = [objc_opt_self() attributeWithDomain:v18 name:v19];

    *(v17 + 32) = v20;
    *(v17 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
    v21 = objc_allocWithZone(RBSAssertion);
    v22 = String._bridgeToObjectiveC()();
    type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v8 = [v21 initWithExplanation:v22 target:v16 attributes:isa];

    v38[0] = 0;
    if ([v8 acquireWithError:v38])
    {
      v24 = v38[0];
LABEL_8:
      swift_beginAccess();
      v15 = sqlite3_open_v2(v33, (a3 + 16), v34, 0);
      swift_endAccess();
      [v8 invalidate];

      *(a1 + v14) = 0;
      return v15;
    }

    v25 = v38[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_7:
      v35 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v27 = Error.publicDescription.getter(v36, v37);
      v29 = v28;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v27;
      *(inited + 40) = v29;
      v30 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v35, &dword_0, v30, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_0((inited + 32));
      goto LABEL_8;
    }

LABEL_11:
    swift_once();
    goto LABEL_7;
  }

  swift_beginAccess();
  v15 = sqlite3_open_v2(a2, (a3 + 16), a4, 0);
  swift_endAccess();
  return v15;
}

unint64_t lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError()
{
  result = lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError;
  if (!lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SQLiteError and conformance SQLiteError);
  }

  return result;
}

uint64_t type metadata accessor for RBSAttribute(uint64_t a1, unint64_t *a2, void *a3)
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

unint64_t lazy protocol witness table accessor for type NSString and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSString and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSString and conformance NSObject)
  {
    type metadata accessor for RBSAttribute(255, &lazy cache variable for type metadata for NSString, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSString and conformance NSObject);
  }

  return result;
}

uint64_t outlined consume of SQLiteError?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void specialized withVaList<A>(_:_:)(uint64_t a1, id *a2, const char *a3, uint64_t a4, unsigned int a5)
{
  type metadata accessor for __VaListBuilder();
  v6 = swift_allocObject();
  v6[2] = 8;
  v6[3] = 0;
  v7 = v6 + 3;
  v6[4] = 0;
  v6[5] = 0;
  v8 = *(a1 + 16);
  if (!v8)
  {
LABEL_26:
    v26 = __VaListBuilder.va_list()();
    StaticString.description.getter(a3, a4, a5);
    v27 = String._bridgeToObjectiveC()();

    v28 = [objc_opt_self() crl_redactedStringWithFormat:v27 arguments:v26];

    v32 = *a2;
    *a2 = v28;

    return;
  }

  v9 = 0;
  v10 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v10 + 40 * v9), *(v10 + 40 * v9 + 24));
    v11 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v12 = *v7;
    v13 = *(v11 + 16);
    v14 = __OFADD__(*v7, v13);
    v15 = *v7 + v13;
    if (v14)
    {
      break;
    }

    v16 = v6[4];
    if (v16 >= v15)
    {
      goto LABEL_18;
    }

    if (v16 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v17 = v6[5];
    if (2 * v16 > v15)
    {
      v15 = 2 * v16;
    }

    v6[4] = v15;
    if ((v15 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v18 = v11;
    v19 = swift_slowAlloc();
    v20 = v19;
    v6[5] = v19;
    if (v17)
    {
      if (v19 != v17 || v19 >= &v17[8 * v12])
      {
        memmove(v19, v17, 8 * v12);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      v11 = v18;
LABEL_18:
      v20 = v6[5];
      if (!v20)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    v11 = v18;
    if (!v20)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v22 = *(v11 + 16);
    if (v22)
    {
      v23 = (v11 + 32);
      v24 = *v7;
      while (1)
      {
        v25 = *v23++;
        *&v20[8 * v24] = v25;
        v24 = *v7 + 1;
        if (__OFADD__(*v7, 1))
        {
          break;
        }

        *v7 = v24;
        if (!--v22)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v9 == v8)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for __VaListBuilder();
  v3 = swift_allocObject();
  v3[2] = 8;
  v3[3] = 0;
  v4 = v3 + 3;
  v3[4] = 0;
  v3[5] = 0;
  v5 = *(a1 + 16);
  if (!v5)
  {
LABEL_26:
    v23 = __VaListBuilder.va_list()();
    CRLSetCrashReporterInfov(a2, v23);
  }

  v6 = 0;
  v7 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v7 + 40 * v6), *(v7 + 40 * v6 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v9 = *v4;
    v10 = *(result + 16);
    v11 = __OFADD__(*v4, v10);
    v12 = *v4 + v10;
    if (v11)
    {
      break;
    }

    v13 = v3[4];
    if (v13 >= v12)
    {
      goto LABEL_18;
    }

    if (v13 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v14 = v3[5];
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    v3[4] = v12;
    if ((v12 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v15 = result;
    v16 = swift_slowAlloc();
    v17 = v16;
    v3[5] = v16;
    if (v14)
    {
      if (v16 != v14 || v16 >= &v14[8 * v9])
      {
        memmove(v16, v14, 8 * v9);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v15;
LABEL_18:
      v17 = v3[5];
      if (!v17)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v15;
    if (!v17)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v19 = *(result + 16);
    if (v19)
    {
      v20 = (result + 32);
      v21 = *v4;
      while (1)
      {
        v22 = *v20++;
        *&v17[8 * v21] = v22;
        v21 = *v4 + 1;
        if (__OFADD__(*v4, 1))
        {
          break;
        }

        *v4 = v21;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v6 == v5)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(void (*a1)(void *__return_ptr, id), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v5 + 32);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  v15 = (*(v9 + 8))(v11, v8);
  if ((v14 & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (*(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) == 1)
  {
    a1(v41, v15);
    if (v3)
    {
      return v16 & 1;
    }

    goto LABEL_13;
  }

  v36 = a2;
  v37 = a1;
  v35 = OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion;
  *(v5 + OBJC_IVAR____TtC22FreeformDataclassOwner14SQLiteDatabase_hasRBSAssertion) = 1;
  v17 = [objc_opt_self() currentProcess];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_3A870;
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [objc_opt_self() attributeWithDomain:v19 name:v20];

  *(v18 + 32) = v21;
  *(v18 + 40) = [objc_opt_self() attributeWithCompletionPolicy:1];
  v22 = objc_allocWithZone(RBSAssertion);
  v23 = String._bridgeToObjectiveC()();
  type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = [v22 initWithExplanation:v23 target:v17 attributes:isa];

  v40 = 0;
  if (([v11 acquireWithError:&v40] & 1) == 0)
  {
    v26 = v40;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for crlDefault == -1)
    {
LABEL_8:
      v27 = static OS_os_log.crlDefault;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_3A860;
      swift_getErrorValue();
      v29 = Error.publicDescription.getter(v38, v39);
      v31 = v30;
      *(inited + 56) = &type metadata for String;
      *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(inited + 32) = v29;
      *(inited + 40) = v31;
      v32 = static os_log_type_t.error.getter();
      _CRLLog(_:dso:type:format:_:)(v27, &dword_0, v32, "Failed to acquire RBS assertion to perform database operation. Still performing the operation. Error: %{public}@", 112, 2, inited);

      swift_setDeallocating();
      v25 = __swift_destroy_boxed_opaque_existential_0((inited + 32));
      v4 = 0;
      goto LABEL_9;
    }

LABEL_16:
    swift_once();
    goto LABEL_8;
  }

  v25 = v40;
LABEL_9:
  v37(v41, v25);
  if (v4)
  {
    [v11 invalidate];

    v16 = v35;
    *(v5 + v35) = 0;
    return v16 & 1;
  }

  [v11 invalidate];

  *(v5 + v35) = 0;
LABEL_13:
  v16 = v41[0];
  return v16 & 1;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

id CRLBoardDataStore.assetFileManager.getter()
{
  v1 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManagerLock];
  os_unfair_lock_lock(*(v1 + 16));
  v2 = OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager;
  v3 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore__assetFileManager];
  }

  else
  {
    v5 = objc_allocWithZone(type metadata accessor for CRLAssetFileManager(0));
    v6 = v0;
    v7 = v0;
    v8 = specialized CRLAssetFileManager.init(store:)(v6);

    v9 = *&v0[v2];
    *&v7[v2] = v8;
    v4 = v8;

    v3 = 0;
  }

  v10 = *(v1 + 16);
  v11 = v3;
  os_unfair_lock_unlock(v10);
  return v4;
}

uint64_t CRLBoardDataStore._openDatabase(isReadOnlyMode:)(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v6 = v7;
  v8 = enum case for DispatchPredicate.onQueue(_:);
  v60 = *(v4 + 104);
  v60(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v4 + 8);
  v10(v6, v3);
  if (v7)
  {
    if (one-time initialization token for boardStore == -1)
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
  v11 = static OS_os_log.boardStore;
  v12 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v11, &dword_0, v12, "Opening the board database", 26, 2, &_swiftEmptyArrayStorage);
  v58 = v11;
  if (a1)
  {
    v13 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_readQueue);
    *v6 = v13;
    v14 = v60;
    v60(v6, v8, v3);
    v15 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    result = (v10)(v6, v3);
    if (v13)
    {
      v17 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
      v18 = *(v17 + 32);
      *v6 = v18;
      LODWORD(v57) = v8;
      v14(v6, v8, v3);
      v19 = v18;
      LOBYTE(v18) = _dispatchPreconditionTest(_:)();
      result = (v10)(v6, v3);
      if (v18)
      {
        v56[1] = v4 + 104;
        URL.absoluteString.getter();
        v20 = String._bridgeToObjectiveC()();

        v21 = [v20 fileSystemRepresentation];
        v22 = v20;

        v24 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v23, v21, v17, 3178497);

        if (v24)
        {
          goto LABEL_10;
        }

        v51 = *(v17 + 32);
        *v6 = v51;
        v52 = v60;
        v60(v6, v57, v3);
        v53 = v51;
        LOBYTE(v51) = _dispatchPreconditionTest(_:)();
        result = (v10)(v6, v3);
        if (v51)
        {
          specialized static SQLiteStatement.execute(database:query:)(v17, 0xD00000000000001ALL, 0x800000000003EB00);
          v54 = *(v17 + 32);
          *v6 = v54;
          v52(v6, v57, v3);
          v55 = v54;
          LOBYTE(v54) = _dispatchPreconditionTest(_:)();
          result = (v10)(v6, v3);
          if (v54)
          {
            specialized static SQLiteStatement.execute(database:query:)(v17, 0xD000000000000019, 0x800000000003EB20);
            return SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(5000);
          }

          goto LABEL_29;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v17 = *(v1 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_database);
  v25 = *(v17 + 32);
  *v6 = v25;
  v60(v6, v8, v3);
  v26 = v25;
  LOBYTE(v25) = _dispatchPreconditionTest(_:)();
  result = (v10)(v6, v3);
  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }

  v27 = v10;
  v57 = v1;
  URL.absoluteString.getter();
  v28 = String._bridgeToObjectiveC()();

  v29 = [v28 fileSystemRepresentation];
  v30 = v28;

  v32 = v29;
  v33 = v59;
  v24 = specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v31, v32, v17, 3178502);

  if (v24)
  {
LABEL_10:

    specialized SQLiteDatabase.performWithRunningBoardAssertion<A>(_:)(v34, v17);

    swift_beginAccess();
    *(v17 + 16) = 0;
    lazy protocol witness table accessor for type SQLiteError and conformance SQLiteError();
    swift_allocError();
    *v35 = v24;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
    swift_willThrow();
    v36 = v58;
LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A860;
    swift_getErrorValue();
    v38 = Error.localizedDescription.getter();
    v40 = v39;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(inited + 32) = v38;
    *(inited + 40) = v40;
    v41 = static os_log_type_t.error.getter();
    _CRLLog(_:dso:type:format:_:)(v36, &dword_0, v41, "Opening the board database failed with error: %@", 48, 2, inited);
    swift_setDeallocating();
    __swift_destroy_boxed_opaque_existential_0((inited + 32));
    return swift_willThrow();
  }

  v59 = v33;
  v42 = *(v17 + 32);
  *v6 = v42;
  v43 = v60;
  v60(v6, v8, v3);
  v44 = v42;
  LOBYTE(v42) = _dispatchPreconditionTest(_:)();
  result = v27(v6, v3);
  if ((v42 & 1) == 0)
  {
    goto LABEL_25;
  }

  specialized static SQLiteStatement.execute(database:query:)(v17, 0xD00000000000001CLL, 0x800000000003EAE0);
  SQLiteDatabase.enableIncrementalAutoVacuum()();
  v45 = *(v17 + 32);
  *v6 = v45;
  v43(v6, v8, v3);
  v46 = v45;
  LOBYTE(v45) = _dispatchPreconditionTest(_:)();
  result = v27(v6, v3);
  if ((v45 & 1) == 0)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  specialized static SQLiteStatement.execute(database:query:)(v17, 0xD00000000000001ALL, 0x800000000003EB00);
  v47 = *(v17 + 32);
  *v6 = v47;
  v43(v6, v8, v3);
  v48 = v47;
  LOBYTE(v47) = _dispatchPreconditionTest(_:)();
  result = v27(v6, v3);
  if ((v47 & 1) == 0)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    return result;
  }

  specialized static SQLiteStatement.execute(database:query:)(v17, 0xD000000000000019, 0x800000000003EB20);
  SQLiteDatabase.setBusyTimeout(timeoutInMilliseconds:)(5000);
  v49 = static os_log_type_t.info.getter();
  v36 = v58;
  _CRLLog(_:dso:type:format:_:)(v58, &dword_0, v49, "Checking for schema version", 27, 2, &_swiftEmptyArrayStorage);
  v50 = v59;
  result = CRLBoardDataStore._performSchemaMigrationIfNeeded()();
  if (v50)
  {
    goto LABEL_11;
  }

  return result;
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSError?) -> ()(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = _convertErrorToNSError(_:)();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  CRLBoardDataStore.openDatabase(completion:)(partial apply for closure #1 in closure #1 in CRLBoardDataStore.openDatabase(), v7, &unk_4E5B0, partial apply for closure #1 in CRLBoardDataStore.openDatabase(completion:), &block_descriptor_63);
}

uint64_t closure #1 in closure #1 in CRLBoardDataStore.openDatabase()(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5Error_pGMd, &_sScCyyts5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t @objc closure #1 in CRLBoardDataStore.openDatabase()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.openDatabase(), 0, 0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.openDatabase()()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in CRLBoardDataStore.openDatabase();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = @objc closure #1 in CRLBoardDataStore.openDatabase();
  }

  else
  {

    v2 = @objc closure #1 in CRLBoardDataStore.openDatabase();
  }

  return _swift_task_switch(v2, 0, 0);
}

{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 24);

  v2 = _convertErrorToNSError(_:)();

  (*(v1 + 16))(v1, v2);

  _Block_release(*(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t CRLBoardDataStore.openDatabase(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v13 = *(v21 - 8);
  __chkstk_darwin(v21);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *&v5[OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_writeQueue];
  v16 = swift_allocObject();
  v16[2] = v5;
  v16[3] = a1;
  v16[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = v20[0];
  v17 = _Block_copy(aBlock);
  v18 = v5;

  static DispatchQoS.unspecified.getter();
  v22 = &_swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [CRLBoardDataStore.Table] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v10 + 8))(v12, v9);
  (*(v13 + 8))(v15, v21);
}

uint64_t closure #1 in CRLBoardDataStore.closeDatabase()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  CRLBoardDataStore.openDatabase(completion:)(partial apply for closure #1 in closure #1 in CRLBoardDataStore.closeDatabase(), v7, &unk_4E498, partial apply for closure #1 in CRLBoardDataStore.closeDatabase(completion:), &block_descriptor_0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.closeDatabase()(const void *a1, void *a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = _Block_copy(a1);
  v4 = a2;

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.closeDatabase(), 0, 0);
}

uint64_t @objc closure #1 in CRLBoardDataStore.closeDatabase()()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = @objc closure #1 in CRLBoardDataStore.closeDatabase();

  return withCheckedContinuation<A>(isolation:function:_:)();
}

{

  return _swift_task_switch(@objc closure #1 in CRLBoardDataStore.closeDatabase(), 0, 0);
}

{
  v1 = *(v0 + 24);

  v1[2](v1);
  _Block_release(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t CRLBoardDataStore._performSchemaMigrationIfNeeded()()
{
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v193 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_queue);
  *v7 = v8;
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  v11 = (*(v5 + 8))(v7, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v18 = specialized CRLStore._schemaVersion()();
  if (v1)
  {
    v199 = v1;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (!swift_dynamicCast())
    {
    }

    goto LABEL_110;
  }

  v21 = &CRLErrorCat;
  v3 = &CRLErrorCat;
  v22 = vdup_n_s16(0);
  v23 = &dword_4DC99;
  v24 = -8;
  do
  {
    v25 = *v23++;
    v19.i32[0] = v25;
    v19 = vmovl_u8(v19).u64[0];
    v22 = vmax_u16((*&v22 & 0xFF00FF00FF00FFLL), v19);
    v24 += 4;
  }

  while (v24);
  v26 = vmaxv_u16(v22);
  v27 = 1;
  v28 = &byte_4DCA1;
  do
  {
    v30 = *v28++;
    v29 = v30;
    if (v26 <= v30)
    {
      v26 = v29;
    }

    --v27;
  }

  while (v27);
  if (v26 == 10)
  {
    __break(1u);
LABEL_110:
    v114 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_3A290;
    *(inited + 32) = v114;
    v196 = inited + 32;
    v63 = &type metadata for Int;
    v66 = &protocol witness table for Int;
    *(inited + 56) = &type metadata for Int;
    *(inited + 64) = &protocol witness table for Int;
    v70 = 10;
    v0 = inited;
    LODWORD(v58) = 0;
    v32 = 9;
    v67 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter;
    goto LABEL_112;
  }

  if (v18 != v26)
  {
    if (v18 > 4u)
    {
      if (v18 > 6u)
      {
        if (v18 != 7)
        {
          if (v18 != 8)
          {
LABEL_38:
            if (one-time initialization token for boardStore != -1)
            {
              swift_once();
            }

            v196 = static OS_os_log.boardStore;
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
            v65 = swift_initStackObject();
            *(v65 + 16) = xmmword_3A860;
            v63 = v21[401];
            if (!v63)
            {
              goto LABEL_114;
            }

            v66 = 0;
            v70 = v63 - 1;
            if (v63 == 1)
            {
LABEL_66:
              v63 = v66;
              if (v66 != 10)
              {
                v195 = v64;
                v83 = v21;
                v7 = &type metadata for Int;
                v2 = &protocol witness table for Int;
                *(v65 + 56) = &type metadata for Int;
                *(v65 + 64) = &protocol witness table for Int;
                *(v65 + 32) = v66;
                v84 = (v65 + 32);
                v85 = v65;
                v86 = static os_log_type_t.default.getter();
                _CRLLog(_:dso:type:format:_:)(v196, &dword_0, v86, "Done migrating database schema, on latest version %{public}d", 60, 2, v85);
                swift_setDeallocating();
                __swift_destroy_boxed_opaque_existential_0(v84);
                v10 = specialized CRLStore._schemaVersion()();
                v11 = swift_initStackObject();
                *(v11 + 16) = xmmword_3A290;
                *(v11 + 32) = v10;
                v0 = v11 + 32;
                *(v11 + 56) = &type metadata for Int;
                *(v11 + 64) = &protocol witness table for Int;
                v12 = v83[401];
                if (!v12)
                {
                  goto LABEL_155;
                }

                v13 = 0;
                v14 = v12 - 1;
                if (v12 == 1)
                {
                  *(v11 + 96) = &type metadata for Int;
                  *(v11 + 104) = &protocol witness table for Int;
                  *(v11 + 72) = 0;
LABEL_107:
                  if (v10 != v13)
                  {
                    goto LABEL_156;
                  }

                  swift_setDeallocating();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
                  return swift_arrayDestroy();
                }

                if (v12 < 5)
                {
                  v87 = 1;
                  LOBYTE(v15) = 0;
                  goto LABEL_84;
                }

                if (v12 < 0x21)
                {
                  v16 = 0;
                  v15 = 0;
LABEL_78:
                  v92 = vdup_n_s16(v15);
                  v87 = v14 & 0xFFFFFFFFFFFFFFFCLL | 1;
                  v93 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v16 + 33);
                  v94 = v16 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
                  do
                  {
                    v95 = *v93++;
                    v17.i32[0] = v95;
                    v17.i64[0] = vmovl_u8(*v17.i8).u64[0];
                    v92 = vmax_u16((*&v92 & 0xFF00FF00FF00FFLL), *v17.i8);
                    v94 += 4;
                  }

                  while (v94);
                  LOBYTE(v15) = vmaxv_u16(v92);
                  if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_84;
                }

                v16 = v14 & 0xFFFFFFFFFFFFFFE0;
                v88 = (&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1);
                v89 = vdupq_n_s8(0);
                v90 = v14 & 0xFFFFFFFFFFFFFFE0;
                v17 = v89;
                do
                {
                  v89 = vmaxq_u8(v89, v88[-1]);
                  v17 = vmaxq_u8(v17, *v88);
                  v88 += 2;
                  v90 -= 32;
                }

                while (v90);
                v91 = vmaxq_u8(v89, v17);
                v91.i8[0] = vmaxvq_u8(v91);
                v15 = v91.i32[0];
                if (v14 == v16)
                {
                  goto LABEL_88;
                }

                if ((v14 & 0x1C) != 0)
                {
                  goto LABEL_78;
                }

LABEL_83:
                v87 = v16 | 1;
LABEL_84:
                v96 = v12 - v87;
                v97 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v87 + 32;
                do
                {
                  v99 = *v97++;
                  v98 = v99;
                  if (v15 <= v99)
                  {
                    LOBYTE(v15) = v98;
                  }

                  --v96;
                }

                while (v96);
LABEL_88:
                if (v15 == 10)
                {
                  goto LABEL_155;
                }

                *(v11 + 96) = v7;
                *(v11 + 104) = v2;
                *(v11 + 72) = v15;
                if (v12 < 5)
                {
                  v100 = 1;
                  goto LABEL_102;
                }

                if (v12 >= 0x21)
                {
                  v101 = v14 & 0xFFFFFFFFFFFFFFE0;
                  v102 = (&outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1);
                  v103 = vdupq_n_s8(v13);
                  v104 = v14 & 0xFFFFFFFFFFFFFFE0;
                  v17 = v103;
                  do
                  {
                    v103 = vmaxq_u8(v103, v102[-1]);
                    v17 = vmaxq_u8(v17, *v102);
                    v102 += 2;
                    v104 -= 32;
                  }

                  while (v104);
                  v105 = vmaxq_u8(v103, v17);
                  v105.i8[0] = vmaxvq_u8(v105);
                  v13 = v105.i32[0];
                  if (v14 == v101)
                  {
                    goto LABEL_106;
                  }

                  if ((v14 & 0x1C) == 0)
                  {
                    v100 = v101 | 1;
LABEL_102:
                    v110 = v12 - v100;
                    v111 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v100 + 32;
                    do
                    {
                      v113 = *v111++;
                      v112 = v113;
                      if (v13 <= v113)
                      {
                        LOBYTE(v13) = v112;
                      }

                      --v110;
                    }

                    while (v110);
LABEL_106:
                    if (v13 == 10)
                    {
                      goto LABEL_183;
                    }

                    goto LABEL_107;
                  }
                }

                else
                {
                  v101 = 0;
                }

                v106 = vdup_n_s16(v13);
                v100 = v14 & 0xFFFFFFFFFFFFFFFCLL | 1;
                v107 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v101 + 33);
                v108 = v101 - (v14 & 0xFFFFFFFFFFFFFFFCLL);
                do
                {
                  v109 = *v107++;
                  v17.i32[0] = v109;
                  v17.i64[0] = vmovl_u8(*v17.i8).u64[0];
                  v106 = vmax_u16((*&v106 & 0xFF00FF00FF00FFLL), *v17.i8);
                  v108 += 4;
                }

                while (v108);
                LOBYTE(v13) = vmaxv_u16(v106);
                if (v14 == (v14 & 0xFFFFFFFFFFFFFFFCLL))
                {
                  goto LABEL_106;
                }

                goto LABEL_102;
              }

LABEL_114:
              __break(1u);
              goto LABEL_115;
            }

            if (v63 < 5)
            {
              v67 = 1;
              goto LABEL_61;
            }

            if (v63 >= 0x21)
            {
              v58 = v70 & 0xFFFFFFFFFFFFFFE0;
              v67 = &outlined read-only object #0 of static CRLBoardDataStore.Table.allCases.getter + 1;
              v75 = vdupq_n_s8(0);
              v76 = v70 & 0xFFFFFFFFFFFFFFE0;
              v68 = v75;
              do
              {
                v75 = vmaxq_u8(v75, *(v67 - 16));
                v68 = vmaxq_u8(v68, *v67);
                v67 += 32;
                v76 -= 32;
              }

              while (v76);
              v77 = vmaxq_u8(v75, v68);
              v77.i8[0] = vmaxvq_u8(v77);
              v66 = v77.u32[0];
              if (v70 == v58)
              {
                goto LABEL_66;
              }

              if ((v70 & 0x1C) == 0)
              {
                v67 = v58 | 1;
LABEL_61:
                v81 = v63 - v67;
                v70 = &outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v67 + 32;
                do
                {
                  v82 = *v70++;
                  v67 = v82;
                  if (v66 <= v82)
                  {
                    v66 = v67;
                  }

                  else
                  {
                    v66 = v66;
                  }

                  --v81;
                }

                while (v81);
                goto LABEL_66;
              }
            }

            else
            {
              v58 = 0;
            }

            v32 = v70 & 0xFFFFFFFFFFFFFFFCLL;
            v78 = vdup_n_s16(v66);
            v67 = v70 & 0xFFFFFFFFFFFFFFFCLL | 1;
            v79 = (&outlined read-only object #0 of static CRLBoardDataStore.SchemaVersion.allCases.getter + v58 + 33);
            v58 -= v70 & 0xFFFFFFFFFFFFFFFCLL;
            do
            {
              v80 = *v79++;
              v68.i32[0] = v80;
              v68.i64[0] = vmovl_u8(*v68.i8).u64[0];
              v78 = vmax_u16((*&v78 & 0xFF00FF00FF00FFLL), *v68.i8);
              v58 += 4;
            }

            while (v58);
            v78.i16[0] = vmaxv_u16(v78);
            v66 = v78.u32[0];
            if (v70 == v32)
            {
              goto LABEL_66;
            }

            goto LABEL_61;
          }

LABEL_35:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
          v54 = swift_initStackObject();
          *(v54 + 16) = xmmword_3A890;
          v55 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery + 8);
          *(v54 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemSubItemTypeMigrationQuery);
          *(v54 + 40) = v55;
          v56 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery + 8);
          *(v54 + 48) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCapsuleDataMigrationQuery);
          *(v54 + 56) = v56;
          v57 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery + 8);
          *(v54 + 64) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_addBoardItemCKMergeableRecordValueMigrationQuery);
          *(v54 + 72) = v57;

          specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(9, &dword_8, v54);
          swift_setDeallocating();
          swift_arrayDestroy();
          goto LABEL_38;
        }

LABEL_34:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v50 = swift_initStackObject();
        *(v50 + 16) = xmmword_3A890;
        v51 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery + 8);
        *(v50 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardMigrationQuery);
        *(v50 + 40) = v51;
        v52 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery + 8);
        *(v50 + 48) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionBoardItemMigrationQuery);
        *(v50 + 56) = v52;
        v53 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery + 8);
        *(v50 + 64) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastCloudKitFetchVersionFreehandItemMigrationQuery);
        *(v50 + 72) = v53;

        specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(8, &dword_4 + 3, v50);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_35;
      }

      if (v18 != 5)
      {
LABEL_33:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
        v48 = swift_initStackObject();
        *(v48 + 16) = xmmword_3A860;
        v49 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery + 8);
        *(v48 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_lastUpgradedVersionPerBoardMigrationQuery);
        *(v48 + 40) = v49;

        specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(7, &dword_4 + 2, v48);
        swift_setDeallocating();
        outlined destroy of String(v48 + 32);
        goto LABEL_34;
      }

LABEL_32:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_3A290;
      v45 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery + 8);
      *(v44 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersTableCreationSQLQuery);
      v46 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery);
      v47 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_foldersMetadataTableCreationSQLQuery + 8);
      *(v44 + 40) = v45;
      *(v44 + 48) = v46;
      *(v44 + 56) = v47;

      specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(6, &dword_4 + 1, v44);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      goto LABEL_33;
    }

    if (v18 <= 1u)
    {
      if (!v18)
      {
        CRLBoardDataStore._createDatabaseSchema()();
      }

      CRLBoardDataStore._migrateToMinRequiredVersionForGoodEnoughFidelitySchema()();
    }

    else if (v18 != 2)
    {
      if (v18 != 3)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    CRLBoardDataStore._migrateToMinRequiredVersionForFullFidelitySchema()();
LABEL_29:
    CRLBoardDataStore._migrateToOptimizedSubtreeQuerySchema()();
LABEL_30:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v34 = swift_allocObject();
    v35 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery + 8);
    *(v34 + 32) = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheTableCreationSQLQuery);
    *(v34 + 16) = xmmword_3AA20;
    v36 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery);
    v37 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckZoneCacheTableCreationSQLQuery + 8);
    *(v34 + 40) = v35;
    *(v34 + 48) = v36;
    v38 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery);
    v39 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheTableCreationSQLQuery + 8);
    *(v34 + 56) = v37;
    *(v34 + 64) = v38;
    v40 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery);
    v41 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_ckRecordCacheZoneIdIndexSQLQuery + 8);
    *(v34 + 72) = v39;
    *(v34 + 80) = v40;
    v42 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery);
    v43 = *(v0 + OBJC_IVAR____TtC22FreeformDataclassOwner17CRLBoardDataStore_purgedCKRecordCacheZoneIdIndexSQLQuery + 8);
    *(v34 + 88) = v41;
    *(v34 + 96) = v42;
    *(v34 + 104) = v43;

    specialized CRLStore._migrate(toNewSchemaVersion:fromOldSchemaVersion:viaQueries:)(5, &dword_4, v34);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v21 = &CRLErrorCat;
    goto LABEL_32;
  }

  if (one-time initialization token for boardStore != -1)
  {
    swift_once();
  }

  v0 = static OS_os_log.boardStore;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_3A860;
  LODWORD(v58) = 8;
  v59 = vdup_n_s16(0);
  v60 = &dword_4DC99;
  v61 = -8;
  do
  {
    v62 = *v60++;
    v33.i32[0] = v62;
    v33.i64[0] = vmovl_u8(*v33.i8).u64[0];
    v59 = vmax_u16((*&v59 & 0xFF00FF00FF00FFLL), *v33.i8);
    v61 += 4;
  }

  while (v61);
  LOBYTE(v63) = vmaxv_u16(v59);
  v69 = 1;
  v70 = &byte_4DCA1;
  do
  {
    v71 = *v70++;
    v67 = v71;
    if (v63 <= v71)
    {
      v63 = v67;
    }

    else
    {
      v63 = v63;
    }

    --v69;
  }

  while (v69);
  v66 = v63;
  if (v63 == 10)
  {
    __break(1u);
LABEL_112:
    if (v70 < 0x21)
    {
      v116 = 0;
      goto LABEL_120;
    }

LABEL_115:
    v116 = v32 & 0xFFFFFFFFFFFFFFE0;
    v117 = (v67 + 49);
    v118 = vdupq_n_s8(v58);
    v119 = v32 & 0xFFFFFFFFFFFFFFE0;
    v33 = v118;
    do
    {
      v118 = vmaxq_u8(v118, v117[-1]);
      v33 = vmaxq_u8(v33, *v117);
      v117 += 2;
      v119 -= 32;
    }

    while (v119);
    v120 = vmaxq_u8(v118, v33);
    v120.i8[0] = vmaxvq_u8(v120);
    LODWORD(v58) = v120.i32[0];
    if (v32 == v116)
    {
      goto LABEL_127;
    }

    if ((v32 & 0x1C) == 0)
    {
      v121 = v116 | 1;
LABEL_123:
      v126 = v70 - v121;
      v127 = (v121 + v67 + 32);
      do
      {
        v129 = *v127++;
        v128 = v129;
        if (v58 <= v129)
        {
          LOBYTE(v58) = v128;
        }

        --v126;
      }

      while (v126);
LABEL_127:
      if (v58 == 10)
      {
        __break(1u);
      }

      *(v0 + 96) = v63;
      *(v0 + 104) = v66;
      *(v0 + 72) = v58;
      v195 = objc_opt_self();
      LODWORD(v7) = [v195 _atomicIncrementAssertCount];
      v197 = [objc_allocWithZone(NSString) init];
      specialized withVaList<A>(_:_:)(v0, &v197, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2u);
      StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
      v3 = String._bridgeToObjectiveC()();

      StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
      v130 = String._bridgeToObjectiveC()();

      v131 = [v130 lastPathComponent];

      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v132;

      if (one-time initialization token for crlAssert != -1)
      {
        goto LABEL_189;
      }

      while (1)
      {
        v133 = static OS_os_log.crlAssert;
        v134 = swift_initStackObject();
        *(v134 + 16) = xmmword_3AA20;
        *(v134 + 56) = &type metadata for Int32;
        *(v134 + 64) = &protocol witness table for Int32;
        *(v134 + 32) = v7;
        v135 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
        *(v134 + 96) = v135;
        v136 = lazy protocol witness table accessor for type NSString and conformance NSObject();
        *(v134 + 104) = v136;
        *(v134 + 72) = v3;
        *(v134 + 136) = &type metadata for String;
        v137 = lazy protocol witness table accessor for type String and conformance String();
        *(v134 + 112) = v2;
        *(v134 + 120) = v10;
        *(v134 + 176) = &type metadata for UInt;
        *(v134 + 184) = &protocol witness table for UInt;
        *(v134 + 144) = v137;
        *(v134 + 152) = 403;
        v138 = v197;
        *(v134 + 216) = v135;
        *(v134 + 224) = v136;
        *(v134 + 192) = v138;
        v139 = v3;
        v140 = v138;
        v141 = static os_log_type_t.error.getter();
        v10 = &dword_0;
        _CRLLog(_:dso:type:format:_:)(v133, &dword_0, v141, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v134);

        v142 = static os_log_type_t.error.getter();
        _CRLLog(_:dso:type:format:_:)(v133, &dword_0, v142, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2, v0);

        specialized withVaList<A>(_:_:)(v0, "Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.");
        type metadata accessor for __VaListBuilder();
        v143 = swift_allocObject();
        v143[2] = 8;
        v143[3] = 0;
        v144 = v143 + 3;
        v143[4] = 0;
        v143[5] = 0;
        v2 = *(v0 + 16);
        if (!v2)
        {
LABEL_193:
          v185 = __VaListBuilder.va_list()();
          StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
          v186 = String._bridgeToObjectiveC()();

          StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
          v187 = String._bridgeToObjectiveC()();

          StaticString.description.getter("Encountered an unknown schema version during possible migration, found value %{public}d is greater than latest known value %{public}d. You are probably trying to open a newer database on an older client, but this is not supported.", 230, 2);
          v188 = String._bridgeToObjectiveC()();

          [v195 handleFailureInFunction:v186 file:v187 lineNumber:403 isFatal:1 format:v188 args:v185];

          while (1)
          {
            CRLCrashBreakpoint();
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
LABEL_195:
            v189 = __VaListBuilder.va_list()();
            StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
            v190 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v191 = String._bridgeToObjectiveC()();

            StaticString.description.getter("Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2);
            v192 = String._bridgeToObjectiveC()();

            [v193 handleFailureInFunction:v190 file:v191 lineNumber:445 isFatal:1 format:v192 args:v189];
          }
        }

        v3 = 0;
        while (1)
        {
          v145 = (v196 + 40 * v3);
          v7 = v145[4];
          v0 = __swift_project_boxed_opaque_existential_1(v145, v145[3]);
          v146 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
          v147 = *v144;
          v148 = *(v146 + 16);
          v149 = __OFADD__(*v144, v148);
          v150 = *v144 + v148;
          if (v149)
          {
            goto LABEL_182;
          }

          v7 = v146;
          v0 = v143[4];
          if (v0 >= v150)
          {
            goto LABEL_147;
          }

          if (v0 + 0x4000000000000000 < 0)
          {
            goto LABEL_184;
          }

          v10 = v143[5];
          if (2 * v0 > v150)
          {
            v150 = 2 * v0;
          }

          v143[4] = v150;
          if ((v150 - 0x1000000000000000) >> 61 != 7)
          {
            break;
          }

          v11 = swift_slowAlloc();
          v143[5] = v11;
          if (!v10)
          {
            goto LABEL_148;
          }

          if (v11 != v10 || v11 >= v10 + 8 * v147)
          {
            memmove(v11, v10, 8 * v147);
          }

          v0 = v143;
          __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_147:
          v11 = v143[5];
LABEL_148:
          if (!v11)
          {
            __break(1u);
            goto LABEL_191;
          }

          v152 = v7[2];
          if (v152)
          {
            v153 = v7 + 4;
            v154 = *v144;
            while (1)
            {
              v155 = *v153++;
              *(v11 + 8 * v154) = v155;
              v154 = *v144 + 1;
              if (__OFADD__(*v144, 1))
              {
                break;
              }

              *v144 = v154;
              if (!--v152)
              {
                goto LABEL_132;
              }
            }

            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            v196 = v0;
            v156 = v11;
            v193 = objc_opt_self();
            LODWORD(v0) = [v193 _atomicIncrementAssertCount];
            v199 = [objc_allocWithZone(NSString) init];
            v194 = v156;
            specialized withVaList<A>(_:_:)(v156, &v199, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2u);
            StaticString.description.getter("_performSchemaMigrationIfNeeded()", 33, 2);
            v7 = String._bridgeToObjectiveC()();

            StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardDataStore.swift", 89, 2);
            v157 = String._bridgeToObjectiveC()();

            v158 = [v157 lastPathComponent];

            v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v2 = v159;

            if (one-time initialization token for crlAssert == -1)
            {
LABEL_157:
              v160 = static OS_os_log.crlAssert;
              v161 = swift_initStackObject();
              *(v161 + 16) = xmmword_3AA20;
              *(v161 + 56) = &type metadata for Int32;
              *(v161 + 64) = &protocol witness table for Int32;
              *(v161 + 32) = v0;
              v162 = type metadata accessor for RBSAttribute(0, &lazy cache variable for type metadata for NSString, NSString_ptr);
              *(v161 + 96) = v162;
              v163 = lazy protocol witness table accessor for type NSString and conformance NSObject();
              *(v161 + 104) = v163;
              *(v161 + 72) = v7;
              *(v161 + 136) = &type metadata for String;
              v164 = lazy protocol witness table accessor for type String and conformance String();
              *(v161 + 112) = v144;
              *(v161 + 120) = v2;
              *(v161 + 176) = &type metadata for UInt;
              *(v161 + 184) = &protocol witness table for UInt;
              *(v161 + 144) = v164;
              *(v161 + 152) = 445;
              v165 = v199;
              *(v161 + 216) = v162;
              *(v161 + 224) = v163;
              *(v161 + 192) = v165;
              v166 = v7;
              v167 = v165;
              v168 = static os_log_type_t.error.getter();
              _CRLLog(_:dso:type:format:_:)(v160, &dword_0, v168, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, v161);

              v169 = static os_log_type_t.error.getter();
              v170 = v160;
              v171 = v194;
              _CRLLog(_:dso:type:format:_:)(v170, &dword_0, v169, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d", 118, 2, v194);

              specialized withVaList<A>(_:_:)(v171, "Current schema version %{public}d after all migrations is not the same as the defined latest schema version %{public}d");
              type metadata accessor for __VaListBuilder();
              v172 = swift_allocObject();
              v172[2] = 8;
              v172[3] = 0;
              v173 = v172 + 3;
              v172[4] = 0;
              v172[5] = 0;
              v2 = *(v171 + 16);
              if (!v2)
              {
                goto LABEL_195;
              }

              v3 = 0;
              while (1)
              {
                v174 = (v196 + 40 * v3);
                v7 = v174[3];
                v10 = v174[4];
                v0 = __swift_project_boxed_opaque_existential_1(v174, v7);
                v175 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
                v176 = *v173;
                v177 = *(v175 + 16);
                v149 = __OFADD__(*v173, v177);
                v178 = *v173 + v177;
                if (v149)
                {
                  goto LABEL_186;
                }

                v7 = v175;
                v0 = v172[4];
                if (v0 >= v178)
                {
                  goto LABEL_174;
                }

                if (v0 + 0x4000000000000000 < 0)
                {
                  goto LABEL_187;
                }

                v10 = v172[5];
                if (2 * v0 > v178)
                {
                  v178 = 2 * v0;
                }

                v172[4] = v178;
                if ((v178 - 0x1000000000000000) >> 61 != 7)
                {
                  goto LABEL_188;
                }

                v179 = swift_slowAlloc();
                v172[5] = v179;
                if (v10)
                {
                  break;
                }

LABEL_175:
                if (!v179)
                {
                  __break(1u);
                  goto LABEL_193;
                }

                v181 = v7[2];
                if (v181)
                {
                  v182 = v7 + 4;
                  v183 = *v173;
                  while (1)
                  {
                    v184 = *v182++;
                    v179[v183] = v184;
                    v183 = *v173 + 1;
                    if (__OFADD__(*v173, 1))
                    {
                      break;
                    }

                    *v173 = v183;
                    if (!--v181)
                    {
                      goto LABEL_159;
                    }
                  }

                  __break(1u);
LABEL_182:
                  __break(1u);
LABEL_183:
                  __break(1u);
LABEL_184:
                  __break(1u);
                  goto LABEL_185;
                }

LABEL_159:

                v3 = (v3 + 1);
                if (v3 == v2)
                {
                  goto LABEL_195;
                }
              }

              if (v179 != v10 || v179 >= v10 + 8 * v176)
              {
                memmove(v179, v10, 8 * v176);
              }

              v0 = v172;
              __VaListBuilder.deallocStorage(wordCount:storage:)();
LABEL_174:
              v179 = v172[5];
              goto LABEL_175;
            }

LABEL_191:
            swift_once();
            goto LABEL_157;
          }

LABEL_132:

          v3 = (v3 + 1);
          if (v3 == v2)
          {
            goto LABEL_193;
          }
        }

LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        swift_once();
      }
    }

LABEL_120:
    v121 = v32 & 0xFFFFFFFFFFFFFFFCLL | 1;
    v122 = vdup_n_s16(v58);
    v123 = (v116 + v67 + 33);
    v124 = v116 - (v32 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      v125 = *v123++;
      v33.i32[0] = v125;
      v33.i64[0] = vmovl_u8(*v33.i8).u64[0];
      v122 = vmax_u16((*&v122 & 0xFF00FF00FF00FFLL), *v33.i8);
      v124 += 4;
    }

    while (v124);
    LOBYTE(v58) = vmaxv_u16(v122);
    if (v32 == (v32 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_127;
    }

    goto LABEL_123;
  }

  *(v31 + 56) = &type metadata for Int;
  *(v31 + 64) = &protocol witness table for Int;
  *(v31 + 32) = v63;
  v72 = (v31 + 32);
  v73 = v31;
  v74 = static os_log_type_t.default.getter();
  _CRLLog(_:dso:type:format:_:)(v0, &dword_0, v74, "No need to migrate database schema, already on latest version %{public}d", 72, 2, v73);
  swift_setDeallocating();
  __swift_destroy_boxed_opaque_existential_0(v72);
  return swift_deallocClassInstance();
}