const __CFNumber *CMPhotoCFNumberGetSize(const __CFNumber *result)
{
  if (result)
  {
    valuePtr = 0;
    if (CFNumberGetValue(result, kCFNumberSInt64Type, &valuePtr))
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

double CMPhotoCFNumberGetDouble(const __CFNumber *a1)
{
  if (!a1)
  {
    return 0.0;
  }

  valuePtr = 0.0;
  Value = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
  result = valuePtr;
  if (!Value)
  {
    return 0.0;
  }

  return result;
}

void _cfTypeDeallocator_deallocate_0(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t CMPhotoMergeDictionaryEntries(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, unsigned __int8 a4)
{
  v5[0] = 0;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = a4;
  if (!theDict)
  {
    return 0;
  }

  CFDictionaryApplyFunction(theDict, _mergeDictionaryEntries, v5);
  return LODWORD(v5[0]);
}

uint64_t calc_ssd(uint64_t a1, int a2, uint64_t a3, int a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9, int a10, char a11, uint64_t a12, int a13)
{
  v13 = a10 * a2;
  v14 = a10 * a4;
  if (a7)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = a6 * a10;
    do
    {
      if (v19)
      {
        for (i = 0; i < v19; i += a10)
        {
          if (a5 < 9)
          {
            v21 = *(a1 + v15 + i);
            v22 = *(a3 + v16 + i);
          }

          else
          {
            v21 = *(a1 + 2 * v15 + 2 * i) >> a11;
            v22 = *(a3 + 2 * v16 + 2 * i) >> a11;
          }

          v18 += (v21 - v22) * (v21 - v22);
        }
      }

      ++v17;
      v16 += v14;
      v15 += v13;
    }

    while (v17 != a7);
  }

  else
  {
    v18 = 0;
  }

  if (a12)
  {
    v23 = a8 - 1;
    v52 = a7 - (a8 - 1);
    if (a7 != a8 - 1)
    {
      v58 = 0;
      v24 = 0;
      v51 = a6 * a10;
      v25 = v13;
      v26 = v14;
      v27 = a10 * a9;
      v49 = a9 * v14;
      v28 = 2 * v27;
      v29 = 2 * v14;
      v50 = a9 * v13;
      v30 = 2 * v13;
      v56 = a1;
      v57 = a3;
      do
      {
        v53 = v24;
        v54 = a1;
        v55 = a3;
        if (v51 != v23 * a10)
        {
          v31 = 0;
          v32 = 0;
          v33 = v57;
          v35 = a1;
          v34 = a3;
          v36 = v56;
          do
          {
            if (a8 < 1)
            {
              v47 = 0.0;
            }

            else
            {
              v37 = 0;
              v38 = 0;
              v39 = v35;
              v40 = v34;
              v41 = v33;
              v42 = v36;
              do
              {
                v43 = 0;
                v44 = a8;
                do
                {
                  if (a5 < 9)
                  {
                    v45 = *(v42 + v43);
                    v46 = *(v41 + v43);
                  }

                  else
                  {
                    v45 = *(v39 + 2 * v43) >> a11;
                    v46 = *(v40 + 2 * v43) >> a11;
                  }

                  v38 += (v45 - v46) * (v45 - v46);
                  v43 += a10;
                  --v44;
                }

                while (v44);
                ++v37;
                v42 += v25;
                v41 += v26;
                v40 += v29;
                v39 += v30;
              }

              while (v37 != a8);
              v47 = v38;
            }

            *(a12 + 8 * v58 * a13 + 8 * v31++) = v47;
            v32 += v27;
            v36 += v27;
            v33 += v27;
            v34 += v28;
            v35 += v28;
          }

          while (v51 - (v23 * a10) > v32);
        }

        ++v58;
        v24 = v53 + a9;
        v56 += v50;
        v57 += v49;
        a3 = v55 + 2 * v49;
        a1 = v54 + 2 * v50;
      }

      while (v52 > v24);
    }
  }

  return v18;
}

uint64_t _getThumbnailCountForIndex_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    *a4 = 0;
  }

  return 0;
}

uint64_t _copyAuxiliaryImageMetadataForIndex(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {
    _copyAuxiliaryImageMetadataForIndex_cold_1(&v10);
    return v10;
  }

  else
  {
    v9 = 0;
    result = _getAuxiliaryImageStorageForIndex_0(a1, a3, &v9);
    if (a5 && !result)
    {
      v7 = *(v9 + 32);
      if (v7)
      {
        v8 = CFRetain(v7);
      }

      else
      {
        v8 = 0;
      }

      result = 0;
      *a5 = v8;
    }
  }

  return result;
}

uint64_t _getDebugMetadataCountForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray **a4)
{
  if (a4)
  {
    Count = *(a1 + 96);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    *a4 = Count;
  }

  return 0;
}

uint64_t _getCustomMetadataCountForIndex_0(uint64_t a1, uint64_t a2, uint64_t a3, const __CFArray **a4)
{
  if (a4)
  {
    Count = *(a1 + 104);
    if (Count)
    {
      Count = CFArrayGetCount(Count);
    }

    *a4 = Count;
  }

  return 0;
}

void CMPhotoDecompressionSessionCancelAsyncRequest(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock((a1 + 16));
  if (CFSetContainsValue(*(a1 + 32), a2))
  {
    CFSetRemoveValue(*(a1 + 32), a2);
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v4, v5, v6);
  }

  os_unfair_lock_unlock((a1 + 16));
}

uint64_t _compareAsyncDecodeRequests(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    if (*a1 >= *a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = -1;
    }

    if (*a1 <= *a2)
    {
      return v4;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (v2 >= v3)
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }

    if (v2 <= v3)
    {
      return v6;
    }

    else
    {
      return 1;
    }
  }
}

void __CMPhotoDecompressionSessionEnqueueAsynchronousRequest_block_invoke_2(uint64_t a1)
{
  cf = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(v2 + 16);
    v5 = *v2;
    os_unfair_lock_lock((v3 + 16));
    v6 = *(v3 + 304);
    if (v6 && (*(v6 + 16))(v6, v3, v4, v5, *(v3 + 312)))
    {
      CFSetRemoveValue(*(v3 + 32), v5);
    }

    os_unfair_lock_unlock((v3 + 16));
    v7 = *(*(*(*(a1 + 32) + 16) + 32) + 128);
    if (v7)
    {
      v8 = v7();
    }

    else
    {
      fig_log_get_emitter();
      v8 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, v12);
    }

    (*(*(a1 + 32) + 24))(*(*(a1 + 32) + 16), **(a1 + 32), v8, *(*(a1 + 32) + 40), 0, *(*(a1 + 32) + 32));
    os_unfair_lock_lock((*(a1 + 40) + 16));
    CFSetRemoveValue(*(*(a1 + 40) + 32), **(a1 + 32));
    os_unfair_lock_unlock((*(a1 + 40) + 16));
    dispatch_semaphore_signal(*(*(a1 + 48) + 24));
    CMPhotoDecompressionSessionFreeAsyncRequest(*(a1 + 32));
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, 0, v12);
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }
}

uint64_t CMPhotoDecompressionSetAsyncPreDecodeCallback(uint64_t a1, const void *a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 16));
  v6 = *(a1 + 304);
  if (v6)
  {
    _Block_release(v6);
    *(a1 + 304) = 0;
  }

  *(a1 + 312) = 0;
  if (a2)
  {
    *(a1 + 304) = _Block_copy(a2);
    *(a1 + 312) = a3;
  }

  os_unfair_lock_unlock((a1 + 16));
  return 0;
}

uint64_t _processCompressedData(compression_stream *stream, CFDataRef theData, int flags, _BYTE *a4)
{
  if (!stream->dst_size)
  {
    Length = CFDataGetLength(theData);
    v10 = fmin(round(Length * 1.25), 10485760.0);
    if (Length >= v10)
    {
      _processCompressedData_cold_1(&v14);
      return v14;
    }

    v11 = Length;
    CFDataSetLength(theData, v10);
    stream->dst_ptr = &CFDataGetMutableBytePtr(theData)[v11];
    stream->dst_size = CFDataGetLength(theData) - v11;
  }

  result = compression_stream_process(stream, flags);
  if (result)
  {
    if (result == 1)
    {
      result = 0;
      *a4 = 1;
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950194, "<<<< CMPhotoPictureReaderUtilities >>>>", 169, v4);
    }
  }

  return result;
}

uint64_t CMPhotoJPEGWriteMPFWithJPEG(__IOSurface *a1, CFIndex a2, IOSurfaceRef *a3, unsigned int *a4, int a5, uint64_t a6)
{
  v73 = 0;
  BOOLean = 0;
  if (a1 && a2)
  {
    if (a5 <= 0)
    {
      CMPhotoJPEGWriteMPFWithJPEG_cold_6(&v75);
    }

    else
    {
      v8 = a3;
      if (a3 && (v9 = a4) != 0)
      {
        if (a6)
        {
          CMBaseObject = CMByteStreamGetCMBaseObject();
          v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v13)
          {
            v14 = *MEMORY[0x1E695E480];
            if (!v13(CMBaseObject, *MEMORY[0x1E695FFA8], *MEMORY[0x1E695E480], &BOOLean))
            {
              if (CFBooleanGetValue(BOOLean))
              {
                length = a2;
                v15 = a1;
                v16 = a5;
                v72 = malloc_type_malloc(4 * a5, 0x100004052888210uLL);
                v17 = 0;
                do
                {
                  PixelFormat = IOSurfaceGetPixelFormat(v8[v17]);
                  if (PixelFormat != 875704422 && PixelFormat != 1246774599 && PixelFormat != 875704438)
                  {
                    v68 = 0;
                    v69 = 0;
                    v70 = 4294954516;
                    goto LABEL_58;
                  }

                  v72[v17] = PixelFormat;
                  if ((PixelFormat | 0x10) == 0x34323076)
                  {
                    BytesPerRowOfPlane = IOSurfaceGetBytesPerRowOfPlane(v8[v17], 0);
                    v9[v17] = IOSurfaceGetHeightOfPlane(v8[v17], 0) * BytesPerRowOfPlane;
                    v22 = IOSurfaceGetBytesPerRowOfPlane(v8[v17], 1uLL);
                    v9[v17] += IOSurfaceGetHeightOfPlane(v8[v17], 1uLL) * v22;
                  }

                  ++v17;
                }

                while (a5 != v17);
                IOSurfaceLock(v15, 1u, 0);
                BaseAddress = IOSurfaceGetBaseAddress(v15);
                v24 = CFDataCreateWithBytesNoCopy(v14, BaseAddress, length, *MEMORY[0x1E695E498]);
                v68 = v24;
                if (v24)
                {
                  BytePtr = CFDataGetBytePtr(v24);
                  v26 = CFDataGetLength(v68);
                  v27 = 0;
                  v28 = 0;
LABEL_24:
                  v29 = v28;
                  v30 = v26 - v28;
                  if (v26 > v28)
                  {
                    v31 = 0;
                    v32 = v26;
                    v33 = BytePtr;
                    do
                    {
                      v34 = v33[v29];
                      if (v27)
                      {
                        if ((v34 & 0xF0) == 0xE0)
                        {
                          if (v30 + v31 >= 8)
                          {
                            v28 = v29 + __rev16(*&v33[v29 + 1]) - v31 + 1;
                            v27 = 1;
                            if (v28 < v26)
                            {
                              goto LABEL_24;
                            }
                          }

                          break;
                        }

                        if ((v34 | 2) == 0xC2)
                        {
                          v35 = v30 + v31;
                          v36 = ~v31 + v29;
                          if (v35 >= 9)
                          {
                            v29 = v36;
                          }

                          break;
                        }
                      }

                      ++v33;
                      v27 = v34 == 255;
                      --v31;
                      --v32;
                    }

                    while (v29 != v32);
                  }

                  if (v29 <= 0)
                  {
                    CMPhotoJPEGWriteMPFWithJPEG_cold_2(&v75);
                    v69 = 0;
LABEL_78:
                    v70 = v75;
                    goto LABEL_57;
                  }

                  CFRelease(v68);
                  v37 = IOSurfaceGetBaseAddress(v15);
                  v38 = byteStreamWrite(a6, v37, v29, &v73);
                  if (v38)
                  {
                    v70 = v38;
                    v69 = 0;
LABEL_74:
                    v68 = 0;
                    goto LABEL_57;
                  }

                  v39 = 16 * a5 + 74;
                  v40 = malloc_type_malloc(v39, 0xADB232BDuLL);
                  v69 = v40;
                  if (v40)
                  {
                    *v40 = -7425;
                    v41 = 16 * (a5 + 1);
                    *(v40 + 1) = bswap32(v41 + 56) >> 16;
                    *(v40 + 4) = 0x2A004D4D004D4441;
                    *(v40 + 12) = 0xB0030008000000;
                    v42 = v41 + 58;
                    *(v40 + 10) = 1792;
                    *(v40 + 22) = 0x3030313004000000;
                    *(v40 + 30) = 0x1000000040001B0;
                    *(v40 + 38) = bswap32(a5 + 1);
                    *(v40 + 42) = 117441200;
                    *(v40 + 46) = bswap32(v41);
                    v43 = v41 + 58 + length - v29 - 8;
                    *(v40 + 50) = 838860800;
                    v44 = 74;
                    *(v40 + 58) = 768;
                    *(v40 + 62) = bswap32(v42 + length);
                    v45 = v72;
                    v46 = v9;
                    v47 = a5;
                    *(v40 + 66) = 0;
                    do
                    {
                      v48 = &v69[v44];
                      v50 = *v45++;
                      v49 = v50;
                      if (v50 == 875704422)
                      {
                        v51 = 117571586;
                      }

                      else
                      {
                        v51 = 131074;
                      }

                      if (v49 == 875704438)
                      {
                        v52 = 100794370;
                      }

                      else
                      {
                        v52 = v51;
                      }

                      *v48 = bswap32(v52);
                      *(v48 + 1) = bswap32(*v46);
                      *(v48 + 1) = bswap32(v43);
                      v53 = *v46;
                      v46 += 2;
                      v43 += v53;
                      v44 += 16;
                      --v47;
                    }

                    while (v47);
                    if (v42 == v39)
                    {
                      v54 = byteStreamWrite(a6, v69, v39, &v73);
                      if (v54 || (v55 = IOSurfaceGetBaseAddress(v15), v54 = byteStreamWrite(a6, v55 + v29, length - v29, &v73), v54))
                      {
                        v70 = v54;
                        goto LABEL_74;
                      }

                      while (1)
                      {
                        IOSurfaceLock(*v8, 1u, 0);
                        v56 = IOSurfaceGetPixelFormat(*v8) & 0xFFFFFFEF;
                        v57 = *v8;
                        if (v56 == 875704422)
                        {
                          v58 = IOSurfaceGetBytesPerRowOfPlane(v57, 0);
                          v59 = IOSurfaceGetHeightOfPlane(*v8, 0) * v58;
                          BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(*v8, 0);
                          v70 = byteStreamWrite(a6, BaseAddressOfPlane, v59, &v73);
                          v61 = *v8;
                          if (v70)
                          {
                            IOSurfaceUnlock(v61, 1u, 0);
                            goto LABEL_74;
                          }

                          v62 = IOSurfaceGetBytesPerRowOfPlane(v61, 1uLL);
                          v63 = IOSurfaceGetHeightOfPlane(*v8, 1uLL) * v62;
                          v64 = IOSurfaceGetBaseAddressOfPlane(*v8, 1uLL);
                          v65 = a6;
                          v66 = v63;
                        }

                        else
                        {
                          v64 = IOSurfaceGetBaseAddress(v57);
                          v66 = *v9;
                          v65 = a6;
                        }

                        v70 = byteStreamWrite(v65, v64, v66, &v73);
                        IOSurfaceUnlock(*v8, 1u, 0);
                        if (v70)
                        {
                          goto LABEL_74;
                        }

                        ++v9;
                        ++v8;
                        if (!--v16)
                        {
                          v68 = 0;
                          v70 = 0;
                          goto LABEL_57;
                        }
                      }
                    }

                    CMPhotoJPEGWriteMPFWithJPEG_cold_1(&v75);
                    v68 = 0;
                    goto LABEL_78;
                  }

                  v68 = 0;
                }

                else
                {
                  v69 = 0;
                }

                v70 = 4294954510;
LABEL_57:
                IOSurfaceUnlock(v15, 1u, 0);
                goto LABEL_58;
              }
            }
          }

          CMPhotoJPEGWriteMPFWithJPEG_cold_3(&v75);
        }

        else
        {
          CMPhotoJPEGWriteMPFWithJPEG_cold_4(&v75);
        }
      }

      else
      {
        CMPhotoJPEGWriteMPFWithJPEG_cold_5(&v75);
      }
    }
  }

  else
  {
    CMPhotoJPEGWriteMPFWithJPEG_cold_7(&v75);
  }

  v68 = 0;
  v69 = 0;
  v72 = 0;
  v70 = v75;
LABEL_58:
  free(v69);
  free(v72);
  if (v68)
  {
    CFRelease(v68);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v70;
}

CFMutableDictionaryRef createJPEGSurface(int a1)
{
  v2 = *MEMORY[0x1E69E9AC8];
  result = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (result)
  {
    v4 = result;
    setIntValue_0(result, *MEMORY[0x1E696CE60], 0);
    setIntValue_0(v4, *MEMORY[0x1E696CFC0], 1246774599);
    setIntValue_0(v4, *MEMORY[0x1E696CE30], (a1 + v2 - 1) & -v2);
    v5 = IOSurfaceCreate(v4);
    CFRelease(v4);
    return v5;
  }

  return result;
}

uint64_t CMPhotoJPEGCopyMPDataFromJPEG(IOSurfaceRef buffer, CFIndex a2, int a3, __IOSurface **a4, void *a5)
{
  result = 0xFFFFFFFFLL;
  if (buffer && a4 && a5)
  {
    IOSurfaceLock(buffer, 1u, 0);
    v11 = *MEMORY[0x1E695E480];
    BaseAddress = IOSurfaceGetBaseAddress(buffer);
    v13 = CFDataCreateWithBytesNoCopy(v11, BaseAddress, a2, *MEMORY[0x1E695E498]);
    MPTag = findMPTag(v13);
    if (MPTag)
    {
      v15 = MPTag;
      BytePtr = CFDataGetBytePtr(v13);
      v23 = 0;
      v24 = 0;
      v22 = 0;
      v21 = 0;
      if (!parseInitialMPFHeader(&BytePtr[v15], &v24, &v23, &v22, &v21))
      {
        JPEGSurface = createJPEGSurface(*(v23 + a3));
        if (JPEGSurface)
        {
          v18 = JPEGSurface;
          IOSurfaceLock(JPEGSurface, 0, 0);
          if (a3)
          {
            v19 = &BytePtr[*(v24 + a3) + 8 + v15];
          }

          else
          {
            v19 = &BytePtr[*v24];
          }

          v20 = IOSurfaceGetBaseAddress(v18);
          memcpy(v20, v19, *(v23 + a3));
          IOSurfaceUnlock(v18, 0, 0);
          *a4 = v18;
          *a5 = *(v23 + a3);
        }

        free(v24);
        free(v23);
        free(v22);
      }
    }

    CFRelease(v13);
    IOSurfaceUnlock(buffer, 1u, 0);
    return 0;
  }

  return result;
}

CFIndex findMPTag(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = BytePtr[v4];
    if (v5)
    {
      break;
    }

LABEL_10:
    v5 = v6 == 255;
    ++v4;
LABEL_11:
    if (v4 >= Length)
    {
      return 0;
    }
  }

  if ((v6 & 0xF0) != 0xE0)
  {
    if ((v6 | 2) == 0xC2)
    {
      return 0;
    }

    goto LABEL_10;
  }

  if (Length - v4 < 8)
  {
    return 0;
  }

  if ((v6 & 0xF) != 2)
  {
    v4 += __rev16(*&BytePtr[v4 + 1]) + 1;
    if (v4 >= Length)
    {
      return 0;
    }

    v5 = 1;
    goto LABEL_11;
  }

  return v4 - 1;
}

uint64_t parseInitialMPFHeader(unsigned __int16 *a1, void *a2, void *a3, unsigned int **a4, int *a5)
{
  if (*a1 != 58111)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 1) != 5063745)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = *(a1 + 2);
  v7 = a1[8];
  v8 = bswap32(v7) >> 16;
  if (v6 == 704662861)
  {
    LOWORD(v7) = v8;
  }

  v7 = v7;
  if (!v7)
  {
    return 0;
  }

  v13 = 0;
  for (i = (a1 + 13); ; i += 3)
  {
    v15 = *(i - 4);
    v16 = bswap32(v15) >> 16;
    if (v6 == 704662861)
    {
      LOWORD(v15) = v16;
    }

    if (v15 == 45056)
    {
      v18 = *i;
      v19 = bswap32(*i);
      if (v6 == 704662861)
      {
        v18 = v19;
      }

      if (v18 != 808529968)
      {
        return 0xFFFFFFFFLL;
      }

      goto LABEL_19;
    }

    if (v15 == 45057)
    {
      v17 = bswap32(*i);
      if (v6 == 704662861)
      {
        v13 = v17;
      }

      else
      {
        v13 = *i;
      }

      goto LABEL_19;
    }

    if (v15 == 45058)
    {
      break;
    }

LABEL_19:
    if (!--v7)
    {
      return 0;
    }
  }

  if (!v13)
  {
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    v21 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
  }

  else
  {
    v21 = 0;
  }

  if (a3)
  {
    v22 = malloc_type_malloc(8 * v13, 0x100004000313F17uLL);
  }

  else
  {
    v22 = 0;
  }

  if (a4)
  {
    v23 = malloc_type_malloc(4 * v13, 0x100004052888210uLL);
  }

  else
  {
    v23 = 0;
  }

  if (v13 >= 1)
  {
    LODWORD(v24) = bswap32(*i);
    if (v6 == 704662861)
    {
      v24 = v24;
    }

    else
    {
      v24 = *i;
    }

    v25 = v13;
    v26 = (a1 + v24 + 16);
    v27 = v23;
    v28 = v22;
    v29 = v21;
    do
    {
      if (v21)
      {
        LODWORD(v30) = *v26;
        v31 = bswap32(*v26);
        if (v6 == 704662861)
        {
          v30 = v31;
        }

        else
        {
          v30 = v30;
        }

        *v29 = v30;
      }

      if (v22)
      {
        LODWORD(v32) = *(v26 - 1);
        v33 = bswap32(v32);
        if (v6 == 704662861)
        {
          v32 = v33;
        }

        else
        {
          v32 = v32;
        }

        *v28 = v32;
      }

      if (v23)
      {
        v34 = *(v26 - 2);
        v35 = bswap32(v34);
        if (v6 == 704662861)
        {
          v34 = v35;
        }

        *v27 = v34;
      }

      ++v29;
      ++v28;
      ++v27;
      v26 += 4;
      --v25;
    }

    while (v25);
  }

  if (a2)
  {
    *a2 = v21;
  }

  if (a3)
  {
    *a3 = v22;
  }

  if (a4)
  {
    *a4 = v23;
  }

  if (!a5)
  {
    return 0;
  }

  result = 0;
  *a5 = v13;
  return result;
}

uint64_t CMPhotoJPEGGetMPDataCountFromJPEG(IOSurfaceRef buffer, CFIndex a2, _DWORD *a3)
{
  result = 0xFFFFFFFFLL;
  if (buffer && a3)
  {
    IOSurfaceLock(buffer, 1u, 0);
    v7 = *MEMORY[0x1E695E480];
    BaseAddress = IOSurfaceGetBaseAddress(buffer);
    v9 = CFDataCreateWithBytesNoCopy(v7, BaseAddress, a2, *MEMORY[0x1E695E498]);
    MPTag = findMPTag(v9);
    if (MPTag)
    {
      v11 = MPTag;
      BytePtr = CFDataGetBytePtr(v9);
      v13 = 0;
      if (!parseInitialMPFHeader(&BytePtr[v11], 0, 0, 0, &v13))
      {
        *a3 = v13;
      }
    }

    CFRelease(v9);
    IOSurfaceUnlock(buffer, 1u, 0);
    return 0;
  }

  return result;
}

void setIntValue_0(__CFDictionary *a1, const void *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, a2, v5);
  CFRelease(v5);
}

uint64_t _newContainer(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 240) = 2;
  v3 = (a1 + 240);
  if (a2)
  {
    CMPhotoCFDictionaryGetIntIfPresent();
    CMPhotoCFDictionaryGetIntIfPresent();
    v5 = *v3;
    if (*v3)
    {
      if (v5 == 4)
      {
        CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceDestinationSize", (a1 + 256));
      }

      else if (v5 == 3)
      {
        Value = CFDictionaryGetValue(a2, @"BackingFileURL");
        if (!Value || (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFURLGetTypeID()))
        {
          _newContainer_cold_1(&v11);
          return v11;
        }

        *(a1 + 248) = CFRetain(v7);
      }
    }

    else
    {
      *v3 = 2;
    }
  }

  result = *(a1 + 492);
  if (*(a1 + 488))
  {
    if (result)
    {
      return 0;
    }

    else
    {
      v10 = JPEGDeviceInterface_openDriverConnection();
      result = 0;
      *(a1 + 492) = v10;
    }
  }

  else if (result)
  {
    JPEGDeviceInterface_closeDriverConnection(result);
    result = 0;
    *(a1 + 492) = 0;
  }

  return result;
}

uint64_t _addXMP(uint64_t a1, uint64_t a2, int a3, CFTypeRef cf)
{
  if (a2 || !*(a1 + 264))
  {
    _addXMP_cold_2(&v8);
    return v8;
  }

  else if (*(a1 + 336))
  {
    _addXMP_cold_1(&v7);
    return v7;
  }

  else
  {
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *(a1 + 336) = v5;
    *(a1 + 320) = 1;
  }

  return result;
}

uint64_t _addDebugMetadata(uint64_t a1, uint64_t a2, int a3, CFTypeRef cf)
{
  if (a2 || !*(a1 + 264))
  {
    _addDebugMetadata_cold_2(&v8);
    return v8;
  }

  else if (*(a1 + 344))
  {
    _addDebugMetadata_cold_1(&v7);
    return v7;
  }

  else
  {
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *(a1 + 344) = v5;
    *(a1 + 320) = 1;
  }

  return result;
}

uint64_t _addMetadataFromImageProperties(uint64_t a1, uint64_t a2, int a3, CFTypeRef cf)
{
  if (a2 || !*(a1 + 264))
  {
    _addMetadataFromImageProperties_cold_2(&v8);
    return v8;
  }

  else if (*(a1 + 360))
  {
    _addMetadataFromImageProperties_cold_1(&v7);
    return v7;
  }

  else
  {
    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    result = 0;
    *(a1 + 360) = v5;
    *(a1 + 320) = 1;
  }

  return result;
}

uint64_t _compressImageAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = -1;
  v7 = _compressImageInternal_0(a1, a2, a3, &v10);
  v8 = v7;
  if (a4 && !v7)
  {
    *a4 = v10;
  }

  if (a5 && !v7)
  {
    (*(a5 + 16))(a5, 0, 0, v10, 0);
  }

  return v8;
}

uint64_t _compressAuxImageAsync(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t a8)
{
  _compressAuxImageInternal();
  v11 = v10;
  if (a7 && !v10)
  {
    *a7 = -1;
  }

  if (a8 && !v10)
  {
    (*(a8 + 16))(a8, 0, 2, -1, 0);
  }

  return v11;
}

uint64_t _compressThumbnailAsync(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4, uint64_t a5)
{
  v6 = _compressThumbnailInternal(a1, a2, a3, a4);
  v7 = v6;
  if (a5 && !v6)
  {
    (*(a5 + 16))(a5, 0, 1, 0, 0);
  }

  return v7;
}

void _handleStripping(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }
}

uint64_t _handleRewrite(uint64_t a1, const void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = CFGetAllocator(a1);
  if (!*(a1 + 376))
  {
    return 0;
  }

  v5 = v4;
  *(v11 + 3) = -488381471;
  v11[0] = -505290272;
  v13[0] = xmmword_1E77A3B48;
  v13[1] = *&off_1E77A3B58;
  v13[2] = xmmword_1E77A3B68;
  v14 = "MPF";
  v12[0] = 5;
  v12[1] = 6;
  v12[2] = 29;
  v12[3] = 35;
  v12[4] = 12;
  v12[5] = 12;
  v12[6] = 4;
  if (*(a1 + 377))
  {
    v6 = 7;
  }

  else
  {
    v6 = 6;
  }

  cf = 0;
  CMPhotoJFIFCreateStrippedBufferFromByteStream(a2, 0, *(a1 + 384), v6, v11, v13, v12, &cf);
  if (v7)
  {
    return v7;
  }

  v8 = CMPhotoSampleBufferCreateFromSource(v5, cf, 0, 0, (a1 + 272), 0);
  if (cf)
  {
    CFRelease(cf);
  }

  return v8;
}

void _releaseAuxImages(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1)
  {
    Count = CFArrayGetCount(*(a1 + 72));
    if (Count >= 1)
    {
      v4 = Count;
      for (i = 0; i != v4; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
      }
    }

    v7 = *(a1 + 72);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 72) = 0;
    }
  }
}

void _releaseAllContainerResources(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 264) = 0;
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 272) = 0;
  }

  v4 = *(a1 + 280);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 280) = 0;
  }

  v5 = *(a1 + 288);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 288) = 0;
  }

  v6 = *(a1 + 296);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 296) = 0;
  }

  *(a1 + 304) = 0;
  _releaseAuxImages(a1 + 240);
  v7 = *(a1 + 328);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 328) = 0;
  }

  v8 = *(a1 + 336);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 336) = 0;
  }

  v9 = *(a1 + 344);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 344) = 0;
  }

  v10 = *(a1 + 352);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 352) = 0;
  }

  v11 = *(a1 + 360);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 360) = 0;
  }

  *(a1 + 320) = 0;
  *(a1 + 376) = 0;
  v12 = *(a1 + 248);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 248) = 0;
  }

  *(a1 + 240) = 0;
  *(a1 + 256) = 0;
}

uint64_t CMByteStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, 0, a3, 0);
}

uint64_t _encodeImageForIndex(uint64_t a1, int a2, int a3, uint64_t a4, const __CFDictionary *a5, int a6, const opaqueCMFormatDescription *a7)
{
  v14 = CFGetAllocator(a1);
  v60 = 0;
  v61 = 0;
  v58 = 0;
  v59 = 0;
  v57 = 0;
  cf = 0;
  v55 = 0;
  v15 = MEMORY[0x1E695F050];
  v16 = *(MEMORY[0x1E695F050] + 16);
  v53 = *MEMORY[0x1E695F050];
  v54 = v16;
  ColorSpaceFromPixelBuffer = CMPhotoCompressionSessionCreateInputForJPEGCompression(a1, a5, a6, a2, a7, &v53, &v61);
  if (ColorSpaceFromPixelBuffer)
  {
    goto LABEL_88;
  }

  if (a6)
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    goto LABEL_70;
  }

  v52 = 0;
  CMPhotoCFDictionaryGetBooleanIfPresent();
  v18 = *(a1 + 240);
  v49 = a3;
  if (a2 == 2)
  {
    ColorSpaceFromPixelBuffer = CMPhotoCompressionSessionCreateEncodeOptionsAndBufferForJPEGAuxImage(a1, a5, a3, v18 == 2, &v60, &v61, &v59, &v58, &v55);
    if (ColorSpaceFromPixelBuffer)
    {
      goto LABEL_88;
    }

    a5 = v60;
    v52 = 1;
  }

  else
  {
    if (v18 != 2)
    {
      MutableCopy = FigCFDictionaryCreateMutableCopy();
      if (!MutableCopy)
      {
        v31 = 0;
        v32 = 0;
        v33 = 4294950305;
        goto LABEL_70;
      }

      a5 = MutableCopy;
      v60 = MutableCopy;
      CMPhotoCFDictionarySetBoolean(MutableCopy, @"PoolCompressedSurfaces", 0);
    }

    v62 = 0;
    if (a5)
    {
      CMPhotoCFDictionaryGetBooleanIfPresent();
      if (v62)
      {
        if (CMPhotoPixelBufferIsITUR_2100TF(v61))
        {
          PixelFormatType = CVPixelBufferGetPixelFormatType(v61);
          space[0] = 0;
          ColorSpaceFromPixelBuffer = CMPhotoScaleAndRotateSessionTransformForSize(*(a1 + 32), v61, 1, 1, PixelFormatType, 0x100000002, 1u, 0, *v15, v15[1], v15[2], v15[3], *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8), 0, 1u, space);
          if (ColorSpaceFromPixelBuffer)
          {
            goto LABEL_88;
          }

          if (v61)
          {
            CFRelease(v61);
          }

          v61 = space[0];
          goto LABEL_11;
        }
      }
    }
  }

  if (!a5)
  {
    v29 = 0;
    v26 = 0;
    v24 = 0;
    goto LABEL_30;
  }

LABEL_11:
  LOBYTE(space[0]) = 0;
  BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
  if (LOBYTE(space[0]))
  {
    v21 = BooleanIfPresent == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = !v21;
  v23 = CMPhotoCFDictionaryGetBooleanIfPresent() != 0 && LOBYTE(space[0]) != 0;
  if (v23)
  {
    v24 = 2;
  }

  else
  {
    v24 = v22;
  }

  if (v23 && (v22 & 1) != 0)
  {
    goto LABEL_27;
  }

  Value = FigCFDictionaryGetValue();
  v26 = Value;
  if (Value)
  {
    v27 = CFGetTypeID(Value);
    if (v27 != CGColorSpaceGetTypeID())
    {
      goto LABEL_27;
    }
  }

  if (a2 == 2)
  {
    v28 = CFDictionaryGetValue(a5, @"AuxiliaryImageTonemapMetadata");
    v29 = v28;
    if (v28)
    {
      v30 = CFGetTypeID(v28);
      if (v30 != CFDictionaryGetTypeID())
      {
LABEL_27:
        v31 = 0;
        v32 = 0;
        v33 = 4294950306;
        goto LABEL_70;
      }
    }
  }

  else
  {
    v29 = 0;
  }

LABEL_30:
  if (v52)
  {
    if (a2 == 2)
    {
      v32 = CGColorSpaceCopyICCData(v26);
LABEL_38:
      if (!v26 && v32)
      {
        _encodeImageForIndex_cold_4(space);
LABEL_41:
        v31 = 0;
LABEL_93:
        v33 = LODWORD(space[0]);
        goto LABEL_70;
      }

      goto LABEL_60;
    }

    if (a2)
    {
LABEL_43:
      if (*(a1 + 288))
      {
        _encodeImageForIndex_cold_3(space);
        v31 = 0;
        v32 = 0;
        goto LABEL_93;
      }

      v32 = 0;
      goto LABEL_60;
    }

    v32 = 0;
    goto LABEL_55;
  }

  space[0] = 0;
  ColorSpaceFromPixelBuffer = CMPhotoCreateColorSpaceFromPixelBuffer(v61, space, 1, 1);
  if (ColorSpaceFromPixelBuffer)
  {
LABEL_88:
    v33 = ColorSpaceFromPixelBuffer;
    v31 = 0;
    v32 = 0;
    goto LABEL_70;
  }

  v32 = CGColorSpaceCopyICCData(space[0]);
  if (space[0])
  {
    CFRelease(space[0]);
  }

  if (!a2)
  {
    if (v32)
    {
      v35 = CFRetain(v32);
LABEL_56:
      *(a1 + 288) = v35;
      goto LABEL_60;
    }

LABEL_55:
    v35 = 0;
    goto LABEL_56;
  }

  if (a2 == 2)
  {
    goto LABEL_38;
  }

  if (!v32)
  {
    goto LABEL_43;
  }

  if (!*(a1 + 288))
  {
    _encodeImageForIndex_cold_2(space);
    goto LABEL_41;
  }

  if (!FigCFEqual())
  {
    _encodeImageForIndex_cold_1(space);
    goto LABEL_41;
  }

LABEL_60:
  v36 = CMPhotoUnifiedJPEGEncoderCreate(v14, *(a1 + 32), *(a1 + 24), *(a1 + 492), &v57);
  if (v36)
  {
    goto LABEL_87;
  }

  *space = vcvtq_u64_f64(vrndaq_f64(v53));
  v51 = vcvtq_u64_f64(vrndaq_f64(v54));
  v37 = CMPhotoUnifiedJPEGEncoderEncode(v57, a5, v61, 0, space, 0, v24, a1, &cf);
  if (v37)
  {
    v33 = v37;
    v31 = 1;
    goto LABEL_70;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v38 = cf;
      if (cf)
      {
        v38 = CFRetain(cf);
      }

      v31 = 0;
      v33 = 0;
      *(a1 + 280) = v38;
      *(a1 + 305) = 1;
      goto LABEL_70;
    }

    v42 = CVPixelBufferGetPixelFormatType(v61);
    BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(v42);
    CMPhotoGetPixelBufferCLAPAsRect(v61);
    v45 = vcvtad_u64_f64(v44);
    v47 = vcvtad_u64_f64(v46);
    ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(v42);
    v36 = _saveAuxImage(a1 + 240, cf, 1, 0, v49, a4, v59, v58, v32, v29, v55, BitDepthForPixelFormat, v45, v47, ChromaSubsamplingFromPixelFormat);
LABEL_87:
    v33 = v36;
    v31 = 0;
    goto LABEL_70;
  }

  v39 = cf;
  if (cf)
  {
    v39 = CFRetain(cf);
  }

  v31 = 0;
  v33 = 0;
  *(a1 + 264) = v39;
  *(a1 + 304) = 1;
LABEL_70:
  CMPhotoUnifiedJPEGEncoderDestroy(v57);
  if (v60)
  {
    CFRelease(v60);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v61)
  {
    CFRelease(v61);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v58)
  {
    CFRelease(v58);
  }

  if (v59)
  {
    CFRelease(v59);
  }

  if (v31)
  {
    v40 = *(a1 + 492);
    if (v40)
    {
      JPEGDeviceInterface_closeDriverConnection(v40);
      *(a1 + 492) = 0;
    }
  }

  CMPhotoSurfacePoolMarkCachesVolatile(*(a1 + 24), 0);
  return v33;
}

uint64_t _newContainer_0(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 139) = 0;
  v4 = CFGetAllocator(a1);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  *(a1 + 112) = 0;
  FigSemaphoreDestroy();
  *(a1 + 200) = 0;
  v6 = *(a1 + 192);
  if (v6)
  {
    dispatch_release(v6);
    *(a1 + 192) = 0;
  }

  *(a1 + 216) = 0;
  v7 = *(a1 + 120);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 120) = 0;
  }

  v8 = *(a1 + 168);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 168) = 0;
  }

  v9 = *(a1 + 152);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 152) = 0;
  }

  v10 = *(a1 + 160);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 160) = 0;
  }

  v11 = *(a1 + 128);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 128) = 0;
  }

  CMPhotoCompressionSessionDestroySequenceGroupReaders(*(a1 + 144));
  *(a1 + 144) = 0;
  CMPhotoHEIFFileWriterDispose(*(a1 + 88));
  *(a1 + 88) = 0;
  *(a1 + 104) = 0;
  v12 = CFGetAllocator(a1);
  v13 = CMPhotoHEIFFileWriterCreate(v12, a2, (a1 + 88));
  v14 = v13;
  if (a2 && !v13)
  {
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
    CMPhotoCFDictionaryGetBooleanIfPresent();
  }

  return v14;
}

uint64_t _addDebugMetadata_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addDebugMetadata_cold_1_0(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddMetadataToImage(v6, 0, a2, 2, a4, 0, 0, 0);
  }
}

uint64_t _addCustomMetadata(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addCustomMetadata_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddMetadataToImage(v6, 0, a2, 4, a4, 0, 0, 0);
  }
}

uint64_t _addGroup(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addGroup_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddGroup(v6, a3, a4);
  }
}

uint64_t _addGroupProperties(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addGroupProperties_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddGroupProperties(v6);
  }
}

uint64_t _addImageToGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addImageToGroup_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddImageToGroup(v6);
  }
}

uint64_t _addGroupToGroup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 104))
  {
    v9 = v4;
    v10 = v5;
    _addGroupToGroup_cold_1(&v8);
    return v8;
  }

  else
  {
    v6 = *(a1 + 88);

    return CMPhotoHEIFFileWriterAddGroupToGroup(v6, a3, a4);
  }
}

uint64_t _createPositionAndRotationFromFigExtrinsics(const __CFAllocator *a1, CFDictionaryRef theDict, CFTypeRef *a3, CFTypeRef *a4, BOOL *a5, BOOL *a6)
{
  v29 = *MEMORY[0x1E69E9840];
  cf = 0;
  v26 = 0;
  v28 = 0;
  v27 = 0;
  RotationMatrixFromQuaternionArray = 4294950306;
  if (a3 && a4)
  {
    Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E69717B0]);
    if (Value && CFArrayGetCount(Value) == 3)
    {
      v14 = 0;
      v15 = &v27;
      do
      {
        if (!FigCFArrayGetInt32AtIndex())
        {
          goto LABEL_11;
        }

        ++v14;
        v15 = (v15 + 4);
      }

      while (v14 != 3);
      v16 = v27;
      if (a5)
      {
        v17 = HIDWORD(v27);
        if (v27)
        {
          v18 = 0;
        }

        else
        {
          v18 = v28 == 0;
        }

        *a5 = v18;
      }

      else
      {
        v17 = HIDWORD(v27);
      }

      ExtrinsicsPositionArrayFromExtrinsicsValues = CMPhotoCreateExtrinsicsPositionArrayFromExtrinsicsValues(a1, v16, v17, v28, &v26);
      if (ExtrinsicsPositionArrayFromExtrinsicsValues)
      {
        RotationMatrixFromQuaternionArray = ExtrinsicsPositionArrayFromExtrinsicsValues;
        v23 = v26;
LABEL_27:
        if (v23)
        {
          CFRelease(v23);
        }

        goto LABEL_12;
      }

      v20 = CFDictionaryGetValue(theDict, *MEMORY[0x1E69717C0]);
      if (v20)
      {
        v21 = v20;
        v22 = 1;
        if (!a6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v21 = CFDictionaryGetValue(theDict, *MEMORY[0x1E69717B8]);
        v22 = 0;
        if (!a6)
        {
LABEL_21:
          RotationMatrixFromQuaternionArray = CMPhotoCreateRotationMatrixFromQuaternionArray(a1, v21, v22, &cf);
          v23 = v26;
          if (!RotationMatrixFromQuaternionArray)
          {
            *a3 = v26;
            *a4 = cf;
            return RotationMatrixFromQuaternionArray;
          }

          goto LABEL_27;
        }
      }

      *a6 = v21 == 0;
      goto LABEL_21;
    }

LABEL_11:
    RotationMatrixFromQuaternionArray = 4294950304;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return RotationMatrixFromQuaternionArray;
}

uint64_t _addGroupsForCurrentPosition(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  FigCFArrayApplyBlock();
  v5 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v5;
}

uint64_t _copyImageDescriptionToWriter(uint64_t *a1, const __CFDictionary *a2, const void *a3, int a4, uint64_t a5, int a6, const __CFDictionary *a7, uint64_t a8, const char *a9, void **a10)
{
  v123 = *MEMORY[0x1E69E9840];
  v110 = 0;
  v109 = 0;
  cf = 0;
  v108 = -1;
  v105 = 0;
  v106 = 0;
  value = 0;
  if (!a7)
  {
    Mutable = 0;
    v29 = 4294950304;
    goto LABEL_39;
  }

  Mutable = CFDictionaryCreateMutable(a1[1], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    goto LABEL_130;
  }

  if (!FigCFDictionaryGetIntIfPresent())
  {
    _copyImageDescriptionToWriter_cold_9(v111);
    goto LABEL_133;
  }

  if (!CMPhotoCFDictionaryGetInt32IfPresent())
  {
    _copyImageDescriptionToWriter_cold_8(v111);
    goto LABEL_133;
  }

  v103 = a8;
  v95 = a3;
  FigCFDictionarySetValueFromKeyInDict();
  if (CMPhotoCFDictionaryGetIntIfPresent())
  {
    LODWORD(v111[0]) = 0;
    LODWORD(v114) = 0;
    v19 = CMPhotoHEIFRotationCCWAndMirroringFromExifOrientation(1, v111, &v114);
    if (v19)
    {
      goto LABEL_129;
    }

    v19 = CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E6972218], v111[0]);
    if (v19)
    {
      goto LABEL_129;
    }

    if (v114 != -1)
    {
      v19 = CMPhotoCFDictionarySetInt(Mutable, *MEMORY[0x1E69721E0], v114);
      if (v19)
      {
        goto LABEL_129;
      }
    }
  }

  FigCFDictionarySetValueFromKeyInDict();
  if (!a4)
  {
    theArray = CFDictionaryGetValue(a2, @"ThumbnailImage");
    v21 = CFDictionaryGetValue(a2, @"Auxiliary");
    v22 = CFDictionaryGetValue(a2, @"EXIFMetadata");
    v98 = CFDictionaryGetValue(a2, @"DebugMetadata");
    v97 = CFDictionaryGetValue(a2, @"CustomMetadata");
    v19 = CMPhotoCFDictionarySetBoolean(Mutable, *MEMORY[0x1E6972210], a6);
    if (v19)
    {
      goto LABEL_129;
    }

    v96 = v22;
    v20 = a7;
    goto LABEL_16;
  }

  if (a4 == 2)
  {
    if (FigCFDictionarySetValueFromKeyInDict())
    {
      v20 = a7;
      FigCFDictionarySetValueFromKeyInDict();
      v97 = 0;
      v98 = 0;
      v96 = 0;
      v21 = 0;
      theArray = 0;
LABEL_16:
      v23 = a4 == 2;
      v24 = CFDictionaryGetValue(a2, @"XMPMetadata");
      goto LABEL_18;
    }

    _copyImageDescriptionToWriter_cold_2(v111);
LABEL_133:
    v29 = LODWORD(v111[0]);
    goto LABEL_39;
  }

  v20 = a7;
  v23 = 0;
  theArray = 0;
  v21 = 0;
  v96 = 0;
  v97 = 0;
  v98 = 0;
  v24 = 0;
LABEL_18:
  v25 = a1[4];
  v26 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v26)
  {
    goto LABEL_38;
  }

  v93 = v24;
  v94 = v21;
  v19 = v26(v25, a5, &cf, 0);
  if (v19)
  {
    goto LABEL_129;
  }

  v27 = cf;
  if (a4 == 2)
  {
    v28 = *(*(CMBaseObjectGetVTable() + 16) + 40);
    if (v28)
    {
      goto LABEL_25;
    }

LABEL_38:
    v29 = 4294954514;
    goto LABEL_39;
  }

  if (a4 != 1)
  {
    if (cf)
    {
      v30 = CFRetain(cf);
    }

    else
    {
      v30 = 0;
    }

    v106 = v30;
    goto LABEL_31;
  }

  v28 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (!v28)
  {
    goto LABEL_38;
  }

LABEL_25:
  v29 = v28(v27, 0, &v106);
  if (v29)
  {
    goto LABEL_39;
  }

LABEL_31:
  FigBaseObject = FigPictureReaderGetFigBaseObject();
  v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v32)
  {
    goto LABEL_38;
  }

  v19 = v32(FigBaseObject);
  if (v19)
  {
    goto LABEL_129;
  }

  Int32 = CMPhotoCFNumberGetInt32(0);
  v92 = CFDictionaryContainsKey(v20, Int32);
  if (((v92 != 0) & ~v23) != 0)
  {
    v29 = 4294950300;
    goto LABEL_39;
  }

  v34 = a1[1];
  v35 = FigPictureReaderGetFigBaseObject();
  v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v36 && !v36(v35, *MEMORY[0x1E69722F0], v34, &value))
  {
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69721D0], value);
  }

  v37 = v20;
  key = Int32;
  v19 = _copyFormatDescriptionFromPictureReader(a1, v106, &v110);
  if (v19)
  {
    goto LABEL_129;
  }

  if (a4)
  {
    if (a4 == 1)
    {
      CMPhotoHEIFFileWriterAddThumbnailToImage(*a1, Mutable, v95, v109, v110, &v108, v67, v68, v77, SHIDWORD(v77), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
      if (v19)
      {
        goto LABEL_129;
      }

      v19 = CMPhotoCompressionSessionCopyReaderTilesToWriter(v106, a1[1], *a1, v108);
      v69 = a5;
      if (v19)
      {
        goto LABEL_129;
      }

      if (v92)
      {
        goto LABEL_53;
      }

      CFDictionaryAddValue(v20, key, v108);
      v100 = 0;
      goto LABEL_59;
    }

    if (v92)
    {
      v71 = CFDictionaryGetValue(v20, Int32);
      v19 = CMPhotoHEIFFileWriterAddAuxiliaryReferenceToImage(*a1);
      if (!v19)
      {
        v39 = 0;
        v40 = 0;
        v108 = v71;
LABEL_54:
        v29 = 0;
        if (a10)
        {
          *a10 = v108;
        }

        if (v40)
        {
          goto LABEL_57;
        }

        goto LABEL_76;
      }

LABEL_129:
      v29 = v19;
      goto LABEL_39;
    }

    v70 = Int32;
    CMPhotoHEIFFileWriterAddAuxiliaryImageToImage(*a1, Mutable, v95, v109, v110, &v108, v67, v68, v77, SHIDWORD(v77), v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90);
    v69 = a5;
    if (v19)
    {
      goto LABEL_129;
    }
  }

  else
  {
    v70 = Int32;
    v19 = CMPhotoHEIFFileWriterAddImageToCollection(*a1, Mutable, v109, v110);
    if (v19)
    {
      goto LABEL_129;
    }

    v69 = a5;
    if (v92)
    {
LABEL_53:
      v39 = 0;
      v40 = 0;
      goto LABEL_54;
    }
  }

  CFDictionaryAddValue(v20, v70, v108);
  MutableCopy = FigCFArrayCreateMutableCopy();
  if (!MutableCopy)
  {
LABEL_130:
    v29 = 4294950305;
    goto LABEL_39;
  }

  v100 = MutableCopy;
  _copyImageDescriptionToWriter_cold_7(&v106, MutableCopy, &v108);
LABEL_59:
  v41 = 0;
  while (1)
  {
    v42 = theArray ? CFArrayGetCount(theArray) : 0;
    if (v41 >= v42)
    {
      break;
    }

    v111[0] = 0;
    LODWORD(v114) = 0;
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v41);
    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      emitter = fig_log_get_emitter();
      v44 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950306, "<<<< CMPhotoCompressionSession+HEIF >>>>", 3379, v10);
      goto LABEL_74;
    }

    v44 = _copyImageDescriptionToWriter(a1, ValueAtIndex, v108, 1, v69, 0, v37, a8, a9, v111);
    ++v41;
    if (v44)
    {
LABEL_74:
      v29 = v44;
LABEL_75:
      v39 = v100;
      goto LABEL_76;
    }
  }

  v45 = 0;
  while (1)
  {
    v46 = v94 ? CFArrayGetCount(v94) : 0;
    if (v45 >= v46)
    {
      break;
    }

    v111[0] = 0;
    LODWORD(v114) = 0;
    v47 = CFArrayGetValueAtIndex(v94, v45);
    if (!CMPhotoCFDictionaryGetIntIfPresent())
    {
      v74 = fig_log_get_emitter();
      v44 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v74, 4294950306, "<<<< CMPhotoCompressionSession+HEIF >>>>", 3404, v10);
      goto LABEL_74;
    }

    v44 = _copyImageDescriptionToWriter(a1, v47, v108, 2, v69, 0, v37, a8, a9, v111);
    ++v45;
    if (v44)
    {
      goto LABEL_74;
    }
  }

  v115 = v96;
  v116 = 0;
  v117 = v93;
  v118 = 1;
  v119 = v98;
  v120 = 2;
  v121 = v97;
  v122 = 4;
  v48 = CFDictionaryCreateMutable(a1[1], 0, 0, 0);
  if (!v48)
  {
    v29 = 4294950305;
    goto LABEL_75;
  }

  v40 = v48;
  v49 = 0;
LABEL_80:
  CFDictionaryRemoveAllValues(v40);
  v50 = 0;
  theArraya = v49;
  v51 = (&v115 + 2 * v49);
  v52 = *v51;
  if (!*v51)
  {
LABEL_103:
    Count = 0;
    goto LABEL_104;
  }

  while (1)
  {
    Count = CFArrayGetCount(v52);
LABEL_104:
    if (v50 >= Count)
    {
      v49 = (theArraya + 1);
      if (theArraya != 3)
      {
        goto LABEL_80;
      }

      v65 = FigCFDictionaryGetValue();
      v66 = FigCFDictionaryGetValue();
      if (!(v65 | v66) || (v75 = v66, Dimensions = CMVideoFormatDescriptionGetDimensions(v110), ItemPropertiesFromIntrinsicsAndExtrinsics = _createItemPropertiesFromIntrinsicsAndExtrinsics(a1[1], Dimensions, Dimensions >> 32, 1, v65, v75, &v105), !ItemPropertiesFromIntrinsicsAndExtrinsics) && (CFDictionaryGetCount(v105) < 1 || (ItemPropertiesFromIntrinsicsAndExtrinsics = CMPhotoHEIFFileWriterAddMetadataToImage(*a1, 0, v108, 3, v105, 0, 0, 0), !ItemPropertiesFromIntrinsicsAndExtrinsics)))
      {
        v39 = v100;
        goto LABEL_54;
      }

      goto LABEL_109;
    }

    v53 = CFArrayGetValueAtIndex(v52, v50);
    if (v53)
    {
      break;
    }

LABEL_101:
    ++v50;
    if (!v52)
    {
      goto LABEL_103;
    }
  }

  v54 = v53;
  v55 = CFGetTypeID(v53);
  if (v55 == CFDataGetTypeID())
  {
    Length = CFDataGetLength(v54);
  }

  else
  {
    v57 = CFGetTypeID(v54);
    if (v57 != CFDictionaryGetTypeID())
    {
      fig_log_get_emitter();
      ItemPropertiesFromIntrinsicsAndExtrinsics = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v77, v78, v79);
LABEL_109:
      v29 = ItemPropertiesFromIntrinsicsAndExtrinsics;
      goto LABEL_110;
    }

    Length = CFDictionaryGetCount(v54);
  }

  v58 = Length;
  LODWORD(v114) = 0;
  Int32IfPresent = CMPhotoCFDictionaryGetInt32IfPresent();
  v60 = CFDictionaryContainsKey(v40, v114);
  if (Int32IfPresent && !v60)
  {
    ItemPropertiesFromIntrinsicsAndExtrinsics = CMPhotoHEIFFileWriterAddMetadataReferenceToImage(*a1, v114, v108);
    if (ItemPropertiesFromIntrinsicsAndExtrinsics)
    {
      goto LABEL_109;
    }

    goto LABEL_99;
  }

  if (!v58)
  {
LABEL_99:
    if (v114)
    {
      CFDictionarySetValue(v40, v114, 0);
    }

    goto LABEL_101;
  }

  v62 = 0;
  LODWORD(v113) = 0;
  v63 = *(v51 + 2);
  if (v63)
  {
LABEL_96:
    ItemPropertiesFromIntrinsicsAndExtrinsics = CMPhotoHEIFFileWriterAddMetadataToImage(*a1, 0, v108, v63, v54, v62, 0, &v114);
    if (ItemPropertiesFromIntrinsicsAndExtrinsics)
    {
      goto LABEL_109;
    }

    if (v114)
    {
      ItemPropertiesFromIntrinsicsAndExtrinsics = CMPhotoCFDictionarySetInt32(v103, v54, v114);
      if (ItemPropertiesFromIntrinsicsAndExtrinsics)
      {
        goto LABEL_109;
      }
    }

    goto LABEL_99;
  }

  LOBYTE(v112) = 0;
  ItemPropertiesFromIntrinsicsAndExtrinsics = CMPhotoExifDetectTIFFHeaderOffset(v54, &v112, &v113);
  if (ItemPropertiesFromIntrinsicsAndExtrinsics)
  {
    goto LABEL_109;
  }

  if (v112)
  {
    v62 = v113;
    goto LABEL_96;
  }

  _copyImageDescriptionToWriter_cold_6(v111);
  v29 = LODWORD(v111[0]);
LABEL_110:
  v39 = v100;
LABEL_57:
  CFRelease(v40);
LABEL_76:
  if (v39)
  {
    CFRelease(v39);
  }

LABEL_39:
  if (v105)
  {
    CFRelease(v105);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (value)
  {
    CFRelease(value);
  }

  return v29;
}

uint64_t _addGroupDescriptionToWriter(uint64_t *a1, uint64_t a2, const void *a3, CFDictionaryRef *a4)
{
  theDict = 0;
  v8 = CMPhotoPropertyListCopyWithMutableContainers(a1[1], a3, &theDict);
  if (v8)
  {
    goto LABEL_22;
  }

  Value = CFDictionaryGetValue(theDict, @"ImageList");
  if (!Value || (v10 = Value, v11 = CFGetTypeID(Value), v11 != CFArrayGetTypeID()))
  {
    _addGroupDescriptionToWriter_cold_5(&key);
LABEL_27:
    v21 = key;
    goto LABEL_23;
  }

  Count = CFArrayGetCount(v10);
  if (Count <= 0)
  {
    _addGroupDescriptionToWriter_cold_4(&key);
    goto LABEL_27;
  }

  v13 = Count;
  v8 = CMPhotoCFDictionarySetSize(theDict, @"GroupHandle", a2);
  if (v8)
  {
LABEL_22:
    v21 = v8;
    goto LABEL_23;
  }

  v26 = 0;
  if (!CMPhotoCFDictionaryGetSizeIfPresent(a3, @"GroupID", &v26))
  {
    v21 = 4294950304;
LABEL_23:
    if (theDict)
    {
      CFRelease(theDict);
    }

    return v21;
  }

  CFDictionaryRemoveValue(theDict, @"GroupID");
  for (i = 0; i != v13; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
    if (!ValueAtIndex || (v16 = ValueAtIndex, v17 = CFGetTypeID(ValueAtIndex), v17 != CFDictionaryGetTypeID()))
    {
      _addGroupDescriptionToWriter_cold_3(&key);
      goto LABEL_27;
    }

    key = 0;
    if (!CMPhotoCFDictionaryGetLongIfPresent())
    {
      v24 = 0;
      if (CMPhotoCFDictionaryGetLongIfPresent())
      {
        if (CFDictionaryContainsKey(a1[9], v24))
        {
          v18 = CFDictionaryGetValue(a1[9], v24);
          v8 = CMPhotoHEIFFileWriterAddGroupToGroup(*a1, v18, v26);
          if (v8)
          {
            goto LABEL_22;
          }

          v19 = v16;
          v20 = @"GroupHandle";
          goto LABEL_18;
        }

        v23 = 4098;
      }

      else
      {
        v23 = 4094;
      }

      _addGroupDescriptionToWriter_cold_2(v23, &v28);
      v21 = v28;
      goto LABEL_23;
    }

    if (!CFDictionaryContainsKey(a1[8], key))
    {
      _addGroupDescriptionToWriter_cold_1(&v24);
      v21 = v24;
      goto LABEL_23;
    }

    v18 = CFDictionaryGetValue(a1[8], key);
    v8 = CMPhotoHEIFFileWriterAddImageToGroup(*a1);
    if (v8)
    {
      goto LABEL_22;
    }

    v19 = v16;
    v20 = @"ImageHandle";
LABEL_18:
    v8 = CMPhotoCFDictionarySetSize(v19, v20, v18);
    if (v8)
    {
      goto LABEL_22;
    }
  }

  v21 = 0;
  if (!a4)
  {
    goto LABEL_23;
  }

  *a4 = theDict;
  return v21;
}

uint64_t _checkOrientationForImages(CFArrayRef theArray, int a2, int a3, BOOL *a4, BOOL *a5, _DWORD *a6)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    else
    {
      Count = 0;
    }

    if (v14 >= Count)
    {
      break;
    }

    if (!CFArrayGetValueAtIndex(theArray, v14))
    {
      _checkOrientationForImages_cold_1(&v18);
      return v18;
    }

    IntIfPresent = CMPhotoCFDictionaryGetIntIfPresent();
    v13 = IntIfPresent != a3;
    v12 = a2 != -1;
    if (a2 != -1)
    {
      break;
    }

    ++v14;
  }

  while (IntIfPresent == a3);
  if (a6)
  {
    *a6 = -1;
  }

  if (a4)
  {
    *a4 = v12;
  }

  result = 0;
  if (a5)
  {
    *a5 = v13;
  }

  return result;
}

uint64_t _removeOrientation(CFArrayRef theArray)
{
  v2 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v2 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2);
    if (!ValueAtIndex)
    {
      break;
    }

    CFDictionaryRemoveValue(ValueAtIndex, @"Orientation");
    ++v2;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  _removeOrientation_cold_1(&v6);
  return v6;
}

uint64_t _updateOrientation(CFArrayRef theArray, int a2)
{
  v4 = 0;
  if (!theArray)
  {
    goto LABEL_3;
  }

LABEL_2:
  for (i = CFArrayGetCount(theArray); ; i = 0)
  {
    if (v4 >= i)
    {
      return 0;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v4);
    if (!ValueAtIndex)
    {
      break;
    }

    CMPhotoCFDictionarySetInt(ValueAtIndex, @"Orientation", a2);
    ++v4;
    if (theArray)
    {
      goto LABEL_2;
    }

LABEL_3:
    ;
  }

  _updateOrientation_cold_1(&v8);
  return v8;
}

void ___propagateMetadataChange_block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v14[9] = v1;
    v14[10] = v2;
    if (CMPhotoCFDictionaryGetInt32IfPresent())
    {
      if (*(a1 + 72) == -1)
      {
        return;
      }

      v4 = *(a1 + 40);
      v5 = *(a1 + 48);
      v6 = *(a1 + 56);
      v7 = *(a1 + 64);
      v8 = *MEMORY[0x1E695E738];
      v14[0] = *MEMORY[0x1E695E738];
      hasMetadataChangedForImageHandle = _hasMetadataChangedForImageHandle(v4, v5, 0xFFFFFFFFLL, v6, v14);
      if (!hasMetadataChangedForImageHandle)
      {
        if (v14[0] == v8)
        {
          theDict = 0;
          ImageWithHandleFromDescriptionList = _getImageWithHandleFromDescriptionList(v5, -1, &theDict);
          if (!ImageWithHandleFromDescriptionList)
          {
            if (v7)
            {
              CFDictionarySetValue(theDict, v6, v7);
            }

            else
            {
              CFDictionaryRemoveValue(theDict, v6);
            }
          }
        }

        else
        {
          ImageWithHandleFromDescriptionList = 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      fig_log_get_emitter();
      hasMetadataChangedForImageHandle = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, theDict);
    }

    ImageWithHandleFromDescriptionList = hasMetadataChangedForImageHandle;
LABEL_9:
    *(*(*(a1 + 32) + 8) + 24) = ImageWithHandleFromDescriptionList;
  }
}

uint64_t _compressImageInternal(uint64_t a1, CFDictionaryRef theDict, opaqueCMSampleBuffer *a3, int a4, uint64_t *a5, uint64_t a6)
{
  if (*(a1 + 104))
  {
    _compressImageInternal_cold_1(block);
    return LODWORD(block[0]);
  }

  if (!theDict)
  {
    goto LABEL_22;
  }

  v12 = CFDictionaryContainsKey(theDict, @"IncludeThumbnailWithOptions");
  if (CFDictionaryContainsKey(theDict, @"IncludeAlphaAuxiliaryImageWithOptions"))
  {
    _compressImageInternal_cold_2(block);
    return LODWORD(block[0]);
  }

  if (v12)
  {
    v13 = MEMORY[0x1E695FF58];
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v20 = 0;
    v21 = &v20;
    v22 = 0x2000000000;
    v23 = 0;
    *(a1 + 224) = FigSemaphoreCreate();
    *(a1 + 232) = -1;
    v14 = dispatch_queue_create("com.apple.coremedia.asyncthumb", 0);
    v15 = v14;
    if (v14)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___compressMainWithThumbAsync_block_invoke;
      block[3] = &unk_1E77A3BF8;
      block[6] = theDict;
      block[7] = a1 + 88;
      block[8] = a3;
      block[9] = a1;
      v19 = a4;
      block[4] = a6;
      block[5] = &v20;
      dispatch_async(v14, block);
      v16 = _compressMainImage(a1, theDict, a3, a4, a5, a6);
    }

    else
    {
      v16 = 4294950194;
    }

    if (*v13 == 1)
    {
      kdebug_trace();
    }

    dispatch_sync(v15, &__block_literal_global_16);
    FigSemaphoreDestroy();
    if (*v13 == 1)
    {
      kdebug_trace();
    }

    if (v15)
    {
      dispatch_release(v15);
    }

    if (!v16)
    {
      if (*(v21 + 6))
      {
        v16 = 4294950187;
      }

      else
      {
        v16 = 0;
      }
    }

    _Block_object_dispose(&v20, 8);
    if (*v13 == 1)
    {
      kdebug_trace();
    }

    return v16;
  }

LABEL_22:

  return _compressMainImage(a1, theDict, a3, a4, a5, a6);
}

void ___compressMainWithThumbAsync_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 48), @"IncludeThumbnailWithOptions");
  if (CFDictionaryGetCount(Value) <= 0)
  {
    ___compressMainWithThumbAsync_block_invoke_cold_5(a1);
    return;
  }

  v3 = CFDictionaryGetValue(Value, @"DryRun");
  if (CFDictionaryContainsKey(Value, @"IncludeThumbnailWithOptions"))
  {
    ___compressMainWithThumbAsync_block_invoke_cold_1(a1);
    return;
  }

  if (Value)
  {
    Value = CFDictionaryCreateMutableCopy(*(*(a1 + 56) + 8), 0, Value);
    if (!Value)
    {
      *(*(*(a1 + 40) + 8) + 24) = -16991;
      return;
    }
  }

  v4 = *(a1 + 64);
  if ((v3 == 0) == (v4 != 0))
  {
    if (!v3)
    {
      v6 = *(a1 + 72);
      if (!*(v6 + 16) && *(v6 + 72))
      {
LABEL_12:
        x_low = 0;
        v8 = *(a1 + 80);
        v9 = *(a1 + 32);
        v45 = 0;
        v46[0] = 0;
        v44 = 0;
        v43 = 320;
        v42 = 0;
        EvenScalingModeDefault = 1;
        v10 = MEMORY[0x1E695FF58];
        if (!v3)
        {
          PixelBufferFromImage = CMPhotoCreatePixelBufferFromImage(*(v6 + 96), v4, &v45);
          if (PixelBufferFromImage)
          {
            goto LABEL_68;
          }

          v39.f64[0] = CMPhotoGetPixelBufferCLAPAsRect(v45);
          v39.f64[1] = v12;
          v40.f64[0] = v13;
          v40.f64[1] = v14;
          PixelFormatType = CVPixelBufferGetPixelFormatType(v45);
          if (Value)
          {
            v16 = PixelFormatType;
            v36 = v8;
            v37 = v9;
            Int32IfPresent = CMPhotoCFDictionaryGetInt32IfPresent();
            SizeIfPresent = CMPhotoCFDictionaryGetSizeIfPresent(Value, @"MaxPixelSize", &v43);
            CMPhotoCFDictionaryGetBooleanIfPresent();
            EvenScalingModeDefault = CMPhotoGetEvenScalingModeDefault(1, EvenScalingModeDefault);
            BooleanIfPresent = CMPhotoCFDictionaryGetBooleanIfPresent();
            if (v43)
            {
              CMPhotoCFDictionaryGetBooleanIfPresent();
            }

            if (SizeIfPresent == BooleanIfPresent)
            {
              ___compressMainWithThumbAsync_block_invoke_cold_3(&rect);
              x_low = LODWORD(rect.origin.x);
              goto LABEL_57;
            }

            v20 = CFDictionaryGetValue(Value, @"SourceCropRect");
            if (!v20 || (memset(&rect, 0, sizeof(rect)), !CGRectMakeWithDictionaryRepresentation(v20, &rect)) || (v21.f64[0] = rect.origin.x, (v22 = CMPhotoApplyCropRectToRect(&v39, v21, rect.origin.y, rect.size.width, rect.size.height)) == 0))
            {
              if (!BooleanIfPresent || !v42 || (PixelBufferFromImage = CMPhotoDetermineMIAFCompliantThumbnailMaxPixelSize(&v43, v40.f64[0], v40.f64[1])) == 0)
              {
                if (Int32IfPresent)
                {
                  v23 = HIDWORD(v44);
                }

                else
                {
                  v23 = 1752589105;
                  HIDWORD(v44) = 1752589105;
                }

                v8 = v36;
                DestinationPixelFormatFromOptions = CMPhotoGetDestinationPixelFormatFromOptions(Value, v23, v16, &v44);
                if (!DestinationPixelFormatFromOptions)
                {
                  v25 = v43;
                  if (!v43)
                  {
LABEL_38:
                    x_low = 0;
LABEL_39:
                    v9 = v37;
                    goto LABEL_52;
                  }

                  v26 = HIBYTE(v42);
                  Width = CVPixelBufferGetWidth(v45);
                  Height = CVPixelBufferGetHeight(v45);
                  if (v26)
                  {
                    if (Width > Height)
                    {
                      v29 = CVPixelBufferGetWidth(v45);
                    }

                    else
                    {
                      v29 = CVPixelBufferGetHeight(v45);
                    }

                    if (v25 == v29)
                    {
                      goto LABEL_38;
                    }
                  }

                  else
                  {
                    if (Width > Height)
                    {
                      v30 = CVPixelBufferGetWidth(v45);
                    }

                    else
                    {
                      v30 = CVPixelBufferGetHeight(v45);
                    }

                    if (v25 >= v30)
                    {
                      goto LABEL_38;
                    }
                  }

                  if (*v10 == 1)
                  {
                    kdebug_trace();
                  }

                  rect.origin.x = 0.0;
                  rect.origin.y = 0.0;
                  v31 = vcvtq_u64_f64(vrndaq_f64(v40));
                  CMPhotoPixelBufferConstrainSizeToMaxSideLength(v31.u64[0], v31.u64[1], v43, 0, 0, HIBYTE(v42), EvenScalingModeDefault, &rect, 0, 0);
                  if (CMPhotoPixelFormatIsCompressed(v44))
                  {
                    v32 = 2;
                  }

                  else
                  {
                    v32 = 16;
                  }

                  DestinationPixelFormatFromOptions = CMPhotoCompressionSessionCreatePaddedPixelBufferAndClearPadding(*(v6 + 24), v44, *&rect.origin.x, *&rect.origin.y, v32, v32, 0, v46);
                  if (!DestinationPixelFormatFromOptions)
                  {
                    DestinationPixelFormatFromOptions = CMPhotoScaleAndRotateSessionTransformForSize(*(v6 + 32), v45, 1, 1, v44, 0, 0, 1, v39.f64[0], v39.f64[1], v40.f64[0], v40.f64[1], *&rect.origin.x, *&rect.origin.y, 64, 1u, v46);
                    if (!DestinationPixelFormatFromOptions)
                    {
                      CFDictionarySetValue(Value, @"UsePixelsOutsideCrop", *MEMORY[0x1E695E4D0]);
                      CFDictionaryRemoveValue(Value, @"SourceCropRect");
                      CVPixelBufferRelease(v45);
                      v45 = v46[0];
                      v46[0] = 0;
                      if (*v10 == 1)
                      {
                        kdebug_trace();
                      }

                      x_low = 0;
                      v9 = v37;
                      goto LABEL_52;
                    }
                  }
                }

                x_low = DestinationPixelFormatFromOptions;
                goto LABEL_39;
              }

LABEL_68:
              x_low = PixelBufferFromImage;
LABEL_57:
              if (v46[0])
              {
                CFRelease(v46[0]);
              }

              if (v45)
              {
                CFRelease(v45);
              }

              goto LABEL_61;
            }

            x_low = v22;
            v9 = v37;
            v8 = v36;
          }

          else
          {
            x_low = 0;
          }
        }

LABEL_52:
        if (*v10 == 1)
        {
          kdebug_trace();
        }

        FigSemaphoreWaitRelative();
        if (*v10 == 1)
        {
          kdebug_trace();
        }

        v33 = *(v6 + 232);
        if (v33 < 0)
        {
          goto LABEL_57;
        }

        if (v8)
        {
          v34 = 1;
          v35 = v9;
        }

        else
        {
          v34 = 0;
          v35 = 0;
        }

        PixelBufferFromImage = _compressThumbnailInternal_0(v6, v33, Value, v45, v34, v35);
        goto LABEL_68;
      }

      goto LABEL_72;
    }

    v5 = CFGetTypeID(v3);
    if (v5 == CMFormatDescriptionGetTypeID())
    {
      v6 = *(a1 + 72);
      if (!*(v6 + 16))
      {
        v4 = *(a1 + 64);
        goto LABEL_12;
      }

LABEL_72:
      x_low = -17101;
      goto LABEL_61;
    }

    ___compressMainWithThumbAsync_block_invoke_cold_2(&v39);
  }

  else
  {
    ___compressMainWithThumbAsync_block_invoke_cold_4(&v39);
  }

  x_low = LODWORD(v39.f64[0]);
LABEL_61:
  *(*(*(a1 + 40) + 8) + 24) = x_low;
  if (Value)
  {
    CFRelease(Value);
  }
}

uint64_t _createPlugin(const void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v25 = 0;
  v14 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = a2[3];
  v16 = a2[4];
  v17 = a2[5];
  v18 = *(a5 + 48);
  v23[2] = *(a5 + 32);
  v23[3] = v18;
  v23[4] = *(a5 + 64);
  v24 = *(a5 + 80);
  v19 = *(a5 + 16);
  v23[0] = *a5;
  v23[1] = v19;
  v20 = CMPhotoCompressionPluginCreate(a1, v15, v16, v17, v23, a4, _compressionPluginTileEncodeCallback, a6, &v25);
  if (v20)
  {
    goto LABEL_13;
  }

  if (*v14 == 1)
  {
    kdebug_trace();
    if (*v14 == 1)
    {
      kdebug_trace();
    }
  }

  v20 = CMPhotoCompressionPluginPrepare(v25);
  if (v20)
  {
LABEL_13:
    v21 = v20;
    CMPhotoCompressionPluginDispose(v25);
  }

  else
  {
    if (*v14 == 1)
    {
      kdebug_trace();
    }

    v21 = 0;
    if (a8)
    {
      *a8 = v25;
    }
  }

  return v21;
}

BOOL _allowHEIFAsynchronousCompleteEncodeTilesOverride(uint64_t a1, uint64_t a2)
{
  if (_allowHEIFAsynchronousCompleteEncodeTilesOverride_onceToken != -1)
  {
    _allowHEIFAsynchronousCompleteEncodeTilesOverride_cold_1();
  }

  return (_allowHEIFAsynchronousCompleteEncodeTilesOverride_allowAsynchronousComplete & 1) == 0;
}

uint64_t ___encodePixelBufferForIndex_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = *(a1 + 64);
  v3 = *(a1 + 72);
  v5 = *(a1 + 80);
  v6 = *(a1 + 176);
  v7 = *(a1 + 184);
  v8 = *(*(a1 + 48) + 8);
  memcpy(__dst, (*(*(a1 + 40) + 8) + 24), 0x168uLL);
  v9 = *(a1 + 136);
  v27[2] = *(a1 + 120);
  v27[3] = v9;
  v27[4] = *(a1 + 152);
  v28 = *(a1 + 168);
  v10 = *(a1 + 104);
  v27[0] = *(a1 + 88);
  v27[1] = v10;
  result = _createPlugin(v3, v4, __dst, v5, v27, v6, v7, (v8 + 24));
  if (result)
  {
    goto LABEL_9;
  }

  if (*v2 == 1)
  {
    kdebug_trace();
  }

  v25 = *(*(*(a1 + 48) + 8) + 24);
  v26 = *(a1 + 64);
  v12 = *(a1 + 32);
  v23 = *(a1 + 248);
  v24 = *(a1 + 252);
  v13 = *(a1 + 216);
  v22 = *(a1 + 224);
  v14 = *(a1 + 260);
  v15 = *(*(*(a1 + 56) + 8) + 24);
  v16 = *(a1 + 256);
  v17 = *(a1 + 232);
  v19 = *(a1 + 176);
  v18 = *(a1 + 184);
  v20 = *(a1 + 80);
  memcpy(__dst, (*(*(a1 + 40) + 8) + 24), 0x168uLL);
  result = _encodeTiles(v26, v25, v23, v13, __dst, v24, v22, v14, *(a1 + 192), *(a1 + 200), v15, v19, v16, 1u, v17, v18, v20, v12);
  v21 = result;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    result = kdebug_trace();
  }

  if (v21)
  {
LABEL_9:
    *(*(a1 + 240) + 16) = 1;
  }

  return result;
}

uint64_t _encodeTiles(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __CVBuffer *a11, uint64_t **a12, int a13, unsigned __int8 a14, uint64_t a15, const void *a16, const void *a17, uint64_t a18)
{
  v18 = a8;
  v19 = a5;
  v21 = a2;
  v22 = a1;
  v24 = a11;
  v23 = a12;
  v108 = 0;
  v76 = a1 + 11;
  if (*(a5 + 48))
  {
    v25 = *(a5 + 104) * *(a5 + 136);
    v27 = *(a5 + 176);
    v26 = (a5 + 176);
    v28 = *(a5 + 112) * *(a5 + 144);
    v29 = vcvtq_u64_f64(vrndaq_f64(*(a5 + 192)));
    v112 = vcvtq_u64_f64(vrndaq_f64(v27));
    v113 = v29;
    v109 = vcvtq_u64_f64(v27);
    v110 = v25;
    v111 = v28;
    v30 = CMPhotoCompressionPluginPixelTransfer(a2, a11, &v109, &v112, &v108, (a1 + 11), a7, a8);
    if (v30)
    {
      v56 = v30;
      v83 = 0;
LABEL_82:
      v40 = 1;
      if (!a14)
      {
        goto LABEL_83;
      }

LABEL_76:
      if (v22[25])
      {
        FigSemaphoreSignal();
        if ((v40 & 1) == 0)
        {
          goto LABEL_68;
        }

LABEL_84:
        _freeVariablesUsedAcrossAsyncEncodingMethods(v22, v21, v24, v23, v83, a3, a16, a17, a15);
        goto LABEL_68;
      }

LABEL_83:
      if (!v40)
      {
        goto LABEL_68;
      }

      goto LABEL_84;
    }

    if (v108)
    {
      v19 = a5;
      if (a11)
      {
        CFRelease(a11);
      }

      v24 = v108;
      v108 = 0;
      *(a5 + 88) = 0;
      *(a5 + 96) = 0;
      *v26 = *MEMORY[0x1E695EFF8];
    }

    else
    {
      v19 = a5;
    }
  }

  *a12 = v22;
  a12[1] = a4;
  *(a12 + 44) = *(v19 + 81);
  *(a12 + 45) = v18;
  *(a12 + 12) = 0;
  *(a12 + 16) = 0;
  *(a12 + 18) = *(v19 + 4);
  a12[8] = *(v19 + 336);
  v83 = malloc_type_calloc(*(v19 + 144) * *(v19 + 136), 0x40uLL, 0x1020040330035C4uLL);
  if (!v83)
  {
    v83 = 0;
    v56 = 4294950305;
    goto LABEL_82;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }
  }

  v80 = a3;
  v82 = v21;
  v84 = v22;
  v94 = v24;
  if (!*(v19 + 82))
  {
    v85 = *(v19 + 192);
    v88 = *(v19 + 176);
    v44 = *(v19 + 96);
    v75 = *(v19 + 88);
    v46 = *(v19 + 104);
    v45 = *(v19 + 112);
    v47 = *(v19 + 144);
    v93 = *(v19 + 136);
    v48 = *(v19 + 328);
    v49 = *(v19 + 344);
    v50 = *(v19 + 352);
    v117 = 0;
    v118[0] = 0;
    v116 = 0;
    v114 = 0;
    v115 = 0;
    v91 = v48;
    if (v48)
    {
      v51 = CMPhotoCompressionPluginCopyReconstructionPixelBufferAttributes(v21);
      if (v51)
      {
        v56 = v51;
        goto LABEL_59;
      }

      CMPhotoCFDictionaryGetCFValueIfPresent();
      FigCFArrayGetInt32AtIndex();
      CMPhotoCFDictionaryGetSizeIfPresent(v118[0], *MEMORY[0x1E6966208], &v115);
      CMPhotoCFDictionaryGetSizeIfPresent(v118[0], *MEMORY[0x1E69660B8], &v114);
    }

    v52 = MEMORY[0x1E695E480];
    if (v49)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (Mutable)
      {
        v54 = Mutable;
        v55 = CMPhotoCFDictionarySetSize(Mutable, @"BitDepth", v49);
        if (v55)
        {
          goto LABEL_85;
        }

        if (!v50)
        {
LABEL_37:
          if (v47)
          {
LABEL_38:
            v74 = v47;
            v57 = v21;
            v58 = 0;
            v59 = 0;
            v86 = vcvtq_u64_f64(vrndaq_f64(v85));
            v89 = vcvtq_u64_f64(vrndaq_f64(v88));
            allocator = *v52;
            v72 = v44;
            while (!v93)
            {
LABEL_49:
              if (++v58 == v74)
              {
                goto LABEL_57;
              }
            }

            v60 = 0;
            v61 = v44 + v58 * v45;
            v73 = v59;
            v62 = v83 + 64 * v59;
            v63 = v75;
            while (1)
            {
              *(v62 + 32) = 0;
              *v62 = v60;
              *(v62 + 8) = v58;
              *(v62 + 16) = v46;
              *(v62 + 24) = v45;
              if (v91)
              {
                PixelBufferWithAttributes = CMPhotoSurfacePoolCreatePixelBufferWithAttributes(v84[3], v116, v115, v114, v118[0], (v62 + 56));
                if (PixelBufferWithAttributes)
                {
                  break;
                }

                if (!v54)
                {
                  v54 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  if (!v54)
                  {
                    goto LABEL_79;
                  }
                }

                FigCFDictionarySetValue();
              }

              v112 = v89;
              v113 = v86;
              v109.i64[0] = v63;
              v109.i64[1] = v61;
              v110 = v46;
              v111 = v45;
              PixelBufferWithAttributes = CMPhotoCompressionPluginEncode(v57, v94, a4, &v112, &v109, 0, v54, v62);
              if (PixelBufferWithAttributes)
              {
                break;
              }

              ++v60;
              v62 += 64;
              v63 += v46;
              if (v93 == v60)
              {
                v44 = v72;
                v59 = v73 + v60;
                goto LABEL_49;
              }
            }

            v56 = PixelBufferWithAttributes;
            if (!v54)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

LABEL_57:
          v56 = 0;
          if (!v54)
          {
            goto LABEL_59;
          }

          goto LABEL_58;
        }

LABEL_36:
        v55 = CMPhotoCFDictionarySetInt32(v54, @"Subsampling", v50);
        if (!v55)
        {
          goto LABEL_37;
        }

LABEL_85:
        v56 = v55;
LABEL_58:
        CFRelease(v54);
        goto LABEL_59;
      }
    }

    else
    {
      if (!v50)
      {
        v54 = 0;
        if (v47)
        {
          goto LABEL_38;
        }

        goto LABEL_57;
      }

      v54 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v54)
      {
        goto LABEL_36;
      }
    }

LABEL_79:
    v56 = 4294950305;
LABEL_59:
    if (v118[0])
    {
      CFRelease(v118[0]);
    }

    goto LABEL_61;
  }

  if (*(v19 + 4) == 1936484717)
  {
    v31 = *(v19 + 144);
    if (v31)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v90 = vcvtq_u64_f64(vrndaq_f64(*(a5 + 192)));
      v92 = vcvtq_u64_f64(vrndaq_f64(*(a5 + 176)));
      v35 = *(a5 + 96);
      v87 = *(a5 + 88);
      v36 = *(a5 + 104);
      v37 = *(a5 + 112);
      v38 = *(a5 + 128);
      while (1)
      {
        v39 = v83 + v33;
        v40 = 1;
        *(v83 + v33 + 32) = 1;
        v41 = v38 && v31 == 1;
        v42 = v41 ? v38 : v37;
        *v39 = 0;
        *(v39 + 8) = v34;
        *(v39 + 16) = v36;
        *(v39 + 24) = v42;
        *(v39 + 34) = v34;
        *(v39 + 40) = 0;
        *(v39 + 48) = v32;
        v112 = v92;
        v113 = v90;
        v109.i64[0] = v87;
        v109.i64[1] = v35 + v32;
        v110 = v36;
        v111 = v42;
        v43 = CMPhotoCompressionPluginEncode(v82, v94, a4, &v112, &v109, 0, 0, v39);
        if (v43)
        {
          break;
        }

        ++v34;
        v33 += 64;
        v32 += v37;
        if (!--v31)
        {
          goto LABEL_62;
        }
      }

      v56 = v43;
LABEL_54:
      LODWORD(a3) = v80;
      v23 = a12;
      v21 = v82;
      v22 = v84;
      v24 = v94;
      if (!a14)
      {
        goto LABEL_83;
      }

      goto LABEL_76;
    }

    goto LABEL_62;
  }

  fig_log_get_emitter();
  v56 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v69, v70, v71);
LABEL_61:
  if (v56)
  {
    v40 = 1;
    goto LABEL_54;
  }

LABEL_62:
  v65 = MEMORY[0x1E695FF58];
  LODWORD(a3) = v80;
  v23 = a12;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v22 = v84;
  v66 = *v65;
  v21 = v82;
  v24 = v94;
  if (!v84[25])
  {
    if (v66 == 1)
    {
      kdebug_trace();
    }

    v56 = _waitForTileEncodingToComplete(v84, v82, v94, v83, v80, a4, a12, a14, a15, a16, a17, a18);
    if (*MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    v40 = 0;
    if (!a14)
    {
      goto LABEL_83;
    }

    goto LABEL_76;
  }

  if (v66 == 1)
  {
    kdebug_trace();
  }

  v67 = v84[24];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___encodeTiles_block_invoke;
  block[3] = &unk_1E77A3CA8;
  block[5] = v84;
  block[6] = v76;
  v104 = v80;
  block[7] = a9;
  block[8] = a10;
  block[9] = v82;
  block[10] = v94;
  block[11] = v83;
  memcpy(v97, a5, sizeof(v97));
  v105 = a6;
  v106 = a13;
  v99 = a12;
  v100 = a7;
  v107 = a14;
  v101 = a15;
  v102 = a16;
  v103 = a17;
  v98 = a4;
  block[4] = a18;
  dispatch_async(v67, block);
  v56 = 0;
LABEL_68:
  if (v108)
  {
    CFRelease(v108);
  }

  return v56;
}

uint64_t _freeVariablesUsedAcrossAsyncEncodingMethods(uint64_t a1, CFTypeRef *a2, const void *a3, void *a4, void *a5, unsigned int a6, const void *a7, const void *a8, uint64_t a9)
{
  CMPhotoCompressionPluginDispose(a2);
  if (a3)
  {
    CFRelease(a3);
  }

  if (a4)
  {
    free(a4);
  }

  if (a5)
  {
    free(a5);
  }

  if (a7)
  {
    CFRelease(a7);
  }

  if (a8)
  {
    CFRelease(a8);
  }

  result = CMPhotoSurfacePoolMarkCachesVolatile(*(a1 + 24), 0);
  if (*MEMORY[0x1E695FF58] == 1)
  {

    return kdebug_trace();
  }

  return result;
}

void _compressionPluginTileEncodeCallback(uint64_t a1, int a2, opaqueCMSampleBuffer *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    v18 = a2;
    v12 = 0;
    DictionaryRepresentation = 0;
    Mutable = 0;
    goto LABEL_30;
  }

  v8 = *a4;
  if (!*(a4 + 44))
  {
    v12 = 0;
    DictionaryRepresentation = 0;
    Mutable = 0;
    goto LABEL_11;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v12 = 0;
    goto LABEL_27;
  }

  if (!*(a5 + 32))
  {
    v21.x = *a5;
    v21.y = *(a5 + 8);
    DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v21);
    if (DictionaryRepresentation)
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E6972228], DictionaryRepresentation);
      v12 = 0;
      goto LABEL_11;
    }

    v12 = 0;
LABEL_28:
    v18 = -16991;
    goto LABEL_30;
  }

  v10 = cmpweak_kFigPictureCollectionWriterOption_OverlayItemIndex();
  v11 = CMPhotoCFDictionarySetInt16(Mutable, v10, *(a5 + 34));
  if (v11)
  {
    v18 = v11;
    v12 = 0;
    DictionaryRepresentation = 0;
    goto LABEL_30;
  }

  v20.x = *(a5 + 40);
  v20.y = *(a5 + 48);
  v12 = CGPointCreateDictionaryRepresentation(v20);
  if (!v12)
  {
LABEL_27:
    DictionaryRepresentation = 0;
    goto LABEL_28;
  }

  v13 = cmpweak_kFigPictureCollectionWriterOption_OverlayItemOffset();
  CFDictionarySetValue(Mutable, v13, v12);
  DictionaryRepresentation = 0;
LABEL_11:
  v15 = CMPhotoHEIFFileWriterAddSampleBufferToImage(*(v8 + 88), Mutable, a4[1], a3);
  if (!v15)
  {
    if (!*(a5 + 56))
    {
      goto LABEL_17;
    }

    v16 = a4[8];
    if (!v16)
    {
      goto LABEL_17;
    }

    v15 = (*(v16 + 16))();
    if (!v15)
    {
      v17 = *(a5 + 56);
      if (v17)
      {
        CFRelease(v17);
        *(a5 + 56) = 0;
      }

LABEL_17:
      if (!Mutable)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  v18 = v15;
LABEL_30:
  *(a4 + 12) = v18;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (Mutable)
  {
LABEL_18:
    CFRelease(Mutable);
  }

LABEL_19:
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v12)
  {
    CFRelease(v12);
  }
}

uint64_t ___encodeTiles_block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (*(*(a1 + 48) + 112))
  {
    FigSemaphoreSignal();
  }

  if (*v2 == 1)
  {
    kdebug_trace();
  }

  result = _waitForTileEncodingToComplete(*(a1 + 40), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 504), *(a1 + 456), *(a1 + 464), *(a1 + 516), *(a1 + 480), *(a1 + 488), *(a1 + 496), *(a1 + 32));
  v4 = result;
  if (*v2 == 1)
  {
    result = kdebug_trace();
  }

  if (v4)
  {
    *(*(a1 + 48) + 16) = 1;
  }

  return result;
}

uint64_t _addCompressedX(uint64_t a1, const __CFDictionary *a2, CFTypeRef cf, int a4, uint64_t a5, int a6, const void *a7, const CGImageMetadata *a8, uint64_t a9, void *a10)
{
  metadata = a8;
  v116 = *MEMORY[0x1E69E9840];
  if (*(a1 + 104))
  {
    _addCompressedX_cold_1(&v105);
    return LODWORD(v105.f64[0]);
  }

  if (!cf || (v15 = CFGetTypeID(cf), v15 != CFDataGetTypeID()))
  {
    _addCompressedX_cold_6(&v105);
    return LODWORD(v105.f64[0]);
  }

  v16 = CFGetAllocator(a1);
  v109 = -1;
  v110 = 0;
  formatDescriptionOut = 0;
  v108 = 0;
  v105 = 0u;
  v106 = 0u;
  v104 = 0;
  v102 = 0;
  codecType = 1752589105;
  v103 = 1;
  HIDWORD(v83) = a6;
  v94 = a5;
  if (a2)
  {
    if (CMPhotoCFDictionaryGetInt32IfPresent())
    {
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetBooleanIfPresent();
      CMPhotoCFDictionaryGetCFValueIfPresent();
      v17 = CFDictionaryGetValue(a2, @"TiledGrid");
      if (!v17)
      {
        v91 = 1;
        v97 = 1;
        v26 = 1;
LABEL_19:
        v27 = CFDictionaryGetValue(a2, @"SourceCropRect");
        CMPhotoCFDictionaryGetIntIfPresent();
        goto LABEL_20;
      }

      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFDictionaryGetTypeID())
      {
        size.origin.x = 0.0;
        size.origin.y = 0.0;
        v20 = CGSizeMakeWithDictionaryRepresentation(v18, &size);
        v21 = vcvtq_u64_f64(vrndaq_f64(size.origin));
        if (v20)
        {
          v22 = -1;
        }

        else
        {
          v22 = 0;
        }

        v23 = vdupq_n_s64(v22);
        v24 = vsubq_s64(vandq_s8(v21, v23), vmvnq_s8(v23));
        v91 = v24.i64[1];
        v97 = v24.i64[0];
        v25 = v24.i64[0] >= 2uLL || v24.i64[1] >= 2uLL;
        v26 = !v25;
        goto LABEL_19;
      }

      _addCompressedX_cold_5(&size);
    }

    else
    {
      _addCompressedX_cold_3(&size);
    }

    DictionaryRepresentation = 0;
    v89 = 0;
    extensions = 0;
    x_low = LODWORD(size.origin.x);
    goto LABEL_108;
  }

  v91 = 1;
  v27 = 0;
  v97 = 1;
  v26 = 1;
LABEL_20:
  BytePtr = CFDataGetBytePtr(cf);
  Length = CFDataGetLength(cf);
  memset(&size, 0, sizeof(size));
  *parameterSetSizes = 0u;
  v114 = 0u;
  HEVCNALULocationAndSizeFromType = CMPhotoGetHEVCNALULocationAndSizeFromType(BytePtr, Length, 64, &size, parameterSetSizes);
  if (HEVCNALULocationAndSizeFromType)
  {
    goto LABEL_125;
  }

  HEVCNALULocationAndSizeFromType = CMPhotoGetHEVCNALULocationAndSizeFromType(BytePtr, Length, 66, &size.origin.y, &parameterSetSizes[1]);
  if (HEVCNALULocationAndSizeFromType)
  {
    goto LABEL_125;
  }

  HEVCNALULocationAndSizeFromType = CMPhotoGetHEVCNALULocationAndSizeFromType(BytePtr, Length, 68, &size.size.width, &v114);
  if (HEVCNALULocationAndSizeFromType)
  {
    goto LABEL_125;
  }

  HEVCNALULocationAndSizeFromType = CMPhotoGetHEVCNALULocationAndSizeFromType(BytePtr, Length, 2, &size.size.height, &v114 + 1);
  if (HEVCNALULocationAndSizeFromType)
  {
    goto LABEL_125;
  }

  HEVCNALULocationAndSizeFromType = CMVideoFormatDescriptionCreateFromHEVCParameterSets(v16, 3uLL, &size, parameterSetSizes, 4, 0, &formatDescriptionOut);
  if (HEVCNALULocationAndSizeFromType)
  {
    goto LABEL_125;
  }

  Dimensions = CMVideoFormatDescriptionGetDimensions(formatDescriptionOut);
  v32 = Dimensions;
  v33 = Dimensions >> 32;
  v34 = (Dimensions * v97);
  v35 = ((Dimensions >> 32) * v91);
  v105 = 0uLL;
  *&v106 = v34;
  *(&v106 + 1) = v35;
  if (v27)
  {
    memset(&size, 0, sizeof(size));
    if (!CGRectMakeWithDictionaryRepresentation(v27, &size) || (v36.f64[0] = size.origin.x, HEVCNALULocationAndSizeFromType = CMPhotoApplyCropRectToRect(&v105, v36, size.origin.y, size.size.width, size.size.height), !HEVCNALULocationAndSizeFromType))
    {
      v37 = v105;
      v35 = *(&v106 + 1);
      v34 = *&v106;
      goto LABEL_30;
    }

LABEL_125:
    x_low = HEVCNALULocationAndSizeFromType;
    DictionaryRepresentation = 0;
    v89 = 0;
    extensions = 0;
    goto LABEL_108;
  }

  v37 = 0uLL;
LABEL_30:
  v105 = vrndaq_f64(v37);
  *&v106 = round(v34);
  *(&v106 + 1) = round(v35);
  v38 = CMFormatDescriptionGetExtensions(formatDescriptionOut);
  if (v38)
  {
    v38 = CFRetain(v38);
  }

  extensions = v38;
  if (v110)
  {
    size.origin.x = 0.0;
    v39 = *MEMORY[0x1E6960070];
    if (!CMPhotoCFDictionaryGetCFValueIfPresent())
    {
      v40 = CGColorSpaceCopyICCData(v110);
      if (v40)
      {
        v41 = v40;
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        CFDictionarySetValue(MutableCopy, v39, v41);
        if (extensions)
        {
          CFRelease(extensions);
        }

        CFRelease(v41);
        extensions = MutableCopy;
      }
    }
  }

  v43 = CMVideoFormatDescriptionCreate(v16, codecType, vcvtad_u64_f64(*&v106), vcvtad_u64_f64(*(&v106 + 1)), extensions, &v108);
  if (v43)
  {
    x_low = v43;
    DictionaryRepresentation = 0;
    v89 = 0;
    goto LABEL_108;
  }

  Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    DictionaryRepresentation = 0;
    v89 = 0;
    goto LABEL_132;
  }

  v47 = Mutable;
  v89 = Mutable;
  if (v26)
  {
    DictionaryRepresentation = 0;
    goto LABEL_44;
  }

  v117.width = v32;
  v117.height = v33;
  DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v117);
  if (!DictionaryRepresentation)
  {
LABEL_132:
    x_low = 4294950305;
    goto LABEL_108;
  }

  CFDictionarySetValue(v47, *MEMORY[0x1E6972220], DictionaryRepresentation);
LABEL_44:
  if (a4 == 2)
  {
    if (a7)
    {
      CFDictionarySetValue(v47, *MEMORY[0x1E69721C8], a7);
    }

    CMPhotoHEIFFileWriterAddAuxiliaryImageToImage(*(a1 + 88), v47, v94, codecType, v108, &v109, v45, v46, blockBufferOut, SHIDWORD(blockBufferOut), v79, sampleSizeArray, sampleBufferOut, v82, v83, metadata, v85, v87, v89, extensions, v91, a7, v94);
    if (XMPData)
    {
      goto LABEL_127;
    }
  }

  else if (a4 == 1)
  {
    CMPhotoHEIFFileWriterAddThumbnailToImage(*(a1 + 88), v47, v94, codecType, v108, &v109, v45, v46, blockBufferOut, SHIDWORD(blockBufferOut), v79, sampleSizeArray, sampleBufferOut, v82, v83, metadata, v85, v87, v89, extensions, v91, a7, v94);
    if (XMPData)
    {
      goto LABEL_127;
    }
  }

  else
  {
    XMPData = CMPhotoHEIFFileWriterAddImageToCollection(*(a1 + 88), v47, codecType, v108);
    if (XMPData)
    {
      goto LABEL_127;
    }
  }

  v88 = DictionaryRepresentation;
  v86 = a4;
  v50 = CFDataGetBytePtr(cf);
  v51 = CFDataGetLength(cf);
  if (v91)
  {
    v52 = v51;
    v53 = 0;
    v95 = *MEMORY[0x1E6972228];
    while (1)
    {
      valuea = v53;
      if (v97)
      {
        break;
      }

LABEL_96:
      v53 = valuea + 1;
      if (valuea + 1 == v91)
      {
        goto LABEL_97;
      }
    }

    v54 = 0;
    v55 = v53;
    while (1)
    {
      size.origin.x = 0.0;
      parameterSetSizes[0] = 0;
      dataLength = 0;
      if (v103 < 1)
      {
LABEL_63:
        v61 = MEMORY[0x1AC550000](v16);
        v62 = v61;
        if (v103 < 1)
        {
          v67 = v50;
          v69 = v52;
LABEL_71:
          v70 = CMBlockBufferCreateWithMemoryBlock(v16, v62, dataLength, v16, 0, 0, dataLength, 1u, &size);
          if (v70)
          {
            x_low = v70;
            CFAllocatorDeallocate(v16, v62);
            goto LABEL_73;
          }

          v74 = CMSampleBufferCreate(v16, *&size.origin.x, 1u, 0, 0, formatDescriptionOut, 1, 0, 0, 1, &dataLength, parameterSetSizes);
          if (!v74)
          {
            v118.x = v54;
            v118.y = v55;
            v75 = CGPointCreateDictionaryRepresentation(v118);
            v72 = v75;
            if (v75)
            {
              values = v75;
              keys = v95;
              v73 = CFDictionaryCreate(v16, &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (v73)
              {
                x_low = CMPhotoHEIFFileWriterAddSampleBufferToImage(*(a1 + 88), v73, v109, parameterSetSizes[0]);
                goto LABEL_78;
              }
            }

            else
            {
              v73 = 0;
            }

            x_low = 4294950305;
            goto LABEL_78;
          }

          x_low = v74;
LABEL_73:
          v72 = 0;
          v73 = 0;
LABEL_78:
          v50 = v67;
          v52 = v69;
          goto LABEL_79;
        }

        v63 = 0;
        v64 = v61;
        while (1)
        {
          __n = 0;
          __src = 0;
          v59 = CMPhotoGetHEVCNALULocationAndSizeFromType(v50, v52, 1, &__src, &__n);
          if (v59)
          {
            break;
          }

          v65 = __n;
          if (HIDWORD(__n))
          {
            x_low = 4294950190;
            goto LABEL_104;
          }

          *v64 = bswap32(__n);
          v66 = v64 + 4;
          memcpy(v66, __src, v65);
          v67 = __src + __n;
          v68 = __src + __n - v50;
          v69 = v52 - v68;
          if (v52 < v68)
          {
            goto LABEL_91;
          }

          v64 = &v66[__n];
          ++v63;
          v52 -= v68;
          v50 = __src + __n;
          if (v63 >= v103)
          {
            goto LABEL_71;
          }
        }
      }

      else
      {
        v56 = 0;
        v57 = v52;
        v58 = v50;
        while (1)
        {
          __n = 0;
          __src = 0;
          v59 = CMPhotoGetHEVCNALULocationAndSizeFromType(v58, v57, 1, &__src, &__n);
          if (v59)
          {
            break;
          }

          dataLength += __n + 4;
          v60 = __src + __n - v58;
          v25 = v57 >= v60;
          v57 -= v60;
          if (!v25)
          {
LABEL_91:
            x_low = 4294950306;
            goto LABEL_92;
          }

          ++v56;
          v58 = __src + __n;
          if (v56 >= v103)
          {
            goto LABEL_63;
          }
        }
      }

      x_low = v59;
LABEL_92:
      v72 = 0;
      v73 = 0;
LABEL_79:
      if (*&size.origin.x)
      {
        CFRelease(*&size.origin.x);
      }

      if (parameterSetSizes[0])
      {
        CFRelease(parameterSetSizes[0]);
      }

      if (v72)
      {
        CFRelease(v72);
      }

      if (v73)
      {
        CFRelease(v73);
      }

      if (x_low)
      {
LABEL_104:
        DictionaryRepresentation = v88;
        goto LABEL_108;
      }

      if (++v54 == v97)
      {
        goto LABEL_96;
      }
    }
  }

LABEL_97:
  if (v86 == 2 && metadata | a9)
  {
    XMPData = CMPhotoAuxiliaryImageMetadataCreateXMPData(v16, metadata, a9, SHIDWORD(v83), 0, &v104);
    DictionaryRepresentation = v88;
    if (!XMPData)
    {
      v76 = CMPhotoHEIFFileWriterAddMetadataToImage(*(a1 + 88), 0, v109, 1, v104, 0, 0, 0);
      x_low = v76;
      if (!a10 || v76)
      {
        goto LABEL_108;
      }

      goto LABEL_106;
    }

LABEL_127:
    x_low = XMPData;
    goto LABEL_108;
  }

  DictionaryRepresentation = v88;
  if (!a10)
  {
    x_low = 0;
    goto LABEL_108;
  }

LABEL_106:
  x_low = 0;
  *a10 = v109;
LABEL_108:
  if (v104)
  {
    CFRelease(v104);
  }

  if (extensions)
  {
    CFRelease(extensions);
  }

  if (v110)
  {
    CFRelease(v110);
  }

  if (v108)
  {
    CFRelease(v108);
  }

  if (formatDescriptionOut)
  {
    CFRelease(formatDescriptionOut);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  return x_low;
}

uint64_t _newContainer_1(uint64_t a1, const __CFDictionary *a2)
{
  *(a1 + 392) = 2;
  if (!a2)
  {
    return 0;
  }

  CMPhotoCFDictionaryGetIntIfPresent();
  CMPhotoCFDictionaryGetIntIfPresent();
  v4 = *(a1 + 392);
  if (!v4)
  {
    result = 0;
    *(a1 + 392) = 2;
    return result;
  }

  if (v4 == 4)
  {
    CMPhotoCFDictionaryGetSizeIfPresent(a2, @"BackingIOSurfaceDestinationSize", (a1 + 408));
    return 0;
  }

  if (v4 != 3)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a2, @"BackingFileURL");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFURLGetTypeID()))
  {
    v8 = CFRetain(v6);
    result = 0;
    *(a1 + 400) = v8;
  }

  else
  {
    _newContainer_cold_1_0(&v10);
    return v10;
  }

  return result;
}

uint64_t _addMetadataFromImageProperties_0(void *a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (a1[52])
  {
    v6 = 1;
    if (a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = a1[58] != 0;
    if (a2)
    {
LABEL_13:
      _addMetadataFromImageProperties_cold_1_0(&v9);
      return v9;
    }
  }

  if (!v6)
  {
    goto LABEL_13;
  }

  if (a1[59])
  {
    _addMetadataFromImageProperties_cold_2_0(&v9);
    return v9;
  }

  CMPhotoCFDictionaryGetIntIfPresent();
  if (FigCFDictionaryGetValue())
  {
    CMPhotoCFDictionaryGetIntIfPresent();
  }

  if (a4)
  {
    v7 = CFRetain(a4);
  }

  else
  {
    v7 = 0;
  }

  result = 0;
  a1[59] = v7;
  return result;
}

uint64_t _compressAuxImageAsync_1(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, const __CFDictionary *a5, opaqueCMSampleBuffer *a6, uint64_t *a7, uint64_t a8)
{
  v13 = -1;
  v10 = _compressAuxImageInternal_1(a1, a2, a3, a4, a5, a6, &v13);
  v11 = v10;
  if (a7 && !v10)
  {
    *a7 = v13;
  }

  if (a8 && !v10)
  {
    (*(a8 + 16))(a8, 0, 2, v13, 0);
  }

  return v11;
}

void _releaseAllContainerResources_0(uint64_t a1)
{
  v2 = *(a1 + 416);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 416) = 0;
  }

  v3 = *(a1 + 440);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 440) = 0;
  }

  v4 = *(a1 + 448);
  if (v4)
  {
    Count = CFArrayGetCount(*(a1 + 448));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        CMPhotoCompressedAuxImageStorageDestroy(ValueAtIndex);
      }
    }

    v9 = *(a1 + 448);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 448) = 0;
    }
  }

  v10 = *(a1 + 472);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 472) = 0;
  }

  v11 = *(a1 + 480);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 480) = 0;
  }

  v12 = *(a1 + 456);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 456) = 0;
  }

  v13 = *(a1 + 464);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 464) = 0;
  }

  v14 = *(a1 + 400);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 400) = 0;
  }

  *(a1 + 392) = 0;
  *(a1 + 408) = 0;
}

void ___createDescriptionFromSession_block_invoke(uint64_t a1, const void *a2)
{
  FigCFDictionaryGetValue();
  if (FigCFEqual())
  {
    Value = FigCFDictionaryGetValue();
    if (!Value)
    {
      return;
    }

    v5 = Value;
    v6 = *(a1 + 32);
  }

  else
  {
    v6 = *(a1 + 40);
    v5 = a2;
  }

  CFArrayAppendValue(v6, v5);
}

void ___applyModifiedDescriptionToSession_block_invoke(uint64_t a1, const void *a2)
{
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    CFGetAllocator(*(a1 + 40));
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (MutableCopy)
    {
      v5 = MutableCopy;
      CFDictionarySetValue(MutableCopy, @"URI", @"tag:apple.com,2025:dicom:debug_metadata");
      CFDictionarySetValue(v5, @"Data", a2);
      CFArrayAppendValue(*(a1 + 48), v5);

      CFRelease(v5);
    }

    else
    {
      *(*(*(a1 + 32) + 8) + 24) = -16991;
    }
  }
}

const __CFData *___closeContainerAndCopyBacking_block_invoke(uint64_t a1, uint64_t a2)
{
  Value = FigCFDictionaryGetValue();
  if (Value)
  {
    *(*(*(a1 + 32) + 8) + 24) += CFStringGetLength(Value) + 12;
  }

  v4 = FigCFDictionaryGetValue();
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) += CFStringGetLength(v4) + 12;
  }

  result = FigCFDictionaryGetValue();
  if (result)
  {
    result = CFDataGetLength(result);
    *(*(*(a1 + 32) + 8) + 24) += result + 12;
  }

  *(*(*(a1 + 32) + 8) + 24) += 40;
  return result;
}

uint64_t CMPhotoIsFirstPartyProcess(uint64_t a1, uint64_t a2)
{
  if (CMPhotoIsFirstPartyProcess_onceToken != -1)
  {
    CMPhotoIsFirstPartyProcess_cold_1();
  }

  return CMPhotoIsFirstPartyProcess_sIsFirstPartyProcess;
}

void __CMPhotoIsFirstPartyProcess_block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    CMPhotoIsFirstPartyProcess_sIsFirstPartyProcess = (SecTaskGetCodeSignStatus(v0) & 0x4000000) != 0;
    CFRelease(v1);
  }

  if (CMPhotoIsFirstPartyProcess_sIsFirstPartyProcess)
  {
    if (_processPathPresentInList(&unk_1F194A438))
    {
      CMPhotoIsFirstPartyProcess_sIsFirstPartyProcess = 0;
    }
  }
}

uint64_t _processPathPresentInList(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v16 = *MEMORY[0x1E69E9840];
  v2 = getpid();
  v3 = proc_pidpath(v2, buffer, 0x1000u);
  v4 = [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v1);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 length] <= v3 && (objc_msgSend(v4, "hasPrefix:", v9) & 1) != 0)
        {
          return 1;
        }

        ++v8;
      }

      while (v6 != v8);
      result = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t CMPhotoIsInternalProcess(uint64_t a1, uint64_t a2)
{
  if (CMPhotoIsInternalProcess_onceToken != -1)
  {
    CMPhotoIsInternalProcess_cold_1();
  }

  return CMPhotoIsInternalProcess_sIsInternalProcess;
}

uint64_t __CMPhotoIsInternalProcess_block_invoke()
{
  result = os_variant_allows_internal_security_policies();
  if (result)
  {
    result = _processPathPresentInList(&unk_1F194A450);
    CMPhotoIsInternalProcess_sIsInternalProcess = result;
  }

  return result;
}

uint64_t CMPhotoMSRSupportsHDR(uint64_t a1, uint64_t a2)
{
  if (CMPhotoMSRSupportsHDR_onceToken != -1)
  {
    CMPhotoMSRSupportsHDR_cold_1();
  }

  return CMPhotoMSRSupportsHDR_sHDRSupported;
}

uint64_t __CMPhotoMSRSupportsHDR_block_invoke()
{
  v0 = *MEMORY[0x1E696CD60];
  v1 = IOServiceMatching("AppleM2ScalerCSCDriver");
  result = IOServiceGetMatchingService(v0, v1);
  if (result)
  {
    v3 = result;
    v4 = IORegistryEntrySearchCFProperty(result, "IOService", @"IOSurfaceAcceleratorCapabilitiesDict", 0, 0);
    if (CMPhotoCFDictionaryGetIntIfPresent())
    {
      CMPhotoMSRSupportsHDR_sHDRSupported = 0;
    }

    if (v4)
    {
      CFRelease(v4);
    }

    return IOObjectRelease(v3);
  }

  return result;
}

uint64_t CMPhotoGetHEVCProfileForPixelFormat(uint64_t a1, int a2)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  BitDepthForPixelFormat = CMPhotoGetBitDepthForPixelFormat(UncompressedPixelFormatFromCompressedPixelFormat);
  ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(UncompressedPixelFormatFromCompressedPixelFormat);
  if (BitDepthForPixelFormat < 9)
  {
    if (ChromaSubsamplingFromPixelFormat == 1 || ChromaSubsamplingFromPixelFormat == 3)
    {
      v6 = MEMORY[0x1E6983F90];
    }

    else if (ChromaSubsamplingFromPixelFormat == 6)
    {
      v6 = MEMORY[0x1E6983FB0];
    }

    else
    {
      v6 = MEMORY[0x1E6983FA0];
      if (!a2)
      {
        v6 = MEMORY[0x1E6983F98];
      }
    }
  }

  else
  {
    switch(ChromaSubsamplingFromPixelFormat)
    {
      case 1:
        v6 = MEMORY[0x1E6983F88];
        break;
      case 3:
        v6 = MEMORY[0x1E6983F80];
        break;
      case 6:
        v6 = MEMORY[0x1E6983FA8];
        break;
      default:
        v6 = MEMORY[0x1E6983F78];
        break;
    }
  }

  return *v6;
}

uint64_t CMPhotoGetAVCProfileForPixelFormat(uint64_t a1)
{
  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  CMPhotoGetBitDepthForPixelFormat(UncompressedPixelFormatFromCompressedPixelFormat);
  ChromaSubsamplingFromPixelFormat = CMPhotoGetChromaSubsamplingFromPixelFormat(UncompressedPixelFormatFromCompressedPixelFormat);
  v3 = MEMORY[0x1E6983EC8];
  v4 = MEMORY[0x1E6983ED0];
  if (ChromaSubsamplingFromPixelFormat != 1)
  {
    v4 = MEMORY[0x1E6983F20];
  }

  if (ChromaSubsamplingFromPixelFormat != 3)
  {
    v3 = v4;
  }

  return *v3;
}

uint64_t CMPhotoSupportsProResEncode(int a1)
{
  result = 0;
  if (a1 <= 1634755437)
  {
    if (a1 <= 1634743399)
    {
      if (a1 == 1634742376)
      {
        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes400 != -1)
        {
          CMPhotoSupportsProResEncode_cold_10();
        }

        v3 = &sDeviceSupportsProResEncoding_0;
      }

      else
      {
        if (a1 != 1634742888)
        {
          return result;
        }

        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes420 != -1)
        {
          CMPhotoSupportsProResEncode_cold_9();
        }

        v3 = &sDeviceSupportsProResEncoding_1;
      }
    }

    else
    {
      switch(a1)
      {
        case 1634743400:
          if (CMPhotoSupportsProResEncode_onceTokenAppleProRes4444 != -1)
          {
            CMPhotoSupportsProResEncode_cold_8();
          }

          v3 = &sDeviceSupportsProResEncoding_2;
          break;
        case 1634743416:
          if (CMPhotoSupportsProResEncode_onceTokenAppleProRes4444XQ != -1)
          {
            CMPhotoSupportsProResEncode_cold_7();
          }

          v3 = &sDeviceSupportsProResEncoding_3;
          break;
        case 1634755432:
          if (CMPhotoSupportsProResEncode_onceTokenAppleProRes422HQ != -1)
          {
            CMPhotoSupportsProResEncode_cold_6();
          }

          v3 = &sDeviceSupportsProResEncoding_4;
          break;
        default:
          return result;
      }
    }
  }

  else if (a1 > 1634759271)
  {
    switch(a1)
    {
      case 1634759272:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProResRAWHQ != -1)
        {
          CMPhotoSupportsProResEncode_cold_1();
        }

        v3 = &sDeviceSupportsProResEncoding_9;
        break;
      case 1634759278:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProResRAW != -1)
        {
          CMPhotoSupportsProResEncode_cold_2();
        }

        v3 = &sDeviceSupportsProResEncoding_8;
        break;
      case 1634759276:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes400 != -1)
        {
          CMPhotoSupportsProResEncode_cold_11();
        }

        v3 = &sDeviceSupportsProResEncoding_10;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(a1)
    {
      case 1634755438:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes422 != -1)
        {
          CMPhotoSupportsProResEncode_cold_5();
        }

        v3 = &sDeviceSupportsProResEncoding_5;
        break;
      case 1634755439:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes422Proxy != -1)
        {
          CMPhotoSupportsProResEncode_cold_3();
        }

        v3 = &sDeviceSupportsProResEncoding_7;
        break;
      case 1634755443:
        if (CMPhotoSupportsProResEncode_onceTokenAppleProRes422LT != -1)
        {
          CMPhotoSupportsProResEncode_cold_4();
        }

        v3 = &sDeviceSupportsProResEncoding_6;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xD)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_10 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_2()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_0 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_3()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_1 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_4()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_2 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_5()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_3 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_6()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_4 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_7()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_5 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_8()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_6 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_9()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_7 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_10()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_8 = v1;
  return result;
}

uint64_t __CMPhotoSupportsProResEncode_block_invoke_11()
{
  result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  v1 = 0;
  if (sDeviceType >= 0xB)
  {
    result = pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    if (sDeviceType != 14)
    {
      v1 = 1;
    }
  }

  sDeviceSupportsProResEncoding_9 = v1;
  return result;
}

uint64_t CMPhotoPerceptualCurveVersion()
{
  pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  if (sDeviceType <= 0xB)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t CMPhotoDNGDefaultBitDepth()
{
  pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  if (sDeviceType <= 0xB)
  {
    return 16;
  }

  else
  {
    return 10;
  }
}

float CMPhotoGetHEIFQualityDefault(uint64_t a1, uint64_t a2)
{
  result = 0.75;
  if ((a2 * a1) <= 0xF423FF)
  {
    if ((a2 * a1) < 0xB71B00)
    {
      return 0.85;
    }

    else
    {
      pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
      result = 0.85;
      if (sDeviceType >= 0xC)
      {
        return 0.75;
      }
    }
  }

  return result;
}

uint64_t CMPhotoValidateMobileGestaltQuery(uint64_t a1)
{
  if (_isMobileGestaltVirtualDevice())
  {
    return 1;
  }

  CMPhotoValidateMobileGestaltQuery_cold_1(&v2);
  return v2;
}

uint64_t _isMobileGestaltVirtualDevice()
{
  v0 = MGCopyAnswer();
  v1 = FigCFEqual();
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

BOOL CMPhotoIs422EncodeAvailable(int a1, int a2)
{
  if (a1 > 1785750886)
  {
    return a1 == 1785750887 || a1 == 1936484717;
  }

  else if (a1 == 1635135537)
  {
    return 1;
  }

  else if (a1 == 1752589105 && !a2)
  {
    pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    return sDeviceType > 6;
  }

  else
  {
    return 0;
  }
}

BOOL CMPhotoIs444EncodeAvailable(int a1, int a2)
{
  if (a1 > 1785750886)
  {
    return a1 == 1785750887 || a1 == 1936484717;
  }

  else if (a1 == 1635135537)
  {
    return 1;
  }

  else if (a1 == 1752589105 && !a2)
  {
    pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    return sDeviceType > 5;
  }

  else
  {
    return 0;
  }
}

BOOL CMPhotoIs400EncodeAvailable(int a1)
{
  if (a1 <= 1752589104)
  {
    if (a1 == 1635135537)
    {
      return 1;
    }

    else if (a1 == 1635148593)
    {
      pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
      return sDeviceType > 7;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v1 = a1 == 1785750887 || a1 == 1752589105;
    return a1 == 1936484717 || v1;
  }
}

uint64_t CMPhotoIsPixelFormatSupportedBySLIM(int a1, int a2)
{
  v3 = &SlimPixelFormatList_0;
  if (a2 == 5)
  {
    pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    v4 = sDeviceType;
    pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    v5 = &SlimIntcGpuPixelFormatList;
    if (sDeviceType <= 9)
    {
      v5 = &SlimPixelFormatList_0;
    }

    v6 = 62;
    if (sDeviceType > 9)
    {
      v6 = 7;
    }

    if (v4 >= 0x11)
    {
      v3 = &SlimIntcMsrPixelFormatList;
    }

    else
    {
      v3 = v5;
    }

    v7 = 8;
    if (v4 < 0x11)
    {
      v7 = v6;
    }
  }

  else
  {
    v7 = 62;
  }

  while (1)
  {
    v8 = *v3++;
    if (v8 == a1)
    {
      break;
    }

    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

BOOL CMPhotoIsPixelFormatSupportedByAVC(int a1)
{
  switch(a1)
  {
    case 875704422:
      return 1;
    case 1278226488:
      pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
      return sDeviceType > 7;
    case 875704438:
      return 1;
    default:
      return 0;
  }
}

BOOL CMPhotoIsPixelFormatSupportedByHEVC(uint64_t a1, int a2)
{
  v2 = a1;
  if (a2)
  {
    result = 0;
    if (v2 > 1278226735)
    {
      if (v2 != 1278226736 && v2 != 2019963440)
      {
        v4 = 2016686640;
LABEL_15:
        if (v2 != v4)
        {
          return result;
        }
      }
    }

    else if (v2 != 875704422 && v2 != 875704438)
    {
      v4 = 1278226488;
      goto LABEL_15;
    }

    return 1;
  }

  UncompressedPixelFormatFromCompressedPixelFormat = CMPhotoGetUncompressedPixelFormatFromCompressedPixelFormat(a1);
  result = 0;
  if (UncompressedPixelFormatFromCompressedPixelFormat > 1882469427)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 2016686641)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat <= 2019963439)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 2016686642)
        {
          goto LABEL_44;
        }

        v6 = 2016687156;
      }

      else
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963440)
        {
          return 1;
        }

        if (UncompressedPixelFormatFromCompressedPixelFormat == 2019963442)
        {
          goto LABEL_44;
        }

        v6 = 2019963956;
      }

LABEL_42:
      if (UncompressedPixelFormatFromCompressedPixelFormat != v6)
      {
        return result;
      }

      goto LABEL_43;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat <= 1885745713)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1882469428)
      {
        v7 = 1885745712;
        goto LABEL_38;
      }
    }

    else
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat == 1885745714)
      {
        goto LABEL_44;
      }

      if (UncompressedPixelFormatFromCompressedPixelFormat != 1885746228)
      {
        v7 = 2016686640;
        goto LABEL_38;
      }
    }

LABEL_43:
    pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
    return sDeviceType > 5;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat > 875836533)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat > 1278226735)
    {
      if (UncompressedPixelFormatFromCompressedPixelFormat != 1278226736 && UncompressedPixelFormatFromCompressedPixelFormat != 1882468912)
      {
        if (UncompressedPixelFormatFromCompressedPixelFormat != 1882468914)
        {
          return result;
        }

        goto LABEL_44;
      }

      return 1;
    }

    if (UncompressedPixelFormatFromCompressedPixelFormat != 875836534)
    {
      v7 = 1278226488;
LABEL_38:
      if (UncompressedPixelFormatFromCompressedPixelFormat != v7)
      {
        return result;
      }

      return 1;
    }

    goto LABEL_43;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat <= 875704933)
  {
    if (UncompressedPixelFormatFromCompressedPixelFormat != 875704422)
    {
      v7 = 875704438;
      goto LABEL_38;
    }

    return 1;
  }

  if (UncompressedPixelFormatFromCompressedPixelFormat != 875704934 && UncompressedPixelFormatFromCompressedPixelFormat != 875704950)
  {
    v6 = 875836518;
    goto LABEL_42;
  }

LABEL_44:
  pthread_once(&_getDeviceType_onceToken, _once_getDeviceType);
  return sDeviceType > 6;
}

uint64_t CMPhotoIsTileEncoderAvailable(int a1, int a2)
{
  if (a1 == 1635135537)
  {
    if (a2)
    {
      return 0;
    }

    if (CMPhotoIsTileEncoderAvailable_onceTokenAV1 != -1)
    {
      CMPhotoIsTileEncoderAvailable_cold_1();
    }

    return sTileEncodersAvailable_2;
  }

  else
  {
    if (a1 != 1752589105)
    {
      if (a1 == 1635148593)
      {
        if (CMPhotoIsTileEncoderAvailable_onceTokenAVC == -1)
        {
          return 0;
        }

        CMPhotoIsTileEncoderAvailable_cold_3();
      }

      return 0;
    }

    if (CMPhotoIsTileEncoderAvailable_onceTokenHEVC != -1)
    {
      CMPhotoIsTileEncoderAvailable_cold_2();
    }

    return sTileEncodersAvailable_1;
  }
}

void __CMPhotoIsTileEncoderAvailable_block_invoke_2()
{
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    v1 = *v0;
    sTileEncodersAvailable_1 = 1;
    if (v1 == 1)
    {

      kdebug_trace();
    }
  }

  else
  {
    sTileEncodersAvailable_1 = 1;
  }
}

void __CMPhotoIsTileEncoderAvailable_block_invoke_3()
{
  v0 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    v1 = *v0;
    sTileEncodersAvailable_2 = 1;
    if (v1 == 1)
    {

      kdebug_trace();
    }
  }

  else
  {
    sTileEncodersAvailable_2 = 1;
  }
}

uint64_t CMPhotoReuseCompressionSessionForDifferentQuantizationMatrixPresetDisabled(uint64_t a1, uint64_t a2)
{
  if (CMPhotoReuseCompressionSessionForDifferentQuantizationMatrixPresetDisabled_onceToken != -1)
  {
    CMPhotoReuseCompressionSessionForDifferentQuantizationMatrixPresetDisabled_cold_1();
  }

  return 0;
}

uint64_t CMPhotoSetDecodeHardwareCutoff(uint64_t result, uint64_t a2)
{
  v2 = &g_cutOffJPEG;
  if (!result)
  {
    v2 = &g_cutOffHEIF;
  }

  *v2 = a2;
  return result;
}

uint64_t CMPhotoAllowExperimentalCodecsOverride(char a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CMPhotoAllowExperimentalCodecsOverride_block_invoke;
  block[3] = &__block_descriptor_33_e5_v8__0l;
  v3 = a1;
  if (CMPhotoAllowExperimentalCodecsOverride_onceToken != -1)
  {
    dispatch_once(&CMPhotoAllowExperimentalCodecsOverride_onceToken, block);
  }

  return CMPhotoAllowExperimentalCodecsOverride_sAllowSlimCodec;
}

uint64_t CMPhotoEnableTTR(uint64_t a1, uint64_t a2)
{
  if (CMPhotoEnableTTR_onceToken != -1)
  {
    CMPhotoEnableTTR_cold_1();
  }

  return 0;
}

uint64_t CMPhotoEnableInformationCollectionActions(uint64_t a1, uint64_t a2)
{
  if (CMPhotoEnableInformationCollectionActions_onceToken != -1)
  {
    CMPhotoEnableInformationCollectionActions_cold_1();
  }

  return 1;
}

unint64_t CMPhotoMachTimeToMicroseconds(uint64_t a1)
{
  v2 = dword_1EB1EC9E4;
  if (!dword_1EB1EC9E4)
  {
    mach_timebase_info(&CMPhotoMachTimeToMicroseconds_sTimebaseInfo);
    v2 = dword_1EB1EC9E4;
  }

  return CMPhotoMachTimeToMicroseconds_sTimebaseInfo * a1 / v2 / 0x3E8;
}

uint64_t RegisterCMPhotoDNGCompressor()
{
  FigKTraceInit();
  sCMPhotoDNGCompressorClass = 0;
  *algn_1EB1EC9F8 = "CMPhotoDNGCompressor";
  qword_1EB1ECA00 = CMPhotoDNGCompressorClass_Init;
  unk_1EB1ECA08 = 0;
  qword_1EB1ECA18 = 0;
  unk_1EB1ECA20 = 0;
  qword_1EB1ECA10 = CMPhotoDNGCompressorClass_Finalize;
  qword_1EB1ECA28 = CMPhotoDNGCompressorClass_CopyFormattingDesc;
  qword_1EB1ECA30 = CMPhotoDNGCompressorClass_CopyDebugDesc;
  result = _CFRuntimeRegisterClass();
  sCMPhotoDNGCompressorTypeID = result;
  return result;
}

uint64_t CMPhotoDNGVersionFromPropertiesAndOptions(const __CFDictionary *a1, uint64_t a2, uint64_t a3, uint64_t a4, __CFString **a5)
{
  v6 = a4;
  v7 = a3;
  FigCFDictionaryGetIntIfPresent();
  return _getDNGVersionInternal(a1, 0, 1, v7, v6, 0, a5, 0);
}

uint64_t _getDNGVersionInternal(const __CFDictionary *a1, int a2, int a3, int a4, int a5, int a6, __CFString **a7, __CFString **a8)
{
  v16 = *MEMORY[0x1E696D808];
  TypeID = CFDictionaryGetTypeID();
  Value = CFDictionaryGetValue(a1, v16);
  if (!Value)
  {
    return 4294950741;
  }

  v19 = Value;
  if (CFGetTypeID(Value) != TypeID)
  {
    return 4294950741;
  }

  v36 = a8;
  v20 = CFDictionaryGetValue(v19, *MEMORY[0x1E696D7F0]);
  if (v20)
  {
    v21 = v20;
    v22 = CFGetTypeID(v20);
    v23 = @"1.3.0.0";
    if (v22 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v21, kCFNumberIntType, &valuePtr);
      if (valuePtr == 1)
      {
        v23 = @"1.4.0.0";
      }
    }
  }

  else
  {
    v23 = @"1.3.0.0";
  }

  v25 = a3 == 0;
  v26 = a2 == 2;
  if (v26 && v25)
  {
    v27 = @"1.4.0.0";
  }

  else
  {
    v27 = @"1.3.0.0";
  }

  if (v26 && v25)
  {
    v28 = @"1.4.0.0";
  }

  else
  {
    v28 = v23;
  }

  if (a4)
  {
    v28 = @"1.5.0.0";
  }

  if (a5)
  {
    v29 = @"1.6.0.0";
  }

  else
  {
    v29 = v28;
  }

  v30 = CFDictionaryGetTypeID();
  v31 = CFDictionaryGetValue(v19, @"ProfileGainTableMap");
  if (v31 && CFGetTypeID(v31) == v30)
  {
    v29 = @"1.6.0.0";
  }

  v32 = CFArrayGetTypeID();
  v33 = CFDictionaryGetValue(v19, @"WarpRectilinear2");
  if (v33 && CFGetTypeID(v33) == v32)
  {
    v29 = @"1.6.0.0";
  }

  v34 = @"1.7.0.0";
  if (a2 == 5)
  {
    v35 = @"1.7.0.0";
  }

  else
  {
    v35 = v27;
  }

  if (a6 != 0 && a6 != 17)
  {
    v35 = @"1.7.1.0";
  }

  if (a7)
  {
    if (a2 != 5)
    {
      v34 = v29;
    }

    if (a6 != 0 && a6 != 17)
    {
      v34 = @"1.7.1.0";
    }

    *a7 = v34;
  }

  result = 0;
  if (v36)
  {
    *v36 = v35;
  }

  return result;
}

unint64_t _tileDescriptionInitialize(unint64_t result)
{
  v1 = result;
  v3 = *(result + 100);
  v2 = *(result + 104);
  *(result + 1700) = v3;
  *(result + 1704) = v2;
  *(result + 1708) = 1;
  if (*(result + 8))
  {
    result = CMPhotoGetPreferredDNGTileSizeForImageSize(v3, v2, *(result + 12));
    v1[425] = result;
    v1[426] = v4;
    v5 = (v4 + v1[26] - 1) / v4 * ((result + v1[25] - 1) / result);
LABEL_20:
    v1[427] = v5;
    return result;
  }

  v6 = *(result + 1712);
  if (v6 == 68 || v6 == 34)
  {
    v7 = v6 & 0xF;
    v3 /= v7;
    *(result + 1700) = v3;
    v2 /= v7;
    *(result + 1704) = v2;
    v5 = v7 * v7;
    *(result + 1708) = v5;
  }

  else
  {
    v5 = 1;
  }

  if (v3 >= 512 && (v3 & 0xF) == 0)
  {
    do
    {
      v9 = v3 >> 1;
      v5 *= 2;
      if (v3 < 0x3FF)
      {
        break;
      }

      v10 = v3 & 0x1E;
      v3 = v3 >> 1;
    }

    while (!v10);
    *(result + 1700) = v9;
    *(result + 1708) = v5;
  }

  if (v2 >= 512 && (v2 & 3) == 0)
  {
    do
    {
      v11 = v2 >> 1;
      v5 *= 2;
      if (v2 < 0x3FF)
      {
        break;
      }

      v12 = v2 & 6;
      v2 = v2 >> 1;
    }

    while (!v12);
    *(result + 1704) = v11;
    goto LABEL_20;
  }

  return result;
}

uint64_t CMPhotoDNGCompressorCreateFromSourceDNG(const __CFAllocator *a1, uint64_t a2, void *a3, void *a4)
{
  v4 = 0;
  v40[1] = *MEMORY[0x1E69E9840];
  v37 = 0;
  cf = 0;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v5 = 4294950746;
  if (!a2 || !a4)
  {
LABEL_9:
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_11;
  }

  v8 = a2;
  v33 = 0;
  v10 = objc_autoreleasePoolPush();
  v39 = @"MainBufferPixelFormat";
  v40[0] = &unk_1F194A2A0;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  if (a3)
  {
    if (!CFDictionaryGetValue(a3, @"MainBufferPixelFormat"))
    {
      v12 = [a3 mutableCopy];
      LODWORD(a3) = v12;
      [v12 setObject:&unk_1F194A2A0 forKeyedSubscript:@"MainBufferPixelFormat"];
    }
  }

  else
  {
    LODWORD(a3) = v11;
  }

  v5 = _dngUnpackInternal(v8, a3, 0, 0, &v33, &v37, &v36, &v35, &v34);
  objc_autoreleasePoolPop(v10);
  if (v5)
  {
    goto LABEL_8;
  }

  v15 = CMPhotoDNGCompressorCreate(a1, v33, v13, &cf);
  if (v15)
  {
    v5 = v15;
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(v37, *MEMORY[0x1E696D808]);
  v4 = Value;
  if (!Value)
  {
LABEL_42:
    v5 = 4294950743;
    goto LABEL_9;
  }

  v17 = CFGetTypeID(Value);
  if (v17 != CFDictionaryGetTypeID())
  {
    v4 = 0;
    goto LABEL_42;
  }

  v18 = CFRetain(v4);
  *(cf + 5) = v18;
  v19 = CFDictionaryGetValue(v4, @"OriginalBitsPerSample");
  v4 = v19;
  if (!v19)
  {
    goto LABEL_35;
  }

  v32 = 0;
  v20 = CFGetTypeID(v19);
  if (v20 == CFArrayGetTypeID())
  {
    FigCFArrayGetIntAtIndex();
    Int = 0;
  }

  else
  {
    v22 = CFGetTypeID(v4);
    if (v22 != CFNumberGetTypeID())
    {
LABEL_34:
      v4 = 0;
      goto LABEL_35;
    }

    Int = CMPhotoCFNumberGetInt(v4);
    v32 = Int;
  }

  if (Int < 1)
  {
    goto LABEL_34;
  }

  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v4 = Mutable;
  if (!Mutable)
  {
    v5 = 4294950745;
    goto LABEL_9;
  }

  v24 = CMPhotoCFDictionarySetInt(Mutable, @"BitDepth", v32);
  if (v24)
  {
    v5 = v24;
    goto LABEL_9;
  }

LABEL_35:
  v25 = cf;
  v26 = *(cf + 12);
  if (v26)
  {
    CFRelease(v26);
    v25 = cf;
    *(cf + 12) = 0;
  }

  v27 = v36;
  v28 = v37;
  v36 = 0;
  v37 = 0;
  v25[3] = v27;
  v25[4] = v28;
  v30 = v34;
  v29 = v35;
  v25[6] = v4;
  v25[7] = v29;
  v35 = 0;
  if (v30)
  {
    v31 = v25[9];
    v41.length = CFArrayGetCount(v30);
    v41.location = 0;
    CFArrayAppendArray(v31, v30, v41);
    v25 = cf;
  }

  v5 = 0;
  v4 = 0;
  *a4 = v25;
  cf = 0;
LABEL_11:
  if (v37)
  {
    CFRelease(v37);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  return v5;
}

uint64_t CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler(const __CFAllocator *a1, uint64_t a2, void *a3, CFTypeRef *a4, uint64_t a5)
{
  v6 = a1;
  v103 = *MEMORY[0x1E69E9840];
  v82 = 0;
  v7 = CMPhotoDNGCompressorCreateFromSourceDNG(a1, a2, a3, &v82);
  if (!v7)
  {
    context = objc_autoreleasePoolPush();
    v8 = v82;
    v98[0] = 0;
    v93[0] = 0;
    if (!v82)
    {
      goto LABEL_102;
    }

    v9 = [MEMORY[0x1E695DF90] dictionary];
    if (!v9)
    {
      goto LABEL_113;
    }

    *&v94 = @"ImageHandle";
    *&v99 = &unk_1F194A2E8;
    v10 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v94 count:{1), "mutableCopy"}];
    if (v10)
    {
      v79 = v10;
      v92 = v10;
      [v9 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v92, 1), "mutableCopy"), @"ImageList"}];
      if (!v8[7])
      {
        goto LABEL_20;
      }

      v90 = @"ImageHandle";
      v91 = &unk_1F194A2E8;
      v11 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v91 forKeys:&v90 count:{1), "mutableCopy"}];
      if (v11)
      {
        v12 = v11;
        v89 = v11;
        [v79 setObject:objc_msgSend(objc_msgSend(MEMORY[0x1E695DEC8] forKeyedSubscript:{"arrayWithObjects:count:", &v89, 1), "mutableCopy"), @"ThumbnailImage"}];
        v13 = CFGetAllocator(v8);
        Container = CMPhotoDecompressionSessionCreate(v13, 0, v98);
        if (Container || (Container = CMPhotoDecompressionSessionCreateContainer(v98[0], 0, v8[7], 0, v93), Container) || (v84 = 0, CMPhotoDecompressionContainerGetAuxiliaryImageCountForIndexWithOptions(v93[0], 0, 0, &v84), Container))
        {
          v30 = Container;
        }

        else
        {
          if (v84 < 1)
          {
            goto LABEL_20;
          }

          v15 = [MEMORY[0x1E695DF70] array];
          if (v15)
          {
            v16 = v15;
            v76 = a5;
            if (v84 >= 1)
            {
              v17 = 0;
              while (1)
              {
                v87 = @"ImageHandle";
                v88 = [MEMORY[0x1E696AD98] numberWithInt:v17];
                v18 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v88 forKeys:&v87 count:{1), "mutableCopy"}];
                if (!v18)
                {
                  v30 = 4294950745;
                  goto LABEL_110;
                }

                v19 = v18;
                cf = 0;
                CMPhotoDecompressionContainerCopyAuxiliaryImageTypeURNForIndexWithOptions(v93[0], 0, v17, 0, &cf);
                if (v20)
                {
                  break;
                }

                [v19 setObject:cf forKeyedSubscript:@"AuxiliaryImageType"];
                if (cf)
                {
                  CFRelease(cf);
                }

                [v16 addObject:v19];
                if (v84 <= ++v17)
                {
                  goto LABEL_19;
                }
              }

              v30 = v20;
LABEL_110:
              a5 = v76;
              goto LABEL_111;
            }

LABEL_19:
            [v12 setObject:v16 forKeyedSubscript:@"Auxiliary"];
            a5 = v76;
LABEL_20:
            v21 = v8[9];
            if (!v21 || CFArrayGetCount(v21) < 1)
            {
              v30 = 0;
              goto LABEL_37;
            }

            v22 = [MEMORY[0x1E695DF70] array];
            if (v22)
            {
              v23 = v22;
              v75 = v6;
              v77 = a5;
              v74 = v9;
              for (i = 0; ; ++i)
              {
                v25 = v8[9];
                if (v25)
                {
                  Count = CFArrayGetCount(v25);
                }

                else
                {
                  Count = 0;
                }

                if (i >= Count)
                {
                  [v79 setObject:v23 forKeyedSubscript:@"Auxiliary"];
                  v30 = 0;
                  goto LABEL_36;
                }

                v27 = [CFArrayGetValueAtIndex(v8[9] i)];
                v85 = @"ImageHandle";
                v86 = [MEMORY[0x1E696AD98] numberWithInt:i];
                v28 = [objc_msgSend(MEMORY[0x1E695DF20] dictionaryWithObjects:&v86 forKeys:&v85 count:{1), "mutableCopy"}];
                if (!v28)
                {
                  v9 = 0;
                  v30 = 4294950745;
                  goto LABEL_36;
                }

                v29 = v28;
                v84 = 0;
                if ([v27 hasPrefix:@"kCGImageAuxiliaryDataType"])
                {
                  CMPhotoGetCMPhotoAuxiliaryImageTypeFromCGImageAuxiliaryDataType(v27, &v84, 0);
                }

                else
                {
                  CMPhotoGetCMPhotoAuxiliaryImageTypeAndFinalURNFromURN(v27, &v84);
                }

                if (!v84)
                {
                  break;
                }

                [v29 setObject:v84 forKeyedSubscript:@"AuxiliaryImageType"];
                [v23 addObject:v29];
              }

              CMPhotoDNGCompressorCreateFromSourceDNGWithModificationHandler_cold_1(&v84, &cf);
              v9 = 0;
              v30 = cf;
LABEL_36:
              v6 = v75;
              a5 = v77;
LABEL_37:
              if (v98[0])
              {
                CFRelease(v98[0]);
              }

              if (v93[0])
              {
                CFRelease(v93[0]);
              }

              if (v30)
              {
                goto LABEL_103;
              }

              v81 = 0;
              v31 = CMPhotoPropertyListCopyWithMutableContainers(v6, v9, &v81);
              if (v31 || (v32 = v81, v31 = (*(a5 + 16))(a5, v32), v31))
              {
                v30 = v31;
                goto LABEL_103;
              }

              if (!CMPhotoCompressionSessionCheckForIllegalModification(v9, v32))
              {
                goto LABEL_102;
              }

              v33 = v82;
              if (!v82)
              {
                goto LABEL_102;
              }

              v34 = [(__CFDictionary *)v32 objectForKeyedSubscript:@"ImageList"];
              if ([v34 count] != 1)
              {
                goto LABEL_102;
              }

              v35 = [v34 objectAtIndexedSubscript:0];
              v36 = v35;
              if (*(v33 + 7))
              {
                v37 = [v35 objectForKeyedSubscript:@"ThumbnailImage"];
                v38 = v37;
                if (v37)
                {
                  v39 = CFGetTypeID(v37);
                  if (v39 != CFArrayGetTypeID())
                  {
                    goto LABEL_102;
                  }
                }

                if (![v38 count])
                {
                  goto LABEL_58;
                }

                v40 = [v38 objectAtIndexedSubscript:0];
                if (!v40)
                {
                  goto LABEL_102;
                }

                v41 = v40;
                v42 = CFGetTypeID(v40);
                if (v42 != CFDictionaryGetTypeID())
                {
                  goto LABEL_102;
                }

                LODWORD(v92) = 0;
                if (FigCFDictionaryGetIntIfPresent() && !v92)
                {
                  v43 = [objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v9 objectForKeyedSubscript:{@"ImageList", "objectAtIndexedSubscript:", 0), "objectForKeyedSubscript:", @"ThumbnailImage", "objectAtIndexedSubscript:", 0), "objectForKeyedSubscript:", @"Auxiliary", "count"}];
                  v45 = (v33 + 96);
                  v44 = *(v33 + 12);
                  if (v43)
                  {
                    if (v44)
                    {
                      CFArrayRemoveAllValues(v44);
                    }

                    else
                    {
                      v62 = CFGetAllocator(v33);
                      Mutable = CFArrayCreateMutable(v62, 0, MEMORY[0x1E695E9C0]);
                      *(v33 + 12) = Mutable;
                      if (!Mutable)
                      {
                        v30 = 4294950745;
                        goto LABEL_103;
                      }
                    }

                    v64 = [v41 objectForKeyedSubscript:@"Auxiliary"];
                    v65 = v64;
                    if (v64)
                    {
                      v66 = CFGetTypeID(v64);
                      if (v66 != CFArrayGetTypeID())
                      {
                        goto LABEL_102;
                      }
                    }

                    v101 = 0u;
                    v102 = 0u;
                    v99 = 0u;
                    v100 = 0u;
                    v67 = [v65 countByEnumeratingWithState:&v99 objects:v98 count:16];
                    if (v67)
                    {
                      v68 = v67;
                      v69 = *v100;
LABEL_93:
                      v70 = 0;
                      while (1)
                      {
                        if (*v100 != v69)
                        {
                          objc_enumerationMutation(v65);
                        }

                        v71 = *(*(&v99 + 1) + 8 * v70);
                        if (!v71)
                        {
                          goto LABEL_102;
                        }

                        v72 = CFGetTypeID(*(*(&v99 + 1) + 8 * v70));
                        if (v72 != CFDictionaryGetTypeID())
                        {
                          goto LABEL_102;
                        }

                        v73 = [v71 objectForKeyedSubscript:@"ImageHandle"];
                        if (!v73)
                        {
                          goto LABEL_102;
                        }

                        CFArrayAppendValue(*v45, v73);
                        if (v68 == ++v70)
                        {
                          v68 = [v65 countByEnumeratingWithState:&v99 objects:v98 count:16];
                          if (v68)
                          {
                            goto LABEL_93;
                          }

                          goto LABEL_63;
                        }
                      }
                    }

                    goto LABEL_63;
                  }
                }

                else
                {
LABEL_58:
                  v46 = *(v33 + 7);
                  if (v46)
                  {
                    CFRelease(v46);
                    *(v33 + 7) = 0;
                  }

                  v45 = (v33 + 96);
                  v44 = *(v33 + 12);
                }

                if (v44)
                {
                  CFRelease(v44);
                  *v45 = 0;
                }
              }

LABEL_63:
              v47 = *(v33 + 9);
              if (!v47 || CFArrayGetCount(v47) < 1)
              {
                goto LABEL_86;
              }

              v48 = [v36 objectForKeyedSubscript:@"Auxiliary"];
              v49 = v48;
              if (!v48 || (v50 = CFGetTypeID(v48), v50 == CFArrayGetTypeID()))
              {
                v51 = *(v33 + 9);
                if (v51)
                {
                  v52 = CFArrayGetCount(v51);
                  if (v52 >= 1)
                  {
                    v53 = v52 & 0x7FFFFFFF;
                    while (1)
                    {
                      v96 = 0u;
                      v97 = 0u;
                      v94 = 0u;
                      v95 = 0u;
                      v54 = [v49 countByEnumeratingWithState:&v94 objects:v93 count:{16, v74}];
                      if (v54)
                      {
                        break;
                      }

LABEL_83:
                      CFArrayRemoveValueAtIndex(*(v33 + 9), v53 - 1);
LABEL_84:
                      if (v53-- <= 1)
                      {
                        goto LABEL_86;
                      }
                    }

                    v55 = v54;
                    v56 = *v95;
LABEL_72:
                    v57 = 0;
                    while (1)
                    {
                      if (*v95 != v56)
                      {
                        objc_enumerationMutation(v49);
                      }

                      if (!*(*(&v94 + 1) + 8 * v57))
                      {
                        goto LABEL_102;
                      }

                      v58 = CFGetTypeID(*(*(&v94 + 1) + 8 * v57));
                      if (v58 != CFDictionaryGetTypeID())
                      {
                        goto LABEL_102;
                      }

                      LODWORD(v92) = 0;
                      if (FigCFDictionaryGetIntIfPresent())
                      {
                        v59 = v53 - 1 == v92;
                      }

                      else
                      {
                        v59 = 0;
                      }

                      if (v59)
                      {
                        goto LABEL_84;
                      }

                      if (v55 == ++v57)
                      {
                        v55 = [v49 countByEnumeratingWithState:&v94 objects:v93 count:16];
                        if (v55)
                        {
                          goto LABEL_72;
                        }

                        goto LABEL_83;
                      }
                    }
                  }
                }

LABEL_86:
                objc_autoreleasePoolPop(context);
                v30 = 0;
                *a4 = v82;
                return v30;
              }

LABEL_102:
              v30 = 4294950746;
LABEL_103:
              objc_autoreleasePoolPop(context);
              goto LABEL_104;
            }

            goto LABEL_112;
          }

          v30 = 4294950745;
        }

LABEL_111:
        v9 = 0;
        goto LABEL_37;
      }
    }

LABEL_112:
    v9 = 0;
LABEL_113:
    v30 = 4294950745;
    goto LABEL_37;
  }

  v30 = v7;
LABEL_104:
  if (v82)
  {
    CFRelease(v82);
  }

  return v30;
}

uint64_t CMPhotoDNGGetLightSourceTagFromTemp(float a1)
{
  v1 = &gLightSources;
  v2 = 9999.0;
  v3 = 10;
  v4 = &gLightSources;
  while (1)
  {
    v5 = a1 - *v1;
    if (v5 < 0.0)
    {
      v5 = -v5;
    }

    if (v5 < 75.0)
    {
      break;
    }

    if (v5 < v2)
    {
      v4 = v1;
      v2 = v5;
    }

    v1 += 3;
    if (!--v3)
    {
      return *(v4 + 4);
    }
  }

  v4 = v1;
  return *(v4 + 4);
}

double CMPhotoDNGCompressorClass_Init(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void CMPhotoDNGCompressorClass_Finalize(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
    a1[3] = 0;
  }

  v3 = a1[4];
  if (v3)
  {
    CFRelease(v3);
    a1[4] = 0;
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
    a1[5] = 0;
  }

  v5 = a1[6];
  if (v5)
  {
    CFRelease(v5);
    a1[6] = 0;
  }

  v6 = a1[7];
  if (v6)
  {
    CFRelease(v6);
    a1[7] = 0;
  }

  v7 = a1[9];
  if (v7)
  {
    CFRelease(v7);
    a1[9] = 0;
  }

  v8 = a1[10];
  if (v8)
  {
    CFRelease(v8);
    a1[10] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    CFRelease(v9);
    a1[12] = 0;
  }
}

const void *_readDictType(const __CFDictionary *a1, const void *a2, uint64_t a3, _DWORD *a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (!Value || (v7 = Value, CFGetTypeID(Value) != a3))
  {
    v7 = 0;
    if (a4)
    {
      *a4 = 1;
    }
  }

  return v7;
}

uint64_t _cmphotoDNGWriterIFDBegin(uint64_t a1, int a2)
{
  _cmphotoDNGWriterReleaseTagStorage(a1);
  CFDataAppendBytes(*(a1 + 40), zero, 2);
  v4 = &CFDataGetMutableBytePtr(*(a1 + 40))[a2];
  Length = CFDataGetLength(*(a1 + 40));
  CMPhotoDNGWrite32(v4, Length, *(a1 + 48));
  *(a1 + 8) = 20;
  v6 = malloc_type_calloc(0x14uLL, 0x28uLL, 0x106004007C5E651uLL);
  *a1 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 4294950745;
  }
}

uint64_t _cmphotoDNGWriterIFDEnd(char **a1)
{
  v2 = *(a1 + 3);
  *bytes = v2;
  if (*(a1 + 48) == 1)
  {
    *bytes = bswap32(v2) >> 16;
  }

  CFDataAppendBytes(a1[5], bytes, 2);
  qsort(*a1, *(a1 + 3), 0x28uLL, _compareTagKeysAscending);
  Length = CFDataGetLength(a1[5]);
  v4 = *(a1 + 3);
  if (v4)
  {
    v5 = 0;
    v6 = 0;
    v7 = Length + 12 * v4 + 4;
    do
    {
      v8 = *a1;
      v9 = *&(*a1)[v5];
      *bytes = *&(*a1)[v5];
      if (*(a1 + 48) == 1)
      {
        *bytes = __rev16(v9);
      }

      CFDataAppendBytes(a1[5], bytes, 2);
      v10 = *(v8 + v5 + 2);
      *bytes = *(v8 + v5 + 2);
      if (*(a1 + 48) == 1)
      {
        *bytes = __rev16(v10);
      }

      CFDataAppendBytes(a1[5], bytes, 2);
      v11 = *(v8 + v5 + 4);
      *bytes = v11;
      if (*(a1 + 48) == 1)
      {
        *bytes = bswap32(v11);
      }

      CFDataAppendBytes(a1[5], bytes, 4);
      v12 = v8 + v5;
      if (*(v8 + v5 + 28) > 4u)
      {
        *&a1[3][4 * *(v12 + 24)] = v7;
        *bytes = v7;
        if (*(a1 + 48) == 1)
        {
          *bytes = bswap32(v7);
        }

        CFDataAppendBytes(a1[5], bytes, 4);
        v7 += *(v8 + v5 + 32);
      }

      else
      {
        *&a1[3][4 * *(v12 + 24)] = CFDataGetLength(a1[5]);
        CFDataAppendBytes(a1[5], (v12 + 8), 4);
      }

      ++v6;
      v5 += 40;
    }

    while (v6 < *(a1 + 3));
  }

  *bytes = 0;
  CFDataAppendBytes(a1[5], bytes, 4);
  if (*(a1 + 3))
  {
    v13 = 0;
    for (i = 0; i < *(a1 + 3); ++i)
    {
      v15 = *a1;
      v16 = &(*a1)[v13];
      if (*(v16 + 7) >= 5u)
      {
        v17 = *&a1[3][4 * *(v16 + 6)];
        if (v17 != CFDataGetLength(a1[5]))
        {
          _cmphotoDNGWriterIFDEnd_cold_1(bytes);
          return *bytes;
        }

        v18 = v15 + v13;
        v19 = *(v15 + v13 + 16);
        v20 = a1[5];
        if (v19)
        {
          BytePtr = CFDataGetBytePtr(v19);
          v22 = CFDataGetLength(*(v18 + 16));
          CFDataAppendBytes(v20, BytePtr, v22);
        }

        else
        {
          CFDataIncreaseLength(a1[5], *(v18 + 32));
        }
      }

      v13 += 40;
    }
  }

  return 0;
}

uint64_t _cmphotoDNGWriterIFDGetTagDataOffset(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (a2 == 0xFFFF || *(a1 + 16) <= a2)
  {
    v8 = v3;
    v9 = v4;
    _cmphotoDNGWriterIFDGetTagDataOffset_cold_1(&v7);
    return v7;
  }

  else
  {
    result = 0;
    *a3 = *(*(a1 + 24) + 4 * a2);
  }

  return result;
}

uint64_t _cfaPatternFromPixelFormat(int a1, unsigned int a2, void *__dst, unsigned int *a4)
{
  result = 4294950746;
  if (a1 > 1734505011)
  {
    switch(a1)
    {
      case 1734505012:
        v8 = 4;
        v7 = &kCFAPatternGBRG;
        break;
      case 1735549492:
        v8 = 4;
        v7 = &kCFAPatternGRBG;
        break;
      case 1919379252:
        v8 = 4;
        v7 = &kCFAPatternRGGB;
        break;
      default:
        return result;
    }

    goto LABEL_15;
  }

  if (a1 == 1650943796)
  {
    v8 = 4;
    v7 = &kCFAPatternBGGR;
    goto LABEL_15;
  }

  if (a1 == 1651519798 || a1 == 1651926376) && a2 <= 8 && ((0x12Fu >> a2))
  {
    v7 = *(&off_1E77ADEE8 + a2);
    v8 = dword_1A5ABCB6C[a2];
LABEL_15:
    memcpy(__dst, v7, v8);
    result = 0;
    *a4 = v8;
  }

  return result;
}

uint64_t _applyLossyJPEGPerceptualCurve(uint64_t a1, __CVBuffer *a2)
{
  v181 = *MEMORY[0x1E69E9840];
  v5 = CMPhotoPerceptualCurveVersion();
  v6.n128_u32[0] = *(a1 + 36);
  v7 = (a1 + 1944);
  if (v6.n128_f32[0] == 0.0)
  {
    v6.n128_f32[0] = 1.0;
  }

  v157 = v6;
  *(a1 + 2128) = 0;
  *(a1 + 2136) = 0;
  *v7 = 0u;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v9 = PixelFormatType;
  if (PixelFormatType == 1111970369 || PixelFormatType == 1751527984 || PixelFormatType == 1815491698)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = v10;
    if (v9 == 1751527984)
    {
      if (CVPixelBufferLockBaseAddress(a2, 1uLL))
      {
        _applyLossyJPEGPerceptualCurve_cold_1(&v180);
        a_low = LODWORD(v180.a);
        goto LABEL_90;
      }

      v12 = v11;
      WidthOfPlane = CVPixelBufferGetWidthOfPlane(a2, 0);
      HeightOfPlane = CVPixelBufferGetHeightOfPlane(a2, 0);
      BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a2, 0);
      BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
      if (HeightOfPlane)
      {
        v17 = 0;
        v18 = 0;
        v19 = vdupq_n_s16(0x1401u);
        v20 = vdupq_n_s16(0xC01u);
        v21 = 0;
        v22 = vdupq_n_s16(0x401u);
        v23.i64[0] = 0x7C007C007C007C00;
        v23.i64[1] = 0x7C007C007C007C00;
        do
        {
          if (WidthOfPlane >= 0x20)
          {
            v26 = 0uLL;
            v27 = WidthOfPlane >> 5;
            v28 = BaseAddressOfPlane;
            v25 = 0uLL;
            v24 = 0uLL;
            do
            {
              v29 = vandq_s8(*v28, v23);
              v30 = vandq_s8(v28[1], v23);
              v31 = vandq_s8(v28[2], v23);
              v32 = vandq_s8(v28[3], v23);
              v26 = vaddq_s16(vaddq_s16(vaddq_s16(v26, vcgtq_u16(v19, v29)), vaddq_s16(vcgtq_u16(v19, v30), vcgtq_u16(v19, v31))), vcgtq_u16(v19, v32));
              v25 = vaddq_s16(vaddq_s16(vaddq_s16(v25, vcgtq_u16(v20, v29)), vaddq_s16(vcgtq_u16(v20, v30), vcgtq_u16(v20, v31))), vcgtq_u16(v20, v32));
              v24 = vaddq_s16(vaddq_s16(vaddq_s16(v24, vcgtq_u16(v22, v29)), vaddq_s16(vcgtq_u16(v22, v30), vcgtq_u16(v22, v31))), vcgtq_u16(v22, v32));
              v28 += 4;
              --v27;
            }

            while (v27);
            BaseAddressOfPlane += 4 * (WidthOfPlane >> 5);
          }

          else
          {
            v24 = 0uLL;
            v25 = 0uLL;
            v26 = 0uLL;
          }

          v33 = vpaddlq_s32(vpaddlq_s16(v24));
          v34 = vpaddlq_s32(vpaddlq_s16(v26));
          v35 = vpaddlq_s32(vpaddlq_s16(v25));
          v21 = vadd_s32(vadd_s32(vzip1_s32(*v34.i8, *v35.i8), v21), vzip1_s32(*&vextq_s8(v34, v34, 8uLL), *&vextq_s8(v35, v35, 8uLL)));
          v18 += v33.i32[0] + v33.i32[2];
          BaseAddressOfPlane = (BaseAddressOfPlane + 2 * ((BytesPerRowOfPlane >> 1) - (WidthOfPlane & 0xFFFFFFFFFFFFFFE0)));
          ++v17;
        }

        while (v17 != HeightOfPlane);
        v36 = 32 * HeightOfPlane * (WidthOfPlane >> 5);
        if (v36 < -16384 * v18)
        {
          v37 = 1;
        }

        else
        {
          v37 = 2;
        }

        if (v36 >= -16384 * v21.i32[1])
        {
          v37 = 3;
        }

        if (v36 >= -16384 * v21.i32[0])
        {
          v38 = 4;
        }

        else
        {
          v38 = v37;
        }
      }

      else
      {
        v38 = 4;
      }

      CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    }

    else
    {
      v12 = v10;
      v38 = 2;
    }

    v41 = off_1ED6FA2C0();
    v178 = getkCIImageColorSpace();
    v179 = [MEMORY[0x1E695DFB0] null];
    v42 = -[objc_class imageWithCVPixelBuffer:options:](v41, "imageWithCVPixelBuffer:options:", a2, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v179 forKeys:&v178 count:1]);
    if (!v42)
    {
      _applyLossyJPEGPerceptualCurve_cold_2(&v180);
      a_low = LODWORD(v180.a);
      v11 = v12;
      goto LABEL_90;
    }

    v44 = v42;
    v43.n128_u32[0] = 1.0;
    if (v157.n128_f32[0] != 1.0 && (*(a1 + 12) == 2 || *(a1 + 156) == 16))
    {
      v43.n128_u64[0] = vmul_n_f32(*(a1 + 2156), v157.n128_f32[0]);
      *(a1 + 2156) = v43.n128_u64[0];
      v43.n128_f32[0] = v157.n128_f32[0] * *(a1 + 2164);
      *(a1 + 2164) = v43.n128_u32[0];
    }

    v176[0] = @"inputRVector";
    getCIVectorClass(v43, v157);
    v177[0] = [v45 vectorWithX:*(a1 + 2156) Y:0.0 Z:0.0 W:0.0];
    v176[1] = @"inputGVector";
    getCIVectorClass(v46, v47);
    v177[1] = [v48 vectorWithX:0.0 Y:*(a1 + 2160) Z:0.0 W:0.0];
    v176[2] = @"inputBVector";
    getCIVectorClass(v49, v50);
    v177[2] = [v51 vectorWithX:0.0 Y:0.0 Z:*(a1 + 2164) W:0.0];
    v52 = [v44 imageByApplyingFilter:@"CIColorMatrix" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v177, v176, 3)}];
    v55 = v52;
    if (*(a1 + 156) == 16 || v5 == 2)
    {
      if (v52)
      {
        v56 = [(objc_class *)getCIColorKernelClass() kernelWithString:@"kernel vec4 maxComponent (__sample s)__attribute__((outputFormat(kCIFormatRh))){\treturn vec4(vec3(max(max(s.r, s.g), s.b)), s.a);}"];
        [v55 extent];
        *&v180.a = v55;
        v55 = [v56 applyWithExtent:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v180, 1), v57, v58, v59, v60}];
        if (v55)
        {
          v61 = [(objc_class *)getCIKernelClass() kernelWithString:@"kernel vec4 downscale( sampler src)__attribute__((outputFormat(kCIFormatRh))) {      vec2 dc = (4.0 * (destCoord() - vec2(0.5))) + vec2(0.5);     vec4 s1  = sample(src, samplerTransform(src, dc + vec2(0, 0)));     float s2  = sample(src, samplerTransform(src, dc + vec2(0, 1))).r;     float s3  = sample(src, samplerTransform(src, dc + vec2(0, 2))).r;     float s4  = sample(src, samplerTransform(src, dc + vec2(0, 3))).r;     float s5  = sample(src, samplerTransform(src, dc + vec2(1, 0))).r;     float s6  = sample(src, samplerTransform(src, dc + vec2(1, 1))).r;     float s7  = sample(src, samplerTransform(src, dc + vec2(1, 2))).r;     float s8  = sample(src, samplerTransform(src, dc + vec2(1, 3))).r;     float s9  = sample(src, samplerTransform(src, dc + vec2(2, 0))).r;     float s10 = sample(src, samplerTransform(src, dc + vec2(2, 1))).r;     float s11 = sample(src, samplerTransform(src, dc + vec2(2, 2))).r;     float s12 = sample(src, samplerTransform(src, dc + vec2(2, 3))).r;     float s13 = sample(src, samplerTransform(src, dc + vec2(3, 0))).r;     float s14 = sample(src, samplerTransform(src, dc + vec2(3, 1))).r;     float s15 = sample(src, samplerTransform(src, dc + vec2(3, 2))).r;     float s16 = sample(src, samplerTransform(src, dc + vec2(3, 3))).r;     float g1 = max(max(max(s1.r, s2), s3), s4);     float g2 = max(max(max(s5, s6), s7), s8);     float g3 = max(max(max(s9, s10), s11), s12);     float g4 = max(max(max(s13, s14), s15), s16);     return vec4(vec3(max(max(max(g1, g2), g3), g4)), s1.a);}"];
          [v55 extent];
          v63 = v62;
          v65 = v64;
          v67 = v66;
          v69 = v68;
          CGAffineTransformMakeScale(&v180, 0.25, 0.25);
          v183.origin.x = v63;
          v183.origin.y = v65;
          v183.size.width = v67;
          v183.size.height = v69;
          v184 = CGRectApplyAffineTransform(v183, &v180);
          v168 = v55;
          v55 = [v61 applyWithExtent:&__block_literal_global_310 roiCallback:objc_msgSend(MEMORY[0x1E695DEC8] arguments:{"arrayWithObjects:count:", &v168, 1), v184.origin.x, v184.origin.y, v184.size.width, v184.size.height}];
        }
      }
    }

    else
    {
      CGAffineTransformMakeScale(&v180, 0.25, 0.25);
      v55 = [v55 imageByApplyingTransform:&v180 highQualityDownsample:1];
    }

    v174 = 0;
    v175 = 0;
    v172 = @"inputExtent";
    *&v70 = getCIVectorClass(v53, v54).n128_u64[0];
    v72 = v71;
    [v55 extent];
    v186 = CGRectInset(v185, -1.0, -1.0);
    v173 = [v72 vectorWithCGRect:{v186.origin.x, v186.origin.y, v186.size.width, v186.size.height}];
    v73 = [v55 imageByApplyingFilter:@"CIAreaMaximum" withInputParameters:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v173, &v172, 1)}];
    v74 = off_1ED6FA2B8();
    v75 = v74;
    if (v5 == 2)
    {
      v170[0] = getkCIContextCacheIntermediates();
      v171[0] = MEMORY[0x1E695E110];
      v170[1] = getkCIContextName();
      v171[1] = @"measure max value";
      v76 = -[objc_class contextWithOptions:](v75, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v171 forKeys:v170 count:2]);
    }

    else
    {
      v76 = [(objc_class *)v74 context];
    }

    v77 = v76;
    v78 = (a1 + 2156);
    v79 = [v73 extent];
    [v77 render:v73 toBitmap:&v174 rowBytes:16 bounds:getkCIFormatRGBAf(v79) format:0 colorSpace:{v80, v81, v82, v83}];
    v84.i32[0] = v174;
    if (*&v174 <= *(&v174 + 1))
    {
      v84.i32[0] = SHIDWORD(v174);
    }

    if (*v84.i32 <= *&v175)
    {
      v84.i32[0] = v175;
    }

    v85 = *(a1 + 420) / *(a1 + 424);
    v86 = *(a1 + 12);
    if (v86 == 2 || (v87 = *(a1 + 156), v87 == 16))
    {
      v158 = v84;
      v88 = log2f(*v84.i32);
      *v78 = vdiv_f32(*v78, vdup_lane_s32(v158, 0));
      *(a1 + 2164) = *(a1 + 2164) / *v158.i32;
      v89 = 1.0;
      v90 = 1.0;
      v11 = v12;
LABEL_51:
      v91 = 0;
      v92 = v85 + v88;
      v93 = -v92;
      if (v92 >= 0.0)
      {
        v93 = v92;
      }

      do
      {
        v94 = 1 << v91;
        v95 = (1 << v91);
        if (v91 > 0x1D)
        {
          break;
        }

        ++v91;
      }

      while ((v93 * v95) < 1073700000.0);
      v96 = 0;
      *(a1 + 420) = llroundf(v92 * v95);
      *(a1 + 424) = v94;
      *(a1 + 28) = 1;
      *(a1 + 1956) = 3;
      do
      {
        v166[v96] = 0.0;
        if (v86 == 2)
        {
          v167[v96] = 0.03125;
          *(&v168 + v96 * 4) = 1048576000;
          v97 = 0.71875;
        }

        else if (v5 == 2)
        {
          if (v90 <= 0.02)
          {
            v167[v96] = 0.015625;
            *(&v168 + v96 * 4) = 0;
            v99 = 0.0;
            v98 = 0.015625;
          }

          else if (v90 <= 0.04)
          {
            v167[v96] = 0.03125;
            *(&v168 + v96 * 4) = 1048576000;
            v99 = 0.25;
            v98 = 0.03125;
          }

          else if (v90 <= 0.08)
          {
            v167[v96] = 0.0625;
            *(&v168 + v96 * 4) = 1050924810;
            v98 = 0.0625;
            v99 = 0.32;
          }

          else if (v90 <= 0.16)
          {
            v167[v96] = 0.125;
            *(&v168 + v96 * 4) = 1050253722;
            v98 = 0.125;
            v99 = 0.3;
          }

          else if (v90 <= 0.32)
          {
            v167[v96] = 0.25;
            *(&v168 + v96 * 4) = 1043207291;
            v98 = 0.25;
            v99 = 0.17;
          }

          else if (v90 <= 0.64)
          {
            v167[v96] = 0.5;
            *(&v168 + v96 * 4) = -1095887749;
            v98 = 0.5;
            v99 = -0.34;
          }

          else
          {
            v167[v96] = 1.0;
            *(&v168 + v96 * 4) = 0;
            v98 = 1.0;
            v99 = 0.0;
          }

          v97 = (1.0 - v98) - v99;
        }

        else
        {
          if ((v89 * 0.0625) > v90)
          {
            v90 = v89 * 0.0625;
          }

          v100 = v89 * v90;
          if (v89 >= 1.0)
          {
            v100 = v90;
          }

          v167[v96] = v100;
          *(&v168 + v96 * 4) = 0;
          v97 = v89 - (v90 * v89);
          if (v89 >= 1.0)
          {
            v97 = v89 - v90;
          }
        }

        *(&v180.a + v96 * 4) = v97;
        ++v96;
      }

      while (v96 != 3);
      v101 = 0;
      v102 = (a1 + 1776);
      do
      {
        v103 = v167[v101];
        *(v102 - 3) = v166[v101];
        *(v102 - 2) = v103;
        v104 = *(&v180.a + v101);
        *(v102 - 1) = *(&v168 + v101);
        *v102 = v104;
        *v7 = 4;
        v7 = (v7 + 4);
        ++v101;
        v102 += 8;
      }

      while (v101 < *(a1 + 1956));
      if (v86 != 2)
      {
        a_low = 0;
        v106 = *(a1 + 156);
        if (v106 == 16 || v90 == 1.0)
        {
          goto LABEL_90;
        }

        v107 = 1 << v106;
        *(a1 + 2136) = v107;
        v108 = malloc_type_malloc(2 * v107, 0x1000040BDFB0063uLL);
        *(a1 + 2128) = v108;
        if (!v108 || (v109 = off_1ED6FA2A8(), v164[0] = @"inputColor0", v165[0] = -[objc_class blackColor](getCIColorClass(), "blackColor"), v164[1] = @"inputColor1", v165[1] = -[objc_class whiteColor](getCIColorClass(), "whiteColor"), v164[2] = @"inputPoint0", getCIVectorClass(v110, v111), v165[2] = [v112 vectorWithCGPoint:{0.5, 0.5}], v164[3] = @"inputPoint1", getCIVectorClass(v113, v114), v165[3] = objc_msgSend(v115, "vectorWithCGPoint:", *(a1 + 2136) + -0.5, 0.5), v116 = objc_msgSend(objc_msgSend(-[objc_class filterWithName:withInputParameters:](v109, "filterWithName:withInputParameters:", @"CILinearGradient", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v165, v164, 4)), "outputImage"), "imageByCroppingToRect:", 0.0, 0.0, *(a1 + 2136), 1.0), v162[0] = @"inputRedCoefficients", getCIVectorClass(v117, v118), v163[0] = objc_msgSend(v119, "vectorWithX:Y:Z:W:", (v166[0] / v89), (v167[0] / v89), (*&v168 / v89), (*&v180.a / v89)), v162[1] = @"inputGreenCoefficients", getCIVectorClass(v120, v121), v163[1] = objc_msgSend(v122, "vectorWithX:Y:Z:W:", (v166[1] / v89), (v167[1] / v89), (*(&v168 + 1) / v89), (*(&v180.a + 1) / v89)), v162[2] = @"inputBlueCoefficients", getCIVectorClass(v123, v124), v163[2] = objc_msgSend(v125, "vectorWithX:Y:Z:W:", (v166[2] / v89), (v167[2] / v89), (v169 / v89), (*&v180.b / v89)), (v126 = objc_msgSend(v116, "imageByApplyingFilter:withInputParameters:", @"CIColorPolynomial", objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v163, v162, 3))) == 0))
        {
          a_low = 4294950745;
          goto LABEL_90;
        }

        v127 = v126;
        v128 = off_1ED6FA2B8();
        v160 = getkCIContextName();
        v161 = @"linearizationTable creation";
        v129 = -[objc_class contextWithOptions:](v128, "contextWithOptions:", [MEMORY[0x1E695DF20] dictionaryWithObjects:&v161 forKeys:&v160 count:1]);
        v130 = *(a1 + 2128);
        v131 = 2 * *(a1 + 2136);
        v132 = [v127 extent];
        [v129 render:v127 toBitmap:v130 rowBytes:v131 bounds:getkCIFormatL16(v132) format:0 colorSpace:{v133, v134, v135, v136}];
      }

      a_low = 0;
LABEL_90:
      objc_autoreleasePoolPop(v11);
      return a_low;
    }

    if (v5 == 1 && v9 == 1751527984)
    {
      v137 = v157.n128_f32[0] * *v84.i32;
      v138 = 1.0;
      if (*v84.i32 <= 1.0)
      {
        v139 = v157.n128_f32[0];
      }

      else
      {
        v139 = v157.n128_f32[0] * *v84.i32;
      }

      if (*v84.i32 <= 1.0)
      {
        v140 = 1.0;
      }

      else
      {
        v140 = 1.0 / *v84.i32;
      }

      v11 = v12;
      if (v139 >= 2.0)
      {
        if (v139 >= 8.0)
        {
          v142 = 1.0;
        }

        else
        {
          v142 = 0.5;
        }

        if (v139 >= 8.0)
        {
          v138 = 0.5;
        }
      }

      else
      {
        v141 = v38 - 2;
        if (v38 - 2 > 2)
        {
          v142 = 0.0625;
        }

        else
        {
          v138 = flt_1A5ABCB90[v141];
          v142 = flt_1A5ABCB9C[v141];
        }
      }

      v150 = v140 * v138;
      v89 = 1.0;
      if (v150 != 1.0)
      {
        *v78 = vmul_n_f32(*v78, v150);
        *(a1 + 2164) = v150 * *(a1 + 2164);
      }

      v151 = 1.0 / v139;
      if (*v84.i32 <= 1.0)
      {
        v152 = *v84.i32;
      }

      else
      {
        v152 = 1.0;
      }

      if (v151 <= v152)
      {
        v153 = v151;
      }

      else
      {
        v153 = v152;
      }

      if (v137 <= 1.0)
      {
        v154 = 0.5;
      }

      else
      {
        v154 = 0.5 / v137;
      }

      if (v154 <= v142)
      {
        v154 = v142;
      }

      v90 = v138 * (v153 * v154);
      v155 = v139 / v138;
    }

    else
    {
      v11 = v12;
      if (v5 != 2)
      {
        v159 = *v84.i32;
        v88 = log2f(*v84.i32);
        v90 = 0.5;
        v89 = v159;
        goto LABEL_51;
      }

      if (*v84.i32 <= 1.0)
      {
        v143 = *v84.i32;
      }

      else
      {
        v143 = 1.0;
      }

      if (*v84.i32 <= 1.0)
      {
        v144 = 1.0;
      }

      else
      {
        v144 = 1.0 / *v84.i32;
      }

      if (v87 < 11)
      {
        if (v157.n128_f32[0] >= 1.5)
        {
          v149 = 1.0;
          if (v157.n128_f32[0] >= 16.0)
          {
            v149 = 0.75;
          }
        }

        else
        {
          v149 = 1.0 / v143;
        }

        if (v38 >= 3)
        {
          v90 = 0.03125;
        }

        else
        {
          v90 = 0.015625;
        }
      }

      else
      {
        v145 = 0.5;
        if (v38 == 3)
        {
          v146 = 0.5;
        }

        else
        {
          v146 = 1.0;
        }

        if (v38 == 4)
        {
          v146 = 0.25;
        }

        if (v157.n128_f32[0] < 4.0)
        {
          v145 = 1.0;
        }

        if (v157.n128_f32[0] >= 16.0)
        {
          v145 = 0.25;
        }

        if (v157.n128_f32[0] >= 1.5)
        {
          v147 = v145;
        }

        else
        {
          v147 = v146;
        }

        v148 = v147 != 1.0 || v143 <= 0.75;
        v149 = 0.75 / v143;
        if (v148)
        {
          v149 = v147;
        }

        LODWORD(v90) = 1065353216 - ((16 - v87) << 23);
      }

      v156 = v144 * v149;
      v89 = 1.0;
      if (v156 != 1.0)
      {
        *v78 = vmul_n_f32(*v78, v156);
        *(a1 + 2164) = v156 * *(a1 + 2164);
      }

      v155 = v157.n128_f32[0] / v156;
    }

    *(a1 + 36) = v155;
    v88 = log2f(v155);
    goto LABEL_51;
  }

  emitter = fig_log_get_emitter();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294950738, "<<< CMPhotoDNG >>>", 2245, v2);
}

Class initCIImage_1()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIImage");
  classCIImage_1 = result;
  off_1ED6FA2C0 = CIImageFunction_1;
  return result;
}

void *__CoreImageLibrary_block_invoke_1()
{
  result = dlopen("/System/Library/Frameworks/CoreImage.framework/CoreImage", 2);
  CoreImageLibrary_sLib_1 = result;
  return result;
}

uint64_t initValkCIImageColorSpace_0()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib_1, "kCIImageColorSpace");
  if (v0)
  {
    result = *v0;
    constantValkCIImageColorSpace_0 = result;
  }

  else
  {
    result = constantValkCIImageColorSpace_0;
  }

  getkCIImageColorSpace = kCIImageColorSpaceFunction_0;
  return result;
}

Class initCIVector_1()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIVector");
  classCIVector_1 = result;
  getCIVectorClass = CIVectorFunction_1;
  return result;
}

Class initCIColorKernel()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIColorKernel");
  classCIColorKernel = result;
  getCIColorKernelClass = CIColorKernelFunction;
  return result;
}

void ___downscaleRh_block_invoke(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  CGAffineTransformMakeScale(&v8, 4.0, 4.0);
  v9.origin.x = a1;
  v9.origin.y = a2;
  v9.size.width = a3;
  v9.size.height = a4;
  CGRectApplyAffineTransform(v9, &v8);
}

Class initCIKernel()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIKernel");
  classCIKernel = result;
  getCIKernelClass = CIKernelFunction;
  return result;
}

uint64_t initValkCIContextCacheIntermediates_0()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib_1, "kCIContextCacheIntermediates");
  if (v0)
  {
    result = *v0;
    constantValkCIContextCacheIntermediates_0 = result;
  }

  else
  {
    result = constantValkCIContextCacheIntermediates_0;
  }

  getkCIContextCacheIntermediates = kCIContextCacheIntermediatesFunction_0;
  return result;
}

uint64_t initValkCIContextName_0()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib_1, "kCIContextName");
  if (v0)
  {
    result = *v0;
    constantValkCIContextName_0 = result;
  }

  else
  {
    result = constantValkCIContextName_0;
  }

  getkCIContextName = kCIContextNameFunction_0;
  return result;
}

uint64_t initValkCIFormatRGBAf_0()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib_1, "kCIFormatRGBAf");
  if (v0)
  {
    result = *v0;
    constantValkCIFormatRGBAf_0 = result;
  }

  else
  {
    result = constantValkCIFormatRGBAf_0;
  }

  getkCIFormatRGBAf = kCIFormatRGBAfFunction_0;
  return result;
}

Class initCIColor()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIColor");
  classCIColor = result;
  getCIColorClass = CIColorFunction;
  return result;
}

uint64_t initValkCIFormatL16()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  v0 = dlsym(CoreImageLibrary_sLib_1, "kCIFormatL16");
  if (v0)
  {
    result = *v0;
    constantValkCIFormatL16 = result;
  }

  else
  {
    result = constantValkCIFormatL16;
  }

  getkCIFormatL16 = kCIFormatL16Function;
  return result;
}

void _cmphotoDNGWriterReleaseTagStorage(char **a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 3);
    if (v3)
    {
      v4 = 0;
      v5 = 16;
      do
      {
        if (*&v2[v5])
        {
          CFRelease(*&v2[v5]);
          v2 = *a1;
          *&(*a1)[v5] = 0;
          v3 = *(a1 + 3);
        }

        ++v4;
        v5 += 40;
      }

      while (v4 < v3);
    }

    *a1 = 0;
    free(v2);
  }

  a1[1] = 0;
}

void _ifdAddTagS(uint64_t a1, __int16 a2, uint64_t a3)
{
  if (a3)
  {
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree();
    if (CStringPtrAndBufferToFree)
    {
      v6 = CStringPtrAndBufferToFree;
      v7 = strlen(CStringPtrAndBufferToFree);
      _ifdAddTag4(a1, a2, 2, (v7 + 1), v6);
      free(0);
    }
  }
}

uint64_t _ifdAddTag4(uint64_t a1, __int16 a2, int a3, size_t __n, __int16 *__src)
{
  LODWORD(v6) = __n;
  v10 = *(a1 + 12);
  if (v10 == *(a1 + 8))
  {
    v11 = 2 * v10;
    v12 = malloc_type_realloc(*a1, 40 * (2 * v10), 0x106004007C5E651uLL);
    *a1 = v12;
    bzero(&v12[40 * *(a1 + 8)], 40 * (v11 - *(a1 + 8)));
    *(a1 + 8) = v11;
  }

  result = *(a1 + 16);
  if (result == *(a1 + 32))
  {
    *(a1 + 32) = 2 * result;
    *(a1 + 24) = malloc_type_realloc(*(a1 + 24), 4 * (2 * result), 0x100004052888210uLL);
    result = *(a1 + 16);
  }

  v14 = *(a1 + 12);
  v15 = *a1 + 40 * v14;
  *v15 = a2;
  *(v15 + 2) = a3;
  *(v15 + 4) = v6;
  *(v15 + 24) = result;
  v16 = tiffDataTypeToSize[a3] * v6;
  v17 = -v16 & 3;
  v18 = v17 + v16;
  *(v15 + 28) = v16;
  *(v15 + 32) = v18;
  v19 = result;
  if (__src)
  {
    if (v16 > 4)
    {
      Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v18);
      *(v15 + 16) = Mutable;
      CFDataSetLength(Mutable, *(v15 + 32));
      MutableBytePtr = CFDataGetMutableBytePtr(*(v15 + 16));
    }

    else
    {
      MutableBytePtr = (v15 + 8);
    }

    v22 = *(a1 + 48);
    if (a3 <= 5u)
    {
      if (a3 <= 2u)
      {
        goto LABEL_15;
      }

      if (a3 == 3)
      {
        goto LABEL_24;
      }

      if (a3 == 4)
      {
        goto LABEL_29;
      }
    }

    else
    {
      if (a3 <= 9u)
      {
        if (a3 - 6 >= 2)
        {
          if (a3 != 8)
          {
            goto LABEL_29;
          }

LABEL_24:
          if (v6)
          {
            v6 = v6;
            do
            {
              v25 = *__src++;
              CMPhotoDNGWrite16(MutableBytePtr++, v25, v22);
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

LABEL_15:
        memcpy(MutableBytePtr, __src, v6);
        MutableBytePtr = (MutableBytePtr + v6);
LABEL_32:
        bzero(MutableBytePtr, v17);
        v14 = *(a1 + 12);
        v19 = *(a1 + 16);
        result = *(v15 + 24);
        goto LABEL_33;
      }

      if (a3 > 0xBu)
      {
        if (a3 != 13)
        {
          if (v6)
          {
            v6 = v6;
            do
            {
              v27 = *__src;
              __src += 4;
              CMPhotoDNGWrite64(MutableBytePtr, v27, v22);
              MutableBytePtr += 4;
              --v6;
            }

            while (v6);
          }

          goto LABEL_32;
        }

        goto LABEL_29;
      }

      if (a3 != 10)
      {
LABEL_29:
        if (v6)
        {
          v6 = v6;
          do
          {
            v26 = *__src;
            __src += 2;
            CMPhotoDNGWrite32(MutableBytePtr, v26, v22);
            MutableBytePtr += 2;
            --v6;
          }

          while (v6);
        }

        goto LABEL_32;
      }
    }

    v23 = (2 * v6);
    if (v23)
    {
      do
      {
        v24 = *__src;
        __src += 2;
        CMPhotoDNGWrite32(MutableBytePtr, v24, v22);
        MutableBytePtr += 2;
        --v23;
      }

      while (v23);
    }

    goto LABEL_32;
  }

LABEL_33:
  *(a1 + 12) = v14 + 1;
  *(a1 + 16) = v19 + 1;
  return result;
}

void _ifdAddTagIlluminant(uint64_t a1, __int16 a2, unsigned int *a3)
{
  Mutable = CFDataCreateMutable(0, 18);
  *bytes = 0;
  CFDataAppendBytes(Mutable, bytes, 2);
  *bytes = bswap32(*a3);
  CFDataAppendBytes(Mutable, bytes, 4);
  *bytes = bswap32(a3[1]);
  CFDataAppendBytes(Mutable, bytes, 4);
  *bytes = bswap32(a3[2]);
  CFDataAppendBytes(Mutable, bytes, 4);
  *bytes = bswap32(a3[3]);
  CFDataAppendBytes(Mutable, bytes, 4);
  Length = CFDataGetLength(Mutable);
  BytePtr = CFDataGetBytePtr(Mutable);
  _ifdAddTag4(a1, a2, 7, Length, BytePtr);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t _cmphotoDNGOPCodeWriterStartOPCode(uint64_t a1, unsigned int a2, unsigned int a3)
{
  if (*(a1 + 12))
  {
    _cmphotoDNGOPCodeWriterStartOPCode_cold_1(bytes);
    return *bytes;
  }

  else
  {
    *(a1 + 12) = CFDataGetLength(*a1);
    *(a1 + 16) = 0;
    *bytes = bswap32(a2);
    CFDataAppendBytes(*a1, bytes, 4);
    *bytes = 769;
    CFDataAppendBytes(*a1, bytes, 4);
    *bytes = bswap32(a3);
    CFDataAppendBytes(*a1, bytes, 4);
    *bytes = 0;
    CFDataAppendBytes(*a1, bytes, 4);
    return 0;
  }
}

uint64_t _cmphotoDNGOPCodeWriterWrite32(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 12))
  {
    *bytes = bswap32(a2);
    CFDataAppendBytes(*a1, bytes, 4);
    result = 0;
    *(a1 + 16) += 4;
  }

  else
  {
    _cmphotoDNGOPCodeWriterWrite32_cold_1(&v5);
    return v5;
  }

  return result;
}

uint64_t _cmphotoDNGOPCodeWriterEndOPCode(uint64_t a1)
{
  if (*(a1 + 12))
  {
    MutableBytePtr = CFDataGetMutableBytePtr(*a1);
    CMPhotoDNGWrite32(&MutableBytePtr[*(a1 + 12) + 12], *(a1 + 16), 1);
    result = 0;
    *(a1 + 12) = 0;
    *(a1 + 16) = 0;
    ++*(a1 + 8);
  }

  else
  {
    _cmphotoDNGOPCodeWriterEndOPCode_cold_1(&v4);
    return v4;
  }

  return result;
}

void _cmphotoDNGOPCodeWriterCloseAndCopyData(uint64_t a1, CFMutableDataRef *a2)
{
  if (*(a1 + 8))
  {
    MutableBytePtr = CFDataGetMutableBytePtr(*a1);
    CMPhotoDNGWrite32(MutableBytePtr, *(a1 + 8), 1);
    v5 = *a1;
    *a1 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v5 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v5;
  }

LABEL_4:
  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }
}

uint64_t _readTag(uint64_t a1, int a2)
{
  LOWORD(v9) = CMPhotoDNGRead16(a1, a2);
  v4 = CMPhotoDNGRead16((a1 + 2), a2);
  WORD1(v9) = v4;
  v5 = CMPhotoDNGRead32((a1 + 4), a2);
  HIDWORD(v9) = v5;
  if (v5 * tiffDataTypeToSize[v4] <= 4 && ((0x2A10uLL >> v4) & 1) == 0)
  {
    if ((0xC6uLL >> v4))
    {
      __memcpy_chk();
    }

    else
    {
      v7 = v5;
      if (v4 == 8 || v4 == 3)
      {
        CMPhotoDNGRead16((a1 + 8), a2);
        if (v7 == 2)
        {
          CMPhotoDNGRead16((a1 + 10), a2);
        }
      }
    }
  }

  else
  {
    CMPhotoDNGRead32((a1 + 8), a2);
  }

  return v9;
}

void _pixelBufferPlanarReleaseCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void _pixelBufferReleaseCallback(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

Class initCIFilter()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIFilter");
  classCIFilter = result;
  off_1ED6FA2A8 = CIFilterFunction;
  return result;
}

Class initCIRenderDestination_0()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIRenderDestination");
  classCIRenderDestination_0 = result;
  off_1ED6FA2B0[0] = CIRenderDestinationFunction_0;
  return result;
}

Class initCIContext_1()
{
  if (CoreImageLibrary_sOnce_1 != -1)
  {
    initCIImage_cold_1();
  }

  result = objc_getClass("CIContext");
  classCIContext_1 = result;
  off_1ED6FA2B8 = CIContextFunction_1;
  return result;
}

CFStringRef _copyStringTag(uint64_t a1, int a2)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v4 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != a2; i += 6)
  {
    if (++v4 >= *(a1 + 24))
    {
      return 0;
    }
  }

  Tag = _readTag(i, *(a1 + 26));
  v8 = HIDWORD(Tag);
  v9 = HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5 ? (i + 4) : (*a1 + v7);
  if ((Tag & 0xFFFF0000) != 0x20000 || v9 == 0)
  {
    return 0;
  }

  if (Tag >> 33 && !v9[HIDWORD(Tag) - 1])
  {
    LODWORD(v8) = HIDWORD(Tag) - 1;
  }

  v12 = *MEMORY[0x1E695E480];

  return CFStringCreateWithBytes(v12, v9, v8, 0x8000100u, 0);
}

void _copyStringTagToDict(uint64_t a1, int a2, const void *a3, __CFDictionary *a4)
{
  v6 = _copyStringTag(a1, a2);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a4, a3, v6);

    CFRelease(v7);
  }
}

unint64_t _copyIntegerTagToDict(unint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 24))
  {
    v5 = result;
    v6 = 0;
    for (i = *(result + 16); ; i += 6)
    {
      result = CMPhotoDNGRead16(i, *(v5 + 26));
      if (result == a2)
      {
        break;
      }

      if (++v6 >= *(v5 + 24))
      {
        return result;
      }
    }

    result = _readTag(i, *(v5 + 26));
    v8 = HIDWORD(result) != 1 || WORD1(result) > 0xDu;
    if (!v8 && ((0x2BDFuLL >> (BYTE2(result) & 0xF)) & 1) != 0)
    {

      return FigCFDictionarySetInt();
    }
  }

  return result;
}

__CFArray *_createFloatArrayFromRationals(uint64_t a1, int a2, int a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v6 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != a2; i += 6)
  {
    if (++v6 >= *(a1 + 24))
    {
      return 0;
    }
  }

  Tag = _readTag(i, *(a1 + 26));
  v10 = WORD1(Tag);
  v11 = HIDWORD(Tag);
  if (HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] > 4)
  {
    if (*a1)
    {
      v12 = (*a1 + v9);
      goto LABEL_10;
    }

    return 0;
  }

  v12 = (i + 4);
LABEL_10:
  v13 = WORD1(Tag) == 10 || WORD1(Tag) == 5;
  if (!v13 || HIDWORD(Tag) != a3)
  {
    return 0;
  }

  v14 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v11, MEMORY[0x1E695E9C0]);
  if (v11)
  {
    do
    {
      v16 = CMPhotoDNGReadRational(v12, *(a1 + 26));
      v17 = 0.0;
      if (HIDWORD(v16))
      {
        if (v10 == 5)
        {
          v18 = v16;
          v19 = HIDWORD(v16);
        }

        else
        {
          v18 = v16;
          v19 = SHIDWORD(v16);
        }

        v17 = v18 / v19;
      }

      v20 = v17;
      valuePtr = v20;
      v21 = CFNumberCreate(v14, kCFNumberFloatType, &valuePtr);
      CFArrayAppendValue(Mutable, v21);
      if (v21)
      {
        CFRelease(v21);
      }

      v12 += 2;
      --a3;
    }

    while (a3);
  }

  return Mutable;
}

uint64_t _copyShortsOrLongOrRationalToDictAsArray(uint64_t a1, const void *a2, __CFDictionary *a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v6 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != 50714; i += 6)
  {
    if (++v6 >= *(a1 + 24))
    {
      return 0;
    }
  }

  v8 = _readTag(i, *(a1 + 26)) >> 16;
  switch(v8)
  {
    case 3u:

      return _copyShortsToDictAsArray(a1, 50714, a2, a3);
    case 4u:

      return _copyLongsToDictAsArray(a1, 50714, a2, a3);
    case 5u:

      return _copyRationalTagToDict(a1, 50714);
    default:
      return 0;
  }
}

uint64_t _copyShortsToDictAsArray(uint64_t a1, int a2, const void *a3, __CFDictionary *a4)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v8 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != a2; i += 6)
  {
    if (++v8 >= *(a1 + 24))
    {
      return 0;
    }
  }

  Tag = _readTag(i, *(a1 + 26));
  v12 = HIDWORD(Tag);
  v13 = HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5 ? i + 4 : (*a1 + v11);
  if ((Tag & 0xFFFF0000) != 0x30000)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v12)
  {
    while (1)
    {
      CMPhotoDNGRead16(v13, *(a1 + 26));
      if (FigCFArrayAppendInt32())
      {
        break;
      }

      ++v13;
      LODWORD(v12) = v12 - 1;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v16 = 0;
  }

  else
  {
LABEL_14:
    CFDictionarySetValue(a4, a3, v15);
    v16 = 1;
  }

  CFRelease(v15);
  return v16;
}

uint64_t _copyLongsToDictAsArray(uint64_t a1, int a2, const void *a3, __CFDictionary *a4)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v8 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != a2; i += 6)
  {
    if (++v8 >= *(a1 + 24))
    {
      return 0;
    }
  }

  Tag = _readTag(i, *(a1 + 26));
  v12 = HIDWORD(Tag);
  v13 = HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5 ? (i + 4) : (*a1 + v11);
  if ((Tag & 0xFFFF0000) != 0x40000)
  {
    return 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v12, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    return 0;
  }

  v15 = Mutable;
  if (v12)
  {
    while (1)
    {
      v16 = CMPhotoDNGRead32(v13, *(a1 + 26));
      if (CMPhotoCFArrayAppendInt32(v15, v16))
      {
        break;
      }

      ++v13;
      LODWORD(v12) = v12 - 1;
      if (!v12)
      {
        goto LABEL_14;
      }
    }

    v17 = 0;
  }

  else
  {
LABEL_14:
    CFDictionarySetValue(a4, a3, v15);
    v17 = 1;
  }

  CFRelease(v15);
  return v17;
}

uint64_t _getTagRational(uint64_t a1, int a2, uint64_t *a3)
{
  if (!*(a1 + 24))
  {
    return 0;
  }

  v6 = 0;
  for (i = *(a1 + 16); CMPhotoDNGRead16(i, *(a1 + 26)) != a2; i += 6)
  {
    if (++v6 >= *(a1 + 24))
    {
      return 0;
    }
  }

  Tag = _readTag(i, *(a1 + 26));
  if (HIDWORD(Tag) * tiffDataTypeToSize[WORD1(Tag)] < 5)
  {
    v11 = (i + 4);
  }

  else
  {
    v11 = (*a1 + v10);
  }

  if (HIDWORD(Tag) == 1 && (WORD1(Tag) == 10 || WORD1(Tag) == 5))
  {
    *a3 = CMPhotoDNGReadRational(v11, *(a1 + 26));
    return 1;
  }

  return 0;
}

const void *OUTLINED_FUNCTION_46_1()
{

  return CFDictionaryGetValue(v0, v1);
}

CFDataRef OUTLINED_FUNCTION_68_1@<X0>(unsigned int a1@<W1>, unint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, CFAllocatorRef allocator)
{
  v47 = (a3 + a1);
  if (a2 <= 4)
  {
    v48 = (v45 + 8);
  }

  else
  {
    v48 = v47;
  }

  return CFDataCreate(allocator, v48, a2);
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1, uint64_t a2, void *a3)
{

  return CFNumberGetValue(v3, kCFNumberDoubleType, a3);
}

void OUTLINED_FUNCTION_92_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, int a22, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{

  _addRawImageTags(&a24, &a31, &a22, &a20);
}

uint64_t DicomMergeImageComponents(int a1, uint64_t a2, const __CFData *a3, const __CFArray *a4, void *a5, uint64_t a6, int a7, const __CFData *a8, void *a9, void *a10, CFArrayRef a11)
{
  v27 = *MEMORY[0x1E69E9840];
  v21 = a9;
  v22 = a10;
  if (a3)
  {
    v15 = a2;
    v16 = 4294947636;
    if (!v15 || a4 || a5)
    {
      goto LABEL_9;
    }
  }

  else if (!a2)
  {
    v16 = 4294947636;
    goto LABEL_9;
  }

  if ((a7 - 7) > 0xFFFFFFF9)
  {
    std::string::basic_string[abi:ne200100]<0>(&v26, "VL Photographic Image Storage");
    vega::dicom::SOPClass::SOPClass(&v24, &v26);
    vega::dicom::File::File(v25, &v24);
  }

  fig_log_get_emitter();
  v16 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, v19, v20);
LABEL_9:

  return v16;
}

void _addCompressedDataToFile(uint64_t a1, CFDataRef theData)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  __p = 0;
  v22 = 0;
  v23 = 0;
  std::vector<vega::Byte>::__init_with_size[abi:ne200100]<std::__wrap_iter<vega::Byte*>,std::__wrap_iter<vega::Byte*>>(&__p, BytePtr, &BytePtr[Length], Length);
  std::vector<std::vector<vega::Byte>>::push_back[abi:ne200100](*a1 + 32, &__p);
  v6 = *a1;
  v8 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  if (v8 >= v7)
  {
    v10 = v6[1];
    v11 = v8 - v10;
    v12 = (v8 - v10) >> 2;
    v13 = v12 + 1;
    if ((v12 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v14 = v7 - v10;
    if (v14 >> 1 > v13)
    {
      v13 = v14 >> 1;
    }

    v15 = v14 >= 0x7FFFFFFFFFFFFFFCLL;
    v16 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v15)
    {
      v16 = v13;
    }

    if (v16)
    {
      std::allocator<int>::allocate_at_least[abi:ne200100]((v6 + 1), v16);
    }

    v17 = (v8 - v10) >> 2;
    v18 = (4 * v12);
    v19 = (4 * v12 - 4 * v17);
    *v18 = 0;
    v9 = v18 + 1;
    memcpy(v19, v10, v11);
    v20 = v6[1];
    v6[1] = v19;
    v6[2] = v9;
    v6[3] = 0;
    if (v20)
    {
      operator delete(v20);
    }
  }

  else
  {
    *v8 = 0;
    v9 = v8 + 4;
  }

  v6[2] = v9;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_1A59E3A84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void vega::dicom::DataElement::set_manipulator<vega::manipulators::EncapsulatedPixelDataManipulator>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 88))
  {
    std::mutex::lock((a1 + 256));
    v4 = *(a1 + 96);
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    std::mutex::unlock((a1 + 256));
  }

  vega::dicom::DataElement::validate_manipulator<vega::manipulators::EncapsulatedPixelDataManipulator>(a1, *a2);
  v5 = *a2;
  if (*a2)
  {
    v6 = a2[1];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 248);
  *(a1 + 240) = v5;
  *(a1 + 248) = v6;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t _estimateObjectSize(objc_object *a1)
{
  v1 = a1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = v1;
    v3 = [(objc_object *)v2 allValues];
    v13[3] += 12;
    v4 = [(objc_object *)v3 count];
    v13[3] += 12 * v4;
    v5 = [(objc_object *)v2 allKeys];
    v6 = _estimateObjectSize(v5);
    v13[3] += v6;

    v7 = _estimateObjectSize(v3);
    v13[3] += v7;

LABEL_4:
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v13[3] += 12;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZL19_estimateObjectSizeP11objc_object_block_invoke;
    v11[3] = &unk_1E77ADF38;
    v11[4] = &v12;
    [(objc_object *)v1 enumerateObjectsUsingBlock:v11];
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    v10 = [(objc_object *)v2 lengthOfBytesUsingEncoding:4];
LABEL_14:
    v13[3] += v10 + 12;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v2 = v1;
    v10 = [(objc_object *)v2 length];
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13[3] += 20;
  }

LABEL_5:
  v8 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v8;
}

void sub_1A59E3DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void vega::dicom::DataSet::new_element<vega::dictionary::ImageType>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::ImageType::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary9ImageTypeEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E3F1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::StudyInstanceUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::StudyInstanceUID::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary16StudyInstanceUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E4078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::SeriesInstanceUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::SeriesInstanceUID::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary17SeriesInstanceUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E41D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::AcquisitionUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::AcquisitionUID::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary14AcquisitionUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E4330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::SOPInstanceUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::SOPInstanceUID::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary14SOPInstanceUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E448C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::PatientName>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::PatientName::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary11PatientNameEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E45E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::SOPClassUID>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::SOPClassUID::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary11SOPClassUIDEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E4744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::Modality>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::Modality::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary8ModalityEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E48A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void vega::dicom::DataSet::new_element<vega::dictionary::NumberOfFrames>(vega::dicom::DataSet *a1)
{
  vega::dicom::DataSet::data_element(&v5, a1, &vega::dictionary::NumberOfFrames::tag_mask);
  v2 = v5;
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  if (!v2)
  {
    _ZNSt3__115allocate_sharedB8ne200100IN4vega5dicom7ElementINS1_10dictionary14NumberOfFramesEEENS_9allocatorIS6_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v4, "DataSet::new_element() -- Cannot create new element as it already exists");
  std::runtime_error::runtime_error(exception, &v4);
  exception->__vftable = &unk_1F1917110;
}

void sub_1A59E49FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary11SOPClassUIDEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1916F68;
  vega::dicom::Element<vega::dictionary::SOPClassUID>::Element(a1 + 3);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SOPClassUID>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F1916F68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC552B90);
}

void std::__shared_ptr_emplace<vega::dicom::Element<vega::dictionary::SOPClassUID>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void vega::dicom::Element<vega::dictionary::SOPClassUID>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59E4C04(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary8ModalityEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914C70;
  vega::dicom::Element<vega::dictionary::Modality>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::Modality>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59E4D44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary14NumberOfFramesEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1914968;
  vega::dicom::Element<vega::dictionary::NumberOfFrames>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::NumberOfFrames>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}

void sub_1A59E4E84(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__120__shared_ptr_emplaceIN4vega5dicom7ElementINS1_10dictionary9ImageTypeEEENS_9allocatorIS6_EEEC2B8ne200100IJES8_Li0EEES8_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F1915330;
  vega::dicom::Element<vega::dictionary::ImageType>::Element(a1 + 3);
}

void vega::dicom::Element<vega::dictionary::ImageType>::Element(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  std::allocate_shared[abi:ne200100]<vega::dicom::DataElement,std::allocator<vega::dicom::DataElement>,vega::Tag const&,vega::VR const&,0>();
}