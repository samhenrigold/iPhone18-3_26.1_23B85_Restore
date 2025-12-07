double sub_10002A448@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 80) != 1 || *(a1 + 72) < a2)
  {
    goto LABEL_14;
  }

  v4 = *(a1 + 88);
  *a3 = a2;
  if (*(a1 + 96) != 1)
  {
    v11 = *(a1 + 72);
    v8 = v11 >= a2;
    v12 = v11 - a2;
    if (v8)
    {
      *(a1 + 72) = v12;
      v13 = 1;
      goto LABEL_13;
    }

LABEL_11:
    v13 = 0;
LABEL_13:
    *(a1 + 80) = v13;
    goto LABEL_14;
  }

  v5 = *(a1 + 88);
  v6 = v5 + a2;
  if (v5 + a2 >= v5)
  {
    *(a1 + 88) = v6;
  }

  *(a1 + 96) = v6 >= v5;
  v7 = *(a1 + 72);
  v8 = v7 >= a2;
  v9 = v7 - a2;
  if (!v8)
  {
    goto LABEL_11;
  }

  *(a1 + 72) = v9;
  *(a1 + 80) = 1;
  if (v6 >= v5)
  {
    result = 0.0;
    *(a4 + 24) = 0u;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = v4;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    return result;
  }

LABEL_14:
  *a3 = 0;
  result = 0.0;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t sub_10002A514(uint64_t a1)
{
  if (*(a1 + 60) == 1)
  {
    return *(a1 + 56);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10002A530(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return *(a1 + 40);
  }

  else
  {
    return 0;
  }
}

void sub_10002A564(Madusa::ImageProperties *a1, uint64_t a2, uint64_t a3)
{
  v6 = *Madusa::ImageProperties::GetColorModel(a1);
  DataType = Madusa::ImageProperties::GetDataType(a1);
  if (v6 > 4)
  {
    if ((v6 - 5) >= 3)
    {
      if (v6 != 9 || (Madusa::ImageProperties::IsInverted(a1) & 1) != 0)
      {
        goto LABEL_62;
      }

LABEL_10:
      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071200;
LABEL_42:
        *v8 = v9;
        *(v8 + 8) = a3;
        *(v8 + 56) = 0;
        *(v8 + 64) = 1;
        *(v8 + 72) = 0;
        *(v8 + 76) = 1;
        *(v8 + 40) = 0;
        *(v8 + 48) = 1;
        *(v8 + 16) = off_100070A98;
        *(v8 + 24) = 0;
        *(v8 + 32) = 1;
        *(v8 + 80) = 0u;
        *(v8 + 96) = 0u;
        *(v8 + 112) = 0u;
        *(v8 + 124) = 0u;
        *(v8 + 140) = 1;
        *(v8 + 144) = 0;
        *(v8 + 148) = 1;
        *(v8 + 152) = 0;
        *(v8 + 156) = 1;
        *(v8 + 160) = 0;
        *(v8 + 164) = 1;
        *(v8 + 168) = 0;
        *(v8 + 176) = a2;
        return;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071288;
        goto LABEL_42;
      }

      goto LABEL_62;
    }

LABEL_13:
    IsInverted = Madusa::ImageProperties::IsInverted(a1);
    v11 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
    if (IsInverted)
    {
      if (v11 == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_1000710F0;
        goto LABEL_42;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071178;
        goto LABEL_42;
      }
    }

    else
    {
      if (v11 == 8)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100070FE0;
        goto LABEL_42;
      }

      if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
      {
        v8 = (*(*a2 + 16))(a2, 184);
        if (!v8)
        {
          return;
        }

        v9 = off_100071068;
        goto LABEL_42;
      }
    }

LABEL_62:
    v15 = (*(*a2 + 16))(a2, 16);
    if (v15)
    {
      *v15 = off_100071398;
      v15[1] = a3;
    }

    return;
  }

  switch(v6)
  {
    case 1:
      goto LABEL_13;
    case 2:
      if (*DataType == 1)
      {
        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
        {
          v8 = (*(*a2 + 16))(a2, 184);
          if (!v8)
          {
            return;
          }

          v9 = off_100070CB0;
          goto LABEL_42;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          goto LABEL_62;
        }

        sub_10002ACB0(a3, a2);
      }

      else
      {
        if (*DataType != 2)
        {
          v16 = 0x100000001;
          v17 = 0x100000001;
          Madusa::ImageProperties::GetDownsampleRatios(a1, &v17, &v16);
          v12 = HIDWORD(v16);
          v13 = HIDWORD(v17);
          v14 = *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1);
          if (v12 == 1 && v13 == 1)
          {
            if (v14 == 8)
            {
              sub_10002AD94(a3, a2);
              return;
            }

            if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
            {
              sub_10002AE78(a3, a2);
              return;
            }
          }

          else
          {
            if (v14 == 8)
            {
              sub_10002AF5C(a3, a2);
              return;
            }

            if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
            {
              sub_10002B040(a3, a2);
              return;
            }
          }

          goto LABEL_62;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) == 16)
        {
          v8 = (*(*a2 + 16))(a2, 184);
          if (!v8)
          {
            return;
          }

          v9 = off_100070A48;
          goto LABEL_42;
        }

        if (*Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 32)
        {
          goto LABEL_62;
        }

        sub_10002ABCC(a3, a2);
      }

      break;
    case 4:
      if (Madusa::ImageProperties::IsInverted(a1))
      {
        goto LABEL_10;
      }

      if ((Madusa::ImageProperties::IsInverted(a1) & 1) != 0 || *Madusa::ImageProperties::GetBitsPerPixelPerColor(a1) != 8)
      {
        goto LABEL_62;
      }

      sub_10002B124(a3, a2);
      break;
    default:
      goto LABEL_62;
  }
}

double sub_10002ABCC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070BC8;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002ACB0(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070D38;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AD94(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070DC0;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AE78(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070E48;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002AF5C(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070ED0;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002B040(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100070F58;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

double sub_10002B124(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 16))(a2, 184);
  if (v4)
  {
    *v4 = off_100071310;
    *(v4 + 8) = a1;
    *(v4 + 56) = 0;
    *(v4 + 64) = 1;
    *(v4 + 72) = 0;
    *(v4 + 76) = 1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 1;
    *(v4 + 16) = off_100070A98;
    *(v4 + 24) = 0;
    *(v4 + 32) = 1;
    result = 0.0;
    *(v4 + 80) = 0u;
    *(v4 + 96) = 0u;
    *(v4 + 112) = 0u;
    *(v4 + 124) = 0u;
    *(v4 + 140) = 1;
    *(v4 + 144) = 0;
    *(v4 + 148) = 1;
    *(v4 + 152) = 0;
    *(v4 + 156) = 1;
    *(v4 + 160) = 0;
    *(v4 + 164) = 1;
    *(v4 + 168) = 0;
    *(v4 + 176) = a2;
  }

  return result;
}

uint64_t sub_10002B208(uint64_t result, void *a2)
{
  *result = off_100070A48;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002B29C(uint64_t a1, void *a2)
{
  *a1 = off_100070A48;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002B340(uint64_t a1, Madusa::ImageProperties *this)
{
  *(a1 + 120) = Madusa::ImageProperties::GetBounds(this);
  *(a1 + 128) = v4;
  sub_10001F264(this, v6);
  if ((a1 + 136) != v6)
  {
    *(a1 + 152) = v7;
    *(a1 + 156) = v8;
    *(a1 + 160) = v9;
    *(a1 + 164) = v10;
  }

  *(a1 + 136) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  result = Madusa::ImageProperties::GetResolutionBucket(this);
  *(a1 + 168) = result;
  return result;
}

uint64_t sub_10002B3DC(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070B58;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

void sub_10002B5E8(uint64_t a1, int *a2)
{
  if (*(a2 + 4) == 1 && *(a2 + 12) == 1 && *(a2 + 20) == 1 && *(a2 + 28) == 1)
  {
    v16 = v2;
    v17 = v3;
    v4 = a2[4];
    v5 = *a2;
    v7 = (*(**(a1 + 8) + 48))(*(a1 + 8));
    v8 = (v5 + v4 + 0x80000000) >> 32;
    if ((v5 & 0x80000000) == 0 || !v8)
    {
      if (v8)
      {
        v9 = v4;
      }

      else
      {
        v9 = v5 + v4;
      }

      if (v5 >= 0)
      {
        v9 = v4;
      }

      if (v7 >= 0)
      {
        v10 = v7;
      }

      else
      {
        v10 = -v7;
      }

      v11 = v10 * v9;
      if (v11 == v11)
      {
        v12 = v11 | &_mh_execute_header;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 0x100000000) != 0 && v12 >= 1)
      {
        v15 = 0;
        v13 = v12 & 0x7FFFFFFF;
        (*(**(a1 + 8) + 32))(&v14);
        if (v15 == v13)
        {
          bzero(v14, v13);
        }
      }
    }
  }
}

void sub_10002B734(uint64_t a1, uint64_t *a2, int *a3)
{
  bzero((*a2 + 8), 0x4204uLL);
  width = 130;
  v66 = 1;
  rowBytes = 130;
  v68 = 1;
  v6 = *a3;
  v7 = a3[1];
  data = *a3;
  v62 = 1;
  height = v7;
  v64 = 1;
  v8 = *a2;
  v9 = v8 + 8;
  if (v7 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = -v7;
  }

  if (v6 >= 0)
  {
    v11 = v6;
  }

  else
  {
    v11 = -v6;
  }

  if (v7 < 0)
  {
    if (v10 > 0x81)
    {
      return;
    }

    if (v10 + v9 <= v9)
    {
      v15 = v8 + 8;
    }

    else
    {
      v15 = v10 + v9;
    }

    if (v6 < 0)
    {
      if (v11 >= 0x82 || v10 + v9 < v9)
      {
        return;
      }

      v17 = 130 * v11;
      v10 += v17;
      if (__CFADD__(v15, v17))
      {
        return;
      }
    }

    else if (v10 + v9 < v9)
    {
      return;
    }
  }

  else if (v6 < 0)
  {
    if (v11 > 0x81)
    {
      return;
    }

    v10 = 130 * v11;
    if (__CFADD__(v9, 130 * v11))
    {
      return;
    }
  }

  else
  {
    v10 = 0;
  }

  sub_10002862C(&data, (a1 + 136), v22);
  data = v22[0].data;
  v62 = BYTE4(v22[0].data);
  height = v22[0].height;
  v64 = BYTE4(v22[0].height);
  width = v22[0].width;
  v66 = BYTE4(v22[0].width);
  rowBytes = v22[0].rowBytes;
  v68 = BYTE4(v22[0].rowBytes);
  if (v10 <= 0x4204)
  {
    v60 = 0u;
    v59 = 0u;
    v57 = 0;
    v58 = v8 + v10 + 8;
    v51 = 0;
    v52 = 1;
    v53 = 0;
    v54 = 1;
    v49 = 0;
    v50 = 1;
    v47[0] = off_100070A98;
    v47[1] = 0;
    v48 = 1;
    v55 = 0u;
    v56 = 0u;
    sub_10002BC2C(v47, &v58, &v58, 16900 - v10, 130);
    sub_10002CDD8(&data, *(a1 + 168), &v40);
    v23 = off_100070B90;
    v24 = 0;
    v25 = 1;
    v26 = 0;
    v27 = 1;
    v28 = 0;
    v29 = 1;
    v30 = 0;
    v31 = 1;
    v32 = 0;
    v33 = 1;
    v34 = 0;
    v35 = 1;
    v36 = 0;
    v37 = 1;
    v12 = *(a1 + 168);
    v38 = 0;
    if (v12 <= 350)
    {
      v13 = v12;
    }

    else
    {
      v13 = 300;
    }

    v14 = 394;
    v39 = 1;
    if (v13 <= 199)
    {
      switch(v13)
      {
        case 100:
          v14 = 132;
          break;
        case 125:
          v14 = 166;
          break;
        case 150:
          v14 = 200;
          break;
      }
    }

    else if (v13 > 299)
    {
      if (v13 == 300)
      {
        v14 = 394;
      }

      else if (v13 == 350)
      {
        v14 = 462;
      }
    }

    else if (v13 == 200)
    {
      v14 = 264;
    }

    else if (v13 == 250)
    {
      v14 = 330;
    }

    v22[0].data = 0;
    v22[0].height = v14;
    v22[0].width = v14;
    v22[0].rowBytes = v14;
    *&dest.height = vdupq_n_s64(0x82uLL);
    dest.data = 0;
    dest.rowBytes = 130;
    v18 = vImageScale_Planar8(v22, &dest, 0, 0x80u);
    v19 = v18 & ~(v18 >> 63);
    if (*(a1 + 64) == 1)
    {
      v20 = *(a1 + 56) == 0;
      if (!v19)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v20 = 1;
      if (!v19)
      {
LABEL_56:
        Madusa::ImageProperties::ImageProperties(v22);
        v24 = v40;
        v25 = BYTE4(v40);
        v26 = v41;
        v27 = v42;
        v28 = v43;
        v29 = v44;
        v30 = v45;
        v31 = v46;
        v32 = data;
        v33 = v62;
        v34 = height;
        v35 = v64;
        v36 = width;
        v37 = v66;
        v38 = rowBytes;
        v39 = v68;
        sub_10002D178(&v23, *(a1 + 8), v47, a1 + 16);
        return;
      }
    }

    if (v20)
    {
      v21 = (*(**(a1 + 176) + 16))(*(a1 + 176), v19);
      if (v21)
      {
        v22[0].data = v21;
        sub_10002BC2C(a1 + 16, v22, v22, v19, 0);
      }
    }

    goto LABEL_56;
  }
}

uint64_t sub_10002BC2C(uint64_t result, unint64_t *a2, unint64_t *a3, uint64_t a4, int a5)
{
  v5 = 0;
  v6 = 0;
  *(result + 64) = 0u;
  v7 = (result + 64);
  *(result + 24) = 0;
  *(result + 32) = 1;
  *(result + 8) = 0;
  *(result + 16) = 1;
  *(result + 96) = 0;
  *(result + 80) = 0u;
  *(result + 56) = a5;
  *(result + 60) = 1;
  *(result + 40) = a4;
  *(result + 48) = 1;
  v8 = *a2;
  v9 = *a2 + a4;
  v10 = v9 >= *a2;
  if (v9 >= *a2)
  {
    v5 = 0;
    v11 = *a3;
    v6 = 0;
    if (*a3 < v9 && v11 >= v8)
    {
      *v7 = v11;
      if (v8)
      {
        *(result + 24) = v8;
      }

      *(result + 8) = v9;
      *(result + 16) = v10;
      v5 = v9;
      v6 = v8;
    }
  }

  v12 = a2[1];
  v13 = v12 + a4;
  if (v12 + a4 >= v12)
  {
    v14 = a3[1];
    if (v14 < v13 && v14 >= v12)
    {
      *(result + 72) = v14;
      if (v12 - 1 < v6 - 1)
      {
        *(result + 24) = v12;
        *(result + 32) = 1;
        v6 = v12;
      }

      if (v13 > v5)
      {
        *(result + 8) = v13;
        *(result + 16) = v12 + a4 >= v12;
        v5 = v12 + a4;
      }
    }
  }

  v15 = a2[2];
  v16 = v15 + a4;
  if (v15 + a4 >= v15)
  {
    v17 = a3[2];
    if (v17 < v16 && v17 >= v15)
    {
      *(result + 80) = v17;
      if (v15 - 1 < v6 - 1)
      {
        *(result + 24) = v15;
        *(result + 32) = 1;
        v6 = v15;
      }

      if (v16 > v5)
      {
        *(result + 8) = v16;
        *(result + 16) = v15 + a4 >= v15;
        v5 = v15 + a4;
      }
    }
  }

  v18 = a2[3];
  v19 = v18 + a4;
  if (v18 + a4 >= v18)
  {
    v20 = a3[3];
    if (v20 < v19 && v20 >= v18)
    {
      *(result + 88) = v20;
      if (v18 - 1 < v6 - 1)
      {
        *(result + 24) = v18;
        *(result + 32) = 1;
        v6 = v18;
      }

      if (v19 > v5)
      {
        *(result + 8) = v19;
        *(result + 16) = v18 + a4 >= v18;
        v5 = v18 + a4;
      }
    }
  }

  v21 = a2[4];
  v22 = v21 + a4;
  if (v21 + a4 >= v21)
  {
    v23 = a3[4];
    if (v23 < v22 && v23 >= v21)
    {
      *(result + 96) = v23;
      if (v21 - 1 < v6 - 1)
      {
        *(result + 24) = v21;
        *(result + 32) = 1;
        v6 = v21;
      }

      if (v22 > v5)
      {
        *(result + 8) = v22;
        *(result + 16) = v21 + a4 >= v21;
        v5 = v21 + a4;
      }
    }
  }

  if ((*(result + 32) & 1) == 0 || v6 > v5)
  {
    *(result + 40) = 0;
    *(result + 48) = 1;
    *(result + 56) = 0;
    *(result + 60) = 1;
    *(result + 24) = 0;
    *(result + 32) = 1;
    *(result + 8) = 0;
    *(result + 16) = 1;
    *v7 = 0uLL;
    *(result + 80) = 0uLL;
    *(result + 96) = 0;
  }

  return result;
}

__n128 sub_10002BE7C@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a1 + 40) >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = *(a1 + 40);
  }

  if (*(a1 + 48))
  {
    v5 = v4;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  *a3 = v5;
  result = *(a1 + 64);
  v7 = *(a1 + 80);
  *a4 = result;
  *(a4 + 16) = v7;
  *(a4 + 32) = *(a1 + 96);
  return result;
}

unint64_t sub_10002BEAC@<X0>(int *a1@<X0>, int *a2@<X1>, int *a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *a3;
  v9 = v8 * *a1;
  if (v9 == v9 && 2 * v9 == 2 * v9 && (v10 = v8 + 2 * v9, v10 == v10))
  {
    v11 = &_mh_execute_header & 0xFFFFFFFF00000000 | v10;
  }

  else
  {
    v11 = 0;
  }

  v44 = v11;
  v45 = BYTE4(v11);
  v12 = a3[1];
  if (2 * v12 == 2 * v12)
  {
    v13 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v12 & 0x7FFFFFFF));
  }

  else
  {
    v13 = 0;
  }

  v42 = v13;
  v43 = BYTE4(v13);
  v14 = sub_10001FCB8(&v44, &v42);
  v15 = *a2;
  v16 = v15 * a1[2];
  if (v16 == v16 && 2 * v16 == 2 * v16 && (v17 = v15 + 2 * v16, v17 == v17))
  {
    v18 = &_mh_execute_header & 0xFFFFFFFF00000000 | v17;
  }

  else
  {
    v18 = 0;
  }

  v44 = v18;
  v45 = BYTE4(v18);
  v19 = a2[1];
  if (2 * v19 == 2 * v19)
  {
    v20 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v19 & 0x7FFFFFFF));
  }

  else
  {
    v20 = 0;
  }

  v42 = v20;
  v43 = BYTE4(v20);
  v21 = sub_10001FCB8(&v44, &v42);
  v22 = *a3;
  v23 = v22 * (*a1 + a1[4] - 1);
  if (v23 == v23 && 2 * v23 == 2 * v23 && (v24 = v22 + 2 * v23, v24 == v24))
  {
    v25 = &_mh_execute_header & 0xFFFFFFFF00000000 | v24;
  }

  else
  {
    v25 = 0;
  }

  v44 = v25;
  v45 = BYTE4(v25);
  v26 = a3[1];
  if (2 * v26 == 2 * v26)
  {
    v27 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v26 & 0x7FFFFFFF));
  }

  else
  {
    v27 = 0;
  }

  v42 = v27;
  v43 = BYTE4(v27);
  v28 = sub_10001FCB8(&v44, &v42);
  v29 = *a2;
  v30 = v29 * (a1[2] + a1[6] - 1);
  if (v30 == v30 && 2 * v30 == 2 * v30 && (v31 = v29 + 2 * v30, v31 == v31))
  {
    v32 = &_mh_execute_header & 0xFFFFFFFF00000000 | v31;
  }

  else
  {
    v32 = 0;
  }

  v44 = v32;
  v45 = BYTE4(v32);
  v33 = a2[1];
  if (2 * v33 == 2 * v33)
  {
    v34 = &_mh_execute_header & 0xFFFFFFFF00000001 | (2 * (v33 & 0x7FFFFFFF));
  }

  else
  {
    v34 = 0;
  }

  v42 = v34;
  v43 = BYTE4(v34);
  result = sub_10001FCB8(&v44, &v42);
  if (*(a1 + 12) != 1 || *(a1 + 4) != 1 || *(a1 + 28) != 1 || *(a1 + 20) != 1)
  {
    LOBYTE(v37) = 0;
    LOBYTE(v36) = 0;
    v39 = 0;
    goto LABEL_39;
  }

  v36 = HIDWORD(v14);
  v37 = HIDWORD(v21);
  if ((v28 & 0x100000000) != 0 && (v14 & 0x100000000) != 0 && (v38 = v28 - v14, v38 == v38))
  {
    if ((v38 + 2147483649) >> 32)
    {
      v39 = 0;
    }

    else
    {
      v39 = (v38 + 1) | &_mh_execute_header;
    }

    if ((result & 0x100000000) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v39 = 0;
    if ((result & 0x100000000) == 0)
    {
      v40 = 0;
      goto LABEL_40;
    }
  }

  if ((v21 & 0x100000000) == 0 || (v41 = result - v21, v41 != v41))
  {
LABEL_39:
    v40 = 0;
    goto LABEL_40;
  }

  if ((v41 + 2147483649) >> 32)
  {
    v40 = 0;
  }

  else
  {
    v40 = (v41 + 1) | &_mh_execute_header;
  }

LABEL_40:
  *a4 = v14 | (v36 << 32);
  a4[1] = v21 | (v37 << 32);
  a4[2] = v39;
  a4[3] = v40;
  return result;
}

_DWORD *sub_10002C1E8(uint64_t a1, Madusa::ImageProperties *this, uint64_t a3, uint64_t a4)
{
  if (a1 + 40 != a4)
  {
    *(a1 + 40) = *a4;
    *(a1 + 44) = *(a4 + 4);
    *(a1 + 48) = *(a4 + 8);
    *(a1 + 52) = *(a4 + 12);
    *(a1 + 56) = *(a4 + 16);
    *(a1 + 60) = *(a4 + 20);
    *(a1 + 64) = *(a4 + 24);
    *(a1 + 68) = *(a4 + 28);
  }

  if (a1 + 8 != a3)
  {
    *(a1 + 8) = *a3;
    *(a1 + 12) = *(a3 + 4);
    *(a1 + 16) = *(a3 + 8);
    *(a1 + 20) = *(a3 + 12);
    *(a1 + 24) = *(a3 + 16);
    *(a1 + 28) = *(a3 + 20);
    *(a1 + 32) = *(a3 + 24);
    *(a1 + 36) = *(a3 + 28);
  }

  *(a1 + 72) = *Madusa::ImageProperties::GetYStride(this);
  *(a1 + 76) = *Madusa::ImageProperties::GetXStride(this);
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  IntegerOffsetBounds = Madusa::ImageProperties::GetIntegerOffsetBounds(this);
  v9 = Madusa::ImageProperties::GetIntegerOffsetBounds(this);
  v10 = v7 - (IntegerOffsetBounds >> 32);
  if (v10 == v10)
  {
    v11 = v10 | &_mh_execute_header;
  }

  else
  {
    v11 = 0;
  }

  if ((v7 & &_mh_execute_header) == 0)
  {
    v11 = 0;
  }

  if ((v6 & 0x100000000) != 0)
  {
    v12 = v6 - v9;
    v13 = v12 == v12 ? v12 | &_mh_execute_header : 0;
    if ((v11 & 0x100000000) != 0 && (v13 & 0x100000000) != 0)
    {
      *(a1 + 80) = v13;
      *(a1 + 84) = v11;
    }
  }

  return Madusa::ImageProperties::GetDownsampleRatios(this, (a1 + 88), (a1 + 96));
}

uint64_t sub_10002C348(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 8) & 0x80000000) == 0)
  {
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = v5 < 1 || v6 < 1;
    if (!v7 && (*(result + 16) & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (*(result + 40) & 0x80000000) == 0 && *(result + 56) >= 1 && *(result + 64) >= 1 && (*(result + 48) & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1 && *(result + 52) == 1 && *(result + 88) >= 1 && *(result + 92) >= 1 && *(result + 96) >= 1 && *(result + 100) >= 1)
    {
      v44[9] = v3;
      v44[10] = v4;
      v30 = (result + 8);
      v31 = (result + 40);
      v10 = *(result + 72);
      v9 = *(result + 76);
      v11 = result;
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v12 = v6 * v9;
      if (v10 >= 0)
      {
        v13 = *(result + 72);
      }

      else
      {
        v13 = -v10;
      }

      v14 = v5 * v13;
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v44[0] = 0;
      result = (*(*a2 + 32))(v43, a2, v15, v44);
      if (v44[0] == v15)
      {
        sub_10002CA14(v11, v43);
        v41 = 0;
        v17 = v11[14];
        if ((v17 & 0x80000000) == 0)
        {
          v41 = v11[14];
        }

        v42 = v17 >= 0;
        v18 = (*(*a3 + 48))(a3);
        v19 = v18;
        if (v18 >= 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = -v18;
        }

        v39 = v20;
        v40 = 1;
        result = sub_100029E48(&v41, &v39);
        if (v21)
        {
          v22 = result;
          v38 = 0;
          result = (*(*a3 + 32))(v37, a3, result, &v38);
          if (v22 == v38)
          {
            v36 = v37[0];
            v24 = v11[18];
            v23 = v11[19];
            v34 = (*(*a2 + 64))(a2);
            v35 = v25;
            v32 = (*(*a2 + 72))(a2);
            v33 = v26;
            v27 = sub_10002CB94(v11, v43, v23, v24, v30, 0x10, &v34, &v32);
            v34 = (*(*a3 + 64))(a3);
            v35 = v28;
            v32 = (*(*a3 + 72))(a3);
            v33 = v29;
            result = sub_10002CB94(v11, v37, 1, v19, v31, 8, &v34, &v32);
            if (v27)
            {
              if (result)
              {
                return (*(*v11 + 32))(v11, v41, v19, &v36, v43);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *sub_10002C710(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = (result[18] + (result[18] >> 31)) >> 1;
    v9 = result[16];
    while (1)
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = result[22] * i / result[23] * v7;
          v13 = *(*a5 + 2 * v12);
          v14 = (v13 << 13) & 0xF800000;
          LODWORD(v15) = ((v13 << 13) & 0xFFFE000) + 939524096;
          if (!v14)
          {
            v15 = COERCE_FLOAT((v13 << 13) | 0x38800000) + -0.000061035;
          }

          v16 = (v13 << 13) | 0x70000000;
          if (v14 != 260046848)
          {
            v16 = LODWORD(v15);
          }

          LODWORD(v17) = v16 | (v13 >> 15 << 31);
          if (v13 == 0x7FFF)
          {
            v17 = 0.0;
          }

          v18 = *(a5[1] + 2 * v12);
          v19 = 0.0;
          v20 = 0.0;
          if (v18 != 0x7FFF)
          {
            v21 = (v18 << 13) & 0xF800000;
            LODWORD(v22) = ((v18 << 13) & 0xFFFE000) + 939524096;
            if (!v21)
            {
              v22 = COERCE_FLOAT((v18 << 13) | 0x38800000) + -0.000061035;
            }

            v23 = (v18 << 13) | 0x70000000;
            if (v21 != 260046848)
            {
              v23 = LODWORD(v22);
            }

            LODWORD(v20) = v23 | (v18 >> 15 << 31);
          }

          v24 = *(a5[2] + 2 * v12);
          if (v24 != 0x7FFF)
          {
            v25 = (v24 << 13) & 0xF800000;
            LODWORD(v26) = ((v24 << 13) & 0xFFFE000) + 939524096;
            if (!v25)
            {
              v26 = COERCE_FLOAT((v24 << 13) | 0x38800000) + -0.000061035;
            }

            v27 = (v24 << 13) | 0x70000000;
            if (v25 != 260046848)
            {
              v27 = LODWORD(v26);
            }

            LODWORD(v19) = v27 | (v24 >> 15 << 31);
          }

          v11 = (fmaxf(fminf(((v20 + v17) + v19) * 85.0, 255.0), 0.0) + 0.5);
          if (v11 >= 255)
          {
            v11 = 255;
          }

          *(*a4 + i) = dword_10006B600[v11 & ~(v11 >> 31)];
        }
      }

      *a4 += a3;
      v29 = result[24];
      v28 = result[25];
      v30 = v5 + 1;
      if ((v29 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v31 = HIDWORD(v29) * v30;
        if (v31)
        {
LABEL_33:
          if (HIDWORD(v31))
          {
            return result;
          }

          v33 = v29 * v30;
          v34 = __CFADD__(v33, v31 << 32);
          v32 = v33 + (v31 << 32);
          if (v34)
          {
            return result;
          }

          goto LABEL_35;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v31 = HIDWORD(v30) * v29;
        if (v31)
        {
          goto LABEL_33;
        }
      }

      v32 = v29 * v30;
LABEL_35:
      if (!v28)
      {
        return result;
      }

      if (v32)
      {
        v35 = v32 / v28;
        if (v6 > v35)
        {
          return result;
        }
      }

      else
      {
        v35 = 0;
        if (v6)
        {
          return result;
        }
      }

      v34 = v35 >= v6;
      v36 = v35 - v6;
      if (!v34)
      {
        v36 = 0;
      }

      v37 = v36 * v8;
      if (v37 == v37)
      {
        if (*a5)
        {
          *a5 += 2 * v37;
        }

        v38 = a5[1];
        if (v38)
        {
          a5[1] = v38 + 2 * v37;
        }

        v39 = a5[2];
        if (v39)
        {
          a5[2] = v39 + 2 * v37;
        }

        v40 = a5[3];
        if (v40)
        {
          a5[3] = v40 + 2 * v37;
        }

        v41 = a5[4];
        if (v41)
        {
          a5[4] = v41 + 2 * v37;
        }

        v5 = v30;
        v6 = v35;
        if (v30 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

_DWORD *sub_10002CA14(_DWORD *result, void *a2)
{
  if (*a2)
  {
    v2 = result[21] * (result[19] / 2);
    if (v2 != v2)
    {
      return result;
    }

    v3 = result[20] * (result[18] / 2);
    if (v3 != v3)
    {
      return result;
    }

    *a2 += 2 * v2 + 2 * v3;
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = result[21] * (result[19] / 2);
    if (v5 != v5)
    {
      return result;
    }

    v6 = result[20] * (result[18] / 2);
    if (v6 != v6)
    {
      return result;
    }

    a2[1] = v4 + 2 * v5 + 2 * v6;
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = result[21] * (result[19] / 2);
    if (v8 != v8)
    {
      return result;
    }

    v9 = result[20] * (result[18] / 2);
    if (v9 != v9)
    {
      return result;
    }

    a2[2] = v7 + 2 * v8 + 2 * v9;
  }

  v10 = a2[3];
  if (v10)
  {
    v11 = result[21] * (result[19] / 2);
    if (v11 != v11)
    {
      return result;
    }

    v12 = result[20] * (result[18] / 2);
    if (v12 != v12)
    {
      return result;
    }

    a2[3] = v10 + 2 * v11 + 2 * v12;
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = result[21] * (result[19] / 2);
    if (v14 == v14)
    {
      v15 = result[20] * (result[18] / 2);
      if (v15 == v15)
      {
        a2[4] = v13 + 2 * v14 + 2 * v15;
      }
    }
  }

  return result;
}

BOOL sub_10002CB94(int a1, unsigned __int8 **a2, int a3, int a4, uint64_t a5, Madusa::ImageProperties *this, void *a7, void *a8)
{
  v14 = Madusa::ImageProperties::ConvertBitsPerPixel(this);
  Madusa::SubBytePixelDirectionAndOffset::SubBytePixelDirectionAndOffset(&v35);
  Madusa::SubBytePixelDirectionAndOffset::Reset(&v35, v14, 1, 0);
  Madusa::PixelTraversalInformation::PixelTraversalInformation(v34, a3, a4, &v35);
  Madusa::IteratorBoundsComputer::IteratorBoundsComputer(v33, *(a5 + 24), *(a5 + 16), v14, v34);
  v15 = *a2;
  result = 0;
  if (!*a2 || (v31 = 0, v32 = 0, Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v33, v15, &v32, &v31)) && (v16 = v31, v17 = v32, Madusa::IteratorBoundsComputer::IsValid(v33)) && v17 <= v16 && *a7 <= v17 && *a8 >= v16)
  {
    v18 = a2[1];
    if (!v18 || (v31 = 0, v32 = 0, Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v33, v18, &v32, &v31)) && (v19 = v31, v20 = v32, Madusa::IteratorBoundsComputer::IsValid(v33)) && v20 <= v19 && *a7 <= v20 && *a8 >= v19)
    {
      v21 = a2[2];
      if (!v21 || (v31 = 0, v32 = 0, Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v33, v21, &v32, &v31)) && (v22 = v31, v23 = v32, Madusa::IteratorBoundsComputer::IsValid(v33)) && v23 <= v22 && *a7 <= v23 && *a8 >= v22)
      {
        v24 = a2[3];
        if (!v24 || (v31 = 0, v32 = 0, Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v33, v24, &v32, &v31)) && (v25 = v31, v26 = v32, Madusa::IteratorBoundsComputer::IsValid(v33)) && v26 <= v25 && *a7 <= v26 && *a8 >= v25)
        {
          v27 = a2[4];
          if (!v27)
          {
            return 1;
          }

          v31 = 0;
          v32 = 0;
          if (Madusa::IteratorBoundsComputer::SetBoundsForGivenBaseAddress(v33, v27, &v32, &v31))
          {
            v28 = v31;
            v29 = v32;
            if (Madusa::IteratorBoundsComputer::IsValid(v33))
            {
              if (v29 <= v28 && *a7 <= v29 && *a8 >= v28)
              {
                return 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

int *sub_10002CDD8@<X0>(int *result@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 350)
  {
    v3 = a2;
  }

  else
  {
    v3 = 300;
  }

  v4 = 0x100000001;
  if (v3 <= 199)
  {
    switch(v3)
    {
      case 100:
        v5 = &unk_10006B590;
        goto LABEL_20;
      case 125:
        v5 = &unk_10006B5A0;
        goto LABEL_20;
      case 150:
        v5 = &unk_10006B5B0;
        goto LABEL_20;
    }
  }

  else if (v3 > 299)
  {
    if (v3 == 300)
    {
      v5 = &unk_10006B5E0;
      goto LABEL_20;
    }

    if (v3 == 350)
    {
      v5 = &unk_10006B5F0;
      goto LABEL_20;
    }
  }

  else
  {
    if (v3 == 200)
    {
      v5 = &unk_10006B5C0;
      goto LABEL_20;
    }

    if (v3 == 250)
    {
      v5 = &unk_10006B5D0;
LABEL_20:
      v4 = *(v5 + 4);
    }
  }

  v6 = HIDWORD(v4);
  v7 = v4;
  if (*(result + 4) == 1)
  {
    v8 = v4 * *result;
    if (v8 == v8)
    {
      if (!v6)
      {
        goto LABEL_29;
      }

      if (v8)
      {
        if (v8 == 0x80000000 && v6 == 0xFFFFFFFF)
        {
LABEL_29:
          v9 = 0;
          if (*(result + 12) == 1)
          {
            goto LABEL_24;
          }

          goto LABEL_48;
        }

        v9 = &_mh_execute_header | (v8 / v6);
        if (*(result + 12) == 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v9 = &_mh_execute_header;
        if (*(result + 12) == 1)
        {
          goto LABEL_24;
        }
      }

LABEL_48:
      v11 = 0;
      if (*(result + 20) != 1)
      {
        goto LABEL_50;
      }

      goto LABEL_49;
    }
  }

  v9 = 0;
  if (*(result + 12) != 1)
  {
    goto LABEL_48;
  }

LABEL_24:
  v10 = v7 * result[2];
  if (v10 != v10)
  {
    goto LABEL_48;
  }

  if (!v6)
  {
    goto LABEL_26;
  }

  if (!v10)
  {
    v11 = &_mh_execute_header;
    if (*(result + 20) == 1)
    {
      goto LABEL_49;
    }

LABEL_50:
    v15 = 0;
    if (*(result + 28) == 1)
    {
      goto LABEL_63;
    }

LABEL_64:
    *a3 = v9;
    a3[1] = v11;
    a3[2] = v15;
    a3[3] = 0;
    return result;
  }

  if (v10 != 0x80000000 || v6 != 0xFFFFFFFF)
  {
    v11 = &_mh_execute_header | (v10 / v6);
    if (*(result + 20) == 1)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_26:
  v11 = 0;
  if (*(result + 20) != 1)
  {
    goto LABEL_50;
  }

LABEL_49:
  v14 = v7 * result[4];
  if (v14 != v14)
  {
    goto LABEL_50;
  }

  if (!v6)
  {
    goto LABEL_53;
  }

  if (!v14)
  {
    v15 = &_mh_execute_header;
    if (*(result + 28) == 1)
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (v14 == 0x80000000 && v6 == 0xFFFFFFFF)
  {
LABEL_53:
    v15 = 0;
    if (*(result + 28) != 1)
    {
      goto LABEL_64;
    }
  }

  else
  {
    v15 = &_mh_execute_header | (v14 / v6);
    if (*(result + 28) != 1)
    {
      goto LABEL_64;
    }
  }

LABEL_63:
  v17 = v7 * result[6];
  if (v17 != v17)
  {
    goto LABEL_64;
  }

  if (v6)
  {
    if (v17)
    {
      v18 = v17 == 0x80000000 && v6 == 0xFFFFFFFF;
      *a3 = v9;
      a3[1] = v11;
      a3[2] = v15;
      if (v18)
      {
        a3[3] = 0;
      }

      else
      {
        a3[3] = &_mh_execute_header | (v17 / v6);
      }
    }

    else
    {
      *a3 = v9;
      a3[1] = v11;
      a3[2] = v15;
      a3[3] = &_mh_execute_header;
    }
  }

  else
  {
    *a3 = v9;
    a3[1] = v11;
    a3[2] = v15;
    a3[3] = 0;
  }

  return result;
}

uint64_t sub_10002D0DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result + 8 != a3)
  {
    *(result + 8) = *a3;
    *(result + 12) = *(a3 + 4);
    *(result + 16) = *(a3 + 8);
    *(result + 20) = *(a3 + 12);
    *(result + 24) = *(a3 + 16);
    *(result + 28) = *(a3 + 20);
    *(result + 32) = *(a3 + 24);
    *(result + 36) = *(a3 + 28);
  }

  if (result + 40 != a4)
  {
    *(result + 40) = *a4;
    *(result + 44) = *(a4 + 4);
    *(result + 48) = *(a4 + 8);
    *(result + 52) = *(a4 + 12);
    *(result + 56) = *(a4 + 16);
    *(result + 60) = *(a4 + 20);
    *(result + 64) = *(a4 + 24);
    *(result + 68) = *(a4 + 28);
  }

  return result;
}

void *sub_10002D178(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result[1] & 0x80000000) == 0 && *(result + 6) >= 1 && *(result + 8) >= 1 && (result[2] & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (result[5] & 0x80000000) == 0 && *(result + 14) >= 1 && *(result + 16) >= 1 && (result[6] & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1)
  {
    if (a4)
    {
      if (*(result + 52))
      {
        v43[11] = v4;
        v43[12] = v5;
        v9 = result;
        v11 = (*(*a4 + 56))(a4);
        v43[0] = 0;
        result = (*(*a4 + 32))(v42, a4, v11, v43);
        if (v43[0])
        {
          if (v43[0] == v11)
          {
            v12 = v42[0];
            v13 = (*(*a2 + 40))(a2);
            v14 = v9[4];
            result = (*(*a2 + 56))(a2);
            if (v13 - 1 < result + v13 && v13 + v14 >= v13 && v13 + v14 <= result + v13)
            {
              v15 = v9[4];
              result = (*(*a2 + 48))(a2);
              v16 = v9[6];
              if ((v16 & 0x80000000) == 0)
              {
                v17 = result;
                v18 = v13 + v15;
                result = (*(*a2 + 56))(a2);
                if (!__CFADD__(result, v18))
                {
                  v19 = v17 >= 0 ? v17 : -v17;
                  v20 = v18 + v16 * v19;
                  if (v20 >= v18 && v20 <= result + v18)
                  {
                    v21 = v9[6];
                    v41[0] = v18;
                    v41[1] = v21;
                    v41[2] = v9[8];
                    v41[3] = (*(*a2 + 48))(a2);
                    v39 = 0;
                    v22 = v9[14];
                    if ((v22 & 0x80000000) == 0)
                    {
                      v39 = v9[14];
                    }

                    v40 = v22 >= 0;
                    v23 = (*(*a3 + 48))(a3);
                    if (v23 >= 0)
                    {
                      v24 = v23;
                    }

                    else
                    {
                      v24 = -v23;
                    }

                    v37 = v24;
                    v38 = 1;
                    v25 = v9[16];
                    if ((v25 & 0x80000000) != 0)
                    {
                      v26 = v24 + -v25;
                    }

                    else
                    {
                      if (v24 < v25)
                      {
                        v26 = 0;
                        v27 = 0;
LABEL_45:
                        result = sub_100029E48(&v39, &v37);
                        if (result >= v26)
                        {
                          v29 = result - v26;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        v30 = v27 & v28;
                        if ((v27 & v28) != 0)
                        {
                          v31 = v29;
                        }

                        else
                        {
                          v31 = 0;
                        }

                        if (v40 && (v38 & v30 & 1) != 0 && v26 <= result)
                        {
                          v36 = 0;
                          result = (*(*a3 + 32))(v35, a3, v31, &v36);
                          if (v31 == v36)
                          {
                            v32 = v35[0];
                            result = (*(*a3 + 56))(a3);
                            if (v32 - 1 < result + v32 && &v31[v32] >= v32 && &v31[v32] <= result + v32)
                            {
                              v33 = v9[14];
                              v34[0] = v32;
                              v34[1] = v33;
                              v34[2] = v9[16];
                              v34[3] = v37;
                              return (*(*v9 + 32))(v9, v41, v34, v12);
                            }
                          }
                        }

                        return result;
                      }

                      v26 = v24 - v25;
                    }

                    v27 = 1;
                    goto LABEL_45;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002D620(uint64_t result, void *a2)
{
  *result = off_100070BC8;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002D6B4(uint64_t a1, void *a2)
{
  *a1 = off_100070BC8;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002D758(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070C18;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070C78;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002D964(&v22, v40, *(a1 + 8));
  }

  return result;
}

uint64_t sub_10002D964(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 8) & 0x80000000) == 0)
  {
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = v5 < 1 || v6 < 1;
    if (!v7 && (*(result + 16) & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (*(result + 40) & 0x80000000) == 0 && *(result + 56) >= 1 && *(result + 64) >= 1 && (*(result + 48) & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1 && *(result + 52) == 1 && *(result + 88) >= 1 && *(result + 92) >= 1 && *(result + 96) >= 1 && *(result + 100) >= 1)
    {
      v44[9] = v3;
      v44[10] = v4;
      v30 = result + 8;
      v31 = result + 40;
      v10 = *(result + 72);
      v9 = *(result + 76);
      v11 = result;
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v12 = v6 * v9;
      if (v10 >= 0)
      {
        v13 = *(result + 72);
      }

      else
      {
        v13 = -v10;
      }

      v14 = v5 * v13;
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v44[0] = 0;
      result = (*(*a2 + 32))(v43, a2, v15, v44);
      if (v44[0] == v15)
      {
        sub_10002DF0C(v11, v43);
        v41 = 0;
        v17 = v11[14];
        if ((v17 & 0x80000000) == 0)
        {
          v41 = v11[14];
        }

        v42 = v17 >= 0;
        v18 = (*(*a3 + 48))(a3);
        v19 = v18;
        if (v18 >= 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = -v18;
        }

        v39 = v20;
        v40 = 1;
        result = sub_100029E48(&v41, &v39);
        if (v21)
        {
          v22 = result;
          v38 = 0;
          result = (*(*a3 + 32))(v37, a3, result, &v38);
          if (v22 == v38)
          {
            v36 = v37[0];
            v24 = v11[18];
            v23 = v11[19];
            v34 = (*(*a2 + 64))(a2);
            v35 = v25;
            v32 = (*(*a2 + 72))(a2);
            v33 = v26;
            v27 = sub_10002CB94(v11, v43, v23, v24, v30, 0x20, &v34, &v32);
            v34 = (*(*a3 + 64))(a3);
            v35 = v28;
            v32 = (*(*a3 + 72))(a3);
            v33 = v29;
            result = sub_10002CB94(v11, v37, 1, v19, v31, 8, &v34, &v32);
            if (v27)
            {
              if (result)
              {
                return (*(*v11 + 32))(v11, v41, v19, &v36, v43);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *sub_10002DD2C(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 4;
    v8 = result[16];
    v9 = result[18];
    v10 = v9 + 3;
    if (v9 >= 0)
    {
      v10 = result[18];
    }

    v11 = a3;
    v12 = v10 >> 2;
    while (1)
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v14 = result[22] * i / result[23] * v7;
          v15 = (fmaxf(fminf(((*(a5[1] + 4 * v14) + *(*a5 + 4 * v14)) + *(a5[2] + 4 * v14)) * 85.0, 255.0), 0.0) + 0.5);
          if (v15 >= 255)
          {
            v15 = 255;
          }

          *(*a4 + i) = dword_10006B600[v15 & ~(v15 >> 31)];
        }
      }

      *a4 += v11;
      v17 = result[24];
      v16 = result[25];
      v18 = v5 + 1;
      if ((v17 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v19 = HIDWORD(v17) * v18;
        if (v19)
        {
LABEL_17:
          if (HIDWORD(v19))
          {
            return result;
          }

          v21 = v17 * v18;
          v22 = __CFADD__(v21, v19 << 32);
          v20 = v21 + (v19 << 32);
          if (v22)
          {
            return result;
          }

          goto LABEL_19;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v19 = HIDWORD(v18) * v17;
        if (v19)
        {
          goto LABEL_17;
        }
      }

      v20 = v17 * v18;
LABEL_19:
      if (!v16)
      {
        return result;
      }

      if (v20)
      {
        v23 = v20 / v16;
        if (v6 > v23)
        {
          return result;
        }
      }

      else
      {
        v23 = 0;
        if (v6)
        {
          return result;
        }
      }

      v22 = v23 >= v6;
      v24 = v23 - v6;
      if (!v22)
      {
        v24 = 0;
      }

      v25 = v24 * v12;
      if (v25 == v25)
      {
        if (*a5)
        {
          *a5 += 4 * v25;
        }

        v26 = a5[1];
        if (v26)
        {
          a5[1] = v26 + 4 * v25;
        }

        v27 = a5[2];
        if (v27)
        {
          a5[2] = v27 + 4 * v25;
        }

        v28 = a5[3];
        if (v28)
        {
          a5[3] = v28 + 4 * v25;
        }

        v29 = a5[4];
        if (v29)
        {
          a5[4] = v29 + 4 * v25;
        }

        v5 = v18;
        v6 = v23;
        if (v18 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

_DWORD *sub_10002DF0C(_DWORD *result, void *a2)
{
  if (*a2)
  {
    v2 = result[21] * (result[19] / 4);
    if (v2 != v2)
    {
      return result;
    }

    v3 = result[20] * (result[18] / 4);
    if (v3 != v3)
    {
      return result;
    }

    *a2 += 4 * v2 + 4 * v3;
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = result[21] * (result[19] / 4);
    if (v5 != v5)
    {
      return result;
    }

    v6 = result[20] * (result[18] / 4);
    if (v6 != v6)
    {
      return result;
    }

    a2[1] = v4 + 4 * v5 + 4 * v6;
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = result[21] * (result[19] / 4);
    if (v8 != v8)
    {
      return result;
    }

    v9 = result[20] * (result[18] / 4);
    if (v9 != v9)
    {
      return result;
    }

    a2[2] = v7 + 4 * v8 + 4 * v9;
  }

  v10 = a2[3];
  if (v10)
  {
    v11 = result[21] * (result[19] / 4);
    if (v11 != v11)
    {
      return result;
    }

    v12 = result[20] * (result[18] / 4);
    if (v12 != v12)
    {
      return result;
    }

    a2[3] = v10 + 4 * v11 + 4 * v12;
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = result[21] * (result[19] / 4);
    if (v14 == v14)
    {
      v15 = result[20] * (result[18] / 4);
      if (v15 == v15)
      {
        a2[4] = v13 + 4 * v14 + 4 * v15;
      }
    }
  }

  return result;
}

uint64_t sub_10002E0DC(uint64_t result, void *a2)
{
  *result = off_100070CB0;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002E170(uint64_t a1, void *a2)
{
  *a1 = off_100070CB0;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_10002E214(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070D00;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_10002E420(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = (result[18] + (result[18] >> 31)) >> 1;
    v9 = result[16];
    while (1)
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v11 = result[22] * i / result[23] * v7;
          v12 = *(*a5 + 2 * v11);
          v13 = (v12 << 13) & 0xF800000;
          LODWORD(v14) = ((v12 << 13) & 0xFFFE000) + 939524096;
          if (!v13)
          {
            v14 = COERCE_FLOAT((v12 << 13) | 0x38800000) + -0.000061035;
          }

          v15 = (v12 << 13) | 0x70000000;
          if (v13 != 260046848)
          {
            v15 = LODWORD(v14);
          }

          LODWORD(v16) = v15 | (v12 >> 15 << 31);
          if (v12 == 0x7FFF)
          {
            v16 = 0.0;
          }

          v17 = *(a5[1] + 2 * v11);
          v18 = 0.0;
          v19 = 0.0;
          if (v17 != 0x7FFF)
          {
            v20 = (v17 << 13) & 0xF800000;
            LODWORD(v21) = ((v17 << 13) & 0xFFFE000) + 939524096;
            if (!v20)
            {
              v21 = COERCE_FLOAT((v17 << 13) | 0x38800000) + -0.000061035;
            }

            v22 = (v17 << 13) | 0x70000000;
            if (v20 != 260046848)
            {
              v22 = LODWORD(v21);
            }

            LODWORD(v19) = v22 | (v17 >> 15 << 31);
          }

          v23 = *(a5[2] + 2 * v11);
          if (v23 != 0x7FFF)
          {
            v24 = (v23 << 13) & 0xF800000;
            LODWORD(v25) = ((v23 << 13) & 0xFFFE000) + 939524096;
            if (!v24)
            {
              v25 = COERCE_FLOAT((v23 << 13) | 0x38800000) + -0.000061035;
            }

            v26 = (v23 << 13) | 0x70000000;
            if (v24 != 260046848)
            {
              v26 = LODWORD(v25);
            }

            LODWORD(v18) = v26 | (v23 >> 15 << 31);
          }

          *(*a4 + i) = (fmaxf(fminf(((v19 + v16) + v18) * 85.0, 255.0), 0.0) + 0.5);
        }
      }

      *a4 += a3;
      v28 = result[24];
      v27 = result[25];
      v29 = v5 + 1;
      if ((v28 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v30 = HIDWORD(v28) * v29;
        if (v30)
        {
LABEL_31:
          if (HIDWORD(v30))
          {
            return result;
          }

          v32 = v28 * v29;
          v33 = __CFADD__(v32, v30 << 32);
          v31 = v32 + (v30 << 32);
          if (v33)
          {
            return result;
          }

          goto LABEL_33;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v30 = HIDWORD(v29) * v28;
        if (v30)
        {
          goto LABEL_31;
        }
      }

      v31 = v28 * v29;
LABEL_33:
      if (!v27)
      {
        return result;
      }

      if (v31)
      {
        v34 = v31 / v27;
        if (v6 > v34)
        {
          return result;
        }
      }

      else
      {
        v34 = 0;
        if (v6)
        {
          return result;
        }
      }

      v33 = v34 >= v6;
      v35 = v34 - v6;
      if (!v33)
      {
        v35 = 0;
      }

      v36 = v35 * v8;
      if (v36 == v36)
      {
        if (*a5)
        {
          *a5 += 2 * v36;
        }

        v37 = a5[1];
        if (v37)
        {
          a5[1] = v37 + 2 * v36;
        }

        v38 = a5[2];
        if (v38)
        {
          a5[2] = v38 + 2 * v36;
        }

        v39 = a5[3];
        if (v39)
        {
          a5[3] = v39 + 2 * v36;
        }

        v40 = a5[4];
        if (v40)
        {
          a5[4] = v40 + 2 * v36;
        }

        v5 = v29;
        v6 = v34;
        if (v29 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10002E6F8(uint64_t result, void *a2)
{
  *result = off_100070D38;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002E78C(uint64_t a1, void *a2)
{
  *a1 = off_100070D38;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002E830(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070C18;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070D88;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002D964(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_10002EA3C(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 4;
    v8 = result[16];
    v9 = result[18];
    v10 = v9 + 3;
    if (v9 >= 0)
    {
      v10 = result[18];
    }

    v11 = a3;
    v12 = v10 >> 2;
    while (1)
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          v14 = result[22] * i / result[23] * v7;
          *(*a4 + i) = (fmaxf(fminf(((*(a5[1] + 4 * v14) + *(*a5 + 4 * v14)) + *(a5[2] + 4 * v14)) * 85.0, 255.0), 0.0) + 0.5);
        }
      }

      *a4 += v11;
      v16 = result[24];
      v15 = result[25];
      v17 = v5 + 1;
      if ((v16 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v18 = HIDWORD(v16) * v17;
        if (v18)
        {
LABEL_15:
          if (HIDWORD(v18))
          {
            return result;
          }

          v20 = v16 * v17;
          v21 = __CFADD__(v20, v18 << 32);
          v19 = v20 + (v18 << 32);
          if (v21)
          {
            return result;
          }

          goto LABEL_17;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v18 = HIDWORD(v17) * v16;
        if (v18)
        {
          goto LABEL_15;
        }
      }

      v19 = v16 * v17;
LABEL_17:
      if (!v15)
      {
        return result;
      }

      if (v19)
      {
        v22 = v19 / v15;
        if (v6 > v22)
        {
          return result;
        }
      }

      else
      {
        v22 = 0;
        if (v6)
        {
          return result;
        }
      }

      v21 = v22 >= v6;
      v23 = v22 - v6;
      if (!v21)
      {
        v23 = 0;
      }

      v24 = v23 * v12;
      if (v24 == v24)
      {
        if (*a5)
        {
          *a5 += 4 * v24;
        }

        v25 = a5[1];
        if (v25)
        {
          a5[1] = v25 + 4 * v24;
        }

        v26 = a5[2];
        if (v26)
        {
          a5[2] = v26 + 4 * v24;
        }

        v27 = a5[3];
        if (v27)
        {
          a5[3] = v27 + 4 * v24;
        }

        v28 = a5[4];
        if (v28)
        {
          a5[4] = v28 + 4 * v24;
        }

        v5 = v17;
        v6 = v22;
        if (v17 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10002EBF8(uint64_t result, void *a2)
{
  *result = off_100070DC0;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002EC8C(uint64_t a1, void *a2)
{
  *a1 = off_100070DC0;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002ED30(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070E10;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

uint64_t sub_10002EF3C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 8) & 0x80000000) == 0)
  {
    v5 = *(result + 24);
    v6 = *(result + 32);
    v7 = v5 < 1 || v6 < 1;
    if (!v7 && (*(result + 16) & 0x80000000) == 0 && *(result + 12) == 1 && *(result + 28) == 1 && *(result + 36) == 1 && *(result + 20) == 1 && (*(result + 40) & 0x80000000) == 0 && *(result + 56) >= 1 && *(result + 64) >= 1 && (*(result + 48) & 0x80000000) == 0 && *(result + 44) == 1 && *(result + 60) == 1 && *(result + 68) == 1 && *(result + 52) == 1 && *(result + 88) >= 1 && *(result + 92) >= 1 && *(result + 96) >= 1 && *(result + 100) >= 1)
    {
      v44[9] = v3;
      v44[10] = v4;
      v30 = result + 8;
      v31 = result + 40;
      v10 = *(result + 72);
      v9 = *(result + 76);
      v11 = result;
      if (v9 < 0)
      {
        v9 = -v9;
      }

      v12 = v6 * v9;
      if (v10 >= 0)
      {
        v13 = *(result + 72);
      }

      else
      {
        v13 = -v10;
      }

      v14 = v5 * v13;
      if (v12 <= v14)
      {
        v15 = v14;
      }

      else
      {
        v15 = v12;
      }

      v44[0] = 0;
      result = (*(*a2 + 32))(v43, a2, v15, v44);
      if (v44[0] == v15)
      {
        sub_10002F450(v11, v43);
        v41 = 0;
        v17 = v11[14];
        if ((v17 & 0x80000000) == 0)
        {
          v41 = v11[14];
        }

        v42 = v17 >= 0;
        v18 = (*(*a3 + 48))(a3);
        v19 = v18;
        if (v18 >= 0)
        {
          v20 = v18;
        }

        else
        {
          v20 = -v18;
        }

        v39 = v20;
        v40 = 1;
        result = sub_100029E48(&v41, &v39);
        if (v21)
        {
          v22 = result;
          v38 = 0;
          result = (*(*a3 + 32))(v37, a3, result, &v38);
          if (v22 == v38)
          {
            v36 = v37[0];
            v24 = v11[18];
            v23 = v11[19];
            v34 = (*(*a2 + 64))(a2);
            v35 = v25;
            v32 = (*(*a2 + 72))(a2);
            v33 = v26;
            v27 = sub_10002CB94(v11, v43, v23, v24, v30, 8, &v34, &v32);
            v34 = (*(*a3 + 64))(a3);
            v35 = v28;
            v32 = (*(*a3 + 72))(a3);
            v33 = v29;
            result = sub_10002CB94(v11, v37, 1, v19, v31, 8, &v34, &v32);
            if (v27)
            {
              if (result)
              {
                return (*(*v11 + 32))(v11, v41, v19, &v36, v43);
              }
            }
          }
        }
      }
    }
  }

  return result;
}

_DWORD *sub_10002F2F0(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v9 = result[19];
    v10 = result[18];
    while (1)
    {
      if (v7 >= 1)
      {
        v11 = 0;
        for (i = 0; i != v7; ++i)
        {
          *(*a4 + i) = (341 * (*(a5[1] + v11 * result[22]) + *(*a5 + v11 * result[22]) + *(a5[2] + v11 * result[22]))) >> 10;
          v11 += v9;
        }
      }

      *a4 += v8;
      v13 = result[24];
      v14 = v5 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v13) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v13 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v13;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v13 * v14;
LABEL_15:
      if (v6 <= v16)
      {
        v19 = (v16 - v6) * v10;
        if (v19 == v19)
        {
          if (*a5)
          {
            *a5 += v19;
          }

          v20 = a5[1];
          if (v20)
          {
            a5[1] = v20 + v19;
          }

          v21 = a5[2];
          if (v21)
          {
            a5[2] = v21 + v19;
          }

          v22 = a5[3];
          if (v22)
          {
            a5[3] = v22 + v19;
          }

          v23 = a5[4];
          if (v23)
          {
            a5[4] = v23 + v19;
          }

          v5 = v14;
          v6 = v16;
          if (v14 != a2)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  return result;
}

int *sub_10002F450(int *result, void *a2)
{
  if (*a2)
  {
    v2 = result[21] * result[19];
    if (v2 != v2)
    {
      return result;
    }

    v3 = result[20] * result[18];
    if (v3 != v3)
    {
      return result;
    }

    *a2 += v2 + v3;
  }

  v4 = a2[1];
  if (v4)
  {
    v5 = result[21] * result[19];
    if (v5 != v5)
    {
      return result;
    }

    v6 = result[20] * result[18];
    if (v6 != v6)
    {
      return result;
    }

    a2[1] = v4 + v5 + v6;
  }

  v7 = a2[2];
  if (v7)
  {
    v8 = result[21] * result[19];
    if (v8 != v8)
    {
      return result;
    }

    v9 = result[20] * result[18];
    if (v9 != v9)
    {
      return result;
    }

    a2[2] = v7 + v8 + v9;
  }

  v10 = a2[3];
  if (v10)
  {
    v11 = result[21] * result[19];
    if (v11 != v11)
    {
      return result;
    }

    v12 = result[20] * result[18];
    if (v12 != v12)
    {
      return result;
    }

    a2[3] = v10 + v11 + v12;
  }

  v13 = a2[4];
  if (v13)
  {
    v14 = result[21] * result[19];
    if (v14 == v14)
    {
      v15 = result[20] * result[18];
      if (v15 == v15)
      {
        a2[4] = v13 + v14 + v15;
      }
    }
  }

  return result;
}

uint64_t sub_10002F580(uint64_t result, void *a2)
{
  *result = off_100070E48;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002F614(uint64_t a1, void *a2)
{
  *a1 = off_100070E48;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_10002F6B8(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070E98;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_10002F8C4(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = a3;
    v9 = result[16];
    v10 = (result[18] + (result[18] >> 31)) >> 1;
    while (1)
    {
      if (v9 >= 1)
      {
        v11 = 0;
        for (i = 0; i != v9; ++i)
        {
          *(*a4 + i) = (341 * (*(a5[1] + 2 * v11 * result[22]) + *(*a5 + 2 * v11 * result[22]) + *(a5[2] + 2 * v11 * result[22]))) >> 18;
          v11 += v7;
        }
      }

      *a4 += v8;
      v13 = result[24];
      v14 = v5 + 1;
      if ((v13 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v13) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v13 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v13;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v13 * v14;
LABEL_15:
      if (v6 <= v16)
      {
        v19 = (v16 - v6) * v10;
        if (v19 == v19)
        {
          if (*a5)
          {
            *a5 += 2 * v19;
          }

          v20 = a5[1];
          if (v20)
          {
            a5[1] = v20 + 2 * v19;
          }

          v21 = a5[2];
          if (v21)
          {
            a5[2] = v21 + 2 * v19;
          }

          v22 = a5[3];
          if (v22)
          {
            a5[3] = v22 + 2 * v19;
          }

          v23 = a5[4];
          if (v23)
          {
            a5[4] = v23 + 2 * v19;
          }

          v5 = v14;
          v6 = v16;
          if (v14 != a2)
          {
            continue;
          }
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10002FA30(uint64_t result, void *a2)
{
  *result = off_100070ED0;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002FAC4(uint64_t a1, void *a2)
{
  *a1 = off_100070ED0;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10002FB68(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070F20;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_10002FD74(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v10 = result[18];
    v9 = result[19];
    while (1)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9 * (result[22] * i / result[23]);
          *(*a4 + i) = (341 * (*(a5[1] + v12) + *(*a5 + v12) + *(a5[2] + v12))) >> 10;
        }
      }

      *a4 += v8;
      v14 = result[24];
      v13 = result[25];
      v15 = v5 + 1;
      if ((v14 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v16 = HIDWORD(v14) * v15;
        if (v16)
        {
LABEL_13:
          if (HIDWORD(v16))
          {
            return result;
          }

          v18 = v14 * v15;
          v19 = __CFADD__(v18, v16 << 32);
          v17 = v18 + (v16 << 32);
          if (v19)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v16 = HIDWORD(v15) * v14;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v14 * v15;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v17)
      {
        v20 = v17 / v13;
        if (v6 > v20)
        {
          return result;
        }
      }

      else
      {
        v20 = 0;
        if (v6)
        {
          return result;
        }
      }

      v19 = v20 >= v6;
      v21 = v20 - v6;
      if (!v19)
      {
        v21 = 0;
      }

      v22 = v21 * v10;
      if (v22 == v22)
      {
        if (*a5)
        {
          *a5 += v22;
        }

        v23 = a5[1];
        if (v23)
        {
          a5[1] = v23 + v22;
        }

        v24 = a5[2];
        if (v24)
        {
          a5[2] = v24 + v22;
        }

        v25 = a5[3];
        if (v25)
        {
          a5[3] = v25 + v22;
        }

        v26 = a5[4];
        if (v26)
        {
          a5[4] = v26 + v22;
        }

        v5 = v15;
        v6 = v20;
        if (v15 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_10002FEEC(uint64_t result, void *a2)
{
  *result = off_100070F58;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10002FF80(uint64_t a1, void *a2)
{
  *a1 = off_100070F58;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_100030024(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100070FA8;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_100030230(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = a3;
    v9 = result[16];
    v10 = (result[18] + (result[18] >> 31)) >> 1;
    while (1)
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = result[22] * i / result[23] * v7;
          *(*a4 + i) = (341 * (*(a5[1] + 2 * v12) + *(*a5 + 2 * v12) + *(a5[2] + 2 * v12))) >> 18;
        }
      }

      *a4 += v8;
      v14 = result[24];
      v13 = result[25];
      v15 = v5 + 1;
      if ((v14 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v16 = HIDWORD(v14) * v15;
        if (v16)
        {
LABEL_13:
          if (HIDWORD(v16))
          {
            return result;
          }

          v18 = v14 * v15;
          v19 = __CFADD__(v18, v16 << 32);
          v17 = v18 + (v16 << 32);
          if (v19)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v16 = HIDWORD(v15) * v14;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v14 * v15;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v17)
      {
        v20 = v17 / v13;
        if (v6 > v20)
        {
          return result;
        }
      }

      else
      {
        v20 = 0;
        if (v6)
        {
          return result;
        }
      }

      v19 = v20 >= v6;
      v21 = v20 - v6;
      if (!v19)
      {
        v21 = 0;
      }

      v22 = v21 * v10;
      if (v22 == v22)
      {
        if (*a5)
        {
          *a5 += 2 * v22;
        }

        v23 = a5[1];
        if (v23)
        {
          a5[1] = v23 + 2 * v22;
        }

        v24 = a5[2];
        if (v24)
        {
          a5[2] = v24 + 2 * v22;
        }

        v25 = a5[3];
        if (v25)
        {
          a5[3] = v25 + 2 * v22;
        }

        v26 = a5[4];
        if (v26)
        {
          a5[4] = v26 + 2 * v22;
        }

        v5 = v15;
        v6 = v20;
        if (v15 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1000303B8(uint64_t result, void *a2)
{
  *result = off_100070FE0;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_10003044C(uint64_t a1, void *a2)
{
  *a1 = off_100070FE0;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_1000304F0(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100071030;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_1000306FC(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v10 = result[18];
    v9 = result[19];
    while (1)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*a4 + i) = *(*a5 + v9 * (result[22] * i / result[23]));
        }
      }

      *a4 += v8;
      v12 = result[24];
      v13 = result[25];
      v14 = v5 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v12) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v12 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v12;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v12 * v14;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v16)
      {
        v19 = v16 / v13;
        if (v6 > v19)
        {
          return result;
        }
      }

      else
      {
        v19 = 0;
        if (v6)
        {
          return result;
        }
      }

      v18 = v19 >= v6;
      v20 = v19 - v6;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v20 * v10;
      if (v21 == v21)
      {
        if (*a5)
        {
          *a5 += v21;
        }

        v22 = a5[1];
        if (v22)
        {
          a5[1] = v22 + v21;
        }

        v23 = a5[2];
        if (v23)
        {
          a5[2] = v23 + v21;
        }

        v24 = a5[3];
        if (v24)
        {
          a5[3] = v24 + v21;
        }

        v25 = a5[4];
        if (v25)
        {
          a5[4] = v25 + v21;
        }

        v5 = v14;
        v6 = v19;
        if (v14 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100030854(uint64_t result, void *a2)
{
  *result = off_100071068;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_1000308E8(uint64_t a1, void *a2)
{
  *a1 = off_100071068;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_10003098C(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_1000710B8;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_100030B98(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = result[16];
    v9 = a3;
    v10 = (result[18] + (result[18] >> 31)) >> 1;
    while (1)
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*a4 + i) = *(*a5 + 2 * result[22] * i / result[23] * v7 + 1);
        }
      }

      *a4 += v9;
      v12 = result[24];
      v13 = result[25];
      v14 = v5 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v12) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v12 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v12;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v12 * v14;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v16)
      {
        v19 = v16 / v13;
        if (v6 > v19)
        {
          return result;
        }
      }

      else
      {
        v19 = 0;
        if (v6)
        {
          return result;
        }
      }

      v18 = v19 >= v6;
      v20 = v19 - v6;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v20 * v10;
      if (v21 == v21)
      {
        if (*a5)
        {
          *a5 += 2 * v21;
        }

        v22 = a5[1];
        if (v22)
        {
          a5[1] = v22 + 2 * v21;
        }

        v23 = a5[2];
        if (v23)
        {
          a5[2] = v23 + 2 * v21;
        }

        v24 = a5[3];
        if (v24)
        {
          a5[3] = v24 + 2 * v21;
        }

        v25 = a5[4];
        if (v25)
        {
          a5[4] = v25 + 2 * v21;
        }

        v5 = v14;
        v6 = v19;
        if (v14 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100030D04(uint64_t result, void *a2)
{
  *result = off_1000710F0;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_100030D98(uint64_t a1, void *a2)
{
  *a1 = off_1000710F0;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_100030E3C(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100071140;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_100031048(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v10 = result[18];
    v9 = result[19];
    while (1)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          *(*a4 + i) = ~*(*a5 + v9 * (result[22] * i / result[23]));
        }
      }

      *a4 += v8;
      v12 = result[24];
      v13 = result[25];
      v14 = v5 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v12) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v12 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v12;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v12 * v14;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v16)
      {
        v19 = v16 / v13;
        if (v6 > v19)
        {
          return result;
        }
      }

      else
      {
        v19 = 0;
        if (v6)
        {
          return result;
        }
      }

      v18 = v19 >= v6;
      v20 = v19 - v6;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v20 * v10;
      if (v21 == v21)
      {
        if (*a5)
        {
          *a5 += v21;
        }

        v22 = a5[1];
        if (v22)
        {
          a5[1] = v22 + v21;
        }

        v23 = a5[2];
        if (v23)
        {
          a5[2] = v23 + v21;
        }

        v24 = a5[3];
        if (v24)
        {
          a5[3] = v24 + v21;
        }

        v25 = a5[4];
        if (v25)
        {
          a5[4] = v25 + v21;
        }

        v5 = v14;
        v6 = v19;
        if (v14 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_1000311A4(uint64_t result, void *a2)
{
  *result = off_100071178;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_100031238(uint64_t a1, void *a2)
{
  *a1 = off_100071178;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_1000312DC(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_1000711C8;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_1000314E8(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = result[16];
    v9 = a3;
    v10 = (result[18] + (result[18] >> 31)) >> 1;
    while (1)
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          *(*a4 + i) = ~*(*a5 + 2 * result[22] * i / result[23] * v7) >> 8;
        }
      }

      *a4 += v9;
      v12 = result[24];
      v13 = result[25];
      v14 = v5 + 1;
      if ((v12 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v15 = HIDWORD(v12) * v14;
        if (v15)
        {
LABEL_13:
          if (HIDWORD(v15))
          {
            return result;
          }

          v17 = v12 * v14;
          v18 = __CFADD__(v17, v15 << 32);
          v16 = v17 + (v15 << 32);
          if (v18)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v15 = HIDWORD(v14) * v12;
        if (v15)
        {
          goto LABEL_13;
        }
      }

      v16 = v12 * v14;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v16)
      {
        v19 = v16 / v13;
        if (v6 > v19)
        {
          return result;
        }
      }

      else
      {
        v19 = 0;
        if (v6)
        {
          return result;
        }
      }

      v18 = v19 >= v6;
      v20 = v19 - v6;
      if (!v18)
      {
        v20 = 0;
      }

      v21 = v20 * v10;
      if (v21 == v21)
      {
        if (*a5)
        {
          *a5 += 2 * v21;
        }

        v22 = a5[1];
        if (v22)
        {
          a5[1] = v22 + 2 * v21;
        }

        v23 = a5[2];
        if (v23)
        {
          a5[2] = v23 + 2 * v21;
        }

        v24 = a5[3];
        if (v24)
        {
          a5[3] = v24 + 2 * v21;
        }

        v25 = a5[4];
        if (v25)
        {
          a5[4] = v25 + 2 * v21;
        }

        v5 = v14;
        v6 = v19;
        if (v14 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100031658(uint64_t result, void *a2)
{
  *result = off_100071200;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_1000316EC(uint64_t a1, void *a2)
{
  *a1 = off_100071200;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_100031790(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100071250;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_10003199C(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v10 = result[18];
    v9 = result[19];
    while (1)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9 * (result[22] * i / result[23]);
          *(*a4 + i) = (5614337 * ((*(a5[1] + v12) + *(*a5 + v12) + *(a5[2] + v12)) * *(a5[3] + v12))) >> 32;
        }
      }

      *a4 += v8;
      v14 = result[24];
      v13 = result[25];
      v15 = v5 + 1;
      if ((v14 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v16 = HIDWORD(v14) * v15;
        if (v16)
        {
LABEL_13:
          if (HIDWORD(v16))
          {
            return result;
          }

          v18 = v14 * v15;
          v19 = __CFADD__(v18, v16 << 32);
          v17 = v18 + (v16 << 32);
          if (v19)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v16 = HIDWORD(v15) * v14;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v14 * v15;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v17)
      {
        v20 = v17 / v13;
        if (v6 > v20)
        {
          return result;
        }
      }

      else
      {
        v20 = 0;
        if (v6)
        {
          return result;
        }
      }

      v19 = v20 >= v6;
      v21 = v20 - v6;
      if (!v19)
      {
        v21 = 0;
      }

      v22 = v21 * v10;
      if (v22 == v22)
      {
        if (*a5)
        {
          *a5 += v22;
        }

        v23 = a5[1];
        if (v23)
        {
          a5[1] = v23 + v22;
        }

        v24 = a5[2];
        if (v24)
        {
          a5[2] = v24 + v22;
        }

        v25 = a5[3];
        if (v25)
        {
          a5[3] = v25 + v22;
        }

        v26 = a5[4];
        if (v26)
        {
          a5[4] = v26 + v22;
        }

        v5 = v15;
        v6 = v20;
        if (v15 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100031B28(uint64_t result, void *a2)
{
  *result = off_100071288;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_100031BBC(uint64_t a1, void *a2)
{
  *a1 = off_100071288;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

void *sub_100031C60(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070AF8;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_1000712D8;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002C348(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_100031E6C(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[19] / 2;
    v8 = a3;
    v9 = result[16];
    v10 = (result[18] + (result[18] >> 31)) >> 1;
    while (1)
    {
      if (v9 >= 1)
      {
        for (i = 0; i != v9; ++i)
        {
          v12 = 2 * result[22] * i / result[23] * v7;
          *(*a4 + i) = (5614337 * (*(a5[3] + v12 + 1) * (*(a5[1] + v12 + 1) + *(*a5 + v12 + 1) + *(a5[2] + v12 + 1)))) >> 32;
        }
      }

      *a4 += v8;
      v14 = result[24];
      v13 = result[25];
      v15 = v5 + 1;
      if ((v14 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v16 = HIDWORD(v14) * v15;
        if (v16)
        {
LABEL_13:
          if (HIDWORD(v16))
          {
            return result;
          }

          v18 = v14 * v15;
          v19 = __CFADD__(v18, v16 << 32);
          v17 = v18 + (v16 << 32);
          if (v19)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v16 = HIDWORD(v15) * v14;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v14 * v15;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v17)
      {
        v20 = v17 / v13;
        if (v6 > v20)
        {
          return result;
        }
      }

      else
      {
        v20 = 0;
        if (v6)
        {
          return result;
        }
      }

      v19 = v20 >= v6;
      v21 = v20 - v6;
      if (!v19)
      {
        v21 = 0;
      }

      v22 = v21 * v10;
      if (v22 == v22)
      {
        if (*a5)
        {
          *a5 += 2 * v22;
        }

        v23 = a5[1];
        if (v23)
        {
          a5[1] = v23 + 2 * v22;
        }

        v24 = a5[2];
        if (v24)
        {
          a5[2] = v24 + 2 * v22;
        }

        v25 = a5[3];
        if (v25)
        {
          a5[3] = v25 + 2 * v22;
        }

        v26 = a5[4];
        if (v26)
        {
          a5[4] = v26 + 2 * v22;
        }

        v5 = v15;
        v6 = v20;
        if (v15 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100032014(uint64_t result, void *a2)
{
  *result = off_100071310;
  if (*(result + 64) == 1 && *(result + 56))
  {
    v4 = *(result + 80);
    if (v4)
    {
      v8 = v2;
      v9 = v3;
      v5 = result;
      Madusa::MemoryMaster::DeAllocateBuffer(v4, a2);
      v7 = 0;
      memset(v6, 0, sizeof(v6));
      sub_10002BC2C(v5 + 16, v6, v6, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_1000320A8(uint64_t a1, void *a2)
{
  *a1 = off_100071310;
  if (*(a1 + 64) == 1 && *(a1 + 56))
  {
    if (*(a1 + 80))
    {
      Madusa::MemoryMaster::DeAllocateBuffer(*(a1 + 80), a2);
      v4 = 0;
      memset(v3, 0, sizeof(v3));
      sub_10002BC2C(a1 + 16, v3, v3, 0, 0);
    }
  }

  operator delete();
}

uint64_t sub_10003214C(uint64_t a1, Madusa::ImageProperties *this, __int128 *a3, int *a4)
{
  result = Madusa::ImageProperties::HasValidColorComponents(this);
  if (result)
  {
    v44 = 0;
    v45 = 1;
    v46 = 0;
    v47 = 1;
    v42 = 0;
    v43 = 1;
    v40[0] = off_100070A98;
    v40[1] = 0;
    v41 = 1;
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    Madusa::ImageProperties::GetPixelDataBaseAddrs(this, &v22);
    Madusa::ImageProperties::GetPixelData(&v38, this);
    v9 = *Madusa::ImageProperties::GetImagePlaneSize(this);
    YStride = Madusa::ImageProperties::GetYStride(this);
    sub_10002BC2C(v40, v22.n128_u64, &v38, v9, *YStride);
    v22.n128_u32[2] = 0;
    v22.n128_u8[12] = 1;
    v23 = 0;
    v24 = 1;
    v25 = 0;
    v26 = 1;
    v27 = 0;
    v28 = 1;
    v29 = 0;
    v30 = 1;
    v31 = 0;
    v32 = 1;
    v33 = 0;
    v34 = 1;
    v35 = 0;
    v36 = 1;
    *&v11 = 0x100000001;
    *(&v11 + 1) = 0x100000001;
    v37 = v11;
    v12 = a3[1];
    v38 = *a3;
    v22.n128_u64[0] = off_100071360;
    v39 = v12;
    if (Madusa::ImageProperties::ShouldDownsample(this))
    {
      v20 = 0x100000001;
      v21 = 0x100000001;
      Madusa::ImageProperties::GetDownsampleRatios(this, &v20, &v21);
      sub_10002BEAC(a4, &v20, &v21, &v13);
      LODWORD(v38) = v13;
      BYTE4(v38) = BYTE4(v13);
      DWORD2(v38) = v14;
      BYTE12(v38) = v15;
      LODWORD(v39) = v16;
      BYTE4(v39) = v17;
      DWORD2(v39) = v18;
      BYTE12(v39) = v19;
    }

    sub_10002C1E8(&v22, this, &v38, a4);
    return sub_10002EF3C(&v22, v40, *(a1 + 8));
  }

  return result;
}

_DWORD *sub_100032358(_DWORD *result, uint64_t a2, int a3, void *a4, void *a5)
{
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    v7 = result[16];
    v8 = a3;
    v10 = result[18];
    v9 = result[19];
    while (1)
    {
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          v12 = v9 * (result[22] * i / result[23]);
          *(*a4 + i) = (5614337 * ((765 - *(a5[2] + v12) - (*(*a5 + v12) + *(a5[1] + v12))) * (*(a5[3] + v12) ^ 0xFFu))) >> 32;
        }
      }

      *a4 += v8;
      v14 = result[24];
      v13 = result[25];
      v15 = v5 + 1;
      if ((v14 & 0x80000000) != 0)
      {
        if (v5 > 0xFFFFFFFE)
        {
          return result;
        }

        v16 = HIDWORD(v14) * v15;
        if (v16)
        {
LABEL_13:
          if (HIDWORD(v16))
          {
            return result;
          }

          v18 = v14 * v15;
          v19 = __CFADD__(v18, v16 << 32);
          v17 = v18 + (v16 << 32);
          if (v19)
          {
            return result;
          }

          goto LABEL_15;
        }
      }

      else if (v5 >= 0xFFFFFFFF)
      {
        v16 = HIDWORD(v15) * v14;
        if (v16)
        {
          goto LABEL_13;
        }
      }

      v17 = v14 * v15;
LABEL_15:
      if (!v13)
      {
        return result;
      }

      if (v17)
      {
        v20 = v17 / v13;
        if (v6 > v20)
        {
          return result;
        }
      }

      else
      {
        v20 = 0;
        if (v6)
        {
          return result;
        }
      }

      v19 = v20 >= v6;
      v21 = v20 - v6;
      if (!v19)
      {
        v21 = 0;
      }

      v22 = v21 * v10;
      if (v22 == v22)
      {
        if (*a5)
        {
          *a5 += v22;
        }

        v23 = a5[1];
        if (v23)
        {
          a5[1] = v23 + v22;
        }

        v24 = a5[2];
        if (v24)
        {
          a5[2] = v24 + v22;
        }

        v25 = a5[3];
        if (v25)
        {
          a5[3] = v25 + v22;
        }

        v26 = a5[4];
        if (v26)
        {
          a5[4] = v26 + v22;
        }

        v5 = v15;
        v6 = v20;
        if (v15 != a2)
        {
          continue;
        }
      }

      return result;
    }
  }

  return result;
}

void Madusa::Demod::InverseAffineTransform(uint64_t a1, void *a2, float *a3, float *a4, float *a5, void *a6)
{
  v10 = (*a6 + 8);
  bzero(v10, 0x10810uLL);
  v14 = 0;
  v15 = a3[12];
  v16 = a3[13];
  v17 = a3[14];
  v18 = a3[15];
  v19 = (*a4 + 64.5) + *a5;
  v20 = (a4[1] + 64.5) + a5[1];
  v21 = -(v15 * v19);
  v22 = -(v17 * v19);
  v23 = -(v16 * v20);
  v24 = -(v18 * v20);
  do
  {
    v25 = 0;
    v26 = v21 + 64.5;
    v27 = *a2 + 8;
    v28 = v24;
    v29 = v23;
    do
    {
      v30 = v26 + v29;
      v31 = (v22 + 64.5) + v28;
      if ((v26 + v29) >= 1.0 && v30 < 129.0 && v31 >= 1.0 && v31 < 129.0)
      {
        v35 = v30;
        v36 = v30 - truncf(v30);
        v37 = v31;
        v38 = truncf(v31);
        v39 = v31 - v38;
        if (v35 >= 128)
        {
          v40 = 128;
        }

        else
        {
          v40 = v35;
        }

        v41 = v40 + 1;
        if (v37 >= 128)
        {
          v42 = 128;
        }

        else
        {
          v42 = v37;
        }

        v43 = 130 * v35;
        v44 = v27 + v37;
        LOBYTE(v38) = *(v44 + v43);
        v45 = v27 + v42 + 1;
        LOBYTE(v11) = *(v45 + v43);
        v46 = 130 * v41;
        LOBYTE(v12) = *(v44 + v46);
        v47 = LODWORD(v12);
        LOBYTE(v13) = *(v45 + v46);
        v13 = LODWORD(v13);
        v48 = LODWORD(v38) + ((LODWORD(v11) - LODWORD(v38)) * v39);
        v11 = v13 - v47;
        v12 = v47 - v48;
        *&v10[v25] = v48 + ((v12 + (v11 * v39)) * v36);
      }

      v29 = v29 + v16;
      v28 = v28 + v18;
      v25 += 4;
    }

    while (v25 != 520);
    v21 = v21 + v15;
    v22 = v22 + v17;
    v10 += 520;
    ++v14;
  }

  while (v14 != 130);
}

void Madusa::Demod::_InverseAffineTransform(uint64_t a1, void *a2, float *a3, float *a4, float *a5, void *a6)
{
  if ((*v6 & 0x1F) != 0 || v6[2] > 0x3Fu)
  {
    v7 = QuickCodec::mask;
    if (QuickCodec::mask != -70947757)
    {
LABEL_10:
      QuickCodec::mask = v7 + 1;
    }
  }

  else
  {
    v7 = QuickCodec::mask;
    if (v6[3] == 212 || QuickCodec::mask != -70947757)
    {
      goto LABEL_10;
    }
  }

  Madusa::Demod::InverseAffineTransform(a1, a2, a3, a4, a5, a6);
}

uint64_t Madusa::System::CreateDetectorPipe(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 16))(a1, 500040);
  if (result)
  {
    v4 = result + 24;
    *(result + 8) = off_100071528;
    *(result + 16) = result + 24;
    *result = off_1000714F0;
    *(result + 24) = off_1000707C0;
    *(result + 32) = off_100070818;
    *(result + 40) = 0;
    *(result + 48) = off_100071548;
    v5 = result;
    bzero((result + 56), 0x4204uLL);
    Madusa::TransformPipe::TransformPipe(v5 + 16960, v4);
    Madusa::PayloadPipe::PayloadPipe((v5 + 412680), v4);
    result = v5;
    *(v5 + 500032) = a2;
  }

  return result;
}

uint64_t sub_10003287C(uint64_t result, unsigned __int8 *a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if (a2)
  {
    v2 = *a2;
    *result = v2;
    if (v2)
    {
      *(result + 16) = 1;
      v3 = a2[1];
      *(result + 1) = v3;
      if (v3)
      {
        ++*(result + 16);
        v4 = a2[2];
        *(result + 2) = v4;
        if (v4)
        {
          ++*(result + 16);
          v5 = a2[3];
          *(result + 3) = v5;
          if (v5)
          {
            ++*(result + 16);
            v6 = a2[4];
            *(result + 4) = v6;
            if (v6)
            {
              ++*(result + 16);
              v7 = a2[5];
              *(result + 5) = v7;
              if (v7)
              {
                ++*(result + 16);
                v8 = a2[6];
                *(result + 6) = v8;
                if (v8)
                {
                  ++*(result + 16);
                  v9 = a2[7];
                  *(result + 7) = v9;
                  if (v9)
                  {
                    ++*(result + 16);
                    v10 = a2[8];
                    *(result + 8) = v10;
                    if (v10)
                    {
                      ++*(result + 16);
                      v11 = a2[9];
                      *(result + 9) = v11;
                      if (v11)
                      {
                        ++*(result + 16);
                        v12 = a2[10];
                        *(result + 10) = v12;
                        if (v12)
                        {
                          ++*(result + 16);
                          v13 = a2[11];
                          *(result + 11) = v13;
                          if (v13)
                          {
                            ++*(result + 16);
                            v14 = a2[12];
                            *(result + 12) = v14;
                            if (v14)
                            {
                              ++*(result + 16);
                              v15 = a2[13];
                              *(result + 13) = v15;
                              if (v15)
                              {
                                ++*(result + 16);
                                v16 = a2[14];
                                *(result + 14) = v16;
                                if (v16)
                                {
                                  ++*(result + 16);
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  *(result + 15) = 0;
  return result;
}

double sub_100032A08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = 1;
  func = __find_func(0x4F9F1F9FE0E0E040, -1591418806);
  v7 = func(a1 + 16960, a2, &v23);
  *v22 = 0;
  memset(&v22[4], 0, 24);
  *&v22[28] = -1;
  v8 = v23;
  v20 = v7;
  if (v23 >= 1)
  {
    v9 = v22;
    v10 = 1;
    v11 = v7;
    do
    {
      v12 = 0;
      *v9 = 0;
      *(v9 + 4) = 0;
      *(v9 + 20) = 0;
      *(v9 + 12) = 0;
      *(v9 + 7) = -1;
      if (*(v11 + 68) == 1)
      {
        v13 = *(a1 + 500032);
        v14 = __find_func(0xFF3FDFDF40C00000, 293871626);
        v14(v21, a1 + 412680, v11, a2, v13);
        v15 = v21[1];
        *v9 = v21[0];
        *(v9 + 1) = v15;
        v12 = v9[1];
        v8 = v23;
      }

      if (v10 >= v8)
      {
        break;
      }

      v11 += 72;
      v9 += 32;
      ++v10;
    }

    while ((v12 & 1) == 0);
  }

  v16 = *(v20 + 48);
  *(a3 + 32) = *(v20 + 32);
  *(a3 + 48) = v16;
  v17 = *(v20 + 16);
  *a3 = *v20;
  *(a3 + 16) = v17;
  result = *v22;
  v19 = *&v22[16];
  *(a3 + 72) = *v22;
  *(a3 + 64) = *(v20 + 64);
  *(a3 + 88) = v19;
  *(a3 + 104) = v8;
  return result;
}

double sub_100032BCC()
{
  Madusa::gBandModeUtilRuntime = off_1000707C0;
  qword_100074DB0 = off_100070818;
  dword_100074DB8 = 0;
  __cxa_atexit(nullsub_1, &Madusa::gBandModeUtilRuntime, &_mh_execute_header);
  __cxa_atexit(nullsub_1, &Madusa::gReadstatsHandle, &_mh_execute_header);
  sub_10003287C(&v1, "apple-raster");
  Madusa::gSystem = 0;
  result = *&v1;
  unk_100074DC8 = v1;
  qword_100074DD8 = v2;
  dword_100074DE0 = 1;
  Madusa::System::mpSystem = &Madusa::gSystem;
  return result;
}

uint64_t sub_100032CE4(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void DelegateAPIAdapter::setAPIUsed(uint64_t *a1)
{
  v1 = 502;
  if (qword_100074928 == *(h5001x - 51348))
  {
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_100074930, *(h5001x - 51340)), vceqq_s64(*&qword_100074940, *(h5001x - 51324))))) & (qword_100074950 == *(h5001x - 51308))) != 0)
    {
      v1 = 38;
    }

    else
    {
      v1 = 502;
    }
  }

  DelegateAPIAdapter::mWhichAPI = v1;
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v4 = qword_100074DF8;
    DelegateAPIAdapter::mAdaptee = v2;
    qword_100074DF8 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

uint64_t DelegateAPIAdapter::Initialize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (!a4 || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI != 502)
  {
    operator new();
  }

  v8 = DelegateAPIAdapter::mAdaptee;
  v9 = qword_100074DF8;
  if (qword_100074DF8)
  {
    atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
  }

  Adapter502_52::Adapter502_52(v10, &v8);
  v4 = v9;
  if (v9 && !atomic_fetch_add((v9 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  result = Adapter502_52::Initialize(v10);
  v10[0] = off_1000715A0;
  v6 = v11;
  if (v11)
  {
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v7 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v7;
    }
  }

  return result;
}

uint64_t DelegateAPIAdapter::InitializeBanding(uint64_t a1, uint64_t a2)
{
  if (!a1 || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI == 502)
  {
    v13 = v2;
    v14 = v3;
    v9 = DelegateAPIAdapter::mAdaptee;
    v10 = qword_100074DF8;
    if (qword_100074DF8)
    {
      atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
    }

    Adapter502_52::Adapter502_52(v11, &v9);
    v4 = v10;
    if (v10 && !atomic_fetch_add((v10 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    result = Adapter502_52::InitializeBanding(v11);
    v11[0] = off_1000715A0;
    v6 = v12;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        return v8;
      }
    }
  }

  else
  {
    v7 = *(*a1 + 24);

    return v7();
  }

  return result;
}

uint64_t DelegateAPIAdapter::ProcessImageData(DelegateAPIAdapter *this, _t_zn_IMAGEPARAMS *a2, _t_zn_IMAGEPARAMS *a3, void (*a4)(_t_zn_IMAGEPARAMS *))
{
  if (!this || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI == 502)
  {
    v18 = v4;
    v19 = v5;
    v14 = DelegateAPIAdapter::mAdaptee;
    v15 = qword_100074DF8;
    if (qword_100074DF8)
    {
      atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
    }

    Adapter502_52::Adapter502_52(v16, &v14);
    v9 = v15;
    if (v15 && !atomic_fetch_add((v15 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    result = Adapter502_52::ProcessImageData(v16, this, a2, a3);
    v16[0] = off_1000715A0;
    v11 = v17;
    if (v17)
    {
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v12 = result;
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        return v12;
      }
    }
  }

  else
  {
    v13 = *(*this + 32);

    return v13();
  }

  return result;
}

uint64_t DelegateAPIAdapter::Acknowledge(DelegateAPIAdapter *this, void *a2, void *a3, void *a4)
{
  if (!a3 || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI != 502)
  {
    return 4294967292;
  }

  v17 = v4;
  v18 = v5;
  v13 = DelegateAPIAdapter::mAdaptee;
  v14 = qword_100074DF8;
  if (qword_100074DF8)
  {
    atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
  }

  Adapter502_52::Adapter502_52(v15, &v13);
  v9 = v14;
  if (v14 && !atomic_fetch_add((v14 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  result = Adapter502_52::Acknowledge(v15, this, a2, a3);
  v15[0] = off_1000715A0;
  v11 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v12 = result;
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      return v12;
    }
  }

  return result;
}

uint64_t DelegateAPIAdapter::TerminateBanding(DelegateAPIAdapter *this, void *a2)
{
  if (!this || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI == 502)
  {
    v14 = v2;
    v15 = v3;
    v10 = DelegateAPIAdapter::mAdaptee;
    v11 = qword_100074DF8;
    if (qword_100074DF8)
    {
      atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
    }

    Adapter502_52::Adapter502_52(v12, &v10);
    v5 = v11;
    if (v11 && !atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    result = Adapter502_52::TerminateBanding(v12, this);
    v12[0] = off_1000715A0;
    v7 = v13;
    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = result;
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
        return v9;
      }
    }
  }

  else
  {
    v8 = *(*this + 40);

    return v8();
  }

  return result;
}

uint64_t DelegateAPIAdapter::Terminate(DelegateAPIAdapter *this, void *a2)
{
  if (!this || !DelegateAPIAdapter::mAdaptee)
  {
    return 4294967293;
  }

  if (DelegateAPIAdapter::mWhichAPI == 502)
  {
    v9 = DelegateAPIAdapter::mAdaptee;
    v10 = qword_100074DF8;
    if (qword_100074DF8)
    {
      atomic_fetch_add_explicit((qword_100074DF8 + 8), 1uLL, memory_order_relaxed);
    }

    Adapter502_52::Adapter502_52(v11, &v9);
    v3 = v10;
    if (v10 && !atomic_fetch_add((v10 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    result = Adapter502_52::Terminate(v11, this);
    v11[0] = off_1000715A0;
    v5 = v12;
    if (v12)
    {
      if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = result;
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        return v8;
      }
    }
  }

  else
  {
    v7 = (*(*this + 48))(this, a2);
    (*(*this + 8))(this);
    return v7;
  }

  return result;
}

uint64_t sub_1000338AC()
{
  qword_100074928 = 1506747311;
  *&xmmword_100074930 = 0x17CF4D676uLL;
  *(&xmmword_100074930 + 1) = 0x160AD76B3uLL;
  qword_100074940 = 0x1743DFDACuLL;
  unk_100074948 = xmmword_10006BA00;
  qword_100074958 = 0xFFFFFFFFLL;
  return __cxa_atexit(sub_100032CE4, &DelegateAPIAdapter::mAdaptee, &_mh_execute_header);
}

double pPreProc38(uint64_t result, _t_zn_IMAGEPARAMS *a2, Adapter38_52 **a3)
{
  if (a3)
  {
    *&v3 = Adapter38_52::CallShimPreProc(*a3, result, a2).n128_u64[0];
  }

  return v3;
}

uint64_t pPostProc38(uint64_t result, Adapter38_52 *this)
{
  if (this)
  {
    return Adapter38_52::CallShimPostProc(this, result);
  }

  return result;
}

uint64_t pNotifyProc38(uint64_t result, Adapter38_52 *this)
{
  if (this)
  {
    return Adapter38_52::CallShimNotifyProc(this, result);
  }

  return result;
}

void sub_100033B50(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100071568;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *Adapter502_52::Adapter502_52(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = off_1000715A0;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *sub_1000341D4(void *result)
{
  *result = off_1000715A0;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_100034268(void *a1)
{
  *a1 = off_1000715A0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t StartupCleanupAdapter::Startup(uint64_t a1)
{
  v9[12] = xmmword_10006BAE0;
  v9[13] = unk_10006BAF0;
  v9[14] = xmmword_10006BB00;
  v9[15] = unk_10006BB10;
  v9[8] = xmmword_10006BAA0;
  v9[9] = unk_10006BAB0;
  v9[10] = xmmword_10006BAC0;
  v9[11] = unk_10006BAD0;
  v9[4] = xmmword_10006BA60;
  v9[5] = unk_10006BA70;
  v9[6] = xmmword_10006BA80;
  v9[7] = unk_10006BA90;
  v9[0] = xmmword_10006BA20;
  v9[1] = unk_10006BA30;
  v9[2] = xmmword_10006BA40;
  v9[3] = unk_10006BA50;
  v7 = v9;
  v8 = 32;
  v6 = 512;
  v5[1] = a1;
  v5[0] = 0x200000028;
  v2[0] = 0x200000020;
  v3 = 157;
  v2[1] = v5;
  v4 = h5001x;
  return API52::Startup(v2);
}

double Adapter38_52::Adapter38_52(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = off_100071820;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = -1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 1;
  return result;
}

__n128 Adapter38_52::CallShimPreProc(Adapter38_52 *this, int a2, _t_zn_IMAGEPARAMS *a3)
{
  *(this + 6) = a2;
  v5 = *(this + 13);
  v6 = *&a3->unSize;
  v7 = *&a3->nYDotsPerInch;
  v8 = *&a3->aColorComponents[3];
  *(v5 + 32) = *&a3->DataType;
  *(v5 + 48) = v8;
  *(v5 + 16) = v7;
  v9 = *&a3->pPaletteData;
  v10 = *&a3->nXStride;
  v11 = *&a3->apLogical00[3];
  *(v5 + 96) = *&a3->apLogical00[1];
  *(v5 + 112) = v11;
  *(v5 + 64) = v9;
  *(v5 + 80) = v10;
  v12 = *&a3->nTileCount;
  v13 = *&a3->pLockTileProc;
  v14 = *&a3->pUnlockTileProc;
  *(v5 + 176) = *&a3->nXOffset;
  *(v5 + 144) = v13;
  *(v5 + 160) = v14;
  *(v5 + 128) = v12;
  *v5 = v6;
  (*(this + 4))(*(this + 13));
  v15 = *(this + 13);
  v16 = *v15;
  v17 = v15[1];
  v18 = v15[3];
  *&a3->DataType = v15[2];
  *&a3->aColorComponents[3] = v18;
  *&a3->unSize = v16;
  *&a3->nYDotsPerInch = v17;
  v19 = v15[4];
  v20 = v15[5];
  v21 = v15[7];
  *&a3->apLogical00[1] = v15[6];
  *&a3->apLogical00[3] = v21;
  *&a3->pPaletteData = v19;
  *&a3->nXStride = v20;
  result = v15[8];
  v23 = v15[9];
  v24 = v15[10];
  *&a3->nXOffset = *(v15 + 22);
  *&a3->pLockTileProc = v23;
  *&a3->pUnlockTileProc = v24;
  *&a3->nTileCount = result;
  return result;
}

uint64_t Adapter38_52::CallShimNotifyProc(uint64_t this, int a2)
{
  *(this + 24) = a2;
  *(this + 40) = 1;
  return this;
}

uint64_t Adapter38_52::Initialize(Adapter38_52 *this, uint64_t a2, unsigned int *a3)
{
  *(this + 4) = 0u;
  *(this + 10) = 0;
  *(this + 11) = this;
  v3 = *(this + 1);
  *(this + 3) = 0u;
  return (*(*v3 + 16))(v3, this + 48, a2, a3, this + 96);
}

uint64_t Adapter38_52::ProcessImageData(Adapter38_52 *this, _t_zn_IMAGEPARAMS *a2, void (*a3)(_t_zn_IMAGEPARAMS *))
{
  *(this + 4) = a3;
  *(this + 37) = this;
  *(this + 13) = a2;
  result = (*(**(this + 1) + 40))(*(this + 1), *(this + 12), this + 112, 0);
  if (!result)
  {
    v5 = *(**(this + 1) + 32);

    return v5();
  }

  return result;
}

void *sub_1000348F8(void *result)
{
  *result = off_100071820;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_10003498C(void *a1)
{
  *a1 = off_100071820;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void initZn(void **a1, void *a2)
{
  v4 = 48;
  v5 = a2;
  v6 = 0;
  v7 = a2;
  v8 = 0;
  v9 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    *&buf[4] = "initZn";
    *&buf[12] = 2048;
    *&buf[14] = a2;
    _os_log_debug_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEBUG, "%s: userContext=%p", buf, 0x16u);
  }

  *a1 = 0;
  memset(buf, 0, 32);
  *buf = 32;
  znStartup(0, buf);
}

void sub_100034BA8()
{
  sub_100001530();
  sub_100001524();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_100034C2C()
{
  sub_100001530();
  sub_100001524();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}