void FAUIInitLogging(uint64_t result, uint64_t a2)
{
  if (FAUIInitLogging_once != -1)
  {
    FAUIInitLogging_cold_1();
  }
}

uint64_t __FAUIInitLogging_block_invoke()
{
  fauiLogHandle = os_log_create("com.apple.FilesActionsUI", "FilesActionsUI");

  return MEMORY[0x2821F96F8]();
}

id FAUICreateTempFileURLInTemporaryDirectory(void *a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = MEMORY[0x277CCAD78];
  v3 = a1;
  v4 = [v2 UUID];
  v5 = [v4 UUIDString];
  v6 = [v1 stringWithFormat:@"temp_%@", v5];
  v7 = [v3 URLByAppendingPathComponent:v6];

  return v7;
}

id FAUICreateTemporaryFolderURLAppropriateForURL(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v8 = 0;
  v4 = [v3 URLForDirectory:99 inDomain:1 appropriateForURL:v2 create:1 error:&v8];

  v5 = v8;
  if (!v4)
  {
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUICreateTemporaryFolderURLAppropriateForURL_cold_1(&v9);
      v6 = v9;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      FAUICreateTemporaryFolderURLAppropriateForURL_cold_2(v5, v6);
    }
  }

  return v4;
}

void FAUICreatePDFFromDocumentURLs(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_attr_make_with_qos_class(v5, QOS_CLASS_USER_INITIATED, 0);

  v7 = dispatch_queue_create("com.apple.FilesActionsUI.queue.CreatePDF", v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __FAUICreatePDFFromDocumentURLs_block_invoke;
  v10[3] = &unk_278FFAC08;
  v11 = v3;
  v12 = v4;
  v8 = v4;
  v9 = v3;
  dispatch_async(v7, v10);
}

void _FAUICreatePDFFromDocumentURLs(void *a1, void *a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = a2;
  if (![v3 count])
  {
    goto LABEL_28;
  }

  v27 = v4;
  v5 = objc_alloc_init(getPDFDocumentClass());
  v6 = objc_alloc_init(MEMORY[0x277CCA9E8]);
  v7 = [MEMORY[0x277CBEB18] array];
  v28 = v3;
  [v3 sortedArrayUsingComparator:&__block_literal_global_0];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v8 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v44;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v42 = 0;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = ___FAUICreatePDFFromDocumentURLs_block_invoke;
        v37[3] = &unk_278FFAC30;
        v38 = 0;
        v39 = v12;
        v40 = v5;
        v41 = v7;
        [v6 coordinateReadingItemAtURL:v12 options:0 error:&v42 byAccessor:v37];
        v13 = v42;
      }

      v9 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v9);
  }

  v14 = _NewDocumentFileName(obj);
  v15 = _CreateTemporaryPDFFileURL(v14);

  if (![v5 pageCount])
  {
    v20 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(0, v16);
      v20 = fauiLogHandle;
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _FAUICreatePDFFromDocumentURLs_cold_2(v20);
    }

    goto LABEL_19;
  }

  v17 = [v5 writeToURL:v15];
  if ((v17 & 1) == 0)
  {
    v19 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v17, v18);
      v19 = fauiLogHandle;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _FAUICreatePDFFromDocumentURLs_cold_1();
    }

LABEL_19:

    v15 = 0;
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v21 = v7;
  v22 = [v21 countByEnumeratingWithState:&v33 objects:v47 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v34;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v34 != v24)
        {
          objc_enumerationMutation(v21);
        }

        _CleanupTemporaryImage(*(*(&v33 + 1) + 8 * j));
      }

      v23 = [v21 countByEnumeratingWithState:&v33 objects:v47 count:16];
    }

    while (v23);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___FAUICreatePDFFromDocumentURLs_block_invoke_4;
  block[3] = &unk_278FFAC58;
  v4 = v27;
  v31 = v15;
  v32 = v27;
  v26 = v15;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v3 = v28;
LABEL_28:
}

id getPDFDocumentClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPDFDocumentClass_softClass;
  v7 = getPDFDocumentClass_softClass;
  if (!getPDFDocumentClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getPDFDocumentClass_block_invoke;
    v3[3] = &unk_278FFACA0;
    v3[4] = &v4;
    __getPDFDocumentClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_24ABD2618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFURL *_AppendImageToDocument(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = 612.0;
  v20.size.height = 792.0;
  v21 = CGRectInset(v20, 30.0, 30.0);
  v5 = _DownsampleImage(v3, v21.size.width, v21.size.height);
  v6 = v5;
  if (v5)
  {
    v7 = CGImageSourceCreateWithURL(v5, 0);
    if (v7)
    {
      v8 = v7;
      v15 = 0;
      v16 = &v15;
      v17 = 0x2050000000;
      v9 = getPDFPageClass_softClass;
      v18 = getPDFPageClass_softClass;
      if (!getPDFPageClass_softClass)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __getPDFPageClass_block_invoke;
        v14[3] = &unk_278FFACA0;
        v14[4] = &v15;
        __getPDFPageClass_block_invoke(v14);
        v9 = v16[3];
      }

      v10 = v9;
      _Block_object_dispose(&v15, 8);
      v11 = [[v9 alloc] initWithImageSource:v8];
      v12 = v11;
      if (v11)
      {
        [v11 setBounds:0 forBox:{0.0, 0.0, 612.0, 792.0}];
        [v12 setBounds:1 forBox:{0.0, 0.0, 612.0, 792.0}];
        [v4 insertPage:v12 atIndex:{objc_msgSend(v4, "pageCount")}];
      }

      CFRelease(v8);
    }

    if ([(__CFURL *)v6 isEqual:v3])
    {

      v6 = 0;
    }
  }

  return v6;
}

void sub_24ABD2A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _AppendDocumentToDocument(void *a1, void *a2)
{
  v8 = a1;
  v3 = a2;
  v4 = [v8 pageCount];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [v8 pageAtIndex:i];
      [v3 insertPage:v7 atIndex:{objc_msgSend(v3, "pageCount")}];
    }
  }
}

id _CreateTemporaryPDFFileURL(void *a1)
{
  v1 = a1;
  v2 = NSTemporaryDirectory();
  v3 = [v2 stringByAppendingPathComponent:v1];

  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v3];

  return v4;
}

id _NewDocumentFileName(void *a1)
{
  v1 = [a1 sortedArrayUsingComparator:&__block_literal_global_0];
  v2 = [v1 count];
  v3 = [v1 firstObject];
  v4 = [v3 lastPathComponent];
  v5 = [v4 stringByDeletingPathExtension];

  if (v2 == 1)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.pdf", v5];
  }

  else
  {
    v7 = [MEMORY[0x277CBEAA8] date];
    v8 = _FormattedDate(v7);

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@.pdf", v5, v8];
  }

  return v6;
}

void _CleanupTemporaryImage(void *a1)
{
  v1 = MEMORY[0x277CCAA00];
  v2 = a1;
  v3 = [v1 defaultManager];
  v8 = 0;
  [v3 removeItemAtURL:v2 error:&v8];

  v4 = v8;
  if (v4)
  {
    v7 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v5, v6);
      v7 = fauiLogHandle;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _CleanupTemporaryImage_cold_1();
    }
  }
}

const __CFURL *_DownsampleImage(void *a1, double a2, double a3)
{
  v42[4] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = _CreateTemporaryImageFileURL();
  if (v6)
  {
    v7 = CGImageSourceCreateWithURL(v5, 0);
    if (v7)
    {
      v9 = v7;
      v10 = CGImageSourceCopyPropertiesAtIndex(v7, 0, 0);
      v11 = [(__CFDictionary *)v10 valueForKey:*MEMORY[0x277CD3450]];
      v12 = [(__CFDictionary *)v10 valueForKey:*MEMORY[0x277CD3448]];
      [v11 floatValue];
      v14 = v13;
      v15 = v13;
      v16 = [v12 floatValue];
      v19 = v18;
      v20 = v18;
      v21 = a2 / v15;
      if (a2 >= v15)
      {
        v21 = 1.0;
      }

      if (v21 * v20 > a3)
      {
        v21 = a3 / v20;
      }

      if (v21 == 1.0)
      {
        v36 = fauiLogHandle;
        if (!fauiLogHandle)
        {
          FAUIInitLogging(v16, v17);
          v36 = fauiLogHandle;
        }

        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          _DownsampleImage_cold_1();
        }

        v37 = v5;

        v6 = v37;
      }

      else
      {
        Type = CGImageSourceGetType(v9);
        if (Type)
        {
          v24 = CGImageDestinationCreateWithURL(v6, Type, 1uLL, 0);
          if (v24)
          {
            v26 = v24;
            v41[0] = *MEMORY[0x277CD2D40];
            if (v14 >= v19)
            {
              v27 = v15;
            }

            else
            {
              v27 = v20;
            }

            v28 = [MEMORY[0x277CCABB0] numberWithDouble:v27];
            v29 = *MEMORY[0x277CD3618];
            v42[0] = v28;
            v42[1] = MEMORY[0x277CBEC28];
            v30 = *MEMORY[0x277CD3578];
            v41[1] = v29;
            v41[2] = v30;
            v41[3] = *MEMORY[0x277CD3678];
            v42[2] = MEMORY[0x277CBEC38];
            v42[3] = MEMORY[0x277CBEC38];
            v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:4];

            CGImageDestinationAddImageFromSource(v26, v9, 0, v31);
            if (!CGImageDestinationFinalize(v26))
            {

              v34 = fauiLogHandle;
              if (!fauiLogHandle)
              {
                FAUIInitLogging(v32, v33);
                v34 = fauiLogHandle;
              }

              if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
              {
                _DownsampleImage_cold_2();
              }

              v6 = 0;
            }

            CFRelease(v26);
          }

          else
          {
            v39 = fauiLogHandle;
            if (!fauiLogHandle)
            {
              FAUIInitLogging(0, v25);
              v39 = fauiLogHandle;
            }

            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              _DownsampleImage_cold_3();
            }
          }
        }

        else
        {
          v38 = fauiLogHandle;
          if (!fauiLogHandle)
          {
            FAUIInitLogging(0, v23);
            v38 = fauiLogHandle;
          }

          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            _DownsampleImage_cold_4();
          }
        }
      }

      CFRelease(v9);
    }

    else
    {
      v35 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(0, v8);
        v35 = fauiLogHandle;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        _DownsampleImage_cold_5();
      }
    }
  }

  return v6;
}

id _CreateTemporaryImageFileURL()
{
  v0 = NSTemporaryDirectory();
  v1 = [MEMORY[0x277CCAD78] UUID];
  v2 = [v1 UUIDString];
  v3 = [v0 stringByAppendingPathComponent:v2];

  v4 = [v3 stringByAppendingPathExtension:@"jpeg"];

  v5 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:v4];

  return v5;
}

id _FormattedDate(void *a1)
{
  v1 = a1;
  if (!v1)
  {
    v1 = [MEMORY[0x277CBEAA8] date];
  }

  v2 = objc_alloc_init(MEMORY[0x277CCA968]);
  v3 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US_POSIX"];
  [v2 setLocale:v3];

  [v2 setDateFormat:@"yyyy-MM-dd' at 'h.mm.ss a"];
  v4 = [v2 stringFromDate:v1];

  return v4;
}

Class __getPDFDocumentClass_block_invoke(uint64_t a1)
{
  PDFKitLibrary();
  result = objc_getClass("PDFDocument");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDFDocumentClass_block_invoke_cold_1();
  }

  getPDFDocumentClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void PDFKitLibrary()
{
  v3 = *MEMORY[0x277D85DE8];
  v0[0] = 0;
  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    v0[1] = MEMORY[0x277D85DD0];
    v0[2] = 3221225472;
    v0[3] = __PDFKitLibraryCore_block_invoke;
    v0[4] = &__block_descriptor_40_e5_v8__0l;
    v0[5] = v0;
    v1 = xmmword_278FFACC0;
    v2 = 0;
    PDFKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!PDFKitLibraryCore_frameworkLibrary)
  {
    PDFKitLibrary_cold_1(v0);
  }

  if (v0[0])
  {
    free(v0[0]);
  }
}

uint64_t __PDFKitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  PDFKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getPDFPageClass_block_invoke(uint64_t a1)
{
  PDFKitLibrary();
  result = objc_getClass("PDFPage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getPDFPageClass_block_invoke_cold_1();
  }

  getPDFPageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void OUTLINED_FUNCTION_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void FAUIRotateMovies(void *a1, uint64_t a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v20 = a3;
  v23 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v5 setQualityOfService:25];
  v24 = v5;
  [v5 setName:@"RotateReaderWriterQueue"];
  v6 = dispatch_group_create();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    do
    {
      v10 = 0;
      do
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v36 + 1) + 8 * v10);
        dispatch_group_enter(v6);
        v12 = objc_alloc_init(MEMORY[0x277CCA9E8]);
        v13 = [MEMORY[0x277CCA9E0] readingIntentWithURL:v11 options:0];
        v14 = [v11 startAccessingSecurityScopedResource];
        v40 = v13;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v40 count:1];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __FAUIRotateMovies_block_invoke;
        v28[3] = &unk_278FFAD50;
        v29 = v23;
        v30 = v11;
        v35 = v14;
        v31 = v6;
        v32 = v13;
        v33 = v12;
        v34 = a2;
        v16 = v12;
        v17 = v13;
        [v16 coordinateAccessWithIntents:v15 queue:v24 byAccessor:v28];

        ++v10;
      }

      while (v8 != v10);
      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __FAUIRotateMovies_block_invoke_12;
  block[3] = &unk_278FFAC58;
  v26 = v23;
  v27 = v20;
  v18 = v23;
  v19 = v20;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);
}

void __FAUIRotateMovies_block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v3, v4);
      v6 = fauiLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateMovies_block_invoke_cold_1(v5, v6);
    }

    [*(a1 + 32) setObject:v5 forKey:*(a1 + 40)];
    if (*(a1 + 80) == 1)
    {
      [*(a1 + 40) stopAccessingSecurityScopedResource];
    }

    dispatch_group_leave(*(a1 + 48));
  }

  else
  {
    v7 = [*(a1 + 56) URL];
    v8 = FAUICreateTemporaryFolderURLAppropriateForURL(v7);

    v9 = FAUICreateTempFileURLInTemporaryDirectory(v8);
    v10 = [MEMORY[0x277CCAA00] defaultManager];
    v11 = [*(a1 + 56) URL];
    v34 = 0;
    [v10 copyItemAtURL:v11 toURL:v9 error:&v34];
    v12 = v34;

    if (v12)
    {
      v15 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(v13, v14);
        v15 = fauiLogHandle;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v22 = *(a1 + 56);
        v23 = v15;
        v24 = [v22 URL];
        *buf = 138412802;
        v36 = v24;
        v37 = 2112;
        v38 = v9;
        v39 = 2112;
        v40 = v12;
        _os_log_error_impl(&dword_24ABD1000, v23, OS_LOG_TYPE_ERROR, "Failed to copy %@ to temp file %@ error: %@", buf, 0x20u);
      }
    }

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __FAUIRotateMovies_block_invoke_6;
    v25[3] = &unk_278FFAD28;
    v16 = *(a1 + 72);
    v26 = *(a1 + 64);
    v27 = *(a1 + 56);
    v28 = v9;
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    v19 = *(a1 + 48);
    v29 = v17;
    v30 = v18;
    v31 = v8;
    v33 = *(a1 + 80);
    v32 = v19;
    v20 = v8;
    v21 = v9;
    _FAUIRotateMovie(v21, v21, v16, v25);
  }
}

void _FAUIRotateMovie(void *a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v8 = a4;
  v9 = a2;
  v10 = [v7 startAccessingSecurityScopedResource];
  v11 = [MEMORY[0x277CE6560] movieWithURL:v7 options:0];
  v12 = [v11 tracksWithMediaType:*MEMORY[0x277CE5EA8]];
  v13 = [v12 firstObject];

  v14 = 4.71238898;
  if (a3 != 1)
  {
    v14 = 0.0;
  }

  if (a3)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.57079633;
  }

  if (v13)
  {
    objc_msgSend_preferredTransform(v13, v14);
  }

  else
  {
    memset(&t1, 0, sizeof(t1));
  }

  CGAffineTransformMakeRotation(&t2, v15);
  CGAffineTransformConcat(&v27, &t1, &t2);
  [v13 setPreferredTransform:&v27];
  v16 = *MEMORY[0x277CE5DA8];
  v24 = 0;
  v17 = [v11 writeMovieHeaderToURL:v9 fileType:v16 options:0 error:&v24];

  v18 = v24;
  v20 = v18;
  if (v18)
  {
    v21 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v18, v19);
      v21 = fauiLogHandle;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      _FAUIRotateMovie_cold_1(v20, v21);
    }

    v22 = v20;
LABEL_19:
    v23 = v22;
    if (!v10)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if ((v17 & 1) == 0)
  {
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    goto LABEL_19;
  }

  v23 = 0;
  if (v10)
  {
LABEL_20:
    [v7 stopAccessingSecurityScopedResource];
  }

LABEL_21:
  if (v8)
  {
    v8[2](v8, v17, v23);
  }
}

void __FAUIRotateMovies_block_invoke_6(uint64_t a1, int a2, void *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v29 = 0;
    v30 = &v29;
    v31 = 0x3032000000;
    v32 = __Block_byref_object_copy_;
    v33 = __Block_byref_object_dispose_;
    v34 = 0;
    v7 = *(a1 + 32);
    v8 = [*(a1 + 40) URL];
    v9 = (v30 + 5);
    obj = v30[5];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __FAUIRotateMovies_block_invoke_7;
    v25[3] = &unk_278FFAD00;
    v26 = *(a1 + 48);
    v27 = &v29;
    [v7 coordinateWritingItemAtURL:v8 options:0 error:&obj byAccessor:v25];
    objc_storeStrong(v9, obj);

    if (v30[5])
    {
      v12 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(v10, v11);
        v12 = fauiLogHandle;
      }

      v13 = v12;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v22 = [*(a1 + 40) URL];
        v23 = *(a1 + 48);
        *buf = 138412802;
        v36 = v22;
        v37 = 2112;
        v38 = v23;
        v39 = 2112;
        v40 = v6;
        _os_log_error_impl(&dword_24ABD1000, v13, OS_LOG_TYPE_ERROR, "Failed to replace %@ with temp file %@ error: %@", buf, 0x20u);
      }

      v14 = [MEMORY[0x277CCAA00] defaultManager];
      [v14 removeItemAtURL:*(a1 + 48) error:0];

      [*(a1 + 56) setObject:v30[5] forKey:*(a1 + 64)];
    }

    v15 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = *(a1 + 72);
    v24 = 0;
    [v15 removeItemAtURL:v16 error:&v24];
    v17 = v24;

    if (v17)
    {
      v20 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(v18, v19);
        v20 = fauiLogHandle;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __FAUIRotateMovies_block_invoke_6_cold_1((a1 + 72), v17, v20);
      }
    }

    _Block_object_dispose(&v29, 8);
  }

  else if (v5)
  {
    [*(a1 + 56) setObject:v5 forKey:*(a1 + 64)];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CE5DC0] code:-11800 userInfo:0];
    [*(a1 + 56) setObject:v21 forKey:*(a1 + 64)];
  }

  if (*(a1 + 88) == 1)
  {
    [*(a1 + 64) stopAccessingSecurityScopedResource];
  }

  dispatch_group_leave(*(a1 + 80));
}

void sub_24ABD4088(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FAUIRotateMovies_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCAA00];
  v4 = a2;
  v5 = [v3 defaultManager];
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  [v5 replaceItemAtURL:v4 withItemAtURL:v6 backupItemName:0 options:0 resultingItemURL:0 error:&obj];

  objc_storeStrong((v7 + 40), obj);
}

void __FAUIRotateMovies_block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) allKeys];
    (*(v1 + 16))(v1, [v3 count] == 0, *(a1 + 32));
  }
}

double _FAUIRotationDirectionToRadians(uint64_t a1)
{
  result = 4.71238898;
  if (a1 != 1)
  {
    result = 0.0;
  }

  if (!a1)
  {
    return 1.57079633;
  }

  return result;
}

BOOL FAUIRotateImage(void *a1, void *a2, uint64_t a3)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v7 = CGDataProviderCreateWithURL(v5);
  if (v7)
  {
    v9 = v7;
    v10 = CGImageSourceCreateWithDataProvider(v7, 0);
    if (!v10)
    {
      v34 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(0, v11);
        v34 = fauiLogHandle;
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_5();
      }

      v28 = 0;
      goto LABEL_40;
    }

    v12 = v10;
    Type = CGImageSourceGetType(v10);
    if (Type)
    {
      v15 = CGImageDestinationCreateWithURL(v6, Type, 1uLL, 0);
      if (v15)
      {
        v17 = v15;
        v18 = CGImageSourceCopyMetadataAtIndex(v12, 0, 0);
        if (v18)
        {
          v19 = v18;
          v20 = CGImageSourceCopyPropertiesAtIndex(v12, 0, 0);
          v21 = [(__CFDictionary *)v20 valueForKey:*MEMORY[0x277CD3410]];
          if (!v21)
          {
            v21 = &unk_285E204A8;
          }

          v39 = v21;
          v22 = [v21 intValue];
          if ((v22 - 9) <= 0xFFFFFFF7)
          {
            FAUIRotateImage_cold_2();
          }

          v23 = &_FAUICounterClockwiseTranslations;
          if (!a3)
          {
            v23 = &_FAUIClockwiseTranslations;
          }

          v24 = v23[v22];
          v25 = *MEMORY[0x277CD2D68];
          v41[0] = *MEMORY[0x277CD2D50];
          v41[1] = v25;
          v42[0] = MEMORY[0x277CBEC38];
          v26 = [MEMORY[0x277CCABB0] numberWithInt:v24];
          v42[1] = v26;
          v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];

          err = 0;
          v28 = CGImageDestinationCopyImageSource(v17, v12, v27, &err);
          if (err)
          {
            v38 = v20;
            v29 = CFErrorCopyDescription(err);
            v31 = v29;
            v32 = fauiLogHandle;
            if (!fauiLogHandle)
            {
              FAUIInitLogging(v29, v30);
              v32 = fauiLogHandle;
            }

            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              FAUIRotateImage_cold_1();
            }

            v20 = v38;
          }

          CFRelease(v19);
        }

        else
        {
          v28 = 0;
        }

        CFRelease(v17);
        goto LABEL_39;
      }

      v36 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(0, v16);
        v36 = fauiLogHandle;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_3();
      }
    }

    else
    {
      v35 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(0, v14);
        v35 = fauiLogHandle;
      }

      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        FAUIRotateImage_cold_4();
      }
    }

    v28 = 0;
LABEL_39:
    CFRelease(v12);
LABEL_40:
    CFRelease(v9);
    goto LABEL_41;
  }

  v33 = fauiLogHandle;
  if (!fauiLogHandle)
  {
    FAUIInitLogging(0, v8);
    v33 = fauiLogHandle;
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    FAUIRotateImage_cold_6();
  }

  v28 = 0;
LABEL_41:

  return v28;
}

void FAUIRotateImages(void *a1, uint64_t a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v19 = a3;
  v44[0] = 0;
  v44[1] = v44;
  v44[2] = 0x2020000000;
  v44[3] = 0;
  v5 = objc_alloc_init(MEMORY[0x277CCABD8]);
  [v5 setQualityOfService:25];
  [v5 setName:@"RotateReaderWriterQueue"];
  v6 = dispatch_group_create();
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v7)
  {
    v21 = *v41;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v41 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        v10 = [objc_alloc(MEMORY[0x277CCA9E8]) initWithFilePresenter:0];
        v11 = [MEMORY[0x277CCA9E0] readingIntentWithURL:v9 options:0];
        v12 = [v9 startAccessingSecurityScopedResource];
        v38[0] = 0;
        v38[1] = v38;
        v38[2] = 0x3032000000;
        v38[3] = __Block_byref_object_copy__0;
        v38[4] = __Block_byref_object_dispose__0;
        v39 = 0;
        dispatch_group_enter(v6);
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __FAUIRotateImages_block_invoke;
        v34[3] = &unk_278FFAD78;
        v37 = v12;
        v36 = v38;
        v34[4] = v9;
        v35 = v6;
        v13 = MEMORY[0x24C22B2D0](v34);
        v45 = v11;
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
        v26[0] = MEMORY[0x277D85DD0];
        v26[1] = 3221225472;
        v26[2] = __FAUIRotateImages_block_invoke_6;
        v26[3] = &unk_278FFADC8;
        v31 = v44;
        v15 = v13;
        v30 = v15;
        v32 = v38;
        v16 = v11;
        v27 = v16;
        v33 = a2;
        v17 = v10;
        v28 = v17;
        v29 = v5;
        [v17 coordinateAccessWithIntents:v14 queue:v29 byAccessor:v26];

        _Block_object_dispose(v38, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v7);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __FAUIRotateImages_block_invoke_9;
  block[3] = &unk_278FFADF0;
  v24 = v19;
  v25 = v44;
  v18 = v19;
  dispatch_group_notify(v6, MEMORY[0x277D85CD0], block);

  _Block_object_dispose(v44, 8);
}

void sub_24ABD4980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, ...)
{
  va_start(va, a54);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __FAUIRotateImages_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(*(*(a1 + 48) + 8) + 40);
  v9 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v9];
  v5 = v9;

  if ((v4 & 1) == 0)
  {
    v8 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v6, v7);
      v8 = fauiLogHandle;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_cold_1(a1 + 48, v5, v8);
    }
  }

  if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) stopAccessingSecurityScopedResource];
  }

  dispatch_group_leave(*(a1 + 40));
}

void __FAUIRotateImages_block_invoke_6(uint64_t a1, void *a2)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v3, v4);
      v6 = fauiLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_6_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) URL];
    v8 = FAUICreateTemporaryFolderURLAppropriateForURL(v7);
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = FAUICreateTempFileURLInTemporaryDirectory(*(*(*(a1 + 72) + 8) + 40));
    v12 = [*(a1 + 32) URL];
    v13 = FAUIRotateImage(v12, v11, *(a1 + 80));

    if (v13)
    {
      v14 = MEMORY[0x277CCA9E0];
      v15 = [*(a1 + 32) URL];
      v16 = [v14 writingIntentWithURL:v15 options:0];

      v17 = *(a1 + 40);
      v28[0] = v16;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
      v19 = *(a1 + 48);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __FAUIRotateImages_block_invoke_7;
      v23[3] = &unk_278FFADA0;
      v24 = v16;
      v25 = v11;
      v26 = *(a1 + 32);
      v22 = *(a1 + 56);
      v20 = v22;
      v27 = v22;
      v21 = v16;
      [v17 coordinateAccessWithIntents:v18 queue:v19 byAccessor:v23];
    }

    else
    {
      ++*(*(*(a1 + 64) + 8) + 24);
      (*(*(a1 + 56) + 16))();
    }
  }
}

void __FAUIRotateImages_block_invoke_7(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    ++*(*(*(a1 + 64) + 8) + 24);
    v6 = fauiLogHandle;
    if (!fauiLogHandle)
    {
      FAUIInitLogging(v3, v4);
      v6 = fauiLogHandle;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __FAUIRotateImages_block_invoke_7_cold_1();
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [*(a1 + 32) URL];
    v9 = *(a1 + 40);
    v15 = 0;
    v10 = [v7 replaceItemAtURL:v8 withItemAtURL:v9 backupItemName:0 options:0 resultingItemURL:0 error:&v15];
    v11 = v15;

    if ((v10 & 1) == 0)
    {
      v14 = fauiLogHandle;
      if (!fauiLogHandle)
      {
        FAUIInitLogging(v12, v13);
        v14 = fauiLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        __FAUIRotateImages_block_invoke_7_cold_2(a1, v14);
      }

      ++*(*(*(a1 + 64) + 8) + 24);
    }
  }

  (*(*(a1 + 56) + 16))();
}

uint64_t __FAUIRotateImages_block_invoke_9(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 24) == 0);
  }

  return result;
}

void FAUICreateTemporaryFolderURLAppropriateForURL_cold_1(void *a1)
{
  if (FAUIInitLogging_once != -1)
  {
    dispatch_once(&FAUIInitLogging_once, &__block_literal_global);
  }

  *a1 = fauiLogHandle;
}

void FAUICreateTemporaryFolderURLAppropriateForURL_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to create temp directory: %@", &v2, 0xCu);
}

void _DownsampleImage_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  v2 = 0;
  _os_log_error_impl(&dword_24ABD1000, v0, OS_LOG_TYPE_ERROR, "Downsample image: failed to finalize image destination of type: %@ at file URL: %@", v1, 0x16u);
}

void __getPDFDocumentClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFDocumentClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FAUICombinePDFAction.m" lineNumber:24 description:{@"Unable to find class %s", "PDFDocument"}];

  __break(1u);
}

void PDFKitLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x277CCA890] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void *PDFKitLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"FAUICombinePDFAction.m" lineNumber:22 description:{@"%s", *a1}];

  __break(1u);
}

void __getPDFPageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"Class getPDFPageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"FAUICombinePDFAction.m" lineNumber:23 description:{@"Unable to find class %s", "PDFPage"}];

  __break(1u);
}

void __FAUIRotateMovies_block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to take a coordinated read: %@", &v2, 0xCu);
}

void _FAUIRotateMovie_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24ABD1000, a2, OS_LOG_TYPE_ERROR, "Failed to rotate video file: %@", &v2, 0xCu);
}

void __FAUIRotateMovies_block_invoke_6_cold_1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24ABD1000, log, OS_LOG_TYPE_ERROR, "Failed to delete temp directory %@ error: %@", &v4, 0x16u);
}

void __FAUIRotateImages_block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(*a1 + 8) + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_24ABD1000, log, OS_LOG_TYPE_ERROR, "Failed to remove temporary folder %@: %@", &v4, 0x16u);
}

void __FAUIRotateImages_block_invoke_7_cold_2(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  v3 = a2;
  v4 = [v2 URL];
  OUTLINED_FUNCTION_0();
  v7 = 2112;
  v8 = v5;
  v9 = 2112;
  v10 = 0;
  _os_log_error_impl(&dword_24ABD1000, v3, OS_LOG_TYPE_ERROR, "Failed to replace %@ with temp file %@ error: %@", v6, 0x20u);
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}