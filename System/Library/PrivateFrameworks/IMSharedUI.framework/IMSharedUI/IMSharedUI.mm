BOOL sub_2547F92B0(void *a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = objc_msgSend_length(a1, a2, a3, a5, a4);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = objc_opt_class();
  v13 = objc_msgSend_im_maxBigmojiCount(v8, v9, v10, v12, v11);
  v28 = 0;
  v29 = &v28;
  v14.n128_u64[0] = 0x2020000000;
  v30 = 0x2020000000;
  v31 = 0;
  v18 = objc_msgSend_whitespaceAndNewlineCharacterSet(MEMORY[0x277CCA900], v15, v16, v14, v17);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = sub_2547F93E8;
  v24[3] = &unk_279788F08;
  v19 = v18;
  v25 = v19;
  v26 = &v28;
  v27 = v13;
  objc_msgSend_enumerateSubstringsInRange_options_usingBlock_(a1, v20, 0, v21, v7, 2, v24);
  v22 = v29[3] - 1 < v13;

  _Block_object_dispose(&v28, 8);
  return v22;
}

void sub_2547F93D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547F93E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7, __n128 a8)
{
  v20 = objc_msgSend_stringByTrimmingCharactersInSet_(a2, a2, a1[4], a8, a4, a5, a6);
  v14 = objc_msgSend_length(v20, v10, v11, v13, v12);
  v15 = v20;
  if (v14)
  {
    if (CEMStringIsSingleEmoji())
    {
      ++*(*(a1[5] + 8) + 24);
      v15 = v20;
    }

    else
    {
      v19 = 0;
      v15 = v20;
      do
      {
        if (objc_msgSend_characterAtIndex_(v15, v16, v19, v18, v17) != 65532)
        {
          *(*(a1[5] + 8) + 24) = 0;
          *a7 = 1;
        }

        ++v19;
        v15 = v20;
      }

      while (v14 != v19);
    }

    if (*(*(a1[5] + 8) + 24) > a1[6])
    {
      *a7 = 1;
    }
  }
}

uint64_t sub_2547FB9D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  objc_msgSend__updateBubbleOpacity(*(a1 + 32), a2, a3, a5, a4);
  result = *(a1 + 40);
  if (result)
  {
    v7 = *(result + 16);

    return v7();
  }

  return result;
}

void sub_2547FC9D4(uint64_t a1)
{
  v2 = [_IMDispatchQueueBlock alloc];
  v5 = objc_msgSend_initWithBlock_key_priority_fifo_(v2, v3, *(a1 + 64), v4, *(a1 + 32), *(a1 + 72), *(*(a1 + 40) + 8));
  v8 = *(a1 + 32);
  value = v5;
  if (v8)
  {
    v9 = objc_msgSend_objectForKey_(*(a1 + 48), v5, v8, v7, v6);

    if (v9)
    {
      objc_msgSend_raise_format_(MEMORY[0x277CBEAD8], v10, *MEMORY[0x277CBE660], v11, @"Tried to add block for key %@ which IMDispatchQueue already contains.", *(a1 + 32));
    }

    objc_msgSend_setObject_forKey_(*(a1 + 48), v10, value, v11, *(a1 + 32));
    v5 = value;
  }

  CFBinaryHeapAddValue(*(a1 + 56), v5);
  ++*(*(a1 + 40) + 8);
}

void sub_2547FCAA8(uint64_t a1)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = sub_2547FCBD0;
  v12 = sub_2547FCBFC;
  v13 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_2547FCC04;
  block[3] = &unk_279788FA8;
  v2 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = &v8;
  dispatch_sync(v2, block);
  v3 = v9[5];
  if (v3)
  {
    (*(v3 + 16))();
  }

  _Block_object_dispose(&v8, 8);
}

void sub_2547FCBB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FCBD0(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x259C1AB40](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2547FCC04(uint64_t a1)
{
  v2 = CFBinaryHeapGetMinimum(*(a1 + 32));
  if (v2)
  {
    v20 = v2;
    v10 = objc_msgSend_key(v2, v3, v4, v6, v5);
    if (v10)
    {
      objc_msgSend_removeObjectForKey_(*(a1 + 40), v7, v10, v11, v9);
    }

    v12 = objc_msgSend_block(v20, v7, v8, v11, v9);
    v17 = objc_msgSend_copy(v12, v13, v14, v16, v15);
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    CFBinaryHeapRemoveMinimumValue(*(a1 + 32));
    v2 = v20;
  }
}

void sub_2547FCE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2547FCE20(uint64_t a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v18 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40), a3, a5);
  v10 = objc_msgSend_block(v18, v6, v7, v9, v8);
  v15 = objc_msgSend_copy(v10, v11, v12, v14, v13);
  v16 = *(*(a1 + 48) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void sub_2547FCFA8(uint64_t a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40), a3, a5);
  if (v6)
  {
    v11 = v6;
    *(*(*(a1 + 48) + 8) + 24) = objc_msgSend_priority(v6, v7, v8, v10, v9);
    v6 = v11;
  }
}

uint64_t sub_2547FD134(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_2547FD14C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v13 = objc_msgSend_allKeys(*(a1 + 32), a2, a3, a5, a4);
  v10 = objc_msgSend_copy(v13, v6, v7, v9, v8);
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;
}

void sub_2547FD2BC(uint64_t a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40), a3, a5);
  *(*(*(a1 + 48) + 8) + 24) = v6 != 0;
}

void sub_2547FD3E8(uint64_t a1, const char *a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v13 = objc_msgSend_objectForKey_(*(a1 + 32), a2, *(a1 + 40), a3, a5);
  objc_msgSend_cancel(v13, v6, v7, v9, v8);
  objc_msgSend_removeObjectForKey_(*(a1 + 32), v10, *(a1 + 40), v12, v11);
}

uint64_t sub_2547FD520(uint64_t a1)
{
  CFBinaryHeapRemoveAllValues(*(a1 + 32));
  objc_msgSend_enumerateKeysAndObjectsUsingBlock_(*(a1 + 40), v2, &unk_286697740, v4, v3);
  v7 = *(a1 + 40);

  return MEMORY[0x2821F9670](v7, sel_removeAllObjects, v5, v6);
}

uint64_t sub_2547FDE48(void *a1)
{
  v1 = a1;

  return MEMORY[0x2821F9670](v1, sel_CGImage, v2, v3);
}

void sub_2547FE58C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 120));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_2547FE614(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2547FE6FC;
  v13 = &unk_279789068;
  objc_copyWeak(&v14, (a1 + 48));
  objc_copyWeak(&v15, (a1 + 56));
  v4.n128_u64[0] = v3;
  objc_msgSend_playAfterDelay_completion_(v2, v5, &v10, v4, v6);
  objc_msgSend_setPlaying_(*(a1 + 40), v7, 1, v9, v8, v10, v11, v12, v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void sub_2547FE6DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2547FE6FC(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_msgSend_audioPlayerDidFinishPlaying_(WeakRetained, v4, v6, v7, v5);
  }
}

void sub_2547FE768(id *a1)
{
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2547FE880;
  v10[3] = &unk_279789090;
  v11 = a1[4];
  v14[1] = a1[8];
  objc_copyWeak(&v13, a1 + 6);
  objc_copyWeak(v14, a1 + 7);
  v12 = a1[5];
  v2 = MEMORY[0x259C1AB40](v10);
  if (objc_msgSend_shouldUseSpeaker(a1[5], v3, v4, v6, v5))
  {
    v2[2](v2);
  }

  else
  {
    objc_msgSend_playListenSound_(a1[5], v7, v2, v9, v8);
  }

  objc_destroyWeak(v14);
  objc_destroyWeak(&v13);
}

void sub_2547FE864(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v1 + 48));
  _Unwind_Resume(a1);
}

void sub_2547FE880(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = sub_2547FE968;
  v13 = &unk_279789068;
  objc_copyWeak(&v14, (a1 + 48));
  objc_copyWeak(&v15, (a1 + 56));
  v4.n128_u64[0] = v3;
  objc_msgSend_playAfterDelay_completion_(v2, v5, &v10, v4, v6);
  objc_msgSend_setPlaying_(*(a1 + 40), v7, 1, v9, v8, v10, v11, v12, v13);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v14);
}

void sub_2547FE948(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_2547FE968(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = objc_loadWeakRetained((a1 + 40));
  if (a2)
  {
    objc_msgSend_audioPlayerDidFinishPlaying_(WeakRetained, v4, v6, v7, v5);
  }
}

void sub_2547FEBCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FEBF0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_2547FEC08(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (objc_msgSend_isActive(*(a1 + 32), a2, a3, a5, a4))
  {
    v10 = *(*(*(a1 + 56) + 8) + 40);
    if (!v10)
    {
      v11 = *(a1 + 48);
      shouldUseAVPlayer = objc_msgSend_shouldUseAVPlayer(*(a1 + 40), v6, v7, v9, v8);
      v15 = objc_msgSend_audioPlayerWithContentsOfURL_shouldUseAVPlayer_(IMAudioPlayer, v13, v11, v14, shouldUseAVPlayer);
      v16 = *(*(a1 + 56) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      objc_msgSend_setDelegate_(*(*(*(a1 + 56) + 8) + 40), v18, *(a1 + 40), v20, v19);
      objc_msgSend_setAudioPlayer_(*(a1 + 40), v21, *(*(*(a1 + 56) + 8) + 40), v23, v22);
      v10 = *(*(*(a1 + 56) + 8) + 40);
    }

    return objc_msgSend_prepareToPlay(v10, v6, v7, v9, v8);
  }

  else
  {
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);

    return objc_msgSend__notifyPlayerDidPrepareAudioURL_successfully_(v25, v6, v26, v9, 0);
  }
}

void sub_2547FF3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2547FF410(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  v8 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_setListenAudioPlayer_(WeakRetained, WeakRetained, 0, v4, v3);
    v5 = v8;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = (*(v6 + 16))(v6, v5);
  }

  return MEMORY[0x2821F96F8](v6);
}

void *sub_2547FFE04()
{
  result = MEMORY[0x259C1A7F0]("CMTimeGetSeconds", @"CoreMedia");
  off_27F611768 = result;
  return result;
}

uint64_t (*sub_2547FFF78())(void, void)
{
  result = MEMORY[0x259C1A7F0]("CMTimeCompare", @"CoreMedia");
  off_27F611778 = result;
  return result;
}

uint64_t (*sub_2547FFFA8())(void)
{
  result = MEMORY[0x259C1A7F0]("CMTimeGetSeconds", @"CoreMedia");
  off_27F611788 = result;
  return result;
}

uint64_t sub_2548001C8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  *(*(a1 + 32) + 32) = 3;
  v6 = objc_msgSend_name(*(a1 + 40), a2, a3, a5, a4);
  isEqualToString = objc_msgSend_isEqualToString_(v6, v7, *MEMORY[0x277CE60C0], v9, v8);

  v12 = *(a1 + 32);

  return MEMORY[0x2821F9670](v12, sel__notifyPlayerDidFinishSuccessfully_, isEqualToString, v11);
}

void sub_254801878(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained(v4 + 2);
  v8 = objc_msgSend_layoutEngine_transcriptItemAtIndex_(WeakRetained, v6, *(a1 + 32), v7, a2);
  v15 = objc_msgSend__makeDrawableForTranscriptItem_(v4, v9, v8, v11, v10);

  objc_msgSend_addObject_(*(a1 + 40), v12, v15, v14, v13);
}

__CFString *NSStringFromIMBalloonVisibleOrientation(uint64_t a1)
{
  v1 = @"IMBalloonVisibleOrientationRight";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"IMBalloonVisibleOrientationLeft";
  }
}

__CFString *NSStringFromIMTranscriptOrientation(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279789170[a1];
  }
}

__CFString *NSStringFromIMBalloonShape(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_279789188[a1];
  }
}

__CFString *NSStringFromIMTailShape(unsigned int a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_2797891A0[a1];
  }
}

__CFString *NSStringFromIMBalloonStyle(int a1)
{
  v1 = @"IMBalloonStyleStroked";
  if (a1 != 1)
  {
    v1 = 0;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return @"IMBalloonStyleFilled";
  }
}

id NSStringFromIMRectCorner(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a5, a4);
  v11 = v6;
  if (a1 == -1)
  {
    if (objc_msgSend_length(v6, v7, v8, v10, v9))
    {
      objc_msgSend_appendFormat_(v11, v12, @"|%@", v14, v13, @"IMRectCornerAllCorners");
    }

    else
    {
      objc_msgSend_appendString_(v11, v12, @"IMRectCornerAllCorners", v14, v13);
    }
  }

  v15 = v11;
  v20 = v15;
  if (a1)
  {
    if (objc_msgSend_length(v15, v16, v17, v19, v18))
    {
      objc_msgSend_appendFormat_(v20, v21, @"|%@", v23, v22, @"IMRectCornerTopLeft");
    }

    else
    {
      objc_msgSend_appendString_(v20, v21, @"IMRectCornerTopLeft", v23, v22);
    }
  }

  v24 = v20;
  v29 = v24;
  if ((a1 & 2) != 0)
  {
    if (objc_msgSend_length(v24, v25, v26, v28, v27))
    {
      objc_msgSend_appendFormat_(v29, v30, @"|%@", v32, v31, @"IMRectCornerTopRight");
    }

    else
    {
      objc_msgSend_appendString_(v29, v30, @"IMRectCornerTopRight", v32, v31);
    }
  }

  v33 = v29;
  v38 = v33;
  if ((a1 & 4) != 0)
  {
    if (objc_msgSend_length(v33, v34, v35, v37, v36))
    {
      objc_msgSend_appendFormat_(v38, v39, @"|%@", v41, v40, @"IMRectCornerBottomLeft");
    }

    else
    {
      objc_msgSend_appendString_(v38, v39, @"IMRectCornerBottomLeft", v41, v40);
    }
  }

  v42 = v38;
  v47 = v42;
  if ((a1 & 8) != 0)
  {
    if (objc_msgSend_length(v42, v43, v44, v46, v45))
    {
      objc_msgSend_appendFormat_(v47, v48, @"|%@", v50, v49, @"IMRectCornerBottomRight");
    }

    else
    {
      objc_msgSend_appendString_(v47, v48, @"IMRectCornerBottomRight", v50, v49);
    }
  }

  return v47;
}

id NSStringFromIMBalloonAttributes(int a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6 = objc_msgSend_string(MEMORY[0x277CCAB68], a2, a3, a5, a4);
  v11 = v6;
  if (!a1)
  {
    if (objc_msgSend_length(v6, v7, v8, v10, v9))
    {
      objc_msgSend_appendFormat_(v11, v12, @"|%@", v14, v13, @"IMBalloonAttributeNone");
    }

    else
    {
      objc_msgSend_appendString_(v11, v12, @"IMBalloonAttributeNone", v14, v13);
    }
  }

  v15 = v11;
  v20 = v15;
  if ((a1 & 2) != 0)
  {
    if (objc_msgSend_length(v15, v16, v17, v19, v18))
    {
      objc_msgSend_appendFormat_(v20, v21, @"|%@", v23, v22, @"IMBalloonAttributeIsOpaque");
    }

    else
    {
      objc_msgSend_appendString_(v20, v21, @"IMBalloonAttributeIsOpaque", v23, v22);
    }
  }

  v24 = v20;
  v29 = v24;
  if ((a1 & 4) != 0)
  {
    if (objc_msgSend_length(v24, v25, v26, v28, v27))
    {
      objc_msgSend_appendFormat_(v29, v30, @"|%@", v32, v31, @"IMBalloonAttributeUseLargeAsset");
    }

    else
    {
      objc_msgSend_appendString_(v29, v30, @"IMBalloonAttributeUseLargeAsset", v32, v31);
    }
  }

  return v29;
}

id NSStringFromIMBalloonDescriptor(unsigned __int8 *a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = *a1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_279789188[v3];
  }

  v5 = a1[1];
  if (v5 > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_2797891A0[v5];
  }

  if (a1[1])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = @"IMBalloonStyleStroked";
  if (a1[2] != 1)
  {
    v8 = 0;
  }

  if (a1[2])
  {
    v9 = v8;
  }

  else
  {
    v9 = @"IMBalloonStyleFilled";
  }

  v10 = *(a1 + 1);
  v11 = @"IMBalloonVisibleOrientationRight";
  if (v10 != 1)
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = @"IMBalloonVisibleOrientationLeft";
  }

  v13 = a1[24];
  v14 = v12;
  v15 = v9;
  v16 = NSStringFromIMColorType(v13);
  v21 = NSStringFromIMRectCorner(*(a1 + 2), v17, v18, v19, v20);
  v26 = NSStringFromIMBalloonAttributes(a1[25], v22, v23, v24, v25);
  v30 = objc_msgSend_stringWithFormat_(v2, v27, @"IMBalloonDescriptor_t = Shape:%@, TailShape:%@ (HasTail:%@), BalloonStyle:%@, BalloonOrientation:%@, BalloonColor:%@, BalloonCorners:%@, BalloonAttributes:%@", v29, v28, v4, v6, v7, v15, v14, v16, v21, v26);

  return v30;
}

uint64_t sub_254802270@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *a2 = 0u;
  a2[1] = 0u;
  return MEMORY[0x2821F9670](a1, sel_getValue_size_, a2, 0);
}

id IMSharedUIBundle(uint64_t a1)
{
  if (qword_27F6117A0 != -1)
  {
    sub_254805848();
  }

  v2 = qword_27F611798;

  return v2;
}

uint64_t sub_2548022C8(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_bundleWithIdentifier_(MEMORY[0x277CCA8D8], a3, @"com.apple.messages.IMSharedUI", a1, a5);
  qword_27F611798 = v5;

  return MEMORY[0x2821F96F8](v5);
}

void IMSetAnonymizeContentAndContacts(int a1)
{
  if (byte_27F6117A8 != a1)
  {
    byte_27F6117A8 = a1;
    dispatch_async(MEMORY[0x277D85CD0], &unk_2866977E0);
  }
}

void sub_254802348(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_msgSend_defaultCenter(MEMORY[0x277CCAB98], a3, a4, a1, a5);
  objc_msgSend_postNotificationName_object_(v7, v5, @"IMAnonymizeContentAndContactsDidChangeNotification", v6, 0);
}

id IMURLForResourceFromSharedUIBundle(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = IMSharedUIBundle(v4);
  v8 = objc_msgSend_URLForResource_withExtension_(v5, v6, v4, v7, v3);

  return v8;
}

uint64_t sub_254802458()
{
  v0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.transcript");
  qword_27F6117B0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t sub_2548024E4()
{
  v0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.fsm");
  qword_27F6117C0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t sub_254802570()
{
  v0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.audio");
  qword_27F6117D0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t sub_2548025FC()
{
  v0 = os_log_create(*MEMORY[0x277D1A068], "IMSharedUI.utilities");
  qword_27F6117E0 = v0;

  return MEMORY[0x2821F96F8](v0);
}

id sub_25480266C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (objc_msgSend_userInterfaceStyle(a2, a2, a3, a5, a4) == 2)
  {
    if (qword_27F6117F8 != -1)
    {
      sub_2548058C0();
    }

    v5 = &qword_27F6117F0;
  }

  else
  {
    if (qword_27F611808 != -1)
    {
      sub_2548058AC();
    }

    v5 = &qword_27F611800;
  }

  v6 = *v5;

  return v6;
}

uint64_t sub_2548026E8(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  a1.n128_u64[0] = 0x3FC3131313131313;
  v5 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a3, a4, a1, a5, 0.149019608, 0.160784314, 1.0);
  qword_27F6117F0 = v5;

  return MEMORY[0x2821F96F8](v5);
}

uint64_t sub_254802740(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  a1.n128_u64[0] = 0x3FECBCBCBCBCBCBDLL;
  v5 = objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], a3, a4, a1, a5, 0.898039216, 0.917647059, 1.0);
  qword_27F611800 = v5;

  return MEMORY[0x2821F96F8](v5);
}

id sub_2548028B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = objc_msgSend_userInterfaceStyle(a2, a2, a3, a5, a4);
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v9.n128_u64[0] = 0x3FC5959595959596;
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, v9, v8, 0.168627451, 0.180392157, 1.0);
  }

  else
  {
    v9.n128_u64[0] = 0x3FEC9C9C9C9C9C9DLL;
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, v9, v8, 0.894117647, 0.901960784, 1.0);
  }
  v5 = ;
LABEL_6:

  return v5;
}

id sub_254802944(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = objc_msgSend_userInterfaceStyle(a2, a2, a3, a5, a4);
  if (v5 >= 2)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    v9.n128_u64[0] = 0x3FE3D3D3D3D3D3D4;
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, v9, v8, 0.619607843, 0.619607843, 1.0);
  }

  else
  {
    v9.n128_u64[0] = 0x3FDFDFDFDFDFDFE0;
    objc_msgSend_colorWithRed_green_blue_alpha_(MEMORY[0x277D75348], v6, v7, v9, v8, 0.498039216, 0.517647059, 1.0);
  }
  v5 = ;
LABEL_6:

  return v5;
}

uint64_t sub_2548029C4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  v9 = qword_27F611810;
  if (!qword_27F611810)
  {
    v10 = objc_msgSend_autoupdatingCurrentCalendar(MEMORY[0x277CBEA80], v4, v5, v8, v6);
    v11 = qword_27F611810;
    qword_27F611810 = v10;

    v9 = qword_27F611810;
  }

  v12 = objc_msgSend_components_fromDate_(v9, v4, 28, v8, a1);
  v15 = objc_msgSend_components_fromDate_(qword_27F611810, v13, 28, v14, v7);
  isEqual = objc_msgSend_isEqual_(v12, v16, v15, v18, v17);

  return isEqual ^ 1u;
}

id sub_254802A6C(void *a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  if (qword_27F611818 != -1)
  {
    sub_2548058D4();
  }

  v7 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], a2, a3, a5, a4);
  v13 = objc_msgSend_objectForKeyedSubscript_(qword_27F611820, v8, v7, v10, v9);
  if (!v13)
  {
    v13 = objc_msgSend__im_createDateFormatterForTimestampFormat_(a1, v11, a3, v14, v12);
    objc_msgSend_setObject_forKeyedSubscript_(qword_27F611820, v15, v13, v16, v7);
  }

  v17 = objc_msgSend_stringFromDate_(v13, v11, a1, v14, v12);

  return v17;
}

uint64_t sub_254802B40(__n128 a1, uint64_t a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a3, a4, a1, a5);
  qword_27F611820 = v5;

  return MEMORY[0x2821F96F8](v5);
}

id sub_254802B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 1;
  v4 = 1;
  v5 = 2;
  if (a3 == 3)
  {
    v6 = 1;
  }

  else
  {
    v5 = 0;
    v6 = 0;
  }

  if (a3 != 3)
  {
    v4 = 0;
  }

  if (a3 == 2)
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v3 = v4;
  }

  v7 = 1;
  v8 = a3 == 1;
  if (a3)
  {
    v9 = 0;
  }

  else
  {
    v8 = 1;
    v9 = 1;
  }

  if (a3)
  {
    v7 = 0;
  }

  if (a3 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (a3 <= 1)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (a3 <= 1)
  {
    v12 = v7;
  }

  else
  {
    v12 = v3;
  }

  v13 = objc_alloc_init(MEMORY[0x277CCA968]);
  objc_msgSend_setDoesRelativeDateFormatting_(v13, v14, v11, v16, v15);
  objc_msgSend_setDateStyle_(v13, v17, v12, v19, v18);
  objc_msgSend_setTimeStyle_(v13, v20, v10, v22, v21);

  return v13;
}

id IMAttachmentLogSubtype(uint64_t a1)
{
  if (qword_27F611830 != -1)
  {
    sub_2548058E8();
  }

  v2 = qword_27F611828;

  return v2;
}

uint64_t sub_254802C90()
{
  v0 = os_log_create("com.apple.messages", "IMAttachment");
  qword_27F611828 = v0;

  return MEMORY[0x2821F96F8](v0);
}

uint64_t sub_254802CD4(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_254802E8C;
  v39[3] = &unk_2797890E0;
  v3 = v2;
  v40 = v3;
  objc_msgSend_loadValuesAsynchronouslyForKeys_completionHandler_(a1, v4, &unk_28669A808, v5, v39);
  dispatch_semaphore_wait(v3, 0x3B9ACA00uLL);
  v6 = MEMORY[0x277CE6520];
  v10 = objc_msgSend_metadataForFormat_(a1, v7, *MEMORY[0x277CE5F48], v9, v8);
  v13 = objc_msgSend_metadataItemsFromArray_withKey_keySpace_(v6, v11, v10, v12, @"LOOP", *MEMORY[0x277CE5FB0]);

  if (!objc_msgSend_count(v13, v14, v15, v17, v16))
  {
LABEL_7:
    v35 = 0;
    goto LABEL_8;
  }

  v38 = 0;
  v21 = objc_msgSend_objectAtIndexedSubscript_(v13, v18, 0, v20, v19);
  v26 = objc_msgSend_dataValue(v21, v22, v23, v25, v24);
  v29 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v27, &v38, v28, 4);
  isEqualToData = objc_msgSend_isEqualToData_(v26, v30, v29, v32, v31);

  if ((isEqualToData & 1) == 0)
  {
    v36 = IMAttachmentLogSubtype(v34);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      sub_2548058FC(v36);
    }

    goto LABEL_7;
  }

  v35 = 1;
LABEL_8:

  return v35;
}

__CFString *NSStringFromIMColorType(int a1)
{
  if ((a1 + 2) > 8)
  {
    return 0;
  }

  else
  {
    return off_2797891E8[(a1 + 2)];
  }
}

uint64_t sub_254803948()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  qword_27F611838 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_254803EBC(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  if (!qword_27F611848)
  {
    v6 = *(a1 + 32);
    v7 = objc_msgSend__createSingleton__im(v6, v2, v3, v5, v4);
    objc_msgSend___setSingleton__im_(v6, v8, v7, v10, v9);
  }

  objc_sync_exit(obj);
}

uint64_t sub_254803F98()
{
  v0 = dispatch_queue_create("IMAudioSessionControllerQueue", 0);
  qword_27F611858 = v0;

  return MEMORY[0x2821F96F8](v0);
}

void sub_2548041D8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_audio(IMSharedUILogs, a2, a3, a5, a4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 56);
    v8 = *(a1 + 57);
    v9 = MEMORY[0x259C1AB40](*(a1 + 40));
    *buf = 67109632;
    v30 = v7;
    v31 = 1024;
    v32 = v8;
    v33 = 2048;
    v34 = v9;
    _os_log_impl(&dword_2547F8000, v6, OS_LOG_TYPE_INFO, "dispatching setActive:%d shouldUseSpeaker:%d completion:%p", buf, 0x18u);
  }

  v10 = *(a1 + 56);
  if (v10 != objc_msgSend_isActive(*(a1 + 32), v11, v12, v14, v13) || *(a1 + 56) == 1 && (v19 = *(a1 + 48), v19 != objc_msgSend_options(*(a1 + 32), v15, v16, v18, v17)) || objc_msgSend_isDirty(*(a1 + 32), v15, v16, v18, v17))
  {
    if (*(a1 + 56) == 1)
    {
      objc_msgSend_configureAudioSessionWithOptions_(*(a1 + 32), v15, *(a1 + 48), v18, v17);
      v20 = *(a1 + 56);
    }

    else
    {
      v20 = 0;
    }

    objc_msgSend_setActive_(*(a1 + 32), v15, v20 & 1, v18, v17);
    objc_msgSend_setOptions_(*(a1 + 32), v21, *(a1 + 48), v23, v22);
    objc_msgSend_setDirty_(*(a1 + 32), v24, 0, v26, v25);
  }

  if (*(a1 + 40))
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_2548043BC;
    block[3] = &unk_279788F58;
    v28 = *(a1 + 40);
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void sub_254804D6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);
    v7 = objc_msgSend_audio(IMSharedUILogs, v3, v4, v6, v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_254805B98();
    }

    objc_end_catch();
    JUMPOUT(0x254804D24);
  }

  _Unwind_Resume(exception_object);
}

void sub_254804DE0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_2548056A8(void *a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  objc_msgSend_count(a1, a2, a3, a5, a4);
  sub_254801C90();
  sub_254801C80();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_25480572C(uint64_t a1)
{
  v1 = objc_opt_class();
  v7 = NSStringFromClass(v1);
  sub_254801C80();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_2548057C0(id *a1, const char *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  objc_msgSend_count(*a1, a2, a3, a5, a4);
  sub_254801C90();
  sub_254801C80();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x16u);
}

void sub_254805AE4(int a1, void *a2, NSObject *a3, uint64_t a4, __n128 a5)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_outputDataSources(a2, a2, a3, a5, a4);
  v8[0] = 67109378;
  v8[1] = a1;
  v9 = 2112;
  v10 = v7;
  _os_log_error_impl(&dword_2547F8000, a3, OS_LOG_TYPE_ERROR, "AudioSessionController: configureAudioSession using speaker = %d, %@", v8, 0x12u);
}