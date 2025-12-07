void sub_18F73473C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 21);
  if (v4)
  {
    free(v4);
    *(v1 + 21) = 0;
  }

  v5 = *(v1 + 19);
  if (v5)
  {
    free(v5);
    *(v1 + 19) = 0;
  }

  v6 = *(v1 + 16);
  if (v6)
  {
    *(v1 + 17) = v6;
    operator delete(v6);
  }

  v7 = *v2;
  if (*v2)
  {
    *(v1 + 9) = v7;
    operator delete(v7);
  }

  MEMORY[0x193ADE5D0](v1 + 56);
  BaseOpaqueObject::~BaseOpaqueObject(v1);
  _Unwind_Resume(a1);
}

_DWORD *std::vector<float>::assign(uint64_t *a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a2 > (v6 - result) >> 2)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    v8 = v6 >> 1;
    if (v6 >> 1 <= a2)
    {
      v8 = a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    std::vector<float>::__vallocate[abi:ne200100](a1, v9);
  }

  v10 = a1[1];
  v11 = (v10 - result) >> 2;
  if (v11 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = (v10 - result) >> 2;
  }

  if (v12)
  {
    a4.i32[0] = *a3;
    v13 = (v12 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v14 = vdupq_n_s64(v12 - 1);
    v15 = result + 2;
    v16 = 1;
    do
    {
      v17 = vdupq_n_s64(v16 - 1);
      v18 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_18F9016C0)));
      if (vuzp1_s16(v18, a4).u8[0])
      {
        *(v15 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v18, a4).i8[2])
      {
        *(v15 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v17, xmmword_18F9016B0)))).i32[1])
      {
        *v15 = a4.i32[0];
        v15[1] = a4.i32[0];
      }

      v16 += 4;
      v15 += 4;
      v13 -= 4;
    }

    while (v13);
  }

  v19 = a2 >= v11;
  v20 = a2 - v11;
  if (v20 != 0 && v19)
  {
    a4.i32[0] = *a3;
    v21 = (4 * a2 - (v10 - result) - 4) >> 2;
    v22 = (v21 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21);
    v24 = (v10 + 8);
    v25 = 1;
    do
    {
      v26 = vdupq_n_s64(v25 - 1);
      v27 = vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_18F9016C0)));
      if (vuzp1_s16(v27, a4).u8[0])
      {
        *(v24 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v27, a4).i8[2])
      {
        *(v24 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v23, vorrq_s8(v26, xmmword_18F9016B0)))).i32[1])
      {
        *v24 = a4.i32[0];
        v24[1] = a4.i32[0];
      }

      v25 += 4;
      v24 += 4;
      v22 -= 4;
    }

    while (v22);
    v28 = (v10 + 4 * v20);
  }

  else
  {
    v28 = &result[a2];
  }

  a1[1] = v28;
  return result;
}

void std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t HOA::orderFromNumChannels(HOA *this)
{
  v1 = 0x40000000;
  do
  {
    v2 = v1;
    v1 >>= 2;
  }

  while (v2 > this);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = 0;
  do
  {
    v4 = v3 + v2;
    v5 = 2 * v2;
    if (this < v3 + v2)
    {
      v4 = 0;
      v5 = 0;
    }

    LODWORD(this) = this - v4;
    v3 = (v5 + v3) >> 1;
    v6 = v2 > 3;
    v2 >>= 2;
  }

  while (v6);
  return v3 - 1;
}

uint64_t HOA::normalizationFromTag(HOA *this)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = this & 0xFFFF0000;
  if ((this & 0xFFFF0000) == 0x6B0000)
  {
    return 2;
  }

  if (v1 == 12517376)
  {
    return 0;
  }

  if (v1 == 12451840)
  {
    return 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 136315906;
    v4 = "HOA.cpp";
    v5 = 1024;
    v6 = 632;
    v7 = 2080;
    v8 = "normalizationFromTag";
    v9 = 1024;
    v10 = 632;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; This is not SN3D/N3D/FuMa: unsupported", &v3, 0x22u);
  }

  return 0xFFFFFFFFLL;
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

void sub_18F734E28(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void HOA::RotationMatrix::~RotationMatrix(HOA::RotationMatrix *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

uint64_t HOA::getSphericalGrid(uint64_t result, HOA *this, _DWORD *__dst, float *a4, float *__C)
{
  if (result)
  {
    if (result != 2)
    {
      if (result != 1)
      {
        return result;
      }

      if (__dst)
      {
        v7 = a4 == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = !v7;
      if (this <= 4)
      {
        if (this > 1)
        {
          if (this != 2)
          {
            if (this != 3)
            {
              v9 = v8 ^ 1;
              if (!__C)
              {
                v9 = 1;
              }

              if ((v9 & 1) == 0)
              {
                __dst[24] = -1038292098;
                *__dst = xmmword_18F913410;
                *(__dst + 1) = unk_18F913420;
                *(__dst + 4) = xmmword_18F913450;
                *(__dst + 5) = unk_18F913460;
                *(__dst + 2) = xmmword_18F913430;
                *(__dst + 3) = unk_18F913440;
                *a4 = xmmword_18F913474;
                *(a4 + 1) = unk_18F913484;
                *(a4 + 4) = xmmword_18F9134B4;
                *(a4 + 5) = unk_18F9134C4;
                *(a4 + 2) = xmmword_18F913494;
                *(a4 + 3) = unk_18F9134A4;
                a4[24] = -31.512;
                __C[24] = 0.52404;
                v10 = &xmmword_18F9134D8;
LABEL_33:
                v13 = v10[5];
                *(__C + 4) = v10[4];
                *(__C + 5) = v13;
                v14 = v10[3];
                *(__C + 2) = v10[2];
                *(__C + 3) = v14;
                v15 = *v10;
                v16 = v10[1];
                result = 25;
LABEL_100:
                *__C = v15;
                *(__C + 1) = v16;
                return result;
              }

              return 25;
            }

            v50 = v8 ^ 1;
            if (!__C)
            {
              v50 = 1;
            }

            if ((v50 & 1) == 0)
            {
              *__dst = xmmword_18F913350;
              *(__dst + 1) = unk_18F913360;
              *(__dst + 2) = xmmword_18F913370;
              *(__dst + 3) = unk_18F913380;
              *a4 = xmmword_18F913390;
              *(a4 + 1) = unk_18F9133A0;
              *(a4 + 2) = xmmword_18F9133B0;
              *(a4 + 3) = unk_18F9133C0;
              v39 = &xmmword_18F9133D0;
              goto LABEL_112;
            }

            return 16;
          }

          v41 = v8 ^ 1;
          if (!__C)
          {
            v41 = 1;
          }

          if ((v41 & 1) == 0)
          {
            __dst[8] = 1123963561;
            *__dst = xmmword_18F9132E4;
            *(__dst + 1) = unk_18F9132F4;
            a4[8] = -34.134;
            *a4 = xmmword_18F913308;
            *(a4 + 1) = unk_18F913318;
            v31 = 1069089495;
            v32 = &xmmword_18F91332C;
            goto LABEL_99;
          }

          return 9;
        }

        if (this)
        {
          if (this == 1)
          {
            v21 = v8 ^ 1;
            if (!__C)
            {
              v21 = 1;
            }

            if (v21)
            {
              return 4;
            }

            *__dst = xmmword_18F901E80;
            *a4 = xmmword_18F901E60;
            v19 = &xmmword_18F901E70;
            goto LABEL_66;
          }

          goto LABEL_123;
        }

        goto LABEL_74;
      }

      if (this > 6)
      {
        if (this != 7)
        {
          if (this != 8)
          {
            if (this != 9)
            {
LABEL_123:
              v54 = v8 ^ 1;
              if (!__C)
              {
                v54 = 1;
              }

              if (v54)
              {
                return 121;
              }

              memcpy(__dst, &unk_18F9144B4, 0x1E4uLL);
              memcpy(a4, &unk_18F914698, 0x1E4uLL);
              v53 = &unk_18F91487C;
              goto LABEL_127;
            }

            v18 = v8 ^ 1;
            if (!__C)
            {
              v18 = 1;
            }

            if ((v18 & 1) == 0)
            {
              memcpy(__dst, &unk_18F914004, 0x190uLL);
              memcpy(a4, &unk_18F914194, 0x190uLL);
              v17 = &unk_18F914324;
              goto LABEL_51;
            }

            return 100;
          }

          v52 = v8 ^ 1;
          if (!__C)
          {
            v52 = 1;
          }

          if ((v52 & 1) == 0)
          {
            memcpy(__dst, &unk_18F913C38, 0x144uLL);
            memcpy(a4, &unk_18F913D7C, 0x144uLL);
            v40 = &unk_18F913EC0;
            goto LABEL_119;
          }

          return 81;
        }

        v42 = v8 ^ 1;
        if (!__C)
        {
          v42 = 1;
        }

        if ((v42 & 1) == 0)
        {
          *(__dst + 12) = xmmword_18F9139F8;
          *(__dst + 13) = unk_18F913A08;
          *(__dst + 14) = xmmword_18F913A18;
          *(__dst + 15) = unk_18F913A28;
          *(__dst + 8) = xmmword_18F9139B8;
          *(__dst + 9) = unk_18F9139C8;
          *(__dst + 10) = xmmword_18F9139D8;
          *(__dst + 11) = unk_18F9139E8;
          *(__dst + 4) = xmmword_18F913978;
          *(__dst + 5) = unk_18F913988;
          *(__dst + 6) = xmmword_18F913998;
          *(__dst + 7) = unk_18F9139A8;
          *__dst = xmmword_18F913938;
          *(__dst + 1) = unk_18F913948;
          *(__dst + 2) = xmmword_18F913958;
          *(__dst + 3) = unk_18F913968;
          *(a4 + 12) = xmmword_18F913AF8;
          *(a4 + 13) = unk_18F913B08;
          *(a4 + 14) = xmmword_18F913B18;
          *(a4 + 15) = unk_18F913B28;
          *(a4 + 8) = xmmword_18F913AB8;
          *(a4 + 9) = unk_18F913AC8;
          *(a4 + 10) = xmmword_18F913AD8;
          *(a4 + 11) = unk_18F913AE8;
          *(a4 + 4) = xmmword_18F913A78;
          *(a4 + 5) = unk_18F913A88;
          *(a4 + 6) = xmmword_18F913A98;
          *(a4 + 7) = unk_18F913AA8;
          *a4 = xmmword_18F913A38;
          *(a4 + 1) = unk_18F913A48;
          *(a4 + 2) = xmmword_18F913A58;
          *(a4 + 3) = unk_18F913A68;
          v33 = &xmmword_18F913B38;
          goto LABEL_106;
        }

        return 64;
      }

      if (this != 5)
      {
        v22 = v8 ^ 1;
        if (!__C)
        {
          v22 = 1;
        }

        if ((v22 & 1) == 0)
        {
          __dst[48] = -1022566698;
          *(__dst + 8) = xmmword_18F91376C;
          *(__dst + 9) = unk_18F91377C;
          *(__dst + 10) = xmmword_18F91378C;
          *(__dst + 11) = unk_18F91379C;
          *(__dst + 4) = xmmword_18F91372C;
          *(__dst + 5) = unk_18F91373C;
          *(__dst + 6) = xmmword_18F91374C;
          *(__dst + 7) = unk_18F91375C;
          *__dst = xmmword_18F9136EC;
          *(__dst + 1) = unk_18F9136FC;
          *(__dst + 2) = xmmword_18F91370C;
          *(__dst + 3) = unk_18F91371C;
          a4[48] = 22.162;
          *(a4 + 8) = xmmword_18F913830;
          *(a4 + 9) = unk_18F913840;
          *(a4 + 10) = xmmword_18F913850;
          *(a4 + 11) = unk_18F913860;
          *(a4 + 4) = xmmword_18F9137F0;
          *(a4 + 5) = unk_18F913800;
          *(a4 + 6) = xmmword_18F913810;
          *(a4 + 7) = unk_18F913820;
          *a4 = xmmword_18F9137B0;
          *(a4 + 1) = unk_18F9137C0;
          *(a4 + 2) = xmmword_18F9137D0;
          *(a4 + 3) = unk_18F9137E0;
          __C[48] = 0.25211;
          v20 = &xmmword_18F913874;
          goto LABEL_73;
        }

        return 49;
      }

      v34 = v8 ^ 1;
      if (!__C)
      {
        v34 = 1;
      }

      if ((v34 & 1) == 0)
      {
        *(__dst + 2) = xmmword_18F91355C;
        *(__dst + 3) = unk_18F91356C;
        *(__dst + 8) = xmmword_18F9135BC;
        *(__dst + 6) = xmmword_18F91359C;
        *(__dst + 7) = unk_18F9135AC;
        *(__dst + 4) = xmmword_18F91357C;
        *(__dst + 5) = unk_18F91358C;
        *__dst = xmmword_18F91353C;
        *(__dst + 1) = unk_18F91354C;
        *(a4 + 2) = xmmword_18F9135EC;
        *(a4 + 3) = unk_18F9135FC;
        *a4 = xmmword_18F9135CC;
        *(a4 + 1) = unk_18F9135DC;
        *(a4 + 8) = xmmword_18F91364C;
        *(a4 + 6) = xmmword_18F91362C;
        *(a4 + 7) = unk_18F91363C;
        *(a4 + 4) = xmmword_18F91360C;
        *(a4 + 5) = unk_18F91361C;
        v30 = &xmmword_18F91365C;
        goto LABEL_88;
      }

      return 36;
    }

    if (__dst)
    {
      v11 = a4 == 0;
    }

    else
    {
      v11 = 1;
    }

    v8 = !v11 && __C != 0;
    if (this > 4)
    {
      if (this <= 6)
      {
        if (this != 5)
        {
          if (v8)
          {
            __dst[48] = 1127431944;
            *(__dst + 8) = xmmword_18F914EE8;
            *(__dst + 9) = unk_18F914EF8;
            *(__dst + 10) = xmmword_18F914F08;
            *(__dst + 11) = unk_18F914F18;
            *(__dst + 4) = xmmword_18F914EA8;
            *(__dst + 5) = unk_18F914EB8;
            *(__dst + 6) = xmmword_18F914EC8;
            *(__dst + 7) = unk_18F914ED8;
            *__dst = xmmword_18F914E68;
            *(__dst + 1) = unk_18F914E78;
            *(__dst + 2) = xmmword_18F914E88;
            *(__dst + 3) = unk_18F914E98;
            a4[48] = -71.28;
            *(a4 + 8) = xmmword_18F914FAC;
            *(a4 + 9) = unk_18F914FBC;
            *(a4 + 10) = xmmword_18F914FCC;
            *(a4 + 11) = unk_18F914FDC;
            *(a4 + 4) = xmmword_18F914F6C;
            *(a4 + 5) = unk_18F914F7C;
            *(a4 + 6) = xmmword_18F914F8C;
            *(a4 + 7) = unk_18F914F9C;
            *a4 = xmmword_18F914F2C;
            *(a4 + 1) = unk_18F914F3C;
            *(a4 + 2) = xmmword_18F914F4C;
            *(a4 + 3) = unk_18F914F5C;
            __C[48] = 0.25534;
            v20 = &xmmword_18F914FF0;
LABEL_73:
            v23 = v20[9];
            *(__C + 8) = v20[8];
            *(__C + 9) = v23;
            v24 = v20[11];
            *(__C + 10) = v20[10];
            *(__C + 11) = v24;
            v25 = v20[5];
            *(__C + 4) = v20[4];
            *(__C + 5) = v25;
            v26 = v20[7];
            *(__C + 6) = v20[6];
            *(__C + 7) = v26;
            v27 = v20[1];
            *__C = *v20;
            *(__C + 1) = v27;
            v28 = v20[2];
            v29 = v20[3];
            result = 49;
LABEL_113:
            *(__C + 2) = v28;
            *(__C + 3) = v29;
            return result;
          }

          return 49;
        }

        if (v8)
        {
          *(__dst + 2) = xmmword_18F914CD8;
          *(__dst + 3) = unk_18F914CE8;
          *(__dst + 8) = xmmword_18F914D38;
          *(__dst + 6) = xmmword_18F914D18;
          *(__dst + 7) = unk_18F914D28;
          *(__dst + 4) = xmmword_18F914CF8;
          *(__dst + 5) = unk_18F914D08;
          *__dst = xmmword_18F914CB8;
          *(__dst + 1) = unk_18F914CC8;
          *(a4 + 2) = xmmword_18F914D68;
          *(a4 + 3) = unk_18F914D78;
          *a4 = xmmword_18F914D48;
          *(a4 + 1) = unk_18F914D58;
          *(a4 + 8) = xmmword_18F914DC8;
          *(a4 + 6) = xmmword_18F914DA8;
          *(a4 + 7) = unk_18F914DB8;
          *(a4 + 4) = xmmword_18F914D88;
          *(a4 + 5) = unk_18F914D98;
          v30 = &xmmword_18F914DD8;
LABEL_88:
          v35 = v30[7];
          *(__C + 6) = v30[6];
          *(__C + 7) = v35;
          *(__C + 8) = v30[8];
          v36 = v30[3];
          *(__C + 2) = v30[2];
          *(__C + 3) = v36;
          v37 = v30[5];
          *(__C + 4) = v30[4];
          *(__C + 5) = v37;
          v38 = v30[1];
          result = 36;
          *__C = *v30;
          *(__C + 1) = v38;
          return result;
        }

        return 36;
      }

      switch(this)
      {
        case 7:
          if (v8)
          {
            *(__dst + 12) = xmmword_18F915174;
            *(__dst + 13) = unk_18F915184;
            *(__dst + 14) = xmmword_18F915194;
            *(__dst + 15) = unk_18F9151A4;
            *(__dst + 8) = xmmword_18F915134;
            *(__dst + 9) = unk_18F915144;
            *(__dst + 10) = xmmword_18F915154;
            *(__dst + 11) = unk_18F915164;
            *(__dst + 4) = xmmword_18F9150F4;
            *(__dst + 5) = unk_18F915104;
            *(__dst + 6) = xmmword_18F915114;
            *(__dst + 7) = unk_18F915124;
            *__dst = xmmword_18F9150B4;
            *(__dst + 1) = unk_18F9150C4;
            *(__dst + 2) = xmmword_18F9150D4;
            *(__dst + 3) = unk_18F9150E4;
            *(a4 + 12) = xmmword_18F915274;
            *(a4 + 13) = unk_18F915284;
            *(a4 + 14) = xmmword_18F915294;
            *(a4 + 15) = unk_18F9152A4;
            *(a4 + 8) = xmmword_18F915234;
            *(a4 + 9) = unk_18F915244;
            *(a4 + 10) = xmmword_18F915254;
            *(a4 + 11) = unk_18F915264;
            *(a4 + 4) = xmmword_18F9151F4;
            *(a4 + 5) = unk_18F915204;
            *(a4 + 6) = xmmword_18F915214;
            *(a4 + 7) = unk_18F915224;
            *a4 = xmmword_18F9151B4;
            *(a4 + 1) = unk_18F9151C4;
            *(a4 + 2) = xmmword_18F9151D4;
            *(a4 + 3) = unk_18F9151E4;
            v33 = &xmmword_18F9152B4;
LABEL_106:
            v43 = v33[13];
            *(__C + 12) = v33[12];
            *(__C + 13) = v43;
            v44 = v33[15];
            *(__C + 14) = v33[14];
            *(__C + 15) = v44;
            v45 = v33[9];
            *(__C + 8) = v33[8];
            *(__C + 9) = v45;
            v46 = v33[11];
            *(__C + 10) = v33[10];
            *(__C + 11) = v46;
            v47 = v33[5];
            *(__C + 4) = v33[4];
            *(__C + 5) = v47;
            v48 = v33[7];
            *(__C + 6) = v33[6];
            *(__C + 7) = v48;
            v49 = v33[1];
            *__C = *v33;
            *(__C + 1) = v49;
            v28 = v33[2];
            v29 = v33[3];
            result = 64;
            goto LABEL_113;
          }

          return 64;
        case 8:
          if (v8)
          {
            memcpy(__dst, &unk_18F9153B4, 0x144uLL);
            memcpy(a4, &unk_18F9154F8, 0x144uLL);
            v40 = &unk_18F91563C;
LABEL_119:
            memcpy(__C, v40, 0x144uLL);
          }

          return 81;
        case 9:
          if (v8)
          {
            memcpy(__dst, &unk_18F915780, 0x190uLL);
            memcpy(a4, &unk_18F915910, 0x190uLL);
            v17 = &unk_18F915AA0;
LABEL_51:
            memcpy(__C, v17, 0x190uLL);
          }

          return 100;
      }
    }

    else
    {
      if (this > 1)
      {
        if (this != 2)
        {
          if (this != 3)
          {
            if (v8)
            {
              __dst[24] = 1058111518;
              *__dst = xmmword_18F914B8C;
              *(__dst + 1) = unk_18F914B9C;
              *(__dst + 4) = xmmword_18F914BCC;
              *(__dst + 5) = unk_18F914BDC;
              *(__dst + 2) = xmmword_18F914BAC;
              *(__dst + 3) = unk_18F914BBC;
              *a4 = xmmword_18F914BF0;
              *(a4 + 1) = unk_18F914C00;
              *(a4 + 4) = xmmword_18F914C30;
              *(a4 + 5) = unk_18F914C40;
              *(a4 + 2) = xmmword_18F914C10;
              *(a4 + 3) = unk_18F914C20;
              a4[24] = 43.688;
              __C[24] = 0.50824;
              v10 = &xmmword_18F914C54;
              goto LABEL_33;
            }

            return 25;
          }

          if (v8)
          {
            *__dst = xmmword_18F914ACC;
            *(__dst + 1) = unk_18F914ADC;
            *(__dst + 2) = xmmword_18F914AEC;
            *(__dst + 3) = unk_18F914AFC;
            *a4 = xmmword_18F914B0C;
            *(a4 + 1) = unk_18F914B1C;
            *(a4 + 2) = xmmword_18F914B2C;
            *(a4 + 3) = unk_18F914B3C;
            v39 = &xmmword_18F914B4C;
LABEL_112:
            v51 = v39[1];
            *__C = *v39;
            *(__C + 1) = v51;
            v28 = v39[2];
            v29 = v39[3];
            result = 16;
            goto LABEL_113;
          }

          return 16;
        }

        if (v8)
        {
          __dst[8] = 1116271638;
          *__dst = xmmword_18F914A60;
          *(__dst + 1) = unk_18F914A70;
          a4[8] = -48.587;
          *a4 = xmmword_18F914A84;
          *(a4 + 1) = unk_18F914A94;
          v31 = 1068792731;
          v32 = &xmmword_18F914AA8;
LABEL_99:
          *(__C + 8) = v31;
          v15 = *v32;
          v16 = v32[1];
          result = 9;
          goto LABEL_100;
        }

        return 9;
      }

      if (!this)
      {
LABEL_74:
        if (v8)
        {
          *__dst = 0;
          *a4 = 0.0;
          *__C = 1.0;
        }

        return 1;
      }

      if (this == 1)
      {
        if (!v8)
        {
          return 4;
        }

        *__dst = xmmword_18F901E80;
        *a4 = xmmword_18F901E90;
        v19 = &xmmword_18F901EA0;
LABEL_66:
        *__C = *v19;
        return 4;
      }
    }

    if (!v8)
    {
      return 121;
    }

    memcpy(__dst, &unk_18F915C30, 0x1E4uLL);
    memcpy(a4, &unk_18F915E14, 0x1E4uLL);
    v53 = &unk_18F915FF8;
LABEL_127:
    memcpy(__C, v53, 0x1E4uLL);
    return 121;
  }

  return HOA::getTDesign(this, __dst, a4, __C, __C);
}

unsigned int *HOA::HOA(unsigned int *a1, HOA *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  *(a1 + 28) = 0;
  *(a1 + 50) = 0u;
  *(a1 + 54) = 0u;
  *(a1 + 62) = 0u;
  *(a1 + 37) = 0;
  *(a1 + 46) = 0u;
  *(a1 + 66) = 0u;
  *(a1 + 70) = 0u;
  *(a1 + 58) = 0u;
  v4 = (a1 + 58);
  v5 = a2;
  v6 = HOA::orderFromNumChannels(a2);
  v7 = v6;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 6) = 0uLL;
  *(a1 + 7) = 0uLL;
  *(a1 + 8) = 0uLL;
  *(a1 + 9) = 0uLL;
  *(a1 + 10) = 0uLL;
  a1[44] = 0;
  v9 = HOA::normalizationFromTag(a2);
  v10 = 0;
  *(a1 + 78) = 0u;
  *(a1 + 82) = 0u;
  *(a1 + 86) = 0u;
  a1[90] = v9;
  *(a1 + 364) = 1;
  if (v8 >= 4 && v9 == 2)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v69 = "HOA.cpp";
      v70 = 1024;
      v72 = 2080;
      v71 = 29;
      v73 = "RotationMatrix";
      v74 = 1024;
      v75 = 29;
      v76 = 1024;
      v77 = v8;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Trying to create a HOA rotation matrix of order = %d > 3 with FuMa normalization, capping to order 3", buf, 0x28u);
    }

    v8 = 3;
  }

  v11 = v8 + 1;
  *buf = 0;
  std::vector<float>::assign(a1 + 39, (8 * v11 * v11 - 2) * v11 / 6, buf, v10);
  v66 = v7;
  v67 = v5;
  if (v11 > (*(a1 + 44) - *(a1 + 42)) >> 4)
  {
    std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](v8 + 1);
  }

  v65 = a2;
  v12 = 0;
  v13 = 0;
  v14 = *(a1 + 43);
  v15 = 1;
  do
  {
    v16 = (v15 * v15);
    v17 = *(a1 + 39) + 4 * ((v12 * v13 - 2) * v13 / 6uLL);
    v18 = *(a1 + 44);
    if (v14 >= v18)
    {
      v19 = *(a1 + 42);
      v20 = (v14 - v19) >> 4;
      if ((v20 + 1) >> 60)
      {
        std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
      }

      v21 = v18 - v19;
      v22 = v21 >> 3;
      if (v21 >> 3 <= (v20 + 1))
      {
        v22 = v20 + 1;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF0)
      {
        v23 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v22;
      }

      if (v23)
      {
        std::allocator<std::span<float,18446744073709551615ul>>::allocate_at_least[abi:ne200100](v23);
      }

      v24 = (16 * v20);
      *v24 = v17;
      v24[1] = v16;
      v14 = (16 * v20 + 16);
      v25 = *(a1 + 42);
      v26 = *(a1 + 43) - v25;
      v27 = v24 - v26;
      memcpy(v24 - v26, v25, v26);
      v28 = *(a1 + 42);
      *(a1 + 42) = v27;
      *(a1 + 43) = v14;
      *(a1 + 44) = 0;
      if (v28)
      {
        operator delete(v28);
      }
    }

    else
    {
      *v14 = v17;
      v14[1] = v16;
      v14 += 2;
    }

    *(a1 + 43) = v14;
    ++v13;
    v15 += 2;
    v12 += 8;
  }

  while (v13 <= v8);
  *(a1 + 46) = 0;
  *(a1 + 47) = 0;
  *(a1 + 48) = 0;
  v29 = v66;
  a1[1] = v66;
  if (v66 == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v69 = "HOA.cpp";
      v70 = 1024;
      v71 = 662;
      v72 = 2080;
      v73 = "HOA";
      v74 = 1024;
      v75 = 662;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect order", buf, 0x22u);
      v29 = a1[1];
    }

    else
    {
      v29 = -1;
    }
  }

  if ((v29 + 1) * (v29 + 1) != v67 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    v69 = "HOA.cpp";
    v70 = 1024;
    v71 = 666;
    v72 = 2080;
    v73 = "HOA";
    v74 = 1024;
    v75 = 666;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Incorrect channel count (i.e. not consistent with HOA order definition Channels = (order+1)^2)", buf, 0x22u);
  }

  v30 = HOA::normalizationFromTag(v65);
  a1[76] = v30;
  v31 = a1[1];
  v32 = (v31 + 1) * (v31 + 1);
  a1[3] = v32;
  *a1 = v31;
  if (v30 == 2 && v31 >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v69 = "HOA.cpp";
      v70 = 1024;
      v72 = 2080;
      v71 = 684;
      v73 = "initialize";
      v74 = 1024;
      v75 = 684;
      v76 = 1024;
      v77 = v31;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; initializing a HOA instance with order = %d > 3 with FuMa normalization", buf, 0x28u);
    }

    v33 = 3;
LABEL_41:
    *a1 = v33;
    v32 = (v33 + 1) * (v33 + 1);
    goto LABEL_42;
  }

  if (v31 >= 0xB)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v69 = "HOA.cpp";
      v70 = 1024;
      v72 = 2080;
      v71 = 687;
      v73 = "initialize";
      v74 = 1024;
      v75 = 687;
      v76 = 1024;
      v77 = v31;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Warning; initializing a HOA instance with order = %d > 10", buf, 0x28u);
    }

    v33 = 10;
    goto LABEL_41;
  }

LABEL_42:
  a1[2] = v32;
  std::vector<int>::resize((a1 + 20), v32);
  v34 = 0;
  LODWORD(v35) = 0;
  v36 = *a1;
  v37 = a1[76];
  v38 = 1;
  v39.i32[0] = 1.0;
  v40 = *(a1 + 10);
  do
  {
    v41 = sqrtf((v34 * 2.0) + 1.0);
    v35 = v35;
    v42 = v38;
    do
    {
      if (v37)
      {
        if (v37 == 2)
        {
          v43 = 1.0 / (v41 * flt_18F902CA4[v35]);
        }

        else
        {
          v43 = 1.0 / v41;
        }
      }

      else
      {
        v43 = 1.0;
      }

      *(v40 + 4 * v35++) = v43;
      --v42;
    }

    while (v42);
    v38 += 2;
  }

  while (v34++ != v36);
  if (a1[2] != v35)
  {
    __assert_rtn("initialize", "HOA.cpp", 711, "k == mNumChannels");
  }

  *buf = 0;
  std::vector<float>::assign(a1 + 13, (v35 * v35), buf, v39);
  SphericalGrid = HOA::getSphericalGrid(a1[44], *a1, 0, 0, 0);
  a1[6] = SphericalGrid;
  std::vector<int>::resize((a1 + 52), SphericalGrid);
  std::vector<int>::resize(v4, a1[6]);
  std::vector<int>::resize((a1 + 64), a1[6]);
  HOA::getSphericalGrid(a1[44], *a1, *(a1 + 26), *(a1 + 29), *(a1 + 32));
  MEMORY[0x193AE08B0](*(a1 + 26), 1, &kDeg2Radf, *(a1 + 26), 1, a1[6]);
  MEMORY[0x193AE08B0](*(a1 + 29), 1, &kDeg2Radf, *(a1 + 29), 1, a1[6]);
  std::vector<int>::resize((a1 + 70), 3 * a1[6]);
  v46 = a1[6];
  if (v46)
  {
    v47 = *(a1 + 26);
    begin = v4->__begin_;
    v49 = (*(a1 + 35) + 8);
    do
    {
      v50 = *v47++;
      v51 = v50;
      v52 = *begin++;
      v53 = __sincosf_stret(v52);
      v54 = __sincosf_stret(v51);
      *(v49 - 2) = v54.__cosval * v53.__cosval;
      *(v49 - 1) = v54.__sinval * v53.__cosval;
      *v49 = v53.__sinval;
      v49 += 3;
      --v46;
    }

    while (v46);
  }

  if (a1[76] == 2)
  {
    std::vector<int>::resize((a1 + 92), a1[2] * a1[2]);
    v55 = a1[2];
    if (v55)
    {
      v56 = 0;
      v57 = 0;
      v58 = *(a1 + 46);
      v59 = &dword_18F902CE4;
      do
      {
        v60 = v59;
        v61 = v56;
        v62 = v55;
        do
        {
          v63 = *v60++;
          *(v58 + 4 * v61++) = v63;
          --v62;
        }

        while (v62);
        ++v57;
        v56 += v55;
        v59 += 16;
      }

      while (v57 != v55);
    }
  }

  *(a1 + 2) = 0;
  *(a1 + 28) = 1;
  return a1;
}

void sub_18F7360FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, HOA::RotationMatrix *a10, void **a11, void **a12, uint64_t a13, uint64_t a14, void **a15, uint64_t a16)
{
  v18 = v16[42];
  if (v18)
  {
    v16[43] = v18;
    operator delete(v18);
  }

  v19 = *a10;
  if (*a10)
  {
    v16[40] = v19;
    operator delete(v19);
  }

  v20 = *(a16 + 200);
  if (v20)
  {
    v16[36] = v20;
    operator delete(v20);
  }

  v21 = *(a16 + 176);
  if (v21)
  {
    v16[33] = v21;
    operator delete(v21);
  }

  v22 = *a15;
  if (*a15)
  {
    v16[30] = v22;
    operator delete(v22);
  }

  v23 = *(a16 + 128);
  if (v23)
  {
    v16[27] = v23;
    operator delete(v23);
  }

  v24 = *a11;
  if (*a11)
  {
    v16[24] = v24;
    operator delete(v24);
  }

  v25 = v16[19];
  if (v25)
  {
    v16[20] = v25;
    operator delete(v25);
  }

  v26 = v16[16];
  if (v26)
  {
    v16[17] = v26;
    operator delete(v26);
  }

  v27 = *(a16 + 24);
  if (v27)
  {
    v16[14] = v27;
    operator delete(v27);
  }

  v28 = *a16;
  if (*a16)
  {
    v16[11] = v28;
    operator delete(v28);
  }

  v29 = v16[7];
  if (v29)
  {
    v16[8] = v29;
    operator delete(v29);
  }

  v30 = *a12;
  if (*a12)
  {
    v16[5] = v30;
    operator delete(v30);
  }

  _Unwind_Resume(exception_object);
}

void HOA::~HOA(HOA *this)
{
  v2 = *(this + 46);
  if (v2)
  {
    *(this + 47) = v2;
    operator delete(v2);
  }

  v3 = *(this + 42);
  if (v3)
  {
    *(this + 43) = v3;
    operator delete(v3);
  }

  v4 = *(this + 39);
  if (v4)
  {
    *(this + 40) = v4;
    operator delete(v4);
  }

  v5 = *(this + 35);
  if (v5)
  {
    *(this + 36) = v5;
    operator delete(v5);
  }

  v6 = *(this + 32);
  if (v6)
  {
    *(this + 33) = v6;
    operator delete(v6);
  }

  v7 = *(this + 29);
  if (v7)
  {
    *(this + 30) = v7;
    operator delete(v7);
  }

  v8 = *(this + 26);
  if (v8)
  {
    *(this + 27) = v8;
    operator delete(v8);
  }

  v9 = *(this + 23);
  if (v9)
  {
    *(this + 24) = v9;
    operator delete(v9);
  }

  v10 = *(this + 19);
  if (v10)
  {
    *(this + 20) = v10;
    operator delete(v10);
  }

  v11 = *(this + 16);
  if (v11)
  {
    *(this + 17) = v11;
    operator delete(v11);
  }

  v12 = *(this + 13);
  if (v12)
  {
    *(this + 14) = v12;
    operator delete(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    *(this + 11) = v13;
    operator delete(v13);
  }

  v14 = *(this + 7);
  if (v14)
  {
    *(this + 8) = v14;
    operator delete(v14);
  }

  v15 = *(this + 4);
  if (v15)
  {
    *(this + 5) = v15;
    operator delete(v15);
  }
}

uint64_t HOA::sphericalHarmonics(HOA *this, float *a2, const float *a3, uint64_t a4, float *a5)
{
  v188 = *MEMORY[0x1E69E9840];
  if (a5 >= 0xB)
  {
    __assert_rtn("sphericalHarmonics", "HOA.cpp", 1160, "inOrder<=10u");
  }

  v6 = a3;
  v174 = (a5 + 1);
  v9 = MEMORY[0x1EEE9AC00](this);
  v11 = (&v171 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v173 = (&v171 - ((v13 + 15) & 0x7FFFFFFF0));
  v181 = v14;
  if (v6 >= 1)
  {
    v15 = v6 & 0x7FFFFFFF;
    v16 = v173;
    v17 = v15;
    do
    {
      v18 = *a2++;
      *v16++ = sinf(v18);
      --v15;
    }

    while (v15);
    v6 = v181;
    v12 = v17;
  }

  v180 = this;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v183 = 4 * v12;
  v186 = 4 * v6;
  v22 = 1;
  v23 = v12;
  v24 = v173;
  v178 = a4;
  v172 = v11;
  v179 = v12;
  do
  {
    v176 = v21;
    v182 = v20;
    v25 = 0;
    v184 = v22;
    v185 = v11;
    v187 = v19;
    do
    {
      if (v6 >= 1)
      {
        v26 = powf(-1.0, v25);
        v19 = v187;
        v27 = v26;
        if (v25 >= v187)
        {
          v28 = v187;
        }

        else
        {
          v28 = v25;
        }

        v29 = v24;
        v30 = v185;
        for (i = v23; i; --i)
        {
          v32 = *v29;
          if (v19 <= 4)
          {
            if (v19 <= 1)
            {
              v42 = 1.0;
              if (v19)
              {
                if (v19 == 1)
                {
                  if (v28)
                  {
                    v43 = 1.0 - (v32 * v32);
                    v44 = -fabsf(sqrtf(v43));
                    if (v43 == -INFINITY)
                    {
                      v42 = -INFINITY;
                    }

                    else
                    {
                      v42 = v44;
                    }
                  }

                  else
                  {
                    v42 = *v29;
                  }

                  goto LABEL_213;
                }

LABEL_73:
                v42 = 0.0;
              }
            }

            else
            {
              if (v19 != 2)
              {
                if (v19 != 3)
                {
                  if (v28 <= 1)
                  {
                    if (!v28)
                    {
                      v103 = powf(*v29, 4.0);
                      v19 = v187;
                      v36 = (((v32 * v32) * -30.0) + (v103 * 35.0)) + 3.0;
                      v51 = 0.125;
                      goto LABEL_156;
                    }

                    if (v28 == 1)
                    {
                      v35 = v32 * v32;
                      v36 = (v32 * 2.5) * (((v32 * v32) * -7.0) + 3.0);
                      goto LABEL_116;
                    }

LABEL_145:
                    v36 = (1.0 - (v32 * v32)) * (1.0 - (v32 * v32));
                    *&v102 = 105.0;
LABEL_155:
                    v51 = *&v102;
                    goto LABEL_156;
                  }

                  if (v28 == 2)
                  {
                    v51 = (((v32 * v32) * 7.0) + -1.0) * 7.5;
                    v36 = 1.0 - (v32 * v32);
                    goto LABEL_156;
                  }

                  if (v28 != 3)
                  {
                    goto LABEL_145;
                  }

                  v59 = v32 * -105.0;
                  v60 = powf(1.0 - (v32 * v32), 1.5);
                  v19 = v187;
                  goto LABEL_152;
                }

                if (v28 == 2)
                {
                  v36 = v32 * 15.0;
                  v51 = 1.0 - (v32 * v32);
                  goto LABEL_156;
                }

                if (v28 != 1)
                {
                  if (v28)
                  {
                    v45 = powf(1.0 - (v32 * v32), 1.5);
                    v46 = -15.0;
                  }

                  else
                  {
                    v45 = (v32 * -3.0) + (powf(*v29, 3.0) * 5.0);
                    v46 = 0.5;
                  }

                  goto LABEL_211;
                }

                v74 = (((v32 * v32) * -5.0) + 1.0) * 1.5;
                v75 = 1.0 - (v32 * v32);
                v76 = fabsf(sqrtf(v75));
                v54 = v75 == -INFINITY;
                v77 = INFINITY;
                if (!v54)
                {
                  v77 = v76;
                }

                goto LABEL_150;
              }

              if (v28 == 2)
              {
                v42 = (1.0 - (v32 * v32)) * 3.0;
              }

              else
              {
                if (v28 == 1)
                {
                  v36 = v32 * -3.0;
                  v35 = v32 * v32;
LABEL_116:
                  v78 = 1.0 - v35;
                  v79 = fabsf(sqrtf(v78));
                  v54 = v78 == -INFINITY;
                  v51 = INFINITY;
                  if (!v54)
                  {
                    v51 = v79;
                  }

                  goto LABEL_156;
                }

                v42 = 0.0;
                if (!v28)
                {
                  v36 = ((v32 * v32) * 3.0) + -1.0;
                  v51 = 0.5;
                  goto LABEL_156;
                }
              }
            }
          }

          else if (v19 > 7)
          {
            if (v19 == 8)
            {
              if (v28 <= 3)
              {
                if (v28 <= 1)
                {
                  if (!v28)
                  {
                    v116 = powf(*v29, 8.0);
                    v117 = (powf(v32, 6.0) * -12012.0) + (v116 * 6435.0);
                    v118 = ((v117 + (powf(v32, 4.0) * 6930.0)) + ((v32 * v32) * -1260.0)) + 35.0;
                    goto LABEL_180;
                  }

                  if (v28 == 1)
                  {
                    v52 = 1.0 - (v32 * v32);
                    v53 = fabsf(sqrtf(v52));
                    v54 = v52 == -INFINITY;
                    v55 = INFINITY;
                    if (!v54)
                    {
                      v55 = v53;
                    }

                    v56 = (v32 * -0.5625) * v55;
                    v57 = powf(*v29, 6.0);
                    v58 = (((powf(v32, 4.0) * -1001.0) + (v57 * 715.0)) + ((v32 * v32) * 385.0)) + -35.0;
                    goto LABEL_131;
                  }

LABEL_178:
                  v45 = powf(1.0 - (v32 * v32), 4.0);
                  v46 = 2027000.0;
                  goto LABEL_211;
                }

                if (v28 == 2)
                {
                  v37 = v32 * v32;
                  v38 = (1.0 - (v32 * v32)) * 19.688;
                  v119 = powf(*v29, 6.0);
                  v40 = (powf(v32, 4.0) * -143.0) + (v119 * 143.0);
                  v41 = 33.0;
LABEL_175:
                  v47 = (v40 + (v37 * v41)) + -1.0;
                  goto LABEL_176;
                }

                v48 = (v32 * -433.12) * powf(1.0 - (v32 * v32), 1.5);
                v80 = (((v32 * v32) * -26.0) + (powf(v32, 4.0) * 39.0)) + 3.0;
LABEL_126:
                v42 = v48 * v80;
                goto LABEL_212;
              }

              if (v28 <= 5)
              {
                if (v28 != 4)
                {
                  v61 = v32 * -67568.0;
                  v62 = v32 * v32;
                  v33 = v61 * powf(1.0 - v62, 2.5);
                  v63 = 5.0;
                  goto LABEL_208;
                }

                v68 = ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32))) * 1299.4;
                v69 = (((v32 * v32) * -26.0) + (powf(*v29, 4.0) * 65.0)) + 1.0;
                goto LABEL_185;
              }

              if (v28 == 6)
              {
                v62 = v32 * v32;
                v33 = powf(1.0 - v62, 3.0) * 67568.0;
                v63 = 15.0;
                goto LABEL_208;
              }

              if (v28 != 7)
              {
                goto LABEL_178;
              }

              v48 = v32 * -2027000.0;
              v49 = 1.0 - (v32 * v32);
              v50 = 3.5;
LABEL_125:
              v80 = powf(v49, v50);
              goto LABEL_126;
            }

            if (v19 == 9)
            {
              if (v28 <= 3)
              {
                if (v28 <= 1)
                {
                  if (v28)
                  {
                    if (v28 != 1)
                    {
                      goto LABEL_190;
                    }

                    v64 = 1.0 - (v32 * v32);
                    v65 = fabsf(sqrtf(v64)) * -0.35156;
                    if (v64 == -INFINITY)
                    {
                      v38 = -INFINITY;
                    }

                    else
                    {
                      v38 = v65;
                    }

                    v66 = powf(*v29, 8.0);
                    v67 = (powf(v32, 6.0) * -4004.0) + (v66 * 2431.0);
                    v47 = ((v67 + (powf(v32, 4.0) * 2002.0)) + ((v32 * v32) * -308.0)) + 7.0;
LABEL_176:
                    v42 = v38 * v47;
                    goto LABEL_212;
                  }

                  v120 = powf(*v29, 9.0);
                  v121 = (powf(v32, 7.0) * -25740.0) + (v120 * 12155.0);
                  v122 = v121 + (powf(v32, 5.0) * 18018.0);
                  v118 = (v122 + (powf(v32, 3.0) * -4620.0)) + (v32 * 315.0);
LABEL_180:
                  v42 = v118 * 0.0078125;
                  goto LABEL_212;
                }

                if (v28 != 2)
                {
                  v81 = v32 * v32;
                  v82 = 1.0 - (v32 * v32);
                  v83 = fabsf(sqrtf(v82)) * 216.56;
                  v54 = v82 == -INFINITY;
                  v84 = INFINITY;
                  if (!v54)
                  {
                    v84 = v83;
                  }

                  v56 = (v81 + -1.0) * v84;
                  v85 = powf(*v29, 6.0);
                  v58 = (((powf(v32, 4.0) * -195.0) + (v85 * 221.0)) + (v81 * 39.0)) + -1.0;
LABEL_131:
                  v42 = v58 * v56;
                  goto LABEL_212;
                }

                v68 = ((v32 * v32) + -1.0) * -30.938;
                v123 = powf(*v29, 7.0);
                v124 = (powf(v32, 5.0) * -273.0) + (v123 * 221.0);
                v97 = v124 + (powf(v32, 3.0) * 91.0);
                v98 = -7.0;
LABEL_182:
                v69 = v97 + (v32 * v98);
                goto LABEL_185;
              }

              if (v28 <= 5)
              {
                if (v28 != 4)
                {
                  v86 = v32 * v32;
                  v87 = 1.0 - (v32 * v32);
                  v88 = fabsf(sqrtf(v87)) * -16892.0;
                  if (v87 == -INFINITY)
                  {
                    v89 = -INFINITY;
                  }

                  else
                  {
                    v89 = v88;
                  }

                  v90 = ((v86 + -1.0) * (v86 + -1.0)) * v89;
                  v91 = ((v86 * -30.0) + (powf(*v29, 4.0) * 85.0)) + 1.0;
                  goto LABEL_206;
                }

                v68 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * 16892.0;
                v129 = powf(*v29, 5.0);
                v69 = ((powf(v32, 3.0) * -10.0) + (v129 * 17.0)) + v32;
                goto LABEL_185;
              }

              if (v28 != 6)
              {
                if (v28 == 7)
                {
                  v62 = v32 * v32;
                  v130 = fabsf(sqrtf(1.0 - v62)) * 1013500.0;
                  if ((1.0 - v62) == -INFINITY)
                  {
                    v131 = INFINITY;
                  }

                  else
                  {
                    v131 = v130;
                  }

                  v33 = powf(v62 + -1.0, 3.0) * v131;
                  v63 = 17.0;
                  goto LABEL_208;
                }

                if (v28 == 8)
                {
                  v48 = v32 * 34459000.0;
                  v49 = (v32 * v32) + -1.0;
                  v50 = 4.0;
                  goto LABEL_125;
                }

LABEL_190:
                v45 = powf(1.0 - (v32 * v32), 4.5);
                v46 = -34459000.0;
                goto LABEL_211;
              }

              v125 = powf((v32 * v32) + -1.0, 3.0) * -337840.0;
              v126 = powf(v32, 3.0);
              v19 = v187;
              v127 = v32 * -3.0;
              v128 = 17.0;
              goto LABEL_201;
            }

            if (v19 != 10)
            {
              goto LABEL_73;
            }

            if (v28 > 4)
            {
              if (v28 <= 6)
              {
                if (v28 != 5)
                {
                  v68 = powf((v32 * v32) + -1.0, 3.0) * -84459.0;
                  v99 = powf(v32, 4.0);
                  v100 = (v32 * v32) * -102.0;
                  v101 = 323.0;
                  goto LABEL_166;
                }

                v135 = 1.0 - (v32 * v32);
                v136 = fabsf(sqrtf(v135)) * -16892.0;
                if (v135 == -INFINITY)
                {
                  v137 = -INFINITY;
                }

                else
                {
                  v137 = v136;
                }

                v90 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * v137;
                v138 = powf(*v29, 5.0);
                v139 = (powf(v32, 3.0) * -170.0) + (v138 * 323.0);
                v140 = 15.0;
LABEL_205:
                v91 = v139 + (v32 * v140);
                goto LABEL_206;
              }

              if (v28 != 7)
              {
                if (v28 != 8)
                {
                  if (v28 == 9)
                  {
                    v48 = v32 * -654730000.0;
                    v49 = 1.0 - (v32 * v32);
                    v50 = 4.5;
                    goto LABEL_125;
                  }

LABEL_210:
                  v45 = powf((v32 * v32) + -1.0, 5.0);
                  v46 = -654730000.0;
                  goto LABEL_211;
                }

                v62 = v32 * v32;
                v33 = powf(v62 + -1.0, 4.0) * 17230000.0;
                v63 = 19.0;
LABEL_208:
                v34 = (v62 * v63) + -1.0;
LABEL_209:
                v42 = v34 * v33;
                goto LABEL_212;
              }

              v144 = 1.0 - (v32 * v32);
              v145 = fabsf(sqrtf(v144)) * 5743200.0;
              if (v144 == -INFINITY)
              {
                v146 = INFINITY;
              }

              else
              {
                v146 = v145;
              }

              v125 = powf((v32 * v32) + -1.0, 3.0) * v146;
              v126 = powf(v32, 3.0);
              v19 = v187;
              v127 = v32 * -3.0;
              v128 = 19.0;
LABEL_201:
              v42 = (v127 + (v126 * v128)) * v125;
              goto LABEL_213;
            }

            if (v28 <= 1)
            {
              if (!v28)
              {
                v132 = powf(*v29, 10.0);
                v133 = (powf(v32, 8.0) * -109400.0) + (v132 * 46189.0);
                v134 = v133 + (powf(v32, 6.0) * 90090.0);
                v45 = ((v134 + (powf(v32, 4.0) * -30030.0)) + ((v32 * v32) * 3465.0)) + -63.0;
                v46 = 0.0039062;
                goto LABEL_211;
              }

              if (v28 != 1)
              {
                goto LABEL_210;
              }

              v92 = 1.0 - (v32 * v32);
              v93 = fabsf(sqrtf(v92)) * -0.42969;
              if (v92 == -INFINITY)
              {
                v68 = -INFINITY;
              }

              else
              {
                v68 = v93;
              }

              v94 = powf(*v29, 9.0);
              v95 = (powf(v32, 7.0) * -7956.0) + (v94 * 4199.0);
              v96 = v95 + (powf(v32, 5.0) * 4914.0);
              v97 = v96 + (powf(v32, 3.0) * -1092.0);
              v98 = 63.0;
              goto LABEL_182;
            }

            if (v28 != 2)
            {
              if (v28 == 3)
              {
                v147 = 1.0 - (v32 * v32);
                v148 = fabsf(sqrtf(v147)) * 402.19;
                v54 = v147 == -INFINITY;
                v149 = INFINITY;
                if (!v54)
                {
                  v149 = v148;
                }

                v90 = ((v32 * v32) + -1.0) * v149;
                v150 = powf(*v29, 7.0);
                v151 = (powf(v32, 5.0) * -357.0) + (v150 * 323.0);
                v139 = v151 + (powf(v32, 3.0) * 105.0);
                v140 = -7.0;
                goto LABEL_205;
              }

              v37 = v32 * v32;
              v38 = (((v32 * v32) + -1.0) * ((v32 * v32) + -1.0)) * 2815.3;
              v39 = powf(*v29, 6.0);
              v40 = (powf(v32, 4.0) * -255.0) + (v39 * 323.0);
              v41 = 45.0;
              goto LABEL_175;
            }

            v141 = powf(*v29, 8.0);
            v142 = (powf(v32, 6.0) * -6188.0) + (v141 * 4199.0);
            v143 = powf(v32, 4.0);
            v19 = v187;
            v42 = (((v32 * v32) + -1.0) * -3.8672) * (((v142 + (v143 * 2730.0)) + ((v32 * v32) * -364.0)) + 7.0);
          }

          else
          {
            if (v19 == 5)
            {
              if (v28 <= 1)
              {
                if (v28)
                {
                  if (v28 == 1)
                  {
                    v70 = 1.0 - (v32 * v32);
                    v71 = fabsf(sqrtf(v70)) * -1.875;
                    if (v70 == -INFINITY)
                    {
                      v72 = -INFINITY;
                    }

                    else
                    {
                      v72 = v71;
                    }

                    v73 = powf(*v29, 4.0);
                    v19 = v187;
                    v42 = ((((v32 * v32) * -14.0) + (v73 * 21.0)) + 1.0) * v72;
                    goto LABEL_213;
                  }

LABEL_153:
                  v36 = powf(1.0 - (v32 * v32), 2.5);
                  v19 = v187;
                  v51 = -945.0;
LABEL_156:
                  v42 = v36 * v51;
                  goto LABEL_213;
                }

                v59 = v32 * 0.125;
                v106 = powf(*v29, 4.0);
                v19 = v187;
                v60 = (((v32 * v32) * -70.0) + (v106 * 63.0)) + 15.0;
LABEL_152:
                v42 = v59 * v60;
                goto LABEL_213;
              }

              switch(v28)
              {
                case 2:
                  v77 = (v32 * 52.5) * (1.0 - (v32 * v32));
                  v74 = ((v32 * v32) * 3.0) + -1.0;
                  break;
                case 3:
                  v104 = v32 * v32;
                  v105 = powf(1.0 - v104, 1.5);
                  v19 = v187;
                  v77 = v105 * -52.5;
                  v74 = (v104 * 9.0) + -1.0;
                  break;
                case 4:
                  v36 = v32 * 945.0;
                  v51 = (1.0 - (v32 * v32)) * (1.0 - (v32 * v32));
                  goto LABEL_156;
                default:
                  goto LABEL_153;
              }

LABEL_150:
              v42 = v74 * v77;
              goto LABEL_213;
            }

            if (v19 == 6)
            {
              if (v28 > 2)
              {
                switch(v28)
                {
                  case 3:
                    v42 = powf(1.0 - (v32 * v32), 1.5) * (((((v32 * v32) * 11.0) + -3.0) * -157.5) * v32);
                    goto LABEL_212;
                  case 4:
                    v46 = ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32))) * 472.5;
                    v45 = ((v32 * v32) * 11.0) + -1.0;
                    goto LABEL_211;
                  case 5:
                    v48 = v32 * -10395.0;
                    v49 = 1.0 - (v32 * v32);
                    v50 = 2.5;
                    goto LABEL_125;
                }

                goto LABEL_158;
              }

              if (v28)
              {
                if (v28 == 1)
                {
                  v45 = (v32 * -2.625) * ((((v32 * v32) * -30.0) + (powf(*v29, 4.0) * 33.0)) + 5.0);
                  v109 = 1.0 - (v32 * v32);
                  v110 = fabsf(sqrtf(v109));
                  v54 = v109 == -INFINITY;
                  v46 = INFINITY;
                  if (!v54)
                  {
                    v46 = v110;
                  }

                  goto LABEL_211;
                }

                if (v28 == 2)
                {
                  v38 = (1.0 - (v32 * v32)) * 13.125;
                  v47 = (((v32 * v32) * -18.0) + (powf(*v29, 4.0) * 33.0)) + 1.0;
                  goto LABEL_176;
                }

LABEL_158:
                v45 = powf(1.0 - (v32 * v32), 3.0);
                v46 = 10395.0;
                goto LABEL_211;
              }

              v107 = powf(*v29, 6.0);
              v108 = powf(v32, 4.0);
              v19 = v187;
              v36 = (((v108 * -315.0) + (v107 * 231.0)) + ((v32 * v32) * 105.0)) + -5.0;
              *&v102 = 0.0625;
              goto LABEL_155;
            }

            if (v28 > 2)
            {
              if (v28 <= 4)
              {
                if (v28 != 3)
                {
                  v33 = (v32 * 1732.5) * ((1.0 - (v32 * v32)) * (1.0 - (v32 * v32)));
                  v34 = ((v32 * v32) * 13.0) + -3.0;
                  goto LABEL_209;
                }

                v68 = powf(1.0 - (v32 * v32), 1.5) * -39.375;
                v99 = powf(v32, 4.0);
                v100 = (v32 * v32) * -66.0;
                v101 = 143.0;
LABEL_166:
                v69 = (v100 + (v99 * v101)) + 3.0;
LABEL_185:
                v42 = v68 * v69;
                goto LABEL_212;
              }

              if (v28 == 5)
              {
                v62 = v32 * v32;
                v33 = powf(1.0 - v62, 2.5) * -5197.5;
                v63 = 13.0;
                goto LABEL_208;
              }

              if (v28 != 6)
              {
                goto LABEL_164;
              }

              v48 = v32 * 135140.0;
              v49 = 1.0 - (v32 * v32);
              v50 = 3.0;
              goto LABEL_125;
            }

            if (v28)
            {
              if (v28 != 1)
              {
                if (v28 == 2)
                {
                  v68 = (v32 * 7.875) * (1.0 - (v32 * v32));
                  v69 = (((v32 * v32) * -110.0) + (powf(*v29, 4.0) * 143.0)) + 15.0;
                  goto LABEL_185;
                }

LABEL_164:
                v45 = powf(1.0 - (v32 * v32), 3.5);
                v46 = -135140.0;
LABEL_211:
                v42 = v45 * v46;
LABEL_212:
                v19 = v187;
                goto LABEL_213;
              }

              v113 = 1.0 - (v32 * v32);
              v114 = fabsf(sqrtf(v113)) * -0.4375;
              if (v113 == -INFINITY)
              {
                v90 = -INFINITY;
              }

              else
              {
                v90 = v114;
              }

              v115 = powf(*v29, 6.0);
              v91 = (((powf(v32, 4.0) * -495.0) + (v115 * 429.0)) + ((v32 * v32) * 135.0)) + -5.0;
LABEL_206:
              v42 = v91 * v90;
              goto LABEL_212;
            }

            v111 = (powf(*v29, 6.0) * 429.0);
            v112 = powf(v32, 4.0);
            v19 = v187;
            v42 = (v111 + v112 * -693.0 + ((v32 * v32) * 315.0) + -35.0) * (v32 * 0.0625);
          }

LABEL_213:
          *v30++ = v27 * v42;
          ++v29;
        }
      }

      v152 = v184;
      v185 = (v185 + v183);
      ++v25;
    }

    while (v25 != v184);
    result = v176;
    v154 = v176 + v19;
    v155 = v182;
    v156 = v182;
    do
    {
      while (1)
      {
        v157 = v156 >= 0 ? v156 : -v156;
        if (v6 >= 1)
        {
          break;
        }

        if (v152 == ++v156)
        {
          v161 = v19 + 1;
          goto LABEL_231;
        }
      }

      v158 = 0;
      v159 = sqrtf((((v19 * 2.0) + 1.0) * flt_18F9030E4[v19 - v157]) * flt_18F903138[(v157 + v19)]);
      v160 = &v11[(v157 * v6)];
      do
      {
        *(a4 + 4 * (v154 + v156) * v6 + 4 * v158) = v159 * *&v160[4 * v158];
        ++v158;
      }

      while (v23 != v158);
      ++v156;
    }

    while (v152 != v156);
    v162 = 0;
    v175 = v19 + 1;
    v185 = (a4 + v186 * (v19 + 1 + result));
    v177 = v6 * result;
    do
    {
      v163 = v180;
      v164 = v181;
      v165 = v182;
      if (v19)
      {
        v166 = 0;
        v167 = v177;
        v168 = v185;
        v169 = v187;
        v170 = v178 + 4 * v162;
        do
        {
          *v168 = *v168 * (cosf(*(v163 + v162) * ++v166) * 1.4142);
          *(v170 + 4 * v167) = *(v170 + 4 * v167) * (sinf(-(*(v163 + v162) * v169--)) * 1.4142);
          v168 = (v168 + v186);
          v167 += v164;
        }

        while (v165 + v166);
      }

      ++v162;
      ++v185;
      v23 = v179;
      v19 = v187;
    }

    while (v162 != v179);
    a4 = v178;
    v6 = v181;
    v155 = v182;
    v11 = v172;
    v24 = v173;
    result = v176;
    v152 = v184;
    v161 = v175;
LABEL_231:
    v21 = result + 2 * v19 + 1;
    v22 = v152 + 1;
    v20 = v155 - 1;
    v19 = v161;
  }

  while (v161 != v174);
  return result;
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

void sub_18F737A58(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HOA::createDecoder(unsigned int *a1, void *a2, void *a3)
{
  v398 = *MEMORY[0x1E69E9840];
  if ((a1[7] & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *v373 = 136315906;
    *__N = "HOA.cpp";
    *&__N[8] = 1024;
    *&__N[10] = 948;
    *&__N[14] = 2080;
    *&__N[16] = "createDecoder";
    *&__N[24] = 1024;
    *&__N[26] = 948;
    v44 = MEMORY[0x1E69E9C10];
    v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; HOA object was not initialized";
LABEL_40:
    _os_log_impl(&dword_18F5DF000, v44, OS_LOG_TYPE_ERROR, v45, v373, 0x22u);
    return 4294967246;
  }

  v4 = a2[1] - *a2;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      return 4294967246;
    }

    *v373 = 136315906;
    *__N = "HOA.cpp";
    *&__N[8] = 1024;
    *&__N[10] = 953;
    *&__N[14] = 2080;
    *&__N[16] = "createDecoder";
    *&__N[24] = 1024;
    *&__N[26] = 953;
    v44 = MEMORY[0x1E69E9C10];
    v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Empty azimuth/elevation";
    goto LABEL_40;
  }

  if (v4 != a3[1] - *a3)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *v373 = 136315906;
      *__N = "HOA.cpp";
      *&__N[8] = 1024;
      *&__N[10] = 958;
      *&__N[14] = 2080;
      *&__N[16] = "createDecoder";
      *&__N[24] = 1024;
      *&__N[26] = 958;
      v44 = MEMORY[0x1E69E9C10];
      v45 = "%25s:%-5d CADSPUtility:%s:%d: HOA Error; Inconsistent azimuth/elevation size";
      goto LABEL_40;
    }

    return 4294967246;
  }

  v7 = v4 >> 2;
  a1[5] = v7;
  std::vector<int>::resize((a1 + 32), v7);
  std::vector<int>::resize((a1 + 38), a1[5]);
  MEMORY[0x193AE08B0](*a2, 1, &kDeg2Radf, *(a1 + 16), 1, a1[5]);
  *&v8 = MEMORY[0x193AE08B0](*a3, 1, &kDeg2Radf, *(a1 + 19), 1, a1[5]);
  v9 = a1[2] * a1[5];
  *v373 = 0;
  std::vector<float>::assign(a1 + 7, v9, v373, v8);
  if (!*a1)
  {
    v50 = a1[5];
    if (v50)
    {
      *v10.i32 = 1.0 / sqrtf(v50);
      v51 = (v50 + 3) & 0x1FFFFFFFCLL;
      v52 = vdupq_n_s64(v50 - 1);
      v53 = (*(a1 + 7) + 8);
      v54 = 1;
      do
      {
        v55 = vdupq_n_s64(v54 - 1);
        v56 = vmovn_s64(vcgeq_u64(v52, vorrq_s8(v55, xmmword_18F9016C0)));
        if (vuzp1_s16(v56, v10).u8[0])
        {
          *(v53 - 2) = v10.i32[0];
        }

        if (vuzp1_s16(v56, v10).i8[2])
        {
          *(v53 - 1) = v10.i32[0];
        }

        if (vuzp1_s16(v10, vmovn_s64(vcgeq_u64(v52, vorrq_s8(v55, xmmword_18F9016B0)))).i32[1])
        {
          *v53 = v10.i32[0];
          v53[1] = v10.i32[0];
        }

        v54 += 4;
        v53 += 4;
        v51 -= 4;
      }

      while (v51);
    }

    else
    {
      LODWORD(v51) = 0;
    }

    v46 = 0;
    goto LABEL_351;
  }

  v342 = 0;
  v343 = 0;
  v341 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v341, *a2, a2[1], (a2[1] - *a2) >> 2);
  v338 = 0;
  v339 = 0;
  v340 = 0;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(&v338, *a3, a3[1], (a3[1] - *a3) >> 2);
  v335 = 0;
  v336 = 0;
  v337 = 0;
  v332 = 0;
  v333 = 0;
  v334 = 0;
  v11 = v338;
  *v373 = 1;
  *__N = (v339 - v338) >> 2;
  memset(&__N[4], 0, 32);
  v375 = 0u;
  std::vector<float>::vector[abi:ne200100](&__A, (3 * *__N));
  std::vector<float>::vector[abi:ne200100](&v378, 6uLL);
  __src = 0u;
  v381 = 0u;
  v380 = 0u;
  v379 = 0u;
  v383 = 0;
  v384[0] = v384;
  v384[1] = v384;
  v384[2] = 0;
  v385[0] = v385;
  v385[1] = v385;
  v385[2] = 0;
  std::__list_imp<ID3FrameInfo>::clear(v384);
  std::__list_imp<ID3FrameInfo>::clear(v385);
  v394 = 0;
  v386 = 0u;
  v387 = 0u;
  v388 = 0u;
  v389 = 0u;
  v390 = 0;
  if (*__N)
  {
    v12 = v341;
    if (*__N == (v342 - v341) >> 2)
    {
      v13 = 0;
      v14 = 0;
      v15 = *&__N[4];
      *&__N[12] = *&__N[4];
      do
      {
        v16 = v12[v14];
        v17 = v11[v14];
        if (v15 >= *&__N[20])
        {
          v18 = *&__N[4];
          v19 = v15 - *&__N[4];
          v20 = (v15 - *&__N[4]) >> 3;
          v21 = v20 + 1;
          if ((v20 + 1) >> 61)
          {
            std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
          }

          v22 = *&__N[20] - *&__N[4];
          if ((*&__N[20] - *&__N[4]) >> 2 > v21)
          {
            v21 = v22 >> 2;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF8)
          {
            v23 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            if (!(v23 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v24 = v20;
          v25 = (8 * v20);
          *v25 = v16;
          v25[1] = v17;
          v15 = (8 * v20 + 8);
          v26 = &v25[-2 * v24];
          memcpy(v26, v18, v19);
          *&__N[4] = v26;
          *&__N[12] = v15;
          *&__N[20] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v15 = v16;
          v15[1] = v17;
          v15 += 2;
          v12 = v341;
          v11 = v338;
        }

        *&__N[12] = v15;
        v27 = __A;
        v28 = &__A[v13];
        v29 = *&v12[v14] * 0.0174532925;
        v30 = __sincos_stret(*&v11[v14] * 0.0174532925);
        v31 = __sincos_stret(v29);
        v32 = v31.__cosval * v30.__cosval;
        v33 = v31.__sinval * v30.__cosval;
        *v28 = v32;
        v28[1] = v33;
        sinval = v30.__sinval;
        v28[2] = sinval;
        ++v14;
        v13 += 3;
      }

      while (v14 < *__N);
      v35 = (v377 - v27) >> 2;
      std::vector<float>::vector[abi:ne200100](buf, v35 / 3);
      std::vector<float>::vector[abi:ne200100](&__C, v35 / 3);
      std::vector<float>::vector[abi:ne200100](&__p, v35 / 3);
      v36 = *buf;
      v37 = *&__C.f64[0];
      v38 = __p;
      if (v35 >= 3)
      {
        v39 = 0;
        v40 = 2;
        v41 = __A;
        do
        {
          *(v36 + v39) = v41[v40 - 2];
          v37[v39] = v41[v40 - 1];
          v38[v39++] = v41[v40];
          v40 += 3;
        }

        while (v35 / 3 > v39);
      }

      duplicate_vertex = VBAP::find_duplicate_vertex(v36, v37, v38, (v35 / 3));
      if (__p)
      {
        v372 = __p;
        operator delete(__p);
      }

      if (*&__C.f64[0])
      {
        __C.f64[1] = __C.f64[0];
        operator delete(*&__C.f64[0]);
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

      if (duplicate_vertex)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          *&buf[4] = "VBAP.cpp";
          *&buf[12] = 1024;
          *&buf[14] = 121;
          *&buf[18] = 2080;
          *&buf[20] = "initialize";
          *&buf[28] = 1024;
          *&buf[30] = 121;
          _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Duplicate vertices were found", buf, 0x22u);
        }

        goto LABEL_228;
      }

      if (*&__N[12] - *&__N[4] == 16)
      {
        LODWORD(__C.f64[0]) = 0;
        vDSP_distancesq(__A, 1, __A + 3, 1, &__C, 3uLL);
        *v43.i32 = fabsf(*__C.f64 + -4.0);
        if (*v43.i32 < 0.00001)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            *&buf[4] = "VBAP.cpp";
            *&buf[12] = 1024;
            *&buf[14] = 130;
            *&buf[18] = 2080;
            *&buf[20] = "initialize";
            *&buf[28] = 1024;
            *&buf[30] = 130;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%25s:%-5d CADSPUtility:%s:%d: Diametrically opposed speakers; No need to generate convex hull", buf, 0x22u);
          }

          LOBYTE(v394) = 1;
          goto LABEL_227;
        }

        LOBYTE(v394) = 0;
      }

      if (*__N == 1)
      {
        v393 = 1;
        *buf = 0;
        std::vector<float>::resize(&v378.__begin_, 0, buf, v43);
        goto LABEL_227;
      }

      v57 = v377 - __A;
      v58 = ((v377 - __A) >> 2) / 3uLL;
      std::vector<double>::vector[abi:ne200100](buf, v58);
      std::vector<double>::vector[abi:ne200100](&__C, v58);
      std::vector<double>::vector[abi:ne200100](&__p, v58);
      v66 = *buf;
      v67 = *&__C.f64[0];
      v68 = __p;
      if ((v57 >> 2) >= 3)
      {
        v70 = 0;
        if (v58 <= 1)
        {
          v71 = 1;
        }

        else
        {
          v71 = v58;
        }

        v72 = __A + 2;
        v73 = 8 * v71;
        do
        {
          v66[v70 / 8] = *(v72 - 2);
          v67[v70 / 8] = *(v72 - 1);
          v74 = *v72;
          v72 += 3;
          v75 = v74;
          v68[v70 / 8] = v74;
          v70 += 8;
        }

        while (v73 != v70);
        v69 = CDelaunayTriangles3D::check_coplanar(v66, v67, v68, v58, v75, v60, v61, v62, v63, v64, v65);
      }

      else
      {
        v69 = CDelaunayTriangles3D::check_coplanar(*buf, *&__C.f64[0], __p, v58, v59, v60, v61, v62, v63, v64, v65);
        if (!v68)
        {
LABEL_75:
          if (v67)
          {
            *&__C.f64[1] = v67;
            operator delete(v67);
          }

          if (*buf)
          {
            *&buf[8] = *buf;
            operator delete(*buf);
          }

          v393 = v69;
          v350 = 0;
          v351 = 0;
          v352 = 0;
          if (v69)
          {
            *v373 = 0;
            __dst = 0;
            v348 = 0;
            v349 = 0;
            v344 = 0;
            v345 = 0;
            v346 = 0;
          }

          else
          {
            vDSP_meanv(__A, 3, &v344, *__N);
            vDSP_meanv(__A + 1, 3, &v344 + 1, *__N);
            vDSP_meanv(__A + 2, 3, &v345, *__N);
            std::vector<float>::vector[abi:ne200100](&__dst, (3 * *__N));
            if (*__N)
            {
              v95 = 0;
              v96 = 0;
              do
              {
                MEMORY[0x193AE08D0](&v344, 1, &__A[v95], 1, __dst + 4 * v95, 1, 3);
                ++v96;
                v95 += 3;
              }

              while (v96 < *__N);
            }

            v97 = VBAP::delaunayTriangulation(v373, &__dst, &v335, &v332);
            if (v97)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315906;
                *&buf[4] = "VBAP.cpp";
                *&buf[12] = 1024;
                *&buf[14] = 162;
                *&buf[18] = 2080;
                *&buf[20] = "initialize";
                *&buf[28] = 1024;
                *&buf[30] = 162;
                _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error, Delaunay triangulation issue", buf, 0x22u);
              }

              is_origin_inside_hull = 0;
            }

            else
            {
              v114 = v377 - __A;
              v115 = ((v377 - __A) >> 2) / 3uLL;
              std::vector<double>::vector[abi:ne200100](buf, v115);
              std::vector<double>::vector[abi:ne200100](&__C, v115);
              std::vector<double>::vector[abi:ne200100](&__p, v115);
              v117 = *buf;
              v118 = *&__C.f64[0];
              v119 = __p;
              if ((v114 >> 2) >= 3)
              {
                if (v115 <= 1)
                {
                  v120 = 1;
                }

                else
                {
                  v120 = v115;
                }

                v121 = __A + 2;
                v122 = *buf;
                v123 = *&__C.f64[0];
                v124 = __p;
                do
                {
                  *v122++ = *(v121 - 2);
                  *v123++ = *(v121 - 1);
                  v125 = *v121;
                  v121 += 3;
                  v116 = v125;
                  *v124++ = v125;
                  --v120;
                }

                while (v120);
              }

              is_origin_inside_hull = CDelaunayTriangles3D::is_origin_inside_hull(v117, v118, v119, &v386, &v350, *&v116);
              if (__p)
              {
                v372 = __p;
                operator delete(__p);
              }

              if (*&__C.f64[0])
              {
                __C.f64[1] = __C.f64[0];
                operator delete(*&__C.f64[0]);
              }

              if (*buf)
              {
                *&buf[8] = *buf;
                operator delete(*buf);
              }
            }

            if (__dst)
            {
              v348 = __dst;
              operator delete(__dst);
            }

            if (v97)
            {
              v126 = 0;
              goto LABEL_224;
            }

            __dst = 0;
            v348 = 0;
            v349 = 0;
            v344 = 0;
            v345 = 0;
            v346 = 0;
            if (*v373 == 1)
            {
              VBAP::calculateVirtualLoudspeakersPolygon(v373, &v350, &__dst, &v344);
              if (*(&__src + 1) == __src)
              {
                *v373 = 0;
                *buf = 0;
                std::vector<float>::assign(&v378, 6uLL, buf, v127);
              }
            }

            if (*v373)
            {
              goto LABEL_166;
            }

            if (is_origin_inside_hull)
            {
              std::vector<int>::resize(&v378, 0);
              goto LABEL_166;
            }

            v69 = v393;
          }

          v369 = 0.0;
          v370 = 0.0;
          v367 = 0.0;
          v368 = 0;
          v365 = 0;
          v366 = 0.0;
          v363 = 0;
          v364 = 0.0;
          v361 = 0;
          v362 = 0;
          v359 = 0;
          v360 = 0;
          v357 = 0;
          v358 = 0.0;
          v76 = *__N;
          if (v69)
          {
            v355 = 0.0;
            __B = 0.0;
            v354 = 0.0;
            __C.f64[0] = 0.0;
            std::vector<double>::vector[abi:ne200100](buf, (*__N + 1), &__C);
            __p = 0;
            std::vector<double>::vector[abi:ne200100](&__C, (*__N + 1), &__p);
            v353 = 0;
            std::vector<double>::vector[abi:ne200100](&__p, (*__N + 1), &v353);
            v77 = *__N;
            v78 = *buf;
            if (*__N)
            {
              v79 = 0;
              v80 = __A;
              v81 = *&__C.f64[0];
              v82 = 3 * *__N;
              v83 = *buf;
              v84 = __p;
              do
              {
                *v83++ = v80[v79];
                *v81++ = v80[(v79 + 1)];
                *v84++ = v80[(v79 + 2)];
                v79 += 3;
              }

              while (v82 != v79);
            }

            vDSP_meanvD(v78, 1, &__B, (v77 + 1));
            vDSP_meanvD(*&__C.f64[0], 1, &v355, (*__N + 1));
            vDSP_meanvD(__p, 1, &v354, (*__N + 1));
            v355 = -v355;
            __B = -__B;
            v354 = -v354;
            vDSP_vsaddD(*buf, 1, &__B, *buf, 1, (*__N + 1));
            vDSP_vsaddD(*&__C.f64[0], 1, &v355, *&__C.f64[0], 1, (*__N + 1));
            vDSP_vsaddD(__p, 1, &v354, __p, 1, (*__N + 1));
            v85 = __C.f64[0];
            v86 = __p;
            v94 = CDelaunayTriangles3D::check_coplanar(*buf, *&__C.f64[0], __p, (*__N + 1), v87, v88, v89, v90, v91, v92, v93);
            if (v86)
            {
              v372 = v86;
              operator delete(v86);
              v85 = __C.f64[0];
            }

            if (v85 != 0.0)
            {
              __C.f64[1] = v85;
              operator delete(*&v85);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            v76 = *__N;
            if (v94)
            {
              if (*__N >= 3u)
              {
                std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](*__N);
              }

              vDSP_meanv(__A, 3, &v369, *__N);
              vDSP_meanv(__A + 1, 3, &v369 + 1, *__N);
              vDSP_meanv(__A + 2, 3, &v370, *__N);
              for (i = 0; i != 12; i += 4)
              {
                *(&v367 + i) = -*(&v369 + i);
              }

              v132 = *__N;
              if (*__N > 1u)
              {
                v133 = 1;
                v134 = 3;
                v135 = __A;
                v136 = vdup_n_s32(0x3727C5ACu);
                do
                {
                  v137 = 0;
                  v138 = v134;
                  do
                  {
                    v139 = *(&v369 + v137 * 4);
                    v365.f32[v137] = v139 + v135[v137];
                    v363.f32[v137++] = v139 + v135[v138++];
                  }

                  while (v137 != 3);
                  v140 = vcvtq_f64_f32(v365);
                  v129.f64[0] = v366;
                  v141 = vcvtq_f64_f32(v363);
                  v130.f64[0] = v364;
                  v142 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v129), v141, 1), v130, v140, 1);
                  v130.f64[1] = v141.f64[0];
                  v129.f64[1] = v140.f64[0];
                  v130 = vmlaq_f64(vmulq_f64(v130, vnegq_f64(v140)), v141, v129);
                  v143 = vcvt_f32_f64(vzip1q_s64(v142, v130));
                  *&v141.f64[0] = vcgt_f32(v136, vabs_f32(v143));
                  if ((LODWORD(v141.f64[0]) & HIDWORD(v141.f64[0]) & 1) == 0)
                  {
                    break;
                  }

                  ++v133;
                  v134 += 3;
                  v144 = v130.f64[1];
                }

                while (fabsf(v144) < 0.00001 && v133 != v132);
                v357 = v143;
                v358 = v130.f64[1];
              }

              for (j = 0; j != 3; ++j)
              {
                v147 = *(&v367 + j * 4);
                v148 = v357.f32[j];
                *(&v361 + j * 4) = v147 + v148;
                *(&v359 + j * 4) = v147 - v148;
              }

              VBAP::lineUnitSphereIntersection(&v361, &v359, v378.__begin_, v128);
              goto LABEL_166;
            }
          }

          vDSP_meanv(__A, 3, &v369, v76);
          vDSP_meanv(__A + 1, 3, &v369 + 1, *__N);
          vDSP_meanv(__A + 2, 3, &v370, *__N);
          if (((fabsf(*&v369) + fabsf(*(&v369 + 1))) + fabsf(v370)) >= 0.00003)
          {
            for (k = 0; k != 12; k += 4)
            {
              *(&v367 + k) = -*(&v369 + k);
            }

            VBAP::lineUnitSphereIntersection(&v369, &v367, v378.__begin_, v99);
            if (v393)
            {
LABEL_108:
              v102 = v378.__end_ - v378.__begin_;
              if (v102 >= 3)
              {
                v103 = 0;
                LODWORD(v104) = 0;
                v105 = v102 / 3;
                do
                {
                  if (*__N)
                  {
                    v106 = 0;
                    while (((vabds_f32(*&v378.__begin_[(3 * v104)], __A[v106]) + vabds_f32(*&v378.__begin_[(3 * v104 + 1)], __A[(v106 + 1)])) + vabds_f32(*&v378.__begin_[(3 * v104 + 2)], __A[(v106 + 2)])) >= 0.00000035763)
                    {
                      v106 += 3;
                      if (3 * *__N == v106)
                      {
                        goto LABEL_119;
                      }
                    }

                    v107 = v103;
                    v108 = v103 >> 2;
                    if (((v103 >> 2) + 1) >> 62)
                    {
                      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                    }

                    if (v103 >> 2 != -1)
                    {
                      std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100]((v103 >> 2) + 1);
                    }

                    *(4 * v108) = v104;
                    v103 = 4 * v108 + 4;
                    memcpy(0, 0, v107);
                  }

LABEL_119:
                  v104 = (v104 + 1);
                }

                while (v105 > v104);
                if (v103)
                {
                  v109 = 0;
                  v110 = 1;
                  end = v378.__end_;
                  do
                  {
                    v112 = &v378.__begin_[3 * *(4 * v109)];
                    v113 = end - (v112 + 3);
                    if (end != v112 + 3)
                    {
                      memmove(&v378.__begin_[3 * *(4 * v109)], v112 + 3, end - (v112 + 3));
                    }

                    end = (v112 + v113);
                    v378.__end_ = (v112 + v113);
                    v109 = v110++;
                  }

                  while (v109 < v103 >> 2);
                }
              }

LABEL_166:
              v392 = (v378.__end_ - v378.__begin_) / 3uLL;
              std::vector<int>::resize((&v380 + 8), v392);
              std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(&__N[28], __A, v377, (v377 - __A) >> 2);
              std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(v378.__begin_, v378.__end_, &__N[28]);
              if (*v373 != 1)
              {
                goto LABEL_220;
              }

              v149 = __dst;
              v150 = v348;
              if (v348 == __dst)
              {
                goto LABEL_220;
              }

              v151 = 0;
              v152 = 0;
              while (1)
              {
                v153 = &v344[6 * v151];
                if (*(v153 + 1) - *v153 <= 0xCuLL)
                {
                  v154 = 0;
                  *&buf[8] = 0;
                  *buf = 0;
                  v155 = *v153;
                  v156 = 0.0;
                  v157 = 0.0;
                  v158 = 0.0;
                  do
                  {
                    v159 = 3 * *(v155 + v154);
                    v156 = *(*&__N[28] + 4 * v159) + v156;
                    *buf = v156;
                    v157 = *(*&__N[28] + 4 * (v159 + 1)) + v157;
                    *&buf[4] = v157;
                    v158 = *(*&__N[28] + 4 * (v159 + 2)) + v158;
                    *&buf[8] = v158;
                    v154 += 4;
                  }

                  while (v154 != 12);
                  LODWORD(__C.f64[0]) = 0;
                  vDSP_dotpr(buf, 1, v149[3 * v151], 1, &__C, 3uLL);
                  if (*__C.f64 <= 0.0)
                  {
                    for (m = 0; m != 12; m += 4)
                    {
                      vDSP_meanv((*&__N[28] + m), 3, (&__p + m), ((v375 - *&__N[28]) >> 2) / 3uLL);
                    }

                    v365.i32[0] = 0;
                    vDSP_sve(&__p, 1, &v365, 3uLL);
                    v365.f32[0] = 1.0 / sqrtf(v365.f32[0]);
                    MEMORY[0x193AE08B0](&__p, 1, &v365, &__C, 1, 3);
                    v363.f32[0] = -v365.f32[0];
                    MEMORY[0x193AE08B0](&__p, 1, &v363, &__C.f64[1] + 4, 1, 3);
                    vDSP_distancesq(&__p, 1, &__C, 1, &v367, 3uLL);
                    vDSP_distancesq(&__p, 1, &__C.f64[1] + 1, 1, &v367 + 1, 3uLL);
                    v161 = v344;
                    if (v345 == v344)
                    {
                      v175 = 0;
                    }

                    else
                    {
                      v162 = 0;
                      v163 = 0;
                      v164 = 0;
                      if (*&v367 <= *(&v367 + 1))
                      {
                        p_C = &__C.f64[1] + 1;
                      }

                      else
                      {
                        p_C = &__C;
                      }

                      v166 = 3.4028e38;
                      do
                      {
                        v167 = 0;
                        *&buf[8] = 0;
                        *buf = 0;
                        v168 = &v161[6 * v162];
                        v169 = *v168;
                        v170 = ((*(v168 + 1) - *v168) >> 2);
                        v171 = 0.0;
                        v172 = 0.0;
                        v173 = 0.0;
                        do
                        {
                          v174 = 3 * *(v169 + v167);
                          v171 = v171 + (*(*&__N[28] + 4 * v174) / v170);
                          *buf = v171;
                          v172 = v172 + (*(*&__N[28] + 4 * (v174 + 1)) / v170);
                          *&buf[4] = v172;
                          v173 = v173 + (*(*&__N[28] + 4 * (v174 + 2)) / v170);
                          *&buf[8] = v173;
                          v167 += 4;
                        }

                        while (v167 != 12);
                        vDSP_distancesq(p_C, 1, buf, 1, &v367, 3uLL);
                        if (*&v367 < v166)
                        {
                          v369 = *buf;
                          v370 = *&buf[8];
                          v163 = v164;
                          v166 = *&v367;
                        }

                        v161 = v344;
                        v162 = ++v164;
                      }

                      while (0xAAAAAAAAAAAAAAABLL * ((v345 - v344) >> 3) > v164);
                      v175 = v163;
                    }

                    v176 = &v161[6 * v175];
                    if (*(v176 + 1) - *v176 <= 0xCuLL)
                    {
                      v177 = *(&__src + 1);
                      if (*(&__src + 1) >= v383)
                      {
                        v179 = 0xAAAAAAAAAAAAAAABLL * ((*(&__src + 1) - __src) >> 3);
                        if (v179 + 1 > 0xAAAAAAAAAAAAAAALL)
                        {
                          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                        }

                        v180 = 0x5555555555555556 * ((v383 - __src) >> 3);
                        if (v180 <= v179 + 1)
                        {
                          v180 = v179 + 1;
                        }

                        if (0xAAAAAAAAAAAAAAABLL * ((v383 - __src) >> 3) >= 0x555555555555555)
                        {
                          v181 = 0xAAAAAAAAAAAAAAALL;
                        }

                        else
                        {
                          v181 = v180;
                        }

                        *&buf[32] = &__src;
                        if (v181)
                        {
                          std::allocator<std::vector<unsigned char>>::allocate_at_least[abi:ne200100](v181);
                        }

                        v182 = (8 * ((*(&__src + 1) - __src) >> 3));
                        *buf = 0;
                        *&buf[8] = v182;
                        *&buf[16] = v182;
                        *&buf[24] = 0;
                        *v182 = 0;
                        v182[1] = 0;
                        v182[2] = 0;
                        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>((24 * v179), *v176, *(v176 + 1), (*(v176 + 1) - *v176) >> 2);
                        v178 = *&buf[16] + 24;
                        v183 = (*&buf[8] - (*(&__src + 1) - __src));
                        memcpy(v183, __src, *(&__src + 1) - __src);
                        v184 = __src;
                        v185 = v383;
                        *&__src = v183;
                        *(&__src + 1) = v178;
                        v383 = *&buf[24];
                        *&buf[16] = v184;
                        *&buf[24] = v185;
                        *buf = v184;
                        *&buf[8] = v184;
                        std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(buf);
                      }

                      else
                      {
                        **(&__src + 1) = 0;
                        v177[1] = 0;
                        v177[2] = 0;
                        std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v177, *v176, *(v176 + 1), (*(v176 + 1) - *v176) >> 2);
                        v178 = (v177 + 3);
                      }

                      *(&__src + 1) = v178;
                      MEMORY[0x193AE07B0](*(__dst + 3 * v175), 1, &v369, 1, buf, 1, 3);
                      MEMORY[0x193AE08D0](*(__dst + 3 * v175), 1, &v369, 1, &buf[12], 1, 3);
                      VBAP::lineUnitSphereIntersection(buf, &buf[12], &__C, v186);
                      vDSP_distancesq(&__p, 1, &__C, 1, &v367, 3uLL);
                      vDSP_distancesq(&__p, 1, &__C.f64[1] + 1, 1, &v367 + 1, 3uLL);
                      std::vector<int>::resize(&v378, v378.__end_ - v378.__begin_ + 3);
                      if (*(&v367 + 1) > *&v367)
                      {
                        v187 = (&__C.f64[1] + 4);
                      }

                      else
                      {
                        v187 = &__C;
                      }

                      v188 = &v398;
                      if (*(&v367 + 1) <= *&v367)
                      {
                        v188 = &__C.f64[1] + 4;
                      }

                      memmove(v378.__end_ - 3, v187, v188 - v187);
                      v189 = *(&v379 + 1);
                      if (*(&v379 + 1) >= v380)
                      {
                        v191 = v379;
                        v192 = *(&v379 + 1) - v379;
                        v193 = (*(&v379 + 1) - v379) >> 2;
                        v194 = v193 + 1;
                        if ((v193 + 1) >> 62)
                        {
                          std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
                        }

                        v195 = v380 - v379;
                        if ((v380 - v379) >> 1 > v194)
                        {
                          v194 = v195 >> 1;
                        }

                        if (v195 >= 0x7FFFFFFFFFFFFFFCLL)
                        {
                          v196 = 0x3FFFFFFFFFFFFFFFLL;
                        }

                        else
                        {
                          v196 = v194;
                        }

                        if (v196)
                        {
                          std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v196);
                        }

                        v197 = (4 * v193);
                        v198 = &v197[-((*(&v379 + 1) - v379) >> 2)];
                        *v197 = 1065353216;
                        v190 = v197 + 1;
                        memcpy(v198, v191, v192);
                        v199 = v379;
                        *&v379 = v198;
                        *(&v379 + 1) = v190;
                        *&v380 = 0;
                        if (v199)
                        {
                          operator delete(v199);
                        }
                      }

                      else
                      {
                        **(&v379 + 1) = 1065353216;
                        v190 = (v189 + 4);
                      }

                      *(&v379 + 1) = v190;
                      ++v392;
                      std::vector<int>::resize((&v380 + 8), ((v381 - *(&v380 + 1)) >> 2) + 1);
                      std::__copy_impl::operator()[abi:ne200100]<float *,float *,std::back_insert_iterator<std::vector<float>>>(v378.__end_ - 3, v378.__end_, &__N[28]);
                    }

LABEL_220:
                    v200 = VBAP::delaunayTriangulation(v373, &__N[28], &v335, &v332);
                    v126 = v200 == 0;
                    if (v200 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "VBAP.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 203;
                      *&buf[18] = 2080;
                      *&buf[20] = "initialize";
                      *&buf[28] = 1024;
                      *&buf[30] = 203;
                      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP error; Delaunay triangulation issue", buf, 0x22u);
                    }

                    *buf = &v344;
                    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
                    *buf = &__dst;
                    std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](buf);
LABEL_224:
                    if (v350)
                    {
                      operator delete(v350);
                    }

                    if (v126)
                    {
LABEL_227:
                      HIBYTE(v394) = 1;
                      goto LABEL_231;
                    }

LABEL_228:
                    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136315906;
                      *&buf[4] = "VBAP.cpp";
                      *&buf[12] = 1024;
                      *&buf[14] = 35;
                      *&buf[18] = 2080;
                      *&buf[20] = "VBAP";
                      *&buf[28] = 1024;
                      *&buf[30] = 35;
                      v48 = MEMORY[0x1E69E9C10];
                      v49 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Initialization Error; Check for duplicate vertices";
                      goto LABEL_230;
                    }

                    goto LABEL_231;
                  }

                  v149 = __dst;
                  v150 = v348;
                }

                v151 = ++v152;
                if (0xAAAAAAAAAAAAAAABLL * ((v150 - v149) >> 3) <= v152)
                {
                  goto LABEL_220;
                }
              }
            }

            v100 = 3;
          }

          else
          {
            v100 = 0;
          }

          std::vector<int>::resize(&v378, v100);
          goto LABEL_108;
        }
      }

      v372 = v68;
      operator delete(v68);
      v67 = *&__C.f64[0];
      goto LABEL_75;
    }
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_231;
  }

  *buf = 136315906;
  *&buf[4] = "VBAP.cpp";
  *&buf[12] = 1024;
  *&buf[14] = 40;
  *&buf[18] = 2080;
  *&buf[20] = "VBAP";
  *&buf[28] = 1024;
  *&buf[30] = 40;
  v48 = MEMORY[0x1E69E9C10];
  v49 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Initialization Error; Empty or inconsistent vertex set";
LABEL_230:
  _os_log_impl(&dword_18F5DF000, v48, OS_LOG_TYPE_ERROR, v49, buf, 0x22u);
LABEL_231:
  *buf = &v332;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](buf);
  if (v335)
  {
    v336 = v335;
    operator delete(v335);
  }

  if (v338)
  {
    v339 = v338;
    operator delete(v338);
  }

  if (v341)
  {
    v342 = v341;
    operator delete(v341);
  }

  if ((v394 & 0x100) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "HOA.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 1029;
      *&buf[18] = 2080;
      *&buf[20] = "createDecoder";
      *&buf[28] = 1024;
      *&buf[30] = 1029;
      _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP object was not initialized", buf, 0x22u);
    }

    VBAP::~VBAP(v373);
    return 4294967246;
  }

  v201 = 216 * a1[2];
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v350, v201, buf);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&__dst, 0xD8uLL, buf);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v344, 0xD8uLL, buf);
  *buf = 0;
  std::vector<float>::vector[abi:ne200100](&v335, 0x288uLL, buf);
  v202 = __dst;
  if (__dst)
  {
    v203 = v344;
    if (v344)
    {
      memcpy(__dst, &unk_18F9049E4, 0x360uLL);
      memcpy(v203, &unk_18F904D44, 0x360uLL);
    }
  }

  MEMORY[0x193AE08B0](v202, 1, &kDeg2Radf, v202, 1, 216);
  MEMORY[0x193AE08B0](v344, 1, &kDeg2Radf, v344, 1, 216);
  HOA::sphericalHarmonics(__dst, v344, 0xD8, v350, *a1);
  v204 = 0;
  v205 = __dst;
  v206 = v344;
  v207 = (v335 + 8);
  do
  {
    v208 = *&v205[v204 * 4];
    v209 = __sincosf_stret(v206[v204]);
    v210 = __sincosf_stret(v208);
    *(v207 - 2) = v210.__cosval * v209.__cosval;
    *(v207 - 1) = v210.__sinval * v209.__cosval;
    *v207 = v209.__sinval;
    v207 += 3;
    ++v204;
  }

  while (v204 != 216);
  if (a1[76] == 2)
  {
    std::vector<float>::vector[abi:ne200100](buf, 216 * a1[2]);
    vDSP_mmul(*(a1 + 46), 1, v350, 1, *buf, 1, a1[2], 0xD8uLL, a1[2]);
    v211 = *buf;
    if (*&buf[8] != *buf)
    {
      memmove(v350, *buf, *&buf[8] - *buf);
      v211 = *buf;
    }

    if (v211)
    {
      *&buf[8] = v211;
      operator delete(v211);
    }
  }

  v363.i32[0] = 999797798;
  std::vector<float>::vector[abi:ne200100](&v332, (*(a1 + 11) - *(a1 + 10)) >> 2);
  vDSP_svdiv(&v363, *(a1 + 10), 1, v332, 1, a1[2]);
  for (n = 0; n != 216; ++n)
  {
    MEMORY[0x193AE0840](v332, 1, &v350[n], 216, &v350[n], 216, a1[2]);
  }

  v321 = v350;
  v213 = v335;
  vDSP_vclr(*(a1 + 7), 1, a1[2] * a1[5]);
  std::vector<float>::vector[abi:ne200100](&__p, a1[5]);
  v214 = 0;
  __asm
  {
    FMOV            V1.2D, #1.0
    FMOV            V0.2D, #0.5
  }

  v322 = _Q0;
  v323 = _Q1;
  while (1)
  {
    if ((v394 & 0x100) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 568;
        *&buf[18] = 2080;
        *&buf[20] = "calculateVBAPGains";
        *&buf[28] = 1024;
        *&buf[30] = 568;
        v314 = MEMORY[0x1E69E9C10];
        v315 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain if the VBAP object is not initialized";
LABEL_359:
        _os_log_impl(&dword_18F5DF000, v314, OS_LOG_TYPE_ERROR, v315, buf, 0x22u);
        v46 = 4294967246;
        goto LABEL_336;
      }

      goto LABEL_360;
    }

    v220 = &v213[12 * v214];
    v221 = __p;
    if (v220->f32[0] == 0.0 && v220->f32[1] == 0.0 && v220[1].f32[0] == 0.0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 574;
        *&buf[18] = 2080;
        *&buf[20] = "calculateVBAPGains";
        *&buf[28] = 1024;
        *&buf[30] = 574;
        v314 = MEMORY[0x1E69E9C10];
        v315 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Can not calculate gain for a source location [0, 0, 0]";
        goto LABEL_359;
      }

LABEL_360:
      v46 = 4294967246;
      goto LABEL_336;
    }

    vDSP_vclr(__p, 1, *__N);
    vDSP_vclr(*(&v380 + 1), 1, (v381 - *(&v380 + 1)) >> 2);
    v222 = vcvtq_f64_f32(*v220);
    v223.f64[0] = v220[1].f32[0];
    v224 = vmulq_f64(v223, v223);
    v224.f64[0] = 1.0 / sqrt(v224.f64[0] + vaddvq_f64(vmulq_f64(v222, v222)));
    v225 = vmulq_f64(v223, v224);
    v226 = vmulq_n_f64(v222, v224.f64[0]);
    v227 = vextq_s8(v226, v226, 8uLL).u64[0];
    if (v394 != 1)
    {
      break;
    }

    v222.f64[0] = __A[2];
    v224.f64[0] = __A[5];
    *&v226.f64[1] = v227;
    *v221 = vcvt_f32_f64(vsqrtq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vzip1q_s64(vmulq_f64(v225, v222), vmulq_f64(v225, v224)), vpaddq_f64(vmulq_f64(v226, vcvtq_f64_f32(*__A)), vmulq_f64(v226, vcvtq_f64_f32(*(__A + 3))))), v323), v322)));
LABEL_268:
    v236 = a1[5];
    if (v236)
    {
      v237 = 0;
      for (ii = 0; ii < v236; ++ii)
      {
        MEMORY[0x193AE0890](&v321[v214], 216, __p + v237, *(a1 + 7) + v237, v236, *(a1 + 7) + v237, v236, a1[2]);
        v236 = a1[5];
        v237 += 4;
      }
    }

    if (++v214 == 216)
    {
      v46 = 0;
      goto LABEL_338;
    }
  }

  if (*__N < 2u)
  {
    *v221 = 1.0;
    goto LABEL_268;
  }

  if ((v394 & 0x100) != 0)
  {
    v318 = v227;
    v319 = v226.f64[0];
    v320 = v225;
    subtriangle_containment = CDelaunayTriangles3D::find_subtriangle_containment(v391, COERCE_FLOAT(*v220), COERCE_FLOAT(HIDWORD(*v220)), v223.f64[0]);
    if ((subtriangle_containment & 0x80000000) == 0 && 0xAAAAAAAAAAAAAAABLL * ((*(&v389 + 1) - v389) >> 3) > subtriangle_containment)
    {
      __C = vcvtq_f64_f32(*v220);
      v397 = v220[1].f32[0];
      v229 = v389 + 24 * subtriangle_containment;
      for (jj = *(v229 + 8); jj != v229; jj = *(jj + 8))
      {
        v231 = *(jj + 16);
        *buf = 0;
        v232 = 9 * v231;
        vDSP_dotprD((*(&v387 + 1) + 72 * v231), 1, __C.f64, 1, buf, 3uLL);
        if (*buf > -0.00000011920929)
        {
          v369 = 0.0;
          vDSP_dotprD((*(&v387 + 1) + 8 * v232 + 24), 1, __C.f64, 1, &v369, 3uLL);
          if (v369 > -0.00000011920929)
          {
            v367 = 0.0;
            vDSP_dotprD((*(&v387 + 1) + 8 * v232 + 48), 1, __C.f64, 1, &v367, 3uLL);
            if (v367 > -0.00000011920929)
            {
              v239 = 0;
              v240 = (v386 + 12 * v231);
              v241 = *&__N[28] + 12 * *v240;
              v242 = *v241;
              LODWORD(v233.f64[0]) = *(v241 + 8);
              v243 = *&__N[28] + 12 * v240[1];
              v244 = *v243;
              LODWORD(v234.f64[0]) = *(v243 + 8);
              v245 = (*&__N[28] + 12 * v240[2]);
              v246 = vcvtq_f64_f32(v242);
              v233.f64[0] = *v233.f64;
              v250 = vcvtq_f64_f32(v244);
              v234.f64[0] = *v234.f64;
              v253 = vcvtq_f64_f32(*v245);
              v235.f64[0] = v245[1].f32[0];
              v247 = vmulq_f64(v233, v234).f64[0] + vaddvq_f64(vmulq_f64(v246, v250));
              v248 = vaddq_f64(vzip1q_s64(vmulq_f64(v234, v235), vmulq_f64(v233, v235)), vpaddq_f64(vmulq_f64(v250, v253), vmulq_f64(v246, v253)));
              v249 = vdivq_f64(vmlaq_n_f64(vnegq_f64(vextq_s8(v248, v248, 8uLL)), v248, v247), vdupq_lane_s64(COERCE__INT64(1.0 - v247 * v247), 0));
              *&v250.f64[1] = vextq_s8(v250, v250, 8uLL).u64[0];
              *&v251 = v246.f64[0];
              *(&v251 + 1) = vextq_s8(v246, v246, 8uLL).u64[0];
              v252 = 0uLL;
              *&v253.f64[1] = vextq_s8(v253, v253, 8uLL).u64[0];
              v254 = 0uLL;
              v255 = 0uLL;
              v256 = 0uLL;
              do
              {
                v331[0] = v250;
                v331[1] = v234;
                v257 = *(v331 + (v239 & 3));
                v330[0] = v251;
                v330[1] = v233;
                v258 = *(v330 + (v239 & 3));
                v328 = v255;
                v329 = v256;
                v328.f64[v239 & 3] = v257 - v258 * v247;
                v255 = v328;
                v256.f64[0] = v329.f64[0];
                v259 = v254;
                v260 = v249.f64[1] * v257;
                v327[0] = v253;
                v327[1] = v235;
                v261 = *(v327 + (v239 & 3));
                v325 = v252;
                v326 = v259;
                v325.f64[v239 & 3] = v261 + v260 + v249.f64[0] * v258;
                v252 = v325;
                v254.f64[0] = v326.f64[0];
                v254.f64[1] = v259.f64[1];
                ++v239;
              }

              while (v239 != 3);
              v262.f64[0] = v319;
              *&v262.f64[1] = v318;
              v263 = vmulq_f64(v256, v256).f64[0] + vaddvq_f64(vmulq_f64(v255, v255));
              v264 = 0.0;
              if (v263 >= 0.00000999999975)
              {
                v264 = (vmulq_f64(v320, v256).f64[0] + vaddvq_f64(vmulq_f64(v262, v255))) / v263;
              }

              v265 = vmulq_f64(v320, v233).f64[0] + vaddvq_f64(vmulq_f64(v262, v246));
              v266 = vmulq_f64(v254, v254);
              v266.f64[0] = v266.f64[0] + vaddvq_f64(vmulq_f64(v325, v325));
              _NF = v266.f64[0] < 0.00000999999975;
              v266.f64[0] = (vmulq_f64(v320, v254).f64[0] + vaddvq_f64(vmulq_f64(v262, v325))) / v266.f64[0];
              if (_NF)
              {
                v266.f64[0] = 0.0;
              }

              v267.f64[0] = v265 - v264 * v247;
              v267.f64[1] = v264;
              v268 = vmlaq_n_f64(v267, v249, v266.f64[0]);
              v269 = vmulq_f64(v266, v266).f64[0] + vaddvq_f64(vmulq_f64(v268, v268));
              v270 = 0uLL;
              v271 = 0uLL;
              if (v269 > 0.00000999999975)
              {
                v272 = 1.0 / sqrt(v269);
                v270 = vmulq_n_f64(v268, v272);
                *&v271 = v266.f64[0] * v272;
              }

              v273 = 0;
              v274 = *__N;
              v275 = *(&v380 + 1);
              v270.i64[1] = vextq_s8(v270, v270, 8uLL).u64[0];
              do
              {
                v276 = v240[v273];
                v324[0] = v270;
                v324[1] = v271;
                v277 = *(v324 + (v273 & 3));
                if (v276 >= v274)
                {
                  v279 = v276 - v274;
                  v280 = v277 + *(v275 + 4 * v279);
                  *(v275 + 4 * v279) = v280;
                }

                else
                {
                  v278 = v277;
                  v221[v276] = v278;
                }

                ++v273;
              }

              while (v273 != 3);
              *&buf[8] = 0;
              *buf = 0;
              v281 = 0;
              if (v274)
              {
                v282 = v221;
                v283 = v274;
                do
                {
                  if (*v282 >= 0.00001)
                  {
                    *&buf[4 * v281++] = *v282;
                  }

                  else
                  {
                    *v282 = 0.0;
                  }

                  ++v282;
                  --v283;
                }

                while (v283);
              }

              LODWORD(__C.f64[1]) = 0;
              __C.f64[0] = 0.0;
              v284 = v392;
              if (v392)
              {
                v285 = 0;
                v286 = 1;
                v287 = *(&v380 + 1);
                do
                {
                  if (*v287 >= 0.00001)
                  {
                    *(__C.f64 + v285++) = *v287;
                  }

                  else
                  {
                    *v287 = 0;
                  }

                  ++v287;
                  v288 = v284 > v286++;
                }

                while (v288);
                v369 = 0.0;
                if (!v281 && v285 == 1)
                {
                  v289 = COERCE_DOUBLE(vcvt_f32_f64(vdivq_f64(xmmword_18F901800, vdupq_lane_s64(COERCE__INT64(sqrt(v274) * *__C.f64), 0))));
                  goto LABEL_310;
                }

                if (v281 || v285 != 2)
                {
                  if (v281 == 1 && v285 == 1)
                  {
                    v292 = sqrtf((v274 + (-(*buf * v274) * *buf)) + (*buf * *buf));
                    v293.f32[0] = *buf - v292;
                    v293.f32[1] = *buf + v292;
                    *v270.i32 = *__C.f64 * v274;
                    v291 = COERCE_DOUBLE(vneg_f32(v293));
                  }

                  else
                  {
                    if (v281 == 1 && v285 == 2)
                    {
                      v306 = *buf;
                      v307 = *__C.f64 * v274;
                      v308 = *(__C.f64 + 1) * v274;
                      v309 = sqrtf(((((((*__C.f64 * v307) + ((*__C.f64 + *__C.f64) * *(__C.f64 + 1))) + (v308 * *(__C.f64 + 1))) + (((v306 * v306) * *__C.f64) * *__C.f64)) + (((v306 * v306) * *(__C.f64 + 1)) * *(__C.f64 + 1))) + ((*__C.f64 * (v306 * -(v306 * v274))) * *__C.f64)) + ((*(__C.f64 + 1) * (v306 * -(v306 * v274))) * *(__C.f64 + 1)));
                      v310 = (((*__C.f64 + *__C.f64) * *(__C.f64 + 1)) + (v307 * *__C.f64)) + (v308 * *(__C.f64 + 1));
                      *&v369 = -((v309 + (v306 * *__C.f64)) + (v306 * *(__C.f64 + 1))) / v310;
                      *(&v369 + 1) = -((*buf * *(__C.f64 + 1)) - (v309 - (*buf * *__C.f64))) / v310;
                      goto LABEL_311;
                    }

                    if (v281 != 2 || v285 != 1)
                    {
                      goto LABEL_311;
                    }

                    v311 = sqrtf(((((v274 + ((*buf + *buf) * *&buf[4])) + (-(*buf * v274) * *buf)) + (-(*&buf[4] * v274) * *&buf[4])) + (*buf * *buf)) + (*&buf[4] * *&buf[4]));
                    v312.f32[0] = (*buf + *&buf[4]) - v311;
                    v312.f32[1] = (*buf + *&buf[4]) + v311;
                    *v270.i32 = *__C.f64 * v274;
                    v291 = COERCE_DOUBLE(vneg_f32(v312));
                  }

                  *v270.i8 = vdup_lane_s32(*v270.i8, 0);
                  goto LABEL_309;
                }

                *v270.i32 = sqrtf(((((*__C.f64 * (*__C.f64 * v274)) + ((*__C.f64 + *__C.f64) * *(__C.f64 + 1))) + ((*(__C.f64 + 1) * v274) * *(__C.f64 + 1))) + (*__C.f64 * *__C.f64)) + (*(__C.f64 + 1) * *(__C.f64 + 1)));
                *v270.i8 = vdup_lane_s32(*v270.i8, 0);
                __asm { FMOV            V1.2S, #1.0 }

                v291 = -_D1;
LABEL_309:
                v289 = COERCE_DOUBLE(vdiv_f32(*&v291, *v270.i8));
LABEL_310:
                v369 = v289;
              }

              else
              {
                v369 = 0.0;
              }

LABEL_311:
              LODWORD(v367) = 0;
              vDSP_maxv(&v369, 1, &v367, 2uLL);
              if (*v373)
              {
                v294 = 0;
                v295 = *__N;
                v296 = __src;
                v297 = *(&v380 + 1);
                v298 = v379;
                do
                {
                  v299 = v240[v294];
                  _CF = v299 >= v295;
                  v300 = v299 - v295;
                  if (_CF)
                  {
                    v301 = *(v296 + 24 * v300);
                    v302 = *(v296 + 24 * v300 + 8) - v301;
                    if (v302)
                    {
                      v303 = v302 >> 2;
                      v304 = 1;
                      do
                      {
                        v305 = *v301++;
                        v221[v305] = v221[v305] + ((*(v297 + 4 * v300) / v303) / *(v298 + 4 * v300));
                        v288 = v303 > v304++;
                      }

                      while (v288);
                    }
                  }

                  ++v294;
                }

                while (v294 != 3);
              }

              else
              {
                v365.i32[0] = 0;
                vDSP_sve(*(&v380 + 1), 1, &v365, v392);
                v365.f32[0] = *&v367 * v365.f32[0];
                MEMORY[0x193AE0870](v221, 1, &v365, v221, 1, *__N);
                v295 = *__N;
              }

              v365.i32[0] = 0;
              vDSP_svesq(v221, 1, &v365, v295);
              v365.f32[0] = 1.0 / sqrtf(v365.f32[0]);
              MEMORY[0x193AE08B0](v221, 1, &v365, v221, 1, *__N);
              goto LABEL_268;
            }
          }
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        *&buf[4] = "VBAP.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 355;
        *&buf[18] = 2080;
        *&buf[20] = "triangleLookup";
        *&buf[28] = 1024;
        *&buf[30] = 355;
        _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error", buf, 0x22u);
      }

      v46 = 4294964151;
      goto LABEL_334;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "VBAP.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 328;
      *&buf[18] = 2080;
      *&buf[20] = "triangleLookup";
      *&buf[28] = 1024;
      *&buf[30] = 328;
      v316 = MEMORY[0x1E69E9C10];
      v317 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup error";
      goto LABEL_363;
    }

LABEL_364:
    v46 = 4294967246;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_364;
    }

    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 322;
    *&buf[18] = 2080;
    *&buf[20] = "triangleLookup";
    *&buf[28] = 1024;
    *&buf[30] = 322;
    v316 = MEMORY[0x1E69E9C10];
    v317 = "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; VBAP object not initialized";
LABEL_363:
    _os_log_impl(&dword_18F5DF000, v316, OS_LOG_TYPE_ERROR, v317, buf, 0x22u);
    v46 = 4294967246;
  }

LABEL_334:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "VBAP.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 608;
    *&buf[18] = 2080;
    *&buf[20] = "calculateVBAPGains";
    *&buf[28] = 1024;
    *&buf[30] = 608;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: VBAP Error; Triangle lookup failed", buf, 0x22u);
  }

LABEL_336:
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315906;
    *&buf[4] = "HOA.cpp";
    *&buf[12] = 1024;
    *&buf[14] = 863;
    *&buf[18] = 2080;
    *&buf[20] = "createALLRAD";
    *&buf[28] = 1024;
    *&buf[30] = 863;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d CADSPUtility:%s:%d: HOA Error; VBAP calculation error", buf, 0x22u);
  }

LABEL_338:
  if (__p)
  {
    v372 = __p;
    operator delete(__p);
  }

  if (v332)
  {
    v333 = v332;
    operator delete(v332);
  }

  if (v335)
  {
    v336 = v335;
    operator delete(v335);
  }

  if (v344)
  {
    v345 = v344;
    operator delete(v344);
  }

  if (__dst)
  {
    v348 = __dst;
    operator delete(__dst);
  }

  if (v350)
  {
    v351 = v350;
    operator delete(v350);
  }

  VBAP::~VBAP(v373);
  LODWORD(v51) = *a1;
LABEL_351:
  if (a1[1] != v51)
  {
    v313 = a1[5] * a1[3];
    *v373 = 0;
    std::vector<float>::resize(a1 + 7, v313, v373, v10);
  }

  return v46;
}

void sub_18F73A82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, uint64_t a58, void **a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  std::__split_buffer<std::vector<unsigned char>>::~__split_buffer(v66 - 208);
  a66 = &a59;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a66);
  a59 = &a62;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&a59);
  if (__p)
  {
    operator delete(__p);
  }

  __p = a15;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v68 = STACK[0x378];
  if (STACK[0x378])
  {
    STACK[0x380] = v68;
    operator delete(v68);
  }

  v69 = STACK[0x360];
  if (STACK[0x360])
  {
    STACK[0x368] = v69;
    operator delete(v69);
  }

  std::__list_imp<ID3FrameInfo>::clear(a18);
  std::__list_imp<ID3FrameInfo>::clear(a19);
  __p = a21;
  std::vector<std::vector<unsigned int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v70 = STACK[0x300];
  if (STACK[0x300])
  {
    STACK[0x308] = v70;
    operator delete(v70);
  }

  v71 = STACK[0x2E8];
  if (STACK[0x2E8])
  {
    STACK[0x2F0] = v71;
    operator delete(v71);
  }

  v72 = STACK[0x2D0];
  if (STACK[0x2D0])
  {
    STACK[0x2D8] = v72;
    operator delete(v72);
  }

  v73 = STACK[0x2B8];
  if (STACK[0x2B8])
  {
    STACK[0x2C0] = v73;
    operator delete(v73);
  }

  v74 = STACK[0x2A0];
  if (STACK[0x2A0])
  {
    STACK[0x2A8] = v74;
    operator delete(v74);
  }

  v75 = STACK[0x288];
  if (STACK[0x288])
  {
    STACK[0x290] = v75;
    operator delete(v75);
  }

  __p = &a47;
  std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a50)
  {
    a51 = a50;
    operator delete(a50);
  }

  if (a53)
  {
    operator delete(a53);
  }

  if (a56)
  {
    operator delete(a56);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::list<int>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 3;
        std::__list_imp<ID3FrameInfo>::clear(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<float>::resize(const void **a1, unint64_t a2, __int32 *a3, int16x4_t a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = (v4 - *a1) >> 2;
  if (a2 <= v6)
  {
    if (a2 >= v6)
    {
      return;
    }

    v12 = &v5[4 * a2];
  }

  else
  {
    v7 = a2 - v6;
    v8 = a1[2];
    if (v7 > (v8 - v4) >> 2)
    {
      if (!(a2 >> 62))
      {
        v9 = v8 - v5;
        v10 = (v8 - v5) >> 1;
        if (v10 <= a2)
        {
          v10 = a2;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v11 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::allocator<APAC::UI18>::allocate_at_least[abi:ne200100](v11);
      }

      std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
    }

    a4.i32[0] = *a3;
    v13 = (v7 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
    v14 = vdupq_n_s64(v13);
    v15 = v13 - ((v7 + 0x3FFFFFFFFFFFFFFFLL) & 3);
    v16 = v4 + 8;
    v17 = -4;
    do
    {
      v18 = vdupq_n_s64(v17 + 4);
      v19 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_18F9016C0)));
      if (vuzp1_s16(v19, a4).u8[0])
      {
        *(v16 - 2) = a4.i32[0];
      }

      if (vuzp1_s16(v19, a4).i8[2])
      {
        *(v16 - 1) = a4.i32[0];
      }

      if (vuzp1_s16(a4, vmovn_s64(vcgeq_u64(v14, vorrq_s8(v18, xmmword_18F9016B0)))).i32[1])
      {
        *v16 = a4.i32[0];
        v16[1] = a4.i32[0];
      }

      v17 += 4;
      v16 += 4;
    }

    while (v15 != v17);
    v12 = &v4[4 * v7];
  }

  a1[1] = v12;
}

uint64_t *std::vector<double>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_18F73AEE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<double>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<SyncSampleEntry>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<APAC::UI18>::__throw_length_error[abi:ne200100]();
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x193ADF220);
}

void audioipc::SharedAudioBuffers::Element::Element(_OWORD *a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;
  *a1 = v2;
  v4 = (a1 + 3);
  if ((*(a2 + 3) & 0x20) != 0)
  {
    v5 = *(a2 + 7);
  }

  else
  {
    v5 = 1;
  }

  v6 = 0;
  std::vector<char>::vector[abi:ne200100](v4, (16 * v5) | 8, &v6);
}

void sub_18F73B024(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    *(v1 + 56) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<audioipc::SharedAudioBuffers::Element>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 57))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<audioipc::SharedAudioBuffers::Element>,audioipc::SharedAudioBuffers::Element*>(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      v6 = *v5;
      v7 = *(v5 + 2);
      *(a3 + 16) = *(v5 + 1);
      *(a3 + 32) = v7;
      *a3 = v6;
      *(a3 + 56) = 0;
      *(a3 + 64) = 0;
      *(a3 + 48) = 0;
      *(a3 + 48) = *(v5 + 3);
      *(a3 + 64) = v5[8];
      v5[6] = 0;
      v5[7] = 0;
      v5[8] = 0;
      *(a3 + 72) = 0;
      *(a3 + 80) = 0;
      *(a3 + 88) = 0;
      *(a3 + 72) = *(v5 + 9);
      *(a3 + 88) = v5[11];
      v5[9] = 0;
      v5[10] = 0;
      v5[11] = 0;
      v8 = *(v5 + 7);
      *(a3 + 96) = *(v5 + 6);
      *(a3 + 112) = v8;
      v5 += 16;
      a3 += 128;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>(v4);
      v4 += 16;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<audioipc::SharedAudioBuffers::Element>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    std::__destroy_at[abi:ne200100]<audioipc::SharedAudioBuffers::Element,0>((i - 128));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t audioipc::eventlink_primitive::timed_wait_or_error(audioipc::eventlink_primitive *this, double a2)
{
  os_retain(this);
  v3 = os_eventlink_wait_until();
  if (v3)
  {
    if (v3 == 60)
    {
      v4 = 0x100000000;
    }

    else
    {
      v4 = 0;
    }

    if (v3 == 60)
    {
      v5 = 0;
    }

    else
    {
      v5 = v3;
    }

    if (v3 == 60)
    {
      v6 = 0;
    }

    else
    {
      v6 = v3 & 0xFFFFFF00;
    }
  }

  else
  {
    v6 = 0;
    v5 = 0;
    v4 = 0x100000000;
  }

  os_release(this);
  return v4 | v6 | v5;
}

uint64_t AMRAudioFile::ScanForPackets(AMRAudioFile *this, uint64_t a2, DataSource *a3, char a4)
{
  v4 = a3;
  v31 = *MEMORY[0x1E69E9840];
  *&v26.mVariableFramesInPacket = 0;
  v27 = 0;
  v25 = 0;
  if (!a3)
  {
    v4 = *(this + 13);
  }

  if ((*(this + 140) & 1) != 0 || !*(this + 36))
  {
    return 0;
  }

  v6 = *(this + 15);
  if (!v6)
  {
    operator new();
  }

  v7 = *(v6 + 24);
  if (a2 == -1)
  {
    v8 = -1;
  }

  else
  {
    v8 = a2 - v7;
    if (a2 <= v7)
    {
      return 0;
    }
  }

  if (*(this + 140))
  {
    return 0;
  }

  v10 = (*(*v4 + 24))(v4, &v27);
  if (!v10)
  {
    if (v7)
    {
      v11 = *(this + 9);
      v12 = v7 - 1;
      CompressedPacketTable::operator[](buf, v6, v7 - 1);
      v13 = *buf;
      CompressedPacketTable::operator[](v23, v6, v12);
      v14 = v13 + v11 + v24;
    }

    else
    {
      (*(*this + 656))(this, 0);
      v14 = *(this + 9);
    }

    v10 = 0;
    v15 = a4;
    while (1)
    {
      v26.mStartOffset = v14 - *(this + 9);
      v26.mDataByteSize = 0;
      if (*(this + 36))
      {
        v16 = 0;
        v17 = 0;
        while (1)
        {
          buf[0] = 0;
          v10 = (*(*v4 + 48))(v4, 0, v14, 1, buf, &v25);
          if (v10)
          {
            v18 = 0;
          }

          else
          {
            v18 = v25 == 1;
          }

          if (!v18)
          {
            goto LABEL_41;
          }

          v19 = (*(this + 152) ? &_AMR_WB_FRAMESIZE : &_AMR_NB_FRAMESIZE);
          v20 = v19[(buf[0] >> 3) & 0xF];
          if (!v20)
          {
            break;
          }

          v14 += v20;
          if (v14 > v27)
          {
            break;
          }

          v16 = v16 + v20;
          ++v17;
          if (v14 == v27)
          {
            v10 = 0;
            v26.mDataByteSize = v16;
            *(this + 37) = 160 * v17;
            goto LABEL_43;
          }

          if (v17 >= *(this + 36))
          {
            v10 = 0;
            v21 = 0;
            v26.mDataByteSize = v16;
            v15 = a4;
            if ((a4 & 1) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          }
        }

        v10 = 0;
LABEL_41:
        v26.mDataByteSize = v16;
LABEL_43:
        v15 = a4;
        *(this + 140) = a4;
        v21 = 1;
        if ((a4 & 1) == 0)
        {
LABEL_36:
          if (v17 == *(this + 36))
          {
            goto LABEL_45;
          }

          goto LABEL_51;
        }

LABEL_44:
        if (!v17)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v16 = 0;
        v21 = 0;
        if (v15)
        {
          v21 = 0;
          goto LABEL_51;
        }
      }

LABEL_45:
      if (v16 > (*(*this + 640))(this))
      {
        (*(*this + 656))(this, v16);
      }

      AudioFileObject::AppendPacket(this, &v26);
      if (v8 == -1)
      {
        v8 = -1;
      }

      else
      {
        --v8;
      }

      v15 = a4;
      if (!v8)
      {
        goto LABEL_52;
      }

LABEL_51:
      if (v21)
      {
        goto LABEL_52;
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AMRAudioFile.cpp";
    v29 = 1024;
    v30 = 575;
    _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  GetSize failed", buf, 0x12u);
  }

LABEL_52:
  if ((v10 & 0xFFFFFFFE) == 0xFFFFFFD8)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t AMRAudioFile::FindMaximumPacketSize(AMRAudioFile *this)
{
  if ((*(this + 140) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    return *(this + 28);
  }

  else
  {
    return 0;
  }
}

uint64_t AMRAudioFile::GetEstimatedDuration(AMRAudioFile *this, double *a2)
{
  v4 = *(this + 3);
  v5 = *(this + 11);
  if (*(this + 140) == 1)
  {
    v6 = 0;
    v7 = (*(this + 37) + ((*(*this + 248))(this) - 1) * v5);
LABEL_3:
    *a2 = v7 / v4;
    return v6;
  }

  *a2 = 0.0;
  if ((*(*this + 696))(this, 1, 0, 1))
  {
    return 0;
  }

  v8 = *(this + 15);
  if (!v8)
  {
    operator new();
  }

  v16 = 0;
  v6 = (*(**(this + 13) + 24))(*(this + 13), &v16);
  if (!v6)
  {
    v16 -= *(this + 9);
    v10 = *(this + 15);
    if (v10)
    {
      v11 = *(v10 + 24);
    }

    else
    {
      v11 = 0;
    }

    CompressedPacketTable::operator[](v15, v8, v11 - 1);
    v12 = v15[0];
    CompressedPacketTable::operator[](v13, v8, v11 - 1);
    v7 = v16 / (v12 + v14) * (v11 * v5);
    goto LABEL_3;
  }

  return v6;
}

uint64_t AMRAudioFile::GetInfoDictionary(AMRAudioFile *this, CACFDictionary *a2)
{
  v5 = 0.0;
  v3 = (*(*this + 552))(this, &v5);
  if (v3)
  {
    return 1886681407;
  }

  AudioFileObject::AddDurationToInfoDictionary(v3, a2, &v5);
  return 0;
}

uint64_t AMRAudioFile::SetMagicCookieData(AMRAudioFile *this, UInt32 a2, const void *a3)
{
  v4 = 1718449215;
  v5 = *(this + 40);
  outPropertyData = *(this + 24);
  v13 = v5;
  v14 = *(this + 7);
  ioPropertyDataSize = 40;
  AudioFormatGetProperty(0x666D7469u, a2, a3, &ioPropertyDataSize, &outPropertyData);
  v6 = *(this + 36);
  v7 = DWORD1(v13);
  if (*(this + 152))
  {
    v8 = 320;
  }

  else
  {
    v8 = 160;
  }

  v9 = DWORD1(v13) / v8;
  if (!v6 || v6 == v9)
  {
    *(this + 36) = v9;
    if (v8 <= v7)
    {
      return 0;
    }

    else
    {
      return 1718449215;
    }
  }

  return v4;
}

double AMRAudioFile::GetMagicCookieData(AMRAudioFile *this, unsigned int *a2, char *a3)
{
  if (*a2 >= 0x2F)
  {
    v3 = *(this + 152) == 0;
    *a3 = 0x616D72660C000000;
    if (v3)
    {
      v4 = 1919770995;
    }

    else
    {
      v4 = 1651990899;
    }

    *(a3 + 2) = v4;
    if (v3)
    {
      v5 = -127;
    }

    else
    {
      v5 = -125;
    }

    *(a3 + 12) = 0x61646E650A000000;
    *(a3 + 10) = 0;
    *(a3 + 22) = 0x726D616411000000;
    *(a3 + 30) = 1819308129;
    a3[34] = 1;
    *(a3 + 35) = v5;
    *(a3 + 37) = 3840;
    *&result = 0x8000000;
    *(a3 + 39) = 0x8000000;
    *a2 = 47;
  }

  return result;
}

uint64_t AMRAudioFile::GetMagicCookieDataSize(AMRAudioFile *this, unsigned int *a2, unsigned int *a3)
{
  if (a3)
  {
    *a3 = 1;
  }

  if (a2)
  {
    *a2 = 47;
  }

  return 0;
}

uint64_t AMRAudioFile::GetNumPackets(AMRAudioFile *this)
{
  if ((*(this + 100) & 2) != 0 && *(this + 10))
  {
    v2 = this + 16;
    return *v2;
  }

  if ((*(this + 140) & 1) != 0 || !(*(*this + 696))(this, -1, 0, 1))
  {
    v3 = *(this + 15);
    if (v3)
    {
      v2 = (v3 + 24);
      return *v2;
    }
  }

  return 0;
}

uint64_t AMRAudioFile::GetNumBytes(AMRAudioFile *this)
{
  if ((*(this + 100) & 2) != 0 && *(this + 10))
  {
    return *(this + 1);
  }

  v3 = 0;
  (*(**(this + 13) + 24))(*(this + 13), &v3);
  return v3 - *(this + 9);
}

uint64_t AMRAudioFile::WritePackets(AMRAudioFile *this, uint64_t a2, uint64_t a3, const AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, char *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(this + 10))
  {
    if (!*(this + 36))
    {
      v14 = 2003334207;
      v15 = *(this + 11);
      if (!v15)
      {
        mDataByteSize = a4->mDataByteSize;
        if (mDataByteSize)
        {
          v17 = 0;
          v26 = &a7[mDataByteSize];
          if (*(this + 152))
          {
            v27 = &_AMR_WB_FRAMESIZE;
          }

          else
          {
            v27 = &_AMR_NB_FRAMESIZE;
          }

          v28 = a7;
          while (v27[(*v28 >> 3) & 0xF])
          {
            ++v17;
            v28 += v27[(*v28 >> 3) & 0xF];
            if (v28 >= v26)
            {
              goto LABEL_11;
            }
          }
        }

        *(this + 36) = 0;
        return v14;
      }

      v16 = *(this + 152) ? 320 : 160;
      v17 = v15 / v16;
LABEL_11:
      *(this + 36) = v17;
      if (!v17)
      {
        return v14;
      }
    }

    if (a6)
    {
      if (*a6)
      {
        v38 = 0;
        v37.mStartOffset = 0;
        *&v37.mVariableFramesInPacket = 0;
        (*(*this + 696))(this, -1, 0, 1);
        v18 = *(this + 15);
        if (v18)
        {
          if (*(v18 + 24) == a5)
          {
            if (!a4)
            {
              v14 = 1885563711;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AMRAudioFile.cpp";
                LOWORD(v40[0]) = 1024;
                *(v40 + 2) = 915;
                v29 = MEMORY[0x1E69E9C10];
                v30 = "%25s:%-5d  Packet Descriptions were not provided";
LABEL_45:
                _os_log_impl(&dword_18F5DF000, v29, OS_LOG_TYPE_ERROR, v30, buf, 0x12u);
              }

              return v14;
            }

            v19 = *(this + 9);
            v20 = *(v18 + 24);
            if (v20)
            {
              CompressedPacketTable::operator[](buf, v18, v20 - 1);
              v21 = *(this + 15);
              if (v21)
              {
                v22 = *(v21 + 24) - 1;
              }

              else
              {
                v22 = -1;
              }

              v31 = *buf;
              CompressedPacketTable::operator[](v36, v18, v22);
              v20 = v31 + v36[3];
            }

            v14 = (*(**(this + 13) + 56))(*(this + 13), 0, v20 + v19, a3, a7, &v38);
            if (v14)
            {
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                *&buf[4] = "AMRAudioFile.cpp";
                LOWORD(v40[0]) = 1024;
                *(v40 + 2) = 921;
                v29 = MEMORY[0x1E69E9C10];
                v30 = "%25s:%-5d  GetDataSource()->WriteBytes Failed";
                goto LABEL_45;
              }

              return v14;
            }

            if (*a6)
            {
              v32 = 0;
              p_mDataByteSize = &a4->mDataByteSize;
              do
              {
                v34 = *(this + 15);
                if (v34)
                {
                  v34 = *(v34 + 24);
                  if (v34)
                  {
                    CompressedPacketTable::operator[](buf, v18, v34 - 1);
                    v34 = *buf + v40[0];
                  }
                }

                v37.mStartOffset = v34;
                v35 = *p_mDataByteSize;
                v37.mVariableFramesInPacket = 0;
                v37.mDataByteSize = v35;
                AudioFileObject::AppendPacket(this, &v37);
                ++v32;
                p_mDataByteSize += 4;
              }

              while (v32 < *a6);
            }

            return 0;
          }
        }

        else if (!a5)
        {
          operator new();
        }

        return 1885563711;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "AMRAudioFile.cpp";
      LOWORD(v40[0]) = 1024;
      *(v40 + 2) = 900;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  WritePackets Failed - *ioNumPackets == 0";
    }

    else
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return 0;
      }

      *buf = 136315394;
      *&buf[4] = "AMRAudioFile.cpp";
      LOWORD(v40[0]) = 1024;
      *(v40 + 2) = 899;
      v23 = MEMORY[0x1E69E9C10];
      v24 = "%25s:%-5d  WritePackets Failed - ioNumPackets == NULL";
    }

    _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, v24, buf, 0x12u);
    return 0;
  }

  return AudioFileObject::WritePackets(this, a2, a3, a4, a5, a6, a7);
}

uint64_t AMRAudioFile::ReadPackets(AMRAudioFile *this, unsigned int a2, unsigned int *a3, AudioStreamPacketDescription *a4, uint64_t a5, unsigned int *a6, void *a7)
{
  v42 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v7 = a7 == 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a6)
  {
    v10 = *a6;
    if (v10)
    {
      if (a5 < 0)
      {
        v18 = 2003334207;
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          return v18;
        }

        *buf = 136315394;
        *&buf[4] = "AMRAudioFile.cpp";
        LOWORD(v41[0]) = 1024;
        *(v41 + 2) = 769;
        v19 = MEMORY[0x1E69E9C10];
        v20 = "%25s:%-5d  invalid starting packet parameter";
        goto LABEL_15;
      }

      v17 = (*(*this + 696))(this, v10 + a5, 0, 1);
      if (v17)
      {
        v18 = v17;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "AMRAudioFile.cpp";
          LOWORD(v41[0]) = 1024;
          *(v41 + 2) = 773;
          v19 = MEMORY[0x1E69E9C10];
          v20 = "%25s:%-5d  ScanForPackets (AMR) failed";
LABEL_15:
          _os_log_impl(&dword_18F5DF000, v19, OS_LOG_TYPE_ERROR, v20, buf, 0x12u);
          return v18;
        }

        return v18;
      }

      v22 = *(this + 15);
      if (!v22)
      {
        return 1685348671;
      }

      v39 = 0;
      v23 = *(v22 + 24);
      if (a3)
      {
        *a3 = 0;
      }

      v24 = *a6;
      if (v24 + a5 > v23)
      {
        LODWORD(v24) = v23 - a5;
        *a6 = v23 - a5;
      }

      if (!v24)
      {
        if (a3)
        {
          *a3 = 0;
        }

        return 4294967257;
      }

      v37 = a3;
      CompressedPacketTable::operator[](buf, v22, a5);
      v38 = *buf;
      v25 = *a6;
      if (v8)
      {
        if (v25)
        {
          v26 = 0;
          p_mVariableFramesInPacket = &a4->mVariableFramesInPacket;
          do
          {
            CompressedPacketTable::operator[](buf, v22, a5 + v26);
            v28 = v41[0];
            *(p_mVariableFramesInPacket - 1) = *buf - v38;
            *p_mVariableFramesInPacket = 0;
            p_mVariableFramesInPacket[1] = v28;
            p_mVariableFramesInPacket += 4;
            ++v26;
          }

          while (v26 < *a6);
        }

        v18 = 0;
        v39 = 0;
      }

      else
      {
        if (v25)
        {
          v29 = 0;
          v30 = 0;
          v31 = &a4->mVariableFramesInPacket;
          do
          {
            CompressedPacketTable::operator[](buf, v22, a5 + v30);
            v32 = v41[0];
            v29 += v41[0];
            v39 = v29;
            if (a4)
            {
              *(v31 - 1) = *buf - v38;
              *v31 = 0;
              v31[1] = v32;
            }

            ++v30;
            v31 += 4;
          }

          while (v30 < *a6);
        }

        CompressedPacketTable::operator[](buf, v22, a5);
        v33 = (*(*this + 72))(this, a2, *buf, &v39, a7);
        v18 = v33;
        if (v33 != -39 && v33 != 0)
        {
          v36 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v35 = v37;
          if (v36)
          {
            *buf = 136315394;
            *&buf[4] = "AMRAudioFile.cpp";
            LOWORD(v41[0]) = 1024;
            *(v41 + 2) = 852;
            _os_log_impl(&dword_18F5DF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%25s:%-5d  ReadBytes failed", buf, 0x12u);
          }

          if (v18 != -39)
          {
            return v18;
          }

LABEL_45:
          if (v35)
          {
            *v35 = v39;
          }

          return v18;
        }
      }

      v35 = v37;
      goto LABEL_45;
    }
  }

  v18 = 2003334207;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    *&buf[4] = "AMRAudioFile.cpp";
    LOWORD(v41[0]) = 1024;
    *(v41 + 2) = 768;
    v19 = MEMORY[0x1E69E9C10];
    v20 = "%25s:%-5d  invalid num packets parameter";
    goto LABEL_15;
  }

  return v18;
}

uint64_t AMRAudioFile::InitializeDataSource(AMRAudioFile *this, const AudioStreamBasicDescription *a2)
{
  v4 = 1718449215;
  mFormatID = a2->mFormatID;
  if (mFormatID != 1935764850)
  {
    if (mFormatID != 1935767394)
    {
      return v4;
    }

    *(this + 152) = 1;
  }

  AMRAudioFile::WriteHeader(this);
  mFramesPerPacket = a2->mFramesPerPacket;
  if (!mFramesPerPacket)
  {
    return 0;
  }

  v7 = *(this + 152) ? 320 : 160;
  *(this + 36) = mFramesPerPacket / v7;
  if (v7 <= mFramesPerPacket)
  {
    return 0;
  }

  return v4;
}

void AMRAudioFile::WriteHeader(AMRAudioFile *this)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = 0;
  if (*(this + 152) == 1)
  {
    v9 = 10;
    v8 = *"#!AMR-WB\n";
    if ((*(**(this + 13) + 56))(*(this + 13), 0, 0, 9, &v8, &v3))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v5 = "AMRAudioFile.cpp";
      v6 = 1024;
      v7 = 368;
      v2 = MEMORY[0x1E69E9C10];
LABEL_8:
      _os_log_impl(&dword_18F5DF000, v2, OS_LOG_TYPE_ERROR, "%25s:%-5d  WriteBytes Failed", buf, 0x12u);
      return;
    }
  }

  else
  {
    qmemcpy(&v8, "#!AMR\n", 6);
    if ((*(**(this + 13) + 56))(*(this + 13), 0, 0, 6, &v8, &v3))
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        return;
      }

      *buf = 136315394;
      v5 = "AMRAudioFile.cpp";
      v6 = 1024;
      v7 = 374;
      v2 = MEMORY[0x1E69E9C10];
      goto LABEL_8;
    }
  }

  *(this + 9) = v3;
}

uint64_t AMRAudioFile::OpenFromDataSource(AMRAudioFile *this)
{
  v32 = *MEMORY[0x1E69E9840];
  if ((*(this + 100) & 2) != 0)
  {
    return 1886547263;
  }

  v2 = 1718449215;
  LODWORD(outPropertyData) = 9;
  (*(**(this + 13) + 48))(*(this + 13), 0, 0, 9, inSpecifier, &outPropertyData);
  if (*inSpecifier == 1296113955 && *&inSpecifier[4] == 2642)
  {
    v7 = *(this + 152);
    v21 = 0u;
    v22 = 0u;
    if ((v7 & 1) == 0)
    {
      v8 = 6;
      goto LABEL_17;
    }
  }

  else
  {
    if (*inSpecifier != 0x42572D524D412123 || inSpecifier[8] != 10)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *inSpecifier = 136315394;
        *&inSpecifier[4] = "AMRAudioFile.cpp";
        LOWORD(v24) = 1024;
        *(&v24 + 2) = 293;
        v5 = MEMORY[0x1E69E9C10];
        v6 = "%25s:%-5d  AMRAudioFile::OpenFromDataSource - ReadHeader Failed";
LABEL_40:
        _os_log_impl(&dword_18F5DF000, v5, OS_LOG_TYPE_ERROR, v6, inSpecifier, 0x12u);
        return v2;
      }

      return v2;
    }

    v7 = 1;
    *(this + 152) = 1;
    v21 = 0u;
    v22 = 0u;
  }

  v8 = 9;
LABEL_17:
  *(this + 9) = v8;
  v9 = 8000.0;
  v10 = (v7 & 1) == 0;
  if (v7)
  {
    v11 = 1935767394;
  }

  else
  {
    v11 = 1935764850;
  }

  if (!v10)
  {
    v9 = 16000.0;
  }

  outPropertyData = v9;
  LODWORD(v21) = v11;
  DWORD1(v22) = 1;
  ioPropertyDataSize = 40;
  *inSpecifier = 0x616D72660C000000;
  if (v10)
  {
    v12 = 1919770995;
  }

  else
  {
    v12 = 1651990899;
  }

  *&inSpecifier[8] = v12;
  v24 = 0x61646E650A000000;
  v25 = 0;
  v26 = 0x726D616411000000;
  v27 = 1819308129;
  v28 = 1;
  if (v10)
  {
    v13 = -127;
  }

  else
  {
    v13 = -125;
  }

  v29 = v13;
  v30 = 3840;
  v31 = 0x8000000;
  AudioFormatGetProperty(0x666D7469u, 0x2Fu, inSpecifier, &ioPropertyDataSize, &outPropertyData);
  if (HIDWORD(v21))
  {
    if (*(this + 152))
    {
      v14 = 320;
    }

    else
    {
      v14 = 160;
    }

    v15 = HIDWORD(v21) / v14;
  }

  else
  {
    if (*(this + 152))
    {
      v16 = 4800;
    }

    else
    {
      v16 = 2400;
    }

    HIDWORD(v21) = v16;
    v15 = 15;
  }

  *(this + 36) = v15;
  v2 = (*(*this + 184))(this, &outPropertyData);
  if (!v2)
  {
    v18 = 0;
    (*(**(this + 13) + 24))(*(this + 13), &v18);
    (*(*this + 240))(this, v18 - *(this + 9));
    (*(*this + 696))(this, 1, 0, 1);
    return v2;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *inSpecifier = 136315394;
    *&inSpecifier[4] = "AMRAudioFile.cpp";
    LOWORD(v24) = 1024;
    *(&v24 + 2) = 296;
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%25s:%-5d  AMRAudioFile::OpenFromDataSource - ParseHeader Failed";
    goto LABEL_40;
  }

  return v2;
}

uint64_t AMRAudioFile::Create(AMRAudioFile *this, const __CFURL *a2, const AudioStreamBasicDescription *a3)
{
  result = 1718449215;
  mFormatID = a3->mFormatID;
  if (mFormatID == 1935767394 || mFormatID == 1935764850)
  {
    result = AudioFileObject::Create(this, a2, a3);
    if (!result)
    {
      if (a3->mFormatID == 1935767394)
      {
        *(this + 152) = 1;
      }

      mFramesPerPacket = a3->mFramesPerPacket;
      if (!mFramesPerPacket || (!*(this + 152) ? (v9 = 160) : (v9 = 320), *(this + 36) = mFramesPerPacket / v9, result = 1718449215, v9 <= mFramesPerPacket))
      {
        (*(*this + 656))(this, a3->mBytesPerFrame);
        AMRAudioFile::WriteHeader(this);
        return 0;
      }
    }
  }

  return result;
}

void AMRAudioFile::~AMRAudioFile(AMRAudioFile *this)
{
  AudioFileObject::~AudioFileObject(this);

  JUMPOUT(0x193ADF220);
}

uint64_t AMRAudioFormat::GetHFSCodes(AMRAudioFormat *this, unsigned int *a2, void *__dst)
{
  v6 = xmmword_18F901810;
  v3 = *a2 >> 2;
  if (v3 >= 4)
  {
    v3 = 4;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &v6, v4);
  }

  return 0;
}

uint64_t AMRAudioFormat::GetAvailableStreamDescriptions(AMRAudioFormat *this, int a2, unsigned int *a3, void *__dst)
{
  if (a2 == 1935764850 || a2 == 1935767394)
  {
    v11 = v4;
    v12 = v5;
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    DWORD2(v9[0]) = a2;
    if (*a3 >= 0x28)
    {
      v7 = 40;
    }

    else
    {
      v7 = 0;
    }

    *a3 = v7;
    if (__dst)
    {
      memcpy(__dst, v9, v7);
    }

    return 0;
  }

  else
  {
    *a3 = 0;
    return 1718449215;
  }
}

uint64_t AMRAudioFormat::GetAvailableFormatIDs(AMRAudioFormat *this, unsigned int *a2, void *__dst)
{
  __src = 0x7361776273616D72;
  v3 = *a2 >> 2;
  if (v3 >= 2)
  {
    v3 = 2;
  }

  v4 = 4 * v3;
  *a2 = v4;
  if (__dst)
  {
    memcpy(__dst, &__src, v4);
  }

  return 0;
}

void AMRAudioFormat::GetFileTypeName(AMRAudioFormat *this, const __CFString **a2)
{
  CABundleLocker::CABundleLocker(&v5);
  v3 = sAudioToolboxBundle;
  if (sAudioToolboxBundle == -1)
  {
    pthread_once(&sOnce, InitGetAudioToolboxBundle);
    v3 = sAudioToolboxBundle;
    if (sAudioToolboxBundle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = CFRetain(@"AMR");
    goto LABEL_6;
  }

  if (!sAudioToolboxBundle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = CFBundleCopyLocalizedString(v3, @"AMR", @"AMR", @"FileTypeNames");
LABEL_6:
  *a2 = v4;
  CABundleLocker::~CABundleLocker(&v5);
}

const __CFArray *AMRAudioFormat::GetMIMETypes(AMRAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"audio/AMR";
  values[1] = @"audio/AMR-WB";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *AMRAudioFormat::GetUTIs(AMRAudioFormat *this, const __CFArray **a2)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"org.3gpp.adaptive-multi-rate-audio";
  result = CFArrayCreate(*MEMORY[0x1E695E480], v4, 1, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

const __CFArray *AMRAudioFormat::GetExtensions(AMRAudioFormat *this, const __CFArray **a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = @"amr";
  values[1] = @"awb";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 2, MEMORY[0x1E695E9C0]);
  *a2 = result;
  return result;
}

BOOL AMRAudioFormat::FileDataIsThisFormat(AMRAudioFormat *this, unsigned int a2, char *__s1)
{
  if (a2 < 9)
  {
    return 0;
  }

  if (!strncmp(__s1, "#!AMR\n", 6uLL))
  {
    return 1;
  }

  return strncmp(__s1, "#!AMR-WB\n", 9uLL) == 0;
}

BOOL AMRAudioFormat::ExtensionIsThisFormat(AMRAudioFormat *this, CFStringRef theString1)
{
  v3 = 1;
  if (CFStringCompare(theString1, @"amr", 1uLL))
  {
    return CFStringCompare(theString1, @"awb", 1uLL) == kCFCompareEqualTo;
  }

  return v3;
}

BOOL KeyIsValid(const __CFString *a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v3 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"main loudness parameters");
    CFArrayAppendValue(v3, @"sound check info");
    CFArrayAppendValue(v3, @"additional loudness parameters");
    CFArrayAppendValue(v3, @"dialogue anchor parameters");
  }

  v4 = 0;
  do
  {
    v5 = v4;
    Count = CFArrayGetCount(v3);
    if (v5 >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(v3, v5);
    v8 = CFEqual(a1, ValueAtIndex);
    v4 = v5 + 1;
  }

  while (!v8);
  if (v3)
  {
    CFRelease(v3);
  }

  return v5 < Count;
}

uint64_t RemoveKeyFromList(CFArrayRef theArray, const __CFString *a2)
{
  while (1)
  {
    v5.length = CFArrayGetCount(theArray);
    v5.location = 0;
    result = CFArrayGetFirstIndexOfValue(theArray, v5, a2);
    if (result == -1)
    {
      break;
    }

    CFArrayRemoveValueAtIndex(theArray, result);
  }

  return result;
}

uint64_t ___ZN11APComponent11newInstanceEjbU13block_pointerFvP28OpaqueAudioComponentInstanceiE_block_invoke(void *a1, uint64_t a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = a1[5];
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v8 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      to_string(&__p, v5 + 3);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315906;
      v14 = "APComponent.mm";
      v15 = 1024;
      v16 = 354;
      v17 = 1024;
      v18 = a3;
      v19 = 2080;
      v20 = v10;
      _os_log_impl(&dword_18F5DF000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d error %d returned from OpenAsync for %s", buf, 0x22u);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    v11 = a1[6];
    if (v11)
    {
      (*(*v11 + 24))(v11);
    }

    return (*(a1[4] + 16))();
  }

  else
  {
    v6 = *(a1[4] + 16);

    return v6();
  }
}

RenderContextChangeGenerator *std::optional<RenderContextChangeGenerator>::emplace[abi:ne200100]<void({block_pointer} {__strong}&)(AudioUnitRenderContext const*),void>(RenderContextChangeGenerator *this, void **a2)
{
  if (LOBYTE(this[1].mLastWorkgroup) == 1)
  {
    RenderContextChangeGenerator::~RenderContextChangeGenerator(this);
    LOBYTE(this[1].mLastWorkgroup) = 0;
  }

  v4 = *a2;
  this->mLastWorkgroup = 0;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  this->mObserver = v4;
  LOBYTE(this[1].mLastWorkgroup) = 1;
  return this;
}

uint64_t APComponent_FromBundle_Loadable::ResolveFactoryFunction(APComponent_FromBundle_Loadable *this)
{
  v38 = *MEMORY[0x1E69E9840];
  error = 0;
  v2 = *(this + 24);
  if (!v2)
  {
    v7 = *(this + 20);
    if (!v7)
    {
      return 0xFFFFFFFFLL;
    }

    v8 = CFURLCreateWithFileSystemPath(0, v7, kCFURLPOSIXPathStyle, 1u);
    *buf = v8;
    v9 = CFBundleCreate(0, v8);
    v10 = *(this + 24);
    *(this + 24) = v9;
    if (v10)
    {
      CFRelease(v10);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    v2 = *(this + 24);
    if (!v2)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if (!CFBundleLoadExecutableAndReturnError(v2, &error))
  {
    v11 = error;
    if (error)
    {
      v12 = CFErrorCopyDescription(error);
      v11 = error;
    }

    else
    {
      v12 = 0;
    }

    v20 = CFErrorCopyUserInfo(v11);
    v21 = v20;
    if (v20)
    {
      Value = CFDictionaryGetValue(v20, @"NSDebugDescription");
    }

    else
    {
      Value = 0;
    }

    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v23 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_ERROR))
    {
      v25 = *(this + 24);
      *buf = 136316162;
      *&buf[4] = "APComponent.mm";
      *&buf[12] = 1024;
      *&buf[14] = 890;
      v34 = 2112;
      *v35 = v25;
      *&v35[8] = 2112;
      *&v35[10] = v12;
      v36 = 2112;
      v37 = Value;
      _os_log_impl(&dword_18F5DF000, v23, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: cannot load bundle: %@ (%@)", buf, 0x30u);
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v21)
    {
      CFRelease(v21);
    }

    if (error)
    {
      CFRelease(error);
    }

    return 0xFFFFFFFFLL;
  }

  v3 = *(this + 22);
  if (v3)
  {
    FunctionPointerForName = CFBundleGetFunctionPointerForName(*(this + 24), v3);
    v5 = FunctionPointerForName;
    *&v35[4] = 0;
    if (FunctionPointerForName)
    {
      *buf = &unk_1F032B9E0;
      *&buf[8] = FunctionPointerForName;
      *&v35[4] = buf;
    }

    std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](buf, this + 10);
    std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](buf);
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v6 = *gAudioComponentLogCategory;
    if (os_log_type_enabled(*gAudioComponentLogCategory, OS_LOG_TYPE_DEBUG))
    {
      v18 = *(this + 24);
      v19 = *(this + 22);
      *buf = 136316162;
      *&buf[4] = "APComponent.mm";
      *&buf[12] = 1024;
      *&buf[14] = 915;
      v34 = 2112;
      *v35 = v18;
      *&v35[8] = 2112;
      *&v35[10] = v19;
      v36 = 2048;
      v37 = v5;
      _os_log_impl(&dword_18F5DF000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ %@ -> %p", buf, 0x30u);
    }
  }

  else
  {
    v13 = *(this + 23);
    if (v13)
    {
      v14 = v13;
      v15 = NSClassFromString(v14);

      if (v15)
      {
        *(this + 25) = v15;
        v16 = v15;
        *buf = &unk_1F032BA28;
        *&buf[8] = v16;
        *&v35[4] = buf;
        std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](buf, this + 10);
        std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__value_func[abi:ne200100](buf);
      }

      else
      {
        if (!gAudioComponentLogCategory)
        {
          operator new();
        }

        v27 = *gAudioComponentLogCategory;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v29 = *(this + 24);
          CAFormatter::CAFormatter(&v31, (this + 36));
          v30 = *(this + 23);
          *buf = 136316162;
          *&buf[4] = "APComponent.mm";
          *&buf[12] = 1024;
          *&buf[14] = 920;
          v34 = 2112;
          *v35 = v29;
          *&v35[8] = 2080;
          *&v35[10] = v31;
          v36 = 2112;
          v37 = v30;
          _os_log_impl(&dword_18F5DF000, v27, OS_LOG_TYPE_ERROR, "%25s:%-5d %@: %s: AUAudioUnit subclass %@ not found", buf, 0x30u);
          if (v31)
          {
            free(v31);
          }
        }
      }
    }
  }

  if (*(this + 13))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

const void **applesauce::CF::ObjectRef<__CFURL const*>::~ObjectRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *std::__function::__value_func<AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_18F73DDC4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::destroy_deallocate(id *a1)
{

  operator delete(a1);
}

id std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_1F032BA28;
  result = *(a1 + 8);
  a2[1] = result;
  return result;
}

void std::__function::__func<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0,std::allocator<APComponent_FromBundle_Loadable::ResolveFactoryFunction(void)::$_0>,AudioComponentPlugInInterface * ()(AudioComponentDescription const*)>::~__func(uint64_t a1)
{

  JUMPOUT(0x193ADF220);
}

id APComponent_FromBundle_Loadable::getV3Class(APComponent_FromBundle_Loadable *this)
{
  if (!*(this + 13))
  {
    (*(*this + 96))(this);
  }

  v2 = *(this + 25);

  return v2;
}

void APComponent_FromBundle_Loadable::~APComponent_FromBundle_Loadable(APComponent *this)
{
  *this = &unk_1F033C940;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent_FromBundle_Base::~APComponent_FromBundle_Base(this);

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F033C940;
  v2 = *(this + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  APComponent_FromBundle_Base::~APComponent_FromBundle_Base(this);
}

uint64_t getConfigurationInfo(const AudioComponentDescription *a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1->componentType)
  {
    v7 = a1->componentSubType == 0;
  }

  else
  {
    v7 = 1;
  }

  v9 = !v7 && a1->componentManufacturer != 0 && HIWORD(a1->componentType) == 24949;
  v10 = v9;
  if (v9)
  {
    v11 = createConfgurationInfoCacheKey(a1, a2);
    v12 = copyConfigurationInfoFromCache(v11);
    if (v12)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
      addValidationStatusIfExists(a1, a2, MutableCopy);
      if (!gAudioComponentLogCategory)
      {
        operator new();
      }

      v15 = *gAudioComponentLogCategory;
      v16 = v15;
      if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "AudioComponentConfigurationInfo.mm";
        *&buf[12] = 1024;
        *&buf[14] = 249;
        _os_log_impl(&dword_18F5DF000, v16, OS_LOG_TYPE_INFO, "%25s:%-5d returning cached info", buf, 0x12u);
      }

      (v6)[2](v6, MutableCopy);
    }

    else
    {
      v26 = *&a1->componentType;
      componentFlagsMask = a1->componentFlagsMask;
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = ___Z20getConfigurationInfoRK25AudioComponentDescriptionjU13block_pointerFvPK14__CFDictionaryE_block_invoke;
      v21 = &unk_1E72BABC8;
      v23 = v6;
      v22 = v11;
      v24 = a1;
      v25 = a2;
      v14 = &v18;
      v28 = v26;
      v29 = componentFlagsMask;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL38instantiateAndCatalogConfigurationInfo25AudioComponentDescriptionU13block_pointerFvP14__CFDictionaryE_block_invoke;
      v31 = &unk_1E72BABF0;
      v32 = v14;
      v33 = v26;
      v34 = componentFlagsMask;
      [AUAudioUnit instantiateWithComponentDescription:&v28 options:1 completionHandler:buf, v18, v19, v20, v21];
    }
  }

  else
  {
    (*(v5 + 2))(v5, 0);
  }

  return v10;
}

void addValidationStatusIfExists(const AudioComponentDescription *a1, uint64_t a2, __CFDictionary *a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v16 = a3;
  v17 = objc_opt_new();
  v18[0] = 0xC01000007;
  getValidationCapsuleVersion();
  v6 = v5;
  for (i = 0; i != 8; i += 4)
  {
    v8 = *(v18 + i);
    v9 = getValidationResultFromCache(a1, v8, a2, v6, 0);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 objectForKeyedSubscript:@"Result"];
      v12 = [v11 intValue];

      if (v12)
      {
        v13 = [v10 objectForKeyedSubscript:@"Result"];
        v14 = @"arm64";
        if (v8 == 16777223)
        {
          v14 = @"x86_64";
        }

        v15 = v14;
        [v17 setObject:v13 forKeyedSubscript:v15];
      }
    }
  }

  if ([v17 count])
  {
    [(__CFDictionary *)v16 setObject:v17 forKeyedSubscript:@"ValidationResult"];
  }
}

uint64_t ___Z20getConfigurationInfoRK25AudioComponentDescriptionjU13block_pointerFvPK14__CFDictionaryE_block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2;
    v4 = [v3 objectForKeyedSubscript:@"ChannelConfigurations"];
    if (v4 && ([v3 objectForKeyedSubscript:@"ChannelConfigurations"], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "count"), v5, v4, v6) && (objc_msgSend(v3, "objectForKeyedSubscript:", @"InitialInputs"), (v7 = objc_claimAutoreleasedReturnValue()) != 0) && (objc_msgSend(v3, "objectForKeyedSubscript:", @"InitialOutputs"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {

      writeConfigurationInfoToCache(*(a1 + 32), v3);
    }

    else
    {
    }

    addValidationStatusIfExists(*(a1 + 48), *(a1 + 56), v3);
    if (!gAudioComponentLogCategory)
    {
      operator new();
    }

    v11 = *gAudioComponentLogCategory;
    v12 = v11;
    if (v11)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = *(a1 + 32);
        v14 = 136315906;
        v15 = "AudioComponentConfigurationInfo.mm";
        v16 = 1024;
        v17 = 265;
        v18 = 2112;
        v19 = v13;
        v20 = 2112;
        v21 = v3;
        _os_log_impl(&dword_18F5DF000, v12, OS_LOG_TYPE_DEBUG, "%25s:%-5d %@ -> %@", &v14, 0x26u);
      }
    }

    return (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);

    return v9();
  }
}

void ___ZL38instantiateAndCatalogConfigurationInfo25AudioComponentDescriptionU13block_pointerFvP14__CFDictionaryE_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v49[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v46 = a3;
  v47 = v5;
  if (v5)
  {
    v45 = a1;
    v6 = objc_opt_new();
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "providesUserInterface")}];
    [v6 setObject:v7 forKeyedSubscript:@"HasCustomView"];

    v8 = v5;
    v9 = [v8 channelCapabilities];
    if (v9)
    {
      v10 = objc_opt_new();
      v11 = [v9 count];
      if ((v11 & 0xFFFFFFFE) >= 1)
      {
        v12 = 0;
        v13 = v11 & 0xFFFFFFFE;
        do
        {
          v14 = [v9 objectAtIndexedSubscript:v12];
          v49[0] = v14;
          v15 = v12 + 1;
          v16 = [v9 objectAtIndexedSubscript:v12 + 1];
          v49[1] = v16;
          v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
          [v10 addObject:v17];

          v12 = v15 + 1;
        }

        while (v15 + 1 < v13);
      }
    }

    else
    {
      v44 = *(v45 + 40);
      v10 = &unk_1F034DE90;
      if (v44 != 1635083896 && v44 != 1635085670 && v44 != 1635086188)
      {
        v10 = MEMORY[0x1E695E0F0];
      }
    }

    [v6 setObject:v10 forKeyedSubscript:@"ChannelConfigurations"];
    v18 = [v8 inputBusses];
    v19 = busArrayChannelCounts(v18);

    if (v19)
    {
      [v6 setObject:v19 forKeyedSubscript:@"InitialInputs"];
    }

    v20 = [v8 outputBusses];
    v21 = busArrayChannelCounts(v20);

    if (v21)
    {
      [v6 setObject:v21 forKeyedSubscript:@"InitialOutputs"];
    }

    v48[0] = MEMORY[0x1E695E110];
    v22 = MEMORY[0x1E696AD98];
    v23 = [v8 inputBusses];
    v24 = [v22 numberWithBool:{objc_msgSend(v23, "isCountChangeable")}];
    v48[1] = v24;
    v25 = MEMORY[0x1E696AD98];
    v26 = [v8 outputBusses];
    v27 = [v25 numberWithBool:{objc_msgSend(v26, "isCountChangeable")}];
    v48[2] = v27;
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
    [v6 setObject:v28 forKeyedSubscript:@"BusCountWritable"];

    v29 = objc_opt_new();
    v30 = [v8 inputBusses];
    v31 = [v30 count] == 0;

    if (!v31)
    {
      v32 = [v8 inputBusses];
      v33 = [v32 objectAtIndexedSubscript:0];
      v34 = [v33 supportedChannelLayoutTags];
      [v29 setObject:v34 forKeyedSubscript:@"Input"];
    }

    v35 = [v8 outputBusses];
    v36 = [v35 count] == 0;

    if (!v36)
    {
      v37 = [v8 outputBusses];
      v38 = [v37 objectAtIndexedSubscript:0];
      v39 = [v38 supportedChannelLayoutTags];
      [v29 setObject:v39 forKeyedSubscript:@"Output"];
    }

    [v6 setObject:v29 forKeyedSubscript:@"SupportedChannelLayoutTags"];
    v40 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v8, "AudioUnitMIDIProtocol")}];
    [v6 setObject:v40 forKeyedSubscript:@"MIDIProtocol"];

    v41 = [v8 migrateFromPlugin];
    [v6 setObject:v41 forKeyedSubscript:@"MigrateFromPlugin"];

    v42 = *(v45 + 32);
    v43 = v6;
    (*(v42 + 16))(v42, v43);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

id busArrayChannelCounts(AUAudioUnitBusArray *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1 && [(AUAudioUnitBusArray *)v1 count])
  {
    v3 = objc_opt_new();
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = v2;
    v5 = [(AUAudioUnitBusArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = [*(*(&v11 + 1) + 8 * i) format];
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v8, "channelCount")}];
          [v3 addObject:v9];
        }

        v5 = [(AUAudioUnitBusArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t MP4USACSpecificConfig::Deserialize(uint64_t a1, void *a2)
{
  v140 = *MEMORY[0x1E69E9840];
  *(a1 + 216) = 0;
  v4 = *(a2 + 4);
  v5 = v4 >> 27;
  v6 = *(a2 + 5) - 5;
  *(a2 + 5) = v6;
  if (v6 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 4);
    v8 = *(a2 + 5);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 5) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = 32 * v4;
  }

  *(a2 + 4) = v7;
  if (v5 > 0x1F)
  {
    goto LABEL_15;
  }

  if (((1 << v5) & 0x70006000) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v136 = 136315394;
      v137 = "MP4USACSpecificConfig.cpp";
      v138 = 1024;
      v139 = 176;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: reserved sample rate index";
      goto LABEL_10;
    }

    return 4294967090;
  }

  if (v5 == 31)
  {
    v13 = v7 >> 8;
    v6 -= 24;
    *(a2 + 5) = v6;
    if (v6 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v15 = *(a2 + 4);
      v14 = *(a2 + 5);
      v13 |= v15 >> v14;
      v6 = v14 + 32;
      if (v14 == -32)
      {
        v7 = 0;
      }

      else
      {
        v7 = v15 << -v14;
      }
    }

    else
    {
      v7 <<= 24;
    }

    *(a2 + 4) = v7;
  }

  else
  {
LABEL_15:
    v13 = kUSACSampleRateTable[v5];
  }

  *(a1 + 8) = v13;
  v16 = v7 >> 29;
  v17 = v6 - 3;
  *(a2 + 5) = v17;
  if (v17 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v20 = *(a2 + 4);
    v19 = *(a2 + 5);
    v16 |= v20 >> v19;
    v17 = v19 + 32;
    *(a2 + 5) = v19 + 32;
    if (v19 == -32)
    {
      v18 = 0;
    }

    else
    {
      v18 = v20 << -v19;
    }
  }

  else
  {
    v18 = 8 * v7;
  }

  *(a2 + 4) = v18;
  *(a1 + 12) = v16;
  if (v16 >= 5)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v136 = 136315394;
      v137 = "MP4USACSpecificConfig.cpp";
      v138 = 1024;
      v139 = 186;
      v10 = MEMORY[0x1E69E9C10];
      v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: reserved coreSbrFrameLengthIndex";
      goto LABEL_10;
    }

    return 4294967090;
  }

  v21 = v18 >> 27;
  v22 = v17 - 5;
  *(a2 + 5) = v22;
  if (v22 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v25 = *(a2 + 4);
    v24 = *(a2 + 5);
    v21 |= v25 >> v24;
    *(a2 + 5) = v24 + 32;
    if (v24 == -32)
    {
      v23 = 0;
    }

    else
    {
      v23 = v25 << -v24;
    }
  }

  else
  {
    v23 = 32 * v18;
  }

  *(a2 + 4) = v23;
  *(a1 + 16) = v21;
  if (!v21)
  {
    v26 = escapedValue(a2, 5, 8, 16);
    v27 = *(a1 + 24);
    v28 = v26;
    v29 = *(a1 + 32) - v27;
    if (v26 <= v29)
    {
      if (v26 < v29)
      {
        *(a1 + 32) = v27 + v26;
      }
    }

    else
    {
      std::vector<unsigned char>::__append((a1 + 24), v26 - v29);
    }

    if (v28)
    {
      for (i = 0; i != v28; ++i)
      {
        v31 = *(a2 + 4);
        v32 = v31 >> 27;
        v33 = *(a2 + 5) - 5;
        *(a2 + 5) = v33;
        if (v33 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
          *a2 += 4;
          v36 = *(a2 + 4);
          v35 = *(a2 + 5);
          v32 |= v36 >> v35;
          *(a2 + 5) = v35 + 32;
          if (v35 == -32)
          {
            v34 = 0;
          }

          else
          {
            v34 = v36 << -v35;
          }
        }

        else
        {
          v34 = 32 * v31;
        }

        *(a2 + 4) = v34;
        *(*(a1 + 24) + i) = v32;
      }
    }
  }

  v37 = escapedValue(a2, 4, 8, 16);
  v38 = (v37 + 1);
  v39 = *(a1 + 48);
  v40 = *(a1 + 56);
  v41 = (v40 - v39) >> 2;
  if (v38 > v41)
  {
    v42 = v38 - v41;
    v43 = *(a1 + 64);
    if (v42 > (v43 - v40) >> 2)
    {
      v44 = v43 - v39;
      v45 = v44 >> 1;
      if (v44 >> 1 <= v38)
      {
        v45 = (v37 + 1);
      }

      if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v46 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v46 = v45;
      }

      if (!(v46 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(a1 + 56), 4 * v42);
    v47 = v40 + 4 * v42;
    goto LABEL_58;
  }

  if (v38 < v41)
  {
    v47 = v39 + 4 * v38;
LABEL_58:
    *(a1 + 56) = v47;
  }

  if (!v38)
  {
LABEL_157:
    Bit = TBitstreamReader<unsigned int>::GetBit(a2);
    *(a1 + 185) = Bit != 0;
    if (Bit)
    {
      v111 = escapedValue(a2, 2, 4, 8);
      if (v111 != -1)
      {
        v112 = v111;
        v113 = 0;
        do
        {
          v114 = escapedValue(a2, 4, 8, 16);
          v115 = escapedValue(a2, 4, 8, 16);
          v116 = v115;
          if (v114 == 2)
          {
            v124 = v115;
            v125 = *(a1 + 192);
            v126 = *(a1 + 200) - v125;
            if (v115 <= v126)
            {
              if (v115 < v126)
              {
                *(a1 + 200) = v125 + v115;
              }
            }

            else
            {
              std::vector<unsigned char>::__append((a1 + 192), v115 - v126);
            }

            if (v116)
            {
              v127 = 0;
              do
              {
                v128 = *(a2 + 4);
                v129 = HIBYTE(v128);
                v130 = *(a2 + 5) - 8;
                *(a2 + 5) = v130;
                if (v130 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v133 = *(a2 + 4);
                  v132 = *(a2 + 5);
                  v129 |= v133 >> v132;
                  *(a2 + 5) = v132 + 32;
                  if (v132 == -32)
                  {
                    v131 = 0;
                  }

                  else
                  {
                    v131 = v133 << -v132;
                  }
                }

                else
                {
                  v131 = v128 << 8;
                }

                *(a2 + 4) = v131;
                *(*(a1 + 192) + v127++) = v129;
              }

              while (v124 != v127);
            }
          }

          else if (v114)
          {
            TBitstreamReader<unsigned int>::SkipBits(a2, 8 * v115);
          }

          else
          {
            v117 = v115 + 1;
            while (--v117)
            {
              v118 = *(a2 + 4);
              v119 = HIBYTE(v118);
              v120 = *(a2 + 5) - 8;
              *(a2 + 5) = v120;
              if (v120 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                *a2 += 4;
                v123 = *(a2 + 4);
                v122 = *(a2 + 5);
                v119 |= v123 >> v122;
                *(a2 + 5) = v122 + 32;
                if (v122 == -32)
                {
                  v121 = 0;
                }

                else
                {
                  v121 = v123 << -v122;
                }
              }

              else
              {
                v121 = v118 << 8;
              }

              *(a2 + 4) = v121;
              if (v119 != 165)
              {
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  v136 = 136315394;
                  v137 = "MP4USACSpecificConfig.cpp";
                  v138 = 1024;
                  v139 = 309;
                  v10 = MEMORY[0x1E69E9C10];
                  v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: invalid fill pattern for ID_CONFIG_EXT_FILL";
                  goto LABEL_10;
                }

                return 4294967090;
              }
            }
          }
        }

        while (v113++ != v112);
      }
    }

    result = 0;
    *(a1 + 216) = 1;
    return result;
  }

  v48 = 0;
  while (1)
  {
    v49 = *(a2 + 4);
    v50 = v49 >> 30;
    v51 = *(a2 + 5) - 2;
    *(a2 + 5) = v51;
    if (v51 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v54 = *(a2 + 4);
      v53 = *(a2 + 5);
      v50 |= v54 >> v53;
      *(a2 + 5) = v53 + 32;
      if (v53 == -32)
      {
        v52 = 0;
      }

      else
      {
        v52 = v54 << -v53;
      }
    }

    else
    {
      v52 = 4 * v49;
    }

    *(a2 + 4) = v52;
    *(*(a1 + 48) + 4 * v48) = v50;
    if (v50 <= 1)
    {
      v55 = kUSACSbrFrameLengthInfoTable[4 * *(a1 + 12) + 1];
      if (v50)
      {
        if (v50 == 1)
        {
          *(a1 + 72) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 73) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          if (v55)
          {
            *(a1 + 74) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            *(a1 + 75) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            *(a1 + 76) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
            USACSBRHeader::Deserialize(a1 + 77, a2);
            v56 = *(a2 + 4);
            v57 = v56 >> 30;
            v58 = *(a2 + 5) - 2;
            *(a2 + 5) = v58;
            if (v58 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v71 = *(a2 + 4);
              v70 = *(a2 + 5);
              v57 |= v71 >> v70;
              v58 = v70 + 32;
              *(a2 + 5) = v70 + 32;
              v59 = v70 == -32 ? 0 : v71 << -v70;
            }

            else
            {
              v59 = 4 * v56;
            }

            *(a2 + 4) = v59;
            if (v57)
            {
              v75 = v59 >> 19;
              v76 = v58 - 13;
              *(a2 + 5) = v76;
              if (v76 < 0)
              {
                TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                *a2 += 4;
                v79 = *(a2 + 4);
                v78 = *(a2 + 5);
                v75 |= v79 >> v78;
                v76 = v78 + 32;
                *(a2 + 5) = v78 + 32;
                if (v78 == -32)
                {
                  v77 = 0;
                }

                else
                {
                  v77 = v79 << -v78;
                }
              }

              else
              {
                v77 = v59 << 13;
              }

              *(a2 + 4) = v77;
              *(a1 + 88) = (v75 >> 10) & 7;
              *(a1 + 89) = (v75 >> 7) & 7;
              v101 = vand_s8(vshl_u16((*&vdup_n_s16(v75) & 0xFF00FF00FF00FFLL), 0xFFFFFFFEFFFDFFFBLL), 0x1000100030003);
              *(a1 + 90) = vuzp1_s8(v101, v101).u32[0];
              *(a1 + 94) = v75 & 1;
              if (v75)
              {
                v102 = v77 >> 27;
                v76 -= 5;
                *(a2 + 5) = v76;
                if (v76 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v104 = *(a2 + 4);
                  v103 = *(a2 + 5);
                  v102 |= v104 >> v103;
                  v76 = v103 + 32;
                  *(a2 + 5) = v103 + 32;
                  if (v103 == -32)
                  {
                    v77 = 0;
                  }

                  else
                  {
                    v77 = v104 << -v103;
                  }
                }

                else
                {
                  v77 *= 32;
                }

                *(a2 + 4) = v77;
                *(a1 + 95) = v102;
              }

              if ((v57 & 0xFFFFFFFE) == 2)
              {
                v105 = v77 >> 27;
                v106 = v76 - 5;
                *(a2 + 5) = v106;
                if (v106 < 0)
                {
                  TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
                  *a2 += 4;
                  v109 = *(a2 + 4);
                  v108 = *(a2 + 5);
                  v105 |= v109 >> v108;
                  *(a2 + 5) = v108 + 32;
                  if (v108 == -32)
                  {
                    v107 = 0;
                  }

                  else
                  {
                    v107 = v109 << -v108;
                  }
                }

                else
                {
                  v107 = 32 * v77;
                }

                *(a2 + 4) = v107;
                *(a1 + 96) = v105;
                if (*(a1 + 95) < v105)
                {
                  *(a1 + 95) = v105;
                }

                *(a1 + 97) = TBitstreamReader<unsigned int>::GetBit(a2);
              }

              if (*(a1 + 90) == 2)
              {
                *(a1 + 98) = TBitstreamReader<unsigned int>::GetBit(a2);
              }

              *(a1 + 99) = 1;
            }
          }
        }
      }

      else
      {
        *(a1 + 72) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
        *(a1 + 73) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
        if (v55)
        {
          *(a1 + 74) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 75) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          *(a1 + 76) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
          USACSBRHeader::Deserialize(a1 + 77, a2);
        }
      }

      goto LABEL_156;
    }

    if (v50 == 2)
    {
      *(a1 + 72) = 0;
      goto LABEL_156;
    }

    if (v50 == 3)
    {
      break;
    }

LABEL_156:
    if (++v48 == v38)
    {
      goto LABEL_157;
    }
  }

  v60 = escapedValue(a2, 4, 8, 16);
  v61 = escapedValue(a2, 4, 8, 16);
  v62 = TBitstreamReader<unsigned int>::GetBit(a2);
  *(a1 + 100) = v62 != 0;
  if (v62)
  {
    v63 = escapedValue(a2, 8, 16, 0) + 1;
  }

  else
  {
    v63 = 0;
  }

  *(a1 + 104) = v63;
  *(a1 + 108) = TBitstreamReader<unsigned int>::GetBit(a2) != 0;
  if (v60 <= 1)
  {
    if (v60)
    {
      if (v60 == 1)
      {
        v67 = v61;
        v68 = *(a1 + 112);
        v69 = *(a1 + 120) - v68;
        if (v61 <= v69)
        {
          if (v61 < v69)
          {
            *(a1 + 120) = v68 + v61;
          }
        }

        else
        {
          std::vector<unsigned char>::__append((a1 + 112), v61 - v69);
        }

        if (v61)
        {
          v94 = 0;
          do
          {
            v95 = *(a2 + 4);
            v96 = HIBYTE(v95);
            v97 = *(a2 + 5) - 8;
            *(a2 + 5) = v97;
            if (v97 < 0)
            {
              TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
              *a2 += 4;
              v100 = *(a2 + 4);
              v99 = *(a2 + 5);
              v96 |= v100 >> v99;
              *(a2 + 5) = v99 + 32;
              if (v99 == -32)
              {
                v98 = 0;
              }

              else
              {
                v98 = v100 << -v99;
              }
            }

            else
            {
              v98 = v95 << 8;
            }

            *(a2 + 4) = v98;
            *(*(a1 + 112) + v94++) = v96;
          }

          while (v67 != v94);
        }

        goto LABEL_156;
      }

      goto LABEL_95;
    }

    goto LABEL_156;
  }

  switch(v60)
  {
    case 2:
      v72 = v61;
      v73 = *(a1 + 136);
      v74 = *(a1 + 144) - v73;
      if (v61 <= v74)
      {
        if (v61 < v74)
        {
          *(a1 + 144) = v73 + v61;
        }
      }

      else
      {
        std::vector<unsigned char>::__append((a1 + 136), v61 - v74);
      }

      if (v61)
      {
        v80 = 0;
        do
        {
          v81 = *(a2 + 4);
          v82 = HIBYTE(v81);
          v83 = *(a2 + 5) - 8;
          *(a2 + 5) = v83;
          if (v83 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v86 = *(a2 + 4);
            v85 = *(a2 + 5);
            v82 |= v86 >> v85;
            *(a2 + 5) = v85 + 32;
            if (v85 == -32)
            {
              v84 = 0;
            }

            else
            {
              v84 = v86 << -v85;
            }
          }

          else
          {
            v84 = v81 << 8;
          }

          *(a2 + 4) = v84;
          *(*(a1 + 136) + v80++) = v82;
        }

        while (v72 != v80);
      }

      goto LABEL_156;
    case 3:
      *(a1 + 184) = v48 == 0;
      goto LABEL_156;
    case 4:
      v64 = v61;
      v65 = *(a1 + 160);
      v66 = *(a1 + 168) - v65;
      if (v61 <= v66)
      {
        if (v61 < v66)
        {
          *(a1 + 168) = v65 + v61;
        }
      }

      else
      {
        std::vector<unsigned char>::__append((a1 + 160), v61 - v66);
      }

      if (v61)
      {
        v87 = 0;
        do
        {
          v88 = *(a2 + 4);
          v89 = HIBYTE(v88);
          v90 = *(a2 + 5) - 8;
          *(a2 + 5) = v90;
          if (v90 < 0)
          {
            TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
            *a2 += 4;
            v93 = *(a2 + 4);
            v92 = *(a2 + 5);
            v89 |= v93 >> v92;
            *(a2 + 5) = v92 + 32;
            if (v92 == -32)
            {
              v91 = 0;
            }

            else
            {
              v91 = v93 << -v92;
            }
          }

          else
          {
            v91 = v88 << 8;
          }

          *(a2 + 4) = v91;
          *(*(a1 + 160) + v87++) = v89;
        }

        while (v64 != v87);
      }

      goto LABEL_156;
  }

LABEL_95:
  if (8 * v61 <= *(a2 + 5) + 8 * (*(a2 + 2) - *a2))
  {
    TBitstreamReader<unsigned int>::SkipBits(a2, 8 * v61);
    goto LABEL_156;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v136 = 136315394;
    v137 = "MP4USACSpecificConfig.cpp";
    v138 = 1024;
    v139 = 290;
    v10 = MEMORY[0x1E69E9C10];
    v11 = "%25s:%-5d  MP4USACSpecificConfig::Deserialize: insufficient bits";
LABEL_10:
    _os_log_impl(&dword_18F5DF000, v10, OS_LOG_TYPE_ERROR, v11, &v136, 0x12u);
  }

  return 4294967090;
}

uint64_t escapedValue(void *a1, int a2, int a3, int a4)
{
  v6 = a2;
  v8 = *(a1 + 4);
  v9 = v8 >> -a2;
  v10 = *(a1 + 5) - a2;
  *(a1 + 5) = v10;
  if (v10 < 0)
  {
    TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
    *a1 += 4;
    v13 = *(a1 + 4);
    v12 = *(a1 + 5);
    v9 = (v13 >> v12) | v9;
    v10 = v12 + 32;
    *(a1 + 5) = v12 + 32;
    if (v12 == -32)
    {
      v11 = 0;
    }

    else
    {
      v11 = v13 << -v12;
    }
  }

  else
  {
    v11 = v8 << a2;
  }

  *(a1 + 4) = v11;
  if ((v9 ^ (-1 << v6)) == 0xFFFFFFFF)
  {
    v14 = v11 >> -a3;
    v15 = v10 - a3;
    *(a1 + 5) = v15;
    if (v15 < 0)
    {
      TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
      *a1 += 4;
      v18 = *(a1 + 4);
      v17 = *(a1 + 5);
      v14 |= v18 >> v17;
      v15 = v17 + 32;
      *(a1 + 5) = v17 + 32;
      v16 = v17 == -32 ? 0 : v18 << -v17;
    }

    else
    {
      v16 = v11 << a3;
    }

    *(a1 + 4) = v16;
    v9 = v14 + v9;
    if ((v14 ^ (-1 << a3)) == 0xFFFFFFFF)
    {
      if (a4)
      {
        v19 = v16 >> -a4;
        v20 = v15 - a4;
        *(a1 + 5) = v20;
        if (v20 < 0)
        {
          TBitstreamReader<unsigned int>::FillCacheFrom(a1, *a1);
          *a1 += 4;
          v23 = *(a1 + 4);
          v22 = *(a1 + 5);
          v19 |= v23 >> v22;
          *(a1 + 5) = v22 + 32;
          if (v22 == -32)
          {
            v21 = 0;
          }

          else
          {
            v21 = v23 << -v22;
          }
        }

        else
        {
          v21 = v16 << a4;
        }

        *(a1 + 4) = v21;
      }

      else
      {
        v19 = 0;
      }

      return v19 + v9;
    }
  }

  return v9;
}

uint64_t USACSBRHeader::Deserialize(uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(a2 + 4);
  v5 = v4 >> 22;
  v6 = *(a2 + 5) - 10;
  *(a2 + 5) = v6;
  if (v6 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v9 = *(a2 + 4);
    v8 = *(a2 + 5);
    v5 |= v9 >> v8;
    v6 = v8 + 32;
    *(a2 + 5) = v8 + 32;
    if (v8 == -32)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9 << -v8;
    }
  }

  else
  {
    v7 = v4 << 10;
  }

  *(a2 + 4) = v7;
  *v3 = (v5 >> 6) & 0xF;
  *(v3 + 1) = (v5 >> 2) & 0xF;
  *(v3 + 2) = (v5 & 2) != 0;
  *(v3 + 6) = v5 & 1;
  if ((v5 >> 1))
  {
    v13 = v7 >> 27;
    v6 -= 5;
    *(a2 + 5) = v6;
    if (v6 < 0)
    {
      result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
      *a2 += 4;
      v17 = *(a2 + 4);
      v16 = *(a2 + 5);
      v13 |= v17 >> v16;
      v6 = v16 + 32;
      *(a2 + 5) = v16 + 32;
      if (v16 == -32)
      {
        v7 = 0;
      }

      else
      {
        v7 = v17 << -v16;
      }
    }

    else
    {
      v7 *= 32;
    }

    *(a2 + 4) = v7;
    *(v3 + 3) = (v13 >> 3) & 3;
    *(v3 + 4) = (v13 & 4) != 0;
    *(v3 + 5) = v13 & 3;
    if (*(v3 + 6))
    {
      goto LABEL_8;
    }

LABEL_20:
    *(v3 + 7) = 514;
    v18 = 1;
    *(v3 + 9) = 1;
    goto LABEL_21;
  }

  *(v3 + 3) = 258;
  *(v3 + 5) = 2;
  if ((v5 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_8:
  v10 = v7 >> 26;
  v11 = v6 - 6;
  *(a2 + 5) = v11;
  if (v11 < 0)
  {
    result = TBitstreamReader<unsigned int>::FillCacheFrom(a2, *a2);
    *a2 += 4;
    v15 = *(a2 + 4);
    v14 = *(a2 + 5);
    v10 |= v15 >> v14;
    *(a2 + 5) = v14 + 32;
    if (v14 == -32)
    {
      v12 = 0;
    }

    else
    {
      v12 = v15 << -v14;
    }
  }

  else
  {
    v12 = v7 << 6;
  }

  *(a2 + 4) = v12;
  *(v3 + 7) = (v10 >> 4) & 3;
  *(v3 + 8) = (v10 >> 2) & 3;
  *(v3 + 9) = (v10 & 2) != 0;
  v18 = v10 & 1;
LABEL_21:
  *(v3 + 10) = v18;
  return result;
}

void MP4USACSpecificConfig::~MP4USACSpecificConfig(MP4USACSpecificConfig *this)
{
  *this = &unk_1F032BA70;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }

  JUMPOUT(0x193ADF220);
}

{
  *this = &unk_1F032BA70;
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 20);
  if (v3)
  {
    *(this + 21) = v3;
    operator delete(v3);
  }

  v4 = *(this + 17);
  if (v4)
  {
    *(this + 18) = v4;
    operator delete(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    *(this + 15) = v5;
    operator delete(v5);
  }

  v6 = *(this + 6);
  if (v6)
  {
    *(this + 7) = v6;
    operator delete(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    *(this + 4) = v7;
    operator delete(v7);
  }
}

uint64_t ID3FileStream::ParseHeader(uint64_t a1, uint64_t a2)
{
  v153 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 236);
  if (v3 > 129)
  {
    if (v3 > 170)
    {
      switch(v3)
      {
        case 171:
          v40 = *(a1 + 256);
          v41 = *(a1 + 264);
          goto LABEL_163;
        case 200:
          v44 = *(a1 + 256);
          v45 = *(a1 + 8);
          v46 = *(a1 + 264);
          goto LABEL_140;
        case 235:
          v4 = *(a1 + 256);
          v5 = *(a1 + 264);
          goto LABEL_113;
      }

      goto LABEL_61;
    }

    if (v3 != 130)
    {
      if (v3 == 157)
      {
        v29 = *(a1 + 256);
        v30 = *(a1 + 264);
        goto LABEL_154;
      }

      goto LABEL_61;
    }

    LODWORD(v42) = *(a1 + 256);
    v43 = *(a1 + 264);
LABEL_96:
    *__little = v42;
    StreamBuffer::Copy((*(a1 + 8) + 72), __little, v43);
    v59 = *__little;
    v60 = *(a1 + 256);
    *(a1 + 264) += *__little;
    v61 = v60 - v59;
    *(a1 + 256) = v61;
    if (v61)
    {
      result = 0;
      v39 = 130;
      goto LABEL_73;
    }

    v56 = *(a1 + 336);
    while (1)
    {
      v62 = (a1 + 420);
      *(a1 + 420) = 0;
      ID3TagBase::GetFrameDataSize(v56, (a1 + 402), 0xAu, (a1 + 416), (a1 + 420));
      v63 = *(a1 + 336);
      if (v63[16] == 4 && (v64 = *v62, v65 = *(a1 + 416), *v62 > v65) && (*(a1 + 344) + v64) < v63[13])
      {
        if (ID3FileStream::IsCurFrameRequired(a1))
        {
          v66 = malloc_type_malloc((v63[14] + v64), 0x8BB61EBAuLL);
          v67 = *(a1 + 336);
          if (v66)
          {
            v68 = *(v67 + 56);
          }

          else
          {
            v68 = *(v67 + 56);
            if (*v62 + v68)
            {
              exception = __cxa_allocate_exception(8uLL);
              v150 = std::bad_alloc::bad_alloc(exception);
            }
          }

          *(a1 + 440) = v66;
          memcpy(v66, (a1 + 402), v68);
          v111 = *(*(a1 + 336) + 56);
          v29 = v111 + *(a1 + 416);
          *(a1 + 256) = v29;
          v30 = (*(a1 + 440) + v111);
          *(a1 + 264) = v30;
LABEL_154:
          *__little = v29;
          StreamBuffer::Copy((*(a1 + 8) + 72), __little, v30);
          v112 = *__little;
          v113 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v114 = v113 - v112;
          *(a1 + 256) = v114;
          if (v114)
          {
            result = 0;
            v39 = 157;
            goto LABEL_73;
          }

          v115 = *(a1 + 336);
          v116 = *(a1 + 440);
          if (v116)
          {
            v117 = bswap32(*(v116 + *(a1 + 416) + v115[14]));
            v118 = v115[16];
            if (v118 == 2)
            {
              v119 = v117 >> 8;
            }

            else
            {
              v119 = v117;
            }
          }

          else
          {
            v119 = 0;
            v118 = v115[16];
          }

          if (ID3TagBase::IsValidFrameID(v118, v119))
          {
            v120 = *(a1 + 416);
            *(a1 + 420) = v120;
            memcpy((a1 + 424), (v116 + v120 + v115[14]), v115[14]);
            v121 = v120;
          }

          else
          {
            v122 = *(a1 + 416);
            v123 = v115[14];
            v40 = *(a1 + 420) - v122 - v123;
            *(a1 + 256) = v40;
            v41 = (v116 + v122 + v123 + v123);
            *(a1 + 264) = v41;
LABEL_163:
            *__little = v40;
            StreamBuffer::Copy((*(a1 + 8) + 72), __little, v41);
            v124 = *__little;
            v125 = *(a1 + 256);
            *(a1 + 264) += *__little;
            v126 = v125 - v124;
            *(a1 + 256) = v126;
            if (v126)
            {
              result = 0;
              v39 = 171;
              goto LABEL_73;
            }

            v121 = *(a1 + 420);
            LODWORD(v120) = *(a1 + 416);
            v115 = *(a1 + 336);
          }

          if (ID3TagBase::ProvideFrameData(v115, (a1 + 402), v115[14], *(a1 + 344), (a1 + 412), v121 != v120))
          {
            goto LABEL_196;
          }

          v127 = *(a1 + 336);
          v128 = v127 + 24;
          do
          {
            v128 = *(v128 + 8);
            if (v128 == v127 + 24)
            {
              goto LABEL_196;
            }
          }

          while (*(v128 + 24) != *(a1 + 344));
          v129 = *(v128 + 16);
          *(a1 + 472) = *(v128 + 24);
          *(a1 + 464) = v129;
          v130 = bswap32(*(a1 + 402));
          v131 = *(v127 + 64);
          if (v131 == 2)
          {
            v81 = (v130 >> 8);
          }

          else
          {
            v81 = v130;
          }

          if (v131 == 2)
          {
            v132 = 4411213;
            if ((v81 & 0xFFFF0000) == 0x540000)
            {
              goto LABEL_133;
            }
          }

          else
          {
            v132 = 1129270605;
            if (v81 >> 24 == 84)
            {
LABEL_133:
              ID3FileStream::ProcessTextFrame(a1, v81);
              goto LABEL_220;
            }
          }

          if (v132 == v81)
          {
LABEL_131:
            ID3FileStream::ProcessCommentFrame(a1);
            goto LABEL_220;
          }

          if (v131 == 2)
          {
            v133 = 5590100;
          }

          else
          {
            v133 = 1431522388;
          }

          if (v133 == v81)
          {
            goto LABEL_138;
          }
        }

        else
        {
          v45 = *(a1 + 8);
          *(v45 + 96) += v65;
          v44 = v63[14];
          *(a1 + 256) = v44;
          v46 = (a1 + 424);
          *(a1 + 264) = a1 + 424;
LABEL_140:
          *__little = v44;
          StreamBuffer::Copy((v45 + 72), __little, v46);
          v91 = *__little;
          v92 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v93 = v92 - v91;
          *(a1 + 256) = v93;
          if (v93)
          {
            result = 0;
            v39 = 200;
            goto LABEL_73;
          }

          v94 = *(a1 + 336);
          v95 = bswap32(*(a1 + 424));
          v96 = v94[16];
          if (v96 == 2)
          {
            v97 = v95 >> 8;
          }

          else
          {
            v97 = v95;
          }

          IsValidFrameID = ID3TagBase::IsValidFrameID(v96, v97);
          v99 = IsValidFrameID;
          ID3TagBase::ProvideFrameData(v94, (a1 + 402), v94[14], *(a1 + 344), (a1 + 412), !IsValidFrameID);
          v100 = *(a1 + 336);
          if (*(v100 + 48))
          {
            goto LABEL_196;
          }

          if (!v99)
          {
            *(*(a1 + 8) + 96) += (*(a1 + 420) - *(a1 + 416) - *(v100 + 56));
            *(a1 + 432) = 0;
            *(a1 + 424) = 0;
          }
        }
      }

      else
      {
        v69 = (a1 + 412);
        if (ID3TagBase::ProvideFrameData(*(a1 + 336), (a1 + 402), v63[14], *(a1 + 344), (a1 + 412), 0))
        {
          goto LABEL_196;
        }

        v70 = *(a1 + 336);
        v71 = v70 + 24;
        do
        {
          v71 = *(v71 + 8);
          if (v71 == v70 + 24)
          {
            goto LABEL_196;
          }
        }

        while (*(v71 + 24) != *(a1 + 344));
        v72 = *(v71 + 16);
        *(a1 + 472) = *(v71 + 24);
        *(a1 + 464) = v72;
        v73 = *(v70 + 56);
        if (*(a1 + 468) > v73 && ID3FileStream::IsCurFrameRequired(a1))
        {
          v74 = malloc_type_malloc(*v69, 0x5C037C6AuLL);
          if (!v74 && *v69)
          {
            v147 = __cxa_allocate_exception(8uLL);
            v148 = std::bad_alloc::bad_alloc(v147);
          }

          *(a1 + 440) = v74;
          memcpy(v74, (a1 + 402), *(*(a1 + 336) + 56));
          v75 = *(*(a1 + 336) + 56);
          v4 = *(a1 + 412) - v75;
          *(a1 + 256) = v4;
          v5 = (*(a1 + 440) + v75);
          *(a1 + 264) = v5;
LABEL_113:
          *__little = v4;
          StreamBuffer::Copy((*(a1 + 8) + 72), __little, v5);
          v77 = *__little;
          v78 = *(a1 + 256);
          *(a1 + 264) += *__little;
          v79 = v78 - v77;
          *(a1 + 256) = v79;
          if (v79)
          {
            result = 0;
            v39 = 235;
            goto LABEL_73;
          }

          v80 = *(a1 + 336);
          v81 = *(a1 + 464);
          v82 = v80[16];
          if (v82 == 2)
          {
            v83 = 5527640;
          }

          else
          {
            v83 = 1415075928;
          }

          if (v83 == v81)
          {
            v84 = *(a1 + 440);
            if (v84)
            {
              if (!ID3TagBase::CopyFrameData(v80, v84, *(a1 + 412), *(a1 + 472), (a1 + 352)))
              {
                v85 = *(a1 + 352);
                if (v85)
                {
                  *(a1 + 480) = CFDictionaryGetValue(v85, @"identifier");
                  Value = CFDictionaryGetValue(*(a1 + 352), @"text");
                  *(a1 + 488) = Value;
                  v87 = *(a1 + 480);
                  if (v87)
                  {
                    if (Value)
                    {
                      v88 = *(a1 + 384);
                      if (!v88)
                      {
                        if (!CFStringFind(v87, @"REPLAYGAIN", 1uLL).location)
                        {
                          operator new();
                        }

                        v88 = *(a1 + 384);
                      }

                      AddTextToReplayGainDict(*(a1 + 480), *(a1 + 488), v88);
                    }
                  }
                }
              }
            }
          }

          else
          {
            if (v82 == 2)
            {
              v89 = 4411213;
              if ((v81 & 0xFFFF0000) == 0x540000)
              {
                goto LABEL_133;
              }
            }

            else
            {
              v89 = 1129270605;
              if (v81 >> 24 == 84)
              {
                goto LABEL_133;
              }
            }

            if (v89 == v81)
            {
              goto LABEL_131;
            }

            if (v82 == 2)
            {
              v90 = 5590100;
            }

            else
            {
              v90 = 1431522388;
            }

            if (v90 == v81)
            {
LABEL_138:
              ID3FileStream::ProcessLyricFrame(a1);
              goto LABEL_220;
            }

            if (v81 == 1347570006)
            {
              v101 = *(a1 + 440);
              if (v101)
              {
                strcpy(__little, "com.apple.streaming.audioDescription");
                v102 = v80[14];
                v103 = (*(a1 + 412) - v102);
                v104 = v101 + v102;
                v105 = strnstr((v101 + v102), __little, v103);
                if (v105)
                {
                  v106 = (v105 - v104 + 37);
                  if (v106 + 8 <= v103)
                  {
                    v107 = *(a1 + 8);
                    v108 = *(a1 + 440);
                    v109 = (v103 - v106);
                    v110 = malloc_type_calloc(1uLL, v109, 0x100004005A209FEuLL);
                    *(v107 + 136) = v110;
                    memcpy(v110, (v108 + v102 + v106), v109);
                    *(v107 + 144) = v109;
                    *(a1 + 505) = 1;
                  }
                }
              }
            }

            else
            {
              if (v82 == 2)
              {
                v134 = 5065804;
              }

              else
              {
                v134 = 1296845908;
              }

              if (v134 == v81)
              {
                ID3FileStream::ProcessMLLTFrame(a1, v76);
              }
            }
          }
        }

        else
        {
          if (*(v70 + 48))
          {
            goto LABEL_196;
          }

          *(*(a1 + 8) + 96) += *(a1 + 412) - v73;
        }
      }

LABEL_220:
      ID3FileStream::EndOfFrame(a1);
      v56 = *(a1 + 336);
      if (*(v56 + 48) & 1) != 0 || *(a1 + 504) == 1 && *(a1 + 505) == 1 && *(a1 + 506) == 1 && *(a1 + 507) == 1 && *(a1 + 508) == 1 && *(a1 + 509) == 1 && (*(a1 + 510))
      {
        goto LABEL_196;
      }

      v57 = *(a1 + 344);
      v58 = *(v56 + 52);
      v42 = *(v56 + 56);
      if (v57 >= v58 - v42)
      {
        v135 = v58 >= v57;
        v136 = v58 - v57;
        if (v136 != 0 && v135)
        {
          *(*(a1 + 8) + 96) += v136;
        }

LABEL_196:
        v137 = *(a1 + 368);
        if (v137)
        {
          *(a1 + 508) = 1;
          if (CACFDictionary::Size(v137))
          {
            v138 = *(a1 + 8);
            *__little = 0;
            v139 = *(v138 + 24);
            if (v139)
            {
              v139(*(v138 + 40), *(v138 + 8), 1768842863, __little);
            }
          }
        }

        if (*(a1 + 376))
        {
LABEL_201:
          v140 = *(a1 + 384);
          if (!v140)
          {
            goto LABEL_205;
          }

          v141 = CACFDictionary::Size(v140);
          v142 = *(a1 + 376);
          if (v141)
          {
            CACFDictionary::AddDictionary(v142, @"REPLAYGAIN", **(a1 + 384));
            v142 = *(a1 + 376);
          }

          if (v142)
          {
LABEL_205:
            *(a1 + 509) = 1;
            v143 = *(a1 + 8);
            *__little = 0;
            if ((*(v143 + 110) & 1) == 0)
            {
              *(v143 + 110) = 1;
              v144 = *(v143 + 24);
              if (v144)
              {
                v144(*(v143 + 40), *(v143 + 8), 1819243876, __little);
              }
            }
          }
        }

        else
        {
          v145 = *(a1 + 384);
          if (v145 && CACFDictionary::Size(v145))
          {
            if (!*(a1 + 376))
            {
              operator new();
            }

            goto LABEL_201;
          }
        }

        v146 = *(a1 + 336);
        if (v146)
        {
          (*(*v146 + 8))(v146);
          *(a1 + 336) = 0;
        }

        ID3FileStream::EndOfFrame(a1);
        v49 = *(a1 + 332);
        v6 = *(a1 + 8);
LABEL_215:
        *(v6 + 96) = *(a1 + 456) + v49;
        if (*(a1 + 536) == 1)
        {
          operator new();
        }

        operator new();
      }

      *(a1 + 412) = 0;
      if (!*(a1 + 424))
      {
        *(a1 + 256) = v42;
        v43 = (a1 + 402);
        *(a1 + 264) = a1 + 402;
        goto LABEL_96;
      }

      memcpy((a1 + 402), (a1 + 424), v42);
      *(a1 + 424) = 0;
      *(a1 + 432) = 0;
    }
  }

  if (v3 > 92)
  {
    if (v3 == 93)
    {
      v6 = *(a1 + 8);
      LODWORD(v24) = *(v6 + 120);
LABEL_46:
      v32 = *(a1 + 256) - v24;
      v33 = *(v6 + 88);
      v34 = *(v6 + 96);
      v35 = v33 + *(v6 + 80);
      if (v35 <= v34 || v34 < v33)
      {
        v37 = 0;
      }

      else
      {
        v37 = v35 - v34;
      }

      if (v32 <= v37)
      {
        v32 = v37;
      }

      *__little = v32;
      v38 = v32 + v24;
      if (*(v6 + 124) < v38)
      {
        *(v6 + 124) = v38;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), v38);
        v6 = *(a1 + 8);
      }

      StreamBuffer::Copy((v6 + 72), __little, (*(v6 + 128) + *(v6 + 120)));
      v6 = *(a1 + 8);
      v23 = *(v6 + 120) + *__little;
      *(v6 + 120) = v23;
      if (v23 < *(a1 + 256))
      {
        result = 0;
        v39 = 93;
        goto LABEL_73;
      }

      v8 = *(a1 + 272);
      v47 = *(v6 + 128);
      *(v6 + 88) = v8;
      *(v6 + 96) = v8;
      *(v6 + 72) = v47;
      *(v6 + 80) = v23;
      v10 = v8 + v23;
      v9 = v8;
      goto LABEL_63;
    }

    if (v3 == 103)
    {
      v27 = *(a1 + 256);
      v28 = *(a1 + 264);
      v6 = *(a1 + 8);
      goto LABEL_70;
    }

LABEL_61:
    result = 0;
    v39 = -1;
    goto LABEL_73;
  }

  if (v3 == -1)
  {
    return 0;
  }

  if (v3)
  {
    goto LABEL_61;
  }

  v6 = *(a1 + 8);
  v7 = *(v6 + 80);
  v9 = *(v6 + 88);
  v8 = *(v6 + 96);
  v10 = v9 + v7;
  if (v8 < v9 + v7 && v8 >= v9)
  {
    LODWORD(v7) = v8 - v9;
  }

  *(a1 + 448) = v7;
  *(a1 + 456) = v8;
  v12 = *(v6 + 48);
  v13 = *(v6 + 56);
  v14 = v13 - v12;
  if (v13 != v12)
  {
    v15 = 0;
    v16 = v14 >> 2;
    v17 = 1;
    do
    {
      v18 = *(v12 + 4 * v15);
      v15 = v17++;
    }

    while (v18 != 1768174437 && v16 > v15);
    if (v18 == 1768174437)
    {
      *__little = 0;
      v20 = *(v6 + 24);
      if (v20)
      {
        v20(*(v6 + 40), *(v6 + 8), 1768174437, __little);
        v6 = *(a1 + 8);
        v9 = *(v6 + 88);
        v8 = *(v6 + 96);
        v10 = v9 + *(v6 + 80);
      }
    }
  }

  *(a1 + 256) = 10;
  v22 = v8 < v9 || v10 <= v8;
  v23 = v10 - v8;
  if (v22)
  {
    v24 = 0;
  }

  else
  {
    v24 = v23;
  }

  if (v24 <= 9)
  {
    *(a1 + 272) = v8;
    v25 = *(v6 + 128);
    v26 = *(v6 + 72);
    if (v26 == v25)
    {
      if (v23)
      {
        v53 = v22;
      }

      else
      {
        v53 = 1;
      }

      v54 = &v26[(v8 - v9)];
      if (v53)
      {
        v55 = 0;
      }

      else
      {
        v55 = v54;
      }

      memmove(v25, v55, v24);
      v6 = *(a1 + 8);
      if (*(v6 + 124) <= 9u)
      {
        *(v6 + 124) = 10;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), 0xAuLL);
        v6 = *(a1 + 8);
      }

      *(v6 + 120) = v24;
      *(v6 + 96) = *(v6 + 88) + *(v6 + 80);
    }

    else
    {
      if (*(v6 + 124) <= 9u)
      {
        *(v6 + 124) = 10;
        CADeprecated::CAAutoFree<unsigned char>::reallocBytes((v6 + 128), 0xAuLL);
        v6 = *(a1 + 8);
      }

      LODWORD(v24) = 0;
      *(v6 + 120) = 0;
    }

    goto LABEL_46;
  }

LABEL_63:
  v48 = 0;
  v151 = 0;
  if (v8 >= v9 && v8 < v10 && v23)
  {
    v48 = (*(v6 + 72) + (v8 - v9));
  }

  v49 = ID3Size(0xAu, v48, &v151);
  *(a1 + 332) = v49;
  if (!v49)
  {
    return 1685348671;
  }

  if (v151 != 2)
  {
    goto LABEL_215;
  }

  *(a1 + 344) = 0;
  v27 = 10;
  *(a1 + 256) = 10;
  v28 = (a1 + 392);
  *(a1 + 264) = a1 + 392;
LABEL_70:
  *__little = v27;
  StreamBuffer::Copy((v6 + 72), __little, v28);
  v50 = *__little;
  v51 = *(a1 + 256);
  *(a1 + 264) += *__little;
  v52 = v51 - v50;
  *(a1 + 256) = v52;
  if (!v52)
  {
    *(a1 + 344) = 10;
    operator new();
  }

  result = 0;
  v39 = 103;
LABEL_73:
  *(a1 + 236) = v39;
  return result;
}

uint64_t ID3FileStream::IsCurFrameRequired(ID3FileStream *this)
{
  v1 = bswap32(*(this + 402));
  v2 = *(*(this + 42) + 64);
  v3 = v1 >> 8;
  if (v2 == 2)
  {
    v4 = 5527640;
  }

  else
  {
    v3 = v1;
    v4 = 1415075928;
  }

  if (v4 == v3 && *(this + 509) != 1)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if ((v3 & 0xFFFF0000) != 0x540000)
    {
LABEL_11:
      if (v2 == 2)
      {
        v5 = 4411213;
      }

      else
      {
        v5 = 1129270605;
      }

      if (v5 == v3 && (*(this + 507) != 1 || *(this + 506) != 1 || *(this + 509) != 1 || *(this + 508) != 1))
      {
        return 1;
      }

      v6 = v2 == 2 ? 5590100 : 1431522388;
      if (v6 == v3 && *(this + 504) != 1)
      {
        return 1;
      }

      if (v3 == 1347570006)
      {
        if ((*(this + 505) & 1) == 0)
        {
          return 1;
        }
      }

      else
      {
        if (v2 == 2)
        {
          v7 = 5065804;
        }

        else
        {
          v7 = 1296845908;
        }

        if (v7 == v3 && *(this + 510) != 1)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  else if (HIBYTE(v3) != 84)
  {
    goto LABEL_11;
  }

  if (*(this + 508) == 1)
  {
    goto LABEL_11;
  }

  return 1;
}

void ID3FileStream::ProcessTextFrame(ID3FileStream *this, ID3TagBase *a2)
{
  v3 = *(this + 55);
  if (v3)
  {
    if (!*(this + 46))
    {
      operator new();
    }

    theString = 0;
    v5 = ID3TagBase::CopyFrameData(*(this + 42), v3, *(this + 103), *(this + 118), &theString);
    v6 = theString;
    if (!v5 && theString != 0)
    {
      v8 = ID3TagBase::TranslateV2IDToV3(a2);
      if (v8 > 1414091825)
      {
        if (v8 <= 1414546736)
        {
          switch(v8)
          {
            case 1414091826:
              v9 = InfoDictionaryKeys::sAFDictionary_Title;
              goto LABEL_41;
            case 1414091827:
              v9 = InfoDictionaryKeys::sAFDictionary_SubTitle;
              goto LABEL_41;
            case 1414219097:
              v9 = InfoDictionaryKeys::sAFDictionary_KeySignature;
              goto LABEL_41;
          }
        }

        else if (v8 > 1414746690)
        {
          if (v8 == 1414746691)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_ISRC;
            goto LABEL_41;
          }

          if (v8 == 1415136594)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_Year;
            goto LABEL_41;
          }
        }

        else
        {
          if (v8 == 1414546737)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_Artist;
            goto LABEL_41;
          }

          if (v8 == 1414677323)
          {
            v9 = InfoDictionaryKeys::sAFDictionary_TrackNumber;
            goto LABEL_41;
          }
        }
      }

      else if (v8 <= 1413697357)
      {
        switch(v8)
        {
          case 1413565506:
            v9 = InfoDictionaryKeys::sAFDictionary_Album;
            goto LABEL_41;
          case 1413632077:
            v9 = InfoDictionaryKeys::sAFDictionary_Tempo;
            goto LABEL_41;
          case 1413697357:
            v9 = InfoDictionaryKeys::sAFDictionary_Composer;
            goto LABEL_41;
        }
      }

      else if (v8 > 1413828162)
      {
        if (v8 == 1413828163)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_EncodingApplication;
          goto LABEL_41;
        }

        if (v8 == 1413830740)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Lyricist;
          goto LABEL_41;
        }
      }

      else
      {
        if (v8 == 1413697358)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Genre;
          goto LABEL_41;
        }

        if (v8 == 1413697360)
        {
          v9 = InfoDictionaryKeys::sAFDictionary_Copyright;
LABEL_41:
          v10 = *v9;
          if (*v9)
          {
            HasKey = CACFDictionary::HasKey(*(this + 46), *v9);
            v6 = theString;
            if ((HasKey & 1) == 0)
            {
              Length = CFStringGetLength(theString);
              v6 = theString;
              if (Length)
              {
                CACFDictionary::AddString(*(this + 46), v10, theString);
                v6 = theString;
              }
            }
          }
        }
      }

      CFRelease(v6);
    }
  }
}

uint64_t ID3FileStream::ProcessCommentFrame(uint64_t this)
{
  v1 = *(this + 440);
  if (v1)
  {
    v2 = this;
    this = ID3TagBase::CopyFrameData(*(this + 336), v1, *(v2 + 412), *(v2 + 472), (v2 + 352));
    if (!this)
    {
      this = *(v2 + 352);
      if (this)
      {
        *(v2 + 480) = CFDictionaryGetValue(this, @"identifier");
        Value = CFDictionaryGetValue(*(v2 + 352), @"text");
        *(v2 + 488) = Value;
        this = *(v2 + 480);
        if (this)
        {
          if (Value)
          {
            if ((*(v2 + 508) & 1) != 0 || CFStringHasPrefix(this, @"iTun"))
            {
              v4 = malloc_type_malloc(0x80uLL, 0x55E785BBuLL);
              if (!v4)
              {
                exception = __cxa_allocate_exception(8uLL);
                v11 = std::bad_alloc::bad_alloc(exception);
              }

              *(v2 + 496) = v4;
              v4[6] = 0u;
              v4[7] = 0u;
              v4[4] = 0u;
              v4[5] = 0u;
              v4[2] = 0u;
              v4[3] = 0u;
              *v4 = 0u;
              v4[1] = 0u;
              this = CFStringGetCString(*(v2 + 488), *(v2 + 496), 128, 0x201u);
              if (this)
              {
                if ((*(v2 + 507) & 1) != 0 || (this = CFStringCompare(*(v2 + 480), @"iTunSMPB", 0)) != 0)
                {
                  if (*(v2 + 506) != 1 || (*(v2 + 509) & 1) == 0)
                  {
                    this = CFStringCompare(*(v2 + 480), @"iTunNORM", 0);
                    if (!this)
                    {
                      operator new();
                    }

                    if ((*(v2 + 509) & 1) == 0)
                    {
                      this = CFStringCompare(*(v2 + 480), @"iTunLOUD", 0);
                      if (!this)
                      {
                        operator new();
                      }
                    }
                  }
                }

                else
                {
                  this = ParseiTunesSMPBData((*(v2 + 496) + 9), 119, (v2 + 160));
                  if (!this)
                  {
                    *(v2 + 507) = 1;
                    v8 = *(v2 + 8);
                    v12 = 0;
                    if ((*(v8 + 106) & 1) == 0)
                    {
                      *(v8 + 106) = 1;
                      v9 = *(v8 + 24);
                      if (v9)
                      {
                        return v9(*(v8 + 40), *(v8 + 8), 1886283375, &v12);
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v5 = *(v2 + 368);
              if (!v5)
              {
                operator new();
              }

              this = CACFDictionary::HasKey(v5, @"comments");
              if ((this & 1) == 0)
              {
                v6 = *(v2 + 368);
                v7 = *(v2 + 488);

                return CACFDictionary::AddString(v6, @"comments", v7);
              }
            }
          }
        }
      }
    }
  }

  return this;
}

uint64_t ID3FileStream::ProcessLyricFrame(uint64_t this)
{
  v1 = *(this + 440);
  if (v1)
  {
    v2 = this;
    this = ID3TagBase::CopyFrameData(*(this + 336), v1, *(v2 + 412), *(v2 + 344), (v2 + 352));
    if (!this)
    {
      if (*(v2 + 352))
      {
        *(v2 + 504) = 1;
        v3 = *(v2 + 8);
        v5 = 0;
        v4 = *(v3 + 24);
        if (v4)
        {
          return v4(*(v3 + 40), *(v3 + 8), 1280922179, &v5);
        }
      }
    }
  }

  return this;
}

void ID3FileStream::ProcessMLLTFrame(ID3FileStream *this, __n128 a2)
{
  v2 = *(this + 55);
  if (!v2)
  {
    return;
  }

  v4 = *(*(this + 42) + 56);
  v5 = (v2 + v4);
  v6 = v2 + v4 + (*(this + 103) - v4);
  if (((v2 + v4) & 3) != 0)
  {
    v7 = 0;
    v8 = v5 + 1;
    v9 = -8;
    v10 = v5;
    do
    {
      v11 = v9;
      if (v10 >= v6)
      {
        v12 = 255;
      }

      else
      {
        v12 = *v10;
      }

      v7 = v12 | (v7 << 8);
      v10 = (v10 + 1);
      v9 = v11 + 8;
      v50 = (v8++ & 3) == 0;
    }

    while (!v50);
    a2.n128_u32[0] = v7 << (16 - v11);
    a2.n128_u32[1] = v11 + 16;
  }

  else
  {
    a2 = 0uLL;
    v10 = (v2 + v4);
  }

  v13 = *(this + 1);
  *(v13 + 176) = *(v13 + 168);
  v14 = a2.n128_u32[0];
  LOWORD(v15) = a2.n128_u16[1];
  v16 = a2.n128_u32[1] - 16;
  if ((a2.n128_u32[1] - 16) < 0)
  {
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) == 0 || v5 > v10)
    {
      v19 = 4;
      v20 = v10;
      do
      {
        v21 = 255;
        if (v20 < v6 && v20 >= v5)
        {
          v21 = *v20;
        }

        v14 = v21 | (v14 << 8);
        v20 = (v20 + 1);
        --v19;
      }

      while (v19);
    }

    else
    {
      v14 = bswap32(*v10);
    }

    ++v10;
    v16 = a2.n128_u32[1] + 16;
    v15 = (v14 >> (a2.n128_u8[4] + 16)) | a2.n128_u16[1];
    if (a2.n128_u32[1] == -16)
    {
      v22 = 0;
      v17 = 0;
      *(v13 + 152) = v15;
      goto LABEL_28;
    }

    v17 = v14 << (16 - a2.n128_u8[4]);
  }

  else
  {
    v17 = a2.n128_u32[0] << 16;
  }

  *(v13 + 152) = v15;
  v22 = v17 >> 8;
  v23 = v16 - 24;
  if ((v16 - 24) >= 0)
  {
    v24 = v17 << 24;
    goto LABEL_38;
  }

LABEL_28:
  if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
  {
    v17 = bswap32(*v10);
  }

  else
  {
    v25 = 4;
    v26 = v10;
    do
    {
      v27 = 255;
      if (v26 < v6 && v26 >= v5)
      {
        v27 = *v26;
      }

      v17 = v27 | (v17 << 8);
      v26 = (v26 + 1);
      --v25;
    }

    while (v25);
  }

  v23 = v16 + 8;
  v50 = v16 == -8;
  ++v10;
  v22 |= v17 >> (v16 + 8);
  v24 = v17 << (24 - v16);
  if (v50)
  {
    v24 = 0;
  }

LABEL_38:
  *(v13 + 156) = v22;
  v28 = 24;
  if (v23 <= 23)
  {
    v28 = 24 - v23;
    if ((24 - v23) >= 0x20)
    {
      v24 = 0;
      v10 = (v10 + ((v28 >> 3) & 0x1FFFFFFC));
      v23 = 0;
      v28 &= 0x1Fu;
      if (!v28)
      {
        v30 = 0;
        goto LABEL_58;
      }
    }

    else
    {
      v24 = 0;
      v23 = 0;
    }
  }

  v29 = v23 - v28;
  if ((v23 - v28) < 0)
  {
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
    {
      v31 = *v10++;
      v24 = bswap32(v31);
      v30 = v29 + 32;
    }

    else
    {
      v32 = 4;
      v33 = v10;
      do
      {
        v34 = 255;
        if (v33 < v6 && v33 >= v5)
        {
          v34 = *v33;
        }

        v24 = v34 | (v24 << 8);
        v33 = (v33 + 1);
        --v32;
      }

      while (v32);
      ++v10;
      v30 = v29 + 32;
      if (v29 == -32)
      {
        v24 = 0;
        v23 = 0;
        goto LABEL_58;
      }
    }

    v23 = v24 << -v29;
  }

  else
  {
    v23 = v24 << v28;
    v30 = v29;
  }

  v24 = HIBYTE(v23);
  v35 = v30 - 8;
  if (v30 >= 8)
  {
    v36 = v23 << 8;
    goto LABEL_68;
  }

LABEL_58:
  if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
  {
    v23 = bswap32(*v10);
  }

  else
  {
    v37 = 4;
    v38 = v10;
    do
    {
      v39 = 255;
      if (v38 < v6 && v38 >= v5)
      {
        v39 = *v38;
      }

      v23 = v39 | (v23 << 8);
      v38 = (v38 + 1);
      --v37;
    }

    while (v37);
  }

  ++v10;
  v35 = v30 + 24;
  v24 |= v23 >> (v30 + 24);
  if (v30 == -24)
  {
    v40 = 0;
    v36 = 0;
    *(v13 + 160) = v24;
LABEL_71:
    if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
    {
      v36 = bswap32(*v10);
      a2.n128_u32[0] = v36;
    }

    else
    {
      v43 = 4;
      v44 = v10;
      do
      {
        v45 = 255;
        if (v44 < v6 && v44 >= v5)
        {
          v45 = *v44;
        }

        v36 = v45 | (v36 << 8);
        a2.n128_u32[0] = v36;
        v44 = (v44 + 1);
        --v43;
      }

      while (v43);
    }

    v46 = 8 - v35;
    v47 = v35 + 24;
    a2.n128_u32[1] = v47;
    v48 = v36 << v46;
    ++v10;
    v40 |= v36 >> v47;
    if (v47)
    {
      v42 = v48;
    }

    else
    {
      v42 = 0;
    }

    if (v47)
    {
      v41 = v47;
    }

    else
    {
      v41 = 0;
    }

    goto LABEL_85;
  }

  v36 = v23 << (8 - v30);
LABEL_68:
  *(v13 + 160) = v24;
  v40 = HIBYTE(v36);
  a2.n128_u32[0] = v36;
  v41 = v35 - 8;
  a2.n128_u32[1] = v35 - 8;
  if (v35 - 8 < 0)
  {
    goto LABEL_71;
  }

  v42 = v36 << 8;
LABEL_85:
  *(v13 + 161) = v40;
  v49 = v40 + v24;
  if (v49)
  {
    v50 = (v49 & 4) == 0;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v51 = v41 + 8 * (v6 - v10);
    v74 = a2;
    std::vector<int>::resize((v13 + 168), v51 / v49);
    v52 = v74;
    if (v49 <= v51)
    {
      v53 = 0;
      v52.n128_u32[0] = v42;
      v54 = *(v13 + 161);
      v55 = ~(-1 << *(v13 + 160));
      v56 = *(v13 + 168);
      do
      {
        if (v49 - 33 >= 0xFFFFFFE0)
        {
          v58 = v52.n128_u32[0];
          v57 = v52.n128_u32[0] >> (32 - v49);
          v59 = v52.n128_u32[1] - v49;
          v52.n128_u32[1] -= v49;
          if (v52.n128_i32[1] < 0)
          {
            if (((v6 - v10) & ~((v6 - v10) >> 63) & 0xFFFFFFFC) != 0 && v5 <= v10)
            {
              v58 = bswap32(*v10);
            }

            else
            {
              v61 = 4;
              v62 = v10;
              do
              {
                v63 = 255;
                if (v62 < v6 && v62 >= v5)
                {
                  v63 = *v62;
                }

                v58 = v63 | (v58 << 8);
                v62 = (v62 + 1);
                --v61;
              }

              while (v61);
            }

            v52.n128_u32[1] = v59 + 32;
            ++v10;
            v57 |= v58 >> v59;
            if (v59 == -32)
            {
              v60 = 0;
            }

            else
            {
              v60 = v58 << -v59;
            }
          }

          else
          {
            v60 = v52.n128_u32[0] << v49;
          }

          v52.n128_u32[0] = v60;
        }

        else
        {
          v57 = 0;
        }

        *(v56 + 4 * v53++) = (v57 >> v54) & v55;
      }

      while (v53 < v51 / v49);
    }

    *(this + 510) = 1;
    v64 = *(this + 1);
    v65 = *(v64 + 48);
    v66 = *(v64 + 56);
    v67 = v66 - v65;
    if (v66 != v65)
    {
      v68 = 0;
      v69 = v67 >> 2;
      v70 = 1;
      do
      {
        v71 = *(v65 + 4 * v68);
        v68 = v70++;
      }

      while (v71 != 1296845908 && v69 > v68);
      if (v71 == 1296845908)
      {
        v75 = 0;
        v73 = *(v64 + 24);
        if (v73)
        {
          v73(*(v64 + 40), *(v64 + 8), 1296845908, &v75, v52);
        }
      }
    }
  }
}

void ID3FileStream::EndOfFrame(ID3FileStream *this)
{
  *(this + 86) += *(this + 103);
  v2 = *(this + 44);
  if (v2)
  {
    CFRelease(v2);
    *(this + 44) = 0;
  }

  if (*(this + 508) == 1)
  {
    v3 = *(this + 46);
    if (v3)
    {
      CACFDictionary::~CACFDictionary(v3);
      MEMORY[0x193ADF220]();
      *(this + 46) = 0;
    }
  }

  v4 = *(this + 55);
  if (v4)
  {
    free(v4);
    *(this + 55) = 0;
  }

  *(this + 60) = 0;
  *(this + 61) = 0;
  v5 = *(this + 62);
  if (v5)
  {
    free(v5);
    *(this + 62) = 0;
  }
}

uint64_t ID3FileStream::GetProperty(ID3FileStream *this, signed int a2, unsigned int *a3, _DWORD *__dst)
{
  if (a2 <= 1768842862)
  {
    if (a2 != 1280922179)
    {
      if (a2 != 1768174433)
      {
        if (a2 == 1768174437)
        {
          if (*a3 == 4)
          {
            result = 0;
            *__dst = *(this + 112);
            return result;
          }

          return 561211770;
        }

        goto LABEL_22;
      }

      if (*a3 == 8)
      {
        result = 0;
        v9 = *(this + 57);
LABEL_34:
        *__dst = v9;
        return result;
      }

      return 561211770;
    }

    if (*a3 != 8)
    {
      return 561211770;
    }

    v8 = *(this + 44);
    if (v8)
    {
      result = CFDictionaryGetValue(v8, @"text");
      *__dst = result;
      if (!result)
      {
        return result;
      }

      CFRetain(result);
      return 0;
    }

    return 1836020325;
  }

  switch(a2)
  {
    case 1768842863:
      if (*a3 != 8)
      {
        return 561211770;
      }

      result = 1836020325;
      if (*(this + 508) != 1)
      {
        return result;
      }

      v7 = *(this + 46);
      if (!v7)
      {
        return result;
      }

      goto LABEL_20;
    case 1819243876:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v10 = *(this + 47);
      if (!v10)
      {
        if (*(this + 45))
        {
          cf = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          v13 = 257;
          AudioFileGetLoudnessInfoFromSoundCheckDictionary(*(this + 45), &cf);
          if (cf)
          {
            CFRetain(cf);
            v11 = cf;
          }

          else
          {
            v11 = 0;
          }

          *__dst = v11;
          CACFDictionary::~CACFDictionary(&cf);
          return 0;
        }

        return 1836020325;
      }

      if (*v10)
      {
        CFRetain(*v10);
        v9 = *v10;
        goto LABEL_33;
      }

LABEL_32:
      v9 = 0;
      goto LABEL_33;
    case 1935893603:
      if (*a3 != 8)
      {
        return 561211770;
      }

      v7 = *(this + 45);
      if (!v7)
      {
        return 1836020325;
      }

LABEL_20:
      if (*v7)
      {
        CFRetain(*v7);
        v9 = *v7;
LABEL_33:
        result = 0;
        goto LABEL_34;
      }

      goto LABEL_32;
  }

LABEL_22:

  return AudioFileStreamObject::GetProperty(this, a2, a3, __dst);
}