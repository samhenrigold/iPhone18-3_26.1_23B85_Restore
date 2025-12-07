@interface _CSIRenditionBlockData
+ (uint64_t)sharedCache;
- (BOOL)expandCSIBitmapData:(uint64_t)data fromSlice:(uint64_t)slice makeReadOnly:(int)only;
- (_BYTE)setRowBytes:(_BYTE *)result;
- (_DWORD)initWithBytes:(int)bytes pixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:;
- (_DWORD)initWithPixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:;
- (uint64_t)_makeReadOnly;
- (void)_allocateImageBytes;
- (void)_freeImageBytes;
- (void)dealloc;
@end

@implementation _CSIRenditionBlockData

- (void)dealloc
{
  [(_CSIRenditionBlockData *)self _freeImageBytes];
  v3.receiver = self;
  v3.super_class = _CSIRenditionBlockData;
  [(_CSIRenditionBlockData *)&v3 dealloc];
}

- (void)_freeImageBytes
{
  if (self && (*(self + 200) & 1) != 0)
  {
    if ((*(self + 200) & 2) != 0)
    {
      munmap(*(self + 16), (vm_page_size + *(self + 32) * *(self + 24) - 1) & -vm_page_size);
      *(self + 16) = 0;
    }

    else
    {
      v2 = *(self + 16);

      free(v2);
    }
  }
}

- (uint64_t)_makeReadOnly
{
  if (result)
  {
    if ((~*(result + 200) & 3) == 0)
    {
      return mach_vm_protect(mach_task_self_, *(result + 16), (vm_page_size + *(result + 32) * *(result + 24) - 1) & -vm_page_size, 1, 1);
    }
  }

  return result;
}

- (void)_allocateImageBytes
{
  if (self)
  {
    v2 = *(self + 32) * *(self + 24);
    v3 = vm_page_size + v2 - 1;
    v4 = -vm_page_size;
    if (qword_1ED4EC008 != -1)
    {
      dispatch_once(&qword_1ED4EC008, &__block_literal_global_13);
    }

    v5 = v3 & v4;
    if (_MergedGlobals)
    {
      *(self + 16) = -1;
      v6 = *(self + 200);
    }

    else
    {
      v7 = mmap(0, v5, 3, 4098, 1275068416, 0);
      *(self + 16) = v7;
      if (v7 != -1 && madvise(v7, v5, 3) < 0)
      {
        v8 = __error();
        v9 = strerror(*v8);
        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] madvise failed error:'%s'", v9);
      }

      v6 = *(self + 200) | 2;
    }

    *(self + 200) = v6 | 1;
    *(self + 192) = v5;
    [+[CUIRuntimeStatistics sharedRuntimeStatistics](CUIRuntimeStatistics "sharedRuntimeStatistics")];
    if (*(self + 16) == -1)
    {
      if ((_MergedGlobals & 1) == 0)
      {
        v10 = __error();
        v11 = strerror(*v10);
        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] mmap failed error:'%s' using malloc now", v11);
      }

      *(self + 200) &= ~2u;
      *(self + 16) = malloc_type_malloc(v2, 0x8AF4BAACuLL);
      __CFSetLastAllocationEventName();
      if (!*(self + 16))
      {

        _CUILog(4, "[_CSIRenditionBlockData _allocateImageBytes] malloc failed error");
      }
    }
  }
}

- (BOOL)expandCSIBitmapData:(uint64_t)data fromSlice:(uint64_t)slice makeReadOnly:(int)only
{
  if (!self)
  {
    return 0;
  }

  v6 = *(self + 16);
  if (!v6)
  {
    return 0;
  }

  onlyCopy2 = only;
  v9 = *(a2 + 4);
  atomic_store(0, (self + 40));
  v10 = *(a2 + 8);
  if (v10 > 5)
  {
    if (v10 <= 8)
    {
      if (v10 == 6)
      {
        if ((decodeRadiosity((a2 + 16), *(a2 + 12), *(self + 32), v6) & 0x80000000) == 0)
        {
          goto LABEL_70;
        }

LABEL_63:
        v31 = *(a2 + 8);
LABEL_64:
        CUIConvertCompressionTypeToString(v31);
        _CUILog(4, "CoreUI: Unable to decompress stream for CSI image block data. '%s'");
        goto LABEL_68;
      }

      if (v10 != 7)
      {
        if (!CUIUncompressQuantizedImageData())
        {
          goto LABEL_63;
        }

        goto LABEL_70;
      }

LABEL_24:
      if (CUIExpandATECompressedDataIntoBuffer(a2 + 16, (v9 >> 1) & 1, v6, *(self + 8), *(self + 32)))
      {
        goto LABEL_70;
      }

      goto LABEL_63;
    }

    if (v10 <= 10)
    {
      if (v10 == 9)
      {
        if (!CUIUncompressHEVCInfoData(a2 + 16, v6, *(self + 32), *(self + 8)))
        {
          goto LABEL_63;
        }
      }

      else if (!CUIUncompressDeepmapImageData((a2 + 16), *(a2 + 12), ((*(a2 + 4) << 31) >> 31) & *(a2 + 12), v6, slice, slice >> 32, *(self + 32), *(self + 8)))
      {
        goto LABEL_63;
      }

LABEL_70:
      v11 = 1;
      goto LABEL_71;
    }

    if (v10 == 11)
    {
      if (!CUIUncompressDeepmap2ImageData((a2 + 16), *(a2 + 12), ((*(a2 + 4) << 31) >> 31) & *(a2 + 12), v6, slice, slice >> 32, *(self + 32), *(self + 8)))
      {
        CUIConvertCompressionTypeToString(*(a2 + 8));
        _CUILog(4, "CoreUI: Unable to decompress 2.0 stream for CSI image block data. '%s'");
LABEL_68:
        v11 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    if (v10 == 12)
    {
      goto LABEL_24;
    }

LABEL_67:
    _CUILog(4, "CoreUI: unhandled compressiontype for CSI image block data.%d");
    goto LABEL_68;
  }

  if (v10 <= 1)
  {
    if (!v10)
    {
      v32 = *(a2 + 12);
      if (*(self + 192) < v32)
      {
        CUIConvertCompressionTypeToString(0);
        _CUILog(4, "CoreUI: Unable to copy imagedata for rawbytes block data data. '%s'");
        goto LABEL_68;
      }

      memcpy(v6, (a2 + 16), v32);
      atomic_store(*(a2 + 12), (self + 40));
      goto LABEL_70;
    }

    if (v10 == 1)
    {
      if (!*(a2 + 12))
      {
        v31 = 1;
        goto LABEL_64;
      }

      pk_decompressData((a2 + 16), v6, data, SHIDWORD(data), slice, SHIDWORD(slice), *(self + 32), *a2 == 1296844099);
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  if ((v10 - 2) >= 3)
  {
    if (v10 == 5)
    {
      if (!CUIUncompressJPEGandLZFSEInfoData((a2 + 16), v6, *(self + 32), 8, 32, 8194))
      {
        goto LABEL_63;
      }

      goto LABEL_70;
    }

    goto LABEL_67;
  }

  dest.data = 0;
  dest.height = &dest;
  dest.width = 0x2020000000;
  atomic_store(0, &dest.rowBytes);
  v12 = a2 + 16;
  v37 = *(a2 + 4);
  if (v37)
  {
    v14 = *(a2 + 12);
    v13 = a2 + 16;
    v12 = a2 + 36;
    v17 = bswap32(*(a2 + 32));
    v18 = bswap32(*(a2 + 28));
    if (*(a2 + 16) == 1262699075)
    {
      v16 = v18;
    }

    else
    {
      v17 = *(a2 + 32);
      v16 = *(a2 + 28);
    }

    v15 = *(a2 + 16) == 1262699075;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = *(self + 24);
    v17 = *(a2 + 12);
  }

  v19 = 0;
  v20 = 0;
  if (v14 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v14;
  }

  while (1)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v22 = v17;
    v42[2] = __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke;
    v42[3] = &unk_1E7251478;
    v42[6] = v12;
    v42[7] = v17;
    v42[8] = a2;
    dataCopy = data;
    sliceCopy = slice;
    v43 = v19;
    v44 = v16;
    v42[4] = self;
    v42[5] = &dest;
    if (v37)
    {
      if (!v20)
      {
        v20 = objc_alloc_init(NSMutableArray);
      }

      v23 = [v42 copy];
      [v20 addObject:v23];
    }

    else
    {
      __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke(v42);
    }

    if (!--v21)
    {
      break;
    }

    v24 = v13 + v22;
    v26 = *(v24 + 20);
    v13 = v24 + 20;
    v25 = v26;
    if (v15)
    {
      if (v25 == 1262699075)
      {
        v12 = v13 + 20;
LABEL_45:
        v27 = vrev32_s8(*(v13 + 12));
        goto LABEL_47;
      }
    }

    else if (v25 == 1128416075)
    {
      v12 = v13 + 20;
      goto LABEL_46;
    }

    _CUILog(4, "CoreUI: Can't find the correct chunk '%d'", v25);
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_expandCSIBitmapData_fromSlice_makeReadOnly_ file:self lineNumber:@"CUIThemeRendition.m" description:981, @"CoreUI: Can't find the correct chunk"];
    v12 = v13 + 20;
    if (v15)
    {
      goto LABEL_45;
    }

LABEL_46:
    v27 = *(v13 + 12);
LABEL_47:
    if (v27.i32[0])
    {
      v19 += v16;
      v28 = atomic_load((dest.height + 24));
      v17 = v27.u32[1];
      v16 = v27.i32[0];
      if (!v28)
      {
        continue;
      }
    }

    break;
  }

  onlyCopy2 = only;
  if ((v37 & 1) != 0 && !atomic_load((dest.height + 24)))
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __69___CSIRenditionBlockData_expandCSIBitmapData_fromSlice_makeReadOnly___block_invoke_2;
    block[3] = &unk_1E724A2D0;
    block[4] = v20;
    dispatch_apply([v20 count], 0, block);
  }

  v30 = atomic_load((dest.height + 24));
  v11 = v30 == 0;
  if (v30)
  {
    _CUILog(4, "CoreUI: Image data corrupted");
  }

  _Block_object_dispose(&dest, 8);
LABEL_71:
  if (*(self + 8) == 1095911234 && *(self + 12) == 1)
  {
    v33 = *(self + 24);
    dest.data = *(self + 16);
    dest.height = v33;
    v34 = *(self + 32);
    dest.width = slice;
    dest.rowBytes = v34;
    *permuteMap = 50331906;
    if (vImagePermuteChannels_ARGB8888(&dest, &dest, permuteMap, 0) < 0)
    {
      _CUILog(4, "CoreUI: Unable to permute pixel buffer");
    }
  }

  if (onlyCopy2)
  {
    [(_CSIRenditionBlockData *)self _makeReadOnly];
  }

  return v11;
}

+ (uint64_t)sharedCache
{
  objc_opt_self();
  if (sharedCache_once != -1)
  {
    +[_CSIRenditionBlockData sharedCache];
  }

  return sharedCache_sharedCache;
}

- (_DWORD)initWithPixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:
{
  if (!self)
  {
    return 0;
  }

  v10.receiver = self;
  v10.super_class = _CSIRenditionBlockData;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  if (v8)
  {
    __bppFromBlockPixelFormat(rowbytes);
    v8[3] = rowbytes;
    v8[6] = width;
    *(v8 + 4) = CGBitmapGetAlignedBytesPerRow();
    *(v8 + 23) = height;
    [(_CSIRenditionBlockData *)v8 _allocateImageBytes];
  }

  return v8;
}

- (_DWORD)initWithBytes:(int)bytes pixelWidth:(int)width pixelHeight:(uint64_t)height sourceRowbytes:(uint64_t)rowbytes pixelFormat:
{
  if (!self)
  {
    return 0;
  }

  v14.receiver = self;
  v14.super_class = _CSIRenditionBlockData;
  v10 = objc_msgSendSuper2(&v14, sel_init);
  if (v10)
  {
    __bppFromBlockPixelFormat(rowbytes);
    v10[3] = rowbytes;
    v10[6] = width;
    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    *(v10 + 4) = AlignedBytesPerRow;
    v12 = AlignedBytesPerRow * v10[6];
    *(v10 + 23) = height;
    *(v10 + 24) = v12;
    *(v10 + 2) = a2;
  }

  return v10;
}

- (_BYTE)setRowBytes:(_BYTE *)result
{
  if (result)
  {
    v3 = result;
    if (result[200])
    {
      result = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_setRowBytes_ file:result lineNumber:@"CUIThemeRendition.m" description:589, @"You can't call setRowBytes: if _CSIRenditionBlockData was inited with initWithPixelWidth:pixelHeight:sourceRowbytes:pixelFormat:"];
    }

    *(v3 + 4) = a2;
    *(v3 + 24) = *(v3 + 6) * a2;
  }

  return result;
}

@end