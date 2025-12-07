BOOL AJReducerIsFilePacked(const __CFURL *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    aj_log_error("CFReduce", "Unable to resolve url");
    return 0;
  }

  v1 = fopen(buffer, "rb");
  if (!v1)
  {
    aj_log_error("CFReduce", "Unable to open file: %s");
    return 0;
  }

  v2 = v1;
  v3 = fread(&__ptr, 1uLL, 4uLL, v1) == 4 && applejpeg_reduce_is_reduced_jpeg(&__ptr, 4uLL);
  fclose(v2);
  return v3;
}

BOOL AJReducerIsDataPacked(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return applejpeg_reduce_is_reduced_jpeg(BytePtr, Length);
}

void AJReducerRelease(void *a1, uint64_t a2)
{
  AJReducerCloseSource(a1, a2);

  free(a1);
}

uint64_t AJReducerCloseSource(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
    v3 = *(result + 32);
    if (v3)
    {
      applejpeg_reduce_close(v3, a2);
      v2[4] = 0;
    }

    v4 = v2[3];
    if (v4)
    {
      CFRelease(v4);
      v2[3] = 0;
    }

    result = *v2;
    if (*v2)
    {
      result = fclose(result);
      *v2 = 0;
    }
  }

  return result;
}

uint64_t AJReducerOpenSourceData(uint64_t a1, CFTypeRef cf, int *a3)
{
  BytePtr = 0;
  Length = 0;
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL");
LABEL_10:
    v6 = 4;
    goto LABEL_11;
  }

  if (!cf)
  {
    aj_log_error("CFReduce", "Input source is NULL");
    goto LABEL_10;
  }

  if (*(a1 + 32) || *(a1 + 24) || *a1)
  {
    aj_log_error("CFReduce", "Source is already open. Close must be called before source can be reopened.");
    result = 0;
    if (a3)
    {
      *a3 = 17;
    }

    return result;
  }

  *(a1 + 24) = cf;
  CFRetain(cf);
  BytePtr = CFDataGetBytePtr(*(a1 + 24));
  Length = CFDataGetLength(*(a1 + 24));
  v10 = 0;
  v7 = applejpeg_reduce_open_mem(0, &BytePtr, a1 + 40, &v10);
  v6 = translateErrorCode(v10);
  *(a1 + 32) = v7;
  if (v7)
  {
    if (a3)
    {
      *a3 = 0;
    }

    return 1;
  }

LABEL_11:
  if (a3)
  {
    *a3 = v6;
  }

  result = *(a1 + 24);
  if (result)
  {
    CFRelease(result);
    result = 0;
    *(a1 + 24) = 0;
  }

  return result;
}

FILE *AJReducerOpenSourceURLWithOptions(FILE **a1, const __CFURL *a2, int *a3, const __CFDictionary *a4)
{
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL", a3, a4, v9, v10, v11, v12);
LABEL_10:
    v7 = 4;
    goto LABEL_11;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Input source is NULL", a3, a4, v9, v10, v11, v12);
    goto LABEL_10;
  }

  if (a1[4] || a1[3] || *a1)
  {
    aj_log_error("CFReduce", "Source is already open. Close must be called before source can be reopened.", a3, a4, v9, v10, v11, v12);
    result = 0;
    if (a3)
    {
      *a3 = 17;
    }

    return result;
  }

  v7 = setupFileManager(a2, 1, a4, &v9, a1);
  if (!v7)
  {
    v13 = 0;
    v8 = applejpeg_reduce_open_file(0, &v9, (a1 + 5), &v13);
    v7 = translateErrorCode(v13);
    a1[4] = v8;
    if (v8)
    {
      if (a3)
      {
        *a3 = 0;
      }

      return 1;
    }
  }

LABEL_11:
  if (a3)
  {
    *a3 = v7;
  }

  result = *a1;
  if (*a1)
  {
    fclose(result);
    result = 0;
    *a1 = 0;
  }

  return result;
}

uint64_t setupFileManager(const __CFURL *a1, int a2, const __CFDictionary *a3, size_t (**a4)(void *a1, int a2, uint64_t a3), FILE **a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    aj_log_error("CFReduce", "URL may not be null", a3, a4, a5);
    return 4;
  }

  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    aj_log_error("CFReduce", "Unable to resolve url");
    return 7;
  }

  if (a2)
  {
    v9 = "rb";
  }

  else
  {
    v15 = access(buffer, 0);
    v9 = "wb";
    if (a3 && v15 != -1)
    {
      Value = CFDictionaryGetValue(a3, @"DoNotOverwriteOutputFile");
      if (Value && CFBooleanGetValue(Value))
      {
        aj_log_error("CFReduce", "Output file already exists: %s", buffer);
        return 16;
      }

      v9 = "wb";
    }
  }

  v10 = fopen(buffer, v9);
  if (!v10)
  {
    aj_log_error("CFReduce", "Unable to open file: %s");
    return 7;
  }

  v11 = v10;
  a4[4] = a5;
  fseek(v10, 0, 2);
  v12 = MEMORY[0x245CCE270](v11);
  fseek(v11, 0, 0);
  a4[2] = fskipCallback;
  a4[3] = frewindCallback;
  a4[5] = 0x2000;
  a4[6] = v12;
  if (a2)
  {
    *a4 = freadCallback;
    v13 = @"SimulateReadFailAfterXBytes";
  }

  else
  {
    a4[1] = fwriteCallback;
    v13 = @"SimulateWriteFailAfterXBytes";
  }

  CFIndexFromDictionary = getCFIndexFromDictionary(a3, v13);
  result = 0;
  a5[1] = 0;
  a5[2] = CFIndexFromDictionary;
  *a5 = v11;
  return result;
}

uint64_t AJReducerIsSourcePacked(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

uint64_t AJReducerSourceUnpackedFileSize(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

uint64_t performTaskToData(uint64_t a1, CFTypeRef *a2, const __CFDictionary *a3, int *a4, uint64_t a5)
{
  v16 = 0;
  v10 = AJMemoryWriterCreate();
  v11 = v10;
  if (!v10)
  {
    aj_log_error("CFReduce", "Could not create memory writer");
    v15 = 6;
LABEL_9:
    v16 = v15;
    goto LABEL_10;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Destination pointer may not be null");
    v15 = 4;
    goto LABEL_9;
  }

  IOFile = AJMemoryWriterGetIOFile(v10);
  if (performReducerTask(a1, IOFile, a3, &v16, a5))
  {
    DataRef = AJMemoryWriterGetDataRef(v11);
    *a2 = CFRetain(DataRef);
    AJMemoryWriterRelease(v11);
    if (a4)
    {
      *a4 = 0;
    }

    return 1;
  }

LABEL_10:
  if (a4)
  {
    *a4 = v16;
  }

  AJMemoryWriterRelease(v11);
  return 0;
}

FILE *performTaskToURL(uint64_t a1, const __CFURL *a2, const __CFDictionary *a3, _DWORD *a4, uint64_t a5)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  memset(v10, 0, sizeof(v10));
  v13 = setupFileManager(a2, 0, a3, v11, v10);
  if (v13 || !performReducerTask(a1, v11, a3, &v13, a5))
  {
    if (a4)
    {
      *a4 = v13;
    }

    result = v10[0];
    if (v10[0])
    {
      fclose(v10[0]);
      return 0;
    }
  }

  else
  {
    if (v10[0])
    {
      fclose(v10[0]);
    }

    if (a4)
    {
      *a4 = 0;
    }

    return 1;
  }

  return result;
}

uint64_t AJReducerDestinationBytesWritten(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

uint64_t translateErrorCode(unsigned int a1)
{
  if (a1 > 0xB)
  {
    return 1;
  }

  else
  {
    return dword_240AB05A4[a1];
  }
}

uint64_t fskipCallback(int a1, uint64_t a2)
{
  v2 = *a2;
  *(a2 + 8) += a1;
  return fseek(v2, a1, 1);
}

size_t freadCallback(void *a1, int a2, uint64_t a3)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = *(a3 + 8);
    if (v5 + a2 >= v4)
    {
      aj_log_error("CFReduce", "Simulated read fail when reading %d bytes at position %zu", a2, v5);
      return 4294967294;
    }
  }

  v6 = fread(a1, 1uLL, a2, *a3);
  if (!v6)
  {
    if (feof(*a3))
    {
      return 0xFFFFFFFFLL;
    }

    if (ferror(*a3))
    {
      return 4294967294;
    }
  }

  *(a3 + 8) += v6;
  return v6;
}

uint64_t fwriteCallback(const void *a1, int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    if (*(a3 + 8) + a2 >= v5)
    {
      aj_log_error("CFReduce", "Simulated write fail when writing %d bytes at position %zu");
      return 1;
    }

    v6 = a2;
  }

  else
  {
    v6 = a2;
  }

  v7 = fwrite(a1, 1uLL, v6, *a3);
  if (v7 == a2)
  {
    result = 0;
    *(a3 + 8) += v7;
    return result;
  }

  aj_log_error("CFReduce", "Requested write of %d, wrote: %d");
  return 1;
}

const __CFDictionary *getCFIndexFromDictionary(const __CFDictionary *result, const void *a2)
{
  if (result)
  {
    Value = CFDictionaryGetValue(result, a2);
    if (Value && (valuePtr = 0, CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr)))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t performReducerTask(uint64_t a1, unint64_t a2, const __CFDictionary *a3, int *a4, uint64_t a5)
{
  if (!a1)
  {
    aj_log_error("CFReduce", "Reducer session is NULL", a3, a4, a5);
LABEL_12:
    v12 = 4;
    goto LABEL_13;
  }

  if (!*(a1 + 32))
  {
    aj_log_error("CFReduce", "Reducer input is NULL. Call AJReducerOpenSource first.", a3, a4, a5);
    goto LABEL_12;
  }

  if (!a2)
  {
    aj_log_error("CFReduce", "Destination is NULL", a3, a4, a5);
    goto LABEL_12;
  }

  v8 = a5;
  v19 = 0;
  applejpeg_reduce_options_init(&v19);
  if (!a3)
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(a3, @"CompressionMethod");
  if (Value != @"AdaptiveArithmetic")
  {
    if (Value == @"SemistaticArithmetic")
    {
      v11 = 1;
      goto LABEL_17;
    }

    if (!Value)
    {
      goto LABEL_18;
    }
  }

  v11 = 0;
LABEL_17:
  LODWORD(v19) = v11;
LABEL_18:
  v15 = applejpeg_reduce_set_options(*(a1 + 32), &v19);
  if (v15)
  {
    v12 = translateErrorCode(v15);
  }

  else
  {
    v16 = *(a1 + 32);
    v17 = (a1 + 72);
    if (v8)
    {
      v18 = applejpeg_reduce_unpack_file(v16, a2, v17);
    }

    else
    {
      v18 = applejpeg_reduce_pack_file(v16, a2, v17);
    }

    v12 = translateErrorCode(v18);
    if (!v12)
    {
      v13 = 1;
      if (!a4)
      {
        return v13;
      }

      v12 = 0;
      goto LABEL_14;
    }
  }

LABEL_13:
  v13 = 0;
  if (a4)
  {
LABEL_14:
    *a4 = v12;
  }

  return v13;
}

void *AJMemoryWriterCreate()
{
  v0 = malloc_type_calloc(1uLL, 0x48uLL, 0x10A00409DD6F009uLL);
  v0[1] = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x277CBECE8], 0);
  *v0 = Mutable;
  if (Mutable)
  {
    v0[3] = AJCFDataWriteCallback;
    v0[4] = AJCFDataSkipCallback;
    v0[5] = AJCFDataRewindCallback;
    v0[6] = v0;
  }

  else
  {
    free(v0);
    return 0;
  }

  return v0;
}

uint64_t AJCFDataWriteCallback(const UInt8 *a1, int a2, uint64_t a3)
{
  if (a2)
  {
    LODWORD(v4) = a2;
    v6 = *a3;
    v7 = *(a3 + 8);
    if (v7 == CFDataGetLength(*a3))
    {
      v4 = v4;
      CFDataAppendBytes(v6, a1, v4);
    }

    else
    {
      v9.location = *(a3 + 8);
      v4 = v4;
      v9.length = v4;
      CFDataReplaceBytes(v6, v9, a1, v4);
    }

    *(a3 + 8) += v4;
  }

  return 0;
}

void AJMemoryWriterRelease(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void aj_log_error(uint64_t result, char *__format, ...)
{
  va_start(va, __format);
  v6 = *MEMORY[0x277D85DE8];
  if (aj_logging_enabled_g_aj_check_once != -1)
  {
    aj_log_error_cold_1();
  }

  if (aj_logging_enabled_s_should_log)
  {
    vsnprintf(__str, 0x400uLL, __format, va);
    v4 = *MEMORY[0x277D85DF8];
    if (result)
    {
      fprintf(v4, "AppleJPEG, %s: %s\n");
    }

    else
    {
      fprintf(v4, "AppleJPEG: %s\n");
    }
  }
}

void __aj_logging_enabled_block_invoke()
{
  v0 = CFPreferencesCopyAppValue(@"aj_log_errors", @"com.apple.applejpeg");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      v3 = CFStringGetIntValue(v1) == 0;
    }

    else
    {
      v5 = CFGetTypeID(v1);
      if (v5 != CFNumberGetTypeID())
      {
        v6 = CFGetTypeID(v1);
        if (v6 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(v1);
        }

        else
        {
          Value = 0;
        }

        goto LABEL_10;
      }

      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v3 = valuePtr == 0;
    }

    Value = !v3;
LABEL_10:
    CFRelease(v1);
    goto LABEL_11;
  }

  Value = 0;
LABEL_11:
  aj_logging_enabled_s_should_log = Value;
}

uint64_t (**aj_select_semistatic_coder(uint64_t (**result)(int a1)))(int a1)
{
  result[3] = arithmetic_context_init;
  result[4] = arithmetic_context_init_prob;
  result[10] = arithmetic_decode_close;
  result[8] = arithmetic_decode_static_data;
  result[2] = arithmetic_decode_init;
  result[6] = arithmetic_decode_symbols;
  result[9] = arithmetic_encode_close;
  result[7] = arithmetic_encode_static_data;
  result[1] = arithmetic_encode_init;
  result[5] = arithmetic_encode_symbols;
  *result = arithmetic_prob_table_size;
  return result;
}

uint64_t arithmetic_decode_static_data(uint64_t a1, _DWORD *a2, unsigned int a3)
{
  v3 = a3;
  if (a3 - 33 <= 0xFFFFFFDF)
  {
    aj_log_error(0, "Illegal number of data bits: %d", a3);
    return 7;
  }

  *a2 = 0;
  if (a3 < 0x11)
  {
    goto LABEL_9;
  }

  v7 = HIWORD(*a1);
  if (*(a1 + 8) / v7 >= 0xFFFF)
  {
    v8 = 0xFFFF;
  }

  else
  {
    v8 = *(a1 + 8) / v7;
  }

  result = arithmetic_decode(a1, *(a1 + 24), v8, v8 + 1, v7);
  if (!result)
  {
    v3 -= 16;
    *a2 = v8 << v3;
LABEL_9:
    v9 = *a1 >> v3;
    if (*(a1 + 8) / v9 >= ~(-1 << v3))
    {
      v10 = ~(-1 << v3);
    }

    else
    {
      v10 = *(a1 + 8) / v9;
    }

    result = arithmetic_decode(a1, *(a1 + 24), v10, v10 + 1, v9);
    if (!result)
    {
      *a2 |= v10;
    }
  }

  return result;
}

uint64_t arithmetic_decode_init(uint64_t a1)
{
  v2 = *(a1 + 24);
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  v3 = 4;
  do
  {
    v5 = 0;
    result = aj_istream_read_bytes_le(v2, &v5, 1);
    if (result)
    {
      break;
    }

    *(a1 + 8) = v5 | (*(a1 + 8) << 8);
    --v3;
  }

  while (v3);
  return result;
}

uint64_t arithmetic_decode_symbols(uint64_t a1, unsigned __int16 **a2, _BYTE *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  v30 = a1;
  while (1)
  {
    v7 = *a2;
    v8 = *a2 + 2;
    v9 = **a2;
    v10 = *a1 >> 15;
    v31 = a2 + 1;
    if (**a2)
    {
      v11 = 0;
      v12 = *(a1 + 8) / v10;
      if (v12 >= 0x7FFF)
      {
        LOWORD(v12) = 0x7FFF;
      }

      while (v8[v11] <= v12)
      {
        if (v9 == ++v11)
        {
          v13 = **a2;
          LODWORD(v11) = **a2;
          goto LABEL_11;
        }
      }

      v13 = **a2;
    }

    else
    {
      v13 = 0;
      LODWORD(v11) = 0;
    }

LABEL_11:
    v14 = (v7 + 2 + 2 * v13 + 2);
    v15 = &v14[v13];
    v16 = v15[2];
    if (v11 >= v16)
    {
      break;
    }

    v17 = (v7 + 2);
    v18 = &v8[v11];
    v19 = *(v18 - 1);
    LOWORD(v18) = *v18 - v19;
    ++v14[v11];
    v20 = *(a1 + 24);
    ++*v15;
    ++v15[1];
    result = arithmetic_decode(a1, v20, v19, v19 + v18, v10);
    if (result)
    {
      return result;
    }

    *a3 = v11;
    v22 = v15[1];
    a1 = v30;
    a2 = v31;
    if (v22 >= 0x800)
    {
      v22 = 0;
      if (v9)
      {
        do
        {
          v23 = *v14 + 1;
          *v14++ = v23 >> 1;
          v22 += v23 >> 1;
          --v13;
        }

        while (v13);
      }

      v15[1] = v22;
    }

    v24 = *v15;
    if (v22 <= 0x7Fu)
    {
      v25 = v17;
      if ((v22 & 1) == 0 && v24 <= 0x80)
      {
        goto LABEL_41;
      }

LABEL_39:
      v29 = v15[2];
LABEL_40:
      renormalize_probs(v25, v9, v29);
      a1 = v30;
      goto LABEL_41;
    }

    v25 = v17;
    if (v24 >= 0x81)
    {
      goto LABEL_39;
    }

LABEL_41:
    ++a3;
    if (!--v4)
    {
      return 0;
    }
  }

  result = arithmetic_decode(a1, *(a1 + 24), v8[v11 - 1], *(v7 + 2 + 2 * v11 + 2), v10);
  if (result)
  {
    return result;
  }

  v26 = -1;
  do
  {
    ++v26;
  }

  while (v26 <= 0x1F && 1 << v26 < v9);
  v27 = *v30 >> v26;
  v28 = *(v30 + 8) / v27 >= ~(-1 << v26) ? ~(-1 << v26) : *(v30 + 8) / v27;
  result = arithmetic_decode(v30, *(v30 + 24), v28, v28 + 1, v27);
  if (result)
  {
    return result;
  }

  *a3 = v28;
  if (v28 < v9)
  {
    if (v28 > v16)
    {
      do
      {
        ++*(v7 + 2 * v13 + 6 + 2 * v16);
        ++v15[1];
        ++v16;
      }

      while (v16 < v28);
    }

    if (v28 + 1 < v9)
    {
      ++v14[v28 + 1];
      ++v15[1];
    }

    ++v14[v28];
    ++v15[1];
    if (v28 + 2 == v9)
    {
      v29 = v9;
    }

    else
    {
      v29 = v28 + 1;
    }

    v15[2] = v29;
    a2 = v31;
    v25 = (v7 + 2);
    goto LABEL_40;
  }

  aj_log_error(0, "Symbol is too large. %d > %d", v28, v9);
  return 7;
}

uint64_t arithmetic_encode_close(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 4);
  v4 = 4;
  while (1)
  {
    result = byte_plus_prev(a1, v2, HIBYTE(v3));
    if (result)
    {
      return result;
    }

    v3 = *(a1 + 4) << 8;
    *(a1 + 4) = v3;
    if (!--v4)
    {
      result = aj_ostream_write_bytes(v2, *(a1 + 33), 1);
      if (!result)
      {
        if (*(a1 + 12))
        {
          while (1)
          {
            result = aj_ostream_write_bytes(v2, 255, 1);
            if (result)
            {
              break;
            }

            v6 = *(a1 + 12) - 1;
            *(a1 + 12) = v6;
            if (!v6)
            {
              goto LABEL_8;
            }
          }
        }

        else
        {
LABEL_8:
          result = 0;
          *(a1 + 33) = 0;
        }
      }

      return result;
    }
  }
}

uint64_t arithmetic_encode_static_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  if (a3 >= 17)
  {
    v3 = a3 - 16;
    result = arithmetic_encode(a1, *(a1 + 16), a2 >> (a3 - 16), (a2 >> (a3 - 16)) + 1, 16);
    if (result)
    {
      return result;
    }

    v4 &= ~(-1 << v3);
  }

  v7 = *(a1 + 16);

  return arithmetic_encode(a1, v7, v4, v4 + 1, v3);
}

uint64_t arithmetic_encode_init(uint64_t a1)
{
  *a1 = 0xFFFFFFFFLL;
  *(a1 + 8) = 0;
  return 0;
}

uint64_t arithmetic_encode_symbols(uint64_t a1, unsigned __int16 **a2, unsigned __int8 *a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  while (1)
  {
    v7 = *a2++;
    v6 = v7;
    v8 = v7 + 1;
    v9 = *v7;
    LODWORD(v7) = *a3;
    v10 = a3 + 1;
    v11 = v7;
    if (v7 >= v9)
    {
      break;
    }

    v31 = v10;
    v12 = &v8[v9 + 1];
    v13 = &v12[v9];
    v14 = v13[2];
    v15 = v6 + 2;
    if (v14 <= v11)
    {
      result = arithmetic_encode(a1, *(a1 + 16), v15[v14 - 1], v8[v14 + 1], 15);
      if (result)
      {
        return result;
      }

      v29 = v4;
      v24 = -1;
      do
      {
        ++v24;
      }

      while (v24 <= 0x1F && 1 << v24 < v9);
      v25 = v11 + 1;
      result = arithmetic_encode(a1, *(a1 + 16), v11, v11 + 1, v24);
      if (result)
      {
        return result;
      }

      if (v14 < v11)
      {
        v26 = v11 - v14;
        v27 = &v6[v9 + 3 + v14];
        do
        {
          ++*v27++;
          ++v13[1];
          --v26;
        }

        while (v26);
      }

      if (v25 < v9)
      {
        ++v12[v25];
        ++v13[1];
      }

      ++v12[v11];
      ++v13[1];
      if (v11 + 2 == v9)
      {
        v28 = v9;
      }

      else
      {
        v28 = v11 + 1;
      }

      v13[2] = v28;
      v4 = v29;
      goto LABEL_30;
    }

    v16 = &v15[v11];
    v17 = *(v16 - 1);
    LOWORD(v16) = *v16 - v17;
    ++v12[v11];
    v18 = *(a1 + 16);
    ++*v13;
    ++v13[1];
    result = arithmetic_encode(a1, v18, v17, v17 + v16, 15);
    if (result)
    {
      return result;
    }

    v20 = v13[1];
    if (v20 >= 0x800)
    {
      v20 = 0;
      v21 = v9;
      do
      {
        v22 = *v12 + 1;
        *v12++ = v22 >> 1;
        v20 += v22 >> 1;
        --v21;
      }

      while (v21);
      v13[1] = v20;
    }

    v23 = *v13;
    if (v20 <= 0x7Fu)
    {
      if ((v20 & 1) == 0 && v23 <= 0x80)
      {
        goto LABEL_31;
      }

LABEL_29:
      v28 = v13[2];
LABEL_30:
      renormalize_probs(v8, v9, v28);
      goto LABEL_31;
    }

    if (v23 >= 0x81)
    {
      goto LABEL_29;
    }

LABEL_31:
    --v4;
    a3 = v31;
    if (!v4)
    {
      return 0;
    }
  }

  aj_log_error(0, "Illegal symbol to be encoded (%d). Num syms in this context is %d.", v11, v9);
  return 7;
}

void init_cum_prob(unsigned __int16 *a1, uint64_t a2, unsigned __int8 *a3, int a4)
{
  LODWORD(v4) = a4;
  v6 = a2;
  bzero(a1, 4 * a2 + 10);
  *a1 = v6;
  v8 = &a1[v6 + 1];
  v9 = v8 + 1;
  if (v6 - 1 <= v4)
  {
    v4 = v6;
  }

  else
  {
    v4 = v4;
  }

  v10 = &v9[v6];
  v10[2] = v4;
  if (a3)
  {
    v11 = 0;
    if (v4 >= 1)
    {
      v12 = v4;
      v13 = v9;
      do
      {
        *v13++ = *a3;
        v14 = *a3++;
        v11 += v14;
        --v12;
      }

      while (v12);
    }

    if (v4 >= v6)
    {
      goto LABEL_15;
    }

LABEL_14:
    v9[v4] = 1;
    ++v11;
    goto LABEL_15;
  }

  if (v4 >= 1)
  {
    memset_pattern16(v8 + 1, &unk_240AB05E0, (2 * v4));
  }

  v11 = v4;
  if (v4 < v6)
  {
    bzero(&a1[v6 + 2 + v4], 2 * (v6 - 1 - v4) + 2);
    v11 = v4;
    goto LABEL_14;
  }

LABEL_15:
  v10[1] = v11;

  renormalize_probs(a1 + 1, v6, v4);
}

void renormalize_probs(unsigned __int16 *a1, int a2, int a3)
{
  v5 = &a1[a2 + a2];
  v6 = a1 + 1;
  v7 = v5[2];
  v5[1] = 0;
  if (a3 >= a2)
  {
    v8 = a3;
  }

  else
  {
    v8 = (a3 + 1);
  }

  if (v8 < 1)
  {
    v10 = 0;
    v16 = 0x8000;
  }

  else
  {
    v9 = 0;
    LODWORD(v10) = 0;
    v11 = 0;
    v12 = v7 - 1;
    v13 = a1 + 1;
    v14 = 0x80000000 / v7;
    do
    {
      v15 = (v14 * (v12 + (v13[a2] << 15))) >> 31;
      *v13++ = v15;
      v11 += v15;
      if (v15 <= v6[v10])
      {
        v10 = v10;
      }

      else
      {
        v10 = v9;
      }

      ++v9;
    }

    while (v8 != v9);
    v16 = v11 ^ 0x8000;
  }

  if (v8 < a2)
  {
    v17 = a3;
    if (a3 < a2)
    {
      v17 = a3 + 1;
    }

    bzero(&a1[v17 + 1], 2 * (~a3 + a2 - (a3 < a2)) + 2);
  }

  v6[v10] -= v16;
  if (a2 >= 1)
  {
    v18 = a2;
    v19 = *a1;
    do
    {
      v19 += *v6;
      *v6++ = v19;
      --v18;
    }

    while (v18);
  }
}

uint64_t arithmetic_decode(int *a1, uint64_t a2, int a3, int a4, int a5)
{
  v6 = (a4 - a3) * a5;
  *a1 = v6;
  a1[2] -= a5 * a3;
  if ((v6 - 16777217) >> 24 == 255)
  {
    while (1)
    {
      v10 = 0;
      result = aj_istream_read_bytes_le(a2, &v10, 1);
      if (result)
      {
        break;
      }

      a1[2] = v10 | (a1[2] << 8);
      v9 = *a1;
      v6 = *a1 << 8;
      *a1 = v6;
      if (((v9 << 8) - 16777217) >> 24 != 255)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    result = 0;
    if (!v6)
    {
      *a1 = -1;
    }
  }

  return result;
}

uint64_t byte_plus_prev(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (*(a1 + 32))
  {
    if (a3 == 255)
    {
      result = 0;
      ++*(a1 + 12);
    }

    else
    {
      result = aj_ostream_write_bytes(a2, *(a1 + 33), 1);
      if (!result)
      {
        if (*(a1 + 12))
        {
          while (1)
          {
            result = aj_ostream_write_bytes(a2, 255, 1);
            if (result)
            {
              break;
            }

            v7 = *(a1 + 12) - 1;
            *(a1 + 12) = v7;
            if (!v7)
            {
              goto LABEL_7;
            }
          }
        }

        else
        {
LABEL_7:
          result = 0;
          *(a1 + 33) = v3;
        }
      }
    }
  }

  else
  {
    result = 0;
    *(a1 + 32) = 1;
    *(a1 + 33) = a3;
    *(a1 + 12) = 0;
  }

  return result;
}

uint64_t arithmetic_encode(int32x2_t *a1, uint64_t a2, int a3, int a4, char a5)
{
  v7 = a1->i32[1];
  v8 = a1->i32[0] >> a5;
  v9 = v8 * (a4 - a3);
  a1->i32[0] = v9;
  v10 = v8 * a3;
  v11 = v10 + v7;
  if (__CFADD__(v10, v7) && (v12 = a1[4].i8[1] + 1, a1[4].i8[1] = v12, a1[1].i32[1]))
  {
    v13 = v12;
    while (1)
    {
      result = aj_ostream_write_bytes(a2, v13, 1);
      if (result)
      {
        break;
      }

      v13 = 0;
      a1[4].i8[1] = 0;
      v15 = a1[1].i32[1] - 1;
      a1[1].i32[1] = v15;
      if (!v15)
      {
        v9 = a1->i32[0];
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    a1->i32[1] = v11;
    if ((v9 - 16777217) >> 24 == 255)
    {
      while (1)
      {
        result = byte_plus_prev(a1, a2, HIBYTE(v11));
        if (result)
        {
          break;
        }

        v16 = vshl_n_s32(*a1, 8uLL);
        *a1 = v16;
        v11 = v16.u32[1];
        v9 = v16.i32[0];
        if ((v16.i32[0] - 16777217) >> 24 != 255)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
LABEL_11:
      result = 0;
      if (!v9)
      {
        a1->i32[0] = -1;
      }
    }
  }

  return result;
}

uint64_t aj_encode_buffers_baseline(int *a1, uint64_t a2)
{
  if (a1[3358] < 1)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    result = aj_mcu_dct(a1, a2);
    if (result)
    {
      break;
    }

    if (++v4 >= a1[3358])
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_encode_buffers_progressive(int *a1, uint8x8_t **a2, int a3)
{
  v3 = a2;
  v45[2] = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = 0;
  memset(v44, 0, sizeof(v44));
  v5 = a1[2];
  v6 = v5 + 7;
  if (v5 < -7)
  {
    v6 = v5 + 14;
  }

  v7 = v6 >> 3;
  if (a1[8] == 2)
  {
    LODWORD(v45[0]) = 8;
    aj_fill_prog_coeff_buf(a1, a2);
    if (v5 >= 1)
    {
      v8 = 0;
      v9 = *(a1 + 2478);
      if (v7 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v7;
      }

      v11 = a1[4952];
      do
      {
        if (v11 >= 1)
        {
          v12 = 0;
          for (i = 0; i < v11; ++i)
          {
            v14 = *(a1 + 2477);
            if (*(v14 + v12) == 1 && !*(v14 + v12 + 4))
            {
              result = (*(v14 + v12 + 224))();
              if (result)
              {
                return result;
              }

              v11 = a1[4952];
            }

            v12 += 296;
          }
        }

        ++v8;
        v9 += 128;
      }

      while (v8 != v10);
    }
  }

  if (a1[3358] < 1)
  {
    return 0;
  }

  v16 = 0;
  v17 = *(a1 + 2478);
  v43 = a1 + 4;
  v18 = a1 + 3368;
  do
  {
    if (a1[8] == 2)
    {
      v19 = *v43;
      if (*v43 >= 1)
      {
        v20 = 0;
        v21 = a1[4952];
        do
        {
          if (v21 >= 1)
          {
            v22 = 0;
            for (j = 0; j < v21; ++j)
            {
              v24 = *(a1 + 2477);
              if (*(v24 + v22) >= 2 && !*(v24 + v22 + 4))
              {
                result = (*(v24 + v22 + 224))();
                if (result)
                {
                  return result;
                }

                v21 = a1[4952];
              }

              v22 += 296;
            }

            v19 = *v43;
          }

          ++v20;
          v17 += 128;
        }

        while (v20 < v19);
      }
    }

    v25 = *a1;
    if (*a1 >= 1)
    {
      v26 = 0;
      v39 = v3;
      v38 = v16;
      v37 = v18;
      do
      {
        if (v43[v26] >= 1)
        {
          v27 = 0;
          v42 = &(&v3[16 * v26])[*(v45 + v26)];
          v28 = &v18[392 * v26];
          if (v26)
          {
            v29 = 0;
          }

          else
          {
            v29 = -1;
          }

          v41 = v29;
          do
          {
            aj_block_dct(v42, v44, (v28 + 135));
            if (v26)
            {
              v30 = 0;
            }

            else
            {
              v30 = v7 == 0;
              if (v7 && a3)
              {
                v30 = *(a1 + 13440) != 0;
              }
            }

            v31 = a1[4952];
            if (v31 >= 1)
            {
              v32 = 0;
              v33 = *(a1 + 2477);
              do
              {
                v34 = *v33;
                if (v34 >= 1)
                {
                  v35 = 0;
                  while (v26 != *(v33 + v35 + 1))
                  {
                    if (v34 == ++v35)
                    {
                      goto LABEL_56;
                    }
                  }

                  if (v34 != 1 || !v30)
                  {
                    result = v33[28](v33, v44, v33[v35 + 24] + 12);
                    if (result)
                    {
                      return result;
                    }

                    v31 = a1[4952];
                  }
                }

LABEL_56:
                ++v32;
                v33 += 37;
              }

              while (v32 < v31);
            }

            v7 += v41;
            ++v27;
          }

          while (v27 < v43[v26]);
          v25 = *a1;
          v3 = v39;
          v16 = v38;
          v18 = v37;
        }

        ++v26;
      }

      while (v26 < v25);
    }

    result = 0;
    ++v16;
  }

  while (v16 < a1[3358]);
  return result;
}

uint64_t aj_encode_row(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a1 + 13360) == 14)
  {
    a2[224] = a2[229];
    a2[225] = a2[231];
    a2[226] = a2[233];
    aj_reset_row_ptrs(a1, a2, (a2 + 224));
    v6 = *(a1 + 19752);

    return v6(a1, a2, a3);
  }

  else
  {
    aj_col_trans_row(a1, a2, a2, *(a1 + 32), *(a1 + 13284));
    v8 = *(a1 + 13284) + 1;
    *(a1 + 13284) = v8;
    if (v8 == *(a1 + 13280))
    {
      result = (*(a1 + 19752))(a1, a2, a3);
      if (result)
      {
        return result;
      }

      *(a1 + 13284) = 0;
      aj_reset_row_ptrs(a1, a2, (a2 + 224));
    }

    return 0;
  }
}

uint64_t aj_encode_row_close(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 13360) == 14)
  {
    goto LABEL_9;
  }

  v4 = *(a1 + 13276);
  v5 = *(a1 + 13284);
  if (v4)
  {
    aj_col_trans_row(a1, a2, a2, v4, v5);
    v5 = *(a1 + 13284) + 1;
    *(a1 + 13284) = v5;
    *(a1 + 13276) = 0;
  }

  if (!v5)
  {
    goto LABEL_9;
  }

  while (v5 < *(a1 + 13280))
  {
    aj_col_trans_row(a1, a2, a2, 0, v5);
    v6 = *(a1 + 13284);
    v5 = v6 + 1;
    *(a1 + 13284) = v6 + 1;
    if (v6 == -1)
    {
      goto LABEL_9;
    }
  }

  result = (*(a1 + 19752))(a1, a2, 1);
  if (!result)
  {
LABEL_9:
    if (*(a1 + 19800))
    {
      aj_concatenate_scans(a1, a2);
    }

    result = aj_ostream_write_bytes(a2 + 1928, 65497, 2);
    if (!result)
    {
      result = aj_ostream_flush_buffer(a2 + 1928);
      if (!result)
      {
        *(a2 + 2016) = *(a2 + 1944);
      }
    }
  }

  return result;
}

uint64_t aj_concatenate_scans(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 19808) < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 19816);
  v6 = a1 + 3424;
  v7 = a1 + 10664;
  while (1)
  {
    if (v4)
    {
      v8 = v5->i32[0];
      if (v5->i32[0] >= 1)
      {
        v9 = 0;
        do
        {
          v10 = v5[v9 + 29];
          if (v10 && !v10[17].i8[1])
          {
            v11 = v5 + 4 * v9;
            result = aj_write_single_dht(a2 + 1928, v10, 1, *(v11 + 1) != 0);
            if (result)
            {
              return result;
            }

            v13 = (v7 + 274 * (*(v11 + 1) != 0) + 273);
            if (v5[8].i32[0])
            {
              v13 = (v6 + 548 * (*(v11 + 1) != 0) + 547);
            }

            *v13 = 0;
            v8 = v5->i32[0];
          }

          ++v9;
        }

        while (v9 < v8);
      }

      result = aj_write_sos_progressive(a2 + 1928, a1, v5);
      if (result)
      {
        break;
      }
    }

    result = aj_prog_encode_close(v5);
    if (result)
    {
      break;
    }

    result = aj_ostream_flush_bitreg(&v5[11]);
    if (result)
    {
      break;
    }

    v14 = v5[20];
    if (v14)
    {
      v15 = v5[21].u32[1];
      if (v15)
      {
        result = aj_ostream_write_buf(a2 + 1928, v14, v15);
        if (result)
        {
          break;
        }
      }
    }

    v16 = v5[12];
    v17 = v5[14];
    if (v16 != v17)
    {
      result = aj_ostream_write_buf(a2 + 1928, v17, (v16 - v17));
      if (result)
      {
        break;
      }
    }

    ++v4;
    v5 += 37;
    if (v4 >= *(a1 + 19808))
    {
      return 0;
    }
  }

  return result;
}

uint64_t aj_encode_all(uint64_t a1, uint64_t a2, int a3)
{
  v5 = (a1 + 0x4000);
  v6 = *(a1 + 32);
  v7 = *(a1 + 19844);
  v8 = *(a1 + 19776);
  if (v7 <= v6)
  {
    v8 *= v6 / v7;
  }

  v9 = *(a1 + 19768);
  *(a2 + 2000) = 0u;
  if (*(a1 + 13360) == 14)
  {
    v10 = *(a2 + 1832) + *(a1 + 13296) * *(a1 + 13316) + *(a1 + 13312);
    v11 = *(a1 + 13328) * *(a1 + 13348);
    v12 = *(a1 + 13344);
    v13 = *(a2 + 1848) + v12 + v11;
    v14 = *(a2 + 1864) + v12 + v11;
  }

  else
  {
    v10 = 0;
    v13 = 0;
    v14 = 0;
  }

  v15 = *(a2 + 1824);
  if (v15 >= *(a2 + 1828))
  {
LABEL_24:
    if (!v5[854] || (result = aj_concatenate_scans(a1, a2), !result))
    {
      if (a3 == 217 && *(a2 + 2096))
      {
        result = aj_ostream_flush_buffer(a2 + 1928);
        if (result)
        {
          return result;
        }
      }

      else
      {
        result = aj_ostream_write_bytes(a2 + 1928, a3 | 0xFF00u, 2);
        if (result)
        {
          return result;
        }

        if (a3 != 217)
        {
          v23 = *(a2 + 2072);
          if (v23)
          {
            v24 = *(a2 + 2080) + *(a2 + 1944) - *(a2 + 2020) - 2;
            v25 = *(a2 + 2088);
            *(a2 + 2088) = v25 + 1;
            *(v23 + 4 * v25) = v24;
          }
        }
      }

      if (*(a2 + 2024))
      {
        (*(a2 + 2032))(*(a2 + 2040));
        result = 0;
        *(a2 + 2048) = *(a2 + 2024);
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v16 = v9 * v6;
    while (1)
    {
      if (*(a2 + 2024))
      {
        v17 = *(a2 + 2048);
        if (!v17)
        {
          (*(a2 + 2032))(*(a2 + 2040));
          v17 = *(a2 + 2024);
        }

        *(a2 + 2048) = v17 - 1;
      }

      if (*(a1 + 13360) == 14)
      {
        *(a2 + 1792) = v10 + 8 * v15 * *(a1 + 13296) * *(a1 + 32);
        v18 = 8 * v15 * *(a1 + 13328);
        *(a2 + 1800) = v13 + v18;
        *(a2 + 1808) = v14 + v18;
      }

      aj_reset_row_ptrs(a1, a2, a2 + 1792);
      if (*(a1 + 13360) != 14)
      {
        for (i = 0; i != 8; ++i)
        {
          aj_col_trans_row(a1, a2, a2, (*(a1 + 12) - *(a1 + 32) * i - *(a1 + 13428) * v15), i);
          *(a2 + 1832) += v16;
          *(a2 + 1840) += v16;
          if (v5[862])
          {
            if (v5[865] <= *(a1 + 32))
            {
              v20 = 1;
            }

            else
            {
              v20 = i & 1;
            }

            v21 = v8 * v20;
            *(a2 + 1848) += v21;
            *(a2 + 1856) += v21;
          }
        }
      }

      result = (*(a1 + 19752))(a1, a2, *(a1 + 13436) - 1 == v15);
      if (result)
      {
        break;
      }

      if (++v15 >= *(a2 + 1828))
      {
        goto LABEL_24;
      }
    }
  }

  return result;
}

uint64_t aj_encode_all_mt(uint64_t a1, uint64_t a2, signed int a3)
{
  v73[295] = *MEMORY[0x277D85DE8];
  v6 = (a1 + 0x4000);
  bzero(&v69, 0x9F0uLL);
  v63 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0u;
  memset(v60, 0, sizeof(v60));
  memset(v65, 0, sizeof(v65));
  v7 = *(a1 + 13436);
  v59 = v6;
  v8 = v6[844];
  if (v7 % v8)
  {
    v9 = v7 / v8 + 1;
  }

  else
  {
    v9 = v7 / v8;
  }

  if (v9 / a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v9;
  }

  if ((v9 / a3) <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v9 / a3;
  }

  *(&v60[0] + 1) = mt_write_callback;
  *&v70[0] = a2;
  v66 = a1;
  v67 = 0;
  v68 = v11;
  v12 = estimate_jpeg_size(*(a1 + 8), *(a1 + 12));
  LODWORD(v13) = v10 << 10;
  if (v12 <= (v10 << 10))
  {
    v13 = v13;
  }

  else
  {
    v13 = v12;
  }

  if (v10 > 1)
  {
    v14 = v71;
    v15 = v10 - 1;
    v58 = v10;
    v16 = 2 * v11;
    v17 = (v13 / v10);
    v18 = v10 - 1;
    v19 = v11;
    while (1)
    {
      v20 = malloc_type_calloc(1uLL, 0x840uLL, 0x10D004029887189uLL);
      *(v14 + 3) = v20;
      if (!v20)
      {
LABEL_54:
        v33 = 6;
LABEL_56:
        v10 = v58;
        goto LABEL_59;
      }

      enc_buffers = aj_allocate_enc_buffers(a1, v20);
      if (enc_buffers)
      {
        v33 = enc_buffers;
        goto LABEL_56;
      }

      v63 = 0;
      v64 = v17;
      v63 = malloc_type_calloc(1uLL, v17, 0x2D36EAB7uLL);
      if (!v63)
      {
        goto LABEL_54;
      }

      *v14 = a1;
      *(v14 + 2) = v19;
      *(v14 + 3) = v16;
      v22 = *(v14 + 3);
      *(v22 + 2056) = *(a2 + 2056);
      *(v22 + 2068) = *(a2 + 2068);
      *(v22 + 2072) = *(a2 + 2072);
      *(v22 + 2080) = *(a2 + 2080);
      *(v22 + 2096) = *(a2 + 2096);
      *(v22 + 2020) = 0;
      if (*(a1 + 13360) == 14)
      {
        return 3;
      }

      v23 = v59[844] * v19;
      v24 = *(a1 + 19768);
      *(v22 + 1832) = *(a2 + 1832) + v24 * v23 * *(a1 + 13428);
      *(*(v14 + 3) + 1840) = *(*(v14 + 3) + 1832) + v24;
      if (v59[862])
      {
        break;
      }

LABEL_28:
      *&v61 = v14;
      aj_init_out_stream(*(v14 + 3) + 1928, v60, &v63);
      v19 += v11;
      v14 += 160;
      v16 += v11;
      if (!--v18)
      {
        v30 = v71;
        v31 = v65 + 1;
        v10 = v58;
        do
        {
          pthread_create(v31, 0, enc_job, v30);
          v30 += 160;
          ++v31;
          --v15;
        }

        while (v15);
        goto LABEL_31;
      }
    }

    v25 = v59[865];
    if (v25 == 2)
    {
      v26 = 4;
      v27 = 1;
    }

    else
    {
      if (v25 != 1)
      {
        v26 = 8;
LABEL_27:
        v28 = v26 * v23;
        v29 = *(a1 + 19776);
        *(*(v14 + 3) + 1848) = *(a2 + 1848) + v29 * v28;
        *(*(v14 + 3) + 1856) = *(*(v14 + 3) + 1848) + v29;
        goto LABEL_28;
      }

      v26 = 16;
      v27 = 2;
    }

    if (*(a1 + 32) != v27)
    {
      v26 = 8;
    }

    goto LABEL_27;
  }

LABEL_31:
  enc_job(&v66);
  if (v10 < 1)
  {
    goto LABEL_52;
  }

  v32 = 0;
  LODWORD(v33) = 0;
  v34 = &v69;
  do
  {
    if (v32)
    {
      pthread_join(*(v65 + v32), 0);
    }

    v36 = *v34;
    v34 += 40;
    v35 = v36;
    if (v36)
    {
      v33 = v35;
    }

    else
    {
      v33 = v33;
    }

    v32 += 8;
  }

  while (8 * v10 != v32);
  if (v33)
  {
    goto LABEL_59;
  }

  if (v10 < 2)
  {
    goto LABEL_52;
  }

  v37 = v73;
  v38 = 1;
  while (2)
  {
    v39 = *(a2 + 2072);
    if (v39)
    {
      v40 = *&v70[10 * v38];
      v41 = *(v40 + 2084);
      if (v41 < *(v40 + 2088))
      {
        v42 = *(a2 + 1944) - *(a2 + 2020);
        do
        {
          *(v39 + 4 * v41++) += v42;
        }

        while (v41 < *(v40 + 2088));
      }
    }

    v43 = 0;
    v44 = v37;
    do
    {
      v45 = *(v44 - 1);
      if (!v45)
      {
        break;
      }

      v46 = aj_ostream_write_buf(a2 + 1928, v45, *v44);
      if (v46)
      {
        v33 = v46;
        aj_log_error("Enc", "IO error when copying buffer %d from thread %d");
        goto LABEL_59;
      }

      ++v43;
      v44 += 4;
    }

    while (v43 != 8);
    v47 = &v66 + 20 * v38;
    v49 = v47[3];
    v48 = v47 + 3;
    v50 = aj_ostream_write_buf(a2 + 1928, *(v49 + 1952), *(v49 + 1936) - *(v49 + 1952));
    if (!v50)
    {
      *(a2 + 2016) += *(*v48 + 2016);
      ++v38;
      v37 += 40;
      if (v38 != v10)
      {
        continue;
      }

LABEL_52:
      v33 = aj_ostream_flush_buffer(a2 + 1928);
      if (v33)
      {
        aj_log_error("Enc", "IO error when flushing thread buffers");
      }

      goto LABEL_59;
    }

    break;
  }

  v33 = v50;
  aj_log_error("Enc", "IO error when copying buffer from thread %d");
LABEL_59:
  if (v10 >= 2)
  {
    v51 = &v72;
    for (i = 1; i != v10; ++i)
    {
      v53 = &v66 + 20 * i;
      if (v53[3])
      {
        for (j = 0; j != 16; j += 2)
        {
          v55 = v51[j];
          if (!v55)
          {
            break;
          }

          free(v55);
          v51[j] = 0;
        }

        v56 = v53[3];
        if (v56[244])
        {
          free(v56[244]);
          v56 = v53[3];
          v56[244] = 0;
        }

        if (!v56[224] || (free(v56[224]), *(v53[3] + 1792) = 0, (v56 = v53[3]) != 0))
        {
          free(v56);
        }

        v53[3] = 0;
      }

      v51 += 20;
    }
  }

  return v33;
}

uint64_t mt_write_callback(const void *a1, int a2, uint64_t a3)
{
  v4 = a3 + 32;
  v5 = 8;
  while (*v4)
  {
    v4 += 16;
    if (!--v5)
    {
      aj_log_error("Enc", "Max number of allocations used in thread job.");
      return 1;
    }
  }

  v6 = a2;
  *(v4 + 8) = a2;
  if (*v4)
  {
    free(*v4);
    *v4 = 0;
  }

  v7 = malloc_type_malloc(v6, 0x9E377E95uLL);
  *v4 = v7;
  if (v7)
  {
    memcpy(v7, a1, v6);
    return 0;
  }

  return 1;
}

uint64_t enc_job(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *a1;
  for (i = *(a1 + 8); i < *(a1 + 12); ++i)
  {
    v5 = v3[4940];
    v6 = v5 * i;
    *(v2 + 1824) = v5 * i;
    v7 = v5 + v5 * i;
    *(v2 + 1828) = v7;
    *(v2 + 2060) = 0;
    v8 = v3[3358] * v6;
    v9 = *(v2 + 2056);
    v10 = v8 / v9;
    v11 = *(v2 + 2068);
    *(v2 + 2064) = (v10 + v11 - 1) & 7;
    if (i == *(a1 + 8))
    {
      *(v2 + 2084) = v10;
    }

    *(v2 + 2088) = v10;
    *(v2 + 2000) = 0;
    *(v2 + 2008) = 0;
    v12 = v3[3359];
    if (v7 >= v12)
    {
      *(v2 + 1828) = v12;
      LOBYTE(v13) = -39;
    }

    else
    {
      v13 = (v3[3358] * v7 / v9 + v11 - 1) & 7 | 0xFFFFFFD0;
    }

    v14 = aj_encode_all(v3, v2, v13);
    *(a1 + 16) = v14;
    if (v14)
    {
      aj_log_error("Enc", "IO error in MT encode job, mcu rows %d to %d", *(v2 + 1824), *(v2 + 1828));
      return 0;
    }
  }

  return 0;
}

int *plugin_iosaccelerator_create(uint64_t a1, int *a2, uint64_t a3, int *a4)
{
  keys[1] = *MEMORY[0x277D85DE8];
  v7 = malloc_type_calloc(1uLL, 0xE8uLL, 0x106004020B7C528uLL);
  if (!v7)
  {
    v12 = 6;
    goto LABEL_25;
  }

  v8 = *MEMORY[0x277CD2898];
  v9 = IOServiceMatching("AppleM2ScalerCSCDriver");
  MatchingService = IOServiceGetMatchingService(v8, v9);
  v11 = IORegistryEntrySearchCFProperty(MatchingService, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
  IOObjectRelease(MatchingService);
  if (!v11)
  {
    aj_log_error("IOSAPlugin", "Unable to get scaler capabilities");
    goto LABEL_24;
  }

  keys[0] = 0;
  if (get_Int64_value(v11, @"IOSurfaceAcceleratorFilterVerticalTapsCount", keys) || (v7[2] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorFilterHorizontalTapsCount", keys)) || (v7[3] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorFormatIn2Planes420", keys)) || (*(v7 + 16) = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorFormatOut2Planes420", keys)) || (*(v7 + 17) = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorFormatIn2Planes422", keys)) || (*(v7 + 18) = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorFormatOut2Planes422", keys)) || (*(v7 + 19) = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinSourceWidth", keys)) || (v7[5] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinSourceHeight", keys)) || (v7[6] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxSourceWidth", keys)) || (v7[7] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxSourceHeight", keys)) || (v7[8] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinDestWidth", keys)) || (v7[9] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMinDestHeight", keys)) || (v7[10] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxDestWidth", keys)) || (v7[11] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxDestHeight", keys)) || (v7[12] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxHUpscale", keys)) || (v7[13] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxHDownscale", keys)) || (v7[14] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxVUpscale", keys)) || (v7[15] = keys[0], keys[0] = 0, get_Int64_value(v11, @"IOSurfaceAcceleratorCapabilitiesMaxVDownscale", keys)))
  {
    aj_log_error("IOSAPlugin", "Bailing from get_scaler_setup");
    CFRelease(v11);
LABEL_24:
    v12 = 1;
    goto LABEL_25;
  }

  v7[16] = keys[0];
  if (v7[2] != 9)
  {
    aj_log_error("IOSAPlugin", "WARNING: Device is reporting v_taps != 9. This not fatal but may lead to artifacts in image. Please file a radar to CoreMedia JPEG Software|All with device and OS versions for verification.");
  }

  CFRelease(v11);
  if (v7[2] <= 0)
  {
    aj_log_error("IOSAPlugin", "vTaps is negative or zero: %d");
    goto LABEL_24;
  }

  if (v7[3] <= 0)
  {
    aj_log_error("IOSAPlugin", "hTaps is negative or zero: %d");
    goto LABEL_24;
  }

  v14 = a2[4];
  v12 = 3;
  if (v14 > 9)
  {
    if (v14 != 15)
    {
      if (v14 != 10)
      {
        goto LABEL_25;
      }

      if (!*(v7 + 17) || !*(v7 + 16))
      {
        aj_log_error("IOSAPlugin", "Unsupported format: 420f");
        goto LABEL_25;
      }
    }
  }

  else if ((v14 - 3) >= 2)
  {
    if (v14 != 8)
    {
      goto LABEL_25;
    }

    if (!*(v7 + 19) || !*(v7 + 18))
    {
      aj_log_error("IOSAPlugin", "Unsupported format: 422f");
      goto LABEL_25;
    }
  }

  v15 = *a2;
  if (*a2 > v7[7] || v15 < v7[5])
  {
    aj_log_error("IOSAPlugin", "Input width is outside the supported range: %d");
    goto LABEL_25;
  }

  v16 = a2[2];
  if (v16 > v7[11] || v16 < v7[9])
  {
    aj_log_error("IOSAPlugin", "Output width is outside the supported range: %d");
    goto LABEL_25;
  }

  if (v15 > v16 && v15 > v7[14] * v16 || v15 < v16 && v7[13] * v15 < v16)
  {
    aj_log_error("IOSAPlugin", "Horizontal scaling factor is beyond the supported range: %d -> %d");
    goto LABEL_25;
  }

  v17 = a2[1];
  if (v17 < v7[6])
  {
    aj_log_error("IOSAPlugin", "Input height is smaller than the supported min: %d");
    goto LABEL_25;
  }

  v18 = a2[3];
  if (v18 < v7[10])
  {
    aj_log_error("IOSAPlugin", "Output height is smaller than the supported min: %d");
    goto LABEL_25;
  }

  if (a2[5] > v7[8])
  {
    aj_log_error("IOSAPlugin", "max-input-rows is larger than the supported max: %d");
    goto LABEL_25;
  }

  if (v17 < v18)
  {
    aj_log_error("IOSAPlugin", "Up-scaling vertically is currently not supported");
    goto LABEL_25;
  }

  if (v17 <= v18 || v17 <= v7[16] * v18)
  {
    v19 = 0;
    if (v14 > 9)
    {
      if (v14 == 10)
      {
        v20 = 0x234323066;
LABEL_74:
        v19 = 1;
        v21 = 2;
        goto LABEL_75;
      }
    }

    else if ((v14 - 3) >= 2)
    {
      if (v14 != 8)
      {
        goto LABEL_76;
      }

      v20 = 0x134323266;
      goto LABEL_74;
    }

    v19 = 0;
    v20 = 0x142475241;
    v21 = 1;
LABEL_75:
    *(v7 + 18) = v20;
    v7[38] = v21;
LABEL_76:
    v22 = *MEMORY[0x277CBECE8];
    if (IOSurfaceAcceleratorCreate())
    {
      aj_log_error("IOSAPlugin", "Unable to create the IOSurfaceAcceleratorRef");
    }

    else
    {
      v23 = a2[3];
      v24 = a2[1];
      v25 = (v23 << 20) / v24;
      v26 = (v24 << 20) / v23;
      *(v7 + 24) = v25;
      *(v7 + 25) = v26;
      *(v7 + 26) = 0;
      v27 = v7[6];
      if (v27 <= ((v26 * v7[10] + 0xFFFFF) >> 20))
      {
        v27 = (v26 * v7[10] + 0xFFFFF) >> 20;
      }

      v28 = ((4 * v26 + 0xFFFFF) >> 20) + ((2 * v26 + 0xFFFFF) >> 20) + v27;
      v7[40] = v28;
      if (v7[37] == 2)
      {
        v29 = v26 & 0x1FFFFF;
        if ((v26 & 0x1FFFFF) > 0x100000)
        {
          v29 = 0x200000 - (v26 & 0x1FFFFF);
        }

        if (v29)
        {
          v30 = 0x100000 / v29 + 1;
        }

        else
        {
          v30 = 1;
        }

        v32 = (((v30 * v26 + 0xFFFFF) >> 20) & 1) + ((v30 * v26 + 0xFFFFF) >> 20);
        v31 = a2[5];
        if (v32 <= v31 / 2)
        {
          *(v7 + 224) = 1;
          v28 += v32;
          v7[40] = v28;
        }

        else
        {
          *(v7 + 224) = 0;
        }
      }

      else
      {
        *(v7 + 224) = 0;
        v31 = a2[5];
      }

      v33 = v28 + v31;
      v7[39] = (v25 * v33 + 0xFFFFF) >> 20;
      if (v19)
      {
        v34 = a2[2] & 1;
      }

      else
      {
        v34 = 0;
      }

      IOSurface = create_IOSurface(*a2, v33, v7[36]);
      *(v7 + 21) = IOSurface;
      if (IOSurface)
      {
        v36 = create_IOSurface(a2[2] + v34, v7[39], v7[36]);
        *(v7 + 22) = v36;
        if (v36)
        {
          v7[55] = 0;
          *(v7 + 16) = *a2;
          *(v7 + 17) = *(a2 + 1);
          valuePtr = 0;
          v37 = CFNumberCreate(v22, kCFNumberIntType, &valuePtr);
          v38 = *MEMORY[0x277D1AE40];
          values = v37;
          keys[0] = v38;
          *(v7 + 15) = CFDictionaryCreate(v22, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFRelease(v37);
          *&v39 = 0;
          v7[28] = a2[2] + v34;
          v7[29] = 0;
          *(v7 + 6) = v39;
          v40 = *a2 << 16;
          *(v7 + 10) = 0;
          *(v7 + 11) = v40;
          *(v7 + 9) = 0;
          set_plugin_config(v7, a3);
          v12 = 0;
          if (!a4)
          {
            return v7;
          }

          goto LABEL_26;
        }

        aj_log_error("IOSAPlugin", "Couldn't create destination IOSurface");
      }

      else
      {
        aj_log_error("IOSAPlugin", "Couldn't create source IOSurface");
      }

      if (*v7)
      {
        CFRelease(*v7);
        *v7 = 0;
      }

      v41 = *(v7 + 21);
      if (v41)
      {
        CFRelease(v41);
        *(v7 + 21) = 0;
      }

      v42 = *(v7 + 22);
      if (v42)
      {
        CFRelease(v42);
        *(v7 + 22) = 0;
      }

      v43 = *(v7 + 15);
      if (v43)
      {
        CFRelease(v43);
        *(v7 + 15) = 0;
      }
    }

    goto LABEL_24;
  }

  aj_log_error("IOSAPlugin", "Vertical scaling factor is beyond the supported range: %d -> %d");
LABEL_25:
  plugin_iosaccelerator_destroy(v7);
  v7 = 0;
  if (a4)
  {
LABEL_26:
    *a4 = v12;
  }

  return v7;
}

size_t set_plugin_config(uint64_t a1, uint64_t a2)
{
  *a2 = *(a1 + 156);
  *(a2 + 8) = 1;
  *(a2 + 80) = 1;
  IOSurfaceLock(*(a1 + 168), 0, 0);
  *(a1 + 184) = 1;
  result = IOSurfaceLock(*(a1 + 176), 1u, 0);
  *(a1 + 185) = 1;
  if (*(a1 + 152) >= 1)
  {
    v5 = 0;
    v6 = (a2 + 120);
    do
    {
      *(v6 - 13) = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v5);
      *(v6 - 9) = IOSurfaceGetBytesPerRowOfPlane(*(a1 + 168), v5);
      *(v6 - 4) = IOSurfaceGetBaseAddressOfPlane(*(a1 + 176), v5);
      result = IOSurfaceGetBytesPerRowOfPlane(*(a1 + 176), v5);
      *v6++ = result;
      ++v5;
    }

    while (v5 < *(a1 + 152));
  }

  return result;
}

void plugin_iosaccelerator_destroy(void *a1)
{
  if (a1)
  {
    if (*(a1 + 184))
    {
      v2 = a1[21];
      if (v2)
      {
        IOSurfaceUnlock(v2, 0, 0);
        *(a1 + 184) = 0;
      }
    }

    if (*(a1 + 185))
    {
      v3 = a1[22];
      if (v3)
      {
        IOSurfaceUnlock(v3, 1u, 0);
        *(a1 + 185) = 0;
      }
    }

    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }

    v4 = a1[21];
    if (v4)
    {
      CFRelease(v4);
      a1[21] = 0;
    }

    v5 = a1[22];
    if (v5)
    {
      CFRelease(v5);
      a1[22] = 0;
    }

    v6 = a1[15];
    if (v6)
    {
      CFRelease(v6);
    }

    free(a1);
  }
}

uint64_t plugin_iosaccelerator_resize(uint64_t a1, int *a2, _DWORD *a3, int a4)
{
  if (!a1)
  {
    return 1;
  }

  v7 = *a2;
  v8 = a2[1];
  v9 = *(a1 + 220) + *a2;
  *(a1 + 220) = v9;
  v10 = v8 + v7;
  if (a4)
  {
    LODWORD(v11) = *(a1 + 140) - *(a1 + 216);
    v12 = *(a1 + 208);
    v13 = (v10 << 20) - v12;
  }

  else
  {
    v15 = *(a1 + 132) - v9;
    v16 = *(a1 + 24);
    v17 = __OFSUB__(v16, v15);
    v18 = v16 - v15;
    if ((v18 < 0) ^ v17 | (v18 == 0))
    {
      v19 = 0;
    }

    else
    {
      v19 = v18;
    }

    v20 = *(a1 + 192);
    v21 = *(a1 + 40);
    if (v21 > (v20 * (v19 + v15)) >> 20)
    {
      v19 = ((*(a1 + 200) * v21 + 0xFFFFF) >> 20) - v15;
    }

    LODWORD(v11) = ((v20 * (v9 - v19) + 0x80000) >> 20) - *(a1 + 216);
    if (*(a1 + 148) >= 2)
    {
      LODWORD(v11) = v11 & 0xFFFFFFFE;
      if (*(a1 + 224))
      {
        v22 = v11 + 2;
        do
        {
          v22 -= 2;
        }

        while (((*(a1 + 200) * v22) & 0x100000) != 0);
        if (v22)
        {
          LODWORD(v11) = v22;
        }
      }
    }

    v12 = *(a1 + 208);
    v13 = *(a1 + 200) * v11;
  }

  *(a1 + 96) = v13 >> 4;
  *(a1 + 116) = v11;
  *(a1 + 80) = v12 >> 4;
  if (*(a1 + 184))
  {
    IOSurfaceUnlock(*(a1 + 168), 0, 0);
    *(a1 + 184) = 0;
  }

  if (*(a1 + 185))
  {
    IOSurfaceUnlock(*(a1 + 176), 1u, 0);
    *(a1 + 185) = 0;
  }

  if (IOSurfaceAcceleratorTransformSurface())
  {
    aj_log_error("IOSAPlugin", "Rescaling error: 0x%X");
    return 1;
  }

  IOSurfaceLock(*(a1 + 168), 0, 0);
  *(a1 + 184) = 1;
  IOSurfaceLock(*(a1 + 176), 1u, 0);
  *(a1 + 185) = 1;
  if (a4 || v11 < 5)
  {
    v23 = *(a1 + 208) + v13;
    *(a1 + 208) = v23;
    *(a1 + 216) += v11;
    if (a4)
    {
      v24 = 0;
      goto LABEL_46;
    }
  }

  else
  {
    v11 = (v11 - 4);
    v23 = *(a1 + 208) + *(a1 + 200) * v11;
    *(a1 + 216) += v11;
  }

  v25 = *(a1 + 148);
  if (v25 <= 1)
  {
    v26 = v23 >> 20;
  }

  else
  {
    v26 = (v23 >> 20) & 0xFFFFFFFE;
  }

  *(a1 + 208) = v23 - (v26 << 20);
  v24 = v10 - v26;
  v27 = *(a1 + 168);
  PlaneCount = IOSurfaceGetPlaneCount(v27);
  if (v26)
  {
    v29 = v10 == v26;
  }

  else
  {
    v29 = 1;
  }

  if (!v29)
  {
    if (v25 == 2 && (v24 & 1) != 0)
    {
      aj_log_error("IOSAPlugin", "nrows is not even");
      return 1;
    }

    if (PlaneCount >= 1)
    {
      v38 = a3;
      v30 = 0;
      v31 = v25 >> 1;
      v32 = PlaneCount & 0x7FFFFFFF;
      do
      {
        if (v30)
        {
          v33 = v31;
        }

        else
        {
          v33 = 0;
        }

        v34 = v24 >> v33;
        v35 = v26 >> v33;
        BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v27, v30);
        BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v27, v30);
        memmove(BaseAddressOfPlane, &BaseAddressOfPlane[BytesPerRowOfPlane * v35], BytesPerRowOfPlane * v34);
        ++v30;
      }

      while (v32 != v30);
      a3 = v38;
    }
  }

LABEL_46:
  result = 0;
  *a3 = v11;
  a3[1] = v24;
  return result;
}

uint64_t get_Int64_value(const __CFDictionary *a1, const void *a2, void *a3)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberSInt64Type, a3);
    return 0;
  }

  else
  {
    aj_log_error("IOSAPlugin", "Unable to get value for key.");
    return 1;
  }
}

IOSurfaceRef create_IOSurface(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  if (a3 > 1111970368)
  {
    if (a3 != 1111970369 && a3 != 1380401729)
    {
      goto LABEL_8;
    }

    v6 = 0;
    v10 = 0;
    v9 = 4;
    v7 = 1;
    v8 = 1;
  }

  else
  {
    if (a3 != 875704422)
    {
      if (a3 == 875704934)
      {
        v6 = 0;
        v7 = 1;
        v8 = 2;
        v9 = 1;
        v10 = 1;
        goto LABEL_10;
      }

LABEL_8:
      aj_log_error("IOSAPlugin", "Only 420f, 422f and RGBA/BGRA are supported");
      return 0;
    }

    v6 = 1;
    v7 = 2;
    v9 = 1;
    v10 = 1;
    v8 = 2;
  }

LABEL_10:
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!Mutable)
  {
    aj_log_error("IOSAPlugin", "Unable to create options dictionary");
    return 0;
  }

  v12 = Mutable;
  v24 = v7;
  v13 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  set_int_value(Mutable, *MEMORY[0x277CD2A70], v3);
  set_int_value(v12, *MEMORY[0x277CD2B88], a1);
  set_int_value(v12, *MEMORY[0x277CD2A28], a2);
  v15 = CFArrayCreateMutable(0, v8, MEMORY[0x277CBF128]);
  if (v15)
  {
    v16 = v15;
    v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v17)
    {
      v18 = v17;
      set_int_value(v17, *MEMORY[0x277CD2B50], a1);
      set_int_value(v18, *MEMORY[0x277CD2B18], a2);
      set_int_value(v18, *MEMORY[0x277CD2A98], v9);
      set_int_value(v18, *MEMORY[0x277CD2B38], 0);
      set_int_value(v18, *MEMORY[0x277CD2AA0], v9 * v13);
      set_int_value(v18, *MEMORY[0x277CD2B40], v9 * v14 * v13);
      CFArrayAppendValue(v16, v18);
      CFRelease(v18);
    }

    if (v10)
    {
      v19 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (v19)
      {
        v20 = v19;
        if (v6)
        {
          LODWORD(a2) = (a2 + 1) >> 1;
        }

        set_int_value(v19, *MEMORY[0x277CD2B50], (a1 + 1) >> 1);
        set_int_value(v20, *MEMORY[0x277CD2B18], a2);
        set_int_value(v20, *MEMORY[0x277CD2A98], 2);
        set_int_value(v20, *MEMORY[0x277CD2B38], v14 * v13);
        set_int_value(v20, *MEMORY[0x277CD2AA0], (a1 + 7) & 0xFFFFFFF8);
        set_int_value(v20, *MEMORY[0x277CD2B40], v14 / v24 * v13);
        CFArrayAppendValue(v16, v20);
        CFRelease(v20);
      }
    }

    CFDictionarySetValue(v12, *MEMORY[0x277CD2B30], v16);
    CFRelease(v16);
  }

  if (v10)
  {
    v21 = (v14 / v24 + v14) * v13;
  }

  else
  {
    LODWORD(v21) = 4 * v14 * v13;
  }

  set_int_value(v12, *MEMORY[0x277CD2948], v21);
  v22 = IOSurfaceCreate(v12);
  if (!v22)
  {
    aj_log_error("IOSAPlugin", "Unable to create an output surface");
  }

  CFRelease(v12);
  return v22;
}

void set_int_value(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  if (v5)
  {
    CFRelease(v5);
  }
}

void *aj_reset_mcustate(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  result[4] = 0x700000000;
  return result;
}

uint64_t *aj_init_component(uint64_t *result, uint64_t a2, int a3, int a4, int a5)
{
  v7 = result;
  v8 = *result;
  v9 = result[1] + 8;
  v10 = a3;
  v11 = *result + 4 * a3;
  *(a2 + 32) = *(v9 + 16 * *(v11 + 3356));
  *(a2 + 40) = *(v9 + 16 * *(v11 + 3372) + 8);
  v12 = *(result + 42);
  *(a2 + 712) = v12;
  if (a3 && !a5)
  {
    if (*(result + 1721) || v12 == 8)
    {
      if (!*(result + 1653) && *(result + 6888) && v12 != 1)
      {
        v12 >>= 1;
        goto LABEL_12;
      }
    }

    else if (*(v8 + 16) == 1 && *(v8 + 32) == 1)
    {
      v12 *= 2;
LABEL_12:
      *(a2 + 712) = v12;
    }
  }

  *(a2 + 536) = 8 / v12;
  v13 = (v8 + 4 * v10);
  if (*(v8 + 86))
  {
    goto LABEL_32;
  }

  if (a4)
  {
    *(a2 + 704) = &glob_non_zigzag;
    *(a2 + 696) = &glob_non_zigzag_pm;
    result = aj_init_QT_as_no_op(a2 + 48, 1);
    goto LABEL_32;
  }

  v14 = v8 + (v13[12] << 8);
  v15 = &aj_glob_zigzag_pm;
  if (v12 == 1)
  {
    v16 = &aj_glob_zigzag_trans;
  }

  else
  {
    v16 = aj_glob_zigzag;
  }

  if (v12 == 1)
  {
    v15 = &aj_glob_zigzag_trans_pm;
  }

  *(a2 + 704) = v16;
  *(a2 + 696) = v15;
  if (*(v8 + 4) == 12)
  {
    aj_init_QT_as_no_op(a2 + 48, v12);
    result = aj_init_QT_aanIDCT((v14 + 88), (a2 + 720), *(a2 + 712), v16);
    goto LABEL_32;
  }

  if (*(v8 + 84))
  {
    v17 = v16;
  }

  else
  {
    v17 = &glob_non_zigzag;
  }

  result = aj_init_QT_aanIDCT((v14 + 88), (a2 + 48), v12, v17);
  v18 = *(v7 + 6680);
  if (v18 == 1)
  {
    if (a3)
    {
      goto LABEL_33;
    }

    goto LABEL_35;
  }

  if (v18 == 2 && *(v14 + 88) >= 4 && *(*v7 + 8) <= 640 && !a3 && *(*v7 + 12) < 641)
  {
LABEL_35:
    if (*(a2 + 712) == 1)
    {
      result = aj_mosquito_spray_enable(a2);
    }

    goto LABEL_37;
  }

LABEL_32:
  if (!a3)
  {
LABEL_37:
    v19 = *(*(v7 + 8) + 88);
    goto LABEL_38;
  }

LABEL_33:
  v19 = 1;
LABEL_38:
  *(a2 + 8) = v19;
  *a2 = v13[4];
  *(a2 + 4) = v13[8];
  *(a2 + 12) = 0;
  return result;
}

uint64_t aj_compute_helpers(int32x2_t *a1)
{
  v2 = *a1;
  result = aj_get_format_description(a1[822].i32[1], &a1[2] + 4);
  if (!result)
  {
    v4 = a1[867].u8[1];
    if (a1[867].i8[1])
    {
      v4 = a1[867].i32[1] == 0;
    }

    if (a1[2].i32[1] == 1 && v4 == 0)
    {
      v6 = 1;
    }

    else
    {
      v6 = *a1->i32[0];
    }

    a1[808].i32[0] = v6;
    a1[808].i32[1] = 0;
    v7 = *(*&a1[1] + 88);
    a1[809].i32[0] = v7;
    a1[809].i32[1] = v7 + 1;
    a1[810].i32[0] = v7 + 2;
    v8 = a1[810].u32[1];
    v9 = a1[810].i32[1] & 1;
    v10 = a1[5].i32[1];
    v11 = a1[6].i32[0];
    if (v10 <= 1)
    {
      v9 = 0;
    }

    a1[811].i32[1] = v8 + v9;
    v12 = a1[811].i32[0];
    if (v11 <= 1)
    {
      a1[812].i32[0] = v12;
    }

    else
    {
      a1[812].i32[0] = (a1[811].i32[0] & 1) + a1[811].i32[0];
      v13 = a1[813].i32[0];
      if ((v13 & 1) != 0 && v13 < v12)
      {
        a1[813].i32[0] = v13 + 1;
      }
    }

    v14 = a1[812].i32[1];
    if (v10 >= 2 && (v14 & 1) != 0 && v14 < v8)
    {
      a1[812].i32[1] = ++v14;
    }

    compute_padding(v8, v14, v10, &a1[824]);
    a1[824].i32[1] = a1[811].i32[1] - (a1[812].i32[1] + a1[824].i32[0]);
    compute_padding(a1[811].u32[0], a1[813].i32[0], a1[6].i32[0], &a1[823]);
    v15 = a1[813].i32[0];
    a1[823].i32[1] = a1[812].i32[0] - (v15 + a1[823].i32[0]);
    v16 = &a1[3] + 1;
    v17 = vld1_dup_f32(v16);
    a1[825] = vmul_s32(a1[824], v17);
    v18 = a1[1];
    v19 = a1[21].i32[0];
    v21 = v18[18];
    v20 = v18[19];
    a1[21].i32[1] = v20 / v19;
    a1[22].i32[0] = v21 / v19;
    v22 = a1[826].i32[1];
    if (v22)
    {
      v23 = 1 << (v22 + 3);
    }

    else
    {
      v23 = v19;
    }

    v24 = a1[853].i32[1] / v23;
    v25 = a1[854].i32[0] / v23;
    v26 = a1[853].i32[0];
    v27 = v26 / v20;
    v28 = v26 % v20;
    v29 = (v23 - 1 + v20 - v26 % v20) / v23;
    if (v29 >= v25)
    {
      v30 = a1[854].i32[0] / v23;
    }

    else
    {
      v30 = v29;
    }

    v31 = a1[852].i32[1];
    v32 = v31 / v21;
    v33 = v31 % v21;
    v34 = (v23 - 1 + v21 - v31 % v21) / v23;
    if (v34 >= v24)
    {
      v35 = a1[853].i32[1] / v23;
    }

    else
    {
      v35 = v34;
    }

    v36 = v25 - v30;
    v37 = v24 - v35;
    v38 = (v23 + v21 - 1) / v21;
    v39 = (v21 - 1 + v37 * v23) / v21;
    v40 = v39 + v32 + v38;
    a1[854].i32[1] = v27;
    a1[855].i32[0] = (v20 - 1 + v36 * v23) / v20 + v27 + (v23 + v20 - 1) / v20;
    a1[855].i32[1] = v32;
    a1[856].i32[0] = v40;
    v41 = (v38 + v39) * v21;
    if (v40 == v18[20])
    {
      v42 = *(*a1 + 8) % v21;
      if (v42)
      {
        v41 -= v21 - v42;
      }
    }

    a1[862].i32[1] = v41 / v23;
    a1[827].i32[0] = v24;
    a1[827].i32[1] = v25;
    a1[828].i32[0] = v22;
    v43 = 1;
    if (v22 >= 1)
    {
      v43 = (1 << v22) / *(*a1 + 32);
    }

    a1[828].i32[1] = v43;
    v44 = v33 / v23;
    a1[856].i32[1] = v44;
    a1[857].i32[0] = v28 / v23;
    if (v21 <= v23)
    {
      v45 = 1;
    }

    else if (v24 <= v34)
    {
      v45 = v44 + v24;
    }

    else
    {
      v45 = v21 / v23;
      if (v37 % v45)
      {
        v45 = v37 % v45;
      }
    }

    a1[857].i32[1] = v45;
    if (v20 <= v23)
    {
      v46 = 1;
    }

    else if (v25 <= v29)
    {
      v46 = v28 / v23 + v25;
    }

    else
    {
      v46 = v20 / v23;
      if (v36 % v46)
      {
        v46 = v36 % v46;
      }
    }

    a1[858].i32[0] = v46;
    v47 = a1[812].i32[1];
    a1[822].i8[1] = v24 != v47;
    a1[822].i8[0] = v25 != v15;
    v48 = *(*a1 + 4);
    if (v48 <= 8)
    {
      v50 = v24 != v47 || v25 != v15;
      if (*(*a1 + 86) && v50)
      {
        goto LABEL_59;
      }
    }

    else if (v24 != v47 || v25 != v15)
    {
LABEL_59:
      aj_log_error("DecodeInit", "Resizing is not supported for 12-bit or lossless jpegs");
      return 3;
    }

    v51 = *v2 == 3 && v2[4] == 2 && v2[8] == 2;
    result = 0;
    a1[2].i8[2] = v51;
    if (v48 <= 8)
    {
      v52 = 1;
    }

    else
    {
      v52 = 2;
    }

    a1[850].i32[0] = v52;
  }

  return result;
}

uint64_t compute_padding(uint64_t result, int a2, int a3, int *a4)
{
  v4 = ((result | 1) - a2) / 2;
  v5 = result - a2;
  if (a3 >= 2)
  {
    v4 = ((v5 / 2) & 1) + v5 / 2;
  }

  v6 = ((v5 + 1) / 2) & 0xFFFFFFFE;
  if (a3 < 2)
  {
    v6 = (result - a2) / 2;
  }

  if (result)
  {
    v4 = v6;
  }

  *a4 = v4;
  return result;
}

__n128 aj_calc_crop(int32x4_t *a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, __n128 *a6)
{
  if (a6)
  {
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*a1, v6))));
    v8 = a1->i64[1];
    v9 = HIDWORD(*a1);
    if (v7)
    {
      v10 = HIDWORD(a1->i64[0]);
    }

    else
    {
      v10 = 0;
    }

    if (v7)
    {
      v11 = *a1;
    }

    else
    {
      v11 = 0;
    }

    if ((v7 & 1) == 0)
    {
      v8 = a2;
      v9 = a3;
    }

    v12 = (v8 * a5 + (a4 + 1) / 2) / a4;
    v13 = (v9 * a4 + (a5 + 1) / 2) / a5;
    if ((v8 << 15) / a4 > (v9 << 15) / a5)
    {
      v12 = v9;
    }

    else
    {
      v13 = v8;
    }

    if (v13 <= 1)
    {
      v13 = 1;
    }

    if (v12 <= 1)
    {
      v12 = 1;
    }

    result.n128_u32[0] = v11 + (v8 - v13) / 2;
    result.n128_u32[1] = v10 + (v9 - v12) / 2;
    result.n128_u64[1] = __PAIR64__(v12, v13);
    *a6 = result;
  }

  return result;
}

uint64_t aj_calculate_dimensions(_DWORD *a1, uint64_t a2, int *a3, int *a4, signed int *a5, int *a6, __n128 *a7, int *a8, int *a9)
{
  v17 = a1 + 6;
  v16 = a1[6];
  v18 = (a1 + 3);
  v19 = v17 - 1;
  v20 = *(v17 - 1);
  if (v16 == -1 && v20 == -1)
  {
    if (v18->i32[0] == -1 && a1[4] == -1)
    {
      v22 = *(a2 + 8);
      v23 = *(a2 + 12);
      v53.n128_u64[0] = 0;
      v53.n128_u64[1] = __PAIR64__(v23, v22);
      v20 = -1;
      goto LABEL_10;
    }

    v20 = -1;
  }

  v53 = *v18;
  v22 = v20;
  v23 = v16;
LABEL_10:
  v24 = a1[7];
  if (v24 && (v25 = a1[8]) != 0)
  {
    if (v22 >= v24)
    {
      v26 = 1;
      v27 = v22;
      do
      {
        if (v26 > 8 || v23 / v26 < v25)
        {
          break;
        }

        if (v27 == v24 && v23 / v26 == v25)
        {
          goto LABEL_30;
        }

        v26 *= 2;
        v27 = v22 / v26;
      }

      while (v22 / v26 >= v24);
      if (v22 >= v24)
      {
        v26 = 1;
        v28 = v22;
        while (v23 / v26 >= v25)
        {
          if (v28 == v24 && v23 / v26 == v25)
          {
            goto LABEL_30;
          }

          ++v26;
          v28 = v22 / v26;
          if (v22 / v26 < v24)
          {
            break;
          }
        }
      }
    }

    v29 = a1[9];
    if (v29 == 1)
    {
      if (v16 == -1 && v20 == -1 && v18->i32[0] == -1 && a1[4] == -1)
      {
        v49 = *(a2 + 8);
        v50 = *(a2 + 12);
        if ((v49 << 15) / v24 <= (v50 << 15) / v25)
        {
          v32 = v25;
          v52 = (v49 * v25 + (v50 + 1) / 2) / v50;
        }

        else
        {
          v51 = v50 * v24 + (v49 + 1) / 2;
          v52 = v24;
          v32 = v51 / v49;
        }

        if (v52 <= 1)
        {
          v31 = 1;
        }

        else
        {
          v31 = v52;
        }

        if (v32 <= 1)
        {
          v32 = 1;
        }
      }

      else
      {
        if ((v20 << 15) / v24 <= (v16 << 15) / v25)
        {
          v35 = a1[8];
          v31 = (v20 * v25 + (v16 + 1) / 2) / v16;
        }

        else
        {
          v31 = a1[7];
          v35 = (v24 * v16 + (v20 + 1) / 2) / v20;
        }

        if (v31 <= 1)
        {
          v31 = 1;
        }

        if (v35 <= 1)
        {
          v32 = 1;
        }

        else
        {
          v32 = v35;
        }
      }
    }

    else
    {
      if (v29 == 3)
      {
        if (v16 == -1 && v20 == -1 && v18->i32[0] == -1 && a1[4] == -1)
        {
          v19 = (a2 + 8);
          v17 = (a2 + 12);
        }

        v33 = *v17;
        v34 = *v19;
        if ((*v19 << 15) / v24 <= (*v17 << 15) / v25)
        {
          v24 = v34 * v25 / v33;
        }

        else
        {
          v25 = v33 * v24 / v34;
        }

        if (v24 <= 1)
        {
          v24 = 1;
        }

        if (v25 <= 1)
        {
          v25 = 1;
        }
      }

      else if (v29 == 2)
      {
        aj_calc_crop(v18, *(a2 + 8), *(a2 + 12), v24, v25, &v53);
        v22 = v53.n128_i32[2];
        v23 = v53.n128_i32[3];
      }

      v31 = v24;
      v32 = v25;
    }

    v36 = (v22 << 15) / v31;
    v37 = (v23 << 15) / v32;
    v38 = v36 <= v37;
    if (v36 <= v37)
    {
      v39 = v23;
    }

    else
    {
      v39 = v22;
    }

    if (v38)
    {
      v40 = v32;
    }

    else
    {
      v40 = v31;
    }

    if (v38)
    {
      v41 = v22;
    }

    else
    {
      v41 = v23;
    }

    v42 = -1;
    do
    {
      v43 = v39 >> (v42 + 2);
      v44 = v41 >> (v42 + 2);
      ++v42;
    }

    while (v43 >= v40 && v44 > 0);
    v26 = 1 << v42;
    if (1 << v42 >= 9)
    {
      if (v22 / v24 < 16 || v23 / v25 < 16)
      {
        v30 = 0;
LABEL_96:
        v26 = 8;
        goto LABEL_97;
      }

LABEL_86:
      if (v31 <= v22 >> 5)
      {
        v46 = 5;
        while (1)
        {
          v30 = v46 - 4;
          if ((v46 - 4) > 9 || v32 > v23 >> v46)
          {
            break;
          }

          if (v31 > v22 >> ++v46)
          {
            v30 = v46 - 4;
            goto LABEL_96;
          }
        }
      }

      else
      {
        v30 = 1;
      }

      goto LABEL_96;
    }

    v30 = 0;
  }

  else
  {
    v26 = a1[19];
    v24 = v22 / v26;
    v25 = v23 / v26;
LABEL_30:
    if (v26 >= 3)
    {
      if (v26 == 3)
      {
        v30 = 0;
        v26 = 2;
      }

      else if (v26 >= 8)
      {
        if (v26 >= 0x10)
        {
          v31 = v24;
          v32 = v25;
          goto LABEL_86;
        }

        v30 = 0;
        v26 = 8;
      }

      else
      {
        v30 = 0;
        v26 = 4;
      }
    }

    else
    {
      v30 = 0;
    }

    v31 = v24;
    v32 = v25;
  }

LABEL_97:
  if (v24 < 1 || v25 < 1 || v31 < 1 || v32 < 1 || v31 > v24 || v32 > v25)
  {
    aj_log_error("DecodeInit", "Out dimensions are invalid, check options", v53.n128_u64[0]);
    return 5;
  }

  else
  {
    if (a3)
    {
      *a3 = v24;
    }

    if (a4)
    {
      *a4 = v25;
    }

    if (a5)
    {
      *a5 = v31;
    }

    if (a6)
    {
      *a6 = v32;
    }

    if (a7)
    {
      *a7 = v53;
    }

    if (a8)
    {
      *a8 = v26;
    }

    result = 0;
    if (a9)
    {
      *a9 = v30;
    }
  }

  return result;
}

uint64_t aj_init_decode_jobs(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, int a5)
{
  v98 = *MEMORY[0x277D85DE8];
  v97 = 0;
  memset(v96, 0, sizeof(v96));
  v95 = a2;
  v9 = *(a1 + 6948);
  if (v9 < 2)
  {
    goto LABEL_8;
  }

  v11 = (v9 - 1);
  v12 = *(a4 + 24);
  if (v12)
  {
    free(v12);
  }

  v13 = malloc_type_calloc(1uLL, 1672 * v11, 0x10B00408DDC132BuLL);
  *(a4 + 24) = v13;
  *(a1 + 6952) = v13;
  if (v13)
  {
    v14 = *a2;
    v15 = v13 + 16;
    v16 = v96;
    do
    {
      *(v15 - 1) = a1;
      *v15 = v14;
      *v16++ = v15;
      v15 += 418;
      --v11;
    }

    while (v11);
    v9 = *(a1 + 6948);
LABEL_8:
    v17 = *(a1 + 6840);
    v18 = *(a1 + 6836);
    v19 = v17 - v18;
    if (*(a1 + 6960) == 1)
    {
      v20 = *(a1 + 168);
      if (v20 <= 8)
      {
        v21 = dword_240AB08A8[v20 - 1];
      }

      else
      {
        v21 = 80;
      }

      v22 = v21 * v19 / 100;
    }

    else
    {
      v22 = v19 / v9;
    }

    if (*(a1 + 6612))
    {
      v23 = 1;
    }

    else
    {
      v23 = *(a1 + 172);
    }

    a2[6] = v18;
    v24 = v9;
    if (v9 >= 2)
    {
      v25 = v9 - 1;
      v26 = v96;
      do
      {
        v27 = *(v26 - 1);
        v28 = *v26;
        v29 = *(v27 + 24) + v22;
        *(v27 + 28) = v29;
        *(v28 + 24) = v29;
        ++v26;
        --v25;
      }

      while (v25);
    }

    v30 = __OFSUB__(v9, 1);
    v31 = (v9 - 1);
    (&v95)[v31][7] = v17;
    if (v31 < 0 == v30)
    {
      v32 = 0;
      v33 = *(a1 + 6844);
      v34 = *(a1 + 6628);
      do
      {
        v35 = 0;
        v36 = (&v95)[v32];
        v37 = v36[6];
        v38 = v36[7];
        v36[20] = v37;
        v36[21] = v33;
        v39 = (v38 - v37) / v34;
        *(v36 + 15) = v39;
        if (!v32)
        {
          v35 = *(a1 + 6856);
        }

        v40 = v39 * v23;
        v36[18] = v35;
        v36[19] = v40;
        if (v32 == v31)
        {
          v36[19] = v40 - v23 + *(a1 + 6864);
          if (!v32)
          {
            v37 = 0;
          }

          v36[2] = v37;
          v38 = *(*(a1 + 8) + 84);
        }

        else
        {
          if (!v32)
          {
            v37 = 0;
          }

          v36[2] = v37;
        }

        v36[3] = v38;
        if (*v36)
        {
          v41 = *(a3 + 112);
          v42 = (v37 + v41 - 1) / v41;
          *(v36 + 13) = v42;
          v36[11] = v42 * v41;
          v36[12] = 0;
          *(v36 + 2) = 0;
          if (*(a3 + 136) == 1)
          {
            v43 = (a3 + 140);
            v44 = 9;
            while (1)
            {
              v45 = *v43;
              if (v37 <= v45 && v38 > v45)
              {
                break;
              }

              v43 += 12;
              if (!--v44)
              {
                goto LABEL_40;
              }
            }

            *(v36 + 2) = v43;
          }
        }

LABEL_40:
        v36[380] = v36[374];
        ++v32;
      }

      while (v32 != v24);
    }

    if (a5)
    {
      return 0;
    }

    v48 = (a1 + 4096);
    v49 = *(a1 + 24) == 2 && (*(a1 + 48) > 1);
    v50 = *(a1 + 6937) && !*(a1 + 6940) && *(a1 + 6464) == 3;
    v51 = *(a1 + 6584);
    v52 = aj_highest_set_bit(*(a1 + 6892));
    v53 = aj_highest_set_bit(*(a1 + 6896));
    v54 = *(a1 + 6612) ? 1 : *(a1 + 172);
    v81 = v54;
    v55 = *(a1 + 6900);
    v94 = 0;
    LODWORD(v56) = *(a1 + 6948);
    if (v56 <= 0)
    {
      return 0;
    }

    v57 = 0;
    v82 = v55;
    v83 = v53 - 1;
    v58 = (v55 + v52 - 1) >> (v52 - 1);
    v59 = v54;
    v80 = v50;
    while (1)
    {
      v60 = (&v95)[v57];
      v61 = *(v60 + 60) * v59;
      *&v87 = *(a1 + 6892);
      *(&v87 + 1) = __PAIR64__(v58, v55);
      v88 = v58;
      v89 = v58;
      v90 = v61;
      v91 = (v61 + v83) >> v83;
      v92 = v91;
      v93 = v91;
      *(v60 + 32) = v51;
      *(v60 + 36) = v51;
      if (v57)
      {
        if (v49)
        {
          v62 = HIDWORD(v94);
          if (v51 & 1 | HIDWORD(v94))
          {
            goto LABEL_63;
          }
        }

        else
        {
          v62 = HIDWORD(v94);
          if (HIDWORD(v94))
          {
LABEL_63:
            v63 = v49;
            if (v62 <= 1)
            {
              v64 = 1;
            }

            else
            {
              v64 = v62;
            }

            if (*(a1 + 6464) >= 1)
            {
              v65 = 0;
              do
              {
                if (v65)
                {
                  v66 = aj_highest_set_bit(DWORD1(v87)) - 1;
                }

                else
                {
                  v66 = 0;
                }

                *(v60 + 1100 + 4 * v65++) = (v66 + v64) >> v66;
              }

              while (v65 < *(a1 + 6464));
            }

            v49 = v63;
            v48 = (a1 + 4096);
            v50 = v80;
            v59 = v81;
            if (!aj_bufferprocessor_append(a1, v60, aj_savefirst_processor, &v87))
            {
              return 6;
            }
          }
        }
      }

      if (v48[2793] && !aj_bufferprocessor_append(a1, v60, aj_upsample422_processor, &v87))
      {
        return 6;
      }

      if (*(v60 + 72) > 0 || *(v60 + 76) < *(v60 + 60) * v59 || *(a1 + 6868))
      {
        if (!aj_bufferprocessor_append(a1, v60, aj_crop_processor, &v87))
        {
          return 6;
        }
      }

      else if (DWORD2(v87) != *(a1 + 6616))
      {
        DWORD2(v87) = *(a1 + 6616);
        v69 = aj_highest_set_bit(v87);
        HIDWORD(v87) = (*(a1 + 6616) + v69 - 1) >> (v69 - 1);
        v88 = HIDWORD(v87);
        v89 = HIDWORD(v87);
      }

      if (v50 && !aj_bufferprocessor_append(a1, v60, aj_rgb2yuv_processor, &v87))
      {
        return 6;
      }

      if (v48[2481] || v48[2480])
      {
        v67 = aj_bufferprocessor_append(a1, v60, aj_resize_processor, &v87);
        if (!v67)
        {
          return 6;
        }

        aj_bufferproc_resize_get_blendrows(v67, a1, v60, &v94 + 1, &v94);
      }

      *&v84 = *(a1 + 6928);
      *(&v84 + 1) = aj_icol_max_rows_out;
      v85 = 0;
      v86 = 0;
      if (!aj_bufferprocessor_append(a1, v60, &v84, &v87))
      {
        return 6;
      }

      v51 += v90 + v94;
      if (v57 == v56 - 1)
      {
        v68 = 1;
        v55 = v82;
      }

      else
      {
        v55 = v82;
        v68 = !(v49 & v51) && v48[2480] == 0;
      }

      *(v60 + 1083) = v68;
      ++v57;
      v56 = *(a1 + 6948);
      if (v57 >= v56)
      {
        if (v56 >= 1)
        {
          v70 = 0;
LABEL_97:
          v71 = *(a1 + 6464);
          if (v71 >= 1)
          {
            v72 = 0;
            v73 = (&v95)[v70];
            v74 = (a1 + 6712);
            do
            {
              v75 = *(v74 - 1) + v73[v72 + 275];
              if (v75)
              {
                result = aj_rowbuffer_add_block(v73 + 38, *v74, v75, 0x10uLL);
                if (result)
                {
                  return result;
                }

                v71 = *(a1 + 6464);
              }

              ++v72;
              v74 += 2;
            }

            while (v72 < v71);
          }

          v76 = 0;
          v77 = 1;
          while (1)
          {
            v78 = v77;
            v79 = (a1 + 6768 + 16 * v76);
            if (*v79)
            {
              result = aj_rowbuffer_add_block((&v95)[v70] + 38, v79[1], *v79, 4uLL);
              if (result)
              {
                return result;
              }
            }

            v77 = 0;
            v76 = 1;
            if ((v78 & 1) == 0)
            {
              result = 0;
              if (++v70 < *(a1 + 6948))
              {
                goto LABEL_97;
              }

              return result;
            }
          }
        }

        return 0;
      }
    }
  }

  aj_log_error("DecodeInit", "Could not allocate thread instances");
  return 6;
}

uint64_t aj_decode_init(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, _OWORD *a5, int *a6, uint64_t a7, uint64_t a8, uint64_t *a9, int a10, char a11, int a12)
{
  v120 = a1;
  v138 = *MEMORY[0x277D85DE8];
  v19 = a3 + 4096;
  v121 = 0;
  v20 = a5[8];
  v122 = a5[7];
  v123 = v20;
  v124 = *(a5 + 18);
  bzero(a5, 0x5F8uLL);
  v21 = v123;
  a5[7] = v122;
  a5[8] = v21;
  *(a5 + 18) = v124;
  bzero(a3, 0x1B40uLL);
  *(a3 + 17) = a11;
  v22 = 1;
  *(a3 + 16) = 1;
  *a3 = a6;
  *(a3 + 8) = a4;
  if (*(a8 + 20) == -1 && *(a8 + 12) == -1)
  {
    v22 = *(a8 + 16) != -1;
  }

  *(v19 + 2796) = 0x100000001;
  *(v19 + 2808) = *(a8 + 152);
  if (a6[852])
  {
    *(v19 + 2841) = 1;
    if (*(a8 + 136))
    {
      v23 = (a8 + 140);
    }

    else
    {
      v23 = a6 + 853;
    }
  }

  else
  {
    v24 = *(a8 + 136);
    *(v19 + 2841) = *(a8 + 136) != 0;
    if (!v24)
    {
      goto LABEL_11;
    }

    v23 = (a8 + 140);
  }

  *(a3 + 6940) = *v23;
LABEL_11:
  *(v19 + 2848) = *(a8 + 144);
  v25 = *(a8 + 80);
  *(a3 + 6808) = v25;
  v26 = *(a3 + 6804) & 0xFFFFFFFC | (v25 / 90);
  *(a3 + 6804) = v26;
  if (*(a8 + 84))
  {
    v26 |= 4u;
    *(a3 + 6804) = v26;
  }

  if (*(a8 + 88))
  {
    *(a3 + 6804) = v26 | 8;
  }

  *(a3 + 6608) = *(a8 + 72);
  result = aj_calculate_dimensions(a8, a6, (a3 + 6484), (a3 + 6488), (a3 + 6500), (a3 + 6504), (a3 + 6820), (a3 + 168), (a3 + 6612));
  if (!result)
  {
    *(a3 + 6812) = v22;
    if (*(a3 + 6828) == a6[2] && *(a3 + 6832) == a6[3])
    {
      *(a3 + 6816) = 0;
    }

    else
    {
      *(a3 + 6816) = 1;
      if (*(a6 + 86))
      {
        aj_log_error("DecodeInit", "Cropping is not supported for lossless JPEG");
        return 5;
      }
    }

    v118 = a7;
    v119 = a2;
    *a5 = *(a8 + 100);
    if (*(a6 + 84) || *(a6 + 86))
    {
      *a5 = 0;
    }

    v29 = 0;
    v30 = (a3 + 128);
    do
    {
      *(a3 + v29 + 128) = *(a8 + v29 + 40);
      v29 += 8;
    }

    while (v29 != 32);
    v31 = *(a8 + 8);
    *(a3 + 6580) = v31;
    v32 = *(a8 + 96);
    if (v32 < 5)
    {
      *(a3 + 6884) = dword_240AB08C8[v32];
      *(a3 + 6680) = *(a8 + 148);
      *(a5 + 374) = *(a8 + 112);
      a5[94] = *(a8 + 120);
      if (v31 == 14)
      {
        result = aj_get_texture_size(a6, a8, a3 + 6512, *(*(a3 + 8) + 356), 0, 0, 0);
        if (result)
        {
          return result;
        }
      }

      result = aj_compute_helpers(a3);
      if (result)
      {
        return result;
      }

      if (a10 != 1)
      {
        v33 = *(a3 + 24);
        if (v33 != a10)
        {
          aj_log_error("DecodeInit", "Number of output planes (%d) must be either 1 or %d\n", a10, v33);
          return 8;
        }
      }

      v34 = *(a3 + 6808);
      v35 = *(a3 + 6580);
      if ((v35 - 25) > 1)
      {
        v43 = *(a3 + 24);
        if (v43 == 3)
        {
          v44 = *a3;
          if (*(a3 + 168) == 8 || *v44 == 1)
          {
            *(a3 + 44) = v44[4];
            v45 = v44[8];
          }

          else
          {
            v45 = 2;
            *(a3 + 44) = 2;
          }

          *(a3 + 48) = v45;
          v51 = *(a3 + 128);
          if (!v51)
          {
            v51 = *(a3 + 6512);
          }

          *(a3 + 96) = v51;
          v52 = *(a3 + 136);
          if (!v52)
          {
            v52 = *(a3 + 6544);
          }

          *(a3 + 104) = v52;
          v53 = *(a3 + 144);
          if (!v53)
          {
            v53 = *(a3 + 6544);
          }

          *(a3 + 112) = v53;
        }

        else
        {
          v46 = v34 == 90 || v34 == 270;
          v47 = 6492;
          if (v46)
          {
            v47 = 6496;
          }

          v48 = *(a3 + v47);
          v49 = *(a3 + 128);
          if (!v49)
          {
            v49 = *(a3 + 28) * v48;
          }

          *(a3 + 96) = v49;
          if (v43 == 2)
          {
            v50 = *(a3 + 136);
            if (!v50)
            {
              v50 = v48 / *(a3 + 44) * *(a3 + 32);
            }

            *(a3 + 104) = v50;
          }
        }
      }

      else
      {
        v36 = 0;
        v37 = *a3;
        v38 = *(a3 + 8);
        *(a3 + 44) = *(*a3 + 16);
        *(a3 + 48) = *(*&v37 + 32);
        v39 = *(v38 + 80);
        *&v122 = *(v38 + 72) * v39;
        *(&v122 + 1) = v39;
        *&v123 = v39;
        v40 = (a3 + 128);
        do
        {
          v42 = *v40++;
          v41 = v42;
          if (!v42)
          {
            v41 = *(&v122 + v36) * *(a3 + 28 + 4 * v36);
          }

          *(v30 - 4) = v41;
          ++v36;
          v30 = v40;
        }

        while (v36 != 3);
      }

      if (a10 >= 1)
      {
        v54 = (a3 + 64);
        v55 = a10;
        do
        {
          v56 = *a9;
          a9 += 2;
          *v54++ = v56;
          --v55;
        }

        while (v55);
      }

      v57 = *(a3 + 24);
      if (v57 > a10)
      {
        if (v57 == 2)
        {
          v58 = v34 == 90 || v34 == 270;
          v59 = 6496;
          if (v58)
          {
            v59 = 6492;
          }

          *(a3 + 72) = *(a3 + 64) + *(a3 + 96) * *(a3 + v59);
LABEL_94:
          v74 = *a3;
          v75 = *(*a3 + 16);
          v76 = *(*a3 + 32);
          v78 = v75 == 2 && v76 == 2;
          v79 = *(a3 + 44) == 2 && *(a3 + 48) == 2;
          v80 = *(a3 + 6580);
          if ((v80 - 25) < 2)
          {
            goto LABEL_125;
          }

          if (*(v19 + 2841) && *(a3 + 6940) != 1 || v80 == 15 || *v74 == 4)
          {
            *(a3 + 6884) = 2;
          }

          if (v80 == 14)
          {
            *(a3 + 6884) = 0;
          }

          if (!v78)
          {
            goto LABEL_252;
          }

          if (*(a3 + 6884) != 2)
          {
            *(a3 + 6884) = 0;
          }

          if (v79)
          {
            v81 = 0;
          }

          else
          {
LABEL_252:
            if (*(a3 + 168) != 8 || *(a3 + 6884))
            {
              goto LABEL_120;
            }

            v81 = 1;
          }

          *(a3 + 6884) = v81;
LABEL_120:
          if (*(a3 + 6612))
          {
            *(a3 + 6884) = 2;
LABEL_124:
            *(v19 + 2792) = 1;
            goto LABEL_125;
          }

          v82 = *(a3 + 6884);
          if (v82 == 2 && v76 == 2)
          {
            goto LABEL_124;
          }

          if (v82 == 2 && v75 == 2 && *(a3 + 20) != 1)
          {
            *(v19 + 2793) = 1;
            *(a3 + 6704) += 2;
          }

LABEL_125:
          v136 = 0u;
          v137 = 0u;
          if (v74[1] == 12)
          {
            v83 = aj_idct_s1_12bit;
            *&v136 = aj_idct_s1_12bit;
            *(&v136 + 1) = aj_idct_s2_12bit;
            *&v137 = aj_idct_s4_12bit;
            *(&v137 + 1) = aj_idct_s8_12bit;
            v84 = *(a3 + 6884);
            if (v84)
            {
              v85 = aj_idct_s1_12bit;
            }

            else
            {
              v85 = aj_idct_s2_12bit;
            }

            if (v84)
            {
              v86 = aj_idct_s2_12bit;
            }

            else
            {
              v86 = aj_idct_s4_12bit;
            }

            *&v122 = v85;
            if (v84)
            {
              v87 = aj_idct_s4_12bit;
            }

            else
            {
              v87 = aj_idct_s8_12bit;
            }

            v127 = v85;
            v128 = v87;
            v131 = v86;
            v132 = aj_idct_s8_12bit;
            v88 = aj_idct_s1_16x16_bilinear_12bit;
            if (!v84)
            {
              v88 = aj_idct_s1_12bit;
            }

            *(&v123 + 1) = v88;
            v124 = v86;
            v134 = aj_idct_s8_12bit;
            v135 = v87;
            if (!v84)
            {
              v83 = aj_idct_s1_4x8_12bit;
            }

            *&v123 = v83;
            if (v84)
            {
              v89 = aj_idct_s2_12bit;
            }

            else
            {
              v89 = aj_idct_s2_2x4_12bit;
            }

            v126 = v89;
            if (v84)
            {
              v90 = aj_idct_s4_12bit;
            }

            else
            {
              v90 = aj_idct_s4_1x2_12bit;
            }

            v130 = v90;
            v91 = aj_idct_s1_16x8_bilinear_12bit;
            v92 = aj_idct_s1_8x4_12bit;
            if (!v84)
            {
              v91 = aj_idct_s1_8x4_12bit;
            }

            *(&v122 + 1) = v91;
            v93 = aj_idct_s2_4x2_12bit;
            if (!v84)
            {
              v92 = aj_idct_s2_4x2_12bit;
            }

            v125 = v92;
            if (v84)
            {
              v94 = aj_idct_s4_2x1_12bit;
            }

            else
            {
              v93 = aj_idct_s4_2x1_12bit;
              v94 = aj_idct_s8_12bit;
            }

            v129 = v93;
            v133 = v94;
            if (v84)
            {
              v95 = 1;
              v96 = 1;
              if (v74[8] == 1)
              {
                if (v74[4] == 2)
                {
                  v95 = 2;
                }

                else
                {
                  v95 = 1;
                }
              }
            }

            else if (*(a3 + 168) == 8)
            {
              v96 = v74[8];
              v95 = v74[4];
            }

            else
            {
              v95 = 2;
              v96 = 2;
            }

            goto LABEL_185;
          }

          *&v136 = aj_idct_s1;
          *(&v136 + 1) = aj_idct_s2;
          *&v137 = aj_idct_s4;
          *(&v137 + 1) = aj_idct_s8;
          v97 = *(a3 + 6884);
          if (!v97)
          {
            if (*(a3 + 168) == 8)
            {
              v96 = v74[8];
              v95 = v74[4];
            }

            else
            {
              v96 = 2;
              v95 = 2;
            }

            *&v122 = aj_idct_s2;
            *(&v122 + 1) = aj_idct_s1_8x4;
            *&v123 = aj_idct_s1_4x8;
            *(&v123 + 1) = aj_idct_s1;
            v124 = aj_idct_s4;
            v125 = aj_idct_s2_4x2;
            v126 = aj_idct_s2_2x4;
            v127 = aj_idct_s2;
            v98 = aj_idct_s8;
            v128 = aj_idct_s8;
            v129 = aj_idct_s4_2x1;
            v130 = aj_idct_s4_1x2;
            v131 = aj_idct_s4;
            v132 = aj_idct_s8;
            v133 = aj_idct_s8;
            goto LABEL_184;
          }

          *&v122 = aj_idct_s1;
          v124 = aj_idct_s2;
          v128 = aj_idct_s4;
          v132 = aj_idct_s8;
          v96 = v74[8];
          if (v97 == 2)
          {
            v95 = 1;
            if (v96 == 1)
            {
              if (v74[4] == 2)
              {
                v95 = 2;
              }

              else
              {
                v95 = 1;
              }
            }

            *(&v122 + 1) = aj_idct_s1_16x8_bilinear;
            *&v123 = aj_idct_s1;
            *(&v123 + 1) = aj_idct_s1_16x16_bilinear;
            v125 = aj_idct_s1_8x4;
            v126 = aj_idct_s2;
            v127 = aj_idct_s1;
            v129 = aj_idct_s2_4x2;
            v130 = aj_idct_s4;
            v131 = aj_idct_s2;
            v133 = aj_idct_s4_2x1;
            v134 = aj_idct_s8;
            v135 = aj_idct_s4;
            v96 = 1;
            goto LABEL_185;
          }

          if (*(a3 + 168) == 8)
          {
            if (v80 == 14)
            {
              v95 = v74[4];
              v98 = aj_idct_s8;
LABEL_183:
              *(&v122 + 1) = aj_idct_s1;
              *&v123 = aj_idct_s1_8x16_nearest;
              *(&v123 + 1) = aj_idct_s1_8x16_nearest;
              v125 = aj_idct_s2;
              v126 = aj_idct_s2_4x8_nearest;
              v127 = aj_idct_s2_4x8_nearest;
              v129 = aj_idct_s4;
              v130 = aj_idct_s4_2x4_nearest;
              v131 = aj_idct_s4_2x4_nearest;
              v133 = aj_idct_s8;
LABEL_184:
              v134 = v98;
              v135 = v98;
LABEL_185:
              v99 = aj_highest_set_bit(*(a3 + 168)) - 1;
              v100 = aj_highest_set_bit(*(*a3 + 16));
              v101 = aj_highest_set_bit(*(*a3 + 32));
              *(a3 + 712) = *(&v136 + v99);
              v102 = aj_idct_s8;
              if (*(a3 + 6612))
              {
                v95 = 1;
                v96 = 1;
              }

              else
              {
                v102 = *(&v122 + 4 * v99 + 2 * v100 + v101 - 3);
              }

              *(a3 + 6892) = v95;
              *(a3 + 6896) = v96;
              v103 = *(a3 + 6464);
              v105 = v119;
              v104 = v120;
              if (v103 > 1)
              {
                v106 = 0;
                v107 = vdupq_n_s64(v103 - 2);
                v108 = (a3 + 2280);
                do
                {
                  v109 = vmovn_s64(vcgeq_u64(v107, vorrq_s8(vdupq_n_s64(v106), xmmword_240AB0610)));
                  if (v109.i8[0])
                  {
                    *v108 = v102;
                  }

                  if (v109.i8[4])
                  {
                    v108[196] = v102;
                  }

                  v106 += 2;
                  v108 += 392;
                }

                while ((v103 & 0x7FFFFFFE) != v106);
              }

              if (v103 >= 1)
              {
                v110 = (a3 + 908);
                do
                {
                  v111 = *(v110 - 49);
                  if (v111 == aj_idct_s1_16x16_bilinear_12bit)
                  {
                    v112 = 32;
                  }

                  else
                  {
                    v112 = 16;
                    if (v111 != aj_idct_s1_4x8_12bit && v111 != aj_idct_s1_16x8_bilinear_12bit && v111 != aj_idct_s1_12bit && v111 != aj_idct_s1_8x16_nearest && v111 != aj_idct_s1_16x16_bilinear)
                    {
                      v112 = 8;
                      if (v111 != aj_idct_s2_2x4_12bit && v111 != aj_idct_s2_12bit && v111 != aj_idct_s1_8x4_12bit && v111 != aj_idct_s2_4x8_nearest && v111 != aj_idct_s1_16x8_bilinear && v111 != aj_idct_s1 && v111 != aj_idct_s1_4x8)
                      {
                        v112 = 4;
                        if (v111 != aj_idct_s4_1x2_12bit && v111 != aj_idct_s4_12bit && v111 != aj_idct_s2_4x2_12bit && v111 != aj_idct_s4_2x4_nearest && v111 != aj_idct_s2_2x4 && v111 != aj_idct_s1_8x4 && v111 != aj_idct_s2)
                        {
                          v112 = 2;
                          if (v111 != aj_idct_s8_12bit && v111 != aj_idct_s4_2x1_12bit && v111 != aj_idct_s8_1x2_nearest && v111 != aj_idct_s4_1x2 && v111 != aj_idct_s2_4x2 && v111 != aj_idct_s4)
                          {
                            v112 = v111 == aj_idct_s4_2x1 || v111 == aj_idct_s8;
                          }
                        }
                      }
                    }
                  }

                  *v110 = v112;
                  v110 += 392;
                  --v103;
                }

                while (v103);
              }

              result = init_ra_table(a4, a5, *(a8 + 104), *(a8 + 108), v105);
              if (!result)
              {
                set_crop_offset(a3);
                result = init_invcol(a3);
                if (!result)
                {
                  result = aj_compute_buffer_sizes(v104, a3, a5);
                  if (!result)
                  {
                    v114 = *a8;
                    if (*a8 >= 8)
                    {
                      v114 = 8;
                    }

                    if (v114 <= 1)
                    {
                      v115 = 1;
                    }

                    else
                    {
                      v115 = v114;
                    }

                    *(a3 + 6948) = aj_get_numthreads_decode(a3, a8, *(v118 + 80) == 0, v115, (a3 + 6960));
                    result = aj_init_decode_jobs(a3, a5, a4, v104, 0);
                    if (!result)
                    {
                      result = aj_init_input_states(a3, a5, v118, a12, &v121);
                      if (!result)
                      {
                        if (*(a8 + 36) == 1 && !*(a3 + 17))
                        {
                          fill_image_edges(a3);
                        }

                        if (*a6 >= 1)
                        {
                          v116 = 0;
                          v117 = a3 + 192;
                          do
                          {
                            aj_init_component(a3, v117, v116++, 0, 0);
                            v117 += 1568;
                          }

                          while (v116 < *a6);
                        }

                        if (!*(a6 + 84) || (result = init_prog_scans(v105, a3, a5, v121), !result))
                        {
                          init_blockdec(a3, 0);
                          return 0;
                        }
                      }
                    }
                  }
                }
              }

              return result;
            }

            v98 = aj_idct_s8_1x2_nearest;
          }

          else
          {
            v98 = aj_idct_s8_1x2_nearest;
            if (v80 == 14)
            {
              v98 = aj_idct_s8;
            }
          }

          v95 = 1;
          goto LABEL_183;
        }

        if (v35 == 14)
        {
          v60 = *(a3 + 64);
          v61 = *(a3 + 96);
          if (*(a3 + 17))
          {
            v62 = *(a3 + 172);
            v63 = v60 + v61 * v62;
            v64 = v62 / *(a3 + 48);
          }

          else
          {
            v63 = v60 + *(a3 + 6520) * v61;
            v64 = *(a3 + 6552);
          }

          v65 = v63 + *(a3 + 104) * v64;
          *(a3 + 72) = v63;
          *(a3 + 80) = v65;
        }

        else if (v57 == 3)
        {
          v67 = *a3;
          v66 = *(a3 + 8);
          v68 = v66[21];
          v69 = *(a3 + 64) + *(a3 + 96) * v68 * v66[19];
          v70 = v69 + *(a3 + 104) * v68;
          *(a3 + 72) = v69;
          *(a3 + 80) = v70;
          if (*v67 != 1)
          {
            goto LABEL_94;
          }

          goto LABEL_90;
        }
      }

      if (v57 != 3 || **a3 != 1)
      {
        goto LABEL_94;
      }

      v66 = *(a3 + 8);
LABEL_90:
      if (v66[89])
      {
        v72 = (*(a3 + 64) + 8 * *(a3 + 96) * *(a3 + 48));
        v73 = 8 * (*(a3 + 112) + *(a3 + 104));
      }

      else
      {
        memset(*(a3 + 72), 128, *(a3 + 6552) * *(a3 + 104));
        v72 = *(a3 + 80);
        v73 = *(a3 + 6552) * *(a3 + 112);
      }

      memset(v72, 128, v73);
      goto LABEL_94;
    }

    aj_log_error("DecodeInit", "Unsupported decoding quality.");
    return 5;
  }

  return result;
}

uint64_t init_ra_table(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  if (!*a2)
  {
    result = 0;
    goto LABEL_10;
  }

  if ((a3 - 0x10000) < 0xFFFF0001 || (a4 - 0x10000) <= 0xFFFF0000)
  {
    aj_log_error("DecodeInit", "Unsupported RA-table sampling frequency");
    *a2 = 0;
    *(a2 + 16) = 0;
    return 8;
  }

  else
  {
    if ((*(a1 + 136) & 0xFFFFFFFE) == 2 && *(a1 + 96) && *(a1 + 104))
    {
      v8 = *(a1 + 112);
      v9 = *(a1 + 116);
      if (__PAIR64__(v9, v8) == __PAIR64__(a4, a3))
      {
        result = 0;
        *a2 = 0;
LABEL_10:
        *(a2 + 16) = 0;
        return result;
      }

      v11 = *(a5 + 24);
      *(a5 + 24) = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v11 = 0;
    }

    *(a1 + 112) = a3;
    *(a1 + 116) = a4;
    v12 = (a1 + 112);
    v13 = *(a1 + 80);
    v14 = (a4 + v13 - 1) / a4;
    v15 = (a3 + *(a1 + 84) - 1) / a3;
    *(a1 + 128) = v15;
    *(a1 + 132) = v14;
    v16 = 8 * v15;
    while (1)
    {
      v17 = 20 * v14;
      if (20 * v14 * v15 < 41943041)
      {
        break;
      }

      v18 = v13 + a4++;
      *(a1 + 116) = a4;
      v14 = v18 / a4;
      *(a1 + 132) = v14;
      if (v14 == 1)
      {
        v17 = 20;
        break;
      }
    }

    v19 = *(a5 + 24);
    if (v19)
    {
      free(v19);
      *(a5 + 24) = 0;
      v15 = *(a1 + 128);
    }

    v20 = malloc_type_calloc(1uLL, v16 + v15 * v17, 0xA3A4C56BuLL);
    *(a5 + 24) = v20;
    if (v20)
    {
LABEL_22:
      *(a1 + 96) = v20;
      *(a1 + 104) = v20;
      v24 = *(a1 + 128);
      if (v24 >= 1)
      {
        v25 = 0;
        v26 = &v20[v16];
        v27 = 8 * v24;
        v28 = 20 * *(a1 + 132);
        do
        {
          *(*(a1 + 104) + v25) = v26;
          v25 += 8;
          v26 += v28;
        }

        while (v27 != v25);
      }

      if (v11)
      {
        v29 = *(a1 + 116);
        if (v9 >= v29)
        {
          v30 = *(a1 + 116);
        }

        else
        {
          v30 = v9;
        }

        if (v9 <= v29)
        {
          v31 = *(a1 + 116);
        }

        else
        {
          v31 = v9;
        }

        if (v30)
        {
          do
          {
            v32 = v30;
            v30 = v31 % v30;
            v31 = v32;
          }

          while (v30);
        }

        else
        {
          v32 = v31;
        }

        v43 = v29 * v9;
        v44 = *v12;
        if (v8 >= *v12)
        {
          v45 = *v12;
        }

        else
        {
          v45 = v8;
        }

        if (v8 <= v44)
        {
          v46 = *v12;
        }

        else
        {
          v46 = v8;
        }

        v47 = v43 / v32;
        if (v45)
        {
          do
          {
            v48 = v45;
            v45 = v46 % v45;
            v46 = v48;
          }

          while (v45);
        }

        else
        {
          v48 = v46;
        }

        v49 = v44 * v8 / v48;
        *(a1 + 120) = v49;
        *(a1 + 124) = v47;
        v50 = *(a1 + 84);
        if (v50 >= 1)
        {
          v51 = 0;
          v52 = *(a1 + 80);
          do
          {
            if (v52 >= 1)
            {
              v53 = 0;
              do
              {
                v54 = v11[v51 / v8] + 20 * (v53 / v9);
                v55 = *(*(a1 + 104) + 8 * (v51 / *(a1 + 112))) + 20 * (v53 / *(a1 + 116));
                v56 = *v54;
                *(v55 + 16) = *(v54 + 16);
                *v55 = v56;
                v53 += v47;
                v52 = *(a1 + 80);
              }

              while (v53 < v52);
              v50 = *(a1 + 84);
            }

            v51 += v49;
          }

          while (v51 < v50);
        }

        *(a1 + 136) = 2;
        *(a2 + 16) = 0;
        free(v11);
        return 0;
      }

      else
      {
        v33 = *(a1 + 80);
        v34 = *(a1 + 84);
        v35 = (a1 + 142);
        v36 = 9;
        do
        {
          *(v35 - 1) = v34;
          *v35 = v33;
          v35 += 12;
          --v36;
        }

        while (v36);
        if (v33 < 4 || v34 < 4)
        {
          *(a1 + 140) = v34 / 2;
          *(a1 + 142) = v33 / 2;
        }

        else
        {
          v37 = 0;
          v38 = (a1 + 142);
          do
          {
            *(v38 - 1) = (v34 + v34 * (v37 / 3u)) >> 2;
            *v38 = (v33 * (v37 % 3u + 1)) >> 2;
            v38 += 12;
            ++v37;
          }

          while (v37 != 9);
        }

        result = 0;
        *(a2 + 16) = a1 + 140;
        *(a1 + 136) = 1;
      }
    }

    else
    {
      while (1)
      {
        v21 = *(a1 + 80);
        v22 = *(a1 + 116);
        if (!(v21 / v22))
        {
          break;
        }

        *(a1 + 116) = v22 + 1;
        v23 = (v22 + v21) / (v22 + 1);
        *(a1 + 132) = v23;
        v20 = malloc_type_calloc(1uLL, v16 + 20 * v23 * *(a1 + 128), 0xAB50FF06uLL);
        *(a5 + 24) = v20;
        if (v20)
        {
          goto LABEL_22;
        }
      }

      aj_log_error("DecodeInit", "Failed to allocate RA-table");
      if (v11)
      {
        free(v11);
      }

      *a2 = 0;
      *v12 = 0;
      *(a1 + 120) = 0;
      *(a1 + 136) = 0;
      *(a1 + 128) = 0;
      v39 = (a1 + 142);
      v40 = 9;
      v42 = *(a1 + 80);
      v41 = *(a1 + 84);
      do
      {
        *(v39 - 1) = v41;
        *v39 = v42;
        v39 += 12;
        --v40;
      }

      while (v40);
      return 6;
    }
  }

  return result;
}

int32x4_t set_crop_offset(uint64_t a1)
{
  v1 = *(a1 + 6852);
  if (*(a1 + 6884) || *(a1 + 6464) != 3)
  {
    *(a1 + 6868) = v1;
    v2 = v1;
  }

  else
  {
    v2 = 0;
    *(a1 + 6868) = v1;
    v1 /= 2;
  }

  *(a1 + 6872) = v1;
  *(a1 + 6876) = v1;
  *(a1 + 6880) = v2;
  v3 = (a1 + 6800);
  v4 = vld1q_dup_f32(v3);
  result = vmulq_s32(*(a1 + 6868), v4);
  *(a1 + 6868) = result;
  return result;
}

uint64_t init_invcol(uint64_t *a1)
{
  v3 = *(a1 + 1645);
  if (v3 == 14)
  {
    return 0;
  }

  v5 = *a1;
  *(a1 + 432) = 0u;
  if (v3 == 15)
  {
    v6 = a1 + 512;
    a1[866] = aj_icol_mcurow_cmyk;
    if (*(a1[1] + 356))
    {
      result = 0;
      *(v6 + 2840) = 0;
    }

    else
    {
      v11 = *(a1 + 6937);
      if (v11)
      {
        v11 = *(a1 + 1735) == 2;
      }

      result = 0;
      *(v6 + 2840) = v11;
    }

    return result;
  }

  a1[866] = aj_icol_mcurow_default;
  switch(v3)
  {
    case 0:
      v12 = 0;
      v13 = aj_icol_row_444_to_rgb;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_rgb;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_rgb;
      goto LABEL_47;
    case 1:
      v12 = 0;
      v16 = *v5;
      v17 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgb565;
      v18 = aj_icol_row_420_to_rgb565;
      goto LABEL_33;
    case 2:
      v12 = 0;
      v16 = *v5;
      v17 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgr565;
      v18 = aj_icol_row_420_to_bgr565;
LABEL_33:
      if (v17)
      {
        v13 = v18;
      }

      v14 = v16 == 1;
      v15 = aj_icol_row_gray_to_rgb565;
      goto LABEL_47;
    case 3:
      v12 = 0;
      v19 = *v5;
      v20 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgba;
      v21 = aj_icol_row_420_to_rgba;
      goto LABEL_29;
    case 4:
      v12 = 0;
      v19 = *v5;
      v20 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgra;
      v21 = aj_icol_row_420_to_bgra;
LABEL_29:
      if (v20)
      {
        v13 = v21;
      }

      v14 = v19 == 1;
      v15 = aj_icol_row_gray_to_rgba;
      goto LABEL_47;
    case 5:
      v12 = 0;
      v22 = aj_icol_row_all_to_gray;
      goto LABEL_56;
    case 6:
      v12 = 0;
      v13 = aj_icol_row_444_to_yuv;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_yuv;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_yuv;
      goto LABEL_47;
    case 7:
      v12 = 0;
      v13 = aj_icol_row_444_to_yuyv;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_yuyv;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_yuyv;
      goto LABEL_47;
    case 8:
    case 9:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar422;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_422biplanar;
      v10 = aj_icol_row_422_to_biplanar;
      goto LABEL_51;
    case 10:
    case 11:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_420biplanar;
      v10 = aj_icol_row_420_to_biplanar;
      goto LABEL_51;
    case 12:
    case 13:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_440biplanar;
      v10 = aj_icol_row_440_to_biplanar;
      goto LABEL_51;
    case 16:
      v12 = 0;
      v23 = *v5;
      v24 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_rgba_12bit;
      v25 = aj_icol_row_420_to_rgba_12bit;
      goto LABEL_44;
    case 17:
      v12 = 0;
      v23 = *v5;
      v24 = *(a1 + 1721) == 0;
      v13 = aj_icol_row_444_to_bgra_12bit;
      v25 = aj_icol_row_420_to_bgra_12bit;
LABEL_44:
      if (v24)
      {
        v13 = v25;
      }

      v14 = v23 == 1;
      v15 = aj_icol_row_gray_to_rgba_12bit;
      goto LABEL_47;
    case 18:
      v12 = 0;
      v22 = aj_icol_row_all_to_gray_12bit;
      goto LABEL_56;
    case 19:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar4X0;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_420biplanar_12bit;
      v10 = aj_icol_row_420_to_biplanar_12bit;
      goto LABEL_51;
    case 20:
      v12 = 0;
      v13 = aj_icol_row_444_to_bgr_12bit;
      if (!*(a1 + 1721))
      {
        v13 = aj_icol_row_420_to_bgr_12bit;
      }

      v14 = *v5 == 1;
      v15 = aj_icol_row_gray_to_rgb_12bit;
LABEL_47:
      if (v14)
      {
        v13 = v15;
      }

      a1[864] = v13;
      goto LABEL_57;
    case 21:
      v12 = 0;
      v22 = aj_icol_row_gray_to_rgba_12bit;
LABEL_56:
      a1[864] = v22;
LABEL_57:
      v7 = 1;
      goto LABEL_58;
    case 22:
    case 23:
      if (*(v5 + 86))
      {
        goto LABEL_16;
      }

      aj_log_error("DecodeInit", "Two component output only supported for lossless images", v1, v2);
      return 5;
    case 24:
      v7 = 0;
      a1[866] = aj_icol_mcurow_semiplanar444;
      v8 = *v5 == 3;
      v9 = aj_icol_row_gray_to_444biplanar;
      v10 = aj_icol_row_444_to_biplanar;
LABEL_51:
      if (v8)
      {
        v9 = v10;
      }

      a1[865] = v9;
      goto LABEL_54;
    case 25:
    case 26:
      if (*(v5 + 86))
      {
LABEL_16:
        v7 = 1;
LABEL_54:
        v12 = 1;
LABEL_58:
        if (*(v5 + 86))
        {
          return 0;
        }

        v26 = *(a1 + 6);
        if (v12)
        {
          if (v26 != 2)
          {
            aj_log_error("DecodeInit", "No pixel-row inverse color transform set", v1, v2);
            return 1;
          }

          if (v7)
          {
LABEL_69:
            aj_log_error("DecodeInit", "No pixel-row semiplanar transform set", v1, v2);
            return 1;
          }
        }

        else
        {
          if (v26 == 2)
          {
            v27 = v7;
          }

          else
          {
            v27 = 0;
          }

          if (v27)
          {
            goto LABEL_69;
          }
        }

        return 0;
      }

      aj_log_error("DecodeInit", "Tri-planar output only supported for lossless images", v1, v2);
      return 5;
    default:
      aj_log_error("DecodeInit", "Unknown output format", v1, v2);
      return 5;
  }
}

uint64_t aj_compute_buffer_sizes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 6612))
  {
    v6 = *(*a2 + 16) * *(*(a2 + 8) + 80);
    if (*(a2 + 6464) == 1)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(*(a2 + 8) + 80);
    }

    v8 = v6 + v7 * (*(a2 + 6464) - 1);
    *(a2 + 6640) = v8;
    v9 = *(a1 + 16);
    if (v9)
    {
      free(v9);
      v8 = *(a2 + 6640);
    }

    v10 = malloc_type_calloc(1uLL, 4 * v8, 0x100004052888210uLL);
    *(a1 + 16) = v10;
    *(a2 + 6632) = v10;
    if (!v10)
    {
      return 6;
    }

    *(a2 + 6648) = v10;
    v11 = &v10[4 * v6];
    *(a2 + 6656) = v11;
    v12 = &v11[4 * v7];
    *(a2 + 6664) = v12;
    *(a2 + 6672) = &v12[4 * v7];
  }

  v13 = *(a2 + 6580);
  if ((v13 - 25) < 2)
  {
    return 0;
  }

  if (v13 == 14)
  {
    aj_reset_texture_buffer_ptrs(a2, a3 + 568, a2 + 64);
    result = 0;
    *(a2 + 6945) = 0;
  }

  else
  {
    *(a2 + 6945) = 1;
    v16 = *(a2 + 172);
    v15 = *(a2 + 176);
    *(a2 + 6684) = v16;
    v17 = *(a2 + 6848) - *(a2 + 6844);
    v18 = *(a2 + 6704) + v16;
    *(a2 + 6704) = v18;
    v19 = v17 * v15 * *(a2 + 6800);
    *(a2 + 6712) = v19;
    v20 = *(a2 + 6464);
    if (v20 >= 2)
    {
      v21 = (a2 + 6720);
      v22 = (a2 + 6688);
      v23 = v20 - 1;
      do
      {
        v24 = v16 / *(a2 + 6896);
        *v22++ = v24;
        v25 = v19 / *(a2 + 6892);
        *v21 += v24;
        v21[1] = v25;
        v21 += 2;
        --v23;
      }

      while (v23);
    }

    if (*(a2 + 24) == 2)
    {
      v26 = *(a2 + 48);
      if (v26 >= 2)
      {
        *(a2 + 6704) = v18 + 1;
        if (v20 == 3)
        {
          if (*(a2 + 6889))
          {
            *(a2 + 6704) = v18 + 3;
          }

          else
          {
            ++*(a2 + 6720);
            ++*(a2 + 6736);
          }
        }
      }

      if (!*(a2 + 6804))
      {
        return 0;
      }

      result = 0;
      *(a2 + 6768) = v26;
      v28 = *(a2 + 6492);
      *(a2 + 6776) = v28;
      *(a2 + 6784) = 1;
      *(a2 + 6792) = 2 * (v28 / *(a2 + 44));
    }

    else
    {
      if (!*(a2 + 6804))
      {
        return 0;
      }

      *(a2 + 6768) = 1;
      if (v20 == 3 && !*(a2 + 6884))
      {
        *(a2 + 6768) = 2;
      }

      result = 0;
      if (*(a2 + 44) == 2)
      {
        v27 = *(a2 + 6500) & 1;
      }

      else
      {
        v27 = 0;
      }

      *(a2 + 6776) = *(a2 + 28) * (*(a2 + 6500) + v27);
    }
  }

  return result;
}

uint64_t aj_init_input_states(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  if (*a2)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(*(a1 + 8) + 400) == 0;
  }

  result = init_mcustate(a2, a3, a4, v8, a5);
  if (!result)
  {
    if (*(a1 + 6948) < 2)
    {
      return 0;
    }

    else
    {
      v10 = 0;
      for (i = *(a1 + 6952); ; i += 1672)
      {
        v12 = *(a2 + 112);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        *(i + 1600) = v12[3];
        *(i + 1584) = v15;
        *(i + 1568) = v14;
        *(i + 1552) = v13;
        v16 = v12[4];
        v17 = v12[5];
        v18 = v12[6];
        *(i + 1664) = *(v12 + 14);
        *(i + 1648) = v18;
        *(i + 1632) = v17;
        *(i + 1616) = v16;
        *(i + 128) = i + 1552;
        *(i + 136) = 0;
        *(i + 144) = 0;
        *(i + 152) = 0;
        *(i + 160) = 0x700000000;
        result = aj_istream_move_to_position(i + 1552, a4);
        if (result)
        {
          break;
        }

        if (++v10 >= *(a1 + 6948) - 1)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t fill_image_edges(unint64_t result)
{
  v1 = result;
  v50 = *MEMORY[0x277D85DE8];
  v2 = *(result + 6608);
  v45 = 0;
  if (*(result + 6592) || *(result + 6596) || *(result + 6584) || *(result + 6588))
  {
    v3 = BYTE2(v2);
    v4 = BYTE1(v2);
    v5 = v2;
    v6 = (BYTE2(v2) << 6) - (((340992 * v2 + 0x4000) >> 15) + ((1756160 * BYTE1(v2) + 0x4000) >> 15)) + 16448;
    v7 = v6 >> 7;
    v8 = (v2 << 6) - (((1389568 * BYTE1(v2) + 0x4000) >> 15) + ((707584 * BYTE2(v2) + 0x4000) >> 15)) + 16448;
    if (v8 >= 0x8000)
    {
      LOBYTE(v9) = -1;
    }

    else
    {
      v9 = v8 >> 7;
    }

    if (v6 >= 0x8000)
    {
      LOBYTE(v7) = -1;
    }

    result = ((478208 * v2 + 0x4000) >> 15) + ((2462080 * BYTE1(v2) + 0x4000) >> 15) + ((1254144 * BYTE2(v2) + 0x4000) >> 15) + 64;
    v10 = *(v1 + 6580);
    if (v10 == 7)
    {
      LOBYTE(v45) = result >> 7;
      BYTE1(v45) = v9;
      BYTE2(v45) = v45;
      HIBYTE(v45) = v7;
      v11 = 4;
      v12 = 2;
      v13 = *(v1 + 24);
    }

    else
    {
      v14 = &v45 + 3;
      v13 = *(v1 + 24);
      if (v13 == 2)
      {
        LOBYTE(v45) = result >> 7;
        BYTE1(v45) = v45;
        BYTE2(v45) = v9;
      }

      else if ((v10 - 1) < 2)
      {
        v15 = (BYTE1(v2) + 2) >> 2;
        if (v3 >= 0xFC)
        {
          v16 = 31;
        }

        else
        {
          v16 = (v3 + 4) >> 3;
        }

        v17 = (v5 + 4) >> 3;
        if (v4 >= 0xFE)
        {
          v15 = 63;
        }

        if (v5 >= 0xFC)
        {
          v17 = 31;
        }

        v14 = &v45 + 1;
        v18 = 32 * v15;
        if (v10 == 1)
        {
          v19 = v18 | (v17 << 11) | v16;
        }

        else
        {
          v19 = v18 | (v16 << 11) | v17;
        }

        LOBYTE(v45) = v19;
        v7 = v19 >> 8;
      }

      else if (v10 == 15)
      {
        v20 = (BYTE2(v2) | BYTE1(v2) | v2) == 0;
        if (*(v1 + 6937))
        {
          if (*(v1 + 6940) && *(*(v1 + 8) + 356))
          {
            LOBYTE(v45) = ~(result >> 7);
            BYTE1(v45) = ~v9;
            LOBYTE(v2) = ~v7;
          }

          else
          {
            LOBYTE(v45) = BYTE2(v2);
            BYTE1(v45) = BYTE1(v2);
          }

          BYTE2(v45) = v2;
          LOBYTE(v7) = v20 - 1;
        }

        else
        {
          LOBYTE(v45) = ~HIWORD(v2);
          BYTE1(v45) = ~BYTE1(v2);
          BYTE2(v45) = ~v2;
          v7 = v20 << 31 >> 31;
        }
      }

      else if (v10 == 6)
      {
        v14 = &v45 + 2;
        LOBYTE(v45) = result >> 7;
        BYTE1(v45) = v9;
      }

      else
      {
        LOBYTE(v45) = BYTE2(v2);
        v7 = HIBYTE(v2);
        BYTE1(v45) = BYTE1(v2);
        BYTE2(v45) = v2;
      }

      *v14 = v7;
      v11 = *(v1 + 28);
      v12 = 1;
    }

    v21 = *(v1 + 32);
    v49[0] = v11;
    v49[1] = v21;
    v22 = *(v1 + 44);
    v23 = *(v1 + 48);
    v48[0] = v12;
    v48[1] = v22;
    v47[0] = 1;
    v47[1] = v23;
    v46[0] = &v45;
    v46[1] = &v45 + 2;
    if (v13 >= 1)
    {
      v24 = 0;
      v25 = (v1 + 96);
      do
      {
        v26 = v48[v24];
        v27 = *(v1 + 6492) / v26;
        v28 = *(v1 + 6496);
        v29 = v47[v24];
        v30 = *(v1 + 6584);
        v31 = *(v1 + 6588);
        v32 = v28 / v29;
        if (*(v1 + 6584))
        {
          *&v42[8] = 0;
          v43 = v27;
          v44 = v30 / v29;
          v39 = 0;
          v40 = (v28 - v31) / v29;
          v41 = v27;
          *v42 = (v31 / v29);
          v33 = v46[v24];
          v34 = v49[v24];
          aj_paint_region(*(v25 - 4), *(v1 + 6808), v33, v34, v27, *v25, v32, &v42[4]);
          result = aj_paint_region(*(v25 - 4), *(v1 + 6808), v33, v34, v27, *v25, v32, &v39);
        }

        v35 = *(v1 + 6592);
        v36 = *(v1 + 6596);
        if (*(v1 + 6592))
        {
          *&v42[4] = 0;
          v43 = v35 / v26;
          v44 = v32;
          v39 = (*(v1 + 6492) - v36) / v26;
          v40 = 0;
          v41 = v36 / v26;
          *v42 = v32;
          v37 = v46[v24];
          v38 = v49[v24];
          aj_paint_region(*(v25 - 4), *(v1 + 6808), v37, v38, v27, *v25, v32, &v42[4]);
          result = aj_paint_region(*(v25 - 4), *(v1 + 6808), v37, v38, v27, *v25, v32, &v39);
        }

        ++v24;
        ++v25;
      }

      while (v24 < *(v1 + 24));
    }
  }

  return result;
}

uint64_t init_prog_scans(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v91 = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 112);
  memset(v90, 0, sizeof(v90));
  v7 = *a2;
  v6 = a2[1];
  if (!*(v6 + 401))
  {
    v13 = *(v5 + 8);
    v88 = 0;
    v89 = v13;
    v14 = &v13[*(v5 + 32)];
    v15 = *(v7 + 3332) + *(v7 + 3328);
    v16 = 1;
    *(v6 + 404) = 1;
    if (v13 >= v14 - 3)
    {
      goto LABEL_44;
    }

    v16 = 1;
    while (1)
    {
      if (*v13 != 255 || (v17 = v13[1]) == 0)
      {
        ++v13;
        goto LABEL_11;
      }

      if ((v17 - 208) < 9)
      {
        goto LABEL_16;
      }

      v18 = v13 + 2;
      v19 = __rev16(*(v13 + 1));
      if (v13[1] > 0xD9u)
      {
        if (v17 == 255)
        {
LABEL_16:
          v89 = ++v13;
          goto LABEL_12;
        }

        if (v17 == 218)
        {
          if (&v18[v19] > v14)
          {
            goto LABEL_42;
          }

          *(v6 + 404) = ++v16;
          v20 = &v13[v19];
LABEL_34:
          v13 = v20 + 2;
LABEL_11:
          v89 = v13;
          goto LABEL_12;
        }

LABEL_33:
        v20 = &v13[v19];
        goto LABEL_34;
      }

      if (v17 != 196)
      {
        break;
      }

      v21 = &v18[v19];
      if (v21 > v14)
      {
        goto LABEL_42;
      }

      v89 = v13 + 2;
      v22 = __rev16(*(v13 + 1));
      if (v22 < 0x13)
      {
        v23 = 0;
      }

      else
      {
        v23 = 0;
        v24 = v22 - 2;
        v25 = v13 + 4;
        do
        {
          v26 = *(v25 + 1);
          v27 = vmovl_high_u8(v26);
          v28 = vmovl_u8(*v26.i8);
          v28.i32[0] = vaddvq_s32(vaddq_s32(vaddl_u16(*v28.i8, *v27.i8), vaddl_high_u16(v28, v27)));
          ++v23;
          v29 = v24 - 17;
          v25 += v28.u32[0] + 17;
          v30 = __OFSUB__(v29, v28.i32[0]);
          v24 = v29 - v28.i32[0];
        }

        while (v24 < 0 == v30 && v24 > 16);
      }

      v15 += v23;
      v89 = v21;
      v13 = v21;
LABEL_12:
      if (v13 >= v14 - 3)
      {
        goto LABEL_42;
      }
    }

    if (v17 != 217)
    {
      goto LABEL_33;
    }

LABEL_42:
    if (v16 >= 1025)
    {
      aj_log_error("DecodeInit", "The number of scans exceed the allowed limit, %d > %d", v16, 1024);
      return 7;
    }

LABEL_44:
    v35 = *(a1 + 32);
    if (v35)
    {
      free(v35);
      v16 = *(v6 + 404);
    }

    v36 = malloc_type_calloc(1uLL, 288 * v16, 0x10B004046694345uLL);
    *(a1 + 32) = v36;
    *(v6 + 408) = v36;
    if (v36)
    {
      v37 = *(a1 + 40);
      if (v37)
      {
        free(v37);
      }

      v38 = malloc_type_calloc(1uLL, 792 * v15, 0x10000404CEF3289uLL);
      *(a1 + 40) = v38;
      *(v6 + 416) = v38;
      if (v38)
      {
        v39 = v38;
        v87 = (v14 - 3);
        v82 = v14;
        v83 = a1;
        v84 = v6;
        v85 = v5;
        v40 = *(v6 + 408);
        v41 = *(v7 + 3336);
        *v40 = v41;
        if (v41 >= 1)
        {
          v42 = 0;
          do
          {
            v43 = *(v7 + 3340 + 4 * v42);
            v40[v42 + 1] = v43;
            v40[v43 + 5] = *(v7 + 3356 + 4 * v43);
            v40[v43 + 9] = *(v7 + 3372 + 4 * v43);
            ++v42;
          }

          while (v42 < *v40);
        }

        v44 = 0;
        *(v40 + 13) = *(v7 + 3388);
        v45 = v7 + 3320;
        v46 = v7 + 1144;
        v86 = v7;
        v47 = v7 + 1272;
        do
        {
          v48 = 0;
          v49 = v45 + 2 * v44;
          v50 = 1;
          v51 = v46 + 32 * v44;
          v52 = v47 + (v44 << 9);
          do
          {
            v53 = v50;
            if (*(v49 + v48))
            {
              *(&v90[v44] + v48) = v39;
              *v39 = *(v51 + 16 * v48);
              v54 = (v52 + (v48 << 8));
              v55 = v54[7];
              v57 = v54[4];
              v56 = v54[5];
              v39[7] = v54[6];
              v39[8] = v55;
              v39[5] = v57;
              v39[6] = v56;
              v58 = v54[11];
              v60 = v54[8];
              v59 = v54[9];
              v39[11] = v54[10];
              v39[12] = v58;
              v39[9] = v60;
              v39[10] = v59;
              v61 = v54[15];
              v63 = v54[12];
              v62 = v54[13];
              v39[15] = v54[14];
              v39[16] = v61;
              v39[13] = v63;
              v39[14] = v62;
              v64 = *v54;
              v65 = v54[1];
              v66 = v54[3];
              v39[3] = v54[2];
              v39[4] = v66;
              v39[1] = v64;
              v39[2] = v65;
              inited = aj_init_lookup(v39);
              if (inited)
              {
                v34 = inited;
                aj_log_error("DecodeInit", "Corrupt huffman table before scan. Error code: %d", inited);
                return v34;
              }

              v39 = (v39 + 792);
            }

            v50 = 0;
            v48 = 1;
          }

          while ((v53 & 1) != 0);
          ++v44;
          v46 = v7 + 1144;
          v45 = v7 + 3320;
          v47 = v7 + 1272;
        }

        while (v44 != 4);
        v68 = init_scan(a2, a3, v40, v90, *(v85 + 8), *(v85 + 40), *(v85 + 36), *(v7 + 3404));
        if (v68)
        {
          v34 = v68;
          aj_log_error("DecodeInit", "First scan corrupt, cannot decode image. Error code: %d", v68);
          return v34;
        }

        v69 = *(v84 + 408);
        v88 = *(v84 + 416) + 792 * *(v7 + 3328) + 792 * *(v7 + 3332);
        v70 = *(v85 + 8);
        v89 = v70;
        if (v70 < v87)
        {
          v71 = *(v7 + 3404);
          v72 = (v69 + 288);
          v73 = 1;
          while (*v70 == 255)
          {
            v75 = v70[1];
            if (!v70[1])
            {
              break;
            }

            v76 = v70 + 2;
            v77 = __rev16(*(v70 + 1));
            if (v70[1] > 0xD9u)
            {
              switch(v75)
              {
                case 255:
LABEL_74:
                  v89 = v70 + 1;
                  break;
                case 221:
                  if ((v70 + 6) > v82)
                  {
                    goto LABEL_91;
                  }

                  if (v77 != 4)
                  {
                    aj_log_error("DecodeInit", "Illegal DRI segment length.");
                    return 4;
                  }

                  v71 = __rev16(*(v70 + 2));
                  v89 = v70 + 6;
                  break;
                case 218:
                  if (&v76[v77] > v82)
                  {
                    goto LABEL_91;
                  }

                  v89 = v70 + 2;
                  if (aj_read_sos_prog(&v89, v72, v86) || init_scan(a2, a3, v72, v90, v89, *(v85 + 40), *(v85 + 36), v71))
                  {
                    goto LABEL_99;
                  }

                  v72 += 72;
                  ++v73;
                  break;
                default:
                  goto LABEL_90;
              }
            }

            else
            {
              if ((v75 - 208) < 9)
              {
                goto LABEL_74;
              }

              if (v75 != 196)
              {
                if (v75 == 217)
                {
                  goto LABEL_91;
                }

LABEL_90:
                v74 = &v70[v77 + 2];
LABEL_68:
                v89 = v74;
                goto LABEL_69;
              }

              if (&v76[v77] > v82)
              {
                goto LABEL_91;
              }

              v89 = v70 + 2;
              if (aj_read_dht_prog(&v89, &v88, v90))
              {
LABEL_99:
                *(v84 + 400) = 1;
                *(v84 + 404) = v73;
                goto LABEL_92;
              }
            }

LABEL_69:
            v70 = v89;
            if (v89 >= v87)
            {
              goto LABEL_91;
            }
          }

          v74 = v70 + 1;
          goto LABEL_68;
        }

LABEL_91:
        *(v84 + 400) = 0;
LABEL_92:
        if (v86[8] != 2)
        {
          goto LABEL_96;
        }

        v78 = (*(a2[1] + 80) * *(a2[1] + 92)) << 7;
        *(v84 + 432) = v78;
        v79 = *(v83 + 48);
        if (v79)
        {
          free(v79);
          v78 = *(v84 + 432);
        }

        v80 = malloc_type_calloc(1uLL, v78, 0xEEA3131BuLL);
        *(v83 + 48) = v80;
        *(v84 + 424) = v80;
        if (v80)
        {
LABEL_96:
          v34 = 0;
          *(v84 + 401) = 1;
          return v34;
        }
      }
    }

    return 6;
  }

  if (a4)
  {
    v8 = *(v6 + 404);
    if (v8 >= 1)
    {
      v9 = *(v6 + 408);
      v10 = &v9[72 * v8];
      do
      {
        v9[70] = scan_is_needed(a2, v9);
        v9 += 72;
      }

      while (v9 < v10);
    }

    return 0;
  }

  if (*(v6 + 404) < 1)
  {
    return 0;
  }

  v32 = *(v6 + 408);
  while (1)
  {
    *(v32 + 72) = 7;
    *(v32 + 80) = 0;
    *(v32 + 280) = scan_is_needed(a2, v32);
    v33 = aj_istream_move_to_position(v32 + 96, 0);
    if (v33)
    {
      break;
    }

    v32 += 288;
    if (v32 >= *(v6 + 408) + 288 * *(v6 + 404))
    {
      return 0;
    }
  }

  return v33;
}

uint64_t init_blockdec(uint64_t result, int a2)
{
  v2 = result;
  v23[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(result + 160) = aj_mcu_decode_index;
    v3 = **result;
    if (v3 >= 1)
    {
      v4 = (v3 + 1) & 0xFFFFFFFE;
      v5 = xmmword_240AB0610;
      v6 = vdupq_n_s64(v3 - 1);
      v7 = vdupq_n_s64(2uLL);
      do
      {
        v8 = vmovn_s64(vcgeq_u64(v6, v5));
        if (v8.i8[0])
        {
          v2[90] = aj_block_decode_skip;
        }

        if (v8.i8[4])
        {
          v2[286] = aj_block_decode_skip;
        }

        v5 = vaddq_s64(v5, v7);
        v2 += 392;
        v4 -= 2;
      }

      while (v4);
    }
  }

  else
  {
    v9 = *result;
    v10 = aj_mcu_decode_progressive;
    if (!*(*result + 84))
    {
      v10 = aj_mcu_decode;
    }

    *(result + 160) = v10;
    v11 = aj_block_decode_12bit;
    if (v9[1] == 12)
    {
      v12 = aj_block_decode_12bit;
      v13 = aj_block_decode_12bit;
      v14 = aj_block_decode_12bit;
    }

    else
    {
      v14 = aj_block_decode_S8;
      v13 = aj_block_decode_S4;
      v12 = aj_block_decode_S2;
      v11 = aj_block_decode;
    }

    v23[0] = v11;
    v23[1] = v12;
    v23[2] = v13;
    v23[3] = v14;
    v23[4] = aj_block_decode_skip;
    result = aj_highest_set_bit(*(result + 168));
    v15 = result - 1;
    v2[90] = v23[v15];
    if (*(v2 + 1616) == 1)
    {
      result = 4;
    }

    else if (*(v2 + 1721) || (*v2)[4] != 1 || (*v2)[8] != 1 || *(v2 + 42) == 8)
    {
      if (*(v2 + 1653) || !*(v2 + 6888))
      {
        result = result - 1;
      }

      else if (*(v2 + 42) <= 1)
      {
        result = v15;
      }

      else
      {
        result = (result - 2);
      }
    }

    v16 = **v2;
    if (v16 >= 2)
    {
      v17 = 0;
      v18 = v23[result];
      v19 = v16 & 0x7FFFFFFE;
      v20 = vdupq_n_s64(v16 - 2);
      v21 = v2 + 286;
      do
      {
        v22 = vmovn_s64(vcgeq_u64(v20, vorrq_s8(vdupq_n_s64(v17), xmmword_240AB0610)));
        if (v22.i8[0])
        {
          *v21 = v18;
        }

        if (v22.i8[4])
        {
          v21[196] = v18;
        }

        v17 += 2;
        v21 += 392;
      }

      while (v19 != v17);
    }
  }

  return result;
}

uint64_t aj_decode_init_index(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, _OWORD *a5, int *a6, uint64_t a7, uint64_t a8, int a9)
{
  v31 = a5[7];
  v32 = a5[8];
  v33 = *(a5 + 18);
  bzero(a5, 0x5F8uLL);
  a5[7] = v31;
  a5[8] = v32;
  *(a5 + 18) = v33;
  bzero(a3, 0x1B40uLL);
  *(a3 + 16) = 1;
  *a3 = a6;
  a3[1] = a4;
  *a5 = *(a6 + 84) == 0;
  *(a3 + 6804) = 0;
  *(a3 + 42) = 8;
  *(a3 + 1653) = 0;
  *(a3 + 1657) = 1;
  *(a3 + 6484) = *(a6 + 1);
  *(a3 + 1704) = 0;
  *(a3 + 1645) = 0;
  *(a3 + 1721) = 1;
  *(a3 + 6892) = 0x100000001;
  if (a8)
  {
    v17 = *(a8 + 112);
    v18 = *(a8 + 120);
  }

  else
  {
    v17 = 0;
    v18 = 0uLL;
  }

  *(a5 + 374) = v17;
  a5[94] = v18;
  if (!*a5)
  {
    return 0;
  }

  result = init_ra_table(a4, a5, *(a8 + 104), *(a8 + 108), a2);
  if (!result)
  {
    if (*a6 >= 1)
    {
      v20 = 0;
      v21 = a3 + 24;
      do
      {
        aj_init_component(a3, v21, v20++, 0, 1);
        v21 += 196;
      }

      while (v20 < *a6);
    }

    a3[20] = aj_mcu_decode_index;
    v22 = **a3;
    if (v22 >= 1)
    {
      v23 = (v22 + 1) & 0xFFFFFFFE;
      v24 = xmmword_240AB0610;
      v25 = vdupq_n_s64(v22 - 1);
      v26 = vdupq_n_s64(2uLL);
      v27 = a3;
      do
      {
        v28 = vmovn_s64(vcgeq_u64(v25, v24));
        if (v28.i8[0])
        {
          v27[90] = aj_block_decode_skip;
        }

        if (v28.i8[4])
        {
          v27[286] = aj_block_decode_skip;
        }

        v24 = vaddq_s64(v24, v26);
        v27 += 392;
        v23 -= 2;
      }

      while (v23);
    }

    v29 = *a8;
    if (*a8 >= 8)
    {
      v29 = 8;
    }

    if (v29 <= 1)
    {
      v30 = 1;
    }

    else
    {
      v30 = v29;
    }

    *(a3 + 1737) = aj_get_numthreads_ratbl(a3, *(a7 + 80) == 0, v30);
    result = aj_init_decode_jobs(a3, a5, a4, a1, 1);
    if (!result)
    {

      return aj_init_input_states(a3, a5, a7, a9, 0);
    }
  }

  return result;
}

uint64_t init_mcustate(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char *a5)
{
  if (!a4 || *(a1 + 112) != a2 || (v8 = *(a1 + 136), v9 = *(a1 + 80), v8 >= v9) && (v8 == v9 ? (v10 = *(a1 + 140) <= *(a1 + 84)) : (v10 = 0), !v10))
  {
    *(a1 + 112) = a2;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0x700000000;
    result = aj_istream_move_to_position(a2, a3);
    if (result)
    {
      return result;
    }

    v7 = 0;
    if (!a5)
    {
      return 0;
    }

LABEL_14:
    result = 0;
    *a5 = v7;
    return result;
  }

  if (a5)
  {
    v7 = 1;
    goto LABEL_14;
  }

  return 0;
}

BOOL scan_is_needed(uint64_t a1, int *a2)
{
  if (*a2 > 1)
  {
    return 1;
  }

  v3 = a2[1];
  v4 = *(a1 + 1568 * v3 + 904);
  if (a2[16])
  {
    v5 = a2[13];
    if (v5 >= 1)
    {
      v6 = v4 == 2 && v5 > 0x19;
      if (!v6 && v4 != 8 && (v4 != 4 || v5 <= 4))
      {
        return *a2 != 1 || *(a1 + 6464) != 1 || v3 == 0;
      }

      return 0;
    }
  }

  if (v4 == 8 && a2[13] > 0)
  {
    return 0;
  }

  return *a2 != 1 || *(a1 + 6464) != 1 || v3 == 0;
}

uint64_t init_scan(uint64_t *a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, int a6, int a7, int a8)
{
  v37 = 0;
  v38 = 0;
  if (*(*a1 + 84))
  {
    v11 = *(*a1 + 85) != 0;
  }

  else
  {
    v11 = 0;
  }

  v12 = a3[13];
  LODWORD(v13) = *a3;
  if (*a3 >= 1)
  {
    v32 = a8;
    v33 = a6;
    v34 = a7;
    v35 = a5;
    v36 = a2;
    v14 = a3 + 9;
    v15 = a3 + 5;
    v16 = 1;
    while (1)
    {
      v17 = a3[v16];
      if (v11)
      {
        v18 = *(a4 + 16 * v15[v17]);
        if (!v18)
        {
          aj_log_error("DecodeInit", "Trying to use DC huffman table #%d that is uninitialized");
          return 4;
        }

        v19 = *(a4 + 16 * v14[v17] + 8);
        if (!v19)
        {
          aj_log_error("DecodeInit", "Trying to use AC huffman table #%d that is uninitialized");
          return 4;
        }

        result = aj_check_single_huffman_table(v18, v18[1].i8, 0, *a1);
        if (result)
        {
          return result;
        }

        v21 = *a1;
        i8 = v19[1].i8;
        v23 = v19;
        v24 = 1;
      }

      else
      {
        if (v12)
        {
          v25 = a3 + 9;
        }

        else
        {
          v25 = a3 + 5;
        }

        v23 = *(a4 + 16 * v25[v17] + 8 * (v12 != 0));
        if (!v23)
        {
          aj_log_error("DecodeInit", "Trying to use huffman table #%d that is uninitialized");
          return 4;
        }

        v21 = *a1;
        i8 = v23[1].i8;
        v24 = v12 != 0;
      }

      result = aj_check_single_huffman_table(v23, i8, v24, v21);
      if (result)
      {
        return result;
      }

      ++v16;
      v13 = *a3;
      if (v16 - 1 >= v13)
      {
        a5 = v35;
        a2 = v36;
        a7 = v34;
        a6 = v33;
        a8 = v32;
        break;
      }
    }
  }

  for (i = 0; i != 16; i += 4)
  {
    v27 = &a3[i];
    *(v27 + 27) = *(a4 + i * 4);
    *(v27 + 28) = *(a4 + i * 4 + 8);
  }

  a3[17] = a8;
  v28 = a3[16];
  if (!v28 || v28 == a3[15] + 1)
  {
    if (v13 < 1 || v13 > **a1)
    {
      aj_log_error("DecodeInit", "Illegal number of components in scan: %d");
      return 4;
    }

    if (v11)
    {
      v29 = aj_baseline_multiscan_decode_scan;
LABEL_28:
      *(a3 + 11) = v29;
      v37 = a5;
      v38 = a6 - a5 + a7;
      aj_istream_init_mem((a3 + 24), &v37, *(*(a2 + 112) + 112), *(*(a2 + 112) + 56));
      *(a3 + 9) = 7;
      a3[20] = 0;
      a3[70] = scan_is_needed(a1, a3);
      return aj_istream_move_to_position((a3 + 24), 0);
    }

    v30 = a3[13];
    if (v30)
    {
      if (v13 == 1 && (v30 - 64) >= 0xFFFFFFC1)
      {
        v31 = a3[14];
        if (v31 >= v30 && v31 < 64)
        {
          if (v28)
          {
            v29 = aj_prog_decode_AC_refine;
          }

          else
          {
            v29 = aj_prog_decode_AC_first;
          }

          goto LABEL_28;
        }
      }
    }

    else if (!a3[14])
    {
      if (v28)
      {
        v29 = aj_prog_decode_DC_refine;
      }

      else
      {
        v29 = aj_prog_decode_DC_first;
      }

      goto LABEL_28;
    }
  }

  aj_log_error("DecodeInit", "Faulty scan format");
  return 4;
}

uint64_t (***aj_bufferproc_crop(uint64_t (***result)(void), uint64_t a2, uint64_t a3, int a4, int a5))(void)
{
  v5 = a4;
  v8 = result;
  v47 = *MEMORY[0x277D85DE8];
  v45[0] = 0;
  v45[1] = 0;
  v9 = *(a3 + 72);
  v10 = v9 - a5;
  if (v9 <= a5)
  {
    goto LABEL_22;
  }

  if (a5 + a4 <= v9)
  {
    return result;
  }

  v5 = a4 - v10;
  v11 = *(a2 + 6464);
  if (v11 >= 2)
  {
    if (*(result + 11) == 2 && (v10 & 1) != 0)
    {
      *(a3 + 1080) = 1;
    }

    goto LABEL_10;
  }

  if (v11 == 1)
  {
LABEL_10:
    v13 = 0;
    v14 = (a3 + 568);
    v15 = __src;
    do
    {
      if (v13)
      {
        v16 = aj_highest_set_bit(*(v8 + 11)) - 1;
      }

      else
      {
        v16 = 0;
      }

      LODWORD(v17) = (v16 + v5) >> v16;
      if (v13)
      {
        v17 = v17;
      }

      else
      {
        v17 = v5;
      }

      *(v45 + v13) = v17;
      if (v17 >= 1)
      {
        v18 = v10 >> v16;
        v19 = v15;
        v20 = v14;
        do
        {
          *v19++ = *v20;
          *v20 = v20[v18];
          ++v20;
          --v17;
        }

        while (v17);
      }

      ++v13;
      v14 += 16;
      v15 += 128;
    }

    while (v13 < *(a2 + 6464));
  }

  a5 = v9;
LABEL_22:
  v21 = *(a3 + 76);
  if (v5 + a5 > v21)
  {
    v22 = v21 - a5;
    if (!*(a3 + 1082))
    {
      v5 = v22;
    }
  }

  v23 = *(a2 + 6464);
  if (v23 >= 1)
  {
    v24 = 0;
    v25 = (a2 + 6868);
    v26 = (a3 + 568);
    do
    {
      v27 = *&v25[4 * v24];
      if (v27)
      {
        v28 = v5 < 1;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        v29 = v5;
        v30 = v26;
        do
        {
          *v30++ += v27;
          --v29;
        }

        while (v29);
      }

      ++v24;
      v26 += 16;
    }

    while (v24 != v23);
    if (v23 != 1 && *(v8 + 10) == 2 && (*v25 & 1) != 0)
    {
      *(a3 + 1081) = 1;
    }
  }

  result = (*v8[10])();
  v8[4] = (v8[4] + v5);
  v31 = *(a2 + 6464);
  if (v31 < 1)
  {
    if (LODWORD(v45[0]))
    {
      *(a3 + 1080) = 0;
    }
  }

  else
  {
    v32 = 0;
    v33 = a2 + 6868;
    v34 = (a3 + 568);
    v35 = (a3 + 568);
    do
    {
      v36 = *(v33 + 4 * v32);
      if (v36)
      {
        v37 = v5 < 1;
      }

      else
      {
        v37 = 1;
      }

      if (!v37)
      {
        v38 = -v36;
        v39 = v5;
        v40 = v35;
        do
        {
          *v40++ += v38;
          --v39;
        }

        while (v39);
      }

      ++v32;
      v35 += 16;
    }

    while (v32 != v31);
    if (LODWORD(v45[0]))
    {
      *(a3 + 1080) = 0;
      v41 = v45;
      v42 = __src;
      do
      {
        v44 = *v41++;
        v43 = v44;
        if (v44 >= 1)
        {
          result = memcpy(v34, v42, 8 * v43);
        }

        v34 += 128;
        v42 += 128;
        --v31;
      }

      while (v31);
    }
  }

  return result;
}

uint64_t aj_bufferproc_crop_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  *(a4 + 32) = *(a1 + 72);
  *a4 = v6;
  *(a4 + 16) = v7;
  v9 = *(a3 + 72);
  v8 = *(a3 + 76);
  v10 = *(a2 + 6616);
  v11 = aj_highest_set_bit(*(a1 + 44));
  LODWORD(v12) = v8 - v9;
  DWORD1(v12) = (v11 - 1 + v8 - v9) >> (v11 - 1);
  DWORD2(v12) = DWORD1(v12);
  HIDWORD(v12) = DWORD1(v12);
  *(a4 + 24) = v12;
  v13 = aj_highest_set_bit(*(a1 + 40));
  LODWORD(v14) = v10;
  DWORD1(v14) = (v13 - 1 + v10) >> (v13 - 1);
  DWORD2(v14) = DWORD1(v14);
  HIDWORD(v14) = DWORD1(v14);
  *(a4 + 8) = v14;
  *(a1 + 32) = 0;
  return 0;
}

void aj_bufferprocessor_free_chain(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1488);
  *(a2 + 1488) = 0;
  if (v2)
  {
    do
    {
      v5 = v2[10];
      v6 = v2[3];
      if (v6)
      {
        v6(v2, a1, a2);
      }

      free(v2);
      v2 = v5;
    }

    while (v5);
  }
}

char *aj_bufferprocessor_append(uint64_t a1, uint64_t a2, _OWORD *a3, __int128 *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x58uLL, 0x10A0040D2F6A0E0uLL);
  v9 = v8;
  if (v8)
  {
    *(v8 + 10) = 0;
    v10 = a3[1];
    *v8 = *a3;
    *(v8 + 1) = v10;
    if (!*(v8 + 1))
    {
      *(v8 + 1) = aj_bufferprocessor_maxoutrows_default;
    }

    v11 = *a4;
    v12 = a4[1];
    *(v8 + 9) = *(a4 + 4);
    *(v8 + 56) = v12;
    *(v8 + 40) = v11;
    v13 = (a2 + 1488);
    do
    {
      v14 = v13;
      v15 = *v13;
      v13 = (*v13 + 80);
    }

    while (v15);
    *v14 = v8;
    v16 = *(v8 + 2);
    if (v16 && v16(v8, a1, a2, a4))
    {
      return 0;
    }
  }

  return v9;
}

uint64_t aj_bufferprocessor_maxoutrows_default(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 80);
  if (v4)
  {
    return (*(v4 + 8))(v4, a2, a3, a4);
  }

  else
  {
    return a4;
  }
}

void *aj_huffman_encode_init_baseline(uint64_t a1, int a2, int a3)
{
  *(a1 + 272) = a3;
  *(a1 + 273) = 0;
  v3 = &std_huffman_luma;
  if (!a2)
  {
    v3 = &std_huffman_chroma;
  }

  v4 = &v3[4500 * (a3 == 0)];
  *a1 = *v4;
  v5 = (a1 + 16);
  if (a3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 256;
  }

  return memcpy(v5, v4 + 16, v6);
}

void *aj_huffman_fill_standard_counts_values(_OWORD *a1, void *__dst, int a3, int a4)
{
  v4 = &std_huffman_luma;
  if (!a3)
  {
    v4 = &std_huffman_chroma;
  }

  v5 = &v4[4500 * (a4 == 0)];
  *a1 = *v5;
  if (a4)
  {
    v6 = 16;
  }

  else
  {
    v6 = 256;
  }

  return memcpy(__dst, v5 + 16, v6);
}

void aj_huffman_encode_init_progressive(uint64_t a1, int a2, int a3, int a4)
{
  *(a1 + 272) = a3;
  *(a1 + 273) = 0;
  v4 = a3 == 0;
  *a1 = **(&aj_huffman_encode_init_progressive_countvecs + 4 * v4 + 2 * (a2 == 0) + (a4 == 0));
  v5 = a1 + 16;
  v6 = aj_huffman_encode_init_progressive_nsyms[2 * v4 + (a4 == 0)];
  memcpy((a1 + 16), *(&aj_huffman_encode_init_progressive_valuevecs + 4 * v4 + 2 * (a2 == 0) + (a4 == 0)), v6);

  bzero((v5 + v6), 256 - v6);
}

void *plugin_vimage_create(uint64_t a1, uint64_t *a2, _DWORD *a3, int *a4)
{
  v7 = malloc_type_calloc(1uLL, 0x28uLL, 0x1010040139C5EC2uLL);
  v8 = v7;
  if (!v7)
  {
    aj_log_error(0, "Unable to allocate session");
    goto LABEL_10;
  }

  v9 = *(a2 + 4);
  if (v9 > 0xF || ((1 << v9) & 0x8018) == 0)
  {
    aj_log_error(0, "Unsupported dataformat: %d", *(a2 + 4));
    v11 = 3;
    if (!a4)
    {
LABEL_12:
      if (v8)
      {
        plugin_vimage_destroy(v8);
        return 0;
      }

      return v8;
    }

LABEL_11:
    *a4 = v11;
    goto LABEL_12;
  }

  if (*(a2 + 5) > *(a2 + 1))
  {
    aj_log_error(0, "Max_input_rows is larger than input height");
    v11 = 1;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v13 = a2[1];
  v7[1] = v13;
  v14 = *a2;
  *v7 = *a2;
  LODWORD(v13) = 4 * v13;
  v7[4] = v13;
  v15 = malloc_type_malloc(SHIDWORD(v14) * v13, 0x760F68EDuLL);
  v8[3] = v15;
  if (!v15)
  {
    aj_log_error(0, "Unable to allocate temp buffer");
LABEL_10:
    v11 = 6;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v16 = *(a2 + 3);
  a3[20] = 0;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v16;
  if (a4)
  {
    *a4 = 0;
  }

  return v8;
}

void plugin_vimage_destroy(void *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

vImage_Error plugin_vimage_resize(int *a1, unsigned int *a2, uint64_t a3, int a4)
{
  v4 = *a2;
  v5 = a1[4];
  v6 = v5 + v4;
  if (v5 + v4 <= a1[1])
  {
    if (v4 >= 1)
    {
      v11 = *(a2 + 1);
      v12 = (*(a2 + 5) + v11 * a2[1]);
      v13 = *(a1 + 4);
      v14 = (*(a1 + 3) + v13 * v5);
      src.width = *a1;
      src.rowBytes = v11;
      src.data = v12;
      src.height = v4;
      dest.width = a1[2];
      dest.rowBytes = v13;
      dest.data = v14;
      dest.height = v4;
      if (vImageScale_ARGB8888(&src, &dest, 0, 8u))
      {
LABEL_8:
        aj_log_error(0, "Error from vImage: %d", v15, v16);
        return 1;
      }

      v6 = a1[4] + v4;
    }

    a1[4] = v6;
    if (!a4)
    {
      result = 0;
      *a3 = 0;
      return result;
    }

    v17 = *(a1 + 3);
    v18 = *(a1 + 4);
    v19 = a1[1];
    src.width = a1[2];
    src.rowBytes = v18;
    src.data = v17;
    src.height = v19;
    v20 = *(a2 + 13);
    v21 = *(a2 + 9);
    dest.width = src.width;
    dest.rowBytes = v21;
    v22 = a1[3];
    dest.data = v20;
    dest.height = v22;
    result = vImageScale_ARGB8888(&src, &dest, 0, 8u);
    if (!result)
    {
      *(a3 + 4) = 0;
      *a3 = a1[3];
      return result;
    }

    goto LABEL_8;
  }

  aj_log_error(0, "Got too many rows from the recoder");
  return 1;
}

uint64_t aj_find_and_handle_markers(int **a1, void *a2, int *a3)
{
  if (a3)
  {
    v4 = a3 + 1;
    v5 = a3 + 18;
    v6 = a3 + 19;
    v7 = a3[17];
    v8 = *a3;
    v9 = a3 + 24;
    v10 = !a3[13] && !a3[16];
  }

  else
  {
    v5 = a2 + 9;
    v6 = (a2 + 4);
    v9 = *a2;
    v7 = (*a1)[851];
    v8 = **a1;
    v10 = 1;
    v4 = &comp_ind_table;
  }

  if (*(v9 + 2) || v9[6] > 6 || (result = aj_istream_fill_buf(v9, 4294967287), !result))
  {
    if (v7 < 1 || *v6 != v7)
    {
      return 0;
    }

    v12 = *v5 + 1;
    v13 = -v12 < 0;
    v14 = -v12 & 7;
    v15 = v12 & 7;
    if (!v13)
    {
      v15 = -v14;
    }

    v16 = *(v9 + 2);
    if (v16)
    {
      v17 = *v16;
      if ((v15 | 0xD0) == v17)
      {
        if (v8 > 0 && v10)
        {
          v19 = v8;
          do
          {
            v20 = *v4++;
            *(a2 + v20 + 2) = 0;
            --v19;
          }

          while (v19);
        }

        *v9 = 0;
        v9[6] = -9;
        *v6 = 0;
        *v5 = v15 & 0xF;
        *(v9 + 2) = 0;
        if (v9[6] <= 6)
        {

          return aj_istream_fill_buf(v9, 4294967287);
        }

        return 0;
      }

      aj_log_error(0, "Bitstream corrupt: Wrong marker (%02X) found.", v17);
      return 7;
    }

    if (v9[8] > 1)
    {
      return 7;
    }

    result = 7;
    if (*(v9 + 112))
    {
      if (v9[14] == 1)
      {
        return 4294967294;
      }

      else
      {
        return 7;
      }
    }
  }

  return result;
}

uint64_t aj_mcu_decode(int **a1, uint64_t a2, uint64_t *a3, int a4, int a5, uint64_t a6, unsigned int *a7)
{
  v12 = a1;
  v102 = *MEMORY[0x277D85DE8];
  v13 = a1[1];
  v100 = 0;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v93 = 0u;
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  if (v13[91])
  {
    v14 = *(a3 + 1);
    v15 = a3[4];
    *(&v90 + 1) = a3[1];
    v91 = v14;
    v16 = &v93;
    v92 = v15;
    *&v90 = &v93;
    v17 = *a3;
    v18 = *(*a3 + 16);
    if (v18 >= *(*a3 + 8) || v18 == 0)
    {
      v18 = *(*a3 + 8);
    }

    *(v17 + 13) = v18;
    v21 = v17[2];
    v20 = v17[3];
    v22 = v17[1];
    v93 = *v17;
    v94 = v22;
    v95 = v21;
    v96 = v20;
    v23 = v17[4];
    v24 = *(v17 + 14);
    v25 = v17[6];
    v98 = v17[5];
    v99 = v25;
    v100 = v24;
    v97 = v23;
    v26 = &v90;
  }

  else
  {
    v16 = *a3;
    v26 = a3;
  }

  v89 = a1 + 24;
  v27 = aj_find_and_handle_markers(a1, v26, 0);
  if (v27)
  {
    goto LABEL_11;
  }

  v87 = v13;
  v49 = v26 + 1;
  if (!*a2)
  {
    goto LABEL_56;
  }

  v50 = a4;
  if (*(a2 + 48) == a5 && *(a2 + 44) == a4)
  {
    v51 = *(a2 + 52);
    v52 = *(a2 + 56);
    v53 = *(*(v87 + 13) + 8 * v51) + 20 * v52;
    *(a2 + 56) = v52 + 1;
    v54 = v87[29] + a5;
    *(a2 + 48) = v54;
    if (v54 >= v87[20])
    {
      *(a2 + 52) = v51 + 1;
      *(a2 + 56) = 0;
      *(a2 + 44) = (v87[28] + v50);
    }

    v27 = aj_istream_state_save(v16, v53);
    if (v27)
    {
      v28 = 0;
      v29 = v89;
LABEL_71:
      v13 = v87;
      goto LABEL_13;
    }

    if (**v12 >= 1)
    {
      v55 = 0;
      do
      {
        *(v53 + 8 + 2 * v55) = *(v49 + v55);
        ++v55;
      }

      while (v55 < **v12);
    }
  }

  v56 = *(a2 + 16);
  if (!v56 || *v56 != v50 || v56[1] != a5)
  {
LABEL_56:
    v85 = v26;
    if (*(v12 + 18))
    {
      v29 = v89;
      v27 = (v12[90])(v89, v16, v49, a6, *a7);
      v13 = v87;
      if (v27)
      {
        v28 = 1;
        goto LABEL_13;
      }

      v27 = (v12[90])(v89, v16, v49, a6, *(v12 + 227) + *a7);
      if (v27)
      {
        v28 = 2;
        goto LABEL_13;
      }

      v27 = (v12[90])(v89, v16, v49, a6 + 8 * *(v12 + 182), *a7);
      if (v27)
      {
        v28 = 3;
        goto LABEL_13;
      }

      v27 = (v12[90])(v89, v16, v49, a6 + 8 * *(v12 + 182), *(v12 + 227) + *a7);
      if (v27)
      {
        v28 = 4;
        goto LABEL_13;
      }

      v27 = (v12[286])(v12 + 220, v16, v85 + 12, a6 + 128, a7[1]);
      if (v27)
      {
        v28 = 5;
        goto LABEL_13;
      }

      v27 = (v12[482])(v12 + 416, v16, v85 + 2, a6 + 256, a7[2]);
      if (v27)
      {
        v28 = 6;
        goto LABEL_13;
      }

      v84 = a7[1];
      *a7 += 2 * *(v12 + 227);
      a7[1] = v84 + *(v12 + 619);
      a7[2] += *(v12 + 1011);
    }

    else
    {
      v61 = *(v12 + 49);
      v29 = v89;
      v13 = v87;
      if (v61 >= 1)
      {
        v62 = 0;
        v63 = 0;
        v64 = *(v12 + 48);
        while (v64 < 1)
        {
LABEL_66:
          if (++v62 >= v61)
          {
            goto LABEL_73;
          }
        }

        v65 = 0;
        while (1)
        {
          v27 = (v12[90])(v89, v16, v49, a6 + 8 * *(v12 + 182) * v62, *a7 + *(v12 + 227) * v65);
          if (v27)
          {
            break;
          }

          ++v65;
          v64 = *v89;
          if (v65 >= *v89)
          {
            v61 = *(v12 + 49);
            v63 += v65;
            v13 = v87;
            goto LABEL_66;
          }
        }

        v28 = v63 + v65 + 1;
        goto LABEL_71;
      }

      v63 = 0;
LABEL_73:
      v66 = *v12;
      if (**v12 > 1)
      {
        v67 = v63;
        v68 = a6 + 128;
        v69 = v85 + 12;
        v70 = v12 + 220;
        v71 = 1;
        while (1)
        {
          v27 = (v70[66])(v70, v16, v69, v68, a7[v71]);
          if (v27)
          {
            break;
          }

          ++v71;
          v66 = *v12;
          v68 += 128;
          v69 += 4;
          v70 += 196;
          if (v71 >= **v12)
          {
            goto LABEL_77;
          }
        }

        v28 = v67 + v71;
        goto LABEL_12;
      }

LABEL_77:
      *a7 += *(v12 + 48) * *(v12 + 227);
      if (*v66 >= 2)
      {
        v72 = v12 + 619;
        v73 = 1;
        do
        {
          a7[v73++] += *v72;
          v72 += 392;
        }

        while (v73 < *v66);
      }
    }

    if (v13[91])
    {
      v74 = *a3;
      v75 = v91;
      *a3 = v90;
      *(a3 + 1) = v75;
      a3[4] = v92;
      *a3 = v74;
      v76 = v90;
      v78 = *v90;
      v77 = *(v90 + 16);
      v79 = *(v90 + 48);
      *(v74 + 32) = *(v90 + 32);
      *(v74 + 48) = v79;
      *v74 = v78;
      v81 = *(v76 + 80);
      v80 = *(v76 + 96);
      v82 = *(v76 + 64);
      *(v74 + 112) = *(v76 + 112);
      *(v74 + 80) = v81;
      *(v74 + 96) = v80;
      *(v74 + 64) = v82;
      *(v74 + 16) = v77;
      *(*a3 + 104) = 0;
    }

    v83 = vadd_s32(*(a3 + 28), 0x100000001);
    *(a3 + 28) = v83;
    result = 0;
    if (v83 >= v13[20])
    {
      a3[3] = (*(a3 + 6) + 1);
    }

    return result;
  }

  v27 = aj_istream_state_save(v16, (v56 + 2));
  v13 = v87;
  if (!v27)
  {
    for (i = 0; i != 4; ++i)
    {
      if (i >= v16[8])
      {
        break;
      }

      *(v56 + i + 12) = *(*(v16 + 1) + i);
    }

    *(v56 + 16) = i;
    v58 = *(a2 + 16);
    if (v58 >= (v12[1] + 83))
    {
      v59 = 0;
    }

    else
    {
      v60 = *(v58 + 24);
      v59 = v58 + 24;
      if (*(a2 + 12) <= v60)
      {
        v59 = 0;
      }
    }

    *(a2 + 16) = v59;
    goto LABEL_56;
  }

LABEL_11:
  v28 = 0;
LABEL_12:
  v29 = v89;
LABEL_13:
  v30 = v13[91];
  if (v27 == -2)
  {
    if (v30)
    {
      restore_mcustate(a3, &v90);
      return 4294967294;
    }
  }

  else if (v30)
  {
    v32 = *a3;
    v33 = v91;
    *a3 = v90;
    *(a3 + 1) = v33;
    a3[4] = v92;
    *a3 = v32;
    v34 = v90;
    v36 = *v90;
    v35 = *(v90 + 16);
    v37 = *(v90 + 48);
    *(v32 + 32) = *(v90 + 32);
    *(v32 + 48) = v37;
    *v32 = v36;
    v39 = *(v34 + 80);
    v38 = *(v34 + 96);
    v40 = *(v34 + 64);
    *(v32 + 112) = *(v34 + 112);
    *(v32 + 80) = v39;
    *(v32 + 96) = v38;
    *(v32 + 64) = v40;
    *(v32 + 16) = v35;
    *(*a3 + 104) = 0;
  }

  v86 = v27;
  v41 = *(v12 + 1616);
  memset(v101, 0, sizeof(v101));
  if (v28 && v41 >= 1)
  {
    v42 = 0;
    v43 = 0;
    do
    {
      v44 = &v29[196 * v42];
      v45 = *(v44 + 1);
      if (v45 >= 1)
      {
        v46 = 0;
        v47 = *v44;
        do
        {
          if (v47 >= 1)
          {
            for (j = 0; j < v47; ++j)
            {
              if (v43 + j >= v28)
              {
                (v44[65])(v101, a6 + (v42 << 7) + 8 * *(v44 + 134) * v46, a7[v42] + *(v44 + 179) * j);
                v47 = *v44;
              }
            }

            v45 = *(v44 + 1);
            v43 += j;
          }

          ++v46;
        }

        while (v46 < v45);
      }

      ++v42;
      v29 = v89;
    }

    while (v42 != v41);
    do
    {
      *a7++ += *(v12 + 48) * *(v12 + 227);
      v12 += 196;
      --v41;
    }

    while (v41);
  }

  return v86;
}

uint64_t *restore_mcustate(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(*result + 104);
  v4 = v3 - *(*a2 + 104);
  v5 = *(*a2 + 48);
  *(v2 + 104) = v3 - v4;
  v6 = *(v2 + 16);
  *(v2 + 8) -= v4;
  v7 = *(v2 + 48);
  if (v6)
  {
    *(v2 + 16) = v6 - v4;
  }

  *(v2 + 48) = v5;
  *(v2 + 32) += v5 - v7;
  return result;
}

uint64_t aj_mcu_decode_index(int **a1, uint64_t a2, uint64_t *a3, int a4, int a5)
{
  v10 = a1[1];
  v11 = **a1;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v58 = 0u;
  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  if (v10[91])
  {
    v12 = *(a3 + 1);
    v13 = a3[4];
    *(&v55 + 1) = a3[1];
    v56 = v12;
    v14 = &v58;
    v57 = v13;
    *&v55 = &v58;
    v15 = *a3;
    v16 = *(*a3 + 16);
    if (v16 >= *(*a3 + 8) || v16 == 0)
    {
      v16 = *(*a3 + 8);
    }

    *(v15 + 13) = v16;
    v19 = v15[2];
    v18 = v15[3];
    v20 = v15[1];
    v58 = *v15;
    v59 = v20;
    v60 = v19;
    v61 = v18;
    v21 = v15[4];
    v22 = *(v15 + 14);
    v23 = v15[6];
    v63 = v15[5];
    v64 = v23;
    v65 = v22;
    v62 = v21;
    v24 = &v55;
  }

  else
  {
    v14 = *a3;
    v24 = a3;
  }

  v25 = aj_find_and_handle_markers(a1, v24, 0);
  if (v25)
  {
    goto LABEL_11;
  }

  if (*a2 && *(a2 + 48) == a5 && *(a2 + 44) == a4)
  {
    v29 = *(a2 + 52);
    v28 = *(a2 + 56);
    v30 = *(*(v10 + 13) + 8 * v29);
    *(a2 + 56) = v28 + 1;
    v31 = v10[29] + a5;
    *(a2 + 48) = v31;
    if (v31 >= v10[20])
    {
      *(a2 + 52) = v29 + 1;
      *(a2 + 56) = 0;
      *(a2 + 44) = (v10[28] + a4);
    }

    if (v30)
    {
      v54 = v30 + 20 * v28;
      v25 = aj_istream_state_save(v14, v54);
      if (v25)
      {
        goto LABEL_11;
      }

      if (v11 >= 1)
      {
        v32 = (v54 + 8);
        v33 = (v24 + 1);
        do
        {
          v34 = *v33++;
          *v32++ = v34;
          --v11;
        }

        while (v11);
      }
    }
  }

  v35 = *(a2 + 16);
  if (!v35 || *v35 != a4 || v35[1] != a5)
  {
    goto LABEL_37;
  }

  v25 = aj_istream_state_save(v14, (v35 + 2));
  if (v25)
  {
LABEL_11:
    v26 = v25;
    if (v10[91])
    {
      restore_mcustate(a3, &v55);
    }

    return v26;
  }

  for (i = 0; i != 4; ++i)
  {
    if (i >= v14[8])
    {
      break;
    }

    *(v35 + i + 12) = *(*(v14 + 1) + i);
  }

  *(v35 + 16) = i;
  v37 = *(a2 + 16);
  if (v37 >= (a1[1] + 83))
  {
    v38 = 0;
  }

  else
  {
    v39 = *(v37 + 24);
    v38 = v37 + 24;
    if (*(a2 + 12) <= v39)
    {
      v38 = 0;
    }
  }

  *(a2 + 16) = v38;
LABEL_37:
  if (v10[22] >= 1)
  {
    v40 = 0;
    do
    {
      v25 = aj_block_decode_skip((a1 + 24), v14, v24 + 2);
      if (v25)
      {
        goto LABEL_11;
      }
    }

    while (++v40 < v10[22]);
  }

  if (**a1 > 1)
  {
    v41 = v24 + 3;
    v42 = a1 + 220;
    v43 = 1;
    do
    {
      v25 = aj_block_decode_skip(v42, v14, v41);
      if (v25)
      {
        goto LABEL_11;
      }

      ++v43;
      ++v41;
      v42 += 196;
    }

    while (v43 < **a1);
  }

  if (v10[91])
  {
    v44 = *a3;
    v45 = v56;
    *a3 = v55;
    *(a3 + 1) = v45;
    a3[4] = v57;
    *a3 = v44;
    v46 = v55;
    v48 = *v55;
    v47 = *(v55 + 16);
    v49 = *(v55 + 48);
    *(v44 + 32) = *(v55 + 32);
    *(v44 + 48) = v49;
    *v44 = v48;
    v51 = *(v46 + 80);
    v50 = *(v46 + 96);
    v52 = *(v46 + 64);
    *(v44 + 112) = *(v46 + 112);
    *(v44 + 80) = v51;
    *(v44 + 96) = v50;
    *(v44 + 64) = v52;
    *(v44 + 16) = v47;
    *(*a3 + 104) = 0;
  }

  v53 = vadd_s32(*(a3 + 28), 0x100000001);
  *(a3 + 28) = v53;
  v26 = 0;
  if (v53 >= v10[20])
  {
    a3[3] = (*(a3 + 6) + 1);
  }

  return v26;
}

uint64_t aj_mcu_decode_progressive(int **a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, _DWORD *a7)
{
  v130 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = a1[1];
  v12 = (*a1)[2];
  v13 = v12 + 7;
  v45 = v12 < -7;
  v14 = v12 + 14;
  if (!v45)
  {
    v14 = v13;
  }

  if (v10[4] + v10[4] * a5 > v14 >> 3)
  {
    v15 = 1;
  }

  else
  {
    v15 = v10[4];
  }

  v16 = v11[101];
  v126 = v16;
  if (v10[8] == 2)
  {
    if (!a5)
    {
      bzero(*(v11 + 53), v11[108]);
      if (v16 >= 1)
      {
        v71 = 0;
        v120 = a4 + 1;
        v122 = 3;
        v124 = 0;
        do
        {
          v72 = *(v11 + 51) + 288 * v71;
          if (*(v72 + 280))
          {
            v73 = a1[1];
            if (*v72 != 1)
            {
              v75 = *a1;
LABEL_123:
              if (v75[20] == 194 && *(v72 + 52) >= 1)
              {
                v98 = *(v73 + 53) + (*(a1 + *(v72 + 4) + 1617) << 7);
              }

              else
              {
                v98 = *(v73 + 53);
              }

              if (v73[20] >= 1)
              {
                v99 = 0;
                do
                {
                  if (!*(v72 + 280))
                  {
                    break;
                  }

                  result = aj_find_and_handle_markers(a1, a3, v72);
                  if (result)
                  {
                    return result;
                  }

                  v100 = (*(v72 + 88))(a1, a3, v72, v98);
                  v101 = a1[1];
                  if (v100)
                  {
                    if (!v71)
                    {
                      goto LABEL_145;
                    }

                    *(v101 + 400) = 1;
                    v102 = v101[101];
                    if (v102 > v71)
                    {
                      v103 = 0;
                      v104 = vdupq_n_s64(~v71 + v102);
                      v105 = (v122 + v102) & 0xFFFFFFFFFFFFFFFCLL;
                      v106 = (*(v101 + 51) + v124);
                      do
                      {
                        v107 = vdupq_n_s64(v103);
                        v108 = vmovn_s64(vcgeq_u64(v104, vorrq_s8(v107, xmmword_240AB0610)));
                        if (vuzp1_s16(v108, *v104.i8).u8[0])
                        {
                          v106[70] = 0;
                        }

                        if (vuzp1_s16(v108, *&v104).i8[2])
                        {
                          v106[142] = 0;
                        }

                        if (vuzp1_s16(*&v104, vmovn_s64(vcgeq_u64(v104, vorrq_s8(v107, xmmword_240AB08E0)))).i32[1])
                        {
                          v106[214] = 0;
                          v106[286] = 0;
                        }

                        v103 += 4;
                        v106 += 288;
                      }

                      while (v105 != v103);
                    }
                  }

                  ++v99;
                  v98 += v101[23] << 7;
                }

                while (v99 < v101[20]);
              }

              goto LABEL_143;
            }

            v74 = *(v72 + 4);
            v75 = *a1;
            if (v74)
            {
              goto LABEL_123;
            }

            v76 = v75[3];
            v77 = v76 + 7;
            v45 = v76 < -7;
            v78 = v76 + 14;
            if (!v45)
            {
              v78 = v77;
            }

            v114 = v75[8] * v120;
            v115 = v78 >> 3;
            v79 = 1;
            v80 = a1[1];
            v116 = v80;
            do
            {
              if (!*(v72 + 280))
              {
                break;
              }

              v117 = v79;
              if (v80[20] >= 1)
              {
                v81 = 0;
                v82 = (*a1)[2];
                v83 = v82 + 7;
                v45 = v82 < -7;
                v84 = v82 + 14;
                if (!v45)
                {
                  v84 = v83;
                }

                v85 = v84 >> 3;
                v86 = *(v73 + 53) + (((*a1)[4] * v74) << 7);
                do
                {
                  v87 = (*a1)[4];
                  if (v87 >= v85)
                  {
                    v88 = v85;
                  }

                  else
                  {
                    v88 = v87;
                  }

                  if (v88 >= 1)
                  {
                    v89 = 0;
                    v118 = v85 - v88;
                    v119 = v81;
                    while (*(v72 + 280))
                    {
                      result = aj_find_and_handle_markers(a1, a3, v72);
                      if (result)
                      {
                        return result;
                      }

                      if ((*(v72 + 88))(a1, a3, v72, v86 + (v89 << 7)))
                      {
                        if (!v71)
                        {
                          goto LABEL_145;
                        }

                        v90 = a1[1];
                        *(v90 + 400) = 1;
                        v91 = v90[101];
                        if (v91 > v71)
                        {
                          v92 = 0;
                          v93 = vdupq_n_s64(~v71 + v91);
                          v94 = (v122 + v91) & 0xFFFFFFFFFFFFFFFCLL;
                          v95 = (*(v90 + 51) + v124);
                          do
                          {
                            v96 = vdupq_n_s64(v92);
                            v97 = vmovn_s64(vcgeq_u64(v93, vorrq_s8(v96, xmmword_240AB0610)));
                            if (vuzp1_s16(v97, *v93.i8).u8[0])
                            {
                              v95[70] = 0;
                            }

                            if (vuzp1_s16(v97, *&v93).i8[2])
                            {
                              v95[142] = 0;
                            }

                            if (vuzp1_s16(*&v93, vmovn_s64(vcgeq_u64(v93, vorrq_s8(v96, xmmword_240AB08E0)))).i32[1])
                            {
                              v95[214] = 0;
                              v95[286] = 0;
                            }

                            v92 += 4;
                            v95 += 288;
                          }

                          while (v94 != v92);
                        }
                      }

                      ++v89;
                      --v85;
                      if (v89 == v88)
                      {
                        v85 = v118;
                        break;
                      }
                    }

                    v80 = a1[1];
                    v81 = v119;
                  }

                  if (++v81 >= v80[20])
                  {
                    break;
                  }

                  v86 += v80[23] << 7;
                }

                while (*(v72 + 280));
              }

              v74 = 1;
              v79 = 0;
              v73 = v116;
            }

            while (((v114 <= v115) & v117) != 0);
          }

LABEL_143:
          ++v71;
          --v122;
          v124 += 288;
        }

        while (v71 != v126);
      }
    }

    __memcpy_chk();
    goto LABEL_35;
  }

  v123 = v15;
  aj_clear_blocks(v129, v11[23]);
  if (v16 < 1)
  {
LABEL_35:
    v35 = *(a3 + 28) + 1;
    *(a3 + 28) = v35;
    if (v35 >= a1[1][20])
    {
      *(a3 + 24) = (*(a3 + 24) + 1);
    }

    result = 0;
    v36 = a7;
    if (a6 && a7)
    {
      v37 = (a1 + 24);
      if ((*a1)[1] == 8)
      {
        v38 = *(a1 + 1616);
        if (v38 >= 1)
        {
          v39 = 0;
          v40 = (a1 + 30);
          v41 = v129;
          do
          {
            if (v39)
            {
              v42 = 1;
            }

            else
            {
              v42 = a1[1][22];
            }

            v43 = &v37[392 * v39];
            v44 = v43[44].i32[2];
            if (v44 > 3)
            {
              if (v44 == 4)
              {
                if (v42 >= 1)
                {
                  v54 = v43[3].i32[0];
                  v55 = v43[3].i32[1];
                  v56 = v43[5].i32[0];
                  v57 = v43[5].i32[1];
                  do
                  {
                    v58 = v41 + 16;
                    v41->i16[0] *= v54;
                    v41->i16[1] *= v55;
                    v41[2].i16[0] *= v56;
                    v41[2].i16[1] *= v57;
                    v41 += 16;
                    --v42;
                  }

                  while (v42);
                  v41 = v58;
                }
              }

              else if (v44 == 8 && v42 >= 1)
              {
                v52 = v43[3].i32[0];
                do
                {
                  v41->i16[0] *= v52;
                  v41 += 16;
                  --v42;
                }

                while (v42);
              }
            }

            else if (v44 == 1)
            {
              if (v42 >= 1)
              {
                do
                {
                  v53 = v41;
                  v41 += 16;
                  aj_block_dequantize_s1(v53, v43 + 3);
                  --v42;
                }

                while (v42);
                v38 = *(a1 + 1616);
              }
            }

            else
            {
              v45 = v44 != 2 || v42 < 1;
              if (!v45)
              {
                v46 = 0;
                do
                {
                  v47 = -8;
                  v48 = v41;
                  v49 = v40;
                  do
                  {
                    v50 = *v49;
                    v49 += 2;
                    *v48 = vmul_s16(*v48, vmovn_s32(v50));
                    v48 += 2;
                    v47 += 8;
                  }

                  while (v47 < 0x11);
                  v41 += 16;
                  ++v46;
                }

                while (v46 != v42);
              }
            }

            ++v39;
            v40 += 98;
          }

          while (v39 < v38);
        }
      }

      v59 = *a7;
      v128[0] = v59;
      v128[1] = v59;
      v60 = *(a1 + 49);
      if (v60 < 1)
      {
        v69 = 0;
      }

      else
      {
        v61 = 0;
        v62 = 0;
        v63 = *(a1 + 48);
        do
        {
          if (v63 >= 1)
          {
            v64 = 0;
            v65 = &v129[128 * v62];
            do
            {
              if ((*a1)[1] == 12)
              {
                aj_block_dequantize_12bit(a1 + 48, v65, v127);
                v66 = v128[v61];
                v128[v61] = (a1[89])(v127, a6 + 8 * *(a1 + 182) * v61, v66) + v66;
              }

              else
              {
                v67 = v128[v61];
                v68 = (a6 + 8 * *(a1 + 182) * v61);
                v128[v61] = (a1[89])(v65, v68, v67) + v67;
                if (*(a1 + 1232))
                {
                  aj_mosquito_spray((a1 + 24), v65, v68, v67);
                }
              }

              ++v64;
              v63 = *v37;
              v65 += 64;
              ++v62;
            }

            while (v64 < *v37);
            v60 = *(a1 + 49);
          }

          ++v61;
        }

        while (v61 < v60);
        v59 = v128[0];
        v69 = v62;
        v36 = a7;
      }

      *v36 = v59;
      if (*(a1 + 1616) > 1)
      {
        v109 = &v129[128 * v69];
        v110 = a6 + 128;
        v111 = a1 + 220;
        v112 = 1;
        do
        {
          if ((*a1)[1] == 12)
          {
            aj_block_dequantize_12bit(v111, v109, v127);
            v113 = (v111[65])(v127, v110, v36[v112]);
          }

          else
          {
            v113 = (v111[65])(v109, v110, v36[v112]);
          }

          v36[v112++] += v113;
          v109 += 64;
          v110 += 128;
          v111 += 196;
        }

        while (v112 < *(a1 + 1616));
      }

      return 0;
    }

    return result;
  }

  v17 = 0;
  v18 = 0;
  v19 = 3;
  v121 = v11;
  while (1)
  {
    v20 = *(v11 + 51) + 288 * v18;
    if (*(v20 + 280))
    {
      if (*v20 == 1)
      {
        v21 = v123;
        if (*(v20 + 4))
        {
          v21 = 1;
        }
      }

      else
      {
        v21 = 1;
      }

      v22 = *(v20 + 52) ? *(a1 + *(v20 + 4) + 1617) : 0;
      if (v21 >= 1)
      {
        break;
      }
    }

LABEL_34:
    ++v18;
    --v19;
    v17 += 288;
    v11 = v121;
    if (v18 == v126)
    {
      goto LABEL_35;
    }
  }

  v23 = 0;
  v24 = &v129[128 * v22];
  v25 = v21;
  while (1)
  {
    result = aj_find_and_handle_markers(a1, a3, v20);
    if (result)
    {
      return result;
    }

    if ((*(v20 + 88))(a1, a3, v20, &v24[128 * v23]))
    {
      if (!v18)
      {
LABEL_145:
        aj_log_error(0, "First scan failed, abort decode");
        return 7;
      }

      v27 = a1[1];
      *(v27 + 400) = 1;
      v28 = v27[101];
      if (v28 > v18)
      {
        v29 = 0;
        v30 = vdupq_n_s64(~v18 + v28);
        v31 = (v19 + v28) & 0xFFFFFFFFFFFFFFFCLL;
        v32 = (*(v27 + 51) + v17);
        do
        {
          v33 = vdupq_n_s64(v29);
          v34 = vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_240AB0610)));
          if (vuzp1_s16(v34, *v30.i8).u8[0])
          {
            v32[70] = 0;
          }

          if (vuzp1_s16(v34, *&v30).i8[2])
          {
            v32[142] = 0;
          }

          if (vuzp1_s16(*&v30, vmovn_s64(vcgeq_u64(v30, vorrq_s8(v33, xmmword_240AB08E0)))).i32[1])
          {
            v32[214] = 0;
            v32[286] = 0;
          }

          v29 += 4;
          v32 += 288;
        }

        while (v31 != v29);
      }
    }

    if (++v23 == v25)
    {
      goto LABEL_34;
    }
  }
}

uint64_t loop_through_image(int a1, int a2, int a3, uint64_t *a4, uint64_t *a5, int **a6, int32x2_t *a7)
{
  if (a2 < 1)
  {
    return 0;
  }

  for (i = 0; i != a2; ++i)
  {
    for (j = 0; j != 3; ++j)
    {
      v16 = &a4[j];
      v17 = a4[j];
      *v16 = a4[j + 3];
      v16[3] = v17;
    }

    if (a1 >= 1)
    {
      v18 = a1;
      do
      {
        if (a3)
        {
          result = aj_mcu_unpack(a4, a5, a7);
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = aj_mcu_pack(a4, a6, a5);
          if (result)
          {
            return result;
          }
        }

        --v18;
      }

      while (v18);
    }
  }

  return 0;
}

uint64_t aj_handle_partial_progressive_decode(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v2 = *(a1 + 8);
  if (*(v2 + 404) >= 1)
  {
    v3 = 0;
    v4 = 280;
    do
    {
      v5 = (*(v2 + 408) + v4);
      if (*v5)
      {
        if (aj_fill_coeffblock_from_scan_info(v5 - 70, v17, *(a1 + 6464)))
        {
          return 0xFFFFFFFFLL;
        }

        v2 = *(a1 + 8);
      }

      ++v3;
      v4 += 288;
    }

    while (v3 < *(v2 + 404));
  }

  v6 = *(a1 + 6464);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = 0;
  v8 = 1;
  v9 = v17;
  do
  {
    v10 = *(a1 + 192 + 1568 * v7 + 536);
    if (v10 >= 1)
    {
      v11 = 0;
      v12 = v9;
      while (2)
      {
        v13 = *(a1 + 192 + 1568 * v7 + 536);
        v14 = v12;
        do
        {
          v15 = *v14++;
          if (v15 != -1)
          {
            return (v8 << 31 >> 31);
          }

          --v13;
        }

        while (v13);
        ++v11;
        v12 += 8;
        if (v11 != v10)
        {
          continue;
        }

        break;
      }
    }

    result = 0;
    ++v7;
    v9 += 64;
    v8 = v7 < v6;
  }

  while (v7 != v6);
  return result;
}

uint64_t aj_decode_all(uint64_t a1, uint64_t a2)
{
  if (!*(*a1 + 86))
  {
    v5 = *(a2 + 1488);
    if (*(a1 + 6612))
    {
      v6 = get_row_lpf;
      v7 = 1;
    }

    else
    {
      v7 = *(a1 + 172);
      v6 = fill_coeff_buffer;
    }

    v8 = *(a2 + 80);
    v9 = *(a2 + 84);
    v10 = *(a1 + 6848);
    if (v9 + *(*(a1 + 8) + 80) * v8 >= v10 + (*(a2 + 28) - 1) * *(*(a1 + 8) + 80))
    {
LABEL_21:
      if (*a2 && (v13 = move_to_mcu(a1, a2, (a2 + 112), *(a2 + 12), 0), v13))
      {
LABEL_23:
        v16 = v13;
      }

      else
      {
        v17 = *(a1 + 8);
        if ((*(v17 + 136) - 1) <= 1)
        {
          *(v17 + 136) = 3;
          *a2 = 0;
        }

        if (*(a2 + 1496))
        {
          v18 = (*(a2 + 1504))(*(a2 + 1512));
          *(a2 + 1520) = *(a2 + 1496);
          if (v18)
          {
            v16 = 10;
          }

          else
          {
            v16 = 0;
          }
        }

        else
        {
          v16 = 0;
        }
      }

LABEL_43:
      if (*(a2 + 560))
      {
        v22 = v16 == -2;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        aj_return_rowptrs(a1, a2, (a2 + 568));
      }

      if (*(*(a1 + 8) + 400))
      {
        v23 = v16 == 0;
      }

      else
      {
        v23 = 0;
      }

      if (v23)
      {
        return aj_handle_partial_progressive_decode(a1);
      }

      return v16;
    }

    if (*(a2 + 1088))
    {
LABEL_10:
      v24 = v8;
      if (*(a2 + 64) < *(a2 + 60))
      {
        do
        {
          if (*(a2 + 1496))
          {
            v11 = *(a2 + 1520);
            if (!v11)
            {
              v12 = (*(a2 + 1504))(*(a2 + 1512));
              v11 = *(a2 + 1496);
              if (v12)
              {
                *(a2 + 1520) = v11 - 1;
                v16 = 10;
                goto LABEL_43;
              }
            }

            *(a2 + 1520) = v11 - 1;
          }

          v13 = v6(a1, a2, &v24);
          if (v13)
          {
            goto LABEL_23;
          }

          if (*(a1 + 6945))
          {
            (*v5)(v5, a1, a2, v7, *(a2 + 104));
            *(a2 + 104) += v7;
            aj_return_rowptrs(a1, a2, (a2 + 568));
            if (!*(a2 + 1088))
            {
              *(a2 + 40) = *(a2 + 36);
            }
          }

          v14 = *(a2 + 60);
          v15 = *(a2 + 64) + 1;
          *(a2 + 64) = v15;
        }

        while (v15 < v14);
      }

      v16 = *(a2 + 1084);
      if (v16)
      {
        goto LABEL_43;
      }

      goto LABEL_21;
    }

    v19 = *(a2 + 24);
    if (v8 >= v19)
    {
      v20 = *(a1 + 6844);
      if (v9 >= v20)
      {
        if (v9 < v10)
        {
          goto LABEL_37;
        }

        v8 = (v8 + 1);
        *(a2 + 80) = v8;
      }
    }

    else
    {
      *(a2 + 80) = v19;
      v20 = *(a1 + 6844);
      v8 = v19;
    }

    *(a2 + 84) = v20;
    v9 = v20;
LABEL_37:
    v21 = move_to_mcu(a1, a2, (a2 + 112), v8, v9);
    v16 = v21;
    if (v21 != -2)
    {
      if (v21)
      {
        if (!*(a2 + 1084))
        {
          *(a2 + 1084) = v21;
          v16 = do_error_recovery(a1, a2, *(a2 + 84), v21);
          if (v16 == -2)
          {
            *(a2 + 1084) = 0;
            return v16;
          }
        }
      }
    }

    if (v16)
    {
      goto LABEL_43;
    }

    LODWORD(v8) = *(a2 + 80);
    goto LABEL_10;
  }

  return aj_lossless_decode_all(a1, a2);
}

uint64_t get_row_lpf(void **a1, uint64_t a2, _DWORD *a3)
{
  v6 = (1 << *(a1 + 1656)) / *(*a1 + 8);
  v7 = *(a1 + 1712) - *(a1 + 1711);
  v8 = *(*a1 + 4);
  v9 = *(a2 + 68);
  if (!v9)
  {
    bzero(a1[829], 4 * *(a1 + 1660));
    v9 = *(a2 + 68);
  }

  v10 = v7 * v8;
  if (v9 < v6)
  {
    v11 = a2 + 568;
    v12 = a1 + 831;
    do
    {
      if (*(a2 + 1496))
      {
        v13 = *(a2 + 1520);
        if (!v13)
        {
          v14 = (*(a2 + 1504))(*(a2 + 1512));
          v13 = *(a2 + 1496);
          if (v14)
          {
            *(a2 + 1520) = v13 - 1;
            return 10;
          }
        }

        *(a2 + 1520) = v13 - 1;
      }

      result = fill_coeff_buffer(a1, a2, a3);
      if (result)
      {
        return result;
      }

      v16 = *a1;
      v17 = *(*a1 + 8);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = *v12;
        do
        {
          if (v10 >= 1)
          {
            v20 = *(v11 + 8 * v18);
            v21 = v10 + 1;
            v22 = v19;
            do
            {
              v23 = *v20++;
              *v22++ += v23;
              --v21;
            }

            while (v21 > 1);
            v17 = *(v16 + 32);
          }

          ++v18;
        }

        while (v18 < v17);
      }

      v24 = *(a1 + 1616);
      if (v24 > 1)
      {
        for (i = 1; i < v24; ++i)
        {
          if (v7 >= 1)
          {
            v26 = v12[i];
            v27 = *(v11 + (i << 7));
            v28 = v7 + 1;
            do
            {
              v29 = *v27++;
              *v26++ += v29;
              --v28;
            }

            while (v28 > 1);
            v24 = *(a1 + 1616);
          }
        }
      }

      aj_return_rowptrs(a1, a2, (a2 + 568));
      v30 = *(a2 + 68) + 1;
      *(a2 + 68) = v30;
    }

    while (v30 < v6);
  }

  *(a2 + 68) = 0;
  aj_get_rowptrs(a1, a2, (a2 + 568));
  lpf_row(*(a2 + 568), a1[831], v10, *(a1 + 1656), *(a1 + 1656));
  if (*(a1 + 1616) >= 2)
  {
    v31 = *(a1 + 1656);
    v32 = v31 - (*(*a1 + 4) == 2);
    v33 = v31 - (*(*a1 + 8) == 2);
    v34 = (a1 + 832);
    v35 = (a2 + 696);
    v36 = 1;
    do
    {
      v38 = *v35;
      v35 += 16;
      v37 = v38;
      v39 = *v34++;
      lpf_row(v37, v39, v7, v32, v33);
      ++v36;
    }

    while (v36 < *(a1 + 1616));
  }

  return 0;
}

uint64_t fill_coeff_buffer(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (*(a1 + 6580) == 14)
  {
    v6 = *(a2 + 24);
    v7 = *a3 - v6;
    if (*a3 > v6)
    {
      if (*(a1 + 17))
      {
        *(a2 + 96) = 0;
        *(a2 + 88) = 0;
      }

      else
      {
        *(a2 + 88) = v7 * *(a1 + 96) * *(a1 + 172);
        *(a2 + 92) = v7 * *(a1 + 104) * (*(a1 + 172) / *(a1 + 48));
        *(a2 + 96) = v7 * *(a1 + 112) * (*(a1 + 172) / *(a1 + 48));
      }
    }
  }

  else if (!*(a2 + 560))
  {
    if (*(a1 + 6464) >= 1)
    {
      v8 = 0;
      do
      {
        *(a2 + 88 + 4 * v8++) = 0;
      }

      while (v8 < *(a1 + 6464));
    }

    result = aj_get_rowptrs(a1, a2, (a2 + 568));
    if (result)
    {
      return result;
    }
  }

  v10 = *(a2 + 84);
  v11 = *(a2 + 1088);
  if (!v11)
  {
    goto LABEL_30;
  }

  if (v11 != 1 || (result = do_error_recovery(a1, a2, *(a2 + 84), *(a2 + 1084)), !result))
  {
    if (*a3 == *(a2 + 1092))
    {
      if (*(a2 + 1096) >= *(a1 + 6848))
      {
        v12 = *(a1 + 6848);
      }

      else
      {
        v12 = *(a2 + 1096);
      }

      fill_mcu_row_with_gray(a1, a2, v12);
      *(a2 + 1088) = 0;
      v10 = *(a2 + 1096);
LABEL_30:
      while (v10 < *(a1 + 6848))
      {
        *(a2 + 84) = *(a1 + 6844);
        v13 = move_to_mcu(a1, a2, (a2 + 112), *a3, v10);
        if (v13 || (v13 = (*(a1 + 160))(a1, a2, a2 + 112, *a3, v10, a2 + 568, a2 + 88), v13))
        {
          if (v13 == -2)
          {
            *(a2 + 80) = *a3;
            *(a2 + 84) = v10;
            return 4294967294;
          }

          *(a2 + 1084) = v13;
          result = do_error_recovery(a1, a2, v10, v13);
          if (result)
          {
            if (result == -2)
            {
              *(a2 + 80) = *a3;
              *(a2 + 84) = v10;
            }

            return result;
          }

          if (*a3 != *(a2 + 1092))
          {
            goto LABEL_32;
          }

          if (*(a2 + 1096) >= *(a1 + 6848))
          {
            v14 = *(a1 + 6848);
          }

          else
          {
            v14 = *(a2 + 1096);
          }

          fill_mcu_row_with_gray(a1, a2, v14);
          LODWORD(v10) = *(a2 + 1096) - 1;
          *(a2 + 1088) = 0;
        }

        v10 = (v10 + 1);
      }
    }

    else
    {
LABEL_32:
      fill_mcu_row_with_gray(a1, a2, *(a1 + 6848));
    }

    result = 0;
    ++*a3;
  }

  return result;
}