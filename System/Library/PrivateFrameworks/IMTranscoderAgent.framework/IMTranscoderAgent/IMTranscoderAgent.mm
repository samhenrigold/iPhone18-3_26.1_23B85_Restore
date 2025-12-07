void sub_254815874(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_status(*(a1 + 32), a2, a3, a4);
  v6 = IMOSLoggingEnabled();
  if (v5 == 5)
  {
    if (v6)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        LOWORD(v32.value) = 0;
        _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Export canceled", &v32, 2u);
      }
    }

    v20 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, @"__kIMTranscodeErrorDomain", -6, 0);
    goto LABEL_13;
  }

  if (v5 == 4)
  {
    if (v6)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = objc_msgSend_error(*(a1 + 32), v11, v12, v13);
        LODWORD(v32.value) = 138412290;
        *(&v32.value + 4) = v14;
        _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Export failed: %@", &v32, 0xCu);
      }
    }

    v15 = MEMORY[0x277CCA9B8];
    v35 = *MEMORY[0x277CCA7E8];
    v16 = objc_msgSend_error(*(a1 + 32), v7, v8, v9);
    v36[0] = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v36, &v35, 1);
    v20 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v19, @"__kIMTranscodeErrorDomain", -4, v18);

LABEL_13:
    v25 = 0;
    goto LABEL_19;
  }

  if (v6)
  {
    v26 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      LOWORD(v32.value) = 0;
      _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "Export succeeded!", &v32, 2u);
    }
  }

  v25 = objc_msgSend_outputURL(*(a1 + 32), v7, v8, v9);
  v20 = 0;
LABEL_19:
  if (*(a1 + 40))
  {
    v33 = @"Duration";
    v27 = MEMORY[0x277CCABB0];
    Seconds = *(a1 + 48);
    if (Seconds < 2.22044605e-16)
    {
      v32 = *(a1 + 56);
      Seconds = CMTimeGetSeconds(&v32);
    }

    v29 = objc_msgSend_numberWithDouble_(v27, v21, v22, v23, Seconds);
    v34 = v29;
    v31 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v30, &v34, &v33, 1);

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t sub_254815F10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_254815F28(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_status(*(a1 + 32), a2, a3, a4);
  v6 = IMOSLoggingEnabled();
  if (v5 == 5)
  {
    if (v6)
    {
      v23 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40.value) = 0;
        _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "mpeg4 conversion canceled", &v40, 2u);
      }
    }

    v24 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v7, @"__kIMTranscodeErrorDomain", -6, 0);
    v25 = *(a1 + 56);
    goto LABEL_18;
  }

  if (v5 != 4)
  {
    if (v6)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(v40.value) = 0;
        _os_log_impl(&dword_254811000, v26, OS_LOG_TYPE_INFO, "mpeg4 conversion succeeded!", &v40, 2u);
      }
    }

    v24 = objc_msgSend_outputURL(*(a1 + 32), v7, v8, v9);
    v25 = *(a1 + 64);
LABEL_18:
    v27 = *(v25 + 8);
    v16 = *(v27 + 40);
    *(v27 + 40) = v24;
    goto LABEL_19;
  }

  if (v6)
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = objc_msgSend_error(*(a1 + 32), v11, v12, v13);
      LODWORD(v40.value) = 138412290;
      *(&v40.value + 4) = v14;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "mpeg4 conversion failed: %@", &v40, 0xCu);
    }
  }

  v15 = MEMORY[0x277CCA9B8];
  v41 = *MEMORY[0x277CCA7E8];
  v16 = objc_msgSend_error(*(a1 + 32), v7, v8, v9);
  v42[0] = v16;
  v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v42, &v41, 1);
  v20 = objc_msgSend_errorWithDomain_code_userInfo_(v15, v19, @"__kIMTranscodeErrorDomain", -4, v18);
  v21 = *(*(a1 + 56) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v20;

LABEL_19:
  if (*(a1 + 48))
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v32 = MEMORY[0x277CCABB0];
    v33 = *(a1 + 40);
    if (v33)
    {
      objc_msgSend_duration(v33, v28, v29, v30);
    }

    else
    {
      memset(&v40, 0, sizeof(v40));
    }

    Seconds = CMTimeGetSeconds(&v40);
    v38 = objc_msgSend_numberWithDouble_(v32, v35, v36, v37, Seconds);
    objc_msgSend_setObject_forKey_(v31, v39, v38, @"Duration");

    (*(*(a1 + 48) + 16))();
  }
}

void sub_2548177E0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a2 == 1)
  {
    sub_254830FF0(a1);
    JUMPOUT(0x254817114);
  }

  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a58, 8);
  _Block_object_dispose(&a64, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&STACK[0x218], 8);
  _Block_object_dispose(&STACK[0x238], 8);
  _Block_object_dispose(&STACK[0x268], 8);
  _Block_object_dispose((v65 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_254817AC4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__fileSizeForTransfer_(*(a1 + 32), v10, v7, v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(*(*(a1 + 48) + 8) + 24);
      if (*(a1 + 80))
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v24 = 134218754;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_254811000, v12, OS_LOG_TYPE_INFO, "Transcoding bigSize finished with size %llu removeAlpha %@ path %@ and error %@", &v24, 0x2Au);
    }
  }

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v9;
  v20 = v9;

  v21 = *(*(a1 + 72) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v8;
  v23 = v8;

  dispatch_group_leave(*(a1 + 40));
}

void sub_254817C84(uint64_t a1, void *a2, void *a3, void *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  *(*(*(a1 + 48) + 8) + 24) = objc_msgSend__fileSizeForTransfer_(*(a1 + 32), v10, v7, v11);
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = *(*(*(a1 + 48) + 8) + 24);
      if (*(a1 + 80))
      {
        v14 = @"YES";
      }

      else
      {
        v14 = @"NO";
      }

      v24 = 134218754;
      v25 = v13;
      v26 = 2112;
      v27 = v14;
      v28 = 2112;
      v29 = v7;
      v30 = 2112;
      v31 = v9;
      _os_log_impl(&dword_254811000, v12, OS_LOG_TYPE_INFO, "Transcoding smallSize finished with size %llu removeAlpha %@ path %@ and error %@", &v24, 0x2Au);
    }
  }

  v15 = *(*(a1 + 56) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v7;
  v17 = v7;

  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v8;
  v20 = v8;

  v21 = *(*(a1 + 72) + 8);
  v22 = *(v21 + 40);
  *(v21 + 40) = v9;
  v23 = v9;

  dispatch_group_leave(*(a1 + 40));
}

uint64_t (*sub_254817E44())(void)
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetWidth", @"IOSurface");
  off_27F611A18 = result;
  return result;
}

uint64_t (*sub_254817E74())(void)
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetHeight", @"IOSurface");
  off_27F611A28 = result;
  return result;
}

uint64_t (*sub_254817EA4())(void)
{
  result = MEMORY[0x259C1B200]("IOSurfaceGetBaseAddress", @"IOSurface");
  off_27F611A38 = result;
  return result;
}

void *sub_254817ED4()
{
  result = MEMORY[0x259C1B200]("IOSurfaceLock", @"IOSurface");
  off_27F611A48 = result;
  return result;
}

void *sub_254817F04()
{
  result = MEMORY[0x259C1B200]("IOSurfaceUnlock", @"IOSurface");
  off_27F611A58 = result;
  return result;
}

__CFData *sub_25481DAD4(CGImageSource *a1, unint64_t a2, double a3, double a4)
{
  v221[1] = *MEMORY[0x277D85DE8];
  v4 = ceil(a3);
  v5 = ceil(a4);
  if (v4 >= v5)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= 1.84467441e19)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1.84467441e19;
  }

  Count = CGImageSourceGetCount(a1);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v203 = objc_msgSend_initWithCapacity_(v9, v10, Count, v11);
  if (Count)
  {
    v13 = 0;
    v14 = *MEMORY[0x277CD3648];
    v15 = *MEMORY[0x277CD31C8];
    v16 = *MEMORY[0x277CD31E8];
    v17 = *MEMORY[0x277CD31C0];
    v18 = MEMORY[0x277CBEC38];
    do
    {
      LODWORD(valuePtr) = 0;
      v221[0] = v14;
      *buf = v18;
      v19 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, buf, v221, 1);
      v20 = CGImageSourceCopyPropertiesAtIndex(a1, v13, v19);

      if (v20)
      {
        Value = CFDictionaryGetValue(v20, v15);
        v22 = Value;
        if (Value)
        {
          v23 = CFDictionaryGetValue(Value, v16);
          if (v23 || (v23 = CFDictionaryGetValue(v22, v17)) != 0)
          {
            CFNumberGetValue(v23, kCFNumberFloatType, &valuePtr);
          }
        }

        CFRelease(v20);
        v24 = *&valuePtr;
      }

      else
      {
        v24 = 0.0;
      }

      if (v24 >= 0.011)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0.1;
      }

      v26 = objc_alloc(MEMORY[0x277CCABB0]);
      v30 = objc_msgSend_initWithDouble_(v26, v27, v28, v29, v25);
      objc_msgSend_addObject_(v203, v31, v30, v32);

      ++v13;
    }

    while (Count != v13);
  }

  if (IMOSLoggingEnabled())
  {
    v33 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      *&buf[4] = Count;
      *&buf[12] = 2112;
      *&buf[14] = v203;
      _os_log_impl(&dword_254811000, v33, OS_LOG_TYPE_INFO, "GIF wanted %zu durations. Generated: %@.", buf, 0x16u);
    }
  }

  v34 = CGImageSourceGetCount(a1);
  v35 = objc_alloc(MEMORY[0x277CBEB18]);
  v204 = objc_msgSend_initWithCapacity_(v35, v36, v34, v37);
  v38 = objc_alloc_init(MEMORY[0x277CBEA78]);
  objc_msgSend_setName_(v38, v39, @"IMTranscoderAgent _GIFCreateFrameGenerationBlocksForImageSource source frame cache", v40);
  objc_msgSend_setCountLimit_(v38, v41, v34, v42);
  v43 = v7;
  Width = 0;
  if (v34)
  {
    for (i = 0; i != v34; ++i)
    {
      v46 = v38;
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 3221225472;
      *&buf[16] = sub_254824048;
      *&buf[24] = &unk_27978ABB8;
      *&buf[32] = v46;
      v218 = i;
      v219 = v7;
      v220 = a1;
      v50 = objc_msgSend_copy(buf, v47, v48, v49);

      if (!Width)
      {
        v51 = v50[2](v50);
        v52 = v51;
        if (v51)
        {
          Width = CGImageGetWidth(v51);
          Height = CGImageGetHeight(v52);
          if (Width <= Height)
          {
            Width = Height;
          }

          CFRelease(v52);
        }

        else
        {
          Width = 0;
        }
      }

      v54 = MEMORY[0x259C1B690](v50);
      objc_msgSend_addObject_(v204, v55, v54, v56);
    }
  }

  v201 = objc_msgSend_count(v204, v57, v58, v59);
  if (IMOSLoggingEnabled())
  {
    v60 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = Width;
      _os_log_impl(&dword_254811000, v60, OS_LOG_TYPE_INFO, "Real width is: %d", buf, 8u);
    }
  }

  v200 = 0;
  v61 = Width;
  if (Width >= v43)
  {
    v62 = v4;
  }

  else
  {
    v62 = Width;
  }

  if (Width >= v43)
  {
    v61 = v5;
  }

  v194 = v201;
  v210 = v201 - 1;
  v211 = 0;
  key = *MEMORY[0x277CD3450];
  v197 = *MEMORY[0x277CD3448];
  v192 = v61;
  v193 = v62;
  v64 = v62 * v61;
  v208 = *MEMORY[0x277CD31C8];
  v196 = *MEMORY[0x277CD31D8];
  v199 = *MEMORY[0x277CE1D88];
  v207 = *MEMORY[0x277CD31C0];
  while (1)
  {
    context = objc_autoreleasePoolPush();
    v68 = objc_msgSend_mutableCopy(v204, v65, v66, v67);
    v72 = objc_msgSend_mutableCopy(v203, v69, v70, v71);
    if (IMOSLoggingEnabled())
    {
      v73 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v201;
        _os_log_impl(&dword_254811000, v73, OS_LOG_TYPE_INFO, "Trying to create GIF with %d frames", buf, 8u);
      }
    }

    if (v211 <= 0)
    {
      v114 = v201 - v211;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v77 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v211;
          _os_log_impl(&dword_254811000, v77, OS_LOG_TYPE_INFO, "    Need to remove %d frame(s)", buf, 8u);
        }
      }

      v78 = v211;
      if (v210 >= 2)
      {
        v79 = 0;
        v80 = 1;
        v81 = 2;
        v82 = v194 / (v211 + 1);
        do
        {
          v83 = (v81 - 1);
          if (v83 == floorf(v82))
          {
            v87 = objc_msgSend_objectAtIndex_(v72, v74, v80, v76, v83);
            v88 = v80;
            if (v80 <= 0)
            {
              v88 = objc_msgSend_count(v68, v84, v85, v86);
            }

            v89 = v88 - 1;
            v90 = objc_msgSend_objectAtIndex_(v72, v84, v89, v86);
            v91 = MEMORY[0x277CCABB0];
            objc_msgSend_floatValue(v90, v92, v93, v94);
            v96 = v95;
            objc_msgSend_floatValue(v87, v97, v98, v99);
            *&v101 = v96 + v100;
            v105 = objc_msgSend_numberWithFloat_(v91, v102, v103, v104, v101);
            objc_msgSend_replaceObjectAtIndex_withObject_(v72, v106, v89, v105);
            objc_msgSend_removeObjectAtIndex_(v72, v107, v80, v108);
            objc_msgSend_removeObjectAtIndex_(v68, v109, v80, v110);

            --v80;
            v82 = (v194 / (v211 + 1)) + v82;
            ++v79;
            v78 = v211;
          }

          if (v210 <= v81)
          {
            break;
          }

          ++v80;
          ++v81;
        }

        while (v78 > v79);
      }

      v114 = v201 - v211;
      if (objc_msgSend_count(v68, v74, v75, v76) != v201 - v211)
      {
        objc_msgSend_removeLastObject(v68, v111, v112, v113);
      }

      if (IMOSLoggingEnabled())
      {
        v115 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v115, OS_LOG_TYPE_INFO))
        {
          v119 = objc_msgSend_count(v68, v116, v117, v118);
          *buf = 67109120;
          *&buf[4] = v119;
          _os_log_impl(&dword_254811000, v115, OS_LOG_TYPE_INFO, "    Left with %d frame(s)", buf, 8u);
        }
      }
    }

    v63 = v201;
    if (IMOSLoggingEnabled())
    {
      v123 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v123, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v211 / v63;
        _os_log_impl(&dword_254811000, v123, OS_LOG_TYPE_INFO, "    Removed factor: %f", buf, 0xCu);
      }
    }

    if (v114 <= 5 && v211 || v211 / v201 > 0.2)
    {
      break;
    }

    v124 = objc_msgSend_count(v68, v120, v121, v122);
    v221[0] = 0;
    valuePtr = 0.0;
    v125 = CGImageSourceCopyPropertiesAtIndex(a1, 0, 0);
    v126 = v125;
    if (v125)
    {
      v127 = CFDictionaryGetValue(v125, key);
      if (v127)
      {
        CFNumberGetValue(v127, kCFNumberCGFloatType, v221);
      }

      v128 = CFDictionaryGetValue(v126, v197);
      if (v128)
      {
        CFNumberGetValue(v128, kCFNumberCGFloatType, &valuePtr);
      }

      CFRelease(v126);
      v129 = *v221;
      v130 = valuePtr;
    }

    else
    {
      v130 = 0.0;
      v129 = 0.0;
    }

    v131 = 3 * vcvtd_n_u64_f64(v64 * v124, 2uLL) + a2 + (v129 * (v130 + 1.0) + 1293732.0) + vcvtd_n_u64_f64(v130 * v129 * v124, 2uLL);
    if (IMOSLoggingEnabled())
    {
      v132 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = v131 >> 20;
        _os_log_impl(&dword_254811000, v132, OS_LOG_TYPE_INFO, "  Projected memory footprint of GIF transcode: %lu megabytes", buf, 0xCu);
      }
    }

    if (v131 < 0x9600001)
    {
      properties = 0;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v134 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v134, OS_LOG_TYPE_INFO, "  Enabling memory efficient GIF encoding", buf, 2u);
        }
      }

      v215 = v208;
      v213 = v196;
      v214 = MEMORY[0x277CBEC28];
      v135 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v133, &v214, &v213, 1);
      v216 = v135;
      properties = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v136, &v216, &v215, 1);
    }

    v137 = objc_alloc_init(MEMORY[0x277CBEB28]);
    v141 = objc_msgSend_identifier(v199, v138, v139, v140);
    v142 = CGImageDestinationCreateWithData(v137, v141, v124, 0);

    if (objc_msgSend_count(properties, v143, v144, v145))
    {
      CGImageDestinationSetProperties(v142, properties);
    }

    v148 = 0.0;
    if (v124)
    {
      for (j = 0; v124 != j; ++j)
      {
        v150 = objc_msgSend_objectAtIndex_(v68, v146, j, v147);
        v153 = v150[2]();
        if (v153)
        {
          v154 = MEMORY[0x277CBEAC0];
          v155 = objc_msgSend_objectAtIndex_(v72, v151, j, v152);
          v158 = objc_msgSend_dictionaryWithObjectsAndKeys_(v154, v156, v155, v157, v207, 0);

          v160 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x277CBEAC0], v159, v158, v208);
          CGImageDestinationAddImage(v142, v153, v160);
          CFRelease(v153);
          if (objc_msgSend_length(v137, v161, v162, v163) > a2)
          {
            if (IMOSLoggingEnabled())
            {
              v167 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v167, OS_LOG_TYPE_INFO))
              {
                *buf = 67109376;
                *&buf[4] = j + 1;
                *&buf[8] = 2048;
                *&buf[10] = v124;
                _os_log_impl(&dword_254811000, v167, OS_LOG_TYPE_INFO, "  Bailing on frame %d out of %lu bceause we already exceeded the target data size", buf, 0x12u);
              }
            }

            v195 = objc_msgSend_length(v137, v164, v165, v166);
            v171 = objc_msgSend_length(v137, v168, v169, v170);

            v148 = v171 / (v195 / (j + 1) * v124);
            break;
          }
        }
      }
    }

    CGImageDestinationFinalize(v142);
    v178 = objc_msgSend_length(v137, v172, v173, v174) > a2 && a2 != 0;
    if (v178)
    {
      if (v148 == 0.0)
      {
        v148 = a2 / objc_msgSend_length(v137, v175, v176, v177);
      }

      v179 = v148 * v124;
      v211 = (fmax(floorf(v124 - v179), 1.0) + v211);
      if (IMOSLoggingEnabled())
      {
        v180 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
        {
          *buf = 67109888;
          *&buf[4] = v211;
          *&buf[8] = 2048;
          *&buf[10] = v124;
          *&buf[18] = 2048;
          *&buf[20] = v179;
          *&buf[28] = 2048;
          *&buf[30] = v148;
          _os_log_impl(&dword_254811000, v180, OS_LOG_TYPE_INFO, "  Didn't fit, updating frames to remove: %d   (count: %lu   extra frames: %f  factorOff: %f)", buf, 0x26u);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v181 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v181, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_254811000, v181, OS_LOG_TYPE_INFO, "  Fits!", buf, 2u);
        }
      }

      v182 = v137;

      v200 = v182;
    }

    if (IMOSLoggingEnabled())
    {
      v183 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
      {
        v187 = objc_msgSend_length(v137, v184, v185, v186);
        *buf = 67109120;
        *&buf[4] = v187;
        _os_log_impl(&dword_254811000, v183, OS_LOG_TYPE_INFO, "Final length was %d", buf, 8u);
      }
    }

    CFRelease(v142);

    objc_autoreleasePoolPop(context);
    if (!v178)
    {
      v189 = v200;
      v190 = v189;
      goto LABEL_132;
    }
  }

  if (IMOSLoggingEnabled())
  {
    v188 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v188, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = v211 / v63;
      _os_log_impl(&dword_254811000, v188, OS_LOG_TYPE_INFO, "    Removed too many frames (%f), trying to shrink the image", buf, 0xCu);
    }
  }

  v190 = sub_25481DAD4(a1, a2, v193 * 0.85, v192 * 0.85);

  objc_autoreleasePoolPop(context);
  v189 = v200;
LABEL_132:

  return v190;
}

void *sub_254823284(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (objc_msgSend_longValue(v3, v4, v5, v6) > *(a1 + 40))
  {
    v7 = *(a1 + 32);
  }

  v8 = v7;

  return v7;
}

CGImageRef sub_254824048(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], a2, *(a1 + 40), a4);
  ThumbnailAtIndex = objc_msgSend_objectForKey_(v5, v7, v6, v8);

  if (ThumbnailAtIndex)
  {
    CFRetain(ThumbnailAtIndex);
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x277CBEB38]);
    v13 = objc_msgSend_initWithCapacity_(v10, v11, 3, v12);
    v14 = MEMORY[0x277CBEC38];
    objc_msgSend_setObject_forKey_(v13, v15, MEMORY[0x277CBEC38], *MEMORY[0x277CD3568]);
    v18 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v16, *(a1 + 48), v17);
    objc_msgSend_setObject_forKey_(v13, v19, v18, *MEMORY[0x277CD3660]);

    objc_msgSend_setObject_forKey_(v13, v20, v14, *MEMORY[0x277CD3578]);
    ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(*(a1 + 56), *(a1 + 40), v13);
    if (ThumbnailAtIndex)
    {
      v23 = *(a1 + 32);
      v24 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v21, *(a1 + 40), v22);
      objc_msgSend_setObject_forKey_(v23, v25, ThumbnailAtIndex, v24);
    }
  }

  return ThumbnailAtIndex;
}

void sub_25482418C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_2548258EC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x2548257E8);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_254826284(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25482629C(void *a1, void *a2, void *a3)
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v9 = a3;
  if (!v9)
  {
    v11 = objc_msgSend_bestTranscription(v5, v6, v7, v8);
    v15 = v11;
    if (v11)
    {
      v16 = objc_msgSend_formattedString(v11, v12, v13, v14);
      v20 = objc_msgSend_length(v16, v17, v18, v19);

      if (v20)
      {
        v21 = *(*(a1[5] + 8) + 40);
        v22 = objc_msgSend_formattedString(v15, v12, v13, v14);
        v25 = objc_msgSend_stringByAppendingString_(v21, v23, v22, v24);
        v26 = *(a1[5] + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        v28 = *(*(a1[6] + 8) + 24);
        v32 = objc_msgSend_segments(v15, v29, v30, v31);
        v36 = objc_msgSend_count(v32, v33, v34, v35) + v28;

        if (v36 < 0x33)
        {
          v39 = objc_msgSend_segments(v15, v12, v13, v14);
          v38 = objc_msgSend_count(v39, v40, v41, v42);

          v43 = *(*(a1[6] + 8) + 24);
          v47 = objc_msgSend_segments(v15, v44, v45, v46);
          *(*(a1[6] + 8) + 24) = objc_msgSend_count(v47, v48, v49, v50) + v43;

          if (!v38)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v37 = *(a1[6] + 8);
          v38 = 50 - *(v37 + 24);
          *(v37 + 24) = 50;
          if (!v38)
          {
            goto LABEL_15;
          }
        }

        for (i = 0; i != v38; ++i)
        {
          v52 = *(*(a1[7] + 8) + 24);
          v53 = objc_msgSend_segments(v15, v12, v13, v14);
          v56 = objc_msgSend_objectAtIndexedSubscript_(v53, v54, i, v55);
          objc_msgSend_confidence(v56, v57, v58, v59);
          *(*(a1[7] + 8) + 24) = v52 + v60;
        }
      }
    }

LABEL_15:
    if (objc_msgSend_isFinal(v5, v12, v13, v14))
    {
      objc_msgSend_commitTranscriptionWithString_confidenceSum_numberOfSegments_completion_(IMTranscriptionUtilities, v61, *(*(a1[5] + 8) + 40), *(*(a1[6] + 8) + 24), a1[4], *(*(a1[7] + 8) + 24));
    }

    else
    {
      v64 = *(*(a1[5] + 8) + 40);
      v65 = objc_msgSend_localizedSeparatorString(IMTranscriptionUtilities, v61, v62, v63);
      v68 = objc_msgSend_stringByAppendingString_(v64, v66, v65, v67);
      v69 = *(a1[5] + 8);
      v70 = *(v69 + 40);
      *(v69 + 40) = v68;
    }

    goto LABEL_19;
  }

  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v71 = 138412290;
      v72 = v9;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Transcription failed with error: %@", &v71, 0xCu);
    }
  }

  (*(a1[4] + 16))();
LABEL_19:
}

uint64_t sub_254826724()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = objc_opt_class();
  qword_27F611A68 = objc_msgSend_bundleForClass_(v0, v2, v1, v3);

  return MEMORY[0x2821F96F8]();
}

NSData *sub_254829078(uint64_t a1)
{
  v2 = MEMORY[0x259C1B1F0](@"PKPeerPaymentBubbleView", @"PassKitUI");
  v3 = MEMORY[0x259C1B1F0](@"CKUIBehavior", @"ChatKit");
  v7 = objc_msgSend_sharedBehaviors(v3, v4, v5, v6);
  v11 = objc_msgSend_isFromMe(*(a1 + 32), v8, v9, v10);
  objc_msgSend_pluginBalloonInsetsForMessageFromMe_(v7, v12, v11, v13);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v22 = *(a1 + 40);
  v26 = objc_msgSend_isFromMe(*(a1 + 32), v23, v24, v25);
  v28 = objc_msgSend_generatedSnapshotForDataURL_contentInset_isFromMe_(v2, v27, v22, v26, v15, v17, v19, v21);
  result = UIImagePNGRepresentation(v28);
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

void sub_254829970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v41 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v16 = MEMORY[0x277CCABB0];
      v17 = objc_msgSend_length(*(a1 + 32), v13, v14, v15);
      v20 = objc_msgSend_numberWithUnsignedInteger_(v16, v18, v17, v19);
      v21 = @"NO";
      v22 = *(a1 + 40);
      v23 = *(a1 + 48);
      if (a5)
      {
        v24 = @"YES";
      }

      else
      {
        v24 = @"NO";
      }

      v25 = 138414082;
      if (a6)
      {
        v21 = @"YES";
      }

      v26 = v20;
      v27 = 2112;
      v28 = v22;
      v29 = 2112;
      v30 = a2;
      v31 = 2112;
      v32 = a4;
      v33 = 2112;
      v34 = v24;
      v35 = 2112;
      v36 = v21;
      v37 = 2112;
      v38 = a3;
      v39 = 2112;
      v40 = v23;
      _os_log_impl(&dword_254811000, v12, OS_LOG_TYPE_INFO, "output trying to generate fallback for data %@ inFileURL %@ outputURLs %@ error %@ success %@ attemptedTranscode %@ text %@ attachments %@", &v25, 0x52u);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64));
}

void sub_254829B2C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v37 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = MEMORY[0x277CCABB0];
      v15 = objc_msgSend_length(*(a1 + 32), v11, v12, v13);
      v18 = objc_msgSend_numberWithUnsignedInteger_(v14, v16, v15, v17);
      v19 = @"NO";
      v20 = *(a1 + 40);
      v21 = *(a1 + 48);
      if (a4)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v23 = 138413826;
      if (a5)
      {
        v19 = @"YES";
      }

      v24 = v18;
      v25 = 2112;
      v26 = v20;
      v27 = 2112;
      v28 = a2;
      v29 = 2112;
      v30 = a3;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "output trying to generate fallback for data %@ inFileURL %@ outputURLs %@ error %@ success %@ attemptedTranscode %@ attachments %@", &v23, 0x48u);
    }
  }

  (*(*(a1 + 64) + 16))(*(a1 + 64));
}

void sub_254829CDC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v23 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      v15 = 138413058;
      v16 = a2;
      if (a4)
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if (a5)
      {
        v11 = @"YES";
      }

      v17 = 2112;
      v18 = a3;
      v19 = 2112;
      v20 = v12;
      v21 = 2112;
      v22 = v11;
      _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "got fullquality for data at URLs %@ error %@ success %@ attemptedToGenerateFallback %@", &v15, 0x2Au);
    }
  }

  v13 = *(a1 + 40);
  v14 = *(v13 + 16);
  if (a5)
  {
    v14(v13, a2);
  }

  else
  {
    v14(v13, 0);
  }
}

void sub_254829E48(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v18 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = @"NO";
      v12 = 138412802;
      v13 = a2;
      v14 = 2112;
      if (a4)
      {
        v9 = @"YES";
      }

      v15 = a3;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&dword_254811000, v8, OS_LOG_TYPE_INFO, "got fullquality for data at URLs %@ error %@ success %@", &v12, 0x20u);
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 16);
  if (a4)
  {
    v11(v10, a2);
  }

  else
  {
    v11(v10, 0);
  }
}

uint64_t (*sub_25482A310())(void, void, void, void)
{
  result = MEMORY[0x259C1B200]("PFCreateGIFFromVideoURL", @"PhotosFormats");
  off_27F611A80 = result;
  return result;
}

void sub_25482A340(uint64_t a1, double a2)
{
  v6 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = 134217984;
      v5 = a2;
      _os_log_impl(&dword_254811000, v3, OS_LOG_TYPE_INFO, "Converting to GIF progress {progress: %f}", &v4, 0xCu);
    }
  }
}

uint64_t sub_25482A440(void *a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = @"NO";
      if (a2)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Finished transcoding GIF {success: %@}", buf, 0xCu);
    }
  }

  v7 = a1[5];
  if (!a2)
  {
    return (*(v7 + 16))(a1[5], 0, 0, *(*(a1[6] + 8) + 40), 0, 1);
  }

  v10 = a1[4];
  v8 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, &v10, 1);
  return (*(v7 + 16))(v7, v8, 0, 0, 1, 1);
}

uint64_t sub_25482A660()
{
  qword_28112D500 = objc_alloc_init(IMTranscodingAgentController);

  return MEMORY[0x2821F96F8]();
}

void sub_25482B85C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, char a6, char a7, void *a8)
{
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v22 = a8;
  if (*(a1 + 32))
  {
    v23 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v19, v20, v21);
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = sub_25482B9D4;
    v26[3] = &unk_27978AD40;
    v32 = *(a1 + 32);
    v27 = v15;
    v28 = v16;
    v29 = v17;
    v30 = v18;
    v33 = a6;
    v34 = a7;
    v31 = v22;
    objc_msgSend___im_performBlock_(v23, v24, v26, v25);
  }
}

void sub_25482B9F8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_lastObject(*(*(a1 + 32) + 16), a2, a3, a4);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_25482BAD0;
  v10[3] = &unk_27978AD90;
  v8 = *(a1 + 56);
  v12 = *(a1 + 64);
  v11 = *(a1 + 40);
  objc_msgSend_transcodeFileTransferContents_utiType_transcoderUserInfo_completionBlock_(v5, v9, v6, v7, v8, v10);
}

void sub_25482BB00(uint64_t a1, void *a2, void *a3, void *a4, void *a5, int a6, char a7, void *a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = IMOSLoggingEnabled();
  if (a6)
  {
    if (v20)
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_254811000, v24, OS_LOG_TYPE_INFO, "Main transcoding finished, trying to generate thumbnail", buf, 2u);
      }
    }

    objc_msgSend_transcodeThumbnailFor_target_allSizes_commonCapabilities_maxDimension_transcoderUserInfo_isLQMEnabled_outputURLs_outputContextInfo_attemptedTranscode_additionalOutPutContext_completionBlock_(*(a1 + 32), v21, *(a1 + 40), *(a1 + 88), *(a1 + 48), *(a1 + 56), *(a1 + 96), *(a1 + 64), *(a1 + 104), v16, v17, a7, v19, *(a1 + 72));
  }

  else
  {
    if (v20)
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v29 = v18;
        _os_log_impl(&dword_254811000, v25, OS_LOG_TYPE_INFO, "Failed to transcode, error %@", buf, 0xCu);
      }
    }

    v26 = _IMTranscoderLinkFile(*(a1 + 40), v21, v22, v23);
    v27 = IMSingleObjectArray();

    (*(*(a1 + 80) + 16))();
  }
}

void sub_25482C5DC(uint64_t a1, void *a2, void *a3, void *a4, void *a5, unsigned int a6, uint64_t a7, void *a8)
{
  v41 = *MEMORY[0x277D85DE8];
  v34 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a8;
  if (IMOSLoggingEnabled())
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = @"NO";
      *buf = 138412802;
      if (a6)
      {
        v21 = @"YES";
      }

      v36 = v21;
      v37 = 2112;
      v38 = v15;
      v39 = 2112;
      v40 = v13;
      _os_log_impl(&dword_254811000, v20, OS_LOG_TYPE_INFO, "Thumbnail generation result: %@, error %@ - %@", buf, 0x20u);
    }
  }

  v22 = objc_msgSend_mutableCopy(*(a1 + 32), v17, v18, v19);
  objc_msgSend_addEntriesFromDictionary_(v22, v23, v16, v24);
  v27 = *(a1 + 64);
  if (v27)
  {
    v28 = *(a1 + 40);
    v29 = objc_msgSend_arrayByAddingObjectsFromArray_(*(a1 + 48), v25, v13, v26);
    v32 = objc_msgSend_arrayByAddingObjectsFromArray_(*(a1 + 56), v30, v14, v31);
    (*(v27 + 16))(v27, v28, v29, v32, v15, a6, *(a1 + 72), v22);
  }
}

void sub_25482C9C4(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = @"NO";
      if (*(a1 + 72))
      {
        v7 = @"YES";
      }

      v23 = 138412546;
      v24 = v6;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Found transcoder to transcode data for balloonBundleID %@ fallback %@", &v23, 0x16u);
    }
  }

  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v2, v3, v4);
  v10 = objc_msgSend__randomTemporaryPathWithSuffix_fileName_(v8, v9, 0, 0);
  v14 = objc_msgSend_stringByDeletingLastPathComponent(v10, v11, v12, v13);

  v17 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v15, v14, v16);
  v21 = objc_msgSend_lastObject(*(*(a1 + 40) + 16), v18, v19, v20);
  objc_msgSend_transcodeFileTransferData_balloonBundleID_attachments_inFileURL_fallBack_completionBlock_(v21, v22, *(a1 + 48), *(a1 + 32), *(a1 + 56), v17, *(a1 + 72), *(a1 + 64));
}

uint64_t sub_25482D988(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_25482D9A0(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v10 = v6;
  if (!v5 || v6)
  {
    if (v6)
    {
      v23 = objc_msgSend_copy(v6, v7, v8, v9);
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v23 = objc_msgSend_initWithDomain_code_userInfo_(v24, v25, *MEMORY[0x277D1A4D0], 1, 0);
    }

    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v23;
  }

  else
  {
    MEMORY[0x259C1B1F0](@"BlastDoorVideoPreview", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v11 = v5;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
    v16 = objc_msgSend_image(v12, v13, v14, v15);
    v20 = objc_msgSend_cgImage(v16, v17, v18, v19);

    v21 = IMOSLoggingEnabled();
    if (v20)
    {
      if (v21)
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          LOWORD(v31) = 0;
          _os_log_impl(&dword_254811000, v22, OS_LOG_TYPE_INFO, "Video validation completed successfully", &v31, 2u);
        }
      }

      objc_storeStrong((*(*(a1 + 48) + 8) + 40), *(a1 + 32));
      *(*(*(a1 + 56) + 8) + 24) = 1;
    }

    else if (v21)
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v31 = 138412290;
        v32 = 0;
        _os_log_impl(&dword_254811000, v28, OS_LOG_TYPE_INFO, "Video validation failed: %@", &v31, 0xCu);
      }
    }
  }

  if (IMOSLoggingEnabled())
  {
    v29 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
    {
      v30 = *(*(*(a1 + 64) + 8) + 40);
      v31 = 138412290;
      v32 = v30;
      _os_log_impl(&dword_254811000, v29, OS_LOG_TYPE_INFO, "Blastdoor validation completed, err: %@", &v31, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_25482DC50(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5 && !*(*(*(a1 + 48) + 8) + 40))
  {
    MEMORY[0x259C1B1F0](@"BlastDoorPreviewAudio", @"BlastDoor");
    if (objc_opt_isKindOfClass())
    {
      v13 = v5;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
    v18 = objc_msgSend_powerLevels(v14, v15, v16, v17);
    v22 = objc_msgSend_count(v18, v19, v20, v21);

    if (v22)
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          LOWORD(v29) = 0;
          _os_log_impl(&dword_254811000, v23, OS_LOG_TYPE_INFO, "Audio validation completed successfully", &v29, 2u);
        }
      }

      objc_storeStrong((*(*(a1 + 56) + 8) + 40), *(a1 + 32));
      *(*(*(a1 + 64) + 8) + 24) = 1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(*(*(a1 + 48) + 8) + 40);
        v29 = 138412290;
        v30 = v11;
        _os_log_impl(&dword_254811000, v10, OS_LOG_TYPE_INFO, "Audio validation failed: %@", &v29, 0xCu);
      }
    }

    if (v6)
    {
      v12 = objc_msgSend_copy(v6, v7, v8, v9);
    }

    else
    {
      v24 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = objc_msgSend_initWithDomain_code_userInfo_(v24, v25, *MEMORY[0x277D1A4D0], 1, 0);
    }

    v26 = *(*(a1 + 48) + 8);
    v14 = *(v26 + 40);
    *(v26 + 40) = v12;
  }

  if (IMOSLoggingEnabled())
  {
    v27 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = *(*(*(a1 + 48) + 8) + 40);
      v29 = 138412290;
      v30 = v28;
      _os_log_impl(&dword_254811000, v27, OS_LOG_TYPE_INFO, "Blastdoor validation completed, err: %@", &v29, 0xCu);
    }
  }

  dispatch_group_leave(*(a1 + 40));
}

void sub_25482E0B0(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  if (*(a1 + 32))
  {
    v9 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_25482E188;
    v12[3] = &unk_27978AED0;
    v14 = *(a1 + 32);
    v15 = a2;
    v13 = v8;
    objc_msgSend___im_performBlock_(v9, v10, v12, v11);
  }
}

void sub_25482E380(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v12 = a3;
  if (*(a1 + 32))
  {
    v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_25482E46C;
    v16[3] = &unk_27978AF20;
    v18 = *(a1 + 32);
    v21 = a2;
    v19 = a4;
    v20 = a5;
    v17 = v12;
    objc_msgSend___im_performBlock_(v13, v14, v16, v15);
  }
}

void sub_25482E488(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277CBF3A8];
  v5 = objc_msgSend_sharedInstance(MEMORY[0x277D1AB50], a2, a3, a4);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 88);
  v15[0] = *(a1 + 72);
  v15[1] = v10;
  v16 = *(a1 + 104);
  v17 = 0;
  v12 = objc_msgSend_generateAndPersistPreviewFromSourceURL_previewURL_senderContext_size_balloonBundleID_previewConstraints_error_(v5, v11, v6, v7, v8, &v18, v9, v15, &v17);
  v13 = v17;

  v14 = *(a1 + 64);
  if (v14)
  {
    (*(v14 + 16))(v14, v12, v13, *&v18, *(&v18 + 1));
  }
}

void sub_25482E6DC(uint64_t a1, char a2, void *a3, double a4, double a5)
{
  v12 = a3;
  if (*(a1 + 32))
  {
    v13 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v9, v10, v11);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = sub_25482E7C8;
    v16[3] = &unk_27978AF20;
    v18 = *(a1 + 32);
    v21 = a2;
    v19 = a4;
    v20 = a5;
    v17 = v12;
    objc_msgSend___im_performBlock_(v13, v14, v16, v15);
  }
}

void sub_25482E7E4(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v18 = *MEMORY[0x277CBF3A8];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412546;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&dword_254811000, v5, OS_LOG_TYPE_INFO, "Will generate preview metadata for url %@ dst url %@", buf, 0x16u);
    }
  }

  v8 = objc_msgSend_sharedInstance(MEMORY[0x277D1AB50], v2, v3, v4);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v17 = 0;
  v12 = *(a1 + 80);
  *buf = *(a1 + 64);
  *&buf[16] = v12;
  v20 = *(a1 + 96);
  v14 = objc_msgSend_generateAndPersistMetadataFromSourceURL_destinationURL_senderContext_size_constraints_error_(v8, v13, v9, v10, v11, &v18, buf, &v17);
  v15 = v17;

  v16 = *(a1 + 56);
  if (v16)
  {
    (*(v16 + 16))(v16, v14, v15, *&v18, *(&v18 + 1));
  }
}

void sub_25482EAD4(uint64_t a1, char a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v14 = a5;
  if (*(a1 + 32))
  {
    v15 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v11, v12, v13);
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = sub_25482EBF4;
    v18[3] = &unk_27978AFC0;
    v22 = *(a1 + 32);
    v23 = a2;
    v19 = v9;
    v20 = v10;
    v21 = v14;
    objc_msgSend___im_performBlock_(v15, v16, v18, v17);
  }
}

void sub_25482EC10(void *a1, const char *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v9 = 0;
  v10 = 0;
  v6 = objc_msgSend_decodeiMessageAppPayload_senderContext_bundleID_outAttachmentURLs_error_(MEMORY[0x277D1AD08], a2, v3, v4, v5, &v10, &v9);
  v7 = v10;
  v8 = v9;
  (*(a1[7] + 16))(a1[7], v6 != 0, v6, v7, v8);
}

void sub_25482EEF0(uint64_t a1, char a2, void *a3)
{
  v8 = a3;
  if (*(a1 + 32))
  {
    v9 = objc_msgSend_mainThread(MEMORY[0x277CCACC8], v5, v6, v7);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_25482EFC8;
    v12[3] = &unk_27978AED0;
    v14 = *(a1 + 32);
    v15 = a2;
    v13 = v8;
    objc_msgSend___im_performBlock_(v9, v10, v12, v11);
  }
}

void sub_25482EFE0(uint64_t a1)
{
  v2 = MEMORY[0x277D1A8B0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_25482F09C;
  v6[3] = &unk_27978B038;
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  objc_msgSend_generateTranscriptBackground_senderContext_completion_(v2, v5, v3, v4, v6);
}

void sub_25482F09C(uint64_t a1, void *a2, void *a3)
{
  v77 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = v5;
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v74 = v4;
      v75 = 2112;
      v76 = v6;
      _os_log_impl(&dword_254811000, v9, OS_LOG_TYPE_INFO, "GeneratePoster: Blastdoor came back with data %@ error %@", buf, 0x16u);
    }
  }

  MEMORY[0x259C1B1F0](@"BlastDoorBackground", @"BlastDoor");
  if (objc_opt_isKindOfClass())
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  v15 = v11;
  if (v11)
  {
    v16 = objc_msgSend_watchBackground(v11, v12, v13, v14);
    v17 = MEMORY[0x277D1ACF0];
    v21 = objc_msgSend_backgroundImage(v16, v18, v19, v20);
    objc_msgSend_cgImage(v21, v22, v23, v24);
    v25 = IMCreatePNGImageDataFromCGImageRef();
    objc_msgSend_luminance(v16, v26, v27, v28);
    v30 = v29;
    isHighKey = objc_msgSend_isHighKey(v16, v31, v32, v33);
    v38 = objc_msgSend_extensionIdentifier(v16, v35, v36, v37);
    v40 = objc_msgSend_payloadDataFor_luminance_isHighKey_extensionIdentfier_(v17, v39, v25, isHighKey, v38, v30);

    v44 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v41, v42, v43);
    LOBYTE(v21) = objc_msgSend_writeToURL_atomically_(v40, v45, v44, 1);

    if ((v21 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v49 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          v53 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v50, v51, v52);
          *buf = 138412546;
          v74 = v40;
          v75 = 2112;
          v76 = v53;
          _os_log_impl(&dword_254811000, v49, OS_LOG_TYPE_INFO, "GeneratePoster: Error writing watch data %@ to URL %@", buf, 0x16u);
        }
      }

      v54 = objc_alloc(MEMORY[0x277CCA9B8]);
      v56 = objc_msgSend_initWithDomain_code_userInfo_(v54, v55, *MEMORY[0x277D1A4D0], 1, 0);

      v8 = 0;
      v6 = v56;
    }

    v57 = objc_msgSend_poster(v15, v46, v47, v48);
    if ((objc_msgSend_writeToURL_atomically_(v57, v58, *(a1 + 32), 1) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v59 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
        {
          v60 = *(a1 + 32);
          *buf = 138412546;
          v74 = v57;
          v75 = 2112;
          v76 = v60;
          _os_log_impl(&dword_254811000, v59, OS_LOG_TYPE_INFO, "GeneratePoster: Error writing poster data %@ to URL %@", buf, 0x16u);
        }
      }

      v61 = objc_alloc(MEMORY[0x277CCA9B8]);
      v63 = objc_msgSend_initWithDomain_code_userInfo_(v61, v62, *MEMORY[0x277D1A4D0], 1, 0);

      v8 = 0;
      v6 = v63;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v64 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
      {
        v68 = objc_msgSend_im_associatedWatchBackgroundURL(*(a1 + 32), v65, v66, v67);
        *buf = 138412290;
        v74 = v68;
        _os_log_impl(&dword_254811000, v64, OS_LOG_TYPE_INFO, "Got a response not of type BlastDoorBackground for generateTranscriptBackground at source %@", buf, 0xCu);
      }
    }

    v69 = objc_alloc(MEMORY[0x277CCA9B8]);
    v8 = 0;
    v16 = v6;
    v6 = objc_msgSend_initWithDomain_code_userInfo_(v69, v70, *MEMORY[0x277D1A4D0], 1, 0);
  }

  v71 = *(a1 + 40);
  if (v71)
  {
    (*(v71 + 16))(v71, v8, v6);
  }
}

void sub_25482F4F4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x25482F2D0);
  }

  _Unwind_Resume(a1);
}

void sub_25482F978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_25482FA40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1, a2, a3);
  }

  return result;
}

Class sub_25482FAC0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!qword_27F611A98)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = sub_25482FC04;
    v4[4] = &unk_27978B0C0;
    v4[5] = v4;
    v5 = xmmword_27978B0A8;
    v6 = 0;
    qword_27F611A98 = _sl_dlopen();
    v2 = v4[0];
    if (qword_27F611A98)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np("%s", v4[0]);
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PRSPosterArchiver");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_2548315F8();
  }

  qword_27F611A90 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_25482FC04(uint64_t a1)
{
  result = _sl_dlopen();
  qword_27F611A98 = result;
  return result;
}

uint64_t _IMTranscoderLinkFile(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v5 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], a2, a3, a4);
  PathComponent = objc_msgSend_lastPathComponent(a1, v6, v7, v8);
  v13 = objc_msgSend_stringByDeletingPathExtension(PathComponent, v10, v11, v12);
  v17 = objc_msgSend_pathExtension(a1, v14, v15, v16);
  v20 = objc_msgSend_stringByAppendingPathExtension_(v13, v18, v17, v19);
  v23 = objc_msgSend_im_randomTemporaryFileURLWithFileName_(v5, v21, v20, v22);
  v27 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v24, v25, v26);
  if (objc_msgSend_copyItemAtURL_toURL_error_(v27, v28, a1, v23, &v30))
  {
    return v23;
  }

  else
  {
    return 0;
  }
}

void sub_254830784(uint64_t a1, void *a2)
{
  v7 = a2;
  if (v7)
  {
    v3 = [Image_Estimator_HEIF alloc];
    v6 = objc_msgSend_initWithMLModel_(v3, v4, v7, v5);
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_254830A3C(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  if (v19)
  {
    v5 = a3;
    v6 = [Image_Estimator_HEIFOutput alloc];
    v9 = objc_msgSend_featureValueForName_(v19, v7, @"Target Quality Factor", v8);
    objc_msgSend_doubleValue(v9, v10, v11, v12);
    v16 = objc_msgSend_initWithTarget_Quality_Factor_(v6, v13, v14, v15);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    v16 = a3;
    v18(v17, 0, v16);
  }
}

void sub_254830BFC(uint64_t a1, void *a2, void *a3)
{
  v19 = a2;
  if (v19)
  {
    v5 = a3;
    v6 = [Image_Estimator_HEIFOutput alloc];
    v9 = objc_msgSend_featureValueForName_(v19, v7, @"Target Quality Factor", v8);
    objc_msgSend_doubleValue(v9, v10, v11, v12);
    v16 = objc_msgSend_initWithTarget_Quality_Factor_(v6, v13, v14, v15);

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v17 = *(a1 + 32);
    v18 = *(v17 + 16);
    v16 = a3;
    v18(v17, 0, v16);
  }
}

void sub_254830FBC(void *a1)
{

  objc_end_catch();
}