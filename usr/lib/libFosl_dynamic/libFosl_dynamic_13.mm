uint64_t fosl_filter_createTransformMatrix(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA768(v3, a2);
}

uint64_t sub_2978DA768(uint64_t a1, uint64_t a2)
{
  v4 = sub_29780406C(a1 + 176);
  v5 = sub_2978DB618((a1 + 40), v4, a2, 24, 1);
  v7 = v5;
  sub_2978040A4(a1 + 176, &v7);
  return v5;
}

uint64_t fosl_filter_createPositionUpdate(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA7F4(v1);
}

uint64_t sub_2978DA7F4(uint64_t a1)
{
  v2 = sub_29780406C(a1 + 176);
  v3 = sub_2978DB6F8((a1 + 40), v2);
  v5 = v3;
  sub_2978040A4(a1 + 176, &v5);
  return v3;
}

uint64_t fosl_filter_createUsePosition(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA870(v1);
}

uint64_t sub_2978DA870(uint64_t a1)
{
  v2 = sub_29780406C(a1 + 176);
  v3 = sub_2978DB748((a1 + 40), v2);
  v5 = v3;
  sub_2978040A4(a1 + 176, &v5);
  return v3;
}

uint64_t fosl_filter_createSampleTransform(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 0, 1);
}

uint64_t fosl_filter_createCoordinateTransform(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DA368(v3, a2, 1, 0);
}

uint64_t fosl_filter_setPositionUpdatePosition(uint64_t a1, uint64_t a2)
{
  v3 = sub_29781BF50(a2);
  v4 = sub_29781BF50(a1);

  return sub_29781A230(v4, v3);
}

uint64_t fosl_filter_setPositionUpdateContinuation(uint64_t a1, uint64_t a2)
{
  v3 = sub_29781BF50(a1);

  return sub_29785BC50(v3, a2);
}

uint64_t fosl_filter_setSamplerNeedsSRGBToLinear(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978DA9EC(v1);
}

uint64_t fosl_filter_setSamplerSwizzleMask(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DAA30(v3, a2);
}

uint64_t fosl_filter_setSamplerSwizzleMacro(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978DAA70(v3, a2);
}

void fosl_filter_setMainEntryPointName(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978D65BC(a1);

  sub_2978DAAB0(v3, a2);
}

void sub_2978DAAB0(uint64_t a1, uint64_t a2)
{
  sub_297804638(&v3, a2);
  sub_2978046C4(a1 + 576, &v3);
  std::string::~string(&v3);
}

uint64_t fosl_filter_parseNodesInGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D6C94(v1);
}

BOOL fosl_filter_synthesizeMainInGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7838(v1, 0, 0);
}

BOOL fosl_filter_synthesizeMainInGraphOfType(uint64_t a1, int a2)
{
  v3 = sub_2978D65BC(a1);

  return sub_2978D7838(v3, a2, 0);
}

BOOL fosl_filter_synthesizeMainInGraphOfTypeWithOptions(uint64_t a1, int a2, int a3)
{
  v5 = sub_2978D65BC(a1);

  return sub_2978D7838(v5, a2, a3);
}

uint64_t fosl_filter_dumpGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7B94(v1);
}

void **fosl_filter_printGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);

  return sub_2978D7CF8(v1);
}

uint64_t fosl_filter_getStringForGraph(uint64_t a1)
{
  v1 = sub_2978D65BC(a1);
  sub_2978D7D74(v1, 0);

  return sub_2978037C8();
}

uint64_t fosl_filter_getStringForGraphWithOptions(uint64_t a1, int a2)
{
  v3 = sub_2978D65BC(a1);
  sub_2978D7D74(v3, a2);

  return sub_2978037C8();
}

uint64_t sub_2978DAC84(uint64_t a1)
{
  v2 = sub_2977FA198();
  sub_297883D24(v2);
  sub_2977FDEF4();
  v3 = sub_29781F06C();
  sub_2978F0254(v3, 1);
  sub_2977FB720(a1);
  v4 = sub_2977FB720(a1 + 8);
  sub_2978EF4A0(v4, 0, &v7);
  sub_2978DAD2C(a1 + 16, &v7);
  sub_2978D5CE4(&v7);
  v5 = sub_2977FB720(a1 + 16);
  sub_2978DC2E8(a1 + 24, v5);
  return a1;
}

void sub_2978DAD30(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_2978058AC(a2);
  nullsub_1();

  j_nullsub_1();
}

uint64_t sub_2978DAD80(uint64_t a1)
{
  sub_2978DC3A0(a1 + 24);
  sub_2978D5CE4(a1 + 16);
  sub_2978DADCC(a1 + 8);

  return sub_2978DADD0(a1);
}

void sub_2978DAE00(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978DAE18(result, v3);
  }
}

void sub_2978DAE18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297829370(a2);

    j__free(v2);
  }
}

void sub_2978DAE78(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978DAE90(result, v3);
  }
}

void sub_2978DAE90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_297883DC8(a2);

    j__free(v2);
  }
}

uint64_t sub_2978DAEE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2978DAF08(a1, a2, a3);

  return sub_297819E7C(v3);
}

uint64_t sub_2978DAF10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a4;
  sub_29781C134(v11, &v10, v7);
  v8 = sub_2978DAF6C(a1, v7);
  v9 = v5;
  return sub_29781AD54(&v8);
}

uint64_t sub_2978DAF6C(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_29780ED7C(a1, *a2, a2[1]);
  v5 = *a1;
  v6 = v4;
  v7 = *(*a1 + 8 * v4);
  if (v7)
  {
    if (v7 != sub_2978027E4())
    {
      sub_29781C144(v11, *a1 + 8 * v6, 0);
      v10 = 0;
      return sub_29780EB40(v11, &v10);
    }

    v7 = *(v5 + 8 * v6);
  }

  if (v7 == sub_2978027E4())
  {
    --*(a1 + 4);
  }

  *(v5 + 8 * v6) = sub_297828FD0(*a2, a2[1], a1[3], a2[2]);
  ++*(a1 + 3);
  v8 = sub_29780F0F4(a1, v6);
  sub_29781C144(v11, *a1 + 8 * v8, 0);
  v10 = 1;
  return sub_29780EB40(v11, &v10);
}

uint64_t sub_2978DB060(uint64_t a1)
{
  v2 = sub_2977FA198();
  sub_297883D24(v2);
  sub_2977FDEF4();
  v3 = sub_29781F06C();
  sub_2978F0254(v3, 0);
  v4 = sub_2977FA198();
  v5 = sub_2977FB720(a1);
  v6 = sub_2977FB720(a1 + 8);
  sub_2978D5CE8(v4, v5, v6);
  sub_2977FDEF4();
  return a1;
}

uint64_t sub_2978DB0F4(uint64_t a1)
{
  sub_2978DB138(a1 + 16);
  sub_2978DADCC(a1 + 8);

  return sub_2978DADD0(a1);
}

void sub_2978DB168(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978DB180(result, v3);
  }
}

void sub_2978DB180(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978DB1B4(a2);

    j__free(v2);
  }
}

std::string *sub_2978DB1B8(std::string *a1)
{
  std::string::~string(a1 + 25);
  std::string::~string(a1 + 24);
  sub_2977FD134(&a1[19].__r_.__value_.__l.__size_);
  sub_2978D5CE4(&a1[19]);
  sub_2977FD134(&a1[7].__r_.__value_.__l.__size_);
  sub_297818154(&a1[1].__r_.__value_.__r.__words[2]);
  sub_29783D790(&a1->__r_.__value_.__r.__words[2]);
  return a1;
}

uint64_t sub_2978DB214(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_2978D66EC(a1);

  return sub_2978BCC60((a1 + 16), a2, a3);
}

uint64_t sub_2978DB264(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x28uLL, a1);

  return sub_2978DB2C4(v9, a2, a3, a4, a5);
}

uint64_t sub_2978DB2C8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v9 = sub_2978DB344(a1, 0, a2);
  sub_2978B47C0((v9 + 2));
  *(a1 + 24) = 0;
  *(a1 + 32) = a3;
  if (a4)
  {
    v10 = 0x1000000;
  }

  else
  {
    v10 = 0;
  }

  if (a5)
  {
    v11 = 0x2000000;
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 8) = v11 | v10 | *(a1 + 8) & 0xFCFFFFFF;
  return a1;
}

void *sub_2978DB344(void *a1, char a2, int a3)
{
  *a1 = 0;
  nullsub_1();
  a1[1] = 0;
  *(a1 + 2) = a2 & 7 | (8 * (a3 & 0x3FFFF));
  return a1;
}

uint64_t sub_2978DB398(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_297869208(0x10uLL, a1);

  return sub_2978DB3F0(v7, a2, a3, a4);
}

void *sub_2978DB3F4(void *a1, int a2, unsigned __int16 a3, char a4)
{
  sub_2978DB344(a1, 1, a2);
  nullsub_1();
  a1[1] = a1[1] & 0xFFFF0000FCFFFFFFLL | ((a4 & 3) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB464(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_297869208(0x10uLL, a1);

  return sub_2978DB4BC(v7, a2, a3, a4);
}

void *sub_2978DB4C0(void *a1, int a2, unsigned __int16 a3, char a4)
{
  sub_2978DB344(a1, 2, a2);
  nullsub_1();
  a1[1] = a1[1] & 0xFFFF0000FCFFFFFFLL | ((a4 & 3) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x28uLL, a1);

  return sub_2978DB590(v9, a2, a3, a4, a5);
}

void *sub_2978DB594(void *a1, int a2, unsigned __int16 a3, char a4, uint64_t a5)
{
  v9 = sub_2978DB344(a1, 3, a2);
  sub_297804638((v9 + 2), a5);
  nullsub_1();
  a1[1] = a1[1] & 0xFFFF000080FFFFFFLL | ((a4 & 0x7F) << 24) | (a3 << 32);
  return a1;
}

uint64_t sub_2978DB618(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_297869208(0x10uLL, a1);

  return sub_2978DB678(v9, a2, a3, a4, a5);
}

void *sub_2978DB67C(void *a1, int a2, unsigned __int16 a3, int a4, int a5)
{
  sub_2978DB344(a1, 4, a2);
  nullsub_1();
  v9 = 0x1000000;
  if (!a5)
  {
    v9 = 0;
  }

  a1[1] = a1[1] & 0xFFFF000000FFFFFFLL | (a4 << 25) | (a3 << 32) | v9;
  return a1;
}

uint64_t sub_2978DB6F8(uint64_t *a1, uint64_t a2)
{
  v3 = sub_297869208(0x20uLL, a1);

  return sub_2978DB738(v3, a2);
}

uint64_t sub_2978DB748(uint64_t *a1, uint64_t a2)
{
  v3 = sub_297869208(0x10uLL, a1);

  return sub_2978DB788(v3, a2);
}

_BYTE *sub_2978DB798(_BYTE *a1, uint64_t a2)
{
  v8[39] = *MEMORY[0x29EDCA608];
  *a1 = 1;
  sub_2978DB884((a1 + 8));
  sub_29788DFB8(v7, sub_2978DB888);
  sub_29788DFC4(v6, sub_2978DB890);
  sub_2978DB898(v5, a1);
  sub_29788DFCC(v8, v7, v6, v5);
  sub_2978854E4(v5);
  sub_2978854E8(v6);
  sub_2978854EC(v7);
  sub_29788DFE0(v8, a2);
  sub_29788541C(v8);
  return a1;
}

uint64_t sub_2978DB8A0(_BYTE *a1, uint64_t a2)
{
  v4 = *sub_29788A818(a2 + 8, 0);
  v5 = *sub_29788A818(a2 + 8, 1u);
  v6 = sub_29788BFD0(v4);
  v7 = sub_2977FB7B8(v6);
  result = sub_29788F804(v5);
  if (!result)
  {
    *a1 = 0;
    return result;
  }

  v9 = result;
  v14 = v7;
  result = sub_29788A7AC(result);
  if (result == 2)
  {
    v11 = sub_29788A818(v9 + 8, 0);
    *a1 &= sub_2978DB99C(&v14, *v11);
    v12 = sub_29788A818(v9 + 8, 1u);
    result = sub_2978DB9D8(*v12);
  }

  else
  {
    if (result != 4)
    {
      v13 = 0;
      goto LABEL_9;
    }

    v10 = sub_29788A818(v9 + 8, 0);
    result = sub_2978DB99C(&v14, *v10);
  }

  v13 = result & *a1;
LABEL_9:
  *a1 = v13;
  return result;
}

uint64_t sub_2978DB99C(void *a1, uint64_t a2)
{
  result = sub_29788BFD0(a2);
  if (result)
  {
    return sub_2977FB7B8(result) == *a1;
  }

  return result;
}

uint64_t sub_2978DB9D8(uint64_t a1)
{
  v2 = sub_29788C098(a1);
  if (v2)
  {
    v3 = sub_2977FD5B0(v2);
    v4 = sub_29788709C(v3);
    v6 = v5;
    sub_2977FB7B4(&v15, "destCoord");
    return sub_297804D28(v4, v6, v15, v16);
  }

  else
  {
    result = sub_29788BFD0(a1);
    if (result)
    {
      v8 = result;
      v15 = sub_2977FB7B8(result);
      if (sub_297899D98(&v15))
      {
        v9 = sub_2977FB7B8(v8);
        v10 = sub_29781BF50(v9);
        v11 = sub_29788709C(v10);
        v13 = v12;
        sub_2977FB7B4(&v15, "_dc");
        if (sub_297804D28(v11, v13, v15, v16))
        {
          return 1;
        }

        else
        {
          result = sub_29783CFFC(v10);
          if (result)
          {
            v14 = sub_29783CFFC(v10);
            return sub_2978DB9D8(v14);
          }
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

_BYTE *sub_2978DBAD0(_BYTE *a1, uint64_t a2)
{
  v8[39] = *MEMORY[0x29EDCA608];
  *a1 = 1;
  sub_29788DFB8(v7, sub_2978DB888);
  sub_29788DFC4(v6, sub_2978DB890);
  sub_2978DBBB8(v5, a1);
  sub_29788DFCC(v8, v7, v6, v5);
  sub_2978854E4(v5);
  sub_2978854E8(v6);
  sub_2978854EC(v7);
  sub_29788DFE0(v8, a2);
  sub_29788541C(v8);
  return a1;
}

uint64_t sub_2978DBBFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_2978DBC1C(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_2978DBC20(void *a1)
{
  *sub_29788B7D0(a1) = &unk_2A1E57EE0;
  sub_297809B4C();
  return a1;
}

void sub_2978DBC74()
{
  j_j_nullsub_1_125();

  j__free(v0);
}

uint64_t sub_2978DBC9C(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_2978DBC1C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978DBD44(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29788F804(a2);
  if (v4 && (v5 = v4, sub_29788A7AC(v4) == 1))
  {
    sub_2978DB8A0(v3, v5);
    v6 = 0;
  }

  else
  {
    v7 = sub_29788BFD0(a2);
    if (v7)
    {
      v8 = sub_2977FB7B8(v7);
      v9 = sub_2978BB120(v8);
      if (v9)
      {
        v13 = sub_2977FD5B0(v9);
        v10 = sub_2977FB720(&v13);
        v11 = sub_297888638(v10);
        if (v11)
        {
          if (!sub_297888648(v11))
          {
            *v3 = 0;
          }
        }
      }
    }

    v6 = *v3;
  }

  return v6 & 1;
}

uint64_t sub_2978DBE1C(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  result = sub_2978DBE3C(a1, a2);
  *(result + 24) = result;
  return result;
}

void *sub_2978DBE40(void *a1)
{
  *sub_29788B7D0(a1) = &unk_2A1E57F28;
  sub_297809B4C();
  return a1;
}

void sub_2978DBE94()
{
  j_j_nullsub_1_126();

  j__free(v0);
}

uint64_t sub_2978DBEBC(uint64_t a1)
{
  v2 = sub_29788B488();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_2978DBE3C(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

uint64_t sub_2978DBF64(char **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = sub_29788BFD0(a2);
  if (v4 && (v5 = sub_2977FB7B8(v4), v6 = sub_29788709C(v5), v8 = v7, sub_2977FB7B4(&v17, "_dc"), sub_297804D28(v6, v8, v17, v18)) || (v9 = sub_29788C098(a2)) != 0 && (v10 = sub_2977FD5B0(v9), v11 = sub_29788709C(v10), v13 = v12, sub_2977FB7B4(&v17, "destCoord"), sub_297804D28(v11, v13, v17, v18)) || (v14 = sub_29788F804(a2)) != 0 && sub_29788A7AC(v14) == 4)
  {
    v15 = 0;
    *v3 = 0;
  }

  else
  {
    v15 = *v3;
  }

  return v15 & 1;
}

uint64_t fosl_filter_kernelpool_preservesAlpha_0(uint64_t a1)
{
  v4 = *MEMORY[0x29EDCA608];
  sub_2978DC0E4(v3, *(a1 + 8));
  v1 = sub_29786AC48(v3);
  sub_2978DC0E8(v3);
  return v1;
}

uint64_t sub_2978DC0EC(uint64_t a1, uint64_t a2, int a3)
{
  v12 = a2;
  v5 = sub_2977FB720(&v12);
  v6 = sub_297888658(v5);
  if (v6)
  {
    v7 = sub_29788862C(v6);
    if (v7 == 8)
    {
      return 1;
    }

    if (v7 == 13 || v7 == 10)
    {
      return 2;
    }

    sub_2978DC194(a3, 2332, v10, a1);
    v9 = v10;
  }

  else
  {
    sub_2978DC194(a3, 2332, v11, a1);
    v9 = v11;
  }

  sub_29782963C(v9);
  return 0;
}

uint64_t sub_2978DC194@<X0>(int a1@<W1>, int a2@<W2>, uint64_t a3@<X8>, uint64_t a4@<X0>)
{
  v7 = sub_2978DCC68(a4);

  return sub_29782B128(v7, a1, a2, a3);
}

uint64_t sub_2978DC1E4(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  sub_2978DC2E0(a1 + 8);
  sub_297817C28(a1 + 16);
  sub_2978DC2E4(a1 + 152, a1 + 16);
  sub_29788E120(a1 + 184);
  sub_2978DB884(a1 + 280);
  sub_2978BD904(a1 + 344, a1 + 8, 16);
  *(a1 + 368) = a2;
  sub_297829180((a1 + 376));
  sub_297829180(&v9);
  v4 = sub_2978D65BC(*(a1 + 368));
  sub_2978B6A00(v4);
  sub_2978D65C4(v8, v4);
  sub_2978D6F10(v8, 3, 3);
  sub_2977FB7B4(&v6, "_dc");
  sub_2978D6F88(v8, v6, v7, 8, 3, 0);
  sub_2977FB7B4(&v6, "p0");
  sub_2978D6F88(v8, v6, v7, 8, 3, 8);
  return a1;
}

uint64_t sub_2978DC2EC(uint64_t a1)
{
  sub_2978DC350(a1);
  v2 = sub_2978D65BC(*(a1 + 368));
  sub_2978B6D78(v2);
  j_nullsub_1();
  sub_29787B7C8(a1 + 280);
  sub_29787B7C8(a1 + 184);
  sub_2978DC39C(a1 + 152);
  sub_297818154(a1 + 16);
  sub_2978BD894(a1 + 8);
  return a1;
}

void *sub_2978DC350(uint64_t a1)
{
  sub_2978DF8D0((a1 + 152));
  sub_29783DB90(a1 + 184);
  sub_29783DB90(a1 + 280);

  return sub_297814D10((a1 + 344));
}

uint64_t sub_2978DC3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2978D65C8(*(a1 + 368));
  v7 = sub_29781F408(v6);
  sub_2977FB7B4(v11, "kernel-pool");
  v8 = sub_297804A04(a2, a3, v11[0], v11[1], 0);
  sub_297829180(v11);
  v9 = sub_29787BEA0(v7, v8, 0, 0, 0, v11[0]);
  return sub_2978DC444(a1, v9);
}

uint64_t sub_2978DC444(uint64_t a1, unsigned int a2)
{
  v90 = *MEMORY[0x29EDCA608];
  *(a1 + 376) = a2;
  v4 = sub_29787CC6C(*(a1 + 368));
  v5 = sub_2978D65C8(*(a1 + 368));
  sub_297829180(&v85);
  sub_29787229C(v5, a2, 0, v85);
  v6 = sub_2978DCC68(a1);
  v7 = sub_2978D6920(v6);
  v8 = sub_2978D6928(*(a1 + 368));
  (*(*v7 + 24))(v7, v8, v5);
  sub_2978D6930(v4);
  if (!sub_2978CE708(v4))
  {
    while (1)
    {
      v12 = sub_297876C1C(v4);
      if (!sub_2978780CC(v12))
      {
        v13 = sub_297876C1C(v4);
        if (!sub_29784FF04(v13, 399))
        {
          break;
        }
      }

      if (!sub_2978C6F10(v4))
      {
        goto LABEL_8;
      }

LABEL_9:
      if (sub_2978CE708(v4))
      {
        goto LABEL_2;
      }
    }

    v14 = sub_297876C1C(v4);
    if (sub_29784FF04(v14, 79))
    {
      v15 = sub_2978C6F10(v4);
      if (v15)
      {
        v16 = v15;
        v17 = sub_2978862BC(v15);
        v18 = sub_2978862C0(v16);
        if (v17 == v18)
        {
          goto LABEL_9;
        }

        v19 = v18;
        while (1)
        {
          v82[0] = *v17;
          if ((sub_29788AE7C(v82) & 1) == 0)
          {
            break;
          }

          sub_29781BF50(v82[0]);
          sub_2978B7978(a1 + 280);
          if (++v17 == v19)
          {
            goto LABEL_9;
          }
        }
      }
    }

    else
    {
      v20 = sub_297876C1C(v4);
      v21 = sub_29784FF04(v20, 459);
      sub_2978DCC9C(v89);
      v22 = sub_2978C72F4(v4, v89);
      sub_2978D693C(v89);
      v84 = v22;
      if (!v22 || (sub_29788AB2C(&v84) & 1) == 0)
      {
        sub_29780CE64(a1);
        goto LABEL_2;
      }

      v23 = sub_29781BF50(v84);
      if (!v21)
      {
        sub_2978B7978(a1 + 184);
        goto LABEL_9;
      }

      v24 = sub_297869208(0x90uLL, (a1 + 16));
      v83 = sub_2978DCCA0(v24, a1 + 8);
      *(v83 + 8) = v23;
      v25 = sub_2978735BC(v23);
      v26 = sub_297811C44(v23);
      v27 = sub_2978DC0EC(a1, v25, v26);
      *v83 = *v83 & 0xE3 | (4 * v27);
      v28 = sub_29788709C(v23);
      sub_2978CD79C(v82, a1 + 16, v28, v29);
      v30 = sub_297887B14(v82);
      v31 = v83;
      *(v83 + 16) = v30;
      *(v31 + 24) = v32;
      if ((*v31 & 0x1C) != 0)
      {
        sub_29788E11C(v88);
        sub_29788E120(v82);
        v80[0] = a1;
        v80[1] = v82;
        v80[2] = &v86;
        v80[3] = v88;
        sub_2978DCCA4(&v86, v80);
        sub_2978DCCA8(&v86, v23);
        sub_2978DCCD0(&v86);
        sub_29787B7C8(v82);
        v33 = sub_2977FB720(v88);
        for (i = sub_2977FB7B8(v88); v33 != i; v33 += 8)
        {
          if (sub_2978B7944(a1 + 184))
          {
            v35 = v83;
            sub_2977FDEF4();
            sub_2978DCCD4(v35 + 72, v82, a1 + 8);
          }
        }

        v82[0] = sub_297873448(a1 + 280);
        v82[1] = v36;
        v86.n128_u64[0] = sub_29787347C(a1 + 280);
        v86.n128_u64[1] = v37;
        while (sub_29781550C(v82, &v86))
        {
          sub_2978B6914();
          if (sub_2978B7944(a1 + 280))
          {
            v38 = v83;
            sub_2977FDEF4();
            sub_2978DCCD4(v38 + 96, v80, a1 + 8);
          }

          sub_2978734C0(v82);
        }

        v39 = sub_2978DCD2C(v23);
        v40 = sub_2977FB720(v39);
        v41 = sub_2977FB7B8(v39);
        while (v40 != v41)
        {
          v40 += 8;
          v42 = v83;
          sub_2977FDEF4();
          sub_2978DCCD4(v42 + 120, v82, a1 + 8);
        }

        sub_2977FCF14(v82);
        sub_29781F238(v81, v82);
        sub_2978DB884(v80);
        v43 = v83;
        v44 = sub_2977FB720(v83 + 96);
        for (j = sub_2977FB7B8(v43 + 96); v44 != j; ++v44)
        {
          v46 = *v44;
          if (!sub_2978B7944(v80))
          {
            sub_297885CA4(v46, v81);
            sub_297801F64(v81, ";\n");
            sub_2978B7978(v80);
          }
        }

        sub_2978DB884(v79);
        v47 = v83;
        v48 = sub_2977FB720(v83 + 72);
        for (k = sub_2977FB7B8(v47 + 72); v48 != k; ++v48)
        {
          v50 = *v48;
          if (!sub_2978B7944(v79))
          {
            sub_297885CA4(v50, v81);
            sub_2978B7978(v79);
          }
        }

        v51 = sub_297803A7C((v23 + 16));
        v52 = sub_297888A34((v23 + 16));
        if (v51 == v52)
        {
          v65 = 3;
LABEL_52:
          v67 = *v83 & 0xFC | v65;
          if ((*v83 & 0x1C) == 4)
          {
            v67 = *v83 & 0xE4 | 2;
          }

          *v83 = v67;
          if ((*v83 & 3) == 1)
          {
            sub_2978DB89C(&v86, v23);
            if (sub_29786AC48(&v86))
            {
              *v83 |= 3u;
              sub_2978DCDB8(v23);
            }

            sub_2978DCDC4(&v86);
          }

          sub_297885CA4(v23, v81);
          v68 = sub_29781F384(v81);
          sub_2978CD79C(&v86, a1 + 16, v68, v69);
          v70 = sub_297887B14(&v86);
          v71 = v83;
          *(v83 + 32) = v70;
          *(v71 + 40) = v72;
          v73 = sub_29788709C(v84);
          *sub_2978DAEE0((a1 + 152), v73, v74) = v71;
          sub_2978BD83C((a1 + 344), &v83, a1 + 8);
        }

        else
        {
          v53 = v52;
          v54 = 0;
          do
          {
            v55 = *v51;
            sub_2978DCD34(&v86);
            v56 = sub_29788709C(v55);
            sub_2978CD79C(&v78, a1 + 16, v56, v57);
            v86.n128_u64[0] = sub_297887B14(&v78);
            v86.n128_u64[1] = v58;
            v78 = sub_2977FD5B0(v55);
            v59 = sub_2977FB720(&v78);
            v60 = sub_297888658(v59);
            if (!v60 || (v61 = v60, v62 = sub_29788862C(v60), (sub_2978DCD38(v62) & 1) == 0))
            {
              v66 = sub_297811C4C(v55);
              sub_2978DC194(v66, 2359, v77, a1);
              sub_29782963C(v77);
              sub_29780CE64(a1);
              if ((v54 & 1) == 0)
              {
                goto LABEL_46;
              }

              goto LABEL_49;
            }

            v63 = sub_29788862C(v61);
            v87 = v87 & 0xFF80 | v63 & 0x7F;
            v64 = sub_297888B60(v55);
            v87 = ((v64 & 3) << 7) | v87 & 0xFE7F;
            sub_2978DCD58(v83 + 48, &v86, a1 + 8);
            v54 |= (v87 & 0x7Fu) - 41 < 2;
            ++v51;
          }

          while (v51 != v53);
          if ((v54 & 1) == 0)
          {
LABEL_46:
            v65 = 3;
            goto LABEL_52;
          }

LABEL_49:
          if ((*v83 & 0x1C) == 8)
          {
            v65 = 1;
            goto LABEL_52;
          }

          v75 = sub_297811C44(v23);
          sub_2978DC194(v75, 2360, v76, a1);
          sub_29782963C(v76);
          sub_29780CE64(a1);
        }

        sub_29787B7C8(v79);
        sub_29787B7C8(v80);
        sub_29781F290(v81);
        sub_2977FD134(v82);
        sub_2977FD134(v88);
        goto LABEL_9;
      }
    }

LABEL_8:
    sub_29780CE64(a1);
    goto LABEL_9;
  }

LABEL_2:
  if (sub_29786AC48(a1))
  {
    sub_2978DC350(a1);
  }

  v9 = sub_2978DCC68(a1);
  v10 = sub_2978D6920(v9);
  return (*(*v10 + 32))(v10);
}

uint64_t sub_2978DCC68(uint64_t a1)
{
  v1 = sub_2978D65C8(*(a1 + 368));

  return sub_2977FD5B0(v1);
}

void sub_2978DCCD4(uint64_t result, void *a2, uint64_t a3)
{
  v5 = *(result + 8);
  if (v5 >= *(result + 16))
  {
    sub_2978DFB58(result, a3, 1uLL);
    v5 = *(result + 8);
  }

  *v5 = *a2;
  *(result + 8) += 8;
}

__n128 sub_2978DCD58(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  if (v5 >= *(a1 + 16))
  {
    sub_2978DFA60(a1, a3, 1uLL);
    v5 = *(a1 + 8);
  }

  result = *a2;
  v5[1].n128_u64[0] = a2[1].n128_u64[0];
  *v5 = result;
  *(a1 + 8) += 24;
  return result;
}

uint64_t sub_2978DCDC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29787CC6C(*(a1 + 368));
  v7 = sub_2978D65C8(*(a1 + 368));
  v8 = sub_29781F408(v7);
  sub_2977FB7B4(v16, "kernel-pool");
  v9 = sub_297804A04(a2, a3, v16[0], v16[1], 0);
  sub_297829180(v16);
  LODWORD(v9) = sub_29787BEA0(v8, v9, 0, 0, 0, v16[0]);
  sub_297829180(v16);
  sub_29787229C(v7, v9, 0, v16[0]);
  v10 = sub_2978DCC68(a1);
  v11 = sub_2978D6920(v10);
  v12 = sub_2978D6928(*(a1 + 368));
  (*(*v11 + 24))(v11, v12, v7);
  sub_2978D6930(v6);
  while (!sub_2978CE708(v6))
  {
    sub_2978C6F10(v6);
  }

  v13 = sub_2978DCC68(a1);
  v14 = sub_2978D6920(v13);
  return (*(*v14 + 32))(v14);
}

uint64_t sub_2978DCF34(uint64_t a1)
{
  v1 = sub_2978EE93C(*(a1 + 368));
  v2 = sub_2978D6920(v1);

  return sub_2978DCF64(v2);
}

_DWORD *sub_2978DCF80(uint64_t a1, unsigned int a2)
{
  v4 = sub_2978EE93C(*(a1 + 368));
  v5 = sub_2978D6920(v4);
  v6 = sub_2978D65C8(*(a1 + 368));
  v7 = sub_29781F408(v6);
  sub_297809B88(v46);
  sub_297809B88(v45);
  sub_29780C6B8(v46);
  sub_29780CA0C(v45);
  v8 = sub_297805508(v5);
  sub_2978DD2DC(v46, v8);
  v9 = sub_2978483F4(v5);
  sub_2978DD358(v45, v9);
  if (sub_2978DCF64(v5) <= a2)
  {
    v10 = 0;
  }

  else
  {
    v42 = sub_2978DD3D4();
    v44 = sub_2978DD3DC(&v42, a2);
    v10 = malloc_type_malloc(0x38uLL, 0x1070040C582C436uLL);
    v11 = sub_29780BD00(v46);
    sub_2978297B4();
    v13 = v12;
    v14 = sub_2977FB720(v12 + 32);
    v15 = sub_2977FB7B8(v13 + 32);
    if (v14 != v15)
    {
      v16 = v15;
      do
      {
        v17 = sub_297850AD4(v14);
        LODWORD(v42) = sub_2978DD410(v7, v17);
        v18 = sub_2978478EC(v14);
        HIDWORD(v42) = sub_2978DD410(v7, v18);
        sub_2978DD40C(v46, &v42);
        v14 += 3;
      }

      while (v14 != v16);
    }

    v19 = sub_29780AAE8(v45);
    sub_2978297B4();
    v21 = v20;
    v22 = sub_2977FB720(v20 + 80);
    v23 = sub_2977FB7B8(v21 + 80);
    if (v22 != v23)
    {
      v24 = v23;
      do
      {
        v25 = sub_297850AD4(v22);
        v26 = sub_2978478EC(v22);
        if (sub_297850C04(v22))
        {
          v27 = sub_2978D6928(*(a1 + 368));
          v26 = sub_297850610(v26, 0, v7, v27);
        }

        v42 = 0;
        v43 = 0;
        LODWORD(v42) = sub_2978DD410(v7, v25);
        HIDWORD(v42) = sub_2978DD410(v7, v26);
        v43 = 0;
        v28 = v22 + 6;
        if (sub_29780347C((v22 + 6)))
        {
          sub_297856348(v22 + 3);
        }

        v43 = sub_2978037C8();
        sub_29780BFD8(v45, &v42);
        v22 += 14;
      }

      while (v28 + 8 != v24);
    }

    sub_2978297B4();
    v30 = sub_2978DD410(v7, *(v29 + 24));
    sub_2978297B4();
    *v10 = sub_2978DD430(*(v31 + 216));
    v10[1] = sub_297841D38(v7, *(a1 + 376), v30, 0);
    v10[2] = sub_297841944(v7, *(a1 + 376), v30, 0);
    sub_2978297B4();
    v10[3] = sub_2978DD410(v7, *(v32 + 24));
    sub_2978297B4();
    *(v10 + 2) = sub_2978037C8();
    sub_2978297B4();
    v34 = sub_29782B90C(v33 + 32);
    v10[6] = v34;
    if (v34)
    {
      sub_2978297B4();
      v36 = v35 + 8 * v11;
    }

    else
    {
      v36 = 0;
    }

    *(v10 + 4) = v36;
    sub_2978297B4();
    v38 = sub_29782B950(v37 + 80);
    v10[10] = v38;
    if (v38)
    {
      sub_2978297B4();
      v40 = v39 + 16 * v19;
    }

    else
    {
      v40 = 0;
    }

    *(v10 + 6) = v40;
  }

  sub_29780A9D8(v45);
  sub_29780C534(v46);
  return v10;
}

void sub_2978DD2DC(uint64_t *a1, unint64_t a2)
{
  v4 = sub_29780BD00(a1);
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v5 = *a1 + 8 * a2;

      sub_2978676A0(a1, v5);
    }
  }

  else
  {

    sub_2978E01C4(a1, a2 - v4);
  }
}

void sub_2978DD358(uint64_t *a1, unint64_t a2)
{
  v4 = sub_29780AAE8(a1);
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v5 = *a1 + 16 * a2;

      sub_29780CB38(a1, v5);
    }
  }

  else
  {

    sub_2978E0440(a1, a2 - v4);
  }
}

uint64_t sub_2978DD3DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  sub_2978E05F8(&v3, a2);
  return v3;
}

uint64_t sub_2978DD444(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x29EDCA608];
  *a1 = 0;
  *(a1 + 4) = 0;
  sub_2978DD50C(a1 + 8);
  sub_2978DD510(v7, a1);
  sub_2978DD514(v6, a1);
  sub_2978DD518(v5, a1);
  sub_29788B2F8(a1 + 64, v7, v6, v5);
  sub_2978854E4(v5);
  sub_2978854E8(v6);
  sub_2978854EC(v7);
  sub_2978DD51C(a1, a2);
  return a1;
}

uint64_t sub_2978DD51C(_BYTE *a1, uint64_t a2)
{
  v11 = sub_2978735BC(a2);
  v4 = sub_2977FB720(&v11);
  result = sub_2978B90E0(v4);
  if ((result & 1) == 0)
  {
    v6 = sub_297803A7C(a2 + 16);
    result = sub_297888A34(a2 + 16);
    if (v6 != result)
    {
      v7 = result;
      while (1)
      {
        v8 = *v6;
        v11 = sub_2977FD5B0(*v6);
        v9 = sub_2977FB720(&v11);
        result = sub_297888658(v9);
        if (result)
        {
          result = sub_29788862C(result);
          if (result == 10)
          {
            break;
          }
        }

        if (++v6 == v7)
        {
          return result;
        }
      }

      if (v8)
      {
        sub_2978DF794(&v11, 0, 0, 0, 1);
        sub_2978DD9C4((a1 + 8), v8, v11);
        *a1 = 1;
        v10 = sub_297888A68(a2);
        return sub_29788D71C((a1 + 64), v10);
      }
    }
  }

  return result;
}

uint64_t sub_2978DD618(uint64_t a1)
{
  v2 = sub_297885A8C(a1, 0);
  sub_29783DC08(v2 + 24, 0);
  *(a1 + 48) = 0;
  return a1;
}

uint64_t sub_2978DD6C4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1();
    j_j_nullsub_1();
    sub_2978DD73C(a1, a2, &v5);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DD740(void *a1)
{
  *sub_29788B3A0(a1) = &unk_2A1E57F70;
  sub_297809B4C();
  return a1;
}

uint64_t sub_2978DD7A0()
{
  nullsub_1();
  j_j_nullsub_1();
  v1 = sub_29780C3B4(v0, 1uLL);
  sub_2977FB7C0(v7, &v9, 1);
  sub_29788B48C(v8, v1, v7);
  v2 = sub_2977FB720(v8);
  nullsub_1();
  v4 = v3;
  j_j_nullsub_1();
  sub_2978DD73C(v2, v4, v7);
  v5 = sub_2978058AC(v8);
  sub_29788E244(v8);
  return v5;
}

uint64_t sub_2978DD854(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v4 = v3;
  nullsub_1();

  return sub_2978DD73C(a2, v4, v5);
}

void sub_2978DD8B8(void *a1)
{
  nullsub_1();
  j_j_nullsub_1();
  nullsub_1();
  sub_297809D24(&v2, a1);
}

BOOL sub_2978DD944(uint64_t a1, uint64_t a2)
{
  v3 = sub_2978B84F8(a2);
  v4 = v3;
  if (v3 && sub_29783CFFC(v3))
  {
    sub_29783CFFC(v4);
    sub_29788CF00(a1 + 64);
    v5 = sub_29783CFFC(v4);
    v6 = sub_2978DDA34(a1 + 8, v5);
    sub_2978DD9C4(a1 + 8, v4, v6);
  }

  return v4 == 0;
}

uint64_t *sub_2978DD9C4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3;
  v6 = a2;
  if (sub_2978DDA94(&v7) || sub_2978DDAA4(a1))
  {
    return sub_2978DDAC0(a1, a2);
  }

  result = sub_2978DDB08(a1, &v6);
  *result = v7;
  return result;
}

uint64_t sub_2978DDA34(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (sub_297896C10(a1 + 24, &v6))
  {
    v4 = sub_2978DDE08(a1 + 24, &v6);
  }

  else
  {
    v4 = &v7;
    sub_29780CE70(&v7, v3);
  }

  return *v4;
}

_BYTE *sub_2978DDAC0(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = sub_2978B0F4C(a1, &v5);
  if (result)
  {
    v4 = sub_2978DDB08(a1, &v5);
    return sub_29780CE74(v4);
  }

  return result;
}

uint64_t *sub_2978DDB34(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_2978B0FEC(a1, a2, &v7))
  {
    return v7;
  }

  sub_29780CE70(&v6, v4);
  return sub_2978DDB94(a1, a2, &v6, v7);
}

uint64_t *sub_2978DDB94(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t *a4)
{
  result = sub_2978DDBD0(a1, a2, a4);
  *result = *a2;
  *(result + 8) = *a3;
  return result;
}

uint64_t *sub_2978DDBD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v11 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978DDCBC(a1, (2 * v6));
    sub_2978B0FEC(a1, a2, &v11);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978DDCBC(a1, v7);
    sub_2978B0FEC(a1, a2, &v11);
  }

  v8 = sub_29782B4D8(a1);
  v9 = sub_29782F70C(v8);
  if (!sub_297807F98(*v11, v9))
  {
    sub_29782B514(a1);
  }

  return v11;
}

void sub_2978DDCC0(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29783DC8C(a1, *v5);
  if (v4)
  {
    sub_2978DDD4C(a1, v4, v4 + 16 * v3);
    j__free(v4);
  }

  else
  {
    sub_297885B64(a1);
  }
}

uint64_t sub_2978DDD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_297885B64(a1);
  v7 = sub_29782F70C(v6);
  result = sub_297885834();
  if (a2 != a3)
  {
    v9 = result;
    do
    {
      result = sub_297807F98(*a2, v7);
      if ((result & 1) == 0)
      {
        result = sub_297807F98(*a2, v9);
        if ((result & 1) == 0)
        {
          v10 = 0;
          sub_2978B0FEC(a1, a2, &v10);
          *v10 = *a2;
          *(v10 + 8) = *(a2 + 8);
          result = sub_29782B4D8(a1);
        }
      }

      a2 += 16;
    }

    while (a2 != a3);
  }

  return result;
}

uint64_t *sub_2978DDE24(uint64_t a1, uint64_t *a2)
{
  v7 = 0;
  if (sub_297844348(a1, a2, &v7))
  {
    return v7;
  }

  sub_29780CE70(&v6, v4);
  return sub_297846230(a1, a2, &v6, v7);
}

uint64_t sub_2978DDEF4(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1();
    j_j_nullsub_1();
    sub_2978DDF6C(a1, a2, &v5);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DDF70(void *a1)
{
  *sub_29788B5B8(a1) = &unk_2A1E57FB8;
  sub_297809B4C();
  return a1;
}

uint64_t sub_2978DDFD0()
{
  nullsub_1();
  j_j_nullsub_1();
  v1 = sub_29780C3B4(v0, 1uLL);
  sub_2977FB7C0(v7, &v9, 1);
  sub_29788B48C(v8, v1, v7);
  v2 = sub_2977FB720(v8);
  nullsub_1();
  v4 = v3;
  j_j_nullsub_1();
  sub_2978DDF6C(v2, v4, v7);
  v5 = sub_2978058AC(v8);
  sub_29788E244(v8);
  return v5;
}

uint64_t sub_2978DE084(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v4 = v3;
  nullsub_1();

  return sub_2978DDF6C(a2, v4, v5);
}

void sub_2978DE0E8(void *a1)
{
  nullsub_1();
  j_j_nullsub_1();
  nullsub_1();
  sub_297809D24(&v2, a1);
}

uint64_t sub_2978DE158(_BYTE **a1, uint64_t a2)
{
  v2 = *a1;
  if (*v2 == 1)
  {
    return sub_2978DE174(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978DE388(a2);
  if (v4)
  {
    v5 = v4;
    sub_2977FB7B8(v4);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    v6 = sub_2977FD5B0(v5);
    sub_29788D71C(a1 + 64, v6);
    if (!sub_29783CFFC(v5))
    {
LABEL_11:
      result = 0;
      --*(a1 + 56);
      return result;
    }

    v7 = sub_29783CFFC(v5);
LABEL_10:
    sub_29788D71C(a1 + 64, v7);
    goto LABEL_11;
  }

  v8 = sub_2978DE3C4(a2);
  if (v8)
  {
    v9 = v8;
    sub_2977FB7B8(v8);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    v7 = sub_2977FD5B0(v9);
    goto LABEL_10;
  }

  v10 = sub_2978DE400(a2);
  if (v10)
  {
    v11 = v10;
    v12 = sub_2977FB7B8(v10);
    sub_29788D71C(a1 + 64, v12);
    ++*(a1 + 56);
    v13 = sub_2977FD5B0(v11);
    sub_29788D71C(a1 + 64, v13);
    sub_29783CFFC(v11);
    sub_29788CF00(a1 + 64);
    v7 = sub_297805510(v11);
    goto LABEL_10;
  }

  v14 = sub_2978DE43C(a2);
  if (v14)
  {
    v15 = v14;
    ++*(a1 + 56);
    v16 = sub_2977FB7B8(v14);
    sub_29788D71C(a1 + 64, v16);
    v7 = sub_2977FD5B0(v15);
    goto LABEL_10;
  }

  v18 = sub_2978DE478(a2);
  if (v18)
  {
    v19 = v18;
    ++*(a1 + 56);
    v20 = sub_2977FB7B8(v18);
    sub_29788D71C(a1 + 64, v20);
    sub_2977FD5B0(v19);
    sub_29788CF00(a1 + 64);
    goto LABEL_11;
  }

  v21 = sub_2978DE4B4(a2);
  if (!v21)
  {
    return 1;
  }

  v22 = v21;
  sub_2977FB7B8(v21);
  sub_29788CF00(a1 + 64);
  v23 = sub_2977FB7B8(v22);
  v24 = sub_2978DE4F0(a1 + 8, v23, 3);
  result = 0;
  *a1 &= v24;
  ++*(a1 + 4);
  return result;
}

uint64_t sub_2978DE388(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE544(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE3C4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE5A4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE400(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE5E0(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE43C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE61C(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE478(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE658(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE4B4(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DE694(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE4F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v7 = a2;
  result = sub_297896C10(a1 + 24, &v7);
  if (result)
  {
    v6 = sub_2978DDE08(a1 + 24, &v7);
    return sub_2978DE6F4(v6, v3);
  }

  return result;
}

uint64_t sub_2978DE774(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1();
    j_j_nullsub_1();
    sub_2978DE7EC(a1, a2, &v5);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DE7F0(void *a1)
{
  *sub_29788B7D0(a1) = &unk_2A1E58000;
  sub_297809B4C();
  return a1;
}

uint64_t sub_2978DE850()
{
  nullsub_1();
  j_j_nullsub_1();
  v1 = sub_29780C3B4(v0, 1uLL);
  sub_2977FB7C0(v7, &v9, 1);
  sub_29788B48C(v8, v1, v7);
  v2 = sub_2977FB720(v8);
  nullsub_1();
  v4 = v3;
  j_j_nullsub_1();
  sub_2978DE7EC(v2, v4, v7);
  v5 = sub_2978058AC(v8);
  sub_29788E244(v8);
  return v5;
}

uint64_t sub_2978DE904(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v4 = v3;
  nullsub_1();

  return sub_2978DE7EC(a2, v4, v5);
}

void sub_2978DE968(void *a1)
{
  nullsub_1();
  j_j_nullsub_1();
  nullsub_1();
  sub_297809D24(&v2, a1);
}

uint64_t sub_2978DE9D8(_BYTE **a1, uint64_t a2)
{
  v2 = *a1;
  if (*v2 == 1)
  {
    return sub_2978DE9F4(v2, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DE9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_29788BFD0(a2);
  if (v4)
  {
    v5 = sub_2977FB7B8(v4);
    v6 = sub_2978DEF74(a1 + 8, v5);
    v7 = a1 + 8;
    v8 = v6;
    v9 = a2;
LABEL_7:
    sub_2978DEF10(v7, v9, v8);
    return 0;
  }

  v10 = sub_2978A2FC8(a2);
  if (v10 || (v10 = sub_2978DEFD0(a2)) != 0)
  {
    v11 = v10;
    sub_2977FB7B8(v10);
    sub_29788CF00(a1 + 64);
    v12 = sub_2977FB7B8(v11);
    v13 = sub_2978DDA34(a1 + 8, v12);
    v7 = a1 + 8;
    v8 = v13;
LABEL_6:
    v9 = v11;
    goto LABEL_7;
  }

  v15 = sub_2978DF00C(a2);
  if (v15)
  {
    v11 = v15;
    sub_2977FD5B0(v15);
    sub_29788CF00(a1 + 64);
    ++*(a1 + 56);
    sub_29783CFFC(v11);
    sub_29788CF00(a1 + 64);
    sub_297805510(v11);
    sub_29788CF00(a1 + 64);
    --*(a1 + 56);
    v16 = sub_29783CFFC(v11);
    LOBYTE(v69) = sub_2978DDA34(a1 + 8, v16);
    v17 = sub_297805510(v11);
    v18 = sub_2978DDA34(a1 + 8, v17);
    sub_2978DF048(&v69, v18);
    v8 = v69;
LABEL_16:
    v7 = a1 + 8;
    goto LABEL_6;
  }

  v19 = sub_2978A2F8C(a2);
  if (v19)
  {
    v11 = v19;
    sub_2977FD5B0(v19);
    sub_29788CF00(a1 + 64);
    v20 = sub_2977FD5B0(v11);
    v71 = sub_2978DDA34(a1 + 8, v20);
    v69 = sub_29788A810(v11);
    v70 = v21;
    sub_29780CE70(&v68, v21);
    if (sub_2977FB7B8(&v69))
    {
      v22 = 0;
      v23 = 0;
      do
      {
        v24 = sub_297803A20(&v69, v22);
        v25 = sub_2978DF07C(&v71, v24);
        sub_2978DF058(&v68, v23++, v25);
        v22 = v23;
      }

      while (sub_2977FB7B8(&v69) > v23);
    }

    v8 = v68;
    goto LABEL_16;
  }

  v26 = sub_2978DF0BC(a2);
  if (!v26)
  {
    v34 = sub_2978DF20C(a2);
    if (v34)
    {
      v35 = v34;
      v36 = sub_29788A44C(v34);
      if (v36 == 5 || v36 == 3)
      {
        v37 = sub_2977FD5B0(v35);
        sub_2978DF0F8(a1, v37);
        return 0;
      }

      return 1;
    }

    v38 = sub_2978AC260(a2);
    v39 = v38;
    if (v38)
    {
      v69 = sub_2977FD5B0(v38);
      v40 = sub_2977FB720(&v69);
      if (!sub_2978C6B34(v40))
      {
        v53 = 1;
LABEL_48:
        if (v39)
        {
          return v53;
        }

        else
        {
          return 1;
        }
      }

      sub_29780CE70(&v71, v41);
      v42 = sub_297803A7C(v39 + 8);
      v43 = sub_29788A7C4(v39 + 8);
      if (v42 != v43)
      {
        v44 = v43;
        v45 = 0;
        do
        {
          v46 = *v42;
          sub_29788CF00(a1 + 64);
          v68 = sub_2978DDA34(a1 + 8, v46);
          v69 = sub_29788C170(v46);
          v47 = sub_2977FB720(&v69);
          if (sub_297890438(v47))
          {
            v48 = sub_2978DE6F4(&v68, 0);
            sub_2978DF058(&v71, v45++, v48);
          }

          else
          {
            v69 = sub_29788C170(v46);
            v49 = sub_2977FB720(&v69);
            v50 = sub_297890568(v49);
            if (sub_297887A38(v50))
            {
              v51 = 0;
              do
              {
                v52 = sub_2978DE6F4(&v68, v51);
                sub_2978DF058(&v71, v45 + v51++, v52);
              }

              while (v51 < sub_297887A38(v50));
              v45 += v51;
            }
          }

          ++v42;
        }

        while (v42 != v44);
      }

      sub_2978DEF10(a1 + 8, v39, v71);
    }

    v53 = 0;
    goto LABEL_48;
  }

  v27 = v26;
  sub_2977FD5B0(v26);
  sub_29788CF00(a1 + 64);
  v28 = sub_2977FD5B0(v27);
  v71 = sub_2978DDA34(a1 + 8, v28);
  if (!sub_2978DDA94(&v71) && sub_29788A7A0(v27) == 4)
  {
    v29 = sub_2977FB7B8(v27);
    v30 = sub_29788BFD0(v29);
    if (v30)
    {
      v31 = sub_2977FB7B8(v30);
      v32 = sub_2977FD5B0(v27);
      v33 = sub_2978DDA34(a1 + 8, v32);
      sub_2978DD9C4(a1 + 8, v31, v33);
      return 0;
    }

    v54 = sub_2977FB7B8(v27);
    v55 = sub_2978A2F8C(v54);
    if (v55)
    {
      v56 = v55;
      v57 = sub_2977FD5B0(v55);
      v58 = sub_29788BFD0(v57);
      if (v58)
      {
        v59 = v58;
        v69 = sub_29788A810(v56);
        v70 = v60;
        if (sub_2977FB7B8(&v69))
        {
          v61 = 0;
          v62 = 0;
          do
          {
            v63 = sub_2977FB7B8(v59);
            v64 = sub_297803A20(&v69, v61);
            v65 = sub_2978A3BB4(v64);
            v66 = sub_2978DE6F4(&v71, v62);
            sub_2978DF194(a1 + 8, v63, v65, v66);
            v61 = ++v62;
          }

          while (sub_2977FB7B8(&v69) > v62);
        }

        return 0;
      }
    }
  }

  v67 = sub_2977FB7B8(v27);
  return sub_2978DF0F8(a1, v67);
}

uint64_t *sub_2978DEF10(uint64_t a1, uint64_t a2, char a3)
{
  v7 = a3;
  v6 = a2;
  if (sub_2978DDA94(&v7))
  {
    return sub_2978DF248(a1, a2);
  }

  result = sub_2978DDE08(a1 + 24, &v6);
  *result = v7;
  return result;
}

uint64_t sub_2978DEF74(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  if (sub_2978B0F4C(a1, &v6))
  {
    v4 = sub_2978DDB08(a1, &v6);
  }

  else
  {
    v4 = &v7;
    sub_29780CE70(&v7, v3);
  }

  return *v4;
}

uint64_t sub_2978DEFD0(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF294(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DF00C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF2C4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2978DF058(_BYTE *result, char a2, int a3)
{
  v3 = *result;
  v4 = v3 | (1 << a2);
  if (!a3)
  {
    LOBYTE(v4) = v3 & ~(1 << a2);
  }

  *result = v4;
  return result;
}

uint64_t sub_2978DF07C(unsigned __int8 *a1, int a2)
{
  v3 = sub_2978A3BB4(a2);

  return sub_2978DE6F4(a1, v3);
}

uint64_t sub_2978DF0BC(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF2F4(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978DF0F8(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x29EDCA608];
  sub_29780CE70(&v4, a2);
  sub_2978DF324(v5, &v4, a1);
  sub_29788C880(v6, v5);
  sub_2978854E4(v5);
  sub_29788CF68(v6);
  sub_2978854E0(v6);
  return 0;
}

_BYTE *sub_2978DF194(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v10 = a2;
  if ((a4 & 1) != 0 || (result = sub_2978B0F4C(a1, &v10), result))
  {
    v8 = sub_2978DDB08(a1, &v10);
    v9 = sub_2978DDB24(a1);
    return sub_2978DF058(v8, a3, v9 & a4);
  }

  return result;
}

uint64_t sub_2978DF20C(uint64_t a1)
{
  v2 = a1;
  if (sub_2978DF764(&v2))
  {
    return sub_29781BF50(v2);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2978DF248(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  result = sub_297896C10(a1 + 24, &v5);
  if (result)
  {
    v4 = sub_2978DDE08(a1 + 24, &v5);
    return sub_29780CE74(v4);
  }

  return result;
}

uint64_t sub_2978DF328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2978DF350(a1, v4);
}

uint64_t sub_2978DF398(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  if (sub_2978100EC())
  {
    j_j_nullsub_1();
    j_j_nullsub_1();
    sub_2978DF410(a1, a2, &v5);
    *(a1 + 24) = a1;
  }

  return a1;
}

void *sub_2978DF414(void *a1, uint64_t a2)
{
  v4 = sub_29788B7D0(a1);
  *v4 = &unk_2A1E58048;
  sub_2978BAD50((v4 + 1), a2);
  return a1;
}

uint64_t sub_2978DF474()
{
  nullsub_1();
  j_j_nullsub_1();
  v1 = sub_29780A100(v0, 1uLL);
  sub_2977FB7C0(v7, &v9, 1);
  sub_29788B48C(v8, v1, v7);
  v2 = sub_2977FB720(v8);
  nullsub_1();
  v4 = v3;
  j_j_nullsub_1();
  sub_2978DF410(v2, v4, v7);
  v5 = sub_2978058AC(v8);
  sub_29788E244(v8);
  return v5;
}

uint64_t sub_2978DF528(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v4 = v3;
  nullsub_1();

  return sub_2978DF410(a2, v4, v5);
}

void sub_2978DF58C(void *a1)
{
  nullsub_1();
  j_j_nullsub_1();
  nullsub_1();
  sub_297809D24(&v2, a1);
}

BOOL sub_2978DF600(unsigned __int8 **a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = sub_29788BFD0(a2);
  if (v5)
  {
    if (sub_2978DDA94(*a1))
    {
      v6 = sub_2977FB7B8(v5);
      sub_2978DDAC0((v4 + 8), v6);
    }

    else
    {
      for (i = 0; i != 4; ++i)
      {
        if (sub_2978DE6F4(*a1, i))
        {
          v15 = sub_2977FB7B8(v5);
          sub_2978DF194((v4 + 8), v15, i, 0);
        }
      }
    }
  }

  else
  {
    v7 = sub_2978A2F8C(a2);
    if (v7)
    {
      v17[0] = sub_29788A810(v7);
      v17[1] = v8;
      if (sub_2977FB7B8(v17))
      {
        v9 = 0;
        v10 = 1;
        do
        {
          v11 = *a1;
          v12 = sub_297803A20(v17, v9);
          sub_2978DF71C(v11, v12, 1);
          v9 = v10;
        }

        while (sub_2977FB7B8(v17) > v10++);
      }
    }
  }

  return v5 == 0;
}

_BYTE *sub_2978DF71C(_BYTE *a1, int a2, int a3)
{
  v5 = sub_2978A3BB4(a2);

  return sub_2978DF058(a1, v5, a3);
}

_BYTE *sub_2978DF798(_BYTE *a1, int a2, int a3, int a4, int a5)
{
  *a1 = 0;
  sub_2978DF058(a1, 0, a2);
  sub_2978DF058(a1, 1, a3);
  sub_2978DF058(a1, 2, a4);
  sub_2978DF058(a1, 3, a5);
  return a1;
}

uint64_t sub_2978DF810(uint64_t a1)
{
  sub_297885490(a1 + 64);
  sub_2978DF844(a1 + 8);
  return a1;
}

uint64_t sub_2978DF848(uint64_t a1)
{
  sub_29783D790(a1 + 24);

  return sub_2978853E0(a1);
}

uint64_t sub_2978DF884(uint64_t a1)
{
  v2 = sub_2977FA198();
  sub_297817C28(v2);

  return sub_2978BD8A0(a1, v2, 1);
}

void sub_2978DF8D0(uint64_t *a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 2);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *a1;
        v6 = *(*a1 + v3);
        if (v6)
        {
          if (v6 != sub_2978027E4())
          {
            sub_29782F610(*(v5 + v3));
          }
        }

        *(v5 + v3) = 0;
        v3 += 8;
      }

      while (v4 != v3);
    }

    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
  }
}

uint64_t sub_2978DF958(uint64_t a1, uint64_t a2)
{
  *a1 &= 0xE0u;
  *(a1 + 8) = 0;
  sub_2977FB7B4(a1 + 16, &byte_2978FC3E5);
  sub_2977FB7B4(a1 + 32, &byte_2978FC3E5);
  sub_2978DF9F8(a1 + 48, a2, 4);
  sub_2978DF9FC(a1 + 72, a2, 2);
  sub_2978DF9FC(a1 + 96, a2, 0);
  sub_2978DF9FC(a1 + 120, a2, 0);
  return a1;
}

__int128 **sub_2978DFA00(__int128 **a1, uint64_t a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2978DFA30(a1, a2, a3);
  return a1;
}

void sub_2978DFA30(__int128 **result, uint64_t a2, unsigned int a3)
{
  if (-1431655765 * ((result[2] - *result) >> 3) < a3)
  {
    sub_2978DFA60(result, a2, a3);
  }
}

void sub_2978DFA60(__int128 **a1, uint64_t a2, unint64_t a3)
{
  v5 = (a1[2] - *a1) >> 3;
  v6 = sub_297809AF0(a1);
  if (0x5555555555555556 * v5 > a3)
  {
    a3 = 0x5555555555555556 * v5;
  }

  sub_29784DD58();
  v8 = sub_297828E70(v7, a3);
  sub_297878570(*a1, a1[1], v8);
  nullsub_1();
  *a1 = v8;
  a1[1] = (v8 + 24 * v6);
  a1[2] = &v8[24 * a3 / 0x10];
}

uint64_t **sub_2978DFB04(uint64_t **a1, uint64_t a2, unsigned int a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_2978DFB34(a1, a2, a3);
  return a1;
}

void sub_2978DFB34(uint64_t **result, uint64_t a2, unsigned int a3)
{
  if (((result[2] - *result) >> 3) < a3)
  {
    sub_2978DFB58(result, a2, a3);
  }
}

void sub_2978DFB58(uint64_t **a1, uint64_t a2, unint64_t a3)
{
  v5 = a1[2] - *a1;
  v6 = sub_29780BD00(a1);
  if (v5 >> 2 > a3)
  {
    a3 = v5 >> 2;
  }

  sub_29784DD58();
  v8 = sub_29786FA38(v7, a3);
  sub_2978BF2E4(*a1, a1[1], v8);
  nullsub_1();
  *a1 = v8;
  a1[1] = &v8[v6];
  a1[2] = &v8[a3];
}

uint64_t sub_2978DFC40(uint64_t a1, uint64_t a2)
{
  result = sub_29781BBE0(a1, 16);
  *(result + 24) = a2;
  return result;
}

uint64_t sub_2978DFC6C(uint64_t a1)
{
  if (!sub_29781BCA4(a1))
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      v3 = 0;
      v4 = 8 * v2;
      do
      {
        v5 = *(*a1 + v3);
        if (v5 && v5 != sub_2978027E4())
        {
          sub_29782F610(v5);
        }

        v3 += 8;
      }

      while (v4 != v3);
    }
  }

  free(*a1);
  return a1;
}

uint64_t sub_2978DFCF4(uint64_t a1)
{
  *(a1 + 24) = 0;
  result = sub_2978DFD14(a1);
  *(result + 24) = result;
  return result;
}

void *sub_2978DFD18(void *a1)
{
  result = sub_2978D9418(a1);
  *result = &unk_2A1E58090;
  return result;
}

void sub_2978DFD50()
{
  j_j_nullsub_1_127();

  j__free(v0);
}

uint64_t sub_2978DFD78()
{
  v0 = sub_29788B488();
  sub_29784CE50(v4, &v6);
  sub_29788B48C(v5, v0, v4);
  v1 = sub_2977FB720(v5);
  sub_2978DFD14(v1);
  v2 = sub_2978058AC(v5);
  sub_29788B490(v5);
  return v2;
}

uint64_t sub_2978DFE00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(*v2 + 48);

    return v3();
  }

  else
  {
    v5 = sub_29788CF50();
    return sub_2978DFE48(v5, v6);
  }
}

uint64_t sub_2978DFE54(uint64_t a1, uint64_t a2)
{
  *(a1 + 24) = 0;
  v4 = sub_2978DFED8();
  sub_29784CE50(v7, &v9);
  sub_29788B48C(v8, v4, v7);
  v5 = sub_2977FB720(v8);
  sub_2978DFEDC(v5, a2);
  *(a1 + 24) = sub_2978058AC(v8);
  sub_29788B490(v8);
  return a1;
}

void *sub_2978DFEEC(void *a1, uint64_t a2)
{
  v4 = sub_2978DFF3C(a1);
  *v4 = &unk_2A1E580D8;
  sub_2978DFF5C((v4 + 1), a2);
  return a1;
}

void sub_2978DFF64()
{
  j_j_nullsub_1_128();

  j__free(v0);
}

uint64_t sub_2978DFF8C(uint64_t a1)
{
  v2 = sub_2978DFED8();
  sub_29784CE50(v6, &v8);
  sub_29788B48C(v7, v2, v6);
  v3 = sub_2977FB720(v7);
  sub_2978DFEDC(v3, a1 + 8);
  v4 = sub_2978058AC(v7);
  sub_29788B490(v7);
  return v4;
}

__n128 sub_2978E0028(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2978E0048(void *a1, uint64_t a2)
{
  v15 = a2;
  v4 = sub_2978D65BC(*(*a1 + 368));
  v5 = sub_2978E010C(v4, a2);
  sub_2978E0138(v5);
  v7 = v6;
  v8 = sub_2978D86D0(v5);
  if (v7 != v8)
  {
    v9 = v8;
    do
    {
      v10 = *v7;
      v11 = a1[1];
      sub_2977FD5B0(*v7);
      if (!sub_2978B7944(v11))
      {
        v12 = a1[2];
        v13 = sub_2977FD5B0(v10);
        sub_2978DCCA8(v12, v13);
      }

      ++v7;
    }

    while (v7 != v9);
  }

  return sub_2978040A4(a1[3], &v15);
}

uint64_t sub_2978E0144(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2978E01C4(uint64_t *a1, unint64_t a2)
{
  if (a2 <= (a1[2] - a1[1]) >> 3)
  {

    return sub_2978E0288(a1, a2);
  }

  else
  {
    v4 = sub_29780BD00(a1);
    v5 = sub_29781DCA0(a1, v4 + a2);
    v6 = sub_29780BD00(a1);
    sub_2978E02FC(v8, v5, v6, a1);
    sub_2978E0300(v8, a2);
    sub_29781DD1C(a1, v8);
    return sub_2978E0374(v8);
  }
}

uint64_t sub_2978E0288(uint64_t a1, uint64_t a2)
{
  sub_29780CF3C(v7, a1, a2);
  v3 = v8;
  v4 = v9;
  while (v3 != v4)
  {
    nullsub_1();
    sub_2978E0378(a1, v5);
    v3 += 8;
    v8 = v3;
  }

  return sub_297809E88(v7);
}

uint64_t sub_2978E0300(uint64_t a1, uint64_t a2)
{
  sub_2978E03D4(&v6, a1 + 16, a2);
  for (; v6 != v7; v6 += 8)
  {
    v3 = *(a1 + 32);
    nullsub_1();
    sub_2978E0378(v3, v4);
  }

  return sub_29784F0A0(&v6);
}

uint64_t *sub_2978E0384(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_29780CEB8(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 8 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 8 * a2;
  return a1;
}

void *sub_2978E03D8(void *result, void *a2, uint64_t a3)
{
  v3 = *a2 + 8 * a3;
  *result = *a2;
  result[1] = v3;
  result[2] = a2;
  return result;
}

uint64_t *sub_2978E03EC(uint64_t *a1)
{
  sub_29781DEA8(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29781DEB0(a1);
    sub_29780C704(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978E0440(uint64_t *a1, unint64_t a2)
{
  if (a2 <= (a1[2] - a1[1]) >> 4)
  {

    return sub_2978E0504(a1, a2);
  }

  else
  {
    v4 = sub_29780AAE8(a1);
    v5 = sub_29780C17C(a1, v4 + a2);
    v6 = sub_29780AAE8(a1);
    sub_29780C1F4(v8, v5, v6, a1);
    sub_2978E0578(v8);
    sub_29780C1F8(a1, v8);
    return sub_29780C2DC(v8);
  }
}

uint64_t sub_2978E0504(uint64_t a1, uint64_t a2)
{
  sub_29780C154(v7, a1, a2);
  v3 = v8;
  v4 = v9;
  while (v3 != v4)
  {
    nullsub_1();
    sub_2978E05EC(a1, v5);
    v3 += 16;
    v8 = v3;
  }

  return sub_297809E88(v7);
}

uint64_t sub_2978E0578(uint64_t a1)
{
  sub_29786F99C(&v5, a1 + 16);
  for (; v5 != v6; v5 += 16)
  {
    v2 = *(a1 + 32);
    nullsub_1();
    sub_2978E05EC(v2, v3);
  }

  return sub_29784F0A0(&v5);
}

uint64_t sub_2978E060C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978E064C(a1, a2);
  }

  else
  {
    sub_29781DB94(a1, a2);
    result = v3 + 8;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978E064C(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29780BD00(a1);
  v5 = sub_29781DCA0(a1, v4 + 1);
  v6 = sub_29780BD00(a1);
  sub_2978E02FC(v10, v5, v6, a1);
  nullsub_1();
  sub_29780D0B0(a1, v7, a2);
  v11 += 8;
  sub_29781DD1C(a1, v10);
  v8 = a1[1];
  sub_2978E0374(v10);
  return v8;
}

uint64_t sub_2978E06F0(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v6 = a6;
  v8 = a2;
  v14 = a2;
  v12 = a3;
  v13 = a4;
  if (sub_297806914(&v12))
  {
    return 1;
  }

  sub_297842FAC(&v11);
  if (a5)
  {
    if (sub_2978E08A8(a1, v8, &v11, &v14))
    {
      v8 = v14;
LABEL_6:
      sub_2978E09FC(a1, v8, v11, v12, v13, v6);
      return 1;
    }
  }

  else if (sub_2978E07A0(a1, v8, &v11))
  {
    goto LABEL_6;
  }

  result = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t sub_2978E07A0(uint64_t *a1, unsigned int a2, uint64_t *a3)
{
  v10 = a2;
  if (sub_297829730(&v10))
  {
    return 0;
  }

  if (sub_29783C26C(&v10))
  {
    sub_2978E1138(a1, v10, &v10);
  }

  v5 = *a1;
  if (sub_29784106C(*a1, v10))
  {
    do
    {
      v10 = sub_2978410C8(v5, v10);
    }

    while ((sub_29784106C(v5, v10) & 1) != 0);
  }

  if (!sub_29783C26C(&v10) || (result = sub_2978E1138(a1, v10, &v10), result))
  {
    if (!sub_29782CF70(v5, v10))
    {
      v9 = sub_29783E664(v5, v10);
      if (!sub_297829730(&v9))
      {
        sub_2978E114C(&v8, v9, SHIDWORD(v9));
        v7 = v8;
        *a3 = v8;
        return sub_2978E1154(a1, v10, v7);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978E08A8(uint64_t *a1, unsigned int a2, uint64_t *a3, _DWORD *a4)
{
  v14 = a2;
  if (sub_297829730(&v14))
  {
    return 0;
  }

  v7 = sub_29783E4D0(*a1, v14);
  v8 = sub_29784FF88(v7, *a1, a1[1]);
  *a4 = sub_297840FC8(&v14, v8);
  if (sub_29783C26C(&v14))
  {
    sub_2978E124C(a1, v14, &v14);
  }

  v9 = *a1;
  if (sub_29784106C(*a1, v14))
  {
    do
    {
      v14 = sub_2978410C8(v9, v14);
    }

    while ((sub_29784106C(v9, v14) & 1) != 0);
  }

  if (!sub_29783C26C(&v14) || (result = sub_2978E124C(a1, v14, &v14), result))
  {
    if (!sub_29782CF70(v9, v14))
    {
      v14 = sub_297850610(v14, 0, *a1, a1[1]);
      if (!sub_297829730(&v14))
      {
        v13 = sub_29783E664(v9, v14);
        if (!sub_297829730(&v13))
        {
          sub_2978E114C(&v12, v13, SHIDWORD(v13));
          v11 = v12;
          *a3 = v12;
          return sub_2978E1154(a1, v14, v11);
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2978E09FC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v17 = a4;
  v18 = a5;
  result = sub_297806914(&v17);
  if ((result & 1) == 0)
  {
    sub_2978E1030(&v12);
    LODWORD(v12) = 0;
    v14 = a2;
    v15 = a3;
    *(&v12 + 1) = sub_2978E1034(a1, v17, v18);
    v13 = v11;
    v16 = a6;
    return sub_2978E10B8(a1 + 40, &v12);
  }

  return result;
}

uint64_t sub_2978E0A7C(uint64_t a1, int a2, uint64_t a3, unsigned int a4, char a5, uint64_t a6)
{
  v6 = a6;
  v10 = a2;
  v19 = a4;
  v20 = a2;
  v18 = a3;
  sub_297842FAC(&v17);
  v16 = 0;
  if ((sub_2978E0B88(a1, a3, a4, &v17, &v16) & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_297842FAC(&v15);
  if ((a5 & 1) == 0)
  {
    if (sub_2978E07A0(a1, v10, &v15))
    {
      goto LABEL_6;
    }

LABEL_8:
    result = 0;
    *(a1 + 32) = 0;
    return result;
  }

  if (!sub_2978E08A8(a1, v10, &v15, &v20))
  {
    goto LABEL_8;
  }

  v10 = v20;
LABEL_6:
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = sub_297850AD4(&v18);
    if (sub_2978E0CF0(v12, v10, v13))
    {
      goto LABEL_8;
    }
  }

  sub_2978E0D44(a1, v10, v15, v17, v16, v6);
  return 1;
}

uint64_t sub_2978E0B88(uint64_t *a1, uint64_t a2, unsigned int a3, void *a4, _DWORD *a5)
{
  v21 = a3;
  v8 = *a1;
  v20 = sub_297850804(a2, a3, *a1, a1[1]);
  LOBYTE(v21) = v9;
  if (sub_297850D28(&v20))
  {
    return 0;
  }

  LODWORD(v19) = sub_297850AD4(&v20);
  if (sub_29783C26C(&v19))
  {
    return 0;
  }

  LODWORD(v18) = sub_2978478EC(&v20);
  if (sub_29783C26C(&v18))
  {
    return 0;
  }

  v10 = sub_297850AD4(&v20);
  if (sub_29782CF70(v8, v10))
  {
    return 0;
  }

  v11 = sub_2978478EC(&v20);
  if (sub_29782CF70(v8, v11))
  {
    return 0;
  }

  v12 = a1[2];
  if (v12)
  {
    nullsub_1();
    if (sub_297868A24(v12, *v13))
    {
      return 0;
    }
  }

  v14 = sub_297850AD4(&v20);
  v19 = sub_29783E664(v8, v14);
  v15 = sub_2978478EC(&v20);
  v18 = sub_29783E664(v8, v15);
  if (sub_2978435D4(&v19, &v18) || HIDWORD(v19) > HIDWORD(v18))
  {
    return 0;
  }

  sub_2978E114C(&v17, v19, SHIDWORD(v19));
  *a4 = v17;
  *a5 = HIDWORD(v18) - HIDWORD(v19);
  return 1;
}

BOOL sub_2978E0CF0(uint64_t a1, int a2, int a3)
{
  v7 = sub_297868C08(a1, a2);
  v6 = sub_297868C08(a1, a3);
  return sub_297853F10(&v7, &v6);
}

uint64_t sub_2978E0D44(uint64_t result, int a2, uint64_t a3, uint64_t a4, int a5, char a6)
{
  if (a5)
  {
    v11 = result;
    sub_2978E1030(&v12);
    LODWORD(v12) = 1;
    v13 = a2;
    v14 = a3;
    v15 = a4;
    v16 = a5;
    v17 = a6;
    return sub_2978E10B8(v11 + 40, &v12);
  }

  return result;
}

uint64_t sub_2978E0DC8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v11 = a2;
  v12 = a3;
  sub_297842FAC(&v10);
  v9 = 0;
  v6 = sub_2978E0B88(a1, a2, a3, &v10, &v9);
  if (v6)
  {
    v7 = sub_297850AD4(&v11);
    sub_2978E0E5C(a1, v7, v10, v9);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  return v6;
}

uint64_t sub_2978E0E5C(uint64_t result, int a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v7 = result;
    sub_2978E1030(&v8);
    LODWORD(v8) = 2;
    v9 = a2;
    v10 = a3;
    v11 = a4;
    return sub_2978E10B8(v7 + 40, &v8);
  }

  return result;
}

uint64_t sub_2978E0EC8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v15 = a5;
  v16 = a2;
  v17 = a3;
  v14 = a4;
  if (sub_297806914(&v14))
  {
    return sub_2978E0DC8(a1, a2, a3);
  }

  sub_297842FAC(&v13);
  v12 = 0;
  v9 = sub_297850AD4(&v16);
  if (sub_2978E07A0(a1, v9, &v13) && (sub_2978E0B88(a1, v16, v17, &v13, &v12) & 1) != 0)
  {
    v10 = sub_297850AD4(&v16);
    sub_2978E0E5C(a1, v10, v13, v12);
    v11 = sub_297850AD4(&v16);
    sub_2978E09FC(a1, v11, v13, v14, v15, 0);
    return 1;
  }

  else
  {
    result = 0;
    *(a1 + 32) = 0;
  }

  return result;
}

uint64_t sub_2978E0FCC(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v8 = a1;
  v6[0] = sub_297842D18(&v8, &v8 + 4);
  v6[1] = v2;
  v5[0] = sub_297842D18(&v7, &v7 + 4);
  v5[1] = v3;
  return sub_2978E128C(v6, v5);
}

uint64_t sub_2978E1034(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = sub_2977FB7B8(v10);
  v5 = sub_29781B6D0(a1 + 512, v4);
  v6 = sub_2977FB720(v10);
  v7 = sub_2977FB7B8(v10);
  memcpy(v5, v6, v7);
  v8 = sub_2977FB7B8(v10);
  sub_2977FB7C0(&v11, v5, v8);
  return v11;
}

uint64_t sub_2978E10B8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 8) >= *(a1 + 16))
  {
    sub_2978E142C(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  v6 = a2[1];
  v5 = a2[2];
  v7 = *a2;
  *(v4 + 48) = *(a2 + 6);
  *(v4 + 16) = v6;
  *(v4 + 32) = v5;
  *v4 = v7;
  v8 = sub_2977FB7B8(a1) + 56;

  return sub_2977FD5DC(a1, v8);
}

BOOL sub_2978E1154(uint64_t a1, int a2, uint64_t a3)
{
  v15 = a3;
  v5 = sub_29782B950(a1 + 40);
  if (v5)
  {
    v6 = 0;
    while (1)
    {
      v7 = sub_2978E1260(a1 + 40, v6);
      if (*v7 == 2)
      {
        v8 = v7;
        v14 = sub_2977FB5F0(v7 + 7);
        v13 = sub_2977FB5F0(&v15);
        if (sub_29782B07C(&v14, &v13))
        {
          if (sub_2978E1020(v15, *(v8 + 7)))
          {
            v9 = v15;
            v10 = sub_2978E0FBC(v8 + 7, v8[11]);
            if (sub_2978E0FCC(v9, v10))
            {
              return 0;
            }
          }
        }
      }

      if (v5 == ++v6)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v11 = *(a1 + 24);
    return !v11 || sub_2978E15A4(v11, a2, v15);
  }
}

uint64_t sub_2978E12B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_297803A7C(a2);
  v6 = sub_297803A7C(a3);
  if (sub_297843764(v5, v6))
  {
    return 1;
  }

  v8 = sub_297803A7C(a3);
  v9 = sub_297803A7C(a2);
  if (sub_297843764(v8, v9))
  {
    return 0;
  }

  else
  {
    return sub_2978E1354(&v10, a2, a3);
  }
}

uint64_t sub_2978E1354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *sub_29782FD1C(a2);
  if (v5 < *sub_29782FD1C(a3))
  {
    return 1;
  }

  v7 = *sub_29782FD1C(a3);
  if (v7 >= *sub_29782FD1C(a2))
  {
    return sub_2977FD678();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978E13E8(uint64_t a1)
{
  sub_297804560(a1 + 8);
  sub_297829180((a1 + 24));
  sub_297842FAC(a1 + 28);
  sub_297842FAC(a1 + 36);
  return a1;
}

uint64_t sub_2978E14B0(uint64_t a1, uint64_t *a2)
{
  sub_297806EC8(v8);
  v4 = sub_297812A04(a2, v8);
  v6 = sub_2978E1520(a1, v4, v5);
  sub_297801F60(v8);
  return v6;
}

uint64_t sub_2978E1520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = sub_2977FB7B8(v10);
  v5 = sub_29781B6D0(a1 + 72, v4);
  v6 = sub_2977FB720(v10);
  v7 = sub_2977FB7B8(v10);
  memcpy(v5, v6, v7);
  v8 = sub_2977FB7B8(v10);
  sub_2977FB7C0(&v11, v5, v8);
  return v11;
}

BOOL sub_2978E15A4(uint64_t *a1, int a2, uint64_t a3)
{
  v16 = sub_2978E16BC(a1, a3);
  v13[0] = sub_29781668C();
  result = 0;
  if (!sub_297816688(&v16, v13) || (sub_29781665C(&v16), (sub_2978E1778(*v6, a3) & 1) == 0))
  {
    if (!sub_29784106C(*a1, a2))
    {
      return 1;
    }

    v15 = sub_297841140(*a1, a2);
    v8 = *a1;
    v7 = a1 + 6;
    v14 = sub_297841140(v8, v15);
    v12[0] = sub_2977FB5F0(&v14);
    sub_2978E1794(v7, v12, v13);
    sub_2978E1808(v7, v11);
    sub_2978BAD50(v12, v11);
    if (!sub_29782EE3C(v13, v12))
    {
      return 1;
    }

    v9 = sub_2977FB720(v13);
    if (!sub_297853F10((v9 + 4), &v15))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_2978E16BC(uint64_t a1, uint64_t a2)
{
  v9 = a2;
  v8 = sub_2978E1CDC(a1 + 24, &v9);
  v7 = sub_2978E1D0C();
  if (!sub_297818FA8(&v8, &v7) && (sub_2978E1D3C(&v8), sub_29781665C(&v8), v3 = v2, sub_29781665C(&v8), v7 = *v4, v5 = sub_2978E0FBC(&v7, *(v3 + 24)), sub_2978E2218(v9, v7)) && sub_2978E0FCC(v9, v5))
  {
    return v8;
  }

  else
  {
    return sub_29781668C();
  }
}

void *sub_2978E1794@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  v8 = 0;
  if (!sub_2978E293C(a1, a2, &v8))
  {
    return sub_2978E1808(a1, a3);
  }

  v5 = v8;
  v6 = sub_29782AF60(a1);
  return sub_29782D9C0(a3, v5, v6, 1);
}

uint64_t sub_2978E1808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_29782AF60(a1);
  v5 = sub_29782AF60(a1);

  return sub_29782D9C0(a2, v4, v5, 1);
}

BOOL sub_2978E1864(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a3;
  v15 = a4;
  v16 = a5;
  v7 = sub_2978E15A4(a1, a2, a3);
  if (v7 && !sub_297806914(&v15))
  {
    if (sub_29784106C(*a1, a2))
    {
      v8 = sub_297841140(*a1, a2);
      LODWORD(v14[0]) = sub_297841140(*a1, v8);
      v13[0] = sub_2977FB5F0(v14);
      *sub_2978E1994((a1 + 6), v13) = v8;
    }

    v9 = sub_2978E19B0((a1 + 3), &v17);
    if (sub_297806914(v9))
    {
      v10 = sub_2978E1520(a1, v15, v16);
    }

    else
    {
      sub_2978036E8();
      sub_2978036E8();
      sub_297807128();
      v10 = sub_2978E14B0(a1, v14);
    }

    *v9 = v10;
    v9[1] = v11;
  }

  return v7;
}

uint64_t sub_2978E19B0(uint64_t a1, uint64_t *a2)
{
  v8 = sub_297819C3C(a2);
  nullsub_1();
  v9 = sub_2978E2D58(a1, a2, &unk_2978FC3B0, &v8, &v7);
  v10 = v4;
  sub_297819804(&v9);
  nullsub_1();
  return v5 + 8;
}

BOOL sub_2978E1A20(uint64_t *a1, int a2, uint64_t a3, unint64_t a4, int a5)
{
  if (a5)
  {
    sub_297806EC8(v32);
    v31 = a4;
    v10 = sub_2978E0FBC(&v31, a5);
    v30 = sub_2978E1CDC((a1 + 3), &v31);
    v29 = sub_2978E1D0C();
    if (sub_297816688(&v30, &v29))
    {
      sub_2978E1D3C(&v30);
    }

    v29 = sub_29781668C();
    if (sub_297816688(&v30, &v29))
    {
      do
      {
        sub_29781665C(&v30);
        v12 = v11;
        sub_29781665C(&v30);
        v29 = *v13;
        v14 = sub_2978E0FBC(&v29, *(v12 + 24));
        if (sub_2978E1D64(v31, v29))
        {
          break;
        }

        if (sub_2978E0FCC(v31, v14))
        {
          if (sub_2978E1020(v31, v29))
          {
            v31 = v14;
            sub_2978E1DA0(&v30);
          }

          break;
        }

        sub_2978E1DA0(&v30);
        v29 = sub_29781668C();
      }

      while ((sub_297816688(&v30, &v29) & 1) != 0);
    }

    v29 = sub_29781668C();
    if (sub_297816688(&v30, &v29))
    {
      do
      {
        sub_29781665C(&v30);
        if (!sub_2978E1020(v10, *v16))
        {
          break;
        }

        sub_29781665C(&v30);
        v18 = v17;
        sub_29781665C(&v30);
        v29 = *v19;
        v20 = sub_2978E0FBC(&v29, *(v18 + 24));
        if (sub_2978E0FCC(v31, v29))
        {
          v28 = 0;
          v21 = sub_2978E1DC8(a1, v31, v29, &v28);
          if (v28)
          {
            goto LABEL_20;
          }

          sub_297811C58(v32, v21, v22);
        }

        sub_297811C58(v32, *(v18 + 8), *(v18 + 16));
        v31 = v20;
        sub_2978E1DA0(&v30);
        v29 = sub_29781668C();
      }

      while ((sub_297816688(&v30, &v29) & 1) != 0);
    }

    if (sub_2978E0FCC(v31, v10))
    {
      LOBYTE(v29) = 0;
      v23 = sub_2978E1DC8(a1, v31, v10, &v29);
      if (v29)
      {
LABEL_20:
        v15 = 0;
LABEL_23:
        sub_297801F60(v32);
        return v15;
      }

      sub_297811C58(v32, v23, v24);
    }

    v25 = sub_297801F10(v32);
    v15 = sub_2978E1864(a1, a2, a3, v25, v26);
    goto LABEL_23;
  }

  return 1;
}

uint64_t sub_2978E1CDC(uint64_t a1, uint64_t *a2)
{
  sub_2978E30B4(a1, a2);
  sub_2977FDEF4();
  return v3;
}

uint64_t sub_2978E1D0C()
{
  sub_2978E3194();
  sub_2977FDEF4();
  return v1;
}

uint64_t sub_2978E1D64(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  LODWORD(result) = sub_29782B07C(&v4, &v3);
  if (HIDWORD(v4) == HIDWORD(v3))
  {
    return result;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2978E1DC8(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v15 = a3;
  v16 = a2;
  v6 = *a1;
  v7 = sub_2977FB5F0(&v16);
  v14 = sub_2978423A8(v6, v7);
  v8 = sub_297847BE0(&v16);
  v14 = sub_297840FC8(&v14, v8);
  LODWORD(v6) = sub_297847BE0(&v15);
  v9 = sub_297847BE0(&v16);
  v10 = sub_297840FC8(&v14, v6 - v9);
  v11 = sub_2978562D8(v14, v10);
  return sub_297850C24(v11, v12, *a1, a1[1], a4);
}

void sub_2978E1E74(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v36 = a3;
  if (a4)
  {
    v6 = sub_2978E0FBC(&v36, a4);
    v35 = v6;
    v34 = sub_2978E1CDC(a1 + 24, &v36);
    v29[0] = sub_2978E1D0C();
    if (sub_297816688(&v34, v29))
    {
      sub_2978E1D3C(&v34);
    }

    v29[0] = sub_29781668C();
    if (sub_297816688(&v34, v29))
    {
      do
      {
        sub_29781665C(&v34);
        v8 = v7;
        sub_29781665C(&v34);
        v29[0] = *v9;
        v10 = sub_2978E0FBC(v29, *(v8 + 24));
        if (sub_2978E0FCC(v36, v10))
        {
          break;
        }

        sub_2978E1DA0(&v34);
        v29[0] = sub_29781668C();
      }

      while ((sub_297816688(&v34, v29) & 1) != 0);
    }

    sub_297842FAC(&v33);
    sub_297842FAC(&v32);
    v29[0] = sub_29781668C();
    if (sub_297818FA8(&v34, v29))
    {
      sub_29781A304();
      sub_2978E2214(v28);
      sub_2978E2204(&v36, v28, v29);
      v31 = sub_2978E21D4();
      sub_29781665C(&v31);
      *(v11 + 24) = a4;
      return;
    }

    sub_29781665C(&v34);
    v13 = v12;
    sub_29781665C(&v34);
    v31 = *v14;
    v15 = sub_2978E0FBC(&v31, *(v13 + 24));
    if (sub_2978E0FCC(v36, v31))
    {
      sub_29781A304();
      sub_2978E2214(v28);
      sub_2978E2204(&v36, v28, v29);
      v30 = sub_2978E21D4();
      v32 = v6;
      v33 = v36;
      sub_29781665C(&v30);
      v17 = v16;
      *(v16 + 24) = a4;
    }

    else
    {
      v32 = v15;
      v33 = v31;
      sub_29781665C(&v34);
      v17 = v18;
      if (sub_2978E2218(v32, v6))
      {
        return;
      }

      v19 = sub_297847BE0(&v35);
      v20 = sub_297847BE0(&v32);
      v21 = v36;
      v32 = v35;
      *(v17 + 24) += v19 - v20;
      if (sub_2978E1D64(v31, v21))
      {
        sub_297804560(v29);
        *(v17 + 8) = *v29;
      }

      sub_2978E1DA0(&v34);
    }

    v29[0] = sub_29781668C();
    if (sub_297816688(&v34, v29))
    {
      do
      {
        sub_29781665C(&v34);
        v23 = v22;
        sub_29781665C(&v34);
        v29[0] = *v24;
        v25 = sub_2978E0FBC(v29, *(v23 + 24));
        v28[0] = v25;
        if (sub_2978E2218(v29[0], v32))
        {
          break;
        }

        if ((sub_2978E2234(v25, v32) & 1) == 0)
        {
          if (sub_2978E0FCC(v29[0], v32))
          {
            v26 = sub_297847BE0(v28);
            v27 = sub_297847BE0(&v32);
            v32 = v28[0];
            *(v17 + 24) += v26 - v27;
            sub_2978E225C(a1 + 24);
          }

          return;
        }

        sub_2978E22A8(&v34);
        sub_2978E225C(a1 + 24);
        v29[0] = sub_29781668C();
      }

      while ((sub_297816688(&v34, v29) & 1) != 0);
    }
  }
}

uint64_t sub_2978E21D4()
{
  sub_2978E3244();
  sub_2977FDEF4();
  return v1;
}

uint64_t sub_2978E225C(uint64_t a1)
{
  sub_2977FDEF4();
  sub_2978E3678(a1, v3);
  sub_2977FDEF4();
  return v4;
}

uint64_t sub_2978E22A8(uint64_t *a1)
{
  v1 = *a1;
  sub_2978E1DA0(a1);
  return v1;
}

uint64_t sub_2978E22D0(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978E23A0(a2);
  if (v4)
  {
    v5 = sub_2978E23A8(a2);
    v6 = sub_2978E23B0(a2);
    if (v5 != v6)
    {
      v8 = v6;
      do
      {
        v9 = *v5;
        if (*v5 == 2)
        {
          sub_2978E1E74(a1, v7, *(v5 + 28), *(v5 + 44));
        }

        else if (v9 == 1)
        {
          sub_2978E1A20(a1, *(v5 + 24), *(v5 + 28), *(v5 + 36), *(v5 + 44));
        }

        else if (!v9)
        {
          sub_2978E1864(a1, *(v5 + 24), *(v5 + 28), *(v5 + 8), *(v5 + 16));
        }

        v5 += 56;
      }

      while (v5 != v8);
    }
  }

  return v4;
}

uint64_t sub_2978E23B8(void *a1, uint64_t *a2)
{
  sub_297806EC8(v23);
  sub_297842FAC(&v22);
  sub_297842FAC(&v21);
  if (!sub_2978C108C((a1 + 3)))
  {
    v20 = sub_2978E1D0C();
    sub_29781665C(&v20);
    v22 = *v4;
    sub_29781665C(&v20);
    sub_29784B428(v23, *(v5 + 8), *(v5 + 16));
    sub_29781665C(&v20);
    v7 = *(v6 + 24);
    v21 = sub_2978E0FBC(&v22, v7);
    sub_2978E1DA0(&v20);
    v19 = sub_29781668C();
    if (sub_297816688(&v20, &v19))
    {
      do
      {
        sub_29781665C(&v20);
        v9 = *v8;
        sub_29781665C(&v20);
        v11 = *(v10 + 8);
        v12 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (sub_2978E1D64(v9, v21))
        {
          sub_297811C58(v23, v11, v12);
          sub_2978E0FBC(&v21, v13);
          v13 += v7;
        }

        else
        {
          v14 = sub_297801F10(v23);
          sub_2978E258C(a2, v14, v15, v22, v7, *a1, a1[1]);
          v22 = v9;
          sub_29784B428(v23, v11, v12);
          v21 = sub_2978E0FBC(&v22, v13);
        }

        sub_2978E1DA0(&v20);
        v7 = v13;
      }

      while ((sub_297816688(&v20, &v19) & 1) != 0);
    }

    else
    {
      v13 = v7;
    }

    v16 = sub_297801F10(v23);
    sub_2978E258C(a2, v16, v17, v22, v13, *a1, a1[1]);
  }

  return sub_297801F60(v23);
}

uint64_t sub_2978E258C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _DWORD *a6, void *a7)
{
  v9 = a5;
  *&v23 = a2;
  *(&v23 + 1) = a3;
  v22 = a4;
  v21 = a5;
  v11 = sub_2977FB5F0(&v22);
  v20 = sub_2978423A8(a6, v11);
  v12 = sub_297847BE0(&v22);
  v20 = sub_297840FC8(&v20, v12);
  if (sub_297806914(&v23))
  {
    sub_2978E271C(a6, a7, v20, v22, &v21, &v23);
    v9 = v21;
  }

  v13 = v20;
  v14 = sub_297840FC8(&v20, v9);
  v15 = sub_2978562D8(v13, v14);
  v17 = v16;
  if (sub_297806914(&v23))
  {
    return (*(*a1 + 32))(a1, v15, v17);
  }

  v19 = *a1;
  if (v9)
  {
    return (*(v19 + 24))(a1, v15, v17, v23, *(&v23 + 1));
  }

  else
  {
    return (*(v19 + 16))(a1, v20, v23, *(&v23 + 1));
  }
}

uint64_t sub_2978E2700(uint64_t a1)
{
  result = sub_297804560(a1);
  *(result + 16) = 0;
  return result;
}

double sub_2978E271C(_DWORD *a1, void *a2, unsigned int a3, uint64_t a4, _DWORD *a5, _OWORD *a6)
{
  v26 = a3;
  *v25 = a4;
  v24 = sub_29785014C(a3, a1, a2);
  if (!sub_297853F10(&v24, &v26))
  {
    v23 = 0;
    v11 = sub_2977FB5F0(v25);
    v22[0] = sub_297840A24(a1, v11, &v23);
    v22[1] = v12;
    if ((v23 & 1) == 0)
    {
      v13 = sub_297847BE0(v25);
      v14 = (*a5 + v13);
      v15 = sub_297803A20(v22, v14);
      v16 = v15;
      if (!v13)
      {
        if (v15 != 32)
        {
          return result;
        }

        goto LABEL_8;
      }

      v17 = sub_297803A20(v22, (v13 - 1));
      if (v16 == 32)
      {
        v18 = sub_297803A20(v22, (v14 - 1));
        v19 = sub_297803A20(v22, (v14 + 1));
        if (!sub_2978E287C(v17, v18, v19, a2))
        {
          return result;
        }

LABEL_8:
        ++*a5;
        return result;
      }

      v20 = sub_297803A20(v22, v14);
      if ((sub_2978E28F4(v17, v20, a2) & 1) == 0)
      {
        sub_2977FB7B4(&v21, " ");
        result = *&v21;
        *a6 = v21;
      }
    }
  }

  return result;
}

uint64_t sub_2978E287C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = a1;
  result = sub_2978E28F4(a1, a3, a4);
  if (result)
  {
    if (sub_297850134(v7) || sub_297850134(v5))
    {
      return 1;
    }

    else
    {
      return sub_2978E28F4(v6, v5, a4) ^ 1;
    }
  }

  return result;
}

uint64_t sub_2978E28F4(unsigned __int8 a1, unsigned __int8 a2, void *a3)
{
  if (sub_297850D44(a1, a3))
  {
    return sub_297850D44(a2, a3) ^ 1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2978E293C(uint64_t a1, _DWORD *a2, void *a3)
{
  v5 = 0;
  result = sub_2978E2978(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t sub_2978E2978(uint64_t a1, _DWORD *a2, void *a3)
{
  v6 = sub_297803A7C(a1);
  result = sub_29782AFAC(a1);
  if (result)
  {
    v8 = result;
    v15 = sub_29782AF5C(result);
    v14 = sub_2978E2A8C();
    v9 = v8 - 1;
    v10 = sub_2978E2A90(a2) & (v8 - 1);
    v11 = (v6 + 8 * v10);
    if (sub_29782B07C(a2, v11))
    {
LABEL_8:
      result = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      while (!sub_29782B07C(v11, &v15))
      {
        if (sub_29782B07C(v11, &v14) && v12 == 0)
        {
          v12 = v11;
        }

        v10 = (v10 + v13) & v9;
        v11 = (v6 + 8 * v10);
        ++v13;
        if (sub_29782B07C(a2, v11))
        {
          goto LABEL_8;
        }
      }

      result = 0;
      if (v12)
      {
        v11 = v12;
      }
    }

    *a3 = v11;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

_DWORD *sub_2978E2A94(uint64_t a1, _DWORD *a2)
{
  v6 = 0;
  if (sub_2978E293C(a1, a2, &v6))
  {
    return v6;
  }

  sub_297829180(&v5);
  return sub_2978E2AF4(a1, a2, &v5, v6);
}

_DWORD *sub_2978E2AF4(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4)
{
  result = sub_2978E2B30(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

_DWORD *sub_2978E2B30(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v11 = a3;
  v5 = sub_29782B4CC(a1);
  v6 = sub_29782AFAC(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978E2C1C(a1, (2 * v6));
    sub_2978E293C(a1, a2, &v11);
    sub_29782AFAC(a1);
  }

  else if (v6 + ~v5 - sub_29782B4D4(a1) <= v6 >> 3)
  {
    sub_2978E2C1C(a1, v7);
    sub_2978E293C(a1, a2, &v11);
  }

  v8 = sub_29782B4D8(a1);
  v10 = sub_29782AF5C(v8);
  if (!sub_29782B07C(v11, &v10))
  {
    sub_29782B514(a1);
  }

  return v11;
}

void sub_2978E2C20(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v7 = 64;
  v6 = sub_2977FB4FC((a2 - 1));
  v5 = sub_2977FF288(&v7, &v6);
  sub_29782AE0C(a1, *v5);
  if (v4)
  {
    sub_2978E2CAC(a1, v4, &v4[2 * v3]);
    j__free(v4);
  }

  else
  {
    sub_29782AE58(a1);
  }
}

uint64_t sub_2978E2CAC(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v6 = sub_29782AE58(a1);
  v11 = sub_29782AF5C(v6);
  result = sub_2978E2A8C();
  v10 = result;
  while (a2 != a3)
  {
    result = sub_29782B07C(a2, &v11);
    if ((result & 1) == 0)
    {
      result = sub_29782B07C(a2, &v10);
      if ((result & 1) == 0)
      {
        v9 = 0;
        sub_2978E293C(a1, a2, &v9);
        v8 = v9;
        *v9 = *a2;
        v8[1] = a2[1];
        result = sub_29782B4D8(a1);
      }
    }

    a2 += 2;
  }

  return result;
}

uint64_t sub_2978E2D58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2978E2E2C(a1, &v17, a2);
  v10 = *v9;
  v16 = 0;
  if (!v10)
  {
    v11 = v9;
    sub_2978E2EE8(a3, a4, a5, v15);
    v12 = v17;
    v13 = sub_2977FB720(v15);
    sub_297819DD8(a1, v12, v11, v13);
    sub_2978058AC(v15);
    v16 = 1;
    sub_297819E64(v15);
  }

  sub_2977FDEF4();
  sub_29780EB70(&v18, v15, &v16);
  return v18;
}

void *sub_2978E2E2C(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_297818B70();
  sub_297819E68();
  if (v5)
  {
    v7 = v6;
    do
    {
      while (1)
      {
        v8 = v5;
        nullsub_1();
        if (!sub_2978E2F9C(v9, a3))
        {
          break;
        }

        v5 = *v5;
        v7 = v8;
        if (!*v8)
        {
          goto LABEL_10;
        }
      }

      nullsub_1();
      if (!sub_2978E2FE4(v10, (v5 + 4), a3))
      {
        break;
      }

      v7 = v5 + 1;
      v5 = v5[1];
    }

    while (v5);
  }

  else
  {
    sub_297818B94();
    v8 = v11;
    v7 = v11;
  }

LABEL_10:
  *a2 = v8;
  return v7;
}

uint64_t sub_2978E2EE8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  nullsub_1();
  v9 = v8;
  v10 = sub_297819E6C();
  sub_297819E70(v14, v9, 0);
  v11 = sub_297819E74(a4, v10, v14);
  sub_2977FB720(v11);
  j_nullsub_1();
  sub_2978E3038(v9, v12, a1, a2, a3);
  result = sub_297819E7C(a4);
  *(result + 8) = 1;
  return result;
}

uint64_t sub_2978E2F9C(uint64_t a1, uint64_t *a2)
{
  nullsub_1();

  return sub_2978E302C(a1, a2, v4);
}

uint64_t sub_2978E2FE4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  nullsub_1();

  return sub_2978E302C(a1, v5, a3);
}

void *sub_2978E3078(void *a1, uint64_t a2)
{
  *a1 = *sub_297803A7C(a2);
  sub_2978E2214((a1 + 1));
  return a1;
}

uint64_t sub_2978E30B4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_297818B70();
  sub_297818B94();

  return sub_2978E3110(a1, a2, v4);
}

uint64_t sub_2978E3110(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = a3;
    do
    {
      nullsub_1();
      if (sub_2978E2F9C(v5, a2))
      {
        v7 = 0;
      }

      else
      {
        v7 = 8;
      }

      v3 = *(v3 + v7);
    }

    while (v3);
  }

  sub_2977FDEF4();
  return v9;
}

uint64_t sub_2978E3194()
{
  nullsub_1();
  sub_2977FDEF4();
  return v1;
}

__n128 sub_2978E3228(uint64_t a1, void *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  *(a1 + 24) = a3[1].n128_u64[0];
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2978E3254(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v6 = sub_2978E3314(a1, a2, &v15, &v14, a3);
  v7 = *v6;
  v13 = 0;
  if (!v7)
  {
    v8 = v6;
    sub_2978E34E8(a4, v12);
    v9 = v15;
    v10 = sub_2977FB720(v12);
    sub_297819DD8(a1, v9, v8, v10);
    sub_2978058AC(v12);
    v13 = 1;
    sub_297819E64(v12);
  }

  sub_2977FDEF4();
  sub_29780EB70(&v16, v12, &v13);
  return v16;
}

void *sub_2978E3314(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t *a5)
{
  v26 = a2;
  sub_297819670();
  sub_2977FDEF4();
  if (!sub_297815520(&v26, &v25))
  {
    nullsub_1();
    v10 = v9;
    sub_2978196E8(&v26);
    if ((sub_2978E2F9C(v10, a5) & 1) == 0)
    {
      nullsub_1();
      v17 = v16;
      v18 = sub_2978196E8(&v26);
      if (!sub_2978E2FE4(v17, v18, a5))
      {
        v22 = v26;
        *a3 = v26;
        *a4 = v22;
        return a4;
      }

      sub_2978E3584(v26);
      v25 = v19;
      sub_297819670();
      sub_2977FDEF4();
      if (sub_297815520(&v25, &v24) || (nullsub_1(), v21 = v20, sub_2978196E8(&v25), (sub_2978E2F9C(v21, a5) & 1) != 0))
      {
        if (!*(sub_2977FB720(&v26) + 8))
        {
          v15 = v26;
          goto LABEL_7;
        }

        a4 = v25;
LABEL_13:
        *a3 = a4;
        return a4;
      }

      return sub_2978E2E2C(a1, a3, a5);
    }
  }

  v25 = v26;
  sub_2978E3194();
  sub_2977FDEF4();
  if (!sub_297815520(&v25, &v24))
  {
    nullsub_1();
    v12 = v11;
    v13 = sub_2978E31C4(&v25);
    v14 = sub_2978196E8(v13);
    if ((sub_2978E2FE4(v12, v14, a5) & 1) == 0)
    {
      return sub_2978E2E2C(a1, a3, a5);
    }
  }

  a4 = v26;
  if (!*v26)
  {
    goto LABEL_13;
  }

  v15 = v25;
LABEL_7:
  *a3 = v15;
  return v15 + 1;
}

uint64_t sub_2978E34E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  nullsub_1();
  v5 = v4;
  v6 = sub_297819E6C();
  sub_297819E70(v10, v5, 0);
  v7 = sub_297819E74(a2, v6, v10);
  sub_2977FB720(v7);
  j_nullsub_1();
  sub_2978E3648(v5, v8, a1);
  result = sub_297819E7C(a2);
  *(result + 8) = 1;
  return result;
}

uint64_t *sub_2978E35B0(uint64_t *a1)
{
  nullsub_1();

  return sub_2978E35F0(a1, v2);
}

uint64_t *sub_2978E35F0(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (a2 < 0)
  {
    do
    {
      result = sub_2978E31C4(v3);
    }

    while (!__CFADD__(v2++, 1));
  }

  else if (a2)
  {
    v4 = a2 + 1;
    do
    {
      result = sub_2978E31F4(v3);
      --v4;
    }

    while (v4 > 1);
  }

  return result;
}

__n128 sub_2978E365C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2978E3678(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = sub_2977FB720(&v8);
  v4 = sub_2978E3700(a1, v3);
  nullsub_1();
  v6 = v5;
  sub_2978196E8(&v8);
  j_nullsub_1();
  sub_297818B8C();
  sub_297809C98(v6, v3, 1);
  return v4;
}

uint64_t sub_2978E3700(uint64_t a1, uint64_t a2)
{
  sub_2977FDEF4();
  sub_2978E31F4(&v10);
  nullsub_1();
  if (*v4 == a2)
  {
    v5 = v10;
    nullsub_1();
    *v6 = v5;
  }

  v7 = sub_297806460(a1);
  --*v7;
  sub_297818B94();
  sub_2978301C4(*v8, a2);
  return v10;
}

uint64_t sub_2978E3794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1E581A0;
  *(a1 + 8) = a2;
  sub_297829178(a1 + 16, a3);
  sub_297829180((a1 + 24));
  sub_297829180((a1 + 28));
  *(a1 + 32) = 0;
  return a1;
}

void *sub_2978E37F0(void *a1)
{
  *a1 = &unk_2A1E581A0;
  sub_297829368((a1 + 2));
  return a1;
}

uint64_t sub_2978E383C(uint64_t *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, _DWORD *a10, uint64_t a11)
{
  v40 = *MEMORY[0x29EDCA608];
  v37 = a2;
  v35 = a6;
  v36 = a7;
  v34 = a9;
  (*(*a1 + 64))(a1, a11);
  if (sub_297805430(&v37))
  {
    v17 = sub_2977FB720(&v35);
    v18 = sub_29782AB50(&v35);
    sub_2978E3B88(v39, v17, v18);
    sub_297829188(v38);
    if (!sub_297806914(&v34))
    {
      sub_2978E3B8C(v34, *(&v34 + 1), a10, a1[1], v38);
      sub_2978E3DA4(&v31, v38);
      v34 = v31;
    }

    v19 = sub_2977FB720(&v34);
    v20 = sub_29782AB60(&v34);
    if (v19 != v20)
    {
      v21 = v20;
      do
      {
        if (sub_297856348(v19))
        {
          sub_297829818(v39, v19);
        }

        v19 += 56;
      }

      while (v19 != v21);
    }

    v33 = v37;
    v22 = sub_29787B0D8(a10, v37);
    v37 = v22;
    v23 = sub_2977FB720((a1 + 2));
    sub_297841B1C(a10, v22, (*(v23 + 4) >> 10) & 1, &v31);
    v29 = v31;
    v30 = v32;
    sub_2978E3DA8(a1, v37, &v29, a3, a10);
    v30 = v32;
    v29 = v31;
    (*(*a1 + 16))(a1, v37, &v29, a3, a4, a5, v35, v36, a10, a11);
    v24 = v37;
    sub_2978E3F50(&v29, v39);
    sub_2978E3E5C(a1, v24, a3, v29, *(&v29 + 1), v34, *(&v34 + 1), a10);
    if (sub_297805430(&v33) && sub_29783C26C(&v33))
    {
      v28 = 0;
      v25 = v33;
      sub_2978E3F50(&v29, v39);
      sub_2978E3F54(a1, v25, a3, v29, *(&v29 + 1), v34, *(&v34 + 1), a10, &v28, 0);
    }

    sub_29782935C(v38);
    sub_2977FD134(v39);
  }

  else
  {
    v26 = v37;
    sub_297842370(v38);
    (*(*a1 + 16))(a1, v26, v38, a3, a4, a5, a6, a7, a10, a11);
  }

  *(a1 + 6) = v37;
  *(a1 + 8) = a3;
  return (*(*a1 + 72))(a1, a11, a3);
}

uint64_t sub_2978E3B8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v20[0] = a1;
  v20[1] = a2;
  sub_2978E4BB0(v23, a3, a4, 0);
  v11 = sub_2977FB720(v20);
  v12 = sub_29782AB60(v20);
  if (v11 != v12)
  {
    v13 = v12;
    do
    {
      if (sub_29780347C(v11 + 24))
      {
        if (sub_297856348(v11 + 12))
        {
          v14 = sub_297850AD4(v11);
          v5 = v5 & 0xFFFFFFFF00000000 | *(v11 + 20);
          sub_2978E0A7C(v23, v14, *(v11 + 12), v5, 0, *(v11 + 48));
        }

        else
        {
          v7 = v7 & 0xFFFFFFFF00000000 | *(v11 + 8);
          sub_2978E0DC8(v23, *v11, v7);
        }
      }

      else if ((sub_297850C04(v11) & 1) != 0 || (LODWORD(v21) = sub_297850AD4(v11), LODWORD(v19[0]) = sub_2978478EC(v11), sub_297853F10(&v21, v19)))
      {
        v15 = *v11;
        v16 = *(v11 + 8);
        sub_2978044E8(&v21, v11 + 24);
        v6 = v6 & 0xFFFFFFFF00000000 | v16;
        sub_2978E0EC8(v23, v15, v6, v21, v22);
      }

      else
      {
        v17 = sub_297850AD4(v11);
        sub_2978044E8(&v21, v11 + 24);
        sub_2978E06F0(v23, v17, v21, v22, 0, *(v11 + 48));
      }

      v11 += 56;
    }

    while (v11 != v13);
  }

  sub_2978E4BB4(&v21, a3, a4, 0);
  if (sub_2978E22D0(&v21, v23))
  {
    sub_2978E4BB8(v19, a5);
    sub_2978E23B8(&v21, v19);
    j_j_nullsub_1_129();
  }

  sub_2978E4BC0(&v21);
  return sub_2978E4BC4(v23);
}

uint64_t sub_2978E3DA8(uint64_t a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_29782AFB0(a3);
  result = sub_297841544((a1 + 28), &v10);
  if ((result & 1) == 0)
  {
    *(a1 + 28) = v10;
    result = sub_2977FB720(a1 + 16);
    if (a4 != 1 || (*(result + 4) & 0x1000) != 0)
    {
      if (sub_297805430(&v10))
      {
        return sub_2978E42EC(a1, v10, a5);
      }

      else
      {
        sub_2978E4400(a1, a5);
        return sub_2978E44FC(a1, a2, a5);
      }
    }
  }

  return result;
}

uint64_t sub_2978E3E5C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8)
{
  v17[9] = *MEMORY[0x29EDCA608];
  sub_2978E4750(v17);
  sub_2978E4754(a2, a4, a5, v17, a8);
  (*(*a1 + 32))(a1, a2, a3, v17, a6, a7, a8);
  return sub_2977FD134(v17);
}

uint64_t sub_2978E3F54(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _DWORD *a8, unsigned int *a9, unsigned int a10)
{
  v49[9] = *MEMORY[0x29EDCA608];
  v48 = sub_2978E4A28(a8, a2);
  if (sub_29783C26C(&v48))
  {
    sub_2978E3F54(a1, v48, a3, a4, a5, a6, a7, a8, a9, a10 + 1);
    v18 = *a9;
  }

  else
  {
    v18 = a10 + 1;
    *a9 = a10 + 1;
  }

  if (v18 > *(sub_2977FB720(a1 + 16) + 12) && *(sub_2977FB720(a1 + 16) + 12) && ((v19 = *(sub_2977FB720(a1 + 16) + 12), v20 = (*(sub_2977FB720(a1 + 16) + 12) & 1) + (v19 >> 1), v21 = *a9, result = sub_2977FB720(a1 + 16), v23 = v21 - (*(result + 12) >> 1), v20 <= a10) ? (v24 = v23 > a10) : (v24 = 0), v24))
  {
    if (v20 == a10)
    {
      sub_2978E4A94(v47);
      v36 = sub_29781F238(v49, v47);
      v37 = sub_297801F64(v36, "(skipping ");
      v38 = sub_297801FA0(v37, v23 - a10);
      sub_297801F64(v38, " expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)");
      v39 = sub_29781F384(v49);
      sub_2978E424C(a1, v39, v40);
      sub_29781F290(v49);
      return sub_297801F60(v47);
    }
  }

  else
  {
    v25 = sub_29784106C(a8, a2);
    v26 = a2;
    if (v25)
    {
      v26 = sub_297841140(a8, a2);
    }

    v27 = sub_29783E4D0(a8, v26);
    sub_2978E4750(v49);
    sub_2978E4754(a2, a4, a5, v49, a8);
    sub_2978E4A98(v47);
    sub_29781F238(v46, v47);
    v44 = sub_2978E4A9C(a2, a8, *(a1 + 8));
    v45 = v28;
    if (sub_297806914(&v44))
    {
      v29 = "expanded from here";
      v30 = v46;
    }

    else
    {
      v31 = sub_297801F64(v46, "expanded from macro '");
      v30 = sub_297801FA8(v31, v44, v45);
      v29 = "'";
    }

    sub_297801F64(v30, v29);
    v32 = sub_29781F384(v46);
    v34 = v33;
    sub_2978E3F50(v43, v49);
    sub_297804560(&v42);
    sub_2978E4BAC(&v41, 0);
    sub_2978E383C(a1, v27, 1, v32, v34, v43[0], v43[1], v35, v42, a8, v41);
    sub_29781F290(v46);
    sub_297801F60(v47);
    return sub_2977FD134(v49);
  }

  return result;
}

uint64_t sub_2978E424C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_297829180(&v10);
  sub_297842370(v9);
  sub_297804560(v8);
  sub_2978B47C8(&v7);
  return (*(*a1 + 16))(a1, v10, v9, 1, a2, a3, v8[0], v8[1], 0, v7);
}

uint64_t sub_2978E42EC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v16 = a2;
  if (sub_297829730(&v16))
  {
    return sub_2978E4400(a1, a3);
  }

  v6 = v16;
  v7 = sub_2977FB720(a1 + 16);
  sub_297841B1C(a3, v6, (*(v7 + 4) >> 10) & 1, &v14);
  result = sub_29783E4C0(&v14);
  if ((result & 1) == 0)
  {
    sub_2978E456C(a3, v16, &v11);
    if (sub_297805430(&v11))
    {
      return sub_2978E461C(a1, v11, v12, v13, a3);
    }

    else
    {
      v8 = sub_29782AFB0(&v14);
      sub_2978E42EC(a1, v8, a3);
      v9 = v14;
      v10 = v15;
      return (*(*a1 + 40))(a1, v16, &v9, a3);
    }
  }

  return result;
}

uint64_t sub_2978E4400(uint64_t a1, uint64_t a2)
{
  v14[0] = sub_2978E4710(a2);
  v14[1] = v3;
  result = sub_2977FB7B8(v14);
  v5 = result;
  if (result)
  {
    v6 = 0;
    do
    {
      v7 = sub_2978E4740(v14, v6);
      v8 = sub_2977FB7B8(v7 + 24);
      v9 = *(sub_2978E4740(v14, v6) + 24);
      v10 = sub_2977FB720(a1 + 16);
      sub_297841B1C(v8, v9, (*(v10 + 4) >> 10) & 1, v13);
      v11 = sub_2978E4740(v14, v6);
      sub_2978044E8(v12, v11);
      result = (*(*a1 + 56))(a1, v9, v13, v12[0], v12[1], v8);
      ++v6;
    }

    while (v5 != v6);
  }

  return result;
}

uint64_t sub_2978E44FC(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a2;
  if (sub_297829730(&v9))
  {
    return sub_2978E4400(a1, a3);
  }

  sub_2978E456C(a3, v9, &v6);
  return sub_2978E461C(a1, v6, v7, v8, a3);
}

uint64_t sub_2978E456C@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  if (sub_29783E548(a1, a2) < -1)
  {
    v7 = *(**(a1 + 528) + 24);

    return v7();
  }

  else
  {
    sub_297829180(&v8);
    v9[0] = sub_2978E4F2C(&v8, &byte_2978FC3E5);
    v9[1] = v5;
    return sub_2978E4F5C(a3, v9);
  }
}

uint64_t sub_2978E461C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a2;
  result = sub_297829730(&v19);
  if ((result & 1) == 0)
  {
    v10 = v19;
    v11 = sub_2977FB720(a1 + 16);
    sub_297841B1C(a5, v10, (*(v11 + 4) >> 10) & 1, &v17);
    result = sub_29783E4C0(&v17);
    if ((result & 1) == 0)
    {
      sub_2978E456C(a5, v19, &v14);
      sub_2978E461C(a1, v14, v15, v16, a5);
      v12 = v17;
      v13 = v18;
      return (*(*a1 + 48))(a1, v19, &v12, a3, a4, a5);
    }
  }

  return result;
}

unsigned int *sub_2978E4754(int a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v24 = *MEMORY[0x29EDCA608];
  v22[0] = a2;
  v22[1] = a3;
  v21 = sub_29783E548(a5, a1);
  v7 = sub_2977FB720(v22);
  result = sub_29782AB50(v22);
  if (v7 != result)
  {
    v9 = result;
    do
    {
      v20 = sub_297850AD4(v7);
      v19 = sub_2978478EC(v7);
      v10 = sub_297850C04(v7);
      v18 = sub_29783E548(a5, v20);
      v17 = sub_29783E548(a5, v19);
      sub_2978E4FA8(v23, 0);
      if (sub_29783C26C(&v20))
      {
        do
        {
          if (!sub_2978435D4(&v18, &v17))
          {
            break;
          }

          v11 = sub_2978E4FAC(v23, &v18);
          v12 = v20;
          *v11 = v20;
          v20 = sub_297841140(a5, v12);
          v18 = sub_29783E548(a5, v20);
        }

        while ((sub_29783C26C(&v20) & 1) != 0);
      }

      if (sub_2978435D4(&v18, &v17))
      {
        if (sub_29783C26C(&v19))
        {
          do
          {
            if (sub_2978E4FC8(v23, &v17))
            {
              break;
            }

            v19 = sub_297841140(a5, v19) >> 32;
            v17 = sub_29783E548(a5, v19);
          }

          while ((sub_29783C26C(&v19) & 1) != 0);
        }

        if (sub_29783C26C(&v19))
        {
          v20 = *sub_2978E4FAC(v23, &v17);
          v18 = v17;
        }
      }

      while (sub_29783C26C(&v20) && sub_2978435D4(&v18, &v21))
      {
        if (sub_29784106C(a5, v20))
        {
          v20 = sub_2978410C8(a5, v20);
          LODWORD(v13) = sub_2978410C8(a5, v19);
        }

        else
        {
          v20 = sub_297841140(a5, v20);
          v13 = sub_297841140(a5, v19) >> 32;
        }

        v19 = v13;
        v18 = sub_29783E548(a5, v20);
        v16[0] = sub_29783E548(a5, v19);
        if (sub_2978435D4(&v18, v16))
        {
          sub_297829180(v16);
          v14 = v16[0];
          v19 = v16[0];
          v20 = v16[0];
          goto LABEL_20;
        }
      }

      v14 = v20;
LABEL_20:
      v20 = sub_29783E4D0(a5, v14);
      v19 = sub_29783E4D0(a5, v19);
      sub_297853514(&v15, v20, v19);
      sub_297819E70(v16, v15, v10);
      sub_297829818(a4, v16);
      result = sub_2978E4FF0(v23);
      v7 += 3;
    }

    while (v7 != v9);
  }

  return result;
}

uint64_t sub_2978E4A28(_DWORD *a1, unsigned int a2)
{
  v6 = a2;
  v3 = sub_29783C26C(&v6);
  v4 = v6;
  if (v3)
  {
    if (sub_29784106C(a1, v6))
    {
      return sub_2978410C8(a1, v6);
    }

    else
    {
      return sub_297841140(a1, v6);
    }
  }

  return v4;
}

uint64_t sub_2978E4A9C(int a1, _DWORD *a2, uint64_t a3)
{
  v5 = a1;
  if (sub_29784106C(a2, a1))
  {
    do
    {
      v5 = sub_297841140(a2, v5);
    }

    while ((sub_29784106C(a2, v5) & 1) != 0);
  }

  v6 = sub_29783E4D0(a2, v5);
  v7 = sub_29783E548(a2, v6);
  if (sub_2978606D8(a2, v7))
  {
    v8 = sub_297841140(a2, v5);
    v9 = sub_29783E4D0(a2, v8);
    v10 = sub_29783E664(a2, v9);
    v11 = v10;
    v12 = HIDWORD(v10);
    v13 = sub_29784FF88(v9, a2, a3);
    v16[0] = sub_297840A24(a2, v11, 0);
    v16[1] = v14;
    return sub_297805EA4(v16, v12, v13);
  }

  else
  {
    sub_297804560(&v17);
    return v17;
  }
}

uint64_t sub_2978E4BC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  sub_297829188(a1 + 40);
  sub_297817C28(a1 + 512);
  return a1;
}

void *sub_2978E4C0C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  sub_297817C2C((a1 + 3));
  sub_29782AD88((a1 + 6), 0);
  sub_297817C28((a1 + 9));
  return a1;
}

void *sub_2978E4C54(void *a1, uint64_t a2)
{
  result = sub_2978E4C94(a1);
  *result = &unk_2A1E58200;
  result[1] = a2;
  return result;
}

void sub_2978E4CB4()
{
  j_j_nullsub_1_129();

  j__free(v0);
}

uint64_t sub_2978E4CDC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  sub_297852794(a2, a3, a4, 0, v6);
  sub_2978E4D88(v4, v6);
  return sub_29782AC18(v6);
}

uint64_t sub_2978E4D30(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 8);
  sub_297854348(a2, a3, a4, a5, v7);
  sub_2978E4D88(v5, v7);
  return sub_29782AC18(v7);
}

uint64_t sub_2978E4D88(void *a1, uint64_t a2)
{
  if (a1[1] >= a1[2])
  {
    sub_29782BBE4(a1, 0);
  }

  v4 = sub_2977FB7B8(a1);
  sub_29782BD84(v4, a2);
  v5 = sub_2977FB7B8(a1) + 56;

  return sub_2977FD5DC(a1, v5);
}

uint64_t sub_2978E4DF8(uint64_t a1)
{
  sub_297818154(a1 + 72);
  sub_2978E4E34(a1 + 48);
  sub_2978E4E38(a1 + 24);
  return a1;
}

void **sub_2978E4E3C(void **a1)
{
  sub_2978E4E6C(a1);
  j__free(*a1);
  return a1;
}

uint64_t sub_2978E4E6C(uint64_t a1)
{
  result = sub_29782AFAC(a1);
  if (result)
  {
    v6 = sub_29782AF5C(result);
    v5 = sub_2978E2A8C();
    v3 = sub_297803A7C(a1);
    result = sub_29782AF60(a1);
    if (v3 != result)
    {
      v4 = result;
      do
      {
        result = sub_29782B07C(v3, &v6);
        if ((result & 1) == 0)
        {
          result = sub_29782B07C(v3, &v5);
        }

        v3 += 2;
      }

      while (v3 != v4);
    }
  }

  return result;
}

uint64_t sub_2978E4EF8(uint64_t a1)
{
  sub_297818154(a1 + 512);
  sub_2977FD134(a1 + 40);
  return a1;
}

uint64_t sub_2978E4F64(uint64_t result, _DWORD *a2, uint64_t a3)
{
  *result = *a2;
  *(result + 8) = a3;
  return result;
}

_DWORD *sub_2978E4F74(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  sub_2977FB7B4(a1 + 8, *(a2 + 8));
  return a1;
}

uint64_t sub_2978E4FF4(uint64_t a1, unsigned int a2)
{
  nullsub_1();
  sub_2978E5028(v4, a2);
  return a1;
}

uint64_t sub_2978E5028(unsigned int *a1, unsigned int a2)
{
  v3 = *a1;
  *a1 |= 1u;
  if (a2 >= 5)
  {
    *a1 = v3 & 0xFFFFFFFE;
    v4 = sub_29784729C(a1);
    *v4 = sub_2978472A0();
    v4[1] = v5;
  }

  return sub_2978E50A0(a1);
}

uint64_t sub_2978E50A0(uint64_t a1)
{
  sub_2978473C8(a1, 0);
  v2 = sub_2978473CC(a1, 0);
  v3 = sub_297845228(v2);
  v4 = sub_2978E519C(a1);
  result = sub_2978E51A0(a1);
  if (v4 != result)
  {
    v6 = 0;
    v7 = (result - v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v7 + 4) & 0x3FFFFFFFFFFFFFFCLL;
    v10 = (v4 + 16);
    do
    {
      v11 = vdupq_n_s64(v6);
      v12 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_2978F4C70)));
      if (vuzp1_s16(v12, *v8.i8).u8[0])
      {
        *(v10 - 4) = v3;
      }

      if (vuzp1_s16(v12, *&v8).i8[2])
      {
        *(v10 - 2) = v3;
      }

      if (vuzp1_s16(*&v8, vmovn_s64(vcgeq_u64(v8, vorrq_s8(v11, xmmword_2978F4C80)))).i32[1])
      {
        *v10 = v3;
        v10[2] = v3;
      }

      v6 += 4;
      v10 += 8;
    }

    while (v9 != v6);
  }

  return result;
}

uint64_t sub_2978E51D8(_BYTE *a1)
{
  if (*a1)
  {
    return 4;
  }

  else
  {
    return *(sub_297819E7C(a1) + 8);
  }
}

int *sub_2978E5208(_DWORD *a1, unsigned int *a2)
{
  v6 = 0;
  if (sub_2978E5268(a1, a2, &v6))
  {
    return v6;
  }

  sub_297829180(&v5);
  return sub_2978E52A4(a1, a2, &v5, v6);
}

uint64_t sub_2978E5268(uint64_t a1, unsigned int *a2, void *a3)
{
  v5 = 0;
  result = sub_2978E52E0(a1, a2, &v5);
  *a3 = v5;
  return result;
}

int *sub_2978E52A4(_DWORD *a1, unsigned int *a2, int *a3, int *a4)
{
  result = sub_2978E540C(a1, a2, a4);
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_2978E52E0(uint64_t a1, unsigned int *a2, int **a3)
{
  v6 = sub_297847420(a1);
  result = sub_2978E51D4(a1);
  if (result)
  {
    v8 = result;
    v9 = sub_297845228(result);
    v10 = sub_2978456FC();
    v11 = v8 - 1;
    v12 = sub_297846974(a2) & (v8 - 1);
    v13 = (v6 + 8 * v12);
    if (sub_297845700(*a2, *v13))
    {
      result = 1;
    }

    else
    {
      v14 = 0;
      v15 = 1;
      while (!sub_297845700(*v13, v9))
      {
        if (sub_297845700(*v13, v10) && v14 == 0)
        {
          v14 = v13;
        }

        v12 = (v12 + v15) & v11;
        v13 = (v6 + 8 * v12);
        ++v15;
        if (sub_297845700(*a2, *v13))
        {
          result = 1;
          goto LABEL_13;
        }
      }

      result = 0;
      if (v14)
      {
        v13 = v14;
      }
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_13:
  *a3 = v13;
  return result;
}

int *sub_2978E540C(_DWORD *a1, unsigned int *a2, int *a3)
{
  v11 = a3;
  v5 = sub_2978478E4(a1);
  v6 = sub_2978E51D4(a1);
  v7 = v6;
  if (4 * v5 + 4 >= (3 * v6))
  {
    sub_2978E54FC(a1, (2 * v6));
    sub_2978E5268(a1, a2, &v11);
    sub_2978E51D4(a1);
  }

  else if (v6 + ~v5 - sub_2978478EC(a1) <= v6 >> 3)
  {
    sub_2978E54FC(a1, v7);
    sub_2978E5268(a1, a2, &v11);
  }

  v8 = sub_2978478F0(a1);
  v9 = sub_297845228(v8);
  if (!sub_297845700(*v11, v9))
  {
    sub_29784792C(a1);
  }

  return v11;
}

void sub_2978E5500(_DWORD *a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v18 = *MEMORY[0x29EDCA608];
  if (a2 >= 4)
  {
    v17[0] = 64;
    v16 = sub_2977FB4FC(a2 - 1);
    a1 = sub_2977FF288(v17, &v16);
    v2 = *a1;
  }

  if (*v3)
  {
    if (v2 >= 4)
    {
      v7 = sub_297845228(a1);
      v8 = sub_2978456FC();
      v9 = sub_297847420(v3);
      v10 = v17;
      v11 = 32;
      do
      {
        if (!sub_297845700(*v9, v7) && !sub_297845700(*v9, v8))
        {
          *v10 = *v9;
          v10[1] = v9[1];
          v10 += 2;
        }

        v9 += 2;
        v11 -= 8;
      }

      while (v11);
      *v3 &= ~1u;
      v12 = sub_29784729C(v3);
      *v12 = sub_2978472A0();
      v12[1] = v13;
      sub_2978E56B8(v3, v17, v10);
    }
  }

  else
  {
    v4 = sub_29784729C(v3);
    v5 = *v4;
    v6 = *(v4 + 8);
    sub_29784729C(v3);
    if (v2 > 4)
    {
      v14 = sub_29784729C(v3);
      *v14 = sub_2978472A0();
      v14[1] = v15;
    }

    else
    {
      *v3 |= 1u;
    }

    sub_2978E56B8(v3, v5, &v5[2 * v6]);
    j__free(v5);
  }
}

uint64_t sub_2978E56B8(_DWORD *a1, int *a2, int *a3)
{
  v6 = sub_2978E50A0(a1);
  v7 = sub_297845228(v6);
  result = sub_2978456FC();
  if (a2 != a3)
  {
    v9 = result;
    do
    {
      result = sub_297845700(*a2, v7);
      if ((result & 1) == 0)
      {
        result = sub_297845700(*a2, v9);
        if ((result & 1) == 0)
        {
          v11 = 0;
          sub_2978E5268(a1, a2, &v11);
          v10 = v11;
          *v11 = *a2;
          v10[1] = a2[1];
          result = sub_2978478F0(a1);
        }
      }

      a2 += 2;
    }

    while (a2 != a3);
  }

  return result;
}

_BYTE *sub_2978E5774(_BYTE *a1)
{
  sub_2978E57A4(a1);
  sub_29784754C(a1);
  return a1;
}

uint64_t sub_2978E57A4(uint64_t a1)
{
  result = sub_2978E51D4(a1);
  if (result)
  {
    v3 = sub_297845228(result);
    v4 = sub_2978456FC();
    v5 = sub_2978E519C(a1);
    result = sub_2978E51A0(a1);
    if (v5 != result)
    {
      v6 = result;
      do
      {
        result = sub_297845700(*v5, v3);
        if ((result & 1) == 0)
        {
          result = sub_297845700(*v5, v4);
        }

        v5 += 2;
      }

      while (v5 != v6);
    }
  }

  return result;
}

uint64_t *sub_2978E5834(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29782B90C(a2);
  return a1;
}

uint64_t *sub_2978E5874(uint64_t *a1, uint64_t a2)
{
  *a1 = sub_297803A7C(a2);
  a1[1] = sub_29782B950(a2);
  return a1;
}

uint64_t sub_2978E58B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29782BE20(a1, 0x14u);
  sub_2978E58FC(v6, a2, a3);
  return a1;
}

uint64_t sub_2978E58FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_29782C6C8();
  v7 = sub_2977FD5B0(a1);
  if (v6 > 0xAAAAAAAAAAAAAAABLL * ((v7 - sub_2977FB7B8(a1)) >> 2))
  {
    v8 = sub_29782B90C(a1);
    sub_29782BBD4(a1, v8 + v6);
  }

  v9 = sub_2977FB7B8(a1);
  sub_2978E59C4(a2, a3, v9);
  v10 = sub_2977FB7B8(a1) + 12 * v6;

  return sub_2977FD5DC(a1, v10);
}

uint64_t sub_2978E59E0(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v9 = a3;
  v10 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      v5 = v9;
      v6 = *(v4 + 2);
      v7 = *v4;
      v4 = (v4 + 12);
      *v9 = v7;
      *(v5 + 2) = v6;
      v9 = (v5 + 12);
      v10 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v11, &v10, &v9);
  return v11;
}

uint64_t sub_2978E5A80(uint64_t a1)
{
  j_nullsub_1();

  return sub_2978B4BE8(a1, v2);
}

void *sub_2978E5AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2978E3794(a1, a3, a4);
  *result = &unk_2A1E58238;
  result[5] = a2;
  return result;
}

void sub_2978E5B18(void *a1)
{
  v1 = sub_2978E5B14(a1);

  j__free(v1);
}

uint64_t sub_2978E5B40(void *a1, unsigned int a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v27 = a2;
  v16 = sub_2978E5CC0(a1[5]);
  if (sub_297805430(&v27))
  {
    v25 = *a3;
    v26 = *(a3 + 2);
    (*(*a1 + 24))(a1, v27, &v25, a4, a7, a8, a9);
  }

  if ((*(sub_2977FB720((a1 + 2)) + 5) & 0x80) != 0)
  {
    (*(*a1[5] + 24))(a1[5]);
  }

  v17 = a1[5];
  v18 = (*(sub_2977FB720((a1 + 2)) + 4) >> 15) & 1;
  v19 = sub_2977FB720((a1 + 2));
  sub_2978E5D14(v17, a4, v18, (*(v19 + 4) >> 19) & 1);
  v20 = a1[5];
  v21 = sub_2978E5CC0(v20) - v16;
  v22 = *(sub_2977FB720((a1 + 2)) + 28);
  v23 = sub_2977FB720((a1 + 2));
  return sub_2978E5F44(v20, a4 == 1, a5, a6, v21, v22, (*(v23 + 4) >> 15) & 1);
}

void **sub_2978E5D14(uint64_t a1, int a2, int a3, int a4)
{
  if (a3)
  {
    if (a2 <= 2)
    {
      if (a2 == 1)
      {
        (*(*a1 + 16))(a1, 0, 1, 0);
        v7 = "note";
      }

      else
      {
        if (a2 != 2)
        {
          goto LABEL_16;
        }

        (*(*a1 + 16))(a1, 4, 1, 0);
        v7 = "remark";
      }
    }

    else
    {
      switch(a2)
      {
        case 3:
          (*(*a1 + 16))(a1, 5, 1, 0);
          v7 = "warning";
          break;
        case 4:
          (*(*a1 + 16))(a1, 1, 1, 0);
          v7 = "error";
          break;
        case 5:
          (*(*a1 + 16))(a1, 1, 1, 0);
          v7 = "fatal error";
          break;
        default:
          goto LABEL_16;
      }
    }
  }

  else
  {
    if ((a2 - 1) > 4)
    {
      goto LABEL_16;
    }

    v7 = (&off_29EE816E8)[a2 - 1];
  }

  sub_297801F64(a1, v7);
LABEL_16:
  if (a4)
  {
    sub_297801F64(a1, "(clang)");
  }

  result = sub_297801F64(a1, ": ");
  if (a3)
  {
    v9 = *(*a1 + 24);

    return v9(a1);
  }

  return result;
}

uint64_t sub_2978E5F44(void **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v13 = a7 ^ 1 | a2;
  if ((v13 & 1) == 0)
  {
    (*(*a1 + 2))(a1, 8, 1, 0);
  }

  if (a6)
  {
    sub_2978E6064(a1, a3, a4, a6, a5, v13 ^ 1u);
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = 1;
  sub_2978E624C(a1, a3, a4, &v15, v13 ^ 1);
  if (a7)
  {
LABEL_5:
    (*(*a1 + 3))(a1);
  }

LABEL_6:

  return sub_2978028D8(a1, 10);
}

uint64_t sub_2978E6064(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v25 = a2;
  v26 = a3;
  v23[0] = sub_2978044F0(&v25, 0xAu, 0);
  v24 = sub_2977FB7B8(&v25);
  v10 = *sub_297802578(v23, &v24);
  LOBYTE(v24) = 1;
  sub_2978577EC();
  sub_2978E8294(v23, 6, 32);
  if (v10)
  {
    v11 = 0;
    do
    {
      v12 = sub_2978E82BC(v11, v25, v26, v10);
      if (v12 == v10)
      {
        break;
      }

      v13 = v12;
      v11 = sub_2978E832C(v12, v25, v26, v10, v7, a4);
      v14 = v11 - v13;
      if (v14 + v7 >= a4)
      {
        sub_2978028D8(a1, 10);
        v15 = sub_2977FD108(v23, 0);
        sub_29781E2C0(a1, v15, 6uLL);
        v16 = sub_297805EA4(&v25, v13, v14);
        sub_2978E624C(a1, v16, v17, &v24, v6);
        v7 = v14 + 6;
      }

      else
      {
        if (v13)
        {
          sub_2978028D8(a1, 32);
          v7 += v14 + 1;
        }

        else
        {
          v7 += v14;
        }

        v18 = sub_297805EA4(&v25, v13, v14);
        sub_2978E624C(a1, v18, v19, &v24, v6);
      }
    }

    while (v11 < v10);
  }

  v20 = sub_297805EA4(&v25, v10, 0xFFFFFFFFFFFFFFFFLL);
  sub_2978E624C(a1, v20, v21, &v24, v6);
  return sub_297801F60(v23);
}

void **sub_2978E624C(uint64_t *a1, uint64_t a2, uint64_t a3, _BYTE *a4, int a5)
{
  v15 = a2;
  v16 = a3;
  while (1)
  {
    v8 = sub_2978044F0(&v15, 0x7Fu, 0);
    v9 = sub_297804564(&v15, 0, v8);
    result = sub_297801FA8(a1, v9, v10);
    if (v8 == -1)
    {
      return result;
    }

    v15 = sub_297805EA4(&v15, v8 + 1, 0xFFFFFFFFFFFFFFFFLL);
    v16 = v12;
    v13 = *a1;
    if (*a4)
    {
      v14 = 6;
    }

    else
    {
      (*(*a1 + 24))(a1);
      if (!a5)
      {
        goto LABEL_8;
      }

      v13 = *a1;
      v14 = 8;
    }

    (*(v13 + 16))(a1, v14, 1, 0);
LABEL_8:
    *a4 ^= 1u;
  }
}

uint64_t sub_2978E6388(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v56[0] = a5;
  v56[1] = a6;
  if (sub_29783E4C0(a3))
  {
    LODWORD(v52) = sub_29783E548(a7, a2);
    result = sub_297829730(&v52);
    if ((result & 1) == 0)
    {
      result = sub_2978606D8(a7, v52);
      if (result)
      {
        v12 = result;
        result = sub_29782E6C8(result);
        if (result)
        {
          v13 = *(a1 + 40);
          v14 = sub_2977FB720(v12);
          sub_297801F64(v13, v14);
          if (sub_2978E6804(v12))
          {
            sub_297801F64(*(a1 + 40), " (in PCH)");
          }

          return sub_297801F64(*(a1 + 40), ": ");
        }
      }
    }

    return result;
  }

  v15 = sub_29782B550(a3);
  result = sub_2977FB720(a1 + 16);
  if ((*(result + 4) & 0x20) == 0)
  {
    return result;
  }

  if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
  {
    (*(**(a1 + 40) + 16))(*(a1 + 40), 8, 1, 0);
  }

  v16 = *(a1 + 40);
  v17 = sub_2977FB720(a3);
  sub_297801F64(v16, v17);
  v18 = sub_2977FB720(a1 + 16);
  v19 = sub_2978E680C(v18);
  switch(v19)
  {
    case 2:
      v22 = sub_297801F64(*(a1 + 40), " +");
      goto LABEL_18;
    case 1:
      v20 = *(a1 + 40);
      v21 = 40;
      goto LABEL_16;
    case 0:
      v20 = *(a1 + 40);
      v21 = 58;
LABEL_16:
      v22 = sub_2978028D8(v20, v21);
LABEL_18:
      sub_297801FA0(v22, v15);
      break;
  }

  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x10) != 0)
  {
    v23 = sub_29782B694(a3);
    if (v23)
    {
      v24 = v23;
      v25 = sub_2977FB720(a1 + 16);
      v26 = sub_2978E680C(v25);
      v27 = *(a1 + 40);
      if (v26 == 1)
      {
        sub_2978028D8(v27, 44);
        v24 -= (*(*(a1 + 8) + 48) - 0x100000000) < 0xA21FE7F00000000;
      }

      else
      {
        sub_2978028D8(v27, 58);
      }

      sub_297801FA0(*(a1 + 40), v24);
    }
  }

  v28 = sub_2977FB720(a1 + 16);
  v29 = sub_2978E680C(v28);
  if (v29 == 2)
  {
LABEL_28:
    sub_2978028D8(*(a1 + 40), 58);
    goto LABEL_30;
  }

  if (v29 != 1)
  {
    if (v29)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  sub_297801F64(*(a1 + 40), ") : ");
LABEL_30:
  if ((*(sub_2977FB720(a1 + 16) + 5) & 1) != 0 && !sub_297806914(v56))
  {
    v30 = sub_29782CF94(a7, a2);
    v55 = sub_29783E548(a7, v30);
    v31 = sub_2977FB720(v56);
    v32 = sub_29782AB50(v56);
    if (v31 != v32)
    {
      v33 = v32;
      v34 = 0;
      do
      {
        if (sub_297856348(v31))
        {
          v35 = sub_297850AD4(v31);
          v54 = sub_29782CF94(a7, v35);
          v36 = sub_2978478EC(v31);
          v53 = sub_29782CF94(a7, v36);
          if (sub_297841544(&v54, &v53))
          {
            LODWORD(v52) = sub_2978478EC(v31);
            if (sub_29783C26C(&v52))
            {
              v37 = sub_2978478EC(v31);
              v53 = sub_297841340(a7, v37) >> 32;
            }
          }

          v52 = sub_29783E664(a7, v54);
          v51 = sub_29783E664(a7, v53);
          if (!sub_2978435D4(&v52, &v55) && !sub_2978435D4(&v51, &v55))
          {
            if (sub_297850C04(v31))
            {
              v38 = sub_29784FF88(v53, a7, *(a1 + 8));
            }

            else
            {
              v38 = 0;
            }

            v39 = sub_2978028D8(*(a1 + 40), 123);
            v40 = sub_297841D38(a7, v52, SHIDWORD(v52), 0);
            v41 = sub_297801FA0(v39, v40);
            v42 = sub_2978028D8(v41, 58);
            v43 = sub_297841944(a7, v52, HIDWORD(v52), 0);
            v44 = sub_297801FA0(v42, v43);
            v45 = sub_2978028D8(v44, 45);
            v46 = sub_297841D38(a7, v51, SHIDWORD(v51), 0);
            v47 = sub_297801FA0(v45, v46);
            v48 = sub_2978028D8(v47, 58);
            v49 = sub_297841944(a7, v51, HIDWORD(v51), 0);
            v50 = sub_297801FA0(v48, v49 + v38);
            sub_2978028D8(v50, 125);
            v34 = 1;
          }
        }

        v31 += 3;
      }

      while (v31 != v33);
      if (v34)
      {
        sub_2978028D8(*(a1 + 40), 58);
      }
    }
  }

  return sub_2978028D8(*(a1 + 40), 32);
}

void **sub_2978E6818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 16);
  v6 = *(a1 + 40);
  if ((*(v5 + 4) & 0x20) != 0)
  {
    v8 = sub_297801F64(v6, "In file included from ");
    v9 = sub_2977FB720(a3);
    v10 = sub_297801F64(v8, v9);
    v11 = sub_2978028D8(v10, 58);
    v12 = sub_29782B550(a3);
    v6 = sub_297801FA0(v11, v12);
    v7 = ":\n";
  }

  else
  {
    v7 = "In included file:\n";
  }

  return sub_297801F64(v6, v7);
}

void **sub_2978E68BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_2977FB720(a1 + 16);
  v10 = *(a1 + 40);
  if ((*(v9 + 4) & 0x20) != 0)
  {
    v14 = sub_297801F64(v10, "In module '");
    v15 = sub_297801FA8(v14, a4, a5);
    v16 = sub_297801F64(v15, "' imported from ");
    v17 = sub_2977FB720(a3);
    v18 = sub_297801F64(v16, v17);
    v19 = sub_2978028D8(v18, 58);
    v20 = sub_29782B550(a3);
    v12 = sub_297801FA0(v19, v20);
    v13 = ":\n";
  }

  else
  {
    v11 = sub_297801F64(v10, "In module ");
    v12 = sub_297801FA8(v11, a4, a5);
    v13 = "':\n";
  }

  return sub_297801F64(v12, v13);
}

void **sub_2978E69A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x20) != 0 && sub_2977FB720(a3))
  {
    v9 = sub_297801F64(*(a1 + 40), "While building module '");
    v10 = sub_297801FA8(v9, a4, a5);
    v11 = sub_297801F64(v10, "' imported from ");
    v12 = sub_2977FB720(a3);
    v13 = sub_297801F64(v11, v12);
    v14 = sub_2978028D8(v13, 58);
    v15 = sub_29782B550(a3);
    v16 = sub_297801FA0(v14, v15);
    v17 = ":\n";
  }

  else
  {
    v18 = sub_297801F64(*(a1 + 40), "While building module '");
    v16 = sub_297801FA8(v18, a4, a5);
    v17 = "':\n";
  }

  return sub_297801F64(v16, v17);
}

void sub_2978E6A90(uint64_t a1, int a2, int a3, void *a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v49 = a2;
  v47 = a5;
  v48 = a6;
  if ((*(sub_2977FB720(a1 + 16) + 4) & 0x40) != 0 && (!sub_297841544(&v49, (a1 + 24)) || !sub_297806904(a4) || !sub_297806914(&v47) || a3 != 1 && *(a1 + 32) == 1))
  {
    v11 = sub_29783E664(a7, v49);
    v46 = 0;
    v12 = v11;
    v43[0] = sub_297840A24(a7, v11, &v46);
    v43[1] = v13;
    v14 = sub_2977FB720(v43);
    if ((v46 & 1) == 0)
    {
      v15 = v14;
      v16 = HIDWORD(v11);
      v17 = sub_297841D38(a7, v11, SHIDWORD(v11), 0);
      v18 = sub_297841944(a7, v12, v16, 0);
      if (v18 <= 0x1000)
      {
        v19 = v18;
        v20 = (v15 + v16);
        for (i = v18 - 1; ; ++i)
        {
          v22 = *v20;
          v23 = v22 > 0xD;
          v24 = (1 << v22) & 0x2401;
          if (!v23 && v24 != 0)
          {
            break;
          }

          ++v20;
        }

        if (i <= 0x1000)
        {
          sub_297809454();
          sub_29780BCFC(&v44, i, 32);
          sub_2978044E8(&v42, &v45);
          v26 = sub_2977FB720(a1 + 16);
          sub_2978E6F58(v43, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_, *(v26 + 24));
          v27 = sub_2977FB720(a4);
          v28 = sub_2977FB7B8(a4);
          if (v27 != v28)
          {
            v29 = v28;
            do
            {
              sub_2978E6F5C(v27, v17, v12, v43, &v44, a7, *(a1 + 8));
              v27 += 3;
            }

            while (v27 != v29);
          }

          v30 = sub_2978E72B0(v43, v19 - 1);
          v31 = sub_2978032A4(&v44);
          v32 = v30 + 1;
          if (v31 < v32)
          {
            std::string::resize(&v44, v32, 32);
          }

          *sub_29780327C(&v44, v30) = 94;
          v33 = v47;
          v34 = v48;
          v35 = sub_2977FB720(a1 + 16);
          sub_2978E7300(v17, v43, v33, v34, a7, v35, &v42);
          v36 = *(sub_2977FB720(a1 + 16) + 28);
          if (v36)
          {
            sub_2978E7508(&v45, &v44, &v42, v36, v43);
          }

          if (*(sub_2977FB720(a1 + 16) + 5))
          {
            sub_2978E7A6C(32, &v45, &v41);
            sub_2978046C4(&v45, &v41);
            std::string::~string(&v41);
            sub_2978E7A6C(32, &v44, &v41);
            sub_2978046C4(&v44, &v41);
            std::string::~string(&v41);
          }

          while (1)
          {
            v37 = sub_2978032A4(&v44);
            if (*sub_29780327C(&v44, v37 - 1) != 32)
            {
              break;
            }

            v40[0] = sub_2978073D8(&v44);
            v40[1] = sub_29787AA38(v40, 1);
            sub_297809B4C();
            sub_29787A96C(&v44, v41.__r_.__value_.__l.__data_);
          }

          sub_2978044E8(&v41, &v45);
          sub_2978E7B14(a1, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
          if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
          {
            (*(**(a1 + 40) + 16))(*(a1 + 40), 2, 1, 0);
          }

          v38 = sub_29780BB74(*(a1 + 40), &v44);
          sub_2978028D8(v38, 10);
          if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
          {
            (*(**(a1 + 40) + 24))(*(a1 + 40));
          }

          if (!sub_29780347C(&v42))
          {
            if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
            {
              (*(**(a1 + 40) + 16))(*(a1 + 40), 2, 0, 0);
            }

            if (*(sub_2977FB720(a1 + 16) + 5))
            {
              sub_2978028D8(*(a1 + 40), 32);
            }

            v39 = sub_29780BB74(*(a1 + 40), &v42);
            sub_2978028D8(v39, 10);
            if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
            {
              (*(**(a1 + 40) + 24))(*(a1 + 40));
            }
          }

          sub_2978E7D20(a1, v47, v48, a7);
          std::string::~string(&v42);
          sub_2978E7FD8(v43);
          std::string::~string(&v44);
          std::string::~string(&v45);
        }
      }
    }
  }
}

uint64_t sub_2978E6F5C(unsigned int *a1, unsigned int a2, int a3, uint64_t a4, std::string *a5, _DWORD *a6, uint64_t a7)
{
  v42 = a3;
  result = sub_297856348(a1);
  if (result)
  {
    v14 = sub_297850AD4(a1);
    v15 = sub_2978478EC(a1);
    result = sub_29784213C(a6, v14, 0);
    if (result <= a2)
    {
      v16 = result;
      LODWORD(v40) = sub_29783E548(a6, v14);
      result = sub_2978435D4(&v40, &v42);
      if ((result & 1) == 0)
      {
        result = sub_29784213C(a6, v15, 0);
        if (result >= a2)
        {
          v17 = result;
          LODWORD(v40) = sub_29783E548(a6, v15);
          result = sub_2978435D4(&v40, &v42);
          if ((result & 1) == 0)
          {
            if (v16 == a2)
            {
              v18 = sub_297841A9C(a6, v14, 0);
              if (v18)
              {
                v19 = v18 - 1;
              }

              else
              {
                v19 = 0;
              }
            }

            else
            {
              v19 = 0;
            }

            v40 = sub_297830E08(a4);
            v41 = v20;
            v21 = sub_2977FB7B8(&v40);
            if (v17 == a2)
            {
              v22 = sub_297841A9C(a6, v15, 0);
              if (v22)
              {
                v23 = v22 - 1;
                if (sub_297850C04(a1))
                {
                  v23 += sub_29784FF88(v15, a6, a7);
                }
              }

              else
              {
                v23 = sub_2978032A4(a5);
              }
            }

            else
            {
              v23 = v21;
            }

            if (sub_297850C04(a1))
            {
              v40 = sub_297830E08(a4);
              v41 = v24;
              if (sub_2977FB7B8(&v40) > v19)
              {
                v25 = v19;
                do
                {
                  v38 = sub_297830E08(a4);
                  v39 = v26;
                  if (sub_297803A20(&v38, v25) != 32)
                  {
                    v37[0] = sub_297830E08(a4);
                    v37[1] = v27;
                    if (sub_297803A20(v37, v25) != 9)
                    {
                      break;
                    }
                  }

                  v19 = sub_2978E89C0(a4, v19);
                  v25 = v19;
                  v40 = sub_297830E08(a4);
                  v41 = v28;
                }

                while (sub_2977FB7B8(&v40) > v19);
              }

              v40 = sub_297830E08(a4);
              v41 = v29;
              if (sub_2977FB7B8(&v40) < v23)
              {
                v40 = sub_297830E08(a4);
                v41 = v30;
                v23 = sub_2977FB7B8(&v40);
              }

              if (v23)
              {
                while (1)
                {
                  v40 = sub_297830E08(a4);
                  v41 = v31;
                  if (sub_297803A20(&v40, v23 - 1) != 32)
                  {
                    v38 = sub_297830E08(a4);
                    v39 = v32;
                    if (sub_297803A20(&v38, v23 - 1) != 9)
                    {
                      break;
                    }
                  }

                  v23 = sub_2978E8A00(a4, v23);
                  if (!v23)
                  {
                    goto LABEL_29;
                  }
                }
              }

              else
              {
LABEL_29:
                v23 = 0;
              }
            }

            v33 = sub_2978E72B0(a4, v19);
            v34 = sub_2978E72B0(a4, v23);
            if (sub_2978032A4(a5) < v34)
            {
              std::string::resize(a5, v34, 32);
            }

            v40 = sub_29780739C(a5);
            v35 = sub_29780C7E0(&v40, v33);
            v38 = sub_29780739C(a5);
            v36 = sub_29780C7E0(&v38, v34);
            LOBYTE(v37[0]) = 126;
            return sub_2978E8A40(v35, v36, v37);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978E72B0(uint64_t a1, unsigned int a2)
{
  do
  {
    v4 = sub_2978297C0(a1 + 24, a2--);
  }

  while (*v4 == -1);
  return *sub_2978297C0(a1 + 24, a2 + 1);
}

uint64_t sub_2978E7300@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _DWORD *a5@<X4>, uint64_t a6@<X5>, std::string *a7@<X8>)
{
  v30[0] = a3;
  v30[1] = a4;
  sub_297802744(a7);
  result = sub_297806914(v30);
  if ((result & 1) != 0 || (*(a6 + 4) & 0x80) == 0)
  {
    return result;
  }

  v27 = a6;
  v13 = sub_2977FB720(v30);
  v14 = sub_29782AB60(v30);
  if (v13 == v14)
  {
    return sub_2978E8B7C(a7, *(v27 + 24));
  }

  v15 = v14;
  v16 = 0;
  while (sub_29780347C((v13 + 6)))
  {
LABEL_14:
    v13 += 14;
    if (v13 == v15)
    {
      return sub_2978E8B7C(a7, *(v27 + 24));
    }
  }

  v17 = sub_297850AD4(v13);
  v18 = sub_29783F5D4(a5, v17);
  v19 = HIDWORD(v18);
  v20 = v18;
  if (sub_297841D38(a5, v18, SHIDWORD(v18), 0) == a1)
  {
    sub_2978044E8(&v29, (v13 + 6));
    sub_2977FB7B4(v28, "\n\r");
    if (sub_29780F7E0(&v29, v28[0], v28[1], 0) == -1)
    {
      v21 = sub_297841944(a5, v20, v19, 0);
      v22 = sub_2978E72B0(a2, v21 - 1);
      if (v22 < v16)
      {
        v23 = v16 + 1;
      }

      else
      {
        v23 = v22;
      }

      v24 = sub_2978032A4(a7);
      v25 = v23 - v16 + sub_2978032A4((v13 + 6)) + v24;
      if (sub_2978032A4(a7) < v25)
      {
        std::string::resize(a7, v25, 32);
      }

      sub_29780739C((v13 + 6));
      sub_2978073D8((v13 + 6));
      v29 = sub_2978073D8(a7);
      v26 = sub_2978032A4((v13 + 6));
      sub_29787AA38(&v29, v26);
      sub_2978E8B60();
      sub_2978044E8(&v29, (v13 + 6));
      v16 = sub_2978049EC() + v23;
      goto LABEL_14;
    }
  }

  sub_297803300(a7);
  return sub_2978E8B7C(a7, *(v27 + 24));
}

uint64_t sub_2978E7508(std::string *a1, std::string *a2, std::string *a3, unsigned int a4, uint64_t a5)
{
  LODWORD(__n1) = sub_2978E8D08(a5);
  v59.__r_.__value_.__r.__words[0] = sub_2978032A4(a2);
  v60 = sub_2978032A4(a3);
  v62 = *sub_29780338C();
  result = sub_2977FF288(&__n1, &v62);
  if (*result <= a4)
  {
    return result;
  }

  LODWORD(__n1) = 0;
  v62 = sub_2978032A4(a2);
  v11 = __n1;
  if (__n1 != v62)
  {
    while (1)
    {
      v12 = sub_29780327C(a2, v11);
      v13 = sub_297850134(*v12);
      v14 = v62;
      v15 = __n1;
      if (!v13)
      {
        break;
      }

      v11 = __n1 + 1;
      LODWORD(__n1) = v11;
      if (v11 == v62)
      {
        goto LABEL_9;
      }
    }

    while (v14 != v15)
    {
      v16 = sub_29780327C(a2, v14 - 1);
      if (!sub_297850134(*v16))
      {
        break;
      }

      v15 = __n1;
      v14 = --v62;
    }
  }

LABEL_9:
  v56 = a2;
  if (!sub_29780347C(a3))
  {
    v18 = sub_2978032A4(a3);
    LODWORD(v19) = v18;
    if (v18)
    {
      v20 = 0;
      v21 = v18;
      do
      {
        v22 = sub_29780327C(a3, v20);
        if (!sub_297850134(*v22))
        {
          goto LABEL_17;
        }

        ++v20;
      }

      while (v21 != v20);
      LODWORD(v20) = v19;
    }

    else
    {
      LODWORD(v20) = 0;
    }

LABEL_17:
    while (v20 != v19)
    {
      v19 = (v19 - 1);
      v23 = sub_29780327C(a3, v19);
      if (!sub_297850134(*v23))
      {
        v24 = v19 + 1;
LABEL_21:
        v61 = v20;
        sub_297877EC0(a3, 0, v24, &v59);
        sub_2978044E8(&v60, &v59);
        v25 = sub_2978049EC();
        std::string::~string(&v59);
        LODWORD(v59.__r_.__value_.__l.__data_) = v25;
        LODWORD(__n1) = *sub_2977FA590(&v61, &__n1);
        i = *sub_2977FF288(&v59, &v62);
        goto LABEL_22;
      }
    }

    v24 = v20;
    goto LABEL_21;
  }

  for (i = v62; i < sub_2978E8D08(a5) && sub_2978E8D28(a5, v62) == -1; v62 = i)
  {
    i = v62 + 1;
LABEL_22:
    ;
  }

  LODWORD(v59.__r_.__value_.__l.__data_) = sub_2978E8D08(a5);
  v26 = sub_2977FA590(&__n1, &v59);
  v27 = sub_2978E8D28(a5, *v26);
  LODWORD(v59.__r_.__value_.__l.__data_) = sub_2978E8D08(a5);
  v28 = sub_2977FA590(&v62, &v59);
  v29 = sub_2978E8D28(a5, *v28);
  v30 = v62 - __n1;
  v31 = sub_2978E8A44(a5, v29);
  v57 = sub_2978E8A44(a5, v27) - v31 + v30;
  v58 = a4;
  v32 = v57 + 8;
  if (v57 + 8 >= a4)
  {
    v32 = 0;
  }

  v33 = a4 - v32;
  while (v27)
  {
    v34 = a5;
    for (j = v27; ; j = v37)
    {
      v36 = sub_2978E8A00(v34, j);
      v37 = v36;
      if (!v36)
      {
        break;
      }

      v38 = sub_29780327C(a1, v36);
      if (!sub_297850134(*v38))
      {
        break;
      }

      v34 = a5;
    }

    do
    {
      v39 = v37;
      if (!v37)
      {
        break;
      }

      v37 = sub_2978E8A00(a5, v37);
      v40 = sub_29780327C(a1, v37);
    }

    while (!sub_297850134(*v40));
    v41 = sub_2978E8A44(a5, v29);
    v42 = v41 - sub_2978E8A44(a5, v39);
    v43 = v42 <= v33;
    if (v42 <= v33)
    {
      v27 = v39;
    }

    if (sub_2978032A4(a1) > v29)
    {
LABEL_43:
      v44 = a5;
      for (k = v29; ; k = v46)
      {
        v46 = sub_2978E89C0(v44, k);
        v47 = v46;
        if (sub_2978032A4(a1) <= v46)
        {
          break;
        }

        v48 = sub_29780327C(a1, v46);
        if (!sub_297850134(*v48))
        {
          v47 = v46;
          break;
        }

        v44 = a5;
      }

      if (sub_2978032A4(a1) > v47)
      {
        do
        {
          v49 = sub_29780327C(a1, v47);
          if (!sub_297850134(*v49))
          {
            break;
          }

          v46 = sub_2978E89C0(a5, v46);
          v47 = v46;
        }

        while (sub_2978032A4(a1) > v46);
      }

      v50 = sub_2978E8A44(a5, v46);
      v51 = sub_2978E8A44(a5, v27);
      if (v50 - v51 <= v33)
      {
        v29 = v46;
      }

      if (v50 - v51 > v33 && !v43)
      {
        goto LABEL_56;
      }
    }

    else if (v42 > v33)
    {
      goto LABEL_56;
    }
  }

  if (sub_2978032A4(a1) > v29)
  {
    v27 = 0;
    v43 = 0;
    if (sub_2978032A4(a1) <= v29)
    {
      goto LABEL_56;
    }

    goto LABEL_43;
  }

  v27 = 0;
LABEL_56:
  LODWORD(__n1) = sub_2978E8A44(a5, v27);
  v62 = sub_2978E8A44(a5, v29) + v57;
  v52 = sub_2978032A4(a1);
  v53 = sub_2978E8A44(a5, v52);
  result = sub_2978E8A44(a5, v29);
  v55 = v62;
  v54 = __n1;
  if ((v53 - result) >= 4)
  {
    result = std::string::replace(a1, v29, 0xFFFFFFFFFFFFFFFFLL, "...");
  }

  if (v55 > v58 && v54 >= 6)
  {
    std::string::replace(a1, 0, v27, "  ...");
    std::string::replace(v56, 0, __n1, "     ");
    result = sub_29780347C(a3);
    if ((result & 1) == 0)
    {
      return std::string::replace(a3, 0, __n1, "     ");
    }
  }

  return result;
}

_BYTE *sub_2978E7A6C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2978032A4(a2);
  nullsub_1();
  nullsub_1();
  v7 = sub_297808E78(a3, v6 + 1, &v12);
  sub_2978033F0(v7);
  nullsub_1();
  v9 = v8;
  sub_297808E7C(v8, 1, a1);
  sub_2978037CC(a2);
  sub_297808CA4(v9 + 1, v10, v6);
  return sub_297808E7C(&v9[v6 + 1], 1, 0);
}

void sub_2978E7B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a2;
  v17 = a3;
  if (!sub_297806914(&v16))
  {
    v15 = 0;
    sub_297802744(&v14);
    if (!sub_2977FB7B8(&v16))
    {
      goto LABEL_12;
    }

    v4 = 0;
    v5 = (a1 + 40);
    do
    {
      v6 = v16;
      v7 = v17;
      v8 = sub_2977FB720(a1 + 16);
      sub_2978E7FDC(v6, v7, &v15, *(v8 + 24), v13);
      v9 = v13[40];
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0 && v9 == (v4 & 1))
      {
        if (v4)
        {
          (*(**v5 + 4))();
        }

        sub_29780BB74(*v5, &v14);
        sub_297803300(&v14);
        if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
        {
          (*(**v5 + 3))();
        }
      }

      v4 = v9 ^ 1;
      v10 = sub_297801F10(v13);
      sub_29780435C(&v14, v10, v11);
      sub_2978E8278(v13);
      v12 = v15;
    }

    while (v12 < sub_2977FB7B8(&v16));
    if ((v9 & 1) == 0)
    {
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
      {
        (*(**v5 + 4))();
      }

      sub_29780BB74(*v5, &v14);
      if ((*(sub_2977FB720(a1 + 16) + 5) & 0x80) != 0)
      {
        (*(**v5 + 3))();
      }
    }

    else
    {
LABEL_12:
      sub_29780BB74(*(a1 + 40), &v14);
      v5 = (a1 + 40);
    }

    sub_2978028D8(*v5, 10);
    std::string::~string(&v14);
  }
}

uint64_t sub_2978E7D20(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v37[0] = a2;
  v37[1] = a3;
  result = sub_2977FB720(a1 + 16);
  if ((*(result + 5) & 2) != 0)
  {
    v7 = sub_2977FB720(v37);
    v8 = sub_29782AB60(v37);
    if (v7 == v8)
    {
LABEL_9:
      v10 = sub_2977FB720(v37);
      result = sub_29782AB60(v37);
      if (v10 != result)
      {
        v11 = result;
        do
        {
          v12 = sub_297850AD4(v10);
          v13 = sub_2978478EC(v10);
          v14 = v12;
          v15 = sub_29783E664(a4, v12);
          v16 = sub_29783E664(a4, v13);
          v17 = v16;
          v18 = HIDWORD(v16);
          if (sub_297850C04(v10))
          {
            LODWORD(v18) = sub_29784FF88(v13, a4, *(a1 + 8)) + v18;
          }

          sub_297841B1C(a4, v14, 1, v36);
          result = sub_29783E4C0(v36);
          if (result)
          {
            break;
          }

          sub_297801F64(*(a1 + 40), "fix-it:");
          v19 = *(a1 + 40);
          v20 = sub_2977FB720(v36);
          sub_2977FB7B4(&v34, v20);
          sub_29781E584(v19, v34, v35, 0);
          v21 = sub_297801F64(*(a1 + 40), ":{");
          v22 = sub_297841D38(a4, v15, SHIDWORD(v15), 0);
          v23 = sub_297801FA0(v21, v22);
          v24 = sub_2978028D8(v23, 58);
          v25 = sub_297841944(a4, v15, HIDWORD(v15), 0);
          v26 = sub_297801FA0(v24, v25);
          v27 = sub_2978028D8(v26, 45);
          v28 = sub_297841D38(a4, v17, v18, 0);
          v29 = sub_297801FA0(v27, v28);
          v30 = sub_2978028D8(v29, 58);
          v31 = sub_297841944(a4, v17, v18, 0);
          v32 = sub_297801FA0(v30, v31);
          sub_297801F64(v32, "}:");
          v33 = *(a1 + 40);
          sub_2978044E8(&v34, (v10 + 6));
          sub_29781E584(v33, v34, v35, 0);
          result = sub_297801F64(*(a1 + 40), "\n");
          v10 += 14;
        }

        while (v10 != v11);
      }
    }

    else
    {
      v9 = v8;
      while (1)
      {
        result = sub_297850D28(v7);
        if (result)
        {
          break;
        }

        LODWORD(v36[0]) = sub_297850AD4(v7);
        result = sub_29783C26C(v36);
        if (result)
        {
          break;
        }

        LODWORD(v34) = sub_2978478EC(v7);
        result = sub_29783C26C(&v34);
        if (result)
        {
          break;
        }

        v7 += 14;
        if (v7 == v9)
        {
          goto LABEL_9;
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978E7FDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>)
{
  v27 = a1;
  v28 = a2;
  if (sub_297803A20(&v27, *a3) == 9)
  {
    v8 = sub_2978E8D8C(v27, v28, *a3);
    v9 = a4 + v8 / a4 * a4 - v8;
    ++*a3;
    sub_2978577EC();
    sub_2978E8294(v26, v9, 32);
    LOBYTE(v21) = 1;
LABEL_12:
    sub_2978E8E00(v26, &v21, a5);
    return sub_297801F60(v26);
  }

  v10 = sub_2977FB720(&v27) + *a3;
  v25 = v10;
  v11 = sub_2977FB7B8(&v27);
  if (!sub_297802A30(v10, v10 + v11 - *a3))
  {
    sub_2977FB7B4(&v21, "<XX>");
    sub_2978E8E10(v26, v21, v22);
    v14 = sub_297803A20(&v27, *a3);
    v15 = sub_29781E738(v14 >> 4);
    *sub_2977FD108(v26, 1u) = v15;
    v16 = sub_29781E738(v14 & 0xF);
    *sub_2977FD108(v26, 2u) = v16;
    ++*a3;
LABEL_11:
    LOBYTE(v21) = 0;
    goto LABEL_12;
  }

  v24 = 0;
  v23 = &v24;
  v12 = sub_297803A20(&v27, *a3);
  v13 = (v10 + sub_297802B4C(v12));
  sub_297802F84(&v25, v13, &v23, &v25, 0);
  *a3 += &v25[-v10];
  if ((sub_2978049F0() & 1) == 0)
  {
    sub_2977FB7B4(&v21, "<U+>");
    sub_2978E8E10(v26, v21, v22);
    if (v24)
    {
      do
      {
        v17 = sub_2977FB720(v26);
        LOBYTE(v21) = sub_29781E738(v24 & 0xF);
        sub_29784FA04(v26, (v17 + 3), &v21);
        v18 = v24;
        v24 >>= 4;
      }

      while (v18 >= 0x10);
    }

    if (sub_2977FD0D4(v26) <= 7)
    {
      do
      {
        v19 = sub_2977FB720(v26);
        LOBYTE(v21) = sub_29781E738(0);
        sub_29784FA04(v26, (v19 + 3), &v21);
      }

      while (sub_2977FD0D4(v26) < 8);
    }

    goto LABEL_11;
  }

  sub_2978E8E24(v26, v10, v13);
  LOBYTE(v21) = 1;
  sub_2978E8E14(v26, &v21, a5);
  return sub_297801F60(v26);
}

uint64_t sub_2978E82BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  i = a1;
  v9[0] = a2;
  v9[1] = a3;
  v5 = a4 - a1;
  if (a4 > a1)
  {
    for (i = a1; ; ++i)
    {
      v7 = sub_297803A20(v9, i);
      if (!sub_297850134(v7))
      {
        break;
      }

      if (!--v5)
      {
        return a4;
      }
    }
  }

  return i;
}

uint64_t sub_2978E832C(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v27 = a2;
  v28 = a3;
  v10 = a1 + 1;
  if (sub_2977FB7B8(&v27) != v10)
  {
    v11 = sub_297803A20(&v27, a1);
    v12 = sub_2978E85C0(v11);
    v26 = v12;
    if (v12)
    {
      sub_2978577EC();
      sub_2977FCD50(v25, &v26);
      v13 = v10;
      if (v10 < a4)
      {
        v14 = ~a1 + a4;
        v13 = v10;
        while (!sub_297806904(v25))
        {
          v15 = sub_297803A20(&v27, v13);
          if (*sub_29784C06C(v25) == v15)
          {
            sub_297806E8C(v25);
          }

          else
          {
            v16 = sub_297803A20(&v27, v13);
            v17 = sub_2978E85C0(v16);
            v24 = v17;
            if (v17)
            {
              sub_2977FCD50(v25, &v24);
            }
          }

          ++v13;
          if (!--v14)
          {
LABEL_16:
            v13 = a4;
            goto LABEL_22;
          }
        }
      }

      v18 = a4 - v13;
      if (a4 > v13)
      {
        v13 = v13;
        while (1)
        {
          v19 = sub_297803A20(&v27, v13);
          if (sub_297850134(v19))
          {
            break;
          }

          ++v13;
          if (!--v18)
          {
            goto LABEL_16;
          }
        }
      }

LABEL_22:
      if (v13 - a1 >= a6 / 3 && v13 - a1 + a5 > a6)
      {
        v13 = sub_2978E832C(v10, v27, v28, a4, a5 + 1, a6);
      }

      sub_297801F60(v25);
      return v13;
    }

    else if (v10 < a4)
    {
      v20 = ~a1 + a4;
      while (1)
      {
        v21 = sub_297803A20(&v27, v10);
        if (sub_297850134(v21))
        {
          break;
        }

        ++v10;
        if (!--v20)
        {
          return a4;
        }
      }
    }
  }

  return v10;
}

uint64_t sub_2978E8508(void *a1, unsigned int a2, uint64_t a3)
{
  sub_2977FD800(a1);
  if (sub_2978059C8(a1) < a2)
  {
    sub_2977FD5B8(a1, a2);
  }

  v6 = sub_2977FB720(a1);
  sub_2977FD5DC(a1, v6 + a2);
  v7 = sub_2977FB720(a1);
  v8 = sub_2977FB7B8(a1);

  return sub_2978E85A0(v7, v8, a3);
}

_BYTE *sub_2978E85A4(_BYTE *result, _BYTE *a2, char *a3)
{
  if (result != a2)
  {
    v3 = *a3;
    do
    {
      *result++ = v3;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_2978E85C0(int a1)
{
  result = 39;
  if (a1 > 90)
  {
    switch(a1)
    {
      case '[':
        return 93;
        return result;
      case '{':
        return 125;
    }
  }

  else
  {
    switch(a1)
    {
      case '""':
        return 34;
      case '\'':
        return result;
      case '(':
        return 41;
    }
  }

  return 0;
}

uint64_t sub_2978E8628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2;
  v8 = a3;
  sub_297801F5C(&v7);
  sub_2978E8698(a1 + 24);
  sub_2978E8698(a1 + 848);
  sub_2978E869C(v7, v8, v4, (a1 + 24));
  sub_2978E879C(v7, v8, v4, (a1 + 848));
  return a1;
}

_DWORD *sub_2978E869C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v12 = a1;
  v13 = a2;
  sub_2977FD800(a4);
  if (sub_297806914(&v12))
  {
    v10[0] = 0;
    return sub_2978E88BC(a4, 1u, v10);
  }

  else
  {
    v7 = sub_2977FB7B8(&v12);
    v10[0] = -1;
    sub_2978E88BC(a4, v7 + 1, v10);
    v11 = 0;
    if (sub_2977FB7B8(&v12))
    {
      LODWORD(v8) = 0;
      v9 = 0;
      do
      {
        *sub_2978297C0(a4, v8) = v9;
        sub_2978E7FDC(v12, v13, &v11, a3, v10);
        sub_2978059B8(v10);
        v9 += sub_2978049EC();
        sub_2978E8278(v10);
        v8 = v11;
      }

      while (v8 < sub_2977FB7B8(&v12));
    }

    else
    {
      v9 = 0;
    }

    result = sub_2978192CC(a4);
    *result = v9;
  }

  return result;
}

_DWORD *sub_2978E879C(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v12 = a1;
  v13 = a2;
  sub_2977FD800(a4);
  if (sub_297806914(&v12))
  {
    v10[0] = 0;
    return sub_2978E88BC(a4, 1u, v10);
  }

  else
  {
    v11 = 0;
    if (sub_2977FB7B8(&v12))
    {
      LODWORD(v7) = 0;
      v8 = 0;
      do
      {
        v10[0] = -1;
        sub_2978E88BC(a4, v8 + 1, v10);
        *sub_2978192CC(a4) = v7;
        sub_2978E7FDC(v12, v13, &v11, a3, v10);
        sub_2978059B8(v10);
        v8 += sub_2978049EC();
        sub_2978E8278(v10);
        v7 = v11;
      }

      while (v7 < sub_2977FB7B8(&v12));
      v9 = v8 + 1;
    }

    else
    {
      LODWORD(v7) = 0;
      v9 = 1;
    }

    v10[0] = -1;
    sub_2978E88BC(a4, v9, v10);
    result = sub_2978192CC(a4);
    *result = v7;
  }

  return result;
}

unint64_t sub_2978E88BC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v5 = a2;
  if (sub_297803A80(a1) <= a2)
  {
    result = sub_297803A80(a1);
    if (result >= v5)
    {
      return result;
    }

    if (sub_297859A8C(a1) < v5)
    {
      sub_297803D70(a1, v5);
    }

    v7 = sub_2977FB7B8(a1);
    v8 = sub_2977FB720(a1);
    sub_2978E89A0(v7, v8 + 4 * v5, a3);
  }

  else
  {
    sub_2977FB720(a1);
    sub_2977FB7B8(a1);
    nullsub_1();
  }

  v9 = sub_2977FB720(a1) + 4 * v5;

  return sub_2977FD5DC(a1, v9);
}

_DWORD *sub_2978E89A4(_DWORD *result, _DWORD *a2, int *a3)
{
  if (result != a2)
  {
    v3 = *a3;
    do
    {
      *result++ = v3;
    }

    while (result != a2);
  }

  return result;
}

uint64_t sub_2978E89C0(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  do
  {
    v2 = (v2 + 1);
  }

  while (sub_2978E8A44(a1, v2) == -1);
  return v2;
}

uint64_t sub_2978E8A00(uint64_t a1, int a2)
{
  LODWORD(v2) = a2;
  do
  {
    v2 = (v2 - 1);
  }

  while (sub_2978E8A44(a1, v2) == -1);
  return v2;
}

void sub_2978E8A64(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = a2;
  v7 = a1;
  v5 = sub_297808460(&v6, &v7);
  sub_2978E8AB0(a1, v5, a3);
}

void sub_2978E8AB0(uint64_t a1, uint64_t a2, char *a3)
{
  nullsub_1();

  sub_2978E8AF8(a1, v5, a3);
}

void sub_2978E8AF8(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = a1;
  if (a2 >= 1)
  {
    v4 = a2 + 1;
    do
    {
      v5 = *a3;
      *sub_2977FB720(&v6) = v5;
      sub_297808548(&v6);
      --v4;
    }

    while (v4 > 1);
  }
}

_BYTE *sub_2978E8B7C(std::string *a1, unsigned int a2)
{
  result = sub_2978032A4(a1);
  if (result)
  {
    v5 = result - 1;
    do
    {
      result = sub_29780327C(a1, v5);
      if (*result == 9)
      {
        v9 = v5;
        sub_2978044E8(v7, a1);
        sub_2978E7FDC(v7[0], v7[1], &v9, a2, v8);
        v6 = sub_297807A0C(v8);
        std::string::replace(a1, v5, 1uLL, v6);
        result = sub_2978E8278(v8);
      }

      --v5;
    }

    while (v5 != -1);
  }

  return result;
}

uint64_t sub_2978E8C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2978E8CBC(a1, a2);
  v7 = v6;
  v8 = sub_29780C8A4(a3);
  v9 = sub_2977FD944(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2978E8D04(a1, v9);
  v13 = sub_29780C8A8(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978E8CBC(uint64_t a1, uint64_t a2)
{
  v5 = sub_29780C8A4(a1);
  v4 = sub_29780C8A4(a2);
  return sub_2977FD958(&v5, &v4);
}

void sub_2978E8D48(std::string *a1)
{
  sub_2977FD134(&a1[35].__r_.__value_.__l.__size_);
  sub_2977FD134(&a1[1]);

  std::string::~string(a1);
}

uint64_t sub_2978E8D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a1;
  v7[1] = a2;
  if (!a3)
  {
    return 0;
  }

  v4 = 0;
  v5 = a3 - 1;
  while (sub_297803A20(v7, v5) != 9)
  {
    v4 = (v4 + 1);
    if (--v5 == -1)
    {
      return a3;
    }
  }

  return v4;
}

uint64_t sub_2978E8E2C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2978E8E58(a1, a2);
  *(result + 40) = *a3;
  return result;
}

uint64_t sub_2978E8E60(uint64_t a1, void *a2)
{
  sub_2977FE408(a1, 0x10u);
  if (!sub_297806904(a2))
  {
    sub_297807D80(a1, a2);
  }

  return a1;
}

uint64_t sub_2978E8EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v4 = sub_2977FB720(v7);
  v5 = sub_2977FB728(v7);
  return sub_2978E8EF8(a1, v4, v5);
}

uint64_t sub_2978E8EF8(uint64_t a1, char *a2, char *a3)
{
  v6 = sub_2977FE408(a1, 0x10u);
  sub_2977FD4F8(v6, a2, a3);
  return a1;
}

uint64_t sub_2978E8F44(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = sub_2978E8F70(a1, a2);
  *(result + 40) = *a3;
  return result;
}

void *sub_2978E8F78(void *a1, void *a2)
{
  sub_2977FE408(a1, 0x10u);
  if (!sub_297806904(a2))
  {
    sub_2978E8FC0(a1, a2);
  }

  return a1;
}

void *sub_2978E8FC0(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_2977FD0D4(a2);
      v5 = sub_2977FD0D4(a1);
      if (v5 >= v4)
      {
        v9 = sub_2977FB720(a1);
        if (v4)
        {
          v10 = sub_2977FB720(a2);
          v11 = sub_2977FB7B8(a2);
          v9 = sub_2977FD844(v10, v11, v9);
        }

        sub_2977FB7B8(a1);
        nullsub_1();
        v12 = a1;
        v13 = v9;
      }

      else
      {
        v6 = v5;
        if (sub_2978059C8(a1) >= v4)
        {
          if (v6)
          {
            v14 = sub_2977FB720(a2);
            v15 = sub_2977FB720(a2);
            v16 = sub_2977FB720(a1);
            sub_2977FD844(v14, v15 + v6, v16);
          }
        }

        else
        {
          sub_2977FB720(a1);
          sub_2977FB7B8(a1);
          nullsub_1();
          v7 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v7);
          sub_2977FD5B8(a1, v4);
          v6 = 0;
        }

        v17 = sub_2977FB720(a2);
        v18 = sub_2977FB7B8(a2);
        v19 = sub_2977FB720(a1);
        sub_2978198E8((v17 + v6), v18, (v19 + v6));
        v13 = sub_2977FB720(a1) + v4;
        v12 = a1;
      }

      sub_2977FD5DC(v12, v13);
      sub_2977FD800(a2);
    }

    else
    {
      sub_2977FB720(a1);
      sub_2977FB7B8(a1);
      nullsub_1();
      if (!sub_2977FDA84(a1))
      {
        v8 = sub_2977FB720(a1);
        free(v8);
      }

      *a1 = *a2;
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_2978E91BC(_DWORD *a1, int a2, void *a3)
{
  sub_297829A88(a1, a2);
  sub_2978E4A98(v18);
  sub_297829B00(a3, v18);
  if (a2 > 3)
  {
    v9 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v10;
    sub_2978E9320(v9, &v14, v16);
    sub_2978E9330(v17, v16);
    v8 = a1 + 4;
  }

  else if (a2 == 1)
  {
    v11 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v12;
    sub_2978E9320(v11, &v14, v16);
    sub_2978E9330(v17, v16);
    v8 = a1 + 22;
  }

  else
  {
    v6 = sub_297829A2C(a3);
    v14 = sub_297801F10(v18);
    v15 = v7;
    sub_2978E9320(v6, &v14, v16);
    sub_2978E9330(v17, v16);
    if (a2 == 2)
    {
      v8 = a1 + 16;
    }

    else
    {
      v8 = a1 + 10;
    }
  }

  sub_2978E931C(v8, v17);
  sub_29782D764(v17);
  return sub_297801F60(v18);
}

void sub_2978E9380()
{
  v0 = sub_2978E937C();

  j__free(v0);
}

void sub_2978E93A8(void *a1)
{
  *a1 = &unk_2A1E58298;
  v2 = a1 + 2;
  sub_29782D694((a1 + 11));
  sub_29782D694((a1 + 8));
  sub_29782D694((a1 + 5));
  sub_29782D694(v2);

  nullsub_1();
}

__n128 sub_2978E9420(uint64_t a1, _DWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  *(a1 + 8) = *a3;
  return result;
}

uint64_t sub_2978E9434(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978E94DC(a1, a2);
  }

  else
  {
    sub_2978E9474(a1, a2);
    result = v3 + 32;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978E9474(uint64_t a1, uint64_t a2)
{
  sub_29784EF20(v6, a1, 1);
  nullsub_1();
  sub_2978E9580(a1, v4, a2);
  v7 += 32;
  return sub_297809E88(v6);
}

uint64_t sub_2978E94DC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_29782D8A4(a1);
  v5 = sub_29784ED48(a1, v4 + 1);
  v6 = sub_29782D8A4(a1);
  sub_29784EDC0(v10, v5, v6, a1);
  nullsub_1();
  sub_2978E9580(a1, v7, a2);
  v11 += 32;
  sub_29784EE38(a1, v10);
  v8 = a1[1];
  sub_2978E95C4(v10);
  return v8;
}

_DWORD *sub_2978E9594(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_297808AB4();
  return a1;
}

uint64_t *sub_2978E95C8(uint64_t *a1)
{
  sub_2978E961C(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_29784F124(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978E9628(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 32;
      nullsub_1();
      result = sub_29782D910(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

_DWORD *sub_2978E968C(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_297801F5C((a2 + 2));
  return a1;
}

uint64_t sub_2978E96C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = sub_2978E974C(a1);
  *v8 = &unk_2A1E582E8;
  v8[2] = a2;
  sub_297829178((v8 + 3), a3);
  sub_29780AE44(a1 + 32);
  sub_297802744(a1 + 40);
  *(a1 + 64) = *(a1 + 64) & 0xFE | a4;
  return a1;
}

void *sub_2978E974C(void *result)
{
  *result = &unk_2A1E54F90;
  result[1] = 0;
  return result;
}

void sub_2978E9770(uint64_t a1)
{
  *a1 = &unk_2A1E582E8;
  if (*(a1 + 64))
  {
    v2 = *(a1 + 16);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  std::string::~string((a1 + 40));
  sub_2978E980C(a1 + 32);
  sub_297829368(a1 + 24);

  nullsub_1();
}

void sub_2978E9814(uint64_t a1)
{
  sub_2978E9810(a1);

  j__free(v1);
}

uint64_t *sub_2978E983C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA198();
  v5 = *(a1 + 16);
  v6 = sub_2977FB720(a1 + 24);
  sub_2978E5B0C(v4, v5, a2, v6);

  return sub_2978E98AC((a1 + 32), v4);
}

uint64_t *sub_2978E98AC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978E9D9C(result, v3);
  }

  return result;
}

uint64_t sub_2978E98D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_297829A88(a1, a2);
  sub_2978E4A98(v37);
  sub_297829B00(a3, v37);
  sub_29781F238(v36, v37);
  v6 = sub_2977FB720(a1 + 24);
  sub_2978E9AD8(v36, a2, a3, v6);
  v7 = sub_2978E5CC0(*(a1 + 16));
  if (!sub_29780347C(a1 + 40))
  {
    v8 = sub_29780BB74(*(a1 + 16), a1 + 40);
    sub_297801F64(v8, ": ");
  }

  v9 = sub_297829A2C(a3);
  if (sub_297805430(v9))
  {
    v34 = sub_2977FB720(a1 + 32);
    v10 = *sub_297829A2C(a3);
    v11 = sub_29781F384(v36);
    v13 = v12;
    v14 = sub_2978E9CE0(a3);
    v16 = v15;
    v17 = sub_2978E9D10(a3);
    v19 = v18;
    v20 = sub_29782AB48(a3);
    sub_2978E4BAC(&v35, 0);
    *&v33 = v17;
    *(&v33 + 1) = v19;
    sub_2978E383C(v34, v10, a2, v11, v13, v14, v16, v21, v33, v20, v35);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = (*(sub_2977FB720(a1 + 24) + 4) >> 15) & 1;
    v24 = sub_2977FB720(a1 + 24);
    sub_2978E5D14(v22, a2, v23, (*(v24 + 4) >> 19) & 1);
    v25 = *(a1 + 16);
    v26 = sub_29781F384(v36);
    v28 = v27;
    v29 = sub_2978E5CC0(*(a1 + 16)) - v7;
    v30 = *(sub_2977FB720(a1 + 24) + 28);
    v31 = sub_2977FB720(a1 + 24);
    sub_2978E5F44(v25, a2 != 0, v26, v28, v29, v30, (*(v31 + 4) >> 15) & 1);
  }

  sub_29781ED10(*(a1 + 16));
  sub_29781F290(v36);
  return sub_297801F60(v37);
}

uint64_t sub_2978E9AD8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = *(a4 + 4);
  if ((v7 & 0x800) != 0)
  {
    if (sub_297829A20(a3) == 42)
    {

      return sub_297801F64(v6, " [-ferror-limit=]");
    }

    if (a2 == 4 && (v10 = sub_297829A20(a3), sub_29782CA7C(v10, v11)) && (v12 = sub_297829A20(a3), !sub_29782CB5C(v12)))
    {
      sub_297801F64(v6, " [-Werror");
      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    v13 = sub_297829A20(a3);
    v29 = sub_29782CFE0(v13);
    v30 = v14;
    result = sub_297806914(&v29);
    if ((result & 1) == 0)
    {
      if (v8)
      {
        v15 = ",";
      }

      else
      {
        v15 = " [";
      }

      v16 = sub_297801F64(v6, v15);
      if (a2 == 2)
      {
        v17 = "-R";
      }

      else
      {
        v17 = "-W";
      }

      v18 = sub_297801F64(v16, v17);
      sub_297801FA8(v18, v29, v30);
      v19 = sub_2977FB720(a3);
      v27 = sub_2978E9D40(v19);
      v28 = v20;
      result = sub_297806914(&v27);
      if ((result & 1) == 0)
      {
        v21 = sub_297801F64(v6, "=");
        result = sub_297801FA8(v21, v27, v28);
      }

      v8 = 1;
    }

    v7 = *(a4 + 4);
  }

  else
  {
    v8 = 0;
  }

  if ((v7 & 0x6000) != 0)
  {
    v22 = sub_297829A20(a3);
    result = sub_29782C6E4(v22);
    if (result)
    {
      v23 = result;
      if (v8)
      {
        v24 = ",";
      }

      else
      {
        v24 = " [";
      }

      sub_297801F64(v6, v24);
      if ((*(a4 + 4) & 0x6000) == 0x2000)
      {
        sub_297801FA0(v6, v23);
      }

      else
      {
        v25 = sub_29782C9CC(v23);
        sub_297801FA8(v6, v25, v26);
      }

      return sub_2978028D8(v6, 93);
    }
  }

  if (v8)
  {
    return sub_2978028D8(v6, 93);
  }

  return result;
}

uint64_t sub_2978E9D9C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978E9DCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978E974C(a1);
  sub_2978E9ED4(v4 + 2);
  *a1 = &unk_2A1E58338;
  *(a1 + 16) = &unk_2A1E58390;
  *(a1 + 24) = a2;
  *(a1 + 32) = sub_2978D6920(a2);
  *(a1 + 40) = sub_2978E9EF4(*(a1 + 24));
  v5 = sub_2977FA198();
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  sub_2978E9EFC();
  sub_2977FDEF4();
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  sub_2978E9F00(a1 + 88);
  sub_29783F914(a1 + 184, 0);
  sub_29783F914(a1 + 208, 0);
  sub_2978E9F04(*(a1 + 24));
  if (sub_2978E9F10(*(a1 + 24)))
  {
    v6 = sub_29782AD78(*(a1 + 24));
    sub_29783F9DC(a1, v6);
  }

  return a1;
}

void sub_2978E9F24(uint64_t a1)
{
  *a1 = &unk_2A1E58338;
  *(a1 + 16) = &unk_2A1E58390;
  *(a1 + 72) = 0;
  sub_2978EA004(a1);
  sub_2978E9F04(*(a1 + 24));
  if (*(a1 + 40) == 1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      (*(*v2 + 16))(v2);
    }
  }

  sub_29783FD60(a1 + 208);
  sub_29783FD60(a1 + 184);
  sub_2978EA1F0(a1 + 88);
  sub_2978EA1F4(a1 + 48);
  nullsub_1();

  nullsub_1();
}

void sub_2978EA004(uint64_t a1)
{
  v2 = sub_2978E9EF4(*(a1 + 24));
  v3 = sub_2978E9F04(*(a1 + 24));
  sub_297829374(*(a1 + 24), *(a1 + 32), 0);
  v4 = *(a1 + 72);
  if (v4)
  {
    if (!*(a1 + 84))
    {
      sub_2978295E8(*(a1 + 24), 458, v18);
      sub_2978EB0E0(v18);
      sub_29782963C(v18);
      ++*(a1 + 12);
      *(a1 + 84) = 1;
      v4 = *(a1 + 72);
    }

    v5 = *(a1 + 24);
    v6 = sub_2977FB720(a1 + 48);
    v7 = *(a1 + 12) + sub_2978EB0EC(v5, v4, v6, a1 + 88);
  }

  else
  {
    v8 = *(a1 + 24);
    sub_2977FB720(a1 + 48);
    v9 = sub_2978DD3D4();
    sub_2977FB720(a1 + 48);
    v10 = sub_2978E9334();
    LODWORD(v8) = sub_2978EB214(v8, 0, v9, v10, "error");
    v11 = *(a1 + 24);
    sub_2977FB720(a1 + 48);
    v12 = sub_2978E934C();
    sub_2977FB720(a1 + 48);
    v13 = sub_2978E9354();
    LODWORD(v12) = sub_2978EB214(v11, 0, v12, v13, "warn") + v8;
    v14 = *(a1 + 24);
    sub_2977FB720(a1 + 48);
    v15 = sub_2978E936C();
    sub_2977FB720(a1 + 48);
    v16 = sub_2978E9374();
    v7 = v12 + sub_2978EB214(v14, 0, v15, v16, "note") + *(a1 + 12);
  }

  *(a1 + 12) = v7;
  sub_2978E9F04(*(a1 + 24));
  sub_297829374(*(a1 + 24), v3, v2);
  v17 = sub_2977FA198();
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  v17[3] = 0u;
  v17[4] = 0u;
  v17[5] = 0u;
  v17[6] = 0u;
  sub_2978E9EFC();
  sub_2978EB438((a1 + 48), v17);
  sub_2978EB450((a1 + 88));
}

void sub_2978EA204(uint64_t a1)
{
  sub_2978EA1F8(a1);

  j__free(v1);
}

uint64_t sub_2978EA234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 80);
  *(a1 + 80) = v5 + 1;
  if (a3 && !v5)
  {
    *(a1 + 56) = a3;
    *(a1 + 64) = a2;
    v6 = sub_29781F408(a3);
    sub_29783F9DC(a1, v6);
    sub_29787C980(a3, a1 + 16);
  }

  v7 = *(**(a1 + 32) + 24);

  return v7();
}

void sub_2978EA2D8(uint64_t a1)
{
  (*(**(a1 + 32) + 32))(*(a1 + 32));
  v2 = *(a1 + 80) - 1;
  *(a1 + 80) = v2;
  if (!v2)
  {
    v3 = *(a1 + 56);
    if (v3)
    {
      sub_29787C9AC(v3, a1 + 16);
    }

    sub_2978EA004(a1);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }
}

uint64_t sub_2978EA350(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (sub_2978EA40C(a3))
  {
    if (*(a1 + 72))
    {
      result = sub_29782AB48(a3);
      if (result != *(a1 + 72))
      {
        return result;
      }
    }

    v6 = sub_29782AB48(a3);
    sub_29783F9DC(a1, v6);
  }

  v7 = *(*sub_2977FB720(a1 + 48) + 56);

  return v7();
}

uint64_t sub_2978EA414(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v5 = sub_29781F408(a2);
  v6 = *(a1 + 72);
  if (v6)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = v5;
    v9 = sub_2977FB5F0(&v26);
    v10 = sub_297841788(v8, v9, 0);
    v11 = sub_297847BE0(&v26);
    v12 = sub_297841788(v8, v11, 0);
    sub_2977FB7C0(v25, v10, v12 - v10);
    if (!sub_297806914(v25))
    {
      v13 = sub_2978044F0(v25, 0x5Cu, 0);
      if (v13 == -1)
      {
        sub_2978EA68C(v25[0], v25[1], a1 + 88, v8, a2, v9, (a1 + 84));
      }

      else
      {
        v14 = v13;
        sub_297802744(&v24);
        v15 = sub_2977FB7B8(v25);
        std::string::reserve(&v24, v15);
        v16 = 0;
        do
        {
          if (v14 == sub_2977FB7B8(v25))
          {
            break;
          }

          v17 = sub_297805EA4(v25, v16, v14 - v16);
          sub_29780435C(&v24, v17, v18);
          v16 = v14 + 1;
          if (sub_297803A20(v25, v14 + 1) == 10 || sub_297803A20(v25, v14 + 1) == 13)
          {
            if (v14 + 2 < sub_2977FB7B8(v25) && (sub_297803A20(v25, v14 + 2) == 10 || sub_297803A20(v25, v14 + 2) == 13))
            {
              v19 = sub_297803A20(v25, v14 + 2);
              v16 = v19 == sub_297803A20(v25, v14 + 1) ? v14 + 2 : v14 + 3;
            }

            else
            {
              v16 = v14 + 2;
            }
          }

          else
          {
            sub_297804334(&v24, 92);
          }

          v14 = sub_2978044F0(v25, 0x5Cu, v16);
        }

        while (v14 != -1);
        v20 = sub_297805EA4(v25, v16, 0xFFFFFFFFFFFFFFFFLL);
        sub_29780435C(&v24, v20, v21);
        if (!sub_29780347C(&v24))
        {
          sub_2978044E8(v23, &v24);
          sub_2978EA68C(v23[0], v23[1], a1 + 88, v8, a2, v9, (a1 + 84));
        }

        std::string::~string(&v24);
      }
    }
  }

  return 0;
}

void sub_2978EA68C(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6, _DWORD *a7)
{
  v8 = a4;
  v74[0] = a6;
  if (a5)
  {
    v12 = sub_2977FD5B0(a5);
  }

  else
  {
    v12 = sub_2977FB7B8(a4);
  }

  v13 = v12;
  sub_2978EB7CC(v71, a1, a2);
  if (a3)
  {
    v14 = a3 + 72;
  }

  else
  {
    v14 = 0;
  }

  v15 = a3 + 48;
  if (!a3)
  {
    v15 = 0;
  }

  v56 = v14;
  v57 = v15;
  v16 = a3 + 24;
  if (!a3)
  {
    v16 = 0;
  }

  v58 = v16;
  while (!sub_2978EB7D0(v71))
  {
    sub_2977FB7B4(&v67, "expected");
    if (!sub_2978EB7E0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, 1))
    {
      break;
    }

    sub_2978EB8D8(v71);
    sub_2977FB7B4(&v67, "-");
    if (sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
    {
      sub_2978EB8D8(v71);
      sub_2977FB7B4(&v67, "error");
      v17 = a3;
      if (sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_) || (sub_2977FB7B4(&v67, "warning"), v17 = v58, sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_)) || (sub_2977FB7B4(&v67, "remark"), v17 = v57, sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_)) || (sub_2977FB7B4(&v67, "note"), v17 = v56, sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_)))
      {
        sub_2978EB8D8(v71);
        if (*a7 == 2)
        {
          sub_29782B128(v13, v74[0], 451, &v67);
          v18 = 0;
          goto LABEL_21;
        }

        *a7 = 3;
        if (!v17)
        {
          return;
        }

        sub_2977FB7B4(&v67, "-re");
        v19 = sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
        v20 = "string";
        if (v19)
        {
          sub_2978EB8D8(v71);
          v20 = "regex";
        }

        v59 = v20;
        sub_297829180(&v70);
        sub_2977FB7B4(&v67, "@");
        if (!sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
        {
          v27 = 0;
          v70 = v74[0];
          goto LABEL_43;
        }

        sub_2978EB8D8(v71);
        LODWORD(v64[0]) = 0;
        sub_2977FB7B4(&v67, "+");
        v21 = sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
        if (v21 || (sub_2977FB7B4(&v67, "-"), sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_)))
        {
          sub_2978EB8D8(v71);
          v67.__r_.__value_.__s.__data_[0] = 0;
          v22 = sub_2978420CC(v8, v74[0], &v67);
          if ((v67.__r_.__value_.__s.__data_[0] & 1) == 0)
          {
            v23 = v22;
            if (sub_2978EB978(v71, v64))
            {
              v24 = LODWORD(v64[0]) < v23 || v21;
              if (v24 == 1)
              {
                if (v21)
                {
                  v25 = v64[0];
                }

                else
                {
                  v25 = -LODWORD(v64[0]);
                }

                v26 = sub_29783E548(v8, v74[0]);
                v70 = sub_2978429C8(v8, v26, v25 + v23, 1);
              }
            }
          }

LABEL_38:
          v27 = 0;
LABEL_39:
          if (sub_297829730(&v70))
          {
            v28 = sub_297840FC8(v74, v72 - LODWORD(v71[0]));
            sub_29782B128(v13, v28, 455, &v67);
            sub_29783F028(&v67, v59);
            sub_29782963C(&v67);
          }

          else
          {
            sub_2978EB8D8(v71);
LABEL_43:
            sub_2978EB9E0(v71);
            v68 = 1;
            v69 = 1;
            if (!sub_2978EB978(v71, &v69))
            {
              sub_2977FB7B4(&v67, "+");
              if (!sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
              {
                v29 = 1;
                goto LABEL_60;
              }

              goto LABEL_50;
            }

            sub_2978EB8D8(v71);
            sub_2977FB7B4(&v67, "+");
            if (sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
            {
LABEL_50:
              v29 = 0xFFFFFFFFLL;
              v68 = -1;
LABEL_51:
              sub_2978EB8D8(v71);
LABEL_60:
              sub_2978EB9E0(v71);
              sub_2977FB7B4(&v67, "{{");
              if (sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
              {
                sub_2978EB8D8(v71);
                v33 = v72;
                sub_2977FB7B4(&v67, "{{");
                sub_2977FB7B4(&v61, "}}");
                if (sub_2978EBA30(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_))
                {
                  v53 = v8;
                  v54 = v13;
                  v34 = v73;
                  sub_2978EB8D8(v71);
                  sub_297802744(&v67);
                  sub_2977FB7B4(&v65, "\\n");
                  sub_2977FB7C0(v64, v33, v34 - v33);
                  v35 = sub_29780F620(v64, v65, v66, 0);
                  if (v35 != -1)
                  {
                    v36 = v35;
                    v37 = 0;
                    do
                    {
                      v38 = sub_297805EA4(v64, v37, v36 - v37);
                      sub_29780435C(&v67, v38, v39);
                      sub_297804334(&v67, 10);
                      v37 = sub_2977FB7B8(&v65) + v36;
                      v36 = sub_29780F620(v64, v65, v66, v37);
                    }

                    while (v36 != -1);
                  }

                  if (sub_29780347C(&v67))
                  {
                    sub_2978EBAFC(&v67, v33, v34);
                  }

                  v13 = v54;
                  if (v19 && sub_2978043B4(&v67, "{{", 0) == -1)
                  {
                    v52 = sub_297840FC8(v74, v33 - LODWORD(v71[0]));
                    sub_29782B128(v54, v52, 456, &v61);
                    sub_2978044E8(v63, &v67);
                    sub_2978295C0(&v61, v63[0], v63[1]);
                    sub_29782963C(&v61);
                    std::string::~string(&v67);
                    return;
                  }

                  v40 = v74[0];
                  v41 = v70;
                  sub_2978044E8(&v61, &v67);
                  sub_2978EB498(v19, v40, v41, v27, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_, v69, v29);
                  sub_2977FDEF4();
                  sub_297802744(&v61);
                  v42 = sub_2977FB720(&v62);
                  if ((*(*v42 + 16))(v42, &v61))
                  {
                    v63[0] = sub_2978058AC(&v62);
                    sub_29781B720(v17, v63);
                  }

                  else
                  {
                    v43 = sub_297840FC8(v74, v33 - LODWORD(v71[0]));
                    sub_29782B128(v54, v43, 450, v63);
                    v44 = sub_29783F028(v63, v59);
                    sub_2978044E8(v60, &v61);
                    sub_2978295C0(v44, v60[0], v60[1]);
                    sub_29782963C(v63);
                  }

                  v8 = v53;
                  std::string::~string(&v61);
                  sub_2978EBB50(&v62);
                  std::string::~string(&v67);
                }

                else
                {
                  v51 = sub_297840FC8(v74, v72 - LODWORD(v71[0]));
                  sub_29782B128(v13, v51, 453, &v67);
                  sub_29783F028(&v67, v59);
                  sub_29782963C(&v67);
                }
              }

              else
              {
                v50 = sub_297840FC8(v74, v72 - LODWORD(v71[0]));
                sub_29782B128(v13, v50, 457, &v67);
                sub_29783F028(&v67, v59);
                sub_29782963C(&v67);
              }
            }

            else
            {
              sub_2977FB7B4(&v67, "-");
              if (!sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
              {
                v29 = v69;
                v68 = v69;
                goto LABEL_60;
              }

              sub_2978EB8D8(v71);
              if (sub_2978EB978(v71, &v68))
              {
                v29 = v68;
                if (v68 >= v69)
                {
                  goto LABEL_51;
                }
              }

              v30 = sub_297840FC8(v74, v72 - LODWORD(v71[0]));
              sub_29782B128(v13, v30, 452, &v67);
              sub_29783F028(&v67, v59);
              sub_29782963C(&v67);
            }
          }
        }

        else
        {
          if (sub_2978EB978(v71, v64))
          {
            v27 = LODWORD(v64[0]);
            if (LODWORD(v64[0]))
            {
              v31 = sub_29783E548(v8, v74[0]);
              v32 = sub_2978429C8(v8, v31, v27, 1);
              v27 = 0;
              v70 = v32;
            }

            goto LABEL_39;
          }

          if (!a5 || (sub_2977FB7B4(&v67, ":"), !sub_2978EB7E0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, 0)))
          {
            v27 = 0;
            goto LABEL_39;
          }

          sub_2977FB7C0(&v67, v72, v73 - v72);
          sub_2978EB8D8(v71);
          v65 = 0;
          v45 = sub_29786A308(a5, v74[0], v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_, 0, 0, &v65, 0, 0, 0, 0);
          if (v45)
          {
            v46 = v45;
            LODWORD(v61.__r_.__value_.__l.__data_) = sub_297842538(v8, v45);
            if (sub_297829730(&v61))
            {
              sub_297863788(v8, v46, v74[0], 0, 0, 0);
            }

            if (sub_2978EB978(v71, v64) && LODWORD(v64[0]))
            {
              v47 = sub_2978424E4(v8, v46, LODWORD(v64[0]), 1);
              v27 = 0;
LABEL_86:
              v70 = v47;
              goto LABEL_39;
            }

            sub_2977FB7B4(&v61, "*");
            if (sub_2978EB8F0(v71, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_))
            {
              v27 = 1;
              v47 = sub_2978424E4(v8, v46, 1, 1);
              goto LABEL_86;
            }

            goto LABEL_38;
          }

          v48 = sub_297840FC8(v74, v72 - LODWORD(v71[0]));
          sub_29782B128(v13, v48, 454, &v61);
          v49 = sub_2978295C0(&v61, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_);
          sub_29783F028(v49, v59);
          sub_29782963C(&v61);
        }
      }

      else
      {
        sub_2977FB7B4(&v67, "no-diagnostics");
        if (sub_2978EB8F0(v71, v67.__r_.__value_.__l.__data_, v67.__r_.__value_.__l.__size_))
        {
          if (*a7 == 3)
          {
            sub_29782B128(v13, v74[0], 451, &v67);
            v18 = 1;
LABEL_21:
            sub_297863490(&v67, v18);
            sub_29782963C(&v67);
          }

          else
          {
            *a7 = 2;
          }
        }
      }
    }
  }
}

uint64_t sub_2978EB0EC(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2978DD3D4();
  v8 = sub_2978E9334();
  LODWORD(v7) = sub_2978EBF14(a1, a2, "error", a4, v7, v8);
  v9 = sub_2978E934C();
  v10 = sub_2978E9354();
  v11 = sub_2978EBF14(a1, a2, "warning", a4 + 24, v9, v10) + v7;
  v12 = sub_2978E935C();
  v13 = sub_2978E9364();
  LODWORD(v12) = sub_2978EBF14(a1, a2, "remark", a4 + 48, v12, v13);
  v14 = sub_2978E936C();
  v15 = sub_2978E9374();
  return v11 + v12 + sub_2978EBF14(a1, a2, "note", a4 + 72, v14, v15);
}

uint64_t sub_2978EB214(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a4;
  v33 = a3;
  if (sub_297808558(&v33, &v32))
  {
    return 0;
  }

  sub_297804E28(v31);
  sub_29781F238(v30, v31);
  v28[0] = v33;
  v29 = v32;
  while (sub_29780852C(v28, &v29))
  {
    sub_2978297B4();
    v10 = sub_297829730(v9);
    if (!a2 || v10)
    {
      sub_297801F64(v30, "\n  (frontend)");
    }

    else
    {
      sub_297801F64(v30, "\n ");
      sub_2978297B4();
      v12 = sub_29783E548(a2, *v11);
      v13 = sub_2978606D8(a2, v12);
      if (v13)
      {
        v14 = v13;
        v15 = sub_297801F64(v30, " File ");
        v16 = sub_2977FB720(v14);
        sub_297801F64(v15, v16);
      }

      v17 = sub_297801F64(v30, " Line ");
      sub_2978297B4();
      v19 = sub_2978421AC(a2, *v18, 0);
      sub_297801FA0(v17, v19);
    }

    v20 = sub_297801F64(v30, ": ");
    sub_2978297B4();
    sub_29780BB74(v20, v21 + 8);
    sub_2978E933C(v28);
  }

  sub_2978295E8(a1, 449, v28);
  v22 = sub_2978EB0E0(v28);
  v23 = sub_29783F028(v22, a5);
  v24 = sub_297863490(v23, 1u);
  v25 = sub_29781F384(v30);
  sub_2978295C0(v24, v25, v26);
  sub_29782963C(v28);
  v8 = sub_2978EC5AC(v33, v32);
  sub_29781F290(v30);
  sub_297801F60(v31);
  return v8;
}

uint64_t *sub_2978EB438(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978ECEB4(result, v3);
  }

  return result;
}

void sub_2978EB450(uint64_t *a1)
{
  sub_2978ECB74(a1);
  sub_2978ECB74(a1 + 3);
  sub_2978ECB74(a1 + 6);

  sub_2978ECB74(a1 + 9);
}

uint64_t sub_2978EB498(char a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a8;
  v9 = a7;
  v12 = a4;
  if (a1)
  {
    v24 = a7;
    v25 = a8;
    sub_297802744(&v29);
    v27 = a5;
    for (i = a6; !sub_297806914(&v27); i = v21)
    {
      sub_2977FB7B4(&v26, "{{");
      if (sub_297807C54(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_))
      {
        v27 = sub_2978187D4(&v27, 2uLL);
        i = v15;
        sub_2977FB7B4(&v26, "}}");
        v16 = sub_29780F620(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, 0);
        std::string::append(&v29, "(");
        v17 = sub_2977FB720(&v27);
        std::string::append(&v29, v17, v16);
        std::string::append(&v29, ")");
        v18 = v16 + 2;
      }

      else
      {
        sub_2977FB7B4(&v26, "{{");
        v18 = sub_29780F620(&v27, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_, 0);
        if (v18 == -1)
        {
          v18 = sub_2977FB7B8(&v27);
        }

        v19 = sub_297805EA4(&v27, 0, v18);
        sub_297809538(v19, v20, &v26);
        sub_2978044E4(&v29, &v26);
        std::string::~string(&v26);
      }

      v27 = sub_2978187D4(&v27, v18);
    }

    v22 = sub_2977FA198();
    sub_2978044E8(&v26, &v29);
    sub_2978EB6C0(v22, a2, a3, v12, a5, a6, v24, v25, v26.__r_.__value_.__l.__data_, v26.__r_.__value_.__l.__size_);
    std::string::~string(&v29);
  }

  else
  {
    v22 = sub_2977FA198();
    sub_2978EB6B4(v22, a2, a3, v12, a5, a6, v9, v8);
  }

  return v22;
}

void *sub_2978EB6D4(void *a1)
{
  v2 = sub_2978E974C(a1);
  *v2 = &unk_2A1E58298;
  v3 = (v2 + 11);
  sub_297809B88((v2 + 2));
  sub_297809B88((a1 + 5));
  sub_297809B88((a1 + 8));
  sub_297809B88(v3);
  return a1;
}

uint64_t sub_2978EB73C(uint64_t a1)
{
  v2 = sub_297809B88(a1);
  sub_297809B88(v2 + 24);
  sub_297809B88(a1 + 48);
  sub_297809B88(a1 + 72);
  return a1;
}

uint64_t sub_2978EB77C(uint64_t *a1)
{
  sub_2978EB450(a1);
  sub_29781B950((a1 + 9));
  sub_29781B950((a1 + 6));
  sub_29781B950((a1 + 3));

  return sub_29781B950(a1);
}

BOOL sub_2978EB7E0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v17[0] = a2;
  v17[1] = a3;
  while (1)
  {
    v7 = a1[1];
    v6 = a1[2];
    v8 = sub_2977FB720(v17);
    v9 = sub_2977FB728(v17);
    v10 = sub_2978EBBA4(v6, v7, v8, v9);
    a1[3] = v10;
    a1[4] = v10 + sub_2977FB7B8(v17);
    v11 = a1[3];
    v12 = a1[1];
    result = v11 != v12;
    if (v11 == v12 || a4 == 0)
    {
      break;
    }

    v15 = *a1;
    if (v11 == *a1)
    {
      return 1;
    }

    v16 = *(v11 - 1);
    if (sub_297850134(v16))
    {
      return 1;
    }

    if (v11 > v15 + 1 && (v16 == 47 || v16 == 42) && *(v11 - 2) == 47)
    {
      return 1;
    }

    if (!sub_2978EB8D8(a1))
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_2978EB8D8(void *a1)
{
  v1 = a1[4];
  a1[2] = v1;
  return v1 < a1[1];
}

BOOL sub_2978EB8F0(void *a1, uint64_t a2, uint64_t a3)
{
  v10[0] = a2;
  v10[1] = a3;
  v4 = a1[2];
  a1[3] = v4;
  v5 = sub_2977FB7B8(v10);
  a1[4] = v4 + v5;
  if ((v4 + v5) > a1[1])
  {
    return 0;
  }

  v7 = a1[3];
  v8 = sub_2977FB720(v10);
  v9 = sub_2977FB7B8(v10);
  return memcmp(v7, v8, v9) == 0;
}

uint64_t sub_2978EB978(void *a1, int *a2)
{
  v3 = a1[1];
  v2 = a1[2];
  a1[3] = v2;
  if (v2 >= v3)
  {
    return 0;
  }

  v4 = 0;
  v5 = v2;
  while (1)
  {
    v6 = *v5 - 48;
    if (v6 > 9)
    {
      break;
    }

    v4 = 10 * v4 + v6;
    a1[3] = ++v5;
    if (v5 == v3)
    {
      v5 = v3;
      break;
    }
  }

  if (v5 == v2)
  {
    return 0;
  }

  a1[4] = v5;
  *a2 = v4;
  return 1;
}

uint64_t sub_2978EB9E0(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16);
  if (v2 < v1)
  {
    v3 = result;
    do
    {
      result = sub_297850134(*v2);
      if (!result)
      {
        break;
      }

      *(v3 + 16) = ++v2;
    }

    while (v2 != v1);
  }

  return result;
}

uint64_t sub_2978EBA30(void *a1, const void *a2, size_t a3, const void *a4, size_t a5)
{
  v16 = a2;
  v17 = a3;
  v14 = a4;
  v15 = a5;
  v6 = a1[1];
  v5 = a1[2];
  a1[3] = v5;
  if (v5 < v6)
  {
    v8 = 1;
    do
    {
      sub_2977FB7C0(v13, v5, v6 - v5);
      if (sub_297807C54(v13, v16, v17))
      {
        ++v8;
        v9 = &v16;
      }

      else
      {
        if (!sub_297807C54(v13, v14, v15))
        {
          v10 = 1;
          goto LABEL_10;
        }

        if (!--v8)
        {
          v12 = a1[3];
          a1[4] = v12 + sub_2977FB7B8(&v14);
          return 1;
        }

        v9 = &v14;
      }

      v10 = sub_2977FB7B8(v9);
LABEL_10:
      v5 = a1[3] + v10;
      a1[3] = v5;
      v6 = a1[1];
    }

    while (v5 < v6);
  }

  return 0;
}

std::string *sub_2978EBAFC(std::string *a1, _BYTE *a2, _BYTE *a3)
{
  v6 = sub_2977FD5AC(a2, a3);
  sub_2978EBD9C(a1, a2, a3, v6);
  return a1;
}

uint64_t *sub_2978EBB54(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  *a1 = sub_2977FB720(v7);
  v4 = sub_2977FB728(v7);
  v5 = *a1;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v5;
  a1[4] = 0;
  return a1;
}

uint64_t sub_2978EBBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = a1;
  v10 = a2;
  if (a4 == a3)
  {
    v7 = &v11;
    v8 = &v11;
    return sub_2977FD958(v7, v8);
  }

  if (a2 - a1 < a4 - a3)
  {
    v7 = &v10;
    v8 = &v10;
    return sub_2977FD958(v7, v8);
  }

  return sub_2978EBC34(a1, a2, a3, a4, a5, a6, a7, a2 - a1, a4 - a3);
}

uint64_t sub_2978EBC34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a1;
  v10 = a1 + a8 - a9 + 1;
  if (v10 != a1)
  {
    v23 = a2;
    v16 = a3 + 1;
    v24 = a3 + 1;
    while (2)
    {
      while (1)
      {
        v17 = sub_297813268(a6, v9);
        v18 = sub_297813268(a7, a3);
        if (sub_2978EBD84(a5, v17, v18))
        {
          break;
        }

        if (++v9 == v10)
        {
          goto LABEL_10;
        }
      }

      v19 = v9 + 1;
      do
      {
        if (v16 == a4)
        {
          v25 = v9 + a9;
          v26 = v9;
          return sub_2977FD958(&v26, &v25);
        }

        v20 = sub_297813268(a6, v19);
        v21 = sub_297813268(a7, v16);
        ++v19;
        ++v16;
      }

      while ((sub_2978EBD84(a5, v20, v21) & 1) != 0);
      ++v9;
      v16 = v24;
      if (v9 != v10)
      {
        continue;
      }

      break;
    }

LABEL_10:
    v9 = v10;
    a2 = v23;
  }

  v26 = v9;
  sub_2977FE390(&v26, a2);
  return sub_2977FD958(&v26, &v26);
}

void sub_2978EBD9C(std::string *a1, _BYTE *a2, _BYTE *a3, unint64_t a4)
{
  v8 = sub_2978032A4(a1);
  v9 = sub_297818B9C(a1);
  v10 = a4 - v9;
  if (a4 > v9)
  {
    v11 = v9;
    v12 = sub_2978032A4(a1);
    sub_297818BD8(a1, v11, v10, v12, 0, v12, 0);
LABEL_4:
    nullsub_1();
    goto LABEL_5;
  }

  if (a4 > v8)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_2978033F0(a1);
  v14 = v13;
  while (a2 != a3)
  {
    sub_297803464(v14++, a2++);
  }

  v15 = 0;
  sub_297803464(v14, &v15);
  sub_297818C84(a1, a4);
  if (a4 < v8)
  {
    nullsub_1();
  }
}

uint64_t *sub_2978EBECC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return sub_2978EBEE4(result, v3);
  }

  return result;
}

uint64_t sub_2978EBEE4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 8))(a2);
  }

  return result;
}

uint64_t sub_2978EBF14(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_297809B88(v30);
  sub_2978EC1A0(v29, a5, a6);
  v28 = sub_29780A294();
  v27 = sub_297809B0C();
  while (sub_29780852C(&v28, &v27))
  {
    v11 = sub_2977FB720(&v28);
    v12 = *v11;
    v13 = sub_2978421AC(a2, *(*v11 + 12), 0);
    if (*(v12 + 44))
    {
      v14 = v13;
      v15 = 0;
      do
      {
        sub_29780AE44(&v26);
        sub_29780AE44(&v25);
        v26 = sub_29780A294();
        v25 = sub_297809B0C();
        while (sub_29780852C(&v26, &v25))
        {
          if ((*(v12 + 48) & 1) != 0 || (sub_2978297B4(), v14 == sub_2978421AC(a2, *v16, 0)))
          {
            v17 = *(v12 + 12);
            sub_2978297B4();
            if (sub_2978EC1A4(a2, v17, *v18))
            {
              sub_2978297B4();
              sub_2978044E8(v24, v19 + 8);
              if ((*(*v12 + 24))(v12, v24[0], v24[1]))
              {
                break;
              }
            }
          }

          sub_2978E933C(&v26);
        }

        if (sub_297808558(&v26, &v25))
        {
          if (v15 >= *(v12 + 40))
          {
            break;
          }

          v20 = sub_2977FB720(&v28);
          sub_29781B720(v30, v20);
        }

        else
        {
          sub_297809B4C();
          sub_2978EC274(v29, v24[0]);
        }

        ++v15;
      }

      while (v15 < *(v12 + 44));
    }

    sub_29781B504(&v28);
  }

  v21 = sub_2978EC2E0(a1, a2, v30, a3);
  v28 = sub_29780A294();
  sub_297809B4C();
  v26 = sub_297809B0C();
  sub_297809B4C();
  v22 = sub_2978EB214(a1, a2, v24[0], v27, a3);
  sub_29782D694(v29);
  sub_29781B950(v30);
  return (v22 + v21);
}

BOOL sub_2978EC1A4(_DWORD *a1, int a2, unsigned int a3)
{
  v9 = a3;
  if (sub_29783C26C(&v9))
  {
    do
    {
      v9 = sub_2978E4A28(a1, v9);
    }

    while ((sub_29783C26C(&v9) & 1) != 0);
  }

  if (sub_2978EC8CC(a1, a2, v9))
  {
    return 1;
  }

  v6 = sub_29783E548(a1, v9);
  v7 = sub_2978606D8(a1, v6);
  if (!v7 && sub_2978EC920(a1, a2))
  {
    return 1;
  }

  v8 = sub_29783E548(a1, a2);
  return v7 == sub_2978606D8(a1, v8);
}

uint64_t sub_2978EC274(void *a1, uint64_t a2)
{
  v6 = a2;
  v5 = sub_29787D70C();
  sub_2978EC664(&v6, &v5);
  v3 = sub_2978EC9C4();
  sub_2978EC96C(a1, v3);
  return sub_2978082EC();
}

uint64_t sub_2978EC2E0(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4)
{
  if (sub_297806904(a3))
  {
    return 0;
  }

  v29 = a1;
  v30 = a4;
  sub_297804E28(v34);
  sub_29781F238(v33, v34);
  v31[0] = sub_29780A294();
  v32 = sub_297809B0C();
  while (sub_29780852C(v31, &v32))
  {
    v9 = *sub_2977FB720(v31);
    v10 = sub_297801F64(v33, "\n  File ");
    v11 = sub_2978ECB14(a2, *(v9 + 12));
    sub_297801FA8(v10, v11, v12);
    if (*(v9 + 48) == 1)
    {
      sub_297801F64(v33, " Line *");
    }

    else
    {
      v13 = sub_297801F64(v33, " Line ");
      v14 = sub_2978421AC(a2, *(v9 + 12), 0);
      sub_297801FA0(v13, v14);
    }

    if (sub_297853F10((v9 + 8), (v9 + 12)))
    {
      v15 = sub_297801F64(v33, " (directive at ");
      v16 = sub_2978ECB14(a2, *(v9 + 8));
      v18 = sub_297801FA8(v15, v16, v17);
      v19 = sub_2978028D8(v18, 58);
      v20 = sub_2978421AC(a2, *(v9 + 8), 0);
      v21 = sub_297801FA0(v19, v20);
      sub_2978028D8(v21, 41);
    }

    v22 = sub_297801F64(v33, ": ");
    sub_29780BB74(v22, v9 + 16);
    sub_29781B504(v31);
  }

  sub_2978295E8(v29, 449, v31);
  v23 = sub_2978EB0E0(v31);
  v24 = sub_29783F028(v23, v30);
  v25 = sub_297863490(v24, 0);
  v26 = sub_29781F384(v33);
  sub_2978295C0(v25, v26, v27);
  sub_29782963C(v31);
  v8 = sub_29780BD00(a3);
  sub_29781F290(v33);
  sub_297801F60(v34);
  return v8;
}

uint64_t *sub_2978EC54C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  j_j_nullsub_1();
  v6 = sub_2978EC5AC(a2, a3);
  sub_2978EC5B0(a1, a2, a3, v6);
  return a1;
}

void sub_2978EC5B0(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  sub_2977FDEF4();
  sub_29780CD8C(v8, &v9);
  if (a4)
  {
    sub_2978EC69C(a1, a4);
    sub_2978EC700(a1, a2, a3, a4);
  }

  sub_29780CE64(&v9);
  j_nullsub_1();
}

uint64_t sub_2978EC638(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  return sub_2978EC664(&v3, &v4);
}

void sub_2978EC69C(uint64_t *a1, unint64_t a2)
{
  if (sub_29784EF8C() < a2)
  {
    sub_29780A05C();
  }

  v4 = sub_29784F024(a1, a2);
  *a1 = v4;
  a1[1] = v4;
  a1[2] = v4 + 32 * v5;

  nullsub_1();
}

uint64_t sub_2978EC700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29784EF20(v8, a1, a4);
  v9 = sub_2978EC768(a1, a2, a3, v9);
  return sub_297809E88(v8);
}

uint64_t sub_2978EC768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_2978E8CBC(a2, a3);
  v8 = v7;
  j_j_nullsub_1();
  v10 = sub_2978EC7DC(a1, v6, v8, v9);

  return sub_2977FD98C(a4, v10);
}

uint64_t sub_2978EC7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v13 = a4;
  sub_29780D0AC(&v10, a1, &v12, &v13);
  sub_29780D074(&v10, &v11);
  for (; a2 != a3; v13 += 32)
  {
    nullsub_1();
    sub_2978EC888(a1, v7, a2);
    a2 += 32;
  }

  sub_29780CE64(&v11);
  v8 = v13;
  j_nullsub_1();
  return v8;
}

uint64_t sub_2978EC89C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::basic_string((a1 + 8), (a2 + 8));
  return a1;
}

BOOL sub_2978EC8CC(_DWORD *a1, int a2, int a3)
{
  v7 = sub_29783E548(a1, a2);
  v6 = sub_29783E548(a1, a3);
  return sub_29782B07C(&v7, &v6);
}

BOOL sub_2978EC920(_DWORD *a1, int a2)
{
  v5 = sub_29783E548(a1, a2);
  v4 = sub_29786A6B0(a1);
  return sub_29782B07C(&v5, &v4);
}

void sub_2978EC96C(void *a1, uint64_t a2)
{
  sub_29782D8A4(a1);
  sub_29782D8B4(a1, a2);

  nullsub_1();
}

uint64_t sub_2978EC9E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  j_j_nullsub_1();
  v9 = sub_2978ECA74(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978ECA74(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v8 = a4;
  v9 = a2;
  if (a2 != a3)
  {
    v4 = a4;
    do
    {
      v6 = sub_29780E4F4(&v9);
      sub_2978ECAE4(v4, v6);
      v4 += 8;
      v8 = v4;
      v9 += 32;
    }

    while (v9 != a3);
  }

  return sub_2977FD958(&v9, &v8);
}

_DWORD *sub_2978ECAE4(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  sub_2978046C4((a1 + 2), (a2 + 2));
  return a1;
}

uint64_t sub_2978ECB14(_DWORD *a1, int a2)
{
  v3 = sub_29783E548(a1, a2);
  v4 = sub_2978606D8(a1, v3);
  if (v4)
  {
    v5 = sub_2977FB720(v4);
    sub_2977FB7B4(&v7, v5);
  }

  else
  {
    sub_297804560(&v7);
  }

  return v7;
}

void sub_2978ECB74(uint64_t *a1)
{
  v4 = sub_29780A294();
  v3 = sub_297809B0C();
  while (sub_29780852C(&v4, &v3))
  {
    v2 = *sub_2977FB720(&v4);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    sub_29781B504(&v4);
  }

  sub_29780C6B8(a1);
}

void *sub_2978ECC14(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  result = sub_2978ECC50(a1, a2, a3, a4, a5, a6, a7, a8);
  *result = &unk_2A1E583B8;
  return result;
}

uint64_t sub_2978ECC50(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v13[0] = a5;
  v13[1] = a6;
  *a1 = &unk_2A1E583E8;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  sub_297801F5C(v13);
  *(a1 + 40) = a7;
  *(a1 + 44) = a8;
  *(a1 + 48) = a4;
  return a1;
}

void sub_2978ECCCC()
{
  v0 = sub_2978ECCC8();

  j__free(v0);
}

BOOL sub_2978ECCFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  sub_2978044E8(v4, a1 + 16);
  return sub_29780F620(v5, v4[0], v4[1], 0) != -1;
}

uint64_t sub_2978ECD48(uint64_t a1)
{
  *a1 = &unk_2A1E583E8;
  std::string::~string((a1 + 16));
  return a1;
}

uint64_t sub_2978ECD8C(uint64_t a1, int a2, int a3, char a4, uint64_t a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v11 = sub_2978ECC50(a1, a2, a3, a4, a5, a6, a7, a8);
  *v11 = &unk_2A1E58418;
  sub_297809094((v11 + 56), a9, a10);
  return a1;
}

void sub_2978ECDF8()
{
  v0 = sub_2978ECDF4();

  j__free(v0);
}

uint64_t sub_2978ECE34(uint64_t a1)
{
  *a1 = &unk_2A1E58418;
  sub_2978090D4((a1 + 56));

  return sub_2978ECD48(a1);
}

uint64_t sub_2978ECEB4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*a2 + 16))(a2);
  }

  return result;
}

uint64_t sub_2978ECEE4(_DWORD *a1, int a2, void *a3)
{
  v26 = *MEMORY[0x29EDCA608];
  sub_297829A88(a1, a2);
  sub_2978E4A98(v20);
  sub_297829B00(a3, v20);
  sub_2978ED098(v21);
  v18 = sub_297801F10(v20);
  v19 = v6;
  sub_297801F5C(&v18);
  sub_2978046C4(v21, v17);
  std::string::~string(v17);
  v22 = *sub_297829A2C(a3);
  v25 = a2;
  v17[0].__r_.__value_.__r.__words[0] = sub_2978E9CE0(a3);
  v17[0].__r_.__value_.__l.__size_ = v7;
  v8 = sub_2977FB720(v17);
  v9 = sub_29782AB50(v17);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v11 = *v8;
      LODWORD(v19) = *(v8 + 8);
      v18 = v11;
      sub_297829818(&v23, &v18);
      ++a1[10];
      v8 += 12;
    }

    while (v8 != v10);
  }

  v18 = sub_2978E9D10(a3);
  v19 = v12;
  v13 = sub_2977FB720(&v18);
  v14 = sub_29782AB60(&v18);
  if (v13 != v14)
  {
    v15 = v14;
    do
    {
      sub_29782BCDC(v17, v13);
      sub_2978298D4(v24, v17);
      ++a1[11];
      sub_29782AC18(v17);
      v13 += 56;
    }

    while (v13 != v15);
  }

  sub_2978ED09C((a1 + 4), v21);
  sub_2978ED0A0(v21);
  return sub_297801F60(v20);
}

void sub_2978ED0E4()
{
  v0 = sub_2978ED0E0();

  j__free(v0);
}

uint64_t sub_2978ED10C(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297829180((v2 + 24));
  sub_2978ED14C(a1 + 32);
  sub_2978ED150(a1 + 80);
  return a1;
}

void sub_2978ED164(std::string *a1)
{
  sub_2978ED1A8(&a1[3].__r_.__value_.__l.__size_);
  sub_2977FD134(&a1[1].__r_.__value_.__l.__size_);

  std::string::~string(a1);
}

void sub_2978ED1AC(uint64_t *a1)
{
  sub_2978DFC1C(a1);
  sub_2978ED1F8(a1, *a1);

  nullsub_1();
}

uint64_t sub_2978ED1F8(uint64_t result, uint64_t a2)
{
  v3 = result;
  for (i = *(result + 8); i != a2; result = sub_2978ED254(v3, v5))
  {
    i -= 224;
    nullsub_1();
  }

  *(v3 + 8) = a2;
  return result;
}

void sub_2978ED260(void *a1)
{
  *a1 = &unk_2A1E58448;
  sub_2978ED2B4((a1 + 2));

  nullsub_1();
}

uint64_t sub_2978ED2B8(uint64_t a1)
{
  sub_2977FDEF4();
  sub_2978ED2F8(&v3);
  return a1;
}

uint64_t *sub_2978ED2F8(uint64_t **a1)
{
  result = *a1;
  if (*result)
  {
    sub_2978ED1AC(result);
    nullsub_1();
    v3 = *a1;
    v4 = *v3;
    v5 = sub_2978ED368(v3);

    return sub_297809C98(v3, v4, v5);
  }

  return result;
}

uint64_t sub_2978ED390(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2978ED438(a1, a2);
  }

  else
  {
    sub_2978ED3D0(a1, a2);
    result = v3 + 224;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2978ED3D0(uint64_t a1, uint64_t a2)
{
  sub_2978ED4DC(v6, a1, 1);
  nullsub_1();
  sub_2978ED4E0(a1, v4, a2);
  v7 += 224;
  return sub_297809E88(v6);
}

uint64_t sub_2978ED438(uint64_t *a1, uint64_t a2)
{
  v4 = sub_2978DFC1C(a1);
  v5 = sub_2978EDC88(a1, v4 + 1);
  v6 = sub_2978DFC1C(a1);
  sub_2978EDD00(v10, v5, v6, a1);
  nullsub_1();
  sub_2978ED4E0(a1, v7, a2);
  v11 += 224;
  sub_2978EDD04(a1, v10);
  v8 = a1[1];
  sub_2978EDDE8(v10);
  return v8;
}

void *sub_2978ED4E4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  v3 = *(a2 + 8);
  result[1] = v3;
  result[2] = v3 + 224 * a3;
  return result;
}

uint64_t sub_2978ED50C(uint64_t a1, uint64_t a2)
{
  v4 = std::string::basic_string(a1, a2);
  LODWORD(v4[1].__r_.__value_.__l.__data_) = *(a2 + 24);
  sub_2978ED560(&v4[1].__r_.__value_.__l.__size_, a2 + 32);
  sub_2978ED564(a1 + 80, a2 + 80);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t sub_2978ED568(uint64_t a1, void *a2)
{
  sub_29782BE20(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978ED5B0(a1, a2);
  }

  return a1;
}

uint64_t sub_2978ED5B0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = sub_29782B90C(a2);
    v5 = sub_29782B90C(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v8 = sub_2978ED754();
      }

      else
      {
        v8 = sub_2977FB720(a1);
      }

      v15 = v8;
      sub_2977FB7B8(a1);
      nullsub_1();
      v14 = a1;
      v13 = v15;
    }

    else
    {
      v6 = v5;
      if (sub_29782C67C(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_2978ED754();
        }
      }

      else
      {
        sub_2977FB720(a1);
        sub_2977FB7B8(a1);
        nullsub_1();
        v7 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v7);
        sub_29782BBD4(a1, v4);
        v6 = 0;
      }

      v9 = 3 * v6;
      v10 = (sub_2977FB720(a2) + 12 * v6);
      v11 = sub_2977FB7B8(a2);
      v12 = sub_2977FB720(a1);
      sub_297807F80(v10, v11, (v12 + 4 * v9));
      v13 = sub_2977FB720(a1) + 12 * v4;
      v14 = a1;
    }

    sub_2977FD5DC(v14, v13);
  }

  return a1;
}

uint64_t sub_2978ED774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  j_j_nullsub_1();
  v9 = sub_2978ED804(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978ED814(const void *a1, uint64_t a2, char *a3)
{
  v7 = a2;
  v4 = a2 - a1;
  sub_2978ED878(a3, a1, 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 2));
  v6 = &a3[v4];
  return sub_2977FD958(&v7, &v6);
}

void *sub_2978ED878(void *result, const void *a2, uint64_t a3)
{
  if (a3)
  {
    return memmove(result, a2, 12 * a3 - 3);
  }

  return result;
}

void *sub_2978ED890(void *a1, void *a2)
{
  sub_29782B99C(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978ED8D8(a1, a2);
  }

  return a1;
}

void *sub_2978ED8D8(void *a1, void *a2)
{
  if (a1 != a2)
  {
    v4 = sub_29782B950(a2);
    v5 = sub_29782B950(a1);
    if (v5 >= v4)
    {
      if (v4)
      {
        sub_2977FB720(a2);
        sub_2977FB720(a2);
        sub_2977FB720(a1);
        v10 = sub_2978EDA84();
      }

      else
      {
        v10 = sub_2977FB720(a1);
      }

      v16 = v10;
      v17 = sub_2977FB7B8(a1);
      sub_29782ABD4(v16, v17);
      v15 = a1;
      v14 = v16;
    }

    else
    {
      v6 = v5;
      if (sub_29782BCE0(a1) >= v4)
      {
        if (v6)
        {
          sub_2977FB720(a2);
          sub_2977FB720(a2);
          sub_2977FB720(a1);
          sub_2978EDA84();
        }
      }

      else
      {
        v7 = sub_2977FB720(a1);
        v8 = sub_2977FB7B8(a1);
        sub_29782ABD4(v7, v8);
        v9 = sub_2977FB720(a1);
        sub_2977FD5DC(a1, v9);
        sub_29782BBE4(a1, v4);
        v6 = 0;
      }

      v11 = sub_2977FB720(a2);
      v12 = sub_2977FB7B8(a2);
      v13 = sub_2977FB720(a1);
      sub_2978EDAA0(v11 + 56 * v6, v12, v13 + 56 * v6);
      v14 = sub_2977FB720(a1) + 56 * v4;
      v15 = a1;
    }

    sub_2977FD5DC(v15, v14);
  }

  return a1;
}

uint64_t sub_2978EDAA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_2977FD8FC(a1, a2);
  v7 = v6;
  j_j_nullsub_1();
  v9 = sub_2978EDB38(&v14, v5, v7, v8);
  v11 = v10;
  v14 = sub_2977FD988(a1, v9);
  v13 = sub_2977FD98C(a3, v11);
  return sub_2977FD958(&v14, &v13);
}

uint64_t sub_2978EDB38(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  for (i = a2; i != a3; a4 += 56)
  {
    sub_2978EDBA4(a4, i);
    i = (i + 56);
  }

  v8 = a4;
  v9 = i;
  return sub_2977FD958(&v9, &v8);
}

uint64_t sub_2978EDBA4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = v4;
  std::string::operator=((a1 + 24), a2 + 1);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t sub_2978EDC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a1;
  if (a1 != a2)
  {
    v4 = a1;
    do
    {
      if (sub_2977FD678())
      {
        break;
      }

      sub_29782BCDC(v6, v4);
      v4 += 56;
      v6 += 56;
      v7 = v4;
    }

    while (v4 != a2);
  }

  sub_2977FD680(&v8, &v7, &v6);
  return v8;
}

unint64_t sub_2978EDC88(void *a1, unint64_t a2)
{
  v4 = sub_2978EDDEC();
  if (v4 < a2)
  {
    sub_29780A05C();
  }

  v5 = v4;
  if (sub_2978ED368(a1) < v4 >> 1)
  {
    return *sub_29780338C();
  }

  return v5;
}

void sub_2978EDD04(uint64_t *a1, uint64_t *a2)
{
  nullsub_1();
  v4 = a2[1] + *a1 - a1[1];
  nullsub_1();
  v6 = v5;
  nullsub_1();
  v8 = v7;
  nullsub_1();
  sub_2978EDF10(a1, v6, v8, v9);
  a2[1] = v4;
  a1[1] = *a1;
  sub_2977FDE84(a1, a2 + 1);
  sub_2977FDE84(a1 + 1, a2 + 2);
  sub_2977FDE84(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_2978DFC1C(a1);

  nullsub_1();
}

uint64_t sub_2978EDDEC()
{
  v2 = sub_2978EDE28();
  v1 = sub_297803390();
  return *sub_297802578(&v2, &v1);
}

uint64_t *sub_2978EDE40(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v6 = sub_2978EDE94(a4, a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 + 224 * a3;
  *a1 = v6;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v6 + 224 * a2;
  return a1;
}

uint64_t sub_2978EDEBC(uint64_t a1, unint64_t a2)
{
  if (sub_2978EDE28(a1) < a2)
  {
    sub_29780339C();
  }

  return sub_2978EDF04();
}

void sub_2978EDF10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  sub_29780D0AC(&v9, a1, &v11, &v12);
  sub_29780D074(&v9, &v10);
  if (a2 != a3)
  {
    v7 = a2;
    do
    {
      nullsub_1();
      sub_2978EDFC8(a1, v8, v7);
      v7 += 224;
      v12 += 224;
    }

    while (v7 != a3);
  }

  sub_29780CE64(&v10);
  sub_2978EDFCC(a1, a2, a3);
  j_nullsub_1();
}

uint64_t sub_2978EDFCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      nullsub_1();
      result = sub_2978ED254(v5, v6);
      v4 += 224;
    }

    while (v4 != a3);
  }

  return result;
}

uint64_t sub_2978EE038(uint64_t a1, uint64_t a2)
{
  v4 = sub_297808AB4();
  *(v4 + 24) = *(a2 + 24);
  sub_2978EE08C(v4 + 32, a2 + 32);
  sub_2978EE090(a1 + 80, a2 + 80);
  *(a1 + 216) = *(a2 + 216);
  return a1;
}

void *sub_2978EE094(void *a1, void *a2)
{
  sub_29782BE20(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978EE0DC(a1, a2);
  }

  return a1;
}

void *sub_2978EE0DC(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29782B90C(a2);
      v5 = sub_29782B90C(a1);
      if (v5 >= v4)
      {
        v9 = sub_2977FB720(a1);
        if (v4)
        {
          sub_2977FB720(a2);
          sub_2977FB7B8(a2);
          v9 = sub_2978EE2D8();
        }

        sub_2977FB7B8(a1);
        nullsub_1();
        v10 = a1;
        v11 = v9;
      }

      else
      {
        v6 = v5;
        if (sub_29782C67C(a1) >= v4)
        {
          if (v6)
          {
            sub_2977FB720(a2);
            sub_2977FB720(a2);
            sub_2977FB720(a1);
            sub_2978EE2D8();
          }
        }

        else
        {
          sub_2977FB720(a1);
          sub_2977FB7B8(a1);
          nullsub_1();
          v7 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v7);
          sub_29782BBD4(a1, v4);
          v6 = 0;
        }

        v12 = 3 * v6;
        v13 = (sub_2977FB720(a2) + 12 * v6);
        v14 = sub_2977FB7B8(a2);
        v15 = sub_2977FB720(a1);
        sub_2978198E8(v13, v14, (v15 + 4 * v12));
        v11 = sub_2977FB720(a1) + 12 * v4;
        v10 = a1;
      }

      sub_2977FD5DC(v10, v11);
      sub_2977FD800(a2);
    }

    else
    {
      sub_2977FB720(a1);
      sub_2977FB7B8(a1);
      nullsub_1();
      if (!sub_2977FDA84(a1))
      {
        v8 = sub_2977FB720(a1);
        free(v8);
      }

      *a1 = *a2;
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

void *sub_2978EE2DC(void *a1, void *a2)
{
  sub_29782B99C(a1, 2u);
  if (!sub_297806904(a2))
  {
    sub_2978EE324(a1, a2);
  }

  return a1;
}

void *sub_2978EE324(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (sub_2977FDA84(a2))
    {
      v4 = sub_29782B950(a2);
      v5 = sub_29782B950(a1);
      if (v5 >= v4)
      {
        v13 = sub_2977FB720(a1);
        if (v4)
        {
          v14 = sub_2977FB720(a2);
          v15 = sub_2977FB7B8(a2);
          v13 = sub_2978EE528(v14, v15, v13);
        }

        v16 = sub_2977FB7B8(a1);
        sub_29782ABD4(v13, v16);
        v17 = a1;
        v18 = v13;
      }

      else
      {
        v6 = v5;
        if (sub_29782BCE0(a1) >= v4)
        {
          if (v6)
          {
            v19 = sub_2977FB720(a2);
            v20 = (sub_2977FB720(a2) + 56 * v6);
            v21 = sub_2977FB720(a1);
            sub_2978EE528(v19, v20, v21);
          }
        }

        else
        {
          v7 = sub_2977FB720(a1);
          v8 = sub_2977FB7B8(a1);
          sub_29782ABD4(v7, v8);
          v9 = sub_2977FB720(a1);
          sub_2977FD5DC(a1, v9);
          sub_29782BBE4(a1, v4);
          v6 = 0;
        }

        v22 = sub_2977FB720(a2);
        v23 = 56 * v6;
        v24 = sub_2977FB7B8(a2);
        v25 = sub_2977FB720(a1);
        sub_29782BD2C(v22 + v23, v24, v25 + v23);
        v18 = sub_2977FB720(a1) + 56 * v4;
        v17 = a1;
      }

      sub_2977FD5DC(v17, v18);
      sub_297829890(a2);
    }

    else
    {
      v10 = sub_2977FB720(a1);
      v11 = sub_2977FB7B8(a1);
      sub_29782ABD4(v10, v11);
      if (!sub_2977FDA84(a1))
      {
        v12 = sub_2977FB720(a1);
        free(v12);
      }

      *a1 = *a2;
      a1[2] = a2[2];
      sub_297864DF8(a2);
    }
  }

  return a1;
}

uint64_t sub_2978EE528(__int128 *a1, __int128 *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_2978697E8(a3, v5);
      v5 = (v5 + 56);
      a3 += 56;
    }

    while (v5 != a2);
  }

  return a3;
}

uint64_t *sub_2978EE580(uint64_t *a1)
{
  sub_2978EE5D4(a1);
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[4];
    v4 = sub_2978EE5DC(a1);
    sub_297809C98(v3, v2, v4);
  }

  return a1;
}

uint64_t sub_2978EE608(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *(v4 + 32);
      *(v4 + 16) = v2 - 224;
      nullsub_1();
      result = sub_2978ED254(v5, v6);
      v2 = *(v4 + 16);
    }

    while (v2 != a2);
  }

  return result;
}

void *sub_2978EE66C(void *a1, uint64_t a2)
{
  result = sub_2978EE6A0(a1, a2);
  *result = &unk_2A1E58498;
  return result;
}

void *sub_2978EE6A0(void *a1, uint64_t a2)
{
  *a1 = &unk_2A1E584B8;
  a1[1] = a2;
  sub_29780AE44((a1 + 2));
  sub_29780AE44((a1 + 3));
  sub_2978EE858((a1 + 4));
  sub_29780AE44((a1 + 9));
  v3 = sub_2977FA198();
  sub_297883278(v3);
  sub_297885A90(&v5, v3);
  sub_297849864(a1 + 9, &v5);
  sub_2978853DC(&v5);
  return a1;
}

void *sub_2978EE73C(void *a1)
{
  *a1 = &unk_2A1E584B8;
  v2 = a1 + 2;
  sub_2978853DC((a1 + 9));
  sub_2978EE85C((a1 + 4));
  sub_2978EE860((a1 + 3));
  sub_2978EE864(v2);
  return a1;
}

void sub_2978EE7A4()
{
  v0 = sub_2978EE7A0();

  j__free(v0);
}

void sub_2978EE7CC(std::string *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_297802744(&v8);
  std::string::reserve(v5, 0xFF0uLL);
  sub_29783E51C();
  sub_2977FDEF4();
  v6 = sub_29783E520(v7);
  sub_2978EE850(a1, v6);
  sub_29787B7E0(a1, a3);
  sub_29781F160(v7);
  std::string::~string(&v8);
}

void sub_2978EE86C(void *a1)
{
  v1 = sub_2978EE868(a1);

  j__free(v1);
}

uint64_t sub_2978EE894(uint64_t a1)
{
  v2 = sub_29780AE44(a1);
  sub_29780AE44(v2 + 8);
  sub_29780AE44(a1 + 16);
  sub_29780AE44(a1 + 24);
  sub_29780AE44(a1 + 32);
  return a1;
}

uint64_t sub_2978EE8DC(uint64_t a1)
{
  sub_29787B7D4(a1 + 32);
  sub_2978EE930(a1 + 24);
  sub_2978EE934(a1 + 16);
  sub_2978EE938(a1 + 8);

  return sub_2978853D8(a1);
}

uint64_t sub_2978EE93C(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 56);

  return sub_2977FD5B0(v1);
}

uint64_t sub_2978EE970(uint64_t a1, uint64_t a2)
{
  sub_297829174(&v4, a2);
  sub_297849864((a1 + 32), &v4);
  return sub_2978853D8(&v4);
}

void sub_2978EE9BC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFBA4(result, v3);
  }
}

void sub_2978EE9DC(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFBD8(result, v3);
  }
}

void sub_2978EE9F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2977FA198();
  v5 = sub_2977FB7B8(a1);
  v6 = sub_2978EEAD8(a1);
  v7 = sub_2978D65C8(a1);
  sub_2978B6700(v4, v5, v6, a2, v7);
  sub_2978EEAC0((a1 + 16), v4);
  v8 = sub_2977FA198();
  v9 = sub_2978D65C8(a1);
  v10 = sub_2978D65BC(a1);
  sub_2978CFB94(v8, v9, v10);

  sub_2978EEAE0((a1 + 24), v8);
}

void sub_2978EEAC0(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFC0C(result, v3);
  }
}

void sub_2978EEAE0(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFC40(result, v3);
  }
}

uint64_t sub_2978EEAF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = off_2A1A902E8;
  if ((*off_2A1A902E8(&off_2A1A902E8) & 1) == 0)
  {
    v64 = sub_2977FA198();
    sub_297804140(v64);
    v65 = off_2A1A902D0(&off_2A1A902D0);
    sub_2977FDEF4();
    _tlv_atexit(sub_2978EF0E4, v65);
    *v6(&off_2A1A902E8) = 1;
  }

  v7 = off_2A1A90318;
  if ((*off_2A1A90318(&off_2A1A90318) & 1) == 0)
  {
    v66 = sub_2977FA198();
    v67 = off_2A1A902D0(&off_2A1A902D0);
    sub_2977FB720(v67);
    sub_2978036E4();
    sub_297811450(v66, v81);
    v68 = off_2A1A90300();
    sub_2977FDEF4();
    _tlv_atexit(sub_2978EF0E8, v68);
    *v7(&off_2A1A90318) = 1;
  }

  v8 = off_2A1A90348;
  if ((*off_2A1A90348(&off_2A1A90348) & 1) == 0)
  {
    v69 = sub_2977FA198();
    v70 = off_2A1A90300();
    v71 = sub_2977FB720(v70);
    v72 = sub_2978EF0EC(v69, v71);
    sub_2978EF0F0(v72);
    v73 = off_2A1A90330(&off_2A1A90330);
    _tlv_atexit(sub_2978EF0F4, v73);
    *v8(&off_2A1A90348) = 1;
  }

  v9 = off_2A1A90378;
  if ((*off_2A1A90378(&off_2A1A90378) & 1) == 0)
  {
    v74 = sub_2977FA198();
    v75 = sub_2978EF0F8(v74);
    sub_2978EF0FC(v75);
    v76 = off_2A1A90360(&off_2A1A90360);
    _tlv_atexit(sub_2978EF100, v76);
    *v9(&off_2A1A90378) = 1;
  }

  sub_2977FA198();
  sub_2978EE734();
  sub_2977FDEF4();
  if (*(a1 + 112) == 1)
  {
    v10 = sub_2977FA198();
    sub_2978E9F20(v10, a2);
    sub_297829374(a2, v10, 1);
  }

  v11 = sub_2977FB720(a3);
  v12 = sub_2977FA198();
  v13 = sub_2977FB720(a3);
  v14 = sub_2978DCC60(v13);
  sub_29783F9E4(v12, a2, v14, 0);
  sub_297829178(v80, v12);
  sub_2978EE970(v11, v80);
  sub_2978853D8(v80);
  v15 = sub_2977FB720(a3);
  v16 = sub_2977FA198();
  sub_29783C7D0(v16);
  sub_2978EE9D4(v15, v16);
  v17 = sub_2977FB720(a3);
  v18 = sub_2978D6928(v17);
  sub_29783C7C0(v18, 1);
  v19 = sub_2977FB720(a3);
  v20 = sub_2978D6928(v19);
  *v20 &= ~1uLL;
  v21 = sub_2977FB720(a3);
  v22 = sub_2978EEAD8(v21);
  sub_2978CE2A4(v22, 1);
  sub_2978EF104(v81);
  v23 = off_2A1A902D0(&off_2A1A902D0);
  v24 = sub_2977FB720(v23);
  v25 = sub_2977FB720(v81);
  std::string::operator=(v25, v24);
  v26 = sub_2977FA198();
  sub_2977FB7B4(v79, "/");
  sub_2978EF140(v26, v79[0], v79[1]);
  sub_297829178(v79, v26);
  v27 = sub_2977FA198();
  sub_297829174(v78, v79);
  v28 = sub_2977FB720(a3);
  v29 = sub_2978DCC94(v28);
  v30 = sub_2977FB720(a3);
  v31 = sub_2978D6928(v30);
  v32 = off_2A1A90330(&off_2A1A90330);
  v33 = sub_2977FB720(v32);
  sub_29784AD9C(v27, v78, v29, a2, v31, v33);
  sub_29784AE84(v78);
  v34 = sub_2977FB720(a3);
  v35 = sub_2977FA198();
  v36 = sub_2977FA198();
  sub_2978EF144();
  sub_297829178(v77, v36);
  v37 = sub_2977FB720(a3);
  v38 = sub_2978D6928(v37);
  v39 = sub_2977FB720(a3);
  v40 = sub_2978DCC94(v39);
  v41 = off_2A1A90360(&off_2A1A90360);
  v42 = sub_2977FB720(v41);
  sub_29787B590(v35, v77, a2, v38, v40, v27, v42, 0, 1, 0);
  sub_2978EE9B4(v34, v35);
  sub_29787B7D8(v77);
  v43 = sub_2977FB720(a3);
  v44 = sub_2978D65C8(v43);
  v45 = sub_2977FB720(a3);
  v46 = sub_2978EEAD8(v45);
  sub_2978EF148(v44, v46);
  v47 = sub_2977FB720(a3);
  v48 = sub_2977FA198();
  v49 = sub_2977FB720(a3);
  v50 = sub_2978D65C8(v49);
  v51 = sub_2978BE260(v50);
  sub_2978EF150(v48, v51);
  sub_2978EE968(v47, v48);
  v52 = sub_2977FB720(a3);
  v53 = sub_2978D65C8(v52);
  v54 = sub_2977FB720(a3);
  sub_2978EEAD8(v54);
  v55 = sub_2977FB720(v32);
  sub_2978EE7CC(v53, v56, v55);
  v57 = sub_2977FB720(a3);
  v58 = sub_2978D65C8(v57);
  v59 = sub_2978BE260(v58);
  v60 = sub_2977FB720(a3);
  v61 = sub_2978EF154(v60);
  sub_2978D7B7C(v59, v61);
  v62 = sub_2977FB720(a3);
  sub_2978EE9F4(v62, a2);
  sub_29784AE84(v79);
  return sub_297847E24(v81);
}

uint64_t sub_2978EF15C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22[3] = *MEMORY[0x29EDCA608];
  if (!sub_2978034A0((a2 + 8), "-"))
  {
    sub_2978EEAF8(a2, a3, v19);
    if (sub_29780347C(a2 + 8))
    {
      sub_2978295E8(a3, 4727, v18);
      v8 = v18;
    }

    else
    {
      v10 = sub_2977FB720(v19);
      v11 = sub_2978DCC60(v10);
      v12 = sub_2977FB720(v19);
      v13 = sub_2978DCC94(v12);
      sub_2978044E8(v22, a2 + 8);
      v14 = sub_29782E354(v11, v22[0], v22[1], 0, 1);
      if (v14)
      {
        v15 = v14;
        sub_297829180(v22);
        v16 = sub_297863788(v13, v15, v22[0], 0, 0, 0);
        sub_2978EF498(v13, v16);
        sub_2978055E4(a4, v19);
        return sub_2978D5CE4(v19);
      }

      sub_2978295E8(a3, 409, v22);
      sub_2978044E8(v17, a2 + 8);
      sub_2978295C0(v22, v17[0], v17[1]);
      v8 = v22;
    }

    sub_29782963C(v8);
    sub_29780AE44(a4);
    return sub_2978D5CE4(v19);
  }

  sub_297804D58();
  if (sub_2977FB5F8(v22))
  {
    j_nullsub_1();
    sub_2978055E4(&v20, v7);
    sub_2978EF358(a2, a3, &v20, a4);
    sub_29780548C(&v20);
  }

  else
  {
    sub_2978295E8(a3, 410, v21);
    sub_29782963C(v21);
    sub_29780AE44(a4);
  }

  return sub_29780A9E0();
}

void *sub_2978EF358@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_2978EEAF8(a1, a2, a4);
  v7 = sub_2977FB720(a4);
  v8 = sub_2978DCC94(v7);
  if (*(a1 + 104))
  {
    v9 = sub_2977FB720(a4);
    v10 = sub_2978DCC60(v9);
    v11 = sub_2977FB720(a3);
    v12 = (*(*v11 + 16))(v11);
    sub_2977FB7B4(v19, v12);
    v13 = sub_29782E718(v10, v19[0], v19[1], 0, 0);
    sub_297829180(v19);
    v14 = sub_297863788(v8, v13, v19[0], 0, 0, 0);
    sub_2978EF498(v8, v14);
    v15 = sub_2978058AC(a3);
    return sub_2978408E0(v8, v13, v15, 0);
  }

  else
  {
    v17 = sub_2978058AC(a3);
    sub_297829180(v19);
    v18 = sub_29787BEA0(v8, v17, 0, 0, 0, v19[0]);
    return sub_2978EF498(v8, v18);
  }
}

uint64_t sub_2978EF4A0@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v6 = "#abc// expected-error{{}} \n";
  }

  else
  {
    v6 = " // Begin \n";
  }

  sub_2977FB7B4(v27, v6);
  sub_2977FB7B4(v24, "Empty");
  sub_297804A04(v27[0], v27[1], v24[0], v24[1], 0);
  sub_2977FDEF4();
  sub_2978EF658(v27);
  v28 = a2;
  sub_2978055E4(&v25, v29);
  sub_2978EF358(v27, a1, &v25, v26);
  sub_29780548C(&v25);
  v7 = sub_2977FB720(v26);
  v8 = sub_2978D65C8(v7);
  sub_29787BD50(v8);
  if (a2)
  {
    v9 = sub_2977FB720(v26);
    v10 = sub_2978EE93C(v9);
    v11 = sub_2978D6920(v10);
    v12 = sub_2977FB720(v26);
    v13 = sub_2978D6928(v12);
    v14 = sub_2977FB720(v26);
    v15 = sub_2978D65C8(v14);
    (*(*v11 + 24))(v11, v13, v15);
    sub_29784FB00(v24);
    v16 = sub_2977FB720(v26);
    v17 = sub_2978D65C8(v16);
    sub_29787C4FC(v17, v24);
    v18 = sub_2977FB720(v26);
    v19 = sub_2978EE93C(v18);
    v20 = sub_2978D6920(v19);
    (*(*v20 + 32))(v20);
  }

  v21 = sub_2977FB720(v26);
  v22 = sub_29787CC6C(v21);
  sub_2978CFBC8(v22);
  sub_2978055E4(a3, v26);
  sub_2978D5CE4(v26);
  sub_2978EF65C(v27);
  return sub_29780548C(v29);
}

void *sub_2978EF660(uint64_t a1)
{
  result = sub_297847BE8(a1);
  *result = &unk_2A1E584D8;
  return result;
}

void sub_2978EF698(uint64_t a1)
{
  v1 = sub_2978EF694(a1);

  j__free(v1);
}

void *sub_2978EF6E0(uint64_t a1)
{
  result = sub_2978EF718(a1, 0);
  *result = &unk_2A1E58608;
  return result;
}

uint64_t sub_2978EF718(uint64_t result, char a2)
{
  *result = &unk_2A1E55730;
  *(result + 8) = a2;
  *(result + 9) = 0;
  return result;
}

void sub_2978EF744()
{
  j_j_nullsub_1_130();

  j__free(v0);
}

uint64_t sub_2978EF7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[0] = a2;
  v5[1] = a3;
  sub_29782916C(a1);
  sub_297801F5C(v5);
  sub_297809B88(a1 + 32);
  sub_297809B88(a1 + 56);
  sub_297802744(a1 + 80);
  sub_297802744(a1 + 104);
  sub_297802744(a1 + 128);
  *(a1 + 152) &= 0xFCu;
  *(a1 + 156) = 0x28DE8000093A80;
  *(a1 + 168) = 0;
  sub_2978EF854(a1 + 176);
  sub_2978EF854(a1 + 632);
  sub_297809B88(a1 + 1088);
  *(a1 + 1112) = *(a1 + 1112) & 0x80 | 7;
  return a1;
}

uint64_t sub_2978EF858(uint64_t a1)
{
  v2 = sub_2978EF888();
  sub_297809B88(v2 + 432);
  return a1;
}

uint64_t sub_2978EF88C(uint64_t a1)
{
  v2 = sub_29787B54C(a1);
  sub_2978C0EE0(v2 + 408);
  return a1;
}

uint64_t sub_2978EF8BC(uint64_t a1)
{
  v2 = sub_29782916C(a1);
  sub_297809B88((v2 + 2));
  sub_297809B88(a1 + 32);
  sub_297809B88(a1 + 56);
  *(a1 + 80) = *(a1 + 80) & 0xFC | 1;
  sub_297802744(a1 + 88);
  sub_297809B88(a1 + 112);
  *(a1 + 136) = 0;
  *(a1 + 138) = 0;
  sub_2978C0EE0(a1 + 144);
  v5 = 0;
  v4 = 1;
  sub_29787B53C(a1 + 168, &v5, &v4);
  sub_297802744(a1 + 176);
  sub_297802744(a1 + 200);
  *(a1 + 224) = 1;
  sub_297809B88(a1 + 232);
  sub_297809B88(a1 + 256);
  *(a1 + 280) = 0;
  *(a1 + 284) = 0;
  sub_29780AE44(a1 + 288);
  return a1;
}

void *sub_2978EF984(void *a1, uint64_t a2)
{
  v4 = sub_297879A1C(a1);
  sub_29782916C(v4 + 2);
  *a1 = &unk_2A1E557D0;
  a1[2] = a2;
  a1[3] = sub_29787F3CC();
  return a1;
}

uint64_t sub_2978EF9E4(uint64_t a1)
{
  *a1 = 2;
  sub_297802744(a1 + 8);
  sub_297809B88(a1 + 32);
  sub_297802744(a1 + 56);
  sub_297802744(a1 + 80);
  *(a1 + 104) = 0;
  *(a1 + 112) = 256;
  return a1;
}

uint64_t sub_2978EFA38(uint64_t a1)
{
  std::string::~string((a1 + 80));
  std::string::~string((a1 + 56));
  sub_297809B8C(a1 + 32);
  std::string::~string((a1 + 8));
  return a1;
}

void sub_2978EFB00(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFB18(result, v3);
  }
}

void sub_2978EFB18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29787CE6C(a2);

    j__free(v2);
  }
}

void sub_2978EFBA4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29787B7DC(a2);

    j__free(v2);
  }
}

void sub_2978EFBD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_29785617C(a2);

    j__free(v2);
  }
}

void sub_2978EFC0C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978B6778(a2);

    j__free(v2);
  }
}

void sub_2978EFC40(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978CFBC4(a2);

    j__free(v2);
  }
}

void sub_2978EFCA0(std::string **result, std::string *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFCB8(result, v3);
  }
}

void sub_2978EFCB8(int a1, std::string *this)
{
  if (this)
  {
    std::string::~string(this);

    j__free(v2);
  }
}

void sub_2978EFD18(std::string **result, std::string *a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    sub_2978EFD30(result, v3);
  }
}

void sub_2978EFD30(int a1, std::string *this)
{
  if (this)
  {
    j_std::string::~string(this);

    j__free(v2);
  }
}

void *sub_2978EFD64()
{
  result = off_2A1A90330(&off_2A1A90330);
  *result = v1;
  return result;
}

uint64_t sub_2978EFDB8(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return sub_2978EFDD0(result);
  }

  return result;
}

void *sub_2978EFDF4()
{
  result = off_2A1A90360(&off_2A1A90360);
  *result = v1;
  return result;
}

uint64_t sub_2978EFE48(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    return sub_2978EFE60(result);
  }

  return result;
}

uint64_t sub_2978EFE84@<X0>(uint64_t a1@<X8>)
{
  v6[3] = *MEMORY[0x29EDCA608];
  sub_2978EFF14(v6, 1);
  v2 = sub_2977FD5B0(v6);
  sub_2978EFF18(v2);
  v3 = sub_29782C270(v6);
  sub_297849EE0();
  sub_297849EA0(v4, v3, a1);
  return sub_29782C280(v6);
}

uint64_t sub_2978EFF1C(uint64_t a1, uint64_t a2)
{
  j_j_nullsub_1();
  *(v4 + 8) = a2;
  *(a1 + 16) = sub_2978EFF64();
  return a1;
}

uint64_t sub_2978EFF68(uint64_t a1, unint64_t a2)
{
  if (sub_2978EFFB0(a1) < a2)
  {
    sub_29780339C();
  }

  return sub_2978EFFB4();
}

void *sub_2978EFFCC(void *a1)
{
  v2 = sub_297849440(a1, 0);
  *v2 = &unk_2A1E58648;
  sub_29784A00C((v2 + 3), &v6);
  sub_297849EE0();
  sub_297849EE0();
  sub_2978F0040(&v5, v3);
  return a1;
}

void sub_2978F0048()
{
  v0 = sub_2978F0044();

  j__free(v0);
}

uint64_t sub_2978F0074(uint64_t a1)
{
  sub_297849EE0();
  j_j_nullsub_1();
  sub_29784A00C(a1 + 24, v2);
  nullsub_1();
  return sub_297809C98(&v5, v3, 1);
}

uint64_t sub_2978F00CC(uint64_t a1, uint64_t a2)
{
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return sub_2978F00F0(a2);
}

uint64_t sub_2978F00F4(uint64_t a1)
{
  v2 = sub_297802744(a1);
  sub_297802744(v2 + 24);
  sub_297802744(a1 + 48);
  sub_297802744(a1 + 72);
  sub_297802744(a1 + 96);
  sub_297809B88(a1 + 120);
  sub_297809B88(a1 + 144);
  return a1;
}

void sub_2978F014C(std::__shared_weak_count *a1, uint64_t a2)
{
  a1->__vftable = &unk_2A1E58648;
  sub_29784A00C(&a1[1], a2);

  std::__shared_weak_count::~__shared_weak_count(a1);
}

uint64_t sub_2978F01A0()
{
  sub_297849EE0();
  sub_297849EE0();
  return sub_2978F01E0(&v2, v0);
}

void sub_2978F01F0(std::string *a1)
{
  sub_297809B8C(&a1[6]);
  sub_297809B8C(&a1[5]);
  std::string::~string(a1 + 4);
  std::string::~string(a1 + 3);
  std::string::~string(a1 + 2);
  std::string::~string(a1 + 1);

  std::string::~string(a1);
}

uint64_t sub_2978F0254(uint64_t a1, int a2)
{
  v4 = off_2A1A903A8();
  if (*v4)
  {
    v5 = v4;
    sub_2978089E0();
    v6 = off_2A1A90390();
    *v6 = v7;
    *v5 = 0;
  }

  else
  {
    v6 = off_2A1A90390();
  }

  v8 = sub_2977FA198();
  sub_2978294BC(v8);
  sub_297829178(v18, v8);
  v9 = sub_2977FA198();
  sub_2978F03C4();
  sub_297829178(&v17, v9);
  v10 = *v6;
  v11 = sub_2977FB720(&v17);
  *(v11 + 4) = *(v11 + 4) & 0xFFFFFFFFFFFF7FFFLL | ((v10 & 1) << 15);
  if (a2)
  {
    v12 = sub_2977FA198();
    sub_2978F03C8();
  }

  else
  {
    v12 = sub_2977FA198();
    v13 = sub_2977FB720(&v17);
    sub_2978E976C(v12, a1, v13, 0);
  }

  v14 = sub_2977FA198();
  v15 = sub_2977FB720(&v17);
  sub_297829294(v14, v18, v15, v12, 1);
  sub_2977FDEF4();
  sub_297829368(&v17);
  return sub_29782936C(v18);
}

BOOL sub_2978F03CC(uint64_t a1, uint64_t a2)
{
  v4[13] = *MEMORY[0x29EDCA608];
  sub_2978F0454(v4, a1, a2);
  sub_2978F049C(v4, 0, 0);
  v2 = sub_2978F0458(v4);
  sub_2978F0498(v4);
  return v2;
}

BOOL sub_2978F0458(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    return sub_29782B694(v3) == 0;
  }

  return result;
}

uint64_t sub_2978F049C(void *a1, char a2, char a3)
{
  result = sub_29780B1BC(a1 + 5);
  if (result)
  {
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978D65C8(v7);
    v9 = sub_2977FB720((a1 + 5));
    v10 = sub_29787CC6C(v9);
    v11 = sub_2977FB720((a1 + 5));
    v12 = sub_2978D65BC(v11);
    sub_29787BD50(v8);
    if ((a2 & 1) == 0)
    {
      sub_2978F0F1C(a1);
    }

    sub_2978F0D8C(a1);
    sub_2978CFBC8(v10);
    sub_2978B6A00(v12);
    sub_2978D5AB0(v10);
    if ((a3 & 1) == 0)
    {
      v13 = sub_2977FB720((a1 + 3));
      sub_2978044E8(&v25, a1[1] + 80);
      sub_2978AFB24(v13, v25, v26);
      v14 = sub_2977FB720((a1 + 5));
      v15 = sub_2977FB7B8(v14);
      v25 = sub_2978D7E90(v15);
      v26 = v16;
      v17 = sub_2977FB720(&v25);
      v18 = sub_2978130B8(&v25);
      if (v17 != v18)
      {
        v19 = v18;
        do
        {
          v20 = *v17++;
          v21 = sub_2977FB720((a1 + 3));
          sub_2978AF854(v21, v20);
        }

        while (v17 != v19);
      }
    }

    sub_2978B6D78(v12);
    if (sub_2978F0458(a1))
    {
      v22 = sub_2977FB720((a1 + 5));
      v23 = sub_2977FB7B8(v22);
      v25 = sub_2978D7E90(v23);
      v26 = v24;
      sub_2977FB720(&v25);
      sub_2978130B8(&v25);
    }

    sub_2978F1210(a1);
    return sub_2978F0E34(a1);
  }

  return result;
}

BOOL sub_2978F0610(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[13] = *MEMORY[0x29EDCA608];
  sub_2978055E4(v7, a2);
  sub_2978F06B4(v8, a1, a3, v7);
  sub_29780548C(v7);
  sub_2978F049C(v8, 0, 0);
  v5 = sub_2978F0458(v8);
  sub_2978F0498(v8);
  return v5;
}

uint64_t sub_2978F06C0(uint64_t a1)
{
  v2 = sub_29782916C(a1);
  sub_297802744((v2 + 10));
  sub_297802744(a1 + 64);
  sub_297809B88(a1 + 88);
  sub_297809B88(a1 + 112);
  *(a1 + 4) = *(a1 + 4) & 0xFFFFFFFFFFFF8000 | 0xF0;
  sub_2978F0764(a1, 0);
  *(a1 + 4) &= ~0x8000uLL;
  sub_2978F0778(a1, 0);
  *(a1 + 4) &= 0xFFF0FFFFuLL;
  *(a1 + 12) = xmmword_2978FC3C0;
  *(a1 + 28) = *(a1 + 32) << 32;
  return a1;
}

void *sub_2978F078C(void *a1)
{
  v2 = sub_2978E974C(a1);
  *v2 = &unk_2A1E58448;
  sub_297809B88((v2 + 2));
  a1[5] = 0;
  return a1;
}

void *sub_2978F07D8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2977FA198();
  sub_297883D24(v6);
  sub_2977FDEF4();
  a1[1] = a2;
  a1[2] = a3;
  sub_297804560((a1 + 3));
  sub_2977FB720(a1);
  sub_2978EF15C(a2, a1[2], (a1 + 5));
  sub_29783CEF0((a1 + 6));
  if (sub_29780B1BC(a1 + 5))
  {
    v7 = sub_2977FA198();
    sub_2978F08C4(v7, a1[2]);
    sub_2978F0880(a1 + 3);
  }

  return a1;
}

uint64_t sub_2978F0880(uint64_t *a1)
{
  sub_2978F08C8(v3);
  sub_29782F71C(v3, a1);
  return sub_297847E24(v3);
}

void *sub_2978F08CC(void *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2977FDEF4();
  v4 = sub_2977FA198();
  j_j_nullsub_1();
  sub_2978F0950(v4, a2);
  a1[1] = v4;
  sub_2978058AC(&v6);
  nullsub_1();
  sub_2978F0954(&v6);
  return a1;
}

void *sub_2978F0958(void *a1, uint64_t a2)
{
  result = sub_297849440(a1, 0);
  *result = &unk_2A1E58680;
  result[3] = a2;
  return result;
}

void sub_2978F09A4(std::__shared_weak_count *a1)
{
  j_std::__shared_weak_count::~__shared_weak_count(a1);

  j__free(v1);
}

void sub_2978F09D4()
{
  j_j_nullsub_1();
  nullsub_1();
  sub_297809D24(&v1, v0);
}

void sub_2978F0A24(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_2978F0A58(a2);

    j__free(v2);
  }
}

uint64_t sub_2978F0A5C(uint64_t a1)
{
  sub_29781B854(a1 + 168);

  return sub_2978F0A98(a1);
}

uint64_t sub_2978F0A9C(uint64_t a1)
{
  sub_2978F0AE0(a1, a1 + 24);
  sub_297818154(a1 + 24);

  return sub_2978F0AE4(a1);
}

void *sub_2978F0AE8(void *result)
{
  if (result[2])
  {
    v1 = result;
    sub_2978B3444();
    v1[2] = v2;

    return sub_2977FE390(v2, v2);
  }

  return result;
}

uint64_t sub_2978F0B38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_2978F0B78(a1);
    sub_2978B3444();
    nullsub_1();
  }

  return a1;
}

uint64_t sub_2978F0B78(uint64_t result)
{
  if (*(result + 16))
  {
    v1 = result;
    v2 = sub_2978B3408();
    v3 = sub_2978F0C30();

    return sub_2978F0BD0(v1, v2, v3);
  }

  return result;
}

uint64_t sub_2978F0BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  if (sub_29781550C(&v6, &v5))
  {
    sub_2978F0C74(a1, v6);
  }

  return v5;
}

uint64_t sub_2978F0C30()
{
  sub_2978B3444();
  sub_2978B3444();
  sub_2977FDEF4();
  return v1;
}

void sub_2978F0C74(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_2978B3534(a1, &v2);
  sub_29781F404();
}

void sub_2978F0CD0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978F0A24(a1, v3);
  }
}

uint64_t sub_2978F0CE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2978F0D20();
  *(v4 + 160) = a2;
  sub_29781BBD0(v4 + 168);
  return a1;
}

uint64_t sub_2978F0D24(uint64_t a1)
{
  v2 = sub_2978F0D54();
  sub_297817C28(v2 + 24);
  return a1;
}

uint64_t sub_2978F0D60(uint64_t a1)
{
  j_nullsub_1();
  *(a1 + 16) = v2;
  return a1;
}

uint64_t sub_2978F0D8C(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    v4 = sub_2977FB720(a1 + 40);
    v5 = sub_2978D6928(v4);
    v6 = sub_2977FB720(a1 + 40);
    v7 = sub_2978D65C8(v6);
    v8 = *(*v3 + 24);

    return v8(v3, v5, v7);
  }

  return result;
}

uint64_t sub_2978F0E34(uint64_t a1)
{
  result = sub_29780B1BC((a1 + 40));
  if (result)
  {
    v3 = sub_2978D6920(*(a1 + 16));
    (*(*v3 + 32))(v3);
    v4 = *(*sub_2978D6920(*(a1 + 16)) + 40);

    return v4();
  }

  return result;
}

uint64_t sub_2978F0ED0(uint64_t a1)
{
  sub_2977FD134(a1 + 48);
  sub_2978D5CE4(a1 + 40);
  sub_297847E24(a1 + 24);

  return sub_2978DADD0(a1);
}

uint64_t sub_2978F0F1C(void *a1)
{
  if (!sub_297806904((a1[1] + 32)) || (result = sub_297806904(a1 + 6), (result & 1) == 0))
  {
    v3 = sub_2977FB720((a1 + 5));
    v4 = sub_2978D65C8(v3);
    v5 = sub_2977FB720((a1 + 5));
    v6 = sub_2978D65BC(v5);
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978DCC60(v7);
    v9 = sub_2977FB720((a1 + 5));
    v10 = sub_2978DCC94(v9);
    v11 = sub_2977FA198();
    sub_2978F13B0(v11, v4);
    sub_29787CBDC(v4, v11);
    sub_2978B69EC(v6);
    sub_2978F13B4(v33);
    if (!sub_297806904(a1 + 6))
    {
      v12 = sub_2977FB720((a1 + 6));
      v13 = sub_2977FB7B8((a1 + 6));
      if (v12 != v13)
      {
        v14 = v13;
        do
        {
          v15 = *v12;
          v16 = v12[1];
          v12 += 2;
          sub_2977FB7B4(&v31, "Prelude");
          v17 = sub_297804A04(v15, v16, v31, v32, 0);
          sub_297829180(&v27);
          LODWORD(v31) = sub_29787BEA0(v10, v17, 0, 0, 0, v27);
          sub_297803988(v33, &v31);
        }

        while (v12 != v14);
      }
    }

    if (sub_297806904((a1[1] + 32)) || (v30 = sub_29780A294(), v29 = sub_297809B0C(), !sub_29780852C(&v30, &v29)))
    {
LABEL_11:
      v31 = sub_29783CEF4(v33);
      v32 = v21;
      v27 = sub_29783CF24(v33);
      v28 = v22;
      while (sub_29783CF54(&v31, &v27))
      {
        v23 = *sub_2978F13B8(&v31);
        sub_297829180(&v30);
        sub_29787229C(v4, v23, 0, v30);
        sub_2978F13C4(&v31);
      }

      v31 = sub_29783CEF4(v33);
      v32 = v24;
      v25 = sub_2978F13B8(&v31);
      sub_2978F13D4(v11, *v25);
    }

    else
    {
      while (1)
      {
        v18 = sub_2977FB720(&v30);
        sub_2978044E8(&v31, v18);
        v19 = sub_29782E354(v8, v31, v32, 0, 1);
        if (!v19)
        {
          break;
        }

        v20 = v19;
        sub_297829180(&v27);
        LODWORD(v31) = sub_297863788(v10, v20, v27, 0, 0, 0);
        sub_297803988(v33, &v31);
        sub_2978297A4(&v30);
        if (!sub_29780852C(&v30, &v29))
        {
          goto LABEL_11;
        }
      }

      sub_2978295E8(a1[2], 409, &v31);
      v26 = sub_2977FB720(&v30);
      sub_2978044E8(&v27, v26);
      sub_2978295C0(&v31, v27, v28);
      sub_29782963C(&v31);
    }

    return sub_2977FD134(v33);
  }

  return result;
}

void sub_2978F1210(uint64_t a1)
{
  if (!sub_29780347C(*(a1 + 8) + 56))
  {
    sub_297802744(&v21);
    v2 = sub_2978037C8();
    sub_29781EBDC(v20, v2, &v21, 0);
    if (sub_29780347C(&v21))
    {
      v3 = sub_2977FB720(a1 + 40);
      v4 = sub_2977FB7B8(v3);
      v19[0] = sub_2978D7E90(v4);
      v19[1] = v5;
      v6 = sub_2977FB720(v19);
      v7 = sub_2978130B8(v19);
      if (v6 != v7)
      {
        v8 = v7;
        do
        {
          v17 = sub_2978A479C(*v6);
          v18 = v9;
          v10 = sub_2977FB720(&v17);
          for (i = sub_2978130B8(&v17); v10 != i; ++v10)
          {
            v12 = *v10;
            if (sub_297887D40(*v10))
            {
              v13 = sub_29788709C(v12);
              v15 = sub_297801FA8(v20, v13, v14);
              sub_297801F64(v15, " ");
            }
          }

          ++v6;
        }

        while (v6 != v8);
      }

      sub_29781EE2C(v20);
    }

    else
    {
      sub_2978295E8(*(a1 + 16), 427, v19);
      sub_2978044E8(&v17, *(a1 + 8) + 56);
      v16 = sub_2978295C0(v19, v17, v18);
      sub_2978044E8(&v17, &v21);
      sub_2978295C0(v16, v17, v18);
      sub_29782963C(v19);
    }

    sub_29781ED3C(v20);
    std::string::~string(&v21);
  }
}

void *sub_2978F13DC(void *a1, uint64_t a2)
{
  v4 = sub_297868A04(a1);
  *v4 = &unk_2A1E586B8;
  v4[1] = a2;
  sub_297829180(v4 + 4);
  return a1;
}

unint64_t sub_2978F1428(unint64_t result, uint64_t a2, int a3, uint64_t a4, int a5)
{
  v7 = a5;
  if (a3 == 1)
  {
    v5 = result;
    result = sub_29782B07C(&v7, (result + 16));
    if (result)
    {
      sub_29784FB00(&v6);
      sub_297853ED0(&v6);
      sub_297853640(&v6, 525);
      return sub_2978F1494(*(v5 + 8), &v6);
    }
  }

  return result;
}

unint64_t sub_2978F1494(uint64_t a1, __int128 *a2)
{
  sub_297866C44(a1);
  v4 = sub_2977FB720(a1 + 1928) + 24 * *(a1 + 1984);

  return sub_2978F14E8(a1 + 1928, v4, a2);
}

unint64_t sub_2978F14E8(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = a2;
  if (sub_2977FB7B8(a1) == a2)
  {
    sub_2978405F8(a1, a3);
    return sub_2977FB7B8(a1) - 24;
  }

  else
  {
    if (*(a1 + 8) >= *(a1 + 16))
    {
      v6 = v4 - sub_2977FB720(a1);
      sub_297846128(a1, 0);
      v4 = sub_2977FB720(a1) + v6;
    }

    v7 = sub_2977FB7B8(a1);
    v8 = sub_297819418(a1);
    v9 = *(v8 + 16);
    *v7 = *v8;
    *(v7 + 16) = v9;
    v10 = sub_2977FB7B8(a1) - 24;
    v11 = sub_2977FB7B8(a1);
    sub_29787856C(v4, v10, v11);
    v12 = sub_2977FB7B8(a1);
    sub_2977FD5DC(a1, v12 + 24);
    if (v4 <= a3)
    {
      v13 = 24;
      if (*(a1 + 8) <= a3)
      {
        v13 = 0;
      }

      a3 = (a3 + v13);
    }

    v14 = *a3;
    *(v4 + 15) = *(a3 + 15);
    *v4 = v14;
    return v4;
  }
}

void *sub_2978F1604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2977FA198();
  sub_297883D24(v8);
  sub_2977FDEF4();
  a1[1] = a2;
  a1[2] = a3;
  sub_297804560((a1 + 3));
  sub_2977FB720(a1);
  v9 = a1[2];
  sub_2978055E4(&v12, a4);
  sub_2978EF358(a2, v9, &v12, (a1 + 5));
  sub_29780548C(&v12);
  sub_29783CEF0((a1 + 6));
  if (sub_29780B1BC(a1 + 5))
  {
    v10 = sub_2977FA198();
    sub_2978F08C4(v10, a1[2]);
    sub_2978F0880(a1 + 3);
  }

  return a1;
}

BOOL sub_2978F1744(uint64_t a1)
{
  v2 = sub_29781F06C();
  sub_2978F0254(v2, 0);
  v3 = sub_2977FB720(v6);
  v4 = sub_2978F03CC(a1, v3);
  sub_2978DADCC(v6);
  return v4;
}

uint64_t fosl_frontend_parseString(char *a1, void *a2)
{
  sub_2978EF658(v14);
  sub_2977FB7B4(v11, a1);
  sub_2977FB7B4(&v12, "Source");
  sub_297804A04(v11[0], v11[1], v12.__r_.__value_.__l.__data_, v12.__r_.__value_.__l.__size_, 0);
  sub_2977FDEF4();
  sub_297802744(&v12);
  sub_29783E51C();
  sub_2978F0254(v11, 0);
  sub_2978055E4(v9, v13);
  v4 = sub_2977FB720(v10);
  sub_2978F0610(v14, v9, v4);
  sub_29780548C(v9);
  sub_29781ED10(v11);
  if (sub_29780347C(&v12))
  {
    *a2 = 0;
  }

  else
  {
    v5 = sub_2978032A4(&v12);
    v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    *a2 = v6;
    v7 = sub_2978037C8();
    memcpy(v6, v7, v5);
    *(*a2 + v5) = 0;
  }

  sub_2978DADCC(v10);
  sub_29781F160(v11);
  std::string::~string(&v12);
  sub_29780548C(v13);
  return sub_2978EF65C(v14);
}

uint64_t fosl_createParser()
{
  v0 = sub_2977FA198();
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;
  *(v0 + 240) = 0u;
  *(v0 + 256) = 0u;
  sub_2978F19A4();
  v1 = sub_29781F06C();
  sub_2978F0254(v1, 1);
  sub_2978F19A8((v0 + 120), &v5);
  sub_2978DADCC(&v5);
  v2 = sub_2977FA198();
  v3 = sub_2977FB720(v0 + 120);
  sub_2978F08C4(v2, v3);
  sub_2978F0880((v0 + 136));
  return v0;
}

uint64_t *sub_2978F19A8(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_2978058AC(a2);
  sub_2978DAE00(a1, v3);
  nullsub_1();
  return a1;
}

void fosl_destroyParser(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_2978F1A1C();

    j__free(v1);
  }
}

uint64_t fosl_setPrimarySource(uint64_t a1, char *a2)
{
  v4 = sub_2977FB720(a1 + 120);
  sub_297829A74(v4);
  v5 = sub_2977FB720(a1 + 120);
  sub_2978291E8(v5);
  v6 = sub_2977FB720(a1 + 120);
  v7 = *sub_2978D6920(v6);
  (*v7)();
  sub_2977FB7B4(v14, a2);
  sub_2977FB7B4(v13, "Source");
  sub_297804A04(v14[0], v14[1], v13[0], v13[1], 0);
  sub_2977FDEF4();
  v8 = sub_2977FA198();
  v9 = sub_2977FB720(a1 + 120);
  sub_2978F1B6C(v12, a1 + 136);
  sub_2978055E4(v11, v14);
  sub_2978F1B70(v8, a1, v9, v12, v11);
  sub_2978F1B54((a1 + 128), v8);
  sub_29780548C(v11);
  sub_297847E24(v12);
  return sub_29780548C(v14);
}

void sub_2978F1B54(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = a2;
  if (v3)
  {
    sub_2978F4418(v3);
  }
}

uint64_t fosl_addPrelude(uint64_t a1, char *a2)
{
  v3 = sub_2977FB720(a1 + 128);
  sub_2977FB7B4(v5, a2);
  return sub_2978F1BC0(v3, v5[0], v5[1]);
}

uint64_t sub_2978F1BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v4 = a2;
  *(&v4 + 1) = a3;
  return sub_297803F88(a1 + 48, &v4);
}

uint64_t fosl_parseShader(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 128);

  return sub_2978F1C18(v1);
}

uint64_t sub_2978F1C18(void *a1)
{
  result = sub_29780B1BC(a1 + 5);
  if (result)
  {
    v3 = sub_2977FB720((a1 + 5));
    v4 = sub_2978D65C8(v3);
    v5 = sub_2977FB720((a1 + 5));
    v6 = sub_29787CC6C(v5);
    v7 = sub_2977FB720((a1 + 5));
    v8 = sub_2978D65BC(v7);
    sub_29787BD50(v4);
    sub_2978F0F1C(a1);
    sub_2978F0D8C(a1);
    sub_2978CFBC8(v6);
    sub_2978B6A00(v8);
    sub_2978D5AB0(v6);
    v9 = sub_2977FB720((a1 + 3));
    sub_2978044E8(&v21, a1[1] + 80);
    sub_2978AFB24(v9, v21, v22);
    v10 = sub_2977FB720((a1 + 5));
    v11 = sub_2977FB7B8(v10);
    v21 = sub_2978D7E90(v11);
    v22 = v12;
    v13 = sub_2977FB720(&v21);
    v14 = sub_2978130B8(&v21);
    if (v13 != v14)
    {
      v15 = v14;
      do
      {
        v16 = *v13++;
        v17 = sub_2977FB720((a1 + 3));
        sub_2978AF854(v17, v16);
      }

      while (v13 != v15);
    }

    sub_2978B6D78(v8);
    if (sub_2978F0458(a1))
    {
      v18 = sub_2977FB720((a1 + 5));
      v19 = sub_2977FB7B8(v18);
      v21 = sub_2978D7E90(v19);
      v22 = v20;
      sub_2977FB720(&v21);
      sub_2978130B8(&v21);
    }

    sub_2978F1210(a1);
    return sub_2978F0E34(a1);
  }

  return result;
}

void fosl_codeComplete(uint64_t a1, char *a2, unsigned int a3, _DWORD *a4)
{
  *(a1 + 104) = 0x100000001;
  fosl_setPrimarySource(a1, a2);
  v7 = sub_2977FB720(a1 + 128);
  v8 = sub_2977FB720(v7 + 40);
  v9 = sub_2978DCC94(v8);
  v10 = sub_29786A6B0(v9);
  *(a1 + 104) = sub_297841D38(v9, v10, a3, 0);
  *(a1 + 108) = sub_297841944(v9, v10, a3, 0);

  sub_2978F1E28(a1, a4);
}

void sub_2978F1E28(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2977FB720(a1 + 128);
  v5 = sub_2977FB720((v4 + 5));
  v6 = sub_2978DCC94(v5);
  v7 = sub_2978D65C8(v5);
  v8 = sub_29786A6B0(v6);
  v9 = sub_2978606D8(v6, v8);
  sub_29787B8B0(v7, v9, *(a1 + 104), *(a1 + 108));
  v10 = sub_2977FB720(a1 + 120);
  sub_29786F060(v10, 1);
  sub_2978F1C18(v4);
  if (sub_2978F0458(v4))
  {
    v11 = sub_29787CC6C(v5);
    v12 = sub_2978F06B8(v11);
    v13 = sub_29780A294();
    v14 = sub_297809B0C();
    sub_2978F2EE8(v13, v14);
    *a2 = sub_29780BD00(v12);

    sub_2978297B4();
  }
}

void fosl_codeCompleteLineColumn(uint64_t a1, char *a2, int a3, int a4, _DWORD *a5)
{
  *(a1 + 104) = a3;
  *(a1 + 108) = a4;
  fosl_setPrimarySource(a1, a2);

  sub_2978F1E28(a1, a5);
}

uint64_t fosl_getNumDiagnostics(uint64_t a1)
{
  v1 = sub_2977FB720(a1 + 120);
  v2 = sub_2978D6920(v1);

  return sub_2978DCF64(v2);
}

char *fosl_getDiagnostics(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2978DCC94(v3);
  v5 = sub_2977FB720(a1 + 120);
  v6 = sub_2978D6920(v5);
  sub_29780C6B8((a1 + 224));
  sub_29780CA0C((a1 + 248));
  v7 = sub_297805508(v6);
  sub_2978DD2DC((a1 + 224), v7);
  v8 = sub_2978483F4(v6);
  sub_2978DD358((a1 + 248), v8);
  v9 = sub_2978DCF64(v6);
  if (!v9)
  {
    return 0;
  }

  v42 = malloc_type_malloc(56 * v9, 0x1070040AB968983uLL);
  v50 = sub_2978DD3D4();
  v49 = sub_2978E9334();
  if (sub_29780852C(&v50, &v49))
  {
    v10 = 0;
    do
    {
      v46 = v10;
      v11 = sub_29780BD00((a1 + 224));
      sub_2978297B4();
      v13 = v12;
      v14 = sub_2977FB720(v12 + 32);
      for (i = sub_2977FB7B8(v13 + 32); v14 != i; v14 += 3)
      {
        v16 = sub_297850AD4(v14);
        LODWORD(v47) = sub_2978DD410(v4, v16);
        v17 = sub_2978478EC(v14);
        HIDWORD(v47) = sub_2978DD410(v4, v17);
        sub_2978DD40C(a1 + 224, &v47);
      }

      v43 = sub_29780AAE8((a1 + 248));
      sub_2978297B4();
      v19 = v18;
      v20 = sub_2977FB720(v18 + 80);
      for (j = sub_2977FB7B8(v19 + 80); v20 != j; v20 += 14)
      {
        v22 = sub_297850AD4(v20);
        v23 = sub_2978478EC(v20);
        if (sub_297850C04(v20))
        {
          v24 = sub_2978D6928(v3);
          v23 = sub_297850610(v23, 0, v4, v24);
        }

        v47 = 0;
        v48 = 0;
        LODWORD(v47) = sub_2978DD410(v4, v22);
        HIDWORD(v47) = sub_2978DD410(v4, v23);
        v48 = 0;
        if (sub_29780347C((v20 + 6)))
        {
          sub_297856348(v20 + 3);
        }

        else
        {
          v48 = sub_2978037C8();
        }

        sub_29780BFD8(a1 + 248, &v47);
      }

      sub_2978297B4();
      v26 = sub_2978DD410(v4, *(v25 + 24));
      sub_2978297B4();
      v28 = sub_29782B90C(v27 + 32);
      sub_2978297B4();
      v30 = sub_29782B950(v29 + 80);
      sub_2978297B4();
      v45 = sub_2978037C8();
      v31 = sub_29786A6B0(v4);
      v44 = sub_297841D38(v4, v31, v26, 0);
      v32 = sub_29786A6B0(v4);
      v33 = sub_297841944(v4, v32, v26, 0);
      if (v28)
      {
        sub_2978297B4();
        v35 = v34 + 8 * v11;
        if (!v30)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v35 = 0;
        if (!v30)
        {
LABEL_17:
          v37 = 0;
          goto LABEL_18;
        }
      }

      sub_2978297B4();
      v37 = v36 + 16 * v43;
LABEL_18:
      sub_2978297B4();
      v39 = sub_2978D9FA0(*(v38 + 216));
      v40 = &v42[56 * v46];
      *v40 = v45;
      *(v40 + 2) = v26;
      *(v40 + 3) = v44;
      *(v40 + 4) = v33;
      *(v40 + 5) = v28;
      *(v40 + 3) = v35;
      *(v40 + 8) = v30;
      *(v40 + 5) = v37;
      *(v40 + 12) = v39;
      v10 = v46 + 1;
      sub_2978ED0A4(&v50);
    }

    while (sub_29780852C(&v50, &v49));
  }

  return v42;
}

void fosl_removeSpecialization(uint64_t a1, char *a2)
{
  v3 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v4, a2);
  sub_2978B0658(v3, v4[0], v4[1]);
}

uint64_t fosl_specializeFloat(uint64_t a1, char *a2, float a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0A38(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeInt(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0BA4(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeUInt(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0BA4(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeBool(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v7, a2);
  return sub_2978B0C94(v5, v7[0], v7[1], a3);
}

uint64_t fosl_specializeFloatVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0AAC(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeIntVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0C18(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeUIntVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0C18(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeBoolVector(uint64_t a1, char *a2, uint64_t a3, unsigned int a4)
{
  v7 = sub_2977FB720(a1 + 136);
  sub_2977FB7B4(v10, a2);
  sub_2977FB7C0(v9, a3, a4);
  return sub_2978B0D0C(v7, v10[0], v10[1], v9[0], v9[1]);
}

uint64_t fosl_specializeFloatMatrix(uint64_t result, char *a2, uint64_t a3, int a4, int a5)
{
  v40 = a3;
  v39 = a4;
  v38 = a5;
  v37[0] = &v40;
  v37[1] = &v38;
  v37[2] = &v39;
  switch(a4)
  {
    case 4:
      v22 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v35, a2);
      v23 = sub_2978F2888(v37, 0);
      v25 = v24;
      v26 = sub_2978F2888(v37, 1);
      v28 = v27;
      v29 = sub_2978F2888(v37, 2);
      v31 = v30;
      v32 = sub_2978F2888(v37, 3);
      return sub_2978B08EC(v22, v35, v36, v23, v25, v26, v28, v34, v29, v31, v32, v33);
    case 3:
      v12 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v35, a2);
      v13 = sub_2978F2888(v37, 0);
      v15 = v14;
      v16 = sub_2978F2888(v37, 1);
      v18 = v17;
      v19 = sub_2978F2888(v37, 2);
      return sub_2978B0840(v12, v35, v36, v13, v15, v16, v18, v21, v19, v20);
    case 2:
      v6 = sub_2977FB720(result + 136);
      sub_2977FB7B4(&v35, a2);
      v7 = sub_2978F2888(v37, 0);
      v9 = v8;
      v10 = sub_2978F2888(v37, 1);
      return sub_2978B0724(v6, v35, v36, v7, v9, v10, v11);
  }

  return result;
}

void fosl_getSpecializedUniforms(uint64_t a1, _DWORD *a2)
{
  sub_29780C6B8((a1 + 200));
  v4 = sub_2977FB720(a1 + 136);
  sub_2978B09A8(v4, v9);
  v8 = sub_29780A294();
  v7 = sub_297809B0C();
  while (sub_29780852C(&v8, &v7))
  {
    v6 = *sub_2977FB720(&v8);
    v5 = sub_2977FB720(&v6);
    sub_29781B720(a1 + 200, &v5);
    sub_29786F9A0(&v8);
  }

  sub_29780A9D8(v9);
  *a2 = sub_29780BD00((a1 + 200));
  sub_2978297B4();
}

void fosl_getUsedUniforms(uint64_t a1, _DWORD *a2)
{
  v4 = sub_2977FB720(a1 + 128);
  sub_29780C6B8((a1 + 176));
  v5 = sub_2977FB720(v4 + 40);
  v6 = sub_2977FB7B8(v5);
  v16[0] = sub_2978D7E90(v6);
  v16[1] = v7;
  v8 = sub_2977FB720(v16);
  v9 = sub_2978130B8(v16);
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      sub_2978F2AAC(*v8, v15);
      v14 = sub_29780A294();
      v13 = sub_297809B0C();
      while (sub_29780852C(&v14, &v13))
      {
        v12 = *sub_2977FB720(&v14);
        v11 = sub_2977FB720(&v12);
        sub_29781B720(a1 + 176, &v11);
        sub_29786F9A0(&v14);
      }

      sub_29780A9D8(v15);
      ++v8;
    }

    while (v8 != v10);
  }

  *a2 = sub_29780BD00((a1 + 176));
  sub_2978297B4();
}

BOOL sub_2978F2AAC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29788AA2C(a1);
  sub_297809B88(a2);
  v9 = sub_29780A294();
  v8 = sub_297809B0C();
  for (result = sub_29780852C(&v9, &v8); result; result = sub_29780852C(&v9, &v8))
  {
    v5 = *sub_2977FB720(&v9);
    if (sub_297886348(a1 + 176))
    {
      v7[0] = sub_29788709C(v5);
      v7[1] = v6;
      sub_29780BFD8(a2, v7);
    }

    sub_29781B504(&v9);
  }

  return result;
}

char *fosl_astPrint(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  if (!sub_2978F0458(v2))
  {
    return &byte_2978FC3E5;
  }

  sub_297803300(a1 + 152);
  sub_29783E51C();
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2977FB7B8(v3);
  v13[0] = sub_2978D7E90(v4);
  v13[1] = v5;
  v6 = sub_2977FB720(v13);
  v7 = sub_2978130B8(v13);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2977FB720(a1 + 136);
      sub_2978AF854(v10, v9);
      sub_297885E64(v9, v14);
    }

    while (v6 != v8);
  }

  sub_29783E520(v14);
  v11 = sub_2978037C8();
  sub_29781F160(v14);
  return v11;
}

char *fosl_astPrintReachable(uint64_t a1)
{
  v2 = sub_2977FB720(a1 + 128);
  if (!sub_2978F0458(v2))
  {
    return &byte_2978FC3E5;
  }

  sub_297803300(a1 + 152);
  sub_29783E51C();
  v3 = sub_2977FB720(v2 + 40);
  v4 = sub_2977FB7B8(v3);
  v13[0] = sub_2978D7E90(v4);
  v13[1] = v5;
  v6 = sub_2977FB720(v13);
  v7 = sub_2978130B8(v13);
  if (v6 != v7)
  {
    v8 = v7;
    do
    {
      v9 = *v6++;
      v10 = sub_2977FB720(a1 + 136);
      sub_2978AF854(v10, v9);
      sub_297886074(v9, v14);
    }

    while (v6 != v8);
  }

  sub_29783E520(v14);
  v11 = sub_2978037C8();
  sub_29781F160(v14);
  return v11;
}

uint64_t sub_2978F2D18(uint64_t a1)
{
  v2 = sub_2978EF658(a1);
  sub_29780AE44(v2 + 120);
  sub_29780AE44(a1 + 128);
  sub_297804560(a1 + 136);
  sub_297802744(a1 + 152);
  sub_297809B88(a1 + 176);
  sub_297809B88(a1 + 200);
  sub_297809B88(a1 + 224);
  sub_297809B88(a1 + 248);
  return a1;
}

uint64_t sub_2978F2D80(uint64_t a1)
{
  sub_29780A9D8(a1 + 248);
  sub_29780C534(a1 + 224);
  sub_29781B950(a1 + 200);
  sub_29781B950(a1 + 176);
  std::string::~string((a1 + 152));
  sub_297847E24(a1 + 136);
  sub_2978F2DF4(a1 + 128);
  sub_2978DADCC(a1 + 120);

  return sub_2978EF65C(a1);
}

void *sub_2978F2E24(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2977FA198();
  sub_297883D24(v10);
  sub_2977FDEF4();
  a1[1] = a2;
  a1[2] = a3;
  sub_2978F1B6C((a1 + 3), a4);
  sub_2977FB720(a1);
  v11 = a1[2];
  sub_2978055E4(&v13, a5);
  sub_2978EF358(a2, v11, &v13, (a1 + 5));
  sub_29780548C(&v13);
  sub_29783CEF0((a1 + 6));
  sub_29780B1BC(a1 + 5);
  return a1;
}

uint64_t sub_2978F2EEC(uint64_t a1, uint64_t a2)
{
  nullsub_1();
  v4 = sub_29780C8A4(a1);
  v5 = sub_29780C8A4(a2);
  sub_2978F2F58(v4, v5);
  sub_29780C8A4(a1);

  return sub_29780C8A4(a2);
}

void sub_2978F2F58(char **a1, uint64_t *a2)
{
  v4 = 2 * sub_29780D5B4((a2 - a1) >> 3);

  sub_2978F2FA8(a1, a2, v4, 1);
}

void sub_2978F2FA8(char **result, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = a2;
  v6 = result;
  v23 = a2;
  v24 = result;
LABEL_2:
  for (i = 1 - a3; ; ++i)
  {
    v8 = (v5 - v6) >> 3;
    if (v8 > 2)
    {
      switch(v8)
      {
        case 3uLL:
          v23 = (v5 - 1);
          sub_2978F32C4(v6, v6 + 1, v5 - 1);
          return;
        case 4uLL:
          v23 = (v5 - 1);
          sub_2978F3410(v6, v6 + 1, v6 + 2, v5 - 1);
          return;
        case 5uLL:
          v23 = (v5 - 1);
          sub_2978F3500(v6, v6 + 1, v6 + 2, v6 + 3, v5 - 1);
          return;
      }
    }

    else
    {
      if (v8 < 2)
      {
        return;
      }

      if (v8 == 2)
      {
        v23 = (v5 - 1);
        sub_2977FB7B4(&v21, *(v5 - 1));
        sub_2977FB7B4(&v19, *v24);
        if (sub_2978F326C(v21, v22, v19, v20))
        {
          sub_2978F16E4(&v24, &v23);
        }

        return;
      }
    }

    if (v8 <= 23)
    {
      break;
    }

    if (i == 1)
    {
      sub_2978F380C(v6, v5, v5);
      return;
    }

    v9 = v8 >> 1;
    v10 = (v5 - 1);
    if (v8 < 0x81)
    {
      sub_2978F32C4(&v6[v8 >> 1], v6, v10);
      if (a4)
      {
LABEL_17:
        v5 = v23;
        goto LABEL_18;
      }
    }

    else
    {
      sub_2978F32C4(v6, &v6[v8 >> 1], v10);
      v11 = v23;
      v12 = 8 * v9 - 8;
      sub_2978F32C4(v24 + 1, (v24 + v12), v23 - 2);
      v13 = 8 * v9 + 8;
      sub_2978F32C4(v24 + 2, (v24 + v13), v11 - 3);
      sub_2978F32C4((v24 + v12), &v24[v9], (v24 + v13));
      v21 = &v24[v9];
      sub_2978F16E4(&v24, &v21);
      if (a4)
      {
        goto LABEL_17;
      }
    }

    sub_2977FB7B4(&v21, *(v24 - 1));
    sub_2977FB7B4(&v19, *v24);
    v14 = sub_2978F326C(v21, v22, v19, v20);
    v5 = v23;
    if ((v14 & 1) == 0)
    {
      v6 = sub_2978F389C(v24, v23);
LABEL_26:
      a4 = 0;
      v24 = v6;
      a3 = -i;
      goto LABEL_2;
    }

LABEL_18:
    v15 = sub_2978F3A84(v24, v5);
    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

    v17 = sub_2978F3C54(v24, v15);
    v6 = (v15 + 1);
    if (sub_2978F3C54(v15 + 1, v5))
    {
      if (v17)
      {
        return;
      }

      v23 = v15;
      v6 = v24;
      v5 = v15;
    }

    else
    {
      if (!v17)
      {
LABEL_25:
        sub_2978F2FA8(v24, v15, -i, a4 & 1);
        v6 = (v15 + 1);
        goto LABEL_26;
      }

      v24 = (v15 + 1);
    }
  }

  if (a4)
  {
    sub_2978F3634(v6, v5);
  }

  else
  {
    sub_2978F372C(v6, v5);
  }
}

uint64_t sub_2978F326C(char *a1, char *a2, char *a3, unint64_t a4)
{
  v8[0] = a1;
  v8[1] = a2;
  v6 = sub_29780F248(v8, a3, a4);
  if (!v6)
  {
    v6 = sub_297819794(v8, a3, a4);
  }

  return v6 >> 31;
}

uint64_t *sub_2978F32C4(char **a1, char **a2, char **a3)
{
  v13 = a2;
  v14 = a1;
  v12 = a3;
  sub_2977FB7B4(&v10, *a2);
  sub_2977FB7B4(&v8, *a1);
  if (sub_2978F326C(v10, v11, v8, v9))
  {
    sub_2977FB7B4(&v10, *a3);
    sub_2977FB7B4(&v8, *v13);
    if (sub_2978F326C(v10, v11, v8, v9))
    {
      v5 = &v14;
    }

    else
    {
      sub_2978F16E4(&v14, &v13);
      sub_2977FB7B4(&v10, *v12);
      sub_2977FB7B4(&v8, *v13);
      result = sub_2978F326C(v10, v11, v8, v9);
      if (!result)
      {
        return result;
      }

      v5 = &v13;
    }

    v7 = &v12;
    return sub_2978F16E4(v5, v7);
  }

  sub_2977FB7B4(&v10, *a3);
  sub_2977FB7B4(&v8, *v13);
  result = sub_2978F326C(v10, v11, v8, v9);
  if (result)
  {
    sub_2978F16E4(&v13, &v12);
    sub_2977FB7B4(&v10, *v13);
    sub_2977FB7B4(&v8, *v14);
    result = sub_2978F326C(v10, v11, v8, v9);
    if (result)
    {
      v5 = &v14;
      v7 = &v13;
      return sub_2978F16E4(v5, v7);
    }
  }

  return result;
}

uint64_t *sub_2978F3410(uint64_t *a1, char **a2, char **a3, uint64_t *a4)
{
  v16 = a1;
  v14 = a3;
  v15 = a2;
  v13 = a4;
  sub_2978F32C4(a1, a2, a3);
  sub_2977FB7B4(&v11, *a4);
  sub_2977FB7B4(&v9, *a3);
  result = sub_2978F326C(v11, v12, v9, v10);
  if (result)
  {
    sub_2978F16E4(&v14, &v13);
    sub_2977FB7B4(&v11, *v14);
    sub_2977FB7B4(&v9, *a2);
    result = sub_2978F326C(v11, v12, v9, v10);
    if (result)
    {
      sub_2978F16E4(&v15, &v14);
      sub_2977FB7B4(&v11, *v15);
      sub_2977FB7B4(&v9, *a1);
      result = sub_2978F326C(v11, v12, v9, v10);
      if (result)
      {
        return sub_2978F16E4(&v16, &v15);
      }
    }
  }

  return result;
}

uint64_t *sub_2978F3500(uint64_t *a1, char **a2, char **a3, char **a4, uint64_t *a5)
{
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v15 = a5;
  v16 = a4;
  sub_2978F3410(a1, a2, a3, a4);
  sub_2977FB7B4(&v13, *a5);
  sub_2977FB7B4(&v11, *a4);
  result = sub_2978F326C(v13, v14, v11, v12);
  if (result)
  {
    sub_2978F16E4(&v16, &v15);
    sub_2977FB7B4(&v13, *v16);
    sub_2977FB7B4(&v11, *a3);
    result = sub_2978F326C(v13, v14, v11, v12);
    if (result)
    {
      sub_2978F16E4(&v17, &v16);
      sub_2977FB7B4(&v13, *v17);
      sub_2977FB7B4(&v11, *a2);
      result = sub_2978F326C(v13, v14, v11, v12);
      if (result)
      {
        sub_2978F16E4(&v18, &v17);
        sub_2977FB7B4(&v13, *v18);
        sub_2977FB7B4(&v11, *a1);
        result = sub_2978F326C(v13, v14, v11, v12);
        if (result)
        {
          return sub_2978F16E4(&v19, &v18);
        }
      }
    }
  }

  return result;
}

uint64_t sub_2978F3634(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v14[5] = v2;
    v14[6] = v3;
    v5 = result;
    v14[0] = result + 8;
    if (result + 8 != a2)
    {
      v6 = result;
      do
      {
        sub_2977FB7B4(&v12, v6[1]);
        sub_2977FB7B4(&v10, *v6);
        result = sub_2978F326C(v12, v13, v10, v11);
        if (result)
        {
          v7 = *sub_29780E4F4(v14);
          v9 = v6;
          v8 = v14[0];
          do
          {
            result = sub_29780E4F4(&v9);
            *v8 = *result;
            v8 = v9;
            if (v9 == v5)
            {
              break;
            }

            sub_2977FB7B4(&v12, v7);
            sub_2977FB7B4(&v10, *--v9);
            result = sub_2978F326C(v12, v13, v10, v11);
          }

          while ((result & 1) != 0);
          *v8 = v7;
        }

        v6 = v14[0];
        v14[0] += 8;
      }

      while (v14[0] != a2);
    }
  }

  return result;
}

uint64_t sub_2978F372C(uint64_t result, char **a2)
{
  if (result != a2)
  {
    v13[5] = v2;
    v13[6] = v3;
    for (i = result; ; i = v13[0])
    {
      v13[0] = i + 1;
      if (i + 1 == a2)
      {
        break;
      }

      sub_2977FB7B4(&v11, i[1]);
      sub_2977FB7B4(&v9, *i);
      result = sub_2978F326C(v11, v12, v9, v10);
      if (result)
      {
        v6 = *sub_29780E4F4(v13);
        v8 = i;
        v7 = v13[0];
        do
        {
          *v7 = *sub_29780E4F4(&v8);
          v7 = v8;
          sub_2977FB7B4(&v11, v6);
          sub_2977FB7B4(&v9, *--v8);
          result = sub_2978F326C(v11, v12, v9, v10);
        }

        while ((result & 1) != 0);
        *v7 = v6;
      }
    }
  }

  return result;
}

void sub_2978F380C(char **a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 == a2)
  {

    sub_29780E51C(a2, a3);
  }

  else
  {
    nullsub_1();
    sub_2978F3E3C(a1, a2, a3);

    nullsub_1();
  }
}

char **sub_2978F389C(char *a1, uint64_t *a2)
{
  v2 = a2;
  v14 = a2;
  v15 = a1;
  v4 = *sub_29780E4F4(&v15);
  sub_2977FB7B4(&v12, v4);
  sub_2977FB7B4(&v10, *(v2 - 1));
  if (sub_2978F326C(v12, v13, v10, v11))
  {
    do
    {
      ++v15;
      sub_2977FB7B4(&v12, v4);
      sub_2977FB7B4(&v10, *v15);
    }

    while ((sub_2978F326C(v12, v13, v10, v11) & 1) == 0);
  }

  else
  {
    do
    {
      if (++v15 >= v2)
      {
        break;
      }

      sub_2977FB7B4(&v12, v4);
      sub_2977FB7B4(&v10, *v15);
    }

    while (!sub_2978F326C(v12, v13, v10, v11));
  }

  v5 = v15;
  if (v15 < v2)
  {
    v6 = v2 - 1;
    do
    {
      v14 = v6;
      sub_2977FB7B4(&v12, v4);
      v7 = *v6--;
      sub_2977FB7B4(&v10, v7);
    }

    while ((sub_2978F326C(v12, v13, v10, v11) & 1) != 0);
    v5 = v15;
    v2 = v6 + 1;
  }

  if (v5 < v2)
  {
    do
    {
      sub_2978F16E4(&v15, &v14);
      do
      {
        ++v15;
        sub_2977FB7B4(&v12, v4);
        sub_2977FB7B4(&v10, *v15);
      }

      while (!sub_2978F326C(v12, v13, v10, v11));
      do
      {
        --v14;
        sub_2977FB7B4(&v12, v4);
        sub_2977FB7B4(&v10, *v14);
      }

      while ((sub_2978F326C(v12, v13, v10, v11) & 1) != 0);
      v5 = v15;
    }

    while (v15 < v14);
  }

  v8 = (v5 - 1);
  v12 = v8;
  if (v8 != a1)
  {
    *a1 = *sub_29780E4F4(&v12);
    v8 = v12;
  }

  *v8 = v4;
  return v15;
}

uint64_t sub_2978F3A84(uint64_t *a1, uint64_t *a2)
{
  v18 = a1;
  v17 = a2;
  v4 = *sub_29780E4F4(&v18);
  do
  {
    sub_2977FB7B4(&v15, *++v18);
    sub_2977FB7B4(&v13, v4);
  }

  while ((sub_2978F326C(v15, v16, v13, v14) & 1) != 0);
  v5 = a2 - 1;
  if (v18 - 1 == a1)
  {
    while (1)
    {
      v7 = (v5 + 1);
      if (v18 >= v5 + 1)
      {
        break;
      }

      v17 = v5;
      v11 = *v5--;
      sub_2977FB7B4(&v15, v11);
      sub_2977FB7B4(&v13, v4);
      if (sub_2978F326C(v15, v16, v13, v14))
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
    do
    {
      v17 = v5;
      v6 = *v5--;
      sub_2977FB7B4(&v15, v6);
      sub_2977FB7B4(&v13, v4);
    }

    while ((sub_2978F326C(v15, v16, v13, v14) & 1) == 0);
LABEL_5:
    v7 = (v5 + 1);
  }

  v8 = v18;
  v12 = v18 >= v7;
  if (v18 < v7)
  {
    do
    {
      sub_2978F16E4(&v18, &v17);
      do
      {
        sub_2977FB7B4(&v15, *++v18);
        sub_2977FB7B4(&v13, v4);
      }

      while ((sub_2978F326C(v15, v16, v13, v14) & 1) != 0);
      do
      {
        sub_2977FB7B4(&v15, *--v17);
        sub_2977FB7B4(&v13, v4);
      }

      while (!sub_2978F326C(v15, v16, v13, v14));
      v8 = v18;
    }

    while (v18 < v17);
  }

  v9 = (v8 - 1);
  v15 = (v8 - 1);
  if (v8 - 1 != a1)
  {
    *a1 = *sub_29780E4F4(&v15);
    v9 = v15;
  }

  *v9 = v4;
  return sub_29780EB40(&v15, &v12);
}

BOOL sub_2978F3C54(uint64_t *a1, uint64_t *a2)
{
  v19 = a1;
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v18 = a2 - 1;
        sub_2977FB7B4(&v16, v5);
        sub_2977FB7B4(&v14, *a1);
        if (sub_2978F326C(v16, v17, v14, v15))
        {
          sub_2978F16E4(&v19, &v18);
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_2978F32C4(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_2978F3410(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_2978F3500(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_11:
  v6 = (a1 + 2);
  sub_2978F32C4(a1, a1 + 1, a1 + 2);
  v7 = (a1 + 3);
  v13 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v8 = 0;
  while (1)
  {
    sub_2977FB7B4(&v16, *v7);
    sub_2977FB7B4(&v14, *v6);
    if (sub_2978F326C(v16, v17, v14, v15))
    {
      v9 = *sub_29780E4F4(&v13);
      v12 = v6;
      v10 = v13;
      do
      {
        *v10 = *sub_29780E4F4(&v12);
        v10 = v12;
        if (v12 == a1)
        {
          break;
        }

        sub_2977FB7B4(&v16, v9);
        sub_2977FB7B4(&v14, *--v12);
      }

      while ((sub_2978F326C(v16, v17, v14, v15) & 1) != 0);
      *v10 = v9;
      if (++v8 == 8)
      {
        break;
      }
    }

    v6 = v13;
    v7 = (v13 + 1);
    v13 = v7;
    if (v7 == a2)
    {
      return 1;
    }
  }

  return v13 + 1 == a2;
}

uint64_t *sub_2978F3E3C(char **a1, uint64_t *a2, uint64_t *a3)
{
  v12 = a1;
  if (a1 == a2)
  {

    return sub_29780E51C(a2, a3);
  }

  else
  {
    v5 = a1;
    sub_2978F3F3C(a1, a2);
    v11 = a2;
    if (a2 != a3)
    {
      v6 = a2 - v5;
      v7 = a2;
      do
      {
        sub_2977FB7B4(v10, *v7);
        sub_2977FB7B4(v9, *v12);
        if (sub_2978F326C(v10[0], v10[1], v9[0], v9[1]))
        {
          sub_2978F16E4(&v11, &v12);
          sub_2978F3F9C(v12, v6, v12);
        }

        v7 = v11 + 1;
        v11 = v7;
      }

      while (v7 != a3);
      v5 = v12;
    }

    sub_2978F413C(v5, a2);
    return v11;
  }
}

uint64_t sub_2978F3F3C(uint64_t result, uint64_t a2)
{
  v2 = (a2 - result) >> 3;
  if (v2 >= 2)
  {
    v3 = result;
    v4 = (v2 - 2) >> 1;
    v5 = v4 + 1;
    v6 = (result + 8 * v4);
    do
    {
      result = sub_2978F3F9C(v3, v2, v6--);
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_2978F3F9C(uint64_t result, uint64_t a2, char **a3)
{
  v23 = a3;
  v3 = a2 - 2;
  if (a2 >= 2)
  {
    v5 = result;
    v6 = v3 >> 1;
    if ((v3 >> 1) >= (a3 - result) >> 3)
    {
      v8 = (a3 - result) >> 2;
      v9 = v8 + 1;
      v10 = (result + 8 * (v8 + 1));
      v22 = v10;
      v11 = v8 + 2;
      if (v8 + 2 < a2)
      {
        sub_2977FB7B4(&v20, *v10);
        sub_2977FB7B4(&v18, v10[1]);
        if (sub_2978F326C(v20, v21, v18, v19))
        {
          v22 = ++v10;
          v9 = v11;
        }
      }

      sub_2977FB7B4(&v20, *v10);
      sub_2977FB7B4(&v18, *a3);
      result = sub_2978F326C(v20, v21, v18, v19);
      if ((result & 1) == 0)
      {
        v12 = *sub_29780E4F4(&v23);
        while (1)
        {
          result = sub_29780E4F4(&v22);
          *v23 = *result;
          v13 = v22;
          v23 = v22;
          if (v6 < v9)
          {
            break;
          }

          v14 = 2 * v9;
          v9 = (2 * v9) | 1;
          v15 = (v5 + 8 * v9);
          v22 = v15;
          v16 = v14 + 2;
          if (v14 + 2 < a2)
          {
            sub_2977FB7B4(&v20, *v15);
            sub_2977FB7B4(&v18, v22[1]);
            v17 = sub_2978F326C(v20, v21, v18, v19);
            v15 = v22;
            if (v17)
            {
              v15 = ++v22;
              v9 = v16;
            }
          }

          sub_2977FB7B4(&v20, *v15);
          sub_2977FB7B4(&v18, v12);
          result = sub_2978F326C(v20, v21, v18, v19);
          if (result)
          {
            v13 = v23;
            break;
          }
        }

        *v13 = v12;
      }
    }
  }

  return result;
}

char **sub_2978F413C(char **result, uint64_t a2)
{
  v2 = (a2 - result) >> 3;
  if (v2 >= 2)
  {
    v3 = a2;
    v4 = result;
    do
    {
      result = sub_2978F419C(v4, v3, v2);
      v3 -= 8;
    }

    while (v2-- > 2);
  }

  return result;
}

char **sub_2978F419C(char **a1, uint64_t a2, uint64_t a3)
{
  v9 = a1;
  v5 = *sub_29780E4F4(&v9);
  result = sub_2978F4234(v9, a3);
  v7 = result;
  v8 = (a2 - 8);
  if (result == (a2 - 8))
  {
    *result = v5;
  }

  else
  {
    *result = *sub_29780E4F4(&v8);
    *v8 = v5;
    return sub_2978F4300(v9, (v7 + 1), v7 + 1 - v9);
  }

  return result;
}

char **sub_2978F4234(char **a1, uint64_t a2)
{
  v4 = 0;
  v5 = (a2 - 2) >> 1;
  do
  {
    v6 = &a1[v4 + 1];
    v12 = v6;
    v7 = 2 * v4;
    v4 = (2 * v4) | 1;
    v8 = v7 + 2;
    if (v7 + 2 < a2)
    {
      sub_2977FB7B4(v11, *v6);
      sub_2977FB7B4(v10, v12[1]);
      if (sub_2978F326C(v11[0], v11[1], v10[0], v10[1]))
      {
        ++v12;
        v4 = v8;
      }
    }

    *a1 = *sub_29780E4F4(&v12);
    a1 = v12;
  }

  while (v4 <= v5);
  return v12;
}

uint64_t sub_2978F4300(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = a3 - 2;
  if (a3 >= 2)
  {
    v17[5] = v3;
    v17[6] = v4;
    v7 = result;
    v8 = v5 >> 1;
    v16 = (result + 8 * (v5 >> 1));
    sub_2977FB7B4(&v14, *v16);
    v9 = *(a2 - 8);
    v17[0] = a2 - 8;
    sub_2977FB7B4(&v12, v9);
    result = sub_2978F326C(v14, v15, v12, v13);
    if (result)
    {
      v10 = *sub_29780E4F4(v17);
      while (1)
      {
        result = sub_29780E4F4(&v16);
        *v17[0] = *result;
        v11 = v16;
        v17[0] = v16;
        if (!v8)
        {
          break;
        }

        v8 = (v8 - 1) >> 1;
        v16 = (v7 + 8 * v8);
        sub_2977FB7B4(&v14, *v16);
        sub_2977FB7B4(&v12, v10);
        result = sub_2978F326C(v14, v15, v12, v13);
        if ((result & 1) == 0)
        {
          v11 = v17[0];
          break;
        }
      }

      *v11 = v10;
    }
  }

  return result;
}

void *sub_2978F43E4(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    sub_29782F14C();
  }

  return a1;
}

void sub_2978F4418(uint64_t a1)
{
  v1 = sub_2978F0498(a1);

  j__free(v1);
}

void sub_2978F4440()
{
  sub_297809B50(6);
  v0 = usleep(0x3E8u);
  __break(1u);
  std::error_code::message(v1, v0);
}