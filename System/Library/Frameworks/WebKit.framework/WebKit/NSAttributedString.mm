@interface NSAttributedString
@end

@implementation NSAttributedString

void __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke(uint64_t a1)
{
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 0;
  [_WKAttributedStringWebViewCache invalidateGlobalConfigurationIfNeeded:*(a1 + 32)];
  v64 = 0;
  v65 = &v64;
  v66 = 0x3812000000;
  v67 = __Block_byref_object_copy__3;
  v68 = __Block_byref_object_dispose__3;
  objc_msgSend_retrieveOrCreateWebView(_WKAttributedStringWebViewCache);
  v57 = 0;
  v58 = &v57;
  v59 = 0x3812000000;
  v60 = __Block_byref_object_copy__203;
  v61 = __Block_byref_object_dispose__204;
  v63 = objc_alloc_init(_WKAttributedStringNavigationDelegate);
  v50 = 0;
  v51 = &v50;
  v52 = 0x3812000000;
  v53 = __Block_byref_object_copy__207;
  v54 = __Block_byref_object_dispose__208;
  v56 = 0;
  [v65[6] setNavigationDelegate:v58[6]];
  v2 = WTF::dynamic_objc_cast<NSNumber>([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DB730]]);
  if (v2)
  {
    [v2 doubleValue];
  }

  else
  {
    v3 = 1.0;
  }

  [v65[6] _setTextZoomFactor:v3];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3812000000;
  v46 = __Block_byref_object_copy__210;
  v47 = __Block_byref_object_dispose__211;
  v48 = &unk_19EA2799F;
  v49 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_213;
  v36[3] = &unk_1E7631078;
  v38 = &v71;
  v39 = &v43;
  v40 = &v64;
  v41 = &v57;
  v42 = &v50;
  v37 = *(a1 + 40);
  v34[4] = &v50;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_2;
  v35[3] = &unk_1E76310A0;
  v35[4] = v36;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_3;
  v34[3] = &unk_1E76310C8;
  [v58[6] setDecidePolicyForNavigationAction:v34];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_4;
  v33[3] = &unk_1E76310F0;
  v33[4] = v35;
  [v58[6] setWebContentProcessDidTerminate:v33];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_5;
  v32[3] = &unk_1E7631118;
  v32[4] = v35;
  [v58[6] setDidFailProvisionalNavigation:v32];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_6;
  v31[3] = &unk_1E7631118;
  v31[4] = v35;
  [v58[6] setDidFailNavigation:v31];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_7;
  v30[3] = &unk_1E7631168;
  v30[6] = &v71;
  v30[7] = &v57;
  v30[8] = &v64;
  v30[4] = v35;
  v30[5] = v36;
  [v58[6] setDidFinishNavigation:v30];
  v4 = WTF::dynamic_objc_cast<NSNumber>([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DB740]]);
  v5 = v4;
  v6 = 60000000000;
  if (v4)
  {
    [v4 doubleValue];
    if (v7 >= 0.0)
    {
      [v5 doubleValue];
      v6 = (v8 * 1000000000.0);
    }
  }

  v9 = dispatch_time(0, v6);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_9;
  block[3] = &unk_1E7631190;
  block[4] = v35;
  block[5] = &v71;
  dispatch_after(v9, MEMORY[0x1E69E96A0], block);
  v10 = (*(*(a1 + 56) + 16))();
  v11 = v10;
  v12 = v51;
  if (v10)
  {
    v13 = v10;
  }

  v14 = v12[6];
  v12[6] = v11;
  if (v14)
  {
  }

  if ((v72[3] & 1) == 0)
  {
    objc_msgSend__protectedPage(v65[6]);
    v16 = *(v28 + 352);
    atomic_fetch_add((v16 + 16), 1u);
    v17 = *(*(v16 + 160) + 8);
    if (!v17)
    {
      __break(0xC471u);
      return;
    }

    atomic_fetch_add((v17 + 16), 1u);
    v18 = WebKit::ProcessThrottlerActivity::operator new(0x30, v15);
    v19 = WebKit::ProcessThrottlerActivity::ProcessThrottlerActivity(v18, v16 + 144, "NSAttributedString serialization", 33, 1, 0);
    v21 = v44[6];
    v44[6] = v19;
    if (v21)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v21 + 8), v20);
    }

    WebKit::ProcessThrottler::deref((v16 + 144), v20);
    WTF::ThreadSafeRefCounted<WebKit::AuxiliaryProcessProxy,(WTF::DestructionThread)2>::deref((v16 + 16), v22);
    if (v28)
    {
      CFRelease(*(v28 + 8));
    }
  }

  _Block_object_dispose(&v43, 8);
  v24 = v49;
  v49 = 0;
  if (v24)
  {
    WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v24 + 8), v23);
  }

  _Block_object_dispose(&v50, 8);
  v25 = v56;
  v56 = 0;
  if (v25)
  {
  }

  _Block_object_dispose(&v57, 8);
  v26 = v63;
  v63 = 0;
  if (v26)
  {
  }

  _Block_object_dispose(&v64, 8);
  v27 = v70;
  v70 = 0;
  if (v27)
  {
  }

  _Block_object_dispose(&v71, 8);
}

void __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_213(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v18 = a2;
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 48);
    *(v7 + 48) = 0;
    if (v8)
    {
      WTF::RefCounted<WebKit::ProcessThrottlerActivity>::deref((v8 + 8), a2);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(*(a1 + 64) + 8) + 48) setNavigationDelegate:0];
    v9 = *(*(a1 + 72) + 8);
    v10 = *(v9 + 48);
    *(v9 + 48) = 0;
    if (v10)
    {
    }

    v11 = *(*(a1 + 80) + 8);
    v12 = *(v11 + 48);
    *(v11 + 48) = 0;
    if (v12)
    {
    }

    if (!a4)
    {
      [_WKAttributedStringWebViewCache cacheWebView:*(*(*(a1 + 64) + 8) + 48)];
    }

    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 48);
    *(v13 + 48) = 0;
    if (v14)
    {
    }

    if (v18)
    {
      v15 = *(a1 + 32);
      if (v15 == objc_opt_class())
      {
        v16 = v18;
      }

      else
      {
        v18 = [objc_alloc(*(a1 + 32)) initWithAttributedString:v18];
      }
    }

    else
    {
      v18 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      a3 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:a3];
    }

    else if (a3)
    {
      v17 = a3;
    }

    (*(*(a1 + 40) + 16))();
    if (a3)
    {
    }

    if (v18)
    {
    }
  }
}

void __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_2(uint64_t a1, WKErrorCode a2, const __CFString *a3)
{
  v3 = *(a1 + 32);
  createNSError(&v5, a2, a3);
  (*(v3 + 16))(v3, 0, 0, v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
  }
}

uint64_t __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [objc_msgSend(a2 "_mainFrameNavigation")];
  v5 = *(a3 + 16);

  return v5(a3, v4);
}

void *__90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_7(void *result)
{
  if ((*(*(result[6] + 8) + 24) & 1) == 0)
  {
    v1 = result;
    v2 = *(result[7] + 8);
    v3 = *(v2 + 48);
    *(v2 + 48) = 0;
    if (v3)
    {
    }

    v4 = *(*(v1[8] + 8) + 48);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_8;
    v5[3] = &unk_1E7631140;
    v6 = *(v1 + 2);
    return [v4 _getContentsAsAttributedStringWithCompletionHandler:v5];
  }

  return result;
}

uint64_t __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

uint64_t __90__NSAttributedString_WKPrivate___loadFromHTMLWithOptions_contentLoader_completionHandler___block_invoke_9(uint64_t result)
{
  if ((*(*(*(result + 40) + 8) + 24) & 1) == 0)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

uint64_t __107__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithFileURL_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = WTF::dynamic_objc_cast<NSURL>([*(a1 + 32) objectForKeyedSubscript:@"ReadAccessURL"]);
  v5 = *(a1 + 40);

  return [a2 loadFileURL:v5 allowingReadAccessToURL:v4];
}

uint64_t __106__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithString_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = WTF::dynamic_objc_cast<NSURL>([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DB608]]);
  v5 = *(a1 + 40);

  return [a2 loadHTMLString:v5 baseURL:v4];
}

uint64_t __104__NSAttributedString_NSAttributedStringWebKitAdditions__loadFromHTMLWithData_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = WTF::dynamic_objc_cast<NSString>([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DB6E8]]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  v7 = [WTF::dynamic_objc_cast<NSNumber>(objc_msgSend(*(a1 + 32) objectForKeyedSubscript:{*MEMORY[0x1E69DB620])), "unsignedIntegerValue"}];
  v8 = WTF::dynamic_objc_cast<NSURL>([*(a1 + 32) objectForKeyedSubscript:*MEMORY[0x1E69DB608]]);
  if (v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  if (!v9)
  {
    v10 = CFStringConvertNSStringEncodingToEncoding(v7);
    if (v10 == -1)
    {
      v5 = 0;
    }

    else
    {
      v11 = CFStringConvertEncodingToIANACharSetName(v10);
      v5 = v11;
      if (v11)
      {
        v12 = v11;
      }
    }
  }

  v13 = [a2 loadData:*(a1 + 40) MIMEType:@"text/html" characterEncodingName:v5 baseURL:v8];
  if (v5)
  {
  }

  return v13;
}

@end