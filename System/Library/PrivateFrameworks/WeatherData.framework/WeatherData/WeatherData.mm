uint64_t FlatbufferEncodable.asFlatbufferData.getter(uint64_t a1, uint64_t a2)
{
  v4 = FlatBufferBuilder.init(initialSize:serializeDefaults:)(1024, 0, v8);
  (*(a2 + 8))(__dst, v8, a1, a2, v4);
  FlatBufferBuilder.finish(offset:addPrefix:)(__dst, 0);
  v5 = sub_272B51468((*(v8[1] + 24) + *(v8[1] + 32) - v8[2]), v8[2]);
  v6 = sub_272B51500(v5);
  memcpy(__dst, v8, sizeof(__dst));
  sub_272B51710(__dst);
  return v6;
}

double FlatBufferBuilder.init(initialSize:serializeDefaults:)@<D0>(int a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for FlatBufferBuilder.VTableStorage();
  v6 = swift_allocObject();
  v7 = OUTLINED_FUNCTION_33_0(v6);
  *(v6 + 32) = v7;
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  v8 = MEMORY[0x277D84F90];
  v9 = sub_272B87690();
  v10 = sub_272B46564(a1);
  type metadata accessor for ByteBuffer.Storage();
  swift_allocObject();
  v11 = ByteBuffer.Storage.init(count:alignment:)(v10, 1);

  ByteBuffer.Storage.initialize(for:)(v10);

  *a3 = v6;
  *(a3 + 8) = v11;
  result = 0.0;
  *(a3 + 16) = xmmword_272B8A880;
  *(a3 + 32) = v8;
  *(a3 + 40) = 0;
  *(a3 + 48) = v9;
  *(a3 + 56) = 0;
  *(a3 + 57) = a2;
  *(a3 + 64) = 0;
  return result;
}

unint64_t sub_272B46564(unint64_t result)
{
  if (result < 1)
  {
    return 1;
  }

  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    v1 = (result - 1) | ((result - 1) >> 1) | (((result - 1) | ((result - 1) >> 1)) >> 2);
    v2 = v1 | (v1 >> 4) | ((v1 | (v1 >> 4)) >> 8);
    v3 = v2 | HIWORD(v2);
    v4 = __CFADD__(v3, 1);
    v5 = v3 + 1;
    if (v4)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

uint64_t ByteBuffer.Storage.init(count:alignment:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = swift_slowAlloc();
  *(v2 + 32) = a1;
  *(v2 + 16) = 0;
  return v2;
}

uint64_t sub_272B46620@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v24 = a4;
  v25 = a1;
  v26 = a3;
  v22 = *(a2 - 8);
  v23 = a2;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19);
  v20 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v11) != 1)
  {
    (*(v12 + 32))(v15, v17, v11);
    v25(v15, v9);
    (*(v12 + 8))(v15, v11);
    if (v5)
    {
      return (*(v22 + 32))(v24, v9, v23);
    }

    v20 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a5, v20, 1, v26);
}

void FlatBufferBuilder.create(string:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_76_0();
  v5 = v2;
  v7 = v6;
  if (v4)
  {
    v8 = v4;
    v9 = v3;
    v10 = HIBYTE(v4) & 0xF;
    if ((v4 & 0x1000000000000000) != 0)
    {
      goto LABEL_73;
    }

    if ((v4 & 0x2000000000000000) != 0)
    {
      v11 = HIBYTE(v4) & 0xF;
    }

    else
    {
      v11 = v3 & 0xFFFFFFFFFFFFLL;
    }

LABEL_6:
    OUTLINED_FUNCTION_57_0();
    if (v13 ^ v14 | v12)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v15 = v5[2];
    OUTLINED_FUNCTION_65_0();
    if (!(v13 ^ v14 | v12))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (((v15 | (v11 + 1)) & 0x8000000000000000) != 0)
    {
      goto LABEL_74;
    }

    OUTLINED_FUNCTION_30_0();
    if (!(v13 ^ v14 | v12))
    {
      goto LABEL_75;
    }

    v52 = v7;
    v16 = (~(v15 + v11) & 3) + v15;
    v7 = v5[1];
    OUTLINED_FUNCTION_5_1();
    if (v13 != v14)
    {
      v17 = v5[3];

      v18 = OUTLINED_FUNCTION_39_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v17);
    }

    else
    {
    }

    v5[2] = v16;
    OUTLINED_FUNCTION_5_1();
    if (v13 ^ v14 | v12)
    {
      v20 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v20, v16, v21);
    }

    v5[2] = v16 + 1;
    OUTLINED_FUNCTION_38_0();
    if (v13 != v14)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v16 + 1, v5[3]);
    }

    v22 = OUTLINED_FUNCTION_69_0();
    sub_272B46F44(v22, v23, v24, v11);
    OUTLINED_FUNCTION_67_0();
    if (!v12)
    {
      goto LABEL_59;
    }

    v25 = (v8 & 0x2000000000000000) != 0 ? v10 : v9 & 0xFFFFFFFFFFFFLL;
    if (!v25)
    {
      goto LABEL_59;
    }

    v26 = (v9 >> 59) & 1;
    if ((v8 & 0x1000000000000000) == 0)
    {
      LODWORD(v26) = 1;
    }

    v27 = 11;
    if (v26)
    {
      v27 = 7;
    }

    v28 = v27 | (v25 << 16);
    v10 = 4 << v26;

    while (1)
    {
      if ((v28 & 0xC) == v10)
      {
        OUTLINED_FUNCTION_28_0();
        v32 = sub_272B73308(v29, v30, v31);
        if (v32 < 0x4000)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:

LABEL_59:

          if ((v11 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v11))
            {
              v42 = v5[2];
              if ((v42 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v42))
                {
                  v43 = OUTLINED_FUNCTION_10_0(v41, v42);
                  v45 = v43 + v44;
                  OUTLINED_FUNCTION_5_1();
                  if (v13 != v14)
                  {
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v46, v47, v5[3]);
                  }

                  OUTLINED_FUNCTION_19();
                  if (v13 != v14)
                  {
                    v48 = OUTLINED_FUNCTION_21_0();
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v48, v45, v49);
                  }

                  OUTLINED_FUNCTION_7_1();
                  *(v50 - 4) = v11;
                  OUTLINED_FUNCTION_42_0();
                  if (!(!v12 & v51))
                  {
                    v7 = v52;
                    goto LABEL_71;
                  }

LABEL_80:
                  __break(1u);
                }

LABEL_79:
                __break(1u);
                goto LABEL_80;
              }

LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

LABEL_77:
            __break(1u);
            goto LABEL_78;
          }

LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

        v28 = v32;
        if ((v8 & 0x1000000000000000) == 0)
        {
LABEL_37:
          OUTLINED_FUNCTION_44_0();
          goto LABEL_42;
        }
      }

      else if ((v8 & 0x1000000000000000) == 0)
      {
        goto LABEL_37;
      }

      if (v25 < v28 >> 16)
      {
        __break(1u);
LABEL_73:
        OUTLINED_FUNCTION_69_0();
        v11 = sub_272B87760();
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_28_0();
      v28 = sub_272B87770();
LABEL_42:
      v33 = v28;
      if ((v28 & 0xC) == v10)
      {
        OUTLINED_FUNCTION_28_0();
        v33 = sub_272B73308(v38, v39, v40);
      }

      if (v33 >> 16 >= v25)
      {
        goto LABEL_57;
      }

      if ((v8 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_28_0();
        sub_272B87790();
      }

      else if ((v8 & 0x2000000000000000) == 0 && (v9 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_69_0();
        sub_272B878E0();
      }

      v34 = v5[2];
      OUTLINED_FUNCTION_105();
      if (v13 != v14)
      {
        v36 = OUTLINED_FUNCTION_34_1();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v36, v34, v37);
        v35 = *(v7 + 32);
      }

      OUTLINED_FUNCTION_60_0(v35);
      v5[2] = v34 + 1;
      if (!(v28 >> 14))
      {
        goto LABEL_58;
      }
    }
  }

  LODWORD(v10) = 0;
LABEL_71:
  *v7 = v10;
  OUTLINED_FUNCTION_75_0();
}

void OUTLINED_FUNCTION_61(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{

  Verifier.rangeInBuffer(position:size:)(v22, 2);
}

void OUTLINED_FUNCTION_32(Swift::Int a1)
{

  Verifier.rangeInBuffer(position:size:)(a1, 4);
}

int64x2_t OUTLINED_FUNCTION_33@<Q0>(uint64_t a1@<X8>, int64x2_t a2@<Q0>, int64x2_t a3@<Q1>)
{
  result = vaddq_s64(a2, a3);
  *(a1 + 72) = result;
  return result;
}

void OUTLINED_FUNCTION_62()
{

  Verifier.rangeInBuffer(position:size:)(v0, 2);
}

uint64_t OUTLINED_FUNCTION_177(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_5_0(uint64_t result)
{
  *(v6 - 240) = v1;
  *(v6 - 232) = v3;
  *(v6 - 208) = v5;
  *(v6 - 200) = v4;
  *(v6 - 224) = v2;
  *(v6 - 216) = result;
  return result;
}

void OUTLINED_FUNCTION_5_3()
{

  JUMPOUT(0x2743D4AA0);
}

void OUTLINED_FUNCTION_66()
{

  Verifier.rangeInBuffer(position:size:)(v0, 4);
}

uint64_t OUTLINED_FUNCTION_33_0(uint64_t a1)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 8;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;

  return swift_slowAlloc();
}

uint64_t sub_272B46F44(uint64_t a1, uint64_t a2, void *a3, size_t __n)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
    v6 = v9;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      result = sub_272B878E0();
      v6 = result;
      if (!result)
      {
        __break(1u);
        return result;
      }
    }

    v7 = (*(*a3 + 24) + *(*a3 + 32) - (a3[1] + __n));
  }

  memcpy(v7, v6, __n);
  a3[1] += __n;
  return 1;
}

void OUTLINED_FUNCTION_186(Swift::Int a1)
{
  v4 = *(v1 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a1, v2, v4);
}

unint64_t OUTLINED_FUNCTION_204()
{

  return sub_272B5C86C();
}

uint64_t OUTLINED_FUNCTION_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;
  *(a2 + 24) = a9;
  *(a2 + 40) = a10;
  *(a2 + 56) = a11;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

__n128 OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, uint64_t a10, __int128 a11, __n128 a13, uint64_t a14)
{
  result = a13;
  *(a2 + 24) = a11;
  *(a2 + 40) = a13;
  *(a2 + 56) = a14;
  return result;
}

uint64_t OUTLINED_FUNCTION_51(uint64_t result, __n128 a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  *(v2 + 24) = v3;
  return result;
}

void static WK2_Metadata.add(readTime:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v3 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v3 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v13 - 4) = v5;
  OUTLINED_FUNCTION_55();
  if (!v6 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 18;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x12)
    {
      LOWORD(v19) = 18;
    }

    *(v18 + 64) = v19;
    goto LABEL_22;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_35_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  Verifier.rangeInBuffer(position:size:)(a17 + a1, 1);
}

void OUTLINED_FUNCTION_53_0(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  Verifier.rangeInBuffer(position:size:)(a17 + a1, 1);
}

void static WK2_Metadata.add(expireTime:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  v5 = v4;
  if (!v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(v3 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v10))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(v3 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v13 - 4) = v5;
  OUTLINED_FUNCTION_55();
  if (!v6 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_Metadata.add(latitude:_:)(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(a1 + 24));
  }

  *(a1 + 16) = v3;
  OUTLINED_FUNCTION_15_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v3, *(a1 + 24));
    v12 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v13)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v16 = v3 + 4;
      *(v16 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0xA)
    {
      LOWORD(v18) = 10;
    }

    *(v17 + 64) = v18;
  }
}

void static WK2_Metadata.add(longitude:_:)(uint64_t a1, float a2)
{
  if (a2 == 0.0)
  {
    OUTLINED_FUNCTION_79();
    if (!v5)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v7 ^ v8 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(a1 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v9))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(a1 + 24));
  }

  *(a1 + 16) = v3;
  OUTLINED_FUNCTION_15_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v3, *(a1 + 24));
    v12 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v12);
  if (!v5 & v13)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v15)
  {
    __break(1u);
  }

  else
  {
    if (*(v14 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v16 = v3 + 4;
      *(v16 + 4) = 12;
    }

    OUTLINED_FUNCTION_33(v14, *(v14 + 72), xmmword_272B87CB0);
    if (v18 <= 0xC)
    {
      LOWORD(v18) = 12;
    }

    *(v17 + 64) = v18;
  }
}

uint64_t OUTLINED_FUNCTION_157(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = 3;

  return swift_willThrow();
}

void OUTLINED_FUNCTION_2_1()
{

  Verifier.rangeInBuffer(position:size:)(v0, 2);
}

void OUTLINED_FUNCTION_173(Swift::Int a1)
{

  Verifier.rangeInBuffer(position:size:)(a1, 2);
}

void OUTLINED_FUNCTION_12_2(Swift::Int a1)
{
  v4 = *(v1 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a1, v2, v4);
}

__n128 OUTLINED_FUNCTION_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, __int128 a9, __n128 a11, uint64_t a12)
{
  result = a11;
  *(a2 + 24) = a9;
  *(a2 + 40) = a11;
  *(a2 + 56) = a12;
  return result;
}

void OUTLINED_FUNCTION_92(int a1, unint64_t position, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);

  Verifier.visitTable(at:)(position, va);
}

void OUTLINED_FUNCTION_9()
{
  v3 = *(v0 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v1, v3);
}

void static WK2_Metadata.add(providerName:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v5)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v9))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v10 = OUTLINED_FUNCTION_3(v6, v9);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v2 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v12)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v13)
  {
    OUTLINED_FUNCTION_79();
    if (!v13)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v14 = OUTLINED_FUNCTION_15();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_186(v14);
  }

  OUTLINED_FUNCTION_27();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
    v15 = *(v3 + 32);
  }

  OUTLINED_FUNCTION_4(v15);
  if (!v13 & v16)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v18 & 1) == 0)
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v4;
      *(v19 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 0x10)
    {
      LOWORD(v21) = 16;
    }

    *(v20 + 64) = v21;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_56@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  *a2 = a1;
  *(a2 + 8) = a3;
  *(a2 + 24) = v3;
}

void static WK2_Metadata.add(temporarilyUnavailable:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_21:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v1[8] <= 0)
  {
    v1[8] = 1;
    v1[3] = 1;
  }

  v5 = v1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v5))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[1];
  OUTLINED_FUNCTION_15_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v5, v1[3]);
  }

  v1[2] = v5;
  OUTLINED_FUNCTION_15_0();
  if (v7 ^ v8 | v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, v1[3]);
    v9 = *(v6 + 32);
  }

  *(*(v6 + 24) + v9 + ~v5) = v3 & 1;
  v1[2] = v5 + 1;
  if (v5 == 0xFFFFFFFF)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v11 & 1) == 0)
  {
    if (*(v10 + 32))
    {
      OUTLINED_FUNCTION_41(v10);
      *(v12 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v10, *(v10 + 72), xmmword_272B87CB0);
    if (v14 <= 0x16)
    {
      LOWORD(v14) = 22;
    }

    *(v13 + 64) = v14;
    goto LABEL_21;
  }

  __break(1u);
}

void static WK2_Metadata.add(attributionUrl:_:)()
{

  sub_272B7E91C();
}

Swift::UInt32 __swiftcall FlatBufferBuilder.endTable(at:)(Swift::UInt32 at)
{
  OUTLINED_FUNCTION_73_0();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v9 = v1[2];
  if ((v9 & 0x8000000000000000) != 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (HIDWORD(v9))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v10 = OUTLINED_FUNCTION_10_0(v5, v9);
  v12 = v10 + v11;
  v13 = v1[1];
  OUTLINED_FUNCTION_105();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v15, v2[3]);
  }

  v2[2] = v12;
  v16 = v12 + 4;
  OUTLINED_FUNCTION_5_1();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v12, v2[3]);
  }

  OUTLINED_FUNCTION_3_2();
  *(v17 - 4) = 0;
  v2[2] = v16;
  OUTLINED_FUNCTION_58_0();
  if (!v6 & v18)
  {
    goto LABEL_41;
  }

  v19 = v16 - v4;
  v20 = *v2;
  v21 = *(*v2 + 64);
  v22 = v21 + 2 + v16;
  OUTLINED_FUNCTION_17_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21 + 2, v16, v2[3]);
  }

  v2[2] = v22;
  if (HIWORD(v19))
  {
    goto LABEL_42;
  }

  *(*(v13 + 24) + *(v13 + 32) - (v21 + v16)) = v19;
  if (v21 > 0xFFFD)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = 0;
  *(*(v13 + 24) + *(v13 + 32) - v22) = v21 + 2;
  v24 = *(v20 + 80);
  while (v23 < v24)
  {
    if (*(v20 + 48))
    {
      goto LABEL_48;
    }

    v25 = *(v20 + 32);
    if (!v25)
    {
      goto LABEL_49;
    }

    v26 = *(v25 + v23);
    if (v26)
    {
      v27 = v16 - v26;
      if (HIWORD(v27))
      {
        __break(1u);
        goto LABEL_39;
      }

      *(*(v13 + 24) + *(v13 + 32) - v22 + *(v25 + v23 + 4)) = v27;
    }

    v23 += 8;
  }

  *(v20 + 64) = 0;
  *(v20 + 72) = 0;
  *(v20 + 80) = 0;
  if (v22 > 0xFFFFFFFFLL)
  {
    goto LABEL_44;
  }

  v28 = *(v13 + 24);
  v29 = *(v13 + 32);
  v46 = v2;
  v30 = v2[4];
  v45 = v2 + 4;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(v28 + v29 - v22);
    v33 = (v30 + 32);
    while (1)
    {
      v35 = *v33++;
      v34 = v35;
      v36 = v29 - v35;
      if (*(v28 + v36) == v32 && !memcmp((v28 + v36), (v28 + v29 - v22), v32))
      {
        break;
      }

      if (!--v31)
      {
        goto LABEL_32;
      }
    }

    v40 = v34 - v16;
    if (v40 >= 0xFFFFFFFF80000000)
    {
      if (v40 <= 0x7FFFFFFF)
      {
        v41 = v29 - v16;
        *(v28 + v41) = v40;
        v42 = *(v13 + 32);
        v43 = v42 - v41;
        bzero((*(v13 + 24) + v42 - v22), v22 - (v42 - v41));
        v39 = v46;
        v46[2] = v43;
        goto LABEL_37;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
    }

LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_32:
  if (v22 - v16 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  *(v28 + v29 - v16) = v22 - v16;
  sub_272B48220();
  v37 = *(*v45 + 16);
  sub_272B48270(v37);
  v38 = *v45;
  *(v38 + 16) = v37 + 1;
  *(v38 + 4 * v37 + 32) = v22;
  *v45 = v38;
  v39 = v46;
LABEL_37:
  *(v39 + 40) = 0;
  OUTLINED_FUNCTION_74_0();
  return result;
}

char *sub_272B48058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3408, &qword_272B8A998);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[4 * v8] <= v12)
    {
      memmove(v12, v13, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 4 * v8);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_26_2(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_272B87730();
}

void OUTLINED_FUNCTION_41_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_272B5D6A8();
}

uint64_t static WK2_Metadata.endMetadata(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void OUTLINED_FUNCTION_22_0(uint64_t a1@<X8>, int64x2_t a2@<Q0>, int64x2_t a3@<Q1>)
{
  *(a1 + 72) = vaddq_s64(a2, a3);
  v4 = *(a1 + 64);
  if (v4 <= v3)
  {
    LOWORD(v4) = v3;
  }

  *(a1 + 64) = v4;
}

char *sub_272B48220()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_272B48058(result, *(v1 + 16) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_272B48270(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_272B48058((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

uint64_t sub_272B482D0(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_272B87870();
  if (!v19)
  {
    return sub_272B877F0();
  }

  v41 = v19;
  v45 = sub_272B87910();
  v32 = sub_272B87920();
  sub_272B878F0();
  result = sub_272B87860();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_272B87890();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_272B87900();
      result = sub_272B87880();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t static WK2_WeatherAlertCollection.startWeatherAlertCollection(_:)(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 24)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v3 = *(v2 + 32);
    if (v3)
    {
      MEMORY[0x2743D4FD0](v3, -1, -1);
    }

    v4 = swift_slowAlloc();
    *(v2 + 32) = v4;
    *(v2 + 40) = v4 + 24;
    *(v2 + 48) = 0;
    *(v2 + 56) = 24;
  }

  result = *(v1 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (HIDWORD(result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_20_1()
{

  return sub_272B87960();
}

void sub_272B48810()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_81()
{

  Verifier.rangeInBuffer(position:size:)(v0, 2);
}

uint64_t OUTLINED_FUNCTION_199(uint64_t a1, uint64_t a2, ...)
{

  return sub_272B87730();
}

void OUTLINED_FUNCTION_76()
{

  Verifier.rangeInBuffer(position:size:)(v0, 2);
}

void OUTLINED_FUNCTION_21(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 56) = a2;
  *(a1 + 64) = 0;
}

uint64_t OUTLINED_FUNCTION_0_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{

  return MEMORY[0x2821FD720](a1, 11, 2, 0xD000000000000035, a3 | 0x8000000000000000, a2, 34, 2);
}

void OUTLINED_FUNCTION_0_3(uint64_t a1@<X1>, uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  *(a1 + 24) = a4;
  *(a1 + 40) = a3;
  *(a1 + 56) = a2;
}

double OUTLINED_FUNCTION_0_5@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_7@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 7;

  return swift_willThrow();
}

void String.encode(using:)(void *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v8 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x1000000000000000) != 0)
  {
LABEL_65:
    v9 = sub_272B87760();
  }

  else if ((a3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (a1[8] <= 3)
  {
    OUTLINED_FUNCTION_18_0();
  }

  v10 = a1[2];
  if (v10 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (((v10 | (v9 + 1)) & 0x8000000000000000) != 0)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  if ((v9 + 1) > 0xFFFFFFFFLL)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v42 = a4;
  v11 = ~(v10 + v9) & 3;
  v12 = v11 + v10;
  a4 = a1[1];
  OUTLINED_FUNCTION_5_1();
  if (v13 != v14)
  {
    v15 = a1[3];

    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v10, v15);
  }

  else
  {
  }

  a1[2] = v12;
  v16 = v12 + 1;
  OUTLINED_FUNCTION_5_1();
  if (v13 ^ v14 | v17)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v12, a1[3]);
  }

  a1[2] = v16;
  if (*(a4 + 32) < (v16 + v9))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v12 + 1, a1[3]);
  }

  if (sub_272B46F44(a2, a3, a1 + 1, v9) != 2)
  {
    goto LABEL_52;
  }

  v18 = (a3 & 0x2000000000000000) != 0 ? v8 : a2 & 0xFFFFFFFFFFFFLL;
  if (!v18)
  {
    goto LABEL_52;
  }

  v19 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LODWORD(v19) = 1;
  }

  v20 = 11;
  if (v19)
  {
    v20 = 7;
  }

  v21 = v20 | (v18 << 16);
  v8 = 4 << v19;

  while (1)
  {
    if ((v21 & 0xC) != v8)
    {
      if ((a3 & 0x1000000000000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_33;
    }

    v22 = OUTLINED_FUNCTION_1();
    v25 = sub_272B73308(v22, v23, v24);
    if (v25 < 0x4000)
    {
      break;
    }

    v21 = v25;
    if ((a3 & 0x1000000000000000) == 0)
    {
LABEL_30:
      v21 = (v21 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_35;
    }

LABEL_33:
    if (v18 < v21 >> 16)
    {
      __break(1u);
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_1();
    v21 = sub_272B87770();
LABEL_35:
    v26 = v21;
    if ((v21 & 0xC) == v8)
    {
      v32 = OUTLINED_FUNCTION_1();
      v26 = sub_272B73308(v32, v33, v34);
    }

    v27 = v26 >> 16;
    if (v26 >> 16 >= v18)
    {
      goto LABEL_50;
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      v29 = sub_272B87790();
    }

    else if ((a3 & 0x2000000000000000) != 0)
    {
      v43[0] = a2;
      v43[1] = a3 & 0xFFFFFFFFFFFFFFLL;
      v29 = *(v43 + v27);
    }

    else
    {
      v28 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v28 = sub_272B878E0();
      }

      v29 = *(v28 + v27);
    }

    v30 = a1[2];
    v31 = *(a4 + 32);
    if (v31 < v30 + 1)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, a1[2], a1[3]);
      v31 = *(a4 + 32);
    }

    *(*(a4 + 24) + v31 + ~v30) = v29;
    a1[2] = v30 + 1;
    if (!(v21 >> 14))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

LABEL_52:

  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  if (HIDWORD(v9))
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v35 = a1[2];
  if ((v35 & 0x8000000000000000) != 0)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (HIDWORD(v35))
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v36 = (-*(a1 + 4) & 3) + v35;
  OUTLINED_FUNCTION_5_1();
  if (v13 != v14)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v37, v38, a1[3]);
  }

  OUTLINED_FUNCTION_19();
  if (v13 != v14)
  {
    v40 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v40, v36, v41);
    v39 = *(a4 + 32);
  }

  *(*(a4 + 24) + v39 - v36 - 4) = v9;
  a1[2] = v8;
  if (v36 > 0xFFFFFFFB)
  {
LABEL_73:
    __break(1u);
  }

  *v42 = v8;
}

void Collection<>.encode(using:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X7>, _DWORD *a6@<X8>)
{
  v37 = *MEMORY[0x277D85DE8];
  v33 = a2;
  v34 = a3;
  v35 = a4;
  v36 = a1;
  sub_272B482D0(sub_272B486EC, v32, a2, &type metadata for Offset, MEMORY[0x277D84A98], a3, MEMORY[0x277D84AC0], a5);
  OUTLINED_FUNCTION_4_3();
  if (v14 ^ v15 | v13)
  {
    OUTLINED_FUNCTION_18_0();
  }

  v16 = *(a1 + 16);
  if (v16 > 0xFFFFFFFFLL)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if ((v16 | (4 * v7)) < 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (4 * v7 > 0xFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = OUTLINED_FUNCTION_3_3(v12, v16);
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v18, *(a1 + 24));
  }

  *(a1 + 16) = v8;
  if (v8 < 0)
  {
    goto LABEL_50;
  }

  if (!HIDWORD(v8))
  {
    v30 = a6;
    v31 = v7;
    v19 = OUTLINED_FUNCTION_10_1();
    if (v14 != v15)
    {
      OUTLINED_FUNCTION_12_2(v19);
    }

    *(a1 + 16) = v7;
    v20 = MEMORY[0x10];
    if (!MEMORY[0x10])
    {
      goto LABEL_52;
    }

    LODWORD(a6) = -1;
    while (v20 <= MEMORY[0x10])
    {
      if (v7 > 0xFFFFFFFFLL)
      {
        goto LABEL_44;
      }

      v21 = OUTLINED_FUNCTION_2_3();
      if (v14 != v15)
      {
        OUTLINED_FUNCTION_13_2(v21);
      }

      if (v8 > 0xFFFFFFFFLL)
      {
        goto LABEL_45;
      }

      v22 = OUTLINED_FUNCTION_11_1();
      if (v14 != v15)
      {
        OUTLINED_FUNCTION_12_2(v22);
        v23 = *(v6 + 32);
      }

      v7 = v9 + 4;
      if (v23 < v9 + 4)
      {
        v24 = OUTLINED_FUNCTION_21_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v24, v9, v25);
        v23 = *(v6 + 32);
      }

      OUTLINED_FUNCTION_1_3(v23);
      if (!(v14 ^ v15 | v13))
      {
        goto LABEL_46;
      }

      if (!--v20)
      {

        *(a1 + 16) = v7;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

LABEL_51:
  __break(1u);
LABEL_52:

LABEL_32:
  *(a1 + 40) = 0;
  if (v31 >> 31)
  {
    __break(1u);
    goto LABEL_54;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  OUTLINED_FUNCTION_5_1();
  if (v14 != v15)
  {
    OUTLINED_FUNCTION_13_2(v26);
  }

  OUTLINED_FUNCTION_19();
  if (v14 != v15)
  {
    v28 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v28, (-v7 & 3) + v7, v29);
    v27 = *(v6 + 32);
  }

  OUTLINED_FUNCTION_5_2(v27);
  if (!(v14 ^ v15 | v13))
  {
LABEL_55:
    __break(1u);
  }

  *v30 = a6;
}

uint64_t sub_272B49154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v7(a2, AssociatedTypeWitness, a5);
}

void static WK2_Pollutant.add(pollutantType:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B48810();
}

void static WK2_Pollutant.add(amount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourTide.add(height:_:)();
}

void sub_272B492EC(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_235();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_284();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B493FC()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if ((v1 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_Pollutant.add(units:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B493FC();
}

uint64_t static WK2_CurrentWeather.endCurrentWeather(_:start:)()
{
  OUTLINED_FUNCTION_165();
  result = FlatBufferBuilder.endTable(at:)(v1);
  *v0 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, uint64_t a12)
{
  *(a2 + 16) = v12;
  *(a2 + 24) = a10;
  *(a2 + 40) = a11;
  *(a2 + 56) = a12;
  *(a2 + 64) = 0;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_1_5()
{

  return MEMORY[0x2821FDBF0](v0, v1);
}

void OUTLINED_FUNCTION_1_6(void *a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, double a10, double a11, double a12, double a13, double a14, double a15, double a16, double a17, int a18, char a19)
{
  a17 = a4;
  a18 = v19;
  a19 = v20;

  getCheckedRoot<A>(byteBuffer:fileId:options:)(a1, a2, a3, &a17, a6, a7, a8);
}

void static WK2_AirQuality.startAirQuality(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 64);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_CurrentWeather.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B49730();
}

void sub_272B49730()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_AirQuality.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void sub_272B49898()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Weather.add(forecastNextHour:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B49898();
}

void static WK2_AirQuality.addVectorOf(pollutants:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_AirQuality.add(index:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_265();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_250();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_78(2);
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_22();
  if (v3 != v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, *(v0 + 24));
  }

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_105();
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_117(v8);
  if (!v2 & v9)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v11 & 1) == 0)
  {
    if (*(v10 + 32))
    {
      OUTLINED_FUNCTION_41(v10);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v10, *(v10 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v2 & v9))
    {
      v13 = v14;
    }

    *(v12 + 64) = v13;
    goto LABEL_23;
  }

  __break(1u);
}

void OUTLINED_FUNCTION_278()
{

  static WK2_Pollutant.add(pollutantType:_:)();
}

void static WK2_HourWeatherConditions.add(cloudCover:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B49C9C();
}

void static WK2_HourTide.add(height:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B492EC(v0);
}

void sub_272B49C9C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_235();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_284();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_AirQuality.add(categoryIndex:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(cloudCover:_:)();
}

void sub_272B49E64()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C6B4();
}

void static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C900();
}

void static WK2_CurrentWeather.add(daylight:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_44();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_29();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v1 + 32);
  }

  *(*(v1 + 24) + v10 + ~v7) = v2 & 1;
  OUTLINED_FUNCTION_60();
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_271();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v16 <= 0x12)
    {
      LOWORD(v16) = 18;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_272B4A140()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_260();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_256();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(humidity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4A140();
}

void static WK2_CurrentWeather.add(precipitationAmount1h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C9FC(v0);
}

void static WK2_CurrentWeather.add(precipitationAmount24h:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_254();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_252();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4A3DC(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 34;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x22)
    {
      LOWORD(v19) = 34;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(precipitationAmountNext24h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4A3DC(v0);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious1hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_270();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_269();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountNext6hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 38;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x26)
    {
      LOWORD(v20) = 38;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t OUTLINED_FUNCTION_283()
{

  return FlatBufferBuilder.endTable(at:)(v0);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountNext1hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 36;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x24)
    {
      LOWORD(v20) = 36;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(precipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4A924(v0);
}

void sub_272B4A924(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 48;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x30)
    {
      LOWORD(v19) = 48;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4AA24(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x16)
    {
      LOWORD(v19) = 22;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4AA24(v0);
}

void sub_272B4AB78(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 54;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x36)
    {
      LOWORD(v19) = 54;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(snowfallAmount1h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4AB78(v0);
}

void sub_272B4ACCC(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 56;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x38)
    {
      LOWORD(v19) = 56;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4ADCC(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 58;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x3A)
    {
      LOWORD(v19) = 58;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(snowfallAmount6h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4ACCC(v0);
}

void static WK2_CurrentWeather.add(snowfallAmount24h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4ADCC(v0);
}

void static WK2_CurrentWeather.add(temperature:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4AFC8(v0);
}

void sub_272B4AFC8(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 66;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x42)
    {
      LOWORD(v19) = 66;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(uvIndex:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 74;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x4A)
    {
      LOWORD(v15) = 74;
    }

    *(v14 + 64) = v15;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(windDirection:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_265();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_250();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_78(2);
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_22();
  if (v3 != v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, *(v0 + 24));
  }

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_105();
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_117(v8);
  if (!v2 & v9)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v11 & 1) == 0)
  {
    if (*(v10 + 32))
    {
      OUTLINED_FUNCTION_41(v10);
      *(v12 + 4) = 78;
    }

    OUTLINED_FUNCTION_33(v10, *(v10 + 72), xmmword_272B87CB0);
    if (v14 <= 0x4E)
    {
      LOWORD(v14) = 78;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(cloudCoverLowAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
}

void static WK2_DayPartForecast.add(cloudCoverMidAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
}

void static WK2_DayPartForecast.add(visibilityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(temperature:_:)();
}

void static WK2_DayPartForecast.add(precipitationChance:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_254();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_252();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4B4D0(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 38;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x26)
    {
      LOWORD(v19) = 38;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(temperature:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4B4D0(v0);
}

void sub_272B4B624(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 40;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x28)
    {
      LOWORD(v19) = 40;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(temperatureApparent:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4B624(v0);
}

void static WK2_DayPartForecast.add(visibilityMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(temperatureApparent:_:)();
}

void static WK2_DayPartForecast.add(windSpeed:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_268();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_267();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(temperatureDewPoint:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4DA54(v0);
}

void static WK2_DayPartForecast.add(windGustSpeedMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(temperatureDewPoint:_:)();
}

void static WK2_Weather.add(tideEvents:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4BA68();
}

void static WK2_DayPartForecast.add(windSpeedMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationIntensity:_:)();
}

void static WK2_DayPartForecast.addVectorOf(precipitationAmountByType:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(tideEvents:_:)();
}

void sub_272B4BA68()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 26;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x1A)
    {
      LOWORD(v20) = 26;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(snowfallAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmountNext6h:_:)();
}

void sub_272B4BBD8(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 32;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x20)
    {
      LOWORD(v19) = 32;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4BCD8()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  if (!v3)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v8))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = OUTLINED_FUNCTION_6(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    v11 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v2, v12);
  }

  OUTLINED_FUNCTION_43();
  *(v13 - 4) = v1;
  OUTLINED_FUNCTION_55();
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      OUTLINED_FUNCTION_216();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_206();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4BCD8();
}

void static WK2_DayWeatherConditions.add(maxUvIndex:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)();
}

void sub_272B4BE80()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x18)
    {
      LOWORD(v20) = 24;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Weather.add(marineForecast:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4BE80();
}

void static WK2_DayWeatherConditions.addVectorOf(precipitationAmountByType:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(marineForecast:_:)();
}

void static WK2_AirQuality.add(isSignificant:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_44();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_29();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v1 + 32);
  }

  *(*(v1 + 24) + v10 + ~v7) = v2 & 1;
  OUTLINED_FUNCTION_60();
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_272B4C160()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_271();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v19 <= 0x12)
    {
      LOWORD(v19) = 18;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Weather.add(weatherChanges:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C160();
}

void static WK2_AirQuality.add(scale:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(weatherChanges:_:)();
}

void static WK2_AirQuality.add(primaryPollutant:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(conditionCode:_:)();
}

void static WK2_CurrentWeather.add(conditionCode:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C3C8();
}

void sub_272B4C3C8()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x10)
    {
      LOWORD(v17) = 16;
    }

    *(v16 + 64) = v17;
    goto LABEL_22;
  }

  __break(1u);
}

_BYTE *sub_272B4C4CC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_214(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_212(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x272B4C588);
      case 4:
        result = OUTLINED_FUNCTION_213(result, v6);
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
          result = OUTLINED_FUNCTION_182(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

void static WK2_CurrentWeather.startCurrentWeather(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 320);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_CurrentWeather.add(cloudCover:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B49E64();
}

void sub_272B4C6B4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4C804();
}

void sub_272B4C804()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4C900()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_261();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_259();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4C9FC(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x18)
    {
      LOWORD(v19) = 24;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(precipitationAmount6h:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 26;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x1A)
    {
      LOWORD(v19) = 26;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious24hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_268();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_267();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountPrevious6hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 44;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x2C)
    {
      LOWORD(v20) = 44;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_CurrentWeather.addVectorOf(precipitationAmountNext24hByType:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 40;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x28)
    {
      LOWORD(v20) = 40;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(windSpeed:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 82;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x52)
    {
      LOWORD(v19) = 82;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(visibility:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 76;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x4C)
    {
      LOWORD(v19) = 76;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4D16C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  if (!v3)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v8))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v9 = OUTLINED_FUNCTION_6(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    v11 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v2, v12);
  }

  OUTLINED_FUNCTION_43();
  *(v13 - 4) = v1;
  OUTLINED_FUNCTION_55();
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      OUTLINED_FUNCTION_235();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_284();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(asOf:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4D16C();
}

void sub_272B4D2C0(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 50;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x32)
    {
      LOWORD(v19) = 50;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(pressure:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4D2C0(v0);
}

void static WK2_CurrentWeather.add(pressureTrend:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 52;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x34)
    {
      LOWORD(v17) = 52;
    }

    *(v16 + 64) = v17;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_272B4D518(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 68;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x44)
    {
      LOWORD(v19) = 68;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(temperatureApparent:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4D518(v0);
}

void static WK2_CurrentWeather.add(temperatureDewPoint:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 72;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x48)
    {
      LOWORD(v19) = 72;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.startDayPartForecast(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 240);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_DayPartForecast.add(cloudCover:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCover:_:)();
}

void static WK2_DayPartForecast.add(cloudCoverHighAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverHighAltPct:_:)();
}

void static WK2_DayPartForecast.add(conditionCode:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(conditionCode:_:)();
}

void static WK2_DayPartForecast.add(humidityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(humidity:_:)();
}

void static WK2_DayPartForecast.add(humidityMin:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 22;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x16)
    {
      LOWORD(v15) = 22;
    }

    *(v14 + 64) = v15;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_272B4DA54(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 44;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x2C)
    {
      LOWORD(v19) = 44;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayPartForecast.add(precipitationType:_:)()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 30;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x1E)
    {
      LOWORD(v17) = 30;
    }

    *(v16 + 64) = v17;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(precipitationAmountNext6h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4BBD8(v0);
}

void static WK2_DayPartForecast.add(windDirection:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_265();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_250();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_78(2);
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_22();
  if (v3 != v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, *(v0 + 24));
  }

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_105();
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_117(v8);
  if (!v2 & v9)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v11 & 1) == 0)
  {
    if (*(v10 + 32))
    {
      OUTLINED_FUNCTION_41(v10);
      OUTLINED_FUNCTION_270();
    }

    OUTLINED_FUNCTION_33(v10, *(v10 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_269();
    if (!(!v2 & v9))
    {
      v13 = v14;
    }

    *(v12 + 64) = v13;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.startDayWeatherConditions(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 288);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_DayWeatherConditions.add(precipitationChance:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4DEE4();
}

void static WK2_DayWeatherConditions.add(precipitationAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)();
}

void sub_272B4DEE4()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      *(v13 + 4) = 26;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v15 <= 0x1A)
    {
      LOWORD(v15) = 26;
    }

    *(v14 + 64) = v15;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(snowfallAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)();
}

void sub_272B4E03C(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 30;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x1E)
    {
      LOWORD(v19) = 30;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(precipitationAmountNext1h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4E03C(v0);
}

void sub_272B4E190(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 52;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x34)
    {
      LOWORD(v19) = 52;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(temperatureMax:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4E190(v0);
}

void static WK2_DayWeatherConditions.add(temperatureMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmount6h:_:)();
}

void static WK2_DayWeatherConditions.add(daytimeForecast:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 70;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x46)
    {
      LOWORD(v20) = 70;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(overnightForecast:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      *(v18 + 4) = 72;
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    if (v20 <= 0x48)
    {
      LOWORD(v20) = 72;
    }

    *(v19 + 64) = v20;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(humidityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
}

void static WK2_DayWeatherConditions.add(moonPhase:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(conditionCode:_:)();
}

void static WK2_DayWeatherConditions.add(solarNoon:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = OUTLINED_FUNCTION_6(v4, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v11);
  if (!v5 & v14)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 34;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x22)
    {
      LOWORD(v19) = 34;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(solarMidnight:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = OUTLINED_FUNCTION_6(v4, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v11);
  if (!v5 & v14)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      *(v17 + 4) = 32;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x20)
    {
      LOWORD(v19) = 32;
    }

    *(v18 + 64) = v19;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(visibilityMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(temperature:_:)();
}

void static WK2_DayWeatherConditions.add(visibilityMin:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(temperatureApparent:_:)();
}

void sub_272B4E8E0(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 60;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x3C)
    {
      LOWORD(v19) = 60;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(windGustSpeedMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)();
}

void static WK2_CurrentWeather.add(snowfallAmountNext1h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4E8E0(v0);
}

void sub_272B4EA88(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 62;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x3E)
    {
      LOWORD(v19) = 62;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(windSpeedAvg:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmountNext6h:_:)();
}

void static WK2_CurrentWeather.add(snowfallAmountNext6h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4EA88(v0);
}

void sub_272B4EC30(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      *(v17 + 4) = 64;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0x40)
    {
      LOWORD(v19) = 64;
    }

    *(v18 + 64) = v19;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_CurrentWeather.add(snowfallAmountNext24h:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4EC30(v0);
}

void static WK2_DayWeatherConditions.add(windSpeedMax:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmountNext24h:_:)();
}

Swift::Void __swiftcall ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(Swift::Int _, Swift::Int writerSize, Swift::Int alignment)
{
  v5 = *(v3 + 32);
  v6 = writerSize + _;
  v7 = v5;
  if (v6 >= v5)
  {
    do
    {
      v8 = v6 < (2 * v7);
      v7 *= 2;
    }

    while (!v8);
    *(v3 + 32) = v7;
  }

  v9 = v5 - writerSize;
  *(v3 + 32) = sub_272B46564(v7);
  v10 = swift_slowAlloc();
  v11 = *(v3 + 32) - writerSize;
  bzero(v10, v11);
  v12 = *(v3 + 24);
  memcpy(&v10[v11], (v12 + v9), writerSize);
  MEMORY[0x2743D4FD0](v12, -1, -1);
  *(v3 + 24) = v10;
}

void _s11WeatherData12WK2_HourTideV05startdE0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 16);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_DailyForecast.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Weather.add(currentWeather:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4F00C();
}

void static WK2_DailyForecast.addVectorOf(days:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void sub_272B4F00C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_235();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_284();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_HourWeatherConditions.startHourWeatherConditions(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 208);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_HourWeatherConditions.add(cloudCoverMidAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverLowAltPct:_:)();
}

void static WK2_HourWeatherConditions.add(cloudCoverLowAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCover:_:)();
}

void static WK2_HourWeatherConditions.add(cloudCoverHighAltPct:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(cloudCoverMidAltPct:_:)();
}

void sub_272B4F2F0()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_261();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_259();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(conditionCode:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4F2F0();
}

void static WK2_HourWeatherConditions.add(daylight:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  if ((v3 & 1) == 0)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_44();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_29();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v1 + 32);
  }

  *(*(v1 + 24) + v10 + ~v7) = v2 & 1;
  OUTLINED_FUNCTION_60();
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      *(v15 + 4) = 16;
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    if (v17 <= 0x10)
    {
      LOWORD(v17) = 16;
    }

    *(v16 + 64) = v17;
    goto LABEL_22;
  }

  __break(1u);
}

void sub_272B4F558()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_271();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v14 <= 0x12)
    {
      LOWORD(v14) = 18;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(humidity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4F558();
}

void static WK2_HourWeatherConditions.add(precipitationChance:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(precipitationChance:_:)();
}

void static WK2_HourWeatherConditions.add(precipitationAmount:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(perceivedPrecipitationIntensity:_:)();
}

void static WK2_HourWeatherConditions.add(perceivedPrecipitationIntensity:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_260();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_256();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(uvIndex:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_125();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_50();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_44();
  if (v3 != v4)
  {
    v6 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v7);
  }

  OUTLINED_FUNCTION_29();
  if (v3 ^ v4 | v2)
  {
    v9 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v5, v10);
    v8 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_8(v8);
  if (v2)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    if (*(v11 + 32))
    {
      OUTLINED_FUNCTION_41(v11);
      OUTLINED_FUNCTION_268();
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_267();
    if (!(!v2 & v16))
    {
      v14 = v15;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(visibility:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(precipitationIntensity:_:)();
}

void static WK2_HourWeatherConditions.add(windSpeed:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(snowfallAmount1h:_:)();
}

void static WK2_DayWeatherConditions.add(precipitationType:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4FA98();
}

void static WK2_HourWeatherConditions.add(precipitationType:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(precipitationType:_:)();
}

void sub_272B4FA98()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_254();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_252();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(windDirection:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_106();
  OUTLINED_FUNCTION_265();
  if (v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v2)
    {
LABEL_23:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_250();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_78(2);
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v5))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_22();
  if (v3 != v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v7, *(v0 + 24));
  }

  *(v0 + 16) = v1;
  OUTLINED_FUNCTION_105();
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_208();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_117(v8);
  if (!v2 & v9)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v11 & 1) == 0)
  {
    if (*(v10 + 32))
    {
      OUTLINED_FUNCTION_41(v10);
      *(v12 + 4) = 50;
    }

    OUTLINED_FUNCTION_33(v10, *(v10 + 72), xmmword_272B87CB0);
    if (v14 <= 0x32)
    {
      LOWORD(v14) = 50;
    }

    *(v13 + 64) = v14;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_HourWeatherConditions.add(windGust:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(temperatureMax:_:)();
}

void static WK2_HourlyForecast.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_HourlyForecast.addVectorOf(hours:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void sub_272B4FDC4(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 48);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_ForecastCondition.add(startTime:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_Weather.add(news:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B4FF40();
}

void static WK2_ForecastCondition.addVectorOf(parameters:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(news:_:)();
}

void sub_272B4FF40()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_261();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_259();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_ForecastCondition.add(forecastToken:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(conditionCode:_:)();
}

void sub_272B500A8()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_DayWeatherConditions.add(conditionCode:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B500A8();
}

void static WK2_TrendDeviation.add(minTemperatureChange:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B5024C();
}

void sub_272B5024C()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_ForecastCondition.add(beginCondition:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_TrendDeviation.add(minTemperatureChange:_:)();
}

void static WK2_TrendDeviation.add(dayPrecipitationChange:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B503F0();
}

void sub_272B503F0()
{
  OUTLINED_FUNCTION_219();
  v3 = v2;
  OUTLINED_FUNCTION_140();
  if (!v1)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_22:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  OUTLINED_FUNCTION_100();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_50();
  }

  v7 = *(v3 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v7))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_39();
  if (v5 != v6)
  {
    v8 = OUTLINED_FUNCTION_98();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v7, v9);
  }

  OUTLINED_FUNCTION_40();
  if (v5 ^ v6 | v4)
  {
    v11 = OUTLINED_FUNCTION_99();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v7, v12);
    v10 = *(v0 + 32);
  }

  OUTLINED_FUNCTION_12(v10);
  if (v4)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v14 & 1) == 0)
  {
    if (*(v13 + 32))
    {
      OUTLINED_FUNCTION_41(v13);
      OUTLINED_FUNCTION_211();
    }

    OUTLINED_FUNCTION_33(v13, *(v13 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_238();
    if (!(!v4 & v18))
    {
      v16 = v17;
    }

    *(v15 + 64) = v16;
    goto LABEL_22;
  }

  __break(1u);
}

void static WK2_ForecastCondition.add(endCondition:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_TrendDeviation.add(dayPrecipitationChange:_:)();
}

void _s11WeatherData04WK2_A7ChangesV05startaD0ys6UInt32VAA17FlatBufferBuilderVzFZ_0(uint64_t a1)
{
  OUTLINED_FUNCTION_25(a1);
  OUTLINED_FUNCTION_141();
  if (v3 != v4)
  {
    if (*(v2 + 48))
    {
LABEL_12:
      __break(1u);
      return;
    }

    if (*(v2 + 32))
    {
      OUTLINED_FUNCTION_209();
    }

    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_68(v5, v5 + 32);
  }

  v6 = *(v1 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

void static WK2_ForecastMinute.add(precipitationChance:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_HourWeatherConditions.add(cloudCover:_:)();
}

void sub_272B5061C(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_ForecastMinute.add(precipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B5061C(v0);
}

void sub_272B50768(uint64_t a1)
{
  OUTLINED_FUNCTION_226();
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_23:
      OUTLINED_FUNCTION_225();
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v6 ^ v7 | v4)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v1 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (HIDWORD(v8))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v1 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, v13);
    v11 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_48(v15);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v4 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_23;
  }

  __break(1u);
}

void static WK2_ForecastMinute.add(perceivedPrecipitationIntensity:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B50768(v0);
}

void static WK2_ForecastMinute.add(startTime:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_DayWeatherConditions.add(forecastStart:_:)();
}

void static WK2_NextHourForecast.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_NextHourForecast.addVectorOf(condition:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(currentWeather:_:)();
}

void static WK2_Weather.add(forecastDaily:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B50A44();
}

void sub_272B50A44()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_193();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_191();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_NextHourForecast.addVectorOf(summary:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastDaily:_:)();
}

void static WK2_NextHourForecast.addVectorOf(minutes:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(news:_:)();
}

void static WK2_NextHourForecast.add(forecastStart:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v3 & 0x100000000) != 0)
  {
LABEL_20:
    OUTLINED_FUNCTION_218();
    return;
  }

  OUTLINED_FUNCTION_30();
  if (v6 ^ v7 | v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (HIDWORD(v8))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v9 = OUTLINED_FUNCTION_6(v4, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_5(v11);
  if (!v5 & v14)
  {
LABEL_23:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_41(v15);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v5 & v14))
    {
      v18 = v19;
    }

    *(v17 + 64) = v18;
    goto LABEL_20;
  }

  __break(1u);
}

void static WK2_LocationInfo.add(primaryName:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_Weather.add(forecastNextHour:_:)();
}

void static WK2_LocationInfo.add(metadata:_:)()
{
  OUTLINED_FUNCTION_75();

  static WK2_CurrentWeather.add(metadata:_:)();
}

void static WK2_Weather.add(forecastHourly:_:)()
{
  OUTLINED_FUNCTION_75();

  sub_272B50DEC();
}

void sub_272B50DEC()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v2)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = *(v0 + 16);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v6))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v7 = OUTLINED_FUNCTION_3(v3, v6);
  if (v4 != v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v9)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v10)
  {
    OUTLINED_FUNCTION_79();
    if (!v10)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v11 = OUTLINED_FUNCTION_15();
  if (v4 != v5)
  {
    OUTLINED_FUNCTION_186(v11);
  }

  OUTLINED_FUNCTION_27();
  if (v4 != v5)
  {
    v13 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v2, v14);
    v12 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v12);
  if (!v10 & v15)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v17 & 1) == 0)
  {
    if (*(v16 + 32))
    {
      OUTLINED_FUNCTION_57(v16);
      OUTLINED_FUNCTION_203();
    }

    OUTLINED_FUNCTION_33(v16, *(v16 + 72), xmmword_272B87CB0);
    OUTLINED_FUNCTION_201();
    if (!(!v10 & v15))
    {
      v19 = v20;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}