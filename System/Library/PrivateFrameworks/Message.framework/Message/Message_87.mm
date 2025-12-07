uint64_t CommandEncodeBuffer.init(buffer:options:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = BYTE4(a4);
  v9 = a3;
  v10 = a2;
  v13 = HIDWORD(a2);
  v14 = HIDWORD(a3);
  v15 = HIWORD(a3);
  v16 = a4 & 0x1010101;
  result = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *a7 = a6;
  *(a7 + 5) = v8 & 1;
  *(a7 + 1) = v16;
  *(a7 + 8) = a1;
  *(a7 + 16) = v10;
  *(a7 + 20) = v13;
  *(a7 + 24) = v9;
  *(a7 + 28) = v14;
  *(a7 + 30) = v15;
  *(a7 + 32) = result;
  *(a7 + 40) = v18;
  *(a7 + 48) = v19;
  *(a7 + 56) = a5;
  return result;
}

uint64_t CommandEncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 1) | (*(v2 + 5) << 32);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  sub_1B0E46C68();
  EncodeBuffer.Mode.hash(into:)(a1, v4);
  swift_beginAccess();
  sub_1B0E46C38();
  sub_1B0D738D4(a1, v5, v6, v7);
  return sub_1B0E46C68();
}

uint64_t CommandEncodeBuffer.hashValue.getter()
{
  sub_1B0E46C28();
  CommandEncodeBuffer.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D73C80()
{
  sub_1B0E46C28();
  CommandEncodeBuffer.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D73CC4(uint64_t a1)
{
  sub_1B0E46C28();
  CommandEncodeBuffer.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D73D00(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

unint64_t CommandEncodeBuffer.options.getter()
{
  v1 = v0[5];
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = (v1 & 1) == 0;
    v3 = 0x100000000;
    if (v2)
    {
      v3 = 0;
    }

    v4 = 0x1000000;
    if ((v0[4] & 1) == 0)
    {
      v4 = 0;
    }

    v5 = 0x10000;
    if ((v0[3] & 1) == 0)
    {
      v5 = 0;
    }

    v6 = 256;
    if ((v0[2] & 1) == 0)
    {
      v6 = 0;
    }

    return v6 & 0xFFFFFFFFFFFFFFFELL | v0[1] & 1 | v5 | v4 | v3;
  }

  return result;
}

uint64_t CommandEncodeBuffer.options.setter(uint64_t result)
{
  *(v1 + 5) = BYTE4(result) & 1;
  *(v1 + 1) = result & 0x1010101;
  return result;
}

uint64_t *(*CommandEncodeBuffer.options.modify(uint64_t *(*result)(uint64_t *result)))(uint64_t *result)
{
  *result = v1;
  v2 = *(v1 + 1) | (*(v1 + 5) << 32);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 8) = *(v1 + 1) & 1;
    v3.i64[0] = 0xFFFFFFFFFFLL;
    v3.i64[1] = 0xFFFFFFFFFFLL;
    v4 = vandq_s8(vdupq_n_s64(v2), v3);
    *v4.i8 = vand_s8(vmovn_s32(vuzp1q_s32(vshlq_u64(v4, xmmword_1B0EC6200), vshlq_u64(v4, xmmword_1B0EC61F0))), 0x1000100010001);
    *(result + 9) = vuzp1_s8(*v4.i8, *v4.i8).u32[0];
    return sub_1B0D73E54;
  }

  return result;
}

uint64_t *sub_1B0D73E54(uint64_t *result)
{
  v1 = *result;
  v2 = 256;
  if (!*(result + 9))
  {
    v2 = 0;
  }

  v3 = v2 | *(result + 8);
  v4 = 0x10000;
  if (!*(result + 10))
  {
    v4 = 0;
  }

  v5 = 0x1000000;
  if (!*(result + 11))
  {
    v5 = 0;
  }

  *(v1 + 5) = *(result + 12) != 0;
  *(v1 + 1) = v3 | v4 | v5;
  return result;
}

uint64_t CommandEncodeBuffer.init(buffer:capabilities:encodedAtLeastOneCatenateElement:loggingMode:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v8 = a3;
  v9 = a2;
  v12 = HIDWORD(a2);
  v13 = HIDWORD(a3);
  v14 = HIWORD(a3);
  v15 = sub_1B0D74D8C(a4);
  v16 = BYTE4(v15);
  v17 = v15 & 0x1010101;
  result = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *a7 = a6;
  *(a7 + 5) = v16 & 1;
  *(a7 + 1) = v17;
  *(a7 + 8) = a1;
  *(a7 + 16) = v9;
  *(a7 + 20) = v12;
  *(a7 + 24) = v8;
  *(a7 + 28) = v13;
  *(a7 + 30) = v14;
  *(a7 + 32) = result;
  *(a7 + 40) = v19;
  *(a7 + 48) = v20;
  *(a7 + 56) = a5;
  return result;
}

uint64_t _s12NIOIMAPCore219CommandEncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[5];
  v7 = *(a1 + 1);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *(a1 + 6);
  v11 = a2[1];
  v12 = a2[2];
  v13 = *(a2 + 3) | (a2[5] << 16);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);
  v17 = 0;
  if (v6 < 0)
  {
    if (v13 & 0x80000000) == 0 || ((v4 ^ v11) & 1) != 0 || ((v5 ^ v12))
    {
      return v17 & 1;
    }

LABEL_14:
    v18 = a1;
    if (sub_1B0C2DB54(v7, *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)) && (sub_1B0D7D23C(v8, v9, v10, v14, v15, v16) & 1) != 0)
    {
      v17 = v18[56] ^ a2[56] ^ 1;
    }

    else
    {
      v17 = 0;
    }

    return v17 & 1;
  }

  if ((v13 & 0x80000000) == 0 && ((v4 ^ v11) & 1) == 0 && ((v5 ^ v12) & 1) == 0 && ((a1[3] ^ v13) & 1) == 0 && ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) == 0 && ((v6 ^ ((v13 & 0x10000u) >> 16)) & 1) == 0)
  {
    goto LABEL_14;
  }

  return v17 & 1;
}

uint64_t sub_1B0D740DC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E1CE8, &qword_1B0E9B0E8);
  result = sub_1B0E45278();
  *(result + 16) = 16;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 72) = 1;
  *(result + 80) = 0;
  *(result + 88) = 1;
  *(result + 96) = 0;
  *(result + 104) = 1;
  *(result + 112) = 0;
  *(result + 120) = 1;
  *(result + 128) = 0;
  *(result + 136) = 1;
  *(result + 144) = 0;
  *(result + 152) = 1;
  *(result + 160) = 0;
  *(result + 168) = 1;
  *(result + 176) = 0;
  *(result + 184) = 1;
  *(result + 192) = 0;
  *(result + 200) = 1;
  *(result + 208) = 0;
  *(result + 216) = 1;
  *(result + 224) = 0;
  *(result + 232) = 1;
  *(result + 240) = 0;
  *(result + 248) = 1;
  *(result + 256) = 0;
  *(result + 264) = 1;
  *(result + 272) = 0;
  *(result + 280) = 1;
  v11 = 0;
  v10 = result;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 32);
    while (1)
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v10;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B0DFE704(v10);
        v7 = result;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        break;
      }

      v8 = *(v7 + 16);
      if (v11 >= v8)
      {
        goto LABEL_13;
      }

      v9 = v7 + 16 * v11;
      *(v9 + 32) = v5;
      *(v9 + 40) = 0;
      v10 = v7;
      v11 = (v8 + 0x7FFFFFFFFFFFFFFFLL) & (v11 + 1);
      if (!v11)
      {
        sub_1B0D7347C();
      }

      if (!--v3)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t (*sub_1B0D7426C(char a1, uint64_t (*a2)(__int128 *)))(__int128 *)
{
  v4 = &v67;
  if (qword_1EB6DE5C0 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v5 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
    v6 = dword_1EB737EB8;
    v7 = word_1EB737EBC;
    v8 = byte_1EB737EBE;

    v9 = qword_1EB737EB0;
    v10 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
    LOBYTE(v67) = a1 & 1;
    BYTE5(v67) = 0;
    *(v4 + 1) = 257;
    *(&v67 + 1) = v5;
    *&v68 = v9;
    DWORD2(v68) = v6;
    WORD6(v68) = v7;
    BYTE14(v68) = v8;
    *&v69 = v10;
    *(&v69 + 1) = v11;
    v70 = v12;
    v71 = 0;
    a2(&v67);
    result = EncodeBuffer.nextChunk()();
    v16 = HIDWORD(v14) - v14;
    if (HIDWORD(v14) < v14)
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      return result;
    }

    v17 = v15;
    if (v15 - (BYTE6(v15) | (WORD2(v15) << 8)) < HIDWORD(v14))
    {
      goto LABEL_76;
    }

    a2 = result;
    v72[0] = result;
    v72[1] = v14;
    v73 = v15;
    v74 = WORD2(v15);
    v75 = BYTE6(v15);
    v76 = v14;
    v77 = HIDWORD(v14);
    *&v63 = 0;
    *(&v63 + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](v16);
    a1 = 0;
    sub_1B0D547AC(v72, &v63);
    result = sub_1B04394F4(v72);
    v66 = v63;
    if ((v17 & 0x100000000000000) == 0)
    {
      break;
    }

    v60 = *(v4 + 1) | (SBYTE5(v67) << 32);
    for (i = v68; (v60 & 0x8000000000000000) != 0; a2 = v31)
    {
      v4 = (DWORD1(v68) - i);
      if (DWORD1(v68) < i || (DWORD1(v68) - (DWORD1(v68) - i)) < i)
      {
        goto LABEL_68;
      }

      v41 = BYTE14(v68) | (WORD6(v68) << 8);
      v29 = __CFADD__(v41, i);
      v42 = v41 + i;
      if (v29)
      {
        goto LABEL_69;
      }

      v31 = *(&v67 + 1);
      if (HIBYTE(v42))
      {
        v58 = v58 & 0xFF00000000000000 | DWORD2(v68) | (WORD6(v68) << 32) | (BYTE14(v68) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v68) - i, *(&v67 + 1));
        v39 = v43;
        v33 = HIDWORD(v32);
        v35 = v44;
        v37 = v45;
      }

      else
      {
        v35 = (v42 >> 8);
        v39 = v42 + v4;
        v37 = v42;

        LODWORD(v32) = 0;
        LODWORD(v33) = v4;
      }

      v29 = __CFADD__(i, v4);
      i = (i + v4);
      if (v29)
      {
        goto LABEL_70;
      }

LABEL_48:
      v51 = 0;
LABEL_49:
      if (v33 < v32)
      {
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      if (v39 - (v37 | (v35 << 8)) < v33)
      {
        goto LABEL_57;
      }

      v52 = v32;
      *(&v63 + 1) = __PAIR64__(v33, v32);
      LODWORD(v64) = v39;
      WORD2(v64) = v35;
      BYTE6(v64) = v37;
      *(&v64 + 1) = v32;
      *&v65[0] = v33;
      v53 = v33 - v32;
      v61 = 0;
      v62 = 0xE000000000000000;
      *&v63 = v31;

      MEMORY[0x1B2726D20](v53);
      v54 = v63;
      v55 = WORD2(v64);
      v56 = BYTE6(v64);
      swift_beginAccess();
      sub_1B03C829C(*(v54 + 24) + (v56 | (v55 << 8)) + v52, v53, &v61);
      sub_1B04394F4(&v63);
      v4 = v62;
      MEMORY[0x1B2726E80](v61, v62);

      if (!v51)
      {

        LODWORD(v68) = i;
        v4 = &v67;
        goto LABEL_55;
      }
    }

    v20 = *(&v69 + 1);
    v19 = v69;
    v21 = v70 - *(&v69 + 1);
    if (v70 < *(&v69 + 1))
    {
      v21 += *(v69 + 16);
    }

    if (v21 >= 1)
    {
      if (v70 == *(&v69 + 1))
      {
LABEL_58:
        __break(1u);
      }

      else if ((*(&v69 + 1) & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(*(&v69 + 1)))
        {
          v22 = *(v69 + 16);
          if (*(&v69 + 1) < v22)
          {
            v23 = v69 + 16 * *(&v69 + 1);
            if (*(v23 + 40))
            {
              goto LABEL_77;
            }

            if (v70 >= *(&v69 + 1))
            {
              v22 = 0;
            }

            if ((v70 - *(&v69 + 1) + v22) >= 1)
            {
              v24 = *(v23 + 32);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_1B0DFE704(v19);
              }

              v25 = *(v19 + 2);
              if (v20 < v25)
              {
                v26 = &v19[16 * v20];
                *(v26 + 4) = 0;
                v26[40] = 1;
                *&v69 = v19;
                *(&v69 + 1) = (v25 + 0x1FFFFFFFFLL) & (v20 + 1);
                v4 = v24 - i;
                if (!__OFSUB__(v24, i))
                {
                  v27 = DWORD1(v68);
                  if (DWORD1(v68) >= v4 && (DWORD1(v68) - v4) >= i)
                  {
                    v28 = BYTE14(v68) | (WORD6(v68) << 8);
                    v29 = __CFADD__(v28, i);
                    v30 = v28 + i;
                    if (!v29)
                    {
                      v31 = *(&v67 + 1);
                      if (HIBYTE(v30))
                      {
                        v59 = v59 & 0xFF00000000000000 | DWORD2(v68) | (WORD6(v68) << 32) | (BYTE14(v68) << 48);
                        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, v24 - i, *(&v67 + 1));
                        v33 = HIDWORD(v32);
                        v35 = v34;
                        v37 = v36;
                        v39 = v38;
                      }

                      else
                      {
                        v35 = (v30 >> 8);
                        v39 = v30 + v4;
                        v37 = v30;

                        LODWORD(v32) = 0;
                        LODWORD(v33) = v24 - i;
                      }

                      v29 = __CFADD__(i, v4);
                      i = v24;
                      if (!v29)
                      {
                        v51 = v24 != v27;
                        goto LABEL_49;
                      }

LABEL_67:
                      __break(1u);
LABEL_68:
                      __break(1u);
LABEL_69:
                      __break(1u);
LABEL_70:
                      __break(1u);
LABEL_71:
                      __break(1u);
                      goto LABEL_72;
                    }

LABEL_66:
                    __break(1u);
                    goto LABEL_67;
                  }

LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

LABEL_63:
              __break(1u);
              goto LABEL_64;
            }

LABEL_62:
            __break(1u);
            goto LABEL_63;
          }

LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      __break(1u);
      goto LABEL_60;
    }

    v4 = (DWORD1(v68) - i);
    if (DWORD1(v68) < i || (DWORD1(v68) - (DWORD1(v68) - i)) < i)
    {
      goto LABEL_71;
    }

    v46 = BYTE14(v68) | (WORD6(v68) << 8);
    v29 = __CFADD__(v46, i);
    v47 = v46 + i;
    if (!v29)
    {
      v31 = *(&v67 + 1);
      if (HIBYTE(v47))
      {
        v57 = v57 & 0xFF00000000000000 | DWORD2(v68) | (WORD6(v68) << 32) | (BYTE14(v68) << 48);
        v31 = ByteBuffer._copyIntoByteBufferWithSliceIndex0_slowPath(index:length:)(i, DWORD1(v68) - i, *(&v67 + 1));
        v33 = HIDWORD(v32);
        v35 = v48;
        v37 = v49;
        v39 = v50;
      }

      else
      {
        v35 = (v47 >> 8);
        v39 = v47 + v4;
        v37 = v47;

        LODWORD(v32) = 0;
        LODWORD(v33) = v4;
      }

      v29 = __CFADD__(i, v4);
      i = (i + v4);
      if (v29)
      {
        goto LABEL_73;
      }

      goto LABEL_48;
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

LABEL_55:
  v63 = v67;
  v64 = v68;
  v65[0] = v69;
  *(v65 + 9) = *(v4 + 41);
  sub_1B0CFBECC(&v63);
  return v66;
}

unint64_t sub_1B0D74844()
{
  result = qword_1EB6E7300;
  if (!qword_1EB6E7300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7300);
  }

  return result;
}

uint64_t sub_1B0D74898(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_1B0EF1380), xmmword_1B0EF1390);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1B0D74920(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 57) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_1B0EF13A0), xmmword_1B0EF13B0);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NIOIMAPCore2::CommandEncodingOptions __swiftcall CommandEncodingOptions.init(useQuotedString:useSynchronizingLiteral:useNonSynchronizingLiteralPlus:useNonSynchronizingLiteralMinus:useBinaryLiteral:)(Swift::Bool useQuotedString, Swift::Bool useSynchronizingLiteral, Swift::Bool useNonSynchronizingLiteralPlus, Swift::Bool useNonSynchronizingLiteralMinus, Swift::Bool useBinaryLiteral)
{
  v5 = 0x100000000;
  if (!useBinaryLiteral)
  {
    v5 = 0;
  }

  v6 = 0x1000000;
  if (!useNonSynchronizingLiteralMinus)
  {
    v6 = 0;
  }

  v7 = 0x10000;
  if (!useNonSynchronizingLiteralPlus)
  {
    v7 = 0;
  }

  v8 = 256;
  if (!useSynchronizingLiteral)
  {
    v8 = 0;
  }

  return (v8 & 0xFFFFFFFFFFFFFFFELL | useQuotedString | v7 | v6 | v5);
}

uint64_t CommandEncodingOptions.hash(into:)(uint64_t a1, unint64_t a2)
{
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  return sub_1B0E46C68();
}

uint64_t CommandEncodingOptions.hashValue.getter(unint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D74C18()
{
  v1 = 0x100000000;
  if (!v0[4])
  {
    v1 = 0;
  }

  v2 = 0x1000000;
  if (!v0[3])
  {
    v2 = 0;
  }

  v3 = 0x10000;
  if (!v0[2])
  {
    v3 = 0;
  }

  v4 = 256;
  if (!v0[1])
  {
    v4 = 0;
  }

  return CommandEncodingOptions.hashValue.getter(v4 | *v0 | v3 | v2 | v1);
}

uint64_t sub_1B0D74C70(uint64_t a1)
{
  v2 = 0x100000000;
  if (!v1[4])
  {
    v2 = 0;
  }

  v3 = 0x1000000;
  if (!v1[3])
  {
    v3 = 0;
  }

  v4 = 0x10000;
  if (!v1[2])
  {
    v4 = 0;
  }

  v5 = 256;
  if (!v1[1])
  {
    v5 = 0;
  }

  return CommandEncodingOptions.hash(into:)(a1, v5 | *v1 | v4 | v3 | v2);
}

uint64_t sub_1B0D74CC8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  sub_1B0E46C28();
  v7 = 0x100000000;
  if (!v6)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if (!v5)
  {
    v8 = 0;
  }

  v9 = 0x10000;
  if (!v4)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!v3)
  {
    v10 = 0;
  }

  CommandEncodingOptions.hash(into:)(v12, v10 | v2 | v9 | v8 | v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D74D8C(uint64_t a1)
{
  v1 = a1;
  if (qword_1EB6DEA60 != -1)
  {
    a1 = swift_once();
  }

  v11 = static Capability.literalPlus;
  v12 = qword_1EB738130;
  v13 = byte_1EB738138;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v11;
  v2 = sub_1B0C32414(sub_1B0BD6614, v9, v1);
  v3 = v2;
  if (v2)
  {
    v4 = 0;
  }

  else
  {
    if (qword_1EB6DEA58 != -1)
    {
      v2 = swift_once();
    }

    v11 = static Capability.literalMinus;
    v12 = qword_1EB738110;
    v13 = byte_1EB738118;
    MEMORY[0x1EEE9AC00](v2);
    v10 = &v11;
    v2 = sub_1B0C32414(sub_1B0C10BD0, v9, v1);
    if (v2)
    {
      v4 = 0x1000000;
    }

    else
    {
      v4 = 0;
    }
  }

  if (qword_1EB6DEA10 != -1)
  {
    v2 = swift_once();
  }

  v11 = static Capability.binary;
  v12 = qword_1EB737FF0;
  v13 = byte_1EB737FF8;
  MEMORY[0x1EEE9AC00](v2);
  v10 = &v11;
  v5 = sub_1B0C32414(sub_1B0C10BD0, v9, v1);

  v6 = 0x100000000;
  if ((v5 & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 257;
  if (v3)
  {
    v7 = 65793;
  }

  return v7 | v4 | v6;
}

unint64_t sub_1B0D74FF0()
{
  result = qword_1EB6E7308;
  if (!qword_1EB6E7308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7308);
  }

  return result;
}

uint64_t AppendCommand.tag.getter()
{
  v1 = *(v0 + 56) >> 5;
  if ((v1 - 1) < 5 || v1)
  {
    return 0;
  }

  v3 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v3;
}

BOOL static AppendCommand.CatenateData.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v6 = HIBYTE(a6);
  if (!HIBYTE(a3))
  {
    if (!v6)
    {
      return a1 == a4;
    }

    return 0;
  }

  if (HIBYTE(a3) == 1)
  {
    if (v6 == 1)
    {
      return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
    }

    return 0;
  }

  return v6 == 2 && !(a6 & 0xFFFFFFFFFFFFFFLL | a4 | a5);
}

uint64_t AppendCommand.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 17) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 32);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = v8 >> 5;
  if (v8 >> 5 <= 2)
  {
    if (v9)
    {
      if (v9 == 1)
      {
        MEMORY[0x1B2728D70](1);
        AppendOptions.hash(into:)(a1);
        MEMORY[0x1B2728D70](v6);
        return sub_1B0E46C68();
      }

      v14 = 2;
      goto LABEL_15;
    }

    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    v13 = v4 | (v4 << 32);
  }

  else
  {
    if (v8 >> 5 <= 4)
    {
      if (v9 == 3)
      {
        MEMORY[0x1B2728D70](4);
        return AppendOptions.hash(into:)(a1);
      }

      v14 = 5;
LABEL_15:
      MEMORY[0x1B2728D70](v14);
      swift_beginAccess();
      return sub_1B0E46C38();
    }

    if (v9 == 5)
    {
      MEMORY[0x1B2728D70](6);
      if (BYTE6(v3))
      {
        if (BYTE6(v3) == 1)
        {
          MEMORY[0x1B2728D70](1);
          swift_beginAccess();
          return sub_1B0E46C38();
        }

        v13 = 2;
      }

      else
      {
        MEMORY[0x1B2728D70](0);
        v13 = v2;
      }
    }

    else
    {
      v15 = *(v1 + 16) | (v3 << 8);
      v16 = v4 | *(v1 + 8);
      if (v8 != 192 || v16 | v2 | v5 | v7 | v6 | v15)
      {
        if (v8 == 192 && v2 == 1 && !(v16 | v15 | v5 | v7 | v6))
        {
          v13 = 7;
        }

        else
        {
          v13 = 8;
        }
      }

      else
      {
        v13 = 3;
      }
    }
  }

  return MEMORY[0x1B2728D70](v13);
}

uint64_t AppendCommand.hashValue.getter()
{
  sub_1B0E46C28();
  AppendCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D75400()
{
  sub_1B0E46C28();
  AppendCommand.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D75444(uint64_t a1)
{
  sub_1B0E46C28();
  AppendCommand.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D75480(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v5, v7);
}

uint64_t AppendCommand.CatenateData.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (HIBYTE(a4))
  {
    if (HIBYTE(a4) == 1)
    {
      MEMORY[0x1B2728D70](1);
      swift_beginAccess();
      return sub_1B0E46C38();
    }

    v6 = 2;
  }

  else
  {
    MEMORY[0x1B2728D70](0, a2, a3);
    v6 = a2;
  }

  return MEMORY[0x1B2728D70](v6);
}

uint64_t AppendCommand.CatenateData.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = HIBYTE(a3);
  sub_1B0E46C28();
  if (!v4)
  {
    MEMORY[0x1B2728D70](0);
    v5 = a1;
LABEL_6:
    MEMORY[0x1B2728D70](v5);
    return sub_1B0E46CB8();
  }

  if (v4 != 1)
  {
    v5 = 2;
    goto LABEL_6;
  }

  MEMORY[0x1B2728D70](1);
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D75660(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1B0E46C28();
  AppendCommand.CatenateData.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D756B8(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *(a2 + 23);
  if (*(a1 + 23))
  {
    v6 = *(a2 + 8);
    v7 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);
    if (*(a1 + 23) == 1)
    {
      return v5 == 1 && sub_1B0C2DB54(v3, *(a1 + 8), *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32), v4, v6, v7 & 0xFFFFFFFFFFFFFFLL);
    }

    else
    {
      return v5 == 2 && (v6 | v4) == 0 && (v7 & 0xFFFFFFFFFFFFFFLL) == 0;
    }
  }

  else
  {
    return !*(a2 + 23) && v3 == v4;
  }
}

uint64_t CommandStreamPart.tag.getter(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for CommandStreamPart(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D775E8(v2, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v10 != 2)
    {
      return result;
    }

    sub_1B0D7767C(v8, type metadata accessor for CommandStreamPart);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0D77F34(v8, v5, type metadata accessor for TaggedCommand);
      v11 = *v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0D7767C(v5, type metadata accessor for TaggedCommand);
      return v11;
    }

    *&v17[9] = *(v8 + 41);
    v13 = v8[1];
    v16[0] = *v8;
    v16[1] = v13;
    *v17 = v8[2];
    v14 = v17[24] >> 5;
    if (v14 <= 2)
    {
      if (!v14)
      {
        v15 = *&v16[0];
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        sub_1B0D7764C(v16);
        return v15;
      }
    }

    else if (v17[24] >> 5 > 4u && v14 != 5)
    {
      return 0;
    }

    sub_1B0D7764C(v16);
  }

  return 0;
}

uint64_t CommandStreamPart.hash(into:)(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CommandStreamPart(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D775E8(v3, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      MEMORY[0x1B2728D70](3);
      swift_beginAccess();
      sub_1B0E46C38();
    }

    else
    {
      return MEMORY[0x1B2728D70](0);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v13 = v10[1];
    v14[0] = *v10;
    v14[1] = v13;
    v15[0] = v10[2];
    *(v15 + 9) = *(v10 + 41);
    MEMORY[0x1B2728D70](2);
    AppendCommand.hash(into:)(a1);
    return sub_1B0D7764C(v14);
  }

  else
  {
    sub_1B0D77F34(v10, v7, type metadata accessor for TaggedCommand);
    MEMORY[0x1B2728D70](1);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    Command.hash(into:)(a1);
    return sub_1B0D7767C(v7, type metadata accessor for TaggedCommand);
  }
}

uint64_t CommandStreamPart.hashValue.getter()
{
  sub_1B0E46C28();
  CommandStreamPart.hash(into:)(v2, v0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D75B70()
{
  sub_1B0E46C28();
  CommandStreamPart.hash(into:)(v2, v0);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D75BB4(uint64_t a1)
{
  sub_1B0E46C28();
  CommandStreamPart.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

void CommandEncodeBuffer.writeCommandStream(_:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for CommandStreamPart(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0D775E8(a1, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v11 >= v12)
      {
        v13 = *(v9 + 4);
        v14 = *(v9 + 10);
        v15 = v9[22];
        if (v13 - (v15 | (v14 << 8)) >= v11)
        {
          v16 = *v9;
          *&v42 = v16;
          *(&v42 + 1) = __PAIR64__(v11, v12);
          LODWORD(v43) = v13;
          WORD2(v43) = v14;
          BYTE6(v43) = v15;
          *(&v43 + 1) = v12;
          *&v44[0] = v11;
          v17 = v11 - v12;
          swift_beginAccess();
          if (v17 >= -4)
          {
            v18 = 4 * ((v17 + 2) / 3);
            v19 = *(v16 + 24);
            v20 = (v15 | (v14 << 8)) + v12;

            if (v17 < 1)
            {
              v21 = MEMORY[0x1E69E7CC0];
            }

            else
            {
              v21 = sub_1B0E45278();
              *(v21 + 16) = v18;
            }

            v41 = 0;
            sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v19 + v20, v17, v21 + 32, 4 * ((v17 + 2) / 3), 0, &v41);
            if (v18 >= v41)
            {
              *(v21 + 16) = v41;
              sub_1B04394F4(&v42);
              sub_1B0D791F8(v21);
              v30 = v2;
              v32 = v31;

              v33 = *(v2 + 20);
              v34 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v2 + 8, v33);
              if (v35)
              {
                v36._countAndFlagsBits = 2573;
                v36._object = 0xE200000000000000;
                v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v33);
                v30 = v2;
              }

              v37 = v34;

              v38 = *(v30 + 20);
              v28 = __CFADD__(v38, v37);
              v39 = v38 + v37;
              if (!v28)
              {
                *(v30 + 20) = v39;
                if (!__OFADD__(v32, v37))
                {
                  return;
                }

LABEL_28:
                __break(1u);
                return;
              }

LABEL_27:
              __break(1u);
              goto LABEL_28;
            }

LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
    }

    else
    {
      v23 = *(v2 + 20);
      v24 = sub_1B0CFC1B0(0xA0D454E4F44uLL, 0xE600000000000000, v2 + 8, v23);
      if (v25)
      {
        v26._countAndFlagsBits = 0xA0D454E4F44;
        v26._object = 0xE600000000000000;
        v24 = ByteBuffer._setStringSlowpath(_:at:)(v26, v23);
      }

      v27 = *(v2 + 20);
      v28 = __CFADD__(v27, v24);
      v29 = v27 + v24;
      if (!v28)
      {
        *(v2 + 20) = v29;
        return;
      }
    }

    __break(1u);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload)
  {
    v22 = *(v9 + 1);
    v42 = *v9;
    v43 = v22;
    v44[0] = *(v9 + 2);
    *(v44 + 9) = *(v9 + 41);
    sub_1B0D769BC(&v42);
    sub_1B0D7764C(&v42);
  }

  else
  {
    sub_1B0D77F34(v9, v6, type metadata accessor for TaggedCommand);
    CommandEncodeBuffer.writeCommand(_:)(v6);
    sub_1B0D7767C(v6, type metadata accessor for TaggedCommand);
  }
}

void sub_1B0D75FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v105 = a2;
  v96 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart(0);
  v98 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v101 = &v93 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7328, &qword_1B0EF1898);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v93 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v94 = *(AssociatedTypeWitness - 8);
  v21 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v23 = &v93 - v22;
  (*(v16 + 16))(v19, v105, a3, v21);
  v24 = v10;
  v25 = v101;
  sub_1B0E44F08();
  v26 = v97;
  v27 = v98;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v104 = v23;
  v105 = AssociatedTypeWitness;
  v103 = AssociatedConformanceWitness;
  sub_1B0E45E38();
  v30 = *(v27 + 48);
  v29 = v27 + 48;
  v102 = v30;
  if (v30(v15, 1, v8) == 1)
  {
LABEL_2:
    (*(v94 + 8))(v104, v105);
    return;
  }

  v99 = v10;
  v100 = v15;
  v95 = v8;
  v98 = v29;
  while (1)
  {
    sub_1B0D77F34(v15, v25, type metadata accessor for CommandStreamPart);
    sub_1B0D775E8(v25, v24);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      break;
    }

    if (!EnumCaseMultiPayload)
    {
      sub_1B0D77F34(v24, v26, type metadata accessor for TaggedCommand);
      v34 = v26[1];
      v109 = *v26;
      v110 = v34;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      MEMORY[0x1B2726E80](32, 0xE100000000000000);
      v36 = v109;
      v35 = v110;
      v37 = *(a1 + 20);
      v38 = sub_1B0CFC1B0(v109, v110, a1 + 8, v37);
      if (v39)
      {
        v40._countAndFlagsBits = v36;
        v40._object = v35;
        v38 = ByteBuffer._setStringSlowpath(_:at:)(v40, v37);
      }

      v41 = v38;

      v42 = *(a1 + 20);
      v43 = __CFADD__(v42, v41);
      v44 = v42 + v41;
      v15 = v100;
      if (v43)
      {
        goto LABEL_48;
      }

      *(a1 + 20) = v44;
      sub_1B0D68278(v26 + *(v96 + 20));
      v45 = *(a1 + 20);
      v46 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, v45);
      if (v47)
      {
        v48._countAndFlagsBits = 2573;
        v48._object = 0xE200000000000000;
        v46 = ByteBuffer._setStringSlowpath(_:at:)(v48, v45);
      }

      v49 = v46;
      sub_1B0D7767C(v26, type metadata accessor for TaggedCommand);
      v25 = v101;
      sub_1B0D7767C(v101, type metadata accessor for CommandStreamPart);
      v50 = *(a1 + 20);
      v43 = __CFADD__(v50, v49);
      v51 = v50 + v49;
      if (v43)
      {
        goto LABEL_52;
      }

      goto LABEL_46;
    }

    v31 = *(v24 + 16);
    v116[0] = *v24;
    v32 = *(v24 + 32);
    v116[1] = v31;
    *v117 = v32;
    *&v117[9] = *(v24 + 41);
    sub_1B0D769BC(v116);
    sub_1B0D7764C(v116);
    sub_1B0D7767C(v25, type metadata accessor for CommandStreamPart);
LABEL_5:
    sub_1B0E45E38();
    if (v102(v15, 1, v8) == 1)
    {
      goto LABEL_2;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v53 = *(v24 + 8);
    v52 = *(v24 + 12);
    if (v52 < v53)
    {
      goto LABEL_49;
    }

    v54 = *(v24 + 16);
    v55 = *(v24 + 20);
    v56 = *(v24 + 22);
    if (v54 - (v56 | (v55 << 8)) < v52)
    {
      goto LABEL_50;
    }

    v57 = *v24;
    v109 = *v24;
    v110 = __PAIR64__(v52, v53);
    v111 = v54;
    v112 = v55;
    v113 = v56;
    v114 = v53;
    v115 = v52;
    v58 = v52 - v53;
    swift_beginAccess();
    if (v58 < -4)
    {
      goto LABEL_53;
    }

    v59 = 4 * ((v58 + 2) / 3);
    v60 = *(v57 + 24);

    if (v58 < 1)
    {
      v61 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v61 = sub_1B0E45278();
      *(v61 + 16) = v59;
    }

    v107 = 0;
    sub_1B0D5D95C(&unk_1F272F790, 256, &unk_1F272F8B0, 256, v60 + (v56 | (v55 << 8)) + v53, v58, v61 + 32, v59, 0, &v107);
    if (v59 < v107)
    {
      goto LABEL_54;
    }

    *(v61 + 16) = v107;
    sub_1B04394F4(&v109);
    if (*a1 == 1)
    {
      v107 = 91;
      v108 = 0xE100000000000000;
      v106 = *(v61 + 16);
      v77 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v77);

      MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
      v79 = v107;
      v78 = v108;
      v80 = *(a1 + 20);
      v81 = sub_1B0CFC1B0(v107, v108, a1 + 8, v80);
      v24 = v99;
      if (v82)
      {
        v83._countAndFlagsBits = v79;
        v83._object = v78;
        v81 = ByteBuffer._setStringSlowpath(_:at:)(v83, v80);
      }

      v84 = v81;

      v85 = *(a1 + 20);
      v43 = __CFADD__(v85, v84);
      v86 = v85 + v84;
      v26 = v97;
      v8 = v95;
      if (v43)
      {
        goto LABEL_56;
      }

      *(a1 + 20) = v86;
    }

    else
    {
      sub_1B0DB3EA0(v61);

      v86 = *(a1 + 20);
      v26 = v97;
      v8 = v95;
      v24 = v99;
    }

    v87 = v86;
    v88 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, a1 + 8, v86);
    if (v89)
    {
      v90._countAndFlagsBits = 2573;
      v90._object = 0xE200000000000000;
      v88 = ByteBuffer._setStringSlowpath(_:at:)(v90, v87);
    }

    v91 = v88;

    v25 = v101;
    sub_1B0D7767C(v101, type metadata accessor for CommandStreamPart);
    v92 = *(a1 + 20);
    v43 = __CFADD__(v92, v91);
    v51 = v92 + v91;
    v15 = v100;
    if (v43)
    {
      goto LABEL_55;
    }

LABEL_46:
    *(a1 + 20) = v51;
    goto LABEL_5;
  }

  v62 = *(a1 + 20);
  v63 = v62 + 6;
  if (v62 < 0xFFFFFFFA)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v64 = *(a1 + 24);
      v43 = v63 >= v64;
      v65 = v63 - v64;
      if (v43)
      {
        v66 = v65;
      }

      else
      {
        v66 = 0;
      }

      v67 = sub_1B03904C0();
      ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v66, v67 & 1);
    }

    ByteBuffer._ensureAvailableCapacity(_:at:)(6u, v62);
    v68 = *(a1 + 8);
    v69 = *(a1 + 24);
    v70 = *(a1 + 28);
    v71 = *(a1 + 30);
    swift_beginAccess();
    v72 = v71 | (v70 << 8);
    LODWORD(v73) = v69 - v72;
    if (v69 - v72 >= v62)
    {
      LODWORD(v73) = v62;
    }

    if (v62)
    {
      v73 = v73;
    }

    else
    {
      v73 = 0;
    }

    v74 = *(v68 + 24) + v72 + v73;
    *(v74 + 4) = 2573;
    *v74 = 1162760004;
    v25 = v101;
    sub_1B0D7767C(v101, type metadata accessor for CommandStreamPart);
    v75 = *(a1 + 20);
    v43 = __CFADD__(v75, 6);
    v76 = v75 + 6;
    if (v43)
    {
      goto LABEL_51;
    }

    *(a1 + 20) = v76;
    v24 = v99;
    v15 = v100;
    goto LABEL_5;
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

void sub_1B0D769BC(uint64_t a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = *(a1 + 24);
  v7 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v14 = *(a1 + 17);
  v12 = a1 + 17;
  v13 = v14;
  LOBYTE(v105) = v6;
  *(&v105 + 1) = v14;
  HIBYTE(v105) = *(v12 + 6);
  *(&v105 + 5) = *(v12 + 4);
  v15 = v11 >> 5;
  if (v11 >> 5 > 2)
  {
    v2 = v13 | ((*(v12 + 4) | (*(v12 + 6) << 16)) << 32);
    if (v11 >> 5 > 4)
    {
      goto LABEL_19;
    }

    if (v15 != 3)
    {
      v10 = v105;
      if (*(v1 + 56))
      {
        v44 = *(v1 + 20);
        v45 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v44);
        if (v46)
        {
          v47._countAndFlagsBits = 32;
          v47._object = 0xE100000000000000;
          v45 = ByteBuffer._setStringSlowpath(_:at:)(v47, v44);
        }

        v48 = v45;
        v49 = *(v1 + 20);
        v21 = __CFADD__(v49, v45);
        v50 = v49 + v45;
        if (v21)
        {
          goto LABEL_100;
        }

        *(v1 + 20) = v50;
        goto LABEL_59;
      }

LABEL_58:
      v48 = 0;
      v50 = *(v1 + 20);
LABEL_59:
      v62 = v50;
      v63 = sub_1B0CFC1B0(0x204C5255uLL, 0xE400000000000000, v1 + 8, v50);
      if (v64)
      {
        v65._countAndFlagsBits = 541872725;
        v65._object = 0xE400000000000000;
        v63 = ByteBuffer._setStringSlowpath(_:at:)(v65, v62);
      }

      v66 = *(v1 + 20);
      v21 = __CFADD__(v66, v63);
      v67 = v66 + v63;
      if (v21)
      {
        goto LABEL_97;
      }

      *(v1 + 20) = v67;
      if (__OFADD__(v48, v63))
      {
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
        goto LABEL_102;
      }

      if (!__OFADD__(v48 + v63, sub_1B0D4B6B8(v4, v5, v10 & 0xFF000000FFFFFFFFLL | (((v2 >> 24) & 0xFFFFFF) << 32))))
      {
LABEL_71:
        *(v1 + 56) = 1;
        return;
      }

      __break(1u);
LABEL_66:
      if (*(v1 + 56))
      {
        v68 = *(v1 + 20);
        v69 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v68);
        if (v70)
        {
          v71._countAndFlagsBits = 32;
          v71._object = 0xE100000000000000;
          v69 = ByteBuffer._setStringSlowpath(_:at:)(v71, v68);
        }

        v72 = v69;
        v73 = *(v1 + 20);
        v21 = __CFADD__(v73, v69);
        v74 = v73 + v69;
        if (v21)
        {
          goto LABEL_104;
        }

        *(v1 + 20) = v74;
      }

      else
      {
        v72 = 0;
        v74 = *(v1 + 20);
      }

      v80 = v74;
      v81 = sub_1B0CFC1B0(0x2054584554uLL, 0xE500000000000000, v1 + 8, v74);
      if (v82)
      {
        v83._countAndFlagsBits = 0x2054584554;
        v83._object = 0xE500000000000000;
        v81 = ByteBuffer._setStringSlowpath(_:at:)(v83, v80);
      }

      v84 = *(v1 + 20);
      v85 = (v84 + v81);
      if (__CFADD__(v84, v81))
      {
        goto LABEL_101;
      }

      *(v1 + 20) = v85;
      v86 = v72 + v81;
      if (__OFADD__(v72, v81))
      {
LABEL_102:
        __break(1u);
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000) != 0)
      {
LABEL_108:
        __break(1u);
        return;
      }

      if ((*(v1 + 1) & 0x10000) == 0)
      {
        v106 = 123;
        v107 = 0xE100000000000000;
        v87 = sub_1B0E469C8();
        MEMORY[0x1B2726E80](v87);

        MEMORY[0x1B2726E80](658813, 0xE300000000000000);
        v89 = v106;
        v88 = v107;
        v90 = sub_1B0CFC1B0(v106, v107, v1 + 8, v85);
        if (v91)
        {
          v92._countAndFlagsBits = v89;
          v92._object = v88;
          v90 = ByteBuffer._setStringSlowpath(_:at:)(v92, v85);
        }

        v93 = v90;

        v94 = *(v3 + 20);
        v95 = (v94 + v93);
        if (!__CFADD__(v94, v93))
        {
          *(v3 + 20) = v95;
          if (!__OFADD__(v86, v93))
          {
            sub_1B0D7D00C(v95);
            return;
          }

          goto LABEL_107;
        }

        goto LABEL_105;
      }

      v106 = 123;
      v107 = 0xE100000000000000;
      v96 = sub_1B0E469C8();
      MEMORY[0x1B2726E80](v96);

      MEMORY[0x1B2726E80](168656171, 0xE400000000000000);
      v98 = v106;
      v97 = v107;
      v99 = sub_1B0CFC1B0(v106, v107, v1 + 8, v85);
      if (v100)
      {
        v101._countAndFlagsBits = v98;
        v101._object = v97;
        v99 = ByteBuffer._setStringSlowpath(_:at:)(v101, v85);
      }

      v102 = v99;

      v103 = *(v3 + 20);
      v21 = __CFADD__(v103, v102);
      v104 = v103 + v102;
      if (v21)
      {
        goto LABEL_106;
      }

      *(v3 + 20) = v104;
      if (!__OFADD__(v86, v102))
      {
        return;
      }

      __break(1u);
      goto LABEL_94;
    }

    v10 = 0xEB00000000282045;
    v11 = 1413563168;
    v106 = v4;
    v107 = v5;
    v108[0] = v6;
    v109 = v8;
    v110 = v7;
    v111 = v9;
    sub_1B0D30380(&v106);
    v4 = v16;
    v5 = *(v1 + 20);
    v17 = sub_1B0CFC1B0(0x54414E4554414320uLL, 0xEB00000000282045, v1 + 8, v5);
    if (v18)
    {
      v19._countAndFlagsBits = 0x54414E4554414320;
      v19._object = 0xEB00000000282045;
      v17 = ByteBuffer._setStringSlowpath(_:at:)(v19, v5);
    }

    v20 = *(v1 + 20);
    v21 = __CFADD__(v20, v17);
    v7 = (v20 + v17);
    if (v21)
    {
      goto LABEL_96;
    }

    *(v1 + 20) = v7;
    if (!__OFADD__(v4, v17))
    {
      return;
    }

    __break(1u);
  }

  if (!v15)
  {
    goto LABEL_28;
  }

  if (v15 != 1)
  {
    goto LABEL_34;
  }

  v106 = v4;
  v107 = v5;
  v108[0] = v6 & 1;
  v109 = v8;
  v110 = v7;
  v111 = v9;
  sub_1B0D30380(&v106);
  v4 = v22;
  v5 = *(v1 + 20);
  v23 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v5);
  if (v24)
  {
    v25._countAndFlagsBits = 32;
    v25._object = 0xE100000000000000;
    v23 = ByteBuffer._setStringSlowpath(_:at:)(v25, v5);
  }

  v26 = *(v1 + 20);
  v21 = __CFADD__(v26, v23);
  v27 = v26 + v23;
  if (v21)
  {
    goto LABEL_95;
  }

  *(v1 + 20) = v27;
  if (__OFADD__(v4, v23))
  {
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  if (!__OFADD__(v4 + v23, sub_1B0D2FA50(v10, v11 & 1)))
  {
    return;
  }

  __break(1u);
LABEL_19:
  if (v15 != 5)
  {
    v51 = v8 | v5;
    v52 = v9 | v10 | v105;
    if (v11 == 192 && !(v51 | v4 | v7 | v52))
    {
      if (*v1 == 1)
      {
        v53 = *(v1 + 20);
        v54 = sub_1B0CFC1B0(0x8588E2uLL, 0xA300000000000000, v1 + 8, v53);
        if (v55)
        {
          v56._countAndFlagsBits = 8751330;
          v56._object = 0xA300000000000000;
          v54 = ByteBuffer._setStringSlowpath(_:at:)(v56, v53);
        }

        v57 = *(v1 + 20);
        v21 = __CFADD__(v57, v54);
        v35 = v57 + v54;
        if (!v21)
        {
          goto LABEL_75;
        }

        __break(1u);
      }

      return;
    }

    if (v11 != 192 || v4 != 1 || v51 | v7 | v52)
    {
      v75 = *(v1 + 20);
      v76 = sub_1B0CFC1B0(0xA0DuLL, 0xE200000000000000, v1 + 8, v75);
      if (v77)
      {
        v78._countAndFlagsBits = 2573;
        v78._object = 0xE200000000000000;
        v76 = ByteBuffer._setStringSlowpath(_:at:)(v78, v75);
      }

      v79 = *(v1 + 20);
      v21 = __CFADD__(v79, v76);
      v35 = v79 + v76;
      if (!v21)
      {
        goto LABEL_75;
      }

      goto LABEL_103;
    }

    *(v1 + 56) = 0;
    v4 = *(v1 + 20);
    v58 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v1 + 8, v4);
    if (v59)
    {
      v60._countAndFlagsBits = 41;
      v60._object = 0xE100000000000000;
      v58 = ByteBuffer._setStringSlowpath(_:at:)(v60, v4);
    }

    v61 = *(v1 + 20);
    v21 = __CFADD__(v61, v58);
    v35 = v61 + v58;
    if (!v21)
    {
      goto LABEL_75;
    }

    __break(1u);
    goto LABEL_58;
  }

  if (!BYTE6(v2))
  {
    goto LABEL_66;
  }

  if (BYTE6(v2) != 1)
  {
    goto LABEL_71;
  }

  v106 = v4;
  v107 = v5;
  v108[0] = v6;
  *&v108[1] = v2;
  *&v108[5] = WORD2(v2);
  if (*v1 != 1)
  {
LABEL_35:
    ByteBuffer.writeBuffer(_:)(&v106);
    return;
  }

  v28 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v28);

  MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
  v5 = 91;
  v4 = 0xE100000000000000;
  v29 = *(v1 + 20);
  v30 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v1 + 8, v29);
  if (v31)
  {
    v32._countAndFlagsBits = 91;
    v32._object = 0xE100000000000000;
    v30 = ByteBuffer._setStringSlowpath(_:at:)(v32, v29);
  }

  v33 = v30;

  v34 = *(v3 + 20);
  v21 = __CFADD__(v34, v33);
  v35 = v34 + v33;
  if (!v21)
  {
LABEL_75:
    *(v3 + 20) = v35;
    return;
  }

  __break(1u);
LABEL_28:
  v106 = v4;
  v107 = v5;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  MEMORY[0x1B2726E80](0x20444E4550504120, 0xE800000000000000);
  v5 = v106;
  v4 = v107;
  v36 = *(v3 + 20);
  v37 = sub_1B0CFC1B0(v106, v107, v3 + 8, v36);
  if (v38)
  {
    v39._countAndFlagsBits = v5;
    v39._object = v4;
    v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v36);
  }

  v40 = v37;

  v41 = *(v3 + 20);
  v21 = __CFADD__(v41, v40);
  v42 = v41 + v40;
  if (v21)
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  *(v3 + 20) = v42;
  sub_1B0DD59A4(v105);
  if (!__OFADD__(v40, v43))
  {
    return;
  }

  __break(1u);
LABEL_34:
  *v108 = v105;
  *&v108[3] = *(&v105 + 3);
  v106 = v4;
  v107 = v5;
  if ((*v3 & 1) == 0)
  {
    goto LABEL_35;
  }
}

BOOL _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *(a1 + 24);
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 21) | (*(a1 + 23) << 16);
  HIBYTE(v43) = *(a1 + 23);
  *(&v43 + 1) = *(a1 + 17);
  v12 = *(&v43 + 1) | (v11 << 32);
  LOBYTE(v43) = v5;
  *(&v43 + 5) = v11;
  v13 = v10 >> 5;
  if (v10 >> 5 > 2)
  {
    if (v10 >> 5 > 4)
    {
      if (v13 == 5)
      {
        if ((a2[7] & 0xE0) == 0xA0)
        {
          v22 = *a2;
          v23 = a2[1];
          v24 = a2[2];
          v44[0] = v5;
          *&v44[1] = *(&v43 + 1);
          if (BYTE6(v12))
          {
            if (BYTE6(v12) == 1)
            {
              if (HIBYTE(v24) != 1 || !sub_1B0C2DB54(v3, v4, *v44 | (((v12 >> 24) & 0xFFFFFF) << 32), v22, v23, v24 & 0xFFFFFFFFFFFFFFLL))
              {
                return 0;
              }
            }

            else if (HIBYTE(v24) != 2 || v22 | v23 | v24 & 0xFFFFFFFFFFFFFFLL)
            {
              return 0;
            }
          }

          else if (HIBYTE(v24) || v3 != v22)
          {
            return 0;
          }

          return 1;
        }
      }

      else
      {
        v32 = v7 | v4;
        v33 = v8 | v9 | v43;
        if (v10 != 192 || v32 | v3 | v6 | v33)
        {
          if (v10 == 192 && v3 == 1 && !(v32 | v6 | v33))
          {
            v38 = *(a2 + 56);
            if ((v38 & 0xE0) != 0xC0 || v38 != 192 || *a2 != 1)
            {
              return 0;
            }
          }

          else
          {
            v39 = *(a2 + 56);
            if ((v39 & 0xE0) != 0xC0 || v39 != 192 || *a2 != 2)
            {
              return 0;
            }
          }

          v37 = a2[1];
          v40 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          v36 = *&vorr_s8(*v40.i8, *&vextq_s8(v40, v40, 8uLL)) | a2[2];
        }

        else
        {
          v34 = *(a2 + 56);
          if ((v34 & 0xE0) != 0xC0 || v34 != 192)
          {
            return 0;
          }

          v35 = vorrq_s8(*(a2 + 3), *(a2 + 5));
          v36 = *&vorr_s8(*v35.i8, *&vextq_s8(v35, v35, 8uLL)) | a2[2];
          v37 = a2[1] | *a2;
        }

        if (!(v36 | v37))
        {
          return 1;
        }
      }
    }

    else
    {
      if (v13 == 3)
      {
        if ((a2[7] & 0xE0) != 0x60)
        {
          return 0;
        }

        v14 = *(a2 + 16);
        v15 = a2[1];
        v17 = a2[4];
        v16 = a2[5];
        if ((sub_1B03D1B3C(v3, *a2) & 1) == 0)
        {
          return 0;
        }

        if (v5)
        {
          if ((v14 & 1) == 0)
          {
            return 0;
          }
        }

        else if ((v14 & 1) != 0 || v4 != v15)
        {
          return 0;
        }

        return (sub_1B045202C(v6, v17) & 1) != 0 && (sub_1B0D3A338(v8, v16) & 1) != 0;
      }

      if ((a2[7] & 0xE0) == 0x80)
      {
        goto LABEL_33;
      }
    }

    return 0;
  }

  if (v13)
  {
    if (v13 != 1)
    {
      if ((a2[7] & 0xE0) != 0x40)
      {
        return 0;
      }

LABEL_33:
      v29 = a2[1];
      v30 = *a2;
      v31 = a2[2] & 0xFFFFFFFFFFFFFFLL;

      return sub_1B0C2DB54(v3, v4, v43 | (((v12 >> 24) & 0xFFFFFF) << 32), v30, v29, v31);
    }

    v18 = *(a2 + 56);
    if ((v18 & 0xE0) != 0x20)
    {
      return 0;
    }

    v41 = a2[6];
    v42 = a2[5];
    v19 = a2[4];
    v20 = *(a2 + 4);
    v21 = a2[1];
    if ((sub_1B03D1B3C(v3, *a2) & 1) == 0)
    {
      return 0;
    }

    if (v5)
    {
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20 & 1 | (v4 != v21))
    {
      return 0;
    }

    return (sub_1B045202C(v6, v19) & 1) != 0 && (sub_1B0D3A338(v8, v42) & 1) != 0 && v9 == v41 && ((v10 ^ v18) & 1) == 0;
  }

  if (*(a2 + 56) > 0x1Fu)
  {
    return 0;
  }

  v25 = a2[2];
  v26 = a2[3];
  if (v3 == *a2 && v4 == a2[1])
  {
    return v7 == v26 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v43, v25) & 1) != 0;
  }

  v27 = sub_1B0E46A78();
  result = 0;
  if (v27)
  {
    return v7 == v26 && (_s13IMAP2Protocol13EncodedStringV2eeoiySbAC_ACtFZ_0(v43, v25) & 1) != 0;
  }

  return result;
}

uint64_t type metadata accessor for CommandStreamPart(uint64_t a1)
{
  result = qword_1EB6DE638;
  if (!qword_1EB6DE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0D775E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommandStreamPart(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D7767C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL _s12NIOIMAPCore217CommandStreamPartO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for TaggedCommand(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for CommandStreamPart(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v29 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v29 - v15);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7330, &unk_1B0EF18A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v29 - v18;
  v21 = v29 + *(v20 + 56) - v18;
  sub_1B0D775E8(a1, v29 - v18);
  sub_1B0D775E8(a2, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_24;
    }

    sub_1B0D775E8(v19, v10);
    v23 = *v10;
    if (swift_getEnumCaseMultiPayload() != 2)
    {

      goto LABEL_15;
    }

    appended = sub_1B0C2DB54(v23, *(v10 + 1), *(v10 + 4) | (v10[22] << 48) | (*(v10 + 10) << 32), *v21, *(v21 + 1), *(v21 + 4) | (*(v21 + 10) << 32) | (v21[22] << 48));
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B0D775E8(v19, v16);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_1B0D7767C(v16, type metadata accessor for TaggedCommand);
LABEL_15:
        sub_1B0D77F9C(v19);
        return 0;
      }

      sub_1B0D77F34(v21, v7, type metadata accessor for TaggedCommand);
      v27 = *v16 == *v7 && v16[1] == v7[1];
      if (!v27 && (sub_1B0E46A78() & 1) == 0 || (_s12NIOIMAPCore27CommandO21__derived_enum_equalsySbAC_ACtFZ_0(v16 + *(v5 + 20), v7 + *(v5 + 20)) & 1) == 0)
      {
        sub_1B0D7767C(v7, type metadata accessor for TaggedCommand);
        sub_1B0D7767C(v16, type metadata accessor for TaggedCommand);
        sub_1B0D7767C(v19, type metadata accessor for CommandStreamPart);
        return 0;
      }

      sub_1B0D7767C(v7, type metadata accessor for TaggedCommand);
      sub_1B0D7767C(v16, type metadata accessor for TaggedCommand);
LABEL_24:
      sub_1B0D7767C(v19, type metadata accessor for CommandStreamPart);
      return 1;
    }

    sub_1B0D775E8(v19, v13);
    v25 = v13[1];
    v29[0] = *v13;
    v29[1] = v25;
    v30[0] = v13[2];
    *(v30 + 9) = *(v13 + 41);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D7764C(v29);
      goto LABEL_15;
    }

    v26 = *(v21 + 1);
    v31[0] = *v21;
    v31[1] = v26;
    v32[0] = *(v21 + 2);
    *(v32 + 9) = *(v21 + 41);
    appended = _s12NIOIMAPCore213AppendCommandO21__derived_enum_equalsySbAC_ACtFZ_0(v29, v31);
    sub_1B0D7764C(v31);
    sub_1B0D7764C(v29);
  }

  sub_1B0D7767C(v19, type metadata accessor for CommandStreamPart);
  return appended;
}

unint64_t sub_1B0D77B38()
{
  result = qword_1EB6E7310;
  if (!qword_1EB6E7310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7310);
  }

  return result;
}

unint64_t sub_1B0D77B90()
{
  result = qword_1EB6E7318;
  if (!qword_1EB6E7318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7318);
  }

  return result;
}

unint64_t sub_1B0D77BE8()
{
  result = qword_1EB6E7320;
  if (!qword_1EB6E7320)
  {
    type metadata accessor for CommandStreamPart(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7320);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213AppendCommandO12CatenateDataO(uint64_t a1)
{
  if ((*(a1 + 23) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 23) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12NIOIMAPCore213AppendCommandO(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 <= 0xBF)
  {
    return v1 >> 5;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_1B0D77C78(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFF9 && *(a1 + 57))
  {
    return (*a1 + 2097146);
  }

  if ((((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xFu) << 14)))) ^ 0x1FFFFF) >= 0x1FFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*(a1 + 56) >> 5) | (8 * ((*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (((*(a1 + 56) >> 1) & 0xF) << 14)))) ^ 0x1FFFFF;
  }

  return (v3 + 1);
}

uint64_t sub_1B0D77CF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x1FFFFA)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 2097146;
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 > 0x1FFFF9)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 3) & 0x3FFFF) - (a2 << 18);
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 40) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
      *(result + 48) = 0;
      *(result + 56) = (v3 >> 13) & 0xFE;
    }
  }

  return result;
}

int8x16_t sub_1B0D77DA0(uint64_t a1, unsigned int a2)
{
  if (a2 < 6)
  {
    v3 = *(a1 + 56) & 1 | (32 * a2);
    result = vandq_s8(*(a1 + 32), vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL));
    *(a1 + 32) = result;
    *(a1 + 56) = v3;
  }

  else
  {
    *a1 = a2 - 6;
    result.i64[0] = 0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = -64;
  }

  return result;
}

uint64_t sub_1B0D77E00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 23);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D77E48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 23) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B0D77E8C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    *(result + 22) = 0;
    *(result + 20) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
  }

  *(result + 23) = a2;
  return result;
}

uint64_t sub_1B0D77EC0(uint64_t a1, double a2)
{
  result = type metadata accessor for TaggedCommand(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B0D77F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0D77F9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7330, &unk_1B0EF18A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ContinuationRequest.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    MEMORY[0x1B2728D70](1);
    swift_beginAccess();
    return sub_1B0E46C38();
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    if ((~a2 & 0xF000000000000007) != 0)
    {
      ResponseTextCode.hash(into:)(a1, a2);
    }

    return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  }
}

uint64_t ContinuationRequest.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  sub_1B0E46C28();
  ContinuationRequest.hash(into:)(v9, a1, a2, a3, a4 & 1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7815C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1B0E46C28();
  ContinuationRequest.hash(into:)(v6, v1, v2, v3, v4);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D781D0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1B0E46C28();
  ContinuationRequest.hash(into:)(v7, v2, v3, v4, v5);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D78254(unint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if ((a4 & 1) == 0)
  {
    if ((a8 & 1) == 0)
    {
      v10 = a5 & 0xF000000000000007;
      if ((~a1 & 0xF000000000000007) != 0)
      {
        if (v10 == 0xF000000000000007)
        {
          return 0;
        }

        v11 = a1;
        v12 = a6;
        v13 = a7;
        v14 = a2;
        v15 = a3;
        sub_1B04420EC(a5);
        LOBYTE(v11) = _s12NIOIMAPCore216ResponseTextCodeO21__derived_enum_equalsySbAC_ACtFZ_0(v11, a5);
        sub_1B0447F00(a5);
        a3 = v15;
        a2 = v14;
        a7 = v13;
        a6 = v12;
        if ((v11 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10 != 0xF000000000000007)
      {
        return 0;
      }

      if (a2 == a6 && a3 == a7 || (sub_1B0E46A78() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if ((a8 & 1) == 0)
  {
    return 0;
  }

  v8 = a3 & 0xFFFFFFFFFFFFFFLL;

  return sub_1B0C2DB54(a1, a2, v8, a5, a6, a7 & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1B0D78370()
{
  result = qword_1EB6E7338;
  if (!qword_1EB6E7338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7338);
  }

  return result;
}

uint64_t sub_1B0D783E0(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v44 - v5);
  Parameter = type metadata accessor for CreateParameter(0);
  MEMORY[0x1EEE9AC00](Parameter);
  v9 = (v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D78DFC(a1, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1B0D78E60(v9, v6);
    v22 = sub_1B0E3001C(v6);
    sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
    return v22;
  }

  v10 = *v9;
  v11 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20455355uLL, 0xE400000000000000, v2 + 8, v11);
  if (v13)
  {
    v14._countAndFlagsBits = 541414229;
    v14._object = 0xE400000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v15 = result;
  v16 = *(v2 + 20);
  v17 = (v16 + result);
  if (__CFADD__(v16, result))
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v17;
  v44[0] = v10;
  if (v10[2])
  {
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v17);
    if (v18)
    {
      v19._countAndFlagsBits = 0;
      v19._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
    }

    v20 = result;
    v21 = *(v2 + 20);
    LODWORD(v17) = v21 + result;
    if (__CFADD__(v21, result))
    {
      goto LABEL_37;
    }

    *(v2 + 20) = v17;
  }

  else
  {
    v20 = 0;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v2 + 8, v17);
  if (v23)
  {
    v24._countAndFlagsBits = 40;
    v24._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v24, v17);
  }

  v25 = *(v2 + 20);
  v26 = __CFADD__(v25, result);
  v27 = v25 + result;
  if (v26)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v27;
  v28 = v20 + result;
  if (__OFADD__(v20, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  MEMORY[0x1EEE9AC00](result);
  v44[-6] = sub_1B0D5C820;
  v44[-5] = 0;
  v44[-4] = v2;
  v44[-3] = v44;
  v44[-2] = 32;
  v44[-1] = 0xE100000000000000;
  result = sub_1B0DED0F8(0, sub_1B0D73330, &v44[-8], v10);
  v29 = v28 + result;
  if (__OFADD__(v28, result))
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v30 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v30);
  if (v31)
  {
    v32._countAndFlagsBits = 41;
    v32._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v32, v30);
  }

  v33 = *(v2 + 20);
  v34 = (v33 + result);
  if (__CFADD__(v33, result))
  {
    goto LABEL_34;
  }

  *(v2 + 20) = v34;
  v35 = __OFADD__(v29, result);
  v36 = v29 + result;
  if (v35)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (!v10[2])
  {

    v43 = v36;
    goto LABEL_26;
  }

  v37 = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v34);
  if (v38)
  {
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v37 = ByteBuffer._setStringSlowpath(_:at:)(v39, v34);
  }

  v40 = v37;

  v41 = *(v2 + 20);
  v26 = __CFADD__(v41, v40);
  v42 = v41 + v40;
  if (v26)
  {
    goto LABEL_38;
  }

  *(v2 + 20) = v42;
  v43 = v36 + v40;
  if (__OFADD__(v36, v40))
  {
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

LABEL_26:
  result = v15 + v43;
  if (__OFADD__(v15, v43))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

uint64_t CreateParameter.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ParameterValue(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  Parameter = type metadata accessor for CreateParameter(0);
  MEMORY[0x1EEE9AC00](Parameter);
  v16 = (&v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1B0D78DFC(v2, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    MEMORY[0x1B2728D70](1);
    MEMORY[0x1B2728D70](*(v17 + 16));
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = v17 + 40;
      do
      {
        sub_1B0E44B98();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    sub_1B0D78E60(v16, v13);
    MEMORY[0x1B2728D70](0);
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D78ED0(&v13[*(v11 + 52)], v10);
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      sub_1B0E46C68();
    }

    else
    {
      sub_1B0D06280(v10, v7);
      sub_1B0E46C68();
      ParameterValue.hash(into:)(a1);
      sub_1B0D7904C(v7, type metadata accessor for ParameterValue);
    }

    return sub_1B0398EFC(v13, &qword_1EB6E6F58, &unk_1B0EF5150);
  }
}

uint64_t CreateParameter.hashValue.getter()
{
  sub_1B0E46C28();
  CreateParameter.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D78A9C()
{
  sub_1B0E46C28();
  CreateParameter.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D78AE0(uint64_t a1)
{
  sub_1B0E46C28();
  CreateParameter.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t _s12NIOIMAPCore215CreateParameterO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v21 - v5);
  Parameter = type metadata accessor for CreateParameter(0);
  MEMORY[0x1EEE9AC00](Parameter);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F60, &qword_1B0EEEB08);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v17 = *(v16 + 56);
  sub_1B0D78DFC(a1, &v21 - v14);
  sub_1B0D78DFC(a2, &v15[v17]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B0D78DFC(v15, v9);
    v18 = *v9;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = sub_1B0D3CF18(v18, *&v15[v17]);

LABEL_9:
      sub_1B0D7904C(v15, type metadata accessor for CreateParameter);
      return v19 & 1;
    }
  }

  else
  {
    sub_1B0D78DFC(v15, v12);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B0D78E60(&v15[v17], v6);
      v19 = sub_1B0DCA3C4(v12, v6);
      sub_1B0398EFC(v6, &qword_1EB6E6F58, &unk_1B0EF5150);
      sub_1B0398EFC(v12, &qword_1EB6E6F58, &unk_1B0EF5150);
      goto LABEL_9;
    }

    sub_1B0398EFC(v12, &qword_1EB6E6F58, &unk_1B0EF5150);
  }

  sub_1B0398EFC(v15, &qword_1EB6E6F60, &qword_1B0EEEB08);
  v19 = 0;
  return v19 & 1;
}

uint64_t type metadata accessor for CreateParameter(uint64_t a1)
{
  result = qword_1EB6DE6B8;
  if (!qword_1EB6DE6B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0D78DFC(uint64_t a1, uint64_t a2)
{
  Parameter = type metadata accessor for CreateParameter(0);
  (*(*(Parameter - 8) + 16))(a2, a1, Parameter);
  return a2;
}

uint64_t sub_1B0D78E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6F58, &unk_1B0EF5150);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D78ED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E6440, &unk_1B0EF3530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B0D78F88(uint64_t a1)
{
  sub_1B041B648(319);
  if (v1 <= 0x3F)
  {
    sub_1B0D78FFC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1B0D78FFC()
{
  if (!qword_1EB6DB610)
  {
    v0 = sub_1B0E45358();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB6DB610);
    }
  }
}

uint64_t sub_1B0D7904C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0D790AC(uint64_t result, unint64_t a2)
{
  v3 = v2;
  if (*v2 == 1)
  {
    sub_1B03B7B80(result, a2);

    v4 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v4);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v5 = *(v2 + 20);
    v6 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v2 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 91;
      v8._object = 0xE100000000000000;
      v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = v6;

    v10 = *(v3 + 20);
    result = v9;
    v11 = __CFADD__(v10, v9);
    v12 = v10 + v9;
    if (!v11)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  v13 = *(v3 + 20);
  v14 = result;
  v15 = a2;
  result = sub_1B0D4BDD0(result, a2, v3 + 8, v13);
  if ((result & 0x100000000) != 0)
  {
    result = sub_1B0D4E9CC(v14, v15, v13);
  }

  v16 = *(v3 + 20);
  v11 = __CFADD__(v16, result);
  v12 = v16 + result;
  if (!v11)
  {
    result = result;
LABEL_11:
    *(v3 + 20) = v12;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B0D791F8(uint64_t a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v3 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v3);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v4 = *(v1 + 20);
    v5 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v1 + 8, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 91;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, v8);
    v11 = v9 + v8;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 20) = v11;
    }
  }

  else
  {
    sub_1B0DB3EA0(a1);
  }
}

void sub_1B0D79300(uint64_t *a1)
{
  v2 = v1;
  if (*v2 != 1)
  {
    v8 = *(v2 + 20);
    v9 = *a1;
    v10 = *(a1 + 10);
    v11 = *(a1 + 22);
    swift_beginAccess();
    v13 = a1[3];
    v12 = a1[4];
    v14 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      v15 = v8 + v14;
      if (!__CFADD__(v8, v14))
      {
        v16 = *(v9 + 24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = *(v2 + 24);
          v18 = v15 >= v17;
          v19 = v15 - v17;
          if (v18)
          {
            v20 = v19;
          }

          else
          {
            v20 = 0;
          }

          v21 = sub_1B03904C0();
          ByteBuffer._copyStorageAndRebase(extraCapacity:resetIndices:)(v20, v21 & 1);
        }

        if (v14 <= 0xFFFFFFFFLL)
        {
          ByteBuffer._ensureAvailableCapacity(_:at:)(v14, v8);
          ByteBuffer._setBytesAssumingUniqueBufferAccess(_:at:)((v16 + (v11 | (v10 << 8)) + v13), v16 + (v11 | (v10 << 8)) + v13 + v14, v8);
          v22 = *(v2 + 20);
          v18 = __CFADD__(v22, v14);
          v23 = v22 + v14;
          if (!v18)
          {
LABEL_18:
            *(v2 + 20) = v23;
            return;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v37 = 91;
  v38 = 0xE100000000000000;
  v4 = a1[3];
  v5 = a1[4];
  v6 = v5 - v4;
  if (v5 == v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v24 = sub_1B03B7A3C(v5 - v4, 0);
  ByteBufferView._copyContents(initializing:)(v24 + 4, v6, v36);
  v25 = v36[6];

  v7 = v24;
  if (v25 == v6)
  {
LABEL_15:
    v26 = v7[2];

    v36[0] = v26;
    v27 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v27);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v29 = v37;
    v28 = v38;
    v30 = *(v2 + 20);
    v31 = sub_1B0CFC1B0(v37, v38, v2 + 8, v30);
    if (v32)
    {
      v33._countAndFlagsBits = v29;
      v33._object = v28;
      v31 = ByteBuffer._setStringSlowpath(_:at:)(v33, v30);
    }

    v34 = v31;

    v35 = *(v2 + 20);
    v18 = __CFADD__(v35, v34);
    v23 = v35 + v34;
    if (!v18)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_24:
  __break(1u);
}

uint64_t EncodeBuffer.writeCustomCommandPayload(_:)(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (result < 0)
  {
    if (HIDWORD(a2) < a2)
    {
      __break(1u);
    }

    else if (a3 - (BYTE6(a3) | (WORD2(a3) << 8)) >= HIDWORD(a2))
    {
      v6[0] = result & 0x7FFFFFFFFFFFFFFFLL;
      v6[1] = a2;
      v7 = a3;
      v8 = WORD2(a3);
      v9 = BYTE6(a3);
      v10 = a2;
      v11 = HIDWORD(a2);

      sub_1B0D79300(v6);
      v5 = v4;
      sub_1B04394F4(v6);
      return v5;
    }

    __break(1u);
  }

  else
  {
    v3 = a3 & 0xFFFFFFFFFFFFFFLL;

    return sub_1B0D4B6B8(result, a2, v3);
  }

  return result;
}

BOOL static Command.CustomCommandPayload.__derived_enum_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 < 0)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    a1 &= ~0x8000000000000000;
    a4 &= ~0x8000000000000000;
  }

  else if (a4 < 0)
  {
    return 0;
  }

  return sub_1B0C2DB54(a1, a2, a3 & 0xFFFFFFFFFFFFFFLL, a4, a5, a6 & 0xFFFFFFFFFFFFFFLL);
}

uint64_t Command.CustomCommandPayload.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  MEMORY[0x1B2728D70](a2 < 0);
  swift_beginAccess();
  return sub_1B0E46C38();
}

uint64_t Command.CustomCommandPayload.hashValue.getter(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1B0E46C28();
  Command.CustomCommandPayload.hash(into:)(v7, a1, a2, a3 & 0xFFFFFFFFFFFFFFLL);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D79700()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16) | ((*(v0 + 20) | (*(v0 + 22) << 16)) << 32);
  sub_1B0E46C28();
  Command.CustomCommandPayload.hash(into:)(v5, v1, v2, v3);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D79788(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16) | ((*(v1 + 20) | (*(v1 + 22) << 16)) << 32);
  sub_1B0E46C28();
  Command.CustomCommandPayload.hash(into:)(v6, v2, v3, v4);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D797F0(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 22);
  v7 = *(a1 + 20);
  v8 = *(a1 + 16);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 22);
  v12 = *(a2 + 20);
  v13 = *(a2 + 16);
  if (v4 < 0)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      return 0;
    }

    v4 &= ~0x8000000000000000;
    v9 &= ~0x8000000000000000;
  }

  else if (v9 < 0)
  {
    return 0;
  }

  return sub_1B0C2DB54(v4, v5, (v8 | ((v7 | (v6 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL, v9, v10, (v13 | ((v12 | (v11 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
}

unint64_t sub_1B0D7985C()
{
  result = qword_1EB6E7348;
  if (!qword_1EB6E7348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7348);
  }

  return result;
}

uint64_t sub_1B0D798BC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 23))
  {
    return (*a1 + 127);
  }

  v3 = (((*a1 >> 57) >> 6) | (2 * ((*a1 >> 57) & 0x38 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B0D79918(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 22) = 0;
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 23) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 23) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x3F | ((-a2 & 0x7F) << 6);
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 22) = 0;
      *(result + 20) = 0;
      *(result + 16) = 0;
    }
  }

  return result;
}

BOOL static Base64.DecodingError.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) != 0)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100) != 0 && a2 > 1u;
      }
    }

    else
    {
      return (a2 & 0x100) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

BOOL sub_1B0D79A28(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[1] != 1)
  {
    if ((a2[1] & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*a1)
  {
    if (v2 != 1)
    {
      if (v3 > 1)
      {
        v7 = a2[1];
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = a2[1];
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

uint64_t _s13DecodingErrorOwet(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *_s13DecodingErrorOwst(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1B0D79BB4(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B0D79BD4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

uint64_t sub_1B0D79C08()
{
  result = sub_1B0E44B98();
  static BodyStructure.DispositionKind.inline = result;
  *algn_1EB737EF8 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.inline.unsafeMutableAddressor()
{
  if (qword_1EB6DE8E8 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.inline;
}

uint64_t sub_1B0D79CB4()
{
  result = sub_1B0E44B98();
  static BodyStructure.DispositionKind.attachment = result;
  *algn_1EB737F08 = v1;
  return result;
}

uint64_t *BodyStructure.DispositionKind.attachment.unsafeMutableAddressor()
{
  if (qword_1EB6DE8F0 != -1)
  {
    swift_once();
  }

  return &static BodyStructure.DispositionKind.attachment;
}

uint64_t sub_1B0D79D9C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1B0E44B98();
  v5 = v4;

  *a2 = v3;
  a2[1] = v5;
  return result;
}

uint64_t BodyStructure.Disposition.kind.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t BodyStructure.Disposition.kind.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BodyStructure.Disposition.parameters.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BodyStructure.Disposition.parameters.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return result;
}

uint64_t BodyStructure.Disposition.init(kind:parameters:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unsigned __int8 *BodyStructure.Disposition.size.getter()
{
  v1 = *(v0 + 24);
  v39 = *(v0 + 32);
  v2 = *(v39 + 16);

  if (!v2)
  {
LABEL_10:
    sub_1B0D7A340(&v39);
    return 0;
  }

  v4 = 0;
  v5 = (v3 + 40);
  v6 = v1 + 40;
  while (1)
  {
    if (v4 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_79;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    if (sub_1B0E44B98() == 1702521203 && v9 == 0xE400000000000000)
    {
      break;
    }

    v11 = sub_1B0E46A78();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

    if (v11)
    {
      goto LABEL_13;
    }

    ++v4;

    v5 += 2;
    v6 += 16;
    if (v2 == v4)
    {
      goto LABEL_10;
    }
  }

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_13:
  sub_1B0D7A340(&v39);

  v13 = HIBYTE(v7) & 0xF;
  v14 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v7 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v7) & 0xF;
  }

  else
  {
    v15 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
LABEL_79:

    return 0;
  }

  if ((v7 & 0x1000000000000000) != 0)
  {
    v17 = sub_1B0B6CEA8(v8, v7, 10);
    v35 = v36;
    goto LABEL_75;
  }

  if ((v7 & 0x2000000000000000) != 0)
  {
    v37[0] = v8;
    v37[1] = v7 & 0xFFFFFFFFFFFFFFLL;
    if (v8 == 43)
    {
      if (!v13)
      {
LABEL_85:
        __break(1u);
        return result;
      }

      if (--v13)
      {
        v17 = 0;
        v27 = v37 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v29 + v28;
          if (__OFADD__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v13)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v8 == 45)
    {
      if (!v13)
      {
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (--v13)
      {
        v17 = 0;
        v21 = v37 + 1;
        while (1)
        {
          v22 = *v21 - 48;
          if (v22 > 9)
          {
            break;
          }

          v23 = 10 * v17;
          if ((v17 * 10) >> 64 != (10 * v17) >> 63)
          {
            break;
          }

          v17 = v23 - v22;
          if (__OFSUB__(v23, v22))
          {
            break;
          }

          ++v21;
          if (!--v13)
          {
            goto LABEL_74;
          }
        }
      }
    }

    else if (v13)
    {
      v17 = 0;
      v32 = v37;
      while (1)
      {
        v33 = *v32 - 48;
        if (v33 > 9)
        {
          break;
        }

        v34 = 10 * v17;
        if ((v17 * 10) >> 64 != (10 * v17) >> 63)
        {
          break;
        }

        v17 = v34 + v33;
        if (__OFADD__(v34, v33))
        {
          break;
        }

        ++v32;
        if (!--v13)
        {
          goto LABEL_74;
        }
      }
    }

LABEL_73:
    v17 = 0;
    LOBYTE(v13) = 1;
    goto LABEL_74;
  }

  if ((v8 & 0x1000000000000000) != 0)
  {
    result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = sub_1B0E46368();
  }

  v16 = *result;
  if (v16 == 43)
  {
    if (v14 < 1)
    {
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v13 = v14 - 1;
    if (v14 == 1)
    {
      goto LABEL_73;
    }

    v17 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    v24 = result + 1;
    while (1)
    {
      v25 = *v24 - 48;
      if (v25 > 9)
      {
        goto LABEL_73;
      }

      v26 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v26 + v25;
      if (__OFADD__(v26, v25))
      {
        goto LABEL_73;
      }

      ++v24;
      if (!--v13)
      {
        goto LABEL_74;
      }
    }
  }

  if (v16 != 45)
  {
    if (!v14)
    {
      goto LABEL_73;
    }

    v17 = 0;
    if (!result)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v30 = *result - 48;
      if (v30 > 9)
      {
        goto LABEL_73;
      }

      v31 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v31 + v30;
      if (__OFADD__(v31, v30))
      {
        goto LABEL_73;
      }

      ++result;
      if (!--v14)
      {
        goto LABEL_65;
      }
    }
  }

  if (v14 < 1)
  {
    __break(1u);
    goto LABEL_83;
  }

  v13 = v14 - 1;
  if (v14 == 1)
  {
    goto LABEL_73;
  }

  v17 = 0;
  if (result)
  {
    v18 = result + 1;
    while (1)
    {
      v19 = *v18 - 48;
      if (v19 > 9)
      {
        goto LABEL_73;
      }

      v20 = 10 * v17;
      if ((v17 * 10) >> 64 != (10 * v17) >> 63)
      {
        goto LABEL_73;
      }

      v17 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_73;
      }

      ++v18;
      if (!--v13)
      {
        goto LABEL_74;
      }
    }
  }

LABEL_65:
  LOBYTE(v13) = 0;
LABEL_74:
  v38 = v13;
  v35 = v13;
LABEL_75:

  if (v35)
  {
    return 0;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_1B0D7A340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5578, &qword_1B0ED2740);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t BodyStructure.Disposition.filename.getter()
{
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v1 = *(v13 + 16);

  if (v1)
  {
    v3 = 0;
    v4 = 0x656D616E656C6966;
    v5 = result + 40;
    v6 = v12 + 40;
    while (v3 < *(v12 + 16))
    {
      v7 = *(v5 - 8);
      if (sub_1B0E44B98() == v4 && v8 == 0xE800000000000000)
      {
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

LABEL_12:
        sub_1B0D7A340(&v13);

        return v7;
      }

      v10 = v4;
      v11 = sub_1B0E46A78();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

      if (v11)
      {
        goto LABEL_12;
      }

      ++v3;

      v5 += 16;
      v6 += 16;
      v4 = v10;
      if (v1 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    sub_1B0D7A340(&v13);
    return 0;
  }

  return result;
}

BOOL static BodyStructure.Disposition.__derived_struct_equals(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_1B0E46A78(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[3];
    v8 = a1[4];
    v9 = a2[3];
    v10 = a2[4];
    return (sub_1B045202C(v7, v9) & 1) != 0 && (sub_1B045202C(v8, v10) & 1) != 0;
  }

  return result;
}

uint64_t BodyStructure.Disposition.hash(into:)(uint64_t a1)
{
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v9 = v2;
  v4 = *(v2 + 16);
  MEMORY[0x1B2728D70](v4);

  if (!v4)
  {
    return sub_1B0D7A340(&v9);
  }

  v6 = 0;
  v7 = v2 + 40;
  v8 = v3 + 40;
  while (v6 < *(v3 + 16))
  {
    ++v6;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v7 += 16;
    v8 += 16;
    if (v4 == v6)
    {
      return sub_1B0D7A340(&v9);
    }
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.Disposition.hashValue.getter()
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v8 = v1;
  v3 = *(v1 + 16);
  MEMORY[0x1B2728D70](v3);

  if (v3)
  {
    v5 = 0;
    v6 = v1 + 40;
    v7 = v2 + 40;
    while (v5 < *(v2 + 16))
    {
      ++v5;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
      _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

      v6 += 16;
      v7 += 16;
      if (v3 == v5)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
    sub_1B0D7A340(&v8);
    return sub_1B0E46CB8();
  }

  return result;
}

uint64_t sub_1B0D7A774()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D3AB6C(v4, v2, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7A7DC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v3 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

  return sub_1B0D3AB6C(a1, v4, v3);
}

uint64_t sub_1B0D7A82C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  sub_1B0D3AB6C(v5, v3, v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D7A890(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v5 = a2[3];
  v4 = a2[4];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return (sub_1B045202C(v3, v5) & 1) != 0 && (sub_1B045202C(v2, v4) & 1) != 0;
  }

  v7 = sub_1B0E46A78();
  result = 0;
  if (v7)
  {
    return (sub_1B045202C(v3, v5) & 1) != 0 && (sub_1B045202C(v2, v4) & 1) != 0;
  }

  return result;
}

uint64_t BodyStructure.DispositionKind.init(stringLiteral:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E44B98();

  return v2;
}

void sub_1B0D7A960(unint64_t *a1)
{
  v2 = v1;
  v3 = a1[1];
  v4 = *(v1 + 20);
  if (!v3)
  {
    goto LABEL_17;
  }

  v5 = *a1;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v9 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v10)
  {
    v11._countAndFlagsBits = 40;
    v11._object = 0xE100000000000000;
    v9 = ByteBuffer._setStringSlowpath(_:at:)(v11, v4);
  }

  v12 = v9;
  v13 = *(v1 + 20);
  v14 = __CFADD__(v13, v9);
  v15 = v13 + v9;
  if (v14)
  {
    __break(1u);
    goto LABEL_23;
  }

  *(v1 + 20) = v15;
  v39[0] = v5;
  v39[1] = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0DD55E0(v5, v3);
  v17 = v16;
  sub_1B0C65094(v39);
  v18 = v12 + v17;
  if (__OFADD__(v12, v17))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = *(v2 + 20);
  v20 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v19);
  if (v21)
  {
    v22._countAndFlagsBits = 32;
    v22._object = 0xE100000000000000;
    v20 = ByteBuffer._setStringSlowpath(_:at:)(v22, v19);
  }

  v23 = *(v2 + 20);
  v14 = __CFADD__(v23, v20);
  v24 = v23 + v20;
  if (v14)
  {
    goto LABEL_24;
  }

  *(v2 + 20) = v24;
  v25 = v18 + v20;
  if (__OFADD__(v18, v20))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_1B0DF7A38(v6, v7, v8);
  v4 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v27 = *(v2 + 20);
  v28 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v27);
  if (v29)
  {
    v30._countAndFlagsBits = 41;
    v30._object = 0xE100000000000000;
    v28 = ByteBuffer._setStringSlowpath(_:at:)(v30, v27);
  }

  v31 = v28;
  sub_1B0C65094(v39);

  v32 = *(v2 + 20);
  v14 = __CFADD__(v32, v31);
  v33 = v32 + v31;
  if (v14)
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v33;
  if (!__OFADD__(v4, v31))
  {
    return;
  }

  __break(1u);
LABEL_17:
  v34 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v4);
  if (v35)
  {
    v36._countAndFlagsBits = 4999502;
    v36._object = 0xE300000000000000;
    v34 = ByteBuffer._setStringSlowpath(_:at:)(v36, v4);
  }

  v37 = *(v2 + 20);
  v14 = __CFADD__(v37, v34);
  v38 = v37 + v34;
  if (v14)
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v38;
}

unint64_t sub_1B0D7AB90()
{
  result = qword_1EB6E7350;
  if (!qword_1EB6E7350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7350);
  }

  return result;
}

unint64_t sub_1B0D7ABE8()
{
  result = qword_1EB6E7358;
  if (!qword_1EB6E7358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7358);
  }

  return result;
}

unint64_t sub_1B0D7AC40()
{
  result = qword_1EB6E7360;
  if (!qword_1EB6E7360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7360);
  }

  return result;
}

unint64_t sub_1B0D7AC98()
{
  result = qword_1EB6E7368;
  if (!qword_1EB6E7368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7368);
  }

  return result;
}

uint64_t sub_1B0D7AD28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E5D00, &qword_1B0EF1FC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t BodyStructure.DispositionAndLanguage.language.getter()
{
  v1 = v0[5];
  sub_1B0716EC4(v1, v0[6], v0[7], v0[8]);
  return v1;
}

uint64_t BodyStructure.DispositionAndLanguage.language.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B075E4F8(v4[5], v4[6], v4[7], v4[8]);
  v4[5] = a1;
  v4[6] = a2;
  v4[7] = a3;
  v4[8] = a4;
  return result;
}

__n128 BodyStructure.DispositionAndLanguage.init(disposition:language:)@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a1[1];
  v17[0] = *a1;
  v17[1] = v7;
  v8 = a1[2].n128_u64[0];
  v12 = v17[0];
  v13 = v7;
  *&v14 = v8;
  *(&v14 + 1) = a2;
  *&v15 = a3;
  *(&v15 + 1) = a4;
  v16 = a5;
  v18 = v8;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  sub_1B0D7AEF8(&v12, v11);
  sub_1B0D7AF30(v17);
  v9 = v15;
  *(a6 + 32) = v14;
  *(a6 + 48) = v9;
  *(a6 + 64) = v16;
  result = v13;
  *a6 = v12;
  *(a6 + 16) = result;
  return result;
}

uint64_t BodyStructure.DispositionAndLanguage.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (!v2[1])
  {
    sub_1B0E46C68();
    goto LABEL_8;
  }

  v5 = v2[3];
  v4 = v2[4];
  v15 = v2;
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v6 = *(v4 + 16);
  MEMORY[0x1B2728D70](v6);

  if (!v6)
  {
LABEL_6:

    v2 = v15;
LABEL_8:
    v11 = v2[5];
    v12 = v2[6];
    v13 = v2[7];
    v14 = v2[8];

    return sub_1B0D4A030(a1, v11, v12, v13, v14);
  }

  v8 = 0;
  v9 = v4 + 40;
  v10 = v5 + 40;
  while (v8 < *(v5 + 16))
  {
    ++v8;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v9 += 16;
    v10 += 16;
    if (v6 == v8)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t BodyStructure.DispositionAndLanguage.hashValue.getter()
{
  sub_1B0E46C28();
  if (!v0[1])
  {
    sub_1B0E46C68();
    goto LABEL_8;
  }

  v2 = v0[3];
  v1 = v0[4];
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  v3 = *(v1 + 16);
  MEMORY[0x1B2728D70](v3);

  if (!v3)
  {
LABEL_6:

LABEL_8:
    sub_1B0D4A030(v8, v0[5], v0[6], v0[7], v0[8]);
    return sub_1B0E46CB8();
  }

  v5 = 0;
  v6 = v1 + 40;
  v7 = v2 + 40;
  while (v5 < *(v2 + 16))
  {
    ++v5;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();

    v6 += 16;
    v7 += 16;
    if (v3 == v5)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D7B1F4()
{
  v1 = v0[1];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[8];
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v1)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D3AB6C(v9, v2, v3);
  }

  sub_1B0D4A030(v9, v4, v5, v6, v7);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7B2B0(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  v5 = v1[7];
  v6 = v1[8];
  if (v1[1])
  {
    v8 = v1[3];
    v7 = v1[4];
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D3AB6C(a1, v8, v7);
  }

  else
  {
    sub_1B0E46C68();
  }

  return sub_1B0D4A030(a1, v3, v4, v5, v6);
}

uint64_t sub_1B0D7B368(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  sub_1B0E46C28();
  sub_1B0E46C68();
  if (v2)
  {
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    sub_1B0D3AB6C(v10, v3, v4);
  }

  sub_1B0D4A030(v10, v5, v6, v7, v8);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D7B420(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(v7, v9);
}

BOOL _s12NIOIMAPCore213BodyStructureO22DispositionAndLanguageV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[3];
  v9 = a2[4];
  if (!v2)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

LABEL_12:
    sub_1B0716E6C(*a2, a2[1]);
    sub_1B0716E6C(v3, v2);
    sub_1B075E4A0(v3, v2);
    sub_1B075E4A0(v7, v6);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v22 = a2;
  v23 = a1;
  v10 = v3 == v7 && v2 == v6;
  if (!v10 && (sub_1B0E46A78() & 1) == 0 || (sub_1B045202C(v4, v8) & 1) == 0)
  {
    sub_1B0716E6C(v7, v6);
    sub_1B0716E6C(v3, v2);

    sub_1B075E4A0(v3, v2);
    return 0;
  }

  v21 = sub_1B045202C(v5, v9);
  sub_1B0716E6C(v7, v6);
  sub_1B0716E6C(v3, v2);

  sub_1B075E4A0(v3, v2);
  a2 = v22;
  a1 = v23;
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v11 = a1[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a1[8];
  v16 = a2[5];
  v15 = a2[6];
  v17 = a2[7];
  v18 = a2[8];
  if (v11)
  {
    if (v16)
    {
      sub_1B0716EC4(a2[5], a2[6], v17, v18);
      sub_1B0716EC4(v11, v12, v13, v14);
      v19 = _s12NIOIMAPCore213BodyStructureO16LanguageLocationV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v12, v13, v14, v16, v15, v17, v18);

      sub_1B075E548(v15, v17, v18);
      sub_1B075E4F8(v11, v12, v13, v14);
      return v19;
    }

LABEL_19:
    sub_1B0716EC4(a2[5], a2[6], v17, v18);
    sub_1B0716EC4(v11, v12, v13, v14);
    sub_1B075E4F8(v11, v12, v13, v14);
    sub_1B075E4F8(v16, v15, v17, v18);
    return 0;
  }

  if (v16)
  {
    goto LABEL_19;
  }

  return 1;
}

unint64_t sub_1B0D7B778()
{
  result = qword_1EB6E7370;
  if (!qword_1EB6E7370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7370);
  }

  return result;
}

uint64_t sub_1B0D7B7CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 72))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D7B828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t EmailAddress.personName.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 22) = BYTE6(a3);
  *(v3 + 20) = WORD2(a3);
  *(v3 + 16) = a3;
  return result;
}

uint64_t EmailAddress.sourceRoot.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 24) = a1;
  *(v3 + 32) = a2;
  *(v3 + 46) = BYTE6(a3);
  *(v3 + 44) = WORD2(a3);
  *(v3 + 40) = a3;
  return result;
}

uint64_t EmailAddress.mailbox.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  *(v3 + 70) = BYTE6(a3);
  *(v3 + 68) = WORD2(a3);
  *(v3 + 64) = a3;
  return result;
}

uint64_t EmailAddress.host.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  *(v3 + 94) = BYTE6(a3);
  *(v3 + 92) = WORD2(a3);
  *(v3 + 88) = a3;
  return result;
}

double EmailAddress.init(personName:sourceRoot:mailbox:host:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, int a10, __int16 a11, char a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17)
{
  *&v22 = a1;
  *(&v22 + 1) = a2;
  LODWORD(v23) = a3;
  BYTE6(v23) = BYTE6(a3);
  WORD2(v23) = WORD2(a3);
  *(&v23 + 1) = a4;
  *&v24 = a5;
  DWORD2(v24) = a6;
  BYTE14(v24) = BYTE6(a6);
  WORD6(v24) = WORD2(a6);
  *&v25 = a7;
  *(&v25 + 1) = a8;
  *v26 = a10;
  v26[6] = a12;
  *&v26[4] = a11;
  *&v26[8] = a13;
  *&v26[16] = a14;
  *&v26[24] = a15;
  v26[30] = a17;
  *&v26[28] = a16;
  v27[0] = a1;
  v27[1] = a2;
  v28 = a3;
  v30 = BYTE6(a3);
  v29 = WORD2(a3);
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v35 = BYTE6(a6);
  v34 = WORD2(a6);
  v36 = a7;
  v37 = a8;
  v38 = a10;
  v40 = a12;
  v39 = a11;
  v41 = a13;
  v42 = a14;
  v43 = a15;
  v45 = a17;
  v44 = a16;
  sub_1B0D3CA68(&v22, &v21);
  sub_1B0D3CAC4(v27);
  v18 = v25;
  a9[2] = v24;
  a9[3] = v18;
  a9[4] = *v26;
  *(a9 + 79) = *&v26[15];
  result = *&v22;
  v20 = v23;
  *a9 = v22;
  a9[1] = v20;
  return result;
}

uint64_t EmailAddress.hash(into:)()
{
  if (*v0)
  {
    sub_1B0E46C68();
    swift_beginAccess();
    sub_1B0E46C38();
    if (v0[3])
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v0[3])
    {
LABEL_3:
      sub_1B0E46C68();
      swift_beginAccess();
      sub_1B0E46C38();
      if (v0[6])
      {
        goto LABEL_4;
      }

LABEL_8:
      sub_1B0E46C68();
      if (v0[9])
      {
        goto LABEL_5;
      }

      return sub_1B0E46C68();
    }
  }

  sub_1B0E46C68();
  if (!v0[6])
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_1B0E46C68();
  swift_beginAccess();
  sub_1B0E46C38();
  if (v0[9])
  {
LABEL_5:
    sub_1B0E46C68();
    swift_beginAccess();
    return sub_1B0E46C38();
  }

  return sub_1B0E46C68();
}

uint64_t EmailAddress.hashValue.getter()
{
  sub_1B0E46C28();
  EmailAddress.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7BE44()
{
  sub_1B0E46C28();
  EmailAddress.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7BE88(uint64_t a1)
{
  sub_1B0E46C28();
  EmailAddress.hash(into:)();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7BEC4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v7[2] = a1[2];
  v7[3] = v2;
  v8[0] = a1[4];
  *(v8 + 15) = *(a1 + 79);
  v3 = a1[1];
  v7[0] = *a1;
  v7[1] = v3;
  v4 = a2[3];
  v9[2] = a2[2];
  v9[3] = v4;
  v10[0] = a2[4];
  *(v10 + 15) = *(a2 + 79);
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  return _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(v7, v9) & 1;
}

uint64_t sub_1B0D7BF30(uint64_t *a1)
{
  v2 = v1;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    goto LABEL_53;
  }

  *(v1 + 20) = v10;
  v11 = *a1;
  if (*a1)
  {
    v12 = *(a1 + 4) | ((*(a1 + 10) | (*(a1 + 22) << 16)) << 32);
    v13 = a1[1];

    v15 = sub_1B0D4B6B8(v14, v13, v12);

    v16 = v8 + v15;
    if (!__OFADD__(v8, v15))
    {
      goto LABEL_6;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v10);
  if (v49)
  {
    v50._countAndFlagsBits = 4999502;
    v50._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v50, v10);
  }

  v51 = *(v1 + 20);
  v46 = __CFADD__(v51, result);
  v52 = v51 + result;
  if (v46)
  {
    goto LABEL_62;
  }

  *(v1 + 20) = v52;
  v16 = v8 + result;
  if (__OFADD__(v8, result))
  {
    goto LABEL_34;
  }

LABEL_6:
  v17 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v2 + 20);
  v8 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_54;
  }

  *(v2 + 20) = v8;
  v11 = v16 + result;
  if (__OFADD__(v16, result))
  {
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (a1[3])
  {
    v21 = *(a1 + 10) | ((*(a1 + 22) | (*(a1 + 46) << 16)) << 32);
    v8 = a1[4];

    v23 = sub_1B0D4B6B8(v22, v8, v21);

    v24 = v11 + v23;
    if (!__OFADD__(v11, v23))
    {
      goto LABEL_12;
    }

LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_35:
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v53)
  {
    v54._countAndFlagsBits = 4999502;
    v54._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v54, v8);
  }

  v55 = *(v2 + 20);
  v46 = __CFADD__(v55, result);
  v56 = v55 + result;
  if (v46)
  {
    goto LABEL_63;
  }

  *(v2 + 20) = v56;
  v24 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_40;
  }

LABEL_12:
  v25 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v25);
  if (v26)
  {
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v27, v25);
  }

  v28 = *(v2 + 20);
  v8 = (v28 + result);
  if (__CFADD__(v28, result))
  {
    goto LABEL_56;
  }

  *(v2 + 20) = v8;
  v11 = v24 + result;
  if (__OFADD__(v24, result))
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (a1[6])
  {
    v29 = *(a1 + 16) | ((*(a1 + 34) | (*(a1 + 70) << 16)) << 32);
    v8 = a1[7];

    v31 = sub_1B0D4B6B8(v30, v8, v29);

    v32 = v11 + v31;
    if (!__OFADD__(v11, v31))
    {
      goto LABEL_18;
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_41:
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v57)
  {
    v58._countAndFlagsBits = 4999502;
    v58._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v58, v8);
  }

  v59 = *(v2 + 20);
  v46 = __CFADD__(v59, result);
  v60 = v59 + result;
  if (v46)
  {
    goto LABEL_64;
  }

  *(v2 + 20) = v60;
  v32 = v11 + result;
  if (__OFADD__(v11, result))
  {
    goto LABEL_46;
  }

LABEL_18:
  v33 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v2 + 8, v33);
  if (v34)
  {
    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v35, v33);
  }

  v36 = *(v2 + 20);
  v8 = (v36 + result);
  if (__CFADD__(v36, result))
  {
    goto LABEL_58;
  }

  *(v2 + 20) = v8;
  v11 = v32 + result;
  if (__OFADD__(v32, result))
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (a1[9])
  {
    v37 = *(a1 + 22) | ((*(a1 + 46) | (*(a1 + 94) << 16)) << 32);
    v38 = a1[10];

    v40 = sub_1B0D4B6B8(v39, v38, v37);

    v41 = v11 + v40;
    if (!__OFADD__(v11, v40))
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_47:
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v8);
  if (v61)
  {
    v62._countAndFlagsBits = 4999502;
    v62._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v62, v8);
  }

  v63 = *(v2 + 20);
  v46 = __CFADD__(v63, result);
  v64 = v63 + result;
  if (v46)
  {
    goto LABEL_65;
  }

  *(v2 + 20) = v64;
  v41 = v11 + result;
  if (__OFADD__(v11, result))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_24:
  v42 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v42);
  if (v43)
  {
    v44._countAndFlagsBits = 41;
    v44._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v44, v42);
  }

  v45 = *(v2 + 20);
  v46 = __CFADD__(v45, result);
  v47 = v45 + result;
  if (v46)
  {
    goto LABEL_60;
  }

  *(v2 + 20) = v47;
  v48 = __OFADD__(v41, result);
  result += v41;
  if (v48)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
  }

  return result;
}

uint64_t _s12NIOIMAPCore212EmailAddressV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a1)
  {
    if (!v4)
    {
      return 0;
    }

    v5 = *(a1 + 8);
    v6 = *(a1 + 16) | ((*(a1 + 20) | (*(a1 + 22) << 16)) << 32);
    v7 = *(a2 + 8);
    v8 = *(a2 + 16) | ((*(a2 + 20) | (*(a2 + 22) << 16)) << 32);

    LOBYTE(v5) = sub_1B0C2DB54(v9, v5, v6 & 0xFFFFFFFFFFFFFFLL, v4, v7, v8 & 0xFFFFFFFFFFFFFFLL);

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!v10)
    {
      return 0;
    }

    v11 = *(a1 + 32);
    v12 = *(a1 + 40) | ((*(a1 + 44) | (*(a1 + 46) << 16)) << 32);
    v13 = *(a2 + 32);
    v14 = *(a2 + 40) | ((*(a2 + 44) | (*(a2 + 46) << 16)) << 32);

    LOBYTE(v11) = sub_1B0C2DB54(v15, v11, v12 & 0xFFFFFFFFFFFFFFLL, v10, v13, v14 & 0xFFFFFFFFFFFFFFLL);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v16 = *(a2 + 48);
  if (*(a1 + 48))
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *(a1 + 56);
    v18 = *(a1 + 64) | ((*(a1 + 68) | (*(a1 + 70) << 16)) << 32);
    v19 = *(a2 + 56);
    v20 = *(a2 + 64) | ((*(a2 + 68) | (*(a2 + 70) << 16)) << 32);

    LOBYTE(v17) = sub_1B0C2DB54(v21, v17, v18 & 0xFFFFFFFFFFFFFFLL, v16, v19, v20 & 0xFFFFFFFFFFFFFFLL);

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  v22 = *(a2 + 72);
  if (*(a1 + 72))
  {
    if (v22)
    {
      v23 = *(a1 + 80);
      v24 = *(a1 + 88) | ((*(a1 + 92) | (*(a1 + 94) << 16)) << 32);
      v25 = *(a2 + 80);
      v26 = *(a2 + 88) | ((*(a2 + 92) | (*(a2 + 94) << 16)) << 32);

      LOBYTE(v26) = sub_1B0C2DB54(v27, v23, v24 & 0xFFFFFFFFFFFFFFLL, v22, v25, v26 & 0xFFFFFFFFFFFFFFLL);

      if (v26)
      {
        return 1;
      }
    }
  }

  else if (!v22)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B0D7C5F8()
{
  result = qword_1EB6E7378;
  if (!qword_1EB6E7378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7378);
  }

  return result;
}

__n128 __swift_memcpy95_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 79) = *(a2 + 79);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B0D7C670(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 95))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B0D7C6CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 94) = 0;
    *(result + 92) = 0;
    *(result + 88) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 95) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1B0D7C750(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = sub_1B0A6D6C4(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v19 = result;
      v14 = sub_1B0E44E08();
      result = v19;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v7;
        v13 = v20;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v18 = result;
          v13 = sub_1B0E46368();
          result = v18;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = sub_1B0A6D6C4(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_31;
    }

    result = sub_1B0E44DD8();
LABEL_24:
    if (v14 != 95 && v14 != 45)
    {
      v16 = result;
      v17 = isalnum(v14);
      result = v16;
      if (!v17)
      {
        return 0;
      }
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

NIOIMAPCore2::EmailID_optional __swiftcall EmailID.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1B0E44CF8();
  if (v3 <= 0 || v3 >= 0x100 || (sub_1B0D7C750(countAndFlagsBits, object) & 1) == 0)
  {

    countAndFlagsBits = 0;
    object = 0;
  }

  v5 = countAndFlagsBits;
  v6 = object;
  result.value.objectID.rawValue._object = v6;
  result.value.objectID.rawValue._countAndFlagsBits = v5;
  result.is_nil = v4;
  return result;
}

uint64_t static EmailID.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EmailID.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

NIOIMAPCore2::EmailID __swiftcall EmailID.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  if (sub_1B0E44CF8() - 256) >= 0xFFFFFFFFFFFFFF01 && (sub_1B0D7C750(countAndFlagsBits, object))
  {
    v3 = countAndFlagsBits;
    v4 = object;
  }

  else
  {

    __break(1u);
  }

  result.objectID.rawValue._object = v4;
  result.objectID.rawValue._countAndFlagsBits = v3;
  return result;
}

unint64_t sub_1B0D7CA68@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  if (sub_1B0E44CF8() - 256) >= 0xFFFFFFFFFFFFFF01 && (result = sub_1B0D7C750(v4, v3), (result))
  {
    *a2 = v4;
    a2[1] = v3;
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t EmailID.debugDescription.getter()
{
  MEMORY[0x1B2726E80]();
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_1B0D7CB24()
{
  MEMORY[0x1B2726E80](*v0, v0[1]);
  MEMORY[0x1B2726E80](41, 0xE100000000000000);
  return 40;
}

unint64_t sub_1B0D7CB78()
{
  result = qword_1EB6E7380;
  if (!qword_1EB6E7380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7380);
  }

  return result;
}

unint64_t sub_1B0D7CBD0()
{
  result = qword_1EB6E7388;
  if (!qword_1EB6E7388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7388);
  }

  return result;
}

unint64_t sub_1B0D7CC28()
{
  result = qword_1EB6E7390;
  if (!qword_1EB6E7390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7390);
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.writeString(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = *(v1 + 20);
  result = sub_1B0CFC1B0(a1._countAndFlagsBits, a1._object, v1 + 8, v4);
  if (v6)
  {
    v7._countAndFlagsBits = countAndFlagsBits;
    v7._object = object;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
  }

  v8 = *(v1 + 20);
  v9 = __CFADD__(v8, result);
  v10 = v8 + result;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 20) = v10;
  }

  return result;
}

Swift::Int __swiftcall EncodeBuffer.markStopPoint()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) == 0)
  {
    sub_1B0D7D00C(*(v0 + 20));
  }

  return 0;
}

void EncodeBuffer.writeBuffer(_:)(uint64_t *a1)
{
  v2 = v1;
  if (*v1 == 1)
  {
    v3 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v3);

    MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
    v4 = *(v1 + 20);
    v5 = sub_1B0CFC1B0(0x5BuLL, 0xE100000000000000, v1 + 8, v4);
    if (v6)
    {
      v7._countAndFlagsBits = 91;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, v8);
    v11 = v9 + v8;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 20) = v11;
    }
  }

  else
  {
    ByteBuffer.writeBuffer(_:)(a1);
  }
}

unint64_t EncodeBuffer.writeBytes<A>(_:)(uint64_t a1)
{
  v2 = v1;
  v8 = MEMORY[0x1EEE9AC00](a1);
  if (*v1 != 1)
  {
    return ByteBuffer.writeBytes<A>(_:)(v3, v4, v5);
  }

  v23 = 91;
  v24 = 0xE100000000000000;
  (*(v7 + 16))(v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v3, v4, v8);
  v9 = *(sub_1B0E45378() + 16);

  v22[1] = v9;
  v10 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v10);

  MEMORY[0x1B2726E80](0x5D736574796220, 0xE700000000000000);
  v12 = v23;
  v11 = v24;
  v13 = *(v2 + 5);
  v14 = sub_1B0CFC1B0(v23, v24, (v2 + 8), v13);
  if (v15)
  {
    v16._countAndFlagsBits = v12;
    v16._object = v11;
    v14 = ByteBuffer._setStringSlowpath(_:at:)(v16, v13);
  }

  v17 = v14;

  v19 = *(v2 + 5);
  v20 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 5) = v21;
    return v17;
  }

  return result;
}

void sub_1B0D7D00C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1B0DFE704(v4);
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v4 + 2);
  if (v3 >= v5)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v6 = &v4[16 * v3];
  *(v6 + 4) = a1;
  v6[40] = 0;
  *v1 = v4;
  v7 = (v5 + 0x7FFFFFFFFFFFFFFFLL) & (v3 + 1);
  *(v1 + 16) = v7;
  if (*(v1 + 8) == v7)
  {

    sub_1B0D7347C();
  }
}

uint64_t sub_1B0D7D0BC(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v5 < v4;
  v7 = v5 - v4;
  if (v6)
  {
    v7 += *(v3 + 16);
  }

  if (v7 < result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
LABEL_13:
      v1[1] = v4;
      return result;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0DFE704(v3);
      v3 = result;
    }

    while ((v4 & 0x8000000000000000) == 0)
    {
      v8 = *(v3 + 16);
      if (v4 >= v8)
      {
        goto LABEL_15;
      }

      v9 = v3 + 32 + 16 * v4;
      *v9 = 0;
      *(v9 + 8) = 1;
      v4 = (v8 + 0x7FFFFFFFFFFFFFFFLL) & (v4 + 1);
      if (!--v2)
      {
        *v1 = v3;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1B0D7D178()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v3 - v2;
  if (v3 < v2)
  {
    v4 += *(v1 + 16);
  }

  if (v4 < 1)
  {
    return 0;
  }

  result = sub_1B0D7D1E8(v1, v2, v3);
  if ((v6 & 1) == 0)
  {
    v7 = result;
    sub_1B0D7D0BC(1);
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0D7D1E8(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a2 == a3)
  {
    return 0;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(a2))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (*(result + 16) <= a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v3 = result + 16 * a2;
  if (*(v3 + 40))
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return *(v3 + 32);
}

uint64_t sub_1B0D7D23C(uint64_t result, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, int64_t a6)
{
  v6 = a3 - a2;
  if (a3 < a2)
  {
    v6 += *(result + 16);
    v7 = a6 - a5;
    if (a6 >= a5)
    {
LABEL_3:
      if (v6 != v7)
      {
        return 0;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = a6 - a5;
    if (a6 >= a5)
    {
      goto LABEL_3;
    }
  }

  if (v6 != v7 + *(a4 + 16))
  {
    return 0;
  }

LABEL_7:
  if (a2 < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (HIDWORD(a2))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (a5 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(a5))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (a3 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (!HIDWORD(a3))
  {
    v8 = 0;
    v9 = 0;
    LODWORD(v10) = a5;
    LODWORD(v11) = a2;
    while (1)
    {
      if (a3 >= a2 != v9 && v11 == a3)
      {
        return 1;
      }

      v13 = v11;
      v14 = *(result + 16);
      if (v13 >= v14)
      {
        break;
      }

      v15 = result + 32 + 16 * v13;
      if (*(v15 + 8))
      {
        goto LABEL_43;
      }

      v11 = (v14 - 1) & (v13 + 1);
      v9 = v11 < a2;
      if (HIDWORD(v11))
      {
        goto LABEL_32;
      }

      if (a6 < 0)
      {
        goto LABEL_33;
      }

      if (HIDWORD(a6))
      {
        goto LABEL_34;
      }

      v16 = *v15;
      if (v10 == a6 && (((a6 >= a5) ^ v8) & 1) != 0)
      {
        return 1;
      }

      v17 = *(a4 + 16);
      if (v10 >= v17)
      {
        goto LABEL_35;
      }

      v18 = a4 + 32 + 16 * v10;
      if (*(v18 + 8))
      {
        goto LABEL_44;
      }

      v10 = (v17 - 1) & (v10 + 1);
      if (HIDWORD(v10))
      {
        goto LABEL_36;
      }

      v19 = *v18;
      v8 = v10 < a5;
      if (v16 != v19)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t EncodeBuffer.nextChunk()()
{
  if (((*(v0 + 1) | (*(v0 + 5) << 32)) & 0x8000000000000000) != 0)
  {
    goto LABEL_5;
  }

  v1 = sub_1B0D7D178();
  if (v2)
  {
    result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
    if (result)
    {
      return result;
    }

    __break(1u);
LABEL_5:
    result = ByteBuffer.readSlice(length:)((*(v0 + 20) - *(v0 + 16)));
    if (result)
    {
      return result;
    }

    goto LABEL_11;
  }

  v4 = *(v0 + 16);
  v5 = __OFSUB__(v1, v4);
  result = v1 - v4;
  if (v5)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (!result)
  {
LABEL_12:
    __break(1u);
  }

  return result;
}

uint64_t EncodeBuffer.Mode.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000) != 0)
  {
    MEMORY[0x1B2728D70](1);
  }

  else
  {
    MEMORY[0x1B2728D70](0);
    sub_1B0E46C68();
    sub_1B0E46C68();
    sub_1B0E46C68();
  }

  sub_1B0E46C68();
  return sub_1B0E46C68();
}

uint64_t EncodeBuffer.Mode.hashValue.getter(uint64_t a1)
{
  sub_1B0E46C28();
  EncodeBuffer.Mode.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7D544()
{
  v1 = *v0 | (*(v0 + 4) << 32);
  sub_1B0E46C28();
  EncodeBuffer.Mode.hash(into:)(v3, v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7D5A4(uint64_t a1)
{
  v2 = *v1 | (*(v1 + 4) << 32);
  sub_1B0E46C28();
  EncodeBuffer.Mode.hash(into:)(v4, v2);
  return sub_1B0E46CB8();
}

uint64_t EncodeBuffer.buffer.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *(v3 + 8) = a1;
  *(v3 + 16) = v5;
  *(v3 + 20) = v7;
  *(v3 + 24) = v4;
  *(v3 + 28) = v8;
  *(v3 + 30) = v9;
  return result;
}

uint64_t EncodeBuffer.stopPoints.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[4] = a1;
  v3[5] = a2;
  v3[6] = a3;
  return result;
}

void EncodeBuffer.hash(into:)(uint64_t a1)
{
  v2 = v1;
  sub_1B0E46C68();
  EncodeBuffer.Mode.hash(into:)(a1, *(v2 + 1) | (*(v2 + 5) << 32));
  swift_beginAccess();
  sub_1B0E46C38();
  sub_1B0D738D4(a1, *(v2 + 32), *(v2 + 40), *(v2 + 48));
}

uint64_t EncodeBuffer.hashValue.getter()
{
  v1 = v0;
  sub_1B0E46C28();
  sub_1B0E46C68();
  EncodeBuffer.Mode.hash(into:)(v3, *(v1 + 1) | (*(v1 + 5) << 32));
  swift_beginAccess();
  sub_1B0E46C38();
  sub_1B0D738D4(v3, *(v1 + 32), *(v1 + 40), *(v1 + 48));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7D90C(uint64_t a1)
{
  sub_1B0E46C28();
  EncodeBuffer.hash(into:)(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7D948(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t EncodeBuffer.Chunk.bytes.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  v9 = HIWORD(a3);

  *v3 = a1;
  *(v3 + 8) = v5;
  *(v3 + 12) = v7;
  *(v3 + 16) = v4;
  *(v3 + 20) = v8;
  *(v3 + 22) = v9;
  return result;
}

uint64_t EncodeBuffer.Chunk.hash(into:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  swift_beginAccess();
  sub_1B0E46C38();
  return sub_1B0E46C68();
}

uint64_t EncodeBuffer.Chunk.hashValue.getter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  sub_1B0E46C28();
  swift_beginAccess();
  sub_1B0E46C38();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7DBD4()
{
  v1 = 0x100000000000000;
  if (!*(v0 + 23))
  {
    v1 = 0;
  }

  return EncodeBuffer.Chunk.hashValue.getter(*v0, *(v0 + 8), *(v0 + 16) | (*(v0 + 20) << 32) | (*(v0 + 22) << 48) | v1);
}

uint64_t sub_1B0D7DC04(uint64_t a1)
{
  v2 = 0x100000000000000;
  if (!*(v1 + 23))
  {
    v2 = 0;
  }

  return EncodeBuffer.Chunk.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16) | (*(v1 + 20) << 32) | (*(v1 + 22) << 48) | v2);
}

uint64_t sub_1B0D7DC34(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 20);
  v6 = *(v1 + 22);
  v7 = *(v1 + 23);
  sub_1B0E46C28();
  v8 = 0x100000000000000;
  if (!v7)
  {
    v8 = 0;
  }

  EncodeBuffer.Chunk.hash(into:)(v10, v2, v3, v4 | (v5 << 32) | (v6 << 48) | v8);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7DCB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 23);
  v3 = *(a2 + 23);
  return sub_1B0C2DB54(*a1, *(a1 + 8), *(a1 + 16) | (*(a1 + 20) << 32) | (*(a1 + 22) << 48), *a2, *(a2 + 8), *(a2 + 16) | (*(a2 + 20) << 32) | (*(a2 + 22) << 48)) & ~(v2 ^ v3) & 1;
}

unint64_t EncodeBuffer.nextChunk(allowEmptyChunk:)(char a1)
{
  if (((*(v1 + 1) | (*(v1 + 5) << 32)) & 0x8000000000000000) != 0)
  {
    goto LABEL_7;
  }

  result = sub_1B0D7D178();
  v4 = *(v1 + 16);
  if (v5)
  {
    v6 = *(v1 + 20);
    if ((a1 & 1) != 0 || v6 != v4)
    {
      result = ByteBuffer.readSlice(length:)((v6 - v4));
      if (result)
      {
        return result;
      }

      __break(1u);
LABEL_7:
      result = ByteBuffer.readSlice(length:)((*(v1 + 20) - *(v1 + 16)));
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = __OFSUB__(result, v4);
  result -= v4;
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = ByteBuffer.readSlice(length:)(result);
  if (!result)
  {
LABEL_15:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall EncodeBuffer.clear()()
{
  v1 = v0;
  v2 = (v0 + 32);

  *v2 = MEMORY[0x1E69E7CC0];
  sub_1B0D7DEFC();
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4 >= *(*v2 + 24) >> 1)
  {
    sub_1B0D7DEFC();
    v3 = *v2;
  }

  *(v3 + 16) = v4 + 1;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    swift_beginAccess();
    v8 = ByteBuffer._Storage.allocateStorage(capacity:)(*(v7 + 16));

    *(v1 + 8) = v8;
    v7 = v8;
  }

  swift_beginAccess();
  *(v1 + 24) = *(v7 + 16);
  *(v1 + 28) = 0;
  *(v1 + 30) = 0;
  *(v1 + 16) = 0;
}

uint64_t sub_1B0D7DEFC()
{
  result = sub_1B0E08714();
  *v0 = result;
  return result;
}

uint64_t sub_1B0D7DF1C()
{
  result = sub_1B0E08718();
  *v0 = result;
  return result;
}

char *sub_1B0D7DF3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFDF84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0D7DF5C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFDFA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B0D7DF7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFDFBC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B0D7DF9C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B0DFE0F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1B0D7DFBC(unint64_t a1, unint64_t a2)
{
  if ((a1 & 0x8000000000) != 0)
  {
    if ((a2 ^ a1))
    {
      LOBYTE(v5) = 0;
    }

    else
    {
      v5 = (a1 >> 8) & 1 ^ ((a2 & 0x100) == 0);
    }

    if ((a2 & 0x8000000000) == 0)
    {
      LOBYTE(v5) = 0;
    }

    return v5 & 1;
  }

  else if ((a2 & 0x8000000000) != 0)
  {
    return 0;
  }

  else
  {
    v2 = vdupq_n_s64(a1);
    v3 = vdupq_n_s64(a2);
    *v2.i8 = vcltz_s16(vshl_n_s16(vmovn_s32(vmvnq_s8(veorq_s8(vuzp1q_s32(vceqzq_s64(vandq_s8(v2, xmmword_1B0EF2350)), vceqzq_s64(vandq_s8(v2, xmmword_1B0EF2360))), vuzp1q_s32(vceqzq_s64(vandq_s8(v3, xmmword_1B0EF2350)), vceqzq_s64(vandq_s8(v3, xmmword_1B0EF2360)))))), 0xFuLL));
    v2.i16[0] = vminv_u16(*v2.i8);
    return v2.i32[0] & (a2 ^ a1 ^ 1) & 1;
  }
}

uint64_t _s12NIOIMAPCore212EncodeBufferV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[5];
  v6 = a2[1];
  v7 = a2[2];
  v8 = *(a2 + 3) | (a2[5] << 16);
  if (v5 < 0)
  {
    if (v8 & 0x80000000) == 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7))
    {
      return 0;
    }
  }

  else if (v8 < 0 || ((v3 ^ v6) & 1) != 0 || ((v4 ^ v7) & 1) != 0 || ((a1[3] ^ v8) & 1) != 0 || ((a1[4] ^ ((*(a2 + 3) & 0x100) >> 8)) & 1) != 0 || ((v5 ^ ((v8 & 0x10000u) >> 16)) & 1) != 0)
  {
    return 0;
  }

  if (!sub_1B0C2DB54(*(a1 + 1), *(a1 + 2), *(a1 + 6) | (*(a1 + 14) << 32) | (a1[30] << 48), *(a2 + 1), *(a2 + 2), *(a2 + 6) | (*(a2 + 14) << 32) | (a2[30] << 48)))
  {
    return 0;
  }

  v11 = *(a1 + 4);
  v12 = *(a1 + 5);
  v13 = *(a1 + 6);
  v14 = *(a2 + 4);
  v15 = *(a2 + 5);
  v16 = *(a2 + 6);

  return sub_1B0D7D23C(v11, v12, v13, v14, v15, v16);
}

unint64_t sub_1B0D7E188()
{
  result = qword_1EB6E7398;
  if (!qword_1EB6E7398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E7398);
  }

  return result;
}

unint64_t sub_1B0D7E1E0()
{
  result = qword_1EB6E73A0;
  if (!qword_1EB6E73A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73A0);
  }

  return result;
}

unint64_t sub_1B0D7E238()
{
  result = qword_1EB6E73A8;
  if (!qword_1EB6E73A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73A8);
  }

  return result;
}

uint64_t sub_1B0D7E28C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = (a1 + 1);
  v3 = vld1q_dup_f32(v2);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_1B0EF1380), xmmword_1B0EF1390);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*(a1 + 5) >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t sub_1B0D7E314(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 56) = 1;
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
      v4 = -a2;
      v5 = vandq_s8(vshlq_u32(vdupq_n_s32(v4), xmmword_1B0EF13A0), xmmword_1B0EF13B0);
      *v5.i8 = vorr_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL));
      v6.i64[0] = v5.u32[0];
      v6.i64[1] = v5.u32[1];
      result = vorr_s8(v5.u32[0], *&vextq_s8(v6, v6, 8uLL));
      *(a1 + 5) = ((32 * v4) & 0x1E00000000uLL) >> 32;
      *(a1 + 1) = result.i32[0];
      return result;
    }

    *(a1 + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 5))
  {
    return *a1 + 0x80000000;
  }

  v3 = vld1q_dup_f32(a1);
  v2 = (a1 + 4);
  v4 = vandq_s8(vshlq_u32(v3, xmmword_1B0EF1380), xmmword_1B0EF1390);
  *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  v5 = v4.i32[0] | v4.i32[1] | (*v2 >> 1 << 28);
  if (v5 > 0x80000000)
  {
    v6 = ~v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

int8x8_t storeEnumTagSinglePayload for EncodeBuffer.Mode(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 4) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 5) = 1;
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
      v3 = -a2;
      v4 = vandq_s8(vshlq_u32(vdupq_n_s32(v3), xmmword_1B0EF13A0), xmmword_1B0EF13B0);
      *v4.i8 = vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
      v5.i64[0] = v4.u32[0];
      v5.i64[1] = v4.u32[1];
      result = vorr_s8(v4.u32[0], *&vextq_s8(v5, v5, 8uLL));
      *(a1 + 4) = ((32 * v3) & 0x1E00000000uLL) >> 32;
      *a1 = result.i32[0];
      return result;
    }

    *(a1 + 5) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unsigned int *sub_1B0D7E4E0(unsigned int *result, uint64_t a2)
{
  v2 = (*result | (*(result + 4) << 32)) & 0x101010101010101 | (a2 << 39);
  *result &= 0x1010101u;
  *(result + 4) = BYTE4(v2);
  return result;
}

uint64_t sub_1B0D7E524(uint64_t (*a1)(__int128 *))
{
  if (qword_1EB6DE5C0 != -1)
  {
    swift_once();
  }

  v2 = static ByteBufferAllocator.zeroCapacityWithDefaultAllocator;
  v3 = dword_1EB737EB8;
  v4 = word_1EB737EBC;
  v5 = byte_1EB737EBE;

  LOBYTE(v11) = 0;
  BYTE5(v11) = 0;
  *(&v11 + 1) = 65537;
  *(&v11 + 1) = v2;
  *&v12 = qword_1EB737EB0;
  DWORD2(v12) = v3;
  WORD6(v12) = v4;
  BYTE14(v12) = v5;
  *&v13 = sub_1B0D740DC(MEMORY[0x1E69E7CC0]);
  *(&v13 + 1) = v6;
  v14 = v7;
  result = a1(&v11);
  if (DWORD1(v12) < v12)
  {
    __break(1u);
  }

  else if (DWORD2(v12) - (BYTE14(v12) | (WORD6(v12) << 8)) >= DWORD1(v12))
  {
    v15[0] = *(&v11 + 1);
    v15[1] = v12;
    v16 = DWORD2(v12);
    v17 = WORD6(v12);
    v18 = BYTE14(v12);
    v19 = v12;
    v20 = DWORD1(v12);
    v9 = DWORD1(v12) - v12;
    *&v21[0] = 0;
    *(&v21[0] + 1) = 0xE000000000000000;

    MEMORY[0x1B2726D20](v9);
    sub_1B0D547AC(v15, v21);
    sub_1B04394F4(v15);
    v10 = *&v21[0];
    v21[0] = v11;
    v21[1] = v12;
    v21[2] = v13;
    v22 = v14;
    sub_1B0D7E6B4(v21);
    return v10;
  }

  __break(1u);
  return result;
}

uint64_t EncodedAuthenticationType.authenticationType.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EncodedAuthenticationType.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedAuthenticationType.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7E7EC()
{
  result = qword_1EB6E73B0;
  if (!qword_1EB6E73B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73B0);
  }

  return result;
}

uint64_t EncodedMailbox.mailbox.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EncodedMailbox.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedMailbox.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7E958()
{
  result = qword_1EB6E73B8;
  if (!qword_1EB6E73B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73B8);
  }

  return result;
}

uint64_t EncodedSearch.query.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EncodedSearch.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedSearch.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7EAC4()
{
  result = qword_1EB6E73C0;
  if (!qword_1EB6E73C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73C0);
  }

  return result;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t EncodedSearchQuery.mailboxUIDValidity.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *v3 = a1;
  *(v3 + 8) = a2;
  *(v3 + 16) = a3;
  *(v3 + 20) = BYTE4(a3) & 1;
  return result;
}

uint64_t EncodedSearchQuery.encodedSearch.getter()
{
  v1 = *(v0 + 24);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t EncodedSearchQuery.encodedSearch.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t EncodedSearchQuery.init(mailboxUIDValidity:encodedSearch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 20) = BYTE4(a3) & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

uint64_t EncodedSearchQuery.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v2 & 1) == 0)
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!*(v1 + 32))
  {
    return sub_1B0E46C68();
  }

LABEL_3:
  sub_1B0E46C68();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t EncodedSearchQuery.hashValue.getter()
{
  v1 = v0;
  sub_1B0E46C28();
  v2 = *(v0 + 20);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if ((v2 & 1) == 0)
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
    if (*(v1 + 32))
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!*(v1 + 32))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7EDF4(uint64_t a1)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 32);
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2 != 1)
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_1B0E46C68();
  }

  sub_1B0E46C68();
  if (!v3)
  {
    return sub_1B0E46C68();
  }

LABEL_3:
  sub_1B0E46C68();

  return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1B0D7EEB0(uint64_t a1)
{
  v2 = *(v1 + 20);
  v3 = *(v1 + 32);
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  if (v2 != 1)
  {
    sub_1B0E46C68();
    sub_1B0E46C88();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B0E46C68();
    return sub_1B0E46CB8();
  }

  sub_1B0E46C68();
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B0E46C68();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D7EF78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v7) & 1;
}

uint64_t _s12NIOIMAPCore218EncodedSearchQueryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 + 4);
  v5 = *(a1 + 20);
  v6 = *(a2 + 16);
  v7 = *(a2 + 20);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v8 && (sub_1B0E46A78() & 1) == 0)
  {
    return 0;
  }

  if (v5)
  {
    if ((v7 & 1) == 0)
    {
      return 0;
    }

LABEL_11:
    v10 = a1[4];
    v11 = *(a2 + 32);
    if (v10)
    {
      if (!v11 || (a1[3] != *(a2 + 24) || v10 != v11) && (sub_1B0E46A78() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v11)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if ((v7 & 1) == 0 && v4 == v6)
  {
    goto LABEL_11;
  }

  return result;
}

unint64_t sub_1B0D7F090()
{
  result = qword_1EB6E73C8;
  if (!qword_1EB6E73C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73C8);
  }

  return result;
}

uint64_t EncodedSection.section.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EncodedSection.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedSection.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7F1FC()
{
  result = qword_1EB6E73D0;
  if (!qword_1EB6E73D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73D0);
  }

  return result;
}

uint64_t static EncodedAuthenticatedURL.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedAuthenticatedURL.data.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncodedAuthenticatedURL.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7F368()
{
  result = qword_1EB6E73D8;
  if (!qword_1EB6E73D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73D8);
  }

  return result;
}

uint64_t static EncodedUser.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EncodedUser.data.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t EncodedUser.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7F4D4()
{
  result = qword_1EB6E73E0;
  if (!qword_1EB6E73E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73E0);
  }

  return result;
}

uint64_t BodyStructure.Encoding.init(_:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B0E44BB8();

  return v2;
}

uint64_t static BodyStructure.Encoding.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t BodyStructure.Encoding.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7F690()
{
  result = qword_1EB6E73E8;
  if (!qword_1EB6E73E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73E8);
  }

  return result;
}

uint64_t sub_1B0D7F6F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    MEMORY[0x1B2726E80](a1);
    MEMORY[0x1B2726E80](34, 0xE100000000000000);
    v3 = v2 + 5;
    v4 = v2[5];
    v5 = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, (v2 + 2), v4);
    if (v6)
    {
      v7._countAndFlagsBits = 34;
      v7._object = 0xE100000000000000;
      v5 = ByteBuffer._setStringSlowpath(_:at:)(v7, v4);
    }

    v8 = v5;

    result = v8;
    v10 = *v3 + v8;
    if (!__CFADD__(*v3, v8))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v12 = v3[5];
  v3 += 5;
  v11 = v12;
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, (v3 - 3), v12);
  if (v13)
  {
    v14._countAndFlagsBits = 4999502;
    v14._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v14, v11);
  }

  v10 = *v3 + result;
  if (!__CFADD__(*v3, result))
  {
LABEL_10:
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t EntryFlagName.flag.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static EntryFlagName.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EntryFlagName.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7F90C()
{
  result = qword_1EB6E73F0;
  if (!qword_1EB6E73F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73F0);
  }

  return result;
}

uint64_t sub_1B0D7F970(unint64_t a1, void *a2)
{
  v5 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x2F7367616C662F22uLL, 0xE800000000000000, v2 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 0x2F7367616C662F22;
    v8._object = 0xE800000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = result;
  v10 = *(v2 + 20);
  v11 = (v10 + result);
  if (__CFADD__(v10, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v2 + 20) = v11;
  result = sub_1B0CFC1B0(a1, a2, v2 + 8, v11);
  if (v12)
  {
    v13._countAndFlagsBits = a1;
    v13._object = a2;
    result = ByteBuffer._setStringSlowpath(_:at:)(v13, v11);
  }

  v14 = *(v2 + 20);
  v15 = (v14 + result);
  if (__CFADD__(v14, result))
  {
    goto LABEL_14;
  }

  *(v2 + 20) = v15;
  v16 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  result = sub_1B0CFC1B0(0x22uLL, 0xE100000000000000, v2 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = 34;
    v18._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = *(v2 + 20);
  v20 = __CFADD__(v19, result);
  v21 = v19 + result;
  if (v20)
  {
    goto LABEL_16;
  }

  *(v2 + 20) = v21;
  v22 = __OFADD__(v16, result);
  result += v16;
  if (v22)
  {
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t static EntryKindRequest.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1B0E46A78();
  }
}

uint64_t EntryKindRequest.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
  return sub_1B0E46CB8();
}

unint64_t sub_1B0D7FB7C()
{
  result = qword_1EB6E73F8;
  if (!qword_1EB6E73F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E73F8);
  }

  return result;
}

uint64_t sub_1B0D7FBE0(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v7)
    {
      v8._countAndFlagsBits = 0;
      v8._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
    }

    v9 = result;
    v10 = *(v1 + 20);
    v11 = __CFADD__(v10, result);
    v12 = v10 + result;
    if (v11)
    {
      goto LABEL_29;
    }

    *(v1 + 20) = v12;
  }

  else
  {
    v9 = 0;
    v12 = *(v1 + 20);
  }

  v13 = v12;
  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v12);
  if (v14)
  {
    v15._countAndFlagsBits = 40;
    v15._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v1 + 20);
  v11 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v11)
  {
    goto LABEL_24;
  }

  *(v1 + 20) = v17;
  v18 = v9 + result;
  if (__OFADD__(v9, result))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  MEMORY[0x1EEE9AC00](result);
  v31[2] = sub_1B0D80764;
  v31[3] = 0;
  v31[4] = v2;
  v31[5] = &v32;
  v31[6] = 32;
  v31[7] = 0xE100000000000000;
  result = sub_1B0DED0E0(0, sub_1B0D8074C, v31, a1);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v20 = *(v2 + 20);
  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v20);
  if (v21)
  {
    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v22, v20);
  }

  v23 = *(v2 + 20);
  v24 = (v23 + result);
  if (__CFADD__(v23, result))
  {
    goto LABEL_27;
  }

  *(v2 + 20) = v24;
  v25 = __OFADD__(v19, result);
  v26 = v19 + result;
  if (v25)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    return v26;
  }

  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v24);
  if (v27)
  {
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v28, v24);
  }

  v29 = *(v2 + 20);
  v11 = __CFADD__(v29, result);
  v30 = v29 + result;
  if (v11)
  {
    goto LABEL_30;
  }

  *(v2 + 20) = v30;
  v25 = __OFADD__(v26, result);
  result += v26;
  if (v25)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  return result;
}

void sub_1B0D7FE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = *(v3 + 20);
    v7 = sub_1B0CFC1B0(0, 0xE000000000000000, v3 + 8, v6);
    if (v8)
    {
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v7 = ByteBuffer._setStringSlowpath(_:at:)(v9, v6);
    }

    v10 = v7;
    v11 = *(v3 + 20);
    v12 = __CFADD__(v11, v7);
    v13 = v11 + v7;
    if (v12)
    {
      goto LABEL_55;
    }

    *(v3 + 20) = v13;
  }

  else
  {
    v10 = 0;
    v13 = *(v3 + 20);
  }

  v14 = v13;
  v15 = v3;
  v16 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v3 + 8, v13);
  if (v17)
  {
    v18._countAndFlagsBits = 40;
    v18._object = 0xE100000000000000;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v14);
  }

  v19 = *(v3 + 20);
  v12 = __CFADD__(v19, v16);
  v20 = v19 + v16;
  if (v12)
  {
    goto LABEL_50;
  }

  *(v3 + 20) = v20;
  if (__OFADD__(v10, v16))
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v72 = v10 + v16;
  v76 = v3;
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  if (v5)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v74 = v5;
    v75 = v5 - 1;
    v73 = a2;
    while (v23 < *(a2 + 16))
    {
      v86 = v22;
      v24 = *(a2 + v21 + 32);
      v26 = *(a2 + v21 + 40);
      v25 = *(a2 + v21 + 44);
      v27 = *(a2 + v21 + 48);
      v28 = *(a2 + v21 + 52);
      v29 = *(a2 + v21 + 54);
      v78 = v23;
      v79 = v21;
      v30 = *(a3 + v21 + 48);
      v32 = *(a3 + v21 + 32);
      v31 = *(a3 + v21 + 40);
      v33 = *(a3 + v21 + 52) | (*(a3 + v21 + 54) << 16);
      v103[0] = v23;
      v103[1] = v24;
      v104 = v26;
      v105 = v25;
      v106 = v27;
      v107 = v28;
      v108 = v29;
      v109 = v32;
      v110 = v31;
      v111 = v30;
      v113 = BYTE2(v33);
      v80 = v33;
      v112 = v33;
      v114 = v24;
      v115 = v26;
      v116 = v25;
      v117 = v27;
      v118 = v28;
      v119 = v29;
      v120 = v32;
      v121 = v31;
      v124 = BYTE2(v33);
      v123 = v33;
      v122 = v30;
      v125 = v24;
      v126 = v26;
      v127 = v25;
      v84 = v27;
      v128 = v27;
      v129 = v28;
      v130 = v29;
      v131 = v32;
      v132 = v31;
      v81 = v31;
      v135 = BYTE2(v33);
      v134 = v33;
      v133 = v30;
      swift_retain_n();
      swift_retain_n();
      sub_1B0D803F4(&v114, &v92);
      sub_1B0D803F4(&v125, &v92);

      v90 = v132;
      v91 = v131;
      v88 = v134;
      v89 = v135;
      v82 = v25;
      v87 = v133;
      swift_beginAccess();
      v85 = v28;
      v83 = v29;

      v34 = sub_1B0E44C68();
      v36 = v35;

      sub_1B0DD55E0(v34, v36);
      v38 = v37;

      v39 = *(v15 + 20);
      v40 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v15 + 8, v39);
      if (v41)
      {
        v42._countAndFlagsBits = 32;
        v42._object = 0xE100000000000000;
        v40 = ByteBuffer._setStringSlowpath(_:at:)(v42, v39);
      }

      v43 = *(v15 + 20);
      v12 = __CFADD__(v43, v40);
      v44 = v43 + v40;
      if (v12)
      {
        goto LABEL_44;
      }

      v45 = v103[0];
      *(v15 + 20) = v44;
      v46 = v38 + v40;
      if (__OFADD__(v38, v40))
      {
        goto LABEL_45;
      }

      v47 = sub_1B0DEFBDC(v91, v90, (v87 | ((v88 | (v89 << 16)) << 32)) & 0xFFFFFFFFFFFFFFLL);
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        goto LABEL_46;
      }

      v49 = v86 + v48;
      if (__OFADD__(v86, v48))
      {
        goto LABEL_47;
      }

      v50 = v30 | (v80 << 32);
      if (v45 >= v75)
      {
        v92 = v24;
        v93 = v26;
        v94 = v82;
        v95 = v84;
        v96 = v85;
        v97 = v83;
        v98 = v32;
        v99 = v81;
        v100 = v50;
        v102 = BYTE6(v50);
        v101 = WORD2(v50);
        sub_1B0398EFC(&v92, &qword_1EB6E7400, "jF\a");
        sub_1B0398EFC(v103, &qword_1EB6E7408, &qword_1B0EF2C20);
        v55 = 0;
        v15 = v76;
      }

      else
      {
        v15 = v76;
        v51 = *(v76 + 20);
        v52 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v76 + 8, v51);
        if (v53)
        {
          v54._countAndFlagsBits = 32;
          v54._object = 0xE100000000000000;
          v52 = ByteBuffer._setStringSlowpath(_:at:)(v54, v51);
        }

        v55 = v52;
        v92 = v24;
        v93 = v26;
        v94 = v82;
        v95 = v84;
        v96 = v85;
        v97 = v83;
        v98 = v32;
        v99 = v81;
        v100 = v50;
        v102 = BYTE6(v50);
        v101 = WORD2(v50);
        sub_1B0398EFC(&v92, &qword_1EB6E7400, "jF\a");
        sub_1B0398EFC(v103, &qword_1EB6E7408, &qword_1B0EF2C20);
        v56 = *(v76 + 20);
        v12 = __CFADD__(v56, v55);
        v57 = v56 + v55;
        if (v12)
        {
          goto LABEL_49;
        }

        *(v76 + 20) = v57;
      }

      v58 = __OFADD__(v49, v55);
      v22 = v49 + v55;
      v5 = v74;
      if (v58)
      {
        goto LABEL_48;
      }

      v23 = v78 + 1;
      v21 = v79 + 24;
      a2 = v73;
      if (v74 == v78 + 1)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_43;
  }

  v22 = 0;
LABEL_30:

  v59 = v72 + v22;
  if (__OFADD__(v72, v22))
  {
    goto LABEL_52;
  }

  v60 = *(v76 + 20);
  v61 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v76 + 8, v60);
  if (v62)
  {
    v63._countAndFlagsBits = 41;
    v63._object = 0xE100000000000000;
    v61 = ByteBuffer._setStringSlowpath(_:at:)(v63, v60);
  }

  v64 = *(v76 + 20);
  v65 = (v64 + v61);
  if (__CFADD__(v64, v61))
  {
    goto LABEL_53;
  }

  *(v76 + 20) = v65;
  v58 = __OFADD__(v59, v61);
  v66 = v59 + v61;
  if (v58)
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
    return;
  }

  if (v5)
  {
    v67 = sub_1B0CFC1B0(0, 0xE000000000000000, v76 + 8, v65);
    if (v68)
    {
      v69._countAndFlagsBits = 0;
      v69._object = 0xE000000000000000;
      v67 = ByteBuffer._setStringSlowpath(_:at:)(v69, v65);
    }

    v70 = *(v76 + 20);
    v12 = __CFADD__(v70, v67);
    v71 = v70 + v67;
    if (v12)
    {
      goto LABEL_56;
    }

    *(v76 + 20) = v71;
    if (__OFADD__(v66, v67))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }
  }
}

uint64_t sub_1B0D803F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E7400, "jF\a");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0D80464(uint64_t result)
{
  v2 = v1;
  v3 = result;
  v20 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = *(v1 + 20);
    result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v5);
    if (v6)
    {
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      result = ByteBuffer._setStringSlowpath(_:at:)(v7, v5);
    }

    v8 = result;
    v9 = *(v2 + 20);
    v10 = __CFADD__(v9, result);
    v11 = v9 + result;
    if (v10)
    {
      goto LABEL_17;
    }

    *(v2 + 20) = v11;
  }

  else
  {
    v8 = 0;
  }

  MEMORY[0x1EEE9AC00](result);
  v19[2] = sub_1B0D80764;
  v19[3] = 0;
  v19[4] = v2;
  v19[5] = &v20;
  v19[6] = 32;
  v19[7] = 0xE100000000000000;
  result = sub_1B0DED0E0(0, sub_1B0D80710, v19, v3);
  v12 = v8 + result;
  if (__OFADD__(v8, result))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (!v4)
  {
    result += v8;
    return result;
  }

  v13 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v13);
  if (v14)
  {
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v15, v13);
  }

  v16 = *(v2 + 20);
  v10 = __CFADD__(v16, result);
  v17 = v16 + result;
  if (v10)
  {
    goto LABEL_18;
  }

  *(v2 + 20) = v17;
  v18 = __OFADD__(v12, result);
  result += v12;
  if (v18)
  {
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1B0D805E0(uint64_t *a1)
{
  swift_beginAccess();

  v1 = sub_1B0E44C68();
  v3 = v2;

  sub_1B0DD55E0(v1, v3);
  v5 = v4;

  return v5;
}

uint64_t sub_1B0D80694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t a7@<X6>, void *a8@<X7>, uint64_t *a9@<X8>)
{
  result = sub_1B0E26614(*a1, *a2, *(a2 + 8), *(a2 + 16), *(a2 + 24) | (*(a2 + 28) << 32) | (*(a2 + 30) << 48), a3, a4, a5, *a6, a7, a8);
  if (!v9)
  {
    *a9 = result;
  }

  return result;
}

uint64_t Envelope.date.getter()
{
  v1 = *v0;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Envelope.date.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Envelope.subject.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 38) = BYTE6(a3);
  *(v3 + 36) = WORD2(a3);
  *(v3 + 32) = a3;
  return result;
}

uint64_t Envelope.from.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t Envelope.sender.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t Envelope.reply.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t Envelope.to.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Envelope.cc.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Envelope.bcc.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

uint64_t Envelope.inReplyTo.getter()
{
  v1 = *(v0 + 88);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Envelope.inReplyTo.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t Envelope.messageID.getter()
{
  v1 = *(v0 + 104);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v1;
}

uint64_t Envelope.messageID.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

double Envelope.init(date:subject:from:sender:reply:to:cc:bcc:inReplyTo:messageID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13)
{
  *&v21 = a1;
  *(&v21 + 1) = a2;
  *&v22 = a3;
  *(&v22 + 1) = a4;
  LODWORD(v23) = a5;
  BYTE6(v23) = BYTE6(a5);
  WORD2(v23) = WORD2(a5);
  *(&v23 + 1) = a6;
  *&v24 = a7;
  *(&v24 + 1) = a8;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29[0] = a1;
  v29[1] = a2;
  v29[2] = a3;
  v29[3] = a4;
  v30 = a5;
  v32 = BYTE6(a5);
  v31 = WORD2(a5);
  v33 = a6;
  v34 = a7;
  v35 = a8;
  v36 = a10;
  v37 = a11;
  v38 = a12;
  v39 = a13;
  sub_1B0D0486C(&v21, v20);
  sub_1B0D80C80(v29);
  v14 = v26;
  v15 = v27;
  v16 = v24;
  *(a9 + 64) = v25;
  *(a9 + 80) = v14;
  *(a9 + 96) = v15;
  result = *&v21;
  v18 = v22;
  v19 = v23;
  *a9 = v21;
  *(a9 + 16) = v18;
  *(a9 + 112) = v28;
  *(a9 + 32) = v19;
  *(a9 + 48) = v16;
  return result;
}

uint64_t Envelope.hash(into:)(uint64_t a1)
{
  v2 = v1;
  if (v2[1])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[2])
    {
LABEL_3:
      sub_1B0E46C68();
      swift_beginAccess();
      sub_1B0E46C38();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v2[2])
    {
      goto LABEL_3;
    }
  }

  sub_1B0E46C68();
LABEL_6:
  sub_1B0D448C4(a1, v2[5]);
  sub_1B0D448C4(a1, v2[6]);
  sub_1B0D448C4(a1, v2[7]);
  sub_1B0D448C4(a1, v2[8]);
  sub_1B0D448C4(a1, v2[9]);
  sub_1B0D448C4(a1, v2[10]);
  if (v2[12])
  {
    sub_1B0E46C68();
    _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    if (v2[14])
    {
LABEL_8:
      sub_1B0E46C68();
      return _s9IMAP2MIME6ListIDV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    sub_1B0E46C68();
    if (v2[14])
    {
      goto LABEL_8;
    }
  }

  return sub_1B0E46C68();
}

uint64_t Envelope.hashValue.getter()
{
  sub_1B0E46C28();
  Envelope.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D80E64()
{
  sub_1B0E46C28();
  Envelope.hash(into:)(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0D80EA8(uint64_t a1)
{
  sub_1B0E46C28();
  Envelope.hash(into:)(v2);
  return sub_1B0E46CB8();
}

BOOL sub_1B0D80EE4(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 80);
  v12[4] = *(a1 + 64);
  v12[5] = v2;
  v12[6] = *(a1 + 96);
  v13 = *(a1 + 112);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v4 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v4;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[3];
  v14[2] = a2[2];
  v14[3] = v7;
  v14[0] = v5;
  v14[1] = v6;
  v8 = a2[4];
  v9 = a2[5];
  v10 = a2[6];
  v15 = *(a2 + 14);
  v14[5] = v9;
  v14[6] = v10;
  v14[4] = v8;
  return _s12NIOIMAPCore28EnvelopeV23__derived_struct_equalsySbAC_ACtFZ_0(v12, v14);
}

uint64_t sub_1B0D80F68(void *a1)
{
  v2 = v1;
  v3 = *(v1 + 20);
  if (!a1[2])
  {
    goto LABEL_20;
  }

  result = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, *(v1 + 20));
  if (v6)
  {
    v7._countAndFlagsBits = 40;
    v7._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v7, v3);
  }

  v8 = result;
  v9 = *(v1 + 20);
  v10 = (v9 + result);
  if (__CFADD__(v9, result))
  {
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  *(v1 + 20) = v10;
  v34 = a1;
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v1 + 8, v10);
  if (v11)
  {
    v12._countAndFlagsBits = 0;
    v12._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v12, v10);
  }

  v13 = result;
  v14 = *(v2 + 20);
  v15 = __CFADD__(v14, result);
  v16 = v14 + result;
  if (v15)
  {
    goto LABEL_26;
  }

  *(v2 + 20) = v16;
  MEMORY[0x1EEE9AC00](result);
  v33[2] = sub_1B0D811AC;
  v33[3] = 0;
  v33[4] = v2;
  v33[5] = &v34;
  v33[6] = 0;
  v33[7] = 0xE000000000000000;
  result = sub_1B0DE5CC4(0, sub_1B0D81BDC, v33, a1);
  v3 = v13 + result;
  if (__OFADD__(v13, result))
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v17 = *(v2 + 20);
  result = sub_1B0CFC1B0(0, 0xE000000000000000, v2 + 8, v17);
  if (v18)
  {
    v19._countAndFlagsBits = 0;
    v19._object = 0xE000000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v19, v17);
  }

  v20 = *(v2 + 20);
  v21 = (v20 + result);
  if (__CFADD__(v20, result))
  {
    goto LABEL_28;
  }

  *(v2 + 20) = v21;
  v22 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v23 = __OFADD__(v8, v22);
  v24 = v8 + v22;
  if (v23)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  result = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v2 + 8, v21);
  if (v25)
  {
    v26._countAndFlagsBits = 41;
    v26._object = 0xE100000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v26, v21);
  }

  v27 = *(v2 + 20);
  v15 = __CFADD__(v27, result);
  v28 = v27 + result;
  if (v15)
  {
    goto LABEL_31;
  }

  *(v2 + 20) = v28;
  v23 = __OFADD__(v24, result);
  result += v24;
  if (!v23)
  {
    return result;
  }

  __break(1u);
LABEL_20:
  result = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v2 + 8, v3);
  if (v29)
  {
    v30._countAndFlagsBits = 4999502;
    v30._object = 0xE300000000000000;
    result = ByteBuffer._setStringSlowpath(_:at:)(v30, v3);
  }

  v31 = *(v2 + 20);
  v15 = __CFADD__(v31, result);
  v32 = v31 + result;
  if (v15)
  {
    goto LABEL_32;
  }

  *(v2 + 20) = v32;
  return result;
}

uint64_t sub_1B0D811AC(unint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    v5 = v1 & 0x7FFFFFFFFFFFFFFFLL;
    v6 = *(v5 + 32);
    v9 = *(v5 + 16);
    v10 = v6;
    v11 = *(v5 + 48);
    *&v12 = *(v5 + 64);
    sub_1B0D3C9B8(&v9, v8);
    v4 = sub_1B0DD4B20(&v9);
    sub_1B0D3CA14(&v9);
  }

  else
  {
    v2 = *(v1 + 64);
    v11 = *(v1 + 48);
    v12 = v2;
    v13[0] = *(v1 + 80);
    *(v13 + 15) = *(v1 + 95);
    v3 = *(v1 + 32);
    v9 = *(v1 + 16);
    v10 = v3;
    sub_1B0D3CA68(&v9, v8);
    v4 = sub_1B0D7BF30(&v9);
    sub_1B0D3CAC4(&v9);
  }

  return v4;
}

void sub_1B0D81260(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 20);
  v6 = sub_1B0CFC1B0(0x28uLL, 0xE100000000000000, v1 + 8, v5);
  if (v7)
  {
    v8._countAndFlagsBits = 40;
    v8._object = 0xE100000000000000;
    v6 = ByteBuffer._setStringSlowpath(_:at:)(v8, v5);
  }

  v9 = v6;
  v10 = *(v1 + 20);
  v11 = (v10 + v6);
  if (__CFADD__(v10, v6))
  {
    goto LABEL_83;
  }

  *(v1 + 20) = v11;
  v12 = *(a1 + 8);
  if (v12)
  {
    sub_1B0DD55E0(*a1, v12);
    v14 = v9 + v13;
    if (!__OFADD__(v9, v13))
    {
      goto LABEL_6;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v102 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v11);
  if (v103)
  {
    v104._countAndFlagsBits = 4999502;
    v104._object = 0xE300000000000000;
    v102 = ByteBuffer._setStringSlowpath(_:at:)(v104, v11);
  }

  v105 = *(v1 + 20);
  v29 = __CFADD__(v105, v102);
  v106 = v105 + v102;
  if (v29)
  {
    goto LABEL_110;
  }

  *(v1 + 20) = v106;
  v14 = v9 + v102;
  if (__OFADD__(v9, v102))
  {
    goto LABEL_64;
  }

LABEL_6:
  v15 = *(v1 + 20);
  v16 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v1 + 8, v15);
  if (v17)
  {
    v18._countAndFlagsBits = 32;
    v18._object = 0xE100000000000000;
    v16 = ByteBuffer._setStringSlowpath(_:at:)(v18, v15);
  }

  v19 = *(v1 + 20);
  v9 = (v19 + v16);
  if (__CFADD__(v19, v16))
  {
    goto LABEL_84;
  }

  *(v1 + 20) = v9;
  v2 = v14 + v16;
  if (__OFADD__(v14, v16))
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (*(a1 + 16))
  {
    v20 = *(a1 + 32) | ((*(a1 + 36) | (*(a1 + 38) << 16)) << 32);
    v9 = *(a1 + 24);

    v22 = sub_1B0D4B6B8(v21, v9, v20);

    v23 = v2 + v22;
    if (!__OFADD__(v2, v22))
    {
      goto LABEL_12;
    }

LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

LABEL_65:
  v107 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v1 + 8, v9);
  if (v108)
  {
    v109._countAndFlagsBits = 4999502;
    v109._object = 0xE300000000000000;
    v107 = ByteBuffer._setStringSlowpath(_:at:)(v109, v9);
  }

  v110 = *(v1 + 20);
  v29 = __CFADD__(v110, v107);
  v111 = v110 + v107;
  if (v29)
  {
    goto LABEL_111;
  }

  *(v1 + 20) = v111;
  v23 = v2 + v107;
  if (__OFADD__(v2, v107))
  {
    goto LABEL_70;
  }

LABEL_12:
  v24 = *(v3 + 20);
  v25 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v24);
  if (v26)
  {
    v27._countAndFlagsBits = 32;
    v27._object = 0xE100000000000000;
    v25 = ByteBuffer._setStringSlowpath(_:at:)(v27, v24);
  }

  v28 = *(v3 + 20);
  v29 = __CFADD__(v28, v25);
  v30 = v28 + v25;
  if (v29)
  {
    goto LABEL_86;
  }

  *(v3 + 20) = v30;
  v31 = v23 + v25;
  if (__OFADD__(v23, v25))
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v32 = sub_1B0D80F68(*(a1 + 40));
  v33 = v31 + v32;
  if (__OFADD__(v31, v32))
  {
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v34 = *(v3 + 20);
  v35 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v34);
  if (v36)
  {
    v37._countAndFlagsBits = 32;
    v37._object = 0xE100000000000000;
    v35 = ByteBuffer._setStringSlowpath(_:at:)(v37, v34);
  }

  v38 = *(v3 + 20);
  v29 = __CFADD__(v38, v35);
  v39 = v38 + v35;
  if (v29)
  {
    goto LABEL_89;
  }

  *(v3 + 20) = v39;
  v40 = v33 + v35;
  if (__OFADD__(v33, v35))
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v41 = sub_1B0D80F68(*(a1 + 48));
  v42 = v40 + v41;
  if (__OFADD__(v40, v41))
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v43 = *(v3 + 20);
  v44 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v43);
  if (v45)
  {
    v46._countAndFlagsBits = 32;
    v46._object = 0xE100000000000000;
    v44 = ByteBuffer._setStringSlowpath(_:at:)(v46, v43);
  }

  v47 = *(v3 + 20);
  v29 = __CFADD__(v47, v44);
  v48 = v47 + v44;
  if (v29)
  {
    goto LABEL_92;
  }

  *(v3 + 20) = v48;
  v49 = v42 + v44;
  if (__OFADD__(v42, v44))
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v50 = sub_1B0D80F68(*(a1 + 56));
  v51 = v49 + v50;
  if (__OFADD__(v49, v50))
  {
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v52 = *(v3 + 20);
  v53 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v52);
  if (v54)
  {
    v55._countAndFlagsBits = 32;
    v55._object = 0xE100000000000000;
    v53 = ByteBuffer._setStringSlowpath(_:at:)(v55, v52);
  }

  v56 = *(v3 + 20);
  v29 = __CFADD__(v56, v53);
  v57 = v56 + v53;
  if (v29)
  {
    goto LABEL_95;
  }

  *(v3 + 20) = v57;
  v58 = v51 + v53;
  if (__OFADD__(v51, v53))
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  v59 = sub_1B0D80F68(*(a1 + 64));
  v60 = v58 + v59;
  if (__OFADD__(v58, v59))
  {
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
    goto LABEL_99;
  }

  v61 = *(v3 + 20);
  v62 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v61);
  if (v63)
  {
    v64._countAndFlagsBits = 32;
    v64._object = 0xE100000000000000;
    v62 = ByteBuffer._setStringSlowpath(_:at:)(v64, v61);
  }

  v65 = *(v3 + 20);
  v29 = __CFADD__(v65, v62);
  v66 = v65 + v62;
  if (v29)
  {
    goto LABEL_98;
  }

  *(v3 + 20) = v66;
  v67 = v60 + v62;
  if (__OFADD__(v60, v62))
  {
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v68 = sub_1B0D80F68(*(a1 + 72));
  v69 = v67 + v68;
  if (__OFADD__(v67, v68))
  {
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v70 = *(v3 + 20);
  v71 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v70);
  if (v72)
  {
    v73._countAndFlagsBits = 32;
    v73._object = 0xE100000000000000;
    v71 = ByteBuffer._setStringSlowpath(_:at:)(v73, v70);
  }

  v74 = *(v3 + 20);
  v29 = __CFADD__(v74, v71);
  v75 = v74 + v71;
  if (v29)
  {
    goto LABEL_101;
  }

  *(v3 + 20) = v75;
  v76 = v69 + v71;
  if (__OFADD__(v69, v71))
  {
LABEL_102:
    __break(1u);
    goto LABEL_103;
  }

  v77 = sub_1B0D80F68(*(a1 + 80));
  v78 = v76 + v77;
  if (__OFADD__(v76, v77))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v79 = *(v3 + 20);
  v80 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v79);
  if (v81)
  {
    v82._countAndFlagsBits = 32;
    v82._object = 0xE100000000000000;
    v80 = ByteBuffer._setStringSlowpath(_:at:)(v82, v79);
  }

  v83 = *(v3 + 20);
  v9 = (v83 + v80);
  if (__CFADD__(v83, v80))
  {
    goto LABEL_104;
  }

  *(v3 + 20) = v9;
  v84 = __OFADD__(v78, v80);
  v23 = v78 + v80;
  if (v84)
  {
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  v85 = *(a1 + 96);
  if (v85)
  {
    sub_1B0DD55E0(*(a1 + 88), v85);
    v84 = __OFADD__(v23, v86);
    v87 = v23 + v86;
    if (!v84)
    {
      goto LABEL_48;
    }

LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

LABEL_71:
  v112 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v3 + 8, v9);
  if (v113)
  {
    v114._countAndFlagsBits = 4999502;
    v114._object = 0xE300000000000000;
    v112 = ByteBuffer._setStringSlowpath(_:at:)(v114, v9);
  }

  v115 = *(v3 + 20);
  v29 = __CFADD__(v115, v112);
  v116 = v115 + v112;
  if (v29)
  {
    goto LABEL_112;
  }

  *(v3 + 20) = v116;
  v84 = __OFADD__(v23, v112);
  v87 = v23 + v112;
  if (v84)
  {
    goto LABEL_76;
  }

LABEL_48:
  v88 = *(v3 + 20);
  v89 = sub_1B0CFC1B0(0x20uLL, 0xE100000000000000, v3 + 8, v88);
  if (v90)
  {
    v91._countAndFlagsBits = 32;
    v91._object = 0xE100000000000000;
    v89 = ByteBuffer._setStringSlowpath(_:at:)(v91, v88);
  }

  v92 = *(v3 + 20);
  v9 = (v92 + v89);
  if (__CFADD__(v92, v89))
  {
    goto LABEL_106;
  }

  *(v3 + 20) = v9;
  v84 = __OFADD__(v87, v89);
  v87 += v89;
  if (v84)
  {
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  v93 = *(a1 + 112);
  if (v93)
  {
    sub_1B0DD55E0(*(a1 + 104), v93);
    v95 = v87 + v94;
    if (!__OFADD__(v87, v94))
    {
      goto LABEL_54;
    }

    goto LABEL_82;
  }

LABEL_77:
  v117 = sub_1B0CFC1B0(0x4C494EuLL, 0xE300000000000000, v3 + 8, v9);
  if (v118)
  {
    v119._countAndFlagsBits = 4999502;
    v119._object = 0xE300000000000000;
    v117 = ByteBuffer._setStringSlowpath(_:at:)(v119, v9);
  }

  v120 = *(v3 + 20);
  v29 = __CFADD__(v120, v117);
  v121 = v120 + v117;
  if (v29)
  {
    goto LABEL_113;
  }

  *(v3 + 20) = v121;
  v95 = v87 + v117;
  if (__OFADD__(v87, v117))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

LABEL_54:
  v96 = *(v3 + 20);
  v97 = sub_1B0CFC1B0(0x29uLL, 0xE100000000000000, v3 + 8, v96);
  if (v98)
  {
    v99._countAndFlagsBits = 41;
    v99._object = 0xE100000000000000;
    v97 = ByteBuffer._setStringSlowpath(_:at:)(v99, v96);
  }

  v100 = *(v3 + 20);
  v29 = __CFADD__(v100, v97);
  v101 = v100 + v97;
  if (v29)
  {
    goto LABEL_108;
  }

  *(v3 + 20) = v101;
  if (__OFADD__(v95, v97))
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
  }
}