_BYTE *storeEnumTagSinglePayload for BlobsFileError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x237A2BD14);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_237A2BD5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A2BD9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_237A2BE04()
{
  result = qword_27DE9B4D8;
  if (!qword_27DE9B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B4D8);
  }

  return result;
}

uint64_t sub_237A2BE58@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q1>)
{
  v5 = 0uLL;
  v7 = 0;
  LODWORD(v8) = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      if (result >> 32 < result)
      {
        __break(1u);
        JUMPOUT(0x237A2BF2CLL);
      }

      result = sub_237A2CD38(result, v9);
      if (!v4)
      {
        v7 = v9[0];
        LODWORD(v8) = v9[1];
        v5 = v10;
        a4 = v11;
        goto LABEL_8;
      }

      break;
    case 2uLL:
      result = sub_237A2CD38(*(result + 16), v12);
      if (!v4)
      {
        v7 = v12[0];
        LODWORD(v8) = v12[1];
        v5 = v13;
        a4 = v14;
        goto LABEL_8;
      }

      break;
    case 3uLL:
      goto LABEL_8;
    default:
      v8 = HIDWORD(result);
      *&v5 = a2 & 0xFFFFFFFFFFFFLL;
      v7 = result;
LABEL_8:
      *a3 = v7;
      *(a3 + 4) = v8;
      *(a3 + 8) = v5;
      *(a3 + 24) = a4;
      break;
  }

  return result;
}

void *sub_237A2BF3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_237A2C2B0(a1, a2);
  v7 = OUTLINED_FUNCTION_30();
  if (sub_237A2C104(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_30();
    sub_237A2BE58(v9, v10, v11, v12);
    sub_237A2B2B8(v36, v37, &v38);
    if (DWORD1(v38) == 2)
    {
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      goto LABEL_6;
    }

LABEL_8:
    v24 = OUTLINED_FUNCTION_30();
    sub_2379E86D4(v24, v25);
    sub_237A01064();
    swift_allocError();
    *v26 = 0;
    swift_willThrow();
    goto LABEL_9;
  }

  v13 = OUTLINED_FUNCTION_30();
  sub_237A2C308(v13, v14, v15);
  if (DWORD1(v38) != 2)
  {
    goto LABEL_8;
  }

  v46 = v38;
  v47 = v39;
  v48 = v40;
  v49 = v41;
LABEL_6:
  v16 = OUTLINED_FUNCTION_30();
  v20 = sub_237A2C548(v16, v17, v18, v19);
  v21 = OUTLINED_FUNCTION_30();
  sub_2379E86D4(v21, v22);
  if (!v3)
  {
    *__src = a1;
    *&__src[8] = a2;
    *&__src[16] = v38;
    *&__src[32] = v39;
    *&__src[48] = v40;
    *&__src[64] = v41;
    *&__src[80] = v20;
    v29 = a1;
    v30 = a2;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v35 = v20;
    sub_237A2C79C(__src, &v27);
    sub_237A2C4F4(&v29);
    return memcpy(a3, __src, 0x58uLL);
  }

LABEL_9:
  v29 = a1;
  v30 = a2;
  v31 = v38;
  v32 = v39;
  v33 = v40;
  v34 = v41;
  v35 = MEMORY[0x277D84F90];
  return sub_237A2C4F4(&v29);
}

uint64_t sub_237A2C104(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  v3 = 0;
  v4 = BYTE6(a2);
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v5) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v5 = v5;
LABEL_6:
      if (v5 != 40)
      {
        if (v2 == 2)
        {
          v11 = *(a1 + 16);
          v10 = *(a1 + 24);
          v8 = __OFSUB__(v10, v11);
          v9 = v10 - v11;
          if (!v8)
          {
            goto LABEL_16;
          }

          __break(1u);
        }

        else if (v2 == 1)
        {
          LODWORD(v9) = HIDWORD(a1) - a1;
          if (!__OFSUB__(HIDWORD(a1), a1))
          {
            v9 = v9;
LABEL_16:
            if (v9 == 64)
            {
LABEL_23:
              v3 = 0;
              return v3 & 1;
            }

            if (v2 == 2)
            {
              v13 = *(a1 + 16);
              v12 = *(a1 + 24);
              v8 = __OFSUB__(v12, v13);
              v4 = v12 - v13;
              if (!v8)
              {
                goto LABEL_22;
              }

LABEL_34:
              __break(1u);
              goto LABEL_35;
            }

            if (v2 != 1)
            {
LABEL_22:
              if (v4 < 68)
              {
                goto LABEL_23;
              }

              if (v2 == 2)
              {
                a1 = *(a1 + 16);
LABEL_28:
                v3 = sub_237A2CCA8(a1);
                return v3 & 1;
              }

              if (a1 >> 32 >= a1)
              {
                a1 = a1;
                goto LABEL_28;
              }

LABEL_35:
              __break(1u);
            }

            if (!__OFSUB__(HIDWORD(a1), a1))
            {
              v4 = HIDWORD(a1) - a1;
              goto LABEL_22;
            }

LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v9 = BYTE6(a2);
        goto LABEL_16;
      }

      v3 = 1;
      return v3 & 1;
    case 2uLL:
      v7 = *(a1 + 16);
      v6 = *(a1 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_6;
      }

      goto LABEL_31;
    case 3uLL:
      return v3 & 1;
    default:
      v5 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_237A2C2B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

__n128 sub_237A2C308@<Q0>(int64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = 0;
  v5 = 0;
  LOBYTE(v6) = 0;
  v7 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v14 = a1;
      if (a1 > a1 >> 32)
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v15 = sub_237C0581C();
      if (v15)
      {
        v16 = sub_237C0583C();
        if (__OFSUB__(v14, v16))
        {
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

        v15 += v14 - v16;
      }

      a1 = sub_237C0582C();
      if (!v15)
      {
        __break(1u);
LABEL_9:
        v18 = *(a1 + 16);
        v15 = sub_237C0581C();
        if (!v15)
        {
LABEL_12:
          sub_237C0582C();
          if (v15)
          {
            goto LABEL_13;
          }

LABEL_18:
          __break(1u);
          JUMPOUT(0x237A2C4E4);
        }

        v19 = sub_237C0583C();
        if (!__OFSUB__(v18, v19))
        {
          v15 += v18 - v19;
          goto LABEL_12;
        }

        goto LABEL_16;
      }

LABEL_13:
      v3 = *v15;
      v5 = *(v15 + 8);
      v17.i32[0] = *(v15 + 9);
      v7 = vmovl_u8(v17).u64[0];
      LOBYTE(v6) = *(v15 + 13);
      v21 = *(v15 + 14);
      v22 = *(v15 + 30);
      v23 = *(v15 + 46);
      v24 = *(v15 + 62);
LABEL_14:
      *a3 = v3;
      *(a3 + 8) = v5;
      *(a3 + 9) = vuzp1_s8(v7, v3).u32[0];
      *(a3 + 13) = v6;
      *(a3 + 14) = v21;
      *(a3 + 30) = v22;
      result = v23;
      *(a3 + 46) = v23;
      *(a3 + 62) = v24;
      return result;
    case 2uLL:
      goto LABEL_9;
    case 3uLL:
      goto LABEL_14;
    default:
      v8 = vdupq_n_s64(a1);
      v9 = vshlq_u64(v8, xmmword_237C0D1C0);
      v10 = vmovn_s64(vshlq_u64(v8, xmmword_237C0D1B0));
      v10.i8[1] = v10.i8[4];
      *v8.i8 = vmovn_s64(vshlq_u64(v8, xmmword_237C0D1D0));
      v11 = vzip1_s16(a1, v10);
      v12 = vmovn_s64(v9);
      v12.i8[1] = v12.i8[4];
      v12.i8[2] = v8.i8[0];
      v12.i8[3] = v8.i8[4];
      v3 = vzip1_s32(v11, v12);
      v13 = vdupq_n_s64(a2);
      v7 = vmovn_s32(vuzp1q_s32(vshlq_u64(v13, xmmword_237C0D1F0), vshlq_u64(v13, xmmword_237C0D1E0)));
      v6 = a2 >> 40;
      v5 = a2;
      goto LABEL_14;
  }
}

uint64_t sub_237A2C548(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(void))
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_16:
        __break(1u);
LABEL_17:
        __break(1u);
      }

      if (sub_237C0581C() && __OFSUB__(a1, sub_237C0583C()))
      {
        goto LABEL_17;
      }

LABEL_12:
      sub_237C0582C();
      OUTLINED_FUNCTION_1_10();
      a4();
      result = sub_2379E86D4(a1, a2);
      if (!v4)
      {
        return v12;
      }

      return result;
    case 2uLL:
      v8 = *(a1 + 16);
      v9 = *(a1 + 24);

      if (sub_237C0581C() && __OFSUB__(v8, sub_237C0583C()))
      {
        goto LABEL_16;
      }

      if (!__OFSUB__(v9, v8))
      {
        goto LABEL_12;
      }

      __break(1u);
LABEL_7:
      OUTLINED_FUNCTION_1_10();
      a4();
      result = sub_2379E86D4(a1, a2);
      if (!v4)
      {
        return v11;
      }

      return result;
    default:
      goto LABEL_7;
  }
}

void sub_237A2C7F8(uint64_t a1@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *a2;
  sub_237BC17C0();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = a4 >> 62;
  v15 = 64;
  v16 = a3;
  while (2)
  {
    v17 = v15 + 64;
    if (__OFADD__(v15, 64))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A2CA44);
    }

    v18 = v13;
    switch(v14)
    {
      case 1uLL:
        v18 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (!v21)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      case 3uLL:
        if (v17 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v17 >= v18)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v22 = *(a1 + v15 + 4);
        v23 = *(a1 + v15 + 8);
        v35 = *(a1 + v15 + 16);
        v36 = *(a1 + v15 + 32);
        v37 = *(a1 + v15 + 48);
        if (*(a1 + v15) == -559038737)
        {
          v24 = *(v10 + 16);
          if (v24 >= *(v10 + 24) >> 1)
          {
            v33 = v16;
            v32 = v11;
            v31 = v12;
            sub_237BC17C0();
            v12 = v31;
            v11 = v32;
            v16 = v33;
            v10 = v29;
          }

          *(v10 + 16) = v24 + 1;
          v25 = v10 + (v24 << 6);
          *(v25 + 32) = -559038737;
          *(v25 + 36) = v22;
          *(v25 + 40) = v23;
          *(v25 + 64) = v36;
          *(v25 + 80) = v37;
          *(v25 + 48) = v35;
          if (v23 < 0)
          {
            goto LABEL_26;
          }

          v26 = (v23 - 1) / 64;
          if ((v26 - 0x1FFFFFFFFFFFFFFLL) >> 58 != 63)
          {
            goto LABEL_27;
          }

          v27 = v26 << 6;
          v21 = __OFADD__(v27, 128);
          v28 = v27 + 128;
          if (v21)
          {
            goto LABEL_28;
          }

          v21 = __OFADD__(v15, v28);
          v15 += v28;
          if (v21)
          {
            goto LABEL_29;
          }

          if (!--v8)
          {
            goto LABEL_23;
          }

          continue;
        }

LABEL_24:

        sub_237A01064();
        swift_allocError();
        *v30 = 1;
        swift_willThrow();
        return;
    }
  }
}

void sub_237A2CA54(uint64_t a1@<X0>, unsigned int *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v8 = *a2;
  sub_237BC17C0();
  v10 = v9;
  if (!v8)
  {
LABEL_23:
    *a5 = v10;
    return;
  }

  v11 = __OFSUB__(HIDWORD(a3), a3);
  v12 = HIDWORD(a3) - a3;
  v13 = BYTE6(a4);
  v14 = 40;
  v15 = a4 >> 62;
  v16 = 0uLL;
  v17 = a3;
  while (2)
  {
    v18 = v14 + 56;
    if (__OFADD__(v14, 56))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      JUMPOUT(0x237A2CC98);
    }

    v19 = v13;
    switch(v15)
    {
      case 1uLL:
        v19 = v12;
        if (v11)
        {
          goto LABEL_31;
        }

        goto LABEL_11;
      case 2uLL:
        v21 = *(v17 + 16);
        v20 = *(v17 + 24);
        v22 = __OFSUB__(v20, v21);
        v19 = v20 - v21;
        if (!v22)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      case 3uLL:
        if (v18 < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_24;
      default:
LABEL_11:
        if (v18 >= v19)
        {
          goto LABEL_24;
        }

LABEL_14:
        if (!a1)
        {
          goto LABEL_32;
        }

        v23 = a1 + v14;
        if (*(a1 + v14) == -559038737)
        {
          v24 = *(v23 + 4);
          v25 = *(v23 + 8);
          v26 = *(v10 + 16);
          if (v26 >= *(v10 + 24) >> 1)
          {
            v36 = v17;
            v35 = v11;
            v34 = v12;
            v33 = *(v23 + 8);
            sub_237BC17C0();
            v25 = v33;
            v16 = 0uLL;
            v12 = v34;
            v11 = v35;
            v17 = v36;
            v10 = v31;
          }

          *(v10 + 16) = v26 + 1;
          v27 = v10 + (v26 << 6);
          *(v27 + 32) = -559038737;
          *(v27 + 36) = v24;
          *(v27 + 40) = v25;
          *(v27 + 56) = v16;
          *(v27 + 72) = v16;
          *(v27 + 88) = 0;
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_26;
          }

          v28 = (v25 - 1) / 8;
          if ((v28 - 0xFFFFFFFFFFFFFFFLL) >> 61 != 7)
          {
            goto LABEL_27;
          }

          v29 = 8 * v28;
          v22 = __OFADD__(v29, 64);
          v30 = v29 + 64;
          if (v22)
          {
            goto LABEL_28;
          }

          v22 = __OFADD__(v14, v30);
          v14 += v30;
          if (v22)
          {
            goto LABEL_29;
          }

          if (!--v8)
          {
            goto LABEL_23;
          }

          continue;
        }

LABEL_24:

        sub_237A01064();
        swift_allocError();
        *v32 = 1;
        swift_willThrow();
        return;
    }
  }
}

uint64_t sub_237A2CCA8(uint64_t a1)
{
  v2 = sub_237C0581C();
  if (v2)
  {
    v3 = v2;
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_10;
    }

    v5 = a1 - result + v3;
  }

  else
  {
    v5 = 0;
  }

  result = sub_237C0582C();
  if (!v5)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  return *(v5 + 64) != -559038737 && *(v5 + 40) == -559038737;
}

uint64_t sub_237A2CD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_237C0581C();
  if (v4)
  {
    v5 = v4;
    result = sub_237C0583C();
    if (__OFSUB__(a1, result))
    {
      __break(1u);
      goto LABEL_8;
    }

    v7 = a1 - result + v5;
  }

  else
  {
    v7 = 0;
  }

  result = sub_237C0582C();
  if (v7)
  {
    *a2 = *v7;
    *(a2 + 8) = *(v7 + 8);
    *(a2 + 24) = *(v7 + 24);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_237A2CDD8(id a1, char a2, id a3, char a4, uint64_t a5, uint64_t *a6)
{
  v7 = a1;
  if (a2)
  {
    v8 = a1;
  }

  else if (a4)
  {
    v10 = a3;

    return a3;
  }

  else
  {
    v13 = a3;
    v14 = a1;
    sub_2379DBCF4(a1, 0);
    sub_2379DBCF4(a3, 0);
    sub_237B6E1C8(&v14, &v13, a5, a6, &v15);
    sub_2379DBC9C(a3, 0);
    sub_2379DBC9C(v7, 0);

    return v15;
  }

  return v7;
}

void *MLDataTable.init(contentsOf:options:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v5 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v84 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v81 - v14;
  v16 = sub_237C0825C();
  OUTLINED_FUNCTION_0();
  v86 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v81 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v91 = &v81 - v22;
  memcpy(__dst, a2, 0x90uLL);
  if ((sub_237C0594C() & 1) == 0)
  {
    sub_237A2D6E8(__dst);
    sub_2379E8AF0();
    v35 = swift_allocError();
    *v36 = 0xD00000000000002ALL;
    v36[1] = 0x8000000237C18560;
    OUTLINED_FUNCTION_1_11(v35, v36);
    return (*(v7 + 8))(a1, v5);
  }

  v82 = v5;
  v83 = v7;
  sub_237C0597C();
  sub_237C081DC();
  sub_237C081AC();
  v23 = a1;
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
  {
    v37 = v86;
    (*(v86 + 32))(v91, v15, v16);
    sub_237C081BC();
    v38 = sub_237C0823C();
    v39 = *(v37 + 8);
    v39(v20, v16);
    if (v38 & 1) != 0 || (sub_237C0824C(), v40 = sub_237C0823C(), v39(v20, v16), (v40))
    {
      v41 = v16;
      type metadata accessor for CMLTable();
      v42 = sub_237C05A9C();
      v44 = v43;
      memcpy(v89, __dst, sizeof(v89));
      nullsub_1();
      memcpy(v88, v89, sizeof(v88));
      v45 = v42;
      v46 = v44;
      v47 = 1;
    }

    else
    {
      sub_237A2D6E8(__dst);
      sub_237C081EC();
      v66 = sub_237C0823C();
      v39(v20, v16);
      v41 = v16;
      if ((v66 & 1) == 0)
      {
        OUTLINED_FUNCTION_9_8();
        OUTLINED_FUNCTION_0_16();
        v73 = sub_237C0597C();
        MEMORY[0x2383DC360](v73);

        OUTLINED_FUNCTION_5_11();
        v75 = v89[0];
        v74 = v89[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
        v76 = swift_allocObject();
        *(v76 + 16) = xmmword_237C0B660;
        *(v76 + 56) = MEMORY[0x277D837D0];
        *(v76 + 32) = v75;
        *(v76 + 40) = v74;

        OUTLINED_FUNCTION_6_12();

        sub_2379E8AF0();
        v77 = swift_allocError();
        *v78 = v75;
        v78[1] = v74;
        OUTLINED_FUNCTION_1_11(v77, v78);
        goto LABEL_12;
      }

      type metadata accessor for CMLTable();
      v67 = sub_237C05A9C();
      v69 = v68;
      sub_237A2DCA4(v89);
      memcpy(v88, v89, sizeof(v88));
      v45 = v67;
      v46 = v69;
      v47 = 0;
    }

    v48 = v87;
    v49 = sub_237A2DEE8(v45, v46, v47, v88);
    if (!v48)
    {
      v65 = v49;
      (*(v83 + 8))(v23, v82);
      v39(v91, v41);
      goto LABEL_23;
    }

LABEL_12:
    (*(v83 + 8))(v23, v82);
    return (v39)(v91, v41);
  }

  sub_237A2D6E8(__dst);
  sub_237A2D718(v15);
  OUTLINED_FUNCTION_4_13();
  v24 = sub_237C059CC();
  v25 = v82;
  v26 = *(v83 + 8);
  v26(v12, v82);
  if (v24)
  {
    v27 = v84;
    OUTLINED_FUNCTION_4_13();
    v28 = sub_237C05A9C();
    v30 = v29;
    v26(v27, v25);
    v31 = v87;
    v32 = sub_237A2DC08(v28, v30);
    if (v31)
    {

      v33 = OUTLINED_FUNCTION_8_9();
      return (v26)(v33);
    }

    v70 = v32;

    type metadata accessor for CMLTable();
    v65 = swift_allocObject();
    *(v65 + 16) = v70;
    v71 = OUTLINED_FUNCTION_8_9();
    (v26)(v71);
    goto LABEL_23;
  }

  v91 = v26;
  if ((sub_237C059CC() & 1) == 0 || (v50 = [objc_opt_self() defaultManager], sub_237C05A2C(), sub_237C05A9C(), (v91)(v12, v25), v51 = sub_237C086BC(), , v52 = objc_msgSend(v50, sel_fileExistsAtPath_, v51), v50, v51, !v52))
  {
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_0_16();
    v57 = sub_237C0597C();
    MEMORY[0x2383DC360](v57);

    OUTLINED_FUNCTION_5_11();
    v59 = v89[0];
    v58 = v89[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B3B0, &unk_237C0E1D0);
    v60 = swift_allocObject();
    *(v60 + 16) = xmmword_237C0B660;
    *(v60 + 56) = MEMORY[0x277D837D0];
    *(v60 + 32) = v59;
    *(v60 + 40) = v58;

    OUTLINED_FUNCTION_6_12();

    sub_2379E8AF0();
    v61 = swift_allocError();
    *v62 = v59;
    v62[1] = v58;
    OUTLINED_FUNCTION_1_11(v61, v62);
    goto LABEL_18;
  }

  v53 = sub_237C05A9C();
  v54 = v87;
  v56 = sub_237A2DC08(v53, v55);
  if (v54)
  {

LABEL_18:
    v63 = OUTLINED_FUNCTION_8_9();
    return (v91)(v63, v64);
  }

  v79 = v56;

  type metadata accessor for CMLTable();
  v65 = swift_allocObject();
  *(v65 + 16) = v79;
  v80 = OUTLINED_FUNCTION_8_9();
  (v91)(v80);
LABEL_23:
  type metadata accessor for _DataTable();
  swift_allocObject();
  result = sub_237B6C578(v65);
  v72 = v85;
  *v85 = result;
  *(v72 + 8) = 0;
  return result;
}

uint64_t sub_237A2D718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E0, &qword_237C0D200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 MLDataTable.ParsingOptions.init(containsHeader:delimiter:comment:escape:doubleQuote:quote:skipInitialSpaces:missingValues:lineTerminator:selectColumns:maxRows:skipRows:)@<Q0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, __int128 a13, __n128 a14, uint64_t a15, char a16, uint64_t a17)
{
  result = a14;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  *(a9 + 104) = a14;
  *(a9 + 120) = a15;
  *(a9 + 128) = a16 & 1;
  *(a9 + 136) = a17 & ~(a17 >> 63);
  return result;
}

uint64_t MLDataTable.ParsingOptions.delimiter.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.comment.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.escape.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.quote.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.missingValues.setter(uint64_t a1)
{

  *(v1 + 88) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.lineTerminator.setter()
{
  OUTLINED_FUNCTION_5_4();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t MLDataTable.ParsingOptions.selectColumns.setter(uint64_t a1)
{

  *(v1 + 112) = a1;
  return result;
}

uint64_t MLDataTable.ParsingOptions.maxRows.setter(uint64_t result, char a2)
{
  *(v2 + 120) = result;
  *(v2 + 128) = a2 & 1;
  return result;
}

uint64_t sub_237A2DC08(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = a1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
LABEL_7:
      v6[0] = v4;
      v6[1] = v3 & 0xFFFFFFFFFFFFFFLL;
      result = sub_237B0FA84(v6);
      if (!v2 && !result)
      {
        __break(1u);
      }

      return result;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      result = sub_237B0FA84((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (v2 || result)
      {
        return result;
      }

      __break(1u);
      goto LABEL_7;
    }
  }

  result = sub_237C08ECC();
  if (!v2)
  {
    return v6[2];
  }

  return result;
}

uint64_t sub_237A2DCB4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 144))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A2DCF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_0_16()
{
  v2 = *(v0 + 208);
  *(v0 + 200) = *(v0 + 200);
  *(v0 + 208) = v2;

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_1_11(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_4_13()
{

  return sub_237C05A2C();
}

void OUTLINED_FUNCTION_5_11()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_6_12()
{

  return sub_237C0939C();
}

uint64_t OUTLINED_FUNCTION_9_8()
{
  *(v0 + 200) = 0;
  *(v0 + 208) = 0xE000000000000000;

  return sub_237C08EDC();
}

uint64_t sub_237A2DE60()
{
  result = sub_237B0E548(*(v0 + 16));
  if (!v1)
  {
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2DE9C(uint64_t a1)
{
  result = sub_237B10680(*(v1 + 16), *(a1 + 16));
  if (!v2 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2DEE8(uint64_t a1, uint64_t a2, int a3, void *__src)
{
  v6 = v4;
  memcpy(__dst, __src, 0x90uLL);
  v10 = MEMORY[0x2383DDB70](0);
  if (!v10)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = v10;
  type metadata accessor for CMLParameters();
  inited = swift_initStackObject();
  *(inited + 16) = v11;
  v20 = sub_237B0F164(0, v13, v14, v15, v16, v17, v18, v19, v78, v83, v88, v93, v98, v103, v108, v113, v118, v123, v128, v133, v137, v142, v147, v152, v157, v162, v167, v172, v177, v182);
  if (v5)
  {
    goto LABEL_26;
  }

  if (!v20)
  {
    goto LABEL_20;
  }

  type metadata accessor for CMLFeatureValue();
  v21 = swift_initStackObject();
  OUTLINED_FUNCTION_1_12(v21);
  OUTLINED_FUNCTION_10_7(9);
  OUTLINED_FUNCTION_13_5();

  memcpy(v189, __dst, sizeof(v189));
  if (sub_237A31B90(v189) != 1)
  {
    v29 = sub_237B0F164(v189[0], v22, v23, v24, v25, v26, v27, v28, v79, v84, v89, v94, v99, v104, v109, v114, v119, v124, v129, v134, v138, v143, v148, v153, v158, v163, v168, v173, v178, v183);
    v120 = a1;
    if (v29)
    {
      v192 = a3;
      v110 = v6;
      v30 = swift_initStackObject();
      OUTLINED_FUNCTION_1_12(v30);
      OUTLINED_FUNCTION_10_7(10);

      v191 = __dst[7];
      v115 = __dst[8];
      v125 = __dst[5];
      v130 = __dst[9];
      v188 = __dst[10];
      v90 = __dst[11];
      v95 = __dst[12];
      v100 = __dst[13];
      v105 = __dst[14];
      v187 = __dst[16];
      v80 = __dst[15];
      v85 = __dst[17];
      swift_bridgeObjectRetain_n();
      v31 = sub_237A2E7CC();

      sub_237A2F598(11, v31);

      swift_bridgeObjectRetain_n();
      v32 = sub_237A2E7CC();

      sub_237A2F598(12, v32);

      swift_bridgeObjectRetain_n();
      OUTLINED_FUNCTION_17_8();
      v33 = sub_237A2E7CC();
      LOBYTE(a3) = v192;
      v34 = v33;

      sub_237A2F598(13, v34);
      OUTLINED_FUNCTION_21_8();

      v42 = sub_237B0F164(v191, v35, v36, v37, v38, v39, v40, v41, v80, v85, v90, v95, v100, v105, v110, v115, v120, v125, v130, a2, v139, v144, v149, v154, v159, v164, v169, v174, v179, v184);
      if (!inited)
      {
        if (v42)
        {
          v43 = swift_initStackObject();
          OUTLINED_FUNCTION_1_12(v43);
          OUTLINED_FUNCTION_10_7(14);
          OUTLINED_FUNCTION_13_5();

          swift_bridgeObjectRetain_n();
          OUTLINED_FUNCTION_17_8();
          v44 = sub_237A2E7CC();

          sub_237A2F598(15, v44);
          OUTLINED_FUNCTION_21_8();

          if (sub_237B0F164(v188, v45, v46, v47, v48, v49, v50, v51, v81, v86, v91, v96, v101, v106, v111, v116, v121, v126, v131, v135, v140, v145, v150, v155, v160, v165, v170, v175, v180, v185))
          {
            v53 = swift_initStackObject();
            OUTLINED_FUNCTION_1_12(v53);
            OUTLINED_FUNCTION_10_7(16);

            sub_237BF2450(v54);
            OUTLINED_FUNCTION_0_17();
            OUTLINED_FUNCTION_17_8();
            sub_237A2E8A0(v55, v56);

            OUTLINED_FUNCTION_10_7(17);
            OUTLINED_FUNCTION_13_5();

            swift_bridgeObjectRetain_n();
            OUTLINED_FUNCTION_17_8();
            sub_237A2E7CC();

            OUTLINED_FUNCTION_10_7(18);
            OUTLINED_FUNCTION_13_5();

            if (v107)
            {

              sub_237BF2450(v64);
              OUTLINED_FUNCTION_0_17();
              OUTLINED_FUNCTION_17_8();
              sub_237A2E8A0(v65, v66);

              OUTLINED_FUNCTION_10_7(19);
              OUTLINED_FUNCTION_13_5();

              a1 = v122;
              a2 = v136;
            }

            else
            {
              a1 = v122;
            }

            if ((v187 & 1) == 0)
            {
              if (!sub_237B0F164(v82, v57, v58, v59, v60, v61, v62, v63, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186))
              {
LABEL_25:
                __break(1u);
                goto LABEL_26;
              }

              v67 = swift_initStackObject();
              OUTLINED_FUNCTION_1_12(v67);
              OUTLINED_FUNCTION_10_7(20);
              OUTLINED_FUNCTION_13_5();
            }

            sub_237A31BA8(__dst);
            if (sub_237B0F164(v87, v68, v69, v70, v71, v72, v73, v74, v82, v87, v92, v97, v102, v107, v112, v117, v122, v127, v132, v136, v141, v146, v151, v156, v161, v166, v171, v176, v181, v186))
            {
              v75 = swift_initStackObject();
              OUTLINED_FUNCTION_1_12(v75);
              OUTLINED_FUNCTION_10_7(21);
              OUTLINED_FUNCTION_13_5();

              goto LABEL_18;
            }

LABEL_24:
            __break(1u);
            goto LABEL_25;
          }

LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      while (1)
      {
LABEL_26:
        swift_unexpectedError();
        __break(1u);

        OUTLINED_FUNCTION_7_9();
      }
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_18:

  v76 = sub_237A2FF94(a1, a2, a3 & 1, inited);

  swift_setDeallocating();
  tc_v1_release();
  OUTLINED_FUNCTION_103();
  result = swift_allocObject();
  *(result + 16) = v76;
  return result;
}

uint64_t sub_237A2E688(unint64_t a1)
{
  if (a1 > 9)
  {
    return 8;
  }

  else
  {
    return byte_237C0D48E[a1];
  }
}

uint64_t sub_237A2E6E8()
{
  if (*(v0 + 24) == 1)
  {
    tc_v1_release();
  }

  return v0;
}

uint64_t sub_237A2E714()
{
  sub_237A2E6E8();
  OUTLINED_FUNCTION_4_14();

  return swift_deallocClassInstance();
}

uint64_t sub_237A2E764(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_237A2E774()
{
  result = *(v0 + 16);
  if (result)
  {
    *(v0 + 16) = 0;
    *(v0 + 24) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2E78C()
{
  result = MEMORY[0x2383DDAD0](0);
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_4_14();
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    return OUTLINED_FUNCTION_9_9(v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2E7CC()
{
  v1 = sub_237C0876C();
  v2 = sub_237B0F9C4(v1 + 32);
  if (v0)
  {
  }

  else
  {
    v4 = v2;

    if (v4)
    {

      OUTLINED_FUNCTION_4_14();
      v5 = swift_allocObject();
      *(v5 + 16) = v4;
      return OUTLINED_FUNCTION_9_9(v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2E8A0(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(*(a1 + 16));
  if (v2)
  {
  }

  v4 = result;
  if (result)
  {

    OUTLINED_FUNCTION_4_14();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    return OUTLINED_FUNCTION_9_9(v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_237A2E910()
{
  v0 = tc_v1_ft_type();
  result = sub_237A2E688(v0);
  if (result == 8)
  {
    __break(1u);
  }

  else
  {

    return sub_237A2E6A8(result);
  }

  return result;
}

uint64_t sub_237A2EA30(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_237A2E6C8(a1);
  result = sub_237B106E0(v3, qword_237C0D498[v4]);
  if (!v2 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2EABC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CMLFeatureValue();

  v6 = sub_237A2E7CC();
  if (v4)
  {
    return a3;
  }

  a3 = sub_237B12840(*(v3 + 16), *(v6 + 16), *(a3 + 16));

  if ((a3 & 0x8000000000000000) == 0)
  {
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A2ECCC()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0 && !result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A2ED1C(uint64_t a1, char a2)
{
  v3 = v2;
  if (sub_237A2F140())
  {
    v13 = sub_237B0E008(*(a1 + 16));
    if (!v2)
    {
      v14 = v13;
      if (v13)
      {

        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v14;
        return result;
      }

      __break(1u);
      goto LABEL_34;
    }
  }

  else
  {
    switch(a2)
    {
      case 1:
        v24 = sub_237B0F594(0, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        if (v2)
        {
        }

        if (v24)
        {
          goto LABEL_17;
        }

        goto LABEL_39;
      case 2:
        type metadata accessor for CMLFeatureValue();
        v21 = sub_237A2E7CC();
        goto LABEL_23;
      case 3:
        if (!MEMORY[0x2383DDAC0](0))
        {
          goto LABEL_36;
        }

        type metadata accessor for CMLFeatureValue();
        type metadata accessor for CMLSequence();
        inited = swift_initStackObject();
        v19 = OUTLINED_FUNCTION_3_14(inited);
        v20 = sub_237B0DFA8;
        goto LABEL_14;
      case 4:
        goto LABEL_9;
      case 5:
        type metadata accessor for CMLFeatureValue();
        v21 = sub_237A2E78C();
        goto LABEL_24;
      case 6:
        v26 = sub_237B14A90(1, &unk_284ABEB98, &unk_284ABEBC0);
        if (v2)
        {
          goto LABEL_41;
        }

        v27 = v26;
        if (!v26)
        {
          goto LABEL_37;
        }

        type metadata accessor for CMLMultiArray();
        v28 = swift_initStackObject();
        *(v28 + 16) = v27;
        type metadata accessor for CMLFeatureValue();
        OUTLINED_FUNCTION_12_9();
        v19 = v28;
        goto LABEL_22;
      default:
        v16 = sub_237B0F164(0, v6, v7, v8, v9, v10, v11, v12, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
        if (v2)
        {
        }

        if (v16)
        {
LABEL_17:
          type metadata accessor for CMLFeatureValue();
          OUTLINED_FUNCTION_11_9();
          v25 = swift_allocObject();
          OUTLINED_FUNCTION_3_14(v25);
        }

        else
        {
          __break(1u);
LABEL_9:
          v17 = MEMORY[0x2383DDA80](0);
          if (!v17)
          {
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v18 = v17;
          type metadata accessor for CMLFeatureValue();
          type metadata accessor for CMLDictionary();
          v19 = swift_initStackObject();
          *(v19 + 16) = v18;
          v20 = sub_237B0DF48;
LABEL_14:
          v23 = v20;
LABEL_22:
          v21 = sub_237A2E8A0(v19, v23);
LABEL_23:
          v3 = v2;
          if (v2)
          {
          }

LABEL_24:
          v25 = v21;
        }

        v29 = MEMORY[0x2383DDAC0](0);
        if (!v29)
        {
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v30 = v29;
        type metadata accessor for CMLSequence();
        v31 = swift_initStackObject();
        *(v31 + 16) = v30;
        OUTLINED_FUNCTION_9_9(v31);
        sub_237A2DE9C(v25);
        if (v3)
        {

          swift_setDeallocating();
          sub_237A2E6E8();
          OUTLINED_FUNCTION_4_14();
          swift_deallocClassInstance();
        }

        v32 = *(v31 + 16);

        v33 = sub_237B0E008(v32);
        v34 = v33;
        if (!v33)
        {
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          OUTLINED_FUNCTION_2_16();
          swift_unexpectedError();
          __break(1u);
          JUMPOUT(0x237A2F0E0);
        }

        *(swift_initStackObject() + 16) = v34;
        v35 = sub_237B10500(v34, 0);
        if (!v35)
        {
          goto LABEL_40;
        }

        swift_setDeallocating();
        sub_237A2E6E8();
        OUTLINED_FUNCTION_4_14();
        swift_deallocClassInstance();

        OUTLINED_FUNCTION_103();
        result = swift_allocObject();
        *(result + 16) = v35;
        break;
    }
  }

  return result;
}

uint64_t sub_237A2F140()
{
  v0 = OUTLINED_FUNCTION_23_7();
  result = v1(v0);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_237A2F168()
{
  v0 = tc_v1_sarray_type();
  result = sub_237A2E688(v0);
  if (result == 8)
  {
    __break(1u);
  }

  else
  {

    return sub_237A2E6A8(result);
  }

  return result;
}

uint64_t sub_237A2F1D4(uint64_t result, uint64_t (*a2)(void, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = a2(*(v2 + 16), result);
  if (v3)
  {
    return result;
  }

  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  type metadata accessor for CMLFeatureValue();
  OUTLINED_FUNCTION_11_9();
  v4 = swift_allocObject();
  return OUTLINED_FUNCTION_3_14(v4);
}

uint64_t sub_237A2F32C()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0)
  {
    if (result)
    {
      type metadata accessor for CMLFeatureValue();
      OUTLINED_FUNCTION_11_9();
      v4 = swift_allocObject();
      return OUTLINED_FUNCTION_3_14(v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A2F37C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  OUTLINED_FUNCTION_18_8();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = swift_slowAlloc();
  OUTLINED_FUNCTION_18_8();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_237A3175C;
  *(v11 + 24) = v9;
  *v10 = sub_237A31764;
  v10[1] = v11;
  v12 = *(v4 + 16);
  sub_237A2E6C8(a3);

  v13 = sub_237B16268(v12, sub_237A31E88, sub_237A31E7C);
  if (!v5)
  {
    v14 = v13;
    if (v13)
    {

      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v14;
      return result;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_9();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A2F500(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for CMLFeatureValue();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  a2();

  v5 = sub_237A2E774();

  return v5;
}

uint64_t sub_237A2F598(uint64_t a1, uint64_t a2)
{
  sub_237B0B320(a1);
  OUTLINED_FUNCTION_22_5();

  v2 = OUTLINED_FUNCTION_8_10();
  sub_237A2F634(v2, v3, v4, v5);
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A2F5E8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2)
  {
    a1 = sub_237B114F4(a1, *(a3 + 16));
    if (v4)
    {
      return a1;
    }

    if (a1)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  a1 = sub_237B0FA24(a1);
  if (v4)
  {
    return a1;
  }

  if (!a1)
  {
    __break(1u);
    return a1;
  }

LABEL_7:
  *a4 = a1;
  return a1;
}

uint64_t sub_237A2F634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8[0] = a1;
    v8[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = *(a3 + 16);
    v5 = *(a4 + 16);
    v6 = v8;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v4 = *(a3 + 16);
  v5 = *(a4 + 16);
  v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237B132E4(v4, v6, v5);
LABEL_7:
}

uint64_t sub_237A2F704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12[0] = a1;
      v12[1] = a2 & 0xFFFFFFFFFFFFFFLL;

      v10 = v12;
      goto LABEL_6;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFFFFLL;

      v10 = (v9 + 32);
LABEL_6:
      sub_237A2F800(a3, a4, a5, v10);
      goto LABEL_7;
    }
  }

  sub_237C08ECC();
LABEL_7:
  if (v5)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7[0] = a1;
    v7[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = *(a3 + 16);
    v5 = v7;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
  }

  v4 = *(a3 + 16);
  v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237B133A4(v4, a4, v5);
}

uint64_t sub_237A2F8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_24_6();
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v14[0] = v6;
    v14[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(a3 + 16);
    v11 = *(a4 + 16);
    v12 = v14;
    goto LABEL_6;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v10 = *(a3 + 16);
  v11 = *(a4 + 16);
  v12 = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  v8(v10, v12, v11);
LABEL_7:
}

uint64_t sub_237A2F968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v14 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      MEMORY[0x28223BE20](a1);
      if ((a4 & 0x1000000000000000) == 0)
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v23 = v15;
          v24 = a4 & 0xFFFFFFFFFFFFFFLL;

          v16 = a7 & 1;
          v17 = &v23;
          goto LABEL_17;
        }

        if ((v15 & 0x1000000000000000) != 0)
        {

          v16 = a7 & 1;
          v17 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_17:
          sub_237A2FBF4(a5, a6, v16, a8, v14, v17);
          goto LABEL_18;
        }
      }

      sub_237C08ECC();
LABEL_18:
      if (!v8)
      {
        goto LABEL_19;
      }

      goto LABEL_15;
    }

LABEL_21:
    sub_237C08ECC();
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  v23 = a1;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  MEMORY[0x28223BE20](a1);
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22[0] = v18;
      v22[1] = a4 & 0xFFFFFFFFFFFFFFLL;

      v19 = a7 & 1;
      v20 = v22;
      goto LABEL_13;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {

      v19 = a7 & 1;
      v20 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_13:
      sub_237A2FBF4(a5, a6, v19, a8, &v23, v20);
      goto LABEL_14;
    }
  }

  sub_237C08ECC();
LABEL_14:
  if (!v8)
  {
LABEL_19:
  }

LABEL_15:
}

uint64_t sub_237A2FBF4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_10;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = *(a4 + 16);
      v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      goto LABEL_6;
    }

LABEL_10:
    sub_237C08ECC();
  }

  v9[0] = a1;
  v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  v6 = *(a4 + 16);
  v7 = v9;
LABEL_6:
  if (a3)
  {
    sub_237B15CDC(v6, a5, a6, v7);
  }

  else
  {
    sub_237B15D3C(v6, a5, a6, v7);
  }
}

uint64_t sub_237A2FCB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_24_6();
  if ((v15 & 0x1000000000000000) != 0)
  {
    goto LABEL_11;
  }

  v16 = v14;
  if ((v13 & 0x2000000000000000) != 0)
  {

    v23 = OUTLINED_FUNCTION_14_4();
    sub_237A2FDF0(v23, v24, v25, v26, v27, v28, v16, a9, a10);
    goto LABEL_7;
  }

  if ((v12 & 0x1000000000000000) == 0)
  {
LABEL_11:
    sub_237C08ECC();
  }

  else
  {
    v30 = v14;

    v17 = OUTLINED_FUNCTION_14_4();
    sub_237A2FDF0(v17, v18, v19, v20, v21, v22, v30, a9, a10);
  }

LABEL_7:
  if (v11)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_24_6();
  if ((v15 & 0x1000000000000000) == 0 && ((v14 & 0x2000000000000000) != 0 || (v13 & 0x1000000000000000) != 0))
  {

    sub_237A2FEF8(a3, a4, a5);
  }

  else
  {
    sub_237C08ECC();
  }

  if (v9)
  {
  }

  else
  {
  }
}

uint64_t sub_237A2FEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_24_6();
  if ((v9 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((v5 & 0x2000000000000000) != 0)
  {
    v13[0] = v4;
    v13[1] = v5 & 0xFFFFFFFFFFFFFFLL;
    v10 = *(a3 + 16);
    v11 = v13;
    goto LABEL_6;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
LABEL_8:
    sub_237C08ECC();
    goto LABEL_7;
  }

  v10 = *(a3 + 16);
  v11 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  v7(v10, v8, v6, v11);
LABEL_7:
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A2FF94(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_21:
    sub_237C08ECC();

    if (!v4)
    {
      return v14[3];
    }

    return v5;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    goto LABEL_15;
  }

  v10 = sub_237B114F4(v9 + 32, *(a4 + 16));
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v10;
  if (v10)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_8:
  v14[0] = v8;
  v14[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  if ((a3 & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = sub_237B114F4(v14, *(a4 + 16));
  if (v4)
  {
LABEL_16:

    return v5;
  }

  v5 = v11;
  if (v11)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_12:
  v12 = sub_237B0FA24(v14);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = v12;
  if (v12)
  {
    goto LABEL_19;
  }

  __break(1u);
LABEL_15:
  result = sub_237B0FA24(v9 + 32);
  if (v4)
  {
    goto LABEL_16;
  }

  v5 = result;
  if (result)
  {
LABEL_19:

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A300CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = a1;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_13:
    type metadata accessor for CMLVariant();
    sub_237C08ECC();
    if (v4)
    {
      goto LABEL_8;
    }

    v7 = v11[3];
LABEL_11:

    return v7;
  }

  v9 = sub_237B13224(*(a3 + 16), (a2 & 0xFFFFFFFFFFFFFFFLL) + 32, *(a4 + 16));
  if (v4)
  {
LABEL_8:

    return v7;
  }

  v8 = v9;
  if (v9)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_7:
  v11[0] = v8;
  v11[1] = v7 & 0xFFFFFFFFFFFFFFLL;
  result = sub_237B13224(*(a3 + 16), v11, *(a4 + 16));
  if (v4)
  {
    goto LABEL_8;
  }

  v8 = result;
  if (result)
  {
LABEL_10:
    type metadata accessor for CMLVariant();
    v7 = swift_allocObject();
    *(v7 + 16) = v8;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_237A3023C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B14EC0(v4, *(v5 + 16), *(v6 + 16));
  if (!v3)
  {
    if (result)
    {
      *v2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A302A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, void))
{
  result = a3(*(a1 + 16), *(a2 + 16));
  if (v3)
  {
  }

  else
  {
    v5 = result;
    if (result)
    {

      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v5;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30388()
{
  v1 = OUTLINED_FUNCTION_23_7();
  result = v2(v1);
  if (!v0 && result < 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A303B4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_237A2F8A8(a1, a2, v3, a3);
}

uint64_t sub_237A3047C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_237A2F704(a1, a2, a3, a4, v4);
}

uint64_t sub_237A30560(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B119B8(v3, v4);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      v6 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A305B8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B11EB0(v4, v5);
  if (!v3)
  {
    result = sub_237A2E688(result);
    if (result == 8)
    {
      __break(1u);
    }

    else
    {
      result = sub_237A2E6A8(result);
      *v2 = result;
    }
  }

  return result;
}

uint64_t sub_237A30608(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B13870(v3, v5, v4);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A3074C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  if (a2 == 2)
  {
    v4 = *(a3 + 16);
    v5 = "json";
  }

  else if (a2 == 1)
  {
    v4 = *(a3 + 16);
    v5 = "binary";
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v4 = *(a3 + 16);
    v5 = "csv";
  }

  return sub_237B152F0(v4, v3, v5, 0);
}

uint64_t sub_237A307B0()
{
  result = sub_237B0E128(*(v0 + 16));
  if (!v1)
  {
    result = sub_237B0E548(result);
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30800(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_18_8();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  v9 = swift_slowAlloc();
  OUTLINED_FUNCTION_18_8();
  v10 = swift_allocObject();
  *(v10 + 16) = sub_237A31980;
  *(v10 + 24) = v8;
  *v9 = sub_237A31E50;
  v9[1] = v10;
  v11 = *(v3 + 16);
  sub_237A2E6C8(a3);

  v12 = sub_237B16F30(v11, sub_237A31E8C, sub_237A31E80);
  if (!v4)
  {
    v13 = v12;
    if (v12)
    {

      type metadata accessor for CMLColumn();
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v13;
      return result;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_7_9();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_237A30948(uint64_t a1, uint64_t (*a2)(void))
{
  type metadata accessor for CMLSequence();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  a2();

  v5 = sub_237A2E774();

  return v5;
}

uint64_t sub_237A309BC(uint64_t result)
{
  if (result)
  {

    JUMPOUT(0x2383DD950);
  }

  return result;
}

uint64_t sub_237A30A08(uint64_t result, void (**a2)(uint64_t *__return_ptr, uint64_t *))
{
  if (a2)
  {
    if (result)
    {
      v2 = *a2;
      v4 = result;

      v2(&v3, &v4);

      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237A30A98(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B131C4(v3, v5, *(v4 + 16));
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(a1 + 16);
  v9 = sub_237C0876C();
  v10 = sub_237B15350(v7, v8, v9 + 32, a4);

  if (!v5)
  {
    if (v10)
    {
      OUTLINED_FUNCTION_103();
      result = swift_allocObject();
      *(result + 16) = v10;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30BDC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B153B0(v3, v4, v5, 0);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30C68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, uint64_t *a6@<X8>)
{

  result = a5(a2, a3, a4, a1);
  if (!v6)
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_237A30CD4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B14134(v3, v4, v5);
  if (!v2)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v7 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v7);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30D30(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v7 = *(a2 + 16);
  v8 = *(a3 + 16);
  sub_237A2E6C8(a4);
  result = sub_237B17360(v7, v8, a1);
  if (!v5)
  {
    if (result)
    {
      type metadata accessor for CMLTable();
      OUTLINED_FUNCTION_103();
      v10 = swift_allocObject();
      return OUTLINED_FUNCTION_15_7(v10);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A30DCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{

  result = sub_237BF1F84(0, 0xE000000000000000, a2, a1, a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_237A30E48()
{
  OUTLINED_FUNCTION_16_5();
  v5 = v4;
  type metadata accessor for CMLFeatureValue();
  sub_237A2E78C();
  result = sub_237B1669C(*(v2 + 16), v1, v3);
  if (v0)
  {
  }

  v7 = result;
  if (result)
  {

    type metadata accessor for CMLTable();
    OUTLINED_FUNCTION_103();
    result = swift_allocObject();
    *(result + 16) = v7;
    *v5 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A30F00()
{
  tc_v1_release();
  OUTLINED_FUNCTION_103();

  return swift_deallocClassInstance();
}

uint64_t sub_237A30F7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_5_12(a1, a2);
  result = sub_237B11A18(v4, v5);
  if (!v3)
  {
    v7 = result;
    if (result)
    {
      type metadata accessor for CMLFeatureValue();
      OUTLINED_FUNCTION_11_9();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      result = OUTLINED_FUNCTION_9_9(v8);
      *v2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31004(uint64_t a1, uint64_t a2)
{
  sub_237B0B320(a1);
  OUTLINED_FUNCTION_22_5();

  v2 = OUTLINED_FUNCTION_8_10();
  sub_237A2F8A8(v2, v3, v4, v5);
  OUTLINED_FUNCTION_21_8();
}

uint64_t sub_237A311F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_20_4();
  v10 = v9;

  v11 = OUTLINED_FUNCTION_19_8();
  return sub_237A2F968(v11, v12, v13, v14, v15, a7, v10, v7);
}

uint64_t sub_237A31260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v16[0] = a2;
    v16[1] = a3 & 0xFFFFFFFFFFFFFFLL;

    v13 = a6 & 1;
    v14 = v16;
    goto LABEL_6;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
LABEL_8:

    sub_237C08ECC();
  }

  v13 = a6 & 1;
  v14 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
  sub_237A2FBF4(a4, a5, v13, a7, a1, v14);
}

uint64_t sub_237A31408(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a3 + 16);
  if (a2)
  {
    return sub_237B15CDC(v7, a4, a5, a1);
  }

  else
  {
    return sub_237B15D3C(v7, a4, a5, a1);
  }
}

uint64_t sub_237A314B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_16_5();

  return sub_237A2FCB8(v15, v14, v13, v12, v11, a6, v10, a7, a8, a9, a10);
}

uint64_t sub_237A31548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_20_4();
  v11 = v10;

  v12 = OUTLINED_FUNCTION_19_8();
  return sub_237A2FDF0(v12, v13, v14, v15, v16, v11, a7, a8, a9);
}

uint64_t sub_237A31728()
{

  OUTLINED_FUNCTION_18_8();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237A31764@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A317F0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    if (result)
    {
      *a2 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31828()
{
  result = sub_237B0E5A8(*(v0 + 16));
  if (!v1)
  {
    if (result)
    {
      return sub_237C087DC();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31864(uint64_t a1, uint64_t a2)
{
  sub_237AE8814(a1);
  OUTLINED_FUNCTION_22_5();

  v2 = OUTLINED_FUNCTION_8_10();
  v6 = sub_237A300CC(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_237A318C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B13224(*(a2 + 16), a1, *(a3 + 16));
  if (!v4)
  {
    v7 = result;
    if (result)
    {
      type metadata accessor for CMLVariant();
      result = swift_allocObject();
      *(result + 16) = v7;
      *a4 = result;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_237A31B90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_237A31BA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B4E8, &qword_237C0D408);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for CMLFeatureValueType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CMLFeatureValueType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x237A31DC0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_237A31DFC()
{
  result = qword_27DE9B4F0;
  if (!qword_27DE9B4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B4F0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_12(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return sub_237A2F598(a1, v1);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t result)
{
  *(result + 16) = v2;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_5()
{
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validation:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  sub_237A2A8D8(a1, v19 - v18);
  v23[3] = v16;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v23);
  sub_237A2A93C(v20, boxed_opaque_existential_0);
  sub_237A2A9A0(a1);
  return sub_2379DAE54(v23, a4 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A2A93C(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379F6D68(v1 + 8, &v8);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237B7C62C(a1);
    return sub_237A2A9A0(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A32288@<X0>(uint64_t a1@<X8>)
{
  result = MLLogisticRegressionClassifier.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A322CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v3);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A2A93C(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2 + 8);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.validation.getter()
{
  result = sub_2379F6D68(v1 + 8, &v3);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void (*MLLogisticRegressionClassifier.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLLogisticRegressionClassifier.ModelParameters.validationData.getter(a1);
  return sub_237A324E0;
}

void sub_237A324E0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237A32574(uint64_t a1)
{
  v2 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A2A8D8(a1, v4);
  return MLLogisticRegressionClassifier.ModelParameters.validation.setter(v4);
}

void (*MLLogisticRegressionClassifier.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v3;
  v3[16] = v1;
  v3[17] = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 64);
  v3[18] = __swift_coroFrameAllocStub(v5);
  v3[19] = __swift_coroFrameAllocStub(v5);
  result = sub_2379F6D68(v1 + 8, (v3 + 4));
  if (v3[7])
  {
    sub_2379DAD24(v3 + 2, v3);
    swift_dynamicCast();
    return sub_237A326E8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A326E8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A2A8D8((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A2A93C(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5 + 8);
    sub_237A2A9A0(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A2A93C(v4, v8);
    sub_2379DAE54((v2 + 12), v5 + 8);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLLogisticRegressionClassifier.ModelParameters.init(validationData:maxIterations:l1Penalty:l2Penalty:stepSize:convergenceThreshold:featureRescaling:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *a4 = a2;
  *(a4 + 40) = a5;
  *(a4 + 48) = a6;
  *(a4 + 56) = a7;
  *(a4 + 64) = a8;
  *(a4 + 72) = a3;
  v11 = v8;
  v12 = v9;
  return MLLogisticRegressionClassifier.ModelParameters.validationData.setter(&v11);
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v1 = sub_237C0924C();
  MEMORY[0x2383DC360](v1);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  v2 = MEMORY[0x2383DC360](0x6C616E655020314CLL, 0xEC000000203A7974);
  OUTLINED_FUNCTION_2_17(v2, v3, v4, v5, v6, v7, v8, v9, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v37, 0xE000000000000000);

  v10 = MEMORY[0x2383DC360](0x6C616E655020324CLL, 0xEC000000203A7974);
  OUTLINED_FUNCTION_2_17(v10, v11, v12, v13, v14, v15, v16, v17, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v38, 0xE000000000000000);

  v18 = MEMORY[0x2383DC360](0x7A69532070657453, 0xEB00000000203A65);
  OUTLINED_FUNCTION_2_17(v18, v19, v20, v21, v22, v23, v24, v25, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v39, 0xE000000000000000);

  sub_237C08EDC();
  v26 = MEMORY[0x2383DC360](0xD000000000000017, 0x8000000237C18860);
  OUTLINED_FUNCTION_2_17(v26, v27, v28, v29, v30, v31, v32, v33, 0);
  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](v40, 0xE000000000000000);

  sub_237C08EDC();

  if (*(v0 + 72))
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (*(v0 + 72))
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x2383DC360](v34, v35);

  OUTLINED_FUNCTION_1_13();
  MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C18880);

  return 0xD000000000000010;
}

unint64_t MLLogisticRegressionClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A32C0C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 73))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237A32C60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_13()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08A8C();
}

uint64_t sub_237A32D10(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v25 = MEMORY[0x277D84F90];
  sub_237AC8B54();
  result = v25;
  v23 = a2;
  v24 = v4;
  v22 = a1;
  if (!v6)
  {
    v12 = v5;
    goto LABEL_13;
  }

  v8 = (a1 + 32);
  v9 = (a2 + 32);
  v10 = v6;
  v11 = v5;
  v12 = v5;
  while (v4)
  {
    if (!v11)
    {
      goto LABEL_23;
    }

    v13 = *v8;
    v14 = *v9;
    v26 = result;
    v15 = *(result + 16);
    if (v15 >= *(result + 24) >> 1)
    {
      v21 = v12;
      sub_237AC8B54();
      v12 = v21;
      result = v26;
    }

    --v11;
    *(result + 16) = v15 + 1;
    *(result + 8 * v15 + 32) = v13 - v14;
    --v4;
    ++v9;
    ++v8;
    if (!--v10)
    {
LABEL_13:
      while (v24 != v6)
      {
        if (v6 >= v24)
        {
          goto LABEL_24;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_25;
        }

        if (v12 == v6)
        {
          return result;
        }

        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v16 = *(v22 + 32 + 8 * v6);
        v17 = *(v23 + 32 + 8 * v6);
        v27 = result;
        v18 = *(result + 16);
        if (v18 >= *(result + 24) >> 1)
        {
          OUTLINED_FUNCTION_31_4();
          v20 = v19;
          sub_237AC8B54();
          v12 = v20;
          result = v27;
        }

        *(result + 16) = v18 + 1;
        *(result + 8 * v18 + 32) = v16 - v17;
        ++v6;
      }

      return result;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_237A32EE0()
{
  OUTLINED_FUNCTION_153();
  v42 = v0;
  v1 = sub_237C0926C();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v41 = sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v40 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v38 = (v17 - v18);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v21 = v32 - v20;
  MEMORY[0x28223BE20](v22);
  v39 = v32 - v23;
  sub_237C067CC();
  sub_237C060CC();
  v37 = *MEMORY[0x277D84660];
  v36 = *(v3 + 104);
  v36(v7);
  sub_237C0675C();
  v24 = *(v3 + 8);
  v34 = v3 + 8;
  v35 = v24;
  v24(v7, v1);
  v25 = *(v9 + 8);
  v32[2] = v9 + 8;
  v33 = v25;
  v26 = v41;
  v25(v13, v41);
  v27 = v15 + 8;
  v28 = *(v15 + 8);
  v32[1] = v27;
  v29 = v40;
  v28(v21, v40);
  v30 = v38;
  sub_237C067CC();
  sub_237C060CC();
  (v36)(v7, v37, v1);
  sub_237C0675C();
  v35(v7, v1);
  v33(v13, v26);
  v28(v30, v29);
  v31 = v39;
  sub_237C067EC();
  sub_237C067EC();
  sub_237A337D4();

  v28(v21, v29);
  v28(v31, v29);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237A3326C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16))
  {
    v2 = sub_237A32D10(a2, a1);
    v3 = *(v2 + 16);
    if (v3)
    {
      v16 = MEMORY[0x277D84F90];
      sub_237AC8B54();
      v4 = v16;
      v5 = *(v16 + 16);
      v6 = 32;
      do
      {
        v7 = *(v2 + v6);
        v8 = *(v16 + 24);
        if (v5 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_106(v8);
          OUTLINED_FUNCTION_31_4();
          sub_237AC8B54();
        }

        *(v16 + 16) = v5 + 1;
        *(v16 + 8 * v5 + 32) = v7 * v7;
        v6 += 8;
        ++v5;
        --v3;
      }

      while (v3);
    }

    else
    {

      v4 = MEMORY[0x277D84F90];
    }

    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = (v4 + 32);
      v11 = 0.0;
      do
      {
        v12 = *v10++;
        v11 = v11 + v12;
        --v9;
      }

      while (v9);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    sub_237C08EDC();

    v14 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v14);

    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18940);
    v15 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v15);

    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
  }

  return result;
}

uint64_t sub_237A3347C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_12:
    OUTLINED_FUNCTION_35_1();
    sub_237C08EDC();

    v11 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v11);

    MEMORY[0x2383DC360](0xD000000000000011, 0x8000000237C18940);
    v12 = OUTLINED_FUNCTION_23_8();
    MEMORY[0x2383DC360](v12);

    OUTLINED_FUNCTION_19_9();
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
    return result;
  }

  v2 = sub_237A32D10(a2, a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v13 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v4 = 0;
    v5 = v13;
    while (v4 < *(v2 + 16))
    {
      v6 = *(v2 + 8 * v4 + 32);
      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        OUTLINED_FUNCTION_106(v7);
        sub_237AC8B54();
      }

      ++v4;
      *(v13 + 16) = v8 + 1;
      *(v13 + 8 * v8 + 32) = fabs(v6);
      if (v3 == v4)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_12;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_10:
  v9 = sub_2379FBDB8(v5);

  return v9;
}

uint64_t sub_237A3367C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  *(v2 + 16) = a1;
  v15 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  OUTLINED_FUNCTION_29_4();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_237C0B670;
  *(v10 + 32) = a1;
  *(v10 + 40) = a1;
  OUTLINED_FUNCTION_45();
  sub_2379D9224(v11, &qword_27DE9B0E0, &unk_237C15290, v12);
  sub_237C0837C();
  (*(v6 + 32))(v2 + OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion, v9, v4);
  return v2;
}

void sub_237A337D4()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = &v30 - v9;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B550, &qword_237C0D658);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v30 = &v30 - v18;
  v38 = *(v2 + 16);
  v39 = v0;
  v19 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  swift_beginAccess();
  v20 = 0;
  v37 = v4;
  v34 = v4 + 32;
  v35 = v2 + 32;
  v32 = (v7 + 8);
  v33 = (v7 + 16);
  v31 = (v12 + 8);
  v40 = xmmword_237C0B670;
  while (1)
  {
    if (v38 == v20 || (v21 = *(v37 + 16), v20 == v21))
    {
      OUTLINED_FUNCTION_150();
      return;
    }

    if (v20 >= v21)
    {
      break;
    }

    v22 = *(v35 + 8 * v20);
    v23 = *(v34 + 8 * v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    OUTLINED_FUNCTION_29_4();
    v24 = swift_allocObject();
    *(v24 + 16) = v40;
    *(v24 + 32) = v22;
    *(v24 + 40) = v23;
    OUTLINED_FUNCTION_29_4();
    v25 = swift_allocObject();
    *(v25 + 16) = v40;
    *(v25 + 32) = v22;
    *(v25 + 40) = v23;
    (*v33)(v10, v39 + v19, v5);
    OUTLINED_FUNCTION_45();
    sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, v26);
    sub_237C0838C();
    (*v32)(v10, v5);
    OUTLINED_FUNCTION_13_6();
    sub_2379D9224(&qword_27DE9B558, &qword_27DE9B550, &qword_237C0D658, v27);
    v28 = v36;
    sub_237C0833C();
    (*v31)(v16, v28);
    if (v42)
    {
      goto LABEL_11;
    }

    v29 = v41;

    if (__OFADD__(v29, 1))
    {
      goto LABEL_10;
    }

    v41 = v29 + 1;
    sub_237C082FC();
    swift_beginAccess();
    sub_237C0839C();
    swift_endAccess();
    ++v20;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  __break(1u);
}

void *sub_237A33B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67[0] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B550, &qword_237C0D658);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v78 = v67 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v11);
  v14 = v67 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(v3 + 16))
  {
LABEL_34:
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    result = sub_237C090DC();
    __break(1u);
    return result;
  }

  if (v15)
  {
    v16 = 0;
    v81 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
    v77 = (v12 + 16);
    v76 = (v12 + 8);
    v75 = (v7 + 8);
    v69 = a1 + 32;
    v68 = (a1 + 40);
    v74 = xmmword_237C0B670;
    v82 = MEMORY[0x277D84F90];
    v86 = MEMORY[0x277D84F90];
    v83 = MEMORY[0x277D84F90];
    v71 = v3;
    v70 = v5;
    v73 = v15;
    while (1)
    {
      if (v16 == v15)
      {
        goto LABEL_32;
      }

      v17 = *(v3 + 16);
      if (v17 < 0)
      {
        break;
      }

      if (v17)
      {
        swift_beginAccess();
        v18 = 0;
        v72 = (v69 + 16 * v16);
        v19 = v68;
        v80 = v16;
        v79 = v17;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
          OUTLINED_FUNCTION_29_4();
          v20 = swift_allocObject();
          *(v20 + 16) = v74;
          *(v20 + 32) = v16;
          *(v20 + 40) = v18;
          (*v77)(v14, v3 + v81, v10);
          OUTLINED_FUNCTION_45();
          sub_2379D9224(&qword_27DE9B100, &qword_27DE9B0E0, &unk_237C15290, v21);
          v22 = v78;
          sub_237C0838C();

          (*v76)(v14, v10);
          OUTLINED_FUNCTION_13_6();
          sub_2379D9224(&qword_27DE9B558, &qword_27DE9B550, &qword_237C0D658, v23);
          sub_237C0833C();
          (*v75)(v22, v5);
          if ((v84 & 0x100000000) == 0)
          {
            v24 = v84;
            if (v84 >= 1)
            {
              v26 = *v72;
              v25 = v72[1];

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_13();
                sub_237BC0CB8();
                v86 = v40;
              }

              v28 = *(v86 + 16);
              v27 = *(v86 + 24);
              if (v28 >= v27 >> 1)
              {
                OUTLINED_FUNCTION_106(v27);
                OUTLINED_FUNCTION_31_4();
                sub_237BC0CB8();
                v86 = v41;
              }

              v29 = v86;
              *(v86 + 16) = v28 + 1;
              v30 = v29 + 16 * v28;
              *(v30 + 32) = v26;
              *(v30 + 40) = v25;
              if (v18 >= v73)
              {
                __break(1u);
LABEL_32:
                __break(1u);
                goto LABEL_33;
              }

              v32 = *(v19 - 1);
              v31 = *v19;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_6_13();
                sub_237BC0CB8();
                v82 = v42;
              }

              v34 = *(v82 + 16);
              v33 = *(v82 + 24);
              if (v34 >= v33 >> 1)
              {
                OUTLINED_FUNCTION_106(v33);
                OUTLINED_FUNCTION_31_4();
                sub_237BC0CB8();
                v82 = v43;
              }

              v35 = v82;
              *(v82 + 16) = v34 + 1;
              v36 = v35 + 16 * v34;
              *(v36 + 32) = v32;
              *(v36 + 40) = v31;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v44 = OUTLINED_FUNCTION_6_13();
                sub_237BC0EB4(v44, v45, v46, v47);
                v83 = v48;
              }

              v3 = v71;
              v5 = v70;
              v38 = *(v83 + 16);
              v37 = *(v83 + 24);
              if (v38 >= v37 >> 1)
              {
                v49 = OUTLINED_FUNCTION_2_18(v37);
                sub_237BC0EB4(v49, v50, v51, v83);
                v83 = v52;
              }

              v39 = v83;
              *(v83 + 16) = v38 + 1;
              *(v39 + 8 * v38 + 32) = v24;
            }
          }

          ++v18;
          v19 += 2;
          v16 = v80;
        }

        while (v79 != v18);
      }

      ++v16;
      v15 = v73;
      if (v16 == v73)
      {
        goto LABEL_28;
      }
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v82 = MEMORY[0x277D84F90];
  v86 = MEMORY[0x277D84F90];
  v83 = MEMORY[0x277D84F90];
LABEL_28:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
  inited = swift_initStackObject();
  v54 = OUTLINED_FUNCTION_18_9(inited, xmmword_237C0B680);
  v54[2].n128_u64[0] = v55;
  v54[2].n128_u64[1] = 0xE500000000000000;
  v56 = OUTLINED_FUNCTION_32_3();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(v56, v57);
  inited[4].n128_u64[1] = v58;
  v59 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
  inited[3].n128_u64[0] = v86;
  inited[5].n128_u64[0] = v59;
  inited[5].n128_u64[1] = 0x6574636964657270;
  inited[8].n128_u64[0] = v58;
  inited[8].n128_u64[1] = v59;
  inited[6].n128_u64[0] = 0xEF7373616C635F64;
  inited[6].n128_u64[1] = v82;
  inited[9].n128_u64[0] = 0x746E756F63;
  inited[9].n128_u64[1] = 0xE500000000000000;
  v60 = OUTLINED_FUNCTION_32_3();
  inited[11].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  inited[12].n128_u64[0] = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  inited[10].n128_u64[0] = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  v62 = sub_237C085AC();
  v63 = v67[1];
  result = MLDataTable.init(dictionary:)(v62, &v84);
  if (!v63)
  {
    v65 = v85;
    v66 = v67[0];
    *v67[0] = v84;
    *(v66 + 8) = v65;
  }

  return result;
}

uint64_t sub_237A34258()
{
  v1 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for _MetricUtilities.ConfusionMatrixMeter(uint64_t a1)
{
  result = qword_27DE9B500;
  if (!qword_27DE9B500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237A34354(uint64_t a1)
{
  sub_237A343F4();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_237A343F4()
{
  if (!qword_27DE9B510)
  {
    v0 = sub_237C082DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DE9B510);
    }
  }
}

void sub_237A3444C()
{
  OUTLINED_FUNCTION_153();
  v1 = v0;
  v3 = v2;
  v5 = *v4;
  v6 = *(v4 + 8);
  v34 = *v4;
  v35 = v6;
  MLDataTable.subscript.getter();
  v30 = v32;
  v31 = v33;
  MLUntypedColumn.dropDuplicates()(&v28, v7);
  sub_2379DBC9C(v30, v31);
  v8 = v28;
  LOBYTE(v9) = v29;
  if ((v29 & 1) != 0 || (sub_2379DBCF4(v28, 0), sub_237A60248(&v34), sub_2379DBC9C(v8, 0), v34 != 2))
  {
LABEL_14:
    sub_2379DBC9C(v8, v9);
    __break(1u);

    v25 = 0;
    v24 = 95;
    OUTLINED_FUNCTION_34_2();
    OUTLINED_FUNCTION_33_3();
    sub_237C090DC();
    __break(1u);
    return;
  }

  v9 = sub_2379DFC10(v8, 0);
  v10 = *(v1 + 16);
  if (*(v9 + 16) < v10)
  {
    v26 = v3;
    v34 = v5;
    v35 = v6;
    v11 = sub_2379DBCF4(v5, v6);
    v6 = 0;
    v12 = (v1 + 40);
    v27 = xmmword_237C0B680;
    v13 = MEMORY[0x277D837D0];
    while (v10)
    {
      v14 = *(v12 - 1);
      v8 = *v12;
      v28 = v14;
      v29 = v8;
      MEMORY[0x28223BE20](v11);
      v24 = &v28;

      if (sub_237AC1CCC(sub_237A06CFC, &v23, v9))
      {
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
        inited = swift_initStackObject();
        v16 = OUTLINED_FUNCTION_18_9(inited, v27);
        v16[2].n128_u64[0] = v17;
        v16[2].n128_u64[1] = 0xE500000000000000;
        v16[4].n128_u64[1] = v13;
        v16[3].n128_u64[0] = v14;
        v16[3].n128_u64[1] = v8;
        v16[5].n128_u64[0] = &protocol witness table for String;
        v16[5].n128_u64[1] = 0x6574636964657270;
        v16[6].n128_u64[0] = 0xEF7373616C635F64;
        v16[6].n128_u64[1] = v14;
        v16[8].n128_u64[0] = v13;
        v16[8].n128_u64[1] = &protocol witness table for String;
        v16[7].n128_u64[0] = v8;
        v16[9].n128_u64[0] = 0x746E756F63;
        v16[9].n128_u64[1] = 0xE500000000000000;
        v16[11].n128_u64[1] = MEMORY[0x277D83B88];
        v16[12].n128_u64[0] = &protocol witness table for Int;
        v16[10].n128_u64[0] = 0;
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
        v18 = sub_237C085AC();
        MLDataTable.init(dictionary:)(v18, &v28);

        v19 = v28;
        v20 = v29;
        v8 = &v34;
        MLDataTable.append(contentsOf:)();
        sub_2379DBC9C(v19, v20);
      }

      v12 += 2;
      if (!--v10)
      {

        v21 = v35;
        v22 = v26;
        *v26 = v34;
        *(v22 + 8) = v21;
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  *v3 = v5;
  *(v3 + 8) = v6;
  sub_2379DBCF4(v5, v6);
LABEL_12:
  OUTLINED_FUNCTION_150();
}

void sub_237A347A4()
{
  OUTLINED_FUNCTION_153();
  v73 = v1;
  v65 = v2;
  sub_237C0926C();
  OUTLINED_FUNCTION_0();
  v71 = v4;
  v72 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v70 = v6 - v5;
  sub_237C060DC();
  OUTLINED_FUNCTION_0();
  v68 = v8;
  v69 = v7;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v67 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v60 - v12;
  v14 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v66 = v15;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  v63 = (v17 - v18);
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v19);
  v61 = &v60 - v20;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v21);
  v64 = &v60 - v22;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v23);
  v62 = &v60 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  v27 = &v60 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v60 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0E0, &unk_237C15290);
  OUTLINED_FUNCTION_0();
  v33 = v32;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v34);
  v36 = &v60 - v35;
  sub_237A36634();
  v37 = OBJC_IVAR____TtCV8CreateML16_MetricUtilities20ConfusionMatrixMeter_confusion;
  swift_beginAccess();
  (*(v33 + 16))(v36, v0 + v37, v31);
  v38 = v14;
  v39 = v30;
  OUTLINED_FUNCTION_45();
  sub_2379D9224(v40, &qword_27DE9B0E0, &unk_237C15290, v41);
  OUTLINED_FUNCTION_32_3();
  v42 = sub_237C08BFC();
  v43 = sub_237C0616C();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v43);
  v44 = v42;
  sub_237B699C8(v44, v13, v27);
  v45 = v67;
  v46 = v68;
  v47 = v69;
  (*(v68 + 104))(v67, *MEMORY[0x277D2CCC8], v69);
  v48 = v70;
  v49 = v71;
  v50 = v72;
  (*(v71 + 104))(v70, *MEMORY[0x277D84660], v72);
  v74 = v39;
  sub_237C0675C();
  v51 = v50;
  v52 = v66;
  (*(v49 + 8))(v48, v51);
  (*(v46 + 8))(v45, v47);
  v53 = *(v52 + 8);
  v53(v27, v38);
  if ((v73 & 1) == 0)
  {

    (*(v52 + 32))(v65, v74, v38);
    goto LABEL_6;
  }

  v54 = sub_237C0677C();
  if (v54 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_237A35F84(0, v54);
    v55 = v62;
    sub_237C065EC();

    v56 = v61;
    sub_237C0671C();
    v57 = v63;
    sub_237C0661C();
    v58 = v64;
    sub_237C066BC();
    v53(v57, v38);
    v53(v56, v38);
    sub_237C0669C();
    v53(v58, v38);
    v53(v55, v38);
    v59 = sub_237C0677C();
    if ((v59 & 0x8000000000000000) == 0)
    {
      sub_237A35F84(0, v59);
      sub_237C065EC();

      v53(v27, v38);
      v53(v74, v38);
LABEL_6:
      OUTLINED_FUNCTION_150();
      return;
    }
  }

  __break(1u);
}

void sub_237A34D48(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  v5 = v21 - v4;
  v6 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  v12 = (v10 - v11);
  MEMORY[0x28223BE20](v13);
  v15 = v21 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v21 - v17;
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v21[0] = 0;
    v21[1] = a2;
    v19 = sub_237C0616C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A365A8();
    sub_237C0667C();
    sub_237C066AC();
    sub_237C0674C();
    v20 = *(v8 + 8);
    v20(v12, v6);
    OUTLINED_FUNCTION_27_4();
    v20(v15, v6);
    sub_237C0674C();
    OUTLINED_FUNCTION_27_4();
    v20(v15, v6);
    v20(v18, v6);
  }
}

void sub_237A34FA0(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v212 = a3;
  v238 = a1;
  v211 = a4;
  v235 = sub_237C0683C();
  OUTLINED_FUNCTION_30_5();
  MEMORY[0x28223BE20](v5);
  v225 = &v210 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_5();
  v226 = v8;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_14_5();
  v234 = v10;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_5();
  v236 = v12;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_14_5();
  v228 = v14;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_5();
  v222 = v16;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_5();
  v221 = v18;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_14_5();
  v230 = v20;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_14_5();
  v237 = v22;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_5();
  v229 = v24;
  OUTLINED_FUNCTION_16_6();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_14_5();
  v227 = v26;
  v241 = 0;
  v220 = (v27 + 8);
  v214 = *(a2 + 16);
  v28 = (a2 + 40);
  v29 = MEMORY[0x277D84F90];
  v240 = xmmword_237C0B660;
  v232 = MEMORY[0x277D84F90];
  v233 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v223 = MEMORY[0x277D84F90];
  v231 = MEMORY[0x277D84F90];
  v31 = MEMORY[0x277D84F90];
  while (1)
  {
    v239 = v29;
    if (v214 == v241)
    {
      break;
    }

    v218 = v31;
    v219 = v30;
    v32 = *(v28 - 1);
    v33 = *v28;
    v215 = v28;
    v216 = v32;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B518, &qword_237C0D640);
    v35 = OUTLINED_FUNCTION_21_9(v34);
    OUTLINED_FUNCTION_4_15(v35);
    v36 = MEMORY[0x277D83B88];
    *(v37 + 56) = MEMORY[0x277D83B88];
    v38 = v36;
    v39 = MEMORY[0x277D2CF50];
    *(v37 + 64) = MEMORY[0x277D2CF50];
    v40 = v39;
    OUTLINED_FUNCTION_15_8(v37);
    v217 = v33;

    v41 = v229;
    sub_237C0684C();

    v42 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v42);
    *(v43 + 56) = v38;
    *(v43 + 64) = v40;
    OUTLINED_FUNCTION_15_8(v43);
    sub_237C0684C();

    v44 = *v220;
    v45 = v41;
    v46 = v235;
    (*v220)(v45, v235);
    v47 = v230;
    sub_237C0672C();
    v224 = v34;
    v48 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v48);
    v49[7] = MEMORY[0x277D83B88];
    v49[8] = MEMORY[0x277D2CF50];
    v49[4] = 0;
    v50 = v221;
    sub_237C0684C();

    v44(v47, v46);
    v51 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v51);
    *(v52 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v52, MEMORY[0x277D2CF50]);
    v53 = v222;
    sub_237C0684C();

    v44(v50, v46);
    v54 = v237;
    sub_237C0669C();
    v44(v53, v46);
    v44(v54, v46);
    v55 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v55);
    *(v56 + 56) = MEMORY[0x277D83B88];
    v57 = OUTLINED_FUNCTION_10_8(v56, MEMORY[0x277D2CF50]);
    OUTLINED_FUNCTION_38_2(v57);

    v58 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v58);
    *(v59 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v59, MEMORY[0x277D2CF50]);
    sub_237C0684C();

    v60 = v46;
    v61 = v235;
    v44(v60, v235);
    v62 = v230;
    sub_237C0672C();
    v63 = v224;
    v64 = OUTLINED_FUNCTION_21_9(v224);
    OUTLINED_FUNCTION_4_15(v64);
    *(v65 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v65, MEMORY[0x277D2CF50]);
    v66 = v221;
    sub_237C0684C();

    v67 = v62;
    v68 = v61;
    v44(v67, v61);
    v69 = OUTLINED_FUNCTION_21_9(v63);
    OUTLINED_FUNCTION_4_15(v69);
    v70[7] = MEMORY[0x277D83B88];
    v70[8] = MEMORY[0x277D2CF50];
    v70[4] = 0;
    v71 = v222;
    sub_237C0684C();

    v44(v66, v68);
    sub_237C0669C();
    v44(v71, v68);
    v72 = OUTLINED_FUNCTION_32_3();
    (v44)(v72);
    v73 = OUTLINED_FUNCTION_21_9(v63);
    OUTLINED_FUNCTION_4_15(v73);
    *(v74 + 56) = MEMORY[0x277D83B88];
    v75 = OUTLINED_FUNCTION_10_8(v74, MEMORY[0x277D2CF50]);
    OUTLINED_FUNCTION_38_2(v75);

    sub_237C0674C();
    v44(v71, v68);
    v76 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v76);
    *(v77 + 56) = MEMORY[0x277D83B88];
    v78 = MEMORY[0x277D2CF50];
    *(v77 + 64) = MEMORY[0x277D2CF50];
    OUTLINED_FUNCTION_15_8(v77);
    sub_237C0684C();

    v79 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v79);
    *(v80 + 56) = MEMORY[0x277D83B88];
    *(v80 + 64) = v78;
    OUTLINED_FUNCTION_15_8(v80);
    sub_237C0684C();

    v81 = v235;
    v44(v71, v235);
    sub_237C0672C();
    v82 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v82);
    v83[7] = MEMORY[0x277D83B88];
    v83[8] = MEMORY[0x277D2CF50];
    v83[4] = 0;
    v84 = v237;
    sub_237C0684C();

    v44(v71, v81);
    v85 = OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_4_15(v85);
    *(v86 + 56) = MEMORY[0x277D83B88];
    OUTLINED_FUNCTION_10_8(v86, MEMORY[0x277D2CF50]);
    v87 = v230;
    v88 = v84;
    sub_237C0684C();

    v44(v84, v81);
    sub_237C066DC();
    v224 = v44;
    v44(v87, v81);
    sub_237C066DC();
    v89 = v239;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_7_10();
      sub_237BC0CB8();
      v89 = v129;
    }

    v90 = *(v89 + 16);
    OUTLINED_FUNCTION_20_5();
    v92 = v223;
    v93 = v218;
    v94 = v219;
    if (v95)
    {
      OUTLINED_FUNCTION_2_18(v91);
      sub_237BC0CB8();
      v89 = v130;
    }

    *(v89 + 16) = v88;
    v96 = v89 + 16 * v90;
    v97 = v217;
    *(v96 + 32) = v216;
    *(v96 + 40) = v97;
    OUTLINED_FUNCTION_5_13();
    v98 = v227;
    sub_237C067DC();
    v99 = *&v244;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v131 = OUTLINED_FUNCTION_6_13();
      sub_237BC0EDC(v131, v132, v133, v134);
      v232 = v135;
    }

    v100 = *(v232 + 16);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v136 = OUTLINED_FUNCTION_2_18(v101);
      sub_237BC0EDC(v136, v137, v138, v232);
      v232 = v139;
    }

    v102 = v232;
    *(v232 + 16) = v98;
    *(v102 + 8 * v100 + 32) = v99;
    OUTLINED_FUNCTION_5_13();
    v103 = v228;
    sub_237C067DC();
    v104 = *&v244;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v140 = OUTLINED_FUNCTION_6_13();
      sub_237BC0EDC(v140, v141, v142, v143);
      v233 = v144;
    }

    v105 = *(v233 + 16);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v145 = OUTLINED_FUNCTION_2_18(v106);
      sub_237BC0EDC(v145, v146, v147, v233);
      v233 = v148;
    }

    v107 = v233;
    *(v233 + 16) = v103;
    *(v107 + 8 * v105 + 32) = v104;
    OUTLINED_FUNCTION_5_13();
    v108 = v236;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v110 ^ v111 | v109))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
      return;
    }

    if (v104 <= -9.2234e18)
    {
      goto LABEL_54;
    }

    if (v104 >= 9.2234e18)
    {
      goto LABEL_55;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v149 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v149, v150, v151, v93);
      v93 = v152;
    }

    v112 = *(v93 + 16);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v153 = OUTLINED_FUNCTION_2_18(v113);
      sub_237BC0EB4(v153, v154, v155, v93);
      v93 = v156;
    }

    *(v93 + 16) = v108;
    *(v93 + 8 * v112 + 32) = v104;
    OUTLINED_FUNCTION_5_13();
    v114 = v234;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v110 ^ v111 | v109))
    {
      goto LABEL_56;
    }

    if (v104 <= -9.2234e18)
    {
      goto LABEL_57;
    }

    if (v104 >= 9.2234e18)
    {
      goto LABEL_58;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v157, v158, v159, v94);
      v94 = v160;
    }

    v115 = *(v94 + 16);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v161 = OUTLINED_FUNCTION_2_18(v116);
      sub_237BC0EB4(v161, v162, v163, v94);
      v94 = v164;
    }

    *(v94 + 16) = v114;
    *(v94 + 8 * v115 + 32) = v104;
    OUTLINED_FUNCTION_5_13();
    v117 = v226;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v110 ^ v111 | v109))
    {
      goto LABEL_59;
    }

    if (v104 <= -9.2234e18)
    {
      goto LABEL_60;
    }

    if (v104 >= 9.2234e18)
    {
      goto LABEL_61;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v165 = OUTLINED_FUNCTION_7_10();
      sub_237BC0EB4(v165, v166, v167, v92);
      v92 = v168;
    }

    v118 = *(v92 + 16);
    OUTLINED_FUNCTION_20_5();
    if (v95)
    {
      v169 = OUTLINED_FUNCTION_2_18(v119);
      sub_237BC0EB4(v169, v170, v171, v92);
      v92 = v172;
    }

    *(v92 + 16) = v117;
    *(v92 + 8 * v118 + 32) = v104;
    OUTLINED_FUNCTION_5_13();
    v120 = v225;
    sub_237C067DC();
    OUTLINED_FUNCTION_8_11();
    if (!(v110 ^ v111 | v109))
    {
      goto LABEL_62;
    }

    if (v104 <= -9.2234e18)
    {
      goto LABEL_63;
    }

    if (v104 >= 9.2234e18)
    {
      goto LABEL_64;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v239 = v89;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v173 = OUTLINED_FUNCTION_6_13();
      sub_237BC0EB4(v173, v174, v175, v176);
      v231 = v177;
    }

    v122 = v93;
    v123 = *(v231 + 16);
    OUTLINED_FUNCTION_20_5();
    v223 = v92;
    v125 = v94;
    if (v95)
    {
      v178 = OUTLINED_FUNCTION_2_18(v124);
      sub_237BC0EB4(v178, v179, v180, v231);
      v231 = v181;
    }

    v126 = v224;
    v127 = v235;
    v224(v225, v235);
    v126(v226, v127);
    v126(v234, v127);
    v126(v236, v127);
    v126(v228, v127);
    v126(v227, v127);
    v128 = v231;
    *(v231 + 16) = v120;
    *(v128 + 8 * v123 + 32) = v104;
    v28 = v215 + 2;
    ++v241;
    v30 = v125;
    v31 = v122;
    v29 = v239;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B520, &qword_237C0D648);
  inited = swift_initStackObject();
  v183 = OUTLINED_FUNCTION_18_9(inited, xmmword_237C0BC00);
  v183[2].n128_u64[0] = v184;
  v183[2].n128_u64[1] = 0xE500000000000000;
  inited[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
  v185 = sub_237A35F1C(&qword_27DE9B528, &qword_27DE9AE60, &qword_237C0D000);
  inited[3].n128_u64[0] = v239;
  inited[5].n128_u64[0] = v185;
  inited[5].n128_u64[1] = 0x6F69736963657270;
  inited[6].n128_u64[0] = 0xE90000000000006ELL;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACF0, &unk_237C14060);
  inited[8].n128_u64[0] = v186;
  v187 = sub_237A35F1C(&qword_27DE9B530, &qword_27DE9ACF0, &unk_237C14060);
  inited[6].n128_u64[1] = v232;
  inited[8].n128_u64[1] = v187;
  inited[9].n128_u64[0] = 0x6C6C61636572;
  inited[11].n128_u64[1] = v186;
  inited[12].n128_u64[0] = v187;
  v188 = v233;
  inited[9].n128_u64[1] = 0xE600000000000000;
  inited[10].n128_u64[0] = v188;
  strcpy(&inited[12].n128_i8[8], "actual_count");
  inited[13].n128_u8[5] = 0;
  inited[13].n128_u16[3] = -5120;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  inited[15].n128_u64[0] = v189;
  v190 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  inited[15].n128_u64[1] = v190;
  inited[13].n128_u64[1] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  v191 = sub_237C085AC();
  if (v212)
  {
    v246 = v189;
    v247 = v190;
    v244 = v30;
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_3_15();
    MEMORY[0x28223BE20](v192);
    OUTLINED_FUNCTION_2_0();
    v194 = OUTLINED_FUNCTION_24_7(v193);
    v195(v194);
    sub_237A362AC(*v30, 0xD000000000000013, 0x8000000237C16FC0, &qword_237C0C2A0, &v242);
    __swift_destroy_boxed_opaque_existential_1(v243);
    v246 = v189;
    v247 = v190;
    v244 = v223;
    OUTLINED_FUNCTION_28_2();
    OUTLINED_FUNCTION_26_5();
    OUTLINED_FUNCTION_3_15();
    MEMORY[0x28223BE20](v196);
    OUTLINED_FUNCTION_2_0();
    v198 = OUTLINED_FUNCTION_24_7(v197);
    v199(v198);
    sub_237A362AC(*v30, 0xD00000000000001ALL, 0x8000000237C16FE0, &qword_237C0C2A0, &v242);
    __swift_destroy_boxed_opaque_existential_1(v243);
    v200 = v242;
    v246 = v189;
    v247 = v190;
    v244 = v231;
    v201 = OUTLINED_FUNCTION_28_2();
    v242 = v200;
    __swift_mutable_project_boxed_opaque_existential_1(v243, v243[3]);
    OUTLINED_FUNCTION_3_15();
    MEMORY[0x28223BE20](v202);
    OUTLINED_FUNCTION_2_0();
    v205 = (v204 - v203);
    (*(v206 + 16))(v204 - v203);
    sub_237A362AC(*v205, 0xD000000000000016, 0x8000000237C17000, v201, &v242);
    __swift_destroy_boxed_opaque_existential_1(v243);
    v191 = v242;
  }

  else
  {
  }

  v207 = v213;
  MLDataTable.init(dictionary:)(v191, &v244);
  if (!v207)
  {
    v208 = v245;
    v209 = v211;
    *v211 = v244;
    *(v209 + 8) = v208;
  }
}

uint64_t sub_237A35F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_237A35F84(uint64_t result, uint64_t a2)
{
  v2 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_19;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v4 = result;
  v5 = sub_237A36094(a2 - result, 0);
  result = sub_237A36110(v13, (v5 + 4), v2, v4, a2);
  if (result != v2)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5[2];
  if (v6 < 2)
  {
    return v5;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_15;
    }

    v10 = v5[2];
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_18;
    }

    v11 = v5[i];
    v12 = v5[v8];
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_237A36198(v5);
      v5 = result;
    }

    v5[i] = v12;
    v5[v8] = v11;
LABEL_15:
    --v8;
    if (!--v7)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

void *sub_237A36094(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 8);
  return v4;
}

void *sub_237A36110(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    a3 = 0;
LABEL_12:
    v7 = a4;
LABEL_14:
    *result = a4;
    result[1] = a5;
    result[2] = v7;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (!(a4 - a5 + v5))
      {
        v7 = a5;
        a3 = a5 - a4;
        goto LABEL_14;
      }

      if (a5 < a4)
      {
        goto LABEL_16;
      }

      if (a4 + v5 >= a5)
      {
        goto LABEL_17;
      }

      *(a2 + 8 * v5) = a4 + v5;
      ++v5;
      if (v6 == a3)
      {
        v7 = a4 + v5;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_237A361AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 8 * v8);
  }

  return v10;
}

uint64_t sub_237A362AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  v27 = v9;
  v28 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  *&v26 = a1;
  v10 = *a5;
  v11 = sub_237ACAC78(a2, a3);
  if (__OFADD__(v10[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B548, &qword_237C0D650);
  if ((sub_237C090AC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_237ACAC78(a2, a3);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_10:
    result = sub_237C0932C();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *a5;
  if (v14)
  {
    v18 = (v17[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_1(v18);
    return sub_237A1FCF0(&v26, v18);
  }

  else
  {
    v20 = __swift_mutable_project_boxed_opaque_existential_1(&v26, v9);
    v21 = MEMORY[0x28223BE20](v20);
    v23 = (&v25 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v24 + 16))(v23, v21);
    sub_237A364C4(v13, a2, a3, *v23, v17);
    __swift_destroy_boxed_opaque_existential_1(&v26);
  }
}

uint64_t sub_237A364C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
  v17 = sub_237A35F1C(&qword_27DE9B538, &qword_27DE9AEC8, &qword_237C0C2A0);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_237A1FCF0(&v15, a5[7] + 40 * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_237A365A8()
{
  result = qword_27DE9AF58;
  if (!qword_27DE9AF58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A02390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9AF58);
  }

  return result;
}

unint64_t sub_237A36634()
{
  result = qword_27DE9ACF8;
  if (!qword_27DE9ACF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9ACF8);
  }

  return result;
}

__n128 OUTLINED_FUNCTION_4_15(__n128 *a1)
{
  result = v1[15];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_10_8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 64) = a2;
  *(result + 32) = *(v2 + 264);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_19_9()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_21_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_237C0924C();
}

uint64_t OUTLINED_FUNCTION_26_5()
{
  *(v0 + 272) = v1;
  v3 = *(v0 + 304);

  return __swift_mutable_project_boxed_opaque_existential_1(v0 + 280, v3);
}

void *OUTLINED_FUNCTION_27_4()
{

  return sub_237C067DC();
}

uint64_t OUTLINED_FUNCTION_28_2()
{
  sub_237A1FCF0((v0 + 320), v0 + 280);

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_38_2(uint64_t a1)
{

  return sub_237C0684C();
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validation:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v18 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 88) = 0;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  sub_237A36A14(a1, v21 - v20);
  v25[3] = v18;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  sub_237A375E4(v22, boxed_opaque_existential_0);
  sub_237A37648(a1);
  return sub_2379DAE54(v25, a5);
}

uint64_t sub_237A36A14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.getter()
{
  result = sub_2379D8FF4(v1, &v3, &qword_27DE9A998, &unk_237C0C100);
  if (v4)
  {
    sub_2379DAD24(&v3, &v5);
    type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
    return swift_dynamicCast();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t MLRandomForestRegressor.ModelParameters.init(validationData:maxDepth:maxIterations:minLossReduction:minChildWeight:randomSeed:rowSubsample:columnSubsample:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  v9 = *a1;
  v10 = *(a1 + 8);
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = 0;
  *(a5 + 104) = 0;
  *(a5 + 88) = 0;
  *(a5 + 32) = a2;
  *(a5 + 40) = a3;
  *(a5 + 48) = a6;
  *(a5 + 56) = a7;
  *(a5 + 64) = a4;
  *(a5 + 72) = a8;
  *(a5 + 80) = a9;
  v12 = v9;
  v13 = v10;
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v12);
}

uint64_t sub_237A36B5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_237C05DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B560, &qword_237C0D760);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_0();
  v21 = v20 - v19;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0;
  *(a3 + 88) = 0;
  *(a3 + 32) = sub_237C070EC();
  *(a3 + 40) = sub_237C0714C();
  sub_237C0718C();
  *(a3 + 48) = v22;
  sub_237C0716C();
  *(a3 + 56) = v23;
  *(a3 + 64) = sub_237C070AC();
  sub_237C0710C();
  *(a3 + 72) = v24;
  sub_237C0712C();
  *(a3 + 80) = v25;
  v31 = a2;
  sub_2379D8FF4(a2, v13, &qword_27DE9A9A0, &qword_237C0BF60);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v13, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v13, v6);
    (*(v7 + 16))(v16, v10, v6);
    swift_storeEnumTagMultiPayload();
    (*(v7 + 8))(v10, v6);
    v26 = 0;
  }

  __swift_storeEnumTagSinglePayload(v16, v26, 1, v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (__swift_getEnumTagSinglePayload(v16, 1, v17) != 1)
    {
      sub_2379D9054(v16, &qword_27DE9B560, &qword_237C0D760);
    }
  }

  else
  {
    sub_237A375E4(v16, v21);
  }

  v32[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v32);
  sub_237A375E4(v21, boxed_opaque_existential_0);
  sub_2379D9054(v31, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_237C071DC();
  OUTLINED_FUNCTION_4();
  (*(v28 + 8))(a1);
  return sub_2379DAE54(v32, a3);
}

uint64_t MLRandomForestRegressor.ModelParameters.description.getter()
{
  v0 = sub_237C0924C();
  MEMORY[0x2383DC360](v0);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  v1 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v1);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  v2 = MEMORY[0x2383DC360](0xD000000000000014, 0x8000000237C16E20);
  OUTLINED_FUNCTION_3_10(v2, v3);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_10(v4, v5);
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C16E00);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();

  strcpy(v8, "Random Seed: ");
  HIWORD(v8[1]) = -4864;
  v6 = OUTLINED_FUNCTION_7_11();
  MEMORY[0x2383DC360](v6);

  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x2383DC360](0x7362755320776F52, 0xEF203A656C706D61);
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  OUTLINED_FUNCTION_3_16();
  sub_237C08EDC();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4_0();
  sub_237C08A8C();
  OUTLINED_FUNCTION_2_1();
  MEMORY[0x2383DC360](v8[0], v8[1]);

  return 0x747065442078614DLL;
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  result = sub_2379D8FF4(v1, &v8, &qword_27DE9A998, &unk_237C0C100);
  if (v9)
  {
    sub_2379DAD24(&v8, &v10);
    swift_dynamicCast();
    sub_237AB9BB8(a1);
    return sub_237A37648(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A37290@<X0>(uint64_t a1@<X8>)
{
  result = MLRandomForestRegressor.ModelParameters.validationData.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_237A372D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  sub_2379DBCDC(v3, v1);
  return MLRandomForestRegressor.ModelParameters.validationData.setter(&v3);
}

uint64_t MLRandomForestRegressor.ModelParameters.validationData.setter(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  v8 = *a1;
  v9 = *(a1 + 8);
  v13[3] = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v13);
  if (v9 == 255)
  {
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 256;
  }

  else if (MLDataTable.size.getter())
  {
    *v7 = v8;
    *(v7 + 8) = v9 & 1;
  }

  else
  {
    sub_2379DBC84(v8, v9);
  }

  swift_storeEnumTagMultiPayload();
  sub_237A375E4(v7, boxed_opaque_existential_0);
  return sub_2379DAE54(v13, v2);
}

void (*MLRandomForestRegressor.ModelParameters.validationData.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 16) = v1;
  MLRandomForestRegressor.ModelParameters.validationData.getter(a1);
  return sub_237A37474;
}

void sub_237A37474(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = *a1;
    v5 = v3;
    sub_2379DBCDC(v2, v3);
    MLRandomForestRegressor.ModelParameters.validationData.setter(&v4);

    sub_2379DBC84(v2, v3);
  }

  else
  {
    v4 = *a1;
    v5 = v3;
    MLRandomForestRegressor.ModelParameters.validationData.setter(&v4);
  }
}

uint64_t sub_237A37508(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237A36A14(a1, v4);
  return MLRandomForestRegressor.ModelParameters.validation.setter(v4);
}

uint64_t MLRandomForestRegressor.ModelParameters.validation.setter(uint64_t a1)
{
  v5[3] = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v5);
  sub_237A375E4(a1, boxed_opaque_existential_0);
  return sub_2379DAE54(v5, v1);
}

uint64_t sub_237A375E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A37648(uint64_t a1)
{
  v2 = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*MLRandomForestRegressor.ModelParameters.validation.modify(void *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  v4 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v4;
  v4[16] = v2;
  v4[17] = type metadata accessor for MLRandomForestRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  v6 = *(v5 + 64);
  v4[18] = __swift_coroFrameAllocStub(v6);
  v4[19] = __swift_coroFrameAllocStub(v6);
  result = sub_2379D8FF4(v2, (v4 + 4), &qword_27DE9A998, &unk_237C0C100);
  if (v4[7])
  {
    sub_2379DAD24(v4 + 2, v4);
    swift_dynamicCast();
    return sub_237A377A4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_237A377A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[18];
  v4 = (*a1)[19];
  v5 = (*a1)[16];
  v6 = (*a1)[17];
  if (a2)
  {
    sub_237A36A14((*a1)[19], v3);
    v2[11] = v6;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v2 + 8);
    sub_237A375E4(v3, boxed_opaque_existential_0);
    sub_2379DAE54((v2 + 8), v5);
    sub_237A37648(v4);
  }

  else
  {
    v2[15] = v6;
    v8 = __swift_allocate_boxed_opaque_existential_0(v2 + 12);
    sub_237A375E4(v4, v8);
    sub_2379DAE54((v2 + 12), v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t MLRandomForestRegressor.ModelParameters.playgroundDescription.getter@<X0>(uint64_t *a1@<X8>)
{
  result = MLRandomForestRegressor.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_7_11()
{

  return sub_237C0924C();
}

id sub_237A37A64()
{
  v0 = [objc_opt_self() standardUserDefaults];
  OUTLINED_FUNCTION_21_2();
  v1 = sub_237C086BC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_237A37AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v6 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v6[2].n128_u64[0] = v7;
  v6[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(v4);
  v8 = sub_237C086BC();

  OUTLINED_FUNCTION_7_12();
  inited[3].n128_u64[0] = v8;
  inited[3].n128_u64[1] = v9;
  inited[4].n128_u64[0] = 0xEA0000000000656DLL;
  v10 = sub_237C086BC();
  OUTLINED_FUNCTION_3_17(v10);
  inited[5].n128_u64[1] = 0xE800000000000000;
  v11 = sub_237C08B0C();
  OUTLINED_FUNCTION_1_14(v11);
  v13 = v12;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(31, v14);
  OUTLINED_FUNCTION_6_14();
  return v13 & 1;
}

uint64_t sub_237A37C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_237C086BC();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v9[4] = sub_237A38120;
  v9[5] = v5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_237A37CF0;
  v9[3] = &block_descriptor_1;
  v6 = _Block_copy(v9);

  v7 = AnalyticsSendEventLazy();
  _Block_release(v6);

  return v7;
}

id sub_237A37CF0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_237A380A4();
    v4 = sub_237C0855C();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_237A37D7C()
{
  v0 = [objc_opt_self() mainBundle];
  result = sub_237A383A4(v0);
  if (!v2)
  {
    return 0xD000000000000014;
  }

  return result;
}

uint64_t sub_237A37DD8(uint64_t a1, unsigned __int8 a2)
{
  v4 = a2;
  sub_237B980B4(a1);
  v11 = v5;
  if (v4 != 2)
  {
    if (a2)
    {
      v6 = 0x68636E7953202D20;
    }

    else
    {
      v6 = 0x636E797341202D20;
    }

    if (a2)
    {
      v7 = 0xEE0073756F6E6F72;
    }

    else
    {
      v7 = 0xEF73756F6E6F7268;
    }

    MEMORY[0x2383DC360](v6, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B680;
  *(inited + 32) = 0x6574616C706D6554;
  *(inited + 40) = 0xE800000000000000;
  sub_237B980B4(a1);
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 48) = a1;
  *(inited + 56) = 0x656C646E7542;
  *(inited + 64) = 0xE600000000000000;
  sub_237A37D7C();
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 72) = a1;
  *(inited + 80) = 0x6574616C706D6554;
  *(inited + 88) = 0xEF65736F62726556;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  *(inited + 96) = a1;
  sub_237A380A4();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(32, v9);
  OUTLINED_FUNCTION_6_14();
  return v11 & 1;
}

uint64_t sub_237A37F70(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a1;
  CFAbsoluteTimeGetCurrent();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v6 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v6[2].n128_u64[0] = v7;
  v6[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(v4);
  v8 = sub_237C086BC();

  inited[3].n128_u64[0] = v8;
  inited[3].n128_u64[1] = 1802723668;
  inited[4].n128_u64[0] = 0xE400000000000000;
  inited[4].n128_u64[1] = sub_237C086BC();
  inited[5].n128_u64[0] = 0x6E6F697461727544;
  inited[5].n128_u64[1] = 0xE800000000000000;
  v9 = sub_237C08A5C();
  OUTLINED_FUNCTION_1_14(v9);
  v11 = v10;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(33, v12);
  OUTLINED_FUNCTION_6_14();
  return v11 & 1;
}

unint64_t sub_237A380A4()
{
  result = qword_27DE9B570;
  if (!qword_27DE9B570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE9B570);
  }

  return result;
}

uint64_t sub_237A380E8()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_237A38140(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  v4 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v6 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v6[2].n128_u64[0] = v7;
  v6[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(v4);
  v8 = sub_237C086BC();

  OUTLINED_FUNCTION_7_12();
  inited[3].n128_u64[0] = v8;
  inited[3].n128_u64[1] = v9;
  inited[4].n128_u64[0] = 0xEA0000000000656DLL;
  v10 = sub_237C086BC();
  OUTLINED_FUNCTION_3_17(v10);
  inited[5].n128_u64[1] = 0xE800000000000000;
  v11 = sub_237C08A9C();
  OUTLINED_FUNCTION_1_14(v11);
  v13 = v12;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(31, v14);
  OUTLINED_FUNCTION_6_14();
  return v13 & 1;
}

uint64_t sub_237A3825C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B568, &qword_237C0D768);
  inited = swift_initStackObject();
  v7 = OUTLINED_FUNCTION_0_18(inited, xmmword_237C0BC00);
  v7[2].n128_u64[0] = v8;
  v7[2].n128_u64[1] = 0xE800000000000000;
  sub_237B980B4(v5);
  v9 = sub_237C086BC();

  inited[3].n128_u64[0] = v9;
  strcpy(&inited[3].n128_i8[8], "ParameterName");
  inited[4].n128_u16[3] = -4864;
  inited[4].n128_u64[1] = sub_237C086BC();
  strcpy(&inited[5], "ParameterValue");
  inited[5].n128_u8[15] = -18;
  v10 = sub_237C086BC();
  OUTLINED_FUNCTION_1_14(v10);
  v12 = v11;
  sub_237C086BC();
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_8_12();
  sub_237C085AC();
  OUTLINED_FUNCTION_21_2();
  OUTLINED_FUNCTION_5_14(36, v13);
  OUTLINED_FUNCTION_6_14();
  return v12 & 1;
}

uint64_t sub_237A383A4(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_237C086EC();

  return v3;
}

uint64_t OUTLINED_FUNCTION_1_14(uint64_t a1)
{
  v1[12] = a1;
  v1[13] = 0x656C646E7542;
  v1[14] = 0xE600000000000000;

  return sub_237A37D7C();
}

uint64_t OUTLINED_FUNCTION_3_17(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 80) = 0x797469746E617551;
  return result;
}

uint64_t OUTLINED_FUNCTION_5_14(uint64_t a1, uint64_t a2)
{
  v4 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return sub_237A37C08(v4, a2, v2);
}

uint64_t OUTLINED_FUNCTION_6_14()
{
}

unint64_t OUTLINED_FUNCTION_8_12()
{
  *(v0 + 120) = v1;

  return sub_237A380A4();
}

uint64_t sub_237A384C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B578, &qword_237C14020);
  OUTLINED_FUNCTION_0();
  v48 = v5;
  v49 = v4;
  MEMORY[0x28223BE20](v4);
  v47 = &v43 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B580, &qword_237C0D770);
  OUTLINED_FUNCTION_0();
  v50 = v8;
  v51 = v7;
  MEMORY[0x28223BE20](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B098, &qword_237C15210);
  OUTLINED_FUNCTION_0();
  v44 = v10;
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v46 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v53 = v16;
  v54 = v15;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v43 - v19;
  OUTLINED_FUNCTION_1_15();
  sub_237C05DFC();
  v21 = sub_237C05FFC();
  if (v21 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778))
  {
    OUTLINED_FUNCTION_1_15();
    v29 = sub_237C05DEC();
    MEMORY[0x28223BE20](v29);
    *(&v43 - 2) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    v30 = v57;
    sub_237C05F6C();
    if (v30)
    {
      v31 = OUTLINED_FUNCTION_2_19();
LABEL_9:
      v33(v31, v32);
      return (*(v53 + 8))(v20, v54);
    }

    v57 = 0;
    v37 = OUTLINED_FUNCTION_2_19();
    v38(v37);
    v39 = v45;
    sub_237C05EBC();
LABEL_12:
    (*(v44 + 8))(v14, v39);

    sub_237C05E0C();
    return (*(v53 + 8))(v20, v54);
  }

  v22 = v52;
  v23 = sub_237C05FFC();
  if (v23 == __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B590, &qword_237C14080))
  {
    v51 = a1;
    OUTLINED_FUNCTION_1_15();
    v34 = sub_237C05DEC();
    MEMORY[0x28223BE20](v34);
    *(&v43 - 2) = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    v14 = v46;
    v35 = v49;
    v36 = v57;
    sub_237C05F6C();
    if (v36)
    {
      v31 = OUTLINED_FUNCTION_2_19();
      v32 = v35;
      goto LABEL_9;
    }

    v57 = 0;
    v40 = OUTLINED_FUNCTION_2_19();
    v41(v40, v35);
    v39 = v45;
    sub_237C05EBC();
    goto LABEL_12;
  }

  v24 = sub_237C05FFC();
  if (v24 != __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30))
  {
    v55 = 0;
    v56 = 0xE000000000000000;
    sub_237C08EDC();
    MEMORY[0x2383DC360](0x27206E6D756C6F43, 0xE800000000000000);
    v25 = OUTLINED_FUNCTION_1_15();
    MEMORY[0x2383DC360](v25);
    MEMORY[0x2383DC360](0xD00000000000003FLL, 0x8000000237C18B10);
    v26 = v55;
    v27 = v56;
    sub_2379E8AF0();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v27;
    *(v28 + 16) = 0u;
    *(v28 + 32) = 0u;
    *(v28 + 48) = 1;
    swift_willThrow();
  }

  return (*(v53 + 8))(v20, v54);
}

uint64_t sub_237A38AA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;

  result = a3(a2, v8);
  if (!v4)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B0F0, &qword_237C0DD30);
    return __swift_storeEnumTagSinglePayload(a4, 0, 1, v10);
  }

  return result;
}

void MLImageClassifier.write(to:metadata:)(uint64_t a1, const void *a2)
{
  v3 = _s5ModelVMa_1(0);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_2_0();
  v6 = v5 - v4;
  v7 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v44 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v13 - 8);
  OUTLINED_FUNCTION_2_0();
  v16 = v15 - v14;
  v17 = type metadata accessor for MLImageClassifier.ModelParameters.ModelAlgorithmType(0);
  MEMORY[0x28223BE20](v17 - 8);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  v27 = v26 - v25;
  memcpy(__dst, a2, sizeof(__dst));
  v28 = v48;
  sub_2379F25FC();
  if (!v28)
  {
    v41 = v12;
    v42 = v27;
    v48 = v21;
    MLImageClassifier.ModelParameters.algorithm.getter(v20);
    sub_237A38FB0(v20, v16);
    v29 = type metadata accessor for MLImageClassifier(0);
    sub_237A39014(v43 + *(v29 + 32), v6);
    v30 = *&__dst[8];
    if (*&__dst[8])
    {
      v31 = *__dst;
      v33 = *&__dst[16];
      v32 = *&__dst[24];
      v34 = *&__dst[32];
      v36 = *&__dst[48];
      v35 = *&__dst[56];
      v37 = *&__dst[64];
    }

    else
    {
      v38 = NSFullUserName();
      v31 = sub_237C086EC();
      v30 = v39;

      v37 = 0;
      v32 = 0x8000000237C17C90;
      v34 = 0uLL;
      v35 = 0xE100000000000000;
      v33 = 0xD000000000000033;
      v36 = 49;
    }

    *__src = v31;
    *&__src[8] = v30;
    *&__src[16] = v33;
    *&__src[24] = v32;
    *&__src[32] = v34;
    *&__src[48] = v36;
    *&__src[56] = v35;
    *&__src[64] = v37;
    sub_237A39078(__dst, v45);
    sub_237A62AC0();
    memcpy(v45, __src, sizeof(v45));
    sub_2379FC064(v45);
    OUTLINED_FUNCTION_1_16();
    sub_237C07E5C();
    v40 = v48;
    (*(v44 + 8))(v41, v7);
    OUTLINED_FUNCTION_2_20();
    (*(v23 + 8))(v42, v40);
  }
}

uint64_t sub_237A38FB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLImageClassifier.FeatureExtractorType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39014(uint64_t a1, uint64_t a2)
{
  v4 = _s5ModelVMa_1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39078(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADE0, &unk_237C0BF90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A390E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLImageClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  object = toFile._object;
  countAndFlagsBits = toFile._countAndFlagsBits;
  v6 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  sub_2379F29AC(countAndFlagsBits, object, 0x616C436567616D49, 0xEF72656966697373);
  if (!v2)
  {
    MLImageClassifier.write(to:metadata:)(v12, metadata);
    (*(v8 + 8))(v12, v6);
  }
}

uint64_t OUTLINED_FUNCTION_1_16()
{

  return sub_237A390E8(v0, _s5ModelVMa_1);
}

uint64_t OUTLINED_FUNCTION_2_20()
{

  return sub_237A390E8(v0, type metadata accessor for MLImageClassifier.FeatureExtractorType);
}

uint64_t sub_237A392BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237A39328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MLSoundClassifier.ModelParameters(uint64_t a1)
{
  result = qword_27DE9B5A0;
  if (!qword_27DE9B5A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MLSoundClassifier.ModelParameters.maxIterations.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  result = type metadata accessor for MLSoundClassifier.ModelParameters(v2);
  *(v1 + *(result + 20)) = v0;
  return result;
}

void (*MLSoundClassifier.ModelParameters.maxIterations.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLSoundClassifier.ModelParameters(v0);
  return nullsub_1;
}

uint64_t MLSoundClassifier.ModelParameters.overlapFactor.setter(double a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

void (*MLSoundClassifier.ModelParameters.overlapFactor.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLSoundClassifier.ModelParameters(v0);
  return nullsub_1;
}

void MLSoundClassifier.ModelParameters.algorithm.getter(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v3 = OUTLINED_FUNCTION_2_21(v2);
  v5 = sub_2379F6D68(v3, v4);
  if (!v18)
  {
    sub_237A286E0(v17);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_19(v5, v6, v7, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v8, v9, v10, v11, v14);
  if (!swift_dynamicCast())
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v12 = v15;
  v13 = v16;
LABEL_6:
  *a1 = v12;
  *(a1 + 8) = v13;
}

void sub_237A395A0(uint64_t a1@<X8>)
{
  MLSoundClassifier.ModelParameters.algorithm.getter(&v3);
  v2 = v4;
  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_237A395E4(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return MLSoundClassifier.ModelParameters.algorithm.setter(&v3);
}

uint64_t MLSoundClassifier.ModelParameters.algorithm.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v8 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v6 = v2;
  v7 = v3;
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  return sub_2379DAE54(&v6, v1 + *(v4 + 28));
}

void (*MLSoundClassifier.ModelParameters.algorithm.modify(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[8] = v1;
  v4 = *(type metadata accessor for MLSoundClassifier.ModelParameters(0) + 28);
  *(v3 + 11) = v4;
  sub_2379F6D68(v1 + v4, v3);
  if (!v3[3])
  {
    sub_237A286E0(v3);
    goto LABEL_5;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v5 = v3[6];
  v6 = *(v3 + 56);
LABEL_6:
  v3[4] = v5;
  *(v3 + 40) = v6;
  return sub_237A3973C;
}

void sub_237A3973C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 44);
  v5 = *(*a1 + 64);
  v1[3] = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  *v1 = v2;
  *(v1 + 8) = v3;
  sub_2379DAE54(v1, v5 + v4);

  free(v1);
}

double MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter()
{
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = OUTLINED_FUNCTION_2_21(v1);
  v4 = sub_2379F6D68(v2, v3);
  if (v17)
  {
    OUTLINED_FUNCTION_0_19(v4, v5, v6, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v7, v8, v9, v10, v13);
    if ((swift_dynamicCast() & 1) != 0 && (v15 & 1) == 0 && v14 == 1)
    {
      return 0.975;
    }
  }

  else
  {
    sub_237A286E0(v16);
  }

  v11 = (v0 + *(v1 + 32));
  if (v11[8])
  {
    return 0.975;
  }

  return *v11;
}

uint64_t MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.setter(double a1)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 8) = v1;
  *a1 = MLSoundClassifier.ModelParameters.featureExtractionTimeWindowSize.getter();
  return sub_237A398C4;
}

uint64_t sub_237A398C4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  result = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v4 = v1 + *(result + 32);
  *v4 = v2;
  *(v4 + 8) = 0;
  return result;
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:)()
{
  OUTLINED_FUNCTION_7_13();
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v6 = (v1 + *(v5 + 28));
  *v6 = 0u;
  v6[1] = 0u;
  v7 = OUTLINED_FUNCTION_1_17(v5);
  sub_237A392BC(v7, v8);
  OUTLINED_FUNCTION_6_15();
  v12 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v10 = v3;
  v11 = v4;
  sub_237A3A018(v0);
  return sub_2379DAE54(&v10, v6);
}

void MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:)()
{
  OUTLINED_FUNCTION_7_13();
  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = (v0 + *(v1 + 28));
  *v2 = 0u;
  v2[1] = 0u;
  v3 = OUTLINED_FUNCTION_1_17(v1);
  sub_237A3A074(v3, v4);
  OUTLINED_FUNCTION_6_15();
}

uint64_t MLSoundClassifier.ModelParameters.init(validation:maxIterations:overlapFactor:algorithm:featureExtractionTimeWindowSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v14 = (a4 + v13[7]);
  *v14 = 0u;
  v14[1] = 0u;
  v15 = a4 + v13[8];
  *v15 = 0;
  *(v15 + 8) = 1;
  *(a4 + v13[9]) = 32;
  sub_237A392BC(a1, a4);
  *(a4 + v13[5]) = a2;
  *(a4 + v13[6]) = a5;
  v58 = &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType;
  v56 = v11;
  LOBYTE(v57) = v12;
  sub_2379DAE54(&v56, v14);
  *v15 = a6;
  *(v15 + 8) = 0;
  if (a6 < 0.5)
  {
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_9_10(v16, v17, v18, v19, v20, v21, v22, v23, v56);
    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_9_10(v24, v25, v26, v27, v28, v29, v30, v31, v56);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v32 = v56;
    v33 = v57;
    v34 = sub_237C08C4C();
    sub_237BABE74(v32, v33, v34);

    result = sub_237A3A018(a1);
    v36 = 0x3FE0000000000000;
LABEL_5:
    *v15 = v36;
    *(v15 + 8) = 0;
    return result;
  }

  if (a6 > 15.0)
  {
    OUTLINED_FUNCTION_11_11();
    OUTLINED_FUNCTION_3_18();
    OUTLINED_FUNCTION_10_9(v37, v38, v39, v40, v41, v42, v43, v44, v56);
    OUTLINED_FUNCTION_4_16();
    OUTLINED_FUNCTION_10_9(v45, v46, v47, v48, v49, v50, v51, v52, v56);
    MEMORY[0x2383DC360](46, 0xE100000000000000);
    v53 = v56;
    v54 = v57;
    v55 = sub_237C08C4C();
    sub_237BABE74(v53, v54, v55);

    result = sub_237A3A018(a1);
    v36 = 0x402E000000000000;
    goto LABEL_5;
  }

  return sub_237A3A018(a1);
}

uint64_t MLSoundClassifier.ModelParameters.FeaturePrintType.hashValue.getter()
{
  sub_237C093CC();
  MEMORY[0x2383DCF70](0);
  return sub_237C0940C();
}

void sub_237A39CD0()
{
  v0 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v1 = OUTLINED_FUNCTION_2_21(v0);
  v3 = sub_2379F6D68(v1, v2);
  if (!v17)
  {
    sub_237A286E0(&v15);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_0_19(v3, v4, v5, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v6, v7, v8, v9, v12);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_8_13();
    goto LABEL_6;
  }

  v10 = v13;
  v11 = v14;
LABEL_6:
  v15 = v10;
  v16 = v11;
  sub_237AC91A0();
}

unint64_t MLSoundClassifier.ModelParameters.description.getter()
{
  sub_237C08EDC();

  v1 = type metadata accessor for MLSoundClassifier.ModelParameters(0);
  v2 = sub_237C0924C();
  MEMORY[0x2383DC360](v2);

  MEMORY[0x2383DC360](10, 0xE100000000000000);
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD000000000000010, 0x8000000237C18C30);
  sub_237C08A8C();
  MEMORY[0x2383DC360](10, 0xE100000000000000);

  MEMORY[0x2383DC360](0, 0xE000000000000000);

  v15 = 0;
  v16 = 0xE000000000000000;
  sub_237C08EDC();

  v18 = 0xD000000000000010;
  v19 = 0x8000000237C18C50;
  v3 = sub_2379F6D68(v0 + *(v1 + 28), &v15);
  if (v17)
  {
    OUTLINED_FUNCTION_0_19(v3, v4, v5, &type metadata for MLSoundClassifier.ModelParameters.ModelAlgorithmType, v6, v7, v8, v9, v14);
    if (swift_dynamicCast())
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_237A286E0(&v15);
  }

  OUTLINED_FUNCTION_8_13();
LABEL_6:
  v15 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();
  v16 = v10;

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

  MEMORY[0x2383DC360](v15, v16);

  v11 = v18;
  v12 = v19;
  v15 = 0xD000000000000010;
  v16 = 0x8000000237C16E00;

  MEMORY[0x2383DC360](v11, v12);

  return v15;
}

unint64_t MLSoundClassifier.ModelParameters.playgroundDescription.getter@<X0>(unint64_t *a1@<X8>)
{
  result = MLSoundClassifier.ModelParameters.description.getter();
  a1[3] = MEMORY[0x277D837D0];
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237A3A018(uint64_t a1)
{
  v2 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_237A3A074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_237A3A0DC()
{
  result = qword_27DE9B598;
  if (!qword_27DE9B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B598);
  }

  return result;
}

uint64_t sub_237A3A1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 28) + 24);
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    v10 = v9 - 1;
    if (v10 < 0)
    {
      v10 = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_237A3A26C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 24) = a2;
  }

  return result;
}

void sub_237A3A318(uint64_t a1)
{
  type metadata accessor for MLSoundClassifier.ModelParameters.ValidationData(319);
  if (v1 <= 0x3F)
  {
    sub_2379F1F74(319, &qword_27DE9B5B0, MEMORY[0x277D84F70] + 8);
    if (v2 <= 0x3F)
    {
      sub_2379F1F74(319, &qword_27DE9B5B8, MEMORY[0x277D839F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *_s15ModelParametersV16FeaturePrintTypeOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x237A3A48CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_17(uint64_t a1)
{
  v3 = v2 + *(a1 + 32);
  *v3 = 0;
  *(v3 + 8) = 1;
  *(v2 + *(a1 + 36)) = 32;
  return v1;
}

void OUTLINED_FUNCTION_3_18()
{

  JUMPOUT(0x2383DC360);
}

void OUTLINED_FUNCTION_4_16()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_9_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_10_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_237C08A8C();
}

uint64_t OUTLINED_FUNCTION_11_11()
{

  return sub_237C08EDC();
}

id MLDataTable.rows.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2379DBCF4(v2, v3);
}

uint64_t sub_237A3A778(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result < a2 || a3 < result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_237A3A78C(uint64_t result, int a2, char a3, uint64_t a4)
{
  if (a3 & 1) != 0 || (*(a4 + 16))
  {
    goto LABEL_13;
  }

  if (*(a4 + 8) != a2)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*a4 > result)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (*(a4 + 40))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  if (*(a4 + 32) != a2)
  {
    goto LABEL_11;
  }

  if (*(a4 + 24) < result)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_237A3A820@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A90128(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_237A3A854(uint64_t *a1)
{
  result = sub_237A90128(*a1, *v1);
  *a1 = result;
  return result;
}

uint64_t sub_237A3A888@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_237A8FD60(*a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_237A3A8D4@<X0>(uint64_t *a1@<X8>)
{
  result = MLDataTable.Rows.endIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237A3A944(void *a1)
{
}

uint64_t sub_237A3A9A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A8FC1C(*v1, *(v1 + 8));
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_237A3A9E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  result = sub_237A8FF00(*a1, a2);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_237A3AA74@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237B6A8E8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237A3AAA8(uint64_t *a1)
{
  result = sub_237B6A8E8(*a1);
  *a1 = result;
  return result;
}

void sub_237A3AADC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

uint64_t MLDataTable.Rows.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_2_22(a1, a2);
  v4 = OUTLINED_FUNCTION_1_18();
  v32 = v4;
  v6 = 0x2020203A7379654BLL;
  if (v4 < 1)
  {
    v6 = 0x2020203A79654BLL;
  }

  v7 = 0xE800000000000000;
  if (v4 < 1)
  {
    v7 = 0xE700000000000000;
  }

  v37 = v6;
  v38 = v7;
  OUTLINED_FUNCTION_2_22(v4, v5);
  v8 = OUTLINED_FUNCTION_1_18();
  if (v8 >= 10)
  {
    v10 = 10;
  }

  else
  {
    v10 = v8;
  }

  if (v8 < 0)
  {
LABEL_35:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  if (v8)
  {
    v11 = 0;
    v31 = v10;
    v30 = v3;
    while (v11 != v10)
    {
      if (v11)
      {
        OUTLINED_FUNCTION_3_19();
        MLDataTable.Rows.subscript.getter(v11, v12);

        MLDataTable.Row.Values.description.getter();

        OUTLINED_FUNCTION_4_17();

        v34 = 0x2020202020200A20;
        v35 = v33;

        MEMORY[0x2383DC360](32, 0xE100000000000000);

        MEMORY[0x2383DC360](v34, v35);
      }

      else
      {
        LOBYTE(v33) = v3;
        MLDataTable.Rows.subscript.getter(0, &v34);

        v13 = sub_237A2E9F4();
        v14 = sub_237A017E8(0, v13);
        v15 = sub_237A2E9F4();
        if (sub_237A017E8(0, v15) < 0)
        {
          goto LABEL_33;
        }

        v16 = sub_237A2E9F4();
        v17 = sub_237A017E8(0, v16);
        if (v14 < 0 || v17 < v14)
        {
          goto LABEL_34;
        }

        if (v14)
        {
          v36 = MEMORY[0x277D84F90];
          sub_237AC8A74();
          v18 = 0;
          v19 = v36;
          do
          {
            sub_237A2E9C8(v18);
            v20 = sub_237A2DE60();
            v22 = v21;

            v36 = v19;
            v23 = *(v19 + 16);
            if (v23 >= *(v19 + 24) >> 1)
            {
              sub_237AC8A74();
              v19 = v36;
            }

            ++v18;
            *(v19 + 16) = v23 + 1;
            v24 = v19 + 16 * v23;
            *(v24 + 32) = v20;
            *(v24 + 40) = v22;
          }

          while (v14 != v18);
          v3 = v30;
        }

        else
        {
          v19 = MEMORY[0x277D84F90];
        }

        v25 = MEMORY[0x2383DC4F0](v19, MEMORY[0x277D837D0]);
        v27 = v26;

        MEMORY[0x2383DC360](v25, v27);

        if (v32 < 1)
        {
          v8 = MEMORY[0x2383DC360](0x203A65756C61560ALL, 0xE800000000000000);
        }

        else
        {
          OUTLINED_FUNCTION_3_19();
          MLDataTable.Rows.subscript.getter(0, v28);

          MLDataTable.Row.Values.description.getter();

          OUTLINED_FUNCTION_4_17();

          MEMORY[0x2383DC360](0x3A7365756C61560ALL, v33);
        }

        v10 = v31;
        v11 = 0;
      }

      if (++v11 == v10)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_29:
  OUTLINED_FUNCTION_2_22(v8, v9);
  if (v10 < OUTLINED_FUNCTION_1_18())
  {
    MEMORY[0x2383DC360](0x2E2E2E202CLL, 0xE500000000000000);
  }

  return v37;
}

unint64_t MLDataTable.Rows.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_0_20();
  v4 = MLDataTable.Rows.description.getter(v2, v3);
  v6 = v5;
  v7 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v8 = sub_237A02218(v4, v6, 0);
  result = sub_237A022C0();
  a1[3] = result;
  *a1 = v8;
  return result;
}

unint64_t sub_237A3AFD0()
{
  result = qword_27DE9B5C0;
  if (!qword_27DE9B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5C0);
  }

  return result;
}

unint64_t sub_237A3B06C()
{
  result = qword_27DE9B5D8;
  if (!qword_27DE9B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5D8);
  }

  return result;
}

unint64_t sub_237A3B0C4()
{
  result = qword_27DE9B5E0;
  if (!qword_27DE9B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5E0);
  }

  return result;
}

uint64_t sub_237A3B160(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9B5D0, &qword_237C0D8D8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_237A3B1DC()
{
  result = qword_27DE9B5F0;
  if (!qword_27DE9B5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B5F0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s14descr284ABE0A1V20FeatureExtractorTypeOwet(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t _s14descr284ABE0A1V20FeatureExtractorTypeOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_18()
{

  return sub_237A018D0();
}

uint64_t OUTLINED_FUNCTION_2_22(uint64_t a1, uint64_t a2)
{

  return MLDataTable.size.getter();
}

void OUTLINED_FUNCTION_4_17()
{

  JUMPOUT(0x2383DC360);
}

id MLLogisticRegressionClassifier.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLLogisticRegressionClassifier(uint64_t a1)
{
  result = qword_27DE9B648;
  if (!qword_27DE9B648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLLogisticRegressionClassifier.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLLogisticRegressionClassifier.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLLogisticRegressionClassifier.targetColumn.getter()
{
  type metadata accessor for MLLogisticRegressionClassifier(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLLogisticRegressionClassifier.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLLogisticRegressionClassifier(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLLogisticRegressionClassifier.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLLogisticRegressionClassifier(v0);
  return nullsub_1;
}

uint64_t MLLogisticRegressionClassifier.featureColumns.getter()
{
  type metadata accessor for MLLogisticRegressionClassifier(0);
}

uint64_t MLLogisticRegressionClassifier.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLLogisticRegressionClassifier(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLLogisticRegressionClassifier.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLLogisticRegressionClassifier(v0);
  return nullsub_1;
}

uint64_t MLLogisticRegressionClassifier.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLLogisticRegressionClassifier(v2) + 32);

  return sub_237A3B70C(v3, v0);
}

uint64_t MLLogisticRegressionClassifier.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  type metadata accessor for MLLogisticRegressionClassifier(v0);
  return OUTLINED_FUNCTION_24_8();
}

uint64_t MLLogisticRegressionClassifier.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  type metadata accessor for MLLogisticRegressionClassifier(v0);
  return OUTLINED_FUNCTION_24_8();
}

uint64_t sub_237A3B7C0()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9B610);
  v1 = __swift_project_value_buffer(v0, qword_27DE9B610);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLLogisticRegressionClassifier._defaultSessionParameters.getter()
{
  if (qword_27DE9A570 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v1, qword_27DE9B610);
  OUTLINED_FUNCTION_0_21();
  return sub_237A40094();
}

uint64_t sub_237A3B8B4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237A3B95C;

  return sub_237B917EC();
}

uint64_t sub_237A3B95C()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_4();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_41_2();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_28_3();

    return MEMORY[0x2822009F8](v10);
  }
}

void MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v219 = v20;
  v225 = v23;
  v220 = v24;
  v227 = v25;
  v217 = v26;
  v222 = v27;
  v29 = v28;
  v30 = type metadata accessor for AnyClassificationMetrics(0);
  v31 = OUTLINED_FUNCTION_20(v30);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_58();
  v34 = OUTLINED_FUNCTION_21_3(v33);
  v35 = type metadata accessor for MLClassifierMetrics(v34);
  v36 = OUTLINED_FUNCTION_20(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_58();
  v39 = OUTLINED_FUNCTION_21_3(v38);
  v40 = _s5ModelVMa(v39);
  v201 = *(v40 - 8);
  MEMORY[0x28223BE20](v40 - 8);
  OUTLINED_FUNCTION_77_0(&v191 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v202 = v42;
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v44);
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  OUTLINED_FUNCTION_0();
  v208 = v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v48);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v49);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_77_0(&v191 - v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v52);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_21_3(&v191 - v54);
  v214 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v209 = v55;
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_58();
  v60 = OUTLINED_FUNCTION_21_3(v59);
  v205 = _s10ClassifierVMa_1(v60);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v63);
  v226 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v224 = v64;
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_58();
  v70 = OUTLINED_FUNCTION_21_3(v69);
  v218 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v70);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_46_2();
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v78 = v77;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v79);
  v80 = OUTLINED_FUNCTION_66_1();
  v81 = type metadata accessor for MLLogisticRegressionClassifier(v80);
  v82 = (v29 + *(v81 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v22);
  sub_2379E5C70(v22);
  (*(v78 + 8))(v22, v76);
  *v82 = 0;
  v83 = type metadata accessor for MLClassifierMetrics.Contents(0);
  v221 = v82;
  swift_storeEnumTagMultiPayload();
  v200 = v81;
  v84 = *(v81 + 40);
  v85 = sub_2379E8AF0();
  v86 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v87 = 0xD0000000000000C0;
  v87[1] = 0x8000000237C17B10;
  v88 = v225;
  OUTLINED_FUNCTION_23_3(v86, v87);
  *(v29 + v84) = v89;
  v223 = v29;
  v198 = v83;
  swift_storeEnumTagMultiPayload();
  sub_237A40628();
  if (v229)
  {
    v90 = *(v231 + 48);
    sub_2379DAD24(&v228, v230);
    swift_dynamicCast();
    v91 = v222;
    v92 = v219;
    sub_237B7C890(v21, (v21 + v90), v222);
    if (v92)
    {

      sub_237A2A1B0(v88);
      OUTLINED_FUNCTION_36_3();
      v93(v91, v226);
    }

    else
    {
      v219 = v85;
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
      v94 = v227;
      sub_237B19700(v21, v217, v227, v220);
      v193 = v95;
      v192 = v84;

      v218 = v21;
      OUTLINED_FUNCTION_61_2();
      sub_237A40628();
      v96 = *(v231 + 48);
      v97 = v226;
      OUTLINED_FUNCTION_73_1(v76 + v96, 1, v226);
      v98 = v224;
      if (v99)
      {
        sub_2379D9054(v76 + v96, &qword_27DE9A9A0, &qword_237C0BF60);
        v100 = OUTLINED_FUNCTION_82();
        v211 = v101;
        (v101)(v100);
      }

      else
      {
        (*(v224 + 32))(v212, v76 + v96, v97);
        v220 = 0;
        v104 = *(v98 + 8);
        v105 = OUTLINED_FUNCTION_82();
        v104(v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_237C0B660;
        *(inited + 32) = v217;
        *(inited + 40) = v94;

        v191 = "ds at least two labels.";
        v107 = v220;
        sub_2379F2DA4();
        OUTLINED_FUNCTION_65_1();
        if (v107)
        {

          OUTLINED_FUNCTION_57_2();
          swift_setDeallocating();
          sub_237B9082C();
          OUTLINED_FUNCTION_51_3();
          (v104)(v91, v97);
          (v104)(v212, v97);
          v108 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v108, v109, v110);
          OUTLINED_FUNCTION_64_2();
          goto LABEL_20;
        }

        v211 = v104;
        swift_setDeallocating();
        sub_237B9082C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
        v152 = swift_allocObject();
        *(v152 + 16) = xmmword_237C0B670;
        v153 = MEMORY[0x277D83B88];
        *(v152 + 32) = MEMORY[0x277D837D0];
        *(v152 + 40) = v153;
        v154 = v212;
        v155 = v220;
        sub_2379F30EC();
        if (v155)
        {

          OUTLINED_FUNCTION_57_2();

          OUTLINED_FUNCTION_51_3();
          OUTLINED_FUNCTION_35_2();
          v156 = v211;
          v211();
          (v156)(v154, v94);
          v157 = OUTLINED_FUNCTION_30_6();
          sub_2379D9054(v157, v158, v159);
          goto LABEL_20;
        }

        v97 = v226;
        (v211)(v154, v226);

        v88 = v225;
        v98 = v224;
      }

      sub_237C05DFC();
      OUTLINED_FUNCTION_30_6();
      OUTLINED_FUNCTION_61_2();
      sub_237A40628();
      v102 = v204;
      sub_237A403B4();
      OUTLINED_FUNCTION_73_1(v102, 1, v97);
      v220 = 0;
      if (v99)
      {
        v103 = OUTLINED_FUNCTION_82();
        (v211)(v103);
        sub_2379D9054(v102, &qword_27DE9A9A0, &qword_237C0BF60);
        __swift_storeEnumTagSinglePayload(v216, 1, 1, v214);
      }

      else
      {
        OUTLINED_FUNCTION_53_2();
        sub_237C05DFC();
        v111 = v102;
        v112 = v211;
        (v211)(v111, v97);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v214);
        v113 = OUTLINED_FUNCTION_82();
        (v112)(v113);
        v94 = v227;
      }

      v114 = v210;
      v115 = v215;
      sub_237A3B70C(v88, v230);
      *v115 = v217;
      v115[1] = v94;
      v116 = v193;
      v115[2] = v193;
      sub_237A3B70C(v230, (v115 + 3));
      OUTLINED_FUNCTION_80();
      v115[15] = v116;
      v115[16] = 0xD000000000000013;
      v115[17] = v117;
      sub_237A3B70C(v230, &v228);
      sub_237A20BBC();
      swift_bridgeObjectRetain_n();

      v118 = v207;
      sub_237C072AC();
      v119 = v114;
      sub_237C0725C();
      sub_237C0728C();
      sub_237C0729C();
      sub_237C0727C();
      sub_237C0726C();
      sub_237A2A1B0(&v228);
      v120 = v208;
      (*(v208 + 16))(v206, v118, v114);
      v212 = *(v205 + 36);
      sub_237C073CC();
      v121 = v220;
      sub_237B89590(v213, v216);
      OUTLINED_FUNCTION_65_1();
      v124 = v192;
      if (v121)
      {

        sub_237A2A1B0(v88);
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v125();
        (*(v120 + 8))(v118, v114);
        sub_237A2A1B0(v230);
        sub_2379D9054(v216, &qword_27DE9AF88, &unk_237C0C700);
        v126 = OUTLINED_FUNCTION_34_3();
        v127(v126);
        v128 = OUTLINED_FUNCTION_30_6();
        sub_2379D9054(v128, v129, v130);

        v131 = v215;
        sub_237A2A1B0((v215 + 3));

        sub_237C0741C();
        OUTLINED_FUNCTION_4();
        (*(v132 + 8))(&v131[v212]);
        OUTLINED_FUNCTION_64_2();
        goto LABEL_20;
      }

      v133 = v122;
      v134 = v118;
      v135 = v123;
      (*(v120 + 8))(v134, v119);
      sub_237A2A1B0(v230);
      sub_2379D9054(v216, &qword_27DE9AF88, &unk_237C0C700);
      v136 = OUTLINED_FUNCTION_34_3();
      v137(v136);
      v138 = v215;
      v215[13] = v133;
      *(v138 + 112) = v135 & 1;
      v139 = v203;
      sub_237A40680();
      if (*(*(v139 + 104) + 16) <= 1uLL)
      {

        OUTLINED_FUNCTION_57_2();
        v160 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v161 = 0xD000000000000027;
        v161[1] = 0x8000000237C18C90;
        OUTLINED_FUNCTION_23_3(v160, v161);
        swift_willThrow();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v162();
        v151 = OUTLINED_FUNCTION_30_6();
      }

      else
      {
        v140 = v218;
        OUTLINED_FUNCTION_53_2();
        OUTLINED_FUNCTION_71();
        v141 = v220;
        sub_237A94F48(v142, v143, v144, v145, v146);
        v147 = v227;
        if (!v141)
        {
          v163 = v200;
          v164 = v223;
          v165 = (v223 + v200[6]);
          *v165 = v217;
          v165[1] = v147;
          v219 = v163[8];
          sub_237A3B70C(v225, v164 + v219);
          *(v164 + v163[7]) = v193;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          swift_allocObject();
          OUTLINED_FUNCTION_8_14();
          sub_237A40680();
          sub_2379DD56C();
          v167 = v166;

          *(v223 + v163[5]) = v167;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v168 = v199;
          v169 = v218;
          sub_237A93A8C(v218, v199);
          OUTLINED_FUNCTION_65_1();
          v173 = MEMORY[0xD00000000000001C];
          v174 = MEMORY[0xD000000000000024];
          sub_237C05DFC();
          OUTLINED_FUNCTION_53_2();
          v217 = v173;
          v216 = v174;
          sub_237C05DFC();
          sub_237B0CBBC();
          v175 = v224;
          v176 = v226;
          v177 = v211;
          (v211)(v168, v226);
          OUTLINED_FUNCTION_13_7();
          v178 = v197;
          sub_237A40680();
          swift_storeEnumTagMultiPayload();
          sub_2379DC1F8(v178, v221);
          v179 = v196;
          sub_237A40628();
          v180 = *(v231 + 48);
          OUTLINED_FUNCTION_73_1(v179 + v180, 1, v176);
          if (v99)
          {
            OUTLINED_FUNCTION_51_3();
            v181 = OUTLINED_FUNCTION_43_3();
            (v177)(v181);
            OUTLINED_FUNCTION_1_19();
            sub_237A405D4();
            sub_2379D9054(v169, &qword_27DE9ADC0, &unk_237C0BF40);
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_71_0();
            sub_2379D9054(v179 + v180, &qword_27DE9A9A0, &qword_237C0BF60);
            (v177)(v179, v176);
          }

          else
          {
            v182 = v195;
            (*(v175 + 32))(v195, v179 + v180, v176);
            (v177)(v179, v176);
            OUTLINED_FUNCTION_53_2();
            v183 = v220;
            sub_237A93A8C(v182, v184);
            OUTLINED_FUNCTION_65_1();
            if (v183)
            {
              OUTLINED_FUNCTION_51_3();
              v185 = OUTLINED_FUNCTION_43_3();
              (v177)(v185);
              (v177)(v182, v176);
              sub_237A405D4();
              v170 = OUTLINED_FUNCTION_30_6();
              sub_2379D9054(v170, v171, v172);
              OUTLINED_FUNCTION_4_18();
              OUTLINED_FUNCTION_71_0();
              sub_237A405D4();
              OUTLINED_FUNCTION_57_2();

              OUTLINED_FUNCTION_64_2();
              sub_237A2A1B0(v223 + v219);
              goto LABEL_20;
            }

            sub_237C05DFC();
            OUTLINED_FUNCTION_53_2();
            v186 = v195;
            sub_237C05DFC();
            sub_237B0CBBC();
            (v177)(v194, v176);
            OUTLINED_FUNCTION_51_3();
            v187 = OUTLINED_FUNCTION_43_3();
            (v177)(v187);
            (v177)(v186, v176);
            OUTLINED_FUNCTION_1_19();
            sub_237A405D4();
            v188 = OUTLINED_FUNCTION_30_6();
            sub_2379D9054(v188, v189, v190);
            OUTLINED_FUNCTION_13_7();
            OUTLINED_FUNCTION_35_2();
            sub_237A40680();
            swift_storeEnumTagMultiPayload();
            OUTLINED_FUNCTION_4_18();
            OUTLINED_FUNCTION_71_0();
            sub_2379DC1F8(v186, v223 + v124);
          }

          OUTLINED_FUNCTION_64_2();
          goto LABEL_21;
        }

        OUTLINED_FUNCTION_57_2();
        OUTLINED_FUNCTION_51_3();
        OUTLINED_FUNCTION_18_10();
        OUTLINED_FUNCTION_14_6();
        v148();
        v149 = &qword_27DE9ADC0;
        v150 = &unk_237C0BF40;
        v151 = v140;
      }

      sub_2379D9054(v151, v149, v150);
    }

    sub_237A405D4();
LABEL_20:
    sub_237A405D4();
    sub_237A405D4();
LABEL_21:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_237C05DBC();
  v11 = OUTLINED_FUNCTION_20(v10);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = (v13 - v12);
  LOBYTE(v13) = *(a1 + 8);
  v19 = *a1;
  LOBYTE(v20) = v13;
  sub_237A70ED4(&v19, v14);
  sub_237A3B70C(a5, &v19);
  MLLogisticRegressionClassifier.init(trainingData:targetColumn:featureColumns:parameters:)(v14, a2, a3, a4, &v19, v15, v16, v17, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return sub_237A2A1B0(a5);
}

void MLLogisticRegressionClassifier.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v46 = v0;
  v2 = v1;
  v4 = v3;
  v42 = type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_0();
  v40[1] = v6;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_58();
  v41 = v8;
  v9 = OUTLINED_FUNCTION_41_0();
  v10 = _s5ModelVMa(v9);
  v43 = *(v10 - 8);
  v11 = *(v43 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v44 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v48 = v13;
  v14 = OUTLINED_FUNCTION_41_0();
  v45 = _s10ClassifierVMa_1(v14);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v47 = v17 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v18);
  v20 = v40 - v19;
  v21 = type metadata accessor for MLLogisticRegressionClassifier(0);
  v22 = (v4 + *(v21 + 36));
  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v20);
  sub_2379E5C70(v20);
  v23 = OUTLINED_FUNCTION_55();
  v24(v23);
  *v22 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  swift_storeEnumTagMultiPayload();
  v40[0] = v21;
  v25 = *(v21 + 40);
  sub_2379E8AF0();
  v26 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *(v4 + v25) = v28;
  swift_storeEnumTagMultiPayload();
  switch(*(v2 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v29 = sub_237C0929C();

      if (v29)
      {
LABEL_4:
        sub_237A95650(MEMORY[0x277D84F90], 1, 0, 0xE000000000000000, MEMORY[0x277D84F90], v47);
        sub_237A3FE94();
        v30 = v46;
        sub_237C0743C();
        if (!v30)
        {
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          swift_allocObject();
          OUTLINED_FUNCTION_8_14();
          sub_237A40680();
          sub_2379DD56C();
          v34 = v33;

          v35 = v40[0];
          *(v4 + *(v40[0] + 20)) = v34;
          OUTLINED_FUNCTION_3_20();
          sub_237A40094();
          v37 = v41;
          v36 = v42;
          *v41 = 0;
          v37[1] = 0;
          *(v37 + 8) = 256;
          swift_storeEnumTagMultiPayload();
          v38 = v4 + v35[8];
          *(v38 + 40) = xmmword_237C0CFC0;
          *(v38 + 56) = xmmword_237C0CFD0;
          *(v38 + 24) = 0u;
          *v38 = 10;
          *(v38 + 72) = 1;
          *(v38 + 8) = 0u;
          sub_237A40094();
          v49[3] = v36;
          __swift_allocate_boxed_opaque_existential_0(v49);
          sub_237A40680();
          OUTLINED_FUNCTION_2_23();
          sub_237A405D4();
          sub_2379DAE54(v49, v38 + 8);
          v39 = (v4 + v35[6]);
          *v39 = 0;
          v39[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_7_14();
          sub_237A405D4();
          OUTLINED_FUNCTION_1_19();
          sub_237A405D4();
          OUTLINED_FUNCTION_4_18();
          sub_237A405D4();
          *(v4 + v35[7]) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_7_14();
        sub_237A405D4();
        OUTLINED_FUNCTION_4_18();
      }

      else
      {
        v31 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        *v32 = 0xD000000000000049;
        v32[1] = 0x8000000237C18CE0;
        OUTLINED_FUNCTION_23_3(v31, v32);
        swift_willThrow();
        OUTLINED_FUNCTION_7_14();
      }

      sub_237A405D4();
      OUTLINED_FUNCTION_23_9();
      sub_237A405D4();
      sub_237A405D4();
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237A3D858(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_237A3D900;

  return sub_237B917EC();
}

uint64_t sub_237A3D900()
{
  OUTLINED_FUNCTION_49();
  OUTLINED_FUNCTION_48_4();
  v4 = v3;
  OUTLINED_FUNCTION_95();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_3();
  *v7 = v6;

  if (v1)
  {
    OUTLINED_FUNCTION_41_2();

    return v8();
  }

  else
  {
    *(v4 + 32) = v0;
    v10 = OUTLINED_FUNCTION_28_3();

    return MEMORY[0x2822009F8](v10);
  }
}

void static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v69 = v20;
  v65 = v21;
  v66 = v22;
  v24 = v23;
  v63 = v25;
  v64 = v26;
  v28 = v27;
  v29 = type metadata accessor for MLTrainingSessionParameters(0);
  v30 = OUTLINED_FUNCTION_20(v29);
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_58();
  v33 = OUTLINED_FUNCTION_21_3(v32);
  type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v33);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_14_0();
  v67 = v37;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_138();
  v68 = v39;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v40);
  v42 = v60 - v41;
  v75 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v44 = v43;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_2_0();
  v48 = (v47 - v46);
  v49 = *(v28 + 8);
  *&v70 = *v28;
  BYTE8(v70) = v49;
  sub_2379DBCF4(v70, v49);
  sub_237A70ED4(&v70, v48);
  v62 = v24;
  sub_237A40628();
  if (v74)
  {
    v50 = *(v35 + 48);
    sub_2379DAD24(&v73, &v70);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    v51 = v69;
    sub_237B7C890(v42, &v42[v50], v48);
    if (v51)
    {
      (*(v44 + 8))(v48, v75);
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
    }

    else
    {
      v61 = v44;
      OUTLINED_FUNCTION_2_23();
      sub_237A405D4();
      sub_237A40628();
      v69 = *(v35 + 48);
      sub_237A40628();
      v60[1] = *(v35 + 48);
      sub_237A3B70C(v62, &v70);
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_61_2();
      sub_237A40094();
      v52 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v52);

      sub_237AF8658();
      v54 = v53;
      v55 = *(v61 + 8);
      v55(v67, v75);
      sub_2379D9054(v68 + v69, &qword_27DE9A9A0, &qword_237C0BF60);
      v71 = v52;
      v72 = &off_284AC4368;
      *&v70 = v54;
      OUTLINED_FUNCTION_0_21();
      OUTLINED_FUNCTION_35_2();
      sub_237A40094();
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
      OUTLINED_FUNCTION_91(v56);
      v57 = OUTLINED_FUNCTION_45_1();
      sub_2379E41A0(v57, v58, v59);
      sub_2379D9054(v42, &qword_27DE9ADC0, &unk_237C0BF40);
      v55(v48, v75);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLogisticRegressionClassifier.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B638, &qword_237C0DC10);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC01C();
}

void static MLLogisticRegressionClassifier.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v29 = v4;
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for MLTrainingSessionParameters(v5);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v9 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_46_2();
  sub_237A40628();
  if (v34)
  {
    sub_2379DAD24(&v33, &v30);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_2_23();
    sub_237A405D4();
    if (!v0)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_50_2();
      sub_237A3B70C(v3, &v30);
      OUTLINED_FUNCTION_0_21();
      sub_237A40094();
      v17 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v17);

      OUTLINED_FUNCTION_32_4();
      if (v29)
      {
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v20 = (*(v19 + 8))(v14);
        OUTLINED_FUNCTION_72_1(v20, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v21 = v18;
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v23 = (*(v22 + 8))(v14);
        OUTLINED_FUNCTION_72_1(v23, &qword_27DE9A9A0, &qword_237C0BF60);
        v31 = v17;
        v32 = &off_284AC4368;
        *&v30 = v21;
        OUTLINED_FUNCTION_0_21();
        sub_237A40094();
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
        OUTLINED_FUNCTION_91(v24);

        v25 = OUTLINED_FUNCTION_45_1();
        sub_2379E41A0(v25, v26, v27);
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);

        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B638, &qword_237C0DC10);
        OUTLINED_FUNCTION_91(v28);
        sub_237BEC01C();
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLogisticRegressionClassifier.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v3 = v2;
  v28 = v4;
  v5 = OUTLINED_FUNCTION_46();
  v6 = type metadata accessor for MLTrainingSessionParameters(v5);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v9 = OUTLINED_FUNCTION_41_0();
  type metadata accessor for MLLogisticRegressionClassifier.ModelParameters.ValidationData(v9);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_60_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_18_0();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_46_1();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_46_2();
  sub_237A40628();
  if (v33)
  {
    sub_2379DAD24(&v32, &v29);
    OUTLINED_FUNCTION_44_3();
    swift_dynamicCast();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_2_23();
    sub_237A405D4();
    if (!v0)
    {
      OUTLINED_FUNCTION_70_1();
      OUTLINED_FUNCTION_50_2();
      sub_237A3B70C(v3, &v29);
      OUTLINED_FUNCTION_0_21();
      sub_237A40094();
      v17 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v17);

      OUTLINED_FUNCTION_32_4();
      if (v28)
      {
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v20 = (*(v19 + 8))(v14);
        OUTLINED_FUNCTION_72_1(v20, &qword_27DE9A9A0, &qword_237C0BF60);
      }

      else
      {
        v21 = v18;
        sub_237C05DBC();
        OUTLINED_FUNCTION_4();
        v23 = (*(v22 + 8))(v14);
        OUTLINED_FUNCTION_72_1(v23, &qword_27DE9A9A0, &qword_237C0BF60);
        v30 = v17;
        v31 = &off_284AC4368;
        *&v29 = v21;
        OUTLINED_FUNCTION_0_21();
        sub_237A40094();
        v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
        OUTLINED_FUNCTION_91(v24);

        v25 = OUTLINED_FUNCTION_45_1();
        sub_2379E41A0(v25, v26, v27);
        sub_2379D9054(v1, &qword_27DE9ADC0, &unk_237C0BF40);
      }
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLLogisticRegressionClassifier.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  v3 = OUTLINED_FUNCTION_20(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_18_0();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-1] - v8;
  OUTLINED_FUNCTION_0_21();
  sub_237A40094();
  v10 = type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v10);
  v11 = sub_237AF8540(v9);
  if (!v1)
  {
    v14[3] = v10;
    v14[4] = &off_284AC4368;
    v14[0] = v11;
    OUTLINED_FUNCTION_0_21();
    sub_237A40094();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B640, &qword_237C0DC18);
    OUTLINED_FUNCTION_91(v12);
    sub_2379E41A0(v14, v6, 8);
  }
}

uint64_t sub_237A3E7CC(void *a1, char a2, uint64_t a3, void (*a4)(_BYTE *))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B658, &unk_237C0DCF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v18[-v14];
  if (a2)
  {
    *v10 = a1;
    swift_storeEnumTagMultiPayload();
    v16 = a1;
    a4(v10);
    v15 = v10;
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(0);
    swift_dynamicCast();

    sub_237A3EA08();
    swift_storeEnumTagMultiPayload();
    sub_237A403B4();
    sub_237A403B4();
    a4(v15);
  }

  return sub_2379D9054(v15, &qword_27DE9B658, &unk_237C0DCF0);
}

void sub_237A3EA08()
{
  OUTLINED_FUNCTION_74();
  v68 = v1;
  v60 = v2;
  v59 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_77_0(v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v10 = OUTLINED_FUNCTION_21_3(v9);
  v67 = _s5ModelVMa(v10);
  OUTLINED_FUNCTION_0();
  v64 = v11;
  MEMORY[0x28223BE20](v12);
  v65 = v13;
  OUTLINED_FUNCTION_77_0(&v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9C8, &qword_237C0B6A0);
  OUTLINED_FUNCTION_0();
  v62 = v14;
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  v17 = &v58[-v16];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v18);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v19);
  v71 = &v58[-v20];
  v21 = OUTLINED_FUNCTION_41_0();
  v66 = type metadata accessor for MLLogisticRegressionClassifier(v21);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  v25 = v23 - v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_77_0(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v28);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v29);
  v31 = &v58[-v30];
  v32 = _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_2_0();
  v36 = v35 - v34;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v31, 1, v32);
  if (v37)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_237A40680();
  sub_237A3B70C(v36 + v32[8], v70);
  v38 = v32[7];
  v39 = (v36 + v32[6]);
  v40 = v39[1];
  v61 = *v39;
  v41 = *(v36 + v38);
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237A40628();
  OUTLINED_FUNCTION_73_1(v71, 1, v67);
  if (v37)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_237A3B70C(v70, v69);
  v42 = v66;
  v43 = (v25 + *(v66 + 36));

  sub_237C06FAC();
  type metadata accessor for MLClassifierMetrics.Precomputed(0);
  sub_2379E51D0(v17);
  sub_2379E5C70(v17);
  OUTLINED_FUNCTION_36_3();
  v44(v17, v63);
  *v43 = 0;
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_55();
  swift_storeEnumTagMultiPayload();
  v45 = v42[10];
  sub_2379E8AF0();
  v46 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
  *v47 = 0xD0000000000000C0;
  v47[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v46, v47);
  *(v25 + v45) = v48;
  swift_storeEnumTagMultiPayload();
  v49 = v42[7];
  v67 = v41;
  *(v25 + v49) = v41;
  v50 = (v25 + v42[6]);
  *v50 = v61;
  v50[1] = v40;
  OUTLINED_FUNCTION_3_20();
  OUTLINED_FUNCTION_61_2();
  sub_237A40094();
  swift_allocObject();
  OUTLINED_FUNCTION_8_14();
  sub_237A40680();
  sub_2379DD56C();
  if (v0)
  {

    sub_237A2A1B0(v69);
    sub_237A2A1B0(v70);
    OUTLINED_FUNCTION_1_19();
    sub_237A405D4();

    OUTLINED_FUNCTION_23_9();
    sub_237A405D4();
    sub_237A405D4();
    OUTLINED_FUNCTION_26_6();
LABEL_9:
    OUTLINED_FUNCTION_73();
    return;
  }

  v52 = v51;

  *(v25 + v42[5]) = v52;
  OUTLINED_FUNCTION_8_14();
  sub_237A40680();
  memcpy((v25 + v42[8]), v69, 0x49uLL);
  v53 = v42;
  sub_237A40680();
  v54 = v60;
  sub_237A40680();
  v55 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  OUTLINED_FUNCTION_35_2();
  sub_237A40628();
  v56 = v59;
  OUTLINED_FUNCTION_73_1(v55, 1, v59);
  if (!v37)
  {
    sub_237A2A1B0(v70);
    OUTLINED_FUNCTION_26_6();
    sub_2379DC1F8(v55, v54 + v53[9]);
    v57 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    OUTLINED_FUNCTION_35_2();
    sub_237A40628();

    OUTLINED_FUNCTION_73_1(v57, 1, v56);
    if (v37)
    {
      sub_2379D9054(v57, &qword_27DE9B660, &qword_237C0DD00);
    }

    else
    {
      OUTLINED_FUNCTION_35_2();
      sub_237A40680();
      sub_2379DC1F8(v57, v54 + v53[10]);
    }

    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1)
{
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v8 = OUTLINED_FUNCTION_47_3();
  type metadata accessor for MLLogisticRegressionClassifier(v8);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v1)
  {
    sub_237A93A8C(a1, v2);
    sub_237C05DFC();
    (*(v6 + 8))(v2, v4);
  }
}

uint64_t MLLogisticRegressionClassifier.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v5 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_47_3();
  v9 = sub_237C0602C();
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = *(a1 + 8);
  v16 = *a1;
  v17 = v14;
  sub_2379DBCF4(v16, v14);
  sub_237A70ED4(&v16, v3);
  MLLogisticRegressionClassifier.predictions(from:)(v3);
  if (v2)
  {
    return (*(v7 + 8))(v3, v5);
  }

  (*(v7 + 8))(v3, v5);
  return sub_237A72900(v13, 1, v1);
}

uint64_t MLLogisticRegressionClassifier.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for AnyClassificationMetrics(v4);
  v6 = OUTLINED_FUNCTION_20(v5);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  v7 = OUTLINED_FUNCTION_47_3();
  v8 = type metadata accessor for MLLogisticRegressionClassifier(v7);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v10 = (v1 + *(v8 + 24));
  v11 = v10[1];
  *(inited + 32) = *v10;
  *(inited + 40) = v11;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  sub_237A938EC(a1, v2);
  OUTLINED_FUNCTION_13_7();
  sub_237A40680();
  type metadata accessor for MLClassifierMetrics.Contents(0);
  return swift_storeEnumTagMultiPayload();
}

{
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v6 = *(a1 + 8);
  v10 = *a1;
  v11 = v6;
  sub_2379DBCF4(v10, v6);
  sub_237A70ED4(&v10, v5);
  MLLogisticRegressionClassifier.evaluation(on:)(v5);
  v7 = OUTLINED_FUNCTION_55();
  return v8(v7);
}

void MLLogisticRegressionClassifier.write(to:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_74();
  v22 = v21;
  v23 = _s5ModelVMa(0);
  v24 = OUTLINED_FUNCTION_20(v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_2_0();
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v26 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v28 = v22;
  v31 = v30 - v29;
  memcpy(v51, v28, 0x48uLL);
  sub_2379F25FC();
  if (!v20)
  {
    OUTLINED_FUNCTION_3_20();
    sub_237A40094();
    v32 = *(&v51[0] + 1);
    if (*(&v51[0] + 1))
    {
      v33 = *&v51[0];
      v34 = *(&v51[1] + 1);
      v35 = *&v51[1];
      v36 = v51[2];
      v37 = *(&v51[3] + 1);
      v38 = *&v51[3];
      v39 = *&v51[4];
    }

    else
    {
      v40 = v31;
      v41 = NSFullUserName();
      v33 = sub_237C086EC();
      v32 = v42;

      v31 = v40;
      v39 = 0;
      v34 = 0x8000000237C17C90;
      v35 = 0xD000000000000033;
      v36 = 0uLL;
      v37 = 0xE100000000000000;
      v38 = 49;
    }

    v46[0] = v33;
    v46[1] = v32;
    v46[2] = v35;
    v46[3] = v34;
    v47 = v36;
    v48 = v38;
    v49 = v37;
    v50 = v39;
    sub_237A40628();
    sub_2379FB36C(v46);
    OUTLINED_FUNCTION_1_19();
    sub_237A405D4();
    sub_2379FC064(v46);
    sub_237C07E5C();
    v43 = OUTLINED_FUNCTION_55();
    v44(v43);
    OUTLINED_FUNCTION_36_3();
    v45(v31, v26);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLLogisticRegressionClassifier.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v30 = v4;
  v31 = v2;
  v6 = v5;
  v7 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  OUTLINED_FUNCTION_20(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_66_1();
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v22 = v21 - v20;
  memcpy(v32, v6, sizeof(v32));
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v16);
  (*(v9 + 104))(v13, *MEMORY[0x277CC91D8], v7);

  sub_237C05ABC();
  MLLogisticRegressionClassifier.write(to:metadata:)(v22, v32, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v32[6], v32[7], v32[8]);
  (*(v18 + 8))(v22, v16);
  OUTLINED_FUNCTION_73();
}

unint64_t MLLogisticRegressionClassifier.debugDescription.getter()
{
  type metadata accessor for MLClassifierMetrics.Contents(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_2_0();
  type metadata accessor for MLLogisticRegressionClassifier(0);
  v1 = MLLogisticRegressionClassifier.ModelParameters.description.getter();
  v3 = v2;
  v4 = MLClassifierMetrics.description.getter();
  v6 = v5;
  sub_237A40094();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_237A405D4();
  v8 = MLClassifierMetrics.description.getter();
  v10 = v9;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v1, v3);

  OUTLINED_FUNCTION_80();
  v14 = v11;
  MEMORY[0x2383DC360](v4, v6);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v14);

  if (EnumCaseMultiPayload <= 1)
  {
    OUTLINED_FUNCTION_80();
    v15 = v12;
    MEMORY[0x2383DC360](v8, v10);
    MEMORY[0x2383DC360](0xD000000000000020, v15);
  }

  return 0xD000000000000029;
}

id MLLogisticRegressionClassifier.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLLogisticRegressionClassifier.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237A3FDD8()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = _s5ModelVMa(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237A3B8B4(v5);
}

unint64_t sub_237A3FE94()
{
  result = qword_27DE9B630;
  if (!qword_27DE9B630)
  {
    _s10ClassifierVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9B630);
  }

  return result;
}

uint64_t sub_237A3FEEC()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = _s5ModelVMa(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_237A3D858(v5);
}

uint64_t sub_237A3FFA8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_3();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_237A40094()
{
  OUTLINED_FUNCTION_63_1();
  v1(0);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_37_0();
  v3(v2);
  return v0;
}

id sub_237A400EC@<X0>(void *a1@<X8>)
{
  result = MLLogisticRegressionClassifier.model.getter();
  *a1 = result;
  return result;
}