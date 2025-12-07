CFDictionaryRef CreateNamedValue(const char *cStr, const char *a2, __CFArray *a3)
{
  keys[3] = *MEMORY[0x277D85DE8];
  memset(keys, 0, 24);
  values = 0;
  cf = 0;
  v12 = 0;
  v9 = 0;
  v5 = MEMORY[0x277CBECE8];
  if (cStr)
  {
    keys[0] = @"Name";
    values = CFStringCreateWithCString(*MEMORY[0x277CBECE8], cStr, 0x8000100u);
    v6 = 1;
    LOBYTE(v9) = 1;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a2)
  {
LABEL_3:
    keys[v6] = @"Value";
    *(&values + v6) = CFStringCreateWithCString(*v5, a2, 0x8000100u);
    *(&v9 | v6++) = 1;
  }

LABEL_4:
  if (a3)
  {
    keys[v6] = @"List";
    *(&values + v6++) = a3;
  }

  else if (!v6)
  {
    return 0;
  }

  v7 = CFDictionaryCreate(*v5, keys, &values, v6, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (v9 == 1)
  {
    CFRelease(values);
  }

  if (HIBYTE(v9) == 1)
  {
    CFRelease(cf);
  }

  return v7;
}

void ReleaseNamedValue(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

const __CFDictionary *Name(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Name", &value);
    return value;
  }

  return result;
}

const __CFDictionary *Value(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *List(const __CFDictionary *result)
{
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void ReleaseNamedValues(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void ClearNamedValues(CFMutableArrayRef theArray)
{
  if (theArray)
  {
    CFArrayRemoveAllValues(theArray);
  }
}

void AppendNamedValue(CFMutableArrayRef theArray, const void *value)
{
  if (theArray)
  {
    CFArrayAppendValue(theArray, value);
  }
}

const __CFArray *CountNamedValues(const __CFArray *theArray)
{
  if (theArray)
  {
    return CFArrayGetCount(theArray);
  }

  return theArray;
}

const __CFArray *GetNamedValue(const __CFArray *result, int a2)
{
  if (result)
  {
    return CFArrayGetValueAtIndex(result, a2);
  }

  return result;
}

void NamedValue::NamedValue(NamedValue *this)
{
  *this = 0;
}

{
  *this = 0;
}

void NamedValue::NamedValue(NamedValue *this, const char *a2, const char *a3, __CFArray *a4)
{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

{
  *this = 0;
  NamedValue::Set(this, a2, a3, a4);
}

CFDictionaryRef NamedValue::Set(const void **this, const char *cStr, const char *a3, __CFArray *a4)
{
  v8 = *this;
  if (v8)
  {
    CFRelease(v8);
  }

  result = CreateNamedValue(cStr, a3, a4);
  *this = result;
  return result;
}

void NamedValue::~NamedValue(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValue::Name(Name *this)
{
  v1 = *this;
  value = 0;
  if (v1)
  {
    CFDictionaryGetValueIfPresent(v1, @"Name", &value);
  }
}

const __CFDictionary *NamedValue::Value(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"Value", &value);
    return value;
  }

  return result;
}

const __CFDictionary *NamedValue::List(const __CFDictionary **this)
{
  result = *this;
  value = 0;
  if (result)
  {
    CFDictionaryGetValueIfPresent(result, @"List", &value);
    return value;
  }

  return result;
}

void NamedValues::NamedValues(NamedValues *this)
{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

{
  *this = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
}

void NamedValues::~NamedValues(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void NamedValues::push_back(__CFArray **this, const void **a2)
{
  v2 = *this;
  if (v2)
  {
    CFArrayAppendValue(v2, *a2);
  }
}

const __CFArray *NamedValues::size(const __CFArray **this)
{
  result = *this;
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

void NamedValues::clear(__CFArray **this)
{
  v1 = *this;
  if (v1)
  {
    CFArrayRemoveAllValues(v1);
  }
}

H16ISP::H16ISPThreadReadySyncer *H16ISP::H16ISPThreadReadySyncer::H16ISPThreadReadySyncer(H16ISP::H16ISPThreadReadySyncer *this)
{
  pthread_mutex_init(this, 0);
  pthread_cond_init((this + 64), 0);
  pthread_mutex_lock(this);
  return this;
}

uint64_t H16ISP::H16ISPThreadReadySyncer::signalAndUnlock(H16ISP::H16ISPThreadReadySyncer *this)
{
  pthread_cond_signal((this + 64));

  return pthread_mutex_unlock(this);
}

uint64_t FigMotionCalculateAdjustedFocusPosition(float a1, float a2, int *a3)
{
  v3 = *a3 - (a2 * a1);
  if (v3 >= 0.0)
  {
    if (v3 <= 255.0)
    {
      v4 = (v3 + 0.5);
    }

    else
    {
      v4 = 255;
    }
  }

  else
  {
    v4 = 0;
  }

  *a3 = v4;
  return 0;
}

uint64_t FigMotionGetGravityZ(const __CFDictionary *a1, float *a2)
{
  if (!a1)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4E18]);
  if (!Value)
  {
    FigMotionGetGravityZ();
    return 0;
  }

  v4 = Value;
  Length = CFDataGetLength(Value);
  if (Length <= 7)
  {
    FigMotionGetGravityZ();
  }

  else
  {
    v6 = Length;
    BytePtr = CFDataGetBytePtr(v4);
    if (BytePtr)
    {
      if (v6 == 40 * *(BytePtr + 1) + 8)
      {
        if (!*BytePtr)
        {
          goto LABEL_7;
        }

        FigMotionGetGravityZ();
      }

      else
      {
        FigMotionGetGravityZ();
      }
    }

    else
    {
      FigMotionGetGravityZ();
    }
  }

  BytePtr = v14;
LABEL_7:
  v8 = *(BytePtr + 1);
  if (v8 < 1)
  {
    v10 = 0.0;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v9 = (BytePtr + 44);
    v10 = 0.0;
    v11 = *(BytePtr + 1);
    do
    {
      v12 = *v9;
      v9 += 10;
      v10 = v10 + (v12 * 0.000015259);
      --v11;
    }

    while (v11);
  }

  v10 = v10 / v8;
LABEL_11:
  *a2 = v10;
  return 0;
}

uint64_t FigMotionComputeLensPositionScalingFactor(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float *a6)
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 16);
  v34.origin = *MEMORY[0x277CBF3A0];
  v34.size = v7;
  if (a1)
  {
    if (a6)
    {
      v9 = a5;
      v10 = a4;
      v11 = a3;
      v12 = a2;
      FigMotionGetSensorValidCropRect(a1, &v34);
      if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5318]))
      {
        v14 = v6[1];
        *buf = *v6;
        *&buf[16] = v14;
        FigCFDictionaryGetCGRectIfPresent();
        if (*&buf[16] > 0.0 && *&buf[24] > 0.0)
        {
          v11 = *&buf[24];
          v12 = *&buf[16];
        }
      }

      width = v34.size.width;
      if (width <= 0.0)
      {
        FigMotionComputeLensPositionScalingFactor();
      }

      else if (v10 <= 0)
      {
        FigMotionComputeLensPositionScalingFactor();
      }

      else
      {
        v16 = v12 / (v10 * width);
        *a6 = v16;
        height = v34.size.height;
        if (height <= 0.0)
        {
          FigMotionComputeLensPositionScalingFactor();
        }

        else if (v9 <= 0)
        {
          FigMotionComputeLensPositionScalingFactor();
        }

        else
        {
          v18 = v11 / (v9 * height);
          v19 = fabsf((v16 / v18) + -1.0);
          if (v19 > 0.01)
          {
            valuePtr = 0.0;
            Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4CF0]);
            if (Value)
            {
              CFNumberGetValue(Value, kCFNumberCGFloatType, &valuePtr);
            }

            v32 = 0.0;
            v21 = CFDictionaryGetValue(a1, *MEMORY[0x277CF4D00]);
            if (v21)
            {
              CFNumberGetValue(v21, kCFNumberDoubleType, &v32);
              v22 = v32;
            }

            else
            {
              v22 = 0.0;
            }

            v23 = valuePtr > 2.39;
            if (valuePtr >= 2.41)
            {
              v23 = 0;
            }

            v24 = v22 > 1.649;
            if (v22 >= 1.651)
            {
              v24 = 0;
            }

            v25 = v23 && v24;
            if (CFDictionaryGetValue(a1, *MEMORY[0x277CF5020]))
            {
              v26 = FigCFEqual() != 0;
            }

            else
            {
              v26 = 0;
            }

            if (((v25 | v26) & 1) == 0)
            {
              mach_absolute_time();
              v27 = FigHostTimeToNanoseconds();
              if ((v27 - FigMotionComputeLensPositionScalingFactor(__CFDictionary const*,int,int,int,int,float *)::lastLogTime) >= 0x3B9ACA00)
              {
                v28 = v27;
                v29 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
                if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
                {
                  v29 = os_log_create("com.apple.isp", "general");
                  GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v29;
                }

                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  v31 = *a6;
                  *buf = 136315906;
                  *&buf[4] = "FigMotionComputeLensPositionScalingFactor";
                  *&buf[12] = 2048;
                  *&buf[14] = (v19 * 100.0);
                  *&buf[22] = 2048;
                  *&buf[24] = v31;
                  v36 = 2048;
                  v37 = v18;
                  _os_log_error_impl(&dword_250805000, v29, OS_LOG_TYPE_ERROR, "%s - LensPositionScalingFactor disagrees by %.2f%% in horizontal (%f) and vertical (%f)\n", buf, 0x2Au);
                }

                FigMotionComputeLensPositionScalingFactor(__CFDictionary const*,int,int,int,int,float *)::lastLogTime = v28;
              }
            }
          }
        }
      }
    }

    else
    {
      FigMotionComputeLensPositionScalingFactor();
    }
  }

  else
  {
    FigMotionComputeLensPositionScalingFactor();
  }

  return 0;
}

void FigMotionGetSensorValidCropRect(const __CFDictionary *a1, CGRect *a2)
{
  if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5178]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v3 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v3 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v3;
      }

      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v3, v4, v5);
      }
    }
  }

  else if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5300]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v6 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v6 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v6;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v6, v7, v8);
      }
    }
  }

  else if (CFDictionaryContainsKey(a1, *MEMORY[0x277CF5080]))
  {
    if (!FigCFDictionaryGetCGRectIfPresent())
    {
      v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
      if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
      {
        v9 = os_log_create("com.apple.isp", "general");
        GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v9;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        FigMotionGetSensorValidCropRect(v9, v10, v11);
      }
    }
  }

  else
  {
    v12 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v12 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v12;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      FigMotionGetSensorValidCropRect(v12, v13, v14);
    }
  }
}

uint64_t FigMotionCalculateAdjustedLensPosition(const __CFDictionary *a1, uint64_t a2, float *a3, float a4, float a5)
{
  valuePtr = 0;
  if (a1)
  {
    Value = CFDictionaryGetValue(a1, *MEMORY[0x277CF4B80]);
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
      v10 = valuePtr - (*(a2 + 40) * a4);
      if (v10 >= 0.0)
      {
        if (v10 <= 255.0)
        {
          v11 = (v10 + 0.5);
        }

        else
        {
          v11 = 255;
        }
      }

      else
      {
        v11 = 0;
      }

      valuePtr = v11;
      if (*(a2 + 16))
      {
        v12 = v11;
        v13 = *(a2 + 20) <= v11;
        v14 = 32;
        if (!v13)
        {
          v14 = 24;
        }

        v15 = *(a2 + v14);
        if (v13)
        {
          v16 = 36;
        }

        else
        {
          v16 = 28;
        }

        *a3 = (v15 + (*(a2 + v16) * v12)) * a5;
      }

      else
      {
        FigMotionCalculateAdjustedLensPosition();
      }
    }

    else
    {
      FigMotionCalculateAdjustedLensPosition();
    }
  }

  else
  {
    FigMotionCalculateAdjustedLensPosition();
  }

  return 0;
}

uint64_t FigMotionComputeAverageSpherePosition()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v53[1530] = *MEMORY[0x277D85DE8];
  v46 = 0;
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(v0, *MEMORY[0x277CF4C58]);
  if (!Value)
  {
    FigMotionComputeAverageSpherePosition(v53);
    return LODWORD(v53[0]);
  }

  CFNumberGetValue(Value, kCFNumberFloat64Type, &valuePtr);
  v7 = CFDictionaryGetValue(v5, *MEMORY[0x277CF4D60]);
  if (!v7)
  {
    FigMotionComputeAverageSpherePosition(v53);
    return LODWORD(v53[0]);
  }

  CFNumberGetValue(v7, kCFNumberSInt32Type, &v46);
  v8 = v46;
  v9 = valuePtr;
  *v2 = 0;
  result = CFDictionaryGetValue(v5, *MEMORY[0x277CF4E00]);
  if (!result)
  {
    return result;
  }

  v11 = result;
  Length = CFDataGetLength(result);
  if (Length <= 7)
  {
    FigMotionComputeAverageSpherePosition();
LABEL_55:
    v15 = *&v53[0];
    goto LABEL_9;
  }

  v13 = Length;
  BytePtr = CFDataGetBytePtr(v11);
  if (*BytePtr >= 2u)
  {
    FigMotionComputeAverageSpherePosition();
    goto LABEL_55;
  }

  v15 = BytePtr;
  v16 = 16;
  if (*BytePtr == 1)
  {
    v16 = 24;
  }

  if (v13 != v16 * *(BytePtr + 1) + 8)
  {
    FigMotionComputeAverageSpherePosition();
    goto LABEL_55;
  }

LABEL_9:
  v17 = *(v15 + 1);
  if (v17 >= 510)
  {
    v18 = 510;
  }

  else
  {
    v18 = v17;
  }

  if (v17 >= 511)
  {
    v19 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v19 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v19;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      FigMotionComputeAverageSpherePosition(v18, v19);
    }
  }

  if (*v15 == 1)
  {
    if (v17 >= 1)
    {
      v26 = v15 + 16;
      v27 = &v53[1];
      v44 = vdupq_n_s32(0x3B800000u);
      v28 = v18;
      do
      {
        v29 = FigHostTimeToNanoseconds();
        CMTimeMake(&time, v29, 1000000000);
        *&v27[-1].i64[1] = CMTimeGetSeconds(&time);
        v30 = *v26;
        v26 = (v26 + 24);
        *v27 = vmulq_f32(vcvtq_f32_s32(v30), v44);
        v27 = (v27 + 24);
        --v28;
      }

      while (v28);
      goto LABEL_26;
    }

    return 0;
  }

  if (*v15)
  {
    v38 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v38 = os_log_create("com.apple.isp", "general");
      GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v38;
    }

    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      FigMotionComputeAverageSpherePosition(v15, v38);
    }

    return 4294954515;
  }

  if (v17 < 1)
  {
    return 0;
  }

  v20 = (v15 + 16);
  v21 = &v53[2];
  v22 = vdup_n_s32(0x3B800000u);
  v23 = v18;
  do
  {
    v24 = FigHostTimeToNanoseconds();
    CMTimeMake(&time, v24, 1000000000);
    *(v21 - 2) = CMTimeGetSeconds(&time);
    v25 = *v20;
    v20 += 2;
    *(v21 - 1) = vmul_f32(vcvt_f32_s32(v25), v22);
    *v21 = 0.0;
    v21 += 3;
    --v23;
  }

  while (v23);
LABEL_26:
  v31 = 0;
  v32 = v4 + v9 * -0.5;
  v33 = v8 / 1000000.0 + v32;
  v34 = &v53[1];
  v35 = v18;
  do
  {
    v36 = *&v34[-1];
    if (v36 >= v32 && v36 <= v33)
    {
      v36 = COERCE_DOUBLE(vadd_f32(*v34, *v2));
      *v2 = v36;
      ++v31;
    }

    v34 += 3;
    --v35;
  }

  while (v35);
  if (v31)
  {
    result = 0;
    *&v36 = v31;
    *v2 = vdiv_f32(*v2, vdup_lane_s32(*&v36, 0));
    return result;
  }

  v39 = v53[0];
  v40 = v18 - 1;
  if (v53[0] <= v33)
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  *v2 = *&v53[3 * v41 + 1];
  v42 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
  if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
  {
    v42 = os_log_create("com.apple.isp", "general");
    GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog = v42;
  }

  result = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v43 = v53[3 * v40];
    LODWORD(time.value) = 136316162;
    *(&time.value + 4) = "FigMotionComputeAverageSpherePositionForTimes";
    LOWORD(time.flags) = 2048;
    *(&time.flags + 2) = v32;
    HIWORD(time.epoch) = 2048;
    v48 = v8 / 1000000.0 + v32;
    v49 = 2048;
    v50 = v39;
    v51 = 2048;
    v52 = v43;
    _os_log_error_impl(&dword_250805000, v42, OS_LOG_TYPE_ERROR, "%s - Could not find Hall samples in given time range [%f, %f]. Use the closest Hall sample in actual time range [%f, %f].\n", &time, 0x34u);
    return 0;
  }

  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

BOOL OUTLINED_FUNCTION_8()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

BOOL OUTLINED_FUNCTION_9()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

CFTypeRef H16ISP::CreateFormattedMetadata(_DWORD *a1)
{
  v99[20] = *MEMORY[0x277D85DE8];
  NamedValues::NamedValues(&cf);
  NamedValues::NamedValues(&v84);
  *__str = 20;
  *__str = (*a1 >> 21) & 0x3FF;
  *__str = (*a1 >> 11) & 0x3FF;
  *__str = (*a1 >> 1) & 0x3FF;
  v3 = a1[4];
  if (v3 >= 1)
  {
    v4 = 0;
    v81 = *(MEMORY[0x277D82818] + 64);
    v82 = *MEMORY[0x277D82818];
    v80 = *(MEMORY[0x277D82818] + 72);
    while (1)
    {
      v5 = a1[v4 + 5];
      if (v5)
      {
        break;
      }

LABEL_153:
      if (++v4 == v3)
      {
        goto LABEL_154;
      }
    }

    NamedValues::NamedValues(&v83);
    v7 = (a1 + v5);
    v8 = "Shared AiCam";
    switch(v4)
    {
      case 0:
        *__str = "unknown";
        v9 = *(v7 + 4);
        if (v9 > 1)
        {
          if (v9 == 2)
          {
            v10 = "blue";
          }

          else
          {
            if (v9 != 3)
            {
              goto LABEL_110;
            }

            v10 = "green-blue";
          }
        }

        else if (v9)
        {
          if (v9 != 1)
          {
            goto LABEL_110;
          }

          v10 = "red";
        }

        else
        {
          v10 = "green-red";
        }

        *__str = v10;
LABEL_110:
        __p[0] = "unknown";
        v66 = v7[14];
        if (v66 == 2)
        {
          v67 = "binning 1/4";
        }

        else if (v66 == 1)
        {
          v67 = "binning 1/2";
        }

        else
        {
          if (v7[14])
          {
            goto LABEL_117;
          }

          v67 = "binning disabled";
        }

        __p[0] = v67;
LABEL_117:
        *v93 = "unknown";
        v68 = v7[15];
        if (v68 == 2)
        {
          v69 = "binning 1/4";
        }

        else if (v68 == 1)
        {
          v69 = "binning 1/2";
        }

        else
        {
          if (v7[15])
          {
            goto LABEL_124;
          }

          v69 = "binning disabled";
        }

        *v93 = v69;
LABEL_124:
        *v92 = "unknown";
        v70 = v7[34];
        if (v70 > 1)
        {
          if (v70 == 2)
          {
            v71 = "raw12";
          }

          else
          {
            if (v70 != 3)
            {
              goto LABEL_134;
            }

            v71 = "raw14";
          }
        }

        else if (v7[34])
        {
          if (v70 != 1)
          {
            goto LABEL_134;
          }

          v71 = "raw10";
        }

        else
        {
          v71 = "raw8";
        }

        *v92 = v71;
LABEL_134:
        *v89 = "unknown";
        if (v7[35] == 1)
        {
          v72 = "unpacked";
        }

        else
        {
          if (v7[35])
          {
LABEL_139:
            *&v88 = 1016;
            LODWORD(v88) = *(v7 + 43);
            LODWORD(v88) = *(v7 + 44);
            LODWORD(v88) = *(v7 + 45);
            LODWORD(v88) = *(v7 + 46);
            LODWORD(v88) = *(v7 + 47);
            v88 = vcvtd_n_f64_u32(*(v7 + 12), 8uLL);
            v88 = vcvtd_n_f64_u32(v7[32], 8uLL);
            LODWORD(v88) = *(v7 + 72);
            LODWORD(v88) = *(v7 + 73);
            v88 = COERCE_DOUBLE(bswap64(*(v7 + 37)));
            *&v88 = v7 + 48;
            *&v88 = v7 + 64;
            *&v88 = v7 + 80;
            *&v88 = v7 + 96;
            v73 = *(v7 + 80);
            v74 = *(v7 + 81);
            v86 = bswap32(v74);
            v87 = bswap32(v73);
            LODWORD(v88) = v73;
            LODWORD(v88) = BYTE1(v73);
            LODWORD(v88) = BYTE2(v73);
            LODWORD(v88) = HIBYTE(v73) & 0xF;
            LODWORD(v88) = v73 >> 28;
            LODWORD(v88) = HIBYTE(v74);
            LODWORD(v88) = BYTE2(v74);
            LODWORD(v88) = BYTE1(v74);
            LODWORD(v88) = v74;
            LODWORD(v88) = v7[168];
            v88 = vcvtd_n_f64_s32(v7[231], 0xFuLL) + v7[168];
            LODWORD(v88) = *(v7 + 338);
            LODWORD(v88) = *(v7 + 339);
            LODWORD(v88) = *(v7 + 460);
            LODWORD(v88) = *(v7 + 461);
            LODWORD(v88) = v7[229];
            LODWORD(v88) = v7[246];
            LODWORD(v88) = v7[247];
            LODWORD(v88) = v7[248];
            LODWORD(v88) = v7[249];
            LODWORD(v88) = *(v7 + 500);
            LODWORD(v88) = *(v7 + 501);
            LODWORD(v88) = v7[254];
            LODWORD(v88) = v7[255];
            LODWORD(v88) = v7[256];
            LODWORD(v88) = v7[257];
            LODWORD(v88) = *(v7 + 129);
            LODWORD(v88) = *(v7 + 130);
            LODWORD(v88) = *(v7 + 131);
            LODWORD(v88) = *(v7 + 132);
            LODWORD(v88) = *(v7 + 133);
            LODWORD(v88) = *(v7 + 134);
            LODWORD(v88) = *(v7 + 135);
            LODWORD(v88) = v7[272];
            LODWORD(v88) = v7[273];
            LODWORD(v88) = v7[282];
            LODWORD(v88) = v7[283];
            LODWORD(v88) = v7[284];
            LODWORD(v88) = v7[285];
            LODWORD(v88) = v7[286];
            LODWORD(v88) = v7[287];
            LODWORD(v88) = v7[288];
            LODWORD(v88) = v7[289];
            LODWORD(v88) = *(v7 + 145);
            LODWORD(v88) = *(v7 + 146);
            LODWORD(v88) = v7[294];
            LODWORD(v88) = *(v7 + 148);
            LODWORD(v88) = *(v7 + 149);
            LODWORD(v88) = *(v7 + 150);
            LODWORD(v88) = *(v7 + 604);
            LODWORD(v88) = *(v7 + 605);
            LODWORD(v88) = *(v7 + 152);
            LODWORD(v88) = *(v7 + 153);
            LODWORD(v88) = *(v7 + 154);
            LODWORD(v88) = v7[312];
            LODWORD(v88) = v7[313];
            LODWORD(v88) = v7[314];
            LODWORD(v88) = v7[315];
            LODWORD(v88) = *(v7 + 155);
            LODWORD(v88) = *(v7 + 632);
            LODWORD(v88) = v7[317];
            LODWORD(v88) = *(v7 + 159);
            LODWORD(v88) = *(v7 + 162);
            LODWORD(v88) = v7[326];
            LODWORD(v88) = v7[327];
            LODWORD(v88) = v7[328];
            LODWORD(v88) = v7[329];
            LODWORD(v88) = *(v7 + 660);
            LODWORD(v88) = *(v7 + 661);
            LODWORD(v88) = *(v7 + 167);
            LODWORD(v88) = *(v7 + 168);
            LODWORD(v88) = v7[338];
            LODWORD(v88) = v7[339];
            LODWORD(v88) = v7[340];
            LODWORD(v88) = v7[341];
            LODWORD(v88) = *(v7 + 173);
            LODWORD(v88) = v7[348];
            LODWORD(v88) = v7[349];
            LODWORD(v88) = v7[350];
            LODWORD(v88) = v7[351];
            LODWORD(v88) = v7[352];
            LODWORD(v88) = v7[353];
            LODWORD(v88) = v7[354];
            LODWORD(v88) = v7[355];
            LODWORD(v88) = v7[356];
            LODWORD(v88) = v7[357];
            LODWORD(v88) = v7[358];
            LODWORD(v88) = v7[359];
            LODWORD(v88) = v7[360];
            LODWORD(v88) = v7[361];
            LODWORD(v88) = v7[362];
            LODWORD(v88) = v7[363];
            LODWORD(v88) = v7[364];
            LODWORD(v88) = v7[365];
            LODWORD(v88) = v7[366];
            LODWORD(v88) = v7[367];
            LODWORD(v88) = v7[368];
            LODWORD(v88) = v7[369];
            LODWORD(v88) = v7[370];
            LODWORD(v88) = v7[371];
            LODWORD(v88) = v7[372];
            LODWORD(v88) = v7[373];
            LODWORD(v88) = *(v7 + 748);
            LODWORD(v88) = *(v7 + 749);
            LODWORD(v88) = *(v7 + 750);
            LODWORD(v88) = v7[377];
            LODWORD(v88) = *(v7 + 804);
            LODWORD(v88) = *(v7 + 805);
            v8 = "Shared Input";
            goto LABEL_151;
          }

          v72 = "packed";
        }

        *v89 = v72;
        goto LABEL_139;
      case 1:
        v25 = "unknown";
        *__str = "unknown";
        v26 = *v7;
        if (v26 == 2)
        {
          v27 = "R'G'B'";
        }

        else if (v26 == 1)
        {
          v27 = "Y'CbCr 4:2:2";
        }

        else
        {
          if (*v7)
          {
            goto LABEL_99;
          }

          v27 = "Y'CbCr 4:2:0";
        }

        *__str = v27;
LABEL_99:
        __p[0] = "unknown";
        v64 = v7[1];
        if (v64 <= 1)
        {
          if (v7[1])
          {
            if (v64 != 1)
            {
              goto LABEL_144;
            }

            v65 = "StatsBlock";
          }

          else
          {
            v65 = "BackEnd";
          }
        }

        else
        {
          switch(v64)
          {
            case 2u:
              v65 = "RawProcBlock";
              break;
            case 3u:
              v65 = "RGBProcBlock";
              break;
            case 4u:
              v65 = "YCCProcBlock";
              break;
            default:
              goto LABEL_144;
          }
        }

        __p[0] = v65;
LABEL_144:
        v75 = "RGBY";
        if (!*(v7 + 9))
        {
          v75 = "RGGB";
        }

        *v93 = v75;
        v76 = *(v7 + 1028);
        if (v76 == 1)
        {
          v25 = "log2";
        }

        else if (!v76)
        {
          v25 = "linear";
        }

        *v92 = v25;
        *v89 = 4876;
        NamedValues::NamedValues(v89);
        v88 = vcvtd_n_f64_u32(*(v7 + 1027), 4uLL);
        LODWORD(v88) = *(v7 + 4138);
        LODWORD(v88) = *(v7 + 4139);
        LODWORD(v88) = *(v7 + 1035);
        LODWORD(v88) = *(v7 + 1036);
        LODWORD(v88) = *(v7 + 1037);
        LODWORD(v88) = *(v7 + 1038);
        LODWORD(v88) = *(v7 + 1039);
        LODWORD(v88) = *(v7 + 1040);
        LODWORD(v88) = *(v7 + 1041);
        LODWORD(v88) = *(v7 + 1042);
        LODWORD(v88) = *(v7 + 1043);
        LODWORD(v88) = *(v7 + 1044);
        LODWORD(v88) = *(v7 + 1045);
        LODWORD(v88) = *(v7 + 1046);
        LODWORD(v88) = *(v7 + 4188);
        NamedValues::~NamedValues(v89);
        v8 = "Shared Output";
LABEL_151:
LABEL_152:
        NamedValues::~NamedValues(&v83);
        goto LABEL_153;
      case 2:
        *__str = 5856;
        *__str = vcvtd_n_f64_u32(v7[2], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 1313), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[4], 8uLL);
        *__str = v7[5];
        *__str = *(v7 + 13);
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 0x10uLL);
        *__str = *(v7 + 158);
        *__str = *(v7 + 1732);
        *__str = *(v7 + 434);
        *__str = v7[870];
        *__str = v7[871];
        *__str = v7[872];
        *__str = *(v7 + 437);
        *__str = *(v7 + 438);
        *__str = *(v7 + 439);
        *__str = *(v7 + 440);
        *__str = *(v7 + 441);
        *__str = *(v7 + 442);
        *__str = *(v7 + 443);
        *__str = *(v7 + 444);
        *__str = *(v7 + 445);
        *__str = *(v7 + 446);
        *__str = *(v7 + 447);
        *__str = *(v7 + 448);
        *__str = *(v7 + 449);
        *__str = *(v7 + 450);
        *__str = *(v7 + 451);
        *__str = *(v7 + 452);
        *__str = *(v7 + 453);
        *__str = *(v7 + 455);
        *__str = *(v7 + 456);
        *__str = *(v7 + 457);
        *__str = *(v7 + 458);
        *__str = *(v7 + 459);
        *__str = *(v7 + 460);
        *__str = *(v7 + 461);
        *__str = *(v7 + 462);
        *__str = *(v7 + 463);
        *__str = *(v7 + 479);
        *__str = *(v7 + 483);
        *__str = *(v7 + 484);
        *__str = *(v7 + 485);
        *__str = *(v7 + 486);
        *__str = *(v7 + 487);
        *__str = *(v7 + 488);
        *__str = *(v7 + 489);
        *__str = *(v7 + 490);
        *__str = *(v7 + 491);
        *__str = *(v7 + 492);
        *__str = *(v7 + 493);
        *__str = v7[988];
        *__str = v7[989];
        *__str = v7[990];
        *__str = v7[991];
        *__str = v7[992];
        *__str = *(v7 + 497);
        NamedValues::NamedValues(__str);
        LODWORD(__p[0]) = *(v7 + 592);
        LODWORD(__p[0]) = *(v7 + 593);
        NamedValues::NamedValues(__p);
        *v93 = *(v7 + 405);
        *v93 = *(v7 + 406);
        *v93 = *(v7 + 407);
        *v93 = *(v7 + 408);
        *v93 = *(v7 + 409);
        *v93 = *(v7 + 410);
        *v93 = *(v7 + 411);
        *v93 = *(v7 + 412);
        *v93 = *(v7 + 413);
        *v93 = *(v7 + 414);
        *v93 = *(v7 + 415);
        *v93 = *(v7 + 416);
        NamedValues::~NamedValues(__p);
        NamedValues::~NamedValues(__str);
        v8 = "Shared Auto Exposure";
        goto LABEL_151;
      case 3:
        *__str = 3768;
        NamedValues::NamedValues(v92);
        *__str = v7[80];
        *__str = v7[81];
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[1292];
        *__str = v7[1293];
        *__str = *(v7 + 2716);
        *__str = v7[1360];
        *__str = v7[1361];
        *__str = *(v7 + 682);
        *__str = *(v7 + 2732);
        *__str = *(v7 + 2733);
        *__str = *(v7 + 2734);
        *__str = *(v7 + 684);
        *__str = *(v7 + 685);
        *__str = v7[1372];
        *__str = v7[1373];
        *__str = v7[1390];
        *__str = v7[1391];
        *__str = v7[1392];
        *__str = v7[1393];
        *__str = v7[1394];
        *__str = *(v7 + 775);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__str);
        MEMORY[0x253061A20](&v95, *(v7 + 840));
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](__str, __p);
        if (v91 >= 0)
        {
          v40 = __p;
        }

        else
        {
          v40 = __p[0];
        }

        NamedValue::NamedValue(v93, "roiType", v40, 0);
        if (v91 < 0)
        {
          operator delete(__p[0]);
        }

        NamedValues::push_back(&v83, v93);
        NamedValue::~NamedValue(v93);
        *__str = v82;
        *&__str[*(v82 - 24)] = v81;
        *&v95 = v80;
        *(&v95 + 1) = MEMORY[0x277D82878] + 16;
        if (v98 < 0)
        {
          operator delete(v97);
        }

        *(&v95 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(v96);
        std::iostream::~basic_iostream();
        MEMORY[0x253061AE0](v99);
        *__str = v7[1695];
        NamedValues::~NamedValues(v92);
        v8 = "Shared Auto Focus";
        goto LABEL_151;
      case 4:
        *__str = 1356;
        *__str = vcvtd_n_f64_u32(v7[21], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[22], 0xEuLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 13), 0xCuLL);
        *__str = v7[73];
        *__str = v7[86];
        *__str = v7[87];
        *__str = v7[88];
        *__str = *(v7 + 178);
        *__str = *(v7 + 179);
        *__str = *(v7 + 180);
        *__str = v7[91];
        *__str = v7[92];
        *__str = v7[93];
        *__str = v7[94];
        *__str = v7[95];
        *__str = v7[96];
        *__str = v7[97];
        *__str = v7[98];
        *__str = v7[99];
        *__str = *(v7 + 68);
        *__str = *(v7 + 98);
        *__str = v7[230];
        *__str = vcvtd_n_f64_u32(v7[138], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[139], 0xEuLL);
        *__str = *(v7 + 70);
        v8 = "Shared Auto White Balance";
        goto LABEL_151;
      case 5:
        *__str = 24;
        v8 = "Adaptive Tone Curve";
        goto LABEL_151;
      case 6:
        *__str = 112;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        *__str = v7[10];
        v8 = "Shared LTM";
        goto LABEL_151;
      case 7:
        *__str = 612;
        *__str = vcvtd_n_f64_u32(*(v7 + 5), 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 10), 8uLL);
        *__str = *(v7 + 60);
        *__str = *(v7 + 61);
        *__str = *(v7 + 62);
        *__str = *(v7 + 63);
        *__str = *(v7 + 64);
        *__str = *(v7 + 65);
        *__str = *(v7 + 66);
        *__str = *(v7 + 67);
        *__str = *(v7 + 68);
        *__str = *(v7 + 69);
        *__str = *(v7 + 70);
        *__str = *(v7 + 71);
        *__str = *(v7 + 72);
        *__str = *(v7 + 73);
        *__str = *(v7 + 74);
        *__str = *(v7 + 75);
        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = vcvtd_n_f64_u32(v7[56], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[57], 0xEuLL);
        *__str = vcvtd_n_f64_u32(v7[58], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[59], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[60], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[61], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[62], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[63], 0xCuLL);
        *__str = *(v7 + 128);
        *__str = *(v7 + 129);
        *__str = *(v7 + 132);
        *__str = *(v7 + 133);
        *__str = v7[67];
        *__str = v7[68];
        *__str = v7[69];
        *__str = v7[76];
        *__str = v7[77];
        *__str = *(v7 + 160);
        *__str = *(v7 + 161);
        *__str = *(v7 + 162);
        *__str = *(v7 + 41);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 46);
        *__str = *(v7 + 47);
        *__str = *(v7 + 48);
        *__str = *(v7 + 49);
        *__str = *(v7 + 50);
        *__str = *(v7 + 51);
        *__str = *(v7 + 52);
        *__str = *(v7 + 53);
        *__str = v7[108];
        *__str = v7[109];
        *__str = *(v7 + 243);
        *__str = v7[149];
        *__str = v7[154];
        *__str = v7[155];
        *__str = *(v7 + 78);
        *__str = *(v7 + 79);
        *__str = *(v7 + 80);
        *__str = *(v7 + 81);
        *__str = *(v7 + 91);
        *__str = *(v7 + 92);
        *__str = *(v7 + 93);
        *__str = *(v7 + 94);
        v15 = 0;
        v16 = v7 + 122;
        v17 = a1 + v5 + 250;
        do
        {
          NamedValues::NamedValues(__p);
          v18 = &v16[8 * v15];
          *v93 = *v18;
          *v93 = *(v18 + 4);
          v19 = 0;
          v20 = v17;
          do
          {
            NamedValues::NamedValues(v93);
            *v92 = *(v20 - 1);
            *v92 = *v20;
            snprintf(__str, 0x40uLL, "strength[%d]", v19);
            NamedValues::~NamedValues(v93);
            ++v19;
            v20 += 2;
          }

          while (v19 != 5);
          snprintf(__str, 0x40uLL, "mbnrConfig[%d]", v15);
          NamedValues::~NamedValues(__p);
          ++v15;
          v17 += 16;
        }

        while (v15 != 3);
        v8 = "Shared RAW Proc";
        goto LABEL_151;
      case 8:
        *__str = 776;
        *__str = v7[2];
        *__str = v7[275];
        *__str = *(v7 + 552);
        *__str = *(v7 + 553);
        *__str = *(v7 + 554);
        *__str = *(v7 + 555);
        *__str = *(v7 + 568);
        *__str = *(v7 + 640);
        v8 = "Shared RGB Proc";
        goto LABEL_151;
      case 9:
        *__str = 192;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 11);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[79];
        *__str = v7[80];
        *__str = *(v7 + 162);
        *__str = v7[82];
        *__str = v7[83];
        *__str = v7[84];
        *__str = *(v7 + 43);
        *__str = *(v7 + 44);
        *__str = *(v7 + 45);
        *__str = *(v7 + 184);
        v8 = "Shared YCC Proc";
        goto LABEL_151;
      case 10:
        *__str = 4;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BES Proc";
        goto LABEL_151;
      case 11:
        *__str = 20132;
        *__str = *(v7 + 324);
        *__str = *(v7 + 325);
        *__str = *(v7 + 326);
        *__str = v7[164];
        *__str = v7[165];
        *__str = v7[166];
        *__str = v7[167];
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = *(v7 + 326);
        *__str = v7[170];
        *__str = *(v7 + 342);
        *__str = *(v7 + 343);
        *__str = v7[174];
        *__str = v7[175];
        *__str = v7[176];
        *__str = v7[177];
        *__str = v7[178];
        *__str = v7[179];
        *__str = v7[180];
        *__str = v7[181];
        LOWORD(v28) = v7[186];
        LOWORD(v29) = v7[187];
        LOWORD(v30) = v7[188];
        LOWORD(v32) = v7[189];
        LOWORD(v33) = v7[190];
        LOWORD(v34) = v7[191];
        *__str = v7[191];
        *__str = v7[192];
        *__str = v7[198];
        *__str = v7[199];
        *__str = v7[200];
        *__str = v7[201];
        *__str = v7[204];
        *__str = v7[205];
        *__str = v7[212];
        *__str = v7[213];
        *__str = v7[214];
        *__str = v7[215];
        *__str = v7[216];
        *__str = v7[217];
        *__str = v7[340];
        *__str = v7[341];
        *__str = v7[342];
        *__str = v7[343];
        *__str = v7[344];
        *__str = v7[345];
        *__str = *(v7 + 4071);
        *__str = *(v7 + 4072);
        v8 = "Shared Stats";
        goto LABEL_151;
      case 12:
        *__str = 0x10000;
        v8 = "Shared Debug";
        goto LABEL_151;
      case 13:
        *__str = 61040;
        v8 = "Shared OIS";
        goto LABEL_151;
      case 14:
        *__str = 65608;
        v8 = "Shared FocusPixel";
        goto LABEL_151;
      case 15:
        *__str = 8222;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared LocalHist";
        goto LABEL_151;
      case 16:
        *__str = 65540;
        v8 = "Shared VIS";
        goto LABEL_151;
      case 17:
        *__str = 16388;
        v8 = "Shared TNR";
        goto LABEL_151;
      case 18:
        *__str = 64;
        *__str = v7[8];
        *__str = v7[9];
        *__str = v7[10];
        *__str = v7[11];
        *__str = v7[12];
        *__str = v7[13];
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[16];
        *__str = v7[17];
        *__str = v7[28];
        *__str = *(v7 + 58);
        *__str = *(v7 + 59);
        *__str = *(v7 + 60);
        v8 = "Shared System";
        goto LABEL_151;
      case 19:
        *__str = 74192;
        *__str = v7[36805];
        *__str = v7[36806];
        *__str = v7[36807];
        *__str = v7[36808];
        *__str = v7[36810];
        *__str = v7[36812];
        *__str = v7[36813];
        *__str = v7[36814];
        *__str = v7[37073];
        *__str = v7[37074];
        *__str = *(v7 + 18538);
        *__str = *(v7 + 18539);
        *__str = v7[37080];
        *__str = v7[37081];
        v8 = "Shared LTM LUTs";
        goto LABEL_151;
      case 20:
        *__str = 1736;
        v8 = "Shared VIS Info";
        goto LABEL_151;
      case 21:
        *__str = 11008;
        v8 = "Shared Motion Info";
        goto LABEL_151;
      case 22:
        *__str = 4144;
        v8 = "Shared AF FocusMap";
        goto LABEL_151;
      case 23:
        *__str = 644;
        *__str = *v7;
        v8 = "Shared DMA Config";
        goto LABEL_151;
      case 24:
        *__str = 19904;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = v7[12];
        *__str = v7[13];
        v8 = "Shared HITH";
        goto LABEL_151;
      case 25:
        *__str = 77528;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 19381);
        v8 = "Shared APS";
        goto LABEL_151;
      case 26:
        *__str = 786600;
        v8 = "Shared SideBand";
        goto LABEL_151;
      case 27:
        *__str = 33012;
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared VisionProc";
        goto LABEL_151;
      case 28:
        *__str = 116;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[14];
        *__str = v7[15];
        *__str = vcvtd_n_f64_s32(*(v7 + 8), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 9), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 10), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 11), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 12), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 13), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 16), 5uLL);
        *__str = *(v7 + 18);
        *__str = v7[34];
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        v8 = "Shared Projector";
        goto LABEL_151;
      case 29:
        *__str = 456;
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared BodyDetector";
        goto LABEL_151;
      case 30:
        *__str = 156;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[6];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[9];
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 12);
        *__str = *(v7 + 13);
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        *__str = v7[34];
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 22);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        v8 = "Shared Distortion";
        goto LABEL_151;
      case 31:
        *__str = 1024;
        v8 = "BodyDetector Debug";
        goto LABEL_151;
      case 32:
        *__str = 1453212;
        *__str = *v7;
        *__str = v7[1];
        v8 = "PDE Debug";
        goto LABEL_151;
      case 33:
        *__str = 44;
        *__str = *v7;
        *__str = v7[1];
        *__str = vcvtd_n_f64_s32(*(v7 + 3), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 4), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 5), 5uLL);
        *__str = vcvtd_n_f64_s32(*(v7 + 6), 5uLL);
        *__str = *(v7 + 7);
        *__str = *(v7 + 8);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        v8 = "Shared Powersupply";
        goto LABEL_151;
      case 34:
        *__str = 2284;
        *__str = *(v7 + 570);
        *__str = 0;
        if (*(v7 + 570))
        {
          v62 = 0;
          v63 = v7;
          do
          {
            LODWORD(__p[0]) = *v63;
            LODWORD(__p[0]) = v63[1];
            LODWORD(__p[0]) = *(v63 + 1);
            LODWORD(__p[0]) = *(v63 + 2);
            LODWORD(__p[0]) = *(v63 + 3);
            LODWORD(__p[0]) = *(v63 + 4);
            LODWORD(__p[0]) = *(v63 + 5);
            LODWORD(__p[0]) = *(v63 + 6);
            LODWORD(__p[0]) = *(v63 + 7);
            LODWORD(__p[0]) = v63[16];
            LODWORD(__p[0]) = v63[17];
            LODWORD(__p[0]) = *(v63 + 9);
            LODWORD(__p[0]) = v63[20];
            LODWORD(__p[0]) = v63[21];
            LODWORD(__p[0]) = v63[22];
            LODWORD(__p[0]) = *(v63 + 164);
            LODWORD(__p[0]) = *(v63 + 51);
            LODWORD(__p[0]) = v63[24];
            LODWORD(__p[0]) = *(v63 + 13);
            LODWORD(__p[0]) = v63[28];
            LODWORD(__p[0]) = v63[29];
            LODWORD(__p[0]) = *(v63 + 15);
            LODWORD(__p[0]) = *(v63 + 16);
            LODWORD(__p[0]) = *(v63 + 17);
            LODWORD(__p[0]) = *(v63 + 18);
            LODWORD(__p[0]) = *(v63 + 19);
            LODWORD(__p[0]) = v63[40];
            LODWORD(__p[0]) = v63[327];
            *__str = ++v62;
            v63 += 380;
          }

          while (v62 < *(v7 + 570));
        }

        v8 = "Shared Multi Slave";
        goto LABEL_151;
      case 35:
        *__str = 10032;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = v7[2];
        v8 = "Shared FD DCN";
        goto LABEL_151;
      case 36:
        *__str = 4212;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 18) & 1;
        *__str = (*v7 >> 19) & 1;
        *__str = (*v7 >> 20) & 1;
        *__str = (*v7 >> 21) & 1;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        v8 = "Shared FID DCN";
        goto LABEL_151;
      case 37:
        *__str = 1036;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = v7[3];
        *__str = v7[4];
        *__str = v7[5];
        v8 = "Shared YCC Histogram";
        goto LABEL_151;
      case 38:
        *__str = 148024;
        *__str = *v7;
        v8 = "Shared FD DCN Debug";
        goto LABEL_151;
      case 39:
        *__str = 695440;
        *__str = *v7;
        v8 = "Shared FID DCN Debug";
        goto LABEL_151;
      case 40:
        *__str = 1788;
        *__str = *v7;
        *__str = HIWORD(*v7) & 1;
        *__str = (*v7 >> 17) & 1;
        *__str = *(v7 + 1);
        v8 = "Shared Attention";
        goto LABEL_151;
      case 41:
        *__str = 246036;
        *__str = *v7;
        v8 = "Shared Attention Debug";
        goto LABEL_151;
      case 42:
        *__str = 2945604;
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared IR PDP Debug";
        goto LABEL_151;
      case 43:
        *__str = 3848;
        *__str = *v7;
        *__str = v7[1];
        *__str = *(v7 + 1);
        v8 = "Shared MasterSlave AF";
        goto LABEL_151;
      case 44:
        *__str = 480;
        *__str = *v7;
        *__str = v7[1];
        *__str = v7[2];
        *__str = *(v7 + 2);
        *__str = v7[6];
        *__str = *(v7 + 6);
        *__str = v7[14];
        *__str = v7[15];
        *__str = v7[36];
        if (*(v7 + 91))
        {
          *__str = v7[186];
          *__str = v7[187];
          *__str = v7[208];
        }

        *__str = v7[38];
        *__str = v7[39];
        *__str = v7[40];
        *__str = v7[41];
        *__str = v7[7];
        *__str = v7[8];
        *__str = v7[42];
        *__str = *(v7 + 22);
        *__str = *(v7 + 23);
        *__str = *(v7 + 24);
        *__str = *(v7 + 25);
        *__str = *(v7 + 26);
        *__str = v7[37];
        v8 = "Shared PDE";
        goto LABEL_151;
      case 45:
        *__str = 134012;
        *__str = *v7;
        *__str = *(v7 + 9);
        *__str = *(v7 + 40);
        *__str = *(v7 + 49);
        *__str = *(v7 + 52);
        *__str = *(v7 + 212);
        *__str = *(v7 + 105);
        *__str = *(v7 + 824);
        *__str = *(v7 + 207);
        *__str = *(v7 + 208);
        *__str = *(v7 + 209);
        *__str = *(v7 + 210);
        *__str = *(v7 + 213);
        *__str = *(v7 + 215);
        *__str = *(v7 + 221);
        *__str = *(v7 + 222);
        *__str = *(v7 + 223);
        *__str = *(v7 + 224);
        *__str = *(v7 + 225);
        *__str = *(v7 + 226);
        *__str = *(v7 + 227);
        *__str = *(v7 + 912);
        *__str = v7[457];
        *__str = v7[458];
        *__str = v7[459];
        *__str = v7[460];
        *__str = v7[461];
        *__str = *(v7 + 940);
        *__str = *(v7 + 956);
        *__str = *(v7 + 957);
        *__str = *(v7 + 958);
        *__str = *(v7 + 959);
        *__str = *(v7 + 240);
        *__str = *(v7 + 964);
        *__str = *(v7 + 242);
        *__str = *(v7 + 243);
        *__str = *(v7 + 992);
        *__str = v7[497];
        *__str = *(v7 + 249);
        *__str = *(v7 + 250);
        *__str = v7[1182];
        *__str = *(v7 + 6052);
        *__str = *(v7 + 25556);
        *__str = *(v7 + 25557);
        *__str = *(v7 + 25558);
        *__str = *(v7 + 25559);
        *__str = *(v7 + 25560);
        *__str = *(v7 + 25561);
        *__str = *(v7 + 25562);
        *__str = *(v7 + 25563);
        *__str = *(v7 + 25564);
        *__str = *(v7 + 25565);
        *__str = *(v7 + 25566);
        *__str = *(v7 + 25567);
        *__str = *(v7 + 25568);
        *__str = *(v7 + 25569);
        *__str = *(v7 + 25570);
        *__str = *(v7 + 25571);
        *__str = *(v7 + 25572);
        *__str = *(v7 + 25573);
        *__str = *(v7 + 25574);
        *__str = *(v7 + 25575);
        *__str = *(v7 + 25656);
        *__str = *(v7 + 25664);
        *__str = *(v7 + 25665);
        *__str = *(v7 + 25666);
        *__str = *(v7 + 25667);
        *__str = *(v7 + 25668);
        *__str = *(v7 + 25669);
        *__str = *(v7 + 6422);
        *__str = *(v7 + 6711);
        *__str = *(v7 + 6985);
        *__str = *(v7 + 6986);
        *__str = *(v7 + 6987);
        *__str = *(v7 + 6988);
        *__str = *(v7 + 6994);
        *__str = *(v7 + 6995);
        *__str = *(v7 + 6997);
        *__str = *(v7 + 7000);
        *__str = *(v7 + 7005);
        *__str = *(v7 + 7014);
        *__str = *(v7 + 7015);
        *__str = *(v7 + 7020);
        *__str = *(v7 + 7021);
        *__str = *(v7 + 7025);
        *__str = *(v7 + 7026);
        *__str = *(v7 + 7027);
        *__str = *(v7 + 7028);
        *__str = *(v7 + 7534);
        *__str = *(v7 + 7535);
        v8 = "Shared CBAF Debug";
        goto LABEL_151;
      case 46:
        *__str = 131136;
        v8 = "Shared PDAFHW Debug";
        goto LABEL_151;
      case 47:
        *__str = 336;
        v8 = "Shared CRC Check";
        goto LABEL_151;
      case 48:
        *__str = 24;
        v8 = "Shared Calibration";
        goto LABEL_151;
      case 49:
        *__str = 32;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        v8 = "Shared Motion Stats";
        goto LABEL_151;
      case 50:
        *__str = 116;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 2);
        *__str = *(v7 + 3);
        v8 = "Shared APS Stats";
        goto LABEL_151;
      case 51:
        *__str = 256;
        *__str = *v7;
        *__str = *(v7 + 1);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        v8 = "Shared OIS Stats";
        goto LABEL_151;
      case 52:
        goto LABEL_151;
      case 53:
        v8 = "Shared AiCam Debug";
        goto LABEL_151;
      case 54:
        *__str = 64;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = v7[1];
        *__str = *(v7 + 3);
        *__str = vcvtd_n_f64_u32(v7[8], 8uLL);
        *__str = vcvtd_n_f64_u32(*(v7 + 9), 8uLL);
        *__str = vcvtd_n_f64_u32(v7[10], 8uLL);
        *__str = vcvtd_n_f64_u32(v7[11], 0xCuLL);
        *__str = vcvtd_n_f64_u32(v7[12], 0xAuLL);
        *__str = v7[25];
        *__str = v7[26];
        *__str = *(v7 + 60);
        *__str = *(v7 + 59);
        *__str = *(v7 + 61);
        v8 = "Shared SIFR";
        goto LABEL_151;
      case 55:
        *__str = *v7;
        *__str = *(v7 + 1);
        v8 = "Shared FPC";
        goto LABEL_151;
      case 56:
        *__str = *v7;
        *__str = v7[1];
        v8 = "Shared Reduced APS";
        goto LABEL_151;
      case 62:
        *__str = 300;
        *__str = *v7;
        *__str = *(v7 + 2);
        *__str = *(v7 + 9);
        *__str = *(v7 + 10);
        *__str = *(v7 + 4);
        *__str = *(v7 + 5);
        *__str = *(v7 + 6);
        *__str = *(v7 + 17);
        *__str = *(v7 + 18);
        *__str = *(v7 + 19);
        *__str = *(v7 + 44);
        *__str = *(v7 + 88);
        *__str = *(v7 + 89);
        *__str = *(v7 + 45);
        *__str = *(v7 + 13);
        *__str = *(v7 + 12);
        *__str = *(v7 + 1);
        *__str = *(v7 + 8);
        *__str = *(v7 + 20);
        *__str = *(v7 + 21);
        *__str = *(v7 + 26);
        *__str = *(v7 + 27);
        *__str = *(v7 + 28);
        *__str = *(v7 + 101);
        *__str = v7[23];
        *__str = *(v7 + 12);
        *__str = v7[26];
        *__str = *(v7 + 14);
        *__str = *(v7 + 15);
        v8 = "Shared Auto Focus Assist Debug";
        goto LABEL_151;
      case 69:
        memset(v96, 0, 32);
        *__str = 0u;
        v95 = 0u;
        NamedValues::NamedValues(__p);
        for (i = 0; i != 256; ++i)
        {
          snprintf(__str, 0x40uLL, "ch0[%03d]", i);
          *v93 = *&v7[2 * i];
        }

        NamedValues::NamedValues(v93);
        for (j = 0; j != 256; ++j)
        {
          snprintf(__str, 0x40uLL, "ch1[%03d]", j);
          *v92 = *&v7[2 * j + 512];
        }

        NamedValues::NamedValues(v92);
        v57 = 0;
        v58 = v7 + 1024;
        do
        {
          snprintf(__str, 0x40uLL, "ch2[%03d]", v57);
          *v89 = *&v58[2 * v57];
          ++v57;
        }

        while (v57 != 256);
        NamedValues::~NamedValues(v92);
        NamedValues::~NamedValues(v93);
        NamedValues::~NamedValues(__p);
        v8 = "Shared Stats BE Histogram";
        goto LABEL_151;
      case 75:
        *__str = *v7;
        *__str = *(v7 + 4);
        v8 = "Shared LTC Data";
        goto LABEL_151;
      case 78:
        *__str = 288;
        v8 = "Shared Depth to Position Debug";
        goto LABEL_151;
      default:
        goto LABEL_152;
    }
  }

LABEL_154:
  v78 = cf;
  CFRetain(cf);
  NamedValues::~NamedValues(&v84);
  NamedValues::~NamedValues(&cf);
  return v78;
}

void sub_250811650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, const void *a18, uint64_t a19, uint64_t a20, const void *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  NamedValues::~NamedValues(&a21);
  NamedValues::~NamedValues(&a16);
  NamedValues::~NamedValues(&a17);
  NamedValues::~NamedValues(&a18);
  _Unwind_Resume(a1);
}

void anonymous namespace::AppendMetadataList(__CFArray **this, NamedValues *a2, __CFArray **a3, NamedValues *a4)
{
  NamedValue::NamedValue(&v5, a2, 0, *a3);
  NamedValues::push_back(this, &v5);
  NamedValue::~NamedValue(&v5);
}

void sub_2508119C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  NamedValue::~NamedValue(va);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long>(__CFArray **a1, void *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x253061A40](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "size", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v15);
}

void sub_250811BAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned int>(__CFArray **a1, const char *a2, _DWORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x253061A30](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v22);
}

void sub_250811E4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned long long>(__CFArray **a1, const char *a2, void *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x253061A70](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v20);
}

void sub_2508120B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1)
{
  a1[22] = 0;
  v2 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v3 = a1 + 2;
  v4 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v5 = MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 24);
  v7 = *(MEMORY[0x277D82818] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  a1[1] = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, a1 + 3);
  v9 = MEMORY[0x277D82890] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  a1[2] = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  a1[16] = v2;
  a1[2] = v4;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), 24);
  return a1;
}

void sub_250812370(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x253061AE0](v1);
  _Unwind_Resume(a1);
}

void *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 24);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  *(a2 + v5) = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x253061AE0](a1 + 128);
  return a1;
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, int a2)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x253061A90](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a2;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_250812628(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void std::stringbuf::__init_buf_ptrs[abi:ne200100](uint64_t a1)
{
  *(a1 + 88) = 0;
  v2 = (a1 + 64);
  v3 = *(a1 + 87);
  if (v3 < 0)
  {
    v4 = *(a1 + 64);
    v5 = *(a1 + 72);
  }

  else
  {
    v4 = v2;
    v5 = *(a1 + 87);
  }

  v6 = *(a1 + 96);
  if ((v6 & 8) != 0)
  {
    *(a1 + 88) = v4 + v5;
    *(a1 + 16) = v4;
    *(a1 + 24) = v4;
    *(a1 + 32) = v4 + v5;
  }

  if ((v6 & 0x10) != 0)
  {
    *(a1 + 88) = v4 + v5;
    if ((v3 & 0x80000000) != 0)
    {
      v7 = (*(a1 + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    }

    else
    {
      v7 = 22;
    }

    std::string::resize(v2, v7, 0);
    v8 = *(a1 + 87);
    if (v8 < 0)
    {
      v8 = *(a1 + 72);
    }

    *(a1 + 40) = v4;
    *(a1 + 48) = v4;
    *(a1 + 56) = v4 + v8;
    if ((*(a1 + 96) & 3) != 0)
    {
      if (v5 >> 31)
      {
        v9 = ((v5 - 0x80000000) * 0x200000005uLL) >> 64;
        v10 = 0x7FFFFFFF * ((v9 + ((v5 - 0x80000000 - v9) >> 1)) >> 30);
        v4 = (v4 + v10 + 0x7FFFFFFF);
        v5 = v5 - v10 - 0x7FFFFFFF;
        *(a1 + 48) = v4;
      }

      if (v5)
      {
        *(a1 + 48) = v4 + v5;
      }
    }
  }
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_27969ED98, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x2530619E0](v13, a1);
  if (v13[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&v14);
      *(v6 + 36) = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v11 = a2 + a3;
    }

    else
    {
      v11 = a2;
    }

    if (!std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(v7, a2, v11, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x2530619F0](v13);
  return a1;
}

void sub_250812940(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x2530619F0](&a10, a2, a3, a4, a5, a6, a7, a8);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x250812920);
}

uint64_t std::__pad_and_output[abi:ne200100]<char,std::char_traits<char>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v18 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v18 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v18 < 0)
      {
        operator delete(__b);
      }

      if (v14 != v12)
      {
        return 0;
      }
    }

    v15 = a4 - a3;
    if (v15 < 1 || (*(*v6 + 96))(v6, a3, v15) == v15)
    {
      *(a5 + 24) = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_250812B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::stringbuf::view[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 96);
  if ((v1 & 0x10) != 0)
  {
    v3 = *(a1 + 48);
    if (*(a1 + 88) < v3)
    {
      *(a1 + 88) = v3;
    }

    return *(a1 + 40);
  }

  else if ((v1 & 8) != 0)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t anonymous namespace::AppendMetadataItem<char const*>(__CFArray **a1, const char *a2, const char **a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v14);
  v6 = *a3;
  v7 = strlen(v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v6, v7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v14, __p);
  if (v12 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  NamedValue::NamedValue(&v13, a2, v8, 0);
  if (v12 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v13);
  NamedValue::~NamedValue(&v13);
  v14[0] = *MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v9;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v19);
}

void sub_250812DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned short>(__CFArray **a1, const char *a2, _WORD *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x253061A60](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v22);
}

void sub_250813064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<unsigned char>(__CFArray **a1, const char *a2, _BYTE *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v18);
  v8 = "on";
  if (!*a3)
  {
    v8 = "off";
  }

  v9 = "no";
  if (*a3)
  {
    v9 = "yes";
  }

  if (a4 == 2)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if ((*a3 == 0) != (a4 == 2))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, v10, v11);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v18, __p);
  if (v16 >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  NamedValue::NamedValue(&v17, a2, v12, 0);
  if (v16 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v17);
  NamedValue::~NamedValue(&v17);
  v18[0] = *MEMORY[0x277D82818];
  v13 = *(MEMORY[0x277D82818] + 72);
  *(v18 + *(v18[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v19 = v13;
  v20 = MEMORY[0x277D82878] + 16;
  if (v22 < 0)
  {
    operator delete(v21[7].__locale_);
  }

  v20 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v23);
}

void sub_2508132CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<int>(__CFArray **a1, const char *a2, unsigned int *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v15);
  if (a4 == 1)
  {
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "0x", 2);
    *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 8;
  }

  else
  {
    v8 = &v16;
  }

  MEMORY[0x253061A20](v8, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v15, __p);
  if (v13 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  NamedValue::NamedValue(&v14, a2, v9, 0);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v14);
  NamedValue::~NamedValue(&v14);
  v15[0] = *MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v10;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v20);
}

void sub_250813534(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<double>(__CFArray **a1, const char *a2, double *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v12);
  MEMORY[0x253061A00](&v13, *a3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v12, __p);
  if (v10 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  NamedValue::NamedValue(&v11, a2, v6, 0);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v11);
  NamedValue::~NamedValue(&v11);
  v12[0] = *MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 72);
  *(v12 + *(v12[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v13 = v7;
  v14 = MEMORY[0x277D82878] + 16;
  if (v16 < 0)
  {
    operator delete(v15[7].__locale_);
  }

  v14 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v17);
}

void sub_25081374C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<short>(__CFArray **a1, const char *a2, __int16 *a3, int a4)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v17);
  if (a4 == 1)
  {
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "0x", 2);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
LABEL_12:
    MEMORY[0x253061A50](v10, *a3);
    goto LABEL_13;
  }

  if (a4 != 2)
  {
    v10 = &v18;
    goto LABEL_12;
  }

  if (*a3)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  if (*a3)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, v8, v9);
LABEL_13:
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v17, __p);
  if (v15 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  NamedValue::NamedValue(&v16, a2, v11, 0);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v16);
  NamedValue::~NamedValue(&v16);
  v17[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v17 + *(v17[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v18 = v12;
  v19 = MEMORY[0x277D82878] + 16;
  if (v21 < 0)
  {
    operator delete(v20[7].__locale_);
  }

  v19 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v22);
}

void sub_2508139EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<char [4]>(__CFArray **a1, const char *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "...", 3);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, a2, v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v15);
}

void sub_250813C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<float>(__CFArray **a1, const char *a2, float *a3)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
  std::ostream::operator<<();
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v11, __p);
  if (v9 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  NamedValue::NamedValue(&v10, a2, v5, 0);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v10);
  NamedValue::~NamedValue(&v10);
  v11[0] = *MEMORY[0x277D82818];
  v6 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11[2] = v6;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v15);
}

void sub_250813E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem<eCIspFocusingMethod>(__CFArray **a1, unsigned int *a2)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v10);
  MEMORY[0x253061A20](&v11, *a2);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v10, __p);
  if (v8 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  NamedValue::NamedValue(&v9, "lastFocusingMethod", v4, 0);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(a1, &v9);
  NamedValue::~NamedValue(&v9);
  v10[0] = *MEMORY[0x277D82818];
  v5 = *(MEMORY[0x277D82818] + 72);
  *(v10 + *(v10[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v11 = v5;
  v12 = MEMORY[0x277D82878] + 16;
  if (v14 < 0)
  {
    operator delete(v13[7].__locale_);
  }

  v12 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v13);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v15);
}

void sub_250814030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::AppendMetadataItem(__CFArray **this, NamedValues *a2, const char *a3, double a4, double a5, double a6)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v21);
  *(&v24[0].__locale_ + *(v22 - 24)) = 5;
  v11 = MEMORY[0x253061A00](&v22, a4);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  v13 = MEMORY[0x253061A00](v12, a5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
  MEMORY[0x253061A00](v14, a6);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v21, __p);
  if (v19 >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  NamedValue::NamedValue(&v20, a2, v15, 0);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  NamedValues::push_back(this, &v20);
  NamedValue::~NamedValue(&v20);
  v21[0] = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(v21 + *(v21[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v22 = v16;
  v23 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(v24[7].__locale_);
  }

  v23 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return MEMORY[0x253061AE0](&v26);
}

void sub_2508142B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, const void *a16, __int16 a17, char a18, char a19)
{
  NamedValue::~NamedValue(&a16);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a17);
  _Unwind_Resume(a1);
}

void ISPStopwatch::ISPStopwatch(ISPStopwatch *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  mach_timebase_info(this + 2);
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  mach_timebase_info(this + 2);
}

uint64_t ISPStopwatch::start(uint64_t this)
{
  if (!*(this + 8))
  {
    v1 = this;
    this = mach_absolute_time();
    *(v1 + 8) = this;
  }

  return this;
}

void *ISPStopwatch::stop(void *this)
{
  v1 = this[1];
  if (v1)
  {
    v2 = this;
    this = mach_absolute_time();
    v3 = -v1;
    if (this < v1)
    {
      v3 = ~v1;
    }

    *v2 += this + v3;
    v2[1] = 0;
  }

  return this;
}

uint64_t ISPStopwatch::getDeltaTicks(ISPStopwatch *this, uint64_t a2)
{
  v3 = mach_absolute_time();
  v4 = -a2;
  if (v3 < a2)
  {
    v4 = ~a2;
  }

  return v4 + v3;
}

void *ISPStopwatch::reset(void *this)
{
  *this = 0;
  this[1] = 0;
  return this;
}

uint64_t ISPStopwatch::getTicks(ISPStopwatch *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = mach_absolute_time();
    v4 = -v2;
    if (v3 < v2)
    {
      v4 = ~v2;
    }

    v1 += v3 + v4;
  }

  return v1;
}

unint64_t ISPStopwatch::getNs(ISPStopwatch *this)
{
  v2 = *this;
  v3 = *(this + 1);
  if (v3)
  {
    v4 = mach_absolute_time();
    v5 = -v3;
    if (v4 < v3)
    {
      v5 = ~v3;
    }

    v2 += v4 + v5;
  }

  return v2 * *(this + 4) / *(this + 5);
}

void H16ISP::H16ISPAppendNamedValuesToCFString(__CFString *this, __CFString *a2, const __CFArray *a3, const __CFArray *a4)
{
  v22 = a2;
  v25 = *MEMORY[0x277D85DE8];
  Count = CFArrayGetCount(a3);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
      v8 = Name(ValueAtIndex);
      v9 = Value(ValueAtIndex);
      v10 = List(ValueAtIndex);
      if (v8)
      {
        v11 = CFStringGetCString(v8, buffer, 256, 0x8000100u) != 0;
        if (v9)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v11 = 0;
        if (v9)
        {
LABEL_5:
          if (CFStringGetCString(v9, v23, 256, 0x8000100u))
          {
            v12 = v23;
          }

          else
          {
            v12 = "";
          }

          goto LABEL_10;
        }
      }

      v12 = "";
LABEL_10:
      if (v11)
      {
        v13 = buffer;
      }

      else
      {
        v13 = "";
      }

      v14 = v22;
      if (v22 >= 1)
      {
        do
        {
          CFStringAppendCString(this, "    ", 0x8000100u);
          --v14;
        }

        while (v14);
      }

      if (v10)
      {
        if (a4)
        {
          CFStringAppendCString(this, "<name>", 0x8000100u);
          CFStringAppendCString(this, v13, 0x8000100u);
          CFStringAppendCString(this, "</name>", 0x8000100u);
          v13 = "<value>";
        }

        CFStringAppendCString(this, v13, 0x8000100u);
        CFStringAppendCString(this, "\n", 0x8000100u);
        H16ISP::H16ISPAppendNamedValuesToCFString(this, (v22 + 1), v10, a4);
        if (!v22)
        {
          CFStringAppendCString(this, "\n", 0x8000100u);
        }

        v15 = "</value>\n";
        if ((a4 & 1) == 0)
        {
          continue;
        }

        goto LABEL_34;
      }

      if (v8)
      {
        Length = CFStringGetLength(v8);
        if (Length <= 38)
        {
          v17 = 38 - Length;
        }

        else
        {
          v17 = 0;
        }

        if (!a4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v17 = 38;
        if (!a4)
        {
          goto LABEL_28;
        }
      }

      CFStringAppendCString(this, "<name>", 0x8000100u);
      CFStringAppendCString(this, v13, 0x8000100u);
      v13 = "</name>";
LABEL_28:
      CFStringAppendCString(this, v13, 0x8000100u);
      if (v17 >= 1)
      {
        do
        {
          CFStringAppendCString(this, " ", 0x8000100u);
          --v17;
        }

        while (v17);
      }

      CFStringAppendCString(this, "\t", 0x8000100u);
      v18 = this;
      if (a4)
      {
        CFStringAppendCString(this, "<value>", 0x8000100u);
        CFStringAppendCString(this, v12, 0x8000100u);
        v18 = this;
        v19 = "</value>";
      }

      else
      {
        v19 = v12;
      }

      CFStringAppendCString(v18, v19, 0x8000100u);
      v15 = "\n";
LABEL_34:
      CFStringAppendCString(this, v15, 0x8000100u);
    }
  }
}

__CFString *H16ISP::H16ISPCreateFrameMetaDataAsCFString(_DWORD *a1, const __CFArray *a2)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (!Mutable)
  {
    return @"Apple H16 MetaData\n";
  }

  v5 = Mutable;
  CFStringAppendCString(Mutable, "Apple H16 Metadata\n", 0x8000100u);
  if (!a1)
  {
    v8 = "No additional frame metadata.\n";
LABEL_8:
    CFStringAppendCString(v5, v8, 0x8000100u);
    return v5;
  }

  FormattedMetadata = H16ISP::CreateFormattedMetadata(a1);
  if (!FormattedMetadata)
  {
    v8 = "Frame metadata could not be formatted.\n";
    goto LABEL_8;
  }

  v7 = FormattedMetadata;
  H16ISP::H16ISPAppendNamedValuesToCFString(v5, 0, FormattedMetadata, a2);
  CFRelease(v7);
  return v5;
}

__CFDictionary *H16ISP::H16ISPCreateFrameMetaDataAsCFDictionary(_DWORD *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  FormattedMetadata = H16ISP::CreateFormattedMetadata(a1);
  if (FormattedMetadata)
  {
    v5 = FormattedMetadata;
    Count = CFArrayGetCount(FormattedMetadata);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v9 = MEMORY[0x277CBF138];
      v10 = MEMORY[0x277CBF150];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        v12 = List(ValueAtIndex);
        if (v12)
        {
          v13 = v12;
          v14 = CFDictionaryCreateMutable(v2, 0, v9, v10);
          H16ISP::AddMetadataToDictionary(v14, v13, v15);
          v16 = Name(ValueAtIndex);
          CFDictionaryAddValue(Mutable, v16, v14);
          CFRelease(v14);
        }

        else
        {
          v17 = Name(ValueAtIndex);
          v18 = Value(ValueAtIndex);
          CFDictionaryAddValue(Mutable, v17, v18);
        }

        ++v8;
      }

      while (v7 != v8);
    }
  }

  return Mutable;
}

const __CFArray *H16ISP::AddMetadataToDictionary(H16ISP *this, __CFDictionary *a2, __CFArray *a3)
{
  result = CountNamedValues(a2);
  if (result >= 1)
  {
    v6 = 0;
    v7 = *MEMORY[0x277CBECE8];
    v8 = MEMORY[0x277CBF138];
    v9 = MEMORY[0x277CBF150];
    do
    {
      NamedValue = GetNamedValue(a2, v6);
      v11 = List(NamedValue);
      if (v11)
      {
        v12 = v11;
        Mutable = CFDictionaryCreateMutable(v7, 0, v8, v9);
        H16ISP::AddMetadataToDictionary(Mutable, v12, v14);
        v15 = Name(NamedValue);
        CFDictionaryAddValue(this, v15, Mutable);
        CFRelease(Mutable);
      }

      else
      {
        v16 = Name(NamedValue);
        v17 = Value(NamedValue);
        CFDictionaryAddValue(this, v16, v17);
      }

      ++v6;
      result = CountNamedValues(a2);
    }

    while (v6 < result);
  }

  return result;
}

void OUTLINED_FUNCTION_1_0(void *value)
{

  CFArrayAppendValue(v1, value);
}

uint64_t OUTLINED_FUNCTION_2_0(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *value)
{

  return CFDictionaryGetValueIfPresent(v15, a2, &value);
}

void OUTLINED_FUNCTION_3_0(int a1, const void *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *value)
{

  CFDictionaryAddValue(v15, a2, value);
}

uint64_t OUTLINED_FUNCTION_6_0(const __CFNumber *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);

  return CFNumberGetValue(a1, kCFNumberIntType, va);
}

CFNumberRef OUTLINED_FUNCTION_7_0(uint64_t a1, uint64_t a2, const void *a3)
{

  return CFNumberCreate(v3, kCFNumberShortType, a3);
}

uint64_t FigMotionAdjustPointForSphereMovement(const __CFDictionary *a1, float a2, float a3, double a4, float64x2_t *a5)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    result = FigMotionComputeAverageSpherePosition();
    if (!result)
    {
      *a5 = vaddq_f64(*a5, vcvtq_f64_f32(vmul_n_f32(0, a2 * a3)));
    }
  }

  else
  {
    v9 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v10 = os_log_create("com.apple.isp", "general");
      OUTLINED_FUNCTION_4(v10);
    }

    result = OUTLINED_FUNCTION_8();
    if (result)
    {
      v12 = 136315138;
      v13 = "FigMotionAdjustPointForSphereMovement";
      OUTLINED_FUNCTION_6(&dword_250805000, v9, v11, "%s - metadataDict is null!\n", &v12);
      return 0;
    }
  }

  return result;
}

uint64_t FigMotionComputePrincipalPoint(const __CFDictionary *a1, float a2, float a3, double a4, int a5, int a6, int a7, int a8, int a9, CGPoint *a10)
{
  v29 = *MEMORY[0x277D85DE8];
  value = 0;
  v25 = *MEMORY[0x277CBF348];
  if (a1 && a10)
  {
    v18 = (a5 + -1.0) * 0.5;
    v19 = (a6 + -1.0) * 0.5;
    v27.x = v18;
    v27.y = v19;
    if (CFDictionaryGetValueIfPresent(a1, *MEMORY[0x277CF5000], &value) && CGPointMakeWithDictionaryRepresentation(value, &v25))
    {
      v20 = *(MEMORY[0x277CBF3A0] + 16);
      v28.origin = *MEMORY[0x277CBF3A0];
      v28.size = v20;
      FigMotionGetSensorValidCropRect(a1, &v28);
      v27.x = v18 + (v25.x - (v28.origin.x + (v28.size.width + -1.0) * 0.5)) * a3 * a7;
      v27.y = v19 + (v25.y - (v28.origin.y + (v28.size.height + -1.0) * 0.5)) * a3 * a8;
    }

    if (!a9 || (result = FigMotionAdjustPointForSphereMovement(a1, a2, a3, a4, &v27), !result))
    {
      result = 0;
      *a10 = v27;
    }
  }

  else
  {
    v22 = GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog;
    if (GetCameraUserspaceLogStream(CameraUserspaceLoggingCategory)::_generalLog == MEMORY[0x277D86220])
    {
      v23 = os_log_create("com.apple.isp", "general");
      OUTLINED_FUNCTION_4(v23);
    }

    result = OUTLINED_FUNCTION_8();
    if (result)
    {
      LODWORD(v28.origin.x) = 136315138;
      *(&v28.origin.x + 4) = "FigMotionComputePrincipalPoint";
      OUTLINED_FUNCTION_6(&dword_250805000, v22, v24, "%s - metadataDict or adjustedPrincipalPointOut is null!\n", &v28);
      return 0;
    }
  }

  return result;
}

void FigMotionGetGravityZ()
{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPMotionDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - ISP motion data size did not match expected number of bytes.\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPMotionDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - ISP motion data version is not supported.\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPMotionDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - Empty ISP motion data\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPMotionDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - Invalid ISP motion data\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionGetGravityZ";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - ISP motion data not available\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionGetGravityZ";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - NULL metadata dictionary\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void FigMotionComputeLensPositionScalingFactor()
{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - binningFactorVertical is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - Sensor crop rect height is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - binningFactorHorizontal is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - Sensor crop rect width is not strictly positive!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - Invalid parameter!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionComputeLensPositionScalingFactor";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - metadataDict is null!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void FigMotionGetSensorValidCropRect(NSObject *a1, uint64_t a2, uint64_t a3)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6(&dword_250805000, a1, a3, "%s - SensorRawValidBufferRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6(&dword_250805000, a1, a3, "%s - TotalSensorCropRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6(&dword_250805000, a1, a3, "%s - RawCropRect found in metadata dictionary but malformed!\n", &v3);
}

{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136315138;
  v4 = "FigMotionGetSensorValidCropRect";
  OUTLINED_FUNCTION_6(&dword_250805000, a1, a3, "%s - Could not find any CropRect in the metadata dictionary!\n", &v3);
}

void FigMotionCalculateAdjustedLensPosition()
{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionCalculateAdjustedLensPosition";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - Invalid lens coefficients!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionCalculateAdjustedLensPosition";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - No CurrentFocusPosition!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

{
  OUTLINED_FUNCTION_0();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_4(v1);
  }

  if (OUTLINED_FUNCTION_8())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionCalculateAdjustedLensPosition";
    OUTLINED_FUNCTION_2(&dword_250805000, v2, v3, "%s - No metadata dictionary!\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

void FigMotionComputeAverageSpherePosition()
{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPHallDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - ISP Hall data size did not match expected number of bytes.\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPHallDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - ISP Hall data version is not supported.\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

{
  OUTLINED_FUNCTION_1();
  if (v0 == MEMORY[0x277D86220])
  {
    v1 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v1);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v8) = 136315138;
    *(&v8 + 4) = "FigMotionISPHallDataFromCFData";
    OUTLINED_FUNCTION_3(&dword_250805000, v2, v3, "%s - Invalid ISP Hall data\n", v4, v5, v6, v7, v8, DWORD2(v8));
  }

  OUTLINED_FUNCTION_7();
}

void FigMotionComputeAverageSpherePosition(int a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "FigMotionGetISPHallData";
  v4 = 1024;
  v5 = a1;
  _os_log_error_impl(&dword_250805000, a2, OS_LOG_TYPE_ERROR, "%s - Extracting only the first %d ISP Hall samples\n", &v2, 0x12u);
}

void FigMotionComputeAverageSpherePosition(int *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 136315394;
  v4 = "FigMotionGetISPHallData";
  v5 = 1024;
  v6 = v2;
  _os_log_error_impl(&dword_250805000, a2, OS_LOG_TYPE_ERROR, "%s - Unsupported Hall data version %d\n", &v3, 0x12u);
}

void FigMotionComputeAverageSpherePosition(_DWORD *a1)
{
  OUTLINED_FUNCTION_1();
  if (v1 == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v3);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "FigMotionComputeAverageSpherePosition";
    OUTLINED_FUNCTION_3(&dword_250805000, v4, v5, "%s - FrameRollingShutterSkew missing from metadata\n", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  *a1 = 0;
}

{
  OUTLINED_FUNCTION_1();
  if (v1 == MEMORY[0x277D86220])
  {
    v3 = os_log_create("com.apple.isp", "general");
    OUTLINED_FUNCTION_5(v3);
  }

  if (OUTLINED_FUNCTION_9())
  {
    LODWORD(v10) = 136315138;
    *(&v10 + 4) = "FigMotionComputeAverageSpherePosition";
    OUTLINED_FUNCTION_3(&dword_250805000, v4, v5, "%s - ExposureTime missing from metadata\n", v6, v7, v8, v9, v10, DWORD2(v10));
  }

  *a1 = 0;
}

__CFDictionary *H16ISP::H16ISPCreateEXIFDictFromMetadataDict(H16ISP *this, const __CFDictionary *a2, int a3)
{
  v243 = a3;
  v244 = a2;
  v241 = 0;
  cf = 0;
  v4 = *MEMORY[0x277CBECE8];
  v5 = OUTLINED_FUNCTION_0_0();
  Mutable = CFDictionaryCreateMutable(v5, v6, v7, v8);
  if (Mutable)
  {
    v10 = OUTLINED_FUNCTION_0_0();
    v13 = CFNumberCreate(v10, v11, v12);
    cf = v13;
    if (v13)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x277CD3410], v13);
      CFRelease(cf);
    }

    v14 = CFDictionaryCreateMutable(v4, 18, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v14)
    {
      v21 = v14;
      if (v244 && v243)
      {
        v22 = OUTLINED_FUNCTION_0_0();
        v25 = CFNumberCreate(v22, v23, v24);
        cf = v25;
        if (v25)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3110], v25);
          CFRelease(cf);
        }

        v26 = OUTLINED_FUNCTION_0_0();
        v14 = CFNumberCreate(v26, v27, v28);
        cf = v14;
        if (v14)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3118], v14);
          CFRelease(cf);
        }
      }

      if (this)
      {
        LODWORD(v29) = OUTLINED_FUNCTION_2_0(v14, *MEMORY[0x277CF4C58], v15, v16, v17, v18, v19, v20, v221, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v29)
        {
          valuePtr = 0.0;
          *v240 = 0.0;
          CFNumberGetValue(cf, kCFNumberFloat64Type, &valuePtr);
          *&v238 = 0.0;
          if (valuePtr > 0.0)
          {
            *&v238 = 1.0 / (1.0 / valuePtr + 0.5);
          }

          v36 = CFNumberCreate(v4, kCFNumberFloat64Type, &v238);
          if (v36)
          {
            v43 = v36;
            OUTLINED_FUNCTION_3_0(v36, *MEMORY[0x277CD3060], v37, v38, v39, v40, v41, v42, v222, v237, v238, *&valuePtr, *v240, v241, cf);
            CFRelease(v43);
          }

          if (valuePtr > 0.0)
          {
            *v240 = -log2(valuePtr);
          }

          v29 = CFNumberCreate(v4, kCFNumberFloat64Type, v240);
          cf = v29;
          if (v29)
          {
            CFDictionaryAddValue(v21, *MEMORY[0x277CD3158], v29);
            CFRelease(cf);
          }
        }

        v44 = OUTLINED_FUNCTION_2_0(v29, *MEMORY[0x277CF4CF0], v30, v31, v32, v33, v34, v35, v222, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v44)
        {
          v52 = OUTLINED_FUNCTION_5_0(v44, v45, v46, v47, v48, v49, v50, v51, v223, v237, v238, 0, 0, v241, cf);
          Value = CFNumberGetValue(v52, kCFNumberFloat64Type, v53);
          OUTLINED_FUNCTION_3_0(Value, *MEMORY[0x277CD3068], v55, v56, v57, v58, v59, v60, v224, v237, v238, *&valuePtr, *v240, v241, cf);
          if (*v240 > 0.0)
          {
            v61 = log2(*v240);
            valuePtr = v61 + v61;
          }

          v44 = CFNumberCreate(v4, kCFNumberFloat64Type, &valuePtr);
          cf = v44;
          if (v44)
          {
            CFDictionaryAddValue(v21, *MEMORY[0x277CD2F48], v44);
            CFRelease(cf);
          }
        }

        v62 = OUTLINED_FUNCTION_2_0(v44, *MEMORY[0x277CF4DF0], v46, v47, v48, v49, v50, v51, v223, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v62)
        {
          *v240 = 0;
          v70 = OUTLINED_FUNCTION_5_0(v62, v63, v64, v65, v66, v67, v68, v69, v225, v237, v238, *&valuePtr, *v240, v241, cf);
          CFNumberGetValue(v70, kCFNumberSInt16Type, v71);
          v72 = &word_25081D62A;
          v73 = 31;
          while (v73)
          {
            v74 = *(v72 - 1);
            v75 = (*v72 + v74) >> 1;
            --v73;
            ++v72;
            if (v75 >= *v240)
            {
              *v240 = v74;
              break;
            }
          }

          v62 = CFNumberCreate(v4, kCFNumberSInt16Type, v240);
          cf = v62;
          if (v62)
          {
            v76 = CFArrayCreate(v4, &cf, 1, MEMORY[0x277CBF128]);
            CFRelease(cf);
            if (v76)
            {
              CFDictionaryAddValue(v21, *MEMORY[0x277CD30B0], v76);
              CFRelease(v76);
            }
          }
        }

        LODWORD(v77) = OUTLINED_FUNCTION_2_0(v62, @"FocusWindow", v64, v65, v66, v67, v68, v69, v225, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v77)
        {
          *v240 = 0;
          LOWORD(valuePtr) = 0;
          LOWORD(v238) = 0;
          HIDWORD(v237) = 0;
          v77 = CFArrayCreateMutable(v4, 4, MEMORY[0x277CBF128]);
          if (v77)
          {
            v84 = v77;
            ValueAtIndex = CFArrayGetValueAtIndex(cf, 0);
            OUTLINED_FUNCTION_6_0(ValueAtIndex, v86, v87, v88, v89, v90, v91, v92, v226, v237, v238, *&valuePtr);
            LOWORD(valuePtr) = v244 * *v240 / 0x3E8u;
            v93 = CFArrayGetValueAtIndex(cf, 1);
            OUTLINED_FUNCTION_6_0(v93, v94, v95, v96, v97, v98, v99, v100, v227, v237, v238, *&valuePtr);
            OUTLINED_FUNCTION_4_0();
            LOWORD(v238) = v101;
            v102 = CFArrayGetValueAtIndex(cf, 2);
            OUTLINED_FUNCTION_6_0(v102, v103, v104, v105, v106, v107, v108, v109, v228, v237, v238, *&valuePtr);
            HIWORD(v237) = v244 * *v240 / 0x3E8u;
            v110 = CFArrayGetValueAtIndex(cf, 3);
            OUTLINED_FUNCTION_6_0(v110, v111, v112, v113, v114, v115, v116, v117, v229, v237, v238, *&valuePtr);
            OUTLINED_FUNCTION_4_0();
            WORD2(v237) = v118;
            LOWORD(valuePtr) += SHIWORD(v237) / 2;
            LOWORD(v238) = v238 + v118 / 2;
            v121 = OUTLINED_FUNCTION_7_0(v119, v120, &valuePtr);
            if (v121)
            {
              OUTLINED_FUNCTION_1_0(v121);
              CFRelease(0x3E8);
            }

            v123 = OUTLINED_FUNCTION_7_0(v121, v122, &v238);
            if (v123)
            {
              OUTLINED_FUNCTION_1_0(v123);
              CFRelease(0x3E8);
            }

            v125 = OUTLINED_FUNCTION_7_0(v123, v124, &v237 + 6);
            if (v125)
            {
              OUTLINED_FUNCTION_1_0(v125);
              CFRelease(0x3E8);
            }

            v127 = OUTLINED_FUNCTION_7_0(v125, v126, &v237 + 4);
            if (v127)
            {
              OUTLINED_FUNCTION_1_0(v127);
              CFRelease(0x3E8);
            }

            CFDictionaryAddValue(v21, *MEMORY[0x277CD3178], v84);
            CFRelease(v84);
          }
        }

        v128 = OUTLINED_FUNCTION_2_0(v77, *MEMORY[0x277CF51B0], v78, v79, v80, v81, v82, v83, v226, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v128)
        {
          *v240 = -1;
          LODWORD(valuePtr) = 0;
          v136 = OUTLINED_FUNCTION_5_0(v128, v129, v130, v131, v132, v133, v134, v135, v230, v237, v238, *&valuePtr, *v240, v241, cf);
          LODWORD(v128) = CFNumberGetValue(v136, kCFNumberSInt32Type, v137);
          if ((*v240 & 0x80000000) == 0)
          {
            if (*v240 > 8u)
            {
              v138 = *v240 > 0xCu ? 2 : 1;
              LODWORD(valuePtr) = v138;
            }

            else
            {
              LODWORD(valuePtr) = 0;
            }

            v139 = OUTLINED_FUNCTION_0_0();
            v128 = CFNumberCreate(v139, v140, v141);
            if (v128)
            {
              v142 = v128;
              CFDictionaryAddValue(v21, *MEMORY[0x277CD3150], v128);
              CFRelease(v142);
            }
          }
        }

        v143 = OUTLINED_FUNCTION_2_0(v128, *MEMORY[0x277CF4D00], v130, v131, v132, v133, v134, v135, v230, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v143)
        {
          OUTLINED_FUNCTION_3_0(v143, *MEMORY[0x277CD3088], v144, v145, v146, v147, v148, v149, v231, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v150 = OUTLINED_FUNCTION_2_0(v143, *MEMORY[0x277CF5330], v144, v145, v146, v147, v148, v149, v231, v237, v238, *&valuePtr, *v240, v241, cf);
        v157 = MEMORY[0x277CD31A8];
        if (v150)
        {
          OUTLINED_FUNCTION_3_0(v150, *MEMORY[0x277CD31A8], v151, v152, v153, v154, v155, v156, v232, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v158 = OUTLINED_FUNCTION_2_0(v150, *MEMORY[0x277CF4CF8], v151, v152, v153, v154, v155, v156, v232, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v158)
        {
          OUTLINED_FUNCTION_3_0(v158, *MEMORY[0x277CD3080], v159, v160, v161, v162, v163, v164, v233, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        v165 = OUTLINED_FUNCTION_2_0(v158, *MEMORY[0x277CF4E40], v159, v160, v161, v162, v163, v164, v233, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v165)
        {
          OUTLINED_FUNCTION_3_0(v165, *MEMORY[0x277CD30B8], v166, v167, v168, v169, v170, v171, v234, v237, v238, *&valuePtr, *v240, v241, cf);
        }

        HIDWORD(v241) = 1;
        if (OUTLINED_FUNCTION_2_0(v165, @"MeteringMode", v166, v167, v168, v169, v170, v171, v234, v237, v238, *&valuePtr, *v240, v241, cf))
        {
          CFNumberGetValue(cf, kCFNumberSInt32Type, &v241 + 4);
        }

        v172 = OUTLINED_FUNCTION_0_0();
        v175 = CFNumberCreate(v172, v173, v174);
        cf = v175;
        if (v175)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD30F0], v175);
          CFRelease(cf);
        }

        LODWORD(v241) = 2;
        v176 = OUTLINED_FUNCTION_0_0();
        v179 = CFNumberCreate(v176, v177, v178);
        cf = v179;
        if (v179)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3058], v179);
          CFRelease(cf);
        }

        cf = @"H16ISP Test Application";
        CFDictionaryAddValue(v21, *MEMORY[0x277CD30E0], @"H16ISP Test Application");
        CFRelease(cf);
        LODWORD(v241) = 0;
        v187 = OUTLINED_FUNCTION_2_0(v180, @"GlobalShutterFlag", v181, v182, v183, v184, v185, v186, v235, v237, v238, *&valuePtr, *v240, v241, cf);
        if (v187)
        {
          *v240 = -1;
          v195 = OUTLINED_FUNCTION_5_0(v187, v188, v189, v190, v191, v192, v193, v194, v236, v237, v238, *&valuePtr, *v240, v241, cf);
          CFNumberGetValue(v195, kCFNumberSInt32Type, v196);
        }

        LODWORD(v241) = 32;
        v197 = OUTLINED_FUNCTION_0_0();
        v200 = CFNumberCreate(v197, v198, v199);
        cf = v200;
        if (v200)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3070], v200);
          CFRelease(cf);
        }

        LODWORD(v241) = 2;
        v201 = OUTLINED_FUNCTION_0_0();
        v204 = CFNumberCreate(v201, v202, v203);
        cf = v204;
        if (v204)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3140], v204);
          CFRelease(cf);
        }

        LODWORD(v241) = 1;
        v205 = OUTLINED_FUNCTION_0_0();
        v208 = CFNumberCreate(v205, v206, v207);
        cf = v208;
        if (v208)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3138], v208);
          CFRelease(cf);
        }

        LODWORD(v241) = 0;
        v209 = OUTLINED_FUNCTION_0_0();
        v212 = CFNumberCreate(v209, v210, v211);
        cf = v212;
        if (v212)
        {
          CFDictionaryAddValue(v21, *MEMORY[0x277CD3050], v212);
          CFRelease(cf);
        }

        LODWORD(v241) = 0;
        v213 = OUTLINED_FUNCTION_0_0();
        v216 = CFNumberCreate(v213, v214, v215);
        cf = v216;
        if (v216)
        {
          CFDictionaryAddValue(v21, *v157, v216);
          CFRelease(cf);
        }

        v217 = CFDictionaryGetValue(this, *MEMORY[0x277CF5088]);
        if (v217)
        {
          BytePtr = CFDataGetBytePtr(v217);
          if (BytePtr)
          {
            v219 = H16ISP::H16ISPCreateFrameMetaDataAsCFString(BytePtr, 0);
            CFDictionaryAddValue(v21, *MEMORY[0x277CD3198], v219);
            CFRelease(v219);
          }
        }

        CFDictionarySetValue(Mutable, *MEMORY[0x277CD3038], v21);
      }

      CFRelease(v21);
    }
  }

  return Mutable;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

{
  return MEMORY[0x2821F7920]();
}

{
  return MEMORY[0x2821F7928]();
}

{
  return MEMORY[0x2821F7938]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}