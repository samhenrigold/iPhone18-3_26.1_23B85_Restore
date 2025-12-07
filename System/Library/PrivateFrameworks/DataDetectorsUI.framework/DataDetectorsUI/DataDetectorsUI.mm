id dd_ensureUrlIsUrl(void *a1)
{
  v1 = a1;
  if (!v1 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CBEBC0] URLWithString:v1];
LABEL_4:
    v3 = v2;

    v4 = v3;

    return v4;
  }

  v4 = 0;

  return v4;
}

uint64_t __dd_transientAttributesSet_block_invoke()
{
  _MergedGlobals_12 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D041D8], @"DDContext", @"DDAttributeBackup", @"DDFoundExistingLink", 0}];

  return MEMORY[0x2821F96F8]();
}

void sub_21AB7361C(_Unwind_Exception *a1, int a2)
{
  if (a2 != 1)
  {
    _Unwind_Resume(a1);
  }

  objc_begin_catch(a1);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [DDOperation main];
  }

  objc_end_catch();
}

uint64_t sub_21AB73B48()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void sub_21AB75470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AB77404(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21AB79CF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB79D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:&a17 objects:va count:{16, a6, a7, a8}];
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, _BYTE *a20)
{

  [(DDActionGroup *)a20 insertActions:a1 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);

  return [v8 countByEnumeratingWithState:va objects:va1 count:16];
}

void *_DDResultIsURL(void *result)
{
  if (result)
  {
    v1 = _DDResultIsURL__sURLTypes;
    if (!_DDResultIsURL__sURLTypes)
    {
      v2 = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D040F8], *MEMORY[0x277D041C8], *MEMORY[0x277D04130], *MEMORY[0x277D04138], *MEMORY[0x277D040F0], *MEMORY[0x277D040C8], 0}];
      v3 = _DDResultIsURL__sURLTypes;
      _DDResultIsURL__sURLTypes = v2;

      v1 = _DDResultIsURL__sURLTypes;
    }

    Type = DDResultGetType();

    return [v1 containsObject:Type];
  }

  return result;
}

id _DDURLFromResult(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = DDResultCopyExtractedURLWithOptions();
    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] URLWithString:v2];

      v4 = v3;
    }

    else
    {

      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __analyticsQueue_block_invoke()
{
  _MergedGlobals_0 = dispatch_queue_create("com.apple.datadetectors.analytics", 0);

  return MEMORY[0x2821F96F8]();
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21AB7FAA8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21AB8069C(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11)
{
  if (a2 == 1)
  {
    objc_begin_catch(exc_buf);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [DDDetectionController _doURLification:];
    }

    objc_end_catch();
    JUMPOUT(0x21AB8041CLL);
  }

  _Block_object_dispose((v11 - 208), 8);
  _Unwind_Resume(exc_buf);
}

void sub_21AB81334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB81FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB84254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void DDPerformWebSearchFromQuery(void *a1)
{
  v1 = a1;
  if (qword_280B12248 != -1)
  {
    DDPerformWebSearchFromQuery_cold_1();
    if (_MergedGlobals_2 == 1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = v1;
    v5 = [MEMORY[0x277CCA8D8] mainBundle];
    v6 = [v5 bundleIdentifier];
    v7 = [v6 isEqualToString:@"com.apple.datadetectors.AddToRecentsService"];

    if (v7)
    {
      NSLog(&cfstr_Addtorecentsse.isa);
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.datadetectors.AddToRecentsService"];
      v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C70950];
      [v8 setRemoteObjectInterface:v9];

      [v8 resume];
      v10 = [v8 remoteObjectProxy];
      [v10 performWebSearchFromQuery:v3];

      [v8 invalidate];
    }

    v11 = v3;
    goto LABEL_9;
  }

  if (_MergedGlobals_2 != 1)
  {
    goto LABEL_5;
  }

LABEL_3:
  v2 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v11 = [v1 stringByTrimmingCharactersInSet:v2];

  v3 = [DDUISearchWebHandler webSearchURLForQueryString:v11];
  v4 = [MEMORY[0x277CC1E80] defaultWorkspace];
  [v4 openURL:v3 configuration:0 completionHandler:0];

LABEL_9:
}

void __dd_canReadDefaultBrowser_block_invoke()
{
  v0 = *MEMORY[0x277CBECE8];
  v1 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v1)
  {
    v2 = v1;
    v3 = SecTaskCopyValueForEntitlement(v1, @"com.apple.security.exception.shared-preference.read-only", 0);
    CFRelease(v2);
    if (v3)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v3))
      {
        v10.length = CFArrayGetCount(v3);
        v10.location = 0;
        if (CFArrayContainsValue(v3, v10, @"com.apple.mobilesafarishared"))
        {
          _MergedGlobals_2 = 1;
        }
      }

      CFRelease(v3);
    }
  }

  if ((_MergedGlobals_2 & 1) == 0)
  {
    v5 = SecTaskCreateFromSelf(v0);
    if (v5)
    {
      v6 = v5;
      v7 = SecTaskCopyValueForEntitlement(v5, @"com.apple.security.exception.shared-preference.read-write", 0);
      CFRelease(v6);
      if (v7)
      {
        v8 = CFArrayGetTypeID();
        if (v8 == CFGetTypeID(v7))
        {
          v11.length = CFArrayGetCount(v7);
          v11.location = 0;
          if (CFArrayContainsValue(v7, v11, @"com.apple.mobilesafarishared"))
          {
            _MergedGlobals_2 = 1;
          }
        }

        CFRelease(v7);
      }
    }
  }
}

void sub_21AB8957C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB89594(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB895AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _displayString(void *a1, void *SubresultWithType, void *a3, void *a4, int a5)
{
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (!SubresultWithType)
  {
    if (v9)
    {
      v14 = DDMapAddressFromURL(v9);
      goto LABEL_23;
    }

    if (v10)
    {
      v15 = DDDefaultAddressForContact(v10);
      v16 = v15;
      if (v15)
      {
        if (a5)
        {
          v17 = [v15 street];
          if (v17)
          {
            v18 = v17;

LABEL_20:
            v14 = [v18 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v18, "length")}];

            goto LABEL_23;
          }
        }

        v18 = [MEMORY[0x277CBDB80] stringFromPostalAddress:v16 style:0];

        if (v18)
        {
          goto LABEL_20;
        }
      }

      else
      {
      }
    }

    else
    {
      v19 = [v11 objectForKeyedSubscript:@"event"];
      v20 = [v12 objectForKeyedSubscript:@"icsEvent"];
      v21 = v19;
      if (v19 || (v21 = v20) != 0)
      {
        v18 = [v21 location];
      }

      else
      {
        v18 = 0;
      }

      if (v18)
      {
        goto LABEL_20;
      }
    }

    v14 = 0;
    goto LABEL_23;
  }

  if (!a5 || (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0)) || (SubresultWithType = DDResultGetSubresultWithType(), DDResultGetMatchedString(), (v14 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v14 = DDMapAddressFromResult(SubresultWithType);
  }

LABEL_23:

  return v14;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

id _ddui_parsec_xpcInterface(int a1)
{
  if (a1)
  {
    v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C709B0];
    v2 = MEMORY[0x277CBEB98];
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v2 setWithObjects:{v3, v4, v5, v6, objc_opt_class(), 0}];
    [v1 setClasses:v7 forSelector:sel_startQueryWithResult_context_ argumentIndex:0 ofReply:0];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    gotLoadHelper_x8__OBJC_CLASS___SFResultSection(v11);
    v12 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];

    v13 = sel_showClientQueryResults_error_;
    v14 = v1;
    v15 = v12;
    v16 = 0;
  }

  else
  {
    v1 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_282C4B330];
    v17 = MEMORY[0x277CBEB98];
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    gotLoadHelper_x8__OBJC_CLASS___SFResultSection(v20);
    v21 = [v17 setWithObjects:{v18, v19, objc_opt_class(), 0}];
    [v1 setClasses:v21 forSelector:sel_performClientTextQueryWithTerm_queryId_sessionId_userAgent_reply_ argumentIndex:0 ofReply:1];
    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];

    v13 = sel_loadReportAnIssueImage_;
    v14 = v1;
    v15 = v12;
    v16 = 1;
  }

  [v14 setClasses:v15 forSelector:v13 argumentIndex:0 ofReply:v16];

  return v1;
}

void DDRecursivelyRemoveResultLinksFromAnchor(void *a1, void *a2, void *a3)
{
  v22 = a1;
  v5 = a2;
  v6 = a3;
  if (!v22)
  {
    goto LABEL_19;
  }

  v7 = [v22 getAttribute:*MEMORY[0x277D04208]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v7 isEqual:@"true"];
    v9 = [v22 childNodes];
    v10 = [v9 length];
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_6:
    v11 = v10;
    v12 = 0;
    do
    {
      v13 = [v9 item:v12];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        DDRecursivelyRemoveResultLinksFromAnchor(v13, v22, v6);
      }

      v12 = (v12 + 1);
    }

    while (v11 != v12);
    goto LABEL_10;
  }

  v8 = 0;
  v9 = [v22 childNodes];
  v10 = [v9 length];
  if (v10)
  {
    goto LABEL_6;
  }

LABEL_10:
  v14 = v8 ^ 1;
  if (!v5)
  {
    v14 = 1;
  }

  if (v14)
  {
    v16 = v9;
  }

  else
  {
    v15 = [v22 childNodes];
    v16 = [v15 copy];

    v17 = [v16 length];
    if (v17)
    {
      v18 = v17;
      do
      {
        v19 = [v16 item:0];
        v20 = [v5 insertBefore:v19 refChild:v22];

        --v18;
      }

      while (v18);
    }

    v21 = [v5 removeChild:v22];
  }

LABEL_19:
}

void sub_21AB8FD34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB8FD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _DDArrayWithList(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v1 length])
  {
    v3 = 0;
    do
    {
      v4 = [v1 item:v3];
      [v2 addObject:v4];

      v3 = (v3 + 1);
    }

    while (v3 < [v1 length]);
  }

  return v2;
}

void _DDRemoveResultLinksFromArrayOfAnchors(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [v9 parentNode];
        v11 = [v9 parentNode];

        if (v11)
        {
          DDRecursivelyRemoveResultLinksFromAnchor(v9, v10, v4);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

id DDLocalizedString(void *a1)
{
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v4 = [v3 localizedStringForKey:v2 value:&stru_282C1E0A8 table:0];

  return v4;
}

id DDLocalizedStringFromTable(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = MEMORY[0x277CCA8D8];
  v7 = a4;
  v8 = a3;
  v9 = a1;
  v10 = [v6 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v11 = [v10 localizedStringForKey:v9 value:v8 table:v7];

  return v11;
}

id DDLocalizedStringWithDefaultValue(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = MEMORY[0x277CCA8D8];
  v6 = a4;
  v7 = a1;
  v8 = [v5 bundleWithIdentifier:@"com.apple.DataDetectorsUI"];
  v9 = [v8 localizedStringForKey:v7 value:v6 table:0];

  return v9;
}

id beginDateAndTimezoneOfEventResultsRespectingSpecificEndDates(void *a1, int a2, void *a3, _BYTE *a4, BOOL *a5, void *a6, void *a7)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v10 = a3;
  v11 = [MEMORY[0x277CBEB18] array];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v41;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v41 == v15)
        {
          v17 = *(*(&v40 + 1) + 8 * i);
          if (DDResultGetCategory() != 4)
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v12);
          v17 = *(*(&v40 + 1) + 8 * i);
          if (DDResultGetCategory() != 4)
          {
            continue;
          }
        }

        [v11 addObject:v17];
      }

      v14 = [v12 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v14);
  }

  v18 = DDResultCreateFromDateTimeResults();
  if (!v18)
  {
    v23 = 0;
    goto LABEL_37;
  }

  v19 = v18;
  v20 = [v10 objectForKey:@"ReferenceDate"];
  v21 = v20;
  v36 = a5;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = [MEMORY[0x277CBEAA8] date];
  }

  v24 = v22;

  v25 = [MEMORY[0x277CBEBB0] defaultTimeZone];
  [v10 objectForKey:@"ReferenceDate"];
  DDResultIsPartialDateRangeOrTimeRange();
  Type = DDResultGetType();
  v27 = *MEMORY[0x277D04198];
  v35 = v10;
  if (CFStringCompare(Type, *MEMORY[0x277D04198], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040A8], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040B0], 0) == kCFCompareEqualTo)
  {
    if (!DDResultCopyExtractedDateFromReferenceDate())
    {
LABEL_27:
      v31 = v24;
LABEL_28:
      v29 = a4;
      if (v36)
      {
        *v36 = CFStringCompare(Type, v27, 0) == kCFCompareEqualTo;
      }

      v28 = a7;
      v30 = a6;
      v24 = v31;
      v10 = v35;
      if (!a6)
      {
        goto LABEL_32;
      }

      goto LABEL_31;
    }

LABEL_25:
    v31 = 0;

    goto LABEL_28;
  }

  v27 = *MEMORY[0x277D04190];
  if (CFStringCompare(Type, *MEMORY[0x277D04190], 0) == kCFCompareEqualTo || CFStringCompare(Type, *MEMORY[0x277D040A0], 0) == kCFCompareEqualTo)
  {
    if (!DDResultCopyExtractedStartDateEndDate())
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v36)
  {
    *v36 = 0;
    v29 = a4;
    v28 = a7;
    v30 = a6;
    if (!a6)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v29 = a4;
    v28 = a7;
    v30 = a6;
    if (!a6)
    {
      goto LABEL_32;
    }
  }

LABEL_31:
  v32 = 0;
  *v30 = 0;
LABEL_32:
  if (v29)
  {
    *v29 = 0;
  }

  CFRelease(v19);
  if (v28)
  {
    v33 = v25;
    *v28 = v25;
  }

  v23 = v24;

LABEL_37:

  return v23;
}

id dd_dueDateAndTimezoneOfEventResults(void *a1, void *a2, _BYTE *a3, void *a4)
{
  v17 = 0;
  v5 = beginDateAndTimezoneOfEventResultsRespectingSpecificEndDates(a1, 0, a2, a3, 0, &v17, a4);
  v6 = v17;
  v7 = objc_alloc(MEMORY[0x277CBEA80]);
  v8 = [MEMORY[0x277CBEA80] currentCalendar];
  v9 = [v8 calendarIdentifier];
  v10 = [v7 initWithCalendarIdentifier:v9];

  if (a4)
  {
    [v10 setTimeZone:*a4];
  }

  v11 = v6;
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CBEA80] currentCalendar];
  v13 = [v12 components:224 fromDate:v11];

  if ([v13 hour] || objc_msgSend(v13, "minute"))
  {

LABEL_7:
    v14 = v5;

    goto LABEL_8;
  }

  v16 = [v13 second];

  v14 = v11;
  if (v16)
  {
    goto LABEL_7;
  }

LABEL_8:

  return v14;
}

id dd_userFriendlyEmailFromMailtoScheme(void *a1)
{
  v1 = dd_emailFromMailtoScheme(a1);
  v2 = dd_EmailCoding(v1, 1);

  return v2;
}

id dd_emailFromMailtoScheme(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ([v1 scheme], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "lowercaseString"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", @"mailto"), v4, v3, v5))
  {
    v6 = [v2 resourceSpecifier];
    v7 = [v6 componentsSeparatedByString:@"?"];
    v8 = [v7 firstObject];
    v9 = [v8 stringByRemovingPercentEncoding];

    [v9 rangeOfString:@"@"];
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id dd_urlUserVisibleString(void *a1)
{
  v1 = a1;
  v2 = [(__CFString *)v1 scheme];
  v3 = [v2 lowercaseString];

  if ([(__CFString *)v1 dd_isMaps:1])
  {
    v4 = DDMapAddressFromURL(v1);
    if (!v4)
    {
      goto LABEL_9;
    }

LABEL_6:
    v6 = v4;
LABEL_14:
    v4 = v6;
    v10 = v6;
    goto LABEL_16;
  }

  if ([v3 isEqualToString:@"mailto"])
  {
    v5 = dd_emailFromMailtoScheme(v1);
    v4 = dd_EmailCoding(v5, 1);

    if (!v4)
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  if (!dd_isAnySimpleTelephonyScheme(v1) || !v1)
  {
    goto LABEL_9;
  }

  v12 = [(NSURL *)v1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
  v4 = 0;
  if (([v12 containsString:@"@"] & 1) == 0)
  {
    v4 = v12;
  }

  if (!v4)
  {
LABEL_9:
    v7 = v3;
    if ([v7 isEqualToString:@"http"])
    {
    }

    else
    {
      v8 = [v7 isEqualToString:@"https"];

      if (!v8)
      {
LABEL_15:
        v10 = [(__CFString *)v1 absoluteString];
        v4 = 0;
        goto LABEL_16;
      }
    }

    v9 = [(__CFString *)v1 _lp_userVisibleString];
    if (v9)
    {
      v6 = v9;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if ([v4 containsString:@"@"])
  {
    goto LABEL_6;
  }

  if (([v4 isEqualToString:@"open"] & 1) == 0)
  {
    v13 = TUFormattedPhoneNumber();

    v4 = v13;
    if (v13)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_16:

  return v10;
}

uint64_t dd_isAnySimpleTelephonyScheme(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 scheme];
    v4 = [v3 lowercaseString];

    if (v4)
    {
      if ([&unk_282C2BE30 containsObject:v4])
      {
        IsChatBot = 1;
LABEL_9:

        goto LABEL_10;
      }

      if ([v4 isEqualToString:@"sip"])
      {
        v6 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v2 resolvingAgainstBaseURL:0];
        v7 = [v6 path];
        IsChatBot = dd_handleIsChatBot(v7);

        goto LABEL_9;
      }
    }

    IsChatBot = 0;
    goto LABEL_9;
  }

  IsChatBot = 0;
LABEL_10:

  return IsChatBot;
}

__CFString *dd_phoneNumberFromTelScheme(__CFString *a1)
{
  if (a1)
  {
    v3 = [(NSURL *)a1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
    v4 = [v3 containsString:@"@"];
    v5 = 0;
    if ((v4 & 1) == 0)
    {
      v5 = v3;
    }

    v6 = v5;

    a1 = v6;
  }

  return a1;
}

uint64_t dd_schemeIsHttp(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"http"])
  {

    return 1;
  }

  else
  {
    v3 = [v1 isEqualToString:@"https"];

    return v3;
  }
}

uint64_t dd_urlLooksSuspicious(void *a1)
{
  v1 = a1;
  v2 = [v1 scheme];
  v3 = [v2 lowercaseString];

  v4 = v3;
  if ([v4 isEqualToString:@"http"])
  {
  }

  else
  {
    v5 = [v4 isEqualToString:@"https"];

    if (!v5)
    {
      v6 = [v4 isEqualToString:@"javascript"];
      goto LABEL_6;
    }
  }

  v6 = [v1 _lp_userVisibleStringUsesEncodedHost];
LABEL_6:
  v7 = v6;

  return v7;
}

id actionSheetTitleForResult(uint64_t a1)
{
  if (a1)
  {
    v1 = DDResultGetMatchedString();
    Range = DDResultGetRange();
    v4 = v3;
    RangeForURLification = DDResultGetRangeForURLification();
    v7 = v6;
    v8 = RangeForURLification - Range;
    if (v8 || v6 != v4)
    {
      v36.length = [v1 length];
      v35.location = v8;
      v35.length = v7;
      v36.location = 0;
      v9 = NSIntersectionRange(v35, v36);
      if (v8 == v9.location && v7 == v9.length)
      {
        v10 = [v1 substringWithRange:{v8, v7}];

        v1 = v10;
      }
    }

    Category = DDResultGetCategory();
    if (Category > 3)
    {
      if (Category == 4)
      {
        v16 = _DDSentenceCasedString(v1);
        v33 = 0;
        v20 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\(|\\)|\\[|\\]" options:1 error:&v33];
        v21 = v33;
        v32 = v21;
        v22 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"  +" options:1 error:&v32];
        v23 = v32;

        if (v23)
        {
          actionSheetTitleForResult_cold_1(v23);
        }

        v24 = [v20 stringByReplacingMatchesInString:v16 options:0 range:0 withTemplate:{objc_msgSend(v16, "length"), @" "}];
        v25 = [v22 stringByReplacingMatchesInString:v24 options:0 range:0 withTemplate:{objc_msgSend(v24, "length"), @" "}];

        goto LABEL_32;
      }

      if (Category != 5)
      {
        goto LABEL_25;
      }

      Type = DDResultGetType();
      if (CFStringCompare(Type, *MEMORY[0x277D040D0], 0) == kCFCompareEqualTo)
      {
        DDResultGetSubresultWithType();
        DDResultGetSubresultWithType();
        v16 = DDResultGetValue();
        v18 = DDResultGetMatchedString();
        v26 = [v16 lowercaseString];
        v27 = [v18 lowercaseString];
        v28 = [v26 isEqualToString:v27];

        if (v28)
        {
          v29 = [v16 uppercaseString];
          v25 = [v29 stringByAppendingString:DDResultGetValue()];

LABEL_31:
LABEL_32:

          goto LABEL_33;
        }

        v19 = _DDSentenceCasedString(v1);
LABEL_30:
        v25 = v19;
        goto LABEL_31;
      }

      if (DDResultHasType() && DDScannerShouldKeepParsecScoresBelowThreshold())
      {
        ParsecDomain = DDResultGetParsecDomain();
        if (ParsecDomain > 9)
        {
          v15 = @"interesting to look up";
        }

        else
        {
          v15 = off_278291250[ParsecDomain];
        }

        if (DDShouldUseDebugHighlightForResult())
        {
          v31 = @"Internal: red link? Lookup thinks this hint may be %@, is it?";
        }

        else
        {
          v31 = @"Internal: Lookup thinks this hint is %@, is it?";
        }

        v12 = [MEMORY[0x277CCACA8] stringWithFormat:v31, v15];
        goto LABEL_26;
      }
    }

    else if (Category != 1)
    {
      if (Category == 3)
      {
        v12 = _DDSentenceCasedString(v1);
LABEL_26:
        v25 = v12;
LABEL_33:

        goto LABEL_34;
      }

LABEL_25:
      v12 = v1;
      goto LABEL_26;
    }

    v16 = DDResultCopyExtractedURL();
    if (!v16 || ([MEMORY[0x277CBEBC0] URLWithString:v16], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
    {

      goto LABEL_25;
    }

    v18 = v17;
    v19 = dd_urlUserVisibleString(v17);
    goto LABEL_30;
  }

  actionSheetTitleForResult_cold_2();
  v25 = 0;
LABEL_34:

  return v25;
}

id _DDSentenceCasedString(void *a1)
{
  v1 = a1;
  if ([v1 length] > 1)
  {
    v3 = [v1 substringToIndex:1];
    v4 = [v3 localizedCapitalizedString];
    v5 = [v1 substringFromIndex:1];
    v2 = [v4 stringByAppendingString:v5];
  }

  else
  {
    v2 = [v1 localizedUppercaseString];
  }

  return v2;
}

id actionSheetTitleForURL(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    actionSheetTitleForURL_cold_1();
  }

  v2 = dd_urlUserVisibleString(v1);

  return v2;
}

id findNearbyResultsInArray(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v25 = a5;
  v10 = a2 - 1;
  v11 = a2 + 1;
  v12 = [v9 count];
  v13 = a2 + 1 < v12;
  v14 = [v9 objectAtIndex:a2];
  Range = DDResultGetRange();
  v16 = [[DDResultTracker alloc] initWithReferenceResult:v14];
  [(DDResultTracker *)v16 setMaximumDistanceForEmails:a3];
  [(DDResultTracker *)v16 setMaximumDistance:a4];
  if ((v10 & 0x8000000000000000) == 0 || v11 < v12)
  {
    v17 = v10 >= 0;
    do
    {
      if (v17)
      {
        v18 = [v9 objectAtIndex:v10];
        v19 = DDResultGetRange();
        v21 = Range - (v20 + v19);
        if ((v13 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v18 = 0;
        v21 = -1;
        if ((v13 & 1) == 0)
        {
LABEL_6:
          if ((v17 & 1) == 0)
          {
            v13 = 0;
            goto LABEL_12;
          }

LABEL_10:
          v17 = [(DDResultTracker *)v16 addResultIfAppropriate:v18 referenceDate:v25 referenceTimeZone:0];
          --v10;
          goto LABEL_12;
        }
      }

      v22 = [v9 objectAtIndex:v11];
      if ((v17 & (v21 < DDResultGetRange() - Range)) != 0)
      {
        goto LABEL_10;
      }

      v13 = [(DDResultTracker *)v16 addResultIfAppropriate:v22 referenceDate:v25 referenceTimeZone:0];
      ++v11;
LABEL_12:
      v17 &= v10 >= 0;
      v13 &= v11 < [v9 count];
    }

    while ((v17 & 1) != 0 || (v13 & 1) != 0);
  }

  v23 = [(DDResultTracker *)v16 results];

  return v23;
}

id findNearbyResultsInTextStorage(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, char *a5, void *a6)
{
  v11 = a1;
  v12 = a6;
  v13 = *MEMORY[0x277D041D8];
  v14 = [v11 attribute:*MEMORY[0x277D041D8] atIndex:a2 effectiveRange:0];
  v15 = [v14 coreResult];

  if (v15)
  {
    v16 = [[DDResultTracker alloc] initWithReferenceResult:v15];
    [(DDResultTracker *)v16 setMaximumDistanceForEmails:a4];
    [(DDResultTracker *)v16 setMaximumDistance:a5];
    if (a2 >= a5)
    {
      v17 = a2 - a5;
    }

    else
    {
      v17 = 0;
    }

    v18 = [MEMORY[0x277CBEB18] array];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __findNearbyResultsInTextStorage_block_invoke;
    v39[3] = &unk_278291230;
    v19 = v18;
    v40 = v19;
    [v11 enumerateAttribute:v13 inRange:v17 options:a2 - v17 usingBlock:{2, v39}];
    v20 = a2 + a3;
    if ([v11 length] - (a2 + a3) < a5)
    {
      a5 = ([v11 length] - v20);
    }

    v21 = [MEMORY[0x277CBEB18] array];
    v34 = MEMORY[0x277D85DD0];
    v35 = 3221225472;
    v36 = __findNearbyResultsInTextStorage_block_invoke_2;
    v37 = &unk_278291230;
    v22 = v21;
    v38 = v22;
    [v11 enumerateAttribute:v13 inRange:v20 options:a5 usingBlock:{0, &v34}];
    while (1)
    {
      if (![v19 count] && !objc_msgSend(v22, "count"))
      {
        v32 = [(DDResultTracker *)v16 results];

        goto LABEL_22;
      }

      if ([v19 count])
      {
        v23 = [v19 objectAtIndex:0];
        v24 = a2 - [v23 range];

        if ([v22 count])
        {
          goto LABEL_13;
        }

LABEL_17:
        if (v24 == -1)
        {
          goto LABEL_18;
        }

LABEL_14:
        v27 = [v19 objectAtIndex:0];
        v28 = -[DDResultTracker addResultIfAppropriate:referenceDate:referenceTimeZone:](v16, "addResultIfAppropriate:referenceDate:referenceTimeZone:", [v27 coreResult], v12, 0);

        v29 = v19;
        if (!v28)
        {
          goto LABEL_15;
        }

LABEL_8:
        [v29 removeObjectAtIndex:0];
      }

      else
      {
        v24 = -1;
        if (![v22 count])
        {
          goto LABEL_17;
        }

LABEL_13:
        v25 = [v22 objectAtIndex:0];
        v26 = [v25 range] - a2;

        if (v24 < v26)
        {
          goto LABEL_14;
        }

LABEL_18:
        v30 = [v22 objectAtIndex:0];
        v31 = -[DDResultTracker addResultIfAppropriate:referenceDate:referenceTimeZone:](v16, "addResultIfAppropriate:referenceDate:referenceTimeZone:", [v30 coreResult], v12, 0);

        v29 = v22;
        if (v31)
        {
          goto LABEL_8;
        }

LABEL_15:
        [v29 removeAllObjects];
      }
    }
  }

  v32 = [MEMORY[0x277CBEA60] array];
LABEL_22:

  return v32;
}

id *__findNearbyResultsInTextStorage_block_invoke(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

id *__findNearbyResultsInTextStorage_block_invoke_2(id *result, uint64_t a2)
{
  if (a2)
  {
    return [result[4] addObject:a2];
  }

  return result;
}

uint64_t dd_hostApplicationCanListCallProviders(uint64_t a1, uint64_t a2)
{
  if (qword_280B12260 != -1)
  {
    dd_hostApplicationCanListCallProviders_cold_1();
  }

  return _MergedGlobals_3;
}

void __dd_hostApplicationCanListCallProviders_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    cf = SecTaskCopyValueForEntitlement(v0, @"com.apple.telephonyutilities.callservicesd", 0);
    CFRelease(v1);
    v0 = cf;
    if (cf)
    {
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(cf))
      {
        v0 = cf;
      }

      else
      {
        CFRelease(cf);
        v0 = 0;
      }
    }
  }

  cfa = v0;
  _MergedGlobals_3 = [(__SecTask *)v0 containsObject:@"access-call-providers"];
}

uint64_t dd_callsRequireExternalPrompt(uint64_t a1, uint64_t a2)
{
  if (qword_280B12268 != -1)
  {
    dd_callsRequireExternalPrompt_cold_1();
  }

  return byte_280B12251;
}

void __dd_callsRequireExternalPrompt_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.springboard.allowallcallurls", 0);
    CFRelease(v1);
    if (v2)
    {
      TypeID = CFBooleanGetTypeID();
      if (TypeID == CFGetTypeID(v2) && CFEqual(v2, *MEMORY[0x277CBED28]))
      {
        byte_280B12255 = 1;
      }

      CFRelease(v2);
    }
  }

  byte_280B12251 = (byte_280B12255 & 1) == 0;
}

uint64_t dd_isLSTrusted(uint64_t a1, uint64_t a2)
{
  if (qword_280B12270 != -1)
  {
    dd_isLSTrusted_cold_1();
  }

  return byte_280B12252;
}

void __dd_isLSTrusted_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if ([MEMORY[0x277CC1EE8] hasDatabaseAccess])
  {
    byte_280B12252 = 1;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v0 bundleIdentifier];
    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Host process %@ can't map the LS db. This will be logged once", &v2, 0xCu);
  }
}

id dd_applicationNameWithBundleIdentifier(void *a1)
{
  v1 = a1;
  if (qword_280B12270 != -1)
  {
    dd_isLSTrusted_cold_1();
    if (byte_280B12252 == 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = 0;
    goto LABEL_8;
  }

  if (byte_280B12252 != 1)
  {
    goto LABEL_7;
  }

LABEL_3:
  v7 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v7];
  v3 = v7;
  if (!v2)
  {
    v6 = 0;
    v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v6];
  }

  v4 = [v2 localizedName];

LABEL_8:

  return v4;
}

uint64_t applicationWithBundleIdentifierIsRestricted(void *a1)
{
  v1 = a1;
  if (qword_280B12270 == -1)
  {
    if (byte_280B12252 == 1)
    {
      goto LABEL_3;
    }

LABEL_12:
    v6 = 0;
    goto LABEL_13;
  }

  dd_isLSTrusted_cold_1();
  if (byte_280B12252 != 1)
  {
    goto LABEL_12;
  }

LABEL_3:
  v9 = 0;
  v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:v1 allowPlaceholder:0 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    v8 = 0;
    v2 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifierOfSystemPlaceholder:v1 error:&v8];
    v4 = v8;
    if (!v2)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        applicationWithBundleIdentifierIsRestricted_cold_2(v1, v3, v4);
      }

      v6 = 1;
      goto LABEL_7;
    }
  }

  v5 = [v2 applicationState];
  v6 = [v5 isRestricted];

LABEL_7:
LABEL_13:

  return v6;
}

uint64_t DDTrackEventCreationInHostApplication(_DWORD *a1)
{
  if (qword_280B12278 == -1)
  {
    v1 = byte_280B12253;
    if (!a1)
    {
      return v1;
    }
  }

  else
  {
    v3 = a1;
    DDTrackEventCreationInHostApplication_cold_1();
    a1 = v3;
    v1 = byte_280B12253;
    if (!v3)
    {
      return v1;
    }
  }

  if (v1)
  {
    *a1 = dword_280B12258;
  }

  return v1;
}

uint64_t __DDTrackEventCreationInHostApplication_block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v0 bundleIdentifier];

  if ([v6 isEqualToString:@"com.apple.MobileSMS"])
  {
    v1 = 1;
    v2 = v6;
  }

  else
  {
    v3 = [v6 isEqualToString:@"com.apple.mobilemail"];
    v2 = v6;
    if (!v3)
    {
      goto LABEL_6;
    }

    v1 = 2;
  }

  dword_280B12258 = v1;
LABEL_6:
  if (v2)
  {
    v4 = [&unk_282C2BE18 containsObject:v6];
  }

  else
  {
    v4 = 0;
  }

  byte_280B12253 = v4;

  return MEMORY[0x2821F96F8]();
}

void DDUILogAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = MEMORY[0x277CCACA8];
  v13 = a5;
  v14 = [[v12 alloc] initWithFormat:v13 arguments:&a9];

  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Data Detectors UI assertion on %s:%d %s failed: %@", a2, a4, a1, v14];
  if (qword_280B12290)
  {
LABEL_2:
    v16 = off_280B12280;
    if (!off_280B12280)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v18 = dlopen([@"/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport" fileSystemRepresentation], 1);
  qword_280B12290 = v18;
  if (v18)
  {
    v16 = dlsym(v18, "SimulateCrash");
    off_280B12280 = v16;
    if (!v16)
    {
      goto LABEL_4;
    }

LABEL_3:
    v17 = getpid();
    (v16)(v17, 3131747805, v15);
    goto LABEL_4;
  }

  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_2;
  }

  DDUILogAssertionFailure_cold_1();
  v16 = off_280B12280;
  if (off_280B12280)
  {
    goto LABEL_3;
  }

LABEL_4:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    DDUILogAssertionFailure_cold_2(v15);
  }
}

id DDShipmentTrackingUrlForResult()
{
  v0 = DDResultGetShipmentTrackingUrlString();
  if (v0)
  {
    v1 = [MEMORY[0x277CBEBC0] URLWithString:v0];

    v2 = v1;
  }

  else
  {

    v2 = 0;
  }

  return v2;
}

uint64_t dd_handleIsChatBot(void *a1)
{
  v1 = a1;
  v2 = [v1 componentsSeparatedByString:@"@"];
  if ([v2 count] == 2)
  {
    v3 = [v2 lastObject];
    v4 = [v3 lowercaseString];

    if ([v4 hasPrefix:@"botplatform."])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v4 containsString:@".botplatform."];
    }

    v1 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

__CFString *dd_handleFromTelScheme(__CFString *a1, unsigned __int8 *a2)
{
  if (a1)
  {
    a1 = [(NSURL *)a1 dd_phoneNumberFromTelSchemeAndExtractBody:0 serviceID:0 suggestions:?];
    if (a2)
    {
      v5 = a2;
      v6 = a1;
      v7 = v5;
      v8 = [(__CFString *)a1 containsString:@"@"];
      a1 = v6;
      *v7 = v8;
    }
  }

  return a1;
}

uint64_t dd_isDeviceLocked()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 BOOLValue];

    return v2;
  }

  else
  {
    if (dd_isDeviceLocked_onceToken != -1)
    {
      dd_isDeviceLocked_cold_1();
    }

    return 1;
  }
}

void __dd_isDeviceLocked_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v0 = [MEMORY[0x277CCA8D8] mainBundle];
    v1 = [v0 bundleIdentifier];
    v2 = 138412290;
    v3 = v1;
    _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Host process %@ can't read device lock status. This will be logged once", &v2, 0xCu);
  }
}

uint64_t dd_isInternalInstall(uint64_t a1, uint64_t a2)
{
  if (qword_280B12288 != -1)
  {
    dd_isInternalInstall_cold_1();
  }

  return byte_280B12254;
}

void __dd_isInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  byte_280B12254 = v0;
}

uint64_t dd_phoneNumberResultCanBeRdarLink(uint64_t result)
{
  if (result)
  {
    DDResultGetRange();
    if ((v1 & 0xFFFFFFFFFFFFFFFELL) == 8)
    {
      if (qword_280B12288 == -1)
      {
        if (byte_280B12254 == 1)
        {
          goto LABEL_5;
        }
      }

      else
      {
        dd_isInternalInstall_cold_1();
        if (byte_280B12254 == 1)
        {
LABEL_5:
          v2 = DDResultGetMatchedString();
          v3 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"0123456789"];
          v4 = [v3 invertedSet];

          v5 = [v2 rangeOfCharacterFromSet:v4];
          if (v5 == 0x7FFFFFFFFFFFFFFFLL)
          {
            return 1;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void dd_requireDeviceUnlockAndPerformBlock(int a1, void *a2)
{
  v3 = a2;
  v9 = v3;
  if (!a1)
  {
LABEL_4:
    (*(v3 + 2))(v3, 1);
    v8 = v9;

    goto LABEL_6;
  }

  v4 = MGCopyAnswer();
  if (v4)
  {
    v6 = v4;
    v7 = [v4 BOOLValue];

    v3 = v9;
    if ((v7 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  else if (dd_isDeviceLocked_onceToken != -1)
  {
    dd_isDeviceLocked_cold_1();
  }

  SBSRequestPasscodeUnlockUI_delayInitStub(v5);
  v8 = v9;

LABEL_6:
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  return [v28 countByEnumeratingWithState:va objects:v29 - 232 count:{16, a6, a7, a8}];
}

void sub_21AB93490(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *context, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, __int128 buf)
{
  if (a2 == 1)
  {
    v25 = objc_begin_catch(a1);
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Exception caught in dd_collectDDRangesForQuery: %@", &buf, 0xCu);
    }

    objc_end_catch();
    objc_autoreleasePoolPop(context);
    JUMPOUT(0x21AB93434);
  }

  _Unwind_Resume(a1);
}

void _removeDataDetectorLinkInNode(void *a1)
{
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = [v3 parentElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = [v3 parentElement];
    }

    else
    {
      v2 = 0;
    }

    DDRecursivelyRemoveResultLinksFromAnchor(v3, v2, 0);
  }
}

id dd_EmailCoding(void *a1, int a2)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = v3;
  if (!v3)
  {
    v24 = 0;
    goto LABEL_23;
  }

  v5 = [v3 componentsSeparatedByString:@"@"];
  if ([v5 count] == 2)
  {
    v6 = [v5 firstObject];
    v7 = [v5 lastObject];
    if ([v6 length] && objc_msgSend(v7, "length"))
    {
      v8 = [v6 stringByRemovingPercentEncoding];
      v9 = v8;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v6;
      }

      v11 = v10;

      v12 = v11;
      if ((a2 & 1) == 0)
      {
        v6 = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
        v13 = [v11 stringByAddingPercentEncodingWithAllowedCharacters:v6];
        v9 = v13;
        if (v13)
        {
          v12 = v13;
        }

        else
        {
          v12 = v11;
        }
      }

      v31[0] = v12;
      v14 = v7;
      if (v14)
      {
        pErrorCode = U_ZERO_ERROR;
        v15 = MEMORY[0x21CEDF5A0](48, &pErrorCode);
        v16 = v14;
        if (pErrorCode <= U_ZERO_ERROR)
        {
          idna = v15;
          v17 = [v14 lengthOfBytesUsingEncoding:4];
          v18 = malloc_type_malloc(v17, 0x147FC4F9uLL);
          v16 = v14;
          if (v18)
          {
            v19 = v18;
            v16 = v14;
            if ([v14 getBytes:v18 maxLength:v17 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v14, "length"), 0}])
            {
              v27 = 4 * v17;
              v20 = malloc_type_malloc(4 * v17, 0x2A63EA05uLL);
              v16 = v14;
              if (v20)
              {
                pInfo = xmmword_21ABCD8D0;
                v21 = v17;
                v22 = v20;
                if (a2)
                {
                  v23 = uidna_nameToUnicodeUTF8(idna, v19, v21, v20, v27, &pInfo, &pErrorCode);
                }

                else
                {
                  v23 = uidna_nameToASCII_UTF8(idna, v19, v21, v20, v27, &pInfo, &pErrorCode);
                }

                v16 = v14;
                if (pErrorCode <= U_ZERO_ERROR)
                {
                  v16 = v14;
                  if (!pInfo.errors)
                  {
                    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:v22 length:v23 encoding:4];
                  }
                }

                free(v22);
              }
            }

            free(v19);
          }

          uidna_close(idna);
        }
      }

      else
      {
        v16 = 0;
      }

      v31[1] = v16;
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
      v24 = [v26 componentsJoinedByString:@"@"];

      if ((a2 & 1) == 0)
      {
      }

      goto LABEL_22;
    }
  }

  v24 = v4;
LABEL_22:

LABEL_23:

  return v24;
}

id DDMakeContactStore()
{
  v0 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v0 setIncludeAcceptedIntroductions:1];
  v1 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v0];

  return v1;
}

void DDUpdateContactWithContactResult(void *a1, void *a2)
{
  v38[5] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 givenName];
  v6 = [v3 familyName];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__2;
  v35 = __Block_byref_object_dispose__2;
  v36 = 0;
  if (![v5 length] && !objc_msgSend(v6, "length"))
  {
    v11 = [v4 valueForKey:*MEMORY[0x277D04080]];
    v12 = v11 == 0;

    if (!v12)
    {
      if (![MEMORY[0x277CBEBF8] count])
      {
        v13 = *MEMORY[0x277CBD068];
        v14 = *MEMORY[0x277D04060];
        v37[0] = *MEMORY[0x277D04090];
        v37[1] = v14;
        v15 = *MEMORY[0x277CBD000];
        v38[0] = v13;
        v38[1] = v15;
        v16 = *MEMORY[0x277CBD058];
        v17 = *MEMORY[0x277D04070];
        v37[2] = *MEMORY[0x277D04078];
        v37[3] = v17;
        v18 = *MEMORY[0x277CBCFF8];
        v38[2] = v16;
        v38[3] = v18;
        v37[4] = *MEMORY[0x277D04088];
        v38[4] = *MEMORY[0x277CBD070];
        v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __DDUpdateContactWithContactResult_block_invoke;
        v27 = &unk_2782913B0;
        v30 = &v31;
        v28 = v4;
        v29 = v3;
        [v19 enumerateKeysAndObjectsUsingBlock:&v24];
      }

      v20 = [v4 valueForKey:{*MEMORY[0x277D04118], v24, v25, v26, v27}];
      v21 = v32[5];
      v32[5] = v20;

      v22 = v32[5];
      if (v22)
      {
        v23 = [v22 matchedString];
        [v3 setJobTitle:v23];
      }

      else
      {
        [v3 setJobTitle:&stru_282C1E0A8];
      }
    }
  }

  v7 = [v4 valueForKey:*MEMORY[0x277D04058]];
  v8 = v32[5];
  v32[5] = v7;

  v9 = [v3 organizationName];
  if ([v9 length])
  {
    goto LABEL_6;
  }

  v10 = v32[5] == 0;

  if (!v10)
  {
    v9 = [v32[5] matchedString];
    [v3 setOrganizationName:v9];
LABEL_6:
  }

  _Block_object_dispose(&v31, 8);
}

void sub_21AB94788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB947A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB947B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __DDUpdateContactWithContactResult_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = a3;
  v5 = *(a1 + 32);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", *MEMORY[0x277D04080], a2];
  v7 = [v5 valueForKeyPath:v6];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = *(a1 + 40);
  v11 = *(*(*(a1 + 48) + 8) + 40);
  if (v11)
  {
    v12 = [v11 matchedString];
    [v10 setValue:v12 forKey:v13];
  }

  else
  {
    [*(a1 + 40) setValue:&stru_282C1E0A8 forKey:v13];
  }
}

id DDPhoneLabeledValue(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v4)
  {
    v5 = [MEMORY[0x277CBDB70] phoneNumberWithStringValue:v4];
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v3 value:v5];

      goto LABEL_9;
    }

    v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v16)
    {
      DDPhoneLabeledValue_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
    }
  }

  else
  {
    v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      DDPhoneLabeledValue_cold_2(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v7 = 0;
LABEL_9:

  return v7;
}

void *DDHarvestDataFromResults(void *a1, void *a2)
{
  v206[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBDB38]);
  v101 = v3;
  v130 = [v3 range];
  v7 = v6;
  v156 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v8 = objc_alloc_init(MEMORY[0x277CBDAC0]);
  [v8 setIncludeAcceptedIntroductions:1];
  v9 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v8];

  v10 = *MEMORY[0x277CBD038];
  v206[0] = *MEMORY[0x277CBCFC0];
  v206[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v206 count:2];
  v12 = [v9 _ios_meContactWithKeysToFetch:v11 error:0];

  v129 = v5;
  if (v12)
  {
    v200 = 0u;
    v199 = 0u;
    v198 = 0u;
    v197 = 0u;
    v13 = [v12 emailAddresses];
    v14 = [v13 countByEnumeratingWithState:&v197 objects:v205 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v198;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v198 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v197 + 1) + 8 * i) value];
          [v156 addObject:v18];
        }

        v15 = [v13 countByEnumeratingWithState:&v197 objects:v205 count:16];
      }

      while (v15);
    }

    v196 = 0u;
    v194 = 0u;
    v195 = 0u;
    v193 = 0u;
    v19 = [v12 instantMessageAddresses];
    v20 = [v19 countByEnumeratingWithState:&v193 objects:v204 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v194;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v194 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v193 + 1) + 8 * j) value];
          v25 = [v24 username];
          [v156 addObject:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v193 objects:v204 count:16];
      }

      while (v21);
    }
  }

  v26 = [v101 type];
  v139 = *MEMORY[0x277D04170];
  v131 = [v26 isEqualToString:?];

  v191 = 0u;
  v192 = 0u;
  v189 = 0u;
  v190 = 0u;
  obj = v4;
  v140 = [obj countByEnumeratingWithState:&v189 objects:v203 count:16];
  if (v140)
  {
    v124 = 0;
    v127 = 0;
    v170 = 0;
    v27 = 0;
    v172 = 0;
    v135 = 0;
    v138 = *v190;
    v28 = *MEMORY[0x277D040F0];
    v29 = v130;
    v30 = v130 + v7;
    v165 = *MEMORY[0x277D040C8];
    v163 = *MEMORY[0x277D04110];
    v142 = *MEMORY[0x277D04038];
    v134 = *MEMORY[0x277D04068];
    v128 = *MEMORY[0x277D040E0];
    v126 = *MEMORY[0x277D04100];
    v123 = *MEMORY[0x277D040F8];
    v103 = *MEMORY[0x277D041C8];
    v102 = *MEMORY[0x277CBD938];
    v137 = *MEMORY[0x277CBD1F8];
    v122 = *MEMORY[0x277D04240];
    v136 = *MEMORY[0x277CBD220];
    v120 = *MEMORY[0x277CBD228];
    v121 = *MEMORY[0x277D04268];
    v118 = *MEMORY[0x277CBD218];
    v119 = *MEMORY[0x277D04270];
    v116 = *MEMORY[0x277CBD240];
    v117 = *MEMORY[0x277D04260];
    v114 = *MEMORY[0x277CBD238];
    v115 = *MEMORY[0x277D04288];
    v112 = *MEMORY[0x277CBD200];
    v113 = *MEMORY[0x277D04280];
    v110 = *MEMORY[0x277CBD210];
    v111 = *MEMORY[0x277D04248];
    v108 = *MEMORY[0x277CBD230];
    v109 = *MEMORY[0x277D04258];
    v106 = *MEMORY[0x277CBD208];
    v107 = *MEMORY[0x277D04278];
    v105 = *MEMORY[0x277D04250];
    v166 = *MEMORY[0x277CBD8E0];
    v125 = *MEMORY[0x277D04118];
    v104 = *MEMORY[0x277D04058];
    v160 = *MEMORY[0x277CBD940];
    v159 = *MEMORY[0x277D042B8];
    v158 = *MEMORY[0x277D04238];
    v133 = *MEMORY[0x277CBD8E8];
    v157 = *MEMORY[0x277D042A0];
    v169 = *MEMORY[0x277CBD908];
    v155 = *MEMORY[0x277CBD928];
    v154 = *MEMORY[0x277D042C0];
    v153 = *MEMORY[0x277D04298];
    v152 = *MEMORY[0x277CBD900];
    v151 = *MEMORY[0x277D04290];
    v150 = *MEMORY[0x277CBD8F8];
    v149 = *MEMORY[0x277D04230];
    v148 = *MEMORY[0x277CBD920];
    v147 = *MEMORY[0x277D042B0];
    v146 = *MEMORY[0x277CBD918];
    v145 = *MEMORY[0x277D042A8];
    v143 = *MEMORY[0x277D040F0];
    v167 = v130 + v7;
    while (1)
    {
      v31 = 0;
      do
      {
        if (*v190 != v138)
        {
          v32 = v31;
          objc_enumerationMutation(obj);
          v31 = v32;
        }

        v144 = v31;
        v33 = *(*(&v189 + 1) + 8 * v31);
        v34 = [v33 type];
        v35 = [v34 isEqualToString:v139];

        v36 = MEMORY[0x277CBEA60];
        if (v35)
        {
          v37 = [v33 subResults];
          v38 = [v36 arrayWithArray:v37];

          v39 = 1;
        }

        else
        {
          v38 = [MEMORY[0x277CBEA60] arrayWithObject:v33];
          v39 = v131;
        }

        v162 = v39;
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v171 = v38;
        v174 = [v171 countByEnumeratingWithState:&v185 objects:v202 count:16];
        if (v174)
        {
          v173 = *v186;
LABEL_29:
          v40 = 0;
          while (1)
          {
            if (*v186 != v173)
            {
              objc_enumerationMutation(v171);
            }

            v41 = *(*(&v185 + 1) + 8 * v40);
            v42 = [v41 range];
            v44 = v42 - v30;
            if (v42 <= v29)
            {
              v44 = v29 - (v43 + v42);
            }

            if (v44 > 500)
            {
              goto LABEL_21;
            }

            v45 = [v41 type];
            if ([v41 category] == 2)
            {
              break;
            }

            if ([v45 isEqualToString:v28])
            {
              v54 = [v41 matchedString];
              v48 = [v54 lowercaseString];

              v55 = [v48 hasPrefix:@"mailto:"];
              v56 = [MEMORY[0x277CBEBC0] URLWithString:v48];
              v49 = v56;
              if (v55)
              {
                v57 = dd_userFriendlyEmailFromMailtoScheme(v56);

                if (!v57)
                {
                  v49 = 0;
                  goto LABEL_129;
                }

                v58 = [MEMORY[0x277CBDB20] labeledValueWithLabel:0 value:v57];
                if (v58)
                {
                  [v27 addObject:v58];
                }
              }

              else
              {
                if (![v56 dd_isAnySimpleTelephonyScheme])
                {
                  goto LABEL_129;
                }

                v62 = [MEMORY[0x277CBEBC0] URLWithString:v48];
                v63 = dd_phoneNumberFromTelScheme(v62);
                v58 = DDPhoneLabeledValue(0, v63);

                if (v58 && ([v172 containsObject:v58] & 1) == 0)
                {
                  [v172 addObject:v58];
                }

                v57 = v49;
                v30 = v167;
              }

              v49 = v57;
              goto LABEL_129;
            }

            if (([v45 isEqualToString:v165] & 1) != 0 || (objc_msgSend(v45, "isEqualToString:", v163) & 1) != 0 || objc_msgSend(v45, "isEqualToString:", v142))
            {
              v168 = v45;
              v59 = v166;
              v182 = 0;
              v181 = 0;
              v60 = [v41 getMailValue:&v182 label:&v181];
              v61 = v182;
              v49 = v181;
              if (v60)
              {
                v164 = v59;
                v48 = dd_userFriendlyEmail(v61);

                if ((v162 & 1) != 0 || ([v156 containsObject:v48] & 1) == 0)
                {
                  if (v27)
                  {
                    if ([v27 count])
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v27 = [MEMORY[0x277CBEB18] array];
                  }

                  if (v49)
                  {
                    v70 = v27;
                    v71 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v160, v159, v59, v158, v133, v157, 0}];
                    v72 = [v71 objectForKey:v49];
                    v73 = v72;
                    v161 = v59;
                    if (v72)
                    {
                      v161 = v72;
                    }

                    v27 = v70;
                    v45 = v168;
LABEL_88:
                  }

                  else
                  {
                    v161 = v59;
                    v45 = v168;
                    if (v135)
                    {
                      v161 = v160;
                      v71 = v164;
                      goto LABEL_88;
                    }
                  }

                  if (v48)
                  {
                    v74 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v161 value:v48];
                    if (v74 && ([v27 containsObject:v74] & 1) == 0)
                    {
                      [v27 addObject:v74];
                    }
                  }

                  if (([v45 isEqualToString:v163] & 1) != 0 || objc_msgSend(v45, "isEqualToString:", v142))
                  {
                    v141 = v27;
                    v75 = [v45 isEqualToString:v163];
                    v76 = v137;
                    if (v75)
                    {
                      v76 = v136;
                    }

                    v77 = v76;
                    v78 = v170;
                    if (!v170)
                    {
                      v78 = [MEMORY[0x277CBEB18] array];
                    }

                    v179 = 0u;
                    v180 = 0u;
                    v177 = 0u;
                    v178 = 0u;
                    v170 = v78;
                    v79 = [v170 countByEnumeratingWithState:&v177 objects:v201 count:16];
                    if (v79)
                    {
                      v80 = v79;
                      v81 = *v178;
                      while (2)
                      {
                        for (k = 0; k != v80; ++k)
                        {
                          if (*v178 != v81)
                          {
                            objc_enumerationMutation(v170);
                          }

                          v83 = [*(*(&v177 + 1) + 8 * k) value];
                          v84 = [v83 service];
                          v85 = [v84 isEqualToString:v77];

                          if (v85)
                          {
                            v86 = 1;
                            goto LABEL_110;
                          }
                        }

                        v80 = [v170 countByEnumeratingWithState:&v177 objects:v201 count:16];
                        if (v80)
                        {
                          continue;
                        }

                        break;
                      }

                      v86 = 0;
LABEL_110:
                      v29 = v130;
                      v28 = v143;
                      v30 = v167;

                      if (!v48)
                      {
LABEL_127:

                        v27 = v141;
                        v45 = v168;
                        goto LABEL_128;
                      }
                    }

                    else
                    {
                      v86 = 0;

                      if (!v48)
                      {
                        goto LABEL_127;
                      }
                    }

                    v87 = [objc_alloc(MEMORY[0x277CBDB18]) initWithUsername:v48 service:v77];
                    if (v87)
                    {
                      v88 = v86;
                    }

                    else
                    {
                      v88 = 1;
                    }

                    if ((v88 & 1) == 0)
                    {
                      v89 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v164 value:v87];
                      if (v89 && ([v170 containsObject:v89] & 1) == 0)
                      {
                        [v170 addObject:v89];
                      }

                      v30 = v167;
                    }

                    goto LABEL_127;
                  }

LABEL_128:

LABEL_129:
LABEL_130:

                  goto LABEL_131;
                }

LABEL_58:
                v61 = v48;
              }

              v48 = v61;
              v45 = v168;
              goto LABEL_129;
            }

            if ([v45 isEqualToString:v134])
            {
              DDUpdateContactWithContactResult(v129, v41);
              if (v162)
              {
                if (!v135)
                {
                  v48 = [v41 valueForKey:v125];
                  if (!v48)
                  {
                    v49 = [v41 valueForKey:v104];
                    v135 = v49 != 0;
                    goto LABEL_129;
                  }

                  v135 = 1;
                  goto LABEL_130;
                }

                v135 = 1;
              }
            }

            else
            {
              if (![v45 isEqualToString:v128])
              {
                if (![v45 isEqualToString:v126])
                {
                  if (!v162 || ([v45 isEqualToString:v123] & 1) == 0 && !objc_msgSend(v45, "isEqualToString:", v103) || v124)
                  {
                    goto LABEL_131;
                  }

                  v95 = MEMORY[0x277CBDB20];
                  v96 = [v41 matchedString];
                  v48 = [v95 labeledValueWithLabel:v102 value:v96];

                  if (v48)
                  {
                    [MEMORY[0x277CBEB18] arrayWithObject:v48];
                    v124 = v49 = 0;
                    goto LABEL_129;
                  }

                  v124 = 0;
                  goto LABEL_130;
                }

                v176 = 0;
                v175 = 0;
                v90 = [v41 getIMScreenNameValue:&v176 type:&v175];
                v48 = v176;
                v49 = v175;
                if (!v90)
                {
                  goto LABEL_129;
                }

                v91 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v137, v122, v136, v121, v120, v119, v118, v117, v116, v115, v114, v113, v112, v111, v110, v109, v108, v107, v106, v105, 0}];
                v92 = [v91 objectForKey:v49];
                if (v92)
                {
                  v93 = v27;
                  v94 = [objc_alloc(MEMORY[0x277CBDB18]) initWithUsername:v48 service:v92];
                  if (v170)
                  {
                    if (!v94)
                    {
                      goto LABEL_155;
                    }
                  }

                  else
                  {
                    v170 = [MEMORY[0x277CBEB18] array];
                    if (!v94)
                    {
                      goto LABEL_155;
                    }
                  }

                  v97 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v166 value:v94];
                  if (v97 && ([v170 containsObject:v97] & 1) == 0)
                  {
                    [v170 addObject:v97];
                  }

LABEL_155:
                  v27 = v93;
                  v28 = v143;
                }

                v30 = v167;
                goto LABEL_129;
              }

              if (!v127)
              {
                v48 = DDMapsGetBestAddressForResults(v171, 0);
                if (v48)
                {
                  v49 = [MEMORY[0x277CBDB20] labeledValueWithLabel:v166 value:v48];
                  if (v49)
                  {
                    v127 = [MEMORY[0x277CBEB18] arrayWithObject:v49];
                  }

                  else
                  {
                    v127 = 0;
                  }

                  goto LABEL_129;
                }

                v127 = 0;
                goto LABEL_130;
              }
            }

LABEL_131:

            if (++v40 == v174)
            {
              v98 = [v171 countByEnumeratingWithState:&v185 objects:v202 count:16];
              v174 = v98;
              if (v98)
              {
                goto LABEL_29;
              }

              goto LABEL_21;
            }
          }

          v46 = v169;
          v184 = 0;
          v183 = 0;
          v47 = [v41 getPhoneValue:&v184 label:&v183];
          v48 = v184;
          v49 = v183;
          if (!v47)
          {
LABEL_44:

            goto LABEL_129;
          }

          if (v48)
          {
            v50 = TUFormattedPhoneNumber();
            v51 = v50;
            if (v50)
            {
              v52 = v50;
            }

            else
            {
              v52 = v48;
            }

            v53 = v52;

            v48 = v53;
            v30 = v167;
          }

          if (v172)
          {
            if ([v172 count] > 2)
            {
              goto LABEL_44;
            }

            if (v49)
            {
LABEL_69:
              v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v160, v159, v166, v158, v46, v157, v155, v154, v46, v153, v152, v151, v150, v149, v148, v147, v146, v145, 0}];
              v65 = [v64 objectForKey:v49];
              v66 = v65;
              if (v65)
              {
                v67 = v27;
                v68 = v65;

                v46 = v68;
                v27 = v67;
                v28 = v143;
              }

              v30 = v167;
            }
          }

          else
          {
            v172 = [MEMORY[0x277CBEB18] array];
            if (v49)
            {
              goto LABEL_69;
            }
          }

          v69 = DDPhoneLabeledValue(v46, v48);
          if (v69 && ([v172 containsObject:v69] & 1) == 0)
          {
            [v172 addObject:v69];
          }

          goto LABEL_129;
        }

LABEL_21:

        v31 = v144 + 1;
      }

      while (v144 + 1 != v140);
      v140 = [obj countByEnumeratingWithState:&v189 objects:v203 count:16];
      if (!v140)
      {
        goto LABEL_161;
      }
    }
  }

  v124 = 0;
  v127 = 0;
  v170 = 0;
  v27 = 0;
  v172 = 0;
LABEL_161:

  [v129 setEmailAddresses:v27];
  [v129 setUrlAddresses:v124];
  [v129 setInstantMessageAddresses:v170];
  [v129 setPhoneNumbers:v172];
  [v129 setPostalAddresses:v127];
  v99 = v129;

  return v129;
}

void DDMergeContactIntoContact(void *a1, void *a2, int a3)
{
  v65 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v5 = a2;
  v6 = *MEMORY[0x277CBD098];
  v7 = *MEMORY[0x277CBCFC0];
  v63[0] = *MEMORY[0x277CBD098];
  v63[1] = v7;
  v48 = v7;
  v41 = *MEMORY[0x277CBD168];
  v42 = *MEMORY[0x277CBD038];
  v63[2] = *MEMORY[0x277CBD038];
  v63[3] = v41;
  v8 = *MEMORY[0x277CBD040];
  v40 = *MEMORY[0x277CBD0C8];
  v63[4] = *MEMORY[0x277CBD0C8];
  v63[5] = v8;
  v36 = *MEMORY[0x277CBD058];
  v37 = *MEMORY[0x277CBD000];
  v63[6] = *MEMORY[0x277CBD000];
  v63[7] = v36;
  v34 = *MEMORY[0x277CBD070];
  v35 = *MEMORY[0x277CBCFF8];
  v63[8] = *MEMORY[0x277CBCFF8];
  v63[9] = v34;
  v32 = v8;
  v33 = *MEMORY[0x277CBD090];
  v63[10] = *MEMORY[0x277CBD090];
  v63[11] = v8;
  v39 = *MEMORY[0x277CBD068];
  v63[12] = *MEMORY[0x277CBD068];
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:13];
  v10 = [v4 organizationName];
  if ([v10 length])
  {
    v11 = 1;
  }

  else
  {
    v11 = [v4 contactType] == 1;
  }

  v50 = v11;

  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v54;
    v15 = *MEMORY[0x277CBD8E8];
    v52 = *MEMORY[0x277CBD940];
    v45 = v5;
    v46 = v4;
    v43 = *v54;
    v44 = v6;
    do
    {
      v16 = 0;
      v47 = v13;
      do
      {
        if (*v54 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v51 = v16;
        v17 = *(*(&v53 + 1) + 8 * v16);
        v18 = [v4 valueForKey:v17];
        if (([v17 isEqualToString:v6] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v48) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v42) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v41) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v40))
        {
          if ([v18 count])
          {
            if (v50)
            {
              v19 = v18;
              v18 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v19, "count")}];
              v57 = 0u;
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v20 = v19;
              v21 = [v20 countByEnumeratingWithState:&v57 objects:v64 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v58;
                do
                {
                  for (i = 0; i != v22; ++i)
                  {
                    while (1)
                    {
                      if (*v58 != v23)
                      {
                        objc_enumerationMutation(v20);
                      }

                      v25 = *(*(&v57 + 1) + 8 * i);
                      v26 = [v25 label];
                      v27 = [v26 isEqualToString:v15];

                      if (v27)
                      {
                        break;
                      }

                      [v18 addObject:v25];
                      if (v22 == ++i)
                      {
                        goto LABEL_22;
                      }
                    }

                    v28 = MEMORY[0x277CBDB20];
                    v29 = [v25 value];
                    v30 = [v28 labeledValueWithLabel:v52 value:v29];

                    if (v30)
                    {
                      [v18 addObject:v30];
                    }
                  }

LABEL_22:
                  v22 = [v20 countByEnumeratingWithState:&v57 objects:v64 count:16];
                }

                while (v22);
              }

              v5 = v45;
              v4 = v46;
              v14 = v43;
              v6 = v44;
              v13 = v47;
            }

            [v5 setValue:v18 forKey:v17];
          }
        }

        else if (([v17 isEqualToString:v39] & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v37) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v36) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v35) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v34) & 1) != 0 || (objc_msgSend(v17, "isEqualToString:", v33) & 1) != 0 || objc_msgSend(v17, "isEqualToString:", v32))
        {
          if (a3)
          {
            v31 = [v4 valueForKey:v17];
            [v5 setValue:v31 forKey:v17];
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          DDMergeContactIntoContact_cold_1(buf, v17, &buf[4]);
        }

        v16 = v51 + 1;
      }

      while (v51 + 1 != v13);
      v13 = [obj countByEnumeratingWithState:&v53 objects:v62 count:16];
    }

    while (v13);
  }
}

id DDDefaultAddressForContact(void *a1)
{
  v1 = a1;
  if ([v1 isKeyAvailable:@"postalAddresses"])
  {
    v2 = [v1 postalAddresses];
    v3 = [v2 firstObject];
    v4 = [v3 value];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL DDContactHasNameInfo(void *a1)
{
  v1 = a1;
  if ([v1 isKeyAvailable:@"givenName"])
  {
    v2 = [v1 givenName];
LABEL_7:
    v3 = v2 != 0;

    return v3;
  }

  if ([v1 isKeyAvailable:@"familyName"])
  {
    v2 = [v1 familyName];
    goto LABEL_7;
  }

  if ([v1 isKeyAvailable:@"organizationName"])
  {
    v2 = [v1 organizationName];
    goto LABEL_7;
  }

  return 0;
}

void DDAugmentContactWithResultsFromAction(void *a1, void *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v4 result];
  v6 = [v4 coalescedResult];
  if (v5)
  {
    if (v6)
    {
      v7 = [MEMORY[0x277D04218] resultFromCoreResult:v6];
      v25[0] = v7;
      v8 = MEMORY[0x277CBEA60];
      v9 = v25;
    }

    else
    {
      if ([v4 associatedResults])
      {
        v10 = [MEMORY[0x277D04218] resultsFromCoreResults:?];
        v11 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
        if (!v11)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }

      v7 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
      v24 = v7;
      v8 = MEMORY[0x277CBEA60];
      v9 = &v24;
    }

    v10 = [v8 arrayWithObjects:v9 count:1];

    v11 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
    if (!v11)
    {
LABEL_6:
      v13 = [MEMORY[0x277D04218] resultFromCoreResult:v5];
      v14 = DDHarvestDataFromResults(v13, v10);

      v15 = [v4 associatedVisualResults];
      _DDFillContactWithGroupResult(v14, v15);

      DDMergeContactIntoContact(v14, v3, 1);
      goto LABEL_9;
    }

LABEL_5:
    v12 = [v10 sortedArrayUsingFunction:MEMORY[0x277D04210] context:v11];

    v10 = v12;
    goto LABEL_6;
  }

  v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  if (v16)
  {
    DDAugmentContactWithResultsFromAction_cold_1(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_9:
}

void _DDFillContactWithGroupResult(void *a1, void *a2)
{
  v89 = *MEMORY[0x277D85DE8];
  v73 = a1;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v83;
    v6 = *MEMORY[0x277D04068];
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v83 != v5)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v82 + 1) + 8 * v7);
      v9 = [v8 type];
      v10 = [v9 isEqualToString:v6];

      if (v10)
      {
        break;
      }

      if (v4 == ++v7)
      {
        v4 = [obj countByEnumeratingWithState:&v82 objects:v88 count:16];
        if (!v4)
        {
          goto LABEL_65;
        }

        goto LABEL_3;
      }
    }

    v11 = [v73 givenName];
    if ([v11 length])
    {
      v70 = 0;
    }

    else
    {
      v12 = [v73 familyName];
      if ([v12 length])
      {
        v70 = 0;
      }

      else
      {
        v13 = [v73 nickname];
        v70 = [v13 length] == 0;
      }
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v69 = [v8 subResults];
    v14 = [v69 countByEnumeratingWithState:&v78 objects:v87 count:16];
    v15 = v73;
    if (v14)
    {
      v16 = v14;
      v17 = *v79;
      v67 = *MEMORY[0x277D04118];
      v68 = *MEMORY[0x277D04058];
      v65 = *MEMORY[0x277D04080];
      v66 = *v79;
      do
      {
        v18 = 0;
        v62 = v16;
        do
        {
          if (*v79 != v17)
          {
            objc_enumerationMutation(v69);
          }

          v21 = *(*(&v78 + 1) + 8 * v18);
          v22 = [v21 type];
          v23 = [v15 organizationName];
          if ([v23 length])
          {
            v24 = v22;
          }

          else
          {
            v24 = v22;
            v25 = [v22 isEqualToString:v68];

            if (v25)
            {
              v19 = [v21 matchedString];
              [v15 setOrganizationName:v19];
LABEL_21:
              v20 = v24;
              goto LABEL_22;
            }
          }

          v26 = [v15 departmentName];
          if ([v26 length])
          {
          }

          else
          {
            v27 = [v24 isEqualToString:@"DepartmentName"];

            if (v27)
            {
              v19 = [v21 matchedString];
              [v15 setDepartmentName:v19];
              goto LABEL_21;
            }
          }

          v28 = [v15 jobTitle];
          if ([v28 length])
          {
          }

          else
          {
            v29 = [v24 isEqualToString:v67];

            if (v29)
            {
              v19 = [v21 matchedString];
              [v15 setJobTitle:v19];
              goto LABEL_21;
            }
          }

          v20 = v24;
          if (v70)
          {
            if ([v24 isEqualToString:@"NLPContactName"])
            {
              v19 = objc_alloc_init(MEMORY[0x277CCAC08]);
              v30 = [v21 matchedString];
              v31 = [v19 personNameComponentsFromString:v30];

              v32 = [v31 givenName];
              [MEMORY[0x277CBEAF8] currentLocale];
              v34 = v33 = v18;
              v35 = [v32 capitalizedStringWithLocale:v34];
              [v73 setGivenName:v35];

              v36 = [v31 middleName];
              [v73 setMiddleName:v36];

              v37 = [v31 familyName];
              v15 = v73;
              v38 = [MEMORY[0x277CBEAF8] currentLocale];
              v39 = [v37 capitalizedStringWithLocale:v38];
              [v73 setFamilyName:v39];

              v17 = v66;
              v18 = v33;

              v40 = [v31 namePrefix];
              [v73 setNamePrefix:v40];

              v41 = [v31 nameSuffix];
              [v73 setNameSuffix:v41];

              goto LABEL_22;
            }

            if ([v24 isEqualToString:v65])
            {
              v64 = v18;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              v19 = [v21 subResults];
              v42 = [v19 countByEnumeratingWithState:&v74 objects:v86 count:16];
              if (v42)
              {
                v43 = v42;
                v63 = v24;
                v44 = *v75;
                v45 = 0x277CBE000uLL;
                while (1)
                {
                  for (i = 0; i != v43; ++i)
                  {
                    if (*v75 != v44)
                    {
                      objc_enumerationMutation(v19);
                    }

                    v47 = *(*(&v74 + 1) + 8 * i);
                    v48 = [v47 type];
                    v49 = [v47 matchedString];
                    if ([v48 isEqualToString:@"FirstName"])
                    {
                      v50 = [*(v45 + 2808) currentLocale];
                      v51 = [v49 capitalizedStringWithLocale:v50];
                      [v73 setGivenName:v51];
LABEL_51:

                      goto LABEL_46;
                    }

                    if ([v48 isEqualToString:@"MiddleName"])
                    {
                      [v73 setMiddleName:v49];
                      goto LABEL_46;
                    }

                    if ([v48 isEqualToString:@"LastName"])
                    {
                      v50 = [*(v45 + 2808) currentLocale];
                      v51 = [v49 capitalizedStringWithLocale:v50];
                      [v73 setFamilyName:v51];
                      goto LABEL_51;
                    }

                    if ([v48 isEqualToString:@"Title"])
                    {
                      [v73 setNamePrefix:v49];
                    }

                    else if ([v48 isEqualToString:@"NameSuffix"])
                    {
                      [v73 setNameSuffix:v49];
                    }

                    else if (([v48 isEqualToString:@"AddressBookContactName"] & 1) != 0 || objc_msgSend(v48, "isEqualToString:", @"NLPContactName"))
                    {
                      v71 = objc_alloc_init(MEMORY[0x277CCAC08]);
                      v72 = [v71 personNameComponentsFromString:v49];
                      v52 = [v72 givenName];
                      v53 = [MEMORY[0x277CBEAF8] currentLocale];
                      v54 = [v52 capitalizedStringWithLocale:v53];
                      [v73 setGivenName:v54];

                      v55 = [v72 middleName];
                      [v73 setMiddleName:v55];

                      v56 = [v72 familyName];
                      v57 = [MEMORY[0x277CBEAF8] currentLocale];
                      v58 = [v56 capitalizedStringWithLocale:v57];
                      [v73 setFamilyName:v58];

                      v59 = [v72 namePrefix];
                      [v73 setNamePrefix:v59];

                      v60 = [v72 nameSuffix];
                      [v73 setNameSuffix:v60];

                      v45 = 0x277CBE000;
                    }

LABEL_46:
                  }

                  v43 = [v19 countByEnumeratingWithState:&v74 objects:v86 count:16];
                  if (!v43)
                  {
                    v16 = v62;
                    v20 = v63;
                    v17 = v66;
                    v18 = v64;
                    v15 = v73;
                    break;
                  }
                }
              }

LABEL_22:
            }
          }

          ++v18;
        }

        while (v18 != v16);
        v16 = [v69 countByEnumeratingWithState:&v78 objects:v87 count:16];
      }

      while (v16);
    }
  }

LABEL_65:
}

id DDContactFromResult(uint64_t a1, void *a2, void *a3, BOOL *a4)
{
  v54 = a4;
  v102 = *MEMORY[0x277D85DE8];
  v70 = a2;
  v55 = a3;
  v56 = [MEMORY[0x277CBEB18] array];
  v61 = [MEMORY[0x277CBEB18] array];
  v62 = [MEMORY[0x277CBEB18] array];
  v59 = [MEMORY[0x277CBEB18] array];
  v57 = [MEMORY[0x277CBEB18] array];
  v58 = [MEMORY[0x277CBEB18] array];
  v60 = [MEMORY[0x277CBEB18] array];
  v64 = [MEMORY[0x277CBEB98] setWithArray:&unk_282C2BF08];
  if (a1 | v70)
  {
    v6 = [MEMORY[0x277CBEB18] array];
    if (a1)
    {
      Type = DDResultGetType();
      if (CFStringCompare(Type, *MEMORY[0x277D04170], 0) == kCFCompareEqualTo)
      {
        [v6 addObjectsFromArray:DDResultGetSubResults()];
        if (!v70)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      [v6 addObject:a1];
      if (v55)
      {
        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v8 = v55;
        v9 = [v8 countByEnumeratingWithState:&v93 objects:v101 count:16];
        if (v9)
        {
          v10 = *v94;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v94 != v10)
              {
                objc_enumerationMutation(v8);
              }

              [v6 addObject:{objc_msgSend(*(*(&v93 + 1) + 8 * i), "coreResult", v54)}];
            }

            v9 = [v8 countByEnumeratingWithState:&v93 objects:v101 count:16];
          }

          while (v9);
        }
      }
    }

    if (!v70)
    {
LABEL_15:
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      obj = v6;
      v68 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
      if (!v68)
      {
        goto LABEL_50;
      }

      v65 = *v90;
      while (1)
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v90 != v65)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v89 + 1) + 8 * j);
          if (v14 == v70)
          {
            v19 = 1;
            goto LABEL_35;
          }

          Category = DDResultGetCategory();
          if ((Category - 1) < 2)
          {
            if (v14)
            {
              v16 = DDResultCopyExtractedURLWithOptions();
              if (v16)
              {
                v17 = v16;
                v18 = 0;
                v19 = 0;
                v13 = v17;
LABEL_37:
                cf = 0;
                v23 = [MEMORY[0x277CBEBC0] URLWithString:{v13, v54}];
                v24 = [(NSURL *)v23 dd_emailFromValidSchemes:v64];
                v25 = dd_userFriendlyEmail(v24);

                if (v25 && ([v62 containsObject:v25] & 1) == 0)
                {
                  [v62 addObject:v25];
                  if ((v19 & 1) == 0)
                  {
                    DDResultCopyMailValue();
                  }

                  v26 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:cf value:v25];
                  [v58 addObject:v26];
                }

                v27 = [(NSURL *)v23 dd_phoneNumberFromValidSchemes:v64];
                if (v27 && ([v61 containsObject:v27] & 1) == 0)
                {
                  [v61 addObject:v27];
                  v28 = [objc_alloc(MEMORY[0x277CBDB70]) initWithStringValue:v27];
                  [v56 addObject:v28];
                  if ((v19 & 1) == 0)
                  {
                    DDResultCopyPhoneValue();
                  }

                  v29 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:cf value:v28];
                  [v57 addObject:v29];
                }

                if ((v18 & 1) == 0)
                {
                  CFRelease(v17);
                }

                goto LABEL_19;
              }

              v19 = 0;
            }

            else
            {
              v19 = 1;
            }

LABEL_35:
            v13 = [v70 absoluteString];
            v17 = 0;
            if (v13)
            {
              v18 = 1;
              goto LABEL_37;
            }

            v13 = 0;
LABEL_19:

            continue;
          }

          if (Category == 3)
          {
            v13 = objc_alloc_init(MEMORY[0x277CBDB60]);
            DDResultGetSubresultWithType();
            [v13 setStreet:DDResultGetMatchedString()];
            v20 = [v13 street];
            v21 = v20 == 0;

            if (v21)
            {
              DDResultGetSubresultWithType();
              [v13 setStreet:DDResultGetMatchedString()];
            }

            DDResultGetSubresultWithType();
            [v13 setCity:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setState:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setPostalCode:DDResultGetMatchedString()];
            DDResultGetSubresultWithType();
            [v13 setCountry:DDResultGetMatchedString()];
            [v13 setISOCountryCode:DDResultGetCountryCode()];
            [v59 addObject:v13];
            v22 = [objc_alloc(MEMORY[0x277CBDB20]) initWithLabel:0 value:v13];
            [v60 addObject:v22];

            goto LABEL_19;
          }
        }

        v68 = [obj countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (!v68)
        {
LABEL_50:

          goto LABEL_51;
        }
      }
    }

LABEL_14:
    [v6 addObject:{v70, v54}];
    goto LABEL_15;
  }

LABEL_51:
  cf = 0;
  p_cf = &cf;
  v85 = 0x3032000000;
  v86 = __Block_byref_object_copy__2;
  v87 = __Block_byref_object_dispose__2;
  v88 = 0;
  if ((dd_isDeviceLocked() & 1) == 0 && [MEMORY[0x277CBDAB8] authorizationStatusForEntityType:0] == 3)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBDAC0]);
    [v30 setIncludeAcceptedIntroductions:1];
    v69 = [objc_alloc(MEMORY[0x277CBDAB8]) initWithConfiguration:v30];

    v31 = objc_alloc(MEMORY[0x277CBDA70]);
    Helper_x8__OBJC_CLASS___CNContactContentViewController = gotLoadHelper_x8__OBJC_CLASS___CNContactContentViewController(v32);
    v35 = [*(v34 + 3080) descriptorForRequiredKeys];
    v99 = v35;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v99 count:1];
    v37 = [v31 initWithKeysToFetch:v36];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v66 = v56;
    v38 = [v66 countByEnumeratingWithState:&v79 objects:v98 count:16];
    if (v38)
    {
      v39 = *v80;
      v40 = MEMORY[0x277D85DD0];
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v80 != v39)
          {
            objc_enumerationMutation(v66);
          }

          v42 = [MEMORY[0x277CBDA58] predicateForContactsMatchingPhoneNumber:{*(*(&v79 + 1) + 8 * k), v54}];
          [v37 setPredicate:v42];

          v77[4] = &cf;
          v78 = 0;
          v77[0] = v40;
          v77[1] = 3221225472;
          v77[2] = __DDContactFromResult_block_invoke;
          v77[3] = &unk_2782913D8;
          [v69 enumerateContactsWithFetchRequest:v37 error:&v78 usingBlock:v77];
        }

        v38 = [v66 countByEnumeratingWithState:&v79 objects:v98 count:16];
      }

      while (v38);
    }

    if (!p_cf[5])
    {
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v67 = v62;
      v43 = [v67 countByEnumeratingWithState:&v73 objects:v97 count:16];
      if (v43)
      {
        v44 = *v74;
        v45 = MEMORY[0x277D85DD0];
        do
        {
          for (m = 0; m != v43; ++m)
          {
            if (*v74 != v44)
            {
              objc_enumerationMutation(v67);
            }

            v47 = [MEMORY[0x277CBDA58] predicateForContactsMatchingEmailAddress:{*(*(&v73 + 1) + 8 * m), v54}];
            [v37 setPredicate:v47];

            v71[4] = &cf;
            v72 = 0;
            v71[0] = v45;
            v71[1] = 3221225472;
            v71[2] = __DDContactFromResult_block_invoke_2;
            v71[3] = &unk_2782913D8;
            [v69 enumerateContactsWithFetchRequest:v37 error:&v72 usingBlock:v71];
          }

          v43 = [v67 countByEnumeratingWithState:&v73 objects:v97 count:16];
        }

        while (v43);
      }
    }
  }

  v48 = p_cf;
  if (v54)
  {
    *v54 = p_cf[5] != 0;
  }

  v49 = v48[5];
  if (!v49)
  {
    v50 = objc_alloc_init(MEMORY[0x277CBDB38]);
    [v50 setPhoneNumbers:v57];
    [v50 setEmailAddresses:v58];
    [v50 setPostalAddresses:v60];
    _DDFillContactWithGroupResult(v50, v55);
    v51 = p_cf[5];
    p_cf[5] = v50;

    v49 = p_cf[5];
  }

  v52 = v49;
  _Block_object_dispose(&cf, 8);

  return v52;
}

void sub_21AB9777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB97794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB977AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB977C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB977DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB977F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB9780C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB97824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB9783C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB97854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB9786C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21AB97884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_3(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 2u);
}

CFTypeRef specialCaseResultForResult(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  if (!DDResultHasType())
  {
    return 0;
  }

  if (!DDResultGetSubresultWithType())
  {
    return 0;
  }

  v1 = [DDResultGetMatchedString() lowercaseString];
  v2 = [v1 hasPrefix:@"pounds"];

  if (!v2)
  {
    return 0;
  }

  Copy = DDResultCreateCopy();
  if (!Copy)
  {
    return 0;
  }

  v4 = Copy;
  DDResultSetType();
  DDResultGetQueryRange();
  DDResultCreate();
  DDResultSetMatchedString();
  DDResultAddSubresult();

  return CFAutorelease(v4);
}

id DDMapsGetBestAddressForResults(void *a1, int a2)
{
  v83 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v69 = objc_alloc_init(MEMORY[0x277CBDB60]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v73 objects:v81 count:16];
  if (!v5)
  {
    v7 = 0;

    v48 = [v69 ISOCountryCode];
    if (!v48)
    {
      goto LABEL_58;
    }

    goto LABEL_63;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v74;
  v9 = *MEMORY[0x277D040E0];
  v66 = *MEMORY[0x277D04050];
  v63 = *MEMORY[0x277D041D0];
  v59 = *MEMORY[0x277D04178];
  v56 = *MEMORY[0x277D04098];
  v65 = *MEMORY[0x277D04180];
  v61 = *MEMORY[0x277D04150];
  v53 = *v74;
  v54 = v4;
  v60 = a2;
  v52 = *MEMORY[0x277D040E0];
  while (2)
  {
    v10 = 0;
    v55 = v6;
    do
    {
      v64 = v7;
      if (*v74 != v8)
      {
        objc_enumerationMutation(v4);
      }

      v62 = v10;
      v11 = *(*(&v73 + 1) + 8 * v10);
      v12 = [v11 type];
      v13 = [v12 isEqualToString:v9];

      if (v13)
      {
        if (v7)
        {
          [v7 coreResult];
          [v11 coreResult];
          CanBeMergedWith = DDAddressResultCanBeMergedWith();
          v15 = v7;
          if (!CanBeMergedWith)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v15 = v11;
        }

        v58 = v15;
        v16 = v11;
        v69 = v69;
        v70 = objc_alloc_init(MEMORY[0x277CBDB60]);
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        v80 = 0u;
        v57 = v16;
        obj = [v16 subResults];
        v17 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
        if (v17)
        {
          v18 = v17;
          v67 = 0;
          v71 = 0;
          v19 = *v78;
          p_info = &OBJC_METACLASS___DDPreviewAction.info;
          v21 = (&OBJC_METACLASS___DDPreviewAction + 32);
          while (2)
          {
            v22 = 0;
            v68 = v18;
LABEL_20:
            if (*v78 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v77 + 1) + 8 * v22);
            [v23 coreResult];
            if (p_info[91] != -1)
            {
              DDMapsGetBestAddressForResults_cold_1();
            }

            Type = DDResultGetType();
            v25 = [(__objc2_class_ro *)v21[90] objectForKeyedSubscript:Type];
            v26 = v25;
            if (v25)
            {
              if ([v25 length])
              {
                v27 = [v69 valueForKey:v26];
                v28 = [v27 length];

                if (v28)
                {

                  v42 = 0;
                  v43 = v70;
                  goto LABEL_52;
                }

                if (!v71)
                {
                  v71 = [v23 valueForKeyPath:@"Location.value"];
                }

                v29 = [v23 type];
                v30 = [v23 valueForKeyPath:@"CountryCode.value"];
                if ([v30 length])
                {
                  v31 = v29;
                  if ([v31 isEqualToString:v66])
                  {
                    v32 = 4;

                    if (v67 >= 4)
                    {
                      goto LABEL_45;
                    }

LABEL_44:
                    [v70 setISOCountryCode:v30];
                    v67 = v32;
                  }

                  else
                  {
                    if ([v31 isEqualToString:v63])
                    {
                      v32 = 6;

                      if (v67 >= 6)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_44;
                    }

                    if ([v31 isEqualToString:v59])
                    {
                      v32 = 8;

                      if (v67 >= 8)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_44;
                    }

                    if ([v31 isEqualToString:v56])
                    {
                      v32 = 10;
                    }

                    else
                    {
                      v32 = 2;
                    }

                    if (v32 > v67)
                    {
                      goto LABEL_44;
                    }
                  }
                }

LABEL_45:
                v33 = [v23 matchedString];
                if (a2 && [v29 isEqualToString:v65])
                {
                  v34 = [v23 valueForKey:v61];
                  if (v34)
                  {
                    v35 = [v23 range];
                    v36 = [v34 range];
                    v38 = v37;
                    v39 = v36 - v35;
                    v40 = [v33 mutableCopy];
                    v41 = v38;
                    p_info = (&OBJC_METACLASS___DDPreviewAction + 32);
                    [v40 replaceCharactersInRange:v39 withString:{v41, &stru_282C1E0A8}];

                    v33 = v40;
                    a2 = v60;
                  }
                }

                [v70 setValue:v33 forKey:v26];

                v21 = &OBJC_METACLASS___DDPreviewAction.info;
                v18 = v68;
              }
            }

            else
            {
              v51 = Type;
              DDLog();
            }

            if (v18 == ++v22)
            {
              v18 = [obj countByEnumeratingWithState:&v77 objects:v82 count:16];
              if (!v18)
              {
                goto LABEL_51;
              }

              continue;
            }

            goto LABEL_20;
          }
        }

        v71 = 0;
LABEL_51:

        v43 = v70;
        v42 = v70;
LABEL_52:

        v8 = v53;
        v4 = v54;
        v7 = v58;
        v9 = v52;
        v6 = v55;
        if (v42)
        {
          v44 = [v69 dictionaryRepresentation];
          v45 = [v44 mutableCopy];

          v46 = [v42 dictionaryRepresentation];
          [v45 addEntriesFromDictionary:v46];

          v47 = [MEMORY[0x277CBDB60] postalAddressWithDictionaryRepresentation:v45];

          v69 = v47;
        }

        if (v64)
        {
          goto LABEL_55;
        }
      }

LABEL_5:
      v10 = v62 + 1;
    }

    while (v62 + 1 != v6);
    v6 = [v4 countByEnumeratingWithState:&v73 objects:v81 count:16];
    if (v6)
    {
      continue;
    }

    break;
  }

LABEL_55:

  v48 = [v69 ISOCountryCode];
  if (!v48)
  {
LABEL_58:
    v48 = CPPhoneNumberCopyNetworkCountryCode();
    if (!v48)
    {
      v48 = CPPhoneNumberCopyHomeCountryCode();
    }

    if ((a2 & 1) == 0 && v48)
    {
      [v69 setISOCountryCode:v48];
    }
  }

LABEL_63:
  v49 = v69;

  return v69;
}

id DDMapURLForResult(uint64_t a1)
{
  if (a1 && (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0) == kCFCompareEqualTo))
  {
    v3 = DDResultGetMatchedString();
    if ([v3 length])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if ([0 length])
    {
LABEL_4:
      gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v4);
      v6 = [objc_alloc(*(v5 + 3040)) initForAddress:v3 label:0];
      v7 = [v6 buildForDefaultNavigation];
LABEL_5:

      goto LABEL_14;
    }
  }

  if (a1 && DDResultGetCategory() == 1)
  {
    v6 = DDResultCopyExtractedURL();
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (v8)
    {
      v9 = v8;
      v12 = 0;
      if ([(NSURL *)v8 dd_isMaps:&v12 isDirections:?]&& (v12 & 1) == 0)
      {
        v10 = v9;
      }

      else
      {
        v10 = DDMapURLForURL(v9);
      }

      v7 = v10;

      goto LABEL_5;
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

id DDMapURLForURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_24;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (!v5)
  {
    gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
    v7 = [objc_alloc(*(v10 + 3712)) initWithURL:v2];
    [v7 parseIncludingCustomParameters:0];
    v11 = [v7 searchQuery];
    if (v11 || ([v7 addressString], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v12 = [v7 directionsSourceAddressString];
      if (!v12)
      {
        v16 = [v7 directionsDestinationAddressString];

        if (v11)
        {

          if (v16)
          {
            goto LABEL_13;
          }
        }

        else
        {

          if (v16)
          {
            goto LABEL_13;
          }
        }

        v8 = v2;
        goto LABEL_4;
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v5;
      }
    }

LABEL_13:
    v14 = [v7 searchQuery];
    if ([v14 length])
    {
      goto LABEL_20;
    }

    v15 = [v7 addressString];

    if (![v15 length])
    {
      v14 = [v7 directionsDestinationAddressString];

      if ([v14 length])
      {
LABEL_20:
        if ([v14 length])
        {
          v9 = DDMapURLForString(v14);
        }

        else
        {

          v9 = 0;
        }

        goto LABEL_23;
      }

      v15 = [v7 directionsSourceAddressString];
    }

    v14 = v15;
    goto LABEL_20;
  }

  v7 = DDMapAddressFromURL(v2);
  v8 = DDMapURLForString(v7);
LABEL_4:
  v9 = v8;
LABEL_23:

LABEL_24:

  return v9;
}

id DDMapsURLForUrlAndResult(void *a1, uint64_t a2)
{
  v3 = a1;
  if (!v3 && a2)
  {
    v3 = DDMapURLForResult(a2);
    goto LABEL_8;
  }

  if (!v3)
  {
LABEL_8:
    v5 = v3;

    v6 = v5;

    return v6;
  }

  v4 = v3;
  if ([v3 dd_isMaps:1] && DDExtractMapLocationInformationFromURL(v4, 0, 0))
  {
    v3 = v4;
    goto LABEL_8;
  }

  v6 = 0;

  return v6;
}

BOOL DDExtractMapLocationInformationFromURL(void *a1, uint64_t *a2, uint64_t *a3)
{
  v5 = a1;
  v6 = [v5 scheme];
  v7 = [v6 lowercaseString];
  v8 = [v7 isEqualToString:@"geo"];

  if (v8)
  {
    v9 = MEMORY[0x277CCAD18];
    v10 = DDMapAddressFromURL(v5);
    v11 = [v9 queryItemWithName:@"ll" value:v10];
    v12 = 0;

    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if (![v5 dd_isMaps:1])
  {
    v12 = 0;
    v11 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = [MEMORY[0x277CCACE0] componentsWithURL:v5 resolvingAgainstBaseURL:0];
  v14 = [v13 queryItems];
  v15 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"ll"];
  v16 = [v14 filteredArrayUsingPredicate:v15];
  v11 = [v16 firstObject];

  v17 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"q"];
  v18 = [v14 filteredArrayUsingPredicate:v17];
  v12 = [v18 firstObject];

  if (!v12)
  {
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@", @"address"];
    v20 = [v14 filteredArrayUsingPredicate:v19];
    v12 = [v20 firstObject];
  }

  if (a2)
  {
LABEL_10:
    v21 = v11;
    *a2 = v11;
  }

LABEL_11:
  if (a3)
  {
    v22 = v12;
    *a3 = v12;
  }

  return (v11 | v12) != 0;
}

id DDMapURLForString(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v1, "length")}];

  if ([v2 length])
  {
    gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v3);
    v5 = [objc_alloc(*(v4 + 3040)) initForAddress:v2 label:0];
    v6 = [v5 buildForDefaultNavigation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id DDDirectionsURLForResult(uint64_t a1)
{
  if (a1 && (Type = DDResultGetType(), CFStringCompare(Type, *MEMORY[0x277D040E0], 0) == kCFCompareEqualTo))
  {
    v3 = DDResultGetMatchedString();
    if ([v3 length])
    {
      goto LABEL_4;
    }
  }

  else
  {
    v3 = 0;
    if ([0 length])
    {
LABEL_4:
      gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v4);
      v6 = [objc_alloc(*(v5 + 3040)) initForDirectionsTo:v3];
      v7 = [v6 buildForDefaultNavigation];
LABEL_5:

      goto LABEL_14;
    }
  }

  if (a1 && DDResultGetCategory() == 1)
  {
    v6 = DDResultCopyExtractedURL();
    v8 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    if (v8)
    {
      v9 = v8;
      v12 = 0;
      if ([(NSURL *)v8 dd_isMaps:&v12 isDirections:?]&& v12 == 1)
      {
        v10 = v9;
      }

      else
      {
        v10 = DDMapURLForURL(v9);
      }

      v7 = v10;

      goto LABEL_5;
    }

    v7 = 0;
  }

  else
  {
    v7 = 0;
  }

LABEL_14:

  return v7;
}

id DDDirectionsURLForString(void *a1)
{
  v1 = a1;
  v2 = [v1 stringByReplacingOccurrencesOfString:@"(\\s|\\n)+" withString:@" " options:1024 range:{0, objc_msgSend(v1, "length")}];

  if ([v2 length])
  {
    gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(v3);
    v5 = [objc_alloc(*(v4 + 3040)) initForDirectionsTo:v2];
    v6 = [v5 buildForDefaultNavigation];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id DDMapAddressFromURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v11 = 0;
    goto LABEL_22;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (v5)
  {
    v7 = [v2 resourceSpecifier];
    if ([v7 hasPrefix:@"//"])
    {
      if ([v7 length] < 3)
      {
        goto LABEL_20;
      }

      v8 = [v7 substringFromIndex:2];

      v7 = v8;
    }

    if ([v7 hasPrefix:@"?"])
    {
      if ([v7 length] < 2)
      {
        goto LABEL_20;
      }

      v9 = [v7 substringFromIndex:1];

      v7 = v9;
    }

    if ([v7 length])
    {
      v10 = [v7 componentsSeparatedByString:@""];;
      v11 = [v10 firstObject];
LABEL_19:

      goto LABEL_21;
    }

LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
  v7 = [objc_alloc(*(v12 + 3712)) initWithURL:v2];
  [v7 parseIncludingCustomParameters:0];
  v11 = [v7 addressString];
  if (![v11 length])
  {
    v23 = [v7 directionsDestinationAddressString];

    if ([v23 length])
    {
      v11 = v23;
      if ([v23 length])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v11 = [v7 searchQuery];

      if ([v11 length])
      {
        goto LABEL_21;
      }
    }

    goto LABEL_14;
  }

  if (![v11 length])
  {
LABEL_14:
    v24 = 0;
    v25 = 0;
    v13 = DDExtractMapLocationInformationFromURL(v2, &v25, &v24);
    v10 = v25;
    v14 = v24;
    v15 = v14;
    if (v13)
    {
      v16 = [v14 value];
      v17 = [v16 length];

      v18 = v15;
      if (v17 || ([v10 value], v19 = objc_claimAutoreleasedReturnValue(), v20 = objc_msgSend(v19, "length"), v19, v18 = v10, v20))
      {
        v21 = [v18 value];

        v11 = v21;
      }
    }

    goto LABEL_19;
  }

LABEL_21:

LABEL_22:

  return v11;
}

id DDDirectionsURLForURL(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v9 = 0;
    goto LABEL_19;
  }

  v3 = [v1 scheme];
  v4 = [v3 lowercaseString];
  v5 = [v4 isEqualToString:@"geo"];

  if (!v5)
  {
    gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(v6);
    v7 = [objc_alloc(*(v10 + 3712)) initWithURL:v2];
    [v7 parseIncludingCustomParameters:0];
    v11 = [v7 searchQuery];
    if (v11 || ([v7 addressString], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {

      goto LABEL_9;
    }

    v14 = [v7 directionsSourceAddressString];
    if (v14)
    {
    }

    else
    {
      v16 = [v7 directionsDestinationAddressString];

      if (!v16)
      {
LABEL_9:
        v12 = [v7 directionsDestinationAddressString];
        if ([v12 length])
        {
          goto LABEL_15;
        }

        v13 = [v7 addressString];

        if (![v13 length])
        {
          v12 = [v7 directionsSourceAddressString];

          if ([v12 length])
          {
LABEL_15:
            if ([v12 length])
            {
              v9 = DDDirectionsURLForString(v12);
            }

            else
            {

              v9 = 0;
            }

            goto LABEL_18;
          }

          [v7 centerCoordinate];
          if (v17 == -180.0 || ([v7 centerCoordinate], v18 == -180.0))
          {
            v23 = [v7 searchQuery];
          }

          else
          {
            v19 = MEMORY[0x277CCACA8];
            [v7 centerCoordinate];
            v21 = v20;
            [v7 centerCoordinate];
            v23 = [v19 stringWithFormat:@"%f, %f", v21, v22];
          }

          v13 = v23;
        }

        v12 = v13;
        goto LABEL_15;
      }
    }

    v8 = v2;
    goto LABEL_4;
  }

  v7 = DDMapAddressFromURL(v2);
  v8 = DDDirectionsURLForString(v7);
LABEL_4:
  v9 = v8;
LABEL_18:

LABEL_19:

  return v9;
}

id DDMapAddressFromResult(void *a1)
{
  if (a1)
  {
    Type = DDResultGetType();
    if (CFStringCompare(Type, *MEMORY[0x277D040E0], 0))
    {
      a1 = 0;
    }

    else
    {
      a1 = DDResultGetMatchedString();
    }

    v1 = vars8;
  }

  return a1;
}

const void *DDCreateUpdatedResultWithContext(const void *Copy, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!Copy)
  {
    goto LABEL_25;
  }

  if (!DDResultHasType())
  {
    Copy = 0;
    goto LABEL_25;
  }

  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = copyAssociatedResultsFromResultWithContext(Copy, v3, 0);
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (!v5)
  {
LABEL_23:
    Copy = 0;
    goto LABEL_24;
  }

  v6 = v5;
  v7 = *v25;
LABEL_6:
  v8 = 0;
  while (1)
  {
    if (*v25 != v7)
    {
      objc_enumerationMutation(v4);
    }

    if (!DDResultHasType())
    {
      goto LABEL_7;
    }

    Range = DDResultGetRange();
    v11 = v10;
    v12 = DDResultGetRange();
    if ((v12 - (Range + v11)) >= 0x32 && (Range - v12 + v13) > 0x31)
    {
      goto LABEL_7;
    }

    if (!DDAddressResultCanBeMergedWith())
    {
      goto LABEL_7;
    }

    Copy = DDResultCreateCopy();
    if (!Copy)
    {
      goto LABEL_7;
    }

    SubResults = DDResultGetSubResults();
    if (SubResults)
    {
      break;
    }

    CFRelease(Copy);
LABEL_7:
    if (v6 == ++v8)
    {
      v6 = [v4 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_6;
    }
  }

  v15 = SubResults;
  Count = CFArrayGetCount(SubResults);
  if (Count >= 1)
  {
    v17 = Count;
    for (i = 0; i != v17; ++i)
    {
      CFArrayGetValueAtIndex(v15, i);
      DDResultAddSubresultSorted();
    }
  }

  MatchedString = DDResultGetMatchedString();
  v20 = DDResultGetMatchedString();
  v21 = CFStringCreateWithFormat(0, 0, @"%@, %@", MatchedString, v20, v24);
  if (v21)
  {
    v22 = v21;
    DDResultSetMatchedString();
    CFRelease(v22);
  }

LABEL_24:

LABEL_25:
  return Copy;
}

CFTypeRef copyAssociatedResultsFromResultWithContext(CFTypeRef a1, void *a2, void *a3)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = [v5 objectForKey:@"GroupAllResultsKey"];
    if (v7)
    {
      v8 = v7;
      if ([v7 count])
      {
        v9 = [v8 sortedArrayUsingFunction:_DDScannerResultProximitySort context:a1];
        if (!a3)
        {
LABEL_6:
          a1 = copyCoreResultsArray(v9);

          goto LABEL_22;
        }
      }

      else
      {
        v17 = [MEMORY[0x277D04218] resultFromCoreResult:a1];
        v31[0] = v17;
        v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];

        if (!a3)
        {
          goto LABEL_6;
        }
      }

      v10 = v9;
      *a3 = v9;
      goto LABEL_6;
    }

    v11 = [v6 objectForKey:@"AllResults"];
    if (!v11)
    {
      v18 = [v6 objectForKey:@"TextStorage"];
      if (v18)
      {
        v12 = v18;
        v19 = [MEMORY[0x277CCA8D8] mainBundle];
        v20 = [v19 bundleIdentifier];
        if ([v20 isEqualToString:@"com.apple.MobileSMS"])
        {
          v21 = 2000;
        }

        else
        {
          v21 = 50;
        }

        RangeForURLification = DDResultGetRangeForURLification();
        v24 = v23;
        v25 = [v6 objectForKeyedSubscript:@"ReferenceDate"];
        v26 = findNearbyResultsInTextStorage(v12, RangeForURLification, v24, v21, (4 * v21), v25);
        a1 = CFRetain(v26);

LABEL_21:
        goto LABEL_22;
      }

      v30 = a1;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      if (!v11)
      {
        a1 = 0;
        goto LABEL_22;
      }
    }

    v12 = v11;
    v13 = [v11 count];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      while (1)
      {
        v16 = [v12 objectAtIndex:v15];

        if (v16 == a1)
        {
          break;
        }

        if (v14 == ++v15)
        {
          goto LABEL_12;
        }
      }

      v27 = [v6 objectForKeyedSubscript:@"ReferenceDate"];
      v28 = findNearbyResultsInArray(v12, v15, 50, 200, v27);
      a1 = CFRetain(v28);
    }

    else
    {
LABEL_12:
      a1 = 0;
    }

    goto LABEL_21;
  }

LABEL_22:

  return a1;
}

void *DDUIRecordOtherActionInSheetForResultIfNeeded(void *result)
{
  if (result)
  {
    result = DDResultGetCategory();
    v5 = 0;
    if (result == 4)
    {
      result = DDTrackEventCreationInHostApplication(&v5);
      if (result)
      {
        if (v5 == 1)
        {
          v1 = 2;
        }

        else
        {
          v1 = 3;
        }

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          DDUIRecordOtherActionInSheetForResultIfNeeded_cold_1();
        }

        Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics = gotLoadHelper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics(v2);
        return [*(v4 + 96) recordUserInteraction:2 withLinkInApplication:v1 eventPrefillMode:0 eventTypeClassification:0 proposedEvent:0 confirmedEvent:{0, Helper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics}];
      }
    }
  }

  return result;
}

void *copyCoreResultsArray(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if (v1)
  {
    v2 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = v1;
    v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v2 addObject:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "coreResult", v9)}];
        }

        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _DDScannerResultProximitySort(void *a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [a1 coreResult];
  v7 = [v5 coreResult];

  return MEMORY[0x2821599E0](v6, v7, a3);
}

id _eventTitleFromCache(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"event"];
  v3 = [v2 title];
  if (v3)
  {
    v4 = v3;
LABEL_4:
    v6 = [MEMORY[0x277CCA900] newlineCharacterSet];
    v7 = [v4 componentsSeparatedByCharactersInSet:v6];
    v8 = [v7 firstObject];
    v9 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
    v10 = [v8 stringByTrimmingCharactersInSet:v9];

    goto LABEL_5;
  }

  v5 = [v1 objectForKeyedSubscript:@"icsEvent"];
  v4 = [v5 summary];

  if (v4)
  {
    goto LABEL_4;
  }

  v10 = 0;
LABEL_5:

  return v10;
}

id _eventStartDateFromCache(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"event"];
  v3 = [v2 startDate];
  if (!v3)
  {
    v4 = [v1 objectForKeyedSubscript:@"icsEvent"];
    v5 = [v4 dtstart];
    v6 = [v5 components];

    if (v6)
    {
      v7 = [v6 calendar];
      v8 = v7;
      if (v7)
      {
        v3 = [v7 dateFromComponents:v6];
      }

      else
      {
        v10 = [MEMORY[0x277CBEA80] currentCalendar];
        v3 = [v10 dateFromComponents:v6];
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_21ABA718C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_21ABA71F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  objc_destroyWeak(va);
  objc_destroyWeak((v24 - 112));
  _Unwind_Resume(a1);
}

id selectDefaultAction(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 || !v4 || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7 = v5, (isKindOfClass & 1) != 0))
  {
    v7 = v3;
  }

  v8 = v7;

  return v8;
}

void sub_21ABA9638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAA6F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id location)
{
  objc_destroyWeak(&a54);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21ABAB054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB0E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAB118(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id DDUIAugmentedContextForEvent(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (![v5 count])
  {
    v17 = v6;
    goto LABEL_28;
  }

  v8 = _DDUIEventGetComponents(v5, v6, v7);
  v9 = v8;
  v28 = 1;
  if (v8)
  {
    v10 = [v8 title];
    v11 = [v10 length];

    if (v11)
    {
      v12 = [v9 title];
      v13 = [v9 startDate];

      if (v13)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = 0;
      v13 = [v9 startDate];

      if (v13)
      {
LABEL_5:
        v28 = 0;
        v14 = [v9 startDate];
        v15 = [v9 endDate];
        v16 = [v9 startDate];
        if (v16)
        {
          goto LABEL_17;
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = [v9 startDate];
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_12:
    v20 = v16;
    [v9 duration];
    if (v21 <= 0.0)
    {
      v16 = v20;
    }

    else
    {
      if (!v13)
      {
        goto LABEL_18;
      }

      [v9 duration];
      v22 = [v14 dateByAddingTimeInterval:?];
      v16 = v15;
      v15 = v22;
    }

LABEL_17:

LABEL_18:
    v24 = [v9 source];
    if ((v24 - 1) > 3)
    {
      v19 = 0;
      v17 = [v6 mutableCopy];
      if (v14)
      {
LABEL_20:
        [v17 setObject:v14 forKey:@"EventStartDate"];
        if (!v15)
        {
          goto LABEL_25;
        }

LABEL_24:
        [v17 setObject:v15 forKey:@"EventEndDate"];
        goto LABEL_25;
      }
    }

    else
    {
      v19 = qword_21ABCD6D8[v24 - 1];
      v17 = [v6 mutableCopy];
      if (v14)
      {
        goto LABEL_20;
      }
    }

    if (!v15)
    {
      v23 = v14;
      if (!v12)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v14 = dd_beginDateOfEventResultsRespectingSpecificEndDates(v5, 1, v6, &v28, 0);
  v18 = [v6 mutableCopy];
  v17 = v18;
  if (!v14)
  {
    v12 = 0;
    v23 = 0;
    v19 = 0;
    goto LABEL_27;
  }

  [v18 setObject:v14 forKey:@"EventStartDate"];
  v19 = 0;
  v15 = 0;
  v12 = 0;
LABEL_25:
  v23 = v14;
  v25 = [MEMORY[0x277CCABB0] numberWithBool:v28 != 0];
  [v17 setObject:v25 forKey:@"EventIsAllDay"];

  v14 = v15;
  if (v12)
  {
LABEL_26:
    [v17 setObject:v12 forKey:@"EventTitle"];
  }

LABEL_27:
  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v19];
  [v17 setObject:v26 forKey:@"PrefillMode"];

LABEL_28:

  return v17;
}

id _DDUIEventGetComponents(void *a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = objc_alloc_init(DDActionSuggestionsContext);
  v9 = [v6 objectForKey:@"CoreSpotlightUniqueIdentifier"];
  [(DDActionSuggestionsContext *)v8 setCoreSpotlightUniqueIdentifier:v9];

  [(DDActionSuggestionsContext *)v8 setBundleIdentifier:v5];
  v10 = objc_alloc_init(DDActionNaturalLanguageContext);
  v11 = [v6 objectForKey:@"LeadingText"];
  [(DDActionNaturalLanguageContext *)v10 setLeadingText:v11];

  v12 = [v6 objectForKey:@"TrailingText"];
  [(DDActionNaturalLanguageContext *)v10 setTrailingText:v12];

  v13 = [v7 firstObject];
  [(DDActionNaturalLanguageContext *)v10 setResult:v13];

  [(DDActionNaturalLanguageContext *)v10 setAssociatedResults:v7];
  [(DDActionNaturalLanguageContext *)v10 setBundleIdentifier:v5];

  v14 = [v7 firstObject];

  v15 = [DDEventComponents bestEventComponentsForResult:v14 withNaturalLanguageContext:v10 suggestionsContext:v8 context:v6];

  return v15;
}

id DDUISuggestedEventForResults(void *a1, void *a2, void *a3, void *a4, uint64_t *a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  if (![v12 count])
  {
    v19 = 0;
    goto LABEL_40;
  }

  v15 = _DDUIEventGetComponents(v12, v13, v14);
  if (v15)
  {
    v46 = a6;
    Helper_x8__OBJC_CLASS___EKEvent = gotLoadHelper_x8__OBJC_CLASS___EKEvent(v16);
    v19 = [*(v18 + 2600) eventWithEventStore:{v11, Helper_x8__OBJC_CLASS___EKEvent}];
    v20 = [v15 title];
    if (v20)
    {
      v21 = v20;
      v22 = [v15 title];
      v23 = [v22 length];

      if (v23)
      {
        v24 = [v15 title];
        [v19 setTitle:v24];
      }
    }

    v25 = [v15 notes];
    if (v25)
    {
      v26 = v25;
      v27 = [v15 notes];
      v28 = [v27 length];

      if (v28)
      {
        v29 = [v15 notes];
        [v19 setNotes:v29];
      }
    }

    v30 = [v15 URL];

    if (v30)
    {
      v31 = [v15 URL];
      [v19 setURL:v31];
    }

    v32 = [v15 location];

    if (v32)
    {
      v33 = [v15 location];
      [v19 setLocation:v33];
    }

    v34 = [v15 structuredLocation];

    if (v34)
    {
      v35 = [v15 structuredLocation];
      [v19 setStructuredLocation:v35];
    }

    v36 = [v15 startDate];

    if (v36)
    {
      [v19 setAllDay:0];
      v37 = [v15 startDate];
      [v19 setStartDate:v37];

      v38 = [v15 endDate];
      [v19 setEndDate:v38];
    }

    v39 = [v15 startDate];
    if (!v39)
    {
      [v15 duration];
      if (v40 > 0.0)
      {
        if ([v19 isAllDay])
        {
          goto LABEL_22;
        }

        v39 = [v19 startDate];
        [v15 duration];
        v41 = [v39 dateByAddingTimeInterval:?];
        [v19 setEndDate:v41];
      }
    }

LABEL_22:
    if ([v15 source] == 1)
    {
      v42 = v46;
      if (!a5)
      {
        goto LABEL_37;
      }

      v43 = 2;
    }

    else
    {
      v42 = v46;
      if ([v15 source] == 2)
      {
        if (!a5)
        {
          goto LABEL_37;
        }

        v43 = 1;
      }

      else if ([v15 source] == 3)
      {
        if (!a5)
        {
          goto LABEL_37;
        }

        v43 = 4;
      }

      else
      {
        v44 = [v15 source];
        if (!a5 || v44 != 4)
        {
LABEL_37:
          if (v42)
          {
            *v42 = [v15 eventTypeIdentifier];
          }

          goto LABEL_39;
        }

        v43 = 3;
      }
    }

    *a5 = v43;
    goto LABEL_37;
  }

  v19 = 0;
LABEL_39:

LABEL_40:

  return v19;
}

id DDUIEventForResults(void *a1, void *a2, void *a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v65 = [v7 objectForKeyedSubscript:@"ICS"];
  if (v65)
  {
    v9 = [v7 objectForKeyedSubscript:@"NotificationStyle"];
    if ([v9 BOOLValue])
    {

      goto LABEL_5;
    }

    v10 = [MEMORY[0x277CCA8D8] mainBundle];
    v11 = [v10 bundleIdentifier];
    v12 = [v11 isEqualToString:@"com.apple.BarcodeSupport.BarcodeNotificationService"];

    if (v12)
    {
LABEL_5:
      v13 = [v65 dataUsingEncoding:4];
      v14 = [v5 importICSData:v13 intoCalendar:0 options:0];
      v15 = [v14 firstObject];

      if (v15)
      {
        goto LABEL_11;
      }
    }
  }

  Helper_x8__OBJC_CLASS___EKEvent = gotLoadHelper_x8__OBJC_CLASS___EKEvent(v8);
  v15 = [*(v17 + 2600) eventWithEventStore:{v5, Helper_x8__OBJC_CLASS___EKEvent}];
  if (v15 && [v6 count])
  {
    LOBYTE(cf) = 0;
    v83 = 0;
    v18 = dd_beginDateOfEventResultsRespectingSpecificEndDates(v6, 1, v7, &cf, &v83);
    v19 = v83;
    if (!v19)
    {
      v19 = [v18 dateByAddingTimeInterval:3600.0];
    }

    [v15 setStartDate:v18];
    [v15 setEndDate:v19];
    [v15 setAllDay:cf != 0];
  }

LABEL_11:
  v20 = [v7 objectForKey:@"EventTitle"];
  v21 = [v15 title];
  if ([v21 length])
  {
  }

  else
  {
    v22 = [v20 length];

    if (v22)
    {
      [v15 setTitle:v20];
    }
  }

  if ([v6 count])
  {
    v23 = [v6 objectAtIndex:0];
    v24 = [v6 sortedArrayUsingFunction:MEMORY[0x277D041E0] context:v23];
  }

  else
  {
    v24 = 0;
  }

  v63 = v6;
  v25 = [v15 URL];

  v68 = v15;
  v64 = v5;
  v66 = v7;
  v62 = v20;
  if (v25)
  {
    v26 = 0;
    goto LABEL_69;
  }

  v27 = [v7 objectForKey:@"SpecialURL"];
  if (!v27)
  {
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v60 = v24;
    v30 = v24;
    v31 = [v30 countByEnumeratingWithState:&v79 objects:v86 count:16];
    if (v31)
    {
      v32 = v31;
      v28 = 0;
      v33 = *v80;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v80 != v33)
          {
            objc_enumerationMutation(v30);
          }

          if ((DDResultHasType() & 1) != 0 || (DDResultHasType() & 1) != 0 || DDResultHasType())
          {
            v36 = DDResultCopyExtractedURLWithOptions();
            if (v36)
            {
              v35 = [MEMORY[0x277CBEBC0] URLWithString:v36];

              if (v35)
              {
                v37 = [v35 scheme];
                v38 = [v37 lowercaseString];

                if (dd_schemeIsHttp(v38) & 1) != 0 || (dd_isAnySimpleTelephonyScheme(v35) & 1) != 0 || ([v38 isEqualToString:@"sip"])
                {
                  [v68 setURL:v35];

                  v15 = v68;
                  v28 = v35;
                  goto LABEL_44;
                }
              }
            }

            else
            {
              v35 = v28;
            }

            v28 = v35;
            v15 = v68;
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v79 objects:v86 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v28 = 0;
    }

LABEL_44:

    v24 = v60;
    v39 = [v15 URL];

    if (v39)
    {
      goto LABEL_22;
    }

LABEL_45:
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v40 = v24;
    v41 = [v40 countByEnumeratingWithState:&v75 objects:v85 count:16];
    if (v41)
    {
      v42 = v41;
      v61 = v24;
      v43 = *v76;
      while (2)
      {
        for (j = 0; j != v42; ++j)
        {
          if (*v76 != v43)
          {
            objc_enumerationMutation(v40);
          }

          v26 = *(*(&v75 + 1) + 8 * j);
          if (DDResultHasType())
          {
            v73 = 0;
            cf = 0;
            DDResultCopyPhoneValue();
            if (cf)
            {
              if (([cf containsString:{@", "}] & 1) != 0 || objc_msgSend(cf, "containsString:", @";"))
              {
                v45 = DDResultCopyExtractedURLWithOptions();
                if (v45)
                {
                  v46 = [MEMORY[0x277CBEBC0] URLWithString:v45];

                  if (v46)
                  {
                    [v68 setURL:v46];

                    v28 = v46;
                    goto LABEL_66;
                  }

                  v28 = 0;
                }
              }

              if (cf)
              {
                CFRelease(cf);
              }
            }
          }
        }

        v42 = [v40 countByEnumeratingWithState:&v75 objects:v85 count:16];
        if (v42)
        {
          continue;
        }

        break;
      }

      v26 = 0;
LABEL_66:
      v24 = v61;
    }

    else
    {
      v26 = 0;
    }

    v15 = v68;
    goto LABEL_68;
  }

  v28 = v27;
  [v15 setURL:v27];
  v29 = [v15 URL];

  if (!v29)
  {
    goto LABEL_45;
  }

LABEL_22:
  v26 = 0;
LABEL_68:

LABEL_69:
  v67 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v47 = v24;
  v48 = [v47 countByEnumeratingWithState:&v69 objects:v84 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v70;
    v51 = *MEMORY[0x277D040E0];
    do
    {
      for (k = 0; k != v49; ++k)
      {
        if (*v70 != v50)
        {
          objc_enumerationMutation(v47);
        }

        if (*(*(&v69 + 1) + 8 * k) != v26)
        {
          v53 = [v15 location];
          if ([v53 length])
          {
          }

          else
          {
            Type = DDResultGetType();
            v55 = CFStringCompare(Type, v51, 0);

            if (v55 == kCFCompareEqualTo)
            {
              v15 = v68;
              [v68 setLocation:DDResultGetMatchedString()];
              continue;
            }
          }

          v15 = v68;
          if (DDResultHasType())
          {
            cf = 0;
            DDResultCopyPhoneValue();
            if (cf)
            {
              [v67 addObject:?];
              CFRelease(cf);
            }
          }
        }
      }

      v49 = [v47 countByEnumeratingWithState:&v69 objects:v84 count:16];
    }

    while (v49);
  }

  v56 = [v66 objectForKey:@"SelectedText"];
  if (v56)
  {
    [v67 addObject:v56];
  }

  v57 = [v15 notes];
  if (!v57)
  {
    if (![v67 count])
    {
      goto LABEL_90;
    }

    v58 = [v67 componentsJoinedByString:@"\n"];
    [v15 setNotes:v58];
    v57 = v58;
  }

LABEL_90:

  return v15;
}

BOOL dd_CalendarIsTitleGenerationUsed(void *a1)
{
  v1 = [a1 objectForKey:@"PrefillMode"];
  v2 = [v1 unsignedIntegerValue];

  return (v2 - 3) < 2;
}

id DDOnDeviceSupportActionWithBrand(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  v6 = [MEMORY[0x277D75418] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v8 = 0;
  if (v4 && !v7)
  {
    if ([v4 brandType] == 3)
    {
      v8 = [(DDAction *)DDSupportFlowAction actionWithURL:0 result:0 context:v5];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, va, 0x16u);
}

void sub_21ABAFF98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAFFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAFFC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAFFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABAFFFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0DF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB0E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB10E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB14E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1560(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB1578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21ABB73C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABB73DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21ABB7FC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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
  _Block_object_dispose((v18 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21ABB82E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21ABB9948(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 168), 8);
  _Block_object_dispose((v1 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_21ABBA49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21ABBA4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL stringContainsEmoji(void *a1)
{
  v1 = a1;
  if (v1 && (v2 = CTFontCreateWithName(@"AppleColorEmoji", 0.0, 0)) != 0)
  {
    v3 = v2;
    v4 = CTFontCopyCharacterSet(v2);
    if (v4)
    {
      v5 = v4;
      MutableCopy = CFCharacterSetCreateMutableCopy(*MEMORY[0x277CBECE8], v4);
      if (MutableCopy)
      {
        v7 = MutableCopy;
        CFCharacterSetRemoveCharactersInString(MutableCopy, @" 0123456789#*");
        v10.length = [(__CFString *)v1 length];
        v10.location = 0;
        v8 = CFStringFindCharacterFromSet(v1, v7, v10, 0, 0) == 1;
        CFRelease(v7);
      }

      else
      {
        v8 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_21ABBB600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_21ABBBEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21ABC66B4();
  sub_21ABC66A4();
  sub_21ABC6694();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(a1 + 24);

    v8 = sub_21ABBC674(v6, v7);
    v6(v8);
    sub_21ABBC684(v6, v7);
    v9 = *(a1 + 16);
  }

  else
  {

    v9 = 0;
  }

  v10 = *(a1 + 24);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_21ABBC684(v9, v10);
}

uint64_t sub_21ABBC0C0()
{
  sub_21ABBC684(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

id DDSupportFlowViewControllerContainer.__allocating_init(_:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_21ABBC4A0(a1, a2);

  return v6;
}

id DDSupportFlowViewControllerContainer.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_21ABBC4A0(a1, a2);

  return v2;
}

id DDSupportFlowViewControllerContainer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DDSupportFlowViewControllerContainer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DDSupportFlowViewControllerContainer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_21ABBC4A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD32800, &qword_21ABCD788);
  MEMORY[0x28223BE20]();
  v7 = &v13 - v6;
  type metadata accessor for DDSupportFlowViewControllerDelegate();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = sub_21ABC6684();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  objc_allocWithZone(sub_21ABC6674());

  v10 = sub_21ABC6654();

  sub_21ABC6664();
  *&v3[OBJC_IVAR____TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer_controller] = v10;
  *&v3[OBJC_IVAR____TtC15DataDetectorsUI36DDSupportFlowViewControllerContainer_delegate] = v8;
  v11 = type metadata accessor for DDSupportFlowViewControllerContainer();
  v13.receiver = v3;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t sub_21ABBC674(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21ABBC684(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
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

void actionSheetTitleForResult_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *_DDEventSanitizedString(NSString *__strong)"];
  v4 = [a1 localizedDescription];
  [v2 handleFailureInFunction:v3 file:@"DDUIUtils.m" lineNumber:221 description:v4];
}

void actionSheetTitleForResult_cold_2()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *actionSheetTitleForResult(DDResultRef)"];
  [v1 handleFailureInFunction:v0 file:@"DDUIUtils.m" lineNumber:292 description:@"Attempting to determine title for result that is nil."];
}

void actionSheetTitleForURL_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *actionSheetTitleForURL(NSURL *__strong)"];
  [v1 handleFailureInFunction:v0 file:@"DDUIUtils.m" lineNumber:395 description:@"Attempting to determine title for url that is nil."];
}

void applicationWithBundleIdentifierIsRestricted_cold_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138412802;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  v7 = 2112;
  v8 = a3;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Application proxy for bundle identifier %@ is nil (errors %@ -- %@).", &v3, 0x20u);
}

void DDUILogAssertionFailure_cold_2(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138412290;
  v2 = a1;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%@", &v1, 0xCu);
}

void DDMergeContactIntoContact_cold_1(uint8_t *buf, uint64_t a2, void *a3)
{
  *buf = 138412290;
  *a3 = a2;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "unknown key: %@", buf, 0xCu);
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t SBSRequestPasscodeUnlockUI_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_SpringBoardServices))
  {
    dlopenHelper_SpringBoardServices(a1);
  }

  return MEMORY[0x2821CD708]();
}

double gotLoadHelper_x8__BSBrandServiceTypeOnDeviceSupport(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessServices))
  {
    return dlopenHelper_BusinessServices(result);
  }

  return result;
}

double gotLoadHelper_x8__IDSServiceNameFaceTime(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    return dlopenHelper_IDS(result);
  }

  return result;
}

double gotLoadHelper_x8__IPMessageTypeEmail(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x9__IPMessageTypeShortMessage(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APApplication(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtection))
  {
    return dlopenHelper_AppProtection(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APBaseExtensionShieldView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtectionUI))
  {
    return dlopenHelper_AppProtectionUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___APGuard(double result)
{
  if (!atomic_load(&dlopenHelperFlag_AppProtection))
  {
    return dlopenHelper_AppProtection(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BCError(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessChat))
  {
    return dlopenHelper_BusinessChat(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BCSBusinessQueryService(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessChatService))
  {
    return dlopenHelper_BusinessChatService(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___BSBrandManager(double result)
{
  if (!atomic_load(&dlopenHelperFlag_BusinessServices))
  {
    return dlopenHelper_BusinessServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CNContactContentViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_ContactsUI))
  {
    return dlopenHelper_ContactsUI(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CSSearchableItem(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSpotlight))
  {
    return dlopenHelper_CoreSpotlight(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CSSearchableItemAttributeSet(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSpotlight))
  {
    return dlopenHelper_CoreSpotlight(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___CUIKOccurrencesCollection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CalendarUIKit))
  {
    return dlopenHelper_CalendarUIKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKAttendee(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKEvent(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

void gotLoadHelper_x21__OBJC_CLASS___EKEventStore(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    dlopenHelper_EventKit(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___EKEventStore(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___EKStructuredLocation(double result)
{
  if (!atomic_load(&dlopenHelperFlag_EventKit))
  {
    return dlopenHelper_EventKit(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___FUFlightViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_FlightUtilities))
  {
    return dlopenHelper_FlightUtilities(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___GEOMapURLBuilder(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ICSDocument(double result)
{
  if (!atomic_load(&dlopenHelperFlag_iCalendar))
  {
    return dlopenHelper_iCalendar(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IDSServiceAvailabilityController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    return dlopenHelper_IDS(result);
  }

  return result;
}

void gotLoadHelper_x22__OBJC_CLASS___IDSServiceAvailabilityController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_IDS))
  {
    dlopenHelper_IDS(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___IPEventClassificationType(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IPMessage(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___IPMessageUnit(double result)
{
  if (!atomic_load(&dlopenHelperFlag_DataDetectorsNaturalLanguage))
  {
    return dlopenHelper_DataDetectorsNaturalLanguage(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ISIcon(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IconServices))
  {
    return dlopenHelper_IconServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___ISImageDescriptor(double result)
{
  if (!atomic_load(&dlopenHelperFlag_IconServices))
  {
    return dlopenHelper_IconServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPLinkView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___LPMetadataProvider(double result)
{
  if (!atomic_load(&dlopenHelperFlag_LinkPresentation))
  {
    return dlopenHelper_LinkPresentation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___MFMessageComposeViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_MessageUI))
  {
    return dlopenHelper_MessageUI(result);
  }

  return result;
}

void gotLoadHelper_x20__OBJC_CLASS___NSSNewsViewController(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_NewsServices))
  {
    dlopenHelper_NewsServices(a1);
  }
}

double gotLoadHelper_x8__OBJC_CLASS___NSSNewsViewController(double result)
{
  if (!atomic_load(&dlopenHelperFlag_NewsServices))
  {
    return dlopenHelper_NewsServices(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PARSession(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___PARSessionConfiguration(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SFLookupHintRelevancyFeedback(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SearchFoundation))
  {
    return dlopenHelper_SearchFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SFResultSection(double result)
{
  if (!atomic_load(&dlopenHelperFlag_SearchFoundation))
  {
    return dlopenHelper_SearchFoundation(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SGNLEventSuggestionsMetrics(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSuggestions))
  {
    return dlopenHelper_CoreSuggestions(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS___SGSuggestionsService(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreSuggestions))
  {
    return dlopenHelper_CoreSuggestions(result);
  }

  return result;
}

double gotLoadHelper_x8__OBJC_CLASS____GEOMapURLParser(double result)
{
  if (!atomic_load(&dlopenHelperFlag_GeoServices))
  {
    return dlopenHelper_GeoServices(result);
  }

  return result;
}

double gotLoadHelper_x8__kPARLookupClient(double result)
{
  if (!atomic_load(&dlopenHelperFlag_CoreParsec))
  {
    return dlopenHelper_CoreParsec(result);
  }

  return result;
}

double dlopenHelper_BusinessChat(double a1)
{
  dlopen("/System/Library/Frameworks/BusinessChat.framework/BusinessChat", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessChat);
  return a1;
}

double dlopenHelper_ContactsUI(double a1)
{
  dlopen("/System/Library/Frameworks/ContactsUI.framework/ContactsUI", 0);
  atomic_store(1u, &dlopenHelperFlag_ContactsUI);
  return a1;
}

double dlopenHelper_CoreSpotlight(double a1)
{
  dlopen("/System/Library/Frameworks/CoreSpotlight.framework/CoreSpotlight", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreSpotlight);
  return a1;
}

double dlopenHelper_EventKit(double a1)
{
  dlopen("/System/Library/Frameworks/EventKit.framework/EventKit", 0);
  atomic_store(1u, &dlopenHelperFlag_EventKit);
  return a1;
}

double dlopenHelper_LinkPresentation(double a1)
{
  dlopen("/System/Library/Frameworks/LinkPresentation.framework/LinkPresentation", 0);
  atomic_store(1u, &dlopenHelperFlag_LinkPresentation);
  return a1;
}

double dlopenHelper_MessageUI(double a1)
{
  dlopen("/System/Library/Frameworks/MessageUI.framework/MessageUI", 0);
  atomic_store(1u, &dlopenHelperFlag_MessageUI);
  return a1;
}

double dlopenHelper_AppProtection(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppProtection.framework/AppProtection", 0);
  atomic_store(1u, &dlopenHelperFlag_AppProtection);
  return a1;
}

double dlopenHelper_AppProtectionUI(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/AppProtectionUI.framework/AppProtectionUI", 0);
  atomic_store(1u, &dlopenHelperFlag_AppProtectionUI);
  return a1;
}

double dlopenHelper_BusinessChatService(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BusinessChatService.framework/BusinessChatService", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessChatService);
  return a1;
}

double dlopenHelper_BusinessServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/BusinessServices.framework/BusinessServices", 0);
  atomic_store(1u, &dlopenHelperFlag_BusinessServices);
  return a1;
}

double dlopenHelper_CalendarUIKit(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CalendarUIKit.framework/CalendarUIKit", 0);
  atomic_store(1u, &dlopenHelperFlag_CalendarUIKit);
  return a1;
}

double dlopenHelper_CoreParsec(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreParsec.framework/CoreParsec", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreParsec);
  return a1;
}

double dlopenHelper_CoreSuggestions(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CoreSuggestions.framework/CoreSuggestions", 0);
  atomic_store(1u, &dlopenHelperFlag_CoreSuggestions);
  return a1;
}

double dlopenHelper_DataDetectorsNaturalLanguage(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/DataDetectorsNaturalLanguage.framework/DataDetectorsNaturalLanguage", 0);
  atomic_store(1u, &dlopenHelperFlag_DataDetectorsNaturalLanguage);
  return a1;
}

double dlopenHelper_FlightUtilities(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/FlightUtilities.framework/FlightUtilities", 0);
  atomic_store(1u, &dlopenHelperFlag_FlightUtilities);
  return a1;
}

double dlopenHelper_GeoServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/GeoServices.framework/GeoServices", 0);
  atomic_store(1u, &dlopenHelperFlag_GeoServices);
  return a1;
}

double dlopenHelper_IDS(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/IDS.framework/IDS", 0);
  atomic_store(1u, &dlopenHelperFlag_IDS);
  return a1;
}

double dlopenHelper_IconServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 0);
  atomic_store(1u, &dlopenHelperFlag_IconServices);
  return a1;
}

double dlopenHelper_NewsServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NewsServices.framework/NewsServices", 0);
  atomic_store(1u, &dlopenHelperFlag_NewsServices);
  return a1;
}

double dlopenHelper_SearchFoundation(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SearchFoundation.framework/SearchFoundation", 0);
  atomic_store(1u, &dlopenHelperFlag_SearchFoundation);
  return a1;
}

double dlopenHelper_SpringBoardServices(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 0);
  atomic_store(1u, &dlopenHelperFlag_SpringBoardServices);
  return a1;
}

double dlopenHelper_iCalendar(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/iCalendar.framework/iCalendar", 0);
  atomic_store(1u, &dlopenHelperFlag_iCalendar);
  return a1;
}