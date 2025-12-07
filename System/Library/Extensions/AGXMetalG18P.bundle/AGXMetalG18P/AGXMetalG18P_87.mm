uint64_t AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 236;
  }

  v3 = *(a1 + 64);
  v4 = (*(a1 + 128) + *(a1 + 216) - 1) / *(a1 + 216);
  v5 = (*(a1 + 132) + *(a1 + 220) - 1) / *(a1 + 220);
  v6 = 32 - __clz(~(-1 << -__clz(v4 - 1)));
  if (v4 >= 2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (v5 < 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = 32 - __clz(~(-1 << -__clz(v5 - 1)));
  }

  v9 = *(a1 + v2);
  if (v3 == 1 && !a2 || !v3)
  {
    return 1;
  }

  v10 = *(a1 + 112) * *(*(a1 + 208) + 88);
  result = 0;
  if (a2)
  {
    v12 = __clz(v9 / v10 - 1);
    v13 = (33 - v12) >> 1;
    v14 = 32 - v12 - v13;
    while (1)
    {
      v15 = v7 - result;
      if (v7 < result)
      {
        v15 = 0;
      }

      v16 = v8 - result;
      if (v8 < result)
      {
        v16 = 0;
      }

      if (v16 < v14 || v15 < v13)
      {
        break;
      }

      result = (result + 1);
      if (v3 == result)
      {
        return 1;
      }
    }
  }

  else
  {
    while (1)
    {
      v18 = v7 - result;
      if (v7 < result)
      {
        v18 = 0;
      }

      v19 = v8 - result;
      if (v8 < result)
      {
        v19 = 0;
      }

      if (v10 << (v18 + v19) < v9)
      {
        break;
      }

      result = (result + 1);
      if (v3 == result)
      {
        return 1;
      }
    }
  }

  return result;
}

int64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = a4;
  v8 = *(a1 + 168);
  if (v8 && ((v9 = *(a1 + 396), v9 != 3) ? (v10 = v9 == 0) : (v10 = 1), v10))
  {
    v11 = (*(a1 + 176) + a4);
    BaseAddressOfPlane = IOSurfaceGetBaseAddressOfPlane(v8, 0);
    if ((IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
    }

    else
    {
      BaseAddressOfCompressedTileDataRegionOfSliceAndPlane = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v11);
    }

    v21 = BaseAddressOfCompressedTileDataRegionOfSliceAndPlane;
    v22 = *(a1 + 176);
    v23 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), 0);
    if ((IOSurfaceGetSliceCount() & 0xFFFFFFFELL) != 0)
    {
      v24 = IOSurfaceGetBaseAddressOfCompressedTileDataRegionOfSliceAndPlane();
    }

    else
    {
      v24 = IOSurfaceGetBaseAddressOfPlane(*(a1 + 168), v22);
    }

    v16 = &v23[v21] - &BaseAddressOfPlane[v24];
  }

  else
  {
    v14 = *(a1 + 384);
    v15 = a2 / v14;
    if (a4)
    {
      v16 = *(a1 + 8 * (a4 - 1) + 360);
    }

    else
    {
      v16 = 0;
    }

    v17 = v15 * v14;
    v18 = *(a1 + 396);
    if (v14 <= a2 && (v18 & 0x10000) != 0)
    {
      v19 = *(a1 + 236);
      if (v19)
      {
        if ((*(a1 + 396) & 0xFF00) == 0x400)
        {
          v20 = (8 * (6 * v15) * (((v19 << 8) + ((AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a4) + v19 - 1) & -v19) - 1) & -(v19 << 8)) / v19);
        }

        else
        {
          if (*(a1 + 396))
          {
            v26 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4) + v19 - 1) & -v19;
          }

          else
          {
            v26 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a4) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
            LODWORD(v19) = *(a1 + 236);
          }

          v20 = (8 * v15 * ((v26 + (v19 << 8) - 1) & -(v19 << 8)) / v19);
        }
      }

      else
      {
        if ((*(a1 + 396) & 0xFF00) == 0x400)
        {
          v25 = 6 * AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4);
        }

        else if (*(a1 + 396))
        {
          v25 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a4);
        }

        else
        {
          v25 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a4) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
        }

        v20 = v25 * v15;
      }

      v16 += v20;
      v18 = *(a1 + 396);
    }

    if (a2 != v17 && (v18 & 0xFF00) == 0x400)
    {
      v27 = a2 - v17;
      v28 = *(a1 + 236);
      v29 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, v4);
      v30 = (v29 + v28 - 1) & -v28;
      if (!v28)
      {
        v30 = v29;
      }

      v31 = v30 * v27;
      v32 = (8 * v27 * (((v28 << 8) + v30 - 1) & -(v28 << 8)) / v28);
      if (!v28)
      {
        v32 = v31;
      }

      v16 += v32;
    }

    if (a3)
    {
      v16 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getLevelOffset<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, a3, v4);
    }
  }

  return *(a1 + 312) + v16;
}

BOOL AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 128);
  v3 = *(a1 + 132);
  if (v2 <= 1)
  {
    v2 = 1;
  }

  if (v3 <= 1)
  {
    v3 = 1;
  }

  v4 = *(a1 + 584);
  v5 = v4 && *(v4 + 1304) > a2 && *(a1 + 57) != 0;
  if (*(a1 + 396) != 2)
  {
    return 0;
  }

  v6 = *(a1 + 208);
  v7 = (*(a1 + 216) + v2 - 1) / *(a1 + 216);
  v8 = *(v6 + 56);
  v9 = (8 * *(a1 + 112) * *(v6 + 88)) >> v5;
  v10 = (*(a1 + 220) + v3 - 1) / *(a1 + 220);
  if (v9 <= 63)
  {
    if (v9 == 32)
    {
      v21 = 64;
    }

    else
    {
      v21 = 0;
    }

    if (v9 == 16)
    {
      v14 = 128;
    }

    else
    {
      v14 = v21;
    }

    if (v9 == 16)
    {
      v15 = 64;
    }

    else
    {
      v15 = v21;
    }

    if (v9 == 8)
    {
      v22 = 128;
    }

    else
    {
      v22 = 0;
    }

    if (v9 == 4)
    {
      v17 = 256;
    }

    else
    {
      v17 = v22;
    }

    if (v9 == 4)
    {
      v18 = 128;
    }

    else
    {
      v18 = v22;
    }

    v19 = v9 <= 15;
  }

  else
  {
    if (v9 == 1024)
    {
      v11 = 16;
    }

    else
    {
      v11 = 0;
    }

    if (v9 == 1024)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (v9 == 512)
    {
      v11 = 16;
      v13 = 16;
    }

    else
    {
      v13 = v12;
    }

    if (v9 == 256)
    {
      v14 = 32;
    }

    else
    {
      v14 = v11;
    }

    if (v9 == 256)
    {
      v15 = 16;
    }

    else
    {
      v15 = v13;
    }

    if (v9 == 128)
    {
      v16 = 32;
    }

    else
    {
      v16 = 0;
    }

    if (v9 == 64)
    {
      v17 = 64;
    }

    else
    {
      v17 = v16;
    }

    if (v9 == 64)
    {
      v18 = 32;
    }

    else
    {
      v18 = v16;
    }

    v19 = v9 <= 255;
  }

  if (v19)
  {
    v23 = v17;
  }

  else
  {
    v23 = v14;
  }

  if (v19)
  {
    v15 = v18;
  }

  if (v8)
  {
    v24 = ~(-1 << a2);
  }

  else
  {
    v24 = 0;
  }

  v25 = (v24 + v10) >> a2;
  if (v25 <= 1)
  {
    v25 = 1;
  }

  v26 = (v24 + v7) >> a2;
  if (v26 <= 1)
  {
    v26 = 1;
  }

  return v26 >= v23 && v25 >= v15;
}

size_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(uint64_t a1, int a2)
{
  if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      WidthInCompressedTilesOfPlane = IOSurfaceGetWidthInCompressedTilesOfPlane();
      return IOSurfaceGetBytesPerTileDataOfPlane() * WidthInCompressedTilesOfPlane;
    }

    else
    {
      v8 = *(a1 + 128);
      v9 = *(a1 + 32);
      v10 = *(a1 + 208);
      v11 = *(a1 + a2 + 57);
      v18 = 0;
      memset(v17, 0, sizeof(v17));
      v12 = *(v10 + 49);
      InterchangeTiledMemory::getPlaneInfo(v17, a2, v9, v12);
      v14 = a2;
      if (a2 == 1 && (*(v10 + 72) & 0xFFFFFFFE) == 2)
      {
        v8 = (v8 + 1) >> 1;
      }

      v15 = LOBYTE(v17[0]);
      v20 = 0;
      memset(v19, 0, sizeof(v19));
      InterchangeTiledMemory::getPlaneInfo(v19, v14, v9, v12);
      if ((v11 - 1) > 2)
      {
        v16 = (BYTE1(v19[0]) * LOBYTE(v19[0]) * BYTE2(v19[0])) >> 3;
      }

      else
      {
        v16 = *(&v19[2] + v11 + 1);
      }

      return v16 * ((v8 + v15 - 1) / v15);
    }
  }

  else if (*(a1 + 396))
  {
    return 0;
  }

  else if (*(a1 + 168))
  {
    v2 = (*(a1 + 176) + a2);
    v3 = *(a1 + 168);

    return IOSurfaceGetBytesPerRowOfPlane(v3, v2);
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = (v6 - 624) > 0x1A || ((1 << (v6 - 112)) & 0x400000F) == 0;
    if (v7 && (v6 - 550) >= 2)
    {
      return *(a1 + 152);
    }

    else
    {
      return (*(a1 + 128) * *(*(a1 + 208) + a2 + 88) + 15) & 0x1FFFFFFFFF0;
    }
  }
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,4u>>(uint8x16_t *result, const float *a2, int a3, int a4, int a5)
{
  if (result && a2)
  {
    v5 = (result + 4 * (a4 * a3));
    if (a5)
    {
      for (; result < v5; a2 += 2)
      {
        result->i8[0] = (*(a2 + 4) + *a2) >> 1;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1)) >> 1;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2)) >> 1;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3)) >> 1;
        result = (result + 4);
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 4) + *a2) >> 1;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1)) >> 1;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2)) >> 1;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3)) >> 1;
        result = (result + 4);
        a2 += 2;
      }
    }

    else
    {
      for (i = v5 - 4 * ((a4 * a3) & 0xFu); result < i; result += 4)
      {
        v8 = vld4q_f32(a2);
        v7 = a2 + 16;
        v9 = vld4q_f32(v7);
        v7 += 16;
        v10 = vld4q_f32(v7);
        v7 += 16;
        v11 = vld4q_f32(v7);
        a2 = v7 + 16;
        *result = vhaddq_u8(vhaddq_u8(v8.val[0], v8.val[1]), vhaddq_u8(v8.val[2], v8.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v9.val[0], v9.val[1]), vhaddq_u8(v9.val[2], v9.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v10.val[0], v10.val[1]), vhaddq_u8(v10.val[2], v10.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 4) + *a2 + *(a2 + 8) + *(a2 + 12)) >> 2;
        result->i8[1] = (*(a2 + 5) + *(a2 + 1) + *(a2 + 9) + *(a2 + 13)) >> 2;
        result->i8[2] = (*(a2 + 6) + *(a2 + 2) + *(a2 + 10) + *(a2 + 14)) >> 2;
        result->i8[3] = (*(a2 + 7) + *(a2 + 3) + *(a2 + 11) + *(a2 + 15)) >> 2;
        result = (result + 4);
        a2 += 4;
      }
    }
  }

  return result;
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,2u>>(uint8x16_t *result, const __int16 *a2, int a3, int a4, int a5)
{
  if (result && a2)
  {
    v5 = (result + 2 * (a4 * a3));
    if (a5)
    {
      for (; result < v5; a2 += 2)
      {
        result->i8[0] = (*(a2 + 2) + *a2) >> 1;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1)) >> 1;
        result = (result + 2);
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 2) + *a2) >> 1;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1)) >> 1;
        result = (result + 2);
        a2 += 2;
      }
    }

    else
    {
      for (i = v5 - 2 * ((a4 * a3) & 0x1Fu); result < i; result += 4)
      {
        v8 = vld4q_s16(a2);
        v7 = a2 + 32;
        v9 = vld4q_s16(v7);
        v7 += 32;
        v10 = vld4q_s16(v7);
        v7 += 32;
        v11 = vld4q_s16(v7);
        a2 = v7 + 32;
        *result = vhaddq_u8(vhaddq_u8(v8.val[0], v8.val[1]), vhaddq_u8(v8.val[2], v8.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v9.val[0], v9.val[1]), vhaddq_u8(v9.val[2], v9.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v10.val[0], v10.val[1]), vhaddq_u8(v10.val[2], v10.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
      }

      while (result < v5)
      {
        result->i8[0] = (*(a2 + 2) + *a2 + *(a2 + 4) + *(a2 + 6)) >> 2;
        result->i8[1] = (*(a2 + 3) + *(a2 + 1) + *(a2 + 5) + *(a2 + 7)) >> 2;
        result = (result + 2);
        a2 += 4;
      }
    }
  }

  return result;
}

uint8x16_t *agxsDownsample<AGXSDownsamplerGeneric<unsigned char,1u>>(uint8x16_t *result, const char *a2, int a3, int a4, int a5, uint8x8_t a6)
{
  if (result && a2)
  {
    v6 = (a4 * a3);
    v7 = (result + v6);
    if (a5)
    {
      if (v7 > result)
      {
        do
        {
          result->i8[0] = (*(a2 + 1) + *a2) >> 1;
          result = (result + 1);
          a2 += 2;
          --v6;
        }

        while (v6);
      }
    }

    else
    {
      for (i = v7 - ((a4 * a3) & 0x3F); result < i; result += 4)
      {
        v11 = vld4q_s8(a2);
        v9 = a2 + 64;
        v12 = vld4q_s8(v9);
        v9 += 64;
        v13 = vld4q_s8(v9);
        v9 += 64;
        v14 = vld4q_s8(v9);
        a2 = v9 + 64;
        *result = vhaddq_u8(vhaddq_u8(v11.val[0], v11.val[1]), vhaddq_u8(v11.val[2], v11.val[3]));
        result[1] = vhaddq_u8(vhaddq_u8(v12.val[0], v12.val[1]), vhaddq_u8(v12.val[2], v12.val[3]));
        result[2] = vhaddq_u8(vhaddq_u8(v13.val[0], v13.val[1]), vhaddq_u8(v13.val[2], v13.val[3]));
        result[3] = vhaddq_u8(vhaddq_u8(v14.val[0], v14.val[1]), vhaddq_u8(v14.val[2], v14.val[3]));
      }

      if (result < v7)
      {
        do
        {
          v10 = *a2;
          a2 += 4;
          a6.i32[0] = v10;
          a6 = vmovl_u8(a6).u64[0];
          a6.i16[0] = vaddv_s16(a6);
          result->i8[0] = a6.i32[0] >> 2;
          result = (result + 1);
        }

        while (v7 != result);
      }
    }
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(uint64_t a1, size_t planeIndex, int a3)
{
  v4 = planeIndex;
  v6 = *(a1 + 236);
  if (v6 && *(a1 + 248) == 2)
  {
    v7 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v8 = *(a1 + 396);
    v9 = v8 & 0xFF00;
    if (v9 == 768)
    {
      v10 = *(a1 + 136);
    }

    else if ((v8 & 0x10000) != 0 || v9 == 1024)
    {
      if (v9 == 1024)
      {
        v10 = 6 * *(a1 + 392);
      }

      else
      {
        v10 = *(a1 + 392);
      }
    }

    else
    {
      v10 = 1;
    }

    v21 = v6 - 1;
    v14 = ((8 * ((v6 - 1 + ((v7 + (v6 << 8) - 1) & -(v6 << 8))) / v6) + 2047) & 0xFFFFFFFFFFFFF800) * v10;
    if (*(a1 + 240) == 1)
    {
      v38 = 0;
      v39 = 0;
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::calcSparseParams(a1, v36, &v39, &v38);
      v22 = ((-v6 & (v21 + v39)) + v21) / v6;
      v14 = ((v14 + v22 + v38 + v21 + ((4 << -__clz(v22)) + 12)) & -v6) + v39;
    }

    goto LABEL_31;
  }

  v11 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0)
  {
    if (v11 == 1024)
    {
      v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
      v16 = (v15 + v6 - 1) & -v6;
      if (!v6)
      {
        v16 = v15;
      }

      v17 = 6 * v16;
    }

    else
    {
      if (!*(a1 + 396))
      {
        v20 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, planeIndex) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
LABEL_22:
        v14 = v20 * *(a1 + 392);
        goto LABEL_31;
      }

      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    }

    v20 = (v17 + v6 - 1) & -v6;
    if (!v6)
    {
      v20 = v17;
    }

    goto LABEL_22;
  }

  if (v11 == 1024)
  {
    v12 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    v13 = (v12 + v6 - 1) & -v6;
    if (!v6)
    {
      v13 = v12;
    }

    v14 = 6 * v13;
  }

  else if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
      v27 = IOSurfaceGetWidthInCompressedTilesOfPlane() * HeightInCompressedTilesOfPlane;
      v14 = v27 * IOSurfaceGetBytesPerTileDataOfPlane();
    }

    else
    {
      v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, planeIndex);
      v31 = *(a1 + 132);
      v32 = *(a1 + 32);
      v33 = *(a1 + 208);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      InterchangeTiledMemory::getPlaneInfo(v36, v4, v32, *(v33 + 49));
      if (v4 == 1 && *(v33 + 72) == 3)
      {
        v31 = (v31 + 1) >> 1;
      }

      v14 = v30 * ((v31 + BYTE1(v36[0]) - 1) / BYTE1(v36[0]));
    }
  }

  else if (*(a1 + 396))
  {
    if (v11 == 256 || v11 == 512)
    {
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
    }

    else if (v11 == 768)
    {
      v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(a1, planeIndex);
      v29 = (v28 + v6 - 1) & -v6;
      if (!v6)
      {
        v29 = v28;
      }

      v14 = v29 * *(a1 + 136);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v18, planeIndex);
    }

    else if (planeIndex == 1 && *(*(a1 + 208) + 72) == 3)
    {
      HeightOfPlane = *(a1 + 132) >> 1;
    }

    else
    {
      HeightOfPlane = *(a1 + 132);
    }

    v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, v4);
    v14 = v34 * HeightOfPlane;
    v35 = *(a1 + 208);
    if (*(v35 + 24) - 1 == v4)
    {
      v14 = v14 - v34 + *(v35 + v4 + 88) * *(a1 + 128);
    }
  }

LABEL_31:
  v23 = *(a1 + 584);
  if (v23)
  {
    BaseAlignment = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(*(a1 + 584));
    v14 = (v14 + BaseAlignment - 1) & -BaseAlignment;
    if (!a3)
    {
      return v14;
    }

    v14 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v23 + 648 * v4, 0, 1);
  }

  if (*(*(a1 + 208) + 24) - 1 != v4)
  {
    return (v14 + *(a1 + 336) - 1) & -*(a1 + 336);
  }

  return v14;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    return 128;
  }

  if (v1 == 2)
  {
    v2 = (a1 + 396);
    v3 = *(a1 + 396);
    v4 = *(a1 + 397);
    v5 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v6 = (*v2 >> 16) & 1;
    if (v4 == 1)
    {
      v7 = WORD1(*v2) & 1;
    }

    else
    {
      v7 = 0;
    }

    if (v4 != 2)
    {
      LOBYTE(v6) = 0;
    }

    if (v7)
    {
      LOBYTE(v6) = 1;
    }

    if ((v4 - 3) >= 2)
    {
      v8 = v6;
    }

    else
    {
      v8 = 1;
    }

    v9 = (v3 - 1);
    if (v9 <= 1 && v5 >= 0x4000 && (v8 & 1) != 0)
    {
      return 0x4000;
    }

    if (v9 < 3)
    {
      return 128;
    }

    result = 16;
    if (!v3 && v4 == 2 && (*v2 & 0x10000) != 0)
    {
      return 128;
    }
  }

  else if (*(a1 + 232) == 1)
  {
    return *(a1 + 336);
  }

  else
  {
    result = *(a1 + 236);
    if (!result)
    {
      v12 = *(a1 + 396);
      v13 = *(a1 + 397);
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
      v15 = *(a1 + 396);
      v16 = (v15 >> 16) & 1;
      if (v13 == 1)
      {
        v17 = BYTE2(v15) & 1;
      }

      else
      {
        v17 = 0;
      }

      if (v13 != 2)
      {
        LOBYTE(v16) = 0;
      }

      if (v17)
      {
        LOBYTE(v16) = 1;
      }

      if ((v13 - 3) >= 2)
      {
        v18 = v16;
      }

      else
      {
        v18 = 1;
      }

      v19 = (v12 - 1);
      if (v19 <= 1 && v14 >= 0x4000 && (v18 & 1) != 0)
      {
        return 0x4000;
      }

      if (v19 < 3 || (result = 16, !v12) && v13 == 2 && (v15 & 0x10000) != 0)
      {
        if (*(a1 + 584))
        {
          return 2048;
        }

        else
        {
          return 128;
        }
      }
    }
  }

  return result;
}

unint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  v6 = *(a1 + 236);
  if (v6 && *(a1 + 248) == 2)
  {
    v7 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, 0);
    v8 = *(a1 + 396);
    v9 = v8 & 0xFF00;
    if (v9 == 768)
    {
      v10 = *(a1 + 136);
    }

    else if ((v8 & 0x10000) != 0 || v9 == 1024)
    {
      if (v9 == 1024)
      {
        v10 = 6 * *(a1 + 392);
      }

      else
      {
        v10 = *(a1 + 392);
      }
    }

    else
    {
      v10 = 1;
    }

    v21 = v6 - 1;
    v14 = ((8 * ((v6 - 1 + ((v7 + (v6 << 8) - 1) & -(v6 << 8))) / v6) + 2047) & 0xFFFFFFFFFFFFF800) * v10;
    if (*(a1 + 240) == 1)
    {
      v38 = 0;
      v39 = 0;
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::calcSparseParams(a1, v36, &v39, &v38);
      v22 = ((-v6 & (v21 + v39)) + v21) / v6;
      v14 = ((v14 + v22 + v38 + v21 + ((4 << -__clz(v22)) + 12)) & -v6) + v39;
    }

    goto LABEL_31;
  }

  v11 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0)
  {
    if (v11 == 1024)
    {
      v15 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
      v16 = (v15 + v6 - 1) & -v6;
      if (!v6)
      {
        v16 = v15;
      }

      v17 = 6 * v16;
    }

    else
    {
      if (!*(a1 + 396))
      {
        v20 = (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2) * *(a1 + 132) + 127) & 0xFFFFFFFFFFFFFF80;
LABEL_22:
        v14 = v20 * *(a1 + 392);
        goto LABEL_31;
      }

      v17 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    }

    v20 = (v17 + v6 - 1) & -v6;
    if (!v6)
    {
      v20 = v17;
    }

    goto LABEL_22;
  }

  if (v11 == 1024)
  {
    v12 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    v13 = (v12 + v6 - 1) & -v6;
    if (!v6)
    {
      v13 = v12;
    }

    v14 = 6 * v13;
  }

  else if (*(a1 + 396) == 3)
  {
    if (*(a1 + 168))
    {
      HeightInCompressedTilesOfPlane = IOSurfaceGetHeightInCompressedTilesOfPlane();
      v27 = IOSurfaceGetWidthInCompressedTilesOfPlane() * HeightInCompressedTilesOfPlane;
      v14 = v27 * IOSurfaceGetBytesPerTileDataOfPlane();
    }

    else
    {
      v30 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, a2);
      v31 = *(a1 + 132);
      v32 = *(a1 + 32);
      v33 = *(a1 + 208);
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      InterchangeTiledMemory::getPlaneInfo(v36, v4, v32, *(v33 + 49));
      if (v4 == 1 && *(v33 + 72) == 3)
      {
        v31 = (v31 + 1) >> 1;
      }

      v14 = v30 * ((v31 + BYTE1(v36[0]) - 1) / BYTE1(v36[0]));
    }
  }

  else if (*(a1 + 396))
  {
    if (v11 == 256 || v11 == 512)
    {
      v14 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
    }

    else if (v11 == 768)
    {
      v28 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(a1, a2);
      v29 = (v28 + v6 - 1) & -v6;
      if (!v6)
      {
        v29 = v28;
      }

      v14 = v29 * *(a1 + 136);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v18 = *(a1 + 168);
    if (v18)
    {
      HeightOfPlane = IOSurfaceGetHeightOfPlane(v18, a2);
    }

    else if (a2 == 1 && *(*(a1 + 208) + 72) == 3)
    {
      HeightOfPlane = *(a1 + 132) >> 1;
    }

    else
    {
      HeightOfPlane = *(a1 + 132);
    }

    v34 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(a1, v4);
    v14 = v34 * HeightOfPlane;
    v35 = *(a1 + 208);
    if (*(v35 + 24) - 1 == v4)
    {
      v14 = v14 - v34 + *(v35 + v4 + 88) * *(a1 + 128);
    }
  }

LABEL_31:
  v23 = *(a1 + 584);
  if (v23)
  {
    BaseAlignment = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getBaseAlignment(*(a1 + 584));
    v14 = (v14 + BaseAlignment - 1) & -BaseAlignment;
    if (!a3)
    {
      return v14;
    }

    v14 += AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getPlaneSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(v23 + 648 * v4, 0, 1);
  }

  if (*(*(a1 + 208) + 24) - 1 != v4)
  {
    return (v14 + *(a1 + 336) - 1) & -*(a1 + 336);
  }

  return v14;
}

uint64_t AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValue(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) >= 2u && *(a1 + 80))
  {
LABEL_3:
    v2 = &_ZZNK3AGX23CompressionMetadataGen2IL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE28getMetadataUncompressedValueEjE6values__15_;
LABEL_12:
    v3 = v2[a2];
    return v3 | (v3 << 8);
  }

  else
  {
    v3 = 0;
    switch(*a1)
    {
      case 0:
      case 1:
        result = 7967;
        break;
      case 8:
      case 9:
      case 0xALL:
      case 0xBLL:
      case 0xCLL:
      case 0xDLL:
      case 0xELL:
      case 0xFLL:
      case 0x11:
        result = 16191;
        break;
      case 0x10:
        result = 12079;
        break;
      case 0x20:
        result = 10023;
        break;
      case 0x21:
      case 0x22:
      case 0x23:
      case 0x25:
      case 0x26:
      case 0x27:
      case 0x28:
      case 0x29:
      case 0x40:
      case 0x41:
      case 0x45:
      case 0x4DLL:
        result = 32639;
        break;
      case 0x2ALL:
        result = 24415;
        break;
      case 0x30:
        result = 20303;
        break;
      case 0x31:
      case 0x32:
      case 0x33:
      case 0x38:
        result = 0xFFFFLL;
        break;
      case 0x3ALL:
      case 0x3BLL:
      case 0x3CLL:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x3DLL:
      case 0x3ELL:
      case 0x3FLL:
      case 0x46:
      case 0x47:
      case 0x48:
        v2 = &_ZZNK3AGX23CompressionMetadataGen2IL22AGXTextureMemoryLayout4ENS_6HAL3008EncodersENS2_7ClassesEE28getMetadataUncompressedValueEjE6values__14_;
        goto LABEL_12;
      case 0x42:
      case 0x43:
      case 0x44:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x49:
      case 0x4ALL:
      case 0x4BLL:
        v2 = &AGX::CompressionMetadataGen2<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMetadataUncompressedValueconst::values;
        goto LABEL_12;
      case 0x4CLL:
        goto LABEL_3;
      default:
        return v3 | (v3 << 8);
    }
  }

  return result;
}

__IOSurface *AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeRegion(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, int a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  v12 = a8;
  LODWORD(v13) = a7;
  v15 = a1;
  v16 = a12;
  result = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateRegion(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
  if (!result)
  {
    return result;
  }

  v18 = *(v15 + 144);
  v19 = *(*(v15 + 208) + 88);
  v20 = *(v15 + 112);
  v194 = v15;
  v209 = a4;
  if (*(v15 + 240) == 1)
  {
    v197 = *(v15 + 144);
    v199 = v12;
    v204 = *(v15 + 112);
    v207 = *(*(v15 + 208) + 88);
    v21 = *(v15 + 397) << 8;
    v22 = v21 == 768;
    v201 = v13;
    if (v21 == 768)
    {
      v23 = v13;
    }

    else
    {
      v23 = 1;
    }

    if (v22)
    {
      v24 = a4;
    }

    else
    {
      v24 = v12;
    }

    v215 = v24;
    v218 = v23;
    if (v23)
    {
      v25 = 0;
      v26 = *(v15 + 312);
      v212 = v20 * v19;
      v229 = (v26 + *(v15 + 616) - *(v15 + 72));
      v27 = v229 + 3;
      v211 = *(v15 + 332) & 1;
      agxCalcSparseInputs(*(v15 + 236), *(v15 + 128), *(v15 + 132), *(v15 + 216), *(v15 + 220), v20 * v19, *(v15 + 64), 1u, 1u, v24, a9, v211, a2, a3, a5, a6, &v232);
      while (1)
      {
        v28 = *v229;
        v30 = v229[1];
        v29 = v229[2];
        v31 = v30 >= *v229 ? 0 : v229[2];
        v32 = v31 - v28 + v30;
        if (v32)
        {
          v237[0] = 0;
          v33 = HIDWORD(v234);
          v34 = v235 * HIDWORD(v234);
          if (v235 * HIDWORD(v234))
          {
            v35 = BYTE9(v235);
            v36 = v233;
            v37 = DWORD1(v233);
            v38 = DWORD2(v233);
            v39 = HIDWORD(v233);
            v40 = v234;
            v41 = v234 | HIDWORD(v233);
            if (BYTE9(v235))
            {
              v42 = 0;
              do
              {
                if (v41)
                {
                  v43 = 0;
                  v44 = 0;
                  v45 = 1;
                  v46 = v39 != 0;
                  v47 = v40 != 0;
                  v48 = v39;
                  v49 = v40;
                  do
                  {
                    --v48;
                    if (v46)
                    {
                      v44 |= (v45 & (v36 + (v42 % v33))) << v43;
                    }

                    else
                    {
                      v48 = 0;
                    }

                    if (v46)
                    {
                      ++v43;
                    }

                    if (v47)
                    {
                      --v49;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (v47)
                    {
                      v44 |= (v45 & (v37 + (v42 / v33))) << v43++;
                    }

                    v45 *= 2;
                    --v43;
                    v47 = v49 != 0;
                    v46 = v48 != 0;
                  }

                  while (v49 | v48);
                }

                else
                {
                  v44 = 0;
                }

                if ((*(v26 + 4 * ((v44 + v38) | ((v44 + v38) >> 8 << 9))) & 0x80000000) == 0)
                {
                  atomic_fetch_add_explicit(v237, 1u, memory_order_relaxed);
                }

                ++v42;
              }

              while (v42 != v34);
            }

            else
            {
              do
              {
                if (v41)
                {
                  v50 = 0;
                  v51 = 0;
                  v52 = 1;
                  v53 = v40 != 0;
                  v54 = v39 != 0;
                  v55 = v40;
                  v56 = v39;
                  do
                  {
                    --v55;
                    if (v53)
                    {
                      v51 |= (v52 & (v37 + (v35 / v33))) << v50;
                    }

                    else
                    {
                      v55 = 0;
                    }

                    if (v53)
                    {
                      ++v50;
                    }

                    if (v54)
                    {
                      --v56;
                    }

                    else
                    {
                      v56 = 0;
                    }

                    if (v54)
                    {
                      v51 |= (v52 & (v36 + (v35 % v33))) << v50++;
                    }

                    v52 *= 2;
                    --v50;
                    v54 = v56 != 0;
                    v53 = v55 != 0;
                  }

                  while (v56 | v55);
                }

                else
                {
                  v51 = 0;
                }

                if ((*(v26 + 4 * ((v51 + v38) | ((v51 + v38) >> 8 << 9))) & 0x80000000) == 0)
                {
                  atomic_fetch_add_explicit(v237, 1u, memory_order_relaxed);
                }

                ++v35;
              }

              while (v35 != v34);
            }
          }

          if (v32 >= v237[0])
          {
            v32 = v237[0];
          }

          v57 = v32 + v28 >= v29 ? v29 : 0;
          *v229 = v32 + v28 - v57;
          if (v34)
          {
            break;
          }
        }

LABEL_11:
        if (++v25 == v218)
        {
          goto LABEL_102;
        }

        agxCalcSparseInputs(*(v194 + 236), *(v194 + 128), *(v194 + 132), *(v194 + 216), *(v194 + 220), v212, *(v194 + 64), 1u, 1u, v25 + v215, a9, v211, a2, a3, a5, a6, &v232);
      }

      v58 = 0;
      v59 = BYTE9(v235);
      v60 = v233;
      v61 = DWORD1(v233);
      v63 = DWORD2(v233);
      v62 = HIDWORD(v233);
      v64 = v234;
      v65 = v234 | HIDWORD(v233);
      while (1)
      {
        v66 = v58 / v33;
        v67 = v58 % v33;
        if (v59)
        {
          if (v65)
          {
            v68 = 0;
            v69 = 0;
            v70 = 1;
            v71 = v62 != 0;
            v72 = v64 != 0;
            v73 = v62;
            v74 = v64;
            do
            {
              --v73;
              v75 = !v71;
              if (v71)
              {
                v76 = ((v70 & (v60 + v67)) << v68) | v69;
              }

              else
              {
                v73 = 0;
                v76 = v69;
              }

              if (!v75)
              {
                ++v68;
              }

              v69 = ((v70 & (v61 + v66)) << v68) | v76;
              if (v72)
              {
                --v74;
              }

              else
              {
                v74 = 0;
              }

              if (v72)
              {
                v77 = v68 + 1;
              }

              else
              {
                v69 = v76;
                v77 = v68;
              }

              v70 *= 2;
              v68 = v77 - 1;
              v72 = v74 != 0;
              v71 = v73 != 0;
            }

            while (v74 | v73);
            goto LABEL_96;
          }
        }

        else if (v65)
        {
          v78 = 0;
          v69 = 0;
          v79 = 1;
          v80 = v64 != 0;
          v81 = v62 != 0;
          v82 = v64;
          v83 = v62;
          v84 = v61 + v66;
          do
          {
            --v82;
            v85 = !v80;
            if (v80)
            {
              v86 = ((v79 & v84) << v78) | v69;
            }

            else
            {
              v82 = 0;
              v86 = v69;
            }

            if (!v85)
            {
              ++v78;
            }

            v69 = ((v79 & (v60 + v67)) << v78) | v86;
            if (v81)
            {
              --v83;
            }

            else
            {
              v83 = 0;
            }

            if (v81)
            {
              v87 = v78 + 1;
            }

            else
            {
              v69 = v86;
              v87 = v78;
            }

            v79 *= 2;
            v78 = v87 - 1;
            v81 = v83 != 0;
            v80 = v82 != 0;
          }

          while (v83 | v82);
          goto LABEL_96;
        }

        v69 = 0;
LABEL_96:
        v88 = (v69 + v63) | ((v69 + v63) >> 8 << 9);
        if ((*(v26 + 4 * v88) & 0x80000000) == 0 && v58 < v32)
        {
          if (v58 + v28 >= v29)
          {
            v89 = v29;
          }

          else
          {
            v89 = 0;
          }

          v90 = v58 + v28 - v89;
          *(v26 + 4 * v88) = v27[v90] & 0x1FFFFFFF | 0xC0000000;
          v27[v90] = 66809520;
        }

        if (++v58 == v34)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_102:
    v15 = v194;
    v16 = a12;
    v20 = v204;
    v12 = v199;
    LODWORD(v13) = v201;
    v19 = v207;
    v18 = v197;
  }

  if (*(v15 + 168))
  {
    IOSurfaceLockPlane();
  }

  v91 = v18 + a9;
  v92 = *(v15 + 184);
  if (v92)
  {
    IOSurfaceLock(v92, 0, 0);
  }

  v93 = *(v15 + 396);
  v94 = v93;
  if (!v93)
  {
    v107 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getStride<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Units)0,(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::Op)0>(v15, 0);
    CPUPtr = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v15, v12, v91, 0);
    v109 = a10;
    if (a6)
    {
      v110 = a6;
      v111 = (CPUPtr + v107 * a3 + v19 * a2);
      v112 = v19 * a5;
      do
      {
        memcpy(v111, v109, v112);
        v109 += a11;
        v111 += v107;
        --v110;
      }

      while (v110);
    }

    goto LABEL_205;
  }

  v230 = v91;
  v95 = v20 * v19;
  v96 = ((v93 & 0xFF00) - 256) >> 8;
  if (v96 < 2)
  {
    goto LABEL_111;
  }

  if (v96 == 2)
  {
    v219 = v20 * v19;
    v118 = *(v194 + 144) + a9;
    v119 = *(v194 + 132);
    if (*(v194 + 128) >> (*(v194 + 144) + a9) <= 1u)
    {
      v120 = 1;
    }

    else
    {
      v120 = *(v194 + 128) >> (*(v194 + 144) + a9);
    }

    if (v119 >> v118 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = v119 >> v118;
    }

    v122 = *(v194 + 136) >> v118;
    if (v122 <= 1)
    {
      v123 = 1;
    }

    else
    {
      v123 = v122;
    }

    AddressingBaseLevelWidthInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(v194, v91);
    AddressingBaseLevelHeightInBlocks = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(v194, v91);
    v126 = *(v194 + 584);
    if (v126 && *(v126 + 1304) > v91)
    {
      v127 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, 0, v91, 0);
      v128 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v194 + 584), v12, v91, 0);
      v129 = v16;
      v130 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v194, 0);
      v131 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)0>(*(v194 + 584), 0);
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion3D(v194, v127, a10, v128, v120, v121, a2, a3, v209, a5, a6, v13, a11, v129, v130, v131, a9);
    }

    else if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v194, v91))
    {
      v224 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, 0, v91, 0);
      v216 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v194, 0);
      TwiddleFunc = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(v194);
      v133 = a10;
      v134 = v219;
      if (v13)
      {
        v135 = TwiddleFunc;
        v136 = *(v194 + 128);
        v137 = *(v194 + 216);
        v138 = *(v194 + 220);
        v13 = v13;
        v139 = *(v194 + 333);
        do
        {
          TiledMemory<(TwiddleOrder)1>::convertTiles2D<false>(v224 + v216 * v209, v133, v136, v230, a2, a3, a5, a6, a11, v137, v138, v134, v135, v139);
          v134 = v219;
          ++v209;
          v133 += v16;
          --v13;
        }

        while (v13);
      }
    }

    else
    {
      v226 = v120;
      v151 = (1 << -__clz(AddressingBaseLevelWidthInBlocks - 1));
      v221 = 1 << -__clz(AddressingBaseLevelHeightInBlocks - 1);
      v152 = v194 + 260;
      v217 = v121;
      v213 = v123;
      if (*(v194 + 240) == 1)
      {
        v153 = *(v194 + 72);
        v154 = v151;
        MipInTail = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v194, 0);
        v156 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v194, 1);
        v159 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v194, 0, 0, v157, v158);
        *&v232 = __PAIR64__(v12, v91);
        *(&v232 + 1) = __PAIR64__(v156, MipInTail);
        v151 = v154;
        LODWORD(v233) = v159;
        *(&v233 + 1) = v153;
        v91 = 0;
        DWORD1(v233) = 8 * ((AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v194, 0) + (*(v194 + 236) << 8) - 1) & -(*(v194 + 236) << 8)) / *(v194 + 236);
        v160 = &v232;
      }

      else
      {
        v160 = 0;
        if (!*(v194 + 232))
        {
          v152 = 0;
        }
      }

      v183 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, 0, v91, 0);
      v184 = agxsTwiddle3DAddressCompressed<true,4u,2u,16ul,(TwiddleOrder)1>;
      switch(*(v194 + 32))
      {
        case 0x82:
        case 0x83:
        case 0x8CLL:
        case 0x8DLL:
          v184 = agxsTwiddle3DAddressCompressed<true,4u,4u,8ul,(TwiddleOrder)1>;
          break;
        case 0x84:
        case 0x85:
        case 0x86:
        case 0x87:
        case 0x8ELL:
        case 0x8FLL:
        case 0x96:
        case 0x97:
        case 0x98:
        case 0x99:
        case 0xBALL:
        case 0xCCLL:
        case 0xDELL:
          v184 = agxsTwiddle3DAddressCompressed<true,4u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xB9:
        case 0xCBLL:
        case 0xDDLL:
          break;
        case 0xBBLL:
        case 0xCDLL:
        case 0xDFLL:
          v184 = agxsTwiddle3DAddressCompressed<true,5u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBCLL:
        case 0xCELL:
        case 0xE0:
          v184 = agxsTwiddle3DAddressCompressed<true,5u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBDLL:
        case 0xCFLL:
        case 0xE1:
          v184 = agxsTwiddle3DAddressCompressed<true,6u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBELL:
        case 0xD0:
        case 0xE2:
          v184 = agxsTwiddle3DAddressCompressed<true,6u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xBFLL:
        case 0xD1:
        case 0xE3:
          v184 = agxsTwiddle3DAddressCompressed<true,8u,4u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC0:
        case 0xD2:
        case 0xE4:
          v184 = agxsTwiddle3DAddressCompressed<true,8u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC1:
        case 0xD3:
        case 0xE5:
          v184 = agxsTwiddle3DAddressCompressed<true,8u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC2:
        case 0xD4:
        case 0xE6:
          v184 = agxsTwiddle3DAddressCompressed<true,8u,8u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC3:
        case 0xD5:
        case 0xE7:
          v184 = agxsTwiddle3DAddressCompressed<true,10u,5u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC4:
        case 0xD6:
        case 0xE8:
          v184 = agxsTwiddle3DAddressCompressed<true,10u,6u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC5:
        case 0xD7:
        case 0xE9:
          v184 = agxsTwiddle3DAddressCompressed<true,10u,8u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC6:
        case 0xD8:
        case 0xEALL:
          v184 = agxsTwiddle3DAddressCompressed<true,10u,10u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC7:
        case 0xD9:
        case 0xEBLL:
          v184 = agxsTwiddle3DAddressCompressed<true,12u,10u,16ul,(TwiddleOrder)1>;
          break;
        case 0xC8:
        case 0xDALL:
        case 0xECLL:
          v184 = agxsTwiddle3DAddressCompressed<true,12u,12u,16ul,(TwiddleOrder)1>;
          break;
        default:
          v184 = *(&off_2A23FAA60 + __clz(__rbit32(*(*(v194 + 208) + 49))));
          break;
      }

      v185 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getMipmapSize<(AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::View)1>(v194, 0);
      (v184)(v183, a10, v226, v217, v213, v151, v221, v185, __PAIR64__(a3, a2), __PAIR64__(a5, v209), __PAIR64__(v13, a6), a11, v16, v152, v160);
    }

    goto LABEL_205;
  }

  if (v96 == 3)
  {
LABEL_111:
    v97 = *(v194 + 128) >> (*(v194 + 144) + a9);
    if (v97 <= 1)
    {
      v98 = 1;
    }

    else
    {
      v98 = v97;
    }

    v99 = *(v194 + 132) >> (*(v194 + 144) + a9);
    if (v99 <= 1)
    {
      v100 = 1;
    }

    else
    {
      v100 = v99;
    }

    v101 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(v194, v230);
    v102 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(v194, v230);
    v103 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(v194);
    v104 = *(v194 + 584);
    if (v104 && *(v104 + 1304) > v230)
    {
      v105 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, v12, v230, 0);
      v106 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(*(v194 + 584), v12, v230, 0);
      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion2D<true>(v194, v105, a10, v106, v98, v100, a2, a3, __SPAIR64__(a6, a5), a11, a9);
    }

    else if (AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(v194, v230))
    {
      v113 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, v12, v230, 0);
      TiledMemory<(TwiddleOrder)1>::convertTiles2D<false>(v113, a10, *(v194 + 128), v230, a2, a3, a5, a6, a11, *(v194 + 216), *(v194 + 220), v95, v103, *(v194 + 333));
    }

    else if (v94 == 3)
    {
      v189 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, 0, 0, 0);
      v236 = 0;
      v234 = 0u;
      v235 = 0u;
      v232 = 0u;
      v233 = 0u;
      v114 = *(v194 + 208);
      InterchangeTiledMemory::getPlaneInfo(&v232, 0, *(v194 + 32), *(v114 + 49));
      v115 = BYTE2(v232);
      if (*(v194 + 168))
      {
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        CompressedTileHeightOfPlane = IOSurfaceGetCompressedTileHeightOfPlane();
        v114 = *(v194 + 208);
      }

      else
      {
        CompressedTileWidthOfPlane = v232;
        CompressedTileHeightOfPlane = BYTE1(v232);
      }

      v161 = a10;
      v162 = a11;
      HIDWORD(v164) = v115 - 8;
      LODWORD(v164) = v115 - 8;
      v163 = v164 >> 3;
      if (v163 > 7)
      {
        v165 = 0;
      }

      else
      {
        v165 = off_2A23FA6A8[v163];
      }

      v166 = a3 / CompressedTileHeightOfPlane;
      v188 = a6 + a3;
      v203 = CompressedTileHeightOfPlane;
      v187 = (a6 + a3 - 1) / CompressedTileHeightOfPlane;
      if (v166 <= v187)
      {
        v198 = a5 + a2;
        v200 = CompressedTileWidthOfPlane;
        v186 = a2 / CompressedTileWidthOfPlane;
        v196 = (a5 + a2 - 1) / CompressedTileWidthOfPlane;
        if (v186 <= v196)
        {
          v167 = 4 * v115;
          v210 = (CompressedTileWidthOfPlane >> 3) * 4 * v115;
          v191 = (CompressedTileWidthOfPlane * v115 * CompressedTileHeightOfPlane) >> 3;
          do
          {
            v193 = v189 + (v98 + v200 - 1) / v200 * v191 * v166;
            v190 = v166;
            v168 = v166 * v203;
            if (a3 >= v168)
            {
              v169 = a3 - v168;
            }

            else
            {
              v169 = 0;
            }

            v202 = v188 - v168;
            v205 = v169 >> 2;
            v192 = &v161[v168 * v162];
            v170 = v186;
            do
            {
              v208 = v170;
              v171 = v170 * v200;
              v172 = a2 - v170 * v200;
              if (a2 >= v171)
              {
                v173 = v172;
              }

              else
              {
                v173 = 0;
              }

              v174 = v198 - v171;
              if (v200 - v173 < v198 - v171)
              {
                v174 = v200 - v173;
              }

              v175 = v174 - 1;
              v176 = v203 - v173;
              if (v203 - v173 >= v202)
              {
                v176 = v202;
              }

              v177 = v175 >> 3;
              v223 = (v176 - 1) >> 2;
              if (v205 <= v223 && v173 >> 3 <= v177)
              {
                v214 = &v192[*(v114 + 49) * v171];
                v179 = v205;
                do
                {
                  v228 = v179;
                  v231 = v193 + v208 * v191 + (v210 * v179);
                  v180 = &v214[4 * v179 * v162];
                  v181 = v173 >> 3;
                  do
                  {
                    (v165)(v231 + (v167 * v181), &v180[8 * v181 * *(v114 + 49)], 8, 4, 8, 4);
                    v162 = a11;
                  }

                  while (v181++ < v177);
                  v179 = v228 + 1;
                }

                while (v228 < v223);
              }

              v170 = v208 + 1;
            }

            while (v208 + 1 <= v196);
            v166 = v190 + 1;
            v161 = a10;
          }

          while (v190 + 1 <= v187);
        }
      }
    }

    else
    {
      v140 = (1 << -__clz(v101 - 1));
      v141 = (1 << -__clz(v102 - 1));
      v142 = v194 + 260;
      if (*(v194 + 240) == 1)
      {
        v225 = v140;
        v220 = *(v194 + 72);
        v143 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v194, 0);
        v144 = v141;
        v145 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::firstMipInTail(v194, 1);
        v148 = AGX::TextureGen4<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::tailSize(v194, 0, 0, v146, v147);
        *&v232 = __PAIR64__(v12, v230);
        *(&v232 + 1) = __PAIR64__(v145, v143);
        v141 = v144;
        LODWORD(v233) = v148;
        *(&v233 + 1) = v220;
        v140 = v225;
        v149 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, 0, 0, 0);
        v150 = &v232;
      }

      else
      {
        if (!*(v194 + 232))
        {
          v142 = 0;
        }

        v149 = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getCPUPtr(v194, v12, v230, 0);
        v150 = 0;
      }

      (v103)(v149, a10, v98, v100, v140, v141, a2, a3, __PAIR64__(a6, a5), a11, v142, v150);
    }
  }

LABEL_205:
  if (*(v194 + 168))
  {
    IOSurfaceUnlockPlane();
  }

  result = *(v194 + 184);
  if (result)
  {
    return IOSurfaceUnlock(result, 0, 0);
  }

  return result;
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::validateRegion(uint64_t a1, int a2, int a3, int a4, int a5, int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12)
{
  v27 = *MEMORY[0x29EDCA608];
  if (!a5)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "width > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "width > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "width > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (!a6)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "height > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "height > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "height > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (!a7)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "depth > 0");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "depth > 0";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "depth > 0";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v13 = *(a1 + 144) + a9;
  v14 = *(a1 + 128) >> (*(a1 + 144) + a9);
  if (v14 <= 1)
  {
    v14 = 1;
  }

  v15 = *(a1 + 216);
  if (v14 + v15 + ~(((v14 + v15) - 1) % v15) < (a5 + a2))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(xoffset + width) <= ALIGNGRAN_NPOT(getViewLevelWidth(mipmapLevel), block_width) && Region width OOB";
    v16 = MEMORY[0x29EDCA988];
LABEL_98:
    _os_log_impl(&dword_29CA13000, v16, OS_LOG_TYPE_INFO, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    return 0;
  }

  if (*(a1 + 132) >> v13 <= 1u)
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a1 + 132) >> v13;
  }

  v18 = *(a1 + 220);
  if ((v17 + v18) + ~(((v17 + v18) - 1) % v18) < (a6 + a3))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(yoffset + height) <= ALIGNGRAN_NPOT(getViewLevelHeight(mipmapLevel), block_height) && Region height OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v19 = *(a1 + 136) >> v13;
  if (v19 <= 1)
  {
    v19 = 1;
  }

  if (a7 + a4 > v19)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "(zoffset + depth) <= getViewLevelDepth(mipmapLevel) && Region depth OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v20 = *(a1 + 396) & 0xFF00;
  if ((*(a1 + 396) & 0x10000) != 0 || v20 == 1024)
  {
    if (v20 == 1024)
    {
      v21 = 6 * *(a1 + 392);
    }

    else
    {
      v21 = *(a1 + 392);
    }
  }

  else
  {
    v21 = 1;
  }

  if (v21 <= a8)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "slice < getNumSlices() && Specified slice OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "slice < getNumSlices() && Specified slice OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "slice < getNumSlices() && Specified slice OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  if (*(a1 + 140) <= a9)
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "mipmapLevel < getBaseNumMipmapLevels() && Specified mipmap level OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v22 = *(a1 + 208);
  if (!*(v22 + 24))
  {
    fprintf(*MEMORY[0x29EDCA610], "AGX: Texture read/write assertion failed: %s\n", "plane < getNumPlanes() && Specified plane OOB");
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO, "AGX: AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v26 = "plane < getNumPlanes() && Specified plane OOB";
      _os_log_error_impl(&dword_29CA13000, MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR, "AGX: Texture read/write assertion failed: %s\n", buf, 0xCu);
    }

    if (!os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_INFO))
    {
      return 0;
    }

    *buf = 136315138;
    v26 = "plane < getNumPlanes() && Specified plane OOB";
    v16 = MEMORY[0x29EDCA988];
    goto LABEL_98;
  }

  v23 = *(v22 + 88);

  return agxaAssertBufferIsValid(a10, a11, a12, v23, a5, a6, v18, v15, a7);
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelWidthInBlocks(uint64_t a1, char a2)
{
  v4 = *(a1 + 396);
  if (v4 == 2)
  {
    isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, a2);
    if (!*(*(a1 + 208) + 56) || isLevelTiled)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 1 || (*(a1 + 332) & 1) == 0)
  {
LABEL_12:
    v9 = *(a1 + 128) >> a2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    return (*(a1 + 216) + v9 - 1) / *(a1 + 216);
  }

  v6 = *(a1 + 128);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (1 << -__clz((*(a1 + 216) + v6 - 1) / *(a1 + 216) - 1)) >> a2;
  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getAddressingBaseLevelHeightInBlocks(uint64_t a1, char a2)
{
  v4 = *(a1 + 396);
  if (v4 == 2)
  {
    isLevelTiled = AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::isLevelTiled(a1, a2);
    if (!*(*(a1 + 208) + 56) || isLevelTiled)
    {
      goto LABEL_12;
    }
  }

  else if (v4 != 1 || (*(a1 + 332) & 1) == 0)
  {
LABEL_12:
    v9 = *(a1 + 132) >> a2;
    if (v9 <= 1)
    {
      v9 = 1;
    }

    return (*(a1 + 220) + v9 - 1) / *(a1 + 220);
  }

  v6 = *(a1 + 132);
  if (v6 <= 1)
  {
    v6 = 1;
  }

  v7 = (1 << -__clz((*(a1 + 220) + v6 - 1) / *(a1 + 220) - 1)) >> a2;
  if (v7 <= 1)
  {
    return 1;
  }

  else
  {
    return v7;
  }
}

uint64_t (*AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::getTwiddleFunc(uint64_t a1))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10)
{
  v1 = *(a1 + 16);
  v2 = agxsTwiddleAddressPVRTC2<true,(TwiddleOrder)1>;
  switch(*(a1 + 32))
  {
    case 0x82:
    case 0x83:
    case 0x8CLL:
    case 0x8DLL:
    case 0xAALL:
    case 0xACLL:
    case 0xB4:
    case 0xB5:
    case 0xB6:
    case 0xB7:
      return agxsTwiddleAddressCompressed<true,4u,4u,8ul,(TwiddleOrder)1>;
    case 0x84:
    case 0x85:
    case 0x86:
    case 0x87:
    case 0x8ELL:
    case 0x8FLL:
    case 0x96:
    case 0x97:
    case 0x98:
    case 0x99:
    case 0xAELL:
    case 0xB0:
    case 0xB2:
    case 0xB3:
    case 0xBALL:
    case 0xCCLL:
    case 0xDELL:
      return agxsTwiddleAddressCompressed<true,4u,4u,16ul,(TwiddleOrder)1>;
    case 0xA0:
    case 0xA1:
    case 0xA4:
    case 0xA5:
      return v2;
    case 0xA2:
    case 0xA3:
    case 0xA6:
    case 0xA7:
      return agxsTwiddleAddressPVRTC4<true,(TwiddleOrder)1>;
    case 0xB9:
    case 0xCBLL:
    case 0xDDLL:
      return agxsTwiddleAddressCompressed<true,4u,2u,16ul,(TwiddleOrder)1>;
    case 0xBBLL:
    case 0xCDLL:
    case 0xDFLL:
      return agxsTwiddleAddressCompressed<true,5u,4u,16ul,(TwiddleOrder)1>;
    case 0xBCLL:
    case 0xCELL:
    case 0xE0:
      return agxsTwiddleAddressCompressed<true,5u,5u,16ul,(TwiddleOrder)1>;
    case 0xBDLL:
    case 0xCFLL:
    case 0xE1:
      return agxsTwiddleAddressCompressed<true,6u,5u,16ul,(TwiddleOrder)1>;
    case 0xBELL:
    case 0xD0:
    case 0xE2:
      return agxsTwiddleAddressCompressed<true,6u,6u,16ul,(TwiddleOrder)1>;
    case 0xBFLL:
    case 0xD1:
    case 0xE3:
      return agxsTwiddleAddressCompressed<true,8u,4u,16ul,(TwiddleOrder)1>;
    case 0xC0:
    case 0xD2:
    case 0xE4:
      return agxsTwiddleAddressCompressed<true,8u,5u,16ul,(TwiddleOrder)1>;
    case 0xC1:
    case 0xD3:
    case 0xE5:
      return agxsTwiddleAddressCompressed<true,8u,6u,16ul,(TwiddleOrder)1>;
    case 0xC2:
    case 0xD4:
    case 0xE6:
      return agxsTwiddleAddressCompressed<true,8u,8u,16ul,(TwiddleOrder)1>;
    case 0xC3:
    case 0xD5:
    case 0xE7:
      return agxsTwiddleAddressCompressed<true,10u,5u,16ul,(TwiddleOrder)1>;
    case 0xC4:
    case 0xD6:
    case 0xE8:
      return agxsTwiddleAddressCompressed<true,10u,6u,16ul,(TwiddleOrder)1>;
    case 0xC5:
    case 0xD7:
    case 0xE9:
      return agxsTwiddleAddressCompressed<true,10u,8u,16ul,(TwiddleOrder)1>;
    case 0xC6:
    case 0xD8:
    case 0xEALL:
      return agxsTwiddleAddressCompressed<true,10u,10u,16ul,(TwiddleOrder)1>;
    case 0xC7:
    case 0xD9:
    case 0xEBLL:
      return agxsTwiddleAddressCompressed<true,12u,10u,16ul,(TwiddleOrder)1>;
    case 0xC8:
    case 0xDALL:
    case 0xECLL:
      return agxsTwiddleAddressCompressed<true,12u,12u,16ul,(TwiddleOrder)1>;
    default:
      v2 = 0;
      v4 = *(*(a1 + 208) + 88);
      if (v4 > 3)
      {
        if (v4 == 4)
        {
          v5 = *(a1 + 112) - 1;
          if (v5 < 8)
          {
            v6 = off_2A23FA568;
            return v6[v5];
          }

          return 0;
        }

        if (v4 != 8)
        {
          if (v4 == 16)
          {
            v5 = *(a1 + 112) - 1;
            if (v5 < 8)
            {
              v6 = off_2A23FA5E8;
              return v6[v5];
            }

            return 0;
          }

          return v2;
        }

        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA5A8;
          return v6[v5];
        }

        return 0;
      }

      if (v4 == 1)
      {
        v5 = *(a1 + 112) - 1;
        if (v5 < 8)
        {
          v6 = off_2A23FA528;
          return v6[v5];
        }

        return 0;
      }

      if (v4 != 2)
      {
        return v2;
      }

      v2 = 0;
      v7 = *(a1 + 112);
      if (v7 > 3)
      {
        if (v7 == 4)
        {
          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,4u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,4u,(TwiddleOrder)1>>;
          }
        }

        else
        {
          if (v7 != 8)
          {
            return v2;
          }

          if (v1 == 1)
          {
            return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,8u,(TwiddleOrder)1>>;
          }

          else
          {
            return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,8u,(TwiddleOrder)1>>;
          }
        }
      }

      else if (v7 == 1)
      {
        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,1u,(TwiddleOrder)1>>;
        }
      }

      else
      {
        if (v7 != 2)
        {
          return v2;
        }

        if (v1 == 1)
        {
          return agxsTwiddleAddressZ<AGXSConverterPassThru<true,2ul,2u,(TwiddleOrder)1>>;
        }

        else
        {
          return agxsTwiddleAddressCommon<(TwiddleOrder)1,AGXSConverterPassThru<true,2ul,2u,(TwiddleOrder)1>>;
        }
      }
  }
}

void AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::writeCompressedRegion2D<true>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, uint64_t a9, uint64_t a10, int a11)
{
  v11 = a2;
  v13 = *(result + 32);
  if (v13 == 260)
  {
    v14 = 252;
  }

  else
  {
    v14 = *(result + 32);
  }

  v15 = *(result + 396);
  if (v15 == 3)
  {
    if (*(result + 584))
    {
      if (*(result + 168))
      {
        CompressedTileWidthOfPlane = IOSurfaceGetCompressedTileWidthOfPlane();
        IOSurfaceGetCompressedTileHeightOfPlane();
        v17 = CompressedTileWidthOfPlane;
        v11 = a2;
        if (v17 == 32)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v29 = *(result + 208);
        v663 = 0;
        memset(v662, 0, sizeof(v662));
        InterchangeTiledMemory::getPlaneInfo(v662, 0, v13, *(v29 + 49));
        if (LOBYTE(v662[0]) == 32)
        {
LABEL_8:
          if (v13 <= 24)
          {
            if (v13 <= 13)
            {
              if (v13 > 10)
              {
                if (v13 == 11)
                {
                  CompressionCodecConfig = getCompressionCodecConfig(*(result + 56));
                  if (CompressionCodecConfig > 1)
                  {
LABEL_157:
                    if (CompressionCodecConfig == 2)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                    }

                    else if (CompressionCodecConfig == 3)
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                    }

                    else
                    {
                      AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                    }

                    return;
                  }

                  if (!CompressionCodecConfig)
                  {
LABEL_169:
                    AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                    return;
                  }

LABEL_246:
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                  return;
                }

LABEL_156:
                CompressionCodecConfig = getCompressionCodecConfig(*(result + 56));
                if (CompressionCodecConfig > 1)
                {
                  goto LABEL_157;
                }

                if (!CompressionCodecConfig)
                {
                  goto LABEL_169;
                }

                goto LABEL_246;
              }

              if (v13 == 1 || v13 == 10)
              {
                goto LABEL_156;
              }

              return;
            }

            if (v13 <= 21)
            {
              if (v13 == 14)
              {
                goto LABEL_156;
              }

              if (v13 != 20)
              {
                return;
              }
            }

LABEL_152:
            v67 = getCompressionCodecConfig(*(result + 56));
            if (v67 <= 1)
            {
              if (v67)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            else if (v67 == 2)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (v67 == 3)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            return;
          }

          if (v13 > 605)
          {
            if (v13 <= 642)
            {
              if (v13 != 606 && v13 != 642)
              {
                return;
              }
            }

            else if (v13 != 643)
            {
              if (v13 != 646 && v13 != 647)
              {
                return;
              }

LABEL_86:
              v42 = getCompressionCodecConfig(*(result + 56));
              if (v42 <= 1)
              {
                if (v42)
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                }

                else
                {
                  AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
                }
              }

              else if (v42 == 2)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else if (v42 == 3)
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else
              {
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)2,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              return;
            }
          }

          else if (v13 <= 576)
          {
            if (v13 == 25)
            {
              goto LABEL_152;
            }

            if (v13 != 576)
            {
              return;
            }
          }

          else if (v13 != 577)
          {
            if (v13 != 603 && v13 != 604)
            {
              return;
            }

            goto LABEL_86;
          }

          v69 = getCompressionCodecConfig(*(result + 56));
          if (v69 <= 1)
          {
            if (v69)
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v69 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (v69 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)1,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)2,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        }
      }
    }

    switch(v13)
    {
      case 1:
      case 10:
      case 11:
      case 13:
        v63 = getCompressionCodecConfig(*(result + 56));
        if (v63 <= 1)
        {
          if (v63)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v63 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (v63 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 12:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 21:
      case 26:
      case 27:
      case 28:
      case 29:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 54:
      case 55:
      case 56:
      case 57:
      case 58:
      case 59:
      case 61:
      case 66:
      case 67:
      case 68:
      case 69:
      case 75:
      case 76:
      case 77:
      case 78:
      case 79:
      case 82:
      case 83:
      case 84:
      case 85:
      case 86:
      case 87:
      case 88:
      case 89:
      case 92:
      case 93:
      case 95:
      case 96:
      case 97:
      case 98:
      case 99:
      case 100:
      case 101:
      case 102:
      case 103:
      case 104:
      case 105:
      case 106:
      case 107:
      case 108:
      case 109:
      case 111:
        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v30 = getCompressionCodecConfig(*(result + 56));
        if (v30 <= 1)
        {
          if (v30)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v30 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (v30 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v61 = getCompressionCodecConfig(*(result + 56));
        if (v61 <= 1)
        {
          if (v61)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v61 == 2)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (v61 == 3)
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 60:
      case 62:
      case 64:
      case 65:
        v64 = getCompressionCodecConfig(*(result + 56));
        if (v64 > 1)
        {
          goto LABEL_252;
        }

        if (v64)
        {
          goto LABEL_415;
        }

        goto LABEL_134;
      case 63:
        v64 = getCompressionCodecConfig(*(result + 56));
        if (v64 <= 1)
        {
          if (v64)
          {
LABEL_415:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_134:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else
        {
LABEL_252:
          if (v64 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (v64 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      case 70:
      case 71:
      case 80:
      case 81:
        v62 = getCompressionCodecConfig(*(result + 56));
        if (v62 <= 1)
        {
          if (v62)
          {
            goto LABEL_241;
          }

          goto LABEL_210;
        }

        if (v62 == 2)
        {
          goto LABEL_237;
        }

        if (v62 != 3)
        {
          goto LABEL_141;
        }

        goto LABEL_127;
      case 72:
      case 73:
      case 74:
        v66 = getCompressionCodecConfig(*(result + 56));
        if (v66 <= 1)
        {
          if (v66)
          {
LABEL_241:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_210:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v66 == 2)
        {
LABEL_237:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (v66 == 3)
        {
LABEL_127:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
LABEL_141:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        break;
      case 90:
      case 91:
      case 94:
LABEL_76:
        v41 = getCompressionCodecConfig(*(result + 56));
        if (v41 <= 1)
        {
          if (v41)
          {
LABEL_293:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_143:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v41 == 2)
        {
LABEL_208:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (v41 == 3)
        {
LABEL_79:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
LABEL_199:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
        v65 = getCompressionCodecConfig(*(result + 56));
        if (v65 > 1)
        {
          goto LABEL_256;
        }

        if (!v65)
        {
          goto LABEL_137;
        }

        goto LABEL_417;
      case 115:
        v65 = getCompressionCodecConfig(*(result + 56));
        if (v65 <= 1)
        {
          if (v65)
          {
LABEL_417:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_137:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else
        {
LABEL_256:
          if (v65 == 2)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (v65 == 3)
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      default:
        switch(v13)
        {
          case 552:
          case 553:
            v70 = getCompressionCodecConfig(*(result + 56));
            if (v70 <= 1)
            {
              if (v70)
              {
                goto LABEL_283;
              }

              goto LABEL_201;
            }

            if (v70 == 2)
            {
              goto LABEL_277;
            }

            if (v70 != 3)
            {
              goto LABEL_282;
            }

            goto LABEL_50;
          case 554:
          case 555:
          case 586:
          case 587:
            goto LABEL_76;
          case 578:
          case 579:
            v72 = getCompressionCodecConfig(*(result + 56));
            if (v72 <= 1)
            {
              if (v72)
              {
                goto LABEL_429;
              }

              goto LABEL_295;
            }

            if (v72 == 2)
            {
              goto LABEL_427;
            }

            if (v72 != 3)
            {
              goto LABEL_428;
            }

            goto LABEL_205;
          case 605:
            v74 = getCompressionCodecConfig(*(result + 56));
            if (v74 <= 1)
            {
              if (v74)
              {
                goto LABEL_652;
              }

              goto LABEL_421;
            }

            if (v74 == 2)
            {
              goto LABEL_649;
            }

            if (v74 != 3)
            {
              goto LABEL_651;
            }

            goto LABEL_276;
          case 628:
          case 629:
            v71 = getCompressionCodecConfig(*(result + 56));
            if (v71 <= 1)
            {
              if (!v71)
              {
                goto LABEL_143;
              }

              goto LABEL_293;
            }

            if (v71 == 2)
            {
              goto LABEL_208;
            }

            if (v71 == 3)
            {
              goto LABEL_79;
            }

            break;
          case 637:
          case 638:
          case 639:
          case 640:
          case 641:
            v31 = getCompressionCodecConfig(*(result + 56));
            if (v31 <= 1)
            {
              if (v31)
              {
LABEL_283:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else
              {
LABEL_201:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            else if (v31 == 2)
            {
LABEL_277:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (v31 == 3)
            {
LABEL_50:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_282:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            return;
          case 644:
            v73 = getCompressionCodecConfig(*(result + 56));
            if (v73 <= 1)
            {
              if (v73)
              {
LABEL_429:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else
              {
LABEL_295:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            else if (v73 == 2)
            {
LABEL_427:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (v73 == 3)
            {
LABEL_205:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_428:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)5,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            return;
          case 648:
            v75 = getCompressionCodecConfig(*(result + 56));
            if (v75 <= 1)
            {
              if (v75)
              {
LABEL_652:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }

              else
              {
LABEL_421:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            else if (v75 == 2)
            {
LABEL_649:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)2>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (v75 == 3)
            {
LABEL_276:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_651:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)6,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)1,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)3>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            return;
          default:
            return;
        }

        goto LABEL_199;
    }

    return;
  }

  v18 = *(result + 57);
  v19 = *(result + 112);
  if (v18 == 3)
  {
    if (v19 > 3)
    {
      if (v19 == 4)
      {
        switch(v13)
        {
          case 1:
            if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
            {
              goto LABEL_1112;
            }

            break;
          case 10:
            if (v15 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 11:
            if (v15 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 12:
            if (v15 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 13:
            if (v15 != 1)
            {
              goto LABEL_1111;
            }

            break;
          case 14:
            if (v15 != 1)
            {
LABEL_1111:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {
LABEL_1112:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 20:
            if (v15 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 22:
            if (v15 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 23:
            if (v15 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 24:
            if (v15 != 1)
            {
              goto LABEL_1127;
            }

            break;
          case 25:
            if (v15 != 1)
            {
LABEL_1127:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 30:
            if (v15 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 31:
            if (v15 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 32:
            if (v15 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 33:
            if (v15 != 1)
            {
              goto LABEL_1143;
            }

            break;
          case 34:
            if (v15 != 1)
            {
LABEL_1143:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 53:
            if (v15 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 54:
            if (v15 != 1)
            {
              goto LABEL_1176;
            }

            break;
          case 55:
            if (v15 != 1)
            {
LABEL_1176:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 60:
            if (v15 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 62:
            if (v15 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 63:
            if (v15 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 64:
            if (v15 != 1)
            {
              goto LABEL_1157;
            }

            break;
          case 65:
            if (v15 != 1)
            {
LABEL_1157:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 70:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 71:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 72:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 73:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 74:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 80:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 81:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 84:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 85:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 90:
            if (v15 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 91:
            if (v15 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 94:
            if (v15 != 1)
            {
              goto LABEL_1240;
            }

            break;
          case 103:
            if (v15 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 104:
            if (v15 != 1)
            {
              goto LABEL_1093;
            }

            break;
          case 105:
            if (v15 != 1)
            {
LABEL_1093:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 110:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 112:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 113:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 114:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 115:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 123:
            if (v15 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 124:
            if (v15 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 125:
            if (v15 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 300:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 301:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 302:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 303:
            if (v15 != 1)
            {
              goto LABEL_1230;
            }

            break;
          case 304:
            if (v15 != 1)
            {
LABEL_1230:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 313:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 314:
            if (v15 != 1)
            {
              goto LABEL_1220;
            }

            break;
          case 315:
            if (v15 != 1)
            {
LABEL_1220:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 323:
            if (v15 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 324:
            if (v15 != 1)
            {
              goto LABEL_1186;
            }

            break;
          case 325:
            if (v15 != 1)
            {
LABEL_1186:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 554:
            if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
            {
              goto LABEL_1241;
            }

            break;
          case 555:
            if (v15 != 1)
            {
LABEL_1240:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {
LABEL_1241:

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          default:
            return;
        }
      }

      else if (v19 == 8)
      {
        switch(v13)
        {
          case 1:
            if (v15 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 10:
            if (v15 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 11:
            if (v15 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 12:
            if (v15 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 13:
            if (v15 != 1)
            {
              goto LABEL_1104;
            }

            break;
          case 14:
            if (v15 != 1)
            {
LABEL_1104:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 20:
            if (v15 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 22:
            if (v15 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 23:
            if (v15 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 24:
            if (v15 != 1)
            {
              goto LABEL_1118;
            }

            break;
          case 25:
            if (v15 != 1)
            {
LABEL_1118:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 30:
            if (v15 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 31:
            if (v15 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 32:
            if (v15 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 33:
            if (v15 != 1)
            {
              goto LABEL_1138;
            }

            break;
          case 34:
            if (v15 != 1)
            {
LABEL_1138:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 53:
            if (v15 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 54:
            if (v15 != 1)
            {
              goto LABEL_1171;
            }

            break;
          case 55:
            if (v15 != 1)
            {
LABEL_1171:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 60:
            if (v15 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 62:
            if (v15 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 63:
            if (v15 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 64:
            if (v15 != 1)
            {
              goto LABEL_1150;
            }

            break;
          case 65:
            if (v15 != 1)
            {
LABEL_1150:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 70:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 71:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 72:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 73:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 74:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 80:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 81:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 84:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 85:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 90:
            if (v15 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 91:
            if (v15 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 94:
            if (v15 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 103:
            if (v15 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 104:
            if (v15 != 1)
            {
              goto LABEL_1082;
            }

            break;
          case 105:
            if (v15 != 1)
            {
LABEL_1082:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 110:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 112:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 113:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 114:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 115:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 123:
            if (v15 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 124:
            if (v15 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 125:
            if (v15 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 300:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 301:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 302:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 303:
            if (v15 != 1)
            {
              goto LABEL_1225;
            }

            break;
          case 304:
            if (v15 != 1)
            {
LABEL_1225:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 313:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 314:
            if (v15 != 1)
            {
              goto LABEL_1215;
            }

            break;
          case 315:
            if (v15 != 1)
            {
LABEL_1215:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 323:
            if (v15 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 324:
            if (v15 != 1)
            {
              goto LABEL_1181;
            }

            break;
          case 325:
            if (v15 != 1)
            {
LABEL_1181:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          case 554:
            if (v15 != 1)
            {
              goto LABEL_1235;
            }

            break;
          case 555:
            if (v15 != 1)
            {
LABEL_1235:
              if (getCompressionCodecConfig(*(result + 56)) == 3)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }

            break;
          default:
            return;
        }
      }
    }

    else if (v19 == 1)
    {
      switch(v13)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        default:
          return;
      }
    }

    else if (v19 == 2)
    {
      switch(v13)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 53:
        case 54:
        case 55:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 80:
        case 81:
        case 84:
        case 85:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 90:
        case 91:
        case 94:
        case 554:
        case 555:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 103:
        case 104:
        case 105:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 3)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)3>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v18 == 1)
  {
    if (v19 > 3)
    {
      if (v19 == 4)
      {
        if (v13 <= 637)
        {
          if (v13 != 552 && v13 != 553 && v13 != 637)
          {
            return;
          }
        }

        else if (v13 > 640 && v13 != 641)
        {
          return;
        }

        if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }
      }

      else
      {
        if (v19 != 8)
        {
          return;
        }

        if (v13 <= 637)
        {
          if (v13 != 552 && v13 != 553 && v13 != 637)
          {
            return;
          }
        }

        else if (v13 > 640 && v13 != 641)
        {
          return;
        }

        if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 1)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }
      }
    }

    else if (v19 == 1)
    {
      if (v13 <= 637)
      {
        if (v13 != 552 && v13 != 553 && v13 != 637)
        {
          return;
        }
      }

      else if (v13 > 640 && v13 != 641)
      {
        return;
      }

      if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
      }
    }

    else
    {
      if (v19 != 2)
      {
        return;
      }

      if (v13 <= 637)
      {
        if (v13 != 552 && v13 != 553 && v13 != 637)
        {
          return;
        }
      }

      else if (v13 > 640 && v13 != 641)
      {
        return;
      }

      if (v15 != 1 && getCompressionCodecConfig(*(result + 56)) == 1)
      {

        AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)1>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
      }
    }
  }

  else if (v19 > 3)
  {
    if (v19 == 4)
    {
      switch(v14)
      {
        case 1:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v125 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v125 == 4)
            {
              v449 = result;
              v450 = v11;
              v451 = a3;
              v452 = a4;
              v453 = a5;
              v454 = a6;
              v455 = a7;
              v456 = a8;

              goto LABEL_1466;
            }

            if (!v125)
            {
              v126 = result;
              v127 = v11;
              v128 = a3;
              v129 = a4;
              v130 = a5;
              v131 = a6;
              v132 = a7;
              v133 = a8;

              goto LABEL_441;
            }
          }

          else
          {
            if (v125 == 4)
            {
              goto LABEL_1749;
            }

            if (!v125)
            {
              goto LABEL_1746;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v191 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_883;
          }

          if (v191 == 4)
          {
            v535 = result;
            v536 = v11;
            v537 = a3;
            v538 = a4;
            v539 = a5;
            v540 = a6;
            v541 = a7;
            v542 = a8;

            goto LABEL_1786;
          }

          if (!v191)
          {
            v192 = result;
            v193 = v11;
            v194 = a3;
            v195 = a4;
            v196 = a5;
            v197 = a6;
            v198 = a7;
            v199 = a8;

            goto LABEL_501;
          }

          return;
        case 26:
        case 250:
          v191 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_883:
            if (v191 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v191)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v191 == 4)
          {
            v535 = result;
            v536 = v11;
            v537 = a3;
            v538 = a4;
            v539 = a5;
            v540 = a6;
            v541 = a7;
            v542 = a8;

LABEL_1786:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v535, v536, v537, v538, v539, v540, v541, v542, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v191)
          {
            v192 = result;
            v193 = v11;
            v194 = a3;
            v195 = a4;
            v196 = a5;
            v197 = a6;
            v198 = a7;
            v199 = a8;

LABEL_501:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v192, v193, v194, v195, v196, v197, v198, v199, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v226 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v226 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v226)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v226 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v226)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 40:
          v500 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v500 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v500)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v500 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v500)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 41:
          v436 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v436 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v436)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v436 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v436)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 42:
          v440 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v440 != 4)
            {
              goto LABEL_1433;
            }

            goto LABEL_1504;
          }

          if (v440 == 4)
          {
            goto LABEL_2066;
          }

          if (!v440)
          {
            v607 = result;
            v608 = v11;
            v609 = a3;
            v610 = a4;
            v611 = a5;
            v612 = a6;
            v613 = a7;
            v614 = a8;

            goto LABEL_1906;
          }

          return;
        case 43:
          v508 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v508 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v508)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v508 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v508)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 44:
          v440 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v440 == 4)
            {
LABEL_1504:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1433:
              if (!v440)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else if (v440 == 4)
          {
LABEL_2066:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v440)
          {
            v607 = result;
            v608 = v11;
            v609 = a3;
            v610 = a4;
            v611 = a5;
            v612 = a6;
            v613 = a7;
            v614 = a8;

LABEL_1906:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v607, v608, v609, v610, v611, v612, v613, v614, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 53:
        case 54:
        case 55:
          v280 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v280 != 4)
            {
              goto LABEL_1646;
            }

            v281 = result;
            v282 = v11;
            v283 = a3;
            v284 = a4;
            v285 = a5;
            v286 = a6;
            v287 = a7;
            v288 = a8;

            goto LABEL_680;
          }

          if (v280 == 4)
          {
            v639 = result;
            v640 = v11;
            v641 = a3;
            v642 = a4;
            v643 = a5;
            v644 = a6;
            v645 = a7;
            v646 = a8;

            goto LABEL_1921;
          }

          if (!v280)
          {
            goto LABEL_2030;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v203 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v203 != 4)
            {
              goto LABEL_522;
            }

            v489 = result;
            v490 = v11;
            v491 = a3;
            v492 = a4;
            v493 = a5;
            v494 = a6;
            v495 = a7;
            v496 = a8;

            goto LABEL_1536;
          }

          if (v203 == 4)
          {
            v575 = result;
            v576 = v11;
            v577 = a3;
            v578 = a4;
            v579 = a5;
            v580 = a6;
            v581 = a7;
            v582 = a8;

            goto LABEL_1813;
          }

          if (!v203)
          {
            goto LABEL_743;
          }

          return;
        case 66:
          v203 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v203 == 4)
            {
              v489 = result;
              v490 = v11;
              v491 = a3;
              v492 = a4;
              v493 = a5;
              v494 = a6;
              v495 = a7;
              v496 = a8;

LABEL_1536:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v489, v490, v491, v492, v493, v494, v495, v496, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_522:
              if (!v203)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else if (v203 == 4)
          {
            v575 = result;
            v576 = v11;
            v577 = a3;
            v578 = a4;
            v579 = a5;
            v580 = a6;
            v581 = a7;
            v582 = a8;

LABEL_1813:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v575, v576, v577, v578, v579, v580, v581, v582, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v203)
          {
LABEL_743:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 300:
        case 301:
        case 302:
        case 303:
        case 304:
          v52 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v52 == 4)
            {
              goto LABEL_834;
            }

            if (!v52)
            {
              v53 = result;
              v54 = v11;
              v55 = a3;
              v56 = a4;
              v57 = a5;
              v58 = a6;
              v59 = a7;
              v60 = a8;

              goto LABEL_119;
            }
          }

          else
          {
            if (v52 == 4)
            {
              v315 = result;
              v316 = v11;
              v317 = a3;
              v318 = a4;
              v319 = a5;
              v320 = a6;
              v321 = a7;
              v322 = a8;

              goto LABEL_905;
            }

            if (!v52)
            {
              goto LABEL_573;
            }
          }

          return;
        case 80:
        case 81:
          v294 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_829;
          }

          if (v294 == 4)
          {
            goto LABEL_1847;
          }

          if (!v294)
          {
LABEL_573:
            v235 = result;
            v236 = v11;
            v237 = a3;
            v238 = a4;
            v239 = a5;
            v240 = a6;
            v241 = a7;
            v242 = a8;

            goto LABEL_575;
          }

          return;
        case 84:
        case 85:
          v294 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_829:
            if (v294 == 4)
            {
LABEL_834:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v294)
            {
              v53 = result;
              v54 = v11;
              v55 = a3;
              v56 = a4;
              v57 = a5;
              v58 = a6;
              v59 = a7;
              v60 = a8;

LABEL_119:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v53, v54, v55, v56, v57, v58, v59, v60, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v294 == 4)
          {
LABEL_1847:
            v315 = result;
            v316 = v11;
            v317 = a3;
            v318 = a4;
            v319 = a5;
            v320 = a6;
            v321 = a7;
            v322 = a8;

LABEL_905:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v315, v316, v317, v318, v319, v320, v321, v322, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v294)
          {
            v235 = result;
            v236 = v11;
            v237 = a3;
            v238 = a4;
            v239 = a5;
            v240 = a6;
            v241 = a7;
            v242 = a8;

LABEL_575:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v235, v236, v237, v238, v239, v240, v241, v242, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 90:
        case 91:
          v155 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_850;
          }

          if (v155 == 4)
          {
            goto LABEL_1458;
          }

          if (!v155)
          {
            goto LABEL_1455;
          }

          return;
        case 92:
          v504 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v504 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v504)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v504 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v504)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 93:
          v422 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v422 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v422)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v422 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v422)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v155 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_850;
          }

          if (v155 == 4)
          {
            goto LABEL_1458;
          }

          if (!v155)
          {
            v156 = result;
            v157 = v11;
            v158 = a3;
            v159 = a4;
            v160 = a5;
            v161 = a6;
            v162 = a7;
            v163 = a8;

            goto LABEL_477;
          }

          return;
        case 103:
        case 104:
          v296 = getCompressionCodecConfig(*(result + 56));
          if (v15 != 1)
          {
            goto LABEL_1684;
          }

          if (v296 != 4)
          {
            goto LABEL_1680;
          }

          v297 = result;
          v298 = v11;
          v299 = a3;
          v300 = a4;
          v301 = a5;
          v302 = a6;
          v303 = a7;
          v304 = a8;

          goto LABEL_863;
        case 105:
          v296 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v296 == 4)
            {
              v297 = result;
              v298 = v11;
              v299 = a3;
              v300 = a4;
              v301 = a5;
              v302 = a6;
              v303 = a7;
              v304 = a8;

LABEL_863:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v297, v298, v299, v300, v301, v302, v303, v304, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1680:
              if (!v296)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else
          {
LABEL_1684:
            if (v296 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v296)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v85 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v85 == 4)
            {
              v355 = result;
              v356 = v11;
              v357 = a3;
              v358 = a4;
              v359 = a5;
              v360 = a6;
              v361 = a7;
              v362 = a8;

              goto LABEL_1258;
            }

            if (v85)
            {
              return;
            }

            v86 = result;
            v87 = v11;
            v88 = a3;
            v89 = a4;
            v90 = a5;
            v91 = a6;
            v92 = a7;
            v93 = a8;

            goto LABEL_337;
          }

          if (v85 == 4)
          {
            v371 = result;
            v372 = v11;
            v373 = a3;
            v374 = a4;
            v375 = a5;
            v376 = a6;
            v377 = a7;
            v378 = a8;

            goto LABEL_1264;
          }

          if (v85)
          {
            return;
          }

          goto LABEL_615;
        case 116:
          v432 = getCompressionCodecConfig(*(result + 56));
          if (v15 != 1)
          {
            goto LABEL_1775;
          }

          if (v432 != 4)
          {
            goto LABEL_1361;
          }

          goto LABEL_1772;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v136 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v136 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v136)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v136 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v136)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 252:
          v280 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v280 == 4)
            {
              v281 = result;
              v282 = v11;
              v283 = a3;
              v284 = a4;
              v285 = a5;
              v286 = a6;
              v287 = a7;
              v288 = a8;

LABEL_680:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v281, v282, v283, v284, v285, v286, v287, v288, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1646:
              if (!v280)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else if (v280 == 4)
          {
            v639 = result;
            v640 = v11;
            v641 = a3;
            v642 = a4;
            v643 = a5;
            v644 = a6;
            v645 = a7;
            v646 = a8;

LABEL_1921:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v639, v640, v641, v642, v643, v644, v645, v646, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v280)
          {
LABEL_2030:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 253:
          v510 = getCompressionCodecConfig(*(result + 56));
          if (v15 != 1)
          {
            goto LABEL_1744;
          }

          if (v510 == 4)
          {
            goto LABEL_1741;
          }

          goto LABEL_1697;
        case 261:
          v510 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v510 == 4)
            {
LABEL_1741:
              v449 = result;
              v450 = v11;
              v451 = a3;
              v452 = a4;
              v453 = a5;
              v454 = a6;
              v455 = a7;
              v456 = a8;

LABEL_1466:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v449, v450, v451, v452, v453, v454, v455, v456, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1697:
              if (!v510)
              {
                v126 = result;
                v127 = v11;
                v128 = a3;
                v129 = a4;
                v130 = a5;
                v131 = a6;
                v132 = a7;
                v133 = a8;

LABEL_441:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v126, v127, v128, v129, v130, v131, v132, v133, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else
          {
LABEL_1744:
            if (v510 == 4)
            {
LABEL_1749:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v510)
            {
LABEL_1746:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v97 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v97 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v97)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v97 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v97)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 554:
        case 555:
          v155 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_850:
            if (v155 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v155)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v155 == 4)
          {
LABEL_1458:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v155)
          {
LABEL_1455:
            v156 = result;
            v157 = v11;
            v158 = a3;
            v159 = a4;
            v160 = a5;
            v161 = a6;
            v162 = a7;
            v163 = a8;

LABEL_477:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v156, v157, v158, v159, v160, v161, v162, v163, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 556:
          v432 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v432 == 4)
            {
LABEL_1772:
              v355 = result;
              v356 = v11;
              v357 = a3;
              v358 = a4;
              v359 = a5;
              v360 = a6;
              v361 = a7;
              v362 = a8;

LABEL_1258:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v355, v356, v357, v358, v359, v360, v361, v362, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1361:
              if (!v432)
              {
                v86 = result;
                v87 = v11;
                v88 = a3;
                v89 = a4;
                v90 = a5;
                v91 = a6;
                v92 = a7;
                v93 = a8;

LABEL_337:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v86, v87, v88, v89, v90, v91, v92, v93, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else
          {
LABEL_1775:
            if (v432 == 4)
            {
              v371 = result;
              v372 = v11;
              v373 = a3;
              v374 = a4;
              v375 = a5;
              v376 = a6;
              v377 = a7;
              v378 = a8;

LABEL_1264:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v371, v372, v373, v374, v375, v376, v377, v378, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v432)
            {
LABEL_615:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,4u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          break;
        default:
          return;
      }
    }

    else if (v19 == 8)
    {
      switch(v14)
      {
        case 1:
          v204 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v204 != 4)
            {
              goto LABEL_528;
            }

            v403 = result;
            v404 = v11;
            v405 = a3;
            v406 = a4;
            v407 = a5;
            v408 = a6;
            v409 = a7;
            v410 = a8;

            goto LABEL_1312;
          }

          if (v204 == 4)
          {
            v583 = result;
            v584 = v11;
            v585 = a3;
            v586 = a4;
            v587 = a5;
            v588 = a6;
            v589 = a7;
            v590 = a8;

            goto LABEL_1816;
          }

          if (!v204)
          {
            goto LABEL_1932;
          }

          return;
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
          v204 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v204 == 4)
            {
              goto LABEL_1310;
            }

LABEL_528:
            if (!v204)
            {
              v205 = result;
              v206 = v11;
              v207 = a3;
              v208 = a4;
              v209 = a5;
              v210 = a6;
              v211 = a7;
              v212 = a8;

              goto LABEL_531;
            }
          }

          else
          {
            if (v204 == 4)
            {
              v583 = result;
              v584 = v11;
              v585 = a3;
              v586 = a4;
              v587 = a5;
              v588 = a6;
              v589 = a7;
              v590 = a8;

              goto LABEL_1816;
            }

            if (!v204)
            {
              goto LABEL_1932;
            }
          }

          return;
        case 20:
        case 22:
        case 23:
        case 24:
        case 25:
          v173 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_871;
          }

          if (v173 == 4)
          {
            v527 = result;
            v528 = v11;
            v529 = a3;
            v530 = a4;
            v531 = a5;
            v532 = a6;
            v533 = a7;
            v534 = a8;

            goto LABEL_1783;
          }

          if (!v173)
          {
            v174 = result;
            v175 = v11;
            v176 = a3;
            v177 = a4;
            v178 = a5;
            v179 = a6;
            v180 = a7;
            v181 = a8;

            goto LABEL_489;
          }

          return;
        case 26:
        case 250:
          v173 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_871:
            if (v173 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v173)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v173 == 4)
          {
            v527 = result;
            v528 = v11;
            v529 = a3;
            v530 = a4;
            v531 = a5;
            v532 = a6;
            v533 = a7;
            v534 = a8;

LABEL_1783:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v527, v528, v529, v530, v531, v532, v533, v534, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v173)
          {
            v174 = result;
            v175 = v11;
            v176 = a3;
            v177 = a4;
            v178 = a5;
            v179 = a6;
            v180 = a7;
            v181 = a8;

LABEL_489:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v174, v175, v176, v177, v178, v179, v180, v181, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 30:
        case 31:
        case 32:
        case 33:
        case 34:
          v224 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v224 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v224)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v224 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v224)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 40:
          v498 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v498 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v498)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v498 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v498)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 41:
          v434 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v434 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v434)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v434 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v434)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 42:
          v438 = getCompressionCodecConfig(*(result + 56));
          if (v15 != 1)
          {
            goto LABEL_1487;
          }

          if (v438 != 4)
          {
            goto LABEL_1421;
          }

          goto LABEL_1484;
        case 43:
          v506 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v506 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v506)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v506 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v506)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 44:
          v438 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v438 == 4)
            {
LABEL_1484:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1421:
              if (!v438)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else
          {
LABEL_1487:
            if (v438 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v438)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          return;
        case 53:
          v295 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_1468;
          }

          if (v295 == 4)
          {
            v647 = result;
            v648 = v11;
            v649 = a3;
            v650 = a4;
            v651 = a5;
            v652 = a6;
            v653 = a7;
            v654 = a8;

            goto LABEL_2071;
          }

          if (!v295)
          {
            goto LABEL_2020;
          }

          return;
        case 54:
        case 55:
          v295 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_1468:
            if (v295 != 4)
            {
              goto LABEL_1634;
            }

            v457 = result;
            v458 = v11;
            v459 = a3;
            v460 = a4;
            v461 = a5;
            v462 = a6;
            v463 = a7;
            v464 = a8;

            goto LABEL_1471;
          }

          if (v295 == 4)
          {
            v647 = result;
            v648 = v11;
            v649 = a3;
            v650 = a4;
            v651 = a5;
            v652 = a6;
            v653 = a7;
            v654 = a8;

            goto LABEL_2071;
          }

          if (!v295)
          {
            goto LABEL_2020;
          }

          return;
        case 60:
        case 62:
        case 63:
        case 64:
        case 65:
          v201 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v201 != 4)
            {
              goto LABEL_510;
            }

            v473 = result;
            v474 = v11;
            v475 = a3;
            v476 = a4;
            v477 = a5;
            v478 = a6;
            v479 = a7;
            v480 = a8;

            goto LABEL_1526;
          }

          if (v201 == 4)
          {
            v559 = result;
            v560 = v11;
            v561 = a3;
            v562 = a4;
            v563 = a5;
            v564 = a6;
            v565 = a7;
            v566 = a8;

            goto LABEL_1801;
          }

          if (v201)
          {
            return;
          }

          goto LABEL_733;
        case 66:
          v201 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v201 == 4)
            {
              v473 = result;
              v474 = v11;
              v475 = a3;
              v476 = a4;
              v477 = a5;
              v478 = a6;
              v479 = a7;
              v480 = a8;

LABEL_1526:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v473, v474, v475, v476, v477, v478, v479, v480, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_510:
              if (!v201)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else if (v201 == 4)
          {
            v559 = result;
            v560 = v11;
            v561 = a3;
            v562 = a4;
            v563 = a5;
            v564 = a6;
            v565 = a7;
            v566 = a8;

LABEL_1801:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v559, v560, v561, v562, v563, v564, v565, v566, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v201)
          {
LABEL_733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 70:
        case 71:
        case 72:
        case 73:
        case 74:
        case 302:
        case 303:
        case 304:
          v32 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_65;
          }

          if (v32 != 4)
          {
            goto LABEL_619;
          }

          v379 = result;
          v380 = v11;
          v381 = a3;
          v382 = a4;
          v383 = a5;
          v384 = a6;
          v385 = a7;
          v386 = a8;

          goto LABEL_1267;
        case 80:
        case 81:
          v252 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_811;
          }

          if (v252 == 4)
          {
            goto LABEL_1717;
          }

          if (!v252)
          {
            goto LABEL_1399;
          }

          return;
        case 84:
        case 85:
        case 301:
          v252 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_811:
            if (v252 == 4)
            {
              goto LABEL_816;
            }

            if (!v252)
            {
              v33 = result;
              v34 = v11;
              v35 = a3;
              v36 = a4;
              v37 = a5;
              v38 = a6;
              v39 = a7;
              v40 = a8;

              goto LABEL_69;
            }
          }

          else
          {
            if (v252 == 4)
            {
              goto LABEL_1717;
            }

            if (!v252)
            {
              goto LABEL_1399;
            }
          }

          return;
        case 90:
        case 91:
          v137 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_838;
          }

          if (v137 == 4)
          {
            goto LABEL_1442;
          }

          if (!v137)
          {
            goto LABEL_1439;
          }

          return;
        case 92:
          v502 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v502 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v502)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v502 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v502)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 93:
          v420 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v420 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v420)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v420 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v420)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 94:
        case 586:
        case 587:
        case 628:
        case 629:
          v137 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            goto LABEL_838;
          }

          if (v137 == 4)
          {
            goto LABEL_1442;
          }

          if (v137)
          {
            return;
          }

          v138 = result;
          v139 = v11;
          v140 = a3;
          v141 = a4;
          v142 = a5;
          v143 = a6;
          v144 = a7;
          v145 = a8;

          goto LABEL_465;
        case 103:
        case 104:
        case 105:
          v290 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v290 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v290)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v290 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v290)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 110:
        case 112:
        case 113:
        case 114:
        case 115:
        case 313:
        case 314:
        case 315:
          v76 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v76 == 4)
            {
              v339 = result;
              v340 = v11;
              v341 = a3;
              v342 = a4;
              v343 = a5;
              v344 = a6;
              v345 = a7;
              v346 = a8;

              goto LABEL_1252;
            }

            if (v76)
            {
              return;
            }

            v77 = result;
            v78 = v11;
            v79 = a3;
            v80 = a4;
            v81 = a5;
            v82 = a6;
            v83 = a7;
            v84 = a8;

            goto LABEL_331;
          }

          if (v76 == 4)
          {
            v347 = result;
            v348 = v11;
            v349 = a3;
            v350 = a4;
            v351 = a5;
            v352 = a6;
            v353 = a7;
            v354 = a8;

            goto LABEL_1255;
          }

          if (v76)
          {
            return;
          }

          goto LABEL_610;
        case 116:
          v431 = getCompressionCodecConfig(*(result + 56));
          if (v15 != 1)
          {
            goto LABEL_1757;
          }

          if (v431 != 4)
          {
            goto LABEL_1349;
          }

          goto LABEL_1754;
        case 123:
        case 124:
        case 125:
        case 323:
        case 324:
        case 325:
          v135 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v135 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v135)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v135 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v135)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 252:
          v295 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v295 == 4)
            {
              v457 = result;
              v458 = v11;
              v459 = a3;
              v460 = a4;
              v461 = a5;
              v462 = a6;
              v463 = a7;
              v464 = a8;

LABEL_1471:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v457, v458, v459, v460, v461, v462, v463, v464, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1634:
              if (!v295)
              {

                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else if (v295 == 4)
          {
            v647 = result;
            v648 = v11;
            v649 = a3;
            v650 = a4;
            v651 = a5;
            v652 = a6;
            v653 = a7;
            v654 = a8;

LABEL_2071:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v647, v648, v649, v650, v651, v652, v653, v654, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v295)
          {
LABEL_2020:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 253:
        case 261:
          v305 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v305 == 4)
            {
LABEL_1310:
              v403 = result;
              v404 = v11;
              v405 = a3;
              v406 = a4;
              v407 = a5;
              v408 = a6;
              v409 = a7;
              v410 = a8;

LABEL_1312:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v403, v404, v405, v406, v407, v408, v409, v410, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v305)
            {
              v205 = result;
              v206 = v11;
              v207 = a3;
              v208 = a4;
              v209 = a5;
              v210 = a6;
              v211 = a7;
              v212 = a8;

LABEL_531:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v205, v206, v207, v208, v209, v210, v211, v212, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v305 == 4)
          {
            v583 = result;
            v584 = v11;
            v585 = a3;
            v586 = a4;
            v587 = a5;
            v588 = a6;
            v589 = a7;
            v590 = a8;

LABEL_1816:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v583, v584, v585, v586, v587, v588, v589, v590, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v305)
          {
LABEL_1932:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 300:
          v32 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_65:
            if (v32 == 4)
            {
LABEL_816:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v32)
            {
              v33 = result;
              v34 = v11;
              v35 = a3;
              v36 = a4;
              v37 = a5;
              v38 = a6;
              v39 = a7;
              v40 = a8;

LABEL_69:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v33, v34, v35, v36, v37, v38, v39, v40, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v32 == 4)
          {
LABEL_1717:
            v379 = result;
            v380 = v11;
            v381 = a3;
            v382 = a4;
            v383 = a5;
            v384 = a6;
            v385 = a7;
            v386 = a8;

LABEL_1267:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v379, v380, v381, v382, v383, v384, v385, v386, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_619:
            if (!v32)
            {
LABEL_1399:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          return;
        case 552:
        case 553:
        case 637:
        case 638:
        case 639:
        case 640:
        case 641:
          v95 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v95 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v95)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v95 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v95)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 554:
        case 555:
          v137 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
LABEL_838:
            if (v137 == 4)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v137)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          else if (v137 == 4)
          {
LABEL_1442:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v137)
          {
LABEL_1439:
            v138 = result;
            v139 = v11;
            v140 = a3;
            v141 = a4;
            v142 = a5;
            v143 = a6;
            v144 = a7;
            v145 = a8;

LABEL_465:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v138, v139, v140, v141, v142, v143, v144, v145, a9, SHIDWORD(a9), a10, a11);
          }

          return;
        case 556:
          v431 = getCompressionCodecConfig(*(result + 56));
          if (v15 == 1)
          {
            if (v431 == 4)
            {
LABEL_1754:
              v339 = result;
              v340 = v11;
              v341 = a3;
              v342 = a4;
              v343 = a5;
              v344 = a6;
              v345 = a7;
              v346 = a8;

LABEL_1252:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v339, v340, v341, v342, v343, v344, v345, v346, a9, SHIDWORD(a9), a10, a11);
            }

            else
            {
LABEL_1349:
              if (!v431)
              {
                v77 = result;
                v78 = v11;
                v79 = a3;
                v80 = a4;
                v81 = a5;
                v82 = a6;
                v83 = a7;
                v84 = a8;

LABEL_331:
                AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v77, v78, v79, v80, v81, v82, v83, v84, a9, SHIDWORD(a9), a10, a11);
              }
            }
          }

          else
          {
LABEL_1757:
            if (v431 == 4)
            {
              v347 = result;
              v348 = v11;
              v349 = a3;
              v350 = a4;
              v351 = a5;
              v352 = a6;
              v353 = a7;
              v354 = a8;

LABEL_1255:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v347, v348, v349, v350, v351, v352, v353, v354, a9, SHIDWORD(a9), a10, a11);
            }

            else if (!v431)
            {
LABEL_610:

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,8u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }

          break;
        default:
          return;
      }
    }
  }

  else if (v19 == 1)
  {
    switch(v14)
    {
      case 1:
        v213 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v213 != 4)
          {
            goto LABEL_534;
          }

          v411 = result;
          v412 = v11;
          v413 = a3;
          v414 = a4;
          v415 = a5;
          v416 = a6;
          v417 = a7;
          v418 = a8;

          goto LABEL_1315;
        }

        if (v213 == 4)
        {
          v591 = result;
          v592 = v11;
          v593 = a3;
          v594 = a4;
          v595 = a5;
          v596 = a6;
          v597 = a7;
          v598 = a8;

          goto LABEL_1819;
        }

        if (!v213)
        {
          goto LABEL_1937;
        }

        return;
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v213 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v213 == 4)
          {
            goto LABEL_1313;
          }

LABEL_534:
          if (!v213)
          {
            v214 = result;
            v215 = v11;
            v216 = a3;
            v217 = a4;
            v218 = a5;
            v219 = a6;
            v220 = a7;
            v221 = a8;

            goto LABEL_537;
          }
        }

        else
        {
          if (v213 == 4)
          {
            v591 = result;
            v592 = v11;
            v593 = a3;
            v594 = a4;
            v595 = a5;
            v596 = a6;
            v597 = a7;
            v598 = a8;

            goto LABEL_1819;
          }

          if (!v213)
          {
            goto LABEL_1937;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v182 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_877;
        }

        if (v182 == 4)
        {
          v543 = result;
          v544 = v11;
          v545 = a3;
          v546 = a4;
          v547 = a5;
          v548 = a6;
          v549 = a7;
          v550 = a8;

          goto LABEL_1789;
        }

        if (!v182)
        {
          v183 = result;
          v184 = v11;
          v185 = a3;
          v186 = a4;
          v187 = a5;
          v188 = a6;
          v189 = a7;
          v190 = a8;

          goto LABEL_495;
        }

        return;
      case 26:
      case 250:
        v182 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_877:
          if (v182 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v182)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v182 == 4)
        {
          v543 = result;
          v544 = v11;
          v545 = a3;
          v546 = a4;
          v547 = a5;
          v548 = a6;
          v549 = a7;
          v550 = a8;

LABEL_1789:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v543, v544, v545, v546, v547, v548, v549, v550, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v182)
        {
          v183 = result;
          v184 = v11;
          v185 = a3;
          v186 = a4;
          v187 = a5;
          v188 = a6;
          v189 = a7;
          v190 = a8;

LABEL_495:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v183, v184, v185, v186, v187, v188, v189, v190, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v225 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v225 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v225)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v225 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v225)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 40:
        v499 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v499 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v499)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v499 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v499)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 41:
        v435 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v435 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v435)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v435 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v435)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 42:
        v439 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1497;
        }

        if (v439 != 4)
        {
          goto LABEL_1427;
        }

        goto LABEL_1494;
      case 43:
        v507 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v507 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v507)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v507 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v507)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 44:
        v439 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v439 == 4)
          {
LABEL_1494:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1427:
            if (!v439)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else
        {
LABEL_1497:
          if (v439 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v439)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v271 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v271 != 4)
          {
            goto LABEL_1640;
          }

          v272 = result;
          v273 = v11;
          v274 = a3;
          v275 = a4;
          v276 = a5;
          v277 = a6;
          v278 = a7;
          v279 = a8;

          goto LABEL_675;
        }

        if (v271 == 4)
        {
          v631 = result;
          v632 = v11;
          v633 = a3;
          v634 = a4;
          v635 = a5;
          v636 = a6;
          v637 = a7;
          v638 = a8;

          goto LABEL_1918;
        }

        if (!v271)
        {
          goto LABEL_2025;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v202 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v202 != 4)
          {
            goto LABEL_516;
          }

          v481 = result;
          v482 = v11;
          v483 = a3;
          v484 = a4;
          v485 = a5;
          v486 = a6;
          v487 = a7;
          v488 = a8;

          goto LABEL_1531;
        }

        if (v202 == 4)
        {
          v567 = result;
          v568 = v11;
          v569 = a3;
          v570 = a4;
          v571 = a5;
          v572 = a6;
          v573 = a7;
          v574 = a8;

          goto LABEL_1810;
        }

        if (v202)
        {
          return;
        }

        goto LABEL_738;
      case 66:
        v202 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v202 == 4)
          {
            v481 = result;
            v482 = v11;
            v483 = a3;
            v484 = a4;
            v485 = a5;
            v486 = a6;
            v487 = a7;
            v488 = a8;

LABEL_1531:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v481, v482, v483, v484, v485, v486, v487, v488, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_516:
            if (!v202)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v202 == 4)
        {
          v567 = result;
          v568 = v11;
          v569 = a3;
          v570 = a4;
          v571 = a5;
          v572 = a6;
          v573 = a7;
          v574 = a8;

LABEL_1810:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v567, v568, v569, v570, v571, v572, v573, v574, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v202)
        {
LABEL_738:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
        v222 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_820;
        }

        if (v222 == 4)
        {
          goto LABEL_1407;
        }

        if (v222)
        {
          return;
        }

        goto LABEL_1404;
      case 80:
      case 81:
        v222 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          if (v222 == 4)
          {
LABEL_1407:
            v387 = result;
            v388 = v11;
            v389 = a3;
            v390 = a4;
            v391 = a5;
            v392 = a6;
            v393 = a7;
            v394 = a8;

            goto LABEL_1306;
          }

          if (v222)
          {
            return;
          }

          goto LABEL_1404;
        }

LABEL_820:
        if (v222 == 4)
        {
          goto LABEL_825;
        }

        if (!v222)
        {
          v44 = result;
          v45 = v11;
          v46 = a3;
          v47 = a4;
          v48 = a5;
          v49 = a6;
          v50 = a7;
          v51 = a8;

          goto LABEL_112;
        }

        return;
      case 84:
      case 85:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v43 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v43 == 4)
          {
LABEL_825:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v43)
          {
            v44 = result;
            v45 = v11;
            v46 = a3;
            v47 = a4;
            v48 = a5;
            v49 = a6;
            v50 = a7;
            v51 = a8;

LABEL_112:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v44, v45, v46, v47, v48, v49, v50, v51, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v43 == 4)
        {
          v387 = result;
          v388 = v11;
          v389 = a3;
          v390 = a4;
          v391 = a5;
          v392 = a6;
          v393 = a7;
          v394 = a8;

LABEL_1306:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v387, v388, v389, v390, v391, v392, v393, v394, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v43)
        {
LABEL_1404:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 90:
      case 91:
        v146 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_844;
        }

        if (v146 == 4)
        {
          goto LABEL_1450;
        }

        if (!v146)
        {
          goto LABEL_1447;
        }

        return;
      case 92:
        v503 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v503 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v503)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v503 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v503)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 93:
        v421 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v421 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v421)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v421 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v421)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 94:
      case 586:
      case 587:
      case 628:
      case 629:
        v146 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_844;
        }

        if (v146 == 4)
        {
          goto LABEL_1450;
        }

        if (v146)
        {
          return;
        }

        v147 = result;
        v148 = v11;
        v149 = a3;
        v150 = a4;
        v151 = a5;
        v152 = a6;
        v153 = a7;
        v154 = a8;

        goto LABEL_471;
      case 103:
      case 104:
      case 105:
        v291 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v291 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v291)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v291 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v291)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 114:
      case 115:
      case 314:
      case 315:
        v107 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_409;
        }

        if (v107 == 4)
        {
          v395 = result;
          v396 = v11;
          v397 = a3;
          v398 = a4;
          v399 = a5;
          v400 = a6;
          v401 = a7;
          v402 = a8;

          goto LABEL_1309;
        }

        if (!v107)
        {
          goto LABEL_1767;
        }

        return;
      case 116:
        v107 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1765;
        }

        if (v107 != 4)
        {
          goto LABEL_1355;
        }

        goto LABEL_1762;
      case 123:
      case 124:
      case 125:
        v253 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v253 == 4)
          {
            goto LABEL_1555;
          }

          if (!v253)
          {
            v254 = result;
            v255 = v11;
            v256 = a3;
            v257 = a4;
            v258 = a5;
            v259 = a6;
            v260 = a7;
            v261 = a8;

            goto LABEL_665;
          }
        }

        else
        {
          if (v253 == 4)
          {
            v615 = result;
            v616 = v11;
            v617 = a3;
            v618 = a4;
            v619 = a5;
            v620 = a6;
            v621 = a7;
            v622 = a8;

            goto LABEL_1912;
          }

          if (!v253)
          {
            goto LABEL_944;
          }
        }

        return;
      case 252:
        v271 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v271 == 4)
          {
            v272 = result;
            v273 = v11;
            v274 = a3;
            v275 = a4;
            v276 = a5;
            v277 = a6;
            v278 = a7;
            v279 = a8;

LABEL_675:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v272, v273, v274, v275, v276, v277, v278, v279, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1640:
            if (!v271)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v271 == 4)
        {
          v631 = result;
          v632 = v11;
          v633 = a3;
          v634 = a4;
          v635 = a5;
          v636 = a6;
          v637 = a7;
          v638 = a8;

LABEL_1918:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v631, v632, v633, v634, v635, v636, v637, v638, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v271)
        {
LABEL_2025:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 253:
      case 261:
        v306 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v306 == 4)
          {
LABEL_1313:
            v411 = result;
            v412 = v11;
            v413 = a3;
            v414 = a4;
            v415 = a5;
            v416 = a6;
            v417 = a7;
            v418 = a8;

LABEL_1315:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v411, v412, v413, v414, v415, v416, v417, v418, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v306)
          {
            v214 = result;
            v215 = v11;
            v216 = a3;
            v217 = a4;
            v218 = a5;
            v219 = a6;
            v220 = a7;
            v221 = a8;

LABEL_537:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v214, v215, v216, v217, v218, v219, v220, v221, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v306 == 4)
        {
          v591 = result;
          v592 = v11;
          v593 = a3;
          v594 = a4;
          v595 = a5;
          v596 = a6;
          v597 = a7;
          v598 = a8;

LABEL_1819:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v591, v592, v593, v594, v595, v596, v597, v598, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v306)
        {
LABEL_1937:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 313:
        v107 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1765;
        }

LABEL_409:
        if (v107 == 4)
        {
          v363 = result;
          v364 = v11;
          v365 = a3;
          v366 = a4;
          v367 = a5;
          v368 = a6;
          v369 = a7;
          v370 = a8;

          goto LABEL_1261;
        }

        if (v107)
        {
          return;
        }

        v108 = result;
        v109 = v11;
        v110 = a3;
        v111 = a4;
        v112 = a5;
        v113 = a6;
        v114 = a7;
        v115 = a8;

        goto LABEL_413;
      case 323:
      case 324:
      case 325:
        v292 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v292 == 4)
          {
LABEL_1555:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v292)
          {
            v254 = result;
            v255 = v11;
            v256 = a3;
            v257 = a4;
            v258 = a5;
            v259 = a6;
            v260 = a7;
            v261 = a8;

LABEL_665:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v254, v255, v256, v257, v258, v259, v260, v261, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v292 == 4)
        {
          v615 = result;
          v616 = v11;
          v617 = a3;
          v618 = a4;
          v619 = a5;
          v620 = a6;
          v621 = a7;
          v622 = a8;

LABEL_1912:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v615, v616, v617, v618, v619, v620, v621, v622, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v292)
        {
LABEL_944:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v96 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v96 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v96)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v96 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v96)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 554:
      case 555:
        v146 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_844:
          if (v146 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v146)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v146 == 4)
        {
LABEL_1450:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v146)
        {
LABEL_1447:
          v147 = result;
          v148 = v11;
          v149 = a3;
          v150 = a4;
          v151 = a5;
          v152 = a6;
          v153 = a7;
          v154 = a8;

LABEL_471:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v147, v148, v149, v150, v151, v152, v153, v154, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 556:
        v107 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v107 == 4)
          {
LABEL_1762:
            v363 = result;
            v364 = v11;
            v365 = a3;
            v366 = a4;
            v367 = a5;
            v368 = a6;
            v369 = a7;
            v370 = a8;

LABEL_1261:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v363, v364, v365, v366, v367, v368, v369, v370, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1355:
            if (!v107)
            {
              v108 = result;
              v109 = v11;
              v110 = a3;
              v111 = a4;
              v112 = a5;
              v113 = a6;
              v114 = a7;
              v115 = a8;

LABEL_413:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v108, v109, v110, v111, v112, v113, v114, v115, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else
        {
LABEL_1765:
          if (v107 == 4)
          {
            v395 = result;
            v396 = v11;
            v397 = a3;
            v398 = a4;
            v399 = a5;
            v400 = a6;
            v401 = a7;
            v402 = a8;

LABEL_1309:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v395, v396, v397, v398, v399, v400, v401, v402, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v107)
          {
LABEL_1767:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,1u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        break;
      default:
        return;
    }
  }

  else if (v19 == 2)
  {
    switch(v14)
    {
      case 1:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        v116 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v116 == 4)
          {
            v441 = result;
            v442 = v11;
            v443 = a3;
            v444 = a4;
            v445 = a5;
            v446 = a6;
            v447 = a7;
            v448 = a8;

            goto LABEL_1463;
          }

          if (!v116)
          {
            v117 = result;
            v118 = v11;
            v119 = a3;
            v120 = a4;
            v121 = a5;
            v122 = a6;
            v123 = a7;
            v124 = a8;

            goto LABEL_435;
          }
        }

        else
        {
          if (v116 == 4)
          {
            goto LABEL_1736;
          }

          if (!v116)
          {
            goto LABEL_1733;
          }
        }

        return;
      case 20:
      case 22:
      case 23:
      case 24:
      case 25:
        v164 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_865;
        }

        if (v164 == 4)
        {
          v519 = result;
          v520 = v11;
          v521 = a3;
          v522 = a4;
          v523 = a5;
          v524 = a6;
          v525 = a7;
          v526 = a8;

          goto LABEL_1780;
        }

        if (!v164)
        {
          v165 = result;
          v166 = v11;
          v167 = a3;
          v168 = a4;
          v169 = a5;
          v170 = a6;
          v171 = a7;
          v172 = a8;

          goto LABEL_483;
        }

        return;
      case 26:
      case 250:
        v164 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_865:
          if (v164 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v164)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v164 == 4)
        {
          v519 = result;
          v520 = v11;
          v521 = a3;
          v522 = a4;
          v523 = a5;
          v524 = a6;
          v525 = a7;
          v526 = a8;

LABEL_1780:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v519, v520, v521, v522, v523, v524, v525, v526, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v164)
        {
          v165 = result;
          v166 = v11;
          v167 = a3;
          v168 = a4;
          v169 = a5;
          v170 = a6;
          v171 = a7;
          v172 = a8;

LABEL_483:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)3,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v165, v166, v167, v168, v169, v170, v171, v172, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
        v223 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v223 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v223)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v223 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v223)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)4,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 40:
        v497 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v497 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v497)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v497 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v497)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)7,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 41:
        v433 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v433 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v433)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v433 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v433)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)10,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 42:
        v437 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1477;
        }

        if (v437 != 4)
        {
          goto LABEL_1415;
        }

        goto LABEL_1474;
      case 43:
        v505 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v505 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v505)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v505 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v505)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)9,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 44:
        v437 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v437 == 4)
          {
LABEL_1474:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1415:
            if (!v437)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else
        {
LABEL_1477:
          if (v437 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v437)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)8,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      case 53:
      case 54:
      case 55:
        v262 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v262 != 4)
          {
            goto LABEL_1628;
          }

          v263 = result;
          v264 = v11;
          v265 = a3;
          v266 = a4;
          v267 = a5;
          v268 = a6;
          v269 = a7;
          v270 = a8;

          goto LABEL_670;
        }

        if (v262 == 4)
        {
          v623 = result;
          v624 = v11;
          v625 = a3;
          v626 = a4;
          v627 = a5;
          v628 = a6;
          v629 = a7;
          v630 = a8;

          goto LABEL_1915;
        }

        if (!v262)
        {
          goto LABEL_2015;
        }

        return;
      case 60:
      case 62:
      case 63:
      case 64:
      case 65:
        v200 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v200 != 4)
          {
            goto LABEL_504;
          }

          v465 = result;
          v466 = v11;
          v467 = a3;
          v468 = a4;
          v469 = a5;
          v470 = a6;
          v471 = a7;
          v472 = a8;

          goto LABEL_1521;
        }

        if (v200 == 4)
        {
          v551 = result;
          v552 = v11;
          v553 = a3;
          v554 = a4;
          v555 = a5;
          v556 = a6;
          v557 = a7;
          v558 = a8;

          goto LABEL_1798;
        }

        if (v200)
        {
          return;
        }

        goto LABEL_728;
      case 66:
        v200 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v200 == 4)
          {
            v465 = result;
            v466 = v11;
            v467 = a3;
            v468 = a4;
            v469 = a5;
            v470 = a6;
            v471 = a7;
            v472 = a8;

LABEL_1521:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v465, v466, v467, v468, v469, v470, v471, v472, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_504:
            if (!v200)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v200 == 4)
        {
          v551 = result;
          v552 = v11;
          v553 = a3;
          v554 = a4;
          v555 = a5;
          v556 = a6;
          v557 = a7;
          v558 = a8;

LABEL_1798:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v551, v552, v553, v554, v555, v556, v557, v558, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v200)
        {
LABEL_728:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)11,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 300:
      case 301:
      case 302:
      case 303:
      case 304:
        v20 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v20 == 4)
          {
            goto LABEL_807;
          }

          if (!v20)
          {
            v21 = result;
            v22 = v11;
            v23 = a3;
            v24 = a4;
            v25 = a5;
            v26 = a6;
            v27 = a7;
            v28 = a8;

            goto LABEL_39;
          }

          return;
        }

        if (v20 == 4)
        {
          v307 = result;
          v308 = v11;
          v309 = a3;
          v310 = a4;
          v311 = a5;
          v312 = a6;
          v313 = a7;
          v314 = a8;

          goto LABEL_902;
        }

        if (v20)
        {
          return;
        }

LABEL_568:
        v227 = result;
        v228 = v11;
        v229 = a3;
        v230 = a4;
        v231 = a5;
        v232 = a6;
        v233 = a7;
        v234 = a8;

        goto LABEL_570;
      case 80:
      case 81:
        v293 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_802;
        }

        if (v293 == 4)
        {
          goto LABEL_1844;
        }

        if (v293)
        {
          return;
        }

        goto LABEL_568;
      case 84:
      case 85:
        v293 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_802:
          if (v293 == 4)
          {
LABEL_807:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v293)
          {
            v21 = result;
            v22 = v11;
            v23 = a3;
            v24 = a4;
            v25 = a5;
            v26 = a6;
            v27 = a7;
            v28 = a8;

LABEL_39:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v21, v22, v23, v24, v25, v26, v27, v28, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v293 == 4)
        {
LABEL_1844:
          v307 = result;
          v308 = v11;
          v309 = a3;
          v310 = a4;
          v311 = a5;
          v312 = a6;
          v313 = a7;
          v314 = a8;

LABEL_902:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v307, v308, v309, v310, v311, v312, v313, v314, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v293)
        {
          v227 = result;
          v228 = v11;
          v229 = a3;
          v230 = a4;
          v231 = a5;
          v232 = a6;
          v233 = a7;
          v234 = a8;

LABEL_570:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)15,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v227, v228, v229, v230, v231, v232, v233, v234, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 90:
      case 91:
      case 554:
      case 555:
        v243 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_603;
        }

        if (v243 == 4)
        {
          goto LABEL_1247;
        }

        if (v243)
        {
          return;
        }

        v244 = result;
        v245 = v11;
        v246 = a3;
        v247 = a4;
        v248 = a5;
        v249 = a6;
        v250 = a7;
        v251 = a8;

        goto LABEL_601;
      case 92:
        v501 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v501 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v501)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v501 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v501)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)12,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 93:
        v419 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v419 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v419)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v419 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v419)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)14,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 94:
        v243 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v243 != 4)
          {
            goto LABEL_604;
          }

          v323 = result;
          v324 = v11;
          v325 = a3;
          v326 = a4;
          v327 = a5;
          v328 = a6;
          v329 = a7;
          v330 = a8;

          goto LABEL_1246;
        }

        if (v243 != 4)
        {
          goto LABEL_598;
        }

        v331 = result;
        v332 = v11;
        v333 = a3;
        v334 = a4;
        v335 = a5;
        v336 = a6;
        v337 = a7;
        v338 = a8;

        goto LABEL_1249;
      case 103:
      case 104:
      case 105:
        v289 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v289 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v289)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v289 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v289)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)17,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 110:
      case 112:
      case 113:
      case 313:
      case 314:
      case 315:
      case 556:
        v98 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1707;
        }

        if (v98 == 4)
        {
          goto LABEL_1712;
        }

        if (v98)
        {
          return;
        }

        v99 = result;
        v100 = v11;
        v101 = a3;
        v102 = a4;
        v103 = a5;
        v104 = a6;
        v105 = a7;
        v106 = a8;

        goto LABEL_407;
      case 114:
        v98 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          goto LABEL_1702;
        }

LABEL_1707:
        if (v98 == 4)
        {
          goto LABEL_1875;
        }

        if (!v98)
        {
          goto LABEL_1709;
        }

        return;
      case 115:
        v98 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_1702:
          if (v98 != 4)
          {
            goto LABEL_1703;
          }

LABEL_1712:
          v423 = result;
          v424 = v11;
          v425 = a3;
          v426 = a4;
          v427 = a5;
          v428 = a6;
          v429 = a7;
          v430 = a8;

          goto LABEL_1346;
        }

        if (v98 == 4)
        {
          v599 = result;
          v600 = v11;
          v601 = a3;
          v602 = a4;
          v603 = a5;
          v604 = a6;
          v605 = a7;
          v606 = a8;

          goto LABEL_1877;
        }

        if (v98)
        {
          return;
        }

LABEL_1709:
        v511 = result;
        v512 = v11;
        v513 = a3;
        v514 = a4;
        v515 = a5;
        v516 = a6;
        v517 = a7;
        v518 = a8;

        goto LABEL_1711;
      case 116:
        v98 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v98 == 4)
          {
            v423 = result;
            v424 = v11;
            v425 = a3;
            v426 = a4;
            v427 = a5;
            v428 = a6;
            v429 = a7;
            v430 = a8;

LABEL_1346:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v423, v424, v425, v426, v427, v428, v429, v430, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1703:
            if (!v98)
            {
              v99 = result;
              v100 = v11;
              v101 = a3;
              v102 = a4;
              v103 = a5;
              v104 = a6;
              v105 = a7;
              v106 = a8;

LABEL_407:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v99, v100, v101, v102, v103, v104, v105, v106, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v98 == 4)
        {
LABEL_1875:
          v599 = result;
          v600 = v11;
          v601 = a3;
          v602 = a4;
          v603 = a5;
          v604 = a6;
          v605 = a7;
          v606 = a8;

LABEL_1877:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v599, v600, v601, v602, v603, v604, v605, v606, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v98)
        {
          v511 = result;
          v512 = v11;
          v513 = a3;
          v514 = a4;
          v515 = a5;
          v516 = a6;
          v517 = a7;
          v518 = a8;

LABEL_1711:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)18,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v511, v512, v513, v514, v515, v516, v517, v518, a9, SHIDWORD(a9), a10, a11);
        }

        break;
      case 123:
      case 124:
      case 125:
      case 323:
      case 324:
      case 325:
        v134 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v134 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v134)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v134 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v134)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)20,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)3,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 252:
        v262 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v262 == 4)
          {
            v263 = result;
            v264 = v11;
            v265 = a3;
            v266 = a4;
            v267 = a5;
            v268 = a6;
            v269 = a7;
            v270 = a8;

LABEL_670:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v263, v264, v265, v266, v267, v268, v269, v270, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1628:
            if (!v262)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v262 == 4)
        {
          v623 = result;
          v624 = v11;
          v625 = a3;
          v626 = a4;
          v627 = a5;
          v628 = a6;
          v629 = a7;
          v630 = a8;

LABEL_1915:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v623, v624, v625, v626, v627, v628, v629, v630, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v262)
        {
LABEL_2015:

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)16,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 253:
        v509 = getCompressionCodecConfig(*(result + 56));
        if (v15 != 1)
        {
          goto LABEL_1731;
        }

        if (v509 == 4)
        {
          goto LABEL_1728;
        }

        goto LABEL_1691;
      case 261:
        v509 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v509 == 4)
          {
LABEL_1728:
            v441 = result;
            v442 = v11;
            v443 = a3;
            v444 = a4;
            v445 = a5;
            v446 = a6;
            v447 = a7;
            v448 = a8;

LABEL_1463:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v441, v442, v443, v444, v445, v446, v447, v448, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_1691:
            if (!v509)
            {
              v117 = result;
              v118 = v11;
              v119 = a3;
              v120 = a4;
              v121 = a5;
              v122 = a6;
              v123 = a7;
              v124 = a8;

LABEL_435:
              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v117, v118, v119, v120, v121, v122, v123, v124, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else
        {
LABEL_1731:
          if (v509 == 4)
          {
LABEL_1736:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v509)
          {
LABEL_1733:

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)0,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      case 552:
      case 553:
      case 637:
      case 638:
      case 639:
      case 640:
      case 641:
        v94 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
          if (v94 == 4)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }

          else if (!v94)
          {

            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
          }
        }

        else if (v94 == 4)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        else if (!v94)
        {

          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)19,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
        }

        return;
      case 586:
      case 587:
      case 628:
      case 629:
        v243 = getCompressionCodecConfig(*(result + 56));
        if (v15 == 1)
        {
LABEL_603:
          if (v243 == 4)
          {
            v323 = result;
            v324 = v11;
            v325 = a3;
            v326 = a4;
            v327 = a5;
            v328 = a6;
            v329 = a7;
            v330 = a8;

LABEL_1246:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(v323, v324, v325, v326, v327, v328, v329, v330, a9, SHIDWORD(a9), a10, a11);
          }

          else
          {
LABEL_604:
            if (!v243)
            {

              AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)1>(result, v11, a3, a4, a5, a6, a7, a8, a9, SHIDWORD(a9), a10, a11);
            }
          }
        }

        else if (v243 == 4)
        {
LABEL_1247:
          v331 = result;
          v332 = v11;
          v333 = a3;
          v334 = a4;
          v335 = a5;
          v336 = a6;
          v337 = a7;
          v338 = a8;

LABEL_1249:
          AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)1,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v331, v332, v333, v334, v335, v336, v337, v338, a9, SHIDWORD(a9), a10, a11);
        }

        else
        {
LABEL_598:
          if (!v243)
          {
            v244 = result;
            v245 = v11;
            v246 = a3;
            v247 = a4;
            v248 = a5;
            v249 = a6;
            v250 = a7;
            v251 = a8;

LABEL_601:
            AGX::Texture<(AGXTextureMemoryLayout)4,AGX::HAL300::Encoders,AGX::HAL300::Classes>::processCompressedRegion2D<AGX::AppleCompressionGen2::Compressor<(AGX::AppleCompressionGen2::PixelFormat)13,2u,(unsigned char)0,(AGX::AppleCompressionGen2::SubblockOrder)0,(AGXTextureFootprint)0>,false,(AGXHardwareTextureMemoryOrder)2>(v244, v245, v246, v247, v248, v249, v250, v251, a9, SHIDWORD(a9), a10, a11);
          }
        }

        return;
      default:
        return;
    }
  }
}