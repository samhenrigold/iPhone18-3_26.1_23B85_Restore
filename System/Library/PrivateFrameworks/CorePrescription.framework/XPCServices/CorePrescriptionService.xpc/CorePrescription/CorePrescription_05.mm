uint64_t sub_10007A980(uint64_t a1)
{
  v2 = sub_100006940(&qword_1000BA3E0, &qword_100089388);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10007A9EC()
{
  result = qword_1000BA408;
  if (!qword_1000BA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA408);
  }

  return result;
}

unint64_t sub_10007AA44()
{
  result = qword_1000BA410;
  if (!qword_1000BA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA410);
  }

  return result;
}

unint64_t sub_10007AA9C()
{
  result = qword_1000BA418;
  if (!qword_1000BA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000BA418);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompressionType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CompressionType(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_10007AC3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10007AC90(_BYTE *a1)
{
  v3 = v1;
  v5 = *(v1 + 40);
  if (v5 >= 2)
  {
    v6 = *(v1 + 48) % v5;
    if (v6)
    {
      if (v5 < v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_100075B90(v5 - v6);
      if (v2)
      {
        return;
      }
    }
  }

  v7 = sub_100075C5C(1uLL);
  if (v2)
  {
    return;
  }

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      sub_100006A34(v7, v8);
      LOBYTE(v12) = 0;
      goto LABEL_29;
    }

    v14 = *(v7 + 16);
    v15 = *(v7 + 24);
    v16 = v7;
    v7 = sub_100080AE8();
    v12 = v7;
    if (v7)
    {
      v7 = sub_100080B18();
      if (__OFSUB__(v14, v7))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v12 += v14 - v7;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (!v17)
    {
LABEL_20:
      v21 = sub_100080B08();
      LOBYTE(__src) = 0;
      if (v12)
      {
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        memcpy(&__src, v12, v22);
        LOBYTE(v12) = __src;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:
    v19 = v7;
    v18 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v16 = v7;
      v12 = sub_100080AE8();
      if (!v12)
      {
        sub_100080B08();
LABEL_27:
        v13 = v16;
        goto LABEL_28;
      }

      v20 = sub_100080B18();
      if (!__OFSUB__(v19, v20))
      {
        v12 += v19 - v20;
        goto LABEL_20;
      }

LABEL_35:
      __break(1u);
    }

    goto LABEL_33;
  }

  __src = v7;
  v25 = v8;
  v26 = BYTE2(v8);
  v27 = BYTE3(v8);
  v28 = BYTE4(v8);
  v29 = BYTE5(v8);
  __dst = 0;
  v11 = v7;
  memcpy(&__dst, &__src, BYTE6(v8));
  LOBYTE(v12) = __dst;
  v13 = v11;
LABEL_28:
  sub_100006A34(v13, v9);
LABEL_29:
  *a1 = v12;
  swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    *a1 = v12;
  }
}

void sub_10007AEF4(_DWORD *a1)
{
  v3 = v1;
  v5 = *(v1 + 40);
  if (v5 >= 2)
  {
    v6 = *(v1 + 48) % v5;
    if (v6)
    {
      if (v5 < v6)
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      sub_100075B90(v5 - v6);
      if (v2)
      {
        return;
      }
    }
  }

  v7 = sub_100075C5C(4uLL);
  if (v2)
  {
    return;
  }

  v9 = v8;
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 != 2)
    {
      sub_100006A34(v7, v8);
      LODWORD(v12) = 0;
      goto LABEL_29;
    }

    v14 = *(v7 + 16);
    v15 = *(v7 + 24);
    v16 = v7;
    v7 = sub_100080AE8();
    v12 = v7;
    if (v7)
    {
      v7 = sub_100080B18();
      if (__OFSUB__(v14, v7))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v12 += v14 - v7;
    }

    v17 = __OFSUB__(v15, v14);
    v18 = v15 - v14;
    if (!v17)
    {
LABEL_20:
      v21 = sub_100080B08();
      __src = 0;
      if (v12)
      {
        if (v21 >= v18)
        {
          v22 = v18;
        }

        else
        {
          v22 = v21;
        }

        memcpy(&__src, v12, v22);
        LODWORD(v12) = __src;
      }

      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
LABEL_16:
    v19 = v7;
    v18 = (v7 >> 32) - v7;
    if (v7 >> 32 >= v7)
    {
      v16 = v7;
      v12 = sub_100080AE8();
      if (!v12)
      {
        sub_100080B08();
LABEL_27:
        v13 = v16;
        goto LABEL_28;
      }

      v20 = sub_100080B18();
      if (!__OFSUB__(v19, v20))
      {
        v12 += v19 - v20;
        goto LABEL_20;
      }

LABEL_35:
      __break(1u);
    }

    goto LABEL_33;
  }

  LOWORD(__src) = v7;
  BYTE2(__src) = BYTE2(v7);
  HIBYTE(__src) = BYTE3(v7);
  v25 = BYTE4(v7);
  v26 = BYTE5(v7);
  v27 = BYTE6(v7);
  v28 = HIBYTE(v7);
  v29 = v8;
  v30 = BYTE2(v8);
  v31 = BYTE3(v8);
  v32 = BYTE4(v8);
  v33 = BYTE5(v8);
  __dst = 0;
  v11 = v7;
  memcpy(&__dst, &__src, BYTE6(v8));
  LODWORD(v12) = __dst;
  v13 = v11;
LABEL_28:
  sub_100006A34(v13, v9);
LABEL_29:
  *a1 = v12;
  swift_beginAccess();
  if (*(v3 + 32) == 1)
  {
    *a1 = bswap32(v12);
  }
}

unint64_t sub_10007B15C(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    if ((a3 & 0x80000000) != 0)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v5 = a3;
    v6 = a3 >> 32;
LABEL_8:
    if ((v6 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v6 >= v5)
    {
LABEL_10:
      if ((result & 0x8000000000000000) == 0)
      {
        if ((a2 & 0x8000000000000000) == 0)
        {
          if (a2 >= result)
          {
            return sub_100080CA8();
          }

          goto LABEL_18;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v4 != 2)
  {
    goto LABEL_10;
  }

  v5 = *(a3 + 16);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = *(a3 + 24);
    goto LABEL_8;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_10007B1CC(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (HIDWORD(v5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  if (BYTE6(a3) < v3)
  {
    goto LABEL_23;
  }

LABEL_20:
  v6 = HIDWORD(result);
  result = result;
  if (v6 >= result)
  {
    return sub_100080CA8();
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_10007B284(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      LODWORD(v5) = 0;
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_23;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (HIDWORD(v5))
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  LODWORD(v5) = BYTE6(a3);
  if (BYTE6(a3) < v3)
  {
    goto LABEL_23;
  }

LABEL_20:
  if (v5 >= result)
  {
    return sub_100080CA8();
  }

LABEL_26:
  __break(1u);
  return result;
}

CloudData::LensCalibrationDataHeader __swiftcall LensCalibrationDataHeader.init(leftLensDataOffset:leftLensDataLength:rightLensDataOffset:rightLensDataLength:)(Swift::UInt32 leftLensDataOffset, Swift::UInt32 leftLensDataLength, Swift::UInt32 rightLensDataOffset, Swift::UInt32 rightLensDataLength)
{
  v4 = (*&leftLensDataOffset << 32) | 1;
  v5 = leftLensDataLength | (*&rightLensDataOffset << 32);
  result.leftLensDataLength = v5;
  result.rightLensDataOffset = HIDWORD(v5);
  result.type = v4;
  result.leftLensDataOffset = HIDWORD(v4);
  result.rightLensDataLength = rightLensDataLength;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LensCalibrationDataHeader.validate(forLensCalibrationDataLength:)(Swift::UInt forLensCalibrationDataLength)
{
  v4 = (HIDWORD(v1) + v2);
  if (__CFADD__(HIDWORD(v1), v2))
  {
    __break(1u);
    goto LABEL_16;
  }

  if (__CFADD__(HIDWORD(v2), v3))
  {
LABEL_16:
    __break(1u);
    return;
  }

  if (v4 > forLensCalibrationDataLength || (HIDWORD(v2) + v3) > forLensCalibrationDataLength || v4 != HIDWORD(v2) || (v2 | v3) == 0)
  {
    sub_100075E5C();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }
}

uint64_t LensCalibrationDataHeader.encode()(unint64_t a1, unint64_t a2, unsigned int a3)
{
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100084880;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(v5);
  sub_100077360(v6);
  sub_100077360(v4);
  sub_100077360(v7);
  sub_100077360(a3);
  swift_beginAccess();
  v9 = *(inited + 16);
  v10 = *(inited + 24);
  swift_setDeallocating();
  v11 = *(inited + 16);
  v12 = *(inited + 24);
  sub_10000D808(v9, v10);
  sub_100006A34(v11, v12);
  return v9;
}

uint64_t LensCalibrationPayload.leftLensCalibration.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t LensCalibrationPayload.rightLensCalibration.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t LensCalibrationPayload.appClipCodePayload.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void *LensCalibrationPayload.__allocating_init(leftLensCalibration:rightLensCalibration:appClipCodePayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  result[7] = a6;
  return result;
}

void *LensCalibrationPayload.init(leftLensCalibration:rightLensCalibration:appClipCodePayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

uint64_t LensCalibrationPayload.__allocating_init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = swift_allocObject();
  LensCalibrationPayload.init(from:)(a1, a2);
  return v4;
}

void LensCalibrationPayload.init(from:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = sub_100081308();
  __chkstk_darwin(v7 - 8, v8, v9);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_16;
    }

    v12 = *(a1 + 16);
    v11 = *(a1 + 24);
    v13 = __OFSUB__(v11, v12);
    v14 = v11 - v12;
    if (!v13)
    {
      if (v14 > 20)
      {
        goto LABEL_8;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v10)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 > 20)
      {
        goto LABEL_8;
      }

LABEL_16:
      sub_100075E5C();
      swift_allocError();
      *v21 = 0;
LABEL_17:
      swift_willThrow();
      goto LABEL_18;
    }

    goto LABEL_44;
  }

  if (BYTE6(a2) <= 0x14uLL)
  {
    goto LABEL_16;
  }

LABEL_8:
  v15 = sub_100080CA8();
  v17 = sub_10007BFA0(v15, v16);
  if (v3)
  {
LABEL_18:
    sub_100006A34(a1, a2);
    type metadata accessor for LensCalibrationPayload();
    swift_deallocPartialClassInstance();
    return;
  }

  if (v17 != 1)
  {
    sub_100075E5C();
    swift_allocError();
    *v22 = 3;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v24 = *(a1 + 16);
    v23 = *(a1 + 24);
    v13 = __OFSUB__(v23, v24);
    v20 = v23 - v24;
    if (v13)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }
  }

  else
  {
    if (v10 != 1)
    {
      goto LABEL_23;
    }

    LODWORD(v20) = HIDWORD(a1) - a1;
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v20 = v20;
  }

  v25 = v18;
  v26 = v19;
  if ((v20 & 0x8000000000000000) == 0)
  {
    goto LABEL_24;
  }

  __break(1u);
LABEL_23:
  v25 = v18;
  v26 = v19;
  v20 = BYTE6(a2);
LABEL_24:
  v27 = v17;
  LensCalibrationDataHeader.validate(forLensCalibrationDataLength:)(v20);
  if (v28)
  {
    goto LABEL_18;
  }

  if (v25)
  {
    v52 = v25;
    if (__CFADD__(HIDWORD(v27), v25))
    {
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v29 = sub_10007B1CC(HIDWORD(v27) | ((HIDWORD(v27) + v25) << 32), a1, a2);
    v31 = v30;
    sub_1000812F8();
    v32 = sub_1000812D8();
    v50 = v33;
    v51 = v32;
    sub_100006A34(v29, v31);
    v2[2] = v51;
    v2[3] = v50;
    v25 = v52;
  }

  else
  {
    v2[2] = 0;
    v2[3] = 0;
  }

  if (__CFADD__(HIDWORD(v25), v26))
  {
    goto LABEL_45;
  }

  v53 = (HIDWORD(v25) + v26);
  if (v26)
  {
    v34 = sub_10007B1CC(HIDWORD(v25) | ((HIDWORD(v25) + v26) << 32), a1, a2);
    v36 = v35;
    sub_1000812F8();
    v37 = sub_1000812D8();
    v39 = v38;
    sub_100006A34(v34, v36);
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  v4[4] = v37;
  v4[5] = v39;
  if (v10 == 2)
  {
    v43 = *(a1 + 16);
    v42 = *(a1 + 24);
    v13 = __OFSUB__(v42, v43);
    v40 = v42 - v43;
    if (v13)
    {
LABEL_50:
      __break(1u);
      return;
    }

    v41 = v53;
  }

  else
  {
    if (v10 == 1)
    {
      LODWORD(v40) = HIDWORD(a1) - a1;
      v41 = v53;
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v40 = v40;
        goto LABEL_40;
      }

      goto LABEL_49;
    }

    v41 = v53;
    v40 = BYTE6(a2);
  }

LABEL_40:
  if (v40 <= v41)
  {
    sub_100006A34(a1, a2);
    v4[6] = 0;
    v4[7] = 0;
  }

  else
  {
    v44 = sub_10007B284(v41, a1, a2);
    v46 = v45;
    sub_100074254(v44, v45);
    sub_100006940(&qword_1000B7530, &qword_100089380);
    sub_100006988();
    v47 = sub_100081248();
    v49 = v48;
    sub_100006A34(v44, v46);
    sub_100006A34(a1, a2);

    v4[6] = v47;
    v4[7] = v49;
  }
}

uint64_t LensCalibrationPayload.toDataBlob()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_100081308();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5, v7, v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4[3])
  {
    sub_1000812F8();
    v12 = sub_1000812C8();
    v14 = v13;
    result = (*(v6 + 8))(v11, v5);
    v41 = v12;
    if (v14 >> 60 == 15)
    {
      v15 = 0;
    }

    else
    {
      v31 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v31 == 2)
        {
          v35 = *(v12 + 16);
          v32 = *(v12 + 24);
          v15 = v32 - v35;
          if (__OFSUB__(v32, v35))
          {
            __break(1u);
            goto LABEL_34;
          }
        }

        else
        {
          result = sub_10001A164(v12, v14);
          v15 = 0;
        }
      }

      else
      {
        if (v31)
        {
          goto LABEL_38;
        }

        result = sub_10001A164(v12, v14);
        v15 = BYTE6(v14);
      }
    }
  }

  else
  {
    v15 = 0;
    v41 = 0;
    v14 = 0xF000000000000000;
  }

  while (1)
  {
    v39 = v3;
    v12 = v4[5];
    if (!v12)
    {
      v11 = 0;
      v2 = 0;
      v3 = 0xF000000000000000;
      goto LABEL_9;
    }

    sub_1000812F8();
    v2 = sub_1000812C8();
    v3 = v16;
    v17 = *(v6 + 8);
    v6 += 8;
    result = v17(v11, v5);
    if (v3 >> 60 == 15)
    {
      v11 = 0;
      goto LABEL_9;
    }

    v32 = v3 >> 62;
    if ((v3 >> 62) <= 1)
    {
      if (!v32)
      {
        result = sub_10001A164(v2, v3);
        v11 = BYTE6(v3);
        goto LABEL_9;
      }

      if (!__OFSUB__(HIDWORD(v2), v2))
      {
        v11 = HIDWORD(v2) - v2;
        goto LABEL_9;
      }

LABEL_51:
      __break(1u);
      return result;
    }

LABEL_34:
    if (v32 != 2)
    {
      break;
    }

    v37 = *(v2 + 16);
    v36 = *(v2 + 24);
    v11 = v36 - v37;
    if (!__OFSUB__(v36, v37))
    {
      goto LABEL_9;
    }

    __break(1u);
LABEL_38:
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      goto LABEL_50;
    }

    v15 = HIDWORD(v12) - v12;
  }

  result = sub_10001A164(v2, v3);
  v11 = 0;
LABEL_9:
  if (__OFADD__(v15, 20))
  {
    __break(1u);
    goto LABEL_45;
  }

  v18 = v15 + 40;
  if (__OFADD__(v15 + 20, 20))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v18 > 0xFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v18 | v15 | v11) < 0)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  v38 = xmmword_100084880;
  v40 = xmmword_100084880;
  type metadata accessor for DataEncoder();
  inited = swift_initStackObject();
  *(inited + 16) = v38;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_100077270(1);
  sub_100077360(0x14u);
  sub_100077360(v15);
  sub_100077360(v18);
  sub_100077360(v11);
  swift_beginAccess();
  v20 = *(inited + 16);
  v21 = *(inited + 24);
  swift_setDeallocating();
  v22 = *(inited + 16);
  v23 = *(inited + 24);
  sub_10000D808(v20, v21);
  sub_100006A34(v22, v23);
  sub_100080D08();
  sub_100006A34(v20, v21);
  v24 = v41;
  if (v14 >> 60 != 15)
  {
    sub_10000D808(v41, v14);
    sub_100080D08();
    sub_10001A164(v24, v14);
  }

  if (v3 >> 60 != 15)
  {
    sub_10000D808(v2, v3);
    sub_100080D08();
    sub_10001A164(v2, v3);
  }

  v25 = v4[7];
  if (v25 && (v26 = v4[6], , v27 = sub_1000745D4(v26, v25), v28 >> 60 != 15))
  {
    v33 = v27;
    v34 = v28;
    sub_100080D08();
    sub_10001A164(v2, v3);
    sub_10001A164(v24, v14);
    v29 = v33;
    v30 = v34;
  }

  else
  {
    sub_10001A164(v2, v3);
    v29 = v24;
    v30 = v14;
  }

  sub_10001A164(v29, v30);
  return v40;
}

void *LensCalibrationPayload.deinit()
{

  return v0;
}

uint64_t LensCalibrationPayload.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 64, 7);
}

unint64_t sub_10007BFA0(uint64_t a1, unint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  type metadata accessor for DataDecoder();
  inited = swift_initStackObject();
  *(inited + 16) = a1;
  *(inited + 24) = a2;
  *(inited + 32) = 0;
  *(inited + 40) = xmmword_100089360;
  sub_10000D808(a1, a2);
  sub_10007AC90(&v10);
  if (v2)
  {
    sub_100006A34(a1, a2);
    swift_setDeallocating();
    return sub_100006A34(*(inited + 16), *(inited + 24));
  }

  else
  {
    sub_10007AEF4(&v9);
    sub_10007AEF4(&v8 + 1);
    sub_10007AEF4(&v8);
    sub_10007AEF4(&v7);
    sub_100006A34(a1, a2);
    swift_setDeallocating();
    sub_100006A34(*(inited + 16), *(inited + 24));
    return v10 | (v9 << 32);
  }
}

__n128 initializeBufferWithCopyOfBuffer for LensCalibrationDataHeader(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LensCalibrationDataHeader(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 20))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LensCalibrationDataHeader(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 20) = v3;
  return result;
}

void *vrx_csv_file_create(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C900();
  }

  v2 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040702A1700uLL);
  *v2 = a1;
  v2[2] = 2048;
  v2[1] = malloc_type_calloc(0x800uLL, 1uLL, 0x100004077774924uLL);
  return v2;
}

void vrx_csv_file_destroy(uint64_t (***a1)(void))
{
  if (a1)
  {
    vrx_reader_close(*a1);
    free(a1[1]);

    free(a1);
  }
}

uint64_t vrx_csv_file_next_metadata_field(uint64_t *a1, char **a2, char **a3)
{
  result = vrx_reader_read_line(*a1);
  if (result)
  {
    v24 = a2;
    v25 = a3;
    while (1)
    {
      v7 = a1[1];
      if (*v7 != 35)
      {
        result = 0;
        *(a1 + 10) = 1;
        return result;
      }

      do
      {
        while (1)
        {
          v8 = v7;
          v10 = *++v7;
          v9 = v10;
          if (v10 < 0)
          {
            break;
          }

          if ((_DefaultRuneLocale.__runetype[v9] & 0x4000) == 0)
          {
            goto LABEL_8;
          }
        }
      }

      while (__maskrune(v9, 0x4000uLL));
LABEL_8:
      v11 = 0;
      v12 = 0xFFFFFFFF00000000;
      do
      {
        v13 = v8;
        v14 = v7[v11];
        if (v14 < 0)
        {
          v15 = __maskrune(v7[v11], 0x500uLL);
        }

        else
        {
          v15 = _DefaultRuneLocale.__runetype[v14] & 0x500;
        }

        v12 += &_mh_execute_header;
        ++v11;
        ++v8;
      }

      while (v14 == 95 || v15 != 0);
      if (v11 != 1)
      {
        do
        {
          v17 = v13[1];
          if (v17 < 0)
          {
            v18 = __maskrune(v13[1], 0x4000uLL);
          }

          else
          {
            v18 = _DefaultRuneLocale.__runetype[v17] & 0x4000;
          }

          ++v13;
        }

        while (v18);
        if (v17 == 61 || v17 == 58)
        {
          break;
        }
      }

      result = vrx_reader_read_line(*a1);
      if (!result)
      {
        return result;
      }
    }

    do
    {
      while (1)
      {
        v20 = *++v13;
        v19 = v20;
        if (v20 < 0)
        {
          break;
        }

        if ((_DefaultRuneLocale.__runetype[v19] & 0x4000) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    while (__maskrune(v19, 0x4000uLL));
LABEL_30:
    for (i = v13; ; ++i)
    {
      v22 = *i;
      if (!*i)
      {
        break;
      }

      if (v22 == 13 || v22 == 10)
      {
        *i = 0;
        break;
      }
    }

    *v24 = strndup(v7, v12 >> 32);
    *v25 = strdup(v13);
    return 1;
  }

  return result;
}

uint64_t vrx_csv_file_next_field(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C92C();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = strchr(*(a1 + 32), 44);
    if (v3)
    {
      *v3++ = 0;
    }

    *(a1 + 32) = v3;
  }

  return v2;
}

BOOL vrx_csv_file_next_string(uint64_t a1, uint64_t *a2)
{
  field = vrx_csv_file_next_field(a1);
  *a2 = field;
  return field != 0;
}

uint64_t vrx_csv_file_next_int(uint64_t a1, _DWORD *a2)
{
  if (!a1)
  {
    sub_10007C958();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtol(v3, 0, 10);
  return 1;
}

uint64_t vrx_csv_file_next_double(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_10007C984();
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
    return 0;
  }

  v5 = strchr(*(a1 + 32), 44);
  if (v5)
  {
    *v5++ = 0;
  }

  *(a1 + 32) = v5;
  *a2 = strtod(v3, 0);
  return 1;
}

uint64_t vrx_csv_file_next_record(uint64_t a1)
{
  if (!a1)
  {
    sub_10007C9B0();
  }

  do
  {
    v2 = *(a1 + 40) == 0;
    do
    {
      v3 = *(a1 + 8);
      if (v2)
      {
        result = vrx_reader_read_line(*a1);
        if (!result)
        {
          return result;
        }

        v3 = *(a1 + 8);
      }

      *(a1 + 40) = 0;
      v5 = *v3;
      v2 = 1;
    }

    while (!*v3);
    v6 = 0;
    v7 = v3 + 1;
    do
    {
      v8 = v5;
      if (v5 < 0)
      {
        if (__maskrune(v5, 0x4000uLL))
        {
          goto LABEL_14;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v5] & 0x4000) != 0)
      {
        goto LABEL_14;
      }

      if (v8 == 35)
      {
        break;
      }

      v6 = 1;
LABEL_14:
      v9 = *v7++;
      v5 = v9;
    }

    while (v9);
  }

  while (!v6);
  v10 = *(a1 + 8);
  for (i = v10; ; ++i)
  {
    v12 = *i;
    if (!*i)
    {
      break;
    }

    if (v12 == 13 || v12 == 10)
    {
      *i = 0;
      v10 = *(a1 + 8);
      break;
    }
  }

  *(a1 + 24) = v10;
  *(a1 + 32) = v10;
  return 1;
}

void *vrx_reader_open_file(const char *a1)
{
  result = fopen(a1, "r");
  if (result)
  {
    v2 = result;
    result = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040114AFA65uLL);
    *result = sub_10007CA48;
    result[1] = sub_10007CA78;
    result[2] = v2;
  }

  return result;
}

FILE *sub_10007CA48(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = fclose(result);
    *(a1 + 16) = 0;
  }

  return result;
}

char *sub_10007CA78(uint64_t a1, char *a2, int a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    return fgets(a2, a3, v3);
  }

  else
  {
    return 0;
  }
}

void *vrx_reader_open_string(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0xD0040E87B5F72uLL);
  result[2] = a1;
  result[3] = a1;
  *result = nullsub_1;
  result[1] = sub_10007CAFC;
  return result;
}

char *sub_10007CAFC(uint64_t a1, char *__dst, int a3)
{
  v5 = *(a1 + 24);
  v6 = *v5;
  if (*v5)
  {
    v7 = a3 < 2;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    __dst = 0;
  }

  else
  {
    v8 = 0;
    while (v6 != 10)
    {
      v9 = v8 + 1;
      v6 = v5[v8 + 1];
      if (v5[v8 + 1])
      {
        v10 = v9 < a3 - 1;
      }

      else
      {
        v10 = 0;
      }

      ++v8;
      if (!v10)
      {
        v11 = &v5[v9];
        LODWORD(v8) = v9;
LABEL_14:
        strncpy(__dst, v5, v8);
        __dst[v8] = 0;
        goto LABEL_15;
      }
    }

    v11 = &v5[v8 + 1];
    if (v8)
    {
      goto LABEL_14;
    }

    __dst = 0;
LABEL_15:
    v5 = v11;
  }

  *(a1 + 24) = v5;
  return __dst;
}

void vrx_reader_destroy(void (**a1)(void))
{
  if (a1)
  {
    (*a1)();

    free(a1);
  }
}

_DWORD *vrx_vector_create_(unsigned int a1, unsigned int a2, int a3)
{
  if (a2 <= 0)
  {
    sub_10007CE38();
  }

  if (a1 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = a1;
  }

  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  v6[3] = v5;
  v6[4] = a2;
  *v6 = malloc_type_calloc(v5, a2, 0x730F52D0uLL);
  v6[5] = a3;
  return v6;
}

void vrx_vector_destroy(int *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (a1[5] && a1[2] >= 1)
    {
      v3 = 0;
      do
      {
        free(v2[v3++]);
      }

      while (v3 < a1[2]);
      v2 = *a1;
    }

    free(v2);

    free(a1);
  }
}

void vrx_vector_append(char **a1, void *__src)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 3);
  v6 = *a1;
  if (v4 == v5)
  {
    v7 = 2 * v4;
    v6 = malloc_type_realloc(v6, *(a1 + 4) * v7, 0x42F9AC6AuLL);
    *a1 = v6;
    *(a1 + 3) = v7;
    v4 = *(a1 + 2);
  }

  *(a1 + 2) = v4 + 1;
  v8 = *(a1 + 4);
  v9 = &v6[v8 * v4];
  if (__src)
  {

    memcpy(v9, __src, v8);
  }

  else
  {
    v10 = *(a1 + 4);

    bzero(v9, v10);
  }
}

void *vrx_vector_finalize(_DWORD *a1)
{
  v1 = *a1;
  v2 = a1[4];
  v3 = a1[2];
  free(a1);
  if (v3 < 1)
  {
    free(v1);
    return 0;
  }

  else
  {

    return malloc_type_realloc(v1, v3 * v2, 0x48DFD1A6uLL);
  }
}

uint64_t vrx_set_minimum_passing_fit_probability(double a1)
{
  if (a1 < 0.0 || a1 > 1.0)
  {
    return 0;
  }

  qword_1000BA598 = *&a1;
  return 1;
}

double vrx_compute_power_vector_for_rx(double *a1, double *a2)
{
  if (!a1)
  {
    sub_10007FA74();
  }

  if (!a2)
  {
    sub_10007FA48();
  }

  v3 = a1[1] * 0.5;
  v4 = (a1[2] + a1[2]) * 3.14159265 / 180.0;
  *a2 = v3 + *a1;
  v5 = __sincos_stret(v4);
  result = -(v3 * v5.__sinval);
  a2[1] = -(v3 * v5.__cosval);
  a2[2] = result;
  return result;
}

void vrx_compute_rx_for_power_vector(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_10007FACC();
  }

  if (!a2)
  {
    sub_10007FAA0();
  }

  v3 = *(a1 + 16);
  v4 = sqrt(*(a1 + 8) * *(a1 + 8) + v3 * v3);
  *a2 = *a1 + v4;
  a2[1] = v4 * -2.0;
    ;
  }

    ;
  }

  a2[2] = i;
}

BOOL vrx_eye_rx_equal(void *a1, void *a2)
{
  if (!a1)
  {
    sub_10007FB24();
  }

  if (!a2)
  {
    sub_10007FAF8();
  }

  return *a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2];
}

BOOL vrx_rx_is_balanced(void *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FB50();
  }

  return *a1 == a1[3] && a1[1] == a1[4] && a1[2] == a1[5];
}

BOOL vrx_rx_equal(const void *a1, const void *a2)
{
  if (!a1)
  {
    sub_10007FBA8();
  }

  if (!a2)
  {
    sub_10007FB7C();
  }

  return memcmp(a1, a2, 0x40uLL) == 0;
}

uint64_t vrx_generate_lens_tray_row_label(unsigned int a1, char *__str)
{
  if (a1 - 626 < 0xFFFFFD8F)
  {
    return 0;
  }

  if (a1 > 0x19)
  {
    v3 = (((a1 - 1 - ((18351 * (a1 - 1)) >> 16)) >> 1) + ((18351 * (a1 - 1)) >> 16)) >> 4;
    snprintf(__str, 0xCuLL, "%c%c", aAbcdefghijklmn[v3 - 1], aAbcdefghijklmn[(a1 - 1 - 25 * v3)]);
  }

  else
  {
    *__str = aAbcdefghijklmn[a1 - 1];
  }

  return 1;
}

BOOL vrx_map_reader_rx(uint64_t a1, uint64_t a2)
{
  result = vrx_rx_is_balanced(a1, a2);
  if (result)
  {
    if (*(a1 + 8) == 0.0 && *(a1 + 16) == 0.0)
    {
      v4 = 0;
      v5 = *a1;
      v6 = 1;
      for (i = &qword_10008F420; v5 < *(i - 2) || v5 > *(i - 1); i += 3)
      {
        v6 = v4 < 2;
        if (++v4 == 3)
        {
          return 0;
        }
      }

      v8 = *i;
      *a1 = *i;
      *(a1 + 24) = v8;
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t *vrx_get_reader_strength_range_for_mapped_diopter(double a1)
{
  result = &qword_10008F410;
  v2 = 3;
  while (*(result + 2) != a1)
  {
    result += 3;
    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

double *vrx_get_reader_strength_range_for_rx(double *a1, uint64_t a2)
{
  if (!vrx_rx_is_balanced(a1, a2))
  {
    return 0;
  }

  v3 = *a1;
  result = &qword_10008F410;
  v5 = 3;
  while (*result > v3 || result[1] < v3)
  {
    result += 3;
    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

char *vrx_load_lens_tray(char *a1)
{
  if (!a1)
  {
    sub_10007FBD4();
  }

  v2 = sub_10007D304(a1, vrx_demo_tray_file_extension[0]);
  if (v2)
  {
    v3 = v2;
    v4 = 0;
  }

  else
  {
    result = sub_10007D304(a1, vrx_reader_tray_file_extension);
    v4 = result != 0;
    if (!result)
    {
      return result;
    }

    v3 = result;
  }

  return sub_10007D390(a1, v4, v3);
}

char *sub_10007D304(char *a1, const char *a2)
{
  v3 = a1;
  v4 = strrchr(a1, 47);
  if (v4)
  {
    v3 = v4 + 1;
  }

  v5 = strrchr(v3, 46);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (strcmp(v5 + 1, a2))
  {
    return 0;
  }

  return strndup(v3, v6 - v3);
}

char *sub_10007D390(const char *a1, unsigned int a2, const char *a3)
{
  if (!a1)
  {
    sub_10007FC2C();
  }

  if (!a3)
  {
    sub_10007FC00();
  }

  v5 = vrx_reader_open_file(a1);
  if (!v5)
  {
    return 0;
  }

  v6 = vrx_csv_file_create(v5);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
  *v8 = strdup(a3);
  *(v8 + 10) = a2;
  v35 = 0;
  __s1 = 0;
  v9 = vrx_vector_create_(8u, 8u, 1);
  while (vrx_csv_file_next_metadata_field(v7, &__s1, &v35))
  {
    *&__src = strdup(__s1);
    __s = strdup(v35);
    vrx_vector_append(v9, &__src);
    vrx_vector_append(v9, &__s);
  }

  vrx_vector_append(v9, 0);
  *(v8 + 6) = vrx_vector_finalize(v9);
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  memset(v39, 0, sizeof(v39));
  __src = 0u;
  v10 = vrx_vector_create_(0x80u, 0x128u, 0);
  if (vrx_csv_file_next_record(v7))
  {
    v11 = "_%.2f";
    do
    {
      v54 = 0;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      memset(v45, 0, sizeof(v45));
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(v39, 0, sizeof(v39));
      __src = 0u;
      v33 = 0;
      __s = 0;
      v31 = 0;
      v32 = 0;
      if (!vrx_csv_file_next_int(v7, &v53) || !vrx_csv_file_next_int(v7, &v53 + 1) || !vrx_csv_file_next_double(v7, &__src) || !vrx_csv_file_next_double(v7, &__src + 1) || !vrx_csv_file_next_double(v7, v39) || !vrx_csv_file_next_string(v7, &__s) || !vrx_csv_file_next_string(v7, &v33) || !vrx_csv_file_next_string(v7, &v32) || !vrx_csv_file_next_string(v7, &v31))
      {
        continue;
      }

      v12 = v11;
      v13 = __s;
      v14 = strlen(__s);
      v30 = strlen(v33);
      v15 = strlen(v32);
      v29 = strlen(v31);
      *(&v44 + 1) = a2;
      if (!v14 || !strcmp(__s, "None"))
      {
        LODWORD(v45[0]) = 1;
      }

      else
      {
        v16 = v14 > 0x17;
        v11 = v12;
        if (v16 || v15 - 39 < 0xFFFFFFFFFFFFFFF9)
        {
          continue;
        }

        strlen(v13);
        v17 = strchr(v13, 95);
        __strncpy_chk();
        if (v17)
        {
          strncpy(&v41 + 8, v17 + 1, 8uLL);
        }

        __strcpy_chk();
      }

      v11 = v12;
      *&v52 = a2 | 0x100000000;
      if (!v30 || (v18 = v33, !strcmp(v33, "None")))
      {
        DWORD2(v52) = 1;
LABEL_36:
        v20 = v53;
        *(v8 + 20) = vmax_s32(*(v8 + 20), *&v53);
        *__str = 0;
        if (a2 == 1)
        {
          snprintf(__str, 8uLL, v12, __src);
          v21 = v53;
          v22 = DWORD1(v53);
        }

        else
        {
          v21 = v20;
          v22 = HIDWORD(v20);
        }

        if (sub_10007F59C(v21, v22, __str, &v53 + 8))
        {
          *&v45[1] = __src;
          v45[3] = *&v39[0];
          v23 = *(&__src + 1) * 0.5;
          *(v39 + 1) = *(&__src + 1) * 0.5 + *&__src;
          v24 = __sincos_stret((*v39 + *v39) * 3.14159265 / 180.0);
          *&v39[1] = -(v23 * v24.__cosval);
          *(&v39[1] + 1) = -(v23 * v24.__sinval);
          v46 = *(v39 + 8);
          *&v47 = *(&v39[1] + 1);
          vrx_vector_append(v10, &__src);
        }

        continue;
      }

      if (v30 <= 0x17 && v29 - 39 >= 0xFFFFFFFFFFFFFFF9)
      {
        strlen(v18);
        v19 = strchr(v18, 95);
        __strncpy_chk();
        if (v19)
        {
          strncpy(&v49, v19 + 1, 8uLL);
        }

        __strcpy_chk();
        goto LABEL_36;
      }
    }

    while (vrx_csv_file_next_record(v7));
  }

  vrx_csv_file_destroy(v7);
  *(v8 + 4) = vrx_vector_length(v10);
  *(v8 + 1) = vrx_vector_finalize(v10);
  *(v8 + 4) = malloc_type_calloc(*(v8 + 6) * *(v8 + 5), 8uLL, 0x2004093837F09uLL);
  v25 = *(v8 + 4);
  if (v25 >= 1)
  {
    v26 = 0;
    v27 = *(v8 + 6);
    do
    {
      *(*(v8 + 4) + 8 * (*(*(v8 + 1) + v26 + 276) + (*(*(v8 + 1) + v26 + 272) - 1) * v27 - 1)) = *(v8 + 1) + v26;
      v26 += 296;
    }

    while (296 * v25 != v26);
  }

  qsort(*(v8 + 1), v25, 0x128uLL, sub_10007F9CC);
  return v8;
}

uint64_t vrx_validate_lens_tray_file(const char *a1, char *a2)
{
  if (!a1)
  {
    sub_10007FC84();
  }

  if (!a2)
  {
    sub_10007FC58();
  }

  v5 = 0;
  v4 = 0;
  result = vrx_is_lens_tray_file(a2, &v5, &v4);
  if (result)
  {
    result = sub_10007D390(a1, v5, v4);
    if (result)
    {
      vrx_unload_lens_tray(result);
      return 1;
    }
  }

  return result;
}

uint64_t vrx_is_lens_tray_file(char *a1, int *a2, char **a3)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v7 = result;
    if (!strcmp((result + 1), vrx_demo_tray_file_extension[0]))
    {
      v8 = 0;
      if (!a2)
      {
        return 1;
      }
    }

    else
    {
      if (strcmp((v7 + 1), vrx_reader_tray_file_extension))
      {
        return 0;
      }

      v8 = 1;
      if (!a2)
      {
        return 1;
      }
    }

    *a2 = v8;
    if (a3)
    {
      v9 = strrchr(a1, 47);
      if (v9)
      {
        v10 = v9 + 1;
      }

      else
      {
        v10 = a1;
      }

      *a3 = strndup(v10, v7 - v10);
    }

    return 1;
  }

  return result;
}

void vrx_unload_lens_tray(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *v2;
      if (*v2)
      {
        v4 = v2 + 1;
        do
        {
          free(v3);
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
        v2 = *(a1 + 48);
      }

      free(v2);
    }

    free(*a1);
    free(*(a1 + 8));
    free(*(a1 + 32));

    free(a1);
  }
}

uint64_t vrx_print_lens_tray_slot(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FCB0();
  }

  printf("%s: ", (a1 + 280));
  vrx_print_lens(a1);
  printf("; ");
  vrx_print_lens(a1 + 136);

  return putchar(10);
}

uint64_t vrx_print_lens(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FCDC();
  }

  v2 = "Left";
  if (!*(a1 + 124))
  {
    v2 = "Right";
  }

  v3 = (a1 + 48);
  v4 = "N/A";
  if (*(a1 + 128))
  {
    v3 = "N/A";
  }

  else
  {
    v4 = (a1 + 72);
  }

  printf("%s - sn: %*s, seq#: %*s, ", v2, 23, v3, 7, v4);
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, *(a1 + 8), *(a1 + 16));
  return printf(" (%s)", (&off_1000AC738)[*(a1 + 120)]);
}

uint64_t vrx_print_lens_tray(uint64_t a1)
{
  if (!a1)
  {
    sub_10007FD08();
  }

  printf("Name: %s\n", *a1);
  puts("Metadata:");
  v2 = *(a1 + 48);
  v3 = *v2;
  if (*v2)
  {
    v4 = 0;
    v5 = v2 + 1;
    do
    {
      if (v4)
      {
        printf("  %s = %s\n", v4, v3);
        v3 = 0;
      }

      v4 = v3;
      v6 = *v5++;
      v3 = v6;
    }

    while (v6);
  }

  putchar(10);
  LODWORD(v7) = *(a1 + 16);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      vrx_print_lens_tray_slot(*(a1 + 8) + v8);
      ++v9;
      v7 = *(a1 + 16);
      v8 += 296;
    }

    while (v9 < v7);
  }

  return printf("(%d slots)\n", v7);
}

uint64_t vrx_apply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    sub_10007FD34();
  }

  v1 = a1[1];
  if (v1 <= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_unapply_eye_rx_cylinder_sign_flip(double *a1)
{
  if (!a1)
  {
    sub_10007FD60();
  }

  v1 = a1[1];
  if (v1 >= 0.0)
  {
    return 0;
  }

  *a1 = v1 + *a1;
  a1[1] = -v1;
    ;
  }

    ;
  }

  a1[2] = i;
  return 1;
}

uint64_t vrx_apply_cylinder_sign_flip(double *a1)
{
  vrx_apply_eye_rx_cylinder_sign_flip(a1);

  return vrx_apply_eye_rx_cylinder_sign_flip(a1 + 3);
}

float64x2_t vrx_round_eye_rx(float64x2_t *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FD8C();
  }

  __asm { FMOV            V1.2D, #4.0 }

  v7 = vrndaq_f64(vmulq_f64(*a1, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v7, _Q1);
  *a1 = result;
  return result;
}

float64x2_t vrx_round_rx(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FDB8();
  }

  __asm
  {
    FMOV            V1.2D, #4.0
    FMOV            V2.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(*a1, _Q1)), _Q2);
  result = vmulq_f64(vrndaq_f64(vmulq_f64(*(a1 + 24), _Q1)), _Q2);
  *(a1 + 24) = result;
  return result;
}

double vrx_reset_rx(_OWORD *a1)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

BOOL vrx_eye_rx_is_valid(double *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FDE4();
  }

  if (fabs(*a1) <= 30.0 && fabs(a1[1]) <= 30.0 && (v2 = a1[2], v2 >= 0.0))
  {
    return v2 < 180.0;
  }

  else
  {
    return 0;
  }
}

BOOL vrx_rx_is_valid(double *a1, uint64_t a2)
{
  if (!a1)
  {
    sub_10007FE10();
  }

  if (fabs(*a1) > 30.0 || fabs(a1[1]) > 30.0)
  {
    return 0;
  }

  v2 = 0;
  v4 = a1[2];
  if (v4 >= 0.0 && v4 < 180.0)
  {
    if (fabs(a1[3]) <= 30.0 && fabs(a1[4]) <= 30.0)
    {
      v5 = a1[5];
      if (v5 >= 0.0)
      {
        return v5 < 180.0;
      }
    }

    return 0;
  }

  return v2;
}

float64x2_t vrx_apply_eye_rx_vr_add(float64x2_t *a1, uint64_t a2, double a3, double a4)
{
  if (!a1)
  {
    sub_10007FE3C();
  }

  v4.f64[0] = (a1->f64[0] + a3) / ((12.0 - a4) / -1000.0 * (a1->f64[0] + a3) + 1.0);
  v4.f64[1] = a1->f64[1];
  __asm { FMOV            V1.2D, #4.0 }

  v10 = vrndaq_f64(vmulq_f64(v4, _Q1));
  __asm { FMOV            V1.2D, #0.25 }

  result = vmulq_f64(v10, _Q1);
  *a1 = result;
  return result;
}

double vrx_unapply_eye_rx_vr_add(double *a1, uint64_t a2, double a3, double a4)
{
  if (!a1)
  {
    sub_10007FE68();
  }

  result = round((*a1 / (*a1 * ((12.0 - a4) / 1000.0) + 1.0) - a3) * 4.0) * 0.25;
  *a1 = result;
  return result;
}

double vrx_compute_vr_add(int a1, double a2)
{
  if (a2 <= 0.0)
  {
    result = 0.25;
    v6 = 0.5;
    v7 = 0.0;
    if (a1 > 59)
    {
      v7 = 0.75;
    }

    if ((a1 - 50) >= 0xA)
    {
      v6 = v7;
    }

    if ((a1 - 40) >= 0xA)
    {
      return v6;
    }
  }

  else
  {
    v2 = a2 * 0.367 + -0.104;
    v3 = 0.75;
    if (v2 <= 0.75)
    {
      v3 = v2;
    }

    v4 = v2 < 0.0;
    result = 0.0;
    if (!v4)
    {
      return v3;
    }
  }

  return result;
}

float64x2_t vrx_apply_vr_add(double *a1, unsigned int a2, double *a3, double *a4, double a5)
{
  if (!a1)
  {
    sub_10007FEC0();
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_10007FE94();
  }

  v5 = a1[6];
  if (v5 <= 0.0)
  {
    v9 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v9 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v9 = 0.0;
        if (a2 > 0x3B)
        {
          v9 = 0.75;
        }
      }
    }
  }

  else
  {
    v6 = v5 * 0.367 + -0.104;
    v7 = 0.75;
    if (v6 <= 0.75)
    {
      v7 = v6;
    }

    _NF = v6 < 0.0;
    v9 = 0.0;
    if (!_NF)
    {
      v9 = v7;
    }
  }

  *a3 = v9;
  v10 = a1[7];
  if (v10 <= 0.0)
  {
    v13 = 0.25;
    if (a2 - 40 >= 0xA)
    {
      v13 = 0.5;
      if (a2 - 50 >= 0xA)
      {
        v13 = 0.0;
        if (a2 > 0x3B)
        {
          v13 = 0.75;
        }
      }
    }
  }

  else
  {
    v11 = v10 * 0.367 + -0.104;
    v12 = 0.75;
    if (v11 <= 0.75)
    {
      v12 = v11;
    }

    _NF = v11 < 0.0;
    v13 = 0.0;
    if (!_NF)
    {
      v13 = v12;
    }
  }

  *a4 = v13;
  v14 = (12.0 - a5) / -1000.0;
  v15.f64[0] = (*a3 + *a1) / (v14 * (*a3 + *a1) + 1.0);
  v15.f64[1] = a1[1];
  __asm
  {
    FMOV            V3.2D, #4.0
    FMOV            V4.2D, #0.25
  }

  *a1 = vmulq_f64(vrndaq_f64(vmulq_f64(v15, _Q3)), _Q4);
  v21.f64[0] = (*a4 + a1[3]) / (v14 * (*a4 + a1[3]) + 1.0);
  v21.f64[1] = a1[4];
  result = vmulq_f64(vrndaq_f64(vmulq_f64(v21, _Q3)), _Q4);
  *(a1 + 3) = result;
  return result;
}

uint64_t vrx_find_lenses_ex(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, char *a6, uint64_t a7, int a8, double a9)
{
  if (!a1)
  {
    sub_10007FF9C();
  }

  if (!a3)
  {
    sub_10007FF70();
  }

  v10 = a4;
  if ((a4 & 0x80000000) != 0)
  {
    sub_10007FF44();
  }

  if (!a6)
  {
    sub_10007FF18();
  }

  v11 = a7;
  if (a7 <= 0)
  {
    sub_10007FEEC();
  }

  bzero(a6, 664 * a7);
  vrx_apply_eye_rx_cylinder_sign_flip(a3);
  vrx_apply_eye_rx_cylinder_sign_flip((a3 + 24));
  v106 = 0.0;
  v107[0] = 0.0;
  if (a5)
  {
    if (a5 == 1)
    {
      *a3 = *a3 + -0.75;
      *(a3 + 24) = *(a3 + 24) + -0.75;
      *(a3 + 48) = 0;
      *(a3 + 56) = 0;
      v10 = 35;
    }
  }

  else
  {
    vrx_apply_vr_add(a3, v10, v107, &v106, a9);
  }

  __asm { FMOV            V2.2D, #4.0 }

  v19 = vrndaq_f64(vmulq_f64(*a3, _Q2));
  v20 = vrndaq_f64(vmulq_f64(*(a3 + 24), _Q2));
  __asm { FMOV            V2.2D, #0.25 }

  v22 = vmulq_f64(v20, _Q2);
  v23 = vmulq_f64(v19, _Q2);
  *a3 = v23;
  *(a3 + 24) = v22;
  v99 = v11;
  if (!a2 || (*a3 == *(a3 + 24) ? (_ZF = *(a3 + 8) == *(a3 + 32)) : (_ZF = 0), _ZF ? (v25 = *(a3 + 16) == *(a3 + 40)) : (v25 = 0), !v25 || v23.f64[1] != 0.0 || *(a3 + 16) != 0.0))
  {
LABEL_32:
    v100 = v23;
    v103 = v22;
    v32 = __sincos_stret((*(a3 + 16) + *(a3 + 16)) * 3.14159265 / 180.0);
    v33 = __sincos_stret((*(a3 + 40) + *(a3 + 40)) * 3.14159265 / 180.0);
    v34 = v10 > 0x27;
    v35 = v107[0] > 0.0 || v10 > 0x27;
    if (v35)
    {
      v36 = 0.7;
    }

    else
    {
      v36 = 1.0;
    }

    if (v35)
    {
      v37 = 0.7;
    }

    else
    {
      v37 = 2.0;
    }

    if (v106 > 0.0)
    {
      v34 = 1;
    }

    if (v34)
    {
      v38 = 0.7;
    }

    else
    {
      v38 = 1.0;
    }

    if (v34)
    {
      v39 = 0.7;
    }

    else
    {
      v39 = 2.0;
    }

    v40 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v41 = malloc_type_calloc(*(a1 + 16), 0x18uLL, 0x1000040504FFAC1uLL);
    v42 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v43 = malloc_type_calloc(*(a1 + 16), 8uLL, 0x100004000313F17uLL);
    v44 = a1;
    v45 = *(a1 + 16);
    v89 = v41;
    v90 = v40;
    if (v45 < 1)
    {
      v101 = 0;
LABEL_84:
      v88 = v43;
      free(v90);
      free(v89);
      free(v42);
      free(v88);
      return v101;
    }

    v46 = 0;
    v47 = vmuld_lane_f64(0.5, v100, 1);
    v48 = v47 + v100.f64[0];
    v49 = -(v47 * v32.__cosval);
    v50 = -(v47 * v32.__sinval);
    v51 = vmuld_lane_f64(0.5, v103, 1);
    v55.f64[0] = v51 + v103.f64[0];
    v52 = -(v51 * v33.__cosval);
    v53 = -(v51 * v33.__sinval);
    v95 = v49;
    v96 = v48;
    v54.f64[0] = v48;
    v54.f64[1] = v49;
    v93 = v52;
    v94 = v55.f64[0];
    v55.f64[1] = v52;
    v56 = (*(a1 + 8) + 160);
    v57 = v42;
    v58 = v43;
    do
    {
      v59 = &v40[v46];
      *v59 = vsubq_f64(*(v56 - 136), v54);
      *(v59 + 2) = v56[-8].f64[1] - v50;
      v60 = &v41[v46];
      *v60 = vsubq_f64(*v56, v55);
      v61 = *&v40[v46];
      *(v60 + 2) = v56[1].f64[0] - v53;
      if (v61 < 0.0)
      {
        v62 = v37;
      }

      else
      {
        v62 = v36;
      }

      v63 = v61 / v62;
      v64 = vaddq_f64(*(v59 + 8), *(v59 + 8));
      v65 = vmulq_f64(v64, v64);
      *v57++ = sqrt(v65.f64[1] + v65.f64[0] + v63 * v63);
      if (*v60 < 0.0)
      {
        v66 = v39;
      }

      else
      {
        v66 = v38;
      }

      v67 = *v60 / v66 * (*v60 / v66);
      v68 = vaddq_f64(*(v60 + 8), *(v60 + 8));
      v69 = vmulq_f64(v68, v68);
      *v58++ = sqrt(v69.f64[1] + v69.f64[0] + v67);
      v46 += 24;
      v56 = (v56 + 296);
    }

    while (24 * v45 != v46);
    v70 = 0;
    v101 = 0;
    v91 = &a6[664 * v11 - 8];
    v92 = v11 - 1;
    v71 = -1.5;
    v72 = -0.5;
    v97 = v42;
    while (1)
    {
      v73 = *(v44 + 8) + 296 * v70;
      if (!*(v73 + 128))
      {
        v74 = *(v73 + 132) && a8 == 0;
        if (!v74 && v45 >= 1)
        {
          break;
        }
      }

LABEL_81:
      if (++v70 >= v45)
      {
        goto LABEL_84;
      }
    }

    v76 = 0;
    v77 = 0;
    v78 = v89;
    v104 = &v90[24 * v70];
    while (1)
    {
      v79 = *(v44 + 8);
      if (*(v79 + v76 + 264) || !a8 && *(v79 + v76 + 268))
      {
        goto LABEL_80;
      }

      v80 = v43;
      v81 = (erf((fabs(sqrt(*(v42 + v70) * *(v42 + v70) + *(v43 + v77) * *(v43 + v77))) + v71) / 0.707106781) + 1.0) * v72 + 1.0;
      if (vabdd_f64(*v104, *v78) <= 0.25)
      {
        v82 = v81;
      }

      else
      {
        v82 = 0.0;
      }

      if (v82 >= *&qword_1000BA598)
      {
        if (v101 < v99)
        {
          v83 = v101;
          v101 = (v101 + 1);
LABEL_79:
          v45 = &a6[664 * v83];
          v84 = sqrt((v96 - *(v73 + 24)) * (v96 - *(v73 + 24)) + (v95 - *(v73 + 32)) * (v95 - *(v73 + 32)) + (v50 - *(v73 + 40)) * (v50 - *(v73 + 40)));
          v85 = sqrt((v94 - *(v79 + v76 + 160)) * (v94 - *(v79 + v76 + 160)) + (v93 - *(v79 + v76 + 168)) * (v93 - *(v79 + v76 + 168)) + (v53 - *(v79 + v76 + 176)) * (v53 - *(v79 + v76 + 176)));
          memcpy(v45, v73, 0x128uLL);
          v86 = *(v104 + 2);
          *(v45 + 296) = *v104;
          *(v45 + 312) = v86;
          *(v45 + 320) = v84;
          v71 = -1.5;
          memcpy((v45 + 328), (v79 + v76), 0x128uLL);
          v87 = *(v78 + 2);
          *(v45 + 624) = *v78;
          *(v45 + 640) = v87;
          *(v45 + 648) = v85;
          v72 = -0.5;
          *(v45 + 656) = v82;
          v42 = v97;
          qsort(a6, v101, 0x298uLL, sub_10007E97C);
          v44 = a1;
          v43 = v80;
          LODWORD(v45) = *(a1 + 16);
          goto LABEL_80;
        }

        v83 = v92;
        v43 = v80;
        v44 = a1;
        if (v82 > *v91)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v43 = v80;
        v44 = a1;
      }

LABEL_80:
      ++v77;
      v78 += 3;
      v76 += 296;
      if (v77 >= v45)
      {
        goto LABEL_81;
      }
    }
  }

  v26 = *(a2 + 16);
  if (v26 < 1)
  {
    goto LABEL_31;
  }

  v27 = 0;
  v28 = 0;
  result = 0;
  while (1)
  {
    v11 = *(a2 + 8);
    if (*(v11 + v27) != *a3)
    {
      LODWORD(v11) = v99;
      goto LABEL_27;
    }

    v30 = &a6[664 * result];
    v31 = result;
    bzero(v30, 0x298uLL);
    memcpy(v30, (v11 + v27), 0x128uLL);
    memcpy(v30 + 328, (v11 + v27), 0x128uLL);
    *(v30 + 82) = 0x3FF0000000000000;
    result = (v31 + 1);
    LODWORD(v11) = v99;
    if (result == v99)
    {
      break;
    }

    v26 = *(a2 + 16);
LABEL_27:
    ++v28;
    v27 += 296;
    if (v28 >= v26)
    {
      goto LABEL_30;
    }
  }

  result = v99;
LABEL_30:
  if (result <= 0)
  {
LABEL_31:
    v23 = *a3;
    v22 = *(a3 + 24);
    goto LABEL_32;
  }

  return result;
}

uint64_t sub_10007E97C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 656) - *(a2 + 656);
  if (v2 <= 0.0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (v2 < 0.0)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

uint64_t vrx_reserve_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_100080020();
  }

  if (!a2)
  {
    sub_10007FFF4();
  }

  if (!a3)
  {
    sub_10007FFC8();
  }

  v5 = sub_10007EA34(a1, a2);
  v6 = sub_10007EA34(a1, a3);
  v7 = 0;
  if (v5 && v6)
  {
    if (v5[32] || v6[66] || v5[33] || v6[67])
    {
      return 0;
    }

    else
    {
      v7 = 1;
      v5[33] = 1;
      v6[67] = 1;
    }
  }

  return v7;
}

void *sub_10007EA34(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  __strcpy_chk();
  return bsearch(v4, *(a1 + 8), *(a1 + 16), 0x128uLL, sub_10007F9CC);
}

uint64_t vrx_release_lens_pair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    sub_1000800A4();
  }

  if (!a2)
  {
    sub_100080078();
  }

  if (!a3)
  {
    sub_10008004C();
  }

  v5 = sub_10007EA34(a1, a2);
  v6 = sub_10007EA34(a1, a3);
  v7 = 0;
  if (v5)
  {
    if (v6)
    {
      v7 = v5[33];
      if (v7)
      {
        v7 = v6[67];
        if (v7)
        {
          v5[33] = 0;
          v6[67] = 0;
          return 1;
        }
      }
    }
  }

  return v7;
}

uint64_t vrx_release_all_lenses(uint64_t result)
{
  if (!result)
  {
    sub_1000800D0();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 268);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_set_lens_missing(uint64_t a1, uint64_t a2, int a3, int a4)
{
  if (!a2)
  {
    sub_1000800FC();
  }

  result = sub_10007EA34(a1, a2);
  if (result)
  {
    if (!a3)
    {
      v7 = 128;
      goto LABEL_7;
    }

    if (a3 == 1)
    {
      v7 = 264;
LABEL_7:
      *(result + v7) = a4;
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t vrx_clear_missing_lenses(uint64_t result)
{
  if (!result)
  {
    sub_100080128();
  }

  v1 = *(result + 16);
  if (v1 >= 1)
  {
    v2 = (*(result + 8) + 264);
    do
    {
      *(v2 - 34) = 0;
      *v2 = 0;
      v2 += 74;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_label(uint64_t a1, uint64_t a2, void *a3)
{
  if (!a1)
  {
    sub_100080180();
  }

  if (!a2)
  {
    sub_100080154();
  }

  result = sub_10007EA34(a1, a2);
  if (result)
  {
    memcpy(a3, result, 0x128uLL);
    return 1;
  }

  return result;
}

uint64_t vrx_get_lens_tray_slot_for_location(uint64_t a1, uint64_t a2, uint64_t a3, void *__dst)
{
  if (!a1)
  {
    sub_1000801AC();
  }

  if (a2 < 1)
  {
    return 0;
  }

  result = 0;
  if (a3 >= 1 && *(a1 + 20) >= a2)
  {
    v6 = *(a1 + 24);
    if (v6 >= a3)
    {
      v7 = *(*(a1 + 32) + 8 * (a3 + v6 * (a2 - 1) - 1));
      if (v7)
      {
        memcpy(__dst, v7, 0x128uLL);
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL vrx_get_lens_tray_slot_for_sequence_number(uint64_t a1, uint64_t a2, char *__s2)
{
  if (!a1)
  {
    sub_100080204();
  }

  if (!__s2)
  {
    sub_1000801D8();
  }

  v4 = *(a1 + 16);
  if (v4 >= 1)
  {
    v5 = a2;
    v6 = 0;
    v7 = *(a1 + 8);
    v8 = 1;
    v9 = v7;
    v10 = 1;
    while (1)
    {
      if (v5)
      {
        if (v5 == 1)
        {
          v11 = v7 + 296 * v6 + 136;
LABEL_9:
          if (!strcmp((v11 + 72), __s2))
          {
            return v10;
          }
        }
      }

      else
      {
        v11 = v9;
        if (v7)
        {
          goto LABEL_9;
        }
      }

      ++v6;
      v10 = v8 < v4;
      v9 += 296;
      if (++v8 - v4 == 1)
      {
        return v10;
      }
    }
  }

  return 0;
}

uint64_t vrx_print_eye_rx(double *a1)
{
  if (!a1)
  {
    sub_100080230();
  }

  return printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
}

uint64_t vrx_print_rx(double *a1)
{
  if (!a1)
  {
    sub_10008025C();
  }

  printf("OD:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", *a1, a1[1], a1[2]);
  putchar(10);
  printf("OS:       ");
  printf("sph: %+6.2f, cyl: %+6.2f, axis: %3d", a1[3], a1[4], a1[5]);
  putchar(10);
  printf("OD ADD:   %+6.2f\n", a1[6]);
  printf("OS ADD:   %+6.2f\n", a1[7]);

  return putchar(10);
}

uint64_t vrx_print_power_vector(double *a1)
{
  if (!a1)
  {
    sub_100080288();
  }

  return printf("M: %+.6f, J0: %+.6f, J45: %+.6f\n", *a1, a1[1], a1[2]);
}

_DWORD *vrx_parse_supported_lens_matrix(uint64_t a1)
{
  if (!a1)
  {
    sub_1000802B4();
  }

  v1 = vrx_reader_open_string(a1);

  return sub_10007EF74(v1);
}

_DWORD *sub_10007EF74(uint64_t a1)
{
  if (!a1)
  {
    sub_1000802E0();
  }

  v1 = vrx_csv_file_create(a1);
  if (!v1)
  {
    v4 = 0;
    v9 = &unk_1000C1000;
    v10 = 1;
LABEL_19:
    v9[242] = v10;
    return v4;
  }

  v2 = v1;
  if (!vrx_csv_file_next_record(v1) || (v15 = 0.0, !vrx_csv_file_next_double(v2, &v15)))
  {
    vrx_csv_file_destroy(v2);
LABEL_18:
    v4 = 0;
    v9 = &unk_1000C1000;
    v10 = 2;
    goto LABEL_19;
  }

  v3 = vrx_vector_create_(0x80u, 2u, 0);
  while (vrx_csv_file_next_double(v2, &v15))
  {
    LOWORD(__src) = (v15 * 100.0);
    vrx_vector_append(v3, &__src);
  }

  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040E271B65FuLL);
  v4[6] = vrx_vector_length(v3);
  *(v4 + 1) = vrx_vector_finalize(v3);
  v5 = vrx_vector_create_(0x80u, 8u, 1);
  v6 = vrx_vector_create_(0x80u, 2u, 0);
  if (vrx_csv_file_next_record(v2))
  {
    while (vrx_csv_file_next_double(v2, &v15))
    {
      v14 = (v15 * 100.0);
      vrx_vector_append(v6, &v14);
      v7 = vrx_vector_create_(v4[6], 2u, 0);
      if (v4[6] >= 1)
      {
        v8 = 0;
        do
        {
          LODWORD(__src) = 0;
          if (!vrx_csv_file_next_int(v2, &__src))
          {
            goto LABEL_17;
          }

          v13 = __src;
          vrx_vector_append(v7, &v13);
        }

        while (++v8 < v4[6]);
      }

      __src = vrx_vector_finalize(v7);
      vrx_vector_append(v5, &__src);
      if (!vrx_csv_file_next_record(v2))
      {
        goto LABEL_14;
      }
    }

LABEL_17:
    vrx_csv_file_destroy(v2);
    vrx_unload_supported_lens_matrix(v4);
    goto LABEL_18;
  }

LABEL_14:
  v4[7] = vrx_vector_length(v6);
  *(v4 + 2) = vrx_vector_finalize(v6);
  *v4 = vrx_vector_finalize(v5);
  vrx_csv_file_destroy(v2);
  vrx_error = 0;
  return v4;
}

void *vrx_load_supported_lens_matrix(const char *a1)
{
  if (!a1)
  {
    sub_10008030C();
  }

  result = vrx_reader_open_file(a1);
  if (result)
  {

    return sub_10007EF74(result);
  }

  return result;
}

void vrx_unload_supported_lens_matrix(uint64_t a1)
{
  if (a1)
  {
    free(*(a1 + 8));
    free(*(a1 + 16));
    if (*(a1 + 28) >= 1)
    {
      v2 = 0;
      do
      {
        free(*(*a1 + 8 * v2++));
      }

      while (v2 < *(a1 + 28));
    }

    free(*a1);

    free(a1);
  }
}

_DWORD *vrx_load_lens_tray_from_supported_lens_matrix(uint64_t a1, double a2, double a3)
{
  if (!a1)
  {
    sub_100080338();
  }

    ;
  }

    ;
  }

  while (a3 < 0.0)
  {
    a3 = a3 + 180.0;
  }

    ;
  }

  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10F0040E7A3C391uLL);
  *v6 = strdup("<virtual>");
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  __src = 0u;
  v22 = 0u;
  v7 = vrx_vector_create_(0x80u, 0x128u, 0);
  v8 = *(a1 + 28);
  if (v8 >= 1)
  {
    v9 = __sincos_stret((i + i) * 3.14159265 / 180.0);
    v10 = *(a1 + 24);
    v11 = __sincos_stret((a3 + a3) * 3.14159265 / 180.0);
    v12 = 0;
    do
    {
      v13 = v12 + 1;
      if (v10 >= 1)
      {
        v14 = 0;
        v15 = *(*(a1 + 16) + 2 * v12) / 100.0;
        do
        {
          if (*(*(*a1 + 8 * v12) + 2 * v14))
          {
            v16 = *(*(a1 + 8) + 2 * v14);
            __src = 0u;
            v22 = 0u;
            v23 = 0u;
            v24 = 0u;
            v25 = 0u;
            v26 = 0u;
            v27 = 0u;
            v28 = 0u;
            v29 = 0u;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v17 = a3;
            v18 = v16 / 100.0;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            *(&v38 + 1) = 0;
            v39 = 0;
            LODWORD(v38) = v12 + 1;
            DWORD1(v38) = ++v14;
            sub_10007F59C(v12 + 1, v14, "", &v38 + 8);
            *&__src = v18;
            *(&__src + 1) = v15;
            *(&v29 + 1) = v18;
            *&v30 = v15;
            v19 = v15 * 0.5 + v18;
            a3 = v17;
            *&v22 = i;
            *(&v22 + 1) = v19;
            *&v23 = -(v15 * 0.5 * v9.__cosval);
            *(&v23 + 1) = -(v15 * 0.5 * v9.__sinval);
            *(&v30 + 1) = v17;
            *&v31 = v19;
            *(&v31 + 1) = -(v15 * 0.5 * v11.__cosval);
            *&v32 = -(v15 * 0.5 * v11.__sinval);
            vrx_vector_append(v7, &__src);
            v10 = *(a1 + 24);
          }

          else
          {
            ++v14;
          }
        }

        while (v14 < v10);
        v8 = *(a1 + 28);
      }

      ++v12;
    }

    while (v13 < v8);
  }

  v6[4] = vrx_vector_length(v7);
  *(v6 + 1) = vrx_vector_finalize(v7);
  return v6;
}

uint64_t sub_10007F59C(unsigned int a1, int a2, const char *a3, char *a4)
{
  if (!a4)
  {
    sub_100080364();
  }

  lens_tray_row_label = vrx_generate_lens_tray_row_label(a1, __str);
  result = 0;
  if ((a2 - 1000) >= 0xFFFFFC19)
  {
    if (lens_tray_row_label)
    {
      snprintf(a4, 0xCuLL, "%s%02d%s", __str, a2, a3);
      return 1;
    }
  }

  return result;
}

void *vrx_lens_is_supported(uint64_t a1, double *a2)
{
  if (!a1)
  {
    sub_1000803BC();
  }

  if (!a2)
  {
    sub_100080390();
  }

  v3 = a2[1];
  __key = (*a2 * 100.0);
  v7 = (v3 * 100.0);
  result = bsearch(&__key, *(a1 + 8), *(a1 + 24), 2uLL, sub_10007F72C);
  if (result)
  {
    v5 = result;
    v6 = *(a1 + 8);
    result = bsearch(&v7, *(a1 + 16), *(a1 + 28), 2uLL, sub_10007F72C);
    if (result)
    {
      return (*(*(*a1 + 8 * (((result - *(a1 + 16)) << 47) >> 48)) + 2 * (((v5 - v6) << 47) >> 48)) != 0);
    }
  }

  return result;
}

uint64_t sub_10007F72C(_WORD *a1, _WORD *a2)
{
  if ((*a1 - *a2) < 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 != *a2;
  }
}

BOOL vrx_get_lens_for_serial_number(uint64_t a1, char *__s2, uint64_t a3)
{
  if (!a1)
  {
    sub_100080440();
  }

  if (!__s2)
  {
    sub_100080414();
  }

  if (!a3)
  {
    sub_1000803E8();
  }

  *(a3 + 144) = 0;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v5 = *(a1 + 16);
  if (v5 < 1)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 8);
  v8 = 1;
  v9 = 1;
  while (strcmp((v7 + v6 + 48), __s2))
  {
    if (!strcmp((v7 + v6 + 184), __s2))
    {
      v11 = v7 + v6 + 136;
      goto LABEL_13;
    }

LABEL_10:
    v9 = v8 < v5;
    v6 += 296;
    ++v8;
    if (296 * v5 == v6)
    {
      return 0;
    }
  }

  if (!v7)
  {
    goto LABEL_10;
  }

  v11 = v7 + v6;
LABEL_13:
  *a3 = *v11;
  v12 = *(v11 + 16);
  v13 = *(v11 + 32);
  v14 = *(v11 + 64);
  *(a3 + 48) = *(v11 + 48);
  *(a3 + 64) = v14;
  *(a3 + 16) = v12;
  *(a3 + 32) = v13;
  v15 = *(v11 + 80);
  v16 = *(v11 + 96);
  v17 = *(v11 + 112);
  *(a3 + 128) = *(v11 + 128);
  *(a3 + 96) = v16;
  *(a3 + 112) = v17;
  *(a3 + 80) = v15;
  strcpy((a3 + 136), (v7 + v6 + 280));
  return v9;
}

uint64_t vrx_get_lens_for_slot(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (!a1)
  {
    sub_1000804F0();
  }

  if (!a2)
  {
    sub_1000804C4();
  }

  if (a3 >= 2)
  {
    sub_100080498();
  }

  if (!a4)
  {
    sub_10008046C();
  }

  *(a4 + 128) = 0;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  __strcpy_chk();
  result = bsearch(v16, *(a1 + 8), *(a1 + 16), 0x128uLL, sub_10007F9CC);
  if (result)
  {
    v8 = 136;
    if (!a3)
    {
      v8 = 0;
    }

    v9 = result + v8;
    *a4 = *v9;
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 64);
    *(a4 + 48) = *(v9 + 48);
    *(a4 + 64) = v12;
    *(a4 + 16) = v10;
    *(a4 + 32) = v11;
    v13 = *(v9 + 80);
    v14 = *(v9 + 96);
    v15 = *(v9 + 112);
    *(a4 + 128) = *(v9 + 128);
    *(a4 + 96) = v14;
    *(a4 + 112) = v15;
    *(a4 + 80) = v13;
    return 1;
  }

  return result;
}

char *vrx_is_demo_tray_file(char *a1, char **a2)
{
  result = strrchr(a1, 46);
  if (result)
  {
    v5 = result;
    if (!strcmp(result + 1, vrx_demo_tray_file_extension[0]))
    {
      if (a2)
      {
        *a2 = strndup(a1, v5 - a1);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_10008051C()
{
  sub_100003AC4();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000805A4()
{
  v6 = 136315650;
  sub_100003AC4();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_10008062C()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000806A8()
{
  sub_100003AC4();
  sub_100003B08();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void sub_10008072C()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Error deriving public key: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000807A8()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100080824()
{
  sub_100003AC4();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000808AC()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100080928()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_1000809A4()
{
  sub_100003AF0(__stack_chk_guard);
  v6 = 136315650;
  sub_100003AB4();
  sub_100003AA0();
  sub_100003AD4(&_mh_execute_header, v0, v1, "%s @%d: Keychain error: %{public}@", v2, v3, v4, v5, v6);
}

void sub_100080A20()
{
  sub_100003AC4();
  sub_100003B08();
  sub_100003AFC();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}