uint64_t GLFormatForVulkanFormat(int a1)
{
  if ((a1 - 1000054000) > 7)
  {
    return 0;
  }

  else
  {
    return dword_18620AB08[a1 - 1000054000];
  }
}

{
  if ((a1 - 147) > 9)
  {
    return 0;
  }

  else
  {
    return dword_1862248F0[a1 - 147];
  }
}

uint64_t PVRReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

uint64_t PVRReadPlugin::decodeImageDataV2(PVRReadPlugin *this, unsigned __int8 *a2)
{
  switch(*(this + 544))
  {
    case 0:
      operator new();
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x18:
    case 0x19:
    case 0x1C:
    case 0x1D:
    case 0x1E:
    case 0x1F:
    case 0x20:
    case 0x21:
    case 0x22:
    case 0x23:
    case 0x24:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
      break;
    case 0x10:
      operator new();
    case 0x11:
      operator new();
    case 0x12:
      operator new();
    case 0x13:
      operator new();
    case 0x14:
      operator new();
    case 0x15:
      operator new();
    case 0x16:
      operator new();
    case 0x17:
      operator new();
    case 0x1A:
      operator new();
    case 0x1B:
      operator new();
    case 0x2A:
      operator new();
    case 0x2B:
      operator new();
    default:
      if (*(this + 544) == 50)
      {
        operator new();
      }

      return result;
  }

  _cg_jpeg_mem_term("decodeImageDataV2", 1104, "*** ERROR: PVRV2 PixelFormat '%02X' not handled");
  return 4294967294;
}

uint64_t PVRReadPlugin::decodeImageDataV3(PVRReadPlugin *this, unsigned __int8 *a2)
{
  if (*(this + 572) != 255)
  {
    operator new();
  }

  if (*(this + 544) <= 5u)
  {
    _cg_jpeg_mem_term("decodeImageDataV3", 1181, "*** PVRTC -- should be handled by: copyImageBlockSetPVR\n");
  }

  return 4294967293;
}

uint64_t ___Z22hardware_supports_astcv_block_invoke()
{
  result = MGGetBoolAnswer();
  hardware_supports_astc(void)::supportsASTC = result;
  return result;
}

uint64_t ASTCTextureImp::loadDataFromXPCObject(ASTCTextureImp *this, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "iio_xpc_plugin_data_astc_imp", &length);
  if (length == 232)
  {
    v4 = *data;
    v5 = data[2];
    *(this + 2) = data[1];
    *(this + 3) = v5;
    *(this + 1) = v4;
    v6 = data[3];
    v7 = data[4];
    v8 = data[6];
    *(this + 6) = data[5];
    *(this + 7) = v8;
    *(this + 4) = v6;
    *(this + 5) = v7;
    v9 = data[7];
    v10 = data[8];
    v11 = data[10];
    *(this + 10) = data[9];
    *(this + 11) = v11;
    *(this + 8) = v9;
    *(this + 9) = v10;
    v12 = data[11];
    v13 = data[12];
    v14 = data[13];
    *(this + 30) = *(data + 28);
    *(this + 13) = v13;
    *(this + 14) = v14;
    *(this + 12) = v12;
    pthread_mutex_init((this + 168), 0);
    *(this + 7) = 0;
    *(this + 58) = 0;
    *(this + 30) = 0;
    *(this + 9) = 0;
    *(this + 10) = 0;
    *(this + 16) = 0;
    *(this + 17) = 0;
    *(this + 15) = 0;
  }

  return 0;
}

uint64_t ASTCTextureImp::createDecodedDataFromLZFSECompressedData(ASTCTextureImp *this, IIOImageReadSession *a2, unsigned __int8 *a3, size_t a4, unsigned __int8 **a5, uint8_t **a6)
{
  *a5 = 0;
  *a6 = 0;
  if (!a4)
  {
    return 4294967243;
  }

  v8 = a4;
  memset(&v14, 0, sizeof(v14));
  if (compression_stream_init(&v14, COMPRESSION_STREAM_DECODE, COMPRESSION_LZFSE) == COMPRESSION_STATUS_OK)
  {
    v14.src_ptr = a3;
    v14.src_size = v8;
    v10 = malloc_type_malloc(v8, 0x100004077774924uLL);
    v11 = 0;
    while (1)
    {
      if (v11 >= v8)
      {
        v8 += v8 >> 1;
        v10 = reallocf(v10, v8);
      }

      v14.dst_ptr = &v11[v10];
      v14.dst_size = v8 - v11;
      v12 = compression_stream_process(&v14, 0);
      if (v12 == COMPRESSION_STATUS_ERROR)
      {
        break;
      }

      v11 = (v14.dst_ptr - v10);
      if (v12 == COMPRESSION_STATUS_END)
      {
        compression_stream_destroy(&v14);
        result = 0;
        *a5 = v10;
        *a6 = v11;
        return result;
      }
    }

    free(v10);
    compression_stream_destroy(&v14);
  }

  return 4294967243;
}

uint64_t ASTCTextureImp::BlockFormatForASTCBlockSize(ASTCTextureImp *this, char a2)
{
  v2 = (a2 | (16 * this));
  if (v2 > 0x87)
  {
    v3 = 13;
    v11 = 14;
    if (v2 != 204)
    {
      v11 = 0;
    }

    if (v2 != 202)
    {
      v3 = v11;
    }

    v12 = 11;
    v13 = 12;
    if (v2 != 170)
    {
      v13 = 0;
    }

    if (v2 != 168)
    {
      v12 = v13;
    }

    if ((a2 | (16 * this)) <= 0xC9u)
    {
      v3 = v12;
    }

    v7 = 8;
    v14 = 9;
    v15 = 10;
    if (v2 != 166)
    {
      v15 = 0;
    }

    if (v2 != 165)
    {
      v14 = v15;
    }

    if (v2 != 136)
    {
      v7 = v14;
    }

    v10 = (a2 | (16 * this)) <= 0xA7u;
  }

  else
  {
    v3 = 6;
    v4 = 7;
    if (v2 != 134)
    {
      v4 = 0;
    }

    if (v2 != 133)
    {
      v3 = v4;
    }

    v5 = 4;
    v6 = 5;
    if (v2 != 102)
    {
      v6 = 0;
    }

    if (v2 != 101)
    {
      v5 = v6;
    }

    if ((a2 | (16 * this)) <= 0x84u)
    {
      v3 = v5;
    }

    v7 = 1;
    v8 = 2;
    v9 = 3;
    if (v2 != 85)
    {
      v9 = 0;
    }

    if (v2 != 84)
    {
      v8 = v9;
    }

    if (v2 != 68)
    {
      v7 = v8;
    }

    v10 = (a2 | (16 * this)) <= 0x64u;
  }

  if (v10)
  {
    return v7;
  }

  else
  {
    return v3;
  }
}

uint64_t ASTCTextureImp::HDRBlockFormat(ASTCTextureImp *this, at_block_format_t a2)
{
  if (this - 1 >= 0xE)
  {
    return 0;
  }

  else
  {
    return this + 16;
  }
}

uint64_t ASTCTextureImp::MetalFormatForVulkanFormat(ASTCTextureImp *this)
{
  v1 = this - 157;
  result = 204;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 186;
      break;
    case 2:
      result = 205;
      break;
    case 3:
      result = 187;
      break;
    case 4:
      result = 206;
      break;
    case 5:
      result = 188;
      break;
    case 6:
      result = 207;
      break;
    case 7:
      result = 189;
      break;
    case 8:
      result = 208;
      break;
    case 9:
      result = 190;
      break;
    case 10:
      result = 210;
      break;
    case 11:
      result = 192;
      break;
    case 12:
      result = 211;
      break;
    case 13:
      result = 193;
      break;
    case 14:
      result = 212;
      break;
    case 15:
      result = 194;
      break;
    case 16:
      result = 213;
      break;
    case 17:
      result = 195;
      break;
    case 18:
      result = 214;
      break;
    case 19:
      result = 196;
      break;
    case 20:
      result = 215;
      break;
    case 21:
      result = 197;
      break;
    case 22:
      result = 216;
      break;
    case 23:
      result = 198;
      break;
    case 24:
      result = 217;
      break;
    case 25:
      result = 199;
      break;
    case 26:
      result = 218;
      break;
    case 27:
      result = 200;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t ASTCTextureImp::GetXYdimFromMetalFormat(uint64_t this, _BYTE *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = this - 186;
  if ((this - 186) > 0x32)
  {
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v5 = byte_18620ACC0[v4];
    v6 = byte_18620ACF3[v4];
  }

  *a2 = v5;
  *a3 = v6;
  return this;
}

uint64_t ASTCTextureImp::cacheImmediately(ASTCTextureImp *this, IIOImageReadSession *a2, const __CFDictionary *a3, CGImage *a4)
{
  pthread_mutex_lock((this + 168));
  if (!*(this + 10))
  {
    if (*(this + 41))
    {
      if (*(this + 40))
      {
        LogError("cacheImmediately", 751, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
      }

      else
      {
        ASTCTextureImp::createTwiddledDataFromTwiddled(this, a2);
      }
    }

    else if (*(this + 40))
    {
      ASTCTextureImp::createTwiddledDataFromLinearLZFSE(this, a2, 0);
    }

    else
    {
      ASTCTextureImp::createTwiddledDataFromLinear(this, a2, 0);
    }
  }

  return pthread_mutex_unlock((this + 168));
}

void ASTCTextureImp::createTwiddledDataFromLinearLZFSE(ASTCTextureImp *this, IIOImageReadSession *a2, uint64_t a3)
{
  ASTCTextureImp::createTwiddler(this, 1uLL);
  v6 = *(this + 30);
  if (v6)
  {
    if ((ASTCTwiddler::finalized(v6) & 1) == 0)
    {
      if (!*(this + 15))
      {
        *(this + 15) = IIOImageReadSession::retainBytePointer(a2, this + 16, 1);
        v7 = IIOImageSource::cf(a2);
        *(this + 17) = v7;
        CFRetain(v7);
        if (!*(this + 15))
        {
          _cg_jpeg_mem_term("createTwiddledDataFromLinearLZFSE", 911, "*** ImageIO - can't access image data\n");
          goto LABEL_19;
        }
      }

      Size = IIOImageReadSession::getSize(a2);
      v9 = *(this + 6);
      v10 = *(this + 11);
      if (v9 + v10 > Size)
      {
        LogError("createTwiddledDataFromLinearLZFSE", 881, "*** ImageIO - bad LZFSE data - (fileSize: %ld   compressedDataOffset: %ld   compressedSize: %ld)\n");
        goto LABEL_19;
      }

      v11 = (*(this + 15) + v9);
      if (v10 >= 9 && (*v11 != 846755426 || *&v11[v10 - 4] != 611874402))
      {
        LogError("createTwiddledDataFromLinearLZFSE", 900, "*** ImageIO - bad LZFSE data - no start/end marker\n");
LABEL_19:
        *(this + 10) = 0;
        v14 = -50;
        goto LABEL_20;
      }

      ASTCTwiddler::decodeAndCopyFromLinearData(*(this + 30), v11, v10, (16 * *(this + 5)), *(this + 4));
    }

    v6 = *(this + 30);
    if (!a3)
    {
      ASTCTwiddler::finalizeTwiddling(v6);
      v6 = *(this + 30);
    }
  }

  *(this + 10) = ASTCTwiddler::twiddledData(v6);
  v13 = ASTCTwiddler::twiddledDataSize(*(this + 30));
  v14 = 0;
  *(this + 18) = v13;
  *(this + 19) = 0;
  *(this + 20) = v13;
LABEL_20:
  *(this + 58) = v14;
}

void ASTCTextureImp::createLinearDataFromLinear(ASTCTextureImp *this, IIOImageReadSession *a2)
{
  v3 = *(this + 15);
  if (v3 || (*(this + 15) = IIOImageReadSession::retainBytePointer(a2, this + 16, 1), v5 = IIOImageSource::cf(a2), *(this + 17) = v5, CFRetain(v5), (v3 = *(this + 15)) != 0))
  {
    *(this + 7) = v3 + *(this + 14);
    *(this + 43) = 1;
  }

  else
  {
    _cg_jpeg_mem_term("createLinearDataFromLinear", 979, "*** Can't access image data\n");
    *(this + 7) = 0;
  }
}

uint64_t ASTCTextureImp::decodeRGBXFromLinear(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v30 = 0;
  v12 = IIOImageReadSession::retainBytePointer(a2, &v30, 0);
  Size = IIOImageReadSession::getSize(a2);
  v14 = *(this + 14);
  v15 = Size - v14;
  if (Size - v14 <= 0)
  {
    ASTCTextureImp::decodeRGBXFromLinear(a2);
    goto LABEL_25;
  }

  if (v15 < ((*(this + 9) * (*(this + 26) * *(this + 25))) * 0.125))
  {
    _cg_jpeg_mem_term("decodeRGBXFromLinear", 1162, "*** bad input data (input size: %ld  bytesNeeded: %d  (%d x %d) bpp: %g)\n");
    goto LABEL_25;
  }

  if (v12)
  {
    v16 = v12 + v14;
    if ((v16 & 0xF) == 0)
    {
      v17 = 0;
      goto LABEL_10;
    }

    IIOImageReadSession::releaseBytePointer(a2, v30);
    v30 = 0;
  }

  v16 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (v15 != IIOImageReadSession::getBytesAtOffset(a2, v16, *(this + 14), v15))
  {
    _cg_jpeg_mem_term("decodeRGBXFromLinear", 1183, "got: %ld expected: %ld\n");
    v26 = 4294967246;
    v17 = v16;
    if (!v16)
    {
      goto LABEL_20;
    }

LABEL_19:
    free(v17);
    goto LABEL_20;
  }

  v17 = v16;
  if (!v16)
  {
    ASTCTextureImp::decodeRGBXFromLinear();
LABEL_25:
    v26 = 4294967246;
    goto LABEL_20;
  }

LABEL_10:
  v18 = at_encoder_create(a6, a4, a5, a4, 0);
  if (v18)
  {
    v19 = v18;
    height = a3->height;
    dest.texels = a3->data;
    rowBytes = a3->rowBytes;
    dest.validSize.x = a3->width;
    dest.validSize.y = height;
    *(&dest.validSize + 3) = 0;
    dest.rowBytes = rowBytes;
    dest.validSize.z = 1;
    dest.sliceBytes = 0;
    *&v31.x = *&dest.validSize.x;
    v31.z = 1;
    block_counts = at_encoder_get_block_counts(v18, v31);
    v23 = block_counts;
    v24 = HIDWORD(block_counts);
    src.blocks = v16;
    src.rowBytes = at_encoder_get_block_size(v19) * block_counts;
    src.sliceBytes = v24 * v23 * at_encoder_get_block_size(v19);
    if (v15 >= src.sliceBytes)
    {
      v25 = at_encoder_decompress_texels(v19, &src, &dest, at_flags_disable_multithreading);
      if (v25 == at_error_success)
      {
        v26 = 0;
LABEL_18:

        if (!v17)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      LogError("decodeRGBXFromLinear", 1222, "at_encoder_decompress_texels returned: %ld\n", v25);
    }

    v26 = 4294967246;
    goto LABEL_18;
  }

  v26 = 4294967246;
  if (v17)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (v30)
  {
    IIOImageReadSession::releaseBytePointer(a2, v30);
  }

  return v26;
}

uint64_t ASTCTextureImp::decodeRGBXFromMemory(ASTCTextureImp *this, void *a2, size_t a3, vImage_Buffer *a4, uint64_t texelAlphaType, at_block_format_t blockType, at_texel_format_t texelType)
{
  if (!a2)
  {
    ASTCTextureImp::decodeRGBXFromMemory();
    return 4294967246;
  }

  v10 = at_encoder_create(texelType, texelAlphaType, blockType, texelAlphaType, 0);
  if (!v10)
  {
    return 4294967246;
  }

  v11 = v10;
  height = a4->height;
  dest.texels = a4->data;
  rowBytes = a4->rowBytes;
  dest.validSize.x = a4->width;
  dest.validSize.y = height;
  *(&dest.validSize + 3) = 0;
  dest.rowBytes = rowBytes;
  dest.validSize.z = 1;
  dest.sliceBytes = 0;
  *&v22.x = *&dest.validSize.x;
  v22.z = 1;
  block_counts = at_encoder_get_block_counts(v10, v22);
  v15 = block_counts;
  v16 = HIDWORD(block_counts);
  src.blocks = a2;
  src.rowBytes = at_encoder_get_block_size(v11) * block_counts;
  src.sliceBytes = v16 * v15 * at_encoder_get_block_size(v11);
  if (src.sliceBytes > a3)
  {

    return 4294967246;
  }

  v18 = at_encoder_decompress_texels(v11, &src, &dest, at_flags_default);
  if (v18)
  {
    LogError("decodeRGBXFromMemory", 1289, "at_encoder_decompress_texels returned: %ld\n", v18);
    v17 = 4294967246;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t ASTCTextureImp::decodeRGBXFromLinearLZFSE(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v40 = 0;
  v12 = IIOImageReadSession::retainBytePointer(a2, &v40, 0);
  Size = IIOImageReadSession::getSize(a2);
  if (v12)
  {
    v15 = 0;
    v16 = *(this + 6);
    v17 = v12 + v16;
    v18 = *(this + 11);
  }

  else
  {
    v15 = malloc_type_malloc(*(this + 11), 0x100004077774924uLL);
    BytesAtOffset = IIOImageReadSession::getBytesAtOffset(a2, v15, *(this + 6), *(this + 11));
    v18 = *(this + 11);
    if (BytesAtOffset != v18)
    {
      _cg_jpeg_mem_term("decodeRGBXFromLinearLZFSE", 1329, "got: %ld expected: %ld\n");
LABEL_7:
      DecodedDataFromLZFSECompressedData = 4294967246;
      if (!v15)
      {
        goto LABEL_26;
      }

LABEL_25:
      free(v15);
      goto LABEL_26;
    }

    v16 = *(this + 6);
    v17 = v15;
  }

  *(this + 8) = 0;
  v20 = (this + 64);
  if (v16 + v18 > Size)
  {
    LogError("decodeRGBXFromLinearLZFSE", 1337, "*** bad file ***  (fileSize: %ld   compressedDataOffset: %ld   compressedSize: %ld\n", Size, v16, v18);
    goto LABEL_7;
  }

  v22 = *(this + 7);
  if (v22)
  {
    free(v22);
  }

  *(this + 7) = 0;
  DecodedDataFromLZFSECompressedData = ASTCTextureImp::createDecodedDataFromLZFSECompressedData(v22, v13, v17, *(this + 11), this + 7, this + 8);
  if (DecodedDataFromLZFSECompressedData || !*v20)
  {
    ASTCTextureImp::decodeRGBXFromLinearLZFSE();
    if (v15)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v23 = at_encoder_create(a6, a4, a5, a4, 0);
    if (v23)
    {
      v24 = v23;
      height = a3->height;
      dest.texels = a3->data;
      rowBytes = a3->rowBytes;
      dest.validSize.x = a3->width;
      dest.validSize.y = height;
      *(&dest.validSize + 3) = 0;
      dest.rowBytes = rowBytes;
      dest.validSize.z = 1;
      dest.sliceBytes = 0;
      v27 = height;
      *&v41.x = *&dest.validSize.x;
      v41.z = 1;
      block_counts = at_encoder_get_block_counts(v23, v41);
      v29 = block_counts;
      v30 = HIDWORD(block_counts);
      src.blocks = *(this + 7);
      src.rowBytes = at_encoder_get_block_size(v24) * block_counts;
      src.sliceBytes = v30 * v29 * at_encoder_get_block_size(v24);
      v31 = *(this + 8);
      v32 = (a3->height * a3->width);
      if (((ASTCBitsPerPixel(*(this + 28), *(this + 32)) * v32) * 0.125) > v31)
      {
        _cg_jpeg_mem_term("decodeRGBXFromLinearLZFSE", 1372, "*** bad linearDataSize: %d for image: %dx%d\n");
      }

      else
      {
        outSize = 0;
        *&v42.x = *&dest.validSize.x;
        v42.z = 1;
        v33.bits = at_block_get_features(a5, &src, v42, *v20, &outSize, at_flags_default).bits;
        if (outSize > *v20)
        {
          v34 = *v20 / src.rowBytes * ((v33.bits >> 22) & 0xFFF);
          if (v34 >= 0xFFFFFFFF)
          {
            LODWORD(v34) = -1;
          }

          if (v34 >= v27)
          {
            LODWORD(v34) = v27;
          }

          dest.validSize.y = v34;
        }

        v35 = at_encoder_decompress_texels(v24, &src, &dest, at_flags_default);
        if (v35)
        {
          LogError("decodeRGBXFromLinearLZFSE", 1388, "at_encoder_decompress_texels returned: %ld\n", v35);
        }
      }
    }

    DecodedDataFromLZFSECompressedData = 0;
    if (v15)
    {
      goto LABEL_25;
    }
  }

LABEL_26:
  if (v40)
  {
    IIOImageReadSession::releaseBytePointer(a2, v40);
  }

  return DecodedDataFromLZFSECompressedData;
}

at_error_t ASTCTextureImp::decodeRGBXFromTwiddled(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, at_alpha_t a4, at_block_format_t a5, at_texel_format_t a6)
{
  v13 = 0;
  if (IIOImageReadSession::retainBytePointer(a2, &v13, 0))
  {
LABEL_2:
    operator new();
  }

  Size = IIOImageReadSession::getSize(a2);
  v9 = *(this + 14);
  v10 = Size - v9;
  if (Size != v9)
  {
    v11 = malloc_type_malloc(Size - v9, 0x100004077774924uLL);
    if (v10 == IIOImageReadSession::getBytesAtOffset(a2, v11, *(this + 14), v10))
    {
      if (v11)
      {
        goto LABEL_2;
      }
    }

    else
    {
      _cg_jpeg_mem_term("decodeRGBXFromTwiddled", 1446, "got: %ld expected: %ld\n");
      if (v11)
      {
        free(v11);
      }
    }
  }

  if (v13)
  {
    IIOImageReadSession::releaseBytePointer(a2, v13);
  }

  return 0;
}

uint64_t ASTCTextureImp::decodeASTCtoRGBX(ASTCTextureImp *this, IIOImageReadSession *a2, vImage_Buffer *a3, unsigned int a4, int a5)
{
  if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::once != -1)
  {
    ASTCTextureImp::decodeASTCtoRGBX();
  }

  if (a4 > 2)
  {
    v10 = at_alpha_not_premultiplied;
  }

  else
  {
    v10 = dword_18620AD28[a4];
  }

  pthread_mutex_lock((this + 168));
  v11 = ASTCTextureImp::BlockFormatForASTCBlockSize(*(this + 28), *(this + 32));
  v13 = v11;
  if (a5)
  {
    v14 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v14 = at_texel_format_rgba8_unorm;
  }

  if (*(this + 42) == 1)
  {
    v13 = ASTCTextureImp::HDRBlockFormat(v11, v12);
    v14 = at_texel_format_rgba16_float;
  }

  if (*(this + 41))
  {
    if (*(this + 40))
    {
      LogError("decodeASTCtoRGBX", 1621, "*** pre-twiddled LZFSE compressed ASTC is not supported\n");
LABEL_25:
      v16 = -50;
      goto LABEL_30;
    }

    if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle != 1)
    {
      goto LABEL_25;
    }

    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromTwiddled [%d x %d]\n", 1613, *(this + 25), *(this + 26));
    }

    v19 = ASTCTextureImp::decodeRGBXFromTwiddled(this, a2, a3, v10, v13, v14);
    if (v19)
    {
      v16 = v19;
      v17 = "*** ERROR: decodeRGBXFromTwiddled failed [%d]\n";
      v18 = 1616;
      goto LABEL_24;
    }

LABEL_38:
    v25 = 0;
    goto LABEL_39;
  }

  if ((*(this + 40) & 1) == 0)
  {
    if ((gIIODebugFlags & 0x20000) != 0)
    {
      ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromLinear [%d x %d]\n", 1591, *(this + 25), *(this + 26));
    }

    v20 = ASTCTextureImp::decodeRGBXFromLinear(this, a2, a3, v10, v13, v14);
    if (v20)
    {
      v16 = v20;
      _cg_jpeg_mem_term("decodeASTCtoRGBX", 1595, "*** ERROR: decodeRGBXFromLinear failed [%d]\n");
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  if ((gIIODebugFlags & 0x20000) != 0)
  {
    ImageIOLog("♦️  'ASTC' %d: decodeRGBXFromLinearLZFSE [%d x %d]\n", 1599, *(this + 25), *(this + 26));
  }

  v15 = ASTCTextureImp::decodeRGBXFromLinearLZFSE(this, a2, a3, v10, v13, v14);
  if (!v15)
  {
    goto LABEL_38;
  }

  v16 = v15;
  v17 = "*** ERROR: decodeRGBXFromLinearLZFSE failed [%d]\n";
  v18 = 1603;
LABEL_24:
  _cg_jpeg_mem_term("decodeASTCtoRGBX", v18, v17);
LABEL_30:
  height = a3->height;
  if (height)
  {
    data = a3->data;
    width = a3->width;
    rowBytes = a3->rowBytes;
    do
    {
      if (width)
      {
        memset_pattern16(data, &unk_18620AD40, 4 * width);
      }

      data += rowBytes;
      --height;
    }

    while (height);
  }

  if (ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle)
  {
    v25 = v16;
  }

  else
  {
    v25 = 0;
  }

LABEL_39:
  pthread_mutex_unlock((this + 168));
  return v25;
}

void ___ZN14ASTCTextureImp16decodeASTCtoRGBXEP19IIOImageReadSessionP13vImage_Buffer16CGImageAlphaInfob_block_invoke()
{
  ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle = IOPreferencesGetBoolean("ImageIO_untwiddle_for_CG", 1, 0);
  if ((ASTCTextureImp::decodeASTCtoRGBX(IIOImageReadSession *,vImage_Buffer *,CGImageAlphaInfo,BOOL)::gUntwiddle & 1) == 0)
  {

    _cg_jpeg_mem_term("decodeASTCtoRGBX_block_invoke", 1563, "*** ATX pre-twiddled data will show up as blue rects\n");
  }
}

uint64_t ASTCTextureImp::decodeASTCtoRGBX(ASTCTextureImp *this, void *a2, size_t a3, vImage_Buffer *a4, unsigned int a5, int a6)
{
  if (a5 > 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = dword_18620AD28[a5];
  }

  pthread_mutex_lock((this + 168));
  v12 = ASTCTextureImp::BlockFormatForASTCBlockSize(*(this + 28), *(this + 32));
  if (a6)
  {
    v14 = at_texel_format_bgra8_unorm;
  }

  else
  {
    v14 = at_texel_format_rgba8_unorm;
  }

  if (*(this + 42) == 1)
  {
    v12 = ASTCTextureImp::HDRBlockFormat(v12, v13);
    v14 = at_texel_format_rgba16_float;
  }

  v15 = ASTCTextureImp::decodeRGBXFromMemory(v12, a2, a3, a4, v11, v12, v14);
  if (v15)
  {
    height = a4->height;
    if (height)
    {
      data = a4->data;
      width = a4->width;
      rowBytes = a4->rowBytes;
      do
      {
        if (width)
        {
          memset_pattern16(data, &unk_18620AD40, 4 * width);
        }

        data += rowBytes;
        --height;
      }

      while (height);
    }
  }

  pthread_mutex_unlock((this + 168));
  return v15;
}

void TXMPMeta<std::string>::operator=(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  *(a1 + 8) = v3;
  WXMPMeta_IncrementRefCount_1(v3);

  WXMPMeta_DecrementRefCount_1(v2);
}

void *TXMPMeta<std::string>::TXMPMeta(void *a1, uint64_t a2)
{
  *a1 = &unk_1EF4D9060;
  a1[1] = a2;
  WXMPMeta_IncrementRefCount_1(a2);
  return a1;
}

void TXMPMeta<std::string>::TXMPMeta(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_1EF4D9060;
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  WXMPMeta_CTor_1(v3);
}

void sub_1860283CC(void *a1)
{
  __cxa_begin_catch(a1);
  WXMPMeta_DecrementRefCount_1(*(v1 + 8));
  *(v1 + 8) = 0;
  __cxa_rethrow();
}

void TXMPMeta<std::string>::~TXMPMeta(uint64_t a1)
{
  TXMPMeta<std::string>::~TXMPMeta(a1);

  JUMPOUT(0x186602850);
}

BOOL TXMPMeta<std::string>::RegisterNamespace(XMPMeta *a1, char *a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_RegisterNamespace_1(a1, a2, a3, TXMPMeta<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_1(*(a1 + 8), a2, a3, a4, a5, TXMPMeta<std::string>::SetClientString, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

BOOL TXMPMeta<std::string>::GetArrayItem(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_GetArrayItem_1(*(a1 + 8), a2, a3, a4, a5, a6, TXMPMeta<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }

  return v10 != 0;
}

void TXMPMeta<std::string>::SetProperty(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::AppendArrayItem(uint64_t a1, _BYTE *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_AppendArrayItem_1(*(a1 + 8), a2, a3, a4, a5, a6, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetStructField(uint64_t a1, char *a2, char *a3, char *a4, char *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetStructField_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetQualifier(uint64_t a1, _BYTE *a2, _BYTE *a3, _BYTE *a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetQualifier_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::DeleteProperty(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPMeta_DeleteProperty_1(*(a1 + 8), a2, a3, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPMeta<std::string>::DoesPropertyExist(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_DoesPropertyExist_1(*(a1 + 8), a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Bool(uint64_t a1, const char *a2, const char *a3, BOOL *a4, unsigned int *a5)
{
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  WXMPMeta_GetProperty_Bool_1(*(a1 + 8), a2, a3, &v12, a5, v10);
  if (*&v10[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v9 = *&v10[0];
    *exception = v11;
    exception[1] = v9;
    *(exception + 16) = 0;
  }

  v6 = v11;
  if (a4 && v11)
  {
    *a4 = v12;
  }

  return v6 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Int(uint64_t a1, const char *a2, const char *a3, int *a4, unsigned int *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_Int_1(*(a1 + 8), a2, a3, a4, a5, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

BOOL TXMPMeta<std::string>::GetProperty_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, void *a4, int *a5)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  WXMPMeta_GetProperty_Date_1(*(a1 + 8), a2, a3, a4, a5, v8);
  if (*&v8[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v7 = *&v8[0];
    *exception = v9;
    exception[1] = v7;
    *(exception + 16) = 0;
  }

  return v9 != 0;
}

void TXMPMeta<std::string>::SetProperty_Bool(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Bool_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Int(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Int_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Int64(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Int64_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Float(uint64_t a1, const char *a2, const char *a3, uint64_t a4, double a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Float_1(*(a1 + 8), a2, a3, a4, v7, a5);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SetProperty_Date(uint64_t a1, _BYTE *a2, _BYTE *a3, __int128 *a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPMeta_SetProperty_Date_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

BOOL TXMPMeta<std::string>::GetLocalizedText(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  WXMPMeta_GetLocalizedText_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, a8, TXMPMeta<std::string>::SetClientString, v11);
  if (*&v11[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v10 = *&v11[0];
    *exception = v12;
    exception[1] = v10;
    *(exception + 16) = 0;
  }

  return v12 != 0;
}

void TXMPMeta<std::string>::SetLocalizedText(uint64_t a1, _BYTE *a2, _BYTE *a3, const char *a4, _BYTE *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SetLocalizedText_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::SerializeToBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPMeta_SerializeToBuffer_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, TXMPMeta<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPMeta<std::string>::Clone(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  WXMPMeta_Clone_1(*(a1 + 8), a2, v3);
}

uint64_t TXMPMeta<std::string>::CountArrayItems(uint64_t a1, _BYTE *a2, _BYTE *a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPMeta_CountArrayItems_1(*(a1 + 8), a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7;
}

void sub_186028E74(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186028E6CLL);
}

void TXMPIterator<std::string>::~TXMPIterator(uint64_t a1)
{
  TXMPIterator<std::string>::~TXMPIterator(a1);

  JUMPOUT(0x186602850);
}

void TXMPUtils<std::string>::ComposeArrayItemPath(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_ComposeArrayItemPath_1(a1, a2, a3, a4, TXMPUtils<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::ComposeStructFieldPath(char *a1, char *a2, char *a3, _BYTE *a4, uint64_t a5)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPUtils_ComposeStructFieldPath_1(a1, a2, a3, a4, a5, TXMPUtils<std::string>::SetClientString, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::ConvertFromFloat(const char *a1, uint64_t a2, double a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPUtils_ConvertFromFloat_1(a1, a2, TXMPUtils<std::string>::SetClientString, v5, a3);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPUtils<std::string>::ConvertToBool(XMPUtils *a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPUtils_ConvertToBool_1(a1, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }

  return v5 != 0;
}

BOOL TXMPUtils<std::string>::ConvertToBool(char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return TXMPUtils<std::string>::ConvertToBool(a1);
}

uint64_t TXMPUtils<std::string>::ConvertToDate(char *a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  result = WXMPUtils_ConvertToDate_1(a1, a2, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return result;
}

uint64_t TXMPUtils<std::string>::ConvertToUTCTime(uint64_t a1)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  result = WXMPUtils_ConvertToUTCTime_1(a1, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }

  return result;
}

void TXMPUtils<std::string>::PackageForJPEG(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_PackageForJPEG_1(*(a1 + 8), a2, a3, a4, TXMPUtils<std::string>::SetClientString, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::MergeFromJPEG(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPUtils_MergeFromJPEG_1(*(a1 + 8), *(a2 + 8), v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::CatenateArrayItems(uint64_t a1, char *a2, _BYTE *a3, char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPUtils_CatenateArrayItems_1(*(a1 + 8), a2, a3, a4, a5, a6, a7, TXMPUtils<std::string>::SetClientString, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::SeparateArrayItems(uint64_t a1, XMPMeta *a2, char *a3, const char *a4, char *a5)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPUtils_SeparateArrayItems_1(*(a1 + 8), a2, a3, a4, a5, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
LABEL_6:
    *(exception + 16) = 0;
  }
}

{
  if (a5[23] < 0)
  {
    a5 = *a5;
  }

  TXMPUtils<std::string>::SeparateArrayItems(a1, a2, a3, a4, a5);
}

void TXMPUtils<std::string>::RemoveProperties(uint64_t a1, XMPMeta *a2, char *a3, const char *a4)
{
  if (!a1)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPUtils_RemoveProperties_1(*(a1 + 8), a2, a3, a4, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
LABEL_6:
    *(exception + 16) = 0;
  }
}

void TXMPUtils<std::string>::DuplicateSubtree(uint64_t a1, uint64_t a2, XMPMeta *a3, char *a4, char *a5, char *a6, const char *a7)
{
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x18uLL);
    *exception = 4;
    exception[1] = "Null output SXMPMeta pointer";
    goto LABEL_6;
  }

  v10 = 0;
  memset(v9, 0, sizeof(v9));
  WXMPUtils_DuplicateSubtree_1(*(a1 + 8), *(a2 + 8), a3, a4, a5, a6, a7, v9);
  if (*&v9[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v8 = *&v9[0];
    *exception = v10;
    exception[1] = v8;
LABEL_6:
    *(exception + 16) = 0;
  }
}

void *TXMPFiles<std::string>::~TXMPFiles(void *a1)
{
  *a1 = &unk_1EF4D90A0;
  WXMPFiles_DecrementRefCount_1(a1[1]);
  a1[1] = 0;
  return a1;
}

void TXMPFiles<std::string>::~TXMPFiles(void *a1)
{
  TXMPFiles<std::string>::~TXMPFiles(a1);

  JUMPOUT(0x186602850);
}

BOOL TXMPFiles<std::string>::OpenFile(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  WXMPFiles_OpenFile_2(*(a1 + 8), a2, a3, a4, v7);
  if (*&v7[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v6 = *&v7[0];
    *exception = v8;
    exception[1] = v6;
    *(exception + 16) = 0;
  }

  return v8 != 0;
}

void TXMPFiles<std::string>::CloseFile(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPFiles_CloseFile_1(*(a1 + 8), a2, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPFiles<std::string>::PutXMP(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  WXMPFiles_PutXMP_1(*(a1 + 8), *(a2 + 8), 0, 0, v4);
  if (*&v4[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v3 = *&v4[0];
    *exception = v5;
    exception[1] = v3;
    *(exception + 16) = 0;
  }
}

void TXMPFiles<std::string>::PutXMP(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPFiles_PutXMP_1(*(a1 + 8), 0, a2, a3, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }
}

BOOL TXMPFiles<std::string>::CanPutXMP(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  WXMPFiles_CanPutXMP_1(*(a1 + 8), *(a2 + 8), 0, 0, v5);
  if (*&v5[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v4 = *&v5[0];
    *exception = v6;
    exception[1] = v4;
    *(exception + 16) = 0;
  }

  return v6 != 0;
}

BOOL TXMPFiles<std::string>::CanPutXMP(uint64_t a1, const char *a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  WXMPFiles_CanPutXMP_1(*(a1 + 8), 0, a2, a3, v6);
  if (*&v6[0])
  {
    exception = __cxa_allocate_exception(0x18uLL);
    v5 = *&v6[0];
    *exception = v7;
    exception[1] = v5;
    *(exception + 16) = 0;
  }

  return v7 != 0;
}

void std::vector<std::string>::clear[abi:fe200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::push_back[abi:fe200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a1, a2);
  }

  else
  {
    std::vector<std::string>::__construct_one_at_end[abi:fe200100]<std::string const&>(a1, a2);
    result = v3 + 1;
  }

  *(a1 + 8) = result;
  return result;
}

CGImageMetadata *CreateMetadataFromExtendedXMPData(const char *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  kdebug_trace();
  MetadataFromXMPBufferInternal = CreateMetadataFromXMPBufferInternal(a1, a2, a3, a4, 8);
  kdebug_trace();
  return MetadataFromXMPBufferInternal;
}

void *CreateSXMPMetaFromMetadata(CFDictionaryRef *a1)
{
  if (a1)
  {
    v1 = CFGetTypeID(a1);
    if (v1 == CGImageMetadataGetTypeID())
    {
      operator new();
    }
  }

  return 0;
}

uint64_t getDefaultMetadataValueTypeForProperty(CGImageMetadataTag *a1)
{
  Source = CGImageSourceGetSource(a1);
  v2 = *(Source + 40);
  if ((v2 + 1) <= 1)
  {
    v3 = *(Source + 48);
    v4 = CFGetTypeID(v3);
    if (v4 == CFBooleanGetTypeID())
    {
      return 1;
    }

    v5 = CFGetTypeID(v3);
    if (v5 == CFNumberGetTypeID())
    {
      return 1;
    }

    v6 = CFGetTypeID(v3);
    if (v6 == CFStringGetTypeID())
    {
      return 1;
    }

    else
    {
      v8 = CFGetTypeID(v3);
      if (v8 == CFArrayGetTypeID())
      {
        return 3;
      }

      else
      {
        v9 = CFGetTypeID(v3);
        if (v9 == CFDictionaryGetTypeID())
        {
          return 6;
        }

        else
        {
          return v2;
        }
      }
    }
  }

  return v2;
}

void serializeArrayPropertyValue(uint64_t a1, char *a2, const char *a3, char *a4, const void *a5, unsigned int a6)
{
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        v6 = CFGetTypeID(a5);
        if (v6 == CFArrayGetTypeID())
        {
          Count = CFArrayGetCount(a5);
          if (Count >= 1)
          {
            v7 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(a5, v7);
              v9 = ValueAtIndex;
              if (ValueAtIndex)
              {
                break;
              }

LABEL_65:
              if (++v7 == Count)
              {
                return;
              }
            }

            v10 = CFGetTypeID(ValueAtIndex);
            if (v10 == CGImageMetadataTagGetTypeID())
            {
              Source = CGImageSourceGetSource(v9);
              IIOString::IIOString(&v53, *(Source + 16));
              UTF8String = IIOString::createUTF8String(v12);
              IIOString::~IIOString(&v53);
              IIOString::IIOString(v14, *(Source + 24));
              v16 = IIOString::createUTF8String(v15);
              IIOString::~IIOString(&v53);
              v17 = *(Source + 48);
              if (!v17)
              {
                goto LABEL_61;
              }

              DefaultMetadataValueTypeForProperty = getDefaultMetadataValueTypeForProperty(v9);
              v19 = *(Source + 56);
              if (v19)
              {
                v20 = CFGetTypeID(v19);
                if (v20 != CFArrayGetTypeID())
                {
                  v19 = 0;
                }
              }

              if (DefaultMetadataValueTypeForProperty > 3)
              {
                switch(DefaultMetadataValueTypeForProperty)
                {
                  case 4:
                    v21 = 2560;
                    break;
                  case 5:
                    v21 = 4608;
                    break;
                  case 6:
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, 0, 256);
                    TXMPUtils<std::string>::ComposeArrayItemPath(UTF8String, a4, (v7 + 1), &v53);
                    if (v55 >= 0)
                    {
                      v24 = &v53;
                    }

                    else
                    {
                      v24 = v53;
                    }

                    serializeStructPropertyValue(a1, a2, v16, v24, v17);
                    goto LABEL_60;
                  default:
                    goto LABEL_61;
                }

LABEL_56:
                v53 = 0;
                v54 = 0;
                v55 = 0;
                TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, 0, v21);
                TXMPUtils<std::string>::ComposeArrayItemPath(UTF8String, a4, (v7 + 1), &v53);
                if (v55 >= 0)
                {
                  v43 = &v53;
                }

                else
                {
                  v43 = v53;
                }

                serializeArrayPropertyValue(a1, a2, v16, v43, v17, v21);
LABEL_60:
                if (SHIBYTE(v55) < 0)
                {
                  operator delete(v53);
                  if (!UTF8String)
                  {
LABEL_63:
                    if (v16)
                    {
                      free(v16);
                    }

                    goto LABEL_65;
                  }

LABEL_62:
                  free(UTF8String);
                  goto LABEL_63;
                }

LABEL_61:
                if (!UTF8String)
                {
                  goto LABEL_63;
                }

                goto LABEL_62;
              }

              if (DefaultMetadataValueTypeForProperty != 1)
              {
                if (DefaultMetadataValueTypeForProperty == 2)
                {
                  v21 = 512;
                }

                else
                {
                  if (DefaultMetadataValueTypeForProperty != 3)
                  {
                    goto LABEL_61;
                  }

                  v21 = 1536;
                }

                goto LABEL_56;
              }

              v46 = 0;
              v9 = v17;
            }

            else
            {
              v22 = CFGetTypeID(v9);
              if (v22 == CFStringGetTypeID())
              {
                v16 = strdup(a3);
                UTF8String = strdup(a2);
                v46 = 0;
                v19 = 0;
              }

              else
              {
                v23 = CFGetTypeID(v9);
                if (v23 != CFNumberGetTypeID())
                {
                  v25 = CFGetTypeID(v9);
                  if (v25 != CFDictionaryGetTypeID())
                  {
                    v26 = CFGetTypeID(v9);
                    v27 = CFCopyTypeIDDescription(v26);
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    IIOString::IIOString(&v53, v27);
                    v29 = IIOString::utf8String(v28);
                    LogError("serializeArrayPropertyValue", 1689, "Array element has unsupported type '%s', skipping.\n", v29);
                    CFRelease(v27);
                    IIOString::~IIOString(&v53);
                  }

                  goto LABEL_65;
                }

                v16 = strdup(a3);
                UTF8String = strdup(a2);
                v9 = CFStringCreateWithFormat(0, 0, @"%@", v9);
                v19 = 0;
                v46 = v9;
              }
            }

            IIOString::IIOString(&v53, v9);
            v31 = IIOString::createUTF8String(v30);
            IIOString::~IIOString(&v53);
            if (v31)
            {
              TXMPMeta<std::string>::AppendArrayItem(a1, a2, a4, a6, v31, 0);
              if (v19 && (v32 = CFArrayGetCount(v19), v32 >= 1))
              {
                v33 = 0;
                while (1)
                {
                  v34 = CFArrayGetValueAtIndex(v19, v33);
                  v35 = CGImageSourceGetSource(v34);
                  if (!v34)
                  {
                    break;
                  }

                  v36 = v35;
                  v37 = CFGetTypeID(v34);
                  if (v37 != CGImageMetadataTagGetTypeID())
                  {
                    break;
                  }

                  IIOString::IIOString(&v53, v36[6]);
                  v39 = IIOString::createUTF8String(v38);
                  IIOString::~IIOString(&v53);
                  if (v39)
                  {
                    v53 = 0;
                    v54 = 0;
                    v55 = 0;
                    TXMPUtils<std::string>::ComposeArrayItemPath(a2, a4, (v7 + 1), &v53);
                    IIOString::IIOString(v52, v36[2]);
                    v40 = IIOString::createUTF8String(v52);
                    IIOString::~IIOString(v52);
                    IIOString::IIOString(v52, v36[4]);
                    v41 = IIOString::createUTF8String(v52);
                    IIOString::~IIOString(v52);
                    if (v55 >= 0)
                    {
                      v42 = &v53;
                    }

                    else
                    {
                      v42 = v53;
                    }

                    TXMPMeta<std::string>::SetQualifier(a1, a2, v42, v40, v41, v39, 0);
                    if (v40)
                    {
                      free(v40);
                    }

                    if (v41)
                    {
                      free(v41);
                    }

                    free(v39);
                    if (SHIBYTE(v55) < 0)
                    {
                      operator delete(v53);
                    }
                  }

                  if (v32 == ++v33)
                  {
                    goto LABEL_49;
                  }
                }

                LogMetadata("serializeArrayPropertyValue", 1720, "Qualifier at index %d for tag %s/%s is not a CGImageMetadataTagRef, skipping.\n", v33, a2, a4);
              }

              else
              {
LABEL_49:
                free(v31);
              }
            }

            if (v46)
            {
              CFRelease(v46);
            }

            goto LABEL_61;
          }
        }
      }
    }
  }
}

void serializeStructPropertyValue(uint64_t a1, char *a2, const char *a3, char *a4, const void *a5)
{
  if (a2)
  {
    if (a4)
    {
      if (a5)
      {
        v8 = CFGetTypeID(a5);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = *MEMORY[0x1E695E480];
          v54 = a2;
          cf = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
          v50 = CFStringCreateWithCString(v9, a3, 0x8000100u);
          Count = CFDictionaryGetCount(a5);
          v10 = malloc_type_malloc(8 * Count, 0x6004044C4A2DFuLL);
          values = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
          CFDictionaryGetKeysAndValues(a5, v10, values);
          v52 = v10;
          if (Count >= 1)
          {
            v11 = 0;
            while (1)
            {
              v12 = values[v11];
              if (!v12)
              {
                break;
              }

              v13 = CFGetTypeID(v12);
              TypeID = CGImageMetadataTagGetTypeID();
              v15 = values[v11];
              if (v13 != TypeID)
              {
                goto LABEL_15;
              }

              Source = CGImageSourceGetSource(values[v11]);
              v17 = Source[6];
              if (v17)
              {
                DefaultMetadataValueTypeForProperty = getDefaultMetadataValueTypeForProperty(v15);
                v19 = Source[2];
                v20 = Source[3];
                v21 = Source[7];
                if (v21)
                {
                  v22 = CFGetTypeID(v21);
                  if (v22 == CFArrayGetTypeID())
                  {
                    v23 = v21;
                  }

                  else
                  {
                    v23 = 0;
                  }
                }

                else
                {
                  v23 = 0;
                }

LABEL_17:
                IIOString::IIOString(&v59, v19);
                UTF8String = IIOString::createUTF8String(v25);
                IIOString::~IIOString(&v59);
                IIOString::IIOString(v27, v20);
                v29 = IIOString::createUTF8String(v28);
                IIOString::~IIOString(&v59);
                if (v19)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  if (UTF8String)
                  {
                    if (v29)
                    {
                      TXMPMeta<std::string>::RegisterNamespace(UTF8String, v29, &v59);
                      if (SHIBYTE(v61) < 0)
                      {
                        operator delete(v59);
                      }
                    }
                  }
                }

                IIOString::IIOString(&v59, v52[v11]);
                v31 = IIOString::createUTF8String(v30);
                IIOString::~IIOString(&v59);
                if (!v31)
                {
                  goto LABEL_62;
                }

                if ((DefaultMetadataValueTypeForProperty - 2) < 4)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  if ((DefaultMetadataValueTypeForProperty - 3) > 2)
                  {
                    v33 = 512;
                  }

                  else
                  {
                    v33 = dword_18620AE40[DefaultMetadataValueTypeForProperty - 3];
                  }

                  TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, 0, v33);
                  TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                  if (v61 >= 0)
                  {
                    v47 = &v59;
                  }

                  else
                  {
                    v47 = v59;
                  }

                  serializeArrayPropertyValue(a1, v54, v29, v47, v17, v33);
                  goto LABEL_56;
                }

                if (DefaultMetadataValueTypeForProperty == 6)
                {
                  v59 = 0;
                  v60 = 0;
                  v61 = 0;
                  TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, 0, 256);
                  TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                  if (v61 >= 0)
                  {
                    v48 = &v59;
                  }

                  else
                  {
                    v48 = v59;
                  }

                  serializeStructPropertyValue(a1, v54, v29, v48, v17);
LABEL_56:
                  if (SHIBYTE(v61) < 0)
                  {
                    operator delete(v59);
                    if (!UTF8String)
                    {
                      goto LABEL_59;
                    }

                    goto LABEL_58;
                  }
                }

                else if (DefaultMetadataValueTypeForProperty == 1)
                {
                  IIOString::IIOString(v32, v17);
                  v35 = IIOString::createUTF8String(v34);
                  IIOString::~IIOString(&v59);
                  if (v35)
                  {
                    TXMPMeta<std::string>::SetStructField(a1, v54, a4, UTF8String, v31, v35, 0);
                  }

                  v49 = v35;
                  if (v23)
                  {
                    v36 = CFArrayGetCount(v23);
                    if (v36 >= 1)
                    {
                      for (i = 0; i != v36; ++i)
                      {
                        ValueAtIndex = CFArrayGetValueAtIndex(v23, i);
                        v39 = CGImageSourceGetSource(ValueAtIndex);
                        if (ValueAtIndex && (v40 = v39, v41 = CFGetTypeID(ValueAtIndex), v41 == CGImageMetadataTagGetTypeID()))
                        {
                          IIOString::IIOString(&v59, v40[6]);
                          v43 = IIOString::createUTF8String(v42);
                          IIOString::~IIOString(&v59);
                          if (v43)
                          {
                            v59 = 0;
                            v60 = 0;
                            v61 = 0;
                            TXMPUtils<std::string>::ComposeStructFieldPath(v54, a4, UTF8String, v31, &v59);
                            IIOString::IIOString(v58, v40[2]);
                            v44 = IIOString::createUTF8String(v58);
                            IIOString::~IIOString(v58);
                            IIOString::IIOString(v58, v40[4]);
                            v45 = IIOString::createUTF8String(v58);
                            IIOString::~IIOString(v58);
                            if (v61 >= 0)
                            {
                              v46 = &v59;
                            }

                            else
                            {
                              v46 = v59;
                            }

                            TXMPMeta<std::string>::SetQualifier(a1, v54, v46, v44, v45, v43, 0);
                            if (v44)
                            {
                              free(v44);
                            }

                            if (v45)
                            {
                              free(v45);
                            }

                            free(v43);
                            if (SHIBYTE(v61) < 0)
                            {
                              operator delete(v59);
                            }
                          }
                        }

                        else
                        {
                          LogMetadata("serializeStructPropertyValue", 1948, "Qualifier at index %d for tag %s/%s is not a CGImageMetadataTagRef, skipping.\n", i, v54, a4);
                        }
                      }
                    }
                  }

                  if (v49)
                  {
                    free(v49);
                    if (!UTF8String)
                    {
                      goto LABEL_59;
                    }

LABEL_58:
                    free(UTF8String);
LABEL_59:
                    if (v29)
                    {
                      free(v29);
                    }

                    free(v31);
                    goto LABEL_62;
                  }
                }

                if (UTF8String)
                {
                  goto LABEL_58;
                }

                goto LABEL_59;
              }

LABEL_62:
              if (++v11 == Count)
              {
                goto LABEL_71;
              }
            }

            v15 = 0;
LABEL_15:
            v24 = CFGetTypeID(v15);
            if (v24 == CFStringGetTypeID())
            {
              v23 = 0;
              v17 = values[v11];
              DefaultMetadataValueTypeForProperty = 1;
              v20 = v50;
              v19 = cf;
              goto LABEL_17;
            }

            LogError("serializeStructPropertyValue", 1899, "Struct field has unsupported type, skipping.\n");
            goto LABEL_62;
          }

LABEL_71:
          if (cf)
          {
            CFRelease(cf);
          }

          if (v50)
          {
            CFRelease(v50);
          }

          if (values)
          {
            free(values);
          }

          if (v52)
          {
            free(v52);
          }
        }
      }
    }
  }
}

uint64_t SerializeMetadataForJPEGXMP(CFDictionaryRef *a1, char **a2, void *a3, char **a4, void *a5, char **a6, void *a7)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    if (a3)
    {
      if (a1 && a7)
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        IIO_InitializeXMPToolkit();
        SXMPMetaFromMetadata = CreateSXMPMetaFromMetadata(a1);
        v16 = SXMPMetaFromMetadata;
        if (SXMPMetaFromMetadata)
        {
          TXMPUtils<std::string>::PackageForJPEG(SXMPMetaFromMetadata, &v35, &v32, &v29);
          (*(*v16 + 8))(v16);
          if (v37 >= 0)
          {
            v17 = HIBYTE(v37);
          }

          else
          {
            v17 = v36;
          }

          v18 = malloc_type_malloc(v17 + 1, 0x100004077774924uLL);
          if (v37 >= 0)
          {
            v19 = &v35;
          }

          else
          {
            v19 = v35;
          }

          v20 = strncpy(v18, v19, v17 + 1);
          v20[v17] = 0;
          *a3 = v17 + 1;
          *a2 = v20;
          if (v34 >= 0)
          {
            v21 = HIBYTE(v34);
          }

          else
          {
            v21 = v33;
          }

          v22 = malloc_type_malloc(v21 + 1, 0x100004077774924uLL);
          if (v34 >= 0)
          {
            v23 = &v32;
          }

          else
          {
            v23 = v32;
          }

          v24 = strncpy(v22, v23, v21 + 1);
          v24[v21] = 0;
          *a5 = v21 + 1;
          *a4 = v24;
          if (v31 >= 0)
          {
            v25 = HIBYTE(v31);
          }

          else
          {
            v25 = v30;
          }

          v26 = malloc_type_malloc(v25 + 1, 0x100004077774924uLL);
          if (v31 >= 0)
          {
            v27 = &v29;
          }

          else
          {
            v27 = v29;
          }

          v28 = strncpy(v26, v27, v25 + 1);
          v28[v25] = 0;
          *a7 = v25 + 1;
          *a6 = v28;
        }

        IIO_TerminateXMPToolkit();
        SerializeMetadataForJPEGXMP_cold_1(&v29, &v32, &v35);
      }
    }
  }

  return 0;
}

BOOL IIO_XMPMeta_ErrorCallback(void *a1, int a2, int a3, const char *a4)
{
  if (!a2)
  {
    ++*a1;
  }

  return a2 == 0;
}

const char *___ZL35CreateMetadataFromXMPBufferInternalPKcmS0_mj_block_invoke()
{
  result = getenv("IIO_SkipExtendedXMP");
  if (result)
  {
    result = atoi(result);
  }

  gIIO_SkipExtendedXMP = result;
  return result;
}

void sub_18602B8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  TXMPIterator<std::string>::~TXMPIterator(&a25);
  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (*(v33 - 137) < 0)
  {
    operator delete(*(v33 - 160));
  }

  if (*(v33 - 113) < 0)
  {
    operator delete(*(v33 - 136));
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  _Unwind_Resume(a1);
}

void std::vector<std::string>::__construct_one_at_end[abi:fe200100]<std::string const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:fe200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:fe200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void *ICOReadPlugin::ICOReadPlugin(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = IIOReadPlugin::IIOReadPlugin(a1, a2, a3, a4, a5);
  *result = &unk_1EF4D9110;
  return result;
}

void ICOReadPlugin::~ICOReadPlugin(ICOReadPlugin *this)
{
  IIOReadPlugin::~IIOReadPlugin(this);

  JUMPOUT(0x186602850);
}

uint64_t ICOReadPlugin::loadDataFromXPCObject(ICOReadPlugin *this, void *a2)
{
  result = IIOReadPlugin::loadDataFromXPCObject(this, a2);
  if (!result)
  {
    length = 0;
    data = xpc_dictionary_get_data(a2, "iio_xpc_plugin_data_ico", &length);
    if (length == 8)
    {
      v6 = data;
      result = 0;
      *(this + 58) = *v6;
    }

    else
    {
      return 4294967246;
    }
  }

  return result;
}

uint64_t ICOReadPlugin::saveDataToXPCObject(ICOReadPlugin *this, void *a2)
{
  v4 = IIOReadPlugin::saveDataToXPCObject(this, a2);
  if (!v4)
  {
    iio_xpc_dictionary_add_databuffer(a2, "iio_xpc_plugin_data_ico", this + 464, 8uLL);
  }

  return v4;
}

uint64_t ICOReadPlugin::initialize(IIOImageReadSession **this, IIODictionary *a2)
{
  __dst[0] = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  IIOScanner::IIOScanner(&v60, this[3]);
  if (*(this + 369) != 1 || (v55 = a2, IIOScanner::getBytes(&v60, &v65, 6uLL), v4 = v66, !v66) || *(this + 56) >= v66)
  {
    v23 = 4294967246;
    goto LABEL_95;
  }

  v5 = malloc_type_calloc(v66, 0x10uLL, 0x1000040451B5BE8uLL);
  if (IIOScanner::getBytes(&v60, v5, 16 * v4) != 16 * v4)
  {
    v53 = 0;
    v23 = 4294967246;
    goto LABEL_92;
  }

  v6 = 0;
  v7 = (16 * v4) | 6;
  __base = v5;
  v8 = (v5 + 3);
  do
  {
    if (BYTE2(v65) == 2)
    {
      v9 = this[7];
      IIONumber::IIONumber(&v57, *(v8 - 1));
      IIODictionary::setObjectForKey(v9, &v57, @"hotspotX");
      IIONumber::~IIONumber(&v57);
      v10 = this[7];
      IIONumber::IIONumber(&v57, *v8);
      IIODictionary::setObjectForKey(v10, &v57, @"hotspotY");
      IIONumber::~IIONumber(&v57);
      *(v8 - 1) = 65537;
      v11 = 1;
    }

    else
    {
      v11 = *v8;
    }

    v12 = *(v8 - 6);
    v13 = *(v8 - 5);
    if (v12 | v13)
    {
      v16 = (v12 - 12) > 0xFFFFFFF4 || (v13 - 12) > 0xFFFFFFF4;
      if (v16 || v11 > 0x20 || ((1 << v11) & 0x101000113) == 0 || (v17 = *(v8 + 1), v17 < 0x28) || (v18 = *(v8 + 3), v18 < v7) || v61 < v18)
      {
        _cg_jpeg_mem_term("initialize", 188, "*** ERROR: ICO#%2d - bad dimension (%3dx%3d) | bitDepth (%6d) | offset (%10ld) - skipping\n");
LABEL_39:
        *(v8 - 3) = 0;
        *(v8 + 1) = 0;
        goto LABEL_40;
      }

      if (!v11 && *(v8 - 6) && *(v8 - 5))
      {
        v19 = 4 * v13;
        v20 = 4 * v13 * ((v12 + 31) >> 5);
        v21 = v20 + 40;
        if (v20 + 40 + v20 >= v17)
        {
          *v8 = 1;
          goto LABEL_40;
        }

        if ((v19 * ((2 * v12 + 31) >> 5)) + v21 - 120 >= v17)
        {
          v22 = 2;
LABEL_46:
          *v8 = v22;
          goto LABEL_40;
        }

        if (v21 + (v19 * ((4 * v12 + 31) >> 5) + 64) >= v17)
        {
          v22 = 4;
          goto LABEL_46;
        }

        if (v21 + (v19 * ((8 * v12 + 31) >> 5) + 1024) >= v17)
        {
          v22 = 8;
          goto LABEL_46;
        }

        if (v21 + (v19 * ((24 * v12 + 31) >> 5)) < v17)
        {
          if (v21 + (4 * v12 * v13) < v17)
          {
            _cg_jpeg_mem_term("initialize", 218, "*** ERROR: skipping bad ICO#%d - [2]\n");
            goto LABEL_39;
          }

          v22 = 32;
          goto LABEL_46;
        }

        *v8 = 24;
      }
    }

    else
    {
      v14 = v11 > 0x20 || ((1 << v11) & 0x101000113) == 0;
      if (v14 || (v15 = *(v8 + 3), *(v8 + 1) < 0x28u) || v15 < v7 || v61 < v15)
      {
        _cg_jpeg_mem_term("initialize", 172, "*** ERROR: ICO#%2d - bad dimension (%3dx%3d) | bitDepth (%6d) | offset (%10ld) - skipping\n");
        goto LABEL_39;
      }
    }

LABEL_40:
    ++v6;
    v8 += 8;
  }

  while (v4 != v6);
  v24 = v5;
  qsort_b(v5, v4, 0x10uLL, &__block_literal_global_19);
  v25 = &v5[8 * *(this + 56)];
  BytesAtOffset = IIOScanner::getBytesAtOffset(&v60, __dst, *(v25 + 3), 4uLL);
  v27.i32[0] = __dst[0];
  v28 = vmovl_u8(v27).u64[0];
  v29 = vuzp1_s8(v28, v28).u32[0];
  if (BytesAtOffset == 4 && v29 == 1196314761)
  {
    IIONumber::IIONumber(&v57, 1347307296);
    IIODictionary::setObjectForKey(v55, value[0], @"NEW_PLUGIN_ostype");
    IIONumber::~IIONumber(&v57);
    IIONumber::IIONumber(&v57, *(v25 + 3));
    IIODictionary::setObjectForKey(v55, value[0], @"NEW_PLUGIN_dataOffset");
    IIONumber::~IIONumber(&v57);
    IIONumber::IIONumber(&v57, *v25);
    IIODictionary::setObjectForKey(v55, value[0], @"NEW_PLUGIN_expectedWidth");
    IIONumber::~IIONumber(&v57);
    IIONumber::IIONumber(&v57, *(v25 + 1));
    IIODictionary::setObjectForKey(v55, value[0], @"NEW_PLUGIN_expectedHeight");
    IIONumber::~IIONumber(&v57);
    v23 = 4294967247;
    goto LABEL_75;
  }

  v31 = *(v25 + 2);
  v23 = 4294967246;
  if (v31 < 0x29 || (v32 = *(v25 + 3), !v32))
  {
LABEL_75:
    free(v24);
    goto LABEL_95;
  }

  v59 = 0;
  v57 = 0u;
  *value = 0u;
  if (IIOScanner::getBytesAtOffset(&v60, &v57, v32, 0x28uLL) != 40)
  {
LABEL_101:
    v23 = 4294967246;
    goto LABEL_75;
  }

  v33 = HIWORD(v57);
  if (DWORD1(v57) <= *v25)
  {
    v34 = *v25;
  }

  else
  {
    v34 = DWORD1(v57);
  }

  if (DWORD2(v57) >> 1 <= *(v25 + 1))
  {
    v35 = *(v25 + 1);
  }

  else
  {
    v35 = DWORD2(v57) >> 1;
  }

  if (v34 && (v34 - 257) < 0xFFFFFF0B)
  {
    v36 = "*** ERROR: unsupported width: %d\n";
    v37 = 286;
LABEL_100:
    _cg_jpeg_mem_term("initialize", v37, v36);
    v24 = __base;
    goto LABEL_101;
  }

  if (v35 && (v35 - 257) < 0xFFFFFF0B)
  {
    v36 = "*** ERROR: unsupported height: %d\n";
    v37 = 287;
    goto LABEL_100;
  }

  v36 = "*** ERROR: unsupported bpp: %d\n";
  v37 = 288;
  if (HIWORD(v57) > 0x20u || ((1 << SBYTE14(v57)) & 0x101000112) == 0)
  {
    goto LABEL_100;
  }

  LODWORD(v38) = 0;
  v39 = 0;
  *(this + 61) = v34;
  *(this + 62) = v35;
  if (v33 > 7)
  {
    switch(v33)
    {
      case 32:
        v39 = 0;
        LODWORD(v38) = 0;
        this[36] = 0x3000400200008;
        *(this + 63) = 4 * v34;
        *(this + 64) = 2097160;
        *(this + 130) = 4;
        *(this + 262) = 3;
        v47 = 1;
        v48 = 378;
        this[20] = 0;
        break;
      case 24:
        v39 = 0;
        LODWORD(v38) = 0;
        this[20] = 0;
        *(this + 63) = (3 * v34 + 7) & 0xFF8;
        *(this + 64) = 1572872;
        *(this + 130) = 3;
        this[36] = 0x5000400200008;
        *(this + 71) = (4 * v34 + 15) & 0xFF0;
        *(this + 262) = 0;
        v47 = 1;
        v48 = 378;
        break;
      case 8:
LABEL_78:
        v38 = 4 << v33;
        if (v31 > (4 << v33) + 40)
        {
          v39 = malloc_type_calloc(4 << v33, 1uLL, 0x100004077774924uLL);
          if (IIOScanner::getBytesAtOffset(&v60, v39, (v32 + 40), 4 << v33) == v38)
          {
            v40 = (v39 + 1);
            v41 = v39 + 2;
            v42 = 1 << v33;
            do
            {
              v43 = *v40;
              v44 = *(v40 - 1);
              *(v41 - 2) = v40[1];
              *(v41 - 1) = v43;
              *v41 = v44;
              v41 += 3;
              v40 += 4;
              --v42;
            }

            while (v42);
            v45 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
            this[20] = CGColorSpaceCreateIndexed(v45, (1 << v33) - 1, v39);
            CGColorSpaceRelease(v45);
            *(this + 129) = v33;
            *(this + 128) = v33;
            *(this + 130) = 1;
            *(this + 63) = ((v34 * v33 + 31) >> 3) & 0x7FFFFC;
            if (v33 == 1)
            {
              v46 = 1;
            }

            else
            {
              v46 = 2;
            }

            *(this + 71) = v34 << v46;
            *(this + 72) = 1048584;
            *(this + 146) = 2;
            v47 = 3;
            v48 = 294;
            break;
          }

          v5 = __base;
LABEL_105:
          v52 = 0;
          v53 = 0;
          v51 = 4294967246;
          v23 = 4294967246;
          if (!v39)
          {
            goto LABEL_92;
          }

LABEL_91:
          free(v39);
          v53 = v52;
          v23 = v51;
          goto LABEL_92;
        }

        v23 = 4294967246;
        v24 = __base;
        goto LABEL_75;
      default:
        goto LABEL_89;
    }

    *(this + v48) = v47;
    goto LABEL_89;
  }

  if (v33 == 1 || v33 == 4)
  {
    goto LABEL_78;
  }

LABEL_89:
  *(this + 85) = 1380401696;
  *(this + 372) = 0;
  *(this + 374) = 0;
  v49 = v57 + v38;
  v50 = (v57 + v38 + v32);
  this[26] = v50;
  this[58] = (v31 - v49);
  if (this[25] <= v50)
  {
    _cg_jpeg_mem_term("initialize", 376, "bad offset %d > fileSize %d\n");
    v5 = __base;
    goto LABEL_105;
  }

  v51 = 0;
  v23 = 0;
  v52 = 1;
  this[49] = 1;
  *(this + 204) = 1;
  v53 = 1;
  v5 = __base;
  if (v39)
  {
    goto LABEL_91;
  }

LABEL_92:
  if (v5)
  {
    free(v5);
  }

  if ((v53 & 1) == 0)
  {
LABEL_95:
    kdebug_trace();
  }

  IIOScanner::~IIOScanner(&v60);
  return v23;
}

void sub_18602C650(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t ___ZN13ICOReadPlugin10initializeEP13IIODictionary_block_invoke(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (!*a2)
  {
    v3 = 256;
  }

  if (*a3)
  {
    v4 = *a3;
  }

  else
  {
    v4 = 256;
  }

  v5 = *(a2 + 3);
  v6 = *(a3 + 3);
  if (v5 < v6)
  {
    return 1;
  }

  if (v5 > v6)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = v3 >= v4;
  if (v3 <= v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v8)
  {
    return v9;
  }

  else
  {
    return 1;
  }
}

uint64_t ICOReadPlugin::setupCallback(uint64_t a1, CFDictionaryRef *a2)
{
  v2 = *(a1 + 408);
  if (v2 == 12)
  {
    return IIOReadPlugin::setupImageProviderCallbackV2(a1, a2);
  }

  if (v2 == 1)
  {
    return IIOReadPlugin::setupCallback(a1, a2);
  }

  return 4294967246;
}

const char *IIODebug_ShowBacktrace(int a1)
{
  v7[128] = *MEMORY[0x1E69E9840];
  bzero(v7, 0x400uLL);
  memset(&v6, 0, sizeof(v6));
  result = backtrace(v7, 128);
  if (a1 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a1;
  }

  if (result < a1)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4 < result)
  {
    v5 = result;
    do
    {
      if (dladdr(v7[v4], &v6))
      {
        result = ImageIOLog("%1.*s<%s+%ld>\n");
      }

      else
      {
        result = ImageIOLog("%1.*s%08lx\n");
      }

      ++v4;
    }

    while (v5 != v4);
  }

  return result;
}

const char *LogSurfaceFormat(__IOSurface *a1, const char *a2, const char *a3, int a4)
{
  PixelFormat = IOSurfaceGetPixelFormat(a1);
  Width = IOSurfaceGetWidth(a1);
  Height = IOSurfaceGetHeight(a1);
  v7 = PixelFormat >> 24;
  v8 = MEMORY[0x1E69E9830];
  if ((PixelFormat >> 24) <= 0x7F)
  {
    v9 = *(MEMORY[0x1E69E9830] + 4 * v7 + 60) & 0x40000;
  }

  else
  {
    v9 = __maskrune(PixelFormat >> 24, 0x40000uLL);
  }

  v10 = PixelFormat << 8 >> 24;
  if (v10 <= 0x7F)
  {
    v11 = *(v8 + 4 * v10 + 60) & 0x40000;
  }

  else
  {
    v11 = __maskrune(PixelFormat << 8 >> 24, 0x40000uLL);
  }

  LODWORD(v12) = PixelFormat >> 8;
  if (v12 <= 0x7F)
  {
    v13 = *(v8 + 4 * v12 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(PixelFormat >> 8, 0x40000uLL);
  }

  PixelFormat = PixelFormat;
  if (PixelFormat <= 0x7F)
  {
    v14 = *(v8 + 4 * PixelFormat + 60) & 0x40000;
  }

  else
  {
    v14 = __maskrune(PixelFormat, 0x40000uLL);
  }

  if (v13)
  {
    v12 = v12;
  }

  else
  {
    v12 = 46;
  }

  if (v11)
  {
    v15 = v10;
  }

  else
  {
    v15 = 46;
  }

  if (v9)
  {
    v16 = v7;
  }

  else
  {
    v16 = 46;
  }

  if (v14)
  {
    v17 = PixelFormat;
  }

  else
  {
    v17 = 46;
  }

  v18 = CFGetRetainCount(a1);
  return ImageIOLog("❇️  %s:%d - <IOSurface:%p> %s %ldx%ld - '%c%c%c%c' - retainCount: %ld\n", a3, a4, a1, a2, Width, Height, v16, v15, v12, v17, v18);
}

const char *LogPixelFormat(int a1, const char *a2, int a3)
{
  v5 = a1;
  v6 = a1 >> 24;
  v7 = MEMORY[0x1E69E9830];
  if ((a1 >> 24) <= 0x7F)
  {
    v8 = *(MEMORY[0x1E69E9830] + 4 * v6 + 60) & 0x40000;
  }

  else
  {
    v8 = __maskrune(a1 >> 24, 0x40000uLL);
  }

  v9 = (v5 << 8) >> 24;
  if (v9 <= 0x7F)
  {
    v10 = *(v7 + 4 * v9 + 60) & 0x40000;
  }

  else
  {
    v10 = __maskrune((v5 << 8) >> 24, 0x40000uLL);
  }

  v11 = v5 >> 8;
  if (v11 <= 0x7F)
  {
    v12 = *(v7 + 4 * v11 + 60) & 0x40000;
  }

  else
  {
    v12 = __maskrune(v5 >> 8, 0x40000uLL);
  }

  v5 = v5;
  if (v5 <= 0x7F)
  {
    v13 = *(v7 + 4 * v5 + 60) & 0x40000;
  }

  else
  {
    v13 = __maskrune(v5, 0x40000uLL);
  }

  if (v12)
  {
    v14 = v11;
  }

  else
  {
    v14 = 46;
  }

  if (v10)
  {
    v15 = v9;
  }

  else
  {
    v15 = 46;
  }

  if (v8)
  {
    v16 = v6;
  }

  else
  {
    v16 = 46;
  }

  if (v13)
  {
    v17 = v5;
  }

  else
  {
    v17 = 46;
  }

  return ImageIOLog("❇️  %s:%d - '%c%c%c%c'\n", a2, a3, v16, v15, v14, v17);
}

void ImageIODebugOptionsDictionary(const __CFDictionary *a1)
{
  if (a1)
  {
    if (CFDictionaryGetCount(a1) < 1)
    {

      ImageIOLog("    options: ()\n");
    }

    else
    {
      ImageIOLog("    options:\n");

      CFDictionaryApplyFunction(a1, OptionsApplyFunction, 0);
    }
  }
}

void OptionsApplyFunction(const void *a1, const __CFString *a2, uint64_t a3)
{
  memset(v34, 0, sizeof(v34));
  IIOString::IIOString(v34, a1);
  if (a3 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a3;
  }

  if (a2)
  {
    v6 = CFGetTypeID(a2);
    if (v6 == CFStringGetTypeID())
    {
      memset(v33, 0, sizeof(v33));
      IIOString::IIOString(v33, a2);
      v7 = *(&gIndents + v5);
      v8 = IIOString::utf8String(v34);
      v9 = IIOString::utf8String(v33);
      ImageIOLog("      %s%s: %s\n", v7, v8, v9);
      IIOString::~IIOString(v33);
    }

    else
    {
      v10 = CFGetTypeID(a2);
      if (v10 == CFNumberGetTypeID())
      {
        IsFloatType = CFNumberIsFloatType(a2);
        v12 = *(&gIndents + v5);
        if (IsFloatType)
        {
          v13 = IIOString::utf8String(v34);
          IIONumber::IIONumber(v33, a2);
          v14 = IIONumber::floatNum(v33);
          ImageIOLog("      %s%s: %g\n", v12, v13, v14);
        }

        else
        {
          v23 = IIOString::utf8String(v34);
          IIONumber::IIONumber(v33, a2);
          v24 = IIONumber::uint64Num(v33);
          ImageIOLog("      %s%s: %ld\n", v12, v23, v24);
        }

        IIONumber::~IIONumber(v33);
      }

      else
      {
        v15 = CFGetTypeID(a2);
        if (v15 == CFBooleanGetTypeID())
        {
          Value = CFBooleanGetValue(a2);
          v17 = *(&gIndents + v5);
          v18 = IIOString::utf8String(v34);
          v19 = "true";
          if (!Value)
          {
            v19 = "false";
          }

          ImageIOLog("      %s%s: %s\n", v17, v18, v19);
        }

        else
        {
          v20 = CFGetTypeID(a2);
          if (v20 == CFArrayGetTypeID())
          {
            v21 = *(&gIndents + v5);
            v22 = IIOString::utf8String(v34);
            ImageIOLog("      %s%s\n", v21, v22);
            v35.length = CFArrayGetCount(a2);
            v35.location = 0;
            CFArrayApplyFunction(a2, v35, OptionsArrayApplyFunction, (v5 + 1));
          }

          else
          {
            v25 = CFGetTypeID(a2);
            if (v25 == CFDictionaryGetTypeID())
            {
              v26 = *(&gIndents + v5);
              v27 = IIOString::utf8String(v34);
              ImageIOLog("      %s%s\n", v26, v27);
              CFDictionaryApplyFunction(a2, OptionsApplyFunction, (v5 + 2));
            }

            else
            {
              v28 = CFGetTypeID(a2);
              TypeID = CFNullGetTypeID();
              v30 = *(&gIndents + v5);
              if (v28 == TypeID)
              {
                v31 = IIOString::utf8String(v34);
                ImageIOLog("      %s%s: kCFNull\n", v30, v31);
              }

              else
              {
                v32 = IIOString::utf8String(v34);
                ImageIOLog("      %s%s: ", v30, v32);
                CFShow(a2);
              }
            }
          }
        }
      }
    }
  }

  IIOString::~IIOString(v34);
}

void sub_18602CEE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

void ImageIODebugOptions(int a1, const char *a2, const char *a3, CFTypeRef cf, const char *a5, uint64_t a6, const __CFDictionary *a7)
{
  if (!cf)
  {
    if (a5)
    {
LABEL_7:
      if (a6 < 0)
      {
        ImageIOLog("%s   %s - '%s'\n");
      }

      else
      {
        ImageIOLog("%s   %s[%ld] - '%s'\n");
      }

LABEL_17:
      v14 = 0;
      goto LABEL_20;
    }

LABEL_12:
    if (a6 < 0)
    {
      ImageIOLog("%s   %s\n");
    }

    else
    {
      ImageIOLog("%s   %s[%ld]\n");
    }

    goto LABEL_17;
  }

  v13 = CFCopyDescription(cf);
  v14 = v13;
  if (!a5)
  {
    if (v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
      IIOString::IIOString(&v17, v13);
      v16 = IIOString::utf8String(&v17);
      if (a6 < 0)
      {
        ImageIOLog("%s   %s  %s\n", a2, a3, v16);
      }

      else
      {
        ImageIOLog("%s   %s[%ld]  %s\n", a2, a3, a6, v16);
      }

      goto LABEL_19;
    }

    goto LABEL_12;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v17 = 0;
  v18 = 0;
  v19 = 0;
  IIOString::IIOString(&v17, v13);
  v15 = IIOString::utf8String(&v17);
  if (a6 < 0)
  {
    ImageIOLog("%s   %s - '%s' - '%s'\n", a2, a3, v15, a5);
  }

  else
  {
    ImageIOLog("%s   %s[%ld] - '%s' - '%s'\n", a2, a3, a6, v15, a5);
  }

LABEL_19:
  IIOString::~IIOString(&v17);
LABEL_20:
  if (a1 >= 2)
  {
    ImageIODebugOptionsDictionary(a7);
  }

  if (v14)
  {
    CFRelease(v14);
  }
}

void sub_18602D0D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

const char *IIODebugOrientation(const char *result, int a2, IIODictionary *this)
{
  if ((gIIODebugFlags & 0x2000000000000) != 0)
  {
    if (this)
    {
      if (IIODictionary::containsKey(this, @"Orientation"))
      {
        Uint32ForKey = IIODictionary::getUint32ForKey(this, @"Orientation");
      }

      else
      {
        Uint32ForKey = 0;
      }

      Uint32ForKeyGroup = IIODictionary::containsKeyGroup(this, @"Orientation", @"{TIFF}");
      if (Uint32ForKeyGroup)
      {
        Uint32ForKeyGroup = IIODictionary::getUint32ForKeyGroup(this, @"Orientation", @"{TIFF}");
      }
    }

    else
    {
      Uint32ForKey = 0;
      Uint32ForKeyGroup = 0;
    }

    if (Uint32ForKey | Uint32ForKeyGroup)
    {
      return ImageIOLog("%s %s:%d - Orientation: top:%d  {TIFF}:%d\n");
    }

    else
    {
      return ImageIOLog("%s %s:%d - Orientation: not found\n");
    }
  }

  return result;
}

void OptionsArrayApplyFunction(const __CFString *a1, uint64_t a2)
{
  if (a2 >= 4)
  {
    v3 = 4;
  }

  else
  {
    v3 = a2;
  }

  v4 = CFGetTypeID(a1);
  if (v4 == CFStringGetTypeID())
  {
    memset(v18, 0, sizeof(v18));
    IIOString::IIOString(v18, a1);
    v5 = *(&gIndents + v3);
    v6 = IIOString::utf8String(v18);
    ImageIOLog("      %s %s\n", v5, v6);
    IIOString::~IIOString(v18);
  }

  else
  {
    v7 = CFGetTypeID(a1);
    if (v7 == CFNumberGetTypeID())
    {
      IsFloatType = CFNumberIsFloatType(a1);
      v9 = *(&gIndents + v3);
      if (IsFloatType)
      {
        IIONumber::IIONumber(v18, a1);
        v10 = IIONumber::floatNum(v18);
        ImageIOLog("      %s %g\n", v9, v10);
      }

      else
      {
        IIONumber::IIONumber(v18, a1);
        v16 = IIONumber::uint64Num(v18);
        ImageIOLog("      %s %ld\n", v9, v16);
      }

      IIONumber::~IIONumber(v18);
    }

    else
    {
      v11 = CFGetTypeID(a1);
      if (v11 == CFBooleanGetTypeID())
      {
        Value = CFBooleanGetValue(a1);
        v13 = "true";
        if (!Value)
        {
          v13 = "false";
        }

        ImageIOLog("      %s %s\n", *(&gIndents + v3), v13);
      }

      else
      {
        v14 = CFGetTypeID(a1);
        if (v14 == CFArrayGetTypeID())
        {
          ImageIOLog("      %s\n", *(&gIndents + v3));
          v15.length = CFArrayGetCount(a1);
          v15.location = 0;

          CFArrayApplyFunction(a1, v15, OptionsArrayApplyFunction, (v3 + 1));
        }

        else
        {
          v17 = CFGetTypeID(a1);
          if (v17 == CFDictionaryGetTypeID())
          {

            CFDictionaryApplyFunction(a1, OptionsApplyFunction, (v3 + 1));
          }

          else
          {

            CFShow(a1);
          }
        }
      }
    }
  }
}

void sub_18602D460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIONumber::~IIONumber(va);
  _Unwind_Resume(a1);
}

void flush_fn(uint64_t a1)
{
  io_ptr = _cg_png_get_io_ptr(a1);

  CFRelease(io_ptr);
}

void handle_write_error(uint64_t a1, const char *a2)
{
  if (a2)
  {
    if (*a2)
    {
      LogError("handle_write_error", 113, "%s\n", a2);
    }
  }

  exception = __cxa_allocate_exception(4uLL);
  *exception = -1;
  __cxa_throw(exception, MEMORY[0x1E69E5478], 0);
}

void PNGWritePlugin::reduceFrame(PNGWritePlugin *this, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, int a5, unsigned int *a6, unsigned int *a7, unsigned int *a8, unsigned int *a9)
{
  v10 = a4;
  v13 = *a8;
  v14 = v13 - 1;
  v15 = *a9;
  v16 = *a9 - 1;
  if (v13 >= 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v13;
  }

  if (v15 >= 2)
  {
    v18 = 2;
  }

  else
  {
    v18 = *a9;
  }

  if (a5 == 4)
  {
    v53 = a7;
    v51 = v17;
    v52 = v13;
    v36 = a6;
    bzero(a4, *(this + 8));
    a6 = v36;
    v17 = v51;
    v13 = v52;
    a7 = v53;
    v37 = *a9;
    if (!*a9)
    {
LABEL_57:
      *a6 = v13 >> 1;
      *a7 = v15 >> 1;
      *a8 = v17;
      goto LABEL_58;
    }

    v19 = 0;
    v21 = 0;
    v38 = 0;
    v22 = 0;
    v39 = *a8;
    do
    {
      if (v39)
      {
        v40 = 0;
        do
        {
          v42 = *a2;
          a2 += 4;
          v41 = v42;
          v44 = *a3;
          a3 += 4;
          v43 = v44;
          v45 = v44 | v41;
          if (v40 >= v14)
          {
            v46 = v14;
          }

          else
          {
            v46 = v40;
          }

          if (v40 <= v21)
          {
            v47 = v21;
          }

          else
          {
            v47 = v40;
          }

          if (v38 >= v16)
          {
            v48 = v16;
          }

          else
          {
            v48 = v38;
          }

          if (v38 <= v22)
          {
            v49 = v22;
          }

          else
          {
            v49 = v38;
          }

          if (v41 != v43 && HIBYTE(v45) != 0)
          {
            v22 = v49;
            v21 = v47;
            v16 = v48;
            v14 = v46;
            ++v19;
          }

          *v10 = v41;
          v10 += 4;
          ++v40;
          v39 = *a8;
        }

        while (v40 < *a8);
        v37 = *a9;
      }

      ++v38;
    }

    while (v38 < v37);
  }

  else
  {
    if (a5 != 3 || !v15)
    {
      goto LABEL_57;
    }

    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = *a9;
    v24 = v13;
    do
    {
      if (v24)
      {
        v25 = 0;
        do
        {
          v26 = (a2[2] << 16) | (a2[1] << 8);
          v27 = *a2;
          a2 += 3;
          v28 = v26 | v27;
          v29 = (a3[2] << 16) | (a3[1] << 8);
          v30 = *a3;
          a3 += 3;
          v31 = v29 | v30;
          if (v25 >= v14)
          {
            v32 = v14;
          }

          else
          {
            v32 = v25;
          }

          if (v25 <= v21)
          {
            v33 = v21;
          }

          else
          {
            v33 = v25;
          }

          if (v20 >= v16)
          {
            v34 = v16;
          }

          else
          {
            v34 = v20;
          }

          if (v20 <= v22)
          {
            v35 = v22;
          }

          else
          {
            v35 = v20;
          }

          if (v28 != v31)
          {
            v22 = v35;
            v21 = v33;
            v16 = v34;
            v14 = v32;
            ++v19;
          }

          *v10 = v31;
          v10[2] = BYTE2(v31);
          v10 += 3;
          ++v25;
          v24 = *a8;
        }

        while (v25 < *a8);
        v23 = *a9;
      }

      ++v20;
    }

    while (v20 < v23);
  }

  if (!v19)
  {
    goto LABEL_57;
  }

  *a6 = v14;
  *a7 = v16;
  *a8 = v21 - v14 + 1;
  v18 = v22 - v16 + 1;
LABEL_58:
  *a9 = v18;
}

uint64_t PNGWritePlugin::writeAPNGFrame(PNGWritePlugin *this, IIOImagePixelDataProvider *a2, IIODictionary *a3)
{
  v67 = 0;
  v66 = 0;
  Ref = IIOImageSource::imageReadRef(a2);
  CGImageGetImageProvider();
  v7 = IIOImageSource::count(a2);
  v8 = IIO_Reader::testHeaderSize(a2);
  BytesPerRow = IIOImagePixelDataProvider::getBytesPerRow(a2);
  Property = CGImageProviderGetProperty();
  if (Property)
  {
    v11 = Property == *MEMORY[0x1E695E4D0];
  }

  else
  {
    v11 = 0;
  }

  image = Ref;
  if (!v11)
  {
    goto LABEL_5;
  }

  v14 = *(this + 124);
  v13 = BytesPerRow;
  if (v14)
  {
LABEL_9:
    v12 = v14 ^ 1;
    *(this + 123) = 0;
    goto LABEL_10;
  }

  if (BytesPerRow == v7)
  {
    v13 = 3 * v7;
    goto LABEL_9;
  }

LABEL_5:
  v12 = 0;
  v13 = BytesPerRow;
LABEL_10:
  v15 = v8;
  v16 = BytesPerRow * v8;
  if (IIOImagePixelDataProvider::hasAlpha(a2) || (*(this + 121) & 1) != 0 || (IIOImagePixelDataProvider::srcFormat(v62, a2), DWORD1(v62[0]) != 24))
  {
    v58 = 0;
    v61 = BytesPerRow * v8;
  }

  else
  {
    _cg_png_set_appleflags(a2, 32);
    BytesPerRow = 4 * (v7 & 0x3FFFFFFF);
    v61 = 4 * v7 * v8;
    v58 = 1;
  }

  size = v13 * v8;
  if (*(this + 36) == 1)
  {
    ImageIOLog("            bufferSize:  %d\n", v61);
    ImageIOLog("           dstRowbytes:  %d\n", v13);
    ImageIOLog("              rowbytes:  %d\n", BytesPerRow);
    ImageIOLog("    expandIndexedToRGB:  %d\n", v12);
    ImageIOLog("        expandRGB2RGBA:  %d\n", v58);
    ImageIOLog("      _optimizeForSize:  %d\n", *(this + 123));
  }

  v57 = v12;
  v59 = v8;
  if (*(this + 18) >= 2u && !*(this + 7))
  {
    *(this + 8) = size;
    *(this + 7) = malloc_type_malloc(size, 0x100004077774924uLL);
  }

  v67 = malloc_type_malloc(v61, 0x100004077774924uLL);
  v66 = malloc_type_malloc(size, 0x100004077774924uLL);
  v17 = @"UnclampedDelayTime";
  if ((IIODictionary::containsKeyGroup(a3, @"UnclampedDelayTime", @"{PNG}") & 1) != 0 || (v17 = @"DelayTime", IIODictionary::containsKeyGroup(a3, @"DelayTime", @"{PNG}")))
  {
    v18 = (IIODictionary::getDoubleForKeyGroup(a3, v17, @"{PNG}") * 1000.0);
  }

  else
  {
    v18 = 100;
  }

  *v65 = 0;
  v63 = v8;
  v64 = v7;
  if (IIOImagePixelDataProvider::getBytes(a2, v67) != v16)
  {
    _cg_jpeg_mem_term("writeAPNGFrame", 1342, "    iPixelDataProvider->getBytes - expected: %d  got: %d\n");
    v51 = 0;
    goto LABEL_59;
  }

  if (v58)
  {
    memset(v62, 0, sizeof(v62));
    IIOPixelConverterRGB::IIOPixelConverterRGB(v62, 0, 3, 8u, 8, 8, 0, 2, 8u, 0, 0);
    malloc_type_malloc(4 * (v7 & 0x3FFFFFFF), 0x100004077774924uLL);
    v53 = 3 * v7;
    v54 = 4 * (v7 & 0x3FFFFFFF) * (v8 - 1);
    for (i = v53 * (v59 - 1); ; i -= v53)
    {
      IIOPixelConverterRGB::convertRow(v62, &v67[i], &v67[v54], v7);
      v54 -= 4 * (v7 & 0x3FFFFFFF);
    }
  }

  if (v57)
  {
    ColorSpace = CGImageGetColorSpace(image);
    BaseColorSpace = CGColorSpaceGetBaseColorSpace(ColorSpace);
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(BaseColorSpace);
    ColorTableCount = CGColorSpaceGetColorTableCount(ColorSpace);
    v23 = malloc_type_calloc(NumberOfComponents, ColorTableCount, 0x100004077774924uLL);
    CGColorSpaceGetColorTable(ColorSpace, v23);
    if (v15)
    {
      for (j = 0; j != v15; ++j)
      {
        if (v7)
        {
          v25 = &v66[j * v13];
          v26 = v7;
          v27 = &v67[j * BytesPerRow];
          do
          {
            v28 = *v27++;
            v29 = &v23[3 * v28];
            *v25 = *v29;
            v25[1] = v29[1];
            v25[2] = v29[2];
            v25 += 3;
            --v26;
          }

          while (v26);
        }
      }
    }

    free(v23);
  }

  if (*(this + 19) && *(this + 123) == 1 && (*(this + 124) & 1) == 0)
  {
    PNGWritePlugin::reduceFrame(this, v67, *(this + 7), v66, 4, &v65[1], v65, &v64, &v63);
    if (*(this + 36) == 1)
    {
      ImageIOLog("            orig-frame:  {%6d, %6d, %6d, %6d}\n", 0, 0, v7, v59);
      ImageIOLog("         reduced-frame:  {%6d, %6d, %6d, %6d}\n", v65[1], v65[0], v64, v63);
    }

    if (v57)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  if ((v57 & 1) == 0)
  {
    if (v61 >= size)
    {
      v30 = size;
    }

    else
    {
      v30 = v61;
    }

    memcpy(v66, v67, v30);
LABEL_42:
    if (v61 >= *(this + 8))
    {
      v31 = *(this + 8);
    }

    else
    {
      v31 = v61;
    }

    memcpy(*(this + 7), v67, v31);
  }

LABEL_46:
  v32 = v63;
  v33 = v65[0];
  v34 = v65[1];
  _cg_png_write_frame_head(*(this + 5), *(this + 6), 0, v64, v63, v65[1], v65[0], v18, 0x3E8u, 0, 0);
  if (v32)
  {
    v35 = 0;
    v36 = &v66[4 * v34 + v13 * v33];
    v37 = v7;
    v38 = &v36[2 * v7 - 1];
    v39 = &v36[4 * v7 - 2];
    v40 = &v36[v7 - 1];
    do
    {
      if (*(this + 122) == 1)
      {
        if (*(this + 84) == 4)
        {
          if (v37)
          {
            v41 = v39;
            v42 = v40;
            v43 = v37;
            do
            {
              v44 = *v42--;
              v45 = 3 * (v44 >> 4);
              *(v41 - 2) = *(*(this + 14) + v45);
              *(v41 - 1) = *(*(this + 14) + v45 + 1);
              *v41 = *(*(this + 14) + v45 + 2);
              v41[1] = v44 & 0xF | (16 * v44);
              v41 -= 4;
              --v43;
            }

            while (v43);
          }
        }

        else
        {
          v46 = v39;
          v47 = v38;
          for (k = v37; k; --k)
          {
            v49 = *(v47 - 1);
            v50 = *v47;
            v47 -= 2;
            v49 *= 3;
            *(v46 - 2) = *(*(this + 14) + v49);
            *(v46 - 1) = *(*(this + 14) + v49 + 1);
            *v46 = *(*(this + 14) + v49 + 2);
            v46[1] = v50;
            v46 -= 4;
          }
        }
      }

      _cg_png_write_row_sized(*(this + 5), v36, v13);
      ++v35;
      v36 += v13;
      v38 += v13;
      v39 += v13;
      v40 += v13;
    }

    while (v35 != v32);
  }

  _cg_png_write_frame_tail(*(this + 5));
  v51 = 1;
LABEL_59:
  if (v66)
  {
    free(v66);
  }

  if (v67)
  {
    free(v67);
  }

  return v51;
}

void sub_18602DE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  IIOPixelConverterRGB::~IIOPixelConverterRGB(va);
  _Unwind_Resume(a1);
}

uint64_t imagePNG_write_error_break(uint64_t a1)
{
  LogError("imagePNG_write_error_break", 90, "*** ERROR: imagePNG_write_error_break\n");
  *gCrashMessage = 0;
  result = snprintf(gCrashMessage, 0x200uLL, "*** ERROR: PNG-writeAll  %dx%d  bpc: %d  cs: %d", *(a1 + 280), *(a1 + 284), *(a1 + 392), *(a1 + 391));
  qword_1ED5688A0 = gCrashMessage;
  return result;
}

uint64_t PNGWritePlugin::WriteImageWithSession(PNGWritePlugin *this, IIOImageWriteSession *a2, IIOImageDestination *a3, IIOImagePixelDataProvider *a4, IIODictionary *a5, IIODictionary *a6)
{
  v18 = 0u;
  v19 = 0u;
  memset(v17, 0, sizeof(v17));
  v15 = 0u;
  v16 = 0u;
  memset(v14, 0, sizeof(v14));
  IIOWritePlugin::IIOWritePlugin(v14, this, a2, 1347307296);
  *&v17[0] = 0;
  DWORD2(v17[0]) = 1;
  *(v17 + 12) = 0;
  BYTE4(v17[1]) = 0;
  *(&v19 + 9) = 1;
  *(&v15 + 1) = 0;
  v16 = 0uLL;
  *&v14[0] = &unk_1EF4D92B8;
  *(&v18 + 1) = 0;
  *&v19 = 0;
  PNGWritePlugin::writePrologue(v14, a3, a4);
  v8 = PNGWritePlugin::writePNG(v14, a3, a4);
  PNGWritePlugin::writeEpilogue(v14, v9, v10);
  PNGWritePlugin::~PNGWritePlugin(v14, v11, v12);
  return v8;
}

void sub_18602DFE8(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x18602DFD0);
}

uint64_t TIFFNoEncode(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = &registeredCODECS;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2[1] + 8) == v1)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented");
    }
  }

  if (_TIFFBuiltinCODECS)
  {
    if (word_1EF4D54B8 == v1)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented");
    }

    for (i = &word_1EF4D54D0; *(i - 1); i += 12)
    {
      v4 = *i;
      if (v4 == v1)
      {
        return TIFFErrorExtR(a1, *a1, "%s %s encoding is not implemented");
      }
    }
  }

  return TIFFErrorExtR(a1, *a1, "Compression scheme %hu %s encoding is not implemented");
}

uint64_t TIFFNoDecode(uint64_t a1)
{
  v1 = *(a1 + 120);
  v2 = &registeredCODECS;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (*(v2[1] + 8) == v1)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented");
    }
  }

  if (_TIFFBuiltinCODECS)
  {
    if (word_1EF4D54B8 == v1)
    {
      return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented");
    }

    for (i = &word_1EF4D54D0; *(i - 1); i += 12)
    {
      v4 = *i;
      if (v4 == v1)
      {
        return TIFFErrorExtR(a1, *a1, "%s %s decoding is not implemented");
      }
    }
  }

  return TIFFErrorExtR(a1, *a1, "Compression scheme %hu %s decoding is not implemented");
}

uint64_t _TIFFSetDefaultCompressionState(uint64_t result)
{
  *(result + 952) = _TIFFNoFixupTags;
  *(result + 944) = 1;
  *(result + 960) = _TIFFtrue;
  *(result + 968) = _TIFFNoPreCode;
  *(result + 1008) = _TIFFNoRowDecode;
  *(result + 1024) = _TIFFNoStripDecode;
  *(result + 1040) = _TIFFNoTileDecode;
  *(result + 984) = 1;
  *(result + 976) = _TIFFtrue;
  *(result + 992) = _TIFFNoPreCode;
  *(result + 1000) = _TIFFtrue;
  *(result + 1016) = _TIFFNoRowEncode;
  *(result + 1032) = _TIFFNoStripEncode;
  *(result + 1048) = _TIFFNoTileEncode;
  *(result + 1056) = _TIFFvoid;
  *(result + 1064) = _TIFFNoSeek;
  *(result + 1072) = _TIFFvoid;
  *(result + 1080) = _TIFFDefaultStripSize;
  *(result + 1088) = _TIFFDefaultTileSize;
  *(result + 16) &= 0xFFFDFEFF;
  return result;
}

uint64_t TIFFSetCompressionScheme(uint64_t a1, uint64_t a2)
{
  v4 = &registeredCODECS;
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    v5 = v4[1];
    if (*(v5 + 4) == a2)
    {
      goto LABEL_4;
    }
  }

  if (!_TIFFBuiltinCODECS)
  {
LABEL_11:
    _TIFFSetDefaultCompressionState(a1);
    return 1;
  }

  v5 = &_TIFFBuiltinCODECS;
  while (*(v5 + 4) != a2)
  {
    v8 = v5[3];
    v5 += 3;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

LABEL_4:
  _TIFFSetDefaultCompressionState(a1);
  v6 = v5[2];

  return (v6)(a1, a2);
}

char **_cg_TIFFFindCODEC(int a1)
{
  v1 = &registeredCODECS;
  while (1)
  {
    v1 = *v1;
    if (!v1)
    {
      break;
    }

    i = v1[1];
    if (*(i + 4) == a1)
    {
      return i;
    }
  }

  i = _TIFFBuiltinCODECS;
  if (_TIFFBuiltinCODECS)
  {
    for (i = &_TIFFBuiltinCODECS; *(i + 4) != a1; i += 3)
    {
      if (!i[3])
      {
        return 0;
      }
    }
  }

  return i;
}

uint64_t IIOSavePermissionsToXPCObject(void *a1, uint64_t a2)
{
  if (gPermissionsChanged == 1)
  {
    v2 = iio_xpc_add_permission_dict(a1);
    if (v2)
    {
      xpc_dictionary_set_uint64(v2, "iio_xpc_permission_data", gPermissions);
    }
  }

  return 0;
}

uint64_t IIOSaveAllowedTypesToXPCObject(void *a1, uint64_t a2)
{
  if (gAllowedTypesChanged == 1)
  {
    v2 = iio_xpc_add_permission_dict(a1);
    if (v2)
    {
      iio_xpc_dictionary_add_CFDictionary(v2, "iio_xpc_permission_allowed_types_array", gAllowedTypes);
    }
  }

  return 0;
}

uint64_t IIOXPCUpdatePermissions(void *a1)
{
  permission_dict = iio_xpc_get_permission_dict(a1);
  if (!permission_dict)
  {
    return 0;
  }

  uint64 = xpc_dictionary_get_uint64(permission_dict, "iio_xpc_permission_data");
  v3 = uint64;
  if ((uint64 & 1) == 0)
  {
    return 0;
  }

  v6 = gPermissions ^ uint64;
  if (((gPermissions ^ uint64) & 2) != 0)
  {
    v4 = IIODisableRAWDecoding();
    IIOXPCLog("🔄 RAWDecoding disabled\n");
    v6 = gPermissions ^ v3;
    if (((gPermissions ^ v3) & 4) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = 0;
  if (((gPermissions ^ uint64) & 4) != 0)
  {
LABEL_9:
    v4 = IIODisableMetadataParsing();
    IIOXPCLog("🔄 MetadataParsing disabled\n");
    v6 = gPermissions ^ v3;
  }

LABEL_10:
  if ((v6 & 8) == 0)
  {
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_12;
    }

LABEL_15:
    v4 = IIOEnableRestrictedDecoding();
    IIOXPCLog("🔄 RestrictedDecoding enabled\n");
    if (((gPermissions ^ v3) & 0x20) == 0)
    {
      return v4;
    }

    goto LABEL_16;
  }

  v4 = IIODisableHardwareDecoding();
  IIOXPCLog("🔄 HardwareDecoding disabled\n");
  v6 = gPermissions ^ v3;
  if (((gPermissions ^ v3) & 0x10) != 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  if ((v6 & 0x20) == 0)
  {
    return v4;
  }

LABEL_16:
  v7 = IIODisableCaching();
  IIOXPCLog("🔄 caching disabled\n");
  return v7;
}

uint64_t IIODisableRAWDecoding()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableRAWDecoding_block_invoke;
  block[3] = &unk_1E6F09738;
  block[4] = &v3;
  if (IIODisableRAWDecoding::onceToken != -1)
  {
    dispatch_once(&IIODisableRAWDecoding::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableMetadataParsing()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableMetadataParsing_block_invoke;
  block[3] = &unk_1E6F09760;
  block[4] = &v3;
  if (IIODisableMetadataParsing::onceToken != -1)
  {
    dispatch_once(&IIODisableMetadataParsing::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableHardwareDecoding()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableHardwareDecoding_block_invoke;
  block[3] = &unk_1E6F09788;
  block[4] = &v3;
  if (IIODisableHardwareDecoding::onceToken != -1)
  {
    dispatch_once(&IIODisableHardwareDecoding::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIODisableCaching()
{
  kdebug_trace();
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = -50;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __IIODisableCaching_block_invoke;
  block[3] = &unk_1E6F097D8;
  block[4] = &v3;
  if (IIODisableCaching::onceToken != -1)
  {
    dispatch_once(&IIODisableCaching::onceToken, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t IIOXPCUpdateAllowableTypes(void *a1)
{
  if (gAllowedTypesChanged)
  {
    return 0;
  }

  permission_dict = iio_xpc_get_permission_dict(a1);
  if (!permission_dict)
  {
    return 0;
  }

  if (!xpc_dictionary_get_array(permission_dict, "iio_xpc_permission_allowed_types_array"))
  {
    return 0;
  }

  v2 = _CFXPCCreateCFObjectFromXPCObject();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = IIODecodingSetAllowableTypes(v2);
  IIOXPCLog("🔄 AllowableTypes updated\n");
  CFRelease(v3);
  return v4;
}

uint64_t __IIODisableRAWDecoding_block_invoke(IIO_ReaderHandler *a1, uint64_t a2)
{
  v2 = a1;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    a1 = IIO_OSAppleInternalBuild(a1, a2);
    if (a1)
    {
      a1 = ImageIOLog("••• CGImageSourceDisableRAWDecoding - RAW formats will no longer be handled in this process\n");
    }
  }

  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(a1);
  result = IIO_ReaderHandler::disableRAWPlugins(ReaderHandler);
  *(*(*(v2 + 4) + 8) + 24) = result;
  if (!*(*(*(v2 + 4) + 8) + 24))
  {
    gPermissions &= ~2uLL;
    gPermissionsChanged = 1;
  }

  return result;
}

uint64_t __IIODisableMetadataParsing_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild(result, a2);
    if (result)
    {
      result = ImageIOLog("••• Ⓜ️  CGImageSourceDisableMetadataParsing - image metadata will no longer be handled in this process\n");
    }
  }

  gPermissions &= ~4uLL;
  gPermissionsChanged = 1;
  *(*(*(v2 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __IIODisableHardwareDecoding_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild(result, a2);
    if (result)
    {
      result = ImageIOLog("••• CGImageSourceDisableHardwareDecoding - JPEG/HEIF hardware decoder will no longer be used in this process\n");
    }
  }

  gPermissions &= ~8uLL;
  gPermissionsChanged = 1;
  *(*(*(v2 + 32) + 8) + 24) = 0;
  return result;
}

uint64_t __IIODisableCaching_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = result;
  if ((gIIODebugFlags & 0x4000000000000) != 0)
  {
    result = IIO_OSAppleInternalBuild(result, a2);
    if (result)
    {
      result = ImageIOLog("••• CGImageSourceDisableCaching - caching is disabled for this process\n");
    }
  }

  gPermissionsChanged = 0;
  *(*(*(v2 + 32) + 8) + 24) = 0;
  return result;
}

BOOL onlyspaces(unsigned __int8 *a1)
{
  do
  {
    v2 = *a1++;
    v1 = v2;
  }

  while (v2 == 32);
  return v1 == 0;
}

uint64_t stringType(char *a1, int a2)
{
  v2 = 0;
  if (a2)
  {
    while (1)
    {
      v3 = a2--;
      while ((*a1 & 0x80000000) == 0)
      {
        ++a1;
        --a2;
        if (!--v3)
        {
          return v2;
        }
      }

      v4 = *a1;
      if ((v4 - 254) < 0xFFFFFFC2)
      {
        break;
      }

      v5 = 0;
      do
      {
        v6 = v5;
        v7 = v5++ + 2;
        --a2;
      }

      while (((v4 << v7) & 0x80) != 0);
      if (v3 < v5 + 1)
      {
        break;
      }

      v8 = 0;
      v9 = v4 & ~(-1 << (6 - v5));
      v10 = v6 + 1;
      do
      {
        v11 = v9;
        v9 = a1[++v8] & 0x3F | (v9 << 6);
      }

      while (v10 != v8);
      v2 = 2;
      if (v11 << 6 >> 16 <= 0x10 && v9 >= stringType::vmin[v5 + 1])
      {
        a1 += v5 + 1;
        v2 = 1;
        if (a2)
        {
          continue;
        }
      }

      return v2;
    }

    return 2;
  }

  return v2;
}

IIOImageRead *IIO_Reader_HEIF::createGlobalInfoData(IIO_Reader_HEIF *this, IIOImageReadSession *a2)
{
  result = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (result)
  {

    return GlobalHEIFInfo::createDataRepresentation(result);
  }

  return result;
}

BOOL IIO_Reader_HEIF::addBasicProperties(IIO_Reader_HEIF *this, unsigned __int8 *a2, unsigned int a3, __CFDictionary *a4, unsigned int *a5, const __CFData **a6)
{
  v37 = 0;
  IIO_LoadHEIFSymbols();
  v11 = IIOCreateCMPhotoDecompressionSession(&v37);
  if (v11)
  {
    IIOCMErrorString(v11);
    _cg_jpeg_mem_term("addBasicProperties", 366, "*** CMPhotoDecompressionSessionCreate  err = %s [%d]\n");
    return 0;
  }

  else
  {
    v36 = 0;
    v35 = 0;
    v13 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
    if (v13)
    {
      v14 = v13;
      v15 = gFunc_CMPhotoDecompressionSessionCreateContainer(v37, 0, v13, &v35, &v36);
      if (v15)
      {
        IIOCMErrorString(v15);
        _cg_jpeg_mem_term("addBasicProperties", 381, "*** CMPhotoDecompressionSessionCreateContainer  err = %s [%d]\n");
        v12 = 0;
      }

      else
      {
        v34 = 0;
        v16 = gFunc_CMPhotoDecompressionContainerCreateDictionaryDescription(v36, &v34);
        v12 = v16 == 0;
        if (v16)
        {
          IIOCMErrorString(v16);
          _cg_jpeg_mem_term("addBasicProperties", 391, "*** CMPhotoDecompressionContainerCreateDictionaryDescription  err = %s [%d]\n");
        }

        else
        {
          memset(v33, 0, sizeof(v33));
          IIODictionary::IIODictionary(v33, a4);
          IIODictionary::IIODictionary(v32, v34);
          ObjectForKey = IIODictionary::getObjectForKey(v32, *gIIO_kCMPhotoDecompressionContainerDescription_MainImages);
          IIODictionary::~IIODictionary(v32);
          if (ObjectForKey && CFArrayGetCount(ObjectForKey) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(ObjectForKey, 0);
            memset(v32, 0, sizeof(v32));
            IIODictionary::IIODictionary(v32, ValueAtIndex);
            ObjectForKeyGroup = IIODictionary::getObjectForKeyGroup(v32, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v33, ObjectForKeyGroup, @"PixelXDimension");
            v20 = IIODictionary::getObjectForKeyGroup(v32, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v33, v20, @"PixelYDimension");
            v21 = IIODictionary::getObjectForKey(v32, *gIIO_kCMPhotoDecompressionContainerDescription_ThumbnailImages);
            v22 = CFArrayGetValueAtIndex(v21, 0);
            memset(v31, 0, sizeof(v31));
            IIODictionary::IIODictionary(v31, v22);
            v23 = IIODictionary::getObjectForKeyGroup(v31, @"Width", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v33, v23, @"ThumbnailWidth");
            v24 = IIODictionary::getObjectForKeyGroup(v31, @"Height", *gIIO_kCMPhotoDecompressionContainerDescription_Dimensions);
            IIODictionary::setObjectForKey(v33, v24, @"ThumbnailHeight");
            Uint32ForKey = IIODictionary::getUint32ForKey(v31, *gIIO_kCMPhotoDecompressionContainerDescription_DataLength);
            v26 = IIODictionary::getUint32ForKey(v31, *gIIO_kCMPhotoDecompressionContainerDescription_DataOffset);
            IIONumber::IIONumber(v29, Uint32ForKey);
            IIODictionary::setObjectForKey(v33, value, @"ThumbnailSize");
            IIONumber::~IIONumber(v29);
            IIONumber::IIONumber(v29, v26);
            IIODictionary::setObjectForKey(v33, value, @"ThumbnailOffset");
            IIONumber::~IIONumber(v29);
            if (a6)
            {
              v28 = 0;
              v29[0] = 0;
              if (!gFunc_CMPhotoDecompressionContainerCopyExifForIndexWithOptions(v36, 0, 0, 0, &v28, v29))
              {
                if (v29[0])
                {
                  *a6 = v29[0];
                  *a5 = v28;
                }
              }
            }

            IIODictionary::~IIODictionary(v31);
            IIODictionary::~IIODictionary(v32);
          }

          CFRelease(v34);
          IIODictionary::~IIODictionary(v33);
        }

        CFRelease(v36);
      }

      CFRelease(v14);
    }

    else
    {
      v12 = 0;
    }

    CFRelease(v37);
  }

  return v12;
}

void sub_18602F338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va2, a15);
  va_start(va1, a15);
  va_start(va, a15);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  va_copy(va2, va1);
  v20 = va_arg(va2, void);
  v22 = va_arg(va2, void);
  v23 = va_arg(va2, void);
  IIODictionary::~IIODictionary(va);
  IIODictionary::~IIODictionary(va1);
  IIODictionary::~IIODictionary(va2);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_HEIF::updateSourceProperties(IIO_Reader_HEIF *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  IIO_LoadHEIFSymbols();
  if ((IIOImageReadSession::isFinal(a2) & 1) == 0)
  {
    IIO_Reader_HEIF::updateSourceProperties();
    v85 = 4294967257;
LABEL_140:
    if (a6 && v85 == -39)
    {
      *a6 = kCGImageStatusIncomplete;
      return 4294967257;
    }

    return v85;
  }

  v90 = a5;
  v10 = IIOImageReadSession::globalInfoForType(a2, 1212500294);
  if (!v10)
  {
    operator new();
  }

  v11 = (*(*this + 272))(this, v10, a2, 0);
  if (v11)
  {
    v85 = v11;
    LogError("updateSourceProperties", 748, "*** ERROR: extractImageInfo failed: %d\n", v11);
    goto LABEL_140;
  }

  NumberOfAuxImages = HEIFMainImage::getNumberOfAuxImages(v10);
  v89 = v10;
  if (!NumberOfAuxImages)
  {
    goto LABEL_32;
  }

  v13 = NumberOfAuxImages;
  v92 = this;
  v111 = 0;
  v112 = 0;
  v113 = 0;
  IIOArray::IIOArray(&v111);
  for (i = 0; i != v13; ++i)
  {
    HEIFAuxImageAtIndex = HEIFMainImage::getHEIFAuxImageAtIndex(v10, i);
    if (!HEIFAuxImageAtIndex)
    {
      continue;
    }

    v108 = 0;
    v109 = 0;
    v110 = 0;
    IIODictionary::IIODictionary(&v108);
    GroupPictureIndexListCount = HEIFGroupItem::getGroupPictureIndexListCount(HEIFAuxImageAtIndex);
    GroupType = HEIFGroupItem::getGroupType(HEIFAuxImageAtIndex);
    if (GroupType == 1634497650)
    {
      IIODictionary::setObjectForKey(&v108, @"Alternate", @"GroupType");
      v105 = 0;
      v106 = 0;
      v107 = 0;
      IIOArray::IIOArray(&v105);
      if (GroupPictureIndexListCount)
      {
        for (j = 0; j != GroupPictureIndexListCount; ++j)
        {
          GroupPictureIndexAtIndex = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, j);
          IIONumber::IIONumber(&v102, GroupPictureIndexAtIndex);
          IIOArray::addObject(&v105, v104);
          IIONumber::~IIONumber(&v102);
        }
      }

      IIODictionary::setObjectForKey(&v108, v106, @"GroupImages");
    }

    else
    {
      if (GroupType != 1937007986 || (GroupPictureIndexListCount & 0xFFFFFFFE) != 2)
      {
        goto LABEL_29;
      }

      IIODictionary::setObjectForKey(&v108, @"StereoPair", @"GroupType");
      v18 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 0);
      IIONumber::IIONumber(&v105, v18);
      IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexLeft");
      IIONumber::~IIONumber(&v105);
      v19 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 1u);
      IIONumber::IIONumber(&v105, v19);
      IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexRight");
      IIONumber::~IIONumber(&v105);
      if (GroupPictureIndexListCount == 3)
      {
        v20 = HEIFGroupItem::getGroupPictureIndexAtIndex(HEIFAuxImageAtIndex, 2u);
        IIONumber::IIONumber(&v105, v20);
        IIODictionary::setObjectForKey(&v108, v107, @"GroupImageIndexMonoscopic");
        IIONumber::~IIONumber(&v105);
        MonoscopicImageLocationString = HEIFGroupItem::getMonoscopicImageLocationString(HEIFAuxImageAtIndex);
        if (MonoscopicImageLocationString)
        {
          IIODictionary::setObjectForKey(&v108, MonoscopicImageLocationString, @"GroupImageIndexMonoscopicImageLocation");
        }
      }

      if (HEIFGroupItem::hasDisparityAdjustment(HEIFAuxImageAtIndex))
      {
        DisparityAdjustment = HEIFGroupItem::getDisparityAdjustment(HEIFAuxImageAtIndex);
        IIONumber::IIONumber(&v105, DisparityAdjustment);
        IIODictionary::setObjectForKey(&v108, v107, @"GroupImageDisparityAdjustment");
        IIONumber::~IIONumber(&v105);
      }

      StereoAggressorCount = HEIFGroupItem::getStereoAggressorCount(HEIFAuxImageAtIndex);
      if (!StereoAggressorCount)
      {
        goto LABEL_29;
      }

      v105 = 0;
      v106 = 0;
      v107 = 0;
      IIOArray::IIOArray(&v105);
      for (k = 0; k != StereoAggressorCount; ++k)
      {
        StereoAggressorAtIndex = HEIFGroupItem::getStereoAggressorAtIndex(HEIFAuxImageAtIndex, k);
        v102 = 0;
        v103 = 0;
        v104 = 0;
        IIODictionary::IIODictionary(&v102);
        v26 = IIOImageSource::cf(StereoAggressorAtIndex);
        IIODictionary::setObjectForKey(&v102, v26, @"Type");
        if (IIOImageSource::imageReadRef(StereoAggressorAtIndex))
        {
          Ref = IIOImageSource::imageReadRef(StereoAggressorAtIndex);
          IIODictionary::setObjectForKey(&v102, Ref, @"SubTypeURI");
        }

        if (HEIFStereoAggressor::hasSeverity(StereoAggressorAtIndex))
        {
          Severity = HEIFStereoAggressor::getSeverity(StereoAggressorAtIndex);
          IIONumber::IIONumber(&v99, Severity);
          IIODictionary::setObjectForKey(&v102, v101, @"Severity");
          IIONumber::~IIONumber(&v99);
        }

        IIOArray::addObject(&v105, v103);
        IIODictionary::~IIODictionary(&v102);
      }

      IIODictionary::setObjectForKey(&v108, v106, @"GroupImageStereoAggressors");
      v10 = v89;
    }

    IIOArray::~IIOArray(&v105);
LABEL_29:
    IsAnonymous = TIFFFieldIsAnonymous(HEIFAuxImageAtIndex);
    IIONumber::IIONumber(&v105, IsAnonymous);
    IIODictionary::setObjectForKey(&v108, v107, @"GroupIndex");
    IIONumber::~IIONumber(&v105);
    IIOArray::addObject(&v111, v109);
    IIODictionary::~IIODictionary(&v108);
  }

  IIODictionary::setObjectForKey(a3, v112, @"{Groups}");
  IIOArray::~IIOArray(&v111);
  this = v92;
LABEL_32:
  if (GlobalHEIFInfo::hasHEIFSequence(v10) && GlobalHEIFInfo::useHEIFSequence(v10))
  {
    NumberOfMainImages = GlobalHEIFInfo::getNumberOfMainImages(v10);
    if (NumberOfMainImages)
    {
      v33 = NumberOfMainImages;
      v111 = 0;
      v112 = 0;
      v113 = 0;
      IIODictionary::IIODictionary(&v111);
      IIODictionary::setObjectForKey(v34, *MEMORY[0x1E695E4D0], @"CanAnimate");
      HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, 0);
      v36 = HEIFMainImage::width(HEIFMainImageAtIndex);
      v37 = HEIFMainImage::height(HEIFMainImageAtIndex);
      ColorSpaceName = HEIFMainImage::getColorSpaceName(HEIFMainImageAtIndex);
      if (v36)
      {
        IIONumber::IIONumber(&v108, v36);
        IIODictionary::setObjectForKey(&v111, v110, @"CanvasPixelWidth");
        IIONumber::~IIONumber(&v108);
      }

      if (v37)
      {
        IIONumber::IIONumber(&v108, v37);
        IIODictionary::setObjectForKey(&v111, v110, @"CanvasPixelHeight");
        IIONumber::~IIONumber(&v108);
      }

      if (ColorSpaceName)
      {
        IIODictionary::setObjectForKey(&v111, ColorSpaceName, @"NamedColorSpace");
      }

      v108 = 0;
      v109 = 0;
      v110 = 0;
      IIOArray::IIOArray(&v108);
      for (m = 0; m != v33; ++m)
      {
        v40 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, m);
        FrameDuration = HEIFMainImage::getFrameDuration(v40);
        v105 = 0;
        v106 = 0;
        v107 = 0;
        IIODictionary::IIODictionary(&v105);
        IIONumber::IIONumber(&v102, FrameDuration);
        IIODictionary::setObjectForKey(&v105, v104, @"DelayTime");
        IIONumber::~IIONumber(&v102);
        IIOArray::addObject(&v108, v106);
        IIODictionary::~IIODictionary(&v105);
      }

      IIODictionary::setObjectForKey(&v111, v109, @"FrameInfo");
      v42 = &kCGImagePropertyAVISDictionary;
      if (*(this + 6) != 1096173907)
      {
        v42 = &kCGImagePropertyHEICSDictionary;
      }

      v43 = *v42;
      IIODictionary::setObjectForKey(a3, v112, *v42);
      LoopCount = GlobalHEIFInfo::getLoopCount(v10);
      IIONumber::IIONumber(&v105, LoopCount);
      IIODictionary::setObjectForKeyGroup(a3, &v105, @"LoopCount", v43);
      IIONumber::~IIONumber(&v105);
      IIOArray::~IIOArray(&v108);
      IIODictionary::~IIODictionary(&v111);
    }

    return 0;
  }

  v111 = 0;
  v112 = 0;
  v113 = 0;
  IIOArray::IIOArray(&v111);
  v45 = GlobalHEIFInfo::getNumberOfMainImages(v10);
  IIONumber::IIONumber(&v108, v45);
  IIODictionary::setObjectForKeyGroup(a3, v110, @"ImageCount", @"{FileContents}");
  IIONumber::~IIONumber(&v108);
  if (GlobalHEIFInfo::hasHEIFSequence(v10))
  {
    v88 = *MEMORY[0x1E695E4D0];
    IIODictionary::setObjectForKey(a3, *MEMORY[0x1E695E4D0], @"CanAnimate");
  }

  else
  {
    IIODictionary::setObjectForKey(a3, *MEMORY[0x1E695E4C0], @"CanAnimate");
    v88 = *MEMORY[0x1E695E4D0];
  }

  v91 = 0;
  v46 = 0;
  while (2)
  {
    if (v91 < GlobalHEIFInfo::getNumberOfMainImages(v10))
    {
      v47 = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, v91);
      v108 = 0;
      v109 = 0;
      v110 = 0;
      IIODictionary::IIODictionary(&v108);
      v48 = HEIFMainImage::width(v47);
      v49 = HEIFMainImage::height(v47);
      v50 = *(v47 + 38);
      v51 = HEIFMainImage::getColorSpaceName(v47);
      v52 = v90 && IIODictionary::containsKey(v90, @"kCGImageSourceAddHEIFContainerItemID") && IIODictionary::getBoolForKey(v90, @"kCGImageSourceAddHEIFContainerItemID");
      IIONumber::IIONumber(&v105, v91);
      IIODictionary::setObjectForKey(&v108, v107, @"ImageIndex");
      IIONumber::~IIONumber(&v105);
      if (v48)
      {
        IIONumber::IIONumber(v53, v48);
        IIODictionary::setObjectForKey(&v108, v107, @"Width");
        IIONumber::~IIONumber(&v105);
      }

      if (v49)
      {
        IIONumber::IIONumber(v53, v49);
        IIODictionary::setObjectForKey(&v108, v107, @"Height");
        IIONumber::~IIONumber(&v105);
      }

      if (v50)
      {
        IIONumber::IIONumber(v53, v50);
        IIODictionary::setObjectForKey(&v108, v107, @"Orientation");
        IIONumber::~IIONumber(&v105);
      }

      if (v51)
      {
        IIODictionary::setObjectForKey(&v108, v51, @"NamedColorSpace");
      }

      if (v52)
      {
        FrameCount = GlobalGIFInfo::lastFrameCount(v47);
        IIONumber::IIONumber(&v105, FrameCount);
        IIODictionary::setObjectForKey(&v108, &v105, @"ContainerItemID");
        IIONumber::~IIONumber(&v105);
      }

      SubsampleFactor = IIOImagePlus::getSubsampleFactor(v47);
      switch(SubsampleFactor)
      {
        case 1:
          v56 = @"4:4:4";
          break;
        case 3:
          v56 = @"4:2:2";
          break;
        case 5:
          v56 = @"4:2:0";
          break;
        default:
LABEL_72:
          v105 = 0;
          v106 = 0;
          v107 = 0;
          IIOArray::IIOArray(&v105);
          for (n = 0; n < HEIFMainImage::getNumberOfThumbnailImages(v47); ++n)
          {
            v102 = 0;
            v103 = 0;
            v104 = 0;
            IIODictionary::IIODictionary(&v102);
            HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(v47, n);
            v59 = HEIFGroupItem::getGroupType(HEIFThumbnailImageAtIndex);
            v60 = TIFFFieldIsAnonymous(HEIFThumbnailImageAtIndex);
            v61 = IIO_Reader::osType(HEIFThumbnailImageAtIndex);
            v62 = HEIFThumbnailImage::dataLength(HEIFThumbnailImageAtIndex);
            if (v59)
            {
              IIONumber::IIONumber(&v99, v59);
              IIODictionary::setObjectForKey(&v102, v101, @"Width");
              IIONumber::~IIONumber(&v99);
            }

            if (v60)
            {
              IIONumber::IIONumber(&v99, v60);
              IIODictionary::setObjectForKey(&v102, v101, @"Height");
              IIONumber::~IIONumber(&v99);
            }

            if (v61)
            {
              IIONumber::IIONumber(&v99, v61);
              IIODictionary::setObjectForKey(&v102, v101, @"ThumbnailOffset");
              IIONumber::~IIONumber(&v99);
              IIONumber::IIONumber(v63, v62);
              IIODictionary::setObjectForKey(&v102, v101, @"ThumbnailSize");
              IIONumber::~IIONumber(&v99);
            }

            if (v50)
            {
              IIONumber::IIONumber(&v99, v50);
              IIODictionary::setObjectForKey(&v102, v101, @"Orientation");
              IIONumber::~IIONumber(&v99);
            }

            IIOArray::addObject(&v105, v103);
            IIODictionary::~IIODictionary(&v102);
          }

          IIODictionary::setObjectForKey(&v108, v106, @"ThumbnailImages");
          v102 = 0;
          v103 = 0;
          v104 = 0;
          IIOArray::IIOArray(&v102);
          v64 = 0;
LABEL_84:
          if (v64 >= HEIFMainImage::getNumberOfAuxImages(v47))
          {
            v10 = v89;
            if (IIOArray::getCount(&v102))
            {
              IIODictionary::setObjectForKey(&v108, v103, @"AuxiliaryData");
              v46 = 1;
            }

            v99 = 0;
            v100 = 0;
            v101 = 0;
            IIOArray::IIOArray(&v99);
            v81 = HEIFGroupItem::getStereoAggressorCount(v47);
            if (v81)
            {
              IIODictionary::setObjectForKey(&v108, v88, @"FlexRange");
              for (ii = 0; ii != v81; ++ii)
              {
                v96 = 0;
                v97 = 0;
                v98 = 0;
                IIODictionary::IIODictionary(&v96);
                v93 = 0;
                v94 = 0;
                v95 = 0;
                IIODictionary::IIODictionary(&v93);
                HEIFAlternateImageAtIndex = HEIFMainImage::getHEIFAlternateImageAtIndex(v47, ii);
                HEIFAlternateImage::addInfoToProperties(HEIFAlternateImageAtIndex, &v96);
                IIOArray::addObject(&v99, v97);
                HEIFAlternateImage::addAsAuxImageToProperties(HEIFAlternateImageAtIndex, &v93);
                if ((v46 & 1) == 0)
                {
                  IIODictionary::setObjectForKey(&v108, v103, @"AuxiliaryData");
                }

                IIOArray::addObject(&v102, v94);
                IIODictionary::~IIODictionary(&v93);
                IIODictionary::~IIODictionary(&v96);
                v46 = 1;
              }
            }

            if (IIOArray::getCount(&v99))
            {
              IIODictionary::setObjectForKey(&v108, v100, @"DerivationDetails");
            }

            IIOArray::addObject(&v111, v109);
            IIOArray::~IIOArray(&v99);
            IIOArray::~IIOArray(&v102);
            IIOArray::~IIOArray(&v105);
            IIODictionary::~IIODictionary(&v108);
            ++v91;
            continue;
          }

          v99 = 0;
          v100 = 0;
          v101 = 0;
          IIODictionary::IIODictionary(&v99);
          v65 = HEIFMainImage::getHEIFAuxImageAtIndex(v47, v64);
          v66 = HEIFAuxImage::auxiliaryType(v65);
          v67 = v66;
          if (v66 >= 6 && v66 != 99)
          {
LABEL_119:
            IIODictionary::~IIODictionary(&v99);
            ++v64;
            goto LABEL_84;
          }

          v68 = HEIFGroupItem::getGroupType(v65);
          v69 = TIFFFieldIsAnonymous(v65);
          v70 = HEIFGroupItem::getDisparityAdjustment(v65);
          v71 = HEIFAuxImage::auxiliaryPixelFormat(v65);
          if (v68)
          {
            IIONumber::IIONumber(&v96, v68);
            IIODictionary::setObjectForKey(&v99, v98, @"Width");
            IIONumber::~IIONumber(&v96);
          }

          if (v69)
          {
            IIONumber::IIONumber(&v96, v69);
            IIODictionary::setObjectForKey(&v99, v98, @"Height");
            IIONumber::~IIONumber(&v96);
          }

          if (v70)
          {
            IIONumber::IIONumber(&v96, v70);
            IIODictionary::setObjectForKey(&v99, v98, @"Orientation");
            IIONumber::~IIONumber(&v96);
          }

          if (v71)
          {
            IIONumber::IIONumber(&v96, v71);
            IIODictionary::setObjectForKey(&v99, v98, @"PixelFormat");
            IIONumber::~IIONumber(&v96);
          }

          if (v67 <= 3)
          {
            v72 = @"kCGImageAuxiliaryDataTypeDisparity";
            if (v67 != 1)
            {
              v72 = @"kCGImageAuxiliaryDataTypeDepth";
              if (v67 != 2)
              {
                if (v67 != 3)
                {
LABEL_115:
                  _cg_jpeg_mem_term("updateSourceProperties", 1064, "*** ERROR: auxType %d is not handled");
                }

LABEL_118:
                IIOArray::addObject(&v102, v100);
                goto LABEL_119;
              }
            }

LABEL_117:
            IIODictionary::setObjectForKey(&v99, v72, @"AuxiliaryDataType");
            goto LABEL_118;
          }

          if (v67 != 4)
          {
            if (v67 == 5)
            {
              v72 = @"kCGImageAuxiliaryDataTypePortraitEffectsMatte";
              goto LABEL_117;
            }

            if (v67 != 99)
            {
              goto LABEL_115;
            }
          }

          Size = IIOImageWriteSession::getSize(v65);
          if (Size)
          {
            v74 = Size;
          }

          else
          {
            v74 = @"unknown URN";
          }

          v75 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkinMatte, 0);
          v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkinMatte";
          if (v75)
          {
            v76 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticHairMatte, 0);
            v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationHairMatte";
            if (v76)
            {
              v77 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticTeethMatte, 0);
              v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationTeethMatte";
              if (v77)
              {
                v78 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticGlassesMatte, 0);
                v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationGlassesMatte";
                if (v78)
                {
                  v79 = CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_SemanticSkyMatte, 0);
                  v72 = @"kCGImageAuxiliaryDataTypeSemanticSegmentationSkyMatte";
                  if (v79)
                  {
                    if (CFStringCompare(v74, *gIIO_kCMPhotoAuxiliaryImageTypeURN_HDRGainMap, 0))
                    {
                      IIODictionary::setObjectForKey(&v99, v74, @"AuxiliaryDataType");
                    }

                    else
                    {
                      IIODictionary::setObjectForKey(&v99, @"kCGImageAuxiliaryDataTypeHDRGainMap", @"AuxiliaryDataType");
                      v80 = HEIFAuxImage::meteorHeadroomFromMakerNote(v65);
                      if (v80 != 0.0 || (v80 = HEIFAuxImage::meteorHeadroomFromProperties(v65), v80 != 0.0))
                      {
                        IIONumber::IIONumber(&v96, v80);
                        IIODictionary::setObjectForKey(&v99, v98, @"HDRHeadroom");
                        IIONumber::~IIONumber(&v96);
                      }
                    }

                    goto LABEL_118;
                  }
                }
              }
            }
          }

          goto LABEL_117;
      }

      IIODictionary::setObjectForKey(&v108, v56, @"ChromaSubsampling");
      goto LABEL_72;
    }

    break;
  }

  IIODictionary::setObjectForKeyGroup(a3, v112, @"Images", @"{FileContents}");
  if (GlobalHEIFInfo::getNumberOfMainImages(v10) >= 2)
  {
    PrimaryImageIndex = GlobalHEIFInfo::getPrimaryImageIndex(v10);
    IIONumber::IIONumber(&v108, PrimaryImageIndex);
    IIODictionary::setObjectForKey(a3, v110, @"PrimaryImage");
    IIONumber::~IIONumber(&v108);
  }

  IIOArray::~IIOArray(&v111);
  return 0;
}

void sub_1860305D4(_Unwind_Exception *a1)
{
  IIONumber::~IIONumber((v1 - 152));
  IIODictionary::~IIODictionary((v1 - 128));
  _Unwind_Resume(a1);
}

HEIFMainImage *IIO_Reader_HEIF::initThumbnail(CFStringRef **a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  IIO_LoadHEIFSymbols();
  Session = CGImagePluginGetSession(a2);
  Source = CGImageSourceGetSource(Session);
  v10 = IIOImageReadSession::globalInfoForType(Source, 1212500294);
  if (!v10)
  {
    operator new();
  }

  v11 = ((*a1)[34])(a1, v10, Source, 0);
  if (v11)
  {
    v13 = v11;
    LogError("initThumbnail", 1192, "*** ERROR: extractImageInfo failed: %d\n", v11);
  }

  else
  {
    HEIFMainImageAtIndex = GlobalHEIFInfo::getHEIFMainImageAtIndex(v10, a3);
    v13 = HEIFMainImageAtIndex;
    if (HEIFMainImageAtIndex)
    {
      if (HEIFMainImage::width(HEIFMainImageAtIndex) < a4 && HEIFMainImage::height(v13) < a4)
      {
        v14 = HEIFMainImage::width(v13);
        v15 = HEIFMainImage::height(v13);
        LogError("initThumbnail", 1199, "*** ERROR: kCGImageSourceThumbnailMaxPixelSize: %d is larger than image-dimension: %dx%d\n", a4, v14, v15);
        v16 = HEIFMainImage::width(v13);
        if (v16 <= HEIFMainImage::height(v13))
        {
          HEIFMainImage::height(v13);
        }

        else
        {
          HEIFMainImage::width(v13);
        }
      }

      HEIFThumbnailImageAtIndex = HEIFMainImage::getHEIFThumbnailImageAtIndex(v13, 0);
      if (HEIFThumbnailImageAtIndex)
      {
        v18 = HEIFThumbnailImageAtIndex;
        v13 = HEIFThumbnailImage::dataLength(HEIFThumbnailImageAtIndex);
        IIO_Reader::osType(v18);
        GroupType = HEIFGroupItem::getGroupType(v18);
        if (GroupType <= TIFFFieldIsAnonymous(v18))
        {
          TIFFFieldIsAnonymous(v18);
        }

        else
        {
          HEIFGroupItem::getGroupType(v18);
        }

        if (v13)
        {
          CFStringCompare(*a1[1], @"public.jpeg", 0);
          operator new();
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v13;
}

void sub_186030BD4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x186030B8CLL);
}

void IIO_Reader_HEIF::CreateGlobalHEIFInfoIfNeeded(IIO_Reader_HEIF *this, IIOImageReadSession *a2, int a3)
{
  v4 = a2;
  ReaderHandler = IIO_ReaderHandler::GetReaderHandler(this);
  v7 = IIO_ReaderHandler::readerForUTType(ReaderHandler, @"public.heic");
  if (v7)
  {
    v8 = v7;
    v12 = 0;
    memset(v11, 0, sizeof(v11));
    IIODictionary::IIODictionary(v11);
    IIONumber::IIONumber(v9, v4);
    IIODictionary::setObjectForKey(v11, value, @"JPEGOffset");
    IIONumber::~IIONumber(v9);
    IIONumber::IIONumber(v9, a3);
    IIODictionary::setObjectForKey(v11, value, @"JPEGLength");
    IIONumber::~IIONumber(v9);
    if (IIOImageReadSession::releaseGlobalInfoPtr(this))
    {
      _cg_jpeg_mem_term("CreateGlobalHEIFInfoIfNeeded", 1373, "*** ERROR: releaseGlobalInfoPtr: err: %d\n");
    }

    if ((*(*v8 + 32))(v8, this, v11, 0, &v12))
    {
      _cg_jpeg_mem_term("CreateGlobalHEIFInfoIfNeeded", 1376, "*** ERROR: CreateGlobalHEIFInfoIfNeeded: err: %d\n");
    }

    IIODictionary::~IIODictionary(v11);
  }
}

void sub_186030DA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  IIONumber::~IIONumber(va);
  IIODictionary::~IIODictionary(va1);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_PDF::testHeader(int a1, uint64_t a2, unint64_t a3, CFStringRef theString1)
{
  if (theString1 && CFStringCompare(theString1, @"com.adobe.pdf", 0) == kCFCompareEqualTo)
  {
    v6 = 1024;
    if (a3 < 0x400)
    {
      v6 = a3;
    }

    if (a3 < 7)
    {
      return 0;
    }
  }

  else
  {
    v6 = 10;
  }

  v7 = (v6 - 6);
  for (i = (a2 + 2); *(i - 2) != 37 || *(i - 1) != 80 || *i != 68 || i[1] != 70 || i[2] != 45 || i[3] - 49 >= 2; ++i)
  {
    if (!--v7)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t IIO_Reader_PDF::updateSourceProperties(IIO_Reader_PDF *this, IIOImageReadSession *a2, IIODictionary *a3, IIODictionary *a4, IIODictionary *a5, CGImageSourceStatus *a6)
{
  *a6 = kCGImageStatusIncomplete;
  if (!IIOImageReadSession::isFinal(a2))
  {
    return 4294967246;
  }

  v51 = 0;
  memset(v50, 0, sizeof(v50));
  IIOScanner::IIOScanner(v50, a2);
  v49 = 0;
  v8 = CreateSessionPDFRef(v50, &v49);
  v9 = v8;
  if (v8)
  {
    IsEncrypted = CGPDFDocumentIsEncrypted(v8);
    v11 = *MEMORY[0x1E695E4D0];
    v12 = *MEMORY[0x1E695E4C0];
    if (IsEncrypted)
    {
      v13 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v13 = *MEMORY[0x1E695E4C0];
    }

    IIODictionary::setObjectForKeyGroup(a3, v13, @"IsEncrypted", @"{PDF}");
    if (CGPDFDocumentIsUnlocked(v9))
    {
      v14 = v11;
    }

    else
    {
      v14 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v14, @"IsUnlocked", @"{PDF}");
    AccessPermissions = CGPDFDocumentGetAccessPermissions(v9);
    if (AccessPermissions)
    {
      v16 = v11;
    }

    else
    {
      v16 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v16, @"AllowsLowQualityPrinting", @"{PDF}");
    if ((AccessPermissions & 2) != 0)
    {
      v17 = v11;
    }

    else
    {
      v17 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v17, @"AllowsHighQualityPrinting", @"{PDF}");
    if ((AccessPermissions & 4) != 0)
    {
      v18 = v11;
    }

    else
    {
      v18 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v18, @"AllowsDocumentChanges", @"{PDF}");
    if ((AccessPermissions & 8) != 0)
    {
      v19 = v11;
    }

    else
    {
      v19 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v19, @"AllowsDocumentAssembly", @"{PDF}");
    if ((AccessPermissions & 0x10) != 0)
    {
      v20 = v11;
    }

    else
    {
      v20 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v20, @"AllowsContentCopying", @"{PDF}");
    if ((AccessPermissions & 0x20) != 0)
    {
      v21 = v11;
    }

    else
    {
      v21 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v21, @"AllowsContentAccessibility", @"{PDF}");
    if ((AccessPermissions & 0x40) != 0)
    {
      v22 = v11;
    }

    else
    {
      v22 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v22, @"AllowsCommenting", @"{PDF}");
    if (AccessPermissions < 0)
    {
      v23 = v11;
    }

    else
    {
      v23 = v12;
    }

    IIODictionary::setObjectForKeyGroup(a3, v23, @"AllowsFormFieldEntry", @"{PDF}");
    v24 = CGPDFDocumentCopyInfoDictionary();
    if (v24)
    {
      v25 = CFLocaleCopyCurrent();
      v26 = *MEMORY[0x1E695E480];
      v27 = CFDateFormatterCreate(*MEMORY[0x1E695E480], v25, kCFDateFormatterNoStyle, kCFDateFormatterNoStyle);
      CFDateFormatterSetFormat(v27, @"yyyy:MM:dd HH:mm:ss");
      memset(v48, 0, sizeof(v48));
      IIODictionary::IIODictionary(v48, v24);
      v28 = *MEMORY[0x1E695F3F0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3F0]))
      {
        ObjectForKey = IIODictionary::getObjectForKey(v48, v28);
        StringWithDate = CFDateFormatterCreateStringWithDate(v26, v27, ObjectForKey);
        IIODictionary::setObjectForKeyGroup(a3, StringWithDate, @"ModificationDate", @"{PDF}");
        CFRelease(StringWithDate);
      }

      v31 = *MEMORY[0x1E695F3D8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3D8]))
      {
        v32 = IIODictionary::getObjectForKey(v48, v31);
        v33 = CFDateFormatterCreateStringWithDate(v26, v27, v32);
        IIODictionary::setObjectForKeyGroup(a3, v33, @"CreationDate", @"{PDF}");
        CFRelease(v33);
      }

      CFRelease(v25);
      CFRelease(v27);
      v34 = *MEMORY[0x1E695F3F8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3F8]))
      {
        v35 = IIODictionary::getObjectForKey(v48, v34);
        IIODictionary::setObjectForKeyGroup(a3, v35, @"Producer", @"{PDF}");
      }

      v36 = *MEMORY[0x1E695F3E0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3E0]))
      {
        v37 = IIODictionary::getObjectForKey(v48, v36);
        IIODictionary::setObjectForKeyGroup(a3, v37, @"Creator", @"{PDF}");
      }

      v38 = *MEMORY[0x1E695F3E8];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3E8]))
      {
        v39 = IIODictionary::getObjectForKey(v48, v38);
        IIODictionary::setObjectForKeyGroup(a3, v39, @"Keywords", @"{PDF}");
      }

      v40 = *MEMORY[0x1E695F400];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F400]))
      {
        v41 = IIODictionary::getObjectForKey(v48, v40);
        IIODictionary::setObjectForKeyGroup(a3, v41, @"Subject", @"{PDF}");
      }

      v42 = *MEMORY[0x1E695F3D0];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F3D0]))
      {
        v43 = IIODictionary::getObjectForKey(v48, v42);
        IIODictionary::setObjectForKeyGroup(a3, v43, @"Author", @"{PDF}");
      }

      v44 = *MEMORY[0x1E695F408];
      if (IIODictionary::containsKey(v48, *MEMORY[0x1E695F408]))
      {
        v45 = IIODictionary::getObjectForKey(v48, v44);
        IIODictionary::setObjectForKeyGroup(a3, v45, @"Title", @"{PDF}");
      }

      CFRelease(v24);
      IIODictionary::~IIODictionary(v48);
    }

    CGPDFDocumentRelease(v9);
    v46 = 0;
  }

  else
  {
    if (v49)
    {
      IIODictionary::setObjectForKeyGroup(a3, *MEMORY[0x1E695E4D0], @"IsLocked", @"{PDF}");
    }

    v46 = 4294967246;
  }

  IIOScanner::~IIOScanner(v50);
  return v46;
}

void sub_1860314D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  IIODictionary::~IIODictionary(&a9);
  IIOScanner::~IIOScanner(va);
  _Unwind_Resume(a1);
}

uint64_t IIO_Reader_PDF::getImageCount(IIO_Reader_PDF *this, IIOImageReadSession *a2, IIODictionary *a3, CGImageSourceStatus *a4, unsigned int *a5)
{
  *a4 = kCGImageStatusIncomplete;
  if (!IIOImageReadSession::isFinal(a2))
  {
    return 4294967246;
  }

  v13 = 0;
  memset(v12, 0, sizeof(v12));
  IIOScanner::IIOScanner(v12, a2);
  SessionPDFRef = CreateSessionPDFRef(v12, 0);
  v9 = SessionPDFRef;
  if (SessionPDFRef)
  {
    if (a5)
    {
      *a5 = CGPDFDocumentGetNumberOfPages(SessionPDFRef);
    }

    CGPDFDocumentRelease(v9);
    v10 = 0;
    *a4 = kCGImageStatusComplete;
  }

  else
  {
    v10 = 4294967246;
  }

  IIOScanner::~IIOScanner(v12);
  return v10;
}

BOOL IIO_Reader_PDF::compareOptions(IIO_Reader_PDF *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  memset(v10, 0, sizeof(v10));
  IIODictionary::IIODictionary(v10, a2);
  memset(v9, 0, sizeof(v9));
  IIODictionary::IIODictionary(v9, a3);
  FloatForKey = 0.0;
  if (IIODictionary::containsKey(v10, @"kCGImageSourceRasterizationDPI"))
  {
    FloatForKey = IIODictionary::getFloatForKey(v10, @"kCGImageSourceRasterizationDPI");
  }

  v5 = IIODictionary::containsKey(v9, @"kCGImageSourceRasterizationDPI");
  v6 = 0.0;
  if (v5)
  {
    v6 = IIODictionary::getFloatForKey(v9, @"kCGImageSourceRasterizationDPI");
  }

  v7 = FloatForKey == v6;
  IIODictionary::~IIODictionary(v9);
  IIODictionary::~IIODictionary(v10);
  return v7;
}

void sub_1860316B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  IIODictionary::~IIODictionary(va);
  _Unwind_Resume(a1);
}

__CFString *_CGImageMetadataCopyFormattingDescription(CFDictionaryRef *cf, const __CFDictionary *a2)
{
  Mutable = 0;
  if (cf && *MEMORY[0x1E695E738] != cf)
  {
    v4 = CFGetTypeID(cf);
    if (qword_1ED569DD0 != -1)
    {
      CGImageMetadataGetTypeID_cold_1();
    }

    if (v4 == _MergedGlobals_1 && cf[3])
    {
      v5 = *MEMORY[0x1E695E480];
      Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
      CFStringAppend(Mutable, @"(\n");
      Count = CFDictionaryGetCount(cf[3]);
      v13 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      v14 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(cf[3], v13, v14);
      if (Count >= 1)
      {
        v7 = v14;
        do
        {
          v8 = CFStringCreateWithFormat(v5, 0, @"%@", *v7);
          if (v8)
          {
            v9 = v8;
            MutableCopy = CFStringCreateMutableCopy(v5, 0, v8);
            if (MutableCopy)
            {
              v11 = MutableCopy;
              v15.length = CFStringGetLength(MutableCopy);
              v15.location = 0;
              CFStringFindAndReplace(v11, @"\n", @"\n        ", v15, 0);
              CFStringAppendFormat(Mutable, 0, @"    %@\n", v11);
              CFRelease(v11);
            }

            CFRelease(v9);
          }

          ++v7;
          --Count;
        }

        while (Count);
      }

      CFStringAppend(Mutable, @"\n"));
      if (v13)
      {
        free(v13);
      }

      if (v14)
      {
        free(v14);
      }
    }

    else
    {
      return 0;
    }
  }

  return Mutable;
}

CFStringRef _CGImageMetadataCopyDescription(CFDictionaryRef *cf)
{
  v1 = 0;
  if (!cf || *MEMORY[0x1E695E738] == cf)
  {
    return v1;
  }

  v3 = CFGetTypeID(cf);
  v5 = v3;
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v5 != _MergedGlobals_1)
  {
    return 0;
  }

  if (IIO_OSAppleInternalBuild(v3, v4))
  {
    memset(&v43, 0, sizeof(v43));
    if (cf[3])
    {
      std::to_string(&__dst, cf);
      v6 = std::string::insert(&__dst, 0, "<CGImageMetadata: ");
      v7 = *&v6->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v7;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v8 = std::string::append(&v42, "> (\n");
      v9 = *&v8->__r_.__value_.__l.__data_;
      __p[0].__col_ = v8->__r_.__value_.__r.__words[2];
      *&__p[0].__loc_.__locale_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        locale = __p;
      }

      else
      {
        locale = __p[0].__loc_.__locale_;
      }

      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        col_high = HIBYTE(__p[0].__col_);
      }

      else
      {
        col_high = __p[0].__ct_;
      }

      std::string::append(&v43, locale, col_high);
      if (SHIBYTE(__p[0].__col_) < 0)
      {
        operator delete(__p[0].__loc_.__locale_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      Count = CFDictionaryGetCount(cf[3]);
      std::to_string(&v39, Count);
      v13 = std::string::insert(&v39, 0, "    ");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v40.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v40.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v40, " tag");
      v16 = *&v15->__r_.__value_.__l.__data_;
      __dst.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&__dst.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (Count == 1)
      {
        v17 = "";
      }

      else
      {
        v17 = "s";
      }

      v18 = std::string::append(&__dst, v17);
      v19 = *&v18->__r_.__value_.__l.__data_;
      v42.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
      *&v42.__r_.__value_.__l.__data_ = v19;
      v18->__r_.__value_.__l.__size_ = 0;
      v18->__r_.__value_.__r.__words[2] = 0;
      v18->__r_.__value_.__r.__words[0] = 0;
      v20 = std::string::append(&v42, "\n");
      v21 = *&v20->__r_.__value_.__l.__data_;
      __p[0].__col_ = v20->__r_.__value_.__r.__words[2];
      *&__p[0].__loc_.__locale_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        v22 = __p;
      }

      else
      {
        v22 = __p[0].__loc_.__locale_;
      }

      if (SHIBYTE(__p[0].__col_) >= 0)
      {
        ct = HIBYTE(__p[0].__col_);
      }

      else
      {
        ct = __p[0].__ct_;
      }

      std::string::append(&v43, v22, ct);
      if (SHIBYTE(__p[0].__col_) < 0)
      {
        operator delete(__p[0].__loc_.__locale_);
      }

      if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v42.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v39.__r_.__value_.__l.__data_);
      }

      v24 = malloc_type_calloc(8uLL, Count, 0x2004093837F09uLL);
      CFDictionaryGetKeysAndValues(cf[3], v24, 0);
      __p[0].__loc_.__locale_ = compareCGImageMetadataTagKey;
      v25 = 126 - 2 * __clz(Count);
      if (Count)
      {
        v26 = v25;
      }

      else
      {
        v26 = 0;
      }

      std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(IIOTag *,IIOTag *),IIOTag **,false>(v24, &v24[Count], __p, v26, 1);
      if (Count >= 1)
      {
        v27 = *MEMORY[0x1E695E480];
        v28 = v24;
        do
        {
          Value = CFDictionaryGetValue(cf[3], *v28);
          v30 = CFStringCreateWithFormat(v27, 0, @"%@", Value);
          if (v30)
          {
            memset(&v42, 0, sizeof(v42));
            IIOString::IIOString(&v42, v30);
            memset(&__dst, 0, sizeof(__dst));
            v32 = IIOString::utf8String(v31);
            v33 = strlen(v32);
            if (v33 < 0x7FFFFFFFFFFFFFF8)
            {
              v34 = v33;
              if (v33 < 0x17)
              {
                *(&__dst.__r_.__value_.__s + 23) = v33;
                if (v33)
                {
                  memmove(&__dst, v32, v33);
                }

                __dst.__r_.__value_.__s.__data_[v34] = 0;
                std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:fe200100](__p, "[\\\\]*<CGImageMetadataTag 0x[0-9a-f]*> ", 0);
              }

              operator new();
            }

            std::string::__throw_length_error[abi:fe200100]();
          }

          ++v28;
          --Count;
        }

        while (Count);
      }

      std::string::append(&v43, ")\n");
      if (v24)
      {
        free(v24);
      }
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v35 = &v43;
    }

    else
    {
      v35 = v43.__r_.__value_.__r.__words[0];
    }

    if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v43.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v43.__r_.__value_.__l.__size_;
    }

    v1 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], v35, size, 0x8000100u, 0);
    if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v43.__r_.__value_.__l.__data_);
    }

    return v1;
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<CGImageMetadata %p> %@", cf, cf);
}

void sub_186031FD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v43 - 121) < 0)
  {
    operator delete(*(v43 - 144));
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (*(v43 - 89) < 0)
  {
    operator delete(*(v43 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t CGImageMetadataCreateImmutableCopy(uint64_t a1)
{
  v2 = *MEMORY[0x1E695E480];
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  v4 = Instance;
  if (Instance)
  {
    *(Instance + 16) = 0;
    MutableCopy = CFDictionaryCreateMutableCopy(v2, 0, *(a1 + 24));
    *(v4 + 24) = MutableCopy;
    CFDictionaryApplyFunction(MutableCopy, makeTagsImmutableDictionaryApplier, 0);
    v6 = *(a1 + 40);
    if (v6)
    {
      *(v4 + 40) = CFDictionaryCreateMutableCopy(v2, 0, v6);
    }

    v7 = *(a1 + 32);
    if (v7)
    {
      *(v4 + 32) = CFDictionaryCreateMutableCopy(v2, 0, v7);
    }

    v8 = *(a1 + 48);
    if (v8)
    {
      *(v4 + 48) = CFDictionaryCreateMutableCopy(v2, 0, v8);
    }

    v9 = *(a1 + 56);
    if (v9)
    {
      *(v4 + 56) = CFStringCreateCopy(v2, v9);
    }

    v10 = *(a1 + 64);
    if (v10)
    {
      *(v4 + 64) = CFStringCreateCopy(v2, v10);
    }

    initRecursivePthread_mutex((v4 + 72));
    pthread_mutex_init((v4 + 136), 0);
    initRecursivePthread_mutex((v4 + 208));
  }

  return v4;
}

void makeTagsImmutableDictionaryApplier(const void *a1, CFTypeRef cf, void *a3)
{
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CGImageMetadataTagGetTypeID())
    {
      Source = CGImageSourceGetSource(cf);
      *(Source + 64) = 0;
      v6 = *(Source + 48);
      if (v6)
      {
        v7 = CFGetTypeID(v6);
        TypeID = CFArrayGetTypeID();
        v9 = *(Source + 48);
        if (v7 == TypeID)
        {
          v10.length = CFArrayGetCount(*(Source + 48));
          v10.location = 0;

          CFArrayApplyFunction(v9, v10, makeTagsImmutableArrayApplier, 0);
        }

        else if (v9)
        {
          v11 = CFGetTypeID(*(Source + 48));
          if (v11 == CFDictionaryGetTypeID())
          {
            v12 = *(Source + 48);

            CFDictionaryApplyFunction(v12, makeTagsImmutableDictionaryApplier, 0);
          }
        }
      }
    }
  }
}

CGImageMetadataTagRef CGImageMetadataCopyTagWithPath(CGImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path)
{
  IIOInitDebugFlags(metadata, parent);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    IIOString::IIOString(v11, path);
    v6 = IIOString::utf8String(v11);
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyTagWithPath", 0, v6, -1, 0);
    IIOString::~IIOString(v11);
  }

  if (!metadata)
  {
    goto LABEL_9;
  }

  v7 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataCopyTagWithPath_cold_1();
  }

  if (v7 == _MergedGlobals_1)
  {
    pthread_mutex_lock((metadata + 72));
    TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
    if (TagWithPath)
    {
      v9 = CGImageMetadataTagCopy(TagWithPath);
    }

    else
    {
      v9 = 0;
    }

    pthread_mutex_unlock((metadata + 72));
  }

  else
  {
LABEL_9:
    LogMetadata("CGImageMetadataCopyTagWithPath", 576, "metadata is NULL or not a CGImageMetadataRef");
    return 0;
  }

  return v9;
}

void sub_1860324BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  IIOString::~IIOString(va);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataGetTagWithPath_block_invoke(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v6 = result;
    v7 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v7 == result)
    {
      result = CGImageSourceGetSource(cf);
      v8 = *(result + 56);
      if (v8)
      {
        result = CFArrayGetCount(*(result + 56));
        if (result >= 1)
        {
          v9 = result;
          v10 = 0;
          while (1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v8, v10);
            DefaultString = CGImageMetadataGetDefaultString(ValueAtIndex);
            result = CFStringCompare(DefaultString, *(v6 + 48), 0);
            if (!result)
            {
              break;
            }

            if (v9 == ++v10)
            {
              goto LABEL_8;
            }
          }

          *(*(*(v6 + 32) + 8) + 24) = cf;
          *(*(*(v6 + 40) + 8) + 24) = 1;
        }

LABEL_8:
        if (*(*(*(v6 + 40) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

uint64_t __CGImageMetadataGetTagWithPath_block_invoke_2(uint64_t result, CFTypeRef cf)
{
  if (cf)
  {
    v3 = result;
    v4 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v4 == result)
    {
      Source = CGImageSourceGetSource(cf);
      result = CFStringCompare(*(Source + 24), *(v3 + 40), 0);
      if (!result)
      {
        result = CFStringCompare(*(Source + 32), *(v3 + 48), 0);
        if (!result)
        {
          *(*(*(v3 + 32) + 8) + 24) = cf;
        }
      }
    }
  }

  return result;
}

CFStringRef CGImageMetadataCopyStringValueWithPath(CGImageMetadataRef metadata, CGImageMetadataTagRef parent, CFStringRef path)
{
  IIOInitDebugFlags(metadata, parent);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyStringValueWithPath", 0, 0, -1, 0);
  }

  if (!metadata)
  {
    return 0;
  }

  v6 = CFGetTypeID(metadata);
  if (qword_1ED569DD0 != -1)
  {
    CGImageMetadataGetTypeID_cold_1();
  }

  if (v6 != _MergedGlobals_1)
  {
    return 0;
  }

  pthread_mutex_lock((metadata + 72));
  TagWithPath = CGImageMetadataGetTagWithPath(metadata, parent, path);
  if (TagWithPath && (DefaultString = CGImageMetadataGetDefaultString(TagWithPath)) != 0)
  {
    Copy = CFStringCreateCopy(*MEMORY[0x1E695E480], DefaultString);
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((metadata + 72));
  return Copy;
}

uint64_t __CGImageMetadataSetValueWithPath_block_invoke(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v6 = result;
    v7 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v7 == result)
    {
      Source = CGImageSourceGetSource(cf);
      result = CFStringCompare(*(Source + 24), *(v6 + 48), 0);
      if (!result)
      {
        result = CFStringCompare(*(Source + 32), *(v6 + 56), 0);
        if (!result)
        {
          result = CFRetain(cf);
          *(*(*(v6 + 32) + 8) + 24) = result;
          *(*(*(v6 + 40) + 8) + 24) = 1;
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

void __CGImageMetadataRemoveTagWithPath_block_invoke(int a1, CFTypeRef cf, uint64_t a3)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CGImageMetadataTagGetTypeID())
    {
      v6 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"[%ld]", a3);
      if (v6)
      {
        v7 = v6;
        CGImageMetadataTagSetName(cf, v6);

        CFRelease(v7);
      }
    }
  }
}

uint64_t __CGImageMetadataRemoveTagWithPath_block_invoke_2(uint64_t result, CFTypeRef cf, uint64_t a3, _BYTE *a4)
{
  if (cf)
  {
    v7 = result;
    v8 = CFGetTypeID(cf);
    result = CGImageMetadataTagGetTypeID();
    if (v8 == result)
    {
      result = *(CGImageSourceGetSource(cf) + 56);
      if (result)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 0x40000000;
        v11[2] = __CGImageMetadataRemoveTagWithPath_block_invoke_3;
        v11[3] = &unk_1E6F098B8;
        v9 = *(v7 + 64);
        v14 = a3;
        v15 = v9;
        v10 = *(v7 + 48);
        v12 = *(v7 + 32);
        v13 = v10;
        result = IIOArrayEnumerateUsingBlock(result, v11);
        if (*(*(*(v7 + 40) + 8) + 24) == 1)
        {
          *a4 = 1;
        }
      }
    }
  }

  return result;
}

void __CGImageMetadataRemoveTagWithPath_block_invoke_4(uint64_t a1, CFTypeRef cf, CFIndex a3)
{
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CGImageMetadataTagGetTypeID())
    {
      Source = CGImageSourceGetSource(cf);
      if (CFStringCompare(*(Source + 24), *(a1 + 40), 0) == kCFCompareEqualTo && CFStringCompare(*(Source + 32), *(a1 + 48), 0) == kCFCompareEqualTo)
      {
        CFArrayRemoveValueAtIndex(*(a1 + 56), a3);
        *(*(*(a1 + 32) + 8) + 24) = 1;
      }
    }
  }
}

CGImageMetadataTagRef CGImageMetadataCopyTagMatchingImageProperty(CGImageMetadataRef metadata, CFStringRef dictionaryName, CFStringRef propertyName)
{
  IIOInitDebugFlags(metadata, dictionaryName);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataCopyTagMatchingImageProperty", 0, 0, -1, 0);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  if (dictionaryName)
  {
    v6 = CFGetTypeID(dictionaryName);
    TypeID = CFStringGetTypeID();
    if (propertyName)
    {
      if (v6 == TypeID)
      {
        v8 = CFGetTypeID(propertyName);
        if (v8 == CFStringGetTypeID())
        {
          v11[0] = MEMORY[0x1E69E9820];
          v11[1] = 0x40000000;
          v11[2] = __CGImageMetadataCopyTagMatchingImageProperty_block_invoke;
          v11[3] = &unk_1E6F09930;
          v11[6] = propertyName;
          v11[7] = metadata;
          v11[4] = &v12;
          v11[5] = dictionaryName;
          XMPMappingIterateUsingBlock(v11);
        }
      }
    }
  }

  v9 = v13[3];
  _Block_object_dispose(&v12, 8);
  return v9;
}

void sub_186032B60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CGImageMetadataCopyTagMatchingImageProperty_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = CFStringCompare(*(a1 + 40), **a2, 0);
  if (!result)
  {
    result = CFStringCompare(*(a1 + 48), **(a2 + 8), 0);
    if (!result)
    {
      pthread_mutex_lock((*(a1 + 56) + 72));
      TopLevelTag = CGImageMetadataGetTopLevelTag(*(a1 + 56), **(a2 + 24), **(a2 + 32));
      if (TopLevelTag)
      {
        *(*(*(a1 + 32) + 8) + 24) = CGImageMetadataTagCopy(TopLevelTag);
      }

      result = pthread_mutex_unlock((*(a1 + 56) + 72));
      *a3 = 1;
    }
  }

  return result;
}

BOOL CGImageMetadataSetValueMatchingImageProperty(CGMutableImageMetadataRef metadata, CFStringRef dictionaryName, CFStringRef propertyName, CFTypeRef value)
{
  IIOInitDebugFlags(metadata, dictionaryName);
  if ((~gIIODebugFlags & 0x3000) == 0)
  {
    ImageIODebugOptions(3, "A", "CGImageMetadataSetValueMatchingImageProperty", 0, 0, -1, 0);
  }

  v14 = 0;
  v15 = &v14;
  v16 = 0x2000000000;
  v17 = 0;
  if (dictionaryName)
  {
    v8 = CFGetTypeID(dictionaryName);
    TypeID = CFStringGetTypeID();
    if (propertyName)
    {
      if (v8 == TypeID)
      {
        v10 = CFGetTypeID(propertyName);
        if (v10 == CFStringGetTypeID())
        {
          v13[0] = MEMORY[0x1E69E9820];
          v13[1] = 0x40000000;
          v13[2] = __CGImageMetadataSetValueMatchingImageProperty_block_invoke;
          v13[3] = &unk_1E6F09980;
          v13[4] = &v14;
          v13[5] = dictionaryName;
          v13[6] = propertyName;
          v13[7] = metadata;
          v13[8] = value;
          XMPMappingIterateUsingBlock(v13);
        }
      }
    }
  }

  v11 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);
  return v11;
}

void sub_186032D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __CGImageMetadataSetValueMatchingImageProperty_block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (CFStringCompare(*(a1 + 40), **a2, 0) == kCFCompareEqualTo && CFStringCompare(*(a1 + 48), **(a2 + 8), 0) == kCFCompareEqualTo)
  {
    v6 = *MEMORY[0x1E695E480];
    v7 = CGImageMetadataDefaultPrefixForNamespace(**(a2 + 24));
    v8 = CFStringCreateWithFormat(v6, 0, @"%@:%@", v7, **(a2 + 32));
    if (v8)
    {
      v9 = v8;
      *(*(*(a1 + 32) + 8) + 24) = CGImageMetadataSetValueWithPath(*(a1 + 56), 0, v8, *(a1 + 64));
      CFRelease(v9);
    }

    *a3 = 1;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:fe200100](locale);
  }

  std::locale::~locale(this);
}

unint64_t compareCGImageMetadataTagKey(CFStringRef *a1, CFStringRef *a2)
{
  v4 = CFStringCompare(*a1, *a2, 0x61uLL);
  if (v4 < 0)
  {
    return 1;
  }

  if (v4)
  {
    return 0;
  }

  return CFStringCompare(a1[1], a2[1], 0x61uLL) >> 63;
}

std::string *std::regex_replace[abi:fe200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, std::__wrap_iter<const char *> a2, std::__wrap_iter<const char *> a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 __m)
{
  v6 = __m;
  i = a2.__i_;
  memset(&v19, 0, sizeof(v19));
  std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(&v19, a2, a3, a4, __m);
  memset(&v18, 0, sizeof(v18));
  if (std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v19, &v18))
  {
    if ((v6 & 0x200) == 0)
    {
      while (i != a3.__i_)
      {
        std::string::push_back(a1, *i++);
      }
    }
  }

  else
  {
    v11 = strlen(a5);
    v12 = 0;
    v13 = 0;
    while (!std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(&v19, &v18))
    {
      if ((v6 & 0x200) == 0)
      {
        v14 = v19.__match_.__prefix_.first.__i_;
        v15 = v19.__match_.__prefix_.second.__i_;
        while (v14 != v15)
        {
          std::string::push_back(a1, *v14++);
        }
      }

      std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v19.__match_, a1, a5, &a5[v11], v6);
      a1 = v16;
      v12 = v19.__match_.__suffix_.first.__i_;
      v13 = v19.__match_.__suffix_.second.__i_;
      if ((v6 & 0x400) != 0)
      {
        break;
      }

      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v19);
    }

    if ((v6 & 0x200) == 0)
    {
      while (v12 != v13)
      {
        std::string::push_back(a1, *v12++);
      }
    }
  }

  if (v18.__match_.__matches_.__begin_)
  {
    v18.__match_.__matches_.__end_ = v18.__match_.__matches_.__begin_;
    operator delete(v18.__match_.__matches_.__begin_);
  }

  if (v19.__match_.__matches_.__begin_)
  {
    v19.__match_.__matches_.__end_ = v19.__match_.__matches_.__begin_;
    operator delete(v19.__match_.__matches_.__begin_);
  }

  return a1;
}

void sub_1860330B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a31)
  {
    operator delete(a31);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator==(const std::regex_iterator<std::__wrap_iter<const char *>, char> *this, const std::regex_iterator<std::__wrap_iter<const char *>, char> *__x)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  end = p_match->__matches_.__end_;
  v9 = &__x->__match_;
  v7 = __x->__match_.__matches_.__begin_;
  v8 = v9->__matches_.__end_;
  v10 = v8 == v7 && end == begin;
  if (end != begin && v8 != v7)
  {
    return this->__begin_.__i_ == __x->__begin_.__i_ && this->__end_.__i_ == __x->__end_.__i_ && this->__pregex_ == __x->__pregex_ && this->__flags_ == __x->__flags_ && std::sub_match<std::__wrap_iter<char const*>>::compare[abi:fe200100](begin, v7) == 0;
  }

  return v10;
}

void std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(uint64_t a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  if ((*(a1 + 96) & 1) == 0)
  {
LABEL_59:
    __break(1u);
    return;
  }

  v6 = a3;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return;
    }

    while (1)
    {
      v30 = *v6;
      if (v30 == 92)
      {
        v35 = v6 + 1;
        if (v6 + 1 != a4)
        {
          v30 = *v35;
          v36 = v30 - 48;
          if ((v30 - 48) <= 9)
          {
            v37 = *a1 + 24 * (v30 - 48);
            if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v36)
            {
              v37 = a1 + 24;
            }

            v38 = *v37;
            v39 = *(v37 + 8);
            while (v38 != v39)
            {
              v40 = *v38++;
              std::string::push_back(this, v40);
            }

            goto LABEL_57;
          }

          ++v6;
        }
      }

      else if (v30 == 38)
      {
        v31 = *a1;
        if (*(a1 + 8) == *a1)
        {
          goto LABEL_59;
        }

        v32 = *v31;
        v33 = v31[1];
        while (v32 != v33)
        {
          v34 = *v32++;
          std::string::push_back(this, v34);
        }

        goto LABEL_56;
      }

      std::string::push_back(this, v30);
LABEL_56:
      v35 = v6;
LABEL_57:
      v6 = v35 + 1;
      if (v35 + 1 == a4)
      {
        return;
      }
    }
  }

  if (a3 != a4)
  {
    while (1)
    {
      v9 = *v6;
      v10 = v6 + 1;
      if (v9 != 36 || v10 == a4)
      {
        goto LABEL_9;
      }

      v9 = *v10;
      if (v9 > 0x26)
      {
        break;
      }

      if (v9 == 36)
      {
        goto LABEL_10;
      }

      if (v9 != 38)
      {
        goto LABEL_25;
      }

      v12 = *a1;
      if (*(a1 + 8) == *a1)
      {
        goto LABEL_59;
      }

      v13 = *v12;
      v14 = v12[1];
      while (v13 != v14)
      {
        v15 = *v13++;
        std::string::push_back(this, v15);
      }

LABEL_11:
      v6 = v10 + 1;
      if (v10 + 1 == a4)
      {
        return;
      }
    }

    if (v9 == 39)
    {
      v27 = *(a1 + 72);
      v28 = *(a1 + 80);
      while (v27 != v28)
      {
        v29 = *v27++;
        std::string::push_back(this, v29);
      }

      goto LABEL_11;
    }

    if (v9 == 96)
    {
      v16 = *(a1 + 48);
      v17 = *(a1 + 56);
      while (v16 != v17)
      {
        v18 = *v16++;
        std::string::push_back(this, v18);
      }

      goto LABEL_11;
    }

LABEL_25:
    LODWORD(v19) = v9 - 48;
    if (v19 <= 9)
    {
      v19 = v19;
      if (v6 + 2 != a4)
      {
        v20 = v6[2];
        v21 = v20 - 48;
        v22 = v20 + 10 * v19 - 48;
        if (v21 > 9)
        {
          v10 = v6 + 1;
        }

        else
        {
          v19 = v22;
          v10 = v6 + 2;
        }
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) <= v19)
      {
        v23 = a1 + 24;
      }

      else
      {
        v23 = *a1 + 24 * v19;
      }

      v24 = *v23;
      v25 = *(v23 + 8);
      while (v24 != v25)
      {
        v26 = *v24++;
        std::string::push_back(this, v26);
      }

      goto LABEL_11;
    }

    LOBYTE(v9) = 36;
LABEL_9:
    v10 = v6;
LABEL_10:
    std::string::push_back(this, v9);
    goto LABEL_11;
  }
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(std::regex_iterator<std::__wrap_iter<const char *>, char> *this)
{
  p_match = &this->__match_;
  begin = this->__match_.__matches_.__begin_;
  i = p_match[-1].__position_start_.__i_;
  flags = i | 0x800;
  LODWORD(p_match[-1].__position_start_.__i_) = i | 0x800;
  if (p_match->__matches_.__end_ == begin)
  {
    p_unmatched = &p_match->__unmatched_;
  }

  else
  {
    p_unmatched = begin;
  }

  v7 = p_unmatched->second.__i_;
  if (p_unmatched->first.__i_ != v7)
  {
    v8 = p_unmatched->second.__i_;
LABEL_6:
    this->__flags_ = flags | 0x80;
    v10 = this->__end_.__i_;
    pregex = this->__pregex_;
    memset(&__p, 0, sizeof(__p));
    v11 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(pregex, v8, v10, &__p, flags | 0x80);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v8, v10, &__p, (flags & 0x800) != 0);
    if (__p.__matches_.__begin_)
    {
      __p.__matches_.__end_ = __p.__matches_.__begin_;
      operator delete(__p.__matches_.__begin_);
    }

    if (v11)
    {
      this->__match_.__prefix_.first.__i_ = v7;
      this->__match_.__prefix_.matched = this->__match_.__prefix_.second.__i_ != v7;
      return this;
    }

    begin = p_match->__matches_.__begin_;
    goto LABEL_16;
  }

  v12 = this->__end_.__i_;
  if (v12 == v7)
  {
LABEL_16:
    if (begin)
    {
      this->__match_.__matches_.__end_ = begin;
      operator delete(begin);
      p_match->__matches_.__begin_ = 0;
      p_match->__matches_.__end_ = 0;
      p_match->__matches_.__end_cap_.__value_ = 0;
    }

    this->__match_.__ready_ = 0;
    *&p_match->__matches_.__begin_ = 0u;
    *&p_match->__matches_.__end_cap_.__value_ = 0u;
    *(&p_match->__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
    this->__match_.__prefix_.first.__i_ = 0;
    this->__match_.__prefix_.second.__i_ = 0;
    this->__match_.__prefix_.matched = 0;
    this->__match_.__suffix_.first.__i_ = 0;
    this->__match_.__suffix_.second.__i_ = 0;
    this->__match_.__suffix_.matched = 0;
    this->__match_.__position_start_.__i_ = 0;
    return this;
  }

  v13 = this->__pregex_;
  memset(&__p, 0, sizeof(__p));
  v14 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v13, v7, v12, &__p, i | 0x860u);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, v7, v12, &__p, 1);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  if ((v14 & 1) == 0)
  {
    v8 = v7 + 1;
    flags = this->__flags_;
    goto LABEL_6;
  }

  return this;
}

void sub_1860335B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::regex_iterator<std::__wrap_iter<const char *>, char> *__cdecl std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::regex_iterator(std::regex_iterator<std::__wrap_iter<const char *>, char> *this, std::__wrap_iter<const char *> __a, std::__wrap_iter<const char *> __b, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *__re, std::regex_constants::match_flag_type __m)
{
  v5 = __m;
  this->__begin_ = __a;
  this->__end_ = __b;
  this->__pregex_ = __re;
  *&this->__match_.__matches_.__begin_ = 0u;
  p_match = &this->__match_;
  this->__flags_ = __m;
  this->__match_.__prefix_.first.__i_ = 0;
  this->__match_.__prefix_.second.__i_ = 0;
  this->__match_.__prefix_.matched = 0;
  this->__match_.__suffix_.first.__i_ = 0;
  this->__match_.__suffix_.second.__i_ = 0;
  this->__match_.__suffix_.matched = 0;
  this->__match_.__ready_ = 0;
  this->__match_.__position_start_.__i_ = 0;
  *&this->__match_.__matches_.__end_cap_.__value_ = 0u;
  *(&this->__match_.__unmatched_.std::pair<std::__wrap_iter<const char *>, std::__wrap_iter<const char *>> + 1) = 0u;
  memset(&__p, 0, sizeof(__p));
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(__re, __a.__i_, __b.__i_, &__p, __m);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(&p_match->__matches_, __a.__i_, __b.__i_, &__p, (v5 & 0x800) != 0);
  if (__p.__matches_.__begin_)
  {
    __p.__matches_.__end_ = __p.__matches_.__begin_;
    operator delete(__p.__matches_.__begin_);
  }

  return this;
}

void sub_18603369C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  v13 = *v11;
  if (*v11)
  {
    *(v10 + 40) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(uint64_t a1, char *__f, char *__l, std::match_results<const char *> *this, unsigned int a5)
{
  if ((a5 & 0x80) != 0)
  {
    v9 = a5 & 0xFFA;
  }

  else
  {
    v9 = a5;
  }

  std::match_results<char const*>::__init(this, *(a1 + 28) + 1, __f, __l, (v9 & 0x800) >> 11);
  std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, __f, __l, this, v9, (v9 & 0x800) == 0);
  if (v10)
  {
    if (this->__matches_.__end_ == this->__matches_.__begin_)
    {
      p_unmatched = &this->__unmatched_;
    }

    else
    {
      p_unmatched = this->__matches_.__begin_;
    }

LABEL_19:
    first = p_unmatched->first;
    this->__prefix_.second = p_unmatched->first;
    this->__prefix_.matched = this->__prefix_.first != first;
    second = p_unmatched->second;
    this->__suffix_.first = second;
    this->__suffix_.matched = second != this->__suffix_.second;
    return 1;
  }

  if (__f != __l && (v9 & 0x40) == 0)
  {
    v12 = __f + 1;
    if (v12 != __l)
    {
      v13 = &this->__unmatched_;
      do
      {
        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
        std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v12, __l, this, v9 | 0x80, 0);
        begin = this->__matches_.__begin_;
        end = this->__matches_.__end_;
        if (v16)
        {
          goto LABEL_16;
        }

        std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3), &this->__unmatched_);
      }

      while (++v12 != __l);
    }

    v13 = &this->__unmatched_;
    std::vector<std::sub_match<char const*>>::assign(&this->__matches_, 0xAAAAAAAAAAAAAAABLL * ((this->__matches_.__end_ - this->__matches_.__begin_) >> 3), &this->__unmatched_);
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(a1, v12, __l, this, v9 | 0x80, 0);
    if (v17)
    {
      begin = this->__matches_.__begin_;
      end = this->__matches_.__end_;
LABEL_16:
      if (end == begin)
      {
        p_unmatched = v13;
      }

      else
      {
        p_unmatched = begin;
      }

      goto LABEL_19;
    }
  }

  result = 0;
  this->__matches_.__end_ = this->__matches_.__begin_;
  return result;
}

void std::match_results<std::__wrap_iter<char const*>>::__assign[abi:fe200100]<char const*,std::allocator<std::sub_match<char const*>>>(std::vector<std::ssub_match> *a1, uint64_t a2, std::sub_match<std::__wrap_iter<const char *>> *a3, uint64_t *a4, char a5)
{
  v10 = a4[6];
  std::vector<std::sub_match<std::__wrap_iter<char const*>>>::resize(a1, 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  begin = a1->__begin_;
  if (a1->__end_ == a1->__begin_)
  {
    v14 = a2 - v10;
LABEL_17:
    a1[1].__begin_ = a3;
    a1[1].__end_ = a3;
    LOBYTE(a1[1].__end_cap_.__value_) = 0;
    v23 = (v14 + a4[6]);
    a1[2].__begin_ = v23;
    a1[2].__end_ = (v14 + a4[7]);
    LOBYTE(a1[2].__end_cap_.__value_) = *(a4 + 64);
    a1[3].__begin_ = (v14 + a4[9]);
    a1[3].__end_ = (v14 + a4[10]);
    LOBYTE(a1[3].__end_cap_.__value_) = *(a4 + 88);
    if ((a5 & 1) == 0)
    {
      a1[4].__end_ = v23;
    }

    LOBYTE(a1[4].__begin_) = *(a4 + 96);
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = a2 - v10;
    v16 = *a4;
    v15 = a4[1];
    while (1)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v16) >> 3);
      v18 = (v16 + v12 * 24);
      v19 = v17 <= v13 ? a4 + 3 : v18;
      begin[v12].first.__i_ = (v14 + *v19);
      if (0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - a1->__begin_) >> 3) <= v13)
      {
        break;
      }

      v20 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3) <= v13 ? a4 + 3 : (*a4 + v12 * 24);
      a1->__begin_[v12].second.__i_ = (v14 + v20[1]);
      begin = a1->__begin_;
      v21 = 0xAAAAAAAAAAAAAAABLL * ((a1->__end_ - a1->__begin_) >> 3);
      if (v21 <= v13)
      {
        break;
      }

      v16 = *a4;
      v15 = a4[1];
      if (0xAAAAAAAAAAAAAAABLL * ((v15 - *a4) >> 3) <= v13)
      {
        v22 = a4 + 3;
      }

      else
      {
        v22 = (*a4 + v12 * 24);
      }

      begin[v12].matched = *(v22 + 16);
      ++v13;
      ++v12;
      if (v13 >= v21)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

void std::match_results<char const*>::__init(std::match_results<const char *> *this, unsigned int __s, const char *__f, const char *__l, BOOL __no_update_pos)
{
  this->__unmatched_.first = __l;
  p_unmatched = &this->__unmatched_;
  this->__unmatched_.second = __l;
  this->__unmatched_.matched = 0;
  std::vector<std::sub_match<char const*>>::assign(&this->__matches_, __s, &this->__unmatched_);
  this->__prefix_.first = __f;
  this->__prefix_.second = __f;
  this->__prefix_.matched = 0;
  this->__suffix_ = *p_unmatched;
  if (!__no_update_pos)
  {
    this->__position_start_ = __f;
  }

  this->__ready_ = 1;
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  if ((*(a1 + 24) & 0x1F0) != 0)
  {
    if (*(a1 + 28))
    {
      std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
    }

    else
    {
      std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
    }
  }

  else
  {
    std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(a1, a2, a3, a4, a5, a6);
  }
}

void std::vector<std::sub_match<char const*>>::assign(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - begin) >> 3) < __n)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (__n <= 0xAAAAAAAAAAAAAAALL)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * (value >> 3);
      v8 = 2 * v7;
      if (2 * v7 <= __n)
      {
        v8 = __n;
      }

      if (v7 >= 0x555555555555555)
      {
        v9 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](this, v9);
    }

    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  end = this->__end_;
  v11 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  if (v11 >= __n)
  {
    v12 = __n;
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
  }

  if (v12)
  {
    v13 = __u->std::pair<const char *, const char *>;
    matched = __u->matched;
    v15 = begin;
    do
    {
      v15->std::pair<const char *, const char *> = v13;
      v15->matched = matched;
      ++v15;
      --v12;
    }

    while (v12);
  }

  if (__n <= v11)
  {
    this->__end_ = &begin[__n];
  }

  else
  {
    v16 = &end[__n - v11];
    v17 = 24 * __n - 8 * ((end - begin) >> 3);
    do
    {
      v18 = __u->std::pair<const char *, const char *>;
      *&end->matched = *&__u->matched;
      end->std::pair<const char *, const char *> = v18;
      ++end;
      v17 -= 24;
    }

    while (v17);
    this->__end_ = v16;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_ecma<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.second = a3;
    *&__x.matched = 0;
    __x.first = a3;
    LODWORD(v37[0]) = 0;
    memset(v37 + 8, 0, 80);
    *(&v37[5] + 5) = 0;
    std::vector<std::__state<char>>::push_back[abi:fe200100](&v39, v37);
    if (*(&v37[3] + 1))
    {
      *&v37[4] = *(&v37[3] + 1);
      operator delete(*(&v37[3] + 1));
    }

    if (*&v37[2])
    {
      *(&v37[2] + 1) = *&v37[2];
      operator delete(*&v37[2]);
    }

    v13 = v40;
    if (v39 != v40)
    {
      *(v40 - 96) = 0;
      *(v13 - 88) = a2;
      *(v13 - 80) = a2;
      *(v13 - 72) = a3;
      std::vector<std::sub_match<char const*>>::resize((v13 - 64), *(a1 + 28), &__x);
      if (v39 != v40)
      {
        std::vector<std::pair<unsigned long,char const*>>::resize((v40 - 40), *(a1 + 32));
        v14 = v39;
        v15 = v40;
        if (v39 != v40)
        {
          v36 = a4;
          *(v40 - 16) = v6;
          *(v15 - 8) = a5;
          v16 = 1;
          *(v15 - 4) = a6;
          while (1)
          {
            if ((v16 & 0xFFF) == 0 && (v16 >> 12) >= a3 - a2)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
            }

            if (v14 == v15)
            {
              break;
            }

            v18 = (v15 - 16);
            v17 = *(v15 - 16);
            v19 = (v15 - 96);
            if (v17)
            {
              (*(*v17 + 16))(v17, v15 - 96);
            }

            v20 = *v19;
            if (*v19 > -994)
            {
              switch(v20)
              {
                case -993:
                  goto LABEL_27;
                case -992:
                  memset(v37, 0, sizeof(v37));
                  v23 = *(v15 - 80);
                  v37[0] = *v19;
                  v37[1] = v23;
                  std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v37[2], *(v15 - 64), *(v15 - 56), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 56) - *(v15 - 64)) >> 3));
                  memset(&v37[3] + 8, 0, 24);
                  std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v37[3] + 1, *(v15 - 40), *(v15 - 32), (*(v15 - 32) - *(v15 - 40)) >> 4);
                  v24 = *v18;
                  *(&v37[5] + 5) = *(v15 - 11);
                  *&v37[5] = v24;
                  (*(**v18 + 24))(*v18, 1, v15 - 96);
                  (*(**&v37[5] + 24))(*&v37[5], 0, v37);
                  std::vector<std::__state<char>>::push_back[abi:fe200100](&v39, v37);
                  if (*(&v37[3] + 1))
                  {
                    *&v37[4] = *(&v37[3] + 1);
                    operator delete(*(&v37[3] + 1));
                  }

                  if (*&v37[2])
                  {
                    *(&v37[2] + 1) = *&v37[2];
                    operator delete(*&v37[2]);
                  }

                  break;
                case -991:
                  break;
                default:
LABEL_42:
                  std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
              }
            }

            else if ((v20 + 995) >= 2)
            {
              if (v20 != -1000)
              {
                goto LABEL_42;
              }

              v21 = *(v15 - 80);
              if (((a5 & 0x20) == 0 || v21 != a2) && ((a5 & 0x1000) == 0 || v21 == a3))
              {
                v25 = *v36;
                v26 = v36[1] - *v36;
                if (!v26)
                {
                  break;
                }

                *v25 = a2;
                *(v25 + 8) = v21;
                *(v25 + 16) = 1;
                v27 = *(v15 - 64);
                v28 = *(v15 - 56) - v27;
                if (v28)
                {
                  v29 = 0;
                  v30 = 0xAAAAAAAAAAAAAAABLL * (v26 >> 3);
                  v31 = 0xAAAAAAAAAAAAAAABLL * (v28 >> 3);
                  v32 = 1;
                  while (v30 > v32)
                  {
                    v33 = v27 + 24 * v29;
                    v34 = v32;
                    v35 = v25 + 24 * v32;
                    *v35 = *v33;
                    *(v35 + 16) = *(v33 + 16);
                    v32 = v34 + 1;
                    v29 = v34;
                    if (v31 <= v34)
                    {
                      goto LABEL_34;
                    }
                  }

                  break;
                }

                goto LABEL_34;
              }

LABEL_27:
              if (v39 == v40)
              {
                break;
              }

              v22 = v40 - 96;
              std::allocator<std::__state<char>>::destroy[abi:fe200100](&v39, (v40 - 96));
              v40 = v22;
            }

            v14 = v39;
            v15 = v40;
            ++v16;
            if (v39 == v40)
            {
              goto LABEL_34;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    *&v37[0] = &v39;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](v37);
  }
}

void sub_186033FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  std::__state<char>::~__state(&a11);
  a11 = v16 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&a11);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_nosubs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5, char a6)
{
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v6 = *(a1 + 40);
  if (!v6)
  {
LABEL_73:
    std::deque<std::__state<char>>::~deque[abi:fe200100](&v52);
    return;
  }

  LODWORD(v51[0]) = 0;
  memset(v51 + 8, 0, 80);
  *(&v51[5] + 5) = 0;
  std::deque<std::__state<char>>::push_back(&v52, v51);
  if (*(&v51[3] + 1))
  {
    *&v51[4] = *(&v51[3] + 1);
    operator delete(*(&v51[3] + 1));
  }

  if (*&v51[2])
  {
    *(&v51[2] + 1) = *&v51[2];
    operator delete(*&v51[2]);
  }

  if (!*(&v54 + 1))
  {
    goto LABEL_75;
  }

  v11 = v52.i64[1];
  v12 = *(&v54 + 1) + v54 - 1;
  v13 = v12 / 0x2A;
  v14 = *(v52.i64[1] + 8 * (v12 / 0x2A));
  v15 = 3 * (v12 % 0x2A);
  v16 = v14 + 32 * v15;
  *v16 = 0;
  *(v16 + 8) = a2;
  *(*(v11 + 8 * v13) + 32 * v15 + 16) = a2;
  *(*(v11 + 8 * v13) + 32 * v15 + 24) = a3;
  std::vector<std::pair<unsigned long,char const*>>::resize((*(v11 + 8 * v13) + 32 * v15 + 56), *(a1 + 32));
  v17 = *(&v54 + 1);
  if (!*(&v54 + 1))
  {
    goto LABEL_75;
  }

  v47 = a4;
  v18 = 0;
  v48 = 0;
  v19 = 0;
  v20 = v52.i64[1];
  v21 = *(&v54 + 1) + v54 - 1;
  v22 = v21 / 0x2A;
  v23 = 3 * (v21 % 0x2A);
  *(*(v52.i64[1] + 8 * v22) + 32 * v23 + 80) = v6;
  v24 = a3 - a2;
  v25 = *(v20 + 8 * v22) + 32 * v23;
  *(v25 + 88) = a5;
  *(v25 + 92) = a6;
  do
  {
    if ((++v19 & 0xFFF) == 0 && (v19 >> 12) >= v24)
    {
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
    }

    v27 = *(v52.i64[1] + 8 * ((v17 + v54 - 1) / 0x2AuLL)) + 96 * ((v17 + v54 - 1) % 0x2AuLL);
    v28 = *(v27 + 80);
    if (v28)
    {
      (*(*v28 + 16))(v28, v27);
    }

    v29 = *v27;
    if (*v27 <= -995)
    {
      if (v29 != -1000)
      {
        if (v29 == -999)
        {
          goto LABEL_54;
        }

        if (v29 != -995)
        {
          goto LABEL_74;
        }

        std::deque<std::__state<char>>::push_front(&v52, v27);
        goto LABEL_53;
      }

      v30 = *(v27 + 16);
      v32 = (a5 & 0x1000) == 0 || v30 == a3;
      v33 = v30 != a2 || (a5 & 0x20) == 0;
      if (!v33 || !v32)
      {
        goto LABEL_53;
      }

      v34 = v30 - *(v27 + 8);
      if (v18 <= v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = v18;
      }

      if (v48)
      {
        v18 = v35;
      }

      else
      {
        v18 = v34;
      }

      if (v18 != v24)
      {
        std::deque<std::__state<char>>::pop_back(&v52);
        v48 = 1;
        goto LABEL_54;
      }

      v36 = v52.i64[1];
      v37 = v53;
      if (v53 == v52.i64[1])
      {
        v37 = v52.i64[1];
      }

      else
      {
        v38 = (v52.i64[1] + 8 * (v54 / 0x2A));
        v39 = (*v38 + 96 * (v54 % 0x2A));
        v40 = *(v52.i64[1] + 8 * ((*(&v54 + 1) + v54) / 0x2AuLL)) + 96 * ((*(&v54 + 1) + v54) % 0x2AuLL);
        if (v39 != v40)
        {
          do
          {
            std::allocator<std::__state<char>>::destroy[abi:fe200100](&v52, v39);
            v39 += 12;
            if ((v39 - *v38) == 4032)
            {
              v41 = v38[1];
              ++v38;
              v39 = v41;
            }
          }

          while (v39 != v40);
          v36 = v52.i64[1];
          v37 = v53;
        }
      }

      *(&v54 + 1) = 0;
      v44 = (v37 - v36) >> 3;
      if (v44 >= 3)
      {
        do
        {
          operator delete(*v36);
          v36 = (v52.i64[1] + 8);
          v52.i64[1] = v36;
          v44 = (v53 - v36) >> 3;
        }

        while (v44 > 2);
      }

      if (v44 == 1)
      {
        v45 = 21;
      }

      else
      {
        if (v44 != 2)
        {
LABEL_69:
          v48 = 1;
          v18 = a3 - a2;
          goto LABEL_54;
        }

        v45 = 42;
      }

      *&v54 = v45;
      goto LABEL_69;
    }

    if (v29 <= -993)
    {
      if (v29 == -994)
      {
        goto LABEL_54;
      }

      if (v29 != -993)
      {
        goto LABEL_74;
      }

LABEL_53:
      std::deque<std::__state<char>>::pop_back(&v52);
      goto LABEL_54;
    }

    if (v29 == -992)
    {
      memset(v51, 0, sizeof(v51));
      v42 = *(v27 + 16);
      v51[0] = *v27;
      v51[1] = v42;
      std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v51[2], *(v27 + 32), *(v27 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v27 + 40) - *(v27 + 32)) >> 3));
      memset(&v51[3] + 8, 0, 24);
      std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v51[3] + 1, *(v27 + 56), *(v27 + 64), (*(v27 + 64) - *(v27 + 56)) >> 4);
      v43 = *(v27 + 80);
      *(&v51[5] + 5) = *(v27 + 85);
      *&v51[5] = v43;
      (*(**(v27 + 80) + 24))(*(v27 + 80), 1, v27);
      (*(**&v51[5] + 24))(*&v51[5], 0, v51);
      std::deque<std::__state<char>>::push_back(&v52, v51);
      if (*(&v51[3] + 1))
      {
        *&v51[4] = *(&v51[3] + 1);
        operator delete(*(&v51[3] + 1));
      }

      if (*&v51[2])
      {
        *(&v51[2] + 1) = *&v51[2];
        operator delete(*&v51[2]);
      }
    }

    else if (v29 != -991)
    {
LABEL_74:
      std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
    }

LABEL_54:
    v17 = *(&v54 + 1);
  }

  while (*(&v54 + 1));
  if ((v48 & 1) == 0)
  {
    goto LABEL_73;
  }

  v46 = *v47;
  if (v47[1] != *v47)
  {
    *v46 = a2;
    *(v46 + 8) = a2 + v18;
    *(v46 + 16) = 1;
    goto LABEL_73;
  }

LABEL_75:
  __break(1u);
}

void sub_186034564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::deque<std::__state<char>>::~deque[abi:fe200100](va);
  _Unwind_Resume(a1);
}

void std::basic_regex<char,std::regex_traits<char>>::__match_at_start_posix_subs<std::allocator<std::sub_match<char const*>>>(uint64_t a1, const char *a2, const char *a3, uint64_t *a4, int a5, char a6)
{
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v54 = 0u;
  v55 = 0u;
  *v52 = 0u;
  *v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v6 = *(a1 + 40);
  if (v6)
  {
    __x.second = a3;
    *&__x.matched = 0;
    __x.first = a3;
    LODWORD(v48[0]) = 0;
    *(v48 + 8) = 0uLL;
    *(&v48[1] + 8) = 0uLL;
    *(&v48[2] + 8) = 0uLL;
    *(&v48[3] + 8) = 0uLL;
    *(&v48[4] + 8) = 0uLL;
    *(&v48[5] + 5) = 0;
    std::vector<std::__state<char>>::push_back[abi:fe200100](&v56, v48);
    if (*(&v48[3] + 1))
    {
      *&v48[4] = *(&v48[3] + 1);
      operator delete(*(&v48[3] + 1));
    }

    if (*&v48[2])
    {
      *(&v48[2] + 1) = *&v48[2];
      operator delete(*&v48[2]);
    }

    v13 = v57;
    if (v56 != v57)
    {
      *(v57 - 24) = 0;
      *(v13 - 11) = a2;
      *(v13 - 10) = a2;
      *(v13 - 9) = a3;
      std::vector<std::sub_match<char const*>>::resize((v13 - 8), *(a1 + 28), &__x);
      if (v56 != v57)
      {
        std::vector<std::pair<unsigned long,char const*>>::resize((v57 - 5), *(a1 + 32));
        v14 = v56;
        v15 = v57;
        if (v56 != v57)
        {
          v45 = a4;
          v46 = a3;
          v16 = 0;
          v47 = 0;
          v17 = 0;
          v18 = (a3 - a2);
          *(v57 - 2) = v6;
          *(v15 - 2) = a5;
          *(v15 - 4) = a6;
          while (1)
          {
            if ((++v17 & 0xFFF) == 0 && (v17 >> 12) >= v18)
            {
              std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>();
            }

            if (v14 == v15)
            {
              break;
            }

            v21 = v15 - 2;
            v20 = *(v15 - 2);
            v22 = (v15 - 12);
            if (v20)
            {
              (*(*v20 + 16))(v20, v15 - 12);
            }

            v23 = *v22;
            if (*v22 > -994)
            {
              switch(v23)
              {
                case -993:
                  goto LABEL_37;
                case -992:
                  memset(v48, 0, sizeof(v48));
                  v31 = *(v15 - 5);
                  v48[0] = *v22;
                  v48[1] = v31;
                  std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(&v48[2], *(v15 - 8), *(v15 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 7) - *(v15 - 8)) >> 3));
                  memset(&v48[3] + 8, 0, 24);
                  std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v48[3] + 1, *(v15 - 5), *(v15 - 4), (*(v15 - 4) - *(v15 - 5)) >> 4);
                  v32 = *v21;
                  *(&v48[5] + 5) = *(v15 - 11);
                  *&v48[5] = v32;
                  (*(**v21 + 24))(*v21, 1, v15 - 12);
                  (*(**&v48[5] + 24))(*&v48[5], 0, v48);
                  std::vector<std::__state<char>>::push_back[abi:fe200100](&v56, v48);
                  if (*(&v48[3] + 1))
                  {
                    *&v48[4] = *(&v48[3] + 1);
                    operator delete(*(&v48[3] + 1));
                  }

                  if (*&v48[2])
                  {
                    *(&v48[2] + 1) = *&v48[2];
                    operator delete(*&v48[2]);
                  }

                  break;
                case -991:
                  break;
                default:
LABEL_59:
                  std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>();
              }
            }

            else if ((v23 + 995) >= 2)
            {
              if (v23 != -1000)
              {
                goto LABEL_59;
              }

              v24 = *(v15 - 10);
              if (((a5 & 0x20) == 0 || v24 != a2) && ((a5 & 0x1000) == 0 || v24 == v46))
              {
                v25 = &v24[-*(v15 - 11)];
                if ((v47 & (v16 >= v25)) == 0)
                {
                  v26 = *(v15 - 5);
                  v50 = *v22;
                  v51 = v26;
                  if (&v50 != v22)
                  {
                    std::vector<std::sub_match<char const*>>::__assign_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(v52, *(v15 - 8), *(v15 - 7), 0xAAAAAAAAAAAAAAABLL * ((*(v15 - 7) - *(v15 - 8)) >> 3));
                    std::vector<std::pair<unsigned long,char const*>>::__assign_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(&v53[1], *(v15 - 5), *(v15 - 4), (*(v15 - 4) - *(v15 - 5)) >> 4);
                  }

                  v27 = *v21;
                  *(&v55 + 5) = *(v15 - 11);
                  *&v55 = v27;
                  v16 = v25;
                }

                if (v16 == v18)
                {
                  v28 = v56;
                  for (i = v57; i != v28; std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, i))
                  {
                    i -= 12;
                  }

                  v57 = v28;
                  v47 = 1;
                  v16 = v18;
                }

                else
                {
                  if (v56 == v57)
                  {
                    break;
                  }

                  v33 = v57 - 12;
                  std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, v57 - 12);
                  v57 = v33;
                  v47 = 1;
                }

                goto LABEL_43;
              }

LABEL_37:
              if (v56 == v57)
              {
                break;
              }

              v30 = v57 - 12;
              std::allocator<std::__state<char>>::destroy[abi:fe200100](&v56, v57 - 12);
              v57 = v30;
            }

LABEL_43:
            v14 = v56;
            v15 = v57;
            if (v56 == v57)
            {
              if ((v47 & 1) == 0)
              {
                goto LABEL_54;
              }

              v34 = *v45;
              v35 = v45[1];
              v36 = v35 - *v45;
              if (v35 != *v45)
              {
                *v34 = a2;
                *(v34 + 8) = &v16[a2];
                *(v34 + 16) = 1;
                v37 = v52[0];
                if (v52[1] == v52[0])
                {
                  goto LABEL_54;
                }

                v38 = 0;
                v39 = 0xAAAAAAAAAAAAAAABLL * (v36 >> 3);
                v40 = 0xAAAAAAAAAAAAAAABLL * ((v52[1] - v52[0]) >> 3);
                v41 = 1;
                while (v39 > v41)
                {
                  v42 = &v37[24 * v38];
                  v43 = v41;
                  v44 = v34 + 24 * v41;
                  *v44 = *v42;
                  *(v44 + 16) = v42[16];
                  v41 = v43 + 1;
                  v38 = v43;
                  if (v40 <= v43)
                  {
                    goto LABEL_54;
                  }
                }
              }

              break;
            }
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_54:
    if (v53[1])
    {
      *&v54 = v53[1];
      operator delete(v53[1]);
    }

    if (v52[0])
    {
      v52[1] = v52[0];
      operator delete(v52[0]);
    }

    *&v50 = &v56;
    std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&v50);
  }
}

void sub_186034A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  std::__state<char>::~__state(&a13);
  std::__state<char>::~__state(&a29);
  a29 = v29 - 112;
  std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](&a29);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::__state<char>>::push_back[abi:fe200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(v3 + 56) = 0;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(a2 + 56) = 0;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    v5 = *(a2 + 80);
    *(v3 + 85) = *(a2 + 85);
    *(v3 + 80) = v5;
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void *std::__state<char>::~__state(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  v3 = a1[4];
  if (v3)
  {
    a1[5] = v3;
    operator delete(v3);
  }

  return a1;
}

void std::vector<std::sub_match<char const*>>::resize(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __sz, std::vector<std::csub_match>::const_reference __x)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((this->__end_ - this->__begin_) >> 3);
  v4 = __sz >= v3;
  v5 = __sz - v3;
  if (v5 != 0 && v4)
  {
    std::vector<std::sub_match<char const*>>::__append(this, v5, __x);
  }

  else if (!v4)
  {
    this->__end_ = &this->__begin_[__sz];
  }
}

void std::vector<std::pair<unsigned long,char const*>>::resize(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<std::pair<unsigned long,char const*>>::__append(this, __sz - v2);
  }
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)12>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 12);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

void std::__throw_regex_error[abi:fe200100]<(std::regex_constants::error_type)16>()
{
  exception = __cxa_allocate_exception(0x18uLL);
  MEMORY[0x1866024B0](exception, 16);
  __cxa_throw(exception, MEMORY[0x1E69E53A0], MEMORY[0x1E69E52B0]);
}

uint64_t std::vector<std::__state<char>>::__emplace_back_slow_path<std::__state<char>>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v19 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::__state<char>>>(a1, v6);
  }

  v7 = 96 * v2;
  v16 = 0;
  v17 = v7;
  *(&v18 + 1) = 0;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  *(v7 + 72) = 0;
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 + 85) = *(a2 + 85);
  *(v7 + 80) = v9;
  *&v18 = 96 * v2 + 96;
  v10 = a1[1];
  v11 = 96 * v2 + *a1 - v10;
  std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::__state<char>>,std::__state<char>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::__state<char>>::~__split_buffer(&v16);
  return v15;
}

void sub_186034E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<std::__state<char>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::__state<char>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:fe200100]<std::allocator<std::__state<char>>,std::__state<char>*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v13 = a4;
  v14 = a4;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 == a3)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *(v7 + 16);
      *a4 = *v7;
      *(a4 + 16) = v8;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      v9 = *(v7 + 80);
      *(a4 + 85) = *(v7 + 85);
      *(a4 + 80) = v9;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v14 = a4;
    LOBYTE(v12) = 1;
    while (v5 != a3)
    {
      std::allocator<std::__state<char>>::destroy[abi:fe200100](a1, v5);
      v5 += 12;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:fe200100](v11);
}

void std::allocator<std::__state<char>>::destroy[abi:fe200100](uint64_t a1, void *a2)
{
  v3 = a2[7];
  if (v3)
  {
    a2[8] = v3;
    operator delete(v3);
  }

  v4 = a2[4];
  if (v4)
  {
    a2[5] = v4;

    operator delete(v4);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>>::~__exception_guard_exceptions[abi:fe200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:fe200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<std::__state<char>>,std::__state<char>*>::operator()[abi:fe200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 12;
      std::allocator<std::__state<char>>::destroy[abi:fe200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<std::__state<char>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::__state<char>>::clear[abi:fe200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::__state<char>>::clear[abi:fe200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<std::__state<char>>::destroy[abi:fe200100](v4, (i - 96));
  }
}

void std::vector<std::sub_match<char const*>>::__append(std::vector<std::csub_match> *this, std::vector<std::csub_match>::size_type __n, std::vector<std::csub_match>::const_reference __x)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (0xAAAAAAAAAAAAAAABLL * ((value - end) >> 3) >= __n)
  {
    if (__n)
    {
      v11 = &end[__n];
      v12 = 24 * __n;
      do
      {
        v13 = __x->std::pair<const char *, const char *>;
        *&end->matched = *&__x->matched;
        end->std::pair<const char *, const char *> = v13;
        ++end;
        v12 -= 24;
      }

      while (v12);
      end = v11;
    }

    this->__end_ = end;
  }

  else
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((end - this->__begin_) >> 3);
    v8 = v7 + __n;
    if (v7 + __n > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((value - this->__begin_) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(this, v10);
    }

    v14 = 24 * __n;
    v15 = 24 * v7;
    do
    {
      v16 = __x->std::pair<const char *, const char *>;
      *(v15 + 16) = *&__x->matched;
      *v15 = v16;
      v15 += 24;
      v14 -= 24;
    }

    while (v14);
    begin = this->__begin_;
    v18 = this->__end_;
    v19 = (24 * v7 + this->__begin_ - v18);
    if (v18 != this->__begin_)
    {
      v20 = (24 * v7 + this->__begin_ - v18);
      do
      {
        v21 = begin->std::pair<const char *, const char *>;
        *(v20 + 2) = *&begin->matched;
        *v20 = v21;
        v20 += 24;
        ++begin;
      }

      while (begin != v18);
      begin = this->__begin_;
    }

    this->__begin_ = v19;
    this->__end_ = (24 * v7 + 24 * __n);
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

void std::vector<std::pair<unsigned long,char const*>>::__append(std::vector<std::pair<unsigned long, const char *>> *this, std::vector<std::pair<unsigned long, const char *>>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 16 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    v6 = end - this->__begin_;
    v7 = __n + (v6 >> 4);
    if (v7 >> 60)
    {
      std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
    }

    v8 = value - this->__begin_;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(this, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * __n);
    v11 = &v10[16 * __n];
    v12 = this->__end_ - this->__begin_;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], this->__begin_, v12);
    begin = this->__begin_;
    this->__begin_ = v13;
    this->__end_ = v11;
    this->__end_cap_.__value_ = 0;
    if (begin)
    {

      operator delete(begin);
    }
  }
}

void std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fe200100]();
}

uint64_t *std::vector<std::sub_match<char const*>>::__init_with_size[abi:fe200100]<std::sub_match<char const*>*,std::sub_match<char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_1860354B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::sub_match<char const*>>::__vallocate[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::sub_match<char const*>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

uint64_t *std::vector<std::pair<unsigned long,char const*>>::__init_with_size[abi:fe200100]<std::pair<unsigned long,char const*>*,std::pair<unsigned long,char const*>*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:fe200100](result, a4);
  }

  return result;
}

void sub_186035578(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<unsigned long,char const*>>::__vallocate[abi:fe200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:fe200100]<std::allocator<std::pair<unsigned long,char const*>>>(a1, a2);
  }

  std::vector<IIOTag *>::__throw_length_error[abi:fe200100]();
}

void std::vector<std::__state<char>>::__destroy_vector::operator()[abi:fe200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 12;
        std::allocator<std::__state<char>>::destroy[abi:fe200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

__n128 std::deque<std::__state<char>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 42 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<std::__state<char>>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *(v5 + 8 * (v7 / 0x2A)) + 96 * (v7 % 0x2A);
  v9 = *(a2 + 16);
  *v8 = *a2;
  *(v8 + 16) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(v8 + 32) = 0;
  *(v8 + 32) = *(a2 + 32);
  *(v8 + 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 0;
  result = *(a2 + 56);
  *(v8 + 56) = result;
  *(v8 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v11 = *(a2 + 80);
  *(v8 + 85) = *(a2 + 85);
  *(v8 + 80) = v11;
  ++a1[5];
  return result;
}

void *std::deque<std::__state<char>>::pop_back(void *result)
{
  v1 = result[5];
  if (v1)
  {
    v2 = result;
    std::allocator<std::__state<char>>::destroy[abi:fe200100](result, (*(result[1] + 8 * ((v1 + result[4] - 1) / 0x2AuLL)) + 96 * ((v1 + result[4] - 1) % 0x2AuLL)));
    --v2[5];

    return std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:fe200100](v2, 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

int64x2_t std::deque<std::__state<char>>::push_front(int64x2_t *a1, uint64_t a2)
{
  v4 = a1[2].u64[0];
  if (!v4)
  {
    std::deque<std::__state<char>>::__add_front_capacity(a1);
    v4 = a1[2].u64[0];
  }

  v5 = a1->i64[1];
  v6 = (v5 + 8 * (v4 / 0x2A));
  v7 = *v6 + 96 * (v4 % 0x2A);
  if (a1[1].i64[0] == v5)
  {
    v7 = 0;
  }

  if (v7 == *v6)
  {
    v7 = *(v6 - 1) + 4032;
  }

  v8 = *(a2 + 16);
  *(v7 - 96) = *a2;
  *(v7 - 80) = v8;
  *(v7 - 56) = 0;
  *(v7 - 48) = 0;
  *(v7 - 64) = 0;
  *(v7 - 64) = *(a2 + 32);
  *(v7 - 48) = *(a2 + 48);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 - 40) = 0;
  *(v7 - 32) = 0;
  *(v7 - 24) = 0;
  *(v7 - 40) = *(a2 + 56);
  *(v7 - 24) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  v9 = *(a2 + 80);
  *(v7 - 11) = *(a2 + 85);
  *(v7 - 16) = v9;
  result = vaddq_s64(a1[2], xmmword_18620AF60);
  a1[2] = result;
  return result;
}

void std::deque<std::__state<char>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x2A;
  v3 = v1 - 42;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v9);
}

void sub_186035A6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_front<std::__state<char> *>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_back<std::__state<char> *>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *> &>::emplace_front<std::__state<char> *&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:fe200100]<std::allocator<IIOTag *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<std::__state<char>>::__maybe_remove_back_spare[abi:fe200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 42 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x2A)
  {
    a2 = 1;
  }

  if (v5 < 0x54)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}