uint64_t VISLabeledPRPointReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v32 = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v32 & 0x7F) << v6;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) <= 2)
    {
      if (v14 == 1)
      {
        v31 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v27 = [a2 data];
          [v27 getBytes:&v31 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v31;
        [a1 setConfidence:v24];
        continue;
      }

      if (v14 == 2)
      {
        v30 = 0;
        v16 = [a2 position] + 4;
        if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 4, v17 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v30 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v18) = v30;
        [a1 setPrecision:v18];
        continue;
      }
    }

    else
    {
      switch(v14)
      {
        case 3:
          v29 = 0;
          v19 = [a2 position] + 4;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 4, v20 <= objc_msgSend(a2, "length")))
          {
            v26 = [a2 data];
            [v26 getBytes:&v29 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          LODWORD(v21) = v29;
          [a1 setRecall:v21];
          continue;
        case 4:
          v15 = PBReaderReadString();
          [a1 setLabel:v15];
          goto LABEL_32;
        case 5:
          v15 = PBReaderReadString();
          [a1 setReadable_label:v15];
LABEL_32:

          continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISOperatingPointSelectorsReadFrom(void *a1, void *a2)
{
  for (i = a2; ; i = a2)
  {
    v5 = [i position];
    if (v5 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
    {
      break;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    while (1)
    {
      LOBYTE(v32) = 0;
      v9 = [a2 position] + 1;
      if (v9 >= [a2 position] && (v10 = objc_msgSend(a2, "position") + 1, v10 <= objc_msgSend(a2, "length")))
      {
        v11 = [a2 data];
        [v11 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

        [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
      }

      else
      {
        [a2 _setError];
      }

      v8 |= (v32 & 0x7F) << v6;
      if ((v32 & 0x80) == 0)
      {
        break;
      }

      v6 += 7;
      if (v7++ >= 9)
      {
        v13 = 0;
        goto LABEL_16;
      }
    }

    v13 = [a2 hasError] ? 0 : v8;
LABEL_16:
    if (([a2 hasError] & 1) != 0 || (v13 & 7) == 4)
    {
      break;
    }

    v14 = v13 >> 3;
    if ((v13 >> 3) > 2)
    {
      if (v14 == 3)
      {
        v32 = 0;
        v25 = [a2 position] + 4;
        if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 4, v26 <= objc_msgSend(a2, "length")))
        {
          v31 = [a2 data];
          [v31 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v27) = v32;
        [a1 setRecall:v27];
        continue;
      }

      if (v14 == 4)
      {
        v32 = 0;
        v18 = [a2 position] + 4;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 4, v19 <= objc_msgSend(a2, "length")))
        {
          v29 = [a2 data];
          [v29 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v20) = v32;
        [a1 setF_beta:v20];
        continue;
      }
    }

    else
    {
      if (v14 == 1)
      {
        v32 = 0;
        v22 = [a2 position] + 4;
        if (v22 >= [a2 position] && (v23 = objc_msgSend(a2, "position") + 4, v23 <= objc_msgSend(a2, "length")))
        {
          v30 = [a2 data];
          [v30 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v24) = v32;
        [a1 setConfidence:v24];
        continue;
      }

      if (v14 == 2)
      {
        v32 = 0;
        v15 = [a2 position] + 4;
        if (v15 >= [a2 position] && (v16 = objc_msgSend(a2, "position") + 4, v16 <= objc_msgSend(a2, "length")))
        {
          v28 = [a2 data];
          [v28 getBytes:&v32 range:{objc_msgSend(a2, "position"), 4}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
        }

        else
        {
          [a2 _setError];
        }

        LODWORD(v17) = v32;
        [a1 setPrecision:v17];
        continue;
      }
    }

    result = PBReaderSkipValueWithTag();
    if (!result)
    {
      return result;
    }
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISOperatingPointsCollectionReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16[0] & 0x7F) << v5;
        if ((v16[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VISSelectedOperatingPoint);
        v16[0] = 0;
        v16[1] = 0;
        if (!PBReaderPlaceMark() || !VISSelectedOperatingPointReadFrom(v13, a2))
        {

          return 0;
        }

        PBReaderRecallMark();
        if (v13)
        {
          [a1 addPoints:v13];
        }
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v14 = [a2 position];
    }

    while (v14 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t VISSelectedOperatingPointReadFrom(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(VISOperatingPointSelectors);
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !VISOperatingPointSelectorsReadFrom(v13, a2))
        {
          goto LABEL_30;
        }

        PBReaderRecallMark();
        [a1 setSelector:v13];
LABEL_25:

        goto LABEL_27;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(VISLabeledPRPoint);
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !VISLabeledPRPointReadFrom(v13, a2))
    {
LABEL_30:

      return 0;
    }

    PBReaderRecallMark();
    [a1 setSelected:v13];
    goto LABEL_25;
  }

  return [a2 hasError] ^ 1;
}

id _VISharedAnalytics(uint64_t a1)
{
  if (_VISharedAnalytics_onceToken != -1)
  {
    _VISharedAnalytics_cold_1();
  }

  v2 = _VISharedAnalytics_analytics;

  return v2;
}

void VIAnalyticsLogStartEntryPointWithEvent(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (!a3)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = 138412290;
        v9 = v5;
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "VIAnalyticsLogStartEntryPointWithEvent passed SFViewAppearEventUnknown from %@", &v8, 0xCu);
      }
    }

    a3 = 28;
  }

  v7 = [VIAEntryPointEvent startEventWithQueryID:a1 viewAppearEvent:a3 originatingApplication:v5];
  [VIAnalytics logEvent:v7];
}

void VIAnalyticsLogEndEntryPoint(uint64_t a1)
{
  v1 = [VIAEntryPointEvent endEventWithOriginatingApplication:a1];
  [VIAnalytics logEvent:v1];
}

void VIAnalyticsLogCacheHit(uint64_t a1, uint64_t a2, void *a3)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v15[0] = @"com.apple.argos.cache_hit_context_key.query_id";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a1];
  v16[0] = v6;
  v15[1] = @"com.apple.argos.cache_hit_context_key.cached_result_query_id";
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a2];
  v15[2] = @"com.apple.argos.cache_hit_context_key.application_id";
  v16[1] = v7;
  v16[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v12 = 0;
  v9 = [VIACacheHitContext contextWithDictionary:v8 error:&v12];
  v10 = v12;
  if (v9)
  {
    v11 = [[VIACacheHitEvent alloc] initWithContext:v9];
    [VIAnalytics logEvent:v11];
  }

  else
  {
    if (!+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      goto LABEL_4;
    }

    v11 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(&v11->super, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v10;
      _os_log_impl(&dword_1D9962000, &v11->super, OS_LOG_TYPE_ERROR, "Could not create VIACacheHitContext: %{public}@", buf, 0xCu);
    }
  }

LABEL_4:
}

void VIAnalyticsLogCacheHitWithContext(void *a1)
{
  v1 = a1;
  v2 = [[VIACacheHitEvent alloc] initWithContext:v1];

  [VIAnalytics logEvent:v2];
}

__CVBuffer *VIRotateCVPixelBufferUsingVTSessionToUp(__CVBuffer *a1, int a2)
{
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      v4 = a2 != 4 && a2 == 5;
    }

    else
    {
      v3 = a2 == 8;
      if (a2 == 7)
      {
        v3 = 1;
      }

      v4 = a2 == 6 || v3;
    }

    goto LABEL_16;
  }

  if (a2 > 1)
  {
    v4 = 0;
LABEL_16:
    v5 = 0;
    if (!VTPixelRotationSessionCreateWithRotationAndFlip())
    {
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      v8 = !v4;
      if (v4)
      {
        v9 = Height;
      }

      else
      {
        v9 = Width;
      }

      if (v8)
      {
        Width = Height;
      }

      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      v5 = VICreateCVPixelBufferWithFormat(v9, Width, PixelFormatType);
      if (v5 && VTPixelRotationSessionRotateImage(0, a1, v5))
      {
        CVPixelBufferRelease(v5);
        v5 = 0;
      }

      CFRelease(0);
    }

    return v5;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      return a1;
    }

    v4 = 0;
    goto LABEL_16;
  }

  if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
  {
    v12 = +[_TtC12VisualLookUp8VILogger log];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "Invalid from orientation", buf, 2u);
    }
  }

  return a1;
}

void sub_1D99898AC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1D998A098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1D998A28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::vector<long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1D998A5A0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_1E858A9A0, MEMORY[0x1E69E5278]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, __int32 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1D998A814(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<long long>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<float>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<float>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_1D998A910(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

size_t VIPixelBufferSize(__CVBuffer *a1)
{
  Width = CVPixelBufferGetWidth(a1);
  CVPixelBufferGetHeight(a1);
  return Width;
}

id VIImageDomainInfoFromKeys(void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x1E695EFF8];
    v8 = *(MEMORY[0x1E695EFF8] + 8);
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        BYTE4(v13) = 0;
        LODWORD(v13) = 1;
        v10 = [VIImageRegionDomainInfo initWithDomainKey:"initWithDomainKey:labelName:glyphName:displayLabel:displayMessage:hasFocalPoint:focalPoint:isCornerGlyph:ocrResultsRequired:barcodeResultsRequired:isLowConfidence:shouldShowDynamicGlyph:" labelName:*(*(&v14 + 1) + 8 * i) glyphName:0 displayLabel:0 displayMessage:0 hasFocalPoint:0 focalPoint:0 isCornerGlyph:v7 ocrResultsRequired:v8 barcodeResultsRequired:v13 isLowConfidence:? shouldShowDynamicGlyph:?];
        [v2 addObject:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [v2 copy];

  return v11;
}

id VIImageDomainKeysFromInfo(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) domainKey];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = [v2 copy];

  return v9;
}

CVPixelBufferRef VICreateCVPixelBufferWithFormat(size_t a1, size_t a2, OSType a3)
{
  v25[2] = *MEMORY[0x1E69E9840];
  pixelBufferOut = 0;
  v6 = *MEMORY[0x1E6966020];
  v24[0] = *MEMORY[0x1E69660D8];
  v24[1] = v6;
  v25[0] = MEMORY[0x1E695E0F8];
  v25[1] = &unk_1F554BFB8;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v8 = *MEMORY[0x1E695E480];
  v9 = CVPixelBufferCreate(*MEMORY[0x1E695E480], a1, a2, a3, v7, &pixelBufferOut);
  if (CVPixelBufferIsPlanar(pixelBufferOut) && ((a2 | a1) & 1) != 0)
  {
    CVPixelBufferRelease(pixelBufferOut);
    pixelBufferOut = 0;
    if (a1 == 1)
    {
      v10 = 2;
    }

    else
    {
      v10 = a1 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (a2 == 1)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 & 0xFFFFFFFFFFFFFFFELL;
    }

    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v12 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218752;
        v17 = a1;
        v18 = 2048;
        v19 = a2;
        v20 = 2048;
        v21 = v10;
        v22 = 2048;
        v23 = v11;
        _os_log_impl(&dword_1D9962000, v12, OS_LOG_TYPE_ERROR, "VIImageScaler: requested to create odd size planar image %zu x %zu, closest even image is allocated %zu x %zu", buf, 0x2Au);
      }
    }

    v9 = CVPixelBufferCreate(v8, v10, v11, a3, v7, &pixelBufferOut);
  }

  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = pixelBufferOut;
  }

  return v13;
}

uint64_t _VTModifyPixelBufferWithColor(__CVBuffer *a1, unsigned int a2)
{
  CVPixelBufferLockBaseAddress(a1, 0);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if ((BytesPerRow & 0x3F) != 0)
  {
    if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
    {
      v6 = +[_TtC12VisualLookUp8VILogger log];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v14[0] = 0;
        _os_log_impl(&dword_1D9962000, v6, OS_LOG_TYPE_ERROR, "VIImageScaler: Failed to modify PixelBuffer: only 64 byte aligned buffers are supported", v14, 2u);
      }
    }

    return 4294945519;
  }

  else
  {
    v8 = BytesPerRow;
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    if (Height)
    {
      v10 = 0;
      *&v11 = vdup_n_s32(a2);
      *(&v11 + 1) = v11;
      do
      {
        if (v8)
        {
          for (i = 0; i < v8; i += 64)
          {
            v13 = &BaseAddress[i];
            *v13 = v11;
            *(v13 + 1) = v11;
            *(v13 + 2) = v11;
            *(v13 + 3) = v11;
          }
        }

        ++v10;
        BaseAddress += 64 * (v8 >> 6);
      }

      while (v10 != Height);
    }

    CVPixelBufferUnlockBaseAddress(a1, 0);
    return 0;
  }
}

double VIRectIntegral(__CVBuffer *a1, int a2, double a3, double a4, double a5, double a6)
{
  IsPlanar = CVPixelBufferIsPlanar(a1);
  v13 = _CGRectIntegralEven;
  if (!IsPlanar)
  {
    v13 = MEMORY[0x1E695F048];
  }

  v14 = v13(a3, a4, a5, a6);
  if (a2)
  {
    VIPixelBufferSize(a1);
    if (CVPixelBufferIsPlanar(a1))
    {
      __asm { FMOV            V1.2D, #0.5 }
    }

    if (v14 < 0.0)
    {
      return 0.0;
    }
  }

  return v14;
}

unint64_t VIvnCropScaleToVi(unint64_t a1)
{
  if (a1 < 3)
  {
    return a1 + 1;
  }

  else
  {
    return 0;
  }
}

double VIPredictionInNormalizedImageCoordinates(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, CGFloat a10, CGFloat a11, CGFloat a12, CGFloat a13)
{
  *&v41[16] = a4;
  *&v41[24] = a5;
  *v41 = a2;
  *&v41[8] = a3;
  v45.origin.x = a10;
  v45.origin.y = a11;
  v45.size.width = a12;
  v45.size.height = a13;
  v43.origin.x = 0.0;
  v43.origin.y = 0.0;
  v43.size.width = 1.0;
  v43.size.height = 1.0;
  v44 = CGRectIntersection(v43, v45);
  x = v44.origin.x;
  width = v44.size.width;
  height = v44.size.height;
  if (!CGRectIsNull(v44))
  {
    v21 = a6 * width / (a7 * height);
    v22 = a8 / a9;
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v38 = *v41;
        return (x + v38 * width);
      }

      if (a1 != 4)
      {
        return *MEMORY[0x1E695F040];
      }
    }

    else
    {
      if (a1 == 1)
      {
        v33 = v22 <= v21;
        v34 = v21 / v22;
        v35 = v22 / v21;
        v36 = (v35 + -1.0) * 0.5;
        if (v33)
        {
          v36 = 0.0;
          v37 = (v34 + -1.0) * 0.5;
        }

        else
        {
          v37 = 0.0;
        }

        if (v33)
        {
          v35 = 1.0;
        }

        else
        {
          v34 = 1.0;
        }

        v42.a = 1.0 / v34;
        v42.b = 0.0;
        v42.c = 0.0;
        v42.d = 1.0 / v35;
        v42.tx = (v37 / v34);
        v42.ty = (v36 / v35);
        goto LABEL_29;
      }

      if (a1 != 2)
      {
        return *MEMORY[0x1E695F040];
      }
    }

    v23 = v22 <= v21;
    v24 = v21 / v22;
    v25 = v24;
    v26 = ((v24 + -1.0) * -0.5);
    v27 = v22 / v21;
    v28 = v27;
    v29 = ((v27 + -1.0) * -0.5);
    if (v23)
    {
      v30 = v26;
    }

    else
    {
      v30 = 0.0;
    }

    if (v23)
    {
      v31 = 0.0;
    }

    else
    {
      v31 = v29;
    }

    if (v23)
    {
      v32 = v25;
    }

    else
    {
      v32 = 1.0;
    }

    if (v23)
    {
      v28 = 1.0;
    }

    if (a1 == 2)
    {
      v42.a = v28;
      v42.b = 0.0;
      v42.c = 0.0;
      v42.d = v32;
      v42.tx = v31;
      v42.ty = v30;
    }

    else
    {
      v42.a = v28;
      v42.b = 0.0;
      v42.c = 0.0;
      v42.d = v32;
      v42.tx = 0.0;
      v42.ty = 0.0;
    }

LABEL_29:
    *&v38 = CGRectApplyAffineTransform(*v41, &v42);
    return (x + v38 * width);
  }

  return x;
}

double _CGRectIntegralEven(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = floor(a1 * 0.5);
  v9 = round(v8 + v8);
  v10 = a1;
  CGRectGetMaxX(*(&a2 - 1));
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetMaxY(v12);
  return v9;
}

id _VIServiceNilInputError()
{
  v5[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E696A598];
  v4[0] = *MEMORY[0x1E696A578];
  v4[1] = v0;
  v5[0] = @"Unsatisfied parameters.";
  v5[1] = @"Please check for nil input parameters.";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.objective_c" code:-1 userInfo:v1];

  return v2;
}

uint64_t VIObjectIsEqual(unint64_t a1, uint64_t a2)
{
  if (a1 | a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return 1;
  }
}

BOOL VICompareCGRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = vabdd_f64(a1, a5);
  v9 = fabs(a1 + a5) * 2.22044605e-16;
  v10 = v8 < 2.22507386e-308 || v8 < v9;
  if (v10 && ((v11 = vabdd_f64(a2, a6), v12 = fabs(a2 + a6) * 2.22044605e-16, v11 >= 2.22507386e-308) ? (v13 = v11 < v12) : (v13 = 1), v13 && ((v14 = vabdd_f64(a3, a7), v15 = fabs(a3 + a7) * 2.22044605e-16, v14 >= 2.22507386e-308) ? (v16 = v14 < v15) : (v16 = 1), v16)))
  {
    return fmax(fabs(a4 + a8) * 2.22044605e-16, 2.22507386e-308) > vabdd_f64(a4, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t VICompactMapArray(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * v10));
        if (v11)
        {
          [v5 addObject:{v11, v14}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  return v12;
}

uint64_t VIFlatMapArray(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v3;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = v4[2](v4, *(*(&v14 + 1) + 8 * v10));
        if (v11)
        {
          [v5 addObjectsFromArray:{v11, v14}];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  return v12;
}

double VIFlipOriginNormalizedRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  MinX = CGRectGetMinX(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetMaxY(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetWidth(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  return MinX;
}

id _VIQueryContextMapperError(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Unsatisfied value type for key: %@", a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The expected type is: %@", v4];

  v7 = *MEMORY[0x1E696A598];
  v11[0] = *MEMORY[0x1E696A578];
  v11[1] = v7;
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.query_context.error_domain" code:2 userInfo:v8];

  return v9;
}

id _VIQueryContextMapperStringValueParseError(uint64_t a1)
{
  v8[2] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unsatisfied value string format for key: %@", a1];
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The value with error is: %@", 0];
  v3 = *MEMORY[0x1E696A598];
  v7[0] = *MEMORY[0x1E696A578];
  v7[1] = v3;
  v8[0] = v1;
  v8[1] = v2;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];
  v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.query_context.error_domain" code:3 userInfo:v4];

  return v5;
}

__CFString *_VITeamIDToUse(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  if ([a2 count])
  {
    if ([v6 length] && (objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", &unk_1F554BFD0), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "containsObject:", v6), v7, (v8 & 1) != 0))
    {
      v9 = @"argosinternal";
    }

    else
    {
      v9 = v5;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_1D999B830(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id VIACacheHitContextMapperError(uint64_t a1, void *a2)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [v3 stringWithFormat:@"Unsatisfied value type for key: %@", a1];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The expected type is: %@", v4];

  v7 = *MEMORY[0x1E696A598];
  v11[0] = *MEMORY[0x1E696A578];
  v11[1] = v7;
  v12[0] = v5;
  v12[1] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.cache_hit_context.error_domain" code:2 userInfo:v8];

  return v9;
}

id VIACacheHitContextMapperMissingValueError(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing required value for key: %@", a1];
  v5 = *MEMORY[0x1E696A578];
  v6[0] = v1;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.argos.cache_hit_context.error_domain" code:3 userInfo:v2];

  return v3;
}

id _descriptionForFloatArray(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v2 appendString:@"["];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      v8 = 0;
      v9 = v6 + 1;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v12 + 1) + 8 * v8) floatValue];
        [v2 appendFormat:@"%0.8f", v10];
        if (v9 < [v3 count])
        {
          [v2 appendString:{@", "}];
        }

        ++v8;
        ++v9;
      }

      while (v5 != v8);
      v6 += v5;
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  [v2 appendString:@"]"];

  return v2;
}

__CVBuffer *VIRescaleCVPixelBufferUsingVTSession(__CVBuffer *a1, double a2)
{
  v3 = a1;
  v29 = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(v3);
  v6 = Height;
  if (Width >= Height)
  {
    v7 = Height;
  }

  else
  {
    v7 = Width;
  }

  if (v7 > a2)
  {
    pixelTransferSessionOut = 0;
    v8 = 0;
    if (!VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], &pixelTransferSessionOut))
    {
      v8 = VICreateCVPixelBufferWithFormat((a2 / v7 * Width), (a2 / v7 * v6), 0x42475241u);
      v9 = pixelTransferSessionOut;
      if (v8)
      {
        if (VTPixelTransferSessionTransferImage(pixelTransferSessionOut, v3, v8))
        {
          CVPixelBufferRelease(v8);
          v8 = 0;
        }

        else if (+[_TtC12VisualLookUp8VILogger shouldLogInternalMessage])
        {
          v10 = +[_TtC12VisualLookUp8VILogger log];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
          {
            v11 = CVPixelBufferGetWidth(v3);
            v12 = CVPixelBufferGetHeight(v3);
            PixelFormatType = CVPixelBufferGetPixelFormatType(v3);
            v14 = CVPixelBufferGetPixelFormatType(v8);
            *buf = 134219264;
            v18 = v11;
            v19 = 2048;
            v20 = v12;
            v21 = 1024;
            v22 = PixelFormatType;
            v23 = 2048;
            v24 = (a2 / v7 * Width);
            v25 = 2048;
            v26 = (a2 / v7 * v6);
            v27 = 1024;
            v28 = v14;
            _os_log_impl(&dword_1D9962000, v10, OS_LOG_TYPE_DEBUG, "VIPrescaling (w, h, pixtype): from (%zu, %zu, %d) to (%zu, %zu, %d)", buf, 0x36u);
          }
        }

        v9 = pixelTransferSessionOut;
      }

      CFRelease(v9);
    }

    return v8;
  }

  return v3;
}

void _HashItem(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DF88];
  v4 = a1;
  v10 = [v3 dataWithLength:32];
  v5 = [v4 bytes];
  v6 = [v4 length];

  v7 = v10;
  CC_SHA256(v5, v6, [v10 mutableBytes]);
  v8 = v10;
  v9 = [v10 bytes];
  *a2 = *v9;
  a2[1] = v9[1];
}

id VIAllVisualSearchDomains()
{
  v4[22] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFA8];
  v4[0] = @"com.apple.argos.domain_key.art";
  v4[1] = @"com.apple.argos.domain_key.book";
  v4[2] = @"com.apple.argos.domain_key.cats";
  v4[3] = @"com.apple.argos.domain_key.dogs";
  v4[4] = @"com.apple.argos.domain_key.nature";
  v4[5] = @"com.apple.argos.domain_key.media";
  v4[6] = @"com.apple.argos.domain_key.landmark";
  v4[7] = @"com.apple.argos.domain_key.object2D";
  v4[8] = @"com.apple.argos.domain_key.album";
  v4[9] = @"com.apple.argos.domain_key.animals";
  v4[10] = @"com.apple.argos.domain_key.naturalLandmark";
  v4[11] = @"com.apple.argos.domain_key.sculpture";
  v4[12] = @"com.apple.argos.domain_key.skyline";
  v4[13] = @"com.apple.argos.domain_key.insects";
  v4[14] = @"com.apple.argos.domain_key.birds";
  v4[15] = @"com.apple.argos.domain_key.reptiles";
  v4[16] = @"com.apple.argos.domain_key.mammals";
  v4[17] = @"com.apple.argos.domain_key.storefront";
  v4[18] = @"com.apple.argos.domain_key.food";
  v4[19] = @"com.apple.argos.domain_key.laundryCareSymbol";
  v4[20] = @"com.apple.argos.domain_key.autoSymbol";
  v4[21] = @"com.apple.argos.domain_key.signSymbol";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:22];
  v2 = [v0 setWithArray:v1];

  return v2;
}

uint64_t VIIsSettingsEnabledForLookup()
{
  v0 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.spotlightui"];
  v1 = [v0 objectForKey:@"SBSearchDisabledDomains"];
  v2 = [v1 containsObject:@"DOMAIN_PARSEC"];

  return v2 ^ 1u;
}

void sub_1D999F248(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v83 = a2;
  v84 = a3;
  v82 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30, &unk_1D9C85040);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v76 - v8;
  v10 = type metadata accessor for EspressoModel(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v76 - v15;
  LOBYTE(v88[0]) = *(a1 + 104);
  v85 = a1;
  v17 = sub_1D999FE8C(v88, *(a1 + 128));
  if (!v5)
  {
    v18 = v17;
    v78 = v11;
    v79 = v10;
    v80 = v9;
    v81 = 0;
    v76 = v13;
    v77 = v16;
    v19 = *(v4 + 16);
    v20 = OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
    v21 = swift_allocObject();
    swift_weakInit();
    v22 = v85;
    sub_1D99A170C(v85, v88);
    v23 = swift_allocObject();
    v24 = v88[7];
    *(v23 + 136) = v88[6];
    *(v23 + 152) = v24;
    *(v23 + 168) = v88[8];
    v25 = v88[3];
    *(v23 + 72) = v88[2];
    *(v23 + 88) = v25;
    v26 = v88[5];
    *(v23 + 104) = v88[4];
    *(v23 + 120) = v26;
    v27 = v88[1];
    *(v23 + 40) = v88[0];
    *(v23 + 16) = v83;
    *(v23 + 24) = v84;
    *(v23 + 32) = v21;
    v28 = v89;
    *(v23 + 56) = v27;
    *(v23 + 184) = v28;
    *(v23 + 192) = v18;
    v29 = *(v22 + 120);

    sub_1D9B7E0E0(v29);
    v30 = v81;
    sub_1D9C1947C(v87);
    if (v30)
    {

LABEL_4:

      return;
    }

    v81 = 0;
    if (v19)
    {
      if (v19 == 1)
      {
        sub_1D99A17C8(v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
        v32 = v79;
        v31 = v80;
        v33 = swift_dynamicCast();
        v34 = *(v78 + 56);
        if (v33)
        {
          v84 = v21;
          v34(v31, 0, 1, v32);
          v35 = v77;
          sub_1D99A18F0(v31, v77);
          v36 = v76;
          sub_1D99A1954(v35, v76);
          v37 = *(v22 + 144);
          v38 = swift_allocObject();
          *(v38 + 16) = sub_1D99A17B4;
          *(v38 + 24) = v23;
          type metadata accessor for EspressoRequest(0);
          v39 = swift_allocObject();
          sub_1D99A1954(v36, v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_model);
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_features) = 0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_vnScalingMode) = 2;
          v40 = v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest;
          *v40 = 0;
          *(v40 + 8) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v40 + 16) = _Q0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_outputs) = 0;
          v46 = (v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_completionHandler);
          *v46 = sub_1D99A19B8;
          v46[1] = v38;
          v47 = qword_1EDD349F0;

          if (v47 != -1)
          {
            swift_once();
          }

          v48 = qword_1EDD41F40;

          sub_1D99A19C0(v36, type metadata accessor for EspressoModel);
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_engineResult) = v48;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_usesCPUOnly) = 0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_metricsBucket) = v37;
          v94.origin.x = 0.0;
          v94.origin.y = 0.0;
          v94.size.width = 1.0;
          v94.size.height = 1.0;
          *(v39 + OBJC_IVAR____TtC12VisualLookUp15EspressoRequest_regionOfInterest) = CGRectIntersection(*(v22 + 40), v94);
          v49 = v82;
          v82[3] = &type metadata for EspressoModelRequest;
          v49[4] = &off_1F5533650;

          *v49 = v39;
          sub_1D99A19C0(v35, type metadata accessor for EspressoModel);
          goto LABEL_18;
        }

        v34(v31, 1, 1, v32);
        sub_1D99A1888(v31);
      }

      else
      {
        sub_1D99A17C8(v87, v86);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
        type metadata accessor for E5Model(0);
        if (swift_dynamicCast())
        {
          v84 = v21;
          v66 = v91;
          v67 = *(v22 + 144);
          v68 = swift_allocObject();
          *(v68 + 16) = sub_1D99A17B4;
          *(v68 + 24) = v23;
          type metadata accessor for E5Request();
          v69 = swift_allocObject();
          *(v69 + 16) = v66;
          *(v69 + 24) = 2;
          *(v69 + 32) = *&v66[OBJC_IVAR____TtC12VisualLookUp7E5Model_preferredMetalDevice];
          *(v69 + 40) = sub_1D99A1880;
          *(v69 + 48) = v68;
          *(v69 + 56) = 0;
          *(v69 + 64) = 0;
          __asm { FMOV            V0.2D, #1.0 }

          *(v69 + 72) = _Q0;
          *(v69 + 88) = 0;
          v71 = qword_1EDD349F0;
          swift_retain_n();

          swift_unknownObjectRetain();

          if (v71 != -1)
          {
            swift_once();
          }

          v72 = qword_1EDD41F40;

          *(v69 + 96) = v72;
          *(v69 + 104) = v67;
          v96.origin.x = 0.0;
          v96.origin.y = 0.0;
          v96.size.width = 1.0;
          v96.size.height = 1.0;
          *(v69 + 56) = CGRectIntersection(*(v22 + 40), v96);
          v73 = v82;
          v82[3] = &type metadata for E5ModelRequest;
          v73[4] = &off_1F552E318;

          *v73 = v69;
          goto LABEL_18;
        }
      }

      sub_1D99A182C();
      swift_allocError();
      *v74 = 0xD00000000000001BLL;
      *(v74 + 8) = 0x80000001D9CA3A70;
      *(v74 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v87);
      goto LABEL_4;
    }

    v50 = type metadata accessor for MLModelInfo(0);
    sub_1D99A7E00(*(v4 + v20 + *(v50 + 32)), v90);
    v51 = *(v22 + 144);
    type metadata accessor for DurationMeasurement(0);
    swift_allocObject();

    v52 = sub_1D9AFD4B8(v90, v51);

    sub_1D99A17C8(v87, v86);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F38, &unk_1D9C87440);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D99A182C();
      swift_allocError();
      *v75 = 0xD00000000000001BLL;
      *(v75 + 8) = 0x80000001D9CA3A70;
      *(v75 + 16) = 3;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0Tm(v87);

      return;
    }

    v84 = v21;
    v53 = v22;
    v54 = v91;
    v55 = swift_allocObject();
    v55[2] = v52;
    v55[3] = sub_1D99A17B4;
    v55[4] = v23;
    v56 = objc_allocWithZone(MEMORY[0x1E6984468]);
    v86[4] = sub_1D99A1A20;
    v86[5] = v55;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 1107296256;
    v86[2] = sub_1D9BD99E0;
    v86[3] = &block_descriptor;
    v57 = _Block_copy(v86);
    v58 = v54;

    v59 = [v56 initWithModel:v58 completionHandler:v57];
    _Block_release(v57);

    [v59 setImageCropAndScaleOption_];
    v60 = v53[5];
    v61 = v53[6];
    v62 = v53[7];
    v63 = v53[8];
    v64 = v59;
    v95.origin.x = 0.0;
    v95.origin.y = 0.0;
    v95.size.width = 1.0;
    v95.size.height = 1.0;
    v92.origin.x = v60;
    v92.origin.y = v61;
    v92.size.width = v62;
    v92.size.height = v63;
    v93 = CGRectIntersection(v92, v95);
    [v64 setRegionOfInterest_];

    v65 = v82;
    v82[3] = &type metadata for VisionModelRequest;
    v65[4] = &off_1F55305B8;

    *v65 = v64;
LABEL_18:
    __swift_destroy_boxed_opaque_existential_0Tm(v87);
  }
}

double sub_1D999FC40(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D99A1A44(a1, v28);
  if (v29 == 1)
  {
    v9 = *&v28[0];
    v21 = *&v28[0];
    v22 = 0u;
    v23 = 0u;
    v24 = 0;
    v25 = 1;
    v10 = *&v28[0];
    a2(&v21);

    sub_1D99A1B04(v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
  }

  else
  {
    sub_1D9979B9C(v28, v27);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v13 = Strong + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
      v14 = type metadata accessor for MLModelInfo(0);
      sub_1D99A7FF8(*(v13 + *(v14 + 32)), v30);
      v15 = *(a5 + 144);
      type metadata accessor for DurationMeasurement(0);
      swift_allocObject();

      sub_1D9AFD4B8(v30, v15);

      v16 = *(a5 + 88);
      v26[0] = *(a5 + 72);
      v26[1] = v16;
      sub_1D99A2034(v27, a6, v26, &v21);
      v17 = v21;
      v18 = v22;
      v20 = v23;
      v19 = v24;
      v25 = 0;
      sub_1D99A1AB4(v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, 0);
      a2(&v21);
      sub_1D99A1B04(v21, v22, *(&v22 + 1), v23, *(&v23 + 1), v24, v25);
      sub_1D9AFCCA4();

      sub_1D99A1B04(v17, v18, *(&v18 + 1), v20, *(&v20 + 1), v19, 0);
    }

    return __swift_destroy_boxed_opaque_existential_0Tm(v27);
  }

  return result;
}

void *sub_1D999FE8C(char *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *a1;
  if (sub_1D9A15C94(*a1) == 0x6B72616D646E616CLL && v5 == 0xE800000000000000)
  {
    goto LABEL_13;
  }

  v7 = sub_1D9C7E7DC();

  if (v7)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x4C6C61727574616ELL && v8 == 0xEF6B72616D646E61)
  {
LABEL_13:

    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v10 = sub_1D9C7E7DC();

  if (v10)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x727574706C756373 && v11 == 0xE900000000000065)
  {
    goto LABEL_13;
  }

  v13 = sub_1D9C7E7DC();

  if (v13)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6F726665726F7473 && v14 == 0xEA0000000000746ELL)
  {
    goto LABEL_13;
  }

  v15 = sub_1D9C7E7DC();

  if (v15)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x6D75626C61 && v16 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v17 = sub_1D9C7E7DC();

  if (v17)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 1802465122 && v18 == 0xE400000000000000)
  {
    goto LABEL_13;
  }

  v19 = sub_1D9C7E7DC();

  if (v19)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 7631457 && v20 == 0xE300000000000000)
  {
    goto LABEL_13;
  }

  v21 = sub_1D9C7E7DC();

  if (v21)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x616964656DLL && v22 == 0xE500000000000000)
  {
    goto LABEL_13;
  }

  v23 = sub_1D9C7E7DC();

  if (v23)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000015, 0x80000001D9CA27B0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  if (sub_1D9A15C94(v4) == 0x656E696C796B73 && v24 == 0xE700000000000000)
  {

    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  v25 = sub_1D9C7E7DC();

  if (v25)
  {
    return sub_1D9C1B898(v3, v2 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, 0xD000000000000012, 0x80000001D9CA27D0, 0x74696E676F636572, 0xEB000000006E6F69);
  }

  return 0;
}

void sub_1D99A02B8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v61 = sub_1D9C7D8DC();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    LOBYTE(v64) = *a1;
    v11 = sub_1D999FE8C(&v64, a3);
    if (!v4)
    {
      if (v11)
      {
        v54 = 0;
        v12 = v11;
        sub_1D9BDBB08(v11);
        v15 = v13;
        v63 = *(v13 + 16);
        if (!v63)
        {
LABEL_42:

          return;
        }

        v66 = v12;
        v16 = 0;
        v56 = v3 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;
        v57 = a2;
        v55 = 0x80000001D9CA3A40;
        v59 = (v8 + 8);
        v60 = (v8 + 16);
        v17 = (v13 + 40);
        *&v14 = 136315138;
        v58 = v14;
        v18 = v61;
        v62 = v13;
        while (1)
        {
          if (v16 >= *(v15 + 16))
          {
            __break(1u);
            return;
          }

          v19 = *(v17 - 1);
          v20 = *v17;
          v21 = v66;
          v22 = v66[2];

          if (!v22 || (v23 = sub_1D99ED894(v19, v20), (v24 & 1) == 0))
          {
            if (qword_1EDD354B8 != -1)
            {
              swift_once();
            }

            if (byte_1EDD354C0 != 1)
            {
              goto LABEL_36;
            }

            v32 = [objc_opt_self() mainBundle];
            v33 = [v32 bundleIdentifier];

            if (v33)
            {
              v34 = sub_1D9C7DC7C();
              v36 = v35;

              if (v34 == 0xD00000000000002BLL && v55 == v36)
              {
              }

              else
              {
                v38 = sub_1D9C7E7DC();

                if ((v38 & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              v39 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v39 = &off_1ECB51BA8;
              }
            }

            else
            {
LABEL_26:
              v39 = &qword_1EDD355A8;
              if (qword_1EDD355A0 != -1)
              {
                swift_once();
                v39 = &qword_1EDD355A8;
              }
            }

            v42 = *(*v39 + 32);

            v43 = sub_1D9C7DC4C();
            LODWORD(v42) = [v42 BOOLForKey_];

            if (v42)
            {
              v44 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v44 = qword_1EDD2C990;
              }
            }

            else
            {
LABEL_36:
              v44 = qword_1EDD354D8;
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
                v44 = qword_1EDD354D8;
              }
            }

            v45 = __swift_project_value_buffer(v18, v44);
            (*v60)(v10, v45, v18);

            v46 = sub_1D9C7D8BC();
            v47 = sub_1D9C7E09C();

            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v49 = swift_slowAlloc();
              v64 = v49;
              *v48 = v58;
              v50 = sub_1D9A0E224(v19, v20, &v64);

              *(v48 + 4) = v50;
              _os_log_impl(&dword_1D9962000, v46, v47, "No model urn suffix for %s", v48, 0xCu);
              v51 = __swift_destroy_boxed_opaque_existential_0Tm(v49);
              v52 = v49;
              v18 = v61;
              MEMORY[0x1DA7405F0](v52, -1, -1, v51);
              MEMORY[0x1DA7405F0](v48, -1, -1);
            }

            else
            {
            }

            (*v59)(v10, v18);
            v15 = v62;
            goto LABEL_10;
          }

          v25 = (v21[7] + 16 * v23);
          v26 = *v25;
          v27 = v25[1];
          v28 = (v56 + *(type metadata accessor for MLModelInfo(0) + 24));
          v29 = v28[1];
          v64 = *v28;
          v65 = v29;

          MEMORY[0x1DA73DF90](v26, v27);
          v31 = v64;
          v30 = v65;
          if (v19 == 0x6E69646465626D65 && v20 == 0xE900000000000067)
          {
            break;
          }

          v40 = sub_1D9C7E7DC();

          if (v40)
          {
            goto LABEL_29;
          }

          v41 = sub_1D9AEA4B8(v31, v30, v57);
LABEL_41:
          v53 = v41;

          v15 = v62;
          if (!v53)
          {
            goto LABEL_42;
          }

LABEL_10:
          ++v16;
          v17 += 2;
          if (v63 == v16)
          {
            goto LABEL_42;
          }
        }

LABEL_29:
        v41 = sub_1D9AEA42C(v31, v30, v57);
        goto LABEL_41;
      }
    }
  }
}

double sub_1D99A090C()
{
  sub_1D99A19C0(v0 + OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo, type metadata accessor for MLModelInfo);

  return result;
}

uint64_t sub_1D99A0970()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp21Argos2DV2ModelFactory_modelInfo;

  sub_1D99A19C0(v0 + v1, type metadata accessor for MLModelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Argos2DV2ModelFactory(uint64_t a1)
{
  result = qword_1EDD33280;
  if (!qword_1EDD33280)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99A0A78(uint64_t a1)
{
  result = type metadata accessor for MLModelInfo(319);
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D99A0BCC(uint64_t a1, int a2)
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

uint64_t sub_1D99A0BEC(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D99A0C5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D99A0C7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

void *sub_1D99A0CD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_1D99A0CEC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1D99A0D08(uint64_t a1, id *a2)
{
  result = sub_1D9C7DC5C();
  *a2 = 0;
  return result;
}

uint64_t sub_1D99A0D80(uint64_t a1, id *a2)
{
  v3 = sub_1D9C7DC6C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D99A0E00@<X0>(uint64_t *a2@<X8>)
{
  sub_1D9C7DC7C();
  v3 = sub_1D9C7DC4C();

  *a2 = v3;
  return result;
}

uint64_t sub_1D99A0EFC(uint64_t a1, uint64_t a2)
{
  sub_1D9C7E8DC();
  swift_getWitnessTable();
  sub_1D9C7D26C();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A0F64(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F88, type metadata accessor for CIImageRepresentationOption, &unk_1D9C8526C);
  v3 = sub_1D99A12DC(&qword_1ECB50F90, type metadata accessor for CIImageRepresentationOption, &unk_1D9C85114);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A1020(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D9C7D25C();
}

uint64_t sub_1D99A108C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D9C7DC4C();

  *a2 = v3;
  return result;
}

uint64_t sub_1D99A10D4(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50FB8, type metadata accessor for VNImageOption, &unk_1D9C853D8);
  v3 = sub_1D99A12DC(&unk_1ECB50FC0, type metadata accessor for VNImageOption, &unk_1D9C8532C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A1190(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F20, type metadata accessor for VNBarcodeSymbology, &unk_1D9C84D90);
  v3 = sub_1D99A12DC(&qword_1ECB50F28, type metadata accessor for VNBarcodeSymbology, &unk_1D9C84D30);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A12DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99A136C(uint64_t a1)
{
  v2 = sub_1D99A12DC(&qword_1ECB50F10, type metadata accessor for VISuggestionType, &unk_1D9C84EE8);
  v3 = sub_1D99A12DC(&qword_1ECB50F18, type metadata accessor for VISuggestionType, &unk_1D9C84E88);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D99A14B8()
{
  v0 = sub_1D9C7DC7C();
  v1 = MEMORY[0x1DA73E030](v0);

  return v1;
}

uint64_t sub_1D99A14F4(uint64_t a1)
{
  sub_1D9C7DC7C();
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A1548()
{
  sub_1D9C7DC7C();
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();
  v0 = sub_1D9C7E93C();

  return v0;
}

uint64_t sub_1D99A15BC(void *a1, uint64_t *a2)
{
  v2 = sub_1D9C7DC7C();
  v4 = v3;
  if (v2 == sub_1D9C7DC7C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D9C7E7DC();
  }

  return v7 & 1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

double __swift_destroy_boxed_opaque_existential_0Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    (*(v1 + 8))();
  }

  return result;
}

uint64_t sub_1D99A17C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D99A182C()
{
  result = qword_1ECB50F40;
  if (!qword_1ECB50F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB50F40);
  }

  return result;
}

uint64_t sub_1D99A1888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F30, &unk_1D9C85040);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99A18F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EspressoModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A1954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EspressoModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A19C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D99A1A44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB50F48, &unk_1D9C85050);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1D99A1AB4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {

    return a1;
  }

  else
  {
  }
}

void sub_1D99A1B04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }

  else
  {
  }
}

void sub_1D99A1CF8(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_1D99A1E50(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  sub_1D99A3FE8(a1, v1 + OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo);
  v7 = *(a1 + *(type metadata accessor for MLModelInfo(0) + 36));
  if (*(v7 + 16) && (v8 = sub_1D99EE004(10), (v9 & 1) != 0))
  {
    v10 = v8;
    v11 = *(v7 + 56);
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v6, v11 + *(v13 + 72) * v10, v12);
    (*(v13 + 56))(v6, 0, 1, v12);
  }

  else
  {
    v14 = sub_1D9C7B80C();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
  }

  type metadata accessor for FileMapper();
  swift_allocObject();
  v15 = sub_1D9B1E230(v6);
  sub_1D99A404C(a1);
  *(v2 + 16) = v15;
  return v2;
}

void sub_1D99A2034(void *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, unint64_t a4@<X8>)
{
  v252 = a2;
  v253 = a4;
  v241 = type metadata accessor for MLModelInfo(0);
  MEMORY[0x1EEE9AC00](v241);
  v240 = &v212 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v243 = &v212 - v8;
  v255 = sub_1D9C7D8DC();
  v251 = *(v255 - 8);
  MEMORY[0x1EEE9AC00](v255);
  v10 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v212 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v212 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v212 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v212 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v212 - v24;
  v26 = *a3;
  v245 = a3[1];
  v246 = v26;
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  v29 = v254;
  v30 = (*(v28 + 8))(v27, v28);
  if (!v29)
  {
    v31 = v251;
    v233 = v25;
    v232 = v22;
    v230 = v19;
    v254 = v16;
    v244 = v13;
    v236 = v30;
    v32 = *(v30 + 24);
    if (*(v32 + 16) == 3)
    {
      v33 = v32 + 64;
      v34 = 1 << *(v32 + 32);
      if (v34 < 64)
      {
        v35 = ~(-1 << v34);
      }

      else
      {
        v35 = -1;
      }

      v36 = v35 & *(v32 + 64);
      v228 = OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo;
      v37 = (v34 + 63) >> 6;
      v249 = (v251 + 16);
      v250 = (v251 + 8);
      v231 = (v251 + 32);
      v227 = 0x80000001D9CA3A40;
      v226 = 0x80000001D9CA3B00;
      v225 = 0x80000001D9CA27D0;

      v38 = 0;
      *&v39 = 136315138;
      v235 = v39;
      *&v39 = 134217984;
      v224 = v39;
      v229 = MEMORY[0x1E69E7CC0];
      v234 = MEMORY[0x1E69E7CC0];
      v40 = v255;
      v41 = 0;
      v238 = v32 + 64;
      v239 = v32;
      v237 = v37;
LABEL_7:
      v42 = v253;
      while (2)
      {
        v43 = v38;
        while (1)
        {
          if (!v36)
          {
            while (1)
            {
              v38 = v43 + 1;
              if (__OFADD__(v43, 1))
              {
                break;
              }

              if (v38 >= v37)
              {

                v201 = v245;
                *v42 = v246;
                *(v42 + 16) = v201;
                v202 = v229;
                *(v42 + 32) = v234;
                *(v42 + 40) = v202;
                return;
              }

              v36 = *(v33 + 8 * v38);
              ++v43;
              if (v36)
              {
                v44 = v40;
                goto LABEL_17;
              }
            }

            __break(1u);
LABEL_169:

            v256 = 0;
            v257 = 0xE000000000000000;
            sub_1D9C7E40C();

            v256 = 0xD000000000000016;
            v257 = 0x80000001D9CA3B40;
            MEMORY[0x1DA73DF90](v40, v33);

            v203 = v256;
            v204 = v257;
            sub_1D99A182C();
            swift_allocError();
            *v205 = v203;
            *(v205 + 8) = v204;
            *(v205 + 16) = 4;
            swift_willThrow();

LABEL_171:
            sub_1D99A404C(v243);

            return;
          }

          v44 = v40;
          v38 = v43;
LABEL_17:
          v251 = (v36 - 1) & v36;
          v45 = (*(v32 + 48) + ((v38 << 10) | (16 * __clz(__rbit64(v36)))));
          v47 = *v45;
          v46 = v45[1];

          v247 = v47;
          if (!v252)
          {
            break;
          }

          sub_1D9BDBB08(v252);
          v49 = v48;
          v256 = v47;
          v257 = v46;
          v50 = v46;
          MEMORY[0x1EEE9AC00](v48);
          *(&v212 - 2) = &v256;
          v51 = sub_1D9BC1698(sub_1D99A40D8, (&v212 - 4), v49);

          if (v51)
          {
            goto LABEL_47;
          }

          v248 = v41;
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          v52 = byte_1EDD354C0;
          v53 = v254;
          v54 = v50;
          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_31;
          }

          if (sub_1D9A75D94())
          {
            v55 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v55 = &off_1ECB51BA8;
            }
          }

          else
          {
            v55 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v55 = &qword_1EDD355A8;
            }
          }

          v56 = *(*v55 + 32);

          v57 = sub_1D9C7DC4C();
          LODWORD(v56) = [v56 BOOLForKey_];

          v53 = v254;
          if (v56)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v58 = __swift_project_value_buffer(v44, qword_1EDD2C990);
            v59 = *v249;
            (*v249)(v53, v58, v44);
          }

          else
          {
LABEL_31:
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
            }

            v60 = __swift_project_value_buffer(v44, qword_1EDD354D8);
            v59 = *v249;
            (*v249)(v53, v60, v44);
            if ((v52 & 1) == 0)
            {
              goto LABEL_41;
            }
          }

          if (sub_1D9A75D94())
          {
            v61 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v61 = &off_1ECB51BA8;
            }
          }

          else
          {
            v61 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v61 = &qword_1EDD355A8;
            }
          }

          v62 = *(*v61 + 32);

          v63 = sub_1D9C7DC4C();
          LODWORD(v62) = [v62 BOOLForKey_];

          v53 = v254;
          if (v62)
          {
            v64 = v244;
            v40 = v255;
            (*v231)(v244, v254, v255);
            goto LABEL_44;
          }

LABEL_41:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v65 = v255;
          v66 = __swift_project_value_buffer(v255, qword_1EDD354D8);
          v64 = v244;
          v59(v244, v66, v65);
          v40 = v65;
          (*v250)(v53, v65);
LABEL_44:
          v32 = v239;

          v67 = sub_1D9C7D8BC();
          v68 = sub_1D9C7E09C();

          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v256 = v70;
            *v69 = v235;
            v71 = sub_1D9A0E224(v247, v54, &v256);
            v72 = v32;
            v73 = v71;

            *(v69 + 4) = v73;
            v32 = v72;
            _os_log_impl(&dword_1D9962000, v67, v68, "Skip result key %s", v69, 0xCu);
            v74 = __swift_destroy_boxed_opaque_existential_0Tm(v70);
            v75 = v70;
            v40 = v255;
            MEMORY[0x1DA7405F0](v75, -1, -1, v74);
            MEMORY[0x1DA7405F0](v69, -1, -1);
          }

          else
          {
          }

          (*v250)(v64, v40);
          v43 = v38;
          v41 = v248;
          v42 = v253;
          v33 = v238;
          v37 = v237;
          v36 = v251;
        }

        v50 = v46;
LABEL_47:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v76 = byte_1EDD354C0;
        if (byte_1EDD354C0 == 1)
        {
          v77 = byte_1EDD354C0;
          v78 = [objc_opt_self() mainBundle];
          v79 = [v78 bundleIdentifier];

          if (v79)
          {
            v80 = sub_1D9C7DC7C();
            v82 = v81;

            if (v80 == 0xD00000000000002BLL && v227 == v82)
            {
            }

            else
            {
              v84 = sub_1D9C7E7DC();

              if ((v84 & 1) == 0)
              {
                goto LABEL_56;
              }
            }

            v85 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v85 = &off_1ECB51BA8;
            }
          }

          else
          {
LABEL_56:
            v85 = &qword_1EDD355A8;
            if (qword_1EDD355A0 != -1)
            {
              swift_once();
              v85 = &qword_1EDD355A8;
            }
          }

          v86 = *(*v85 + 32);

          v87 = sub_1D9C7DC4C();
          LODWORD(v86) = [v86 BOOLForKey_];

          v76 = v77;
          if (v86)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v88 = v255;
            v89 = __swift_project_value_buffer(v255, qword_1EDD2C990);
            v90 = *v249;
            (*v249)(v233, v89, v88);
            goto LABEL_68;
          }
        }

        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v91 = v255;
        v92 = __swift_project_value_buffer(v255, qword_1EDD354D8);
        v90 = *v249;
        v93 = v233;
        (*v249)(v233, v92, v91);
        if ((v76 & 1) == 0)
        {
          goto LABEL_79;
        }

LABEL_68:
        v94 = [objc_opt_self() mainBundle];
        v95 = [v94 bundleIdentifier];

        if (!v95)
        {
          goto LABEL_75;
        }

        v96 = sub_1D9C7DC7C();
        v98 = v97;

        if (v96 != 0xD00000000000002BLL || v227 != v98)
        {
          v99 = sub_1D9C7E7DC();

          if (v99)
          {
            goto LABEL_73;
          }

LABEL_75:
          v100 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v100 = &qword_1EDD355A8;
          }

          goto LABEL_77;
        }

LABEL_73:
        v100 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v100 = &off_1ECB51BA8;
        }

LABEL_77:
        v101 = *(*v100 + 32);

        v102 = sub_1D9C7DC4C();
        LODWORD(v101) = [v101 BOOLForKey_];

        v93 = v233;
        if (v101)
        {
          v103 = v232;
          (*v231)(v232, v233, v255);
          goto LABEL_82;
        }

LABEL_79:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v104 = v255;
        v105 = __swift_project_value_buffer(v255, qword_1EDD354D8);
        v103 = v232;
        v90(v232, v105, v104);
        (*v250)(v93, v104);
LABEL_82:
        v106 = v50;

        v107 = sub_1D9C7D8BC();
        v108 = sub_1D9C7E09C();

        if (os_log_type_enabled(v107, v108))
        {
          v109 = swift_slowAlloc();
          v110 = swift_slowAlloc();
          v256 = v110;
          *v109 = v235;
          v40 = v247;
          *(v109 + 4) = sub_1D9A0E224(v247, v106, &v256);
          _os_log_impl(&dword_1D9962000, v107, v108, "Process result key %s", v109, 0xCu);
          v111 = __swift_destroy_boxed_opaque_existential_0Tm(v110);
          MEMORY[0x1DA7405F0](v110, -1, -1, v111);
          MEMORY[0x1DA7405F0](v109, -1, -1);

          v112 = *v250;
          (*v250)(v232, v255);
        }

        else
        {

          v112 = *v250;
          (*v250)(v103, v255);
          v40 = v247;
        }

        if (v40 == 0x6E69646465626D65 && v106 == 0xE900000000000067 || (sub_1D9C7E7DC() & 1) != 0)
        {
          sub_1D99A3FE8(v242 + v228, v243);
          v113 = v252;
          if (!v252 || !*(v252 + 16))
          {
            v33 = v106;
LABEL_93:
            v118 = 0;
            v117 = 0xE000000000000000;
            goto LABEL_94;
          }

          v33 = v106;
          v114 = sub_1D99ED894(v40, v106);
          if ((v115 & 1) == 0)
          {
            goto LABEL_93;
          }

          v116 = (*(v113 + 56) + 16 * v114);
          v118 = *v116;
          v117 = v116[1];

LABEL_94:
          v119 = *(v236 + 24);
          if (!*(v119 + 16))
          {
            goto LABEL_169;
          }

          v120 = sub_1D99ED894(v40, v33);
          if ((v121 & 1) == 0)
          {
            goto LABEL_169;
          }

          v122 = v120;

          v123 = *(*(v119 + 56) + 8 * v122);
          v124 = sub_1D9C18DE8(v123);
          if (v41)
          {

            goto LABEL_171;
          }

          v125 = v124;
          v126 = sub_1D9C19020(v124);
          v127 = v243;
          v128 = (v243 + *(v241 + 24));
          v129 = v128[1];
          v256 = *v128;
          v257 = v129;

          MEMORY[0x1DA73DF90](v118, v117);

          v131 = v256;
          v130 = v257;
          sub_1D99A404C(v127);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v234 = sub_1D9AF870C(0, *(v234 + 2) + 1, 1, v234);
          }

          v40 = v255;
          v36 = v251;
          v133 = *(v234 + 2);
          v132 = *(v234 + 3);
          if (v133 >= v132 >> 1)
          {
            v234 = sub_1D9AF870C((v132 > 1), v133 + 1, 1, v234);
          }

          v134 = v234;
          *(v234 + 2) = v133 + 1;
          v135 = &v134[24 * v133];
          *(v135 + 4) = v126;
          *(v135 + 5) = v131;
          *(v135 + 6) = v130;
          v41 = 0;
          v42 = v253;
          v33 = v238;
          v32 = v239;
          v37 = v237;
          continue;
        }

        break;
      }

      if (v40 == 0xD000000000000016 && v226 == v106 || (sub_1D9C7E7DC() & 1) != 0 || v40 == 0xD000000000000012 && v225 == v106 || (sub_1D9C7E7DC() & 1) != 0)
      {
        sub_1D99A3FE8(v242 + v228, v240);
        v136 = v252;
        v213 = v112;
        if (v252)
        {
          v137 = *(v252 + 16);

          if (v137)
          {
            v138 = sub_1D99ED894(v40, v106);
            if (v139)
            {
              v140 = (*(v136 + 56) + 16 * v138);
              v141 = v140[1];
              v214 = *v140;
              v215 = v141;

LABEL_114:
              v142 = *(v236 + 24);
              if (*(v142 + 16))
              {
                v143 = sub_1D99ED894(v40, v106);
                if (v144)
                {
                  v216 = *(*(v142 + 56) + 8 * v143);
                  v145 = sub_1D99F767C(v216, 2, 0);
                  v218 = sub_1D9AF85D0(0, 2, 0, MEMORY[0x1E69E7CC0]);
                  v146 = 0;
                  v259 = MEMORY[0x1E69E7CD0];
                  v220 = v145;
                  v221 = v145 + 32;
                  v40 = v255;
                  while (1)
                  {
                    v147 = v241;
                    v222 = v259;
                    if (v146 == 2)
                    {
LABEL_154:
                      v248 = v41;

LABEL_158:
                      v184 = v215;
                      v185 = v240;
                      v186 = (v240 + *(v147 + 24));
                      v187 = v186[1];
                      v256 = *v186;
                      v257 = v187;

                      MEMORY[0x1DA73DF90](v214, v184);

                      v188 = v256;
                      v189 = v257;
                      sub_1D99A404C(v185);

                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v229 = sub_1D9AF85EC(0, *(v229 + 2) + 1, 1, v229);
                      }

                      v36 = v251;
                      v191 = *(v229 + 2);
                      v190 = *(v229 + 3);
                      if (v191 >= v190 >> 1)
                      {
                        v229 = sub_1D9AF85EC((v190 > 1), v191 + 1, 1, v229);
                      }

                      v192 = v229;
                      *(v229 + 2) = v191 + 1;
                      v193 = &v192[24 * v191];
                      *(v193 + 4) = v188;
                      *(v193 + 5) = v189;
                      *(v193 + 6) = v218;
                      v41 = v248;
                      v33 = v238;
                      v32 = v239;
                      v37 = v237;
                      goto LABEL_7;
                    }

                    v148 = v146;
                    v247 = v259 + 56;
                    while (1)
                    {
                      v248 = v41;
                      if (v148 >= *(v220 + 2))
                      {

                        v180 = v230;
                        static Logger.argos.getter(v230);
                        v181 = sub_1D9C7D8BC();
                        v182 = sub_1D9C7E09C();
                        if (os_log_type_enabled(v181, v182))
                        {
                          v183 = swift_slowAlloc();
                          *v183 = v224;
                          *(v183 + 4) = v148;
                          _os_log_impl(&dword_1D9962000, v181, v182, "Invalid index %ld", v183, 0xCu);
                          MEMORY[0x1DA7405F0](v183, -1, -1);
                        }

                        v213(v180, v40);

                        v147 = v241;
                        goto LABEL_158;
                      }

                      v223 = v148 + 1;
                      v149 = *&v221[8 * v148];
                      v150 = *(*(v242 + 16) + 16);
                      v151 = *(v150 + 80);
                      os_unfair_lock_lock(v151 + 4);
                      swift_beginAccess();
                      v152 = *(v150 + 32);
                      if (v152 != 255)
                      {
                        v153 = *(v150 + 24);
                        v154 = v222;
                        if (v152)
                        {
                          v256 = *(v150 + 24);
                          sub_1D99A40CC(v153, 1);
                          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030, &unk_1D9C85460);
                          swift_willThrowTypedImpl();
                          os_unfair_lock_unlock(v151 + 4);
                          sub_1D99A40A8(v153, v152);
                          goto LABEL_130;
                        }

                        sub_1D99A40CC(*(v150 + 24), 0);
                        os_unfair_lock_unlock(v151 + 4);
LABEL_131:
                        v158 = v153[2];

                        if ((v149 & 0x8000000000000000) != 0)
                        {
                          goto LABEL_148;
                        }

                        goto LABEL_132;
                      }

                      v155 = *(v150 + 40);
                      v154 = v222;
                      if (!v155)
                      {
                        os_unfair_lock_unlock(v151 + 4);
                        goto LABEL_130;
                      }

                      v156 = v248;
                      v155(&v256);
                      if (v156)
                      {
                        v248 = *(v150 + 24);
                        v217 = *(v150 + 32);
                        v157 = v156;
                        *(v150 + 24) = v156;
                        *(v150 + 32) = 1;
                        sub_1D99A40A8(v248, v217);
                        swift_willThrow();
                        sub_1D9979BF4(v155, v219);
                        os_unfair_lock_unlock(v151 + 4);

                        v248 = 0;
LABEL_130:
                        v153 = MEMORY[0x1E69E7CC0];
                        goto LABEL_131;
                      }

                      v248 = 0;
                      sub_1D9979BF4(v155, v219);
                      v170 = v256;
                      v171 = *(v150 + 24);
                      *(v150 + 24) = v256;
                      v172 = *(v150 + 32);
                      *(v150 + 32) = 0;

                      sub_1D99A40A8(v171, v172);
                      os_unfair_lock_unlock(v151 + 4);
                      v158 = *(v170 + 16);

                      if ((v149 & 0x8000000000000000) != 0)
                      {
LABEL_148:
                        v40 = v255;
LABEL_149:
                        v147 = v241;
                        goto LABEL_120;
                      }

LABEL_132:
                      v147 = v241;
                      if (v149 < v158)
                      {
                        break;
                      }

                      v40 = v255;
LABEL_120:
                      v148 = v223;
                      v41 = v248;
                      if (v223 == 2)
                      {
                        goto LABEL_154;
                      }
                    }

                    v159 = v248;
                    v160 = sub_1D9C196E8();
                    v40 = v255;
                    if (v159)
                    {

                      v159 = 0;
                      v160 = MEMORY[0x1E69E7CC0];
                    }

                    v248 = v159;
                    if (v149 >= *(v160 + 16))
                    {
                      __break(1u);
                      return;
                    }

                    v161 = v160 + 16 * v149;
                    v162 = *(v161 + 32);
                    v163 = *(v161 + 40);

                    if (*(v154 + 16))
                    {
                      sub_1D9C7E8DC();
                      sub_1D9C7DD6C();
                      v164 = sub_1D9C7E93C();
                      v165 = -1 << *(v154 + 32);
                      v166 = v164 & ~v165;
                      if ((*(v247 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166))
                      {
                        v167 = ~v165;
                        while (1)
                        {
                          v168 = (*(v154 + 48) + 16 * v166);
                          v169 = *v168 == v162 && v168[1] == v163;
                          if (v169 || (sub_1D9C7E7DC() & 1) != 0)
                          {
                            break;
                          }

                          v166 = (v166 + 1) & v167;
                          if (((*(v247 + ((v166 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v166) & 1) == 0)
                          {
                            goto LABEL_150;
                          }
                        }

                        goto LABEL_149;
                      }
                    }

LABEL_150:

                    sub_1D9B91DE4(&v256, v162, v163);

                    v173 = [v216 objectAtIndexedSubscript_];
                    [v173 floatValue];
                    v175 = v174;

                    v177 = *(v218 + 2);
                    v176 = *(v218 + 3);
                    if (v177 >= v176 >> 1)
                    {
                      v218 = sub_1D9AF85D0((v176 > 1), v177 + 1, 1, v218);
                    }

                    v178 = v218;
                    *(v218 + 2) = v177 + 1;
                    v179 = &v178[24 * v177];
                    *(v179 + 4) = v162;
                    *(v179 + 5) = v163;
                    *(v179 + 12) = v175;
                    v41 = v248;
                    v146 = v223;
                    if (v177 == 1)
                    {

                      v147 = v241;
                      goto LABEL_158;
                    }
                  }
                }
              }

              v256 = 0;
              v257 = 0xE000000000000000;
              sub_1D9C7E40C();

              v256 = 0xD00000000000001BLL;
              v257 = 0x80000001D9CA3B20;
              MEMORY[0x1DA73DF90](v40, v106);
              v206 = v256;
              v207 = v257;
              sub_1D99A182C();
              swift_allocError();
              *v208 = v206;
              *(v208 + 8) = v207;
              *(v208 + 16) = 4;
              swift_willThrow();
              sub_1D99A404C(v240);

              goto LABEL_173;
            }
          }
        }

        else
        {
        }

        v214 = 0;
        v215 = 0xE000000000000000;
        goto LABEL_114;
      }

      v256 = 0;
      v257 = 0xE000000000000000;
      sub_1D9C7E40C();

      v256 = 0x7463657078656E75;
      v257 = 0xEF2079656B206465;
      MEMORY[0x1DA73DF90](v40, v106);

      v209 = v256;
      v210 = v257;
      sub_1D99A182C();
      swift_allocError();
      *v211 = v209;
      *(v211 + 8) = v210;
      *(v211 + 16) = 4;
      swift_willThrow();
LABEL_173:

      return;
    }

    static Logger.argos.getter(v10);
    v194 = sub_1D9C7D8BC();
    v195 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v194, v195))
    {
      v196 = swift_slowAlloc();
      *v196 = 134217984;
      *(v196 + 4) = 3;
      _os_log_impl(&dword_1D9962000, v194, v195, "Argos2DV2 model expected %ld outputs", v196, 0xCu);
      MEMORY[0x1DA7405F0](v196, -1, -1);
    }

    (*(v31 + 8))(v10, v255);
    v256 = 0;
    v257 = 0xE000000000000000;
    sub_1D9C7E40C();

    v256 = 0x6E69746365707845;
    v257 = 0xEA00000000002067;
    v258 = 3;
    v197 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v197);

    MEMORY[0x1DA73DF90](0x7374757074756F20, 0xE800000000000000);
    v198 = v256;
    v199 = v257;
    sub_1D99A182C();
    swift_allocError();
    *v200 = v198;
    *(v200 + 8) = v199;
    *(v200 + 16) = 4;
    swift_willThrow();
  }
}

uint64_t sub_1D99A3E44()
{

  sub_1D99A404C(v0 + OBJC_IVAR____TtC12VisualLookUp27Argos2DV2ModelPostProcessor_modelInfo);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Argos2DV2ModelPostProcessor(uint64_t a1)
{
  result = qword_1EDD31D90;
  if (!qword_1EDD31D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99A3F04(uint64_t a1)
{
  result = type metadata accessor for MLModelInfo(319);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1D99A3FE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLModelInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A404C(uint64_t a1)
{
  v2 = type metadata accessor for MLModelInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D99A40A8(void *result, char a2)
{
  if (a2 != -1)
  {
    sub_1D99A40C0(result, a2 & 1);
  }
}

void sub_1D99A40C0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

double sub_1D99A40CC(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

VisualLookUp::OntologyGraph __swiftcall OntologyGraph.init(definitionFilePath:bundle:useTrialDefaults:)(Swift::String_optional definitionFilePath, NSBundle_optional bundle, Swift::Bool useTrialDefaults)
{
  isa = bundle.value.super.isa;
  v5 = v3;
  if (bundle.is_nil)
  {

    v6 = sub_1D9A75D94();
    type metadata accessor for TrialWrapper();
    swift_initStackObject();
    sub_1D9C04808((v6 & 1) == 0);
    sub_1D9C04AB0(7, 0, 1852797802, 0xE400000000000000);
    sub_1D99A41C8(v7, 0, &v9);
  }

  else
  {
    sub_1D99A41C8(0, bundle.value.super.isa, &v9);
  }

  *v5 = v9;
  return result;
}

void sub_1D99A41C8(unint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v71 = a6;
  v77[4] = *MEMORY[0x1E69E9840];
  v8 = sub_1D9C7B80C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a5;
  if (a4)
  {
  }

  else
  {
    v12 = a5;
    if (a5)
    {
      v13 = a5;
    }

    else
    {
      type metadata accessor for VisualIntelligenceService(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v13 = [objc_opt_self() bundleForClass_];
    }

    v15 = v12;
    v16 = sub_1D9C7DC4C();

    v17 = sub_1D9C7DC4C();
    v18 = [v13 pathForResource:v16 ofType:v17];

    if (v18)
    {
      sub_1D9C7DC7C();
    }

    else
    {
    }
  }

  sub_1D9C7B75C();

  v19 = sub_1D9C7B81C();
  v21 = v20;
  v23 = sub_1D9B88EB8(v19, v20);
  v25 = v24;
  (*(v9 + 8))(v11, v8);
  sub_1D99A5748(v19, v21);
  v26 = objc_opt_self();
  v27 = sub_1D9C7B86C();
  v77[0] = 0;
  v28 = [v26 JSONObjectWithData:v27 options:2 error:v77];

  if (!v28)
  {
    v60 = v77[0];
    v61 = sub_1D9C7B70C();

    swift_willThrow();
    sub_1D99A5748(v23, v25);

LABEL_10:
    v22 = sub_1D9A437EC(MEMORY[0x1E69E7CC0]);
    goto LABEL_11;
  }

  v29 = v77[0];
  sub_1D9C7E32C();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51038, &qword_1D9C85478);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D99A5748(v23, v25);
    goto LABEL_10;
  }

  v30 = sub_1D99A4844(v76);

  if (v30 >> 62)
  {
    goto LABEL_54;
  }

  v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
  v62 = v23;
  v63 = v25;
  v66 = v30;
  if (v31)
  {
    v32 = 0;
    v68 = v30 & 0xC000000000000001;
    v64 = v30 + 32;
    v65 = v30 & 0xFFFFFFFFFFFFFF8;
    v22 = MEMORY[0x1E69E7CC8];
    v67 = v31;
    while (1)
    {
      if (v68)
      {
        v33 = MEMORY[0x1DA73E610](v32, v66);
        v34 = __OFADD__(v32, 1);
        v35 = v32 + 1;
        if (v34)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v32 >= *(v65 + 16))
        {
          goto LABEL_53;
        }

        v34 = __OFADD__(v32, 1);
        v35 = v32 + 1;
        if (v34)
        {
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          v31 = sub_1D9C7E50C();
          goto LABEL_16;
        }
      }

      v69 = v33;
      v70 = v35;
      v30 = v33;
      v36 = sub_1D99A5114();
      v37 = 0;
      v39 = v36 + 8;
      v38 = v36[8];
      v74 = v36 + 8;
      v75 = v36;
      v40 = 1 << *(v36 + 32);
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      else
      {
        v41 = -1;
      }

      v25 = v41 & v38;
      v42 = (v40 + 63) >> 6;
      v73 = v42;
      while (v25)
      {
        v43 = v37;
LABEL_36:
        v44 = __clz(__rbit64(v25)) | (v43 << 6);
        v45 = (v75[6] + 16 * v44);
        v47 = *v45;
        v46 = v45[1];
        v23 = *(v75[7] + 8 * v44);
        swift_retain_n();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v77[0] = v22;
        v30 = v22;
        v50 = sub_1D99ED894(v47, v46);
        v51 = v22[2];
        v52 = (v49 & 1) == 0;
        v53 = v51 + v52;
        if (__OFADD__(v51, v52))
        {
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v54 = v49;
        if (v22[3] >= v53)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v30 = v77;
            sub_1D9C13494();
          }
        }

        else
        {
          sub_1D9C07DAC(v53, isUniquelyReferenced_nonNull_native);
          v30 = v77[0];
          v55 = sub_1D99ED894(v47, v46);
          if ((v54 & 1) != (v56 & 1))
          {
            sub_1D9C7E84C();
            __break(1u);
            return;
          }

          v50 = v55;
        }

        v25 &= v25 - 1;
        if (v54)
        {

          v22 = v77[0];
          *(*(v77[0] + 7) + 8 * v50) = v23;
        }

        else
        {
          v22 = v77[0];
          *(v77[0] + (v50 >> 6) + 8) |= 1 << v50;
          v57 = (v22[6] + 16 * v50);
          *v57 = v47;
          v57[1] = v46;
          *(v22[7] + 8 * v50) = v23;

          v58 = v22[2];
          v34 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v34)
          {
            goto LABEL_51;
          }

          v22[2] = v59;
        }

        v37 = v43;
        v42 = v73;
        v39 = v74;
      }

      while (1)
      {
        v43 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_50;
        }

        if (v43 >= v42)
        {
          break;
        }

        v25 = v39[v43];
        ++v37;
        if (v25)
        {
          goto LABEL_36;
        }
      }

      v32 = v70;
      if (v70 == v67)
      {
        goto LABEL_48;
      }
    }
  }

  v22 = MEMORY[0x1E69E7CC8];
LABEL_48:
  sub_1D99A5748(v62, v63);

LABEL_11:

  *v71 = v22;
}

uint64_t sub_1D99A4844(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = MEMORY[0x1E69E7CC0];
  v63 = *(a1 + 16);
  if (v63)
  {
    v7 = 0;
    v8 = a1 + 32;
    v57 = 0x80000001D9CA3A40;
    v61 = (v3 + 8);
    v62 = (v3 + 16);
    v56 = MEMORY[0x1E69E7CC0];
    *&v4 = 136315138;
    v58 = v4;
    v59 = a1 + 32;
    while (1)
    {
      v9 = *(v8 + 8 * v7);
      v10 = *(v9 + 16);

      if (!v10)
      {
        goto LABEL_17;
      }

      v11 = sub_1D99ED894(0x64695F676BLL, 0xE500000000000000);
      if ((v12 & 1) == 0)
      {
        goto LABEL_17;
      }

      sub_1D99A579C(*(v9 + 56) + 32 * v11, &v68);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      v13 = v67;
      if (!*(v9 + 16) || (v14 = v66, v15 = sub_1D99ED894(1701667182, 0xE400000000000000), (v16 & 1) == 0) || (sub_1D99A579C(*(v9 + 56) + 32 * v15, &v68), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_17;
      }

      v17 = v67;
      v18 = v9;
      if (!*(v9 + 16) || (v19 = v66, v20 = sub_1D99ED894(0x6E6572646C696863, 0xE800000000000000), (v21 & 1) == 0) || (sub_1D99A579C(*(v18 + 56) + 32 * v20, &v68), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51038, &qword_1D9C85478), (swift_dynamicCast() & 1) == 0))
      {

LABEL_17:
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_34;
        }

        v34 = [objc_opt_self() mainBundle];
        v35 = [v34 bundleIdentifier];

        if (v35)
        {
          v36 = sub_1D9C7DC7C();
          v38 = v37;

          if (v36 == 0xD00000000000002BLL && v57 == v38)
          {
          }

          else
          {
            v40 = sub_1D9C7E7DC();

            if ((v40 & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v41 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v41 = &off_1ECB51BA8;
          }
        }

        else
        {
LABEL_26:
          v41 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v41 = &qword_1EDD355A8;
          }
        }

        v42 = *(*v41 + 32);

        v43 = sub_1D9C7DC4C();
        LODWORD(v42) = [v42 BOOLForKey_];

        if (v42)
        {
          v44 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v44 = qword_1EDD2C990;
          }
        }

        else
        {
LABEL_34:
          v44 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v44 = qword_1EDD354D8;
          }
        }

        v45 = __swift_project_value_buffer(v2, v44);
        (*v62)(v6, v45, v2);

        v46 = sub_1D9C7D8BC();
        v47 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          v68 = v49;
          *v48 = v58;
          v50 = sub_1D9C7DB5C();
          v60 = v7;
          v52 = v51;

          v53 = sub_1D9A0E224(v50, v52, &v68);
          v8 = v59;
          v7 = v60;

          *(v48 + 4) = v53;
          _os_log_impl(&dword_1D9962000, v46, v47, "Incorrect ontology definitions. Current value: %s", v48, 0xCu);
          v54 = __swift_destroy_boxed_opaque_existential_0Tm(v49);
          MEMORY[0x1DA7405F0](v49, -1, -1, v54);
          MEMORY[0x1DA7405F0](v48, -1, -1);
        }

        else
        {
        }

        (*v61)(v6, v2);
        goto LABEL_40;
      }

      v22 = sub_1D99A4844(v66);

      v68 = v19;
      v69 = v17;
      v66 = 0x20646E6120;
      v67 = 0xE500000000000000;
      v64 = 32;
      v65 = 0xE100000000000000;
      sub_1D99A57F8();
      v23 = sub_1D9C7E2CC();
      v25 = v24;

      v68 = v23;
      v69 = v25;
      v66 = 2106912;
      v67 = 0xE300000000000000;
      v64 = 32;
      v65 = 0xE100000000000000;
      sub_1D9C7E2CC();

      v26 = sub_1D9C7DCFC();

      v27 = sub_1D99A54A0(v26);
      v29 = v28;

      type metadata accessor for OntologyGraph.Node();
      v30 = swift_allocObject();
      swift_weakInit();
      v30[2] = v27;
      v30[3] = v29;
      v30[4] = v14;
      v30[5] = v13;
      v30[6] = v22;
      result = swift_weakAssign();
      if (v22 >> 62)
      {
        result = sub_1D9C7E50C();
        v32 = result;
        if (result)
        {
LABEL_14:
          if (v32 < 1)
          {
            __break(1u);
            return result;
          }

          for (i = 0; i != v32; ++i)
          {
            if ((v22 & 0xC000000000000001) != 0)
            {
              MEMORY[0x1DA73E610](i, v22);
            }

            else
            {
            }

            swift_weakAssign();
          }
        }
      }

      else
      {
        v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
          goto LABEL_14;
        }
      }

      MEMORY[0x1DA73E0E0](v55);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D9C7DF4C();
      }

      sub_1D9C7DF6C();

      v56 = v70;
      v8 = v59;
LABEL_40:
      if (++v7 == v63)
      {
        return v56;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D99A5114()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);

  v4 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D9C10FC0(v1, v2, v3, isUniquelyReferenced_nonNull_native);

  v6 = v4;
  v7 = *(v1 + 48);
  if (v7 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v9 = 0;
    v38 = v7;
    v39 = v7 & 0xC000000000000001;
    v37 = v7 & 0xFFFFFFFFFFFFFF8;
    while (v39)
    {
      MEMORY[0x1DA73E610](v9, v7);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_34;
      }

LABEL_11:
      v40 = v11;
      v12 = sub_1D99A5114();
      v13 = 0;
      v14 = v12 + 64;
      v42 = v12 + 64;
      v43 = v12;
      v15 = 1 << *(v12 + 32);
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v17 = v16 & *(v12 + 64);
      v18 = (v15 + 63) >> 6;
      v41 = v18;
      while (v17)
      {
        v19 = v13;
LABEL_22:
        v20 = __clz(__rbit64(v17)) | (v19 << 6);
        v21 = (*(v43 + 48) + 16 * v20);
        v23 = *v21;
        v22 = v21[1];
        v24 = *(*(v43 + 56) + 8 * v20);
        swift_retain_n();

        v25 = swift_isUniquelyReferenced_nonNull_native();
        v7 = sub_1D99ED894(v23, v22);
        v27 = v6[2];
        v28 = (v26 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v30 = v26;
        if (v6[3] >= v29)
        {
          if ((v25 & 1) == 0)
          {
            sub_1D9C13494();
          }
        }

        else
        {
          sub_1D9C07DAC(v29, v25);
          v31 = sub_1D99ED894(v23, v22);
          if ((v30 & 1) != (v32 & 1))
          {
            result = sub_1D9C7E84C();
            __break(1u);
            return result;
          }

          v7 = v31;
        }

        v17 &= v17 - 1;
        if (v30)
        {

          *(v6[7] + 8 * v7) = v24;
        }

        else
        {
          v6[(v7 >> 6) + 8] |= 1 << v7;
          v33 = (v6[6] + 16 * v7);
          *v33 = v23;
          v33[1] = v22;
          *(v6[7] + 8 * v7) = v24;

          v34 = v6[2];
          v10 = __OFADD__(v34, 1);
          v35 = v34 + 1;
          if (v10)
          {
            goto LABEL_33;
          }

          v6[2] = v35;
        }

        v13 = v19;
        v18 = v41;
        v14 = v42;
      }

      while (1)
      {
        v19 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
          goto LABEL_32;
        }

        if (v19 >= v18)
        {
          break;
        }

        v17 = *(v14 + 8 * v19);
        ++v13;
        if (v17)
        {
          goto LABEL_22;
        }
      }

      v7 = v38;
      v9 = v40;
      if (v40 == i)
      {
        return v6;
      }
    }

    if (v9 >= *(v37 + 16))
    {
      goto LABEL_35;
    }

    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  return v6;
}

uint64_t sub_1D99A5444()
{
  v0 = sub_1D9A436D8(&unk_1F5527B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51048, &unk_1D9C85480);
  result = swift_arrayDestroy();
  off_1EDD34768 = v0;
  return result;
}

uint64_t sub_1D99A54A0(uint64_t a1)
{
  sub_1D99A57F8();
  v1 = sub_1D9C7E30C();
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {

    v4 = MEMORY[0x1E69E7CC0];
    v16 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v16)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1D99FE164(0, v2, 0);
  v4 = v31;
  v5 = (v1 + 56);
  do
  {
    v6 = *(v5 - 3);
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;

    v10 = MEMORY[0x1DA73DF10](v6, v7, v8, v9);
    v12 = v11;

    v14 = *(v31 + 16);
    v13 = *(v31 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D99FE164((v13 > 1), v14 + 1, 1);
    }

    *(v31 + 16) = v14 + 1;
    v15 = v31 + 16 * v14;
    *(v15 + 32) = v10;
    *(v15 + 40) = v12;
    v5 += 4;
    --v2;
  }

  while (v2);

  v16 = *(v31 + 16);
  if (v16)
  {
LABEL_7:
    sub_1D99FE164(0, v16, 0);
    v17 = (v4 + 40);
    do
    {
      v18 = *(v17 - 1);
      v19 = *v17;
      v20 = qword_1EDD34760;

      if (v20 != -1)
      {
        swift_once();
      }

      v21 = off_1EDD34768;
      if (*(off_1EDD34768 + 2))
      {
        v22 = sub_1D99ED894(v18, v19);
        if (v23)
        {
          v24 = (v21[7] + 16 * v22);
          v18 = *v24;
          v25 = v24[1];

          v19 = v25;
        }
      }

      v27 = *(v3 + 16);
      v26 = *(v3 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D99FE164((v26 > 1), v27 + 1, 1);
      }

      *(v3 + 16) = v27 + 1;
      v28 = v3 + 16 * v27;
      *(v28 + 32) = v18;
      *(v28 + 40) = v19;
      v17 += 2;
      --v16;
    }

    while (v16);
  }

LABEL_18:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51040, &qword_1D9C87F10);
  sub_1D99A584C();
  v29 = sub_1D9C7DC0C();

  return v29;
}

double sub_1D99A5748(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1D99A579C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D99A57F8()
{
  result = qword_1EDD2C658;
  if (!qword_1EDD2C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C658);
  }

  return result;
}

unint64_t sub_1D99A584C()
{
  result = qword_1EDD2C4B0;
  if (!qword_1EDD2C4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51040, &qword_1D9C87F10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2C4B0);
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

uint64_t type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(uint64_t a1)
{
  result = qword_1EDD2F330;
  if (!qword_1EDD2F330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D99A596C(uint64_t a1)
{
  sub_1D9C7D3CC();
  if (v1 <= 0x3F)
  {
    sub_1D99A5A08(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D99A5A08(uint64_t a1)
{
  if (!qword_1EDD30B00)
  {
    type metadata accessor for Argos_Protos_Queryflow_RefineConfig(255);
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD30B00);
    }
  }
}

uint64_t sub_1D99A5A60()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41BB0);
  __swift_project_value_buffer(v0, qword_1EDD41BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "refine_config";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "whole_image_fallback_detector_threshold";
  *(v11 + 8) = 39;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D99A5C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9C7D54C();
        break;
      case 2:
        sub_1D99A5D30(a1, v5, a2, a3);
        break;
      case 1:
        sub_1D9C7D5DC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D99A5D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(0);
  type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  sub_1D99A6B40(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig, &unk_1D9C8EFF0);
  return sub_1D9C7D60C();
}

uint64_t sub_1D99A5DE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D7DC(), !v4))
  {
    result = sub_1D99A5EA4(v3, a1, a2, a3);
    if (!v4)
    {
      if (v3[1])
      {
        sub_1D9C7D77C();
      }

      type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D99A5EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050, &unk_1D9C854A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(0);
  sub_1D99A6640(a1 + *(v12 + 28), v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB51050, &unk_1D9C854A0);
  }

  sub_1D99A66B0(v7, v11);
  sub_1D99A6B40(qword_1EDD30B60, type metadata accessor for Argos_Protos_Queryflow_RefineConfig, &unk_1D9C8EFF0);
  sub_1D9C7D80C();
  return sub_1D99A6714(v11);
}

uint64_t sub_1D99A6084@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1D99A6124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D99A6198(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1D9C7D3CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D99A6264(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D99A6B40(&qword_1ECB51068, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig, &unk_1D9C85594);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D99A62E0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD2F358 != -1)
  {
    swift_once();
  }

  v2 = sub_1D9C7D84C();
  v3 = __swift_project_value_buffer(v2, qword_1EDD41BB0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D99A6388(uint64_t a1)
{
  v2 = sub_1D99A6B40(&qword_1EDD2F348, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig, &unk_1D9C855CC);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D99A63F4(uint64_t a1, uint64_t a2)
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A644C(uint64_t a1, uint64_t a2)
{
  sub_1D99A6B40(&qword_1EDD2F348, type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig, &unk_1D9C855CC);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D99A64C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D9C7E8DC();
  sub_1D9C7DBDC();
  return sub_1D9C7E93C();
}

uint64_t sub_1D99A6640(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050, &unk_1D9C854A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A66B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A6714(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_1D99A67D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RefineConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51050, &unk_1D9C854A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51080, &qword_1D9C8FF60);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_11;
  }

  v14 = *(type metadata accessor for Argos_Protos_Queryflow_RefineRegionConfig(0) + 28);
  v15 = *(v11 + 48);
  sub_1D99A6640(a1 + v14, v13);
  sub_1D99A6640(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1D99A6AE0(v13, &qword_1ECB51050, &unk_1D9C854A0);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  sub_1D99A6640(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1D99A6714(v10);
LABEL_7:
    sub_1D99A6AE0(v13, &qword_1ECB51080, &qword_1D9C8FF60);
LABEL_11:
    v18 = 0;
    return v18 & 1;
  }

  sub_1D99A66B0(&v13[v15], v7);
  v17 = sub_1D9A857B8(v10, v7);
  sub_1D99A6714(v7);
  sub_1D99A6714(v10);
  sub_1D99A6AE0(v13, &qword_1ECB51050, &unk_1D9C854A0);
  if ((v17 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_9:
  if (*(a1 + 4) != *(a2 + 4))
  {
    goto LABEL_11;
  }

  sub_1D9C7D3CC();
  sub_1D99A6B40(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v18 = sub_1D9C7DC2C();
  return v18 & 1;
}

uint64_t sub_1D99A6AE0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D99A6B40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D99A6B88(uint64_t a1, uint64_t a2)
{
  sub_1D99A57F8();
  v2 = sub_1D9C7E2AC();
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1D99A6C1C(uint64_t a1, uint64_t a2)
{
  swift_bridgeObjectRetain_n();
  if (sub_1D9C7E41C() == a1 && v4 == a2)
  {

    goto LABEL_10;
  }

  v6 = sub_1D9C7E7DC();

  if (v6)
  {
LABEL_10:

    swift_bridgeObjectRelease_n();
    return 0;
  }

  if (sub_1D9C7E41C() == a1 && v7 == a2)
  {

LABEL_13:

    swift_bridgeObjectRelease_n();
    return 2;
  }

  v9 = sub_1D9C7E7DC();

  if (v9)
  {
    goto LABEL_13;
  }

  if (sub_1D9C7E41C() == a1 && v10 == a2)
  {

LABEL_18:

    swift_bridgeObjectRelease_n();
    return 1;
  }

  v11 = sub_1D9C7E7DC();

  if (v11)
  {
    goto LABEL_18;
  }

  sub_1D99A57F8();
  v12 = sub_1D9C7E2FC();

  if (v12)
  {
    swift_bridgeObjectRelease_n();
    return 3;
  }

  else
  {
    v13 = sub_1D9C7E2FC();

    if (v13)
    {
      swift_bridgeObjectRelease_n();
      return 4;
    }

    else
    {
      v14 = sub_1D9C7E2FC();

      if (v14)
      {

        return 5;
      }

      else
      {
        v15 = sub_1D9C7E2FC();

        if (v15)
        {
          return 6;
        }

        else
        {
          return 7;
        }
      }
    }
  }
}

uint64_t sub_1D99A6F64(void *a1)
{
  if (a1[2] != 3)
  {
    return 0;
  }

  v2 = a1[4];
  v3 = a1[5];

  v4 = sub_1D99A6B88(v2, v3);
  v6 = v5;

  if (!v6)
  {
    return 0;
  }

  v7 = a1[8];
  v8 = a1[9];

  v9 = sub_1D99A6B88(v7, v8);
  v11 = v10;

  if (!v11)
  {
    goto LABEL_23;
  }

  v20 = v4;
  v12 = a1[12];
  v13 = a1[13];

  v19 = v12;
  v14 = sub_1D99A6B88(v12, v13);
  v16 = v15;

  if (!v16)
  {

    goto LABEL_23;
  }

  if ((v20 != v9 || v6 != v11) && (sub_1D9C7E7DC() & 1) == 0)
  {

    goto LABEL_23;
  }

  if (v9 == v14 && v11 == v16)
  {

    goto LABEL_14;
  }

  v18 = sub_1D9C7E7DC();

  if ((v18 & 1) == 0)
  {
LABEL_23:

    return 0;
  }

LABEL_14:
  if (v2 == v7 && v3 == v8 || (sub_1D9C7E7DC() & 1) != 0 || v7 == v19 && v8 == v13 || (sub_1D9C7E7DC() & 1) != 0 || v2 == v19 && v3 == v13 || (sub_1D9C7E7DC() & 1) != 0)
  {
    goto LABEL_23;
  }

  MEMORY[0x1DA73DF90](0x50206C65646F4D20, 0xEE00737365636F72);

  return v20;
}

uint64_t sub_1D99A7220(uint64_t a1, int a2, uint64_t a3)
{
  v101 = a2;
  v108 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v100[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v100[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v109 = &v100[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v100[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v104 = &v100[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v110 = v12;
  v111 = &v100[-v16];
  v17 = *(a3 + 16);
  if (!v17)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_36:
    v45 = v20[2];
    if (!v45)
    {
      v47 = MEMORY[0x1E69E7CC0];
LABEL_79:

      return v47;
    }

    v46 = v20 + 4;
    LODWORD(v107) = v101 & 1;
    v47 = MEMORY[0x1E69E7CC0];
    v112 = v20;
    while (1)
    {
      v48 = *v46;
      if (*(*v46 + 16) != 1)
      {

        sub_1D99A6F64(v57);
        v59 = v58;
        v61 = v60;

        if (!v59)
        {
          goto LABEL_76;
        }

        v106 = v47;
        v62 = v109;
        sub_1D99A85E0(v108, v109);
        v63 = v102;
        sub_1D99A85E0(v62, v102);
        Context = type metadata accessor for VisualQueryContext(0);
        v65 = *(*(Context - 8) + 48);
        if (v65(v63, 1, Context) == 1)
        {
          sub_1D99A8650(v63);
          v66 = 0;
        }

        else
        {
          v66 = *(v63 + *(Context + 52));
          sub_1D99A86B8(v63);
        }

        v86 = v103;
        sub_1D99A85E0(v109, v103);
        if (v65(v86, 1, Context) == 1)
        {
          sub_1D99A8650(v86);
          v12 = v110;
          goto LABEL_67;
        }

        v88 = *v86;
        v87 = v86[1];

        sub_1D99A86B8(v86);
        v12 = v110;
        if (v87)
        {
          v105 = v88;
        }

        else
        {
LABEL_67:

          v105 = 0;
          v87 = 0xE000000000000000;
        }

        v89 = v66;
        v117 = sub_1D9C7DCFC();
        v118 = v90;
        v115 = 32;
        v116 = 0xE100000000000000;
        v113 = 95;
        v114 = 0xE100000000000000;
        sub_1D99A57F8();
        sub_1D9C7E2CC();

        v91 = v61 * 1000000.0;
        v47 = v106;
        if (COERCE__INT64(fabs(v61 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_85;
        }

        if (v91 <= -1.0)
        {
          goto LABEL_86;
        }

        if (v91 >= 1.84467441e19)
        {
          goto LABEL_87;
        }

        v92 = v91;
        v93 = objc_allocWithZone(MEMORY[0x1E69C9F40]);
        v94 = sub_1D9C7DC4C();

        v95 = [v93 initWithEvent:v94 timeInterval:v92 queryId:v89];

        sub_1D99A8650(v109);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v47 = sub_1D9AF8834(0, *(v47 + 2) + 1, 1, v47);
        }

        v97 = *(v47 + 2);
        v96 = *(v47 + 3);
        if (v97 >= v96 >> 1)
        {
          v47 = sub_1D9AF8834((v96 > 1), v97 + 1, 1, v47);
        }

        *(v47 + 2) = v97 + 1;
        v98 = &v47[40 * v97];
        v99 = v105;
        *(v98 + 4) = v89;
        *(v98 + 5) = v99;
        *(v98 + 6) = v87;
        *(v98 + 7) = v95;
        v98[64] = v107;
        goto LABEL_76;
      }

      v49 = *(v48 + 32);
      v50 = *(v48 + 40);

      LODWORD(v49) = sub_1D99A6C1C(v49, v50);

      if (v49)
      {
        v51 = *(v48 + 32);
        v52 = *(v48 + 40);

        LODWORD(v51) = sub_1D99A6C1C(v51, v52);

        if (v51 != 2)
        {
          v53 = *(v48 + 32);
          v54 = *(v48 + 40);

          LODWORD(v53) = sub_1D99A6C1C(v53, v54);

          if (v53 != 1)
          {
            v55 = *(v48 + 32);
            v56 = *(v48 + 40);

            LOBYTE(v55) = sub_1D99A6C1C(v55, v56);

            if (v55 != 3)
            {

              goto LABEL_76;
            }
          }
        }
      }

      v67 = *(v48 + 48);

      v68 = v111;
      sub_1D99A85E0(v108, v111);
      v69 = v104;
      sub_1D99A85E0(v68, v104);
      v70 = type metadata accessor for VisualQueryContext(0);
      v71 = *(*(v70 - 8) + 48);
      if (v71(v69, 1, v70) == 1)
      {
        sub_1D99A8650(v69);
        v72 = 0;
      }

      else
      {
        v73 = v69;
        v72 = *&v69[*(v70 + 52)];
        sub_1D99A86B8(v73);
      }

      sub_1D99A85E0(v111, v12);
      if (v71(v12, 1, v70) == 1)
      {
        break;
      }

      v74 = v12;
      v75 = *v12;
      v76 = *(v74 + 8);

      sub_1D99A86B8(v74);
      if (!v76)
      {
        goto LABEL_53;
      }

LABEL_54:
      v117 = sub_1D9C7DCFC();
      v118 = v77;
      v115 = 32;
      v116 = 0xE100000000000000;
      v113 = 95;
      v114 = 0xE100000000000000;
      sub_1D99A57F8();
      sub_1D9C7E2CC();

      v78 = v67 * 1000000.0;
      if (COERCE__INT64(fabs(v67 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v78 <= -1.0)
      {
        goto LABEL_81;
      }

      if (v78 >= 1.84467441e19)
      {
        goto LABEL_82;
      }

      v79 = v78;
      v80 = objc_allocWithZone(MEMORY[0x1E69C9F40]);
      v81 = sub_1D9C7DC4C();

      v82 = [v80 initWithEvent:v81 timeInterval:v79 queryId:v72];

      sub_1D99A8650(v111);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_1D9AF8834(0, *(v47 + 2) + 1, 1, v47);
      }

      v84 = *(v47 + 2);
      v83 = *(v47 + 3);
      if (v84 >= v83 >> 1)
      {
        v47 = sub_1D9AF8834((v83 > 1), v84 + 1, 1, v47);
      }

      *(v47 + 2) = v84 + 1;
      v85 = &v47[40 * v84];
      *(v85 + 4) = v72;
      *(v85 + 5) = v75;
      *(v85 + 6) = v76;
      *(v85 + 7) = v82;
      v85[64] = v107;
      v12 = v110;
LABEL_76:
      ++v46;
      if (!--v45)
      {
        goto LABEL_79;
      }
    }

    sub_1D99A8650(v12);
LABEL_53:

    v75 = 0;
    v76 = 0xE000000000000000;
    goto LABEL_54;
  }

  v18 = 0;
  v19 = (a3 + 56);
  v20 = MEMORY[0x1E69E7CC0];
  v107 = xmmword_1D9C85660;
  while (1)
  {
    v21 = *(v19 - 3);
    v22 = *(v19 - 2);
    v23 = *(v19 - 1);
    v24 = *v19;

    if (sub_1D99A6C1C(v21, v22) == 4)
    {
      v18 = v20[2];
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51090, &qword_1D9C85670);
      v25 = swift_allocObject();
      *(v25 + 16) = v107;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      *(v25 + 48) = v23;
      *(v25 + 56) = v24;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_1D9AF8950(0, v20[2] + 1, 1, v20);
      }

      v27 = v20[2];
      v26 = v20[3];
      if (v27 >= v26 >> 1)
      {
        v20 = sub_1D9AF8950((v26 > 1), v27 + 1, 1, v20);
      }

      v20[2] = v27 + 1;
      v20[v27 + 4] = v25;
      goto LABEL_4;
    }

    result = sub_1D99A6C1C(v21, v22);
    if (result != 5)
    {
      result = sub_1D99A6C1C(v21, v22);
      if (result != 6)
      {
        goto LABEL_7;
      }
    }

    if ((v18 & 0x8000000000000000) != 0)
    {
      goto LABEL_83;
    }

    if (v18 >= v20[2])
    {
      break;
    }

    v29 = v20[v18 + 4];
    if (v29[2])
    {
      v106 = v18;
      v112 = v20;
      v30 = v29[5];
      v117 = v29[4];
      v118 = v30;
      v115 = 32;
      v116 = 0xE100000000000000;
      sub_1D99A57F8();

      v31 = sub_1D9C7E2AC();
      if (v31[2])
      {
        v32 = v31[5];
        v105 = v31[4];

        v117 = v21;
        v118 = v22;
        v115 = 32;
        v116 = 0xE100000000000000;
        v33 = sub_1D9C7E2AC();
        if (v33[2])
        {
          v35 = v33[4];
          v34 = v33[5];

          if (v105 == v35 && v32 == v34)
          {

            v18 = v106;
          }

          else
          {
            v36 = sub_1D9C7E7DC();

            v18 = v106;
            if ((v36 & 1) == 0)
            {

              v20 = v112;
              v12 = v110;
              goto LABEL_4;
            }
          }

          v37 = v112;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D9B1A6D4(v37);
            v37 = result;
          }

          if (v18 >= v37[2])
          {
            goto LABEL_88;
          }

          v38 = v37;
          v39 = v37 + 4;
          v40 = v37[v18 + 4];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39[v18] = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v40 = sub_1D9AF8728(0, *(v40 + 2) + 1, 1, v40);
            v39[v18] = v40;
          }

          v43 = *(v40 + 2);
          v42 = *(v40 + 3);
          if (v43 >= v42 >> 1)
          {
            v40 = sub_1D9AF8728((v42 > 1), v43 + 1, 1, v40);
            v39[v106] = v40;
          }

          v20 = v38;
          *(v40 + 2) = v43 + 1;
          v44 = &v40[32 * v43];
          *(v44 + 4) = v21;
          *(v44 + 5) = v22;
          *(v44 + 6) = v23;
          *(v44 + 7) = v24;
        }

        else
        {

          v20 = v112;
        }

        v12 = v110;
        v18 = v106;
      }

      else
      {

        v20 = v112;
        v12 = v110;
        v18 = v106;
      }
    }

    else
    {
    }

LABEL_4:
    v19 += 4;
    if (!--v17)
    {
      goto LABEL_36;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

unint64_t sub_1D99A7E00@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Execution";
    v13 = 30;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Execution";
    v16 = 0xD000000000000019;
    v17 = 41;
    if (result != 2)
    {
      v15 = "Unified Model Execution";
      v17 = 23;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Execution";
      v13 = 32;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Execution";
    v11 = 25;
    if (result != 4)
    {
      v10 = "Natureworld Model Execution";
      v11 = 27;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Execution";
    v7 = 1685024614;
    v8 = 20;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Execution";
      v8 = 26;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Execution";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 29;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A7FF8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Postprocess Results";
    v13 = 40;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Postprocess Results";
    v16 = 0xD000000000000019;
    v17 = 51;
    if (result != 2)
    {
      v15 = "Unified Model Postprocess Results";
      v17 = 33;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Postprocess Results";
      v13 = 42;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Postprocess Results";
    v11 = 35;
    if (result != 4)
    {
      v10 = "Natureworld Model Postprocess Results";
      v11 = 37;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Postprocess Results";
    v7 = 1685024614;
    v8 = 30;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Postprocess Results";
      v8 = 36;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Postprocess Results";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 39;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A81F0@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Loading";
    v13 = 28;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Loading";
    v16 = 0xD000000000000019;
    v17 = 39;
    if (result != 2)
    {
      v15 = "Unified Model Loading";
      v17 = 21;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Loading";
      v13 = 30;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Loading";
    v11 = 23;
    if (result != 4)
    {
      v10 = "Natureworld Model Loading";
      v11 = 25;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Loading";
    v7 = 1685024614;
    v8 = 18;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Loading";
      v8 = 24;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Loading";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 27;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

unint64_t sub_1D99A83E8@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (result <= 3u)
  {
    v4 = 0x65447463656A626FLL;
    v12 = "ObjectDetector Model Preprocess Input";
    v13 = 37;
    v14 = 0x80000001D9CA29D0;
    v15 = "DomainPredictionGrounding Model Preprocess Input";
    v16 = 0xD000000000000019;
    v17 = 48;
    if (result != 2)
    {
      v15 = "Unified Model Preprocess Input";
      v17 = 30;
      v16 = 0x64656966696E75;
      v14 = 0xE700000000000000;
    }

    if (result)
    {
      v12 = "DomainPrediction Model Preprocess Input";
      v13 = 39;
      v4 = 0xD000000000000010;
      result = 0x80000001D9CA29B0;
    }

    else
    {
      result = 0xEF6E6F6974636574;
    }

    v18 = v2 <= 1;
    if (v2 <= 1)
    {
      v10 = v12;
    }

    else
    {
      v10 = v15;
    }

    if (v18)
    {
      v11 = v13;
    }

    else
    {
      v11 = v17;
    }

    if (v18)
    {
      v3 = result;
    }

    else
    {
      v4 = v16;
      v3 = v14;
    }
  }

  else if (result <= 5u)
  {
    v3 = 0xE900000000000032;
    v4 = 0x766432736F677261;
    v10 = "Argos2DV2 Model Preprocess Input";
    v11 = 32;
    if (result != 4)
    {
      v10 = "Natureworld Model Preprocess Input";
      v11 = 34;
      v4 = 0x6F7765727574616ELL;
      v3 = 0xEB00000000646C72;
    }
  }

  else
  {
    v3 = 0xED00003276646C72;
    v4 = 0x6F7765727574616ELL;
    v5 = 0xE400000000000000;
    v6 = "Food Model Preprocess Input";
    v7 = 1685024614;
    v8 = 27;
    result = 0xEA00000000006C6FLL;
    if (v2 != 7)
    {
      v6 = "SignSymbol Model Preprocess Input";
      v8 = 33;
      v7 = 0x626D79536E676973;
      v5 = 0xEA00000000006C6FLL;
    }

    v9 = v2 == 6;
    if (v2 == 6)
    {
      v10 = "NatureworldV2 Model Preprocess Input";
    }

    else
    {
      v10 = v6;
    }

    if (v9)
    {
      v11 = 36;
    }

    else
    {
      v11 = v8;
    }

    if (!v9)
    {
      v4 = v7;
      v3 = v5;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  *(a2 + 32) = 2;
  return result;
}

uint64_t sub_1D99A85E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99A8650(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99A86B8(uint64_t a1)
{
  Context = type metadata accessor for VisualQueryContext(0);
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

void sub_1D99A875C(uint64_t a1)
{
  sub_1D9C7B80C();
  if (v1 <= 0x3F)
  {
    sub_1D99A8834(319);
    if (v2 <= 0x3F)
    {
      sub_1D99A88F4();
      if (v3 <= 0x3F)
      {
        sub_1D99A8944(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D99A8834(uint64_t a1)
{
  if (!qword_1EDD2C648)
  {
    sub_1D9C7B80C();
    sub_1D99A88A0();
    v1 = sub_1D9C7DBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2C648);
    }
  }
}

unint64_t sub_1D99A88A0()
{
  result = qword_1EDD33D40;
  if (!qword_1EDD33D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33D40);
  }

  return result;
}

void sub_1D99A88F4()
{
  if (!qword_1EDD34770)
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD34770);
    }
  }
}

void sub_1D99A8944(uint64_t a1)
{
  if (!qword_1EDD2E168[0])
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB518D0, &unk_1D9C856A0);
    v5 = type metadata accessor for Lazy(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, qword_1EDD2E168);
    }
  }
}

uint64_t getEnumTagSinglePayload for MLModelRepresentationType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MLModelRepresentationType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for MLModelAssetRole(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLModelAssetRole(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D99A8C54(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0xD000000000000010;
    v6 = 0xD000000000000015;
    if (a1 != 10)
    {
      v5 = 0x614C657372616F63;
    }

    if (a1 != 9)
    {
      v6 = v5;
    }

    v7 = 0x7070614D72696168;
    v8 = 0x4D736C616D696E61;
    if (a1 != 7)
    {
      v8 = 0x614D65727574616ELL;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x676E697070616DLL;
    v2 = 0x697070614D746163;
    v3 = 0x697070614D676F64;
    if (a1 != 4)
    {
      v3 = 0x7070614D74616F63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 != 1)
    {
      v1 = 0x617461646174656DLL;
    }

    if (!a1)
    {
      v1 = 0xD000000000000010;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D99A8E14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1D99A8C54(*a1);
  v5 = v4;
  if (v3 == sub_1D99A8C54(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D99A8E9C()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D99A8C54(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A8F00(uint64_t a1)
{
  sub_1D99A8C54(*v1);
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A8F54()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D99A8C54(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

unint64_t sub_1D99A8FB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D99AAF30(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D99A8FE4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D99A8C54(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D99A9010(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 7498085;
  }

  else
  {
    v2 = 7104877;
  }

  if (*a2)
  {
    v3 = 7498085;
  }

  else
  {
    v3 = 7104877;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D9C7E7DC();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D99A9088()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A90F0(uint64_t a1)
{
  sub_1D9C7DD6C();
}

uint64_t sub_1D99A913C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

uint64_t sub_1D99A91A0@<X0>(char *a2@<X8>)
{
  v3 = sub_1D9C7E56C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D99A9200(uint64_t *a1@<X8>)
{
  v2 = 7104877;
  if (*v1)
  {
    v2 = 7498085;
  }

  *a1 = v2;
  a1[1] = 0xE300000000000000;
}

unint64_t sub_1D99A922C()
{
  result = qword_1ECB51098;
  if (!qword_1ECB51098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB51098);
  }

  return result;
}

unint64_t sub_1D99A9284()
{
  result = qword_1EDD33D38;
  if (!qword_1EDD33D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33D38);
  }

  return result;
}

uint64_t sub_1D99A92D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v8, &unk_1ECB518D0, &unk_1D9C856A0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1D99A6AE0(v8, &unk_1ECB518D0, &unk_1D9C856A0);
    result = sub_1D99A94CC(v16, a3);
    if (!v3)
    {
      return result;
    }

    v14 = 1;
  }

  else
  {
    sub_1D99AB168(v8, v12, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
    sub_1D99AB168(v12, a3, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
    v14 = 0;
  }

  return (*(v10 + 56))(a3, v14, 1, v9);
}

uint64_t sub_1D99A94CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_1D9C7D8DC();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v56 = &v50 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v50 - v10;
  v12 = sub_1D9C7B80C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - v20;
  if (*(a1 + 16) && (v22 = sub_1D99EE004(0), (v23 & 1) != 0))
  {
    v24 = *(a1 + 56) + *(v13 + 72) * v22;
    v25 = *(v13 + 16);
    v25(v18, v24, v12);
    (*(v13 + 32))(v21, v18, v12);
    sub_1D9A4E438(v21);
    if (v2)
    {

      v26 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      v27 = *(v26 - 8);
      v54 = *(v27 + 56);
      v55 = v26;
      v53 = v27 + 56;
      v54(v11, 1, 1);
      sub_1D99A6AE0(v11, &unk_1ECB518D0, &unk_1D9C856A0);
      v28 = v56;
      static Logger.argos.getter(v56);
      v25(v15, v21, v12);
      v29 = sub_1D9C7D8BC();
      v30 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v51 = v31;
        v52 = swift_slowAlloc();
        v60 = v52;
        *v31 = 136315138;
        sub_1D99AB1D0();
        v32 = sub_1D9C7E7AC();
        v34 = v33;
        v35 = *(v13 + 8);
        v35(v15, v12);
        v36 = sub_1D9A0E224(v32, v34, &v60);

        v37 = v51;
        *(v51 + 1) = v36;
        v38 = v37;
        _os_log_impl(&dword_1D9962000, v29, v30, "unable to load Model Description from file %s", v37, 0xCu);
        v39 = v52;
        v40 = __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x1DA7405F0](v39, -1, -1, v40);
        MEMORY[0x1DA7405F0](v38, -1, -1);

        (*(v57 + 8))(v56, v58);
        v35(v21, v12);
      }

      else
      {

        v49 = *(v13 + 8);
        v49(v15, v12);
        (*(v57 + 8))(v28, v58);
        v49(v21, v12);
      }

      return (v54)(v59, 1, 1, v55);
    }

    else
    {
      (*(v13 + 8))(v21, v12);
      v46 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
      v47 = *(*(v46 - 8) + 56);
      v47(v11, 0, 1, v46);
      v48 = v59;
      sub_1D99AB168(v11, v59, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
      return (v47)(v48, 0, 1, v46);
    }
  }

  else
  {
    static Logger.argos.getter(v6);
    v41 = sub_1D9C7D8BC();
    v42 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D9962000, v41, v42, "missing model Specification", v43, 2u);
      MEMORY[0x1DA7405F0](v43, -1, -1);
    }

    (*(v57 + 8))(v6, v58);
    v44 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
    return (*(*(v44 - 8) + 56))(v59, 1, 1, v44);
  }
}

uint64_t sub_1D99A9AD0@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v1 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A8, &unk_1D9C85830);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v67 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v63 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518E0, &qword_1D9C87450);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v63 - v12;
  v75 = type metadata accessor for Argos_Protos_MLModel_FeatureType(0);
  v68 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v15 = &v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = (&v63 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510B0, &unk_1D9C85840);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v69 = &v63 - v23;
  v24 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v25 = *(v24 - 8);
  v76 = v24;
  v77 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v63 - v29;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v21);
  v63 = v30;
  v64 = v15;
  v65 = v3;
  v31 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v31 - 8) + 48))(v21, 1, v31) == 1)
  {
    sub_1D99A6AE0(v21, &unk_1ECB518D0, &unk_1D9C856A0);
    v32 = v69;
    (*(v77 + 56))(v69, 1, 1, v76);
    v33 = v70;
    goto LABEL_3;
  }

  v73 = v13;
  v39 = *v21;

  result = sub_1D99AAFD4(v21, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v74 = v39;
  v72 = *(v39 + 16);
  if (!v72)
  {
LABEL_19:

    v47 = 1;
    v32 = v69;
LABEL_21:
    v48 = v76;
    v49 = v77;
    (*(v77 + 56))(v32, v47, 1, v76);
    v50 = (*(v49 + 48))(v32, 1, v48);
    v33 = v70;
    v51 = v75;
    if (v50 != 1)
    {
      v52 = v63;
      sub_1D99AB168(v32, v63, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v53 = v52 + *(v48 + 28);
      v54 = v66;
      sub_1D99AB100(v53, v66, &qword_1ECB518E0, &qword_1D9C87450);
      v55 = *(v68 + 48);
      if (v55(v54, 1, v51) == 1)
      {
        v56 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
        v57 = v64;
        (*(*(v56 - 8) + 56))(v64, 1, 1, v56);
        *(v57 + *(v51 + 20)) = 0;
        sub_1D9C7D3BC();
        v58 = v55(v54, 1, v51);
        v59 = v65;
        if (v58 != 1)
        {
          sub_1D99A6AE0(v54, &qword_1ECB518E0, &qword_1D9C87450);
        }
      }

      else
      {
        v57 = v64;
        sub_1D99AB168(v54, v64, type metadata accessor for Argos_Protos_MLModel_FeatureType);
        v59 = v65;
      }

      v60 = v67;
      sub_1D99AB100(v57, v67, &qword_1ECB510A8, &unk_1D9C85830);
      sub_1D99AAFD4(v57, type metadata accessor for Argos_Protos_MLModel_FeatureType);
      v61 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
      if ((*(*(v61 - 8) + 48))(v60, 1, v61) != 1)
      {
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D99AB168(v60, v59, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          sub_1D99AB168(v52, v33, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
          v62 = type metadata accessor for MLModelImageInput(0);
          sub_1D99AB168(v59, v33 + *(v62 + 20), type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
          return (*(*(v62 - 8) + 56))(v33, 0, 1, v62);
        }

        sub_1D99AAFD4(v52, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
        sub_1D99AAFD4(v60, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        goto LABEL_5;
      }

      sub_1D99AAFD4(v52, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v34 = &qword_1ECB510A8;
      v35 = &unk_1D9C85830;
      v36 = v60;
LABEL_4:
      sub_1D99A6AE0(v36, v34, v35);
LABEL_5:
      v37 = type metadata accessor for MLModelImageInput(0);
      return (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    }

LABEL_3:
    v34 = &qword_1ECB510B0;
    v35 = &unk_1D9C85840;
    v36 = v32;
    goto LABEL_4;
  }

  v40 = 0;
  v71 = v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
  v41 = (v68 + 48);
  while (v40 < *(v74 + 16))
  {
    sub_1D99AB034(v71 + *(v77 + 72) * v40, v27, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v42 = v73;
    sub_1D99AB100(&v27[*(v76 + 28)], v73, &qword_1ECB518E0, &qword_1D9C87450);
    v43 = *v41;
    v44 = v75;
    if ((*v41)(v42, 1, v75) == 1)
    {
      v45 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
      (*(*(v45 - 8) + 56))(v18, 1, 1, v45);
      v18[*(v44 + 20)] = 0;
      sub_1D9C7D3BC();
      if (v43(v42, 1, v44) != 1)
      {
        sub_1D99A6AE0(v42, &qword_1ECB518E0, &qword_1D9C87450);
      }
    }

    else
    {
      sub_1D99AB168(v42, v18, type metadata accessor for Argos_Protos_MLModel_FeatureType);
    }

    sub_1D99AB100(v18, v8, &qword_1ECB510A8, &unk_1D9C85830);
    sub_1D99AAFD4(v18, type metadata accessor for Argos_Protos_MLModel_FeatureType);
    v46 = type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type(0);
    if ((*(*(v46 - 8) + 48))(v8, 1, v46) == 1)
    {
      sub_1D99AAFD4(v27, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      result = sub_1D99A6AE0(v8, &qword_1ECB510A8, &unk_1D9C85830);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        sub_1D99AAFD4(v8, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
        v32 = v69;
        sub_1D99AB168(v27, v69, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
        v47 = 0;
        goto LABEL_21;
      }

      sub_1D99AAFD4(v27, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      result = sub_1D99AAFD4(v8, type metadata accessor for Argos_Protos_MLModel_FeatureType.OneOf_Type);
    }

    if (v72 == ++v40)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

double sub_1D99AA5A8()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510A0, &qword_1D9C99320);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1D99A9AD0(&v14 - v7);
  v9 = type metadata accessor for MLModelImageInput(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v8, 1, v9) == 1)
  {
    sub_1D99A6AE0(v8, &qword_1ECB510A0, &qword_1D9C99320);
    v11 = 0.0;
  }

  else
  {
    sub_1D99AB034(&v8[*(v9 + 20)], v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    sub_1D99AAFD4(v8, type metadata accessor for MLModelImageInput);
    v12 = *v2;
    sub_1D99AAFD4(v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    v11 = v12;
  }

  sub_1D99A9AD0(v5);
  if (v10(v5, 1, v9) == 1)
  {
    sub_1D99A6AE0(v5, &qword_1ECB510A0, &qword_1D9C99320);
  }

  else
  {
    sub_1D99AB034(&v5[*(v9 + 20)], v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
    sub_1D99AAFD4(v5, type metadata accessor for MLModelImageInput);
    sub_1D99AAFD4(v2, type metadata accessor for Argos_Protos_MLModel_ImageFeatureType);
  }

  return v11;
}

uint64_t sub_1D99AA820()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v6);
  v7 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_1D99A6AE0(v6, &unk_1ECB518D0, &unk_1D9C856A0);
    return MEMORY[0x1E69E7CC0];
  }

  v10 = *(v6 + 1);

  sub_1D99AAFD4(v6, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v11 = *(v10 + 16);
  if (!v11)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19[0] = MEMORY[0x1E69E7CC0];
  sub_1D99FE164(0, v11, 0);
  v8 = v19[0];
  v12 = v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v13 = *(v1 + 72);
  do
  {
    sub_1D99AB034(v12, v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v15 = *v3;
    v14 = v3[1];

    sub_1D99AAFD4(v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v19[0] = v8;
    v17 = *(v8 + 16);
    v16 = *(v8 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_1D99FE164((v16 > 1), v17 + 1, 1);
      v8 = v19[0];
    }

    *(v8 + 16) = v17 + 1;
    v18 = v8 + 16 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14;
    v12 += v13;
    --v11;
  }

  while (v11);

  return v8;
}

unint64_t sub_1D99AAB0C()
{
  v0 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v36 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB518D0, &unk_1D9C856A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v36 - v8;
  type metadata accessor for MLModelInfo(0);
  sub_1D9C19728(v9);
  v10 = type metadata accessor for Argos_Protos_MLModel_ModelDescription(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &unk_1ECB518D0, &unk_1D9C856A0);
    return sub_1D9A438F0(MEMORY[0x1E69E7CC0]);
  }

  v13 = *(v9 + 1);

  sub_1D99AAFD4(v9, type metadata accessor for Argos_Protos_MLModel_ModelDescription);
  v11 = sub_1D9A438F0(MEMORY[0x1E69E7CC0]);
  v39 = *(v13 + 16);
  if (!v39)
  {
LABEL_18:

    return v11;
  }

  v14 = 0;
  v15 = *(v1 + 80);
  v37 = v13;
  v38 = v13 + ((v15 + 32) & ~v15);
  while (v14 < *(v13 + 16))
  {
    v16 = v1;
    v17 = *(v1 + 72);
    sub_1D99AB034(v38 + v17 * v14, v6, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v19 = *v6;
    v18 = v6[1];
    v20 = v6;
    v21 = v6;
    v22 = v3;
    sub_1D99AB034(v21, v3, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v11;
    v24 = sub_1D99ED894(v19, v18);
    v26 = v11[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_20;
    }

    v30 = v25;
    if (v11[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v24;
        sub_1D9C13604();
        v24 = v35;
      }
    }

    else
    {
      sub_1D9C08054(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D99ED894(v19, v18);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }
    }

    v3 = v22;
    v11 = v40;
    v6 = v20;
    if (v30)
    {
      sub_1D99AB09C(v3, v40[7] + v24 * v17);
    }

    else
    {
      v40[(v24 >> 6) + 8] |= 1 << v24;
      v32 = (v11[6] + 16 * v24);
      *v32 = v19;
      v32[1] = v18;
      sub_1D99AB168(v3, v11[7] + v24 * v17, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
      v33 = v11[2];
      v28 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v28)
      {
        goto LABEL_21;
      }

      v11[2] = v34;
    }

    ++v14;
    sub_1D99AAFD4(v20, type metadata accessor for Argos_Protos_MLModel_FeatureDescription);
    v1 = v16;
    v13 = v37;
    if (v39 == v14)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

unint64_t sub_1D99AAF30(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D9C7E56C();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D99AAF9C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D99AAFD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AB034(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AB09C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99AB100(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D99AB168(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D99AB1D0()
{
  result = qword_1ECB52420;
  if (!qword_1ECB52420)
  {
    sub_1D9C7B80C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB52420);
  }

  return result;
}

uint64_t sub_1D99AB250(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_MLModel_FeatureDescription(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_MLModel_ImageFeatureType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

double sub_1D99AB2D4@<D0>(_OWORD *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a4@<X8>)
{
  v85 = sub_1D9C7D8DC();
  v40 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[7];
  v11 = a1[5];
  v82 = a1[6];
  v83 = v10;
  v12 = a1[7];
  v84[0] = a1[8];
  *(v84 + 13) = *(a1 + 141);
  v13 = a1[3];
  v14 = a1[1];
  v78 = a1[2];
  v79 = v13;
  v15 = a1[3];
  v16 = a1[5];
  v80 = a1[4];
  v81 = v16;
  v17 = a1[1];
  v77[0] = *a1;
  v77[1] = v17;
  v74 = v82;
  v75 = v12;
  v76[0] = a1[8];
  *(v76 + 13) = *(a1 + 141);
  v70 = v78;
  v71 = v15;
  v72 = v80;
  v73 = v11;
  v68 = v77[0];
  v69 = v14;
  v18 = *a2;
  v19 = sub_1D9A15C94(v77[0]);
  v21 = v20;
  sub_1D99AE054(v77, &v59);

  LOBYTE(v19) = sub_1D9B6655C(v19, v21, v18);

  if (v19)
  {
    v39 = v4;
    BYTE12(v75) = 0;
    static Logger.argos.getter(v9);
    v65 = v74;
    v66 = v75;
    v67[0] = v76[0];
    *(v67 + 13) = *(v76 + 13);
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v59 = v68;
    v60 = v69;

    sub_1D99AE054(&v59, &v50);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E09C();

    sub_1D99AE0B0(&v59);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v41 = v25;
      *v24 = 136315394;
      type metadata accessor for VisualUnderstanding.ImageRegion(0);
      v26 = swift_projectBox();
      swift_beginAccess();
      v27 = v26[1];
      v50 = *v26;
      v51 = v27;
      v28 = NormalizedRect.loggingDescription.getter();
      v30 = sub_1D9A0E224(v28, v29, &v41);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2080;
      v31 = sub_1D9A15C94(v59);
      v33 = sub_1D9A0E224(v31, v32, &v41);

      *(v24 + 14) = v33;
      _os_log_impl(&dword_1D9962000, v22, v23, "%s unselects %s because this region contains a known person and satisfies person_image_level_supression_rule.", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v25, -1, -1);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v40 + 8))(v9, v85);
  }

  swift_beginAccess();
  v47 = v74;
  v48 = v75;
  v49[0] = v76[0];
  *(v49 + 13) = *(v76 + 13);
  v43 = v70;
  v44 = v71;
  v45 = v72;
  v46 = v73;
  v41 = v68;
  v42 = v69;
  v56 = v74;
  v57 = v75;
  v58[0] = v76[0];
  *(v58 + 13) = *(v76 + 13);
  v52 = v70;
  v53 = v71;
  v54 = v72;
  v55 = v73;
  v50 = v68;
  v51 = v69;
  sub_1D99AE054(&v41, &v59);
  sub_1D99AE0B0(&v50);
  v65 = v47;
  v66 = v48;
  v67[0] = v49[0];
  *(v67 + 13) = *(v49 + 13);
  v61 = v43;
  v62 = v44;
  v63 = v45;
  v64 = v46;
  v59 = v41;
  v60 = v42;
  faiss::NormalizationTransform::~NormalizationTransform(&v59);
  v34 = v66;
  a4[6] = v65;
  a4[7] = v34;
  a4[8] = v67[0];
  *(a4 + 141) = *(v67 + 13);
  v35 = v62;
  a4[2] = v61;
  a4[3] = v35;
  v36 = v64;
  a4[4] = v63;
  a4[5] = v36;
  result = *&v59;
  v38 = v60;
  *a4 = v59;
  a4[1] = v38;
  return result;
}

void *sub_1D99AB71C(unint64_t a1, uint64_t a2, uint64_t *a3, char **a4, uint64_t *a5)
{
  v180 = a4;
  v176 = a2;
  v168 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
  MEMORY[0x1EEE9AC00](v168);
  v161 = (&v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_1D9C7D8DC();
  v9 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v159 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s14DetectedResultVMa(0);
  v183 = *(v11 - 8);
  v184 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v181 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v185 = &v143 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v156 = (&v143 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v157 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v162 = &v143 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0, &unk_1D9C85870);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v147 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v182 = &v143 - v24;
  v25 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v146 = &v143 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v186 = &v143 - v29;
  v30 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v155 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v163 = (&v143 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v143 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v187 = &v143 - v36;
  v158 = a3;
  result = *a3;
  v38 = *(*a3 + 16);
  if (v38)
  {
    v39 = a1;
    v154 = v38;
    v153 = *a5;
    v40 = result;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_119;
    }

    for (result = v40; ; result = sub_1D9B1A6FC(v40))
    {
      v171 = 0;
      *v158 = result;
      v150 = (v183 + 48);
      v151 = (v183 + 56);
      v144 = 0x80000001D9CA3A40;
      v148 = (v9 + 8);
      v149 = (v9 + 16);
      v9 = 0;
      *(&v41 + 1) = 2;
      v152 = xmmword_1D9C85660;
      *&v41 = 136315650;
      v145 = v41;
      v172 = v39;
      v173 = v25;
      v42 = v154;
      v167 = (v26 + 48);
      while (1)
      {
        if (v9 == v42)
        {
          goto LABEL_114;
        }

        if (v9 >= result[2])
        {
          break;
        }

        v175 = (*(v155 + 80) + 32) & ~*(v155 + 80);
        v43 = *(v155 + 72);
        v174 = v43 * v9;
        v44 = result + v175 + v43 * v9;
        if ((*(v44 + 104) & 1) == 0)
        {
          v45 = *(*(v44 + 48) + 16);
          v40 = v186;
          if (v45)
          {
            v46 = 0;
            *v158 = result;
            v164 = v45;
            v165 = v43 * v39;
            v177 = v9;
            do
            {
              if (v9 == v39 && v46 == v176)
              {
                goto LABEL_13;
              }

              if (v9 >= result[2])
              {
                goto LABEL_109;
              }

              v47 = result + v175 + v174;
              v48 = *(v47 + 48);
              if (v46 >= *(v48 + 16))
              {
                goto LABEL_110;
              }

              *&v192 = result + v175;
              v188 = result;
              v178 = v46;
              v169 = 160 * v46;
              v49 = (v48 + 160 * v46);
              v50 = v49[3];
              v195[0] = v49[2];
              v195[1] = v50;
              v51 = v49[4];
              v52 = v49[5];
              v53 = v49[7];
              v195[4] = v49[6];
              v195[5] = v53;
              v195[2] = v51;
              v195[3] = v52;
              v54 = v49[8];
              v55 = v49[9];
              v56 = v49[10];
              *(v197 + 13) = *(v49 + 173);
              v196 = v55;
              v197[0] = v56;
              v195[6] = v54;
              v179 = (result + v175 + v174);
              sub_1D99AE190(v47, v187, type metadata accessor for VisualUnderstanding.ImageRegion);
              v9 = v182;
              sub_1D99AB100(v180 + *(v168 + 28), v182, &qword_1ECB510D0, &unk_1D9C85870);
              v26 = v167;
              v57 = *v167;
              v58 = (*v167)(v9, 1, v25);
              v170 = v57;
              if (v58 == 1)
              {
                *v40 = MEMORY[0x1E69E7CC0];
                v40[1] = 0;
                sub_1D99AE054(v195, v194);
                sub_1D9C7D3BC();
                v9 = *(v25 + 32);
                v59 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
                (*(*(v59 - 8) + 56))(v40 + v9, 1, 1, v59);
                if (v57(v182, 1, v25) != 1)
                {
                  sub_1D99A6AE0(v182, &qword_1ECB510D0, &unk_1D9C85870);
                }
              }

              else
              {
                sub_1D99AE128(v182, v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                sub_1D99AE054(v195, v194);
              }

              v40 = *v40;
              v60 = v40[2];
              v166 = LOBYTE(v195[0]);
              if (v60)
              {
                v9 = &v143;
                *&v194[0] = sub_1D9A15C94(v195[0]);
                *(&v194[0] + 1) = v61;
                MEMORY[0x1EEE9AC00](*&v194[0]);
                *(&v143 - 2) = v194;
                v62 = v40;
                v40 = v171;
                v26 = sub_1D9BC1698(sub_1D99AE258, (&v143 - 4), v62);
                v171 = v40;

                if ((v26 & 1) == 0)
                {
                  v66 = 0;
                  goto LABEL_42;
                }

                v25 = v173;
              }

              v63 = v186;
              v64 = *(v186 + 3);
              if (v64 != 0.0 && *(v187 + 76) < v64 || (v65 = *(v186 + 2), v65 != 0.0) && v65 < *(v187 + 76))
              {
                v66 = 0;
                goto LABEL_43;
              }

              v9 = v186;
              *&v190 = *(v25 + 32);
              v67 = v162;
              sub_1D99AB100(&v186[*&v190], v162, &qword_1ECB510C8, &unk_1D9C98580);
              v68 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
              v26 = *(v68 - 8);
              *&v191 = *(v26 + 48);
              v40 = (v191)(v67, 1, v68);
              sub_1D99A6AE0(v67, &qword_1ECB510C8, &unk_1D9C98580);
              if (v40 == 1)
              {
                v39 = v172;
                v63 = v9;
                v66 = 1;
                goto LABEL_43;
              }

              v69 = *(v187 + 56);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8, &unk_1D9C98590);
              v70 = (*(v26 + 80) + 32) & ~*(v26 + 80);
              *&v71 = COERCE_DOUBLE(swift_allocObject());
              *(v71 + 16) = v152;
              v189 = *&v71;
              v26 = v71 + v70;
              v72 = v157;
              sub_1D99AB100(v9 + *&v190, v157, &qword_1ECB510C8, &unk_1D9C98580);
              v73 = v191;
              if ((v191)(v72, 1, v68) == 1)
              {
                *v26 = 0;
                *(v26 + 8) = 0xE000000000000000;
                *(v26 + 16) = 0;
                *(v26 + 20) = 0;
                sub_1D9C7D3BC();
                if (v73(v72, 1, v68) != 1)
                {
                  sub_1D99A6AE0(v72, &qword_1ECB510C8, &unk_1D9C98580);
                }
              }

              else
              {
                sub_1D99AE128(v72, v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
              }

              *&v194[0] = v153;
              v74 = sub_1D9A601D8(*&v189, v194, v69);
              v40 = v74;
              v75 = *(v74 + 16);
              v39 = v172;
              if (v75)
              {
                v25 = v74 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
                sub_1D99AE190(v25, v185, _s14DetectedResultVMa);
                if (v75 != 1)
                {
                  v9 = 1;
                  while (v9 < v40[2])
                  {
                    v109 = v26;
                    v110 = v181;
                    sub_1D99AE190(v25 + *(v183 + 72) * v9, v181, _s14DetectedResultVMa);
                    v111 = v185;
                    if (*(v185 + *(v184 + 32)) >= *(v110 + *(v184 + 32)))
                    {
                      sub_1D99AE1F8(v110, _s14DetectedResultVMa);
                    }

                    else
                    {
                      sub_1D99AE1F8(v185, _s14DetectedResultVMa);
                      sub_1D99AE128(v110, v111, _s14DetectedResultVMa);
                    }

                    v26 = v109;
                    if (v75 == ++v9)
                    {
                      goto LABEL_39;
                    }
                  }

LABEL_108:
                  __break(1u);
LABEL_109:
                  __break(1u);
LABEL_110:
                  __break(1u);
LABEL_111:
                  __break(1u);
LABEL_112:
                  __break(1u);
LABEL_113:
                  __break(1u);
LABEL_114:
                  __break(1u);
                  goto LABEL_115;
                }

LABEL_39:

                v40 = v156;
                sub_1D99AE128(v185, v156, _s14DetectedResultVMa);
                v76 = 0;
              }

              else
              {

                v76 = 1;
                v40 = v156;
              }

              v9 = v184;
              (*v151)(v40, v76, 1, v184);
              swift_setDeallocating();
              sub_1D99AE1F8(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
              swift_deallocClassInstance();
              v66 = (*v150)(v40, 1, v9) != 1;
              sub_1D99A6AE0(v40, &qword_1ECB510C0, &qword_1D9C8AF90);
LABEL_42:
              v63 = v186;
LABEL_43:
              v25 = BYTE12(v196);
              sub_1D99AE1F8(v63, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
              sub_1D99AE1F8(v187, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((v39 & 0x8000000000000000) != 0)
              {
                goto LABEL_111;
              }

              v9 = v188[2];
              if (v9 <= v39)
              {
                goto LABEL_112;
              }

              sub_1D99AE190(v192 + v165, v34, type metadata accessor for VisualUnderstanding.ImageRegion);
              if (v177 >= v9)
              {
                goto LABEL_113;
              }

              v9 = v177;
              v77 = v163;
              sub_1D99AE190(v179, v163, type metadata accessor for VisualUnderstanding.ImageRegion);
              v40 = *v180;
              v26 = *(*v180 + 2);
              if (v26)
              {
                v78 = 0;
                while (v78 < v40[2])
                {
                  v79 = *(type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.SuppressCondition(0) - 8);
                  v80 = v40 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
                  if (*&v80[*(v79 + 72) * v78] == 0.0)
                  {
                    goto LABEL_59;
                  }

                  LODWORD(v192) = *&v80[*(v79 + 72) * v78];
                  v81 = *v34;
                  v82 = v34[1];
                  v83 = v34[2];
                  v84 = v34[3];
                  v85 = v77[1];
                  *&v191 = *v77;
                  v86 = v77[2];
                  v87 = v77[3];
                  v198.origin.x = v81;
                  v198.origin.y = v82;
                  v198.size.width = v83;
                  v198.size.height = v84;
                  Width = CGRectGetWidth(v198);
                  v189 = v81;
                  v199.origin.x = v81;
                  v89 = v82;
                  v90 = *&v191;
                  v199.origin.y = v89;
                  v199.size.width = v83;
                  v199.size.height = v84;
                  v91 = Width * CGRectGetHeight(v199);
                  v200.origin.x = v90;
                  v200.origin.y = v85;
                  v200.size.width = v86;
                  v200.size.height = v87;
                  v190 = CGRectGetWidth(v200);
                  v201.origin.x = v90;
                  v201.origin.y = v85;
                  v201.size.width = v86;
                  v201.size.height = v87;
                  Height = CGRectGetHeight(v201);
                  if (v91 <= 0.0 || (v93 = v190 * Height, v93 <= 0.0) || (v190 = v93, v202.origin.x = v189, v202.origin.y = v89, v202.size.width = v83, v202.size.height = v84, v206.origin.x = v90, v206.origin.y = v85, v206.size.width = v86, v206.size.height = v87, v203 = CGRectIntersection(v202, v206), x = v203.origin.x, y = v203.origin.y, v96 = v203.size.width, v97 = v203.size.height, CGRectIsNull(v203)))
                  {
                    if (*&v192 <= 0.0)
                    {
                      goto LABEL_59;
                    }
                  }

                  else
                  {
                    v204.origin.x = x;
                    v204.origin.y = y;
                    v204.size.width = v96;
                    v204.size.height = v97;
                    v98 = CGRectGetWidth(v204);
                    v205.origin.x = x;
                    v205.origin.y = y;
                    v205.size.width = v96;
                    v205.size.height = v97;
                    v99 = v98 * CGRectGetHeight(v205);
                    v100 = v190;
                    if (v190 >= v91)
                    {
                      v100 = v91;
                    }

                    v101 = v99 / v100;
                    if (*&v192 <= v101)
                    {
LABEL_59:
                      sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
                      sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
                      if (v25)
                      {
                        v39 = v172;
                        goto LABEL_62;
                      }

                      sub_1D99AE0B0(v195);
                      goto LABEL_72;
                    }
                  }

                  if (v26 == ++v78)
                  {
                    sub_1D99AE0B0(v195);
                    sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
                    v9 = v177;
                    sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
LABEL_72:
                    v39 = v172;
                    goto LABEL_74;
                  }
                }

                __break(1u);
                goto LABEL_108;
              }

              sub_1D99AE1F8(v77, type metadata accessor for VisualUnderstanding.ImageRegion);
              sub_1D99AE1F8(v34, type metadata accessor for VisualUnderstanding.ImageRegion);
              if ((v25 & 1) == 0)
              {
                sub_1D99AE0B0(v195);
LABEL_74:
                v25 = v173;
                v40 = v186;
                goto LABEL_12;
              }

LABEL_62:
              v40 = v186;
              if (!v66)
              {
                sub_1D99AE0B0(v195);
                v25 = v173;
LABEL_12:
                result = v188;
                v45 = v164;
                v46 = v178;
                goto LABEL_13;
              }

              if (v9 >= v188[2])
              {
                goto LABEL_116;
              }

              v102 = *v179;
              v191 = v179[1];
              v192 = v102;
              if (qword_1EDD354B8 != -1)
              {
                swift_once();
              }

              v103 = v170;
              if (byte_1EDD354C0 != 1)
              {
LABEL_89:
                v116 = qword_1EDD354D8;
                if (qword_1EDD354D0 != -1)
                {
                  swift_once();
                  v116 = qword_1EDD354D8;
                }

                goto LABEL_91;
              }

              v104 = [objc_opt_self() mainBundle];
              v105 = [v104 bundleIdentifier];

              if (v105)
              {
                v106 = sub_1D9C7DC7C();
                v108 = v107;

                if (v106 == 0xD00000000000002BLL && v144 == v108)
                {

LABEL_82:
                  v113 = &off_1ECB51BA8;
                  if (qword_1ECB50988 != -1)
                  {
                    swift_once();
                    v113 = &off_1ECB51BA8;
                  }

                  goto LABEL_86;
                }

                v112 = sub_1D9C7E7DC();

                if (v112)
                {
                  goto LABEL_82;
                }
              }

              v113 = &qword_1EDD355A8;
              if (qword_1EDD355A0 != -1)
              {
                swift_once();
                v113 = &qword_1EDD355A8;
              }

LABEL_86:
              v114 = *(*v113 + 32);

              v115 = sub_1D9C7DC4C();
              LODWORD(v114) = [v114 BOOLForKey_];

              if (!v114)
              {
                goto LABEL_89;
              }

              v116 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v116 = qword_1EDD2C990;
              }

LABEL_91:
              v117 = v160;
              v118 = __swift_project_value_buffer(v160, v116);
              v119 = v159;
              (*v149)(v159, v118, v117);
              v40 = v161;
              sub_1D99AE190(v180, v161, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
              v26 = sub_1D9C7D8BC();
              v120 = sub_1D9C7E09C();
              sub_1D99AE0B0(v195);
              if (os_log_type_enabled(v26, v120))
              {
                v121 = swift_slowAlloc();
                v190 = COERCE_DOUBLE(swift_slowAlloc());
                *v193 = v190;
                *v121 = v145;
                v194[0] = v192;
                v194[1] = v191;
                v122 = NormalizedRect.loggingDescription.getter();
                v124 = sub_1D9A0E224(v122, v123, v193);

                *(v121 + 4) = v124;
                v39 = 2080;
                *(v121 + 12) = 2080;
                v125 = sub_1D9A15C94(v166);
                v127 = sub_1D9A0E224(v125, v126, v193);

                *(v121 + 14) = v127;
                *(v121 + 22) = 2080;
                v128 = v40 + *(v168 + 28);
                v129 = v147;
                sub_1D99AB100(v128, v147, &qword_1ECB510D0, &unk_1D9C85870);
                v130 = v173;
                if (v103(v129, 1, v173) == 1)
                {
                  v39 = v103;
                  v131 = v146;
                  *v146 = MEMORY[0x1E69E7CC0];
                  *(v131 + 1) = 0;
                  sub_1D9C7D3BC();
                  *&v192 = *(v130 + 32);
                  v132 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
                  (*(*(v132 - 8) + 56))(&v131[v192], 1, 1, v132);
                  v133 = v130;
                  v134 = v131;
                  if ((v39)(v129, 1, v133) != 1)
                  {
                    sub_1D99A6AE0(v129, &qword_1ECB510D0, &unk_1D9C85870);
                  }
                }

                else
                {
                  v134 = v146;
                  sub_1D99AE128(v129, v146, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                }

                v135 = *v134;

                sub_1D99AE1F8(v134, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
                v136 = MEMORY[0x1DA73E110](v135, MEMORY[0x1E69E6158]);
                v40 = v137;

                sub_1D99AE1F8(v161, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
                v138 = sub_1D9A0E224(v136, v40, v193);

                *(v121 + 24) = v138;
                _os_log_impl(&dword_1D9962000, v26, v120, "%s drops %s due to suppression rules of %s", v121, 0x20u);
                v139 = v190;
                swift_arrayDestroy();
                MEMORY[0x1DA7405F0](*&v139, -1, -1);
                MEMORY[0x1DA7405F0](v121, -1, -1);

                (*v148)(v159, v160);
              }

              else
              {

                sub_1D99AE1F8(v40, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule);
                (*v148)(v119, v117);
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v9 = v177;
              if (isUniquelyReferenced_nonNull_native)
              {
                v25 = v173;
                v141 = v188;
              }

              else
              {
                v141 = sub_1D9B1A6FC(v188);
                v25 = v173;
              }

              if (v9 >= v141[2])
              {
                goto LABEL_117;
              }

              v26 = v141;
              v40 = (v141 + v175 + v174);
              v9 = v40[6];
              v142 = swift_isUniquelyReferenced_nonNull_native();
              v40[6] = v9;
              if ((v142 & 1) == 0)
              {
                v9 = sub_1D9B1A6E8(v9);
                v40[6] = v9;
              }

              v46 = v178;
              v39 = v172;
              v45 = v164;
              if (v178 >= *(v9 + 16))
              {
                goto LABEL_118;
              }

              result = v26;
              *(v9 + v169 + 156) = 0;
              v40[6] = v9;
              *v158 = v26;
              v40 = v186;
              v9 = v177;
LABEL_13:
              ++v46;
            }

            while (v46 != v45);
          }
        }

        ++v9;
        v42 = v154;
        if (v9 == v154)
        {
          return result;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      ;
    }
  }

  return result;
}

void sub_1D99ACD40(uint64_t *a1, char **a2, uint64_t *a3)
{
  v93 = a2;
  v5 = _s14DetectedResultVMa(0);
  v94 = *(v5 - 8);
  v95 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v80 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v96 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v79 = &v73 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D0, &unk_1D9C85870);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v73 - v18;
  v97 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction(0);
  v20 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v22 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v74 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v98 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(*a1 + 16);
  if (!v73)
  {
    return;
  }

  v92 = 0;
  v83 = *a3;
  v87 = (v20 + 48);
  v25 = 0;
  v75 = (v94 + 48);
  v76 = (v94 + 56);
  v77 = xmmword_1D9C85660;
  v91 = a1;
  v78 = v13;
  v85 = v16;
  v86 = v19;
  while (1)
  {
    if (v25 >= *(*a1 + 16))
    {
      goto LABEL_47;
    }

    v26 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v27 = *(v74 + 72) * v25;
    v28 = *a1 + v26 + v27;
    if ((*(v28 + 104) & 1) == 0)
    {
      v29 = *(*(v28 + 48) + 16);
      v30 = v97;
      if (v29)
      {
        break;
      }
    }

LABEL_3:
    if (++v25 == v73)
    {
      return;
    }
  }

  v31 = 0;
  v89 = *(v74 + 72) * v25;
  v90 = v25;
  v82 = v26;
  v88 = v29;
  while (v25 < *(*a1 + 16))
  {
    v32 = *a1 + v26 + v27;
    v33 = *(v32 + 48);
    if (v31 >= *(v33 + 16))
    {
      goto LABEL_46;
    }

    v34 = v33 + 160 * v31;
    if (*(v34 + 156) == 1)
    {
      v35 = *(v34 + 48);
      v100[0] = *(v34 + 32);
      v100[1] = v35;
      v36 = *(v34 + 64);
      v37 = *(v34 + 80);
      v38 = *(v34 + 112);
      v100[4] = *(v34 + 96);
      v100[5] = v38;
      v100[2] = v36;
      v100[3] = v37;
      v39 = *(v34 + 128);
      v40 = *(v34 + 144);
      v41 = *(v34 + 160);
      *(v101 + 13) = *(v34 + 173);
      v100[7] = v40;
      v101[0] = v41;
      v100[6] = v39;
      sub_1D99AE190(v32, v98, type metadata accessor for VisualUnderstanding.ImageRegion);
      v42 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule(0);
      sub_1D99AB100(v93 + *(v42 + 24), v19, &qword_1ECB510D0, &unk_1D9C85870);
      v43 = *v87;
      if ((*v87)(v19, 1, v30) == 1)
      {
        *v22 = MEMORY[0x1E69E7CC0];
        *(v22 + 1) = 0;
        sub_1D99AE054(v100, v99);
        sub_1D9C7D3BC();
        v44 = *(v97 + 32);
        v45 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        v46 = &v22[v44];
        v30 = v97;
        (*(*(v45 - 8) + 56))(v46, 1, 1, v45);
        if (v43(v19, 1, v30) != 1)
        {
          sub_1D99A6AE0(v19, &qword_1ECB510D0, &unk_1D9C85870);
        }
      }

      else
      {
        sub_1D99AE128(v19, v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
        sub_1D99AE054(v100, v99);
      }

      v47 = *v22;
      if (!*(*v22 + 16) || (v99[0] = sub_1D9A15C94(v100[0]), v99[1] = v48, MEMORY[0x1EEE9AC00](v99[0]), *(&v73 - 2) = v99, v49 = v92, v50 = sub_1D9BC1698(sub_1D99A40D8, (&v73 - 4), v47), v92 = v49, v30 = v97, a1 = v91, , v16 = v85, (v50)) && ((v51 = *(v22 + 3), v51 == 0.0) || *(v98 + 76) >= v51) && ((v52 = *(v22 + 2), v52 == 0.0) || v52 >= *(v98 + 76)))
      {
        v53 = *(v30 + 32);
        sub_1D99AB100(&v22[v53], v16, &qword_1ECB510C8, &unk_1D9C98580);
        v54 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        v55 = *(v54 - 8);
        v56 = *(v55 + 48);
        if (v56(v16, 1, v54) == 1)
        {
          sub_1D99AE0B0(v100);
          sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
          a1 = v91;
          v19 = v86;
          v30 = v97;
          v26 = v82;
          goto LABEL_36;
        }

        sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
        v81 = *(v98 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8, &unk_1D9C98590);
        v57 = (*(v55 + 80) + 32) & ~*(v55 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = v77;
        v84 = v58;
        v59 = v58 + v57;
        v60 = &v22[v53];
        v61 = v78;
        sub_1D99AB100(v60, v78, &qword_1ECB510C8, &unk_1D9C98580);
        if (v56(v61, 1, v54) == 1)
        {
          *v59 = 0;
          *(v59 + 8) = 0xE000000000000000;
          *(v59 + 16) = 0;
          *(v59 + 20) = 0;
          sub_1D9C7D3BC();
          v62 = v56(v61, 1, v54);
          v63 = v80;
          if (v62 != 1)
          {
            sub_1D99A6AE0(v61, &qword_1ECB510C8, &unk_1D9C98580);
          }
        }

        else
        {
          sub_1D99AE128(v61, v59, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
          v63 = v80;
        }

        v99[0] = v83;
        v64 = sub_1D9A601D8(v84, v99, v81);
        v65 = v64;
        v66 = *(v64 + 16);
        if (v66)
        {
          v67 = v64 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
          sub_1D99AE190(v67, v96, _s14DetectedResultVMa);
          v26 = v82;
          if (v66 != 1)
          {
            v71 = 1;
            while (v71 < *(v65 + 16))
            {
              sub_1D99AE190(v67 + *(v94 + 72) * v71, v63, _s14DetectedResultVMa);
              v72 = v96;
              if (*(v96 + *(v95 + 32)) >= *(v63 + *(v95 + 32)))
              {
                sub_1D99AE1F8(v63, _s14DetectedResultVMa);
              }

              else
              {
                sub_1D99AE1F8(v96, _s14DetectedResultVMa);
                sub_1D99AE128(v63, v72, _s14DetectedResultVMa);
              }

              if (v66 == ++v71)
              {
                goto LABEL_33;
              }
            }

            __break(1u);
            break;
          }

LABEL_33:

          v68 = v79;
          sub_1D99AE128(v96, v79, _s14DetectedResultVMa);
          v69 = v95;
          (*v76)(v68, 0, 1, v95);
          sub_1D99AE0B0(v100);
        }

        else
        {

          v68 = v79;
          v69 = v95;
          (*v76)(v79, 1, 1, v95);
          sub_1D99AE0B0(v100);

          v26 = v82;
        }

        v70 = (*v75)(v68, 1, v69);
        sub_1D99A6AE0(v68, &qword_1ECB510C0, &qword_1D9C8AF90);
        a1 = v91;
        v16 = v85;
        v19 = v86;
        v30 = v97;
        if (v70 != 1)
        {
LABEL_36:
          sub_1D99AE1F8(v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
          sub_1D99AE1F8(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
          v99[0] = v83;
          v25 = v90;
          sub_1D99AB71C(v90, v31, a1, v93, v99);
          goto LABEL_10;
        }
      }

      else
      {
        sub_1D99AE0B0(v100);
        v19 = v86;
      }

      sub_1D99AE1F8(v22, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.DomainSuppressionRule.DomainRestriction);
      sub_1D99AE1F8(v98, type metadata accessor for VisualUnderstanding.ImageRegion);
      v25 = v90;
LABEL_10:
      v29 = v88;
      v27 = v89;
    }

    if (++v31 == v29)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

char *sub_1D99AD81C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a1 + 32); ; i += 10)
  {
    v8 = i[7];
    v9 = i[5];
    v72 = i[6];
    v73 = v8;
    v10 = i[7];
    v74[0] = i[8];
    *(v74 + 13) = *(i + 141);
    v11 = i[3];
    v12 = i[1];
    v68 = i[2];
    v69 = v11;
    v13 = i[3];
    v14 = i[5];
    v70 = i[4];
    v71 = v14;
    v15 = i[1];
    v67[0] = *i;
    v67[1] = v15;
    v64 = v72;
    v65 = v10;
    v66[0] = i[8];
    *(v66 + 13) = *(i + 141);
    v60 = v68;
    v61 = v13;
    v62 = v70;
    v63 = v9;
    v58 = v67[0];
    v59 = v12;
    sub_1D99AE054(v67, &v40);
    sub_1D99AB2D4(&v58, a2, &v49);
    if (v3)
    {
      break;
    }

    v38[6] = v64;
    v38[7] = v65;
    v39[0] = v66[0];
    *(v39 + 13) = *(v66 + 13);
    v38[2] = v60;
    v38[3] = v61;
    v38[4] = v62;
    v38[5] = v63;
    v38[0] = v58;
    v38[1] = v59;
    sub_1D99AE0B0(v38);
    v46 = v55;
    v47 = v56;
    v48[0] = v57[0];
    *(v48 + 13) = *(v57 + 13);
    v42 = v51;
    v43 = v52;
    v44 = v53;
    v45 = v54;
    v40 = v49;
    v41 = v50;
    if (sub_1D99AE104(&v40) == 1)
    {
      v35 = v55;
      v36 = v56;
      v37[0] = v57[0];
      *(v37 + 13) = *(v57 + 13);
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      sub_1D99A6AE0(&v29, &qword_1ECB510B8, &unk_1D9C864F0);
    }

    else
    {
      v35 = v55;
      v36 = v56;
      v37[0] = v57[0];
      *(v37 + 13) = *(v57 + 13);
      v31 = v51;
      v32 = v52;
      v33 = v53;
      v34 = v54;
      v29 = v49;
      v30 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D9AF8974(0, *(v6 + 2) + 1, 1, v6);
      }

      v17 = *(v6 + 2);
      v16 = *(v6 + 3);
      if (v17 >= v16 >> 1)
      {
        v6 = sub_1D9AF8974((v16 > 1), v17 + 1, 1, v6);
      }

      v24 = v33;
      v25 = v34;
      v22 = v31;
      v23 = v32;
      *&v28[13] = *(v37 + 13);
      v27 = v36;
      *v28 = v37[0];
      v26 = v35;
      v20 = v29;
      v21 = v30;
      *(v6 + 2) = v17 + 1;
      v18 = &v6[160 * v17];
      *(v18 + 2) = v20;
      *(v18 + 3) = v21;
      *(v18 + 6) = v24;
      *(v18 + 7) = v25;
      *(v18 + 4) = v22;
      *(v18 + 5) = v23;
      *(v18 + 173) = *&v28[13];
      *(v18 + 9) = v27;
      *(v18 + 10) = *v28;
      *(v18 + 8) = v26;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  v46 = v64;
  v47 = v65;
  v48[0] = v66[0];
  *(v48 + 13) = *(v66 + 13);
  v42 = v60;
  v43 = v61;
  v44 = v62;
  v45 = v63;
  v40 = v58;
  v41 = v59;
  sub_1D99AE0B0(&v40);

  return v6;
}

void *sub_1D99ADB54(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220, &unk_1D9C86480);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v43 - v6;
  v53 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v44 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v51 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v43 - v9;
  v10 = type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule(0) - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v47 = a2[7];
  v55 = MEMORY[0x1E69E7CD0];
  if (*(a3 + 16))
  {
    v15 = *(a3 + 16);
    v16 = 0;
    v50 = a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v14 == 1 || v47 == 0;
    LODWORD(v49) = v18;
    v48 = *(v11 + 72);
    do
    {
      sub_1D99AE190(v50 + v48 * v16, v13, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
      v19 = MEMORY[0x1E69E7CC0];
      if ((v49 & 1) == 0)
      {
        v19 = v47;
      }

      v20 = *(v19 + 16);
      if (v20)
      {
        v21 = *(v13 + 4);
        v22 = (v19 + 52);
        do
        {
          v23 = *v22;
          v22 += 14;
          if (v23 >= v21)
          {
            v24 = *v13;
            v25 = *(v13 + 1);

            sub_1D9B91DE4(v54, v24, v25);
          }

          --v20;
        }

        while (v20);
      }

      ++v16;

      sub_1D99AE1F8(v13, type metadata accessor for Argos_Protos_Queryflow_RegionSelectionConfig.PersonImageLevelSupressionRule);
    }

    while (v16 != v15);
  }

  v26 = *(v45 + 16);
  if (v26)
  {
    v27 = *(v44 + 72);
    v47 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v28 = v45 + v47;
    v48 = (v44 + 48);
    v49 = (v44 + 56);
    v29 = MEMORY[0x1E69E7CC0];
    v50 = v27;
    do
    {
      v31 = v53;
      v32 = swift_allocBox();
      v34 = v33;
      sub_1D99AE190(v28, v33, type metadata accessor for VisualUnderstanding.ImageRegion);

      v36 = sub_1D99AD81C(v35, &v55, v32);

      swift_beginAccess();
      *(v34 + 48) = v36;

      v37 = v52;
      sub_1D99AE190(v34, v52, type metadata accessor for VisualUnderstanding.ImageRegion);
      (*v49)(v37, 0, 1, v31);

      if ((*v48)(v37, 1, v31) == 1)
      {
        sub_1D99A6AE0(v37, &qword_1ECB51220, &unk_1D9C86480);
        v30 = v50;
      }

      else
      {
        v38 = v46;
        sub_1D99AE128(v37, v46, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D99AE128(v38, v51, type metadata accessor for VisualUnderstanding.ImageRegion);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_1D9AF8A90(0, v29[2] + 1, 1, v29);
        }

        v40 = v29[2];
        v39 = v29[3];
        if (v40 >= v39 >> 1)
        {
          v29 = sub_1D9AF8A90((v39 > 1), v40 + 1, 1, v29);
        }

        v29[2] = v40 + 1;
        v41 = v29 + v47 + v40 * v50;
        v30 = v50;
        sub_1D99AE128(v51, v41, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      v28 += v30;
      --v26;
    }

    while (v26);
  }

  else
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  return v29;
}

uint64_t sub_1D99AE104(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D99AE128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AE190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D99AE1F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AE274@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1D9C7D8DC();
  v36 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v33 - v10;
  v12 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v37 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  MEMORY[0x1EEE9AC00](v37);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [objc_opt_self() defaultManager];
  v35 = a1;
  v16 = sub_1D9C7DC4C();
  v17 = [v15 contentsAtPath_];

  if (v17)
  {
    v33[0] = v8;
    v33[1] = v6;
    v34 = a3;
    v18 = sub_1D9C7B87C();
    v20 = v19;

    v26 = sub_1D9B88EB8(v18, v20);
    v28 = v27;
    sub_1D99A5748(v18, v20);

    v29 = Data.inflate(algorithm:)(0, v26, v28);
    v31 = v30;
    sub_1D99A5748(v26, v28);
    v40 = v29;
    v41 = v31;
    v39 = 0;
    memset(v38, 0, sizeof(v38));
    sub_1D99AF2FC(v29, v31);
    sub_1D9C7D43C();
    sub_1D99AF350();
    sub_1D9C7D67C();
    sub_1D99A5748(v29, v31);
    return sub_1D99AF3A8(v14, v34);
  }

  else
  {

    static Logger.argos.getter(v11);

    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v38[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_1D9A0E224(v35, a2, v38);
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load rich label threshold at path %s", v23, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA7405F0](v24, -1, -1, v25);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    (*(v36 + 8))(v11, v6);
    *a3 = MEMORY[0x1E69E7CC0];
    return sub_1D9C7D3BC();
  }
}

void *sub_1D99AE800()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_1D9C7D8DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [objc_opt_self() bundleForClass_];
  v9 = sub_1D9C7DC4C();
  v10 = sub_1D9C7DC4C();
  v11 = sub_1D9C7DC4C();
  v12 = [v8 pathForResource:v9 ofType:v10 inDirectory:v11];

  if (v12)
  {
    v13 = sub_1D9C7DC7C();
    v15 = v14;

    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v15;
    v16[4] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E0, &unk_1D9C858B0);
    swift_allocObject();
  }

  else
  {
    static Logger.argos.getter(v6);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D9962000, v17, v18, "Resource RichLabelThresholdConfig.lzfse not found in bundle RichLabelKV.", v19, 2u);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E0, &unk_1D9C858B0);
    swift_allocObject();
  }

  v1[2] = sub_1D9C1B65C();
  return v1;
}

unint64_t sub_1D99AEB00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9A43AD8(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

unint64_t sub_1D99AEB38(uint64_t a1, unint64_t a2, float a3)
{
  v6 = sub_1D9C7D8DC();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;

  v37 = a1;
  v12 = sub_1D9B14820(1uLL, a1, a2);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (!((v12 ^ v14) >> 14))
  {

LABEL_11:
    static Logger.argos.getter(v11);
    sub_1D9A3E0E0(v8);
    v27 = *(v38 + 8);
    v28 = v11;
    v29 = v39;
    v27(v28, v39);

    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E09C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v40 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1D9A0E224(v37, a2, &v40);
      _os_log_impl(&dword_1D9962000, v30, v31, "Rich label failed to convert KGID %s", v32, 0xCu);
      v34 = __swift_destroy_boxed_opaque_existential_0Tm(v33);
      MEMORY[0x1DA7405F0](v33, -1, -1, v34);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    v27(v8, v29);
    goto LABEL_14;
  }

  v19 = sub_1D9B140F8(v12, v14, v16, v18, 10);
  if ((v19 & 0x10000000000) != 0)
  {
    v19 = sub_1D99C6548(v12, v14, v16, v18, 10);
  }

  v20 = v19;

  if ((v20 & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  v21 = sub_1D9C19C14();

  if (!*(v21 + 16) || (v22 = sub_1D99EE164(v20), (v23 & 1) == 0))
  {

    if (a3 > 0.0)
    {
      v25 = 0;
      v26 = a3;
      return LODWORD(v26) | (v25 << 32);
    }

LABEL_14:
    v26 = 0.0;
    v25 = 1;
    return LODWORD(v26) | (v25 << 32);
  }

  v24 = *(*(v21 + 56) + 4 * v22);

  v25 = 0;
  v26 = v24 / 100.0;
  return LODWORD(v26) | (v25 << 32);
}

uint64_t sub_1D99AEE88()
{

  return swift_deallocClassInstance();
}

void *sub_1D99AEEE4(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1D9A43AD8(MEMORY[0x1E69E7CC0]);
  sub_1D99AE274(a1, a2, v10);
  v32 = v10;
  v12 = *v10;
  v13 = *(*v10 + 16);
  if (!v13)
  {
LABEL_16:
    sub_1D99AF234(v32, type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig);
    return v11;
  }

  v14 = 0;
  v33 = v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  while (v14 < *(v12 + 16))
  {
    v15 = v5;
    sub_1D99AF1D0(v33 + *(v5 + 72) * v14, v7);
    v17 = *v7;
    v16 = v7[1];
    sub_1D99AF234(v7, type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = v11;
    v19 = sub_1D99EE164(v17);
    v21 = v11[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      goto LABEL_18;
    }

    v25 = v20;
    if (v11[3] < v24)
    {
      sub_1D9C08330(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D99EE164(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

LABEL_11:
      v11 = v34;
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v29 = v19;
    sub_1D9C1378C();
    v19 = v29;
    v11 = v34;
    if (v25)
    {
LABEL_3:
      *(v11[7] + 4 * v19) = v16;
      goto LABEL_4;
    }

LABEL_12:
    v11[(v19 >> 6) + 8] |= 1 << v19;
    *(v11[6] + 4 * v19) = v17;
    *(v11[7] + 4 * v19) = v16;
    v27 = v11[2];
    v23 = __OFADD__(v27, 1);
    v28 = v27 + 1;
    if (v23)
    {
      goto LABEL_19;
    }

    v11[2] = v28;
LABEL_4:
    ++v14;
    v5 = v15;
    if (v13 == v14)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1D9C7E84C();
  __break(1u);
  return result;
}

void *sub_1D99AF19C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D99AEEE4(*(v1 + 16), *(v1 + 24));
  *a1 = result;
  return result;
}

uint64_t sub_1D99AF1D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThreshold(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D99AF234(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D99AF294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510E8, &qword_1D9C884F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D99AF2FC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_1D99AF350()
{
  result = qword_1EDD2ABF0[0];
  if (!qword_1EDD2ABF0[0])
  {
    type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD2ABF0);
  }

  return result;
}

uint64_t sub_1D99AF3A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_RichLabelThresholdConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1D99AF40C(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  v228 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51220, &unk_1D9C86480);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v192 = &v190 - v8;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v202 = &v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v190 - v13;
  v191 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v15 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v196 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v201 = &v190 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v199 = &v190 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v215 = (&v190 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v200 = &v190 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v198 = &v190 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v195 = &v190 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v208 = &v190 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v211 = &v190 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v214 = &v190 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v190 - v36);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F0, &qword_1D9C858F0);
  v38 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219);
  v209 = (&v190 - v39);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510F8, &qword_1D9C858F8);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v212 = &v190 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v221 = &v190 - v43;
  v234[0] = 0x6C46206573726150;
  v234[1] = 0xEA0000000000776FLL;
  v234[2] = "VI: Region Merging";
  v234[3] = 18;
  v235 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v194 = sub_1D9AFD4B8(v234, a4);

  type metadata accessor for RegionMergingProcessor();
  v44 = *a2;
  v233 = a2[1];
  v232 = v44;
  sub_1D9A508A4(v228, &v232, *(*&v227 + 16), a3);
  v232.n128_u64[0] = v45;
  v197 = v45;

  sub_1D99B0B3C(&v232);
  v46 = 0;
  v47 = MEMORY[0x1E69E7CD0];
  v231 = MEMORY[0x1E69E7CD0];
  v226 = v232.n128_f64[0];
  v48 = *(v232.n128_u64[0] + 16);
  v218 = (v38 + 56);
  v217 = (v38 + 48);
  v193 = v10;
  v213 = (v10 + 8);
  v210 = MEMORY[0x1E69E7CC0];
  *&v49 = 136315394;
  v206 = v49;
  v205 = v15;
  v207 = v9;
  v50 = v14;
  v51 = v212;
  v216 = v48;
  v204 = a3;
  v203 = v14;
  while (1)
  {
    v52 = (v47 + 56);
    v53 = v221;
    while (1)
    {
      if (v46 == v48)
      {
        v54 = 1;
        v222 = v48;
        v55 = v219;
      }

      else
      {
        v55 = v219;
        if ((v46 & 0x8000000000000000) != 0)
        {
          goto LABEL_99;
        }

        if (v46 >= *(*&v226 + 16))
        {
          goto LABEL_100;
        }

        v56 = v46 + 1;
        v57 = *&v226 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v46;
        v58 = *(v219 + 48);
        v59 = v209;
        *v209 = v46;
        sub_1D99B1BBC(v57, v59 + v58);
        v60 = v59;
        v51 = v212;
        sub_1D99B1C20(v60, v212, &qword_1ECB510F0, &qword_1D9C858F0);
        v54 = 0;
        v222 = v56;
        v53 = v221;
      }

      (*v218)(v51, v54, 1, v55);
      sub_1D99B1C20(v51, v53, &qword_1ECB510F8, &qword_1D9C858F8);
      if ((*v217)(v53, 1, v55) == 1)
      {

        v117 = v197;
        v118 = *(v197 + 16);
        v52 = v200;
        v119 = v198;
        if (v118)
        {
          v120 = 0;
          while (1)
          {
            if (v120 >= *(v117 + 16))
            {
              goto LABEL_101;
            }

            sub_1D99B1BBC(v117 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + v15[9] * v120, v119);
            if (*(v119 + 104))
            {
              break;
            }

            ++v120;
            sub_1D99B1C88(v119);
            if (v118 == v120)
            {
              goto LABEL_50;
            }
          }

          v122 = v192;
          sub_1D99B1CE4(v119, v192);
          v121 = 0;
        }

        else
        {
LABEL_50:

          v121 = 1;
          v122 = v192;
        }

        v123 = v191;
        (v15[7])(v122, v121, 1, v191);

        v124 = (v15[6])(v122, 1, v123) == 1;
        v125 = v193;
        v126 = v122;
        if (v124)
        {
          sub_1D99B1D48(v122);
          v15 = v210;
          goto LABEL_95;
        }

        v127 = v195;
        sub_1D99B1CE4(v126, v195);
        sub_1D99B1BBC(v127, v52);
        v128 = v210;
        v129 = v210[2];
        if (!v129)
        {

          v15 = MEMORY[0x1E69E7CC0];
LABEL_91:
          swift_beginAccess();
          sub_1D99B1BBC(v52, v196);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_104;
          }

          goto LABEL_92;
        }

        *&v130 = *(a3 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20)) + 36;
        v223 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v131 = v128 + v223;
        swift_beginAccess();
        swift_beginAccess();
        v132 = v15[9];
        v220 = COERCE_DOUBLE(0x80000001D9CA3A40);
        v15 = MEMORY[0x1E69E7CC0];
        v221 = (v125 + 16);
        v133 = v202;
        v134 = v199;
        v224 = v130;
        v222 = v132;
        while (1)
        {
          v137 = v215;
          sub_1D99B1BBC(v131, v215);
          v138 = *v52;
          v139 = v52[1];
          v140 = v52[2];
          v141 = v52[3];
          v142 = *(v137 + 1);
          v228 = *v137;
          v143 = *(v137 + 2);
          v144 = *(v137 + 3);
          v244.origin.x = v138;
          v244.origin.y = v139;
          v244.size.width = v140;
          v244.size.height = v141;
          Width = CGRectGetWidth(v244);
          v226 = v138;
          v245.origin.x = v138;
          v146 = v139;
          v147 = *&v228;
          v245.origin.y = v146;
          v245.size.width = v140;
          v245.size.height = v141;
          v148 = Width * CGRectGetHeight(v245);
          v246.origin.x = v147;
          v246.origin.y = v142;
          v246.size.width = v143;
          v246.size.height = v144;
          v227 = CGRectGetWidth(v246);
          v247.origin.x = v147;
          v247.origin.y = v142;
          v247.size.width = v143;
          v247.size.height = v144;
          Height = CGRectGetHeight(v247);
          v150 = 0.0;
          v225 = v148;
          if (v148 > 0.0)
          {
            v151 = v227 * Height;
            if (v227 * Height > 0.0)
            {
              v248.origin.x = v226;
              v248.origin.y = v146;
              v248.size.width = v140;
              v248.size.height = v141;
              v253.origin.x = v147;
              v253.origin.y = v142;
              v253.size.width = v143;
              v253.size.height = v144;
              v249 = CGRectIntersection(v248, v253);
              x = v249.origin.x;
              y = v249.origin.y;
              v154 = v249.size.width;
              v155 = v249.size.height;
              IsNull = CGRectIsNull(v249);
              v150 = 0.0;
              if (!IsNull)
              {
                v250.origin.x = x;
                v250.origin.y = y;
                v250.size.width = v154;
                v250.size.height = v155;
                v157 = CGRectGetWidth(v250);
                v251.origin.x = x;
                v251.origin.y = y;
                v251.size.width = v154;
                v251.size.height = v155;
                v158 = CGRectGetHeight(v251);
                v150 = v157 * v158 / (v225 + v151 - v157 * v158);
              }
            }
          }

          if (**&v130 >= v150)
          {
            sub_1D99B1BBC(v215, v201);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v15 = sub_1D9AF8A90(0, v15[2] + 1, 1, v15);
            }

            v165 = v15[2];
            v164 = v15[3];
            if (v165 >= v164 >> 1)
            {
              v15 = sub_1D9AF8A90((v164 > 1), v165 + 1, 1, v15);
            }

            sub_1D99B1C88(v215);
            v15[2] = v165 + 1;
            sub_1D99B1CE4(v201, v15 + v223 + v165 * v132);
            v133 = v202;
            goto LABEL_59;
          }

          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
LABEL_85:
            v170 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v170 = qword_1EDD354D8;
            }

            goto LABEL_87;
          }

          v159 = [objc_opt_self() mainBundle];
          v160 = [v159 bundleIdentifier];

          if (v160)
          {
            v161 = sub_1D9C7DC7C();
            v163 = v162;

            if (v161 == 0xD00000000000002BLL && *&v220 == v163)
            {

LABEL_78:
              v167 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v167 = &off_1ECB51BA8;
              }

              goto LABEL_82;
            }

            v166 = sub_1D9C7E7DC();

            if (v166)
            {
              goto LABEL_78;
            }
          }

          v167 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v167 = &qword_1EDD355A8;
          }

LABEL_82:
          v168 = *(*v167 + 32);

          v169 = sub_1D9C7DC4C();
          LODWORD(v168) = [v168 BOOLForKey_];

          v133 = v202;
          if (!v168)
          {
            goto LABEL_85;
          }

          v170 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v170 = qword_1EDD2C990;
          }

LABEL_87:
          v171 = __swift_project_value_buffer(v9, v170);
          (*v221)(v133, v171, v9);
          sub_1D99B1BBC(v215, v134);
          v172 = sub_1D9C7D8BC();
          v173 = sub_1D9C7E09C();
          if (os_log_type_enabled(v172, v173))
          {
            v174 = swift_slowAlloc();
            v175 = swift_slowAlloc();
            v229 = v175;
            *v174 = v206;
            v176 = *(v134 + 16);
            v232 = *v134;
            v233 = v176;
            v177 = NormalizedRect.loggingDescription.getter();
            v179 = v178;
            sub_1D99B1C88(v199);
            v180 = sub_1D9A0E224(v177, v179, &v229);

            *(v174 + 4) = v180;
            *(v174 + 12) = 2080;
            v181 = *(v200 + 1);
            v232 = *v200;
            v233 = v181;
            v52 = v200;
            v182 = NormalizedRect.loggingDescription.getter();
            v184 = sub_1D9A0E224(v182, v183, &v229);

            *(v174 + 14) = v184;
            v134 = v199;
            _os_log_impl(&dword_1D9962000, v172, v173, "Merge from %s to %s", v174, 0x16u);
            swift_arrayDestroy();
            v185 = v175;
            v133 = v202;
            MEMORY[0x1DA7405F0](v185, -1, -1);
            v186 = v174;
            v9 = v207;
            MEMORY[0x1DA7405F0](v186, -1, -1);
          }

          else
          {

            sub_1D99B1C88(v134);
          }

          (*v213)(v133, v9);
          v130 = v224;
          v135 = v214;
          v136 = v215;
          sub_1D9B66D50(v215, v52, v214);
          sub_1D99B1C88(v136);
          sub_1D99B1DB0(v135, v52);
          v132 = v222;
LABEL_59:
          v131 += v132;
          if (!--v129)
          {

            goto LABEL_91;
          }
        }
      }

      v61 = v53;
      v62 = *v53;
      sub_1D99B1CE4(v61 + *(v55 + 48), v37);
      swift_beginAccess();
      if (v37[13])
      {
        goto LABEL_3;
      }

      if (!*(v47 + 16))
      {
        break;
      }

      v63 = sub_1D9C7E8CC();
      v64 = -1 << *(v47 + 32);
      v65 = v63 & ~v64;
      if (((*(v52 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
      {
        break;
      }

      v66 = ~v64;
      while (*(*(v47 + 48) + 8 * v65) != v62)
      {
        v65 = (v65 + 1) & v66;
        if (((*(v52 + ((v65 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v65) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_3:
      sub_1D99B1C88(v37);
      v53 = v221;
      v46 = v222;
      v48 = v216;
    }

LABEL_16:
    *&v67 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_102;
    }

    v68 = v226;
    v52 = *(*&v226 + 16);
    if (v52 < *&v67)
    {
      goto LABEL_103;
    }

    if (*&v67 != v52)
    {
      break;
    }

LABEL_19:
    sub_1D99B1BBC(v37, v208);
    v69 = v210;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_1D9AF8A90(0, v69[2] + 1, 1, v69);
    }

    v71 = v69[2];
    v70 = v69[3];
    v51 = v212;
    if (v71 >= v70 >> 1)
    {
      v69 = sub_1D9AF8A90((v70 > 1), v71 + 1, 1, v69);
    }

    v69[2] = v71 + 1;
    v72 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v210 = v69;
    sub_1D99B1CE4(v208, v69 + v72 + v15[9] * v71);
    sub_1D99B1C88(v37);
    v47 = v231;
    v46 = v222;
    v48 = v216;
  }

  v228 = *&v226 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v73 = v62 + 1;
  *&v227 = v62 + 1;
  while (v73 < v52)
  {
    if ((*&v67 & 0x8000000000000000) != 0)
    {
      goto LABEL_97;
    }

    if (v73 >= *(*&v68 + 16))
    {
      goto LABEL_98;
    }

    v76 = v228 + v15[9] * v73;
    if ((*(v76 + 104) & 1) == 0)
    {
      v77 = v231;
      if (*(v231 + 16) && (v78 = sub_1D9C7E8CC(), v67 = v227, v79 = -1 << *(v77 + 32), v80 = v78 & ~v79, ((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) != 0))
      {
        v81 = ~v79;
        while (*(*(v77 + 48) + 8 * v80) != v73)
        {
          v80 = (v80 + 1) & v81;
          if (((*(v77 + 56 + ((v80 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v80) & 1) == 0)
          {
            goto LABEL_37;
          }
        }
      }

      else
      {
LABEL_37:
        v82 = *v37;
        v83 = v37[1];
        v84 = v37[2];
        v85 = v37[3];
        v86 = *(v76 + 8);
        v225 = *v76;
        v87 = *(v76 + 16);
        v88 = *(v76 + 24);
        v236.origin.x = v82;
        v236.origin.y = v83;
        v236.size.width = v84;
        v236.size.height = v85;
        v89 = CGRectGetWidth(v236);
        v223 = *&v82;
        v237.origin.x = v82;
        v90 = v83;
        v91 = v225;
        v237.origin.y = v90;
        v237.size.width = v84;
        v237.size.height = v85;
        v92 = v89 * CGRectGetHeight(v237);
        v238.origin.x = v91;
        v238.origin.y = v86;
        v238.size.width = v87;
        v238.size.height = v88;
        v224 = CGRectGetWidth(v238);
        v239.origin.x = v91;
        v239.origin.y = v86;
        v239.size.width = v87;
        v239.size.height = v88;
        v93 = CGRectGetHeight(v239);
        if (v92 <= 0.0 || (v94 = v224 * v93, v94 <= 0.0))
        {
          v99 = 0.0;
        }

        else
        {
          v220 = v94;
          v224 = v92;
          *&v240.origin.x = v223;
          v240.origin.y = v90;
          v240.size.width = v84;
          v240.size.height = v85;
          v252.origin.x = v91;
          v252.origin.y = v86;
          v252.size.width = v87;
          v252.size.height = v88;
          v241 = CGRectIntersection(v240, v252);
          v95 = v241.origin.x;
          v96 = v241.origin.y;
          v97 = v241.size.width;
          v98 = v241.size.height;
          v99 = 0.0;
          if (!CGRectIsNull(v241))
          {
            v242.origin.x = v95;
            v242.origin.y = v96;
            v242.size.width = v97;
            v242.size.height = v98;
            v100 = CGRectGetWidth(v242);
            v243.origin.x = v95;
            v243.origin.y = v96;
            v243.size.width = v97;
            v243.size.height = v98;
            v101 = CGRectGetHeight(v243);
            v99 = v100 * v101 / (v224 + v220 - v100 * v101);
          }
        }

        v102 = *(a3 + *(type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0) + 20));
        swift_beginAccess();
        v67 = v227;
        if (*(v102 + 32) < v99)
        {
          sub_1D9B91F34(&v232, v73);
          static Logger.argos.getter(v50);

          v103 = v50;
          v104 = sub_1D9C7D8BC();
          v105 = sub_1D9C7E09C();

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            v230 = v107;
            *v106 = v206;
            v232 = *v76;
            v233 = *(v76 + 16);
            v108 = NormalizedRect.loggingDescription.getter();
            v110 = sub_1D9A0E224(v108, v109, &v230);

            *(v106 + 4) = v110;
            *(v106 + 12) = 2080;
            v111 = *(v37 + 1);
            v232 = *v37;
            v233 = v111;
            v112 = NormalizedRect.loggingDescription.getter();
            v114 = sub_1D9A0E224(v112, v113, &v230);

            *(v106 + 14) = v114;
            v9 = v207;
            _os_log_impl(&dword_1D9962000, v104, v105, "Merge from %s to %s", v106, 0x16u);
            swift_arrayDestroy();
            v115 = v107;
            a3 = v204;
            MEMORY[0x1DA7405F0](v115, -1, -1);
            v116 = v106;
            v15 = v205;
            MEMORY[0x1DA7405F0](v116, -1, -1);

            v50 = v203;
            (*v213)(v203, v9);
          }

          else
          {

            (*v213)(v103, v9);
            v50 = v103;
          }

          v74 = v211;
          sub_1D99B1BBC(v76, v211);
          v75 = v214;
          sub_1D9B66D50(v74, v37, v214);
          sub_1D99B1C88(v74);
          sub_1D99B1DB0(v75, v37);
          v68 = v226;
          v67 = v227;
        }
      }
    }

    if (++v73 == v52)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  v15 = sub_1D9AF8A90(0, v15[2] + 1, 1, v15);
LABEL_92:
  v188 = v15[2];
  v187 = v15[3];
  if (v188 >= v187 >> 1)
  {
    v15 = sub_1D9AF8A90((v187 > 1), v188 + 1, 1, v15);
  }

  sub_1D99B1C88(v195);
  v15[2] = v188 + 1;
  sub_1D99B1CE4(v196, v15 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + v205[9] * v188);
  sub_1D99B1C88(v52);
LABEL_95:
  sub_1D9AFCCA4();

  return v15;
}