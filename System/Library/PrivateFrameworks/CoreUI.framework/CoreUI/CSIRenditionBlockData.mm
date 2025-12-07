@interface CSIRenditionBlockData
@end

@implementation CSIRenditionBlockData

char *__45___CSIRenditionBlockData__allocateImageBytes__block_invoke()
{
  result = getenv("COREUI_USE_MALLOC");
  if (result)
  {
    _MergedGlobals = 1;
  }

  return result;
}

void __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke(uint64_t a1)
{
  v32 = 0;
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4 = *(a1 + 72);
  v5 = *(v2 + 32);
  v6 = CFReadStreamCreateWithBytesNoCopy(kCFAllocatorDefault, *(a1 + 48), *(a1 + 56), kCFAllocatorNull);
  if (!v6)
  {
    CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
    _CUILog(4, "CoreUI: Unable to create decompress stream for CSI bytes of length %ld '%s' image block data.");
    return;
  }

  v7 = v6;
  CFReadStreamOpen(v6);
  _StreamSys_init_read(&v32, v7);
  *v31 = 0;
  v8 = *(*(a1 + 64) + 8);
  if (v8 == 3)
  {
    v9 = 4;
  }

  else
  {
    v9 = 5;
  }

  if (v8 == 2)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  if (_BOMFileNewFromCFReadStreamSys(v31, v32, v10))
  {
    CFRelease(v7);
    CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
    _CUILog(4, "CoreUI: Unable to create BOMFile from decompress stream for CSI '%s' image block data.");
    return;
  }

  v11 = (v3 + v5 * v4);
  v12 = *(a1 + 32);
  v13 = *(v12 + 184);
  if (!v13)
  {
    if (*(v12 + 12) > 1u)
    {
      v13 = *(v12 + 32);
    }

    else
    {
      v13 = (4 * *(a1 + 88));
    }
  }

  v14 = *(v12 + 32);
  if (v14 <= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (*(*(a1 + 32) + 32) == v13)
  {
    v17 = BOMFileRead(*v31, v16, v13);
    if (v17 >= 1)
    {
      for (i = v17; i > 0; i = BOMFileRead(*v31, v16, *(*(a1 + 32) + 32)))
      {
        memcpy(v11, v16, i);
        v11 += i;
        atomic_fetch_add((*(a1 + 32) + 40), i);
      }
    }

    goto LABEL_42;
  }

  if (!*(a1 + 76))
  {
LABEL_42:
    BOMFileClose(*v31);
    BomSys_free(v32);
    CFRelease(v7);
    free(v16);
    return;
  }

  v19 = 0;
  v20 = 0;
  while (!atomic_load((*(*(a1 + 40) + 8) + 24)))
  {
    if (v13)
    {
      v22 = v11;
      v23 = v13;
      while (1)
      {
        if (atomic_load((*(*(a1 + 40) + 8) + 24)))
        {
          goto LABEL_46;
        }

        v25 = v23 >= v13 ? v13 : v23;
        v26 = BOMFileRead(*v31, v16, v25);
        if ((v26 & 0x8000000000000000) != 0)
        {
          break;
        }

        v27 = v26;
        if (!v26 && BOMFileIsEOF(*v31))
        {
          v29 = "early EOF";
          goto LABEL_45;
        }

        if (*(*(a1 + 32) + 32) >= v27)
        {
          v28 = v27;
        }

        else
        {
          v28 = *(*(a1 + 32) + 32);
        }

        memcpy(v22, v16, v28);
        v22 += v27;
        v20 += v27;
        v23 -= v27;
        if (!v23)
        {
          goto LABEL_39;
        }
      }

      v29 = "error";
LABEL_45:
      v30 = CUIConvertCompressionTypeToString(*(*(a1 + 64) + 8));
      _CUILog(4, "CoreUI: Error while decoding '%s' compressed image block data got an %s name:'%s' pixelFormat:%d at row %d", v30, v29, (*(a1 + 32) + 48), *(*(a1 + 32) + 12), v19);
      break;
    }

LABEL_39:
    if (v20 >= 1)
    {
      v11 += *(*(a1 + 32) + 32);
    }

    if (++v19 >= *(a1 + 76))
    {
      goto LABEL_42;
    }
  }

LABEL_46:
  BOMFileClose(*v31);
  BomSys_free(v32);
  CFRelease(v7);
  free(v16);
  atomic_fetch_add((*(*(a1 + 40) + 8) + 24), 1uLL);
}

uint64_t __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *([*(a1 + 32) objectAtIndex:a2] + 2);

  return v2();
}

id __37___CSIRenditionBlockData_sharedCache__block_invoke()
{
  v0 = objc_alloc_init(NSCache);
  sharedCache_sharedCache = v0;

  return [v0 setTotalCostLimit:5242880];
}

@end