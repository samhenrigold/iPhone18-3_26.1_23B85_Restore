id QLLocalizedStringFromTable(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = QLFrameworkBundle();
  v6 = [v5 localizedStringForKey:v4 value:&stru_2873E9F50 table:v3];

  return v6;
}

id QLLocalizedStringWithDefaultValue(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = a1;
  v7 = QLFrameworkBundle();
  v8 = [v7 localizedStringForKey:v6 value:v5 table:@"Localizable"];

  return v8;
}

void QLRunInMainThread(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLRunInMainThread_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void QLRunInMainThreadSync(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLRunInMainThreadSync_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    block[2]();
  }

  else
  {
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }
}

void QLRunInBackgroundThread(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    QLRunInBackgroundThread_cold_1();
  }

  block = v1;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v2 = dispatch_get_global_queue(0, 0);
    dispatch_async(v2, block);
  }

  else
  {
    block[2]();
  }
}

void sub_26165A43C(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_26165AFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id QLSLogHandle()
{
  v0 = MEMORY[0x277D43EF8];
  v1 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v1 = *v0;
  }

  return v1;
}

void sub_26165D1B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  if (a2 == 1)
  {
    v18 = objc_begin_catch(exception_object);
    v19 = QLSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *(v17 - 128) = 138412546;
      *(v16 + 4) = a16;
      *(v17 - 116) = 2112;
      *(v16 + 14) = v18;
      _os_log_impl(&dword_261653000, v19, OS_LOG_TYPE_DEFAULT, "Exception during preview computation of %@: %@ #Generic", (v17 - 128), 0x16u);
    }

    objc_end_catch();
    JUMPOUT(0x26165CB34);
  }

  _Unwind_Resume(exception_object);
}

void QLPreviewRequestSetDataRepresentation(QLPreviewRequestRef preview, CFDataRef data, CFStringRef contentTypeUTI, CFDictionaryRef properties)
{
  [(__QLPreviewRequest *)preview startDataRepresentationWithContentType:contentTypeUTI properties:properties];

  [(__QLPreviewRequest *)preview appendData:data forURL:0 lastChunk:1];
}

CFTypeRef QLPreviewRequestCreateAttachmentURL(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = [a1 newAttachmentURLWithID:a2 properties:a3];
  v4 = v3;
  if (v3)
  {
    v5 = CFRetain(v3);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void sub_26165EE60(_Unwind_Exception *a1)
{
  objc_destroyWeak(v1);
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t QLPreviewControllerSupportsContentType(void *a1)
{
  v1 = a1;
  v2 = +[QLItem supportedContentTypes];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (v1)
  {
    v3 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v1];
    if ([v2 containsObject:v3])
    {
      v4 = 1;
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __QLPreviewControllerSupportsContentType_block_invoke;
      v6[3] = &unk_279AE1050;
      v7 = v3;
      v8 = &v9;
      [v2 enumerateObjectsUsingBlock:v6];
      v4 = *(v10 + 24);
    }
  }

  else
  {
    v4 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v4 & 1;
}

void sub_26165F2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__QLPreviewControllerSupportsContentType_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) conformsToType:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

id QLPreviewGetSupportedMIMETypes()
{
  v0 = QLPreviewGetSupportedMIMETypes_result;
  if (!QLPreviewGetSupportedMIMETypes_result)
  {
    v1 = +[QLPreviewConverter convertibleMIMETypes];
    v2 = QLPreviewGetSupportedMIMETypes_result;
    QLPreviewGetSupportedMIMETypes_result = v1;

    v0 = QLPreviewGetSupportedMIMETypes_result;
  }

  return v0;
}

BOOL _QLLayoutIsRTL()
{
  v0 = [MEMORY[0x277D75128] sharedApplication];
  v1 = [v0 userInterfaceLayoutDirection] == 1;

  return v1;
}

id QLItemViewControllerVendorForURL(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(&cfstr_Qlitemviewcont.isa);
  if (!v2 || ([(objc_class *)v2 performSelector:sel_qlItemViewControllerForURL_ withObject:v1], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  }

  return v3;
}

id QLItemViewControllerVendorForItem(void *a1)
{
  v1 = a1;
  v2 = NSClassFromString(&cfstr_Qlitemviewcont.isa);
  if (!v2 || ([(objc_class *)v2 performSelector:sel_qlItemViewControllerForItem_ withObject:v1], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = objc_alloc_init(MEMORY[0x277D75D28]);
  }

  return v3;
}

void *_getIWorkImportLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  result = __lib;
  if (!__lib)
  {
    if (__loaded)
    {
      return 0;
    }

    else
    {
      result = dlopen("/System/Library/PrivateFrameworks/iWorkImport.framework/iWorkImport", 1);
      __lib = result;
      if (!result)
      {
        v1 = *MEMORY[0x277D43EF8];
        if (!*MEMORY[0x277D43EF8])
        {
          v3 = MEMORY[0x277D43EF8];
          QLSInitLogging();
          v1 = *v3;
        }

        if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
        {
          v2 = v1;
          v4 = 136315138;
          v5 = dlerror();
          _os_log_impl(&dword_261653000, v2, OS_LOG_TYPE_ERROR, "Cannot load iWorkImport: %s #Conversion", &v4, 0xCu);
        }

        result = __lib;
      }

      __loaded = 1;
    }
  }

  return result;
}

void QLIWPreviewAppendDataToAttachment(uint64_t a1, const char *a2, uint64_t a3, int a4)
{
  if (a3 || a2 || *a1)
  {
    v8 = *(a1 + 8);

    QLPreviewRequestAppendDataToAttachment(v8, a2, a3, a4);
  }

  else
  {
    v5 = MEMORY[0x277D43EF8];
    v6 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_261653000, v6, OS_LOG_TYPE_DEFAULT, "QLIWPreviewAppendDataToAttachment was called but QLIWPreviewStartData was never called before. #Conversion", v9, 2u);
    }

    v7 = CFErrorCreate(0, @"QuickLookErrorDomain", 8, 0);
    QLPreviewRequestSetError(*(a1 + 8), v7);
    CFRelease(v7);
  }
}

uint64_t IWGenerateProgressivePreviewForURL(int a1, void *a2, uint64_t a3, uint64_t a4, CFDictionaryRef theDict)
{
  if (IWGenerateProgressivePreviewForURL_functionPointer)
  {
    goto LABEL_2;
  }

  IWorkImportLibrary = _getIWorkImportLibrary();
  if (!IWorkImportLibrary)
  {
    return 0;
  }

  IWGenerateProgressivePreviewForURL_functionPointer = dlsym(IWorkImportLibrary, "IWorkPreviewProcessWithURLAndOptions");
  if (!IWGenerateProgressivePreviewForURL_functionPointer)
  {
    v14 = MEMORY[0x277D43EF8];
    v15 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v15 = *v14;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v15, OS_LOG_TYPE_ERROR, "Cannot find IWorkPreviewProcessWithURLAndOptions function #Conversion", buf, 2u);
    }

    return 0;
  }

LABEL_2:
  *buf = xmmword_2873E9B40;
  v19 = *off_2873E9B50;
  v20 = off_2873E9B60;
  v17[0] = 0;
  v17[1] = a2;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  Value = CFDictionaryGetValue(theDict, @"Password");
  if (Value)
  {
    CFDictionarySetValue(MutableCopy, @"Password", Value);
  }

  v11 = IWGenerateProgressivePreviewForURL_functionPointer(a3, a4, theDict, a2, v17, buf);
  CFRelease(MutableCopy);
  if (v11 == 4)
  {
    v12 = CFErrorCreate(0, @"QuickLookErrorDomain", 4, 0);
    QLPreviewRequestSetError(a2, v12);
    CFRelease(v12);
  }

  return v11;
}

uint64_t IWGenerateAtomicPreviewForURL(uint64_t a1, __QLPreviewRequest *a2, uint64_t a3, uint64_t a4, void *a5)
{
  properties = 0;
  cf = 0;
  v9 = MEMORY[0x277CBEBC0];
  v10 = [a5 objectForKey:@"URLBase"];
  v11 = [v9 URLWithString:v10];
  v12 = [v11 URLByDeletingLastPathComponent];

  Value = CFDictionaryGetValue(a5, @"Password");
  v23 = 0;
  v14 = [v12 absoluteString];
  v16 = QLIWorkCalculatePreview(0, a3, a4, &cf, &properties, v14, 0, v15, Value, &v23);
  v17 = cf;
  if (v16)
  {
    v18 = cf == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (v23)
    {
      QLPreviewRequestSetError(a2, v23);
      CFRelease(v23);
    }

    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = [*MEMORY[0x277CE1DA0] identifier];
    v21 = properties;
    QLPreviewRequestSetDataRepresentation(a2, v17, v20, properties);

    CFRelease(v17);
    if (v21)
    {
      CFRelease(v21);
    }

    v19 = 0;
  }

  return v19;
}

uint64_t QLIWorkCalculatePreview(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, CFTypeRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, CFErrorRef *a10)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v16 = QLIWorkCalculatePreview_CopyHTMLForIWorkDataWithUTIAndPassword_functionPointer;
  if (!QLIWorkCalculatePreview_CopyHTMLForIWorkDataWithUTIAndPassword_functionPointer)
  {
    IWorkImportLibrary = _getIWorkImportLibrary();
    if (IWorkImportLibrary)
    {
      v20 = IWorkImportLibrary;
      QLIWorkCalculatePreview_CopyHTMLForIWorkDataWithUTIAndPassword_functionPointer = dlsym(IWorkImportLibrary, "CopyHTMLForIWorkDataWithUTIAndPassword");
      v21 = dlsym(v20, "CopyHTMLForIWorkFileAtURLWithPassword");
      QLIWorkCalculatePreview_CopyHTMLForIWorkFileAtURLWithPassword_functionPointer = v21;
      v16 = QLIWorkCalculatePreview_CopyHTMLForIWorkDataWithUTIAndPassword_functionPointer;
      if (QLIWorkCalculatePreview_CopyHTMLForIWorkDataWithUTIAndPassword_functionPointer | v21)
      {
        v17 = v21;
        goto LABEL_3;
      }

      v22 = MEMORY[0x277D43EF8];
      v23 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v23 = *v22;
      }

      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LOWORD(err[0]) = 0;
      v24 = "Cannot find functions in iWorkImport #Conversion";
    }

    else
    {
      v49 = MEMORY[0x277D43EF8];
      v23 = *MEMORY[0x277D43EF8];
      if (!*MEMORY[0x277D43EF8])
      {
        QLSInitLogging();
        v23 = *v49;
      }

      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }

      LOWORD(err[0]) = 0;
      v24 = "Cannot load iWorkImport framework #Conversion";
    }

    _os_log_impl(&dword_261653000, v23, OS_LOG_TYPE_DEFAULT, v24, err, 2u);
    return 0;
  }

  v17 = QLIWorkCalculatePreview_CopyHTMLForIWorkFileAtURLWithPassword_functionPointer;
LABEL_3:
  err[0] = 0;
  if (a1 && v16)
  {
    v18 = v16(a1, a6, a3, a9, err, a6, a7, a8);
  }

  else
  {
    if (!a2 || !v17)
    {
      goto LABEL_46;
    }

    v18 = v17(a2, a6, a3, a9, err, a6, a7, a8);
  }

  v25 = v18;
  if (!err[0])
  {
    if (v18)
    {
      v28 = [v18 objectForKey:@"HTMLMainContentData"];
      v29 = v28 != 0;
      if (!v28)
      {
LABEL_69:

        goto LABEL_52;
      }

      v30 = [MEMORY[0x277CBEB38] dictionary];
      [v30 setObject:@"text/html" forKey:?];
      [v30 setObject:@"UTF-8" forKey:?];
      v31 = [v25 objectForKey:@"HTMLResources"];
      [MEMORY[0x277CBEB38] dictionary];
      v63 = v61 = v31;
      if (v31 && [v31 count])
      {
        v59 = v25;
        v60 = v30;
        v56 = v28;
        v57 = v28 != 0;
        v58 = a5;
        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v32 = v31;
        v33 = [v32 countByEnumeratingWithState:&v64 objects:v70 count:16];
        if (v33)
        {
          v34 = v33;
          v62 = 0;
          v35 = *v65;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v65 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v64 + 1) + 8 * i);
              v38 = [v32 objectForKey:v37];
              if ([v37 hasSuffix:@".html"])
              {
                v39 = @"UTF-8";
                v40 = @"text/html";
              }

              else
              {
                v41 = [v37 hasSuffix:@".css"];
                if (v41)
                {
                  v40 = @"text/css";
                }

                else
                {
                  v40 = 0;
                }

                if (v41)
                {
                  v39 = @"UTF-8";
                }

                else
                {
                  v39 = 0;
                }
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = [v38 dataUsingEncoding:4];

                v38 = v42;
              }

              if ([v37 hasSuffix:@"preview.pdf"])
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v43 = v38;

                  v62 = v43;
                }
              }

              v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v38, @"AttachmentData", v40, @"MimeType", v39, @"TextEncoding", 0}];
              v45 = [MEMORY[0x277CCA900] URLPathAllowedCharacterSet];
              v46 = [v37 stringByAddingPercentEncodingWithAllowedCharacters:v45];
              [v63 setObject:v44 forKey:v46];
            }

            v34 = [v32 countByEnumeratingWithState:&v64 objects:v70 count:16];
          }

          while (v34);
        }

        else
        {
          v62 = 0;
        }

        v30 = v60;
        v54 = v63;
        [v60 setObject:v63 forKey:@"Attachments"];
        v55 = v62;
        if (v62)
        {
          a5 = v58;
          v25 = v59;
          v29 = v57;
          v28 = v56;
          if ([v63 count] == 1)
          {
            [v60 setObject:@"application/pdf" forKey:@"MimeType"];
            [v60 removeObjectForKey:@"Attachments"];
            *a4 = CFRetain(v62);
            *v58 = CFRetain(v60);
LABEL_68:

            goto LABEL_69;
          }
        }

        else
        {
          v62 = 0;
          a5 = v58;
          v25 = v59;
          v29 = v57;
          v28 = v56;
        }
      }

      else
      {
        v62 = 0;
      }

      [v30 setObject:*MEMORY[0x277CBED28] forKey:@"AllowJavascript"];
      v51 = [v25 objectForKey:@"Width"];
      v52 = [v25 objectForKey:@"Height"];
      v53 = v52;
      if (v51)
      {
        if (v52)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v30 setObject:v51 forKey:@"Width"];
              [v30 setObject:v53 forKey:@"Height"];
            }
          }
        }
      }

      *a4 = CFRetain(v28);
      *a5 = CFRetain(v30);

      v54 = v63;
      v55 = v62;
      goto LABEL_68;
    }

LABEL_46:
    v47 = MEMORY[0x277D43EF8];
    v48 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v48 = *v47;
    }

    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v48, OS_LOG_TYPE_DEFAULT, "iWorkImport failed to convert document #Conversion", buf, 2u);
    }

    v25 = 0;
    goto LABEL_51;
  }

  if (a10)
  {
    v71 = *MEMORY[0x277CCA7E8];
    v72[0] = err[0];
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    if (CFErrorGetCode(err[0]) == 1)
    {
      v27 = 4;
    }

    else
    {
      v27 = 16;
    }

    *a10 = CFErrorCreate(0, @"QuickLookErrorDomain", v27, v26);
  }

LABEL_51:
  v29 = 0;
LABEL_52:

  return v29;
}

uint64_t IWGenerateAtomicPreviewForData(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  theDict = 0;
  cf = 0;
  v9 = MEMORY[0x277CBEBC0];
  v10 = [a5 objectForKey:@"URLBase"];
  v11 = [v9 URLWithString:v10];
  v12 = [v11 URLByDeletingLastPathComponent];

  Value = CFDictionaryGetValue(a5, @"Password");
  v25 = 0;
  v14 = [v12 absoluteString];
  v16 = QLIWorkCalculatePreview(a3, 0, a4, &cf, &theDict, v14, 0, v15, Value, &v25);
  v17 = cf;
  if (v16)
  {
    v18 = cf == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (v25)
    {
      QLPreviewRequestSetError(a2, v25);
      CFRelease(v25);
    }

    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    v20 = theDict;
    v21 = CFDictionaryGetValue(theDict, @"MimeType");
    if (v21 && CFStringCompare(v21, @"application/pdf", 1uLL) == kCFCompareEqualTo)
    {
      v22 = MEMORY[0x277CE1E08];
    }

    else
    {
      v22 = MEMORY[0x277CE1DA0];
    }

    v23 = [*v22 identifier];

    QLPreviewRequestSetDataRepresentation(a2, v17, v23, v20);
    CFRelease(v17);
    if (v20)
    {
      CFRelease(v20);
    }

    v19 = 0;
  }

  return v19;
}

BOOL PGPackageHasEmbeddedPreview(const void *a1)
{
  v1 = PGCopyPreviewURLForPackageURL(a1);
  v2 = v1;
  if (v1)
  {
    CFRelease(v1);
  }

  return v2 != 0;
}

CFTypeRef PGCopyPreviewURLForPackageURL(const void *a1)
{
  URLsToLookForBaseURL = QLPackageCreateURLsToLookForBaseURL(a1);
  if (!URLsToLookForBaseURL)
  {
    return 0;
  }

  v2 = URLsToLookForBaseURL;
  Count = CFArrayGetCount(URLsToLookForBaseURL);
  if (Count < 1)
  {
    URLMatchingPrefix = 0;
  }

  else
  {
    v4 = Count;
    v5 = 1;
    v6 = MEMORY[0x277CBEBF8];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v5 - 1);
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v8 contentsOfDirectoryAtURL:ValueAtIndex includingPropertiesForKeys:v6 options:0 error:0];

      if (v9)
      {
        URLMatchingPrefix = QLPackageCopyFirstURLMatchingPrefix(v9, @"Preview", 0, 0);
      }

      else
      {
        URLMatchingPrefix = 0;
      }

      if (v5 >= v4)
      {
        break;
      }

      ++v5;
    }

    while (!URLMatchingPrefix);
  }

  CFRelease(v2);
  return URLMatchingPrefix;
}

uint64_t PGGeneratePreviewForURL(uint64_t a1, __QLPreviewRequest *a2, const void *a3)
{
  v4 = PGCopyPreviewURLForPackageURL(a3);
  if (v4)
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v4 options:0 error:0];
    v7 = [*MEMORY[0x277CE1E08] identifier];
    QLPreviewRequestSetDataRepresentation(a2, v6, v7, 0);

    CFRelease(v5);
  }

  return 0;
}

void sub_261662B84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromQLNetworkState(unint64_t a1)
{
  if (a1 > 4)
  {
    return @"Undefined QLNetworkState";
  }

  else
  {
    return off_279AE11C8[a1];
  }
}

void sub_261665228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t LPDFGeneratePreviewForURL(int a1, __QLPreviewRequest *a2, CFURLRef bundleURL)
{
  v9 = 0;
  v4 = LocCopyPDFURLForLocPDFBundleURL(bundleURL, &v9);
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v4 options:0 error:0];
    v6 = [*MEMORY[0x277CE1E08] identifier];
    QLPreviewRequestSetDataRepresentation(a2, v5, v6, 0);

    v7 = 0;
  }

  else
  {
    v7 = 0xFFFFFFFFLL;
  }

  return v7;
}

CFURLRef LocCopyPDFURLForLocPDFBundleURL(CFURLRef bundleURL, void *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v4 = CFBundleCreate(0, bundleURL);
  if (v4)
  {
    v5 = v4;
    InfoDictionary = CFBundleGetInfoDictionary(v4);
    if (InfoDictionary)
    {
      v7 = *MEMORY[0x277CBED50];
      Value = CFDictionaryGetValue(InfoDictionary, *MEMORY[0x277CBED50]);
      PathComponent = Value;
      if (Value)
      {
LABEL_6:
        v10 = CFBundleCopyBundleLocalizations(v5);
        if (v10)
        {
          v11 = v10;
          v12 = CFBundleCopyPreferredLocalizationsFromArray(v10);
          if (v12)
          {
            v13 = v12;
            if (CFArrayGetCount(v12) < 1)
            {
              ValueAtIndex = 0;
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
            }

            v15 = CFBundleCopyResourceURLForLocalization(v5, PathComponent, @"pdf", 0, ValueAtIndex);
            CFRelease(v13);
          }

          else
          {
            v15 = CFBundleCopyResourceURLForLocalization(v5, PathComponent, @"pdf", 0, 0);
          }

          CFRelease(v11);
          if (a2)
          {
            if (v15)
            {
              ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v5, @"CFBundleDisplayName");
              *a2 = ValueForInfoDictionaryKey;
              if (ValueForInfoDictionaryKey || (ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v5, v7), (*a2 = ValueForInfoDictionaryKey) != 0))
              {
                CFRetain(ValueForInfoDictionaryKey);
              }
            }
          }
        }

        else
        {
          v15 = 0;
        }

        if (!Value)
        {
          CFRelease(PathComponent);
        }

        goto LABEL_25;
      }

      v16 = CFURLCreateCopyDeletingPathExtension(0, bundleURL);
      v15 = v16;
      if (!v16)
      {
LABEL_25:
        CFRelease(v5);
        return v15;
      }

      PathComponent = CFURLCopyLastPathComponent(v16);
      CFRelease(v15);
      if (PathComponent)
      {
        goto LABEL_6;
      }
    }

    v15 = 0;
    goto LABEL_25;
  }

  return 0;
}

void sub_26166BE94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_26166D3B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFArrayRef QLPackageCreateURLsToLookForBaseURL(const void *a1)
{
  values[2] = *MEMORY[0x277D85DE8];
  if (CFURLHasDirectoryPath(a1))
  {
    v2 = CFRetain(a1);
    if (!v2)
    {
      goto LABEL_9;
    }

LABEL_6:
    v5 = CFURLCreateCopyAppendingPathComponent(0, v2, @"QuickLook", 1u);
    if (v5)
    {
      v6 = v5;
      v7 = CFURLCreateCopyAppendingPathComponent(0, v2, @"Contents/QuickLook", 1u);
      if (v7)
      {
        v8 = v7;
        values[0] = v6;
        values[1] = v7;
        v9 = CFArrayCreate(0, values, 2, MEMORY[0x277CBF128]);
        CFRelease(v6);
        CFRelease(v8);
        CFRelease(v2);
        return v9;
      }

      CFRelease(v2);
      v12 = v6;
    }

    else
    {
      v12 = v2;
    }

    CFRelease(v12);
    return 0;
  }

  v3 = CFURLCopyFileSystemPath(a1, kCFURLPOSIXPathStyle);
  if (v3)
  {
    v4 = v3;
    v2 = CFURLCreateWithFileSystemPath(0, v3, kCFURLPOSIXPathStyle, 1u);
    CFRelease(v4);
    if (v2)
    {
      goto LABEL_6;
    }
  }

LABEL_9:
  v10 = MEMORY[0x277CBF128];

  return CFArrayCreate(0, 0, 0, v10);
}

CFTypeRef QLPackageCopyFirstURLMatchingPrefix(const __CFArray *a1, const __CFString *a2, const __CFString *a3, CFTypeRef *a4)
{
  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 0;
  }

  v9 = Count;
  v10 = 0;
  v11 = 0;
  do
  {
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
      PathComponent = CFURLCopyLastPathComponent(ValueAtIndex);
      if (PathComponent)
      {
        v14 = PathComponent;
        if (v11 || !CFStringHasPrefix(PathComponent, a2))
        {
          if (a3 && !*a4 && CFStringHasPrefix(v14, a3))
          {
            *a4 = CFRetain(ValueAtIndex);
          }
        }

        else
        {
          v11 = CFRetain(ValueAtIndex);
        }

        CFRelease(v14);
      }

      if (v11)
      {
        break;
      }

      if (++v10 >= v9)
      {
        return 0;
      }
    }

    if (!a3)
    {
      break;
    }

    if (*a4)
    {
      break;
    }

    ++v10;
  }

  while (v10 < v9);
  return v11;
}

void sub_26166E7D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double QLCGSizeFromQLItemThumbnailSize(uint64_t a1)
{
  if (a1 == 1)
  {
    return 256.0;
  }

  if (a1)
  {
    return -1.0;
  }

  return 37.0;
}

void sub_261671720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2616717CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  objc_destroyWeak(va);
  _Unwind_Resume(a1);
}

uint64_t RTFGeneratePreviewForURL(uint64_t a1, __QLPreviewRequest *a2, uint64_t a3, void *a4)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = [*MEMORY[0x277CE1E50] identifier];
  if ([v6 isEqualToString:v7])
  {

LABEL_4:
    v9 = MEMORY[0x277D74130];
    goto LABEL_5;
  }

  v8 = [v6 isEqualToString:@"com.microsoft.word.doc"];

  if (v8)
  {
    goto LABEL_4;
  }

  v15 = [*MEMORY[0x277CE1E58] identifier];
  v16 = [v6 isEqualToString:v15];

  if ((v16 & 1) == 0)
  {

    v14 = 0;
    v10 = 0;
    goto LABEL_12;
  }

  v9 = MEMORY[0x277D74128];
LABEL_5:
  v10 = *v9;

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277CCA898]);
    v23 = *MEMORY[0x277D74090];
    v24[0] = v10;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v20 = 0;
    v13 = [v11 initWithURL:a3 options:v12 documentAttributes:0 error:&v20];
    v14 = v20;

    if (v13)
    {
      RTFGeneratePreviewForAttributedString(a2, v13);

      goto LABEL_16;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_12:
  v17 = MEMORY[0x277D43EF8];
  v18 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v18 = *v17;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v22 = v14;
    _os_log_impl(&dword_261653000, v18, OS_LOG_TYPE_ERROR, "Could not load RTF file: %@ #Conversion", buf, 0xCu);
  }

LABEL_16:

  return 0;
}

void RTFGeneratePreviewForAttributedString(__QLPreviewRequest *a1, void *a2)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 length];
  v17 = *MEMORY[0x277D74090];
  v18[0] = @"NSWebArchive";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v12 = 0;
  v6 = [v3 dataFromRange:0 documentAttributes:v4 error:{v5, &v12}];

  v7 = v12;
  if (v6)
  {
    v15 = @"MimeType";
    v16 = @"application/x-webarchive";
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    v9 = [*MEMORY[0x277CE1ED8] identifier];
    QLPreviewRequestSetDataRepresentation(a1, v6, v9, v8);
  }

  else
  {
    v10 = MEMORY[0x277D43EF8];
    v11 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v11 = *v10;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_ERROR, "Could not load RTF file: %@ #Conversion", buf, 0xCu);
    }
  }
}

uint64_t RTFGeneratePreviewForData(uint64_t a1, __QLPreviewRequest *a2, uint64_t a3, uint64_t a4)
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v5 = [QLTextItemTransformer attributedStringFromData:a3 encoding:0 typeIdentifier:a4 error:&v10];
  v6 = v10;
  if (v5)
  {
    RTFGeneratePreviewForAttributedString(a2, v5);
  }

  else
  {
    v7 = MEMORY[0x277D43EF8];
    v8 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_ERROR, "Could not load RTF file: %@ #Conversion", buf, 0xCu);
    }
  }

  return 0;
}

uint64_t OIGenerateAtomicPreviewForURL(uint64_t a1, __QLPreviewRequest *a2, void *a3, void *a4, void *a5)
{
  result = _QLGetOfficeFileTypeFromUTI(a4);
  if (result)
  {
    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, " #Conversion", buf, 2u);
    }

    properties = 0;
    *buf = 0;
    QLOfficeCalculatePreview(a2, 0, a3, a4, buf, &properties, [a5 objectForKey:@"URLBase"], 0);
    v13 = *buf;
    if (*buf)
    {
      v14 = [*MEMORY[0x277CE1DA0] identifier];
      v15 = properties;
      QLPreviewRequestSetDataRepresentation(a2, v13, v14, properties);

      CFRelease(v13);
      if (v15)
      {
        CFRelease(v15);
      }

      return 0;
    }

    else
    {
      return OIGeneratePreviewForURLIfWrongContent(a1, a2, a3, a4);
    }
  }

  return result;
}

void QLOfficeCalculatePreview(void *a1, uint64_t a2, uint64_t a3, void *a4, CFTypeRef *a5, CFTypeRef *a6, uint64_t a7, int a8)
{
  v53 = *MEMORY[0x277D85DE8];
  _QLGetOfficeFileTypeFromUTI(a4);
  if (a8)
  {
    if (a2)
    {
      inited = OICopyHTMLThumbnailForOfficeData_delayInitStub(v14);
    }

    else
    {
      if (!a3)
      {
        goto LABEL_13;
      }

      inited = OICopyHTMLThumbnailFromFileAtURL_delayInitStub(v14);
    }
  }

  else if (a2)
  {
    inited = OICopyHTMLForOfficeData_delayInitStub(v14);
  }

  else
  {
    if (!a3)
    {
      goto LABEL_13;
    }

    inited = OICopyHTMLFromFileAtURL_delayInitStub(v14);
  }

  v16 = inited;
  if (inited)
  {
    v17 = [inited objectForKey:@"HTMLError"];
    if (v17)
    {
      QLPreviewRequestSetError(a1, v17);
    }

    else
    {
      v18 = [v16 objectForKey:@"HTMLMainContent"];
      v19 = [v18 dataUsingEncoding:4];
      if (v19 && [v18 length] >= 0xA)
      {
        v20 = [MEMORY[0x277CBEB38] dictionary];
        [v20 setObject:@"text/html" forKey:?];
        [v20 setObject:@"UTF-8" forKey:?];
        v21 = [v16 objectForKey:@"HTMLResources"];
        v45 = v21;
        if (v21)
        {
          v22 = v21;
          if ([v21 count])
          {
            v39 = v20;
            v40 = v19;
            v41 = v18;
            v42 = v16;
            v43 = a5;
            v44 = a6;
            v46 = [MEMORY[0x277CBEB38] dictionary];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            v23 = v22;
            v24 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
            if (v24)
            {
              v25 = v24;
              v26 = *v49;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v49 != v26)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v28 = *(*(&v48 + 1) + 8 * i);
                  v29 = [v23 objectForKey:v28];
                  if ([v28 hasSuffix:@".html"])
                  {
                    v30 = @"UTF-8";
                    v31 = @"text/html";
                  }

                  else
                  {
                    v32 = [v28 hasSuffix:@".css"];
                    if (v32)
                    {
                      v31 = @"text/css";
                    }

                    else
                    {
                      v31 = 0;
                    }

                    if (v32)
                    {
                      v30 = @"UTF-8";
                    }

                    else
                    {
                      v30 = 0;
                    }
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v33 = [v29 dataUsingEncoding:4];

                    v29 = v33;
                  }

                  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v29, @"AttachmentData", v31, @"MimeType", v30, @"TextEncoding", 0}];
                  [v46 setObject:v34 forKey:v28];
                }

                v25 = [v23 countByEnumeratingWithState:&v48 objects:v52 count:16];
              }

              while (v25);
            }

            v20 = v39;
            [v39 setObject:v46 forKey:@"Attachments"];

            a5 = v43;
            a6 = v44;
            v17 = 0;
            v16 = v42;
            v19 = v40;
            v18 = v41;
          }
        }

        v35 = v20;
        [v20 setObject:*MEMORY[0x277CBED28] forKey:@"AllowJavascript"];
        v36 = [v16 objectForKey:@"HTMLWidth"];
        v37 = [v16 objectForKey:@"HTMLHeight"];
        v38 = v37;
        if (v36)
        {
          if (v37)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                [v35 setObject:v36 forKey:@"Width"];
                [v35 setObject:v38 forKey:@"Height"];
              }
            }
          }
        }

        *a5 = CFRetain(v19);
        *a6 = CFRetain(v35);
      }
    }

    return;
  }

LABEL_13:
  v47 = [MEMORY[0x277CCA9B8] errorWithDomain:@"QuickLookDomain" code:897 userInfo:0];
  QLPreviewRequestSetError(a1, v47);
}

uint64_t OIGeneratePreviewForURLIfWrongContent(uint64_t a1, __QLPreviewRequest *a2, void *a3, void *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CCA9F8];
  v9 = [a3 path];
  v10 = [v8 fileHandleForReadingAtPath:v9];

  if (v10)
  {
    v11 = MEMORY[0x277D43EF8];
    v12 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19[0]) = 0;
      _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, " #Conversion", v19, 2u);
    }

    v13 = [v10 readDataOfLength:5];
    v14 = v13;
    if (v13 && [v13 length] == 5)
    {
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      [v14 getBytes:v19 length:5];
      if (!strncasecmp(v19, "<html", 5uLL))
      {
        v16 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:a3 options:1 error:0];
        if (v16)
        {
          v17 = [*MEMORY[0x277CE1DA0] identifier];
          QLPreviewRequestSetDataRepresentation(a2, v16, v17, 0);
        }
      }

      else if (!strncasecmp(v19, "{\\rtf", 5uLL))
      {
        v15 = RTFGeneratePreviewForURL(a1, a2, a3, a4);
LABEL_16:

        [v10 closeFile];
        goto LABEL_17;
      }
    }

    v15 = 0;
    goto LABEL_16;
  }

  v15 = 0;
LABEL_17:

  return v15;
}

void sub_261673B20(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    objc_end_catch();
    JUMPOUT(0x261673AC0);
  }

  _Unwind_Resume(exception_object);
}

CFDictionaryRef OIGenerateAtomicPreviewForData(uint64_t a1, void *a2, const __CFData *a3, void *a4, void *a5)
{
  if (!_QLGetOfficeFileTypeFromUTI(a4))
  {
    return 0;
  }

  v10 = MEMORY[0x277D43EF8];
  v11 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_DEFAULT, " #Conversion", buf, 2u);
  }

  properties = 0;
  *buf = 0;
  QLOfficeCalculatePreview(a2, a3, 0, a4, buf, &properties, [a5 objectForKey:@"URLBase"], 0);
  v12 = *buf;
  if (*buf)
  {
    v13 = [*MEMORY[0x277CE1DA0] identifier];
    v14 = properties;
    QLPreviewRequestSetDataRepresentation(a2, v12, v13, properties);

    CFRelease(v12);
    if (v14)
    {
      CFRelease(v14);
      return 0;
    }
  }

  else
  {
    v14 = OIGeneratePreviewForDataIfWrongContent(a1, a2, a3, a4);
    if (v14)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"QuickLookDomain" code:897 userInfo:0];
      QLPreviewRequestSetError(a2, v16);
    }
  }

  return v14;
}

uint64_t OIGeneratePreviewForDataIfWrongContent(uint64_t a1, __QLPreviewRequest *a2, CFDataRef theData, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  if (CFDataGetLength(theData) < 5)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = MEMORY[0x277D43EF8];
  v10 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v10 = *v9;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v10, OS_LOG_TYPE_DEFAULT, " #Conversion", buf, 2u);
  }

  v18 = 0;
  *buf = 0u;
  v17 = 0u;
  [(__CFData *)theData getBytes:buf length:5];
  if (!strncasecmp(buf, "<html", 5uLL))
  {
    v13 = *v9;
    if (!*v9)
    {
      QLSInitLogging();
      v13 = *v9;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_261653000, v13, OS_LOG_TYPE_DEFAULT, "It's an HTML #Conversion", v15, 2u);
    }

    v14 = [*MEMORY[0x277CE1DA0] identifier];
    QLPreviewRequestSetDataRepresentation(a2, theData, v14, 0);

    return 0;
  }

  else
  {
    v11 = strncasecmp(buf, "{\\rtf", 5uLL);
    v12 = *v9;
    if (v11)
    {
      if (!v12)
      {
        QLSInitLogging();
        v12 = *v9;
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, "Returning false #Conversion", v15, 2u);
      }

      return 0xFFFFFFFFLL;
    }

    if (!v12)
    {
      QLSInitLogging();
      v12 = *v9;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v15 = 0;
      _os_log_impl(&dword_261653000, v12, OS_LOG_TYPE_DEFAULT, "It's an RTF #Conversion", v15, 2u);
    }

    return RTFGeneratePreviewForData(a1, a2, theData, a4);
  }
}

uint64_t _QLGetOfficeFileTypeFromUTI(void *a1)
{
  v1 = a1;
  if ([v1 caseInsensitiveCompare:@"com.microsoft.word.doc"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"com.microsoft.word.dot"))
  {
    if ([v1 caseInsensitiveCompare:@"org.openxmlformats.wordprocessingml.document"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.wordprocessingml.template") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.wordprocessingml.document.macroenabled") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.wordprocessingml.template.macroenabled"))
    {
      if ([v1 caseInsensitiveCompare:@"com.microsoft.excel.xls"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"com.microsoft.excel.xlt") && objc_msgSend(v1, "caseInsensitiveCompare:", @"com.microsoft.excel.xla"))
      {
        if ([v1 caseInsensitiveCompare:@"org.openxmlformats.spreadsheetml.sheet"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.spreadsheetml.template") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.spreadsheetml.sheet.macroenabled") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.spreadsheetml.template.macroenabled"))
        {
          if ([v1 caseInsensitiveCompare:@"com.microsoft.powerpoint.ppt"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"com.microsoft.powerpoint.pps") && objc_msgSend(v1, "caseInsensitiveCompare:", @"com.microsoft.powerpoint.pot"))
          {
            if ([v1 caseInsensitiveCompare:@"org.openxmlformats.presentationml.presentation"] && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.presentationml.template.macroenabled") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.presentationml.template") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.presentationml.presentation.macroenabled") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.presentationml.slideshow") && objc_msgSend(v1, "caseInsensitiveCompare:", @"org.openxmlformats.presentationml.slideshow.macroenabled"))
            {
              if ([v1 caseInsensitiveCompare:@"public.comma-separated-values-text"])
              {
                v2 = 0;
              }

              else
              {
                v2 = 7;
              }
            }

            else
            {
              v2 = 6;
            }
          }

          else
          {
            v2 = 5;
          }
        }

        else
        {
          v2 = 4;
        }
      }

      else
      {
        v2 = 3;
      }
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2;
}

void QLOIPreviewRequestSetError(uint64_t a1, char *err)
{
  if (CFErrorGetCode(err) == 1)
  {
    v4 = CFErrorCreate(0, @"QuickLookErrorDomain", 4, 0);
    QLPreviewRequestSetError(*(a1 + 8), v4);

    CFRelease(v4);
  }

  else
  {
    v5 = *(a1 + 8);

    QLPreviewRequestSetError(v5, err);
  }
}

uint64_t OIGenerateProgressivePreviewForURL(uint64_t a1, __QLPreviewRequest *a2, void *a3, void *a4, const __CFDictionary *a5)
{
  v10 = MEMORY[0x277D43EF8];
  v11 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_DEFAULT, " #Conversion", buf, 2u);
  }

  *buf = xmmword_2873E9C48;
  v19 = *off_2873E9C58;
  v20 = off_2873E9C68;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a5);
  if (CFDictionaryGetValue(a5, @"Password"))
  {
    gotLoadHelper_x8__kOIPreviewOptionsPassphrase(v13);
    CFDictionarySetValue(MutableCopy, **(v14 + 3512), v15);
  }

  inited = OIPreviewProcessWithURLAndOptions_delayInitStub(v13);
  CFRelease(MutableCopy);
  if (inited == 64257)
  {
    return 4;
  }

  else
  {
    return OIGeneratePreviewForURLIfWrongContent(a1, a2, a3, a4);
  }
}

uint64_t OIGenerateProgressivePreviewForData(uint64_t a1, __QLPreviewRequest *a2, const __CFData *a3, uint64_t a4, const __CFDictionary *a5)
{
  v10 = MEMORY[0x277D43EF8];
  v11 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v11 = *v10;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_261653000, v11, OS_LOG_TYPE_DEFAULT, " #Conversion", buf, 2u);
  }

  *buf = xmmword_2873E9C48;
  v19 = *off_2873E9C58;
  v20 = off_2873E9C68;
  if (a5)
  {
    CFDictionaryGetValue(a5, @"FileName");
  }

  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a5);
  if (CFDictionaryGetValue(a5, @"Password"))
  {
    gotLoadHelper_x8__kOIPreviewOptionsPassphrase(v13);
    CFDictionarySetValue(MutableCopy, **(v14 + 3512), v15);
  }

  inited = OIPreviewProcessWithDataAndOptions_delayInitStub(v13);
  CFRelease(MutableCopy);
  if (inited == 64257)
  {
    return 4;
  }

  else
  {
    return OIGeneratePreviewForDataIfWrongContent(a1, a2, a3, a4);
  }
}

id _QLRemoveSpaces(void *a1)
{
  v1 = [a1 stringByRemovingPercentEncoding];
  if (([v1 hasPrefix:@" "] & 1) != 0 || objc_msgSend(v1, "hasSuffix:", @" "))
  {
    v2 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@" "];
    v3 = [v1 stringByTrimmingCharactersInSet:v2];
  }

  else
  {
    v3 = v1;
  }

  return v3;
}

uint64_t QLTypeCopyUTIForURLAndMimeType(void *a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 path];
  v6 = [v5 lastPathComponent];

  if (!v6 || ([v6 pathExtension], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, !v8))
  {
    v9 = [v3 resourceSpecifier];
    v10 = [v9 lastPathComponent];

    v11 = [v10 pathExtension];
    v12 = [v11 length];

    if (v12)
    {
      v13 = v10;

      v6 = v13;
    }
  }

  v14 = _QLTypeCopyUTIForFileNameAndMimeType(v6, v4);
  v15 = MEMORY[0x277D43EF8];
  v16 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v16 = *v15;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = v16;
    v18 = [v3 description];
    v20 = 138412802;
    v21 = v18;
    v22 = 2112;
    v23 = v4;
    v24 = 2112;
    v25 = v14;
    _os_log_impl(&dword_261653000, v17, OS_LOG_TYPE_INFO, "(%@, %@) -> %@ #UTI", &v20, 0x20u);
  }

  return v14;
}

uint64_t _QLTypeCopyUTIForFileNameAndMimeType(void *a1, void *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = [v3 pathExtension];
  v6 = [v5 lowercaseString];
  v7 = _QLRemoveSpaces(v6);

  v8 = [v4 lowercaseString];
  v9 = [(__CFString *)v8 isEqualToString:@"text/plain"]^ 1;
  v10 = 0x277CE1000uLL;
  if (v8)
  {
    v11 = [MEMORY[0x277CE1CB8] typeWithMIMEType:v8];
    if ([v11 isDynamic])
    {

      v11 = 0;
    }
  }

  else if ([v7 isEqualToString:@"lpdf"])
  {
    v11 = *MEMORY[0x277CE1D50];
    v8 = 0;
  }

  else
  {
    v11 = *MEMORY[0x277CE1D48];
    v9 = 0;
    v8 = @"application/octet-stream";
  }

  v12 = _QLCopyPackageExtensionIfIsArchiveFileName(v3);
  if ([v12 length])
  {
    v13 = v12;

    v14 = *MEMORY[0x277CE1E18];
    if (!v13)
    {
      v7 = 0;
      goto LABEL_27;
    }

    v7 = v13;
    goto LABEL_17;
  }

  if ([(__CFString *)v8 hasSuffix:@"zip"])
  {
    v14 = *MEMORY[0x277CE1D48];

    if (!v7)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = v11;
    if (!v7)
    {
      goto LABEL_27;
    }
  }

  if (v9)
  {
    v13 = v7;
LABEL_17:
    v15 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v13 conformingToType:v14];
    goto LABEL_18;
  }

  v15 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v7];
LABEL_18:
  v16 = v15;
  if ([v15 isDynamic])
  {
LABEL_19:

    goto LABEL_27;
  }

  if (v4)
  {
    v17 = [v16 identifier];
    if ((_QLUTIIsScriptableMediaType(v17) & 1) == 0)
    {

      if (v16)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    v18 = [v14 identifier];
    v19 = _QLUTIIsScriptableMediaType(v18);

    v10 = 0x277CE1000;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  if (v16)
  {
LABEL_24:

    v20 = 0;
LABEL_29:
    if (([v16 isDynamic] & 1) == 0 && (objc_msgSend(v16, "isEqual:", *MEMORY[0x277CE1D48]) & 1) == 0 && !objc_msgSend(v16, "isEqual:", *MEMORY[0x277CE1E88]))
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_27:
  v21 = v14;
  v20 = v21;
  if (v21)
  {
    v16 = v21;
    goto LABEL_29;
  }

  v16 = 0;
LABEL_34:
  v22 = _QLTypeCopyPrivateUTIFromFileNameAndMimeType(v3, v4);
  if (v22)
  {
    v23 = [*(v10 + 3256) typeWithIdentifier:v22];

    v16 = v23;
  }

  if (!v16)
  {
    v16 = *MEMORY[0x277CE1D48];
  }

LABEL_38:
  v24 = MEMORY[0x277D43EF8];
  v25 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v28 = 138412802;
    v29 = v3;
    v30 = 2112;
    v31 = v4;
    v32 = 2112;
    v33 = v16;
    _os_log_impl(&dword_261653000, v25, OS_LOG_TYPE_INFO, "(%@, %@) -> %@ #UTI", &v28, 0x20u);
  }

  v26 = [v16 identifier];

  return v26;
}

__CFString *QLTypeCopyBestMimeTypeForFileNameAndMimeType(void *a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = _QLTypeCopyUTIForFileNameAndMimeType(v3, v4);
  v6 = _QLTypeCopyBestMimeTypeForUTI(v5);
  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 138412802;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_261653000, v8, OS_LOG_TYPE_INFO, "(%@, %@) -> %@ #UTI", &v10, 0x20u);
  }

  return v6;
}

__CFString *_QLTypeCopyBestMimeTypeForUTI(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  if ([v1 isEqualToString:@"public.data"])
  {
    v2 = 0;
  }

  else
  {
    if (!v1 || ([MEMORY[0x277CE1CB8] typeWithIdentifier:v1], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "preferredMIMEType"), v2 = objc_claimAutoreleasedReturnValue(), v3, !v2))
    {
      v2 = _QLGetMimeTypeForContentType(v1);
    }

    if ([(__CFString *)v2 isEqualToString:@"text/rtf"])
    {

      v2 = @"application/rtf";
    }

    v4 = MEMORY[0x277D43EF8];
    v5 = *MEMORY[0x277D43EF8];
    if (!*MEMORY[0x277D43EF8])
    {
      QLSInitLogging();
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 138412546;
      v8 = v1;
      v9 = 2112;
      v10 = v2;
      _os_log_impl(&dword_261653000, v5, OS_LOG_TYPE_INFO, "(%@) -> %@ #UTI", &v7, 0x16u);
    }
  }

  return v2;
}

__CFString *QLTypeCopyBestMimeTypeForURLAndMimeType(void *a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  v5 = QLTypeCopyUTIForURLAndMimeType(v3, v4);
  v6 = _QLTypeCopyBestMimeTypeForUTI(v5);
  v7 = MEMORY[0x277D43EF8];
  v8 = *MEMORY[0x277D43EF8];
  if (!*MEMORY[0x277D43EF8])
  {
    QLSInitLogging();
    v8 = *v7;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [v3 description];
    v12 = 138412802;
    v13 = v10;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_261653000, v9, OS_LOG_TYPE_INFO, "(%@, %@) -> %@ #UTI", &v12, 0x20u);
  }

  return v6;
}

uint64_t _QLUTIIsScriptableMediaType(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = [MEMORY[0x277CE1CB8] typeWithIdentifier:a1];
  if ([v1 conformsToType:*MEMORY[0x277CE1DA0]])
  {
    v2 = 1;
  }

  else
  {
    v2 = [v1 conformsToType:*MEMORY[0x277CE1E08]];
  }

  return v2;
}

id _QLCopyArchiveExtensionIfIsArchiveFileName(void *a1)
{
  v1 = [a1 pathExtension];
  if (v1)
  {
    v2 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v1];
    if ([v2 conformsToType:*MEMORY[0x277CE1CF8]])
    {
      v3 = v1;
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

id _QLCopyPackageExtensionIfIsArchiveFileName(void *a1)
{
  v1 = a1;
  v2 = _QLCopyArchiveExtensionIfIsArchiveFileName(v1);
  if (![v2 length] || (v3 = objc_msgSend(v1, "rangeOfString:options:", v2, 4), v3 == 0x7FFFFFFFFFFFFFFFLL))
  {
    v4 = 0;
    goto LABEL_12;
  }

  v5 = [v1 substringToIndex:v3 - 1];
  v6 = [v5 pathExtension];
  v4 = _QLRemoveSpaces(v6);

  if (v4)
  {
    if ([v4 length])
    {
      v7 = [MEMORY[0x277CE1CB8] typeWithFilenameExtension:v4 conformingToType:*MEMORY[0x277CE1E18]];
      v8 = v7;
      if (v7 && ![v7 isDynamic])
      {
        goto LABEL_11;
      }
    }

    v8 = v4;
    v4 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_11:

LABEL_12:

  return v4;
}

uint64_t _QLTypeCopyPrivateUTIFromFileNameAndMimeType(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3)
  {
    v13 = 0;
    if (!v4)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v6 = [v3 pathExtension];
  if (v6)
  {
    v7 = _QLCopyPackageExtensionIfIsArchiveFileName(v3);
    v8 = [v7 length];
    if (v8 && (v8 = [v3 rangeOfString:v7 options:4], v8 != 0x7FFFFFFFFFFFFFFFLL) && (objc_msgSend(v3, "substringFromIndex:", v8), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v10 = _QLTypeGetKnownExtensions(v8);
      v11 = v10;
      v12 = v9;
    }

    else
    {
      v9 = _QLTypeGetKnownExtensions(v8);
      v11 = [v6 lowercaseString];
      v10 = v9;
      v12 = v11;
    }

    v13 = [v10 objectForKeyedSubscript:v12];
  }

  else
  {
    v13 = 0;
  }

  if (v5)
  {
LABEL_13:
    if (!v13)
    {
      v14 = [v5 lowercaseString];
      v15 = _QLTypeGetKnownMimeTypes(v14);
      v13 = [v15 objectForKeyedSubscript:v14];
    }
  }

LABEL_15:

  return v13;
}

id _QLToolsGetKnownUTIs(uint64_t a1)
{
  if (_QLToolsGetKnownUTIs_onceToken != -1)
  {
    _QLToolsGetKnownUTIs_cold_1();
  }

  v2 = _QLToolsGetKnownUTIs__knownUTIs;

  return v2;
}

id _QLGetMimeTypeForContentType(void *a1)
{
  v1 = a1;
  v2 = _QLToolsGetKnownUTIs(v1);
  v3 = [v1 lowercaseString];

  v4 = [v2 objectForKey:v3];
  v5 = [v4 objectForKey:@"mime type"];

  return v5;
}

id _QLTypeGetKnownExtensions(uint64_t a1)
{
  if (_QLTypeGetKnownExtensions_onceToken != -1)
  {
    _QLTypeGetKnownExtensions_cold_1();
  }

  v2 = _QLTypeGetKnownExtensions__knownExtensions;

  return v2;
}

id _QLTypeGetKnownMimeTypes(uint64_t a1)
{
  if (_QLTypeGetKnownMimeTypes_onceToken != -1)
  {
    _QLTypeGetKnownMimeTypes_cold_1();
  }

  v2 = _QLTypeGetKnownMimeTypes__knownMimeTypes;

  return v2;
}

uint64_t _QLContentTypeConformsToContentTypeInSet(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___QLContentTypeConformsToContentTypeInSet_block_invoke;
  v8[3] = &unk_279AE1050;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateObjectsUsingBlock:v8];
  v6 = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v6;
}

void sub_2616756C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t BRNotificationNameForServerAvailabilityChanges_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_CloudDocs))
  {
    dlopenHelper_CloudDocs(a1);
  }

  return MEMORY[0x28214D2E8]();
}

uint64_t OICopyHTMLForOfficeData_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FA0]();
}

uint64_t OICopyHTMLFromFileAtURL_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FA8]();
}

uint64_t OICopyHTMLThumbnailForOfficeData_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FB0]();
}

uint64_t OICopyHTMLThumbnailFromFileAtURL_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FB8]();
}

uint64_t OIPreviewProcessWithDataAndOptions_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FC0]();
}

uint64_t OIPreviewProcessWithURLAndOptions_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    dlopenHelper_OfficeImport(a1);
  }

  return MEMORY[0x282195FC8]();
}

double gotLoadHelper_x8__OBJC_CLASS___PUProgressIndicatorView(double result)
{
  if (!atomic_load(&dlopenHelperFlag_PhotosUIPrivate))
  {
    return dlopenHelper_PhotosUIPrivate(result);
  }

  return result;
}

double gotLoadHelper_x8__kOIPreviewOptionsPassphrase(double result)
{
  if (!atomic_load(&dlopenHelperFlag_OfficeImport))
  {
    return dlopenHelper_OfficeImport(result);
  }

  return result;
}

double dlopenHelper_CloudDocs(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 0);
  atomic_store(1u, &dlopenHelperFlag_CloudDocs);
  return a1;
}

double dlopenHelper_OfficeImport(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/OfficeImport.framework/OfficeImport", 0);
  atomic_store(1u, &dlopenHelperFlag_OfficeImport);
  return a1;
}

double dlopenHelper_PhotosUIPrivate(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/PhotosUIPrivate.framework/PhotosUIPrivate", 0);
  atomic_store(1u, &dlopenHelperFlag_PhotosUIPrivate);
  return a1;
}