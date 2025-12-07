_BYTE *storeEnumTagSinglePayload for WK2_WeatherCondition(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
        break;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

uint64_t WK2_DailySummary.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

void WK2_DailySummary.startDate.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 7u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 6);
    v4 = v2 + 6;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_DailySummary.endDate.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 9u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 8);
    v4 = v2 + 8;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

uint64_t WK2_DailySummary.hasDays.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 0xBu)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 10);
    v6 = v5 + 10;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_DailySummary.daysCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 0xBu)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t WK2_DailySummary.days(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 0xBu)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 10);
  v12 = v10 + 10;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t WK2_DaySummary.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

unint64_t static WK2_DailySummary.startDailySummary(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 32)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 32;
    *(v2 + 48) = 0;
    *(v2 + 56) = 32;
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

void static WK2_DailySummary.add(metadata:_:)(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (!v4)
  {
    return;
  }

  if (a2[8] < 4)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = a2[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v6))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = OUTLINED_FUNCTION_3(a1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, a2[3]);
  }

  a2[2] = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, a2[3]);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v4, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v16)
  {
LABEL_30:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v3;
      *(v19 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 4)
    {
      LOWORD(v21) = 4;
    }

    *(v20 + 64) = v21;
  }
}

void static WK2_DailySummary.add(startDate:_:)(int a1, uint64_t a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v4;
      *(v19 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 6)
    {
      LOWORD(v21) = 6;
    }

    *(v20 + 64) = v21;
  }
}

void static WK2_DailySummary.add(endDate:_:)(int a1, uint64_t a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v4;
      *(v19 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 8)
    {
      LOWORD(v21) = 8;
    }

    *(v20 + 64) = v21;
  }
}

void static WK2_DailySummary.addVectorOf(days:_:)(unsigned int *a1, void *a2)
{
  v4 = *a1;
  if (!v4)
  {
    return;
  }

  if (a2[8] < 4)
  {
    OUTLINED_FUNCTION_38();
  }

  v6 = a2[2];
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (HIDWORD(v6))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v7 = OUTLINED_FUNCTION_3(a1, v6);
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v8, a2[3]);
  }

  a2[2] = v3;
  if (HIDWORD(v3))
  {
    goto LABEL_29;
  }

  if (v3 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v3, a2[3]);
  }

  OUTLINED_FUNCTION_27();
  if (v9 != v10)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v4, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v16)
  {
LABEL_30:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v3;
      *(v19 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 0xA)
    {
      LOWORD(v21) = 10;
    }

    *(v20 + 64) = v21;
  }
}

uint64_t static WK2_DailySummary.createDailySummary(_:metadataOffset:startDate:endDate:daysVectorOffset:)@<X0>(void *a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, int a4@<W3>, unsigned int *a5@<X4>, _DWORD *a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = static WK2_DailySummary.startDailySummary(_:)(a1);
  v15 = v10;
  static WK2_DailySummary.add(metadata:_:)(&v15, a1);
  static WK2_DailySummary.add(startDate:_:)(a3, a1);
  static WK2_DailySummary.add(endDate:_:)(a4, a1);
  v14 = v11;
  static WK2_DailySummary.addVectorOf(days:_:)(&v14, a1);
  result = FlatBufferBuilder.endTable(at:)(v12);
  *a6 = result;
  return result;
}

void static WK2_DailySummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v4 = __src[2];
    if (__src[2] < 7)
    {
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_18();
    if (!v5 || (OUTLINED_FUNCTION_42(), (v6 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53();
      if (v7)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3;
        }

        if (v8 == 1)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v4 <= 8)
      {
LABEL_25:
        sub_272B5D6C4(10, 1937334628, 0xE400000000000000, 1);
        if (__OFSUB__(__src[7], 1))
        {
          __break(1u);
          return;
        }

        --__src[7];
        goto LABEL_3;
      }

      v11 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(), (v12 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53();
        if (v13)
        {
          OUTLINED_FUNCTION_23();
          if (v5)
          {
            v14 = 0;
          }

          else
          {
            v14 = v11;
          }

          if (v14 == 1)
          {
LABEL_14:
            *v23 = MEMORY[0x277D84CC0];
            v9 = &qword_2808A3170;
            v10 = &unk_272B89910;
LABEL_28:
            __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
            sub_272B87730();
            sub_272B5C86C();
            v15 = swift_allocError();
            OUTLINED_FUNCTION_7(v15, v16, v17, v18, v19, v20, v21, v22, *v23, *&v23[16], *&v23[32]);
LABEL_3:
            memcpy(v23, __src, sizeof(v23));
            sub_272B522C4(v23);
            return;
          }

          OUTLINED_FUNCTION_66();
        }

        goto LABEL_25;
      }
    }

    *v23 = MEMORY[0x277D84C58];
    v9 = &qword_2808A3160;
    v10 = &unk_272B87CC0;
    goto LABEL_28;
  }
}

void WK2_DaySummary.date.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
  }

  else
  {
    if (*(v0 + v2) < 5u)
    {
      goto LABEL_7;
    }

    v3 = __OFADD__(v2, 4);
    v4 = v2 + 4;
    if (!v3)
    {
      v5 = *(v0 + v4);
      if (v5)
      {
        if (!__OFADD__(v5, v1))
        {
          OUTLINED_FUNCTION_112(v0);
          return;
        }

        goto LABEL_10;
      }

LABEL_7:
      OUTLINED_FUNCTION_32_0();
      return;
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
}

void WK2_DaySummary.temperatureMin.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v0 + v2) < 7u)
  {
    return;
  }

  v3 = __OFADD__(v2, 6);
  v4 = v2 + 6;
  if (v3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v4);
  if (v5 && __OFADD__(v5, v1))
  {
    goto LABEL_9;
  }
}

void WK2_DaySummary.temperatureMax.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v0 + v2) < 9u)
  {
    return;
  }

  v3 = __OFADD__(v2, 8);
  v4 = v2 + 8;
  if (v3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v4);
  if (v5 && __OFADD__(v5, v1))
  {
    goto LABEL_9;
  }
}

void WK2_DaySummary.precipitationAmount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v0 + v2) < 0xBu)
  {
    return;
  }

  v3 = __OFADD__(v2, 10);
  v4 = v2 + 10;
  if (v3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v4);
  if (v5 && __OFADD__(v5, v1))
  {
    goto LABEL_9;
  }
}

void WK2_DaySummary.snowfallAmount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (*(v0 + v2) < 0xDu)
  {
    return;
  }

  v3 = __OFADD__(v2, 12);
  v4 = v2 + 12;
  if (v3)
  {
    goto LABEL_8;
  }

  v5 = *(v0 + v4);
  if (v5 && __OFADD__(v5, v1))
  {
    goto LABEL_9;
  }
}

unint64_t static WK2_DaySummary.startDaySummary(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 40)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 40;
    *(v2 + 48) = 0;
    *(v2 + 56) = 40;
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

void static WK2_DaySummary.add(date:_:)(int a1, uint64_t a2)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_79();
    if (!v6)
    {
      return;
    }
  }

  OUTLINED_FUNCTION_95();
  if (v8 ^ v9 | v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v10 = *(a2 + 16);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (HIDWORD(v10))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = OUTLINED_FUNCTION_6(v7, v10);
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v12, *(a2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v8 != v9)
  {
    v14 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v3, v15);
    v13 = *(v2 + 32);
  }

  OUTLINED_FUNCTION_5(v13);
  if (!v6 & v16)
  {
LABEL_24:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v18)
  {
    __break(1u);
  }

  else
  {
    if (*(v17 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v19 = v4;
      *(v19 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v17, *(v17 + 72), xmmword_272B87CB0);
    if (v21 <= 4)
    {
      LOWORD(v21) = 4;
    }

    *(v20 + 64) = v21;
  }
}

void static WK2_DaySummary.add(temperatureMin:_:)()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
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

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v3;
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
  }
}

void static WK2_DaySummary.add(temperatureMax:_:)()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
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

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v3;
      *(v17 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 8)
    {
      LOWORD(v19) = 8;
    }

    *(v18 + 64) = v19;
  }
}

void static WK2_DaySummary.add(precipitationAmount:_:)()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
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

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v3;
      *(v17 + 4) = 10;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0xA)
    {
      LOWORD(v19) = 10;
    }

    *(v18 + 64) = v19;
  }
}

void static WK2_DaySummary.add(snowfallAmount:_:)()
{
  OUTLINED_FUNCTION_97();
  OUTLINED_FUNCTION_96();
  if (v4)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
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

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  OUTLINED_FUNCTION_20_0();
  if (v6 != v7)
  {
    v12 = OUTLINED_FUNCTION_83();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, v13);
    v11 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_1_0(v11);
  if (!v4 & v14)
  {
LABEL_25:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if (v16)
  {
    __break(1u);
  }

  else
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v3;
      *(v17 + 4) = 12;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0xC)
    {
      LOWORD(v19) = 12;
    }

    *(v18 + 64) = v19;
  }
}

uint64_t static WK2_DaySummary.endDaySummary(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_DaySummary.createDaySummary(_:date:temperatureMin:temperatureMax:precipitationAmount:snowfallAmount:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, _DWORD *a3@<X8>)
{
  v6 = static WK2_DaySummary.startDaySummary(_:)(a1);
  static WK2_DaySummary.add(date:_:)(a2, a1);
  static WK2_DaySummary.add(temperatureMin:_:)();
  static WK2_DaySummary.add(temperatureMax:_:)();
  static WK2_DaySummary.add(precipitationAmount:_:)();
  static WK2_DaySummary.add(snowfallAmount:_:)();
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void static WK2_DaySummary.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    v4 = __src[2];
    if (__src[2] < 5)
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_18();
    if (!v5 || (OUTLINED_FUNCTION_42(), (v6 & 1) == 0))
    {
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_53();
      if (v7)
      {
        OUTLINED_FUNCTION_23();
        if (v5)
        {
          v8 = 0;
        }

        else
        {
          v8 = v3;
        }

        if (v8 == 1)
        {
          *v32 = MEMORY[0x277D84CC0];
          v9 = &qword_2808A3170;
          v10 = &unk_272B89910;
LABEL_56:
          __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
          sub_272B87730();
          sub_272B5C86C();
          v24 = swift_allocError();
          OUTLINED_FUNCTION_7(v24, v25, v26, v27, v28, v29, v30, v31, *v32, *&v32[16], *&v32[32]);
LABEL_57:
          memcpy(v32, __src, sizeof(v32));
          sub_272B522C4(v32);
          return;
        }

        OUTLINED_FUNCTION_66();
      }

      if (v4 <= 6)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_18();
      if (!v5 || (OUTLINED_FUNCTION_42(), (v11 & 1) == 0))
      {
        OUTLINED_FUNCTION_62();
        OUTLINED_FUNCTION_53();
        if (v12)
        {
          OUTLINED_FUNCTION_23();
          if (v5)
          {
            v13 = 0;
          }

          else
          {
            v13 = v3;
          }

          if (v13 == 1)
          {
            goto LABEL_22;
          }

          OUTLINED_FUNCTION_66();
        }

        if (v4 <= 8)
        {
          goto LABEL_53;
        }

        OUTLINED_FUNCTION_18();
        if (!v5 || (OUTLINED_FUNCTION_42(), (v14 & 1) == 0))
        {
          OUTLINED_FUNCTION_62();
          OUTLINED_FUNCTION_53();
          if (v15)
          {
            OUTLINED_FUNCTION_23();
            if (v5)
            {
              v16 = 0;
            }

            else
            {
              v16 = v3;
            }

            if (v16 == 1)
            {
              goto LABEL_22;
            }

            OUTLINED_FUNCTION_66();
          }

          if (v4 <= 0xA)
          {
            goto LABEL_53;
          }

          OUTLINED_FUNCTION_18();
          if (!v5 || (OUTLINED_FUNCTION_42(), (v17 & 1) == 0))
          {
            OUTLINED_FUNCTION_62();
            OUTLINED_FUNCTION_53();
            if (v18)
            {
              OUTLINED_FUNCTION_23();
              if (v5)
              {
                v19 = 0;
              }

              else
              {
                v19 = v3;
              }

              if (v19 == 1)
              {
                goto LABEL_22;
              }

              OUTLINED_FUNCTION_66();
            }

            if (v4 <= 0xC)
            {
LABEL_53:
              if (__OFSUB__(__src[7], 1))
              {
                __break(1u);
                return;
              }

              --__src[7];
              goto LABEL_57;
            }

            v20 = LOBYTE(__src[3]);
            if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(), (v21 & 1) == 0))
            {
              OUTLINED_FUNCTION_62();
              OUTLINED_FUNCTION_53();
              if (v22)
              {
                OUTLINED_FUNCTION_23();
                if (v5)
                {
                  v23 = 0;
                }

                else
                {
                  v23 = v20;
                }

                if (v23 != 1)
                {
                  OUTLINED_FUNCTION_66();
                  goto LABEL_53;
                }

LABEL_22:
                *v32 = MEMORY[0x277D83A90];
                v9 = &unk_2808A3178;
                v10 = &unk_272B87CD0;
                goto LABEL_56;
              }

              goto LABEL_53;
            }
          }
        }
      }
    }

    *v32 = MEMORY[0x277D84C58];
    v9 = &qword_2808A3160;
    v10 = &unk_272B87CC0;
    goto LABEL_56;
  }
}

uint64_t Message.object.getter(uint64_t a1)
{
  result = *v1;
  v4 = v1[1];
  v5 = *(*v1 + 32) - v4;
  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v5 > 0x7FFFFFFF)
  {
    goto LABEL_7;
  }

  v6 = *(*(result + 24) + v5);
  if (v6 < 0)
  {
    goto LABEL_7;
  }

  v7 = (v6 + v5);
  if (!__OFADD__(v6, v5))
  {
    v8 = v1[2];
    v9 = *(a1 + 16);
    v10 = *(*(a1 + 24) + 8);
    v11 = *(v10 + 8);

    return v11(v12, v4, v8, v7, v9, v10);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t Message.size.getter()
{
  result = *(v0 + 8);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t Message.init(byteBuffer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void Message.init(builder:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    v4 = *(a1 + 8);
    v5 = *(v4 + 24);
    v6 = *(v4 + 32) - v2;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    v7 = ByteBuffer.Storage.init(count:alignment:)(v2, 1);
    ByteBuffer.Storage.copy(from:count:)((v5 + v6), v2);
    v8 = *(v7 + 32);
    *a2 = v7;
    a2[1] = v8;
    a2[2] = 1;
    FlatBufferBuilder.clear()();
    return;
  }

  __break(1u);
}

uint64_t sub_272B77C88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_272B77CD8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_272B77D18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t VerifierOptions.init(maxDepth:maxTableCount:maxApparentSize:ignoreMissingNullTerminators:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 4) = a2;
  *(a5 + 8) = result;
  *(a5 + 12) = a4;
  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for VerifierOptions(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 13))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 12);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for VerifierOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

void TableVerifier.visit<A>(field:fieldName:required:type:)(unsigned __int16 a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v12 = a2;
  if (*(v9 + 16) > a1)
  {
    v16 = *(v9 + 8) + a1;
    if (*(v9 + 24) == 1 && ((*(*(v9 + 64) + 24) + v16) & 1) != 0)
    {
      v25.n128_u64[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      v17 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v17);
      *v18 = v16;
      v18[1] = v12;
      v18[2] = a3;
      OUTLINED_FUNCTION_0_3(v18, v27, v26, v25);
      *(v19 + 64) = 0;
      swift_willThrow();
      return;
    }

    OUTLINED_FUNCTION_2_1();
    if (v8)
    {
      return;
    }

    if (*(*(*(v9 + 64) + 24) + v16))
    {
      (*(a7 + 8))(v9 + 24, *v9 + *(*(*(v9 + 64) + 24) + v16), a6, a6, a7, a6, a7);
      return;
    }

    v12 = a2;
  }

  if (a4)
  {
    v20 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v20);
    *v21 = a1;
    *(v21 + 6) = v29;
    *(v21 + 2) = v28;
    *(v21 + 8) = v12;
    *(v21 + 16) = a3;
    OUTLINED_FUNCTION_0_3(v21, v27, v26, v25);
    OUTLINED_FUNCTION_157(v22, v23);
  }
}

Swift::Void __swiftcall TableVerifier.finish()()
{
  v1 = *(v0 + 56);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 56) = v3;
  }
}

void TableVerifier.visit<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(void, void, void), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v62 = a7;
  v63 = a5;
  v64 = a6;
  v65 = a3;
  v66 = a4;
  v60 = a11;
  v16 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v59 = v54 - v17;
  v18 = sub_272B878A0();
  v19 = MEMORY[0x28223BE20](v18);
  v20 = MEMORY[0x28223BE20](v19);
  v21 = *(v12 + 16);
  if (v21 <= a1)
  {
    v26 = 0;
    v25 = 1;
  }

  else
  {
    v22 = *(v12 + 8) + a1;
    if (*(v12 + 24) == 1 && ((*(*(v12 + 64) + 24) + v22) & 1) != 0)
    {
      v67.n128_u64[0] = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      v27 = OUTLINED_FUNCTION_204();
      OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v27);
      *v28 = v22;
LABEL_19:
      v28[1] = a8;
      v28[2] = v16;
      OUTLINED_FUNCTION_0_3(v28, v69, v68, v67);
      *(v35 + 64) = 0;
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_5_0(v20);
    Verifier.rangeInBuffer(position:size:)(v22, 2);
    if (v23)
    {
      return;
    }

    v24 = *(*(*(v12 + 64) + 24) + v22);
    if (*(*(*(v12 + 64) + 24) + v22))
    {
      v25 = 0;
      v26 = *v12 + v24;
    }

    else
    {
      v26 = 0;
      v25 = 1;
    }

    v20 = v56;
    a8 = v57;
  }

  if (v21 <= a2)
  {
    goto LABEL_22;
  }

  v29 = *(v12 + 8) + a2;
  if (*(v12 + 24) == 1 && ((*(*(v12 + 64) + 24) + v29) & 1) != 0)
  {
    v67.n128_u64[0] = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    sub_272B87730();
    v34 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v34);
    *v28 = v29;
    goto LABEL_19;
  }

  v30 = v26;
  OUTLINED_FUNCTION_5_0(v20);
  Verifier.rangeInBuffer(position:size:)(v29, 2);
  if (v31)
  {
    return;
  }

  if (*(*(*(v12 + 64) + 24) + v29))
  {
    v32 = *v12 + *(*(*(v12 + 64) + 24) + v29);
    if (v25)
    {
      v33 = 0;
LABEL_26:
      v67.n128_u8[0] = v25;
      LOBYTE(v70) = v33;
      v42 = sub_272B5C86C();
      OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v42);
      *v43 = v30;
      *(v43 + 8) = v25;
      v44 = v66;
      *(v43 + 16) = v65;
      *(v43 + 24) = v44;
      *(v43 + 32) = v32;
      *(v43 + 40) = v33;
      v45 = v64;
      *(v43 + 48) = v63;
      *(v43 + 56) = v45;
      *(v43 + 64) = 5;
      swift_willThrow();

      goto LABEL_27;
    }

    v46 = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 8))(v12 + 24, v30, v46, v46, AssociatedConformanceWitness, v46, AssociatedConformanceWitness);
    sub_272B71990();
    v48 = v59;
    sub_272B878B0();
    v49 = v58;
    (*(v60 + 16))(v48, a10);
    if (__swift_getEnumTagSinglePayload(v49, 1, a10) != 1)
    {
      v52 = v55;
      v53 = v54[0];
      (*(v55 + 32))(v54[0], v49, a10);
      v57(v12 + 24, v53, v32);
      (*(v52 + 8))(v53, a10);
      return;
    }

    (*(v54[1] + 8))(v49, v56);
    v50 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v50);
    *v51 = 5;
    *(v51 + 8) = 0u;
    *(v51 + 24) = 0u;
    *(v51 + 40) = 0u;
    *(v51 + 56) = 0;
    *(v51 + 64) = 7;
LABEL_20:
    swift_willThrow();
    return;
  }

  v26 = v30;
LABEL_22:
  if ((v25 & 1) == 0)
  {
    v30 = v26;
    v32 = 0;
    v33 = 1;
    goto LABEL_26;
  }

  if ((v62 & 1) == 0)
  {
    return;
  }

  v36 = sub_272B5C86C();
  OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v36);
  *v37 = a1;
  v38 = v70;
  *(v37 + 6) = v71;
  *(v37 + 2) = v38;
  v39 = v66;
  *(v37 + 8) = v65;
  *(v37 + 16) = v39;
  OUTLINED_FUNCTION_0_3(v37, v69, v68, v67);
  OUTLINED_FUNCTION_157(v40, v41);
LABEL_27:
}

void TableVerifier.visitUnionVector<A>(unionKey:unionField:unionKeyName:fieldName:required:completion:)(unsigned __int16 a1, unsigned __int16 a2, uint64_t a3, uint64_t a4, Swift::Int a5, unint64_t a6, char a7, void (*a8)(unsigned __int8 *, char *, Swift::Int), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = v11;
  v20 = *(v14 + 16);
  if (v20 > a1)
  {
    OUTLINED_FUNCTION_4_1();
    if (v21 && ((*(*(v14 + 64) + 24) + v13) & 1) != 0)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_2_1();
    if (v12)
    {
      return;
    }
  }

  if (v20 > a2)
  {
    OUTLINED_FUNCTION_4_1();
    if (!v21 || ((*(*(v14 + 64) + 24) + v13) & 1) == 0)
    {
      v26 = v25;
      v35 = v24;
      v36 = v22;
      v37 = v23;
      OUTLINED_FUNCTION_2_1();
      if (v12)
      {
        return;
      }

      if (*(*(*(v14 + 64) + 24) + v13))
      {
        v27 = v26;
      }

      else
      {
        v27 = 1;
      }

      if ((v27 & 1) == 0)
      {
        static UnionVector.verify(_:keyPosition:fieldPosition:unionKeyName:fieldName:completion:)((v14 + 24), v35, *v14 + *(*(*(v14 + 64) + 24) + v13), v36, v37, a5, a6, a8, a9, a10, a11);
        return;
      }

      goto LABEL_15;
    }

LABEL_17:
    v38.n128_u64[0] = MEMORY[0x277D84C58];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
    sub_272B87730();
    v32 = OUTLINED_FUNCTION_204();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v32);
    *v33 = v13;
    v33[1] = a5;
    v33[2] = a6;
    OUTLINED_FUNCTION_0_3(v33, v40, v39, v38);
    *(v34 + 64) = 0;
    swift_willThrow();
    return;
  }

LABEL_15:
  if (a7)
  {
    v28 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v28);
    *v29 = a2;
    *(v29 + 6) = v42;
    *(v29 + 2) = v41;
    *(v29 + 8) = a5;
    *(v29 + 16) = a6;
    OUTLINED_FUNCTION_0_3(v29, v40, v39, v38);
    OUTLINED_FUNCTION_157(v30, v31);
  }
}

uint64_t sub_272B78838(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 101))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_272B78878(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 100) = 0;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 101) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 101) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 24);
  v4 = *(*v1 + 24);
  v5 = *(v4 + v3);
  v6 = __OFSUB__(v3, v5);
  v7 = v3 - v5;
  if (v6)
  {
    __break(1u);
    goto LABEL_10;
  }

  v8 = *(v1 + 8);
  if (*(v4 + v7) < 5u)
  {
    v10 = 0;
LABEL_6:
    v6 = __OFADD__(v10, v3);
    v11 = v10 + v3;
    if (!v6)
    {
      v12 = *(v4 + v11);
      v6 = __OFADD__(v11, v12);
      v13 = v11 + v12;
      if (!v6)
      {
        *a1 = result;
        *(a1 + 8) = v8;
        *(a1 + 24) = v13;
      }

      goto LABEL_11;
    }

LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFADD__(v7, 4);
  v9 = v7 + 4;
  if (!v6)
  {
    v10 = *(v4 + v9);
    goto LABEL_6;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.baselineStart.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 7u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 6);
    v6 = v5 + 6;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.hasMonths.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 9u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 8);
    v6 = v5 + 8;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.monthsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 9u)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v5, 8);
  v6 = v5 + 8;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return OUTLINED_FUNCTION_32_0();
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_MonthlyWeatherStatistics.months(at:)(int a1)
{
  result = *v1;
  v4 = *(v1 + 24);
  v5 = *(*v1 + 24);
  v6 = *(v5 + v4);
  v7 = __OFSUB__(v4, v6);
  v8 = v4 - v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_15;
  }

  v9 = 0uLL;
  if (*(v5 + v8) < 9u)
  {
LABEL_12:
    v17 = 0;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

  v7 = __OFADD__(v8, 8);
  v10 = v8 + 8;
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = *(v5 + v10);
  if (!v11)
  {
    goto LABEL_12;
  }

  v7 = __OFADD__(v11, v4);
  v12 = v11 + v4;
  if (v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = *(v5 + v12);
  v7 = __OFADD__(v12, v13);
  v14 = v12 + v13;
  if (v7)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v7 = __OFADD__(v14, 4);
  v15 = v14 + 4;
  if (v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = __OFADD__(v15, 4 * a1);
  v16 = v15 + 4 * a1;
  if (v7)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!__OFADD__(v16, *(v5 + v16)))
  {
    v18 = *(v1 + 8);

    v9 = v18;
    return OUTLINED_FUNCTION_51(v17, v9);
  }

LABEL_21:
  __break(1u);
  return result;
}

void static WK2_MonthlyWeatherStatistics.add(metadata:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_MonthlyWeatherStatistics.add(baselineStart:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  if (v1[8] <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = v1[2];
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = -*(v1 + 16) & 3;
  v7 = v6 + v5;
  v8 = v1[1];
  if (*(v8 + 32) < (v6 + v5))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v5, v1[3]);
  }

  v1[2] = v7;
  v9 = v7 + 4;
  v10 = *(v8 + 32);
  if (v10 < (v7 + 4))
  {
    OUTLINED_FUNCTION_9();
    v10 = *(v8 + 32);
  }

  *(*(v8 + 24) + v10 - v7 - 4) = v3;
  v1[2] = v9;
  if (v7 > 0xFFFFFFFB)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v12 & 1) == 0)
  {
    v13 = *(v11 + 32);
    if (v13)
    {
      v14 = v13 + *(v11 + 80);
      *v14 = v9;
      *(v14 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v11, *(v11 + 72), xmmword_272B87CB0);
    if (v16 <= 6)
    {
      LOWORD(v16) = 6;
    }

    *(v15 + 64) = v16;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)()
{

  sub_272B7596C();
}

uint64_t static WK2_MonthlyWeatherStatistics.endMonthlyWeatherStatistics(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

void static WK2_MonthlyWeatherStatistics.createMonthlyWeatherStatistics(_:metadataOffset:baselineStart:monthsVectorOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = static WK2_MonthlyWeatherStatistics.startMonthlyWeatherStatistics(_:)(v2);
  static WK2_MonthlyWeatherStatistics.add(metadata:_:)();
  static WK2_MonthlyWeatherStatistics.add(baselineStart:_:)();
  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v3);
  OUTLINED_FUNCTION_218();
}

void static WK2_MonthlyWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D67C(4, 0x617461646174656DLL, 0xE800000000000000, 1);
    v3 = 0;
    if (__src[2] >= 7)
    {
      v4 = __src[1] + 6;
      v5 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
      {
        *v21 = MEMORY[0x277D84C58];
        v10 = &qword_2808A3160;
        v11 = &unk_272B87CC0;
        goto LABEL_16;
      }

      Verifier.rangeInBuffer(position:size:)(__src[1] + 6, 2);
      v3 = v6;
      if (v6)
      {
LABEL_3:
        memcpy(v21, __src, sizeof(v21));
        sub_272B522C4(v21);
        return;
      }

      v7 = *(__src[8] + 24);
      v8 = *(v7 + v4);
      if (*(v7 + v4))
      {
        if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
        {
          v9 = v5;
        }

        else
        {
          v9 = 0;
        }

        if (v9 == 1)
        {
          *v21 = MEMORY[0x277D84CC0];
          v10 = &qword_2808A3170;
          v11 = &unk_272B89910;
LABEL_16:
          __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
          sub_272B87730();
          sub_272B5C86C();
          v12 = swift_allocError();
          OUTLINED_FUNCTION_7(v12, v13, v14, v15, v16, v17, v18, v19, *v21, *&v21[16], *&v21[32]);
          goto LABEL_3;
        }

        Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
        v3 = v20;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    sub_272B5DD6C(8, 0x7368746E6F6DLL, 0xE600000000000000, 1);
    if (!v3)
    {
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
    }

    goto LABEL_3;
  }
}

uint64_t WK2_MonthWeatherStatistics.month.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      v7 = *(v2 + v6);
      if (v7)
      {
        v4 = __OFADD__(v7, v1);
        v8 = v7 + v1;
        if (!v4)
        {
          return *(v2 + v8);
        }

        goto LABEL_10;
      }

      return OUTLINED_FUNCTION_32_0();
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

uint64_t WK2_MonthWeatherStatistics.temperature.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 7u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 6);
  v7 = v4 + 6;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t WK2_MonthWeatherStatistics.precipitation.getter()
{
  result = OUTLINED_FUNCTION_14();
  if (v5)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = 0uLL;
  if (*(v2 + v4) < 9u)
  {
LABEL_8:
    v10 = 0;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

  v5 = __OFADD__(v4, 8);
  v7 = v4 + 8;
  if (v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = *(v2 + v7);
  if (!v8)
  {
    goto LABEL_8;
  }

  v5 = __OFADD__(v8, v3);
  v9 = v8 + v3;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!__OFADD__(v9, *(v2 + v9)))
  {
    v11 = *(v0 + 8);

    v6 = v11;
    return OUTLINED_FUNCTION_51(v10, v6);
  }

LABEL_13:
  __break(1u);
  return result;
}

void static WK2_MonthWeatherStatistics.add(month:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = v2;
  if (!v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
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
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v1[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1[2], v1[3]);
  }

  v1[2] = v5;
  v7 = v5 + 1;
  v8 = *(v6 + 32);
  if (v8 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, v1[3]);
    v8 = *(v6 + 32);
  }

  *(*(v6 + 24) + v8 + ~v5) = v3;
  v1[2] = v7;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v10 & 1) == 0)
  {
    v11 = *(v9 + 32);
    if (v11)
    {
      v12 = v11 + *(v9 + 80);
      *v12 = v7;
      *(v12 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v9, *(v9 + 72), xmmword_272B87CB0);
    if (v14 <= 4)
    {
      LOWORD(v14) = 4;
    }

    *(v13 + 64) = v14;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_MonthWeatherStatistics.add(temperature:_:)()
{
  OUTLINED_FUNCTION_219();
  v4 = *v3;
  if (!*v3)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_58();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_38();
  }

  v8 = *(v0 + 16);
  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (HIDWORD(v8))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = OUTLINED_FUNCTION_3(v5, v8);
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v10, *(v0 + 24));
  }

  *(v0 + 16) = v2;
  if (HIDWORD(v2))
  {
    goto LABEL_30;
  }

  if (v2 - v4 == -4)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_27:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v6 != v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v12, v2, *(v0 + 24));
  }

  OUTLINED_FUNCTION_27();
  if (v6 != v7)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_31:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_57(v15);
      *(v17 + 4) = 6;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 6)
    {
      LOWORD(v19) = 6;
    }

    *(v18 + 64) = v19;
    goto LABEL_27;
  }

  __break(1u);
}

void static WK2_MonthWeatherStatistics.createMonthWeatherStatistics(_:month:temperatureOffset:precipitationOffset:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = static WK2_MonthlyWeatherStatistics.startMonthlyWeatherStatistics(_:)(v2);
  static WK2_MonthWeatherStatistics.add(month:_:)();
  static WK2_MonthWeatherStatistics.add(temperature:_:)();
  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
  *v1 = FlatBufferBuilder.endTable(at:)(v3);
  OUTLINED_FUNCTION_218();
}

void static WK2_MonthWeatherStatistics.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  v3 = v2;
  if (!v2)
  {
    if (__src[2] < 5)
    {
      goto LABEL_8;
    }

    v4 = __src[1] + 4;
    if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v4) & 1) != 0)
    {
      *v15 = MEMORY[0x277D84C58];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3160, &unk_272B87CC0);
      sub_272B87730();
      sub_272B5C86C();
      v7 = swift_allocError();
      OUTLINED_FUNCTION_7(v7, v8, v9, v10, v11, v12, v13, v14, *v15, *&v15[16], *&v15[32]);
    }

    else
    {
      Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
      v3 = v5;
      if (!v5)
      {
        if (!*(*(__src[8] + 24) + v4) || (Verifier.rangeInBuffer(position:size:)(__src[0] + *(*(__src[8] + 24) + v4), 1), (v3 = v6) == 0))
        {
LABEL_8:
          sub_272B5D6F0(6, 0x74617265706D6574, 0xEB00000000657275, 0);
          if (!v3)
          {
            sub_272B5D71C(8, 0x7469706963657270, 0xED00006E6F697461, 0);
            if (__OFSUB__(__src[7], 1))
            {
              __break(1u);
              return;
            }

            --__src[7];
          }
        }
      }
    }

    memcpy(v15, __src, sizeof(v15));
    sub_272B522C4(v15);
  }
}

void static WK2_MonthWeatherStatistics.add(precipitation:_:)()
{

  static WK2_MonthlyWeatherStatistics.addVectorOf(months:_:)();
}

uint64_t getEnumTagSinglePayload for Offset(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Offset(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t NativeObject.serialize<A>(type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  FlatBufferBuilder.init(initialSize:serializeDefaults:)(1024, 0, v13);
  NativeObject.serialize<A>(builder:type:)(v13, a1, a2, a3, v9, a5);
  v11 = v10;
  memcpy(__dst, v13, sizeof(__dst));
  sub_272B51710(__dst);
  return v11;
}

void NativeObject.serialize<A>(builder:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v13, v6);
  (*(a6 + 24))(&v20, a1, v13, a4, a6);
  FlatBufferBuilder.finish(offset:addPrefix:)(&v20, 0);
  v14 = *(a1 + 16);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v14))
  {
    v15 = *(a1 + 8);
    v16 = *(v15 + 24);
    v17 = *(v15 + 32) - v14;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    ByteBuffer.Storage.init(count:alignment:)(v14, 1);
    ByteBuffer.Storage.copy(from:count:)((v16 + v17), v14);
    v18 = *(v11 + 8);

    v18(v13, a3);

    return;
  }

  __break(1u);
}

Swift::UInt32 __swiftcall FlatBufferBuilder.startTable(with:)(Swift::Int with)
{
  OUTLINED_FUNCTION_40_0();
  v3 = *v1;
  if (*(*v1 + 56) < (*(*v1 + 80) + 8 * v2))
  {
    if (*(v3 + 48))
    {
      goto LABEL_11;
    }

    v4 = 8 * v2;
    v5 = *(v3 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v3 + 32) = v6;
    *(v3 + 40) = v6 + v4;
    *(v3 + 48) = 0;
    *(v3 + 56) = v4;
  }

  v2 = v1[2];
  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v2))
  {
    return v2;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return v2;
}

void FlatBufferBuilder.add(offset:at:)(unsigned int *a1, __int16 a2)
{
  v3 = *a1;
  if (!v3)
  {
    return;
  }

  OUTLINED_FUNCTION_27_0();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v9))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v10 = OUTLINED_FUNCTION_10_0(v5, v9);
  v12 = v10 + v11;
  OUTLINED_FUNCTION_15_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v14, *(v2 + 24));
  }

  *(v2 + 16) = v12;
  if (HIDWORD(v12))
  {
    goto LABEL_27;
  }

  v15 = v12 - v3 + 4;
  if (v12 - v3 == -4 && *(v2 + 57) != 1)
  {
    return;
  }

  v16 = OUTLINED_FUNCTION_8_0();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v12, *(v2 + 24));
  }

  *(v2 + 16) = v3;
  v17 = v3 + 4;
  OUTLINED_FUNCTION_15_0();
  if (v7 != v8)
  {
    v18 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v3, v19);
  }

  OUTLINED_FUNCTION_3_2();
  *(v20 - 4) = v15;
  *(v2 + 16) = v17;
  OUTLINED_FUNCTION_58_0();
  if (!v6 & v21)
  {
LABEL_28:
    __break(1u);
  }

  v22 = *v2;
  if (*(*v2 + 48))
  {
    __break(1u);
  }

  else
  {
    v23 = *(v22 + 32);
    if (v23)
    {
      v24 = v23 + *(v22 + 80);
      *v24 = v17;
      *(v24 + 4) = a2;
    }

    OUTLINED_FUNCTION_22_0(v22, *(v22 + 72), xmmword_272B87CB0);
  }
}

void FlatBufferBuilder.add<A>(element:def:at:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_53_1();
  if ((sub_272B876D0() & 1) != 0 && *(v0 + 57) != 1)
  {
LABEL_21:
    OUTLINED_FUNCTION_32_2();
    return;
  }

  if (*(v0 + 64) < v11)
  {
    *(v0 + 64) = v11;
    *(v0 + 24) = v11;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v15 ^ v16 | v14))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v13 | v11) < 0)
  {
    goto LABEL_22;
  }

  if (v11 > 0xFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (!v11)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  OUTLINED_FUNCTION_71_0(v13, v11 - 1);
  v17 = *(v0 + 8);
  OUTLINED_FUNCTION_25_0();
  if (v15 != v16)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v3[3]);
  }

  v3[2] = v2;
  v20 = v2 + v11;
  if (*(v17 + 32) < v2 + v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v11, v2, v3[3]);
  }

  v21 = OUTLINED_FUNCTION_46_0();
  v22(v21);
  OUTLINED_FUNCTION_28_0();
  memcpy(v23, v24, v25);
  v3[2] = v20;
  (*(v9 + 8))(v1, v5);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  if (HIDWORD(v20))
  {
    goto LABEL_26;
  }

  v26 = *v3;
  if ((*(*v3 + 48) & 1) == 0)
  {
    v27 = *(v26 + 32);
    if (v27)
    {
      v28 = v27 + *(v26 + 80);
      *v28 = v20;
      *(v28 + 4) = v7;
    }

    OUTLINED_FUNCTION_22_0(v26, *(v26 + 72), xmmword_272B87CB0);
    goto LABEL_21;
  }

  __break(1u);
}

void FlatBufferBuilder.add<A>(element:at:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v41 = v4;
  v6 = v5;
  v42 = *MEMORY[0x277D85DE8];
  v7 = sub_272B878A0();
  OUTLINED_FUNCTION_2_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v40[-v11];
  OUTLINED_FUNCTION_2_2();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v40[-v19];
  (*(v9 + 16))(v12, v6, v7);
  if (__swift_getEnumTagSinglePayload(v12, 1, v3) == 1)
  {
    (*(v9 + 8))(v12, v7);
LABEL_24:
    OUTLINED_FUNCTION_32_2();
    return;
  }

  (*(v14 + 32))(v20, v12, v3);
  if (v1[8] < v16)
  {
    v1[8] = v16;
    v1[3] = v16;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v23 ^ v24 | v22))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((v21 | v16) < 0)
  {
    goto LABEL_25;
  }

  if (v16 > 0xFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (!v16)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  OUTLINED_FUNCTION_71_0(v21, v16 - 1);
  OUTLINED_FUNCTION_25_0();
  if (v23 != v24)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v25, v26, v1[3]);
  }

  v1[2] = v12;
  v27 = &v12[v16];
  OUTLINED_FUNCTION_36_1();
  if (v23 != v24)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v12, v1[3]);
  }

  v28 = OUTLINED_FUNCTION_46_0();
  v29(v28);
  OUTLINED_FUNCTION_28_0();
  memcpy(v30, v31, v32);
  v1[2] = v27;
  v33 = *(v14 + 8);
  v34 = OUTLINED_FUNCTION_68_0();
  v33(v34);
  if ((v27 & 0x8000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (HIDWORD(v27))
  {
    goto LABEL_29;
  }

  v35 = *v1;
  if ((*(*v1 + 48) & 1) == 0)
  {
    v36 = *(v35 + 32);
    v37 = v41;
    if (v36)
    {
      v38 = v36 + *(v35 + 80);
      *v38 = v27;
      *(v38 + 4) = v37;
    }

    (v33)(v20, v3);
    *(v35 + 72) = vaddq_s64(*(v35 + 72), xmmword_272B87CB0);
    v39 = *(v35 + 64);
    if (v39 <= v37)
    {
      LOWORD(v39) = v37;
    }

    *(v35 + 64) = v39;
    goto LABEL_24;
  }

  __break(1u);
}

void FlatBufferBuilder.sizedBuffer.getter()
{
  v1 = *(v0 + 16);
  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v1))
  {
    v2 = *(v0 + 8);
    v3 = *(v2 + 24);
    v4 = *(v2 + 32) - v1;
    type metadata accessor for ByteBuffer.Storage();
    swift_allocObject();
    ByteBuffer.Storage.init(count:alignment:)(v1, 1);
    ByteBuffer.Storage.copy(from:count:)((v3 + v4), v1);
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall FlatBufferBuilder.clear()()
{
  v1 = v0;
  v0[8] = 0;
  v0[3] = 0;
  *(v0 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33E8, &qword_272B8A890);
  sub_272B876A0();
  v2 = v0 + 4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *v2;
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_272B7DB60(0, *(v4 + 16));
  }

  else
  {
    v5 = sub_272B7DA74(0, *(v4 + 24) >> 1);

    *v2 = v5;
  }

  v6 = *v1;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v1 + 1) = xmmword_272B8A880;
  ByteBuffer.Storage.initialize(for:)(*(v1[1] + 32));
}

uint64_t FlatBufferBuilder.VTableStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_33_0(v0);
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

uint64_t FlatBufferBuilder._vtableStorage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t FlatBufferBuilder._bb.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t FlatBufferBuilder._minAlignment.setter(uint64_t result)
{
  *(v1 + 64) = result;
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_272B7A428(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    *(*result + 24) = *(*result + 64);
  }

  return result;
}

unint64_t FlatBufferBuilder.size.getter()
{
  result = *(v0 + 16);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (HIDWORD(result))
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *FlatBufferBuilder.fullSizedByteArray.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 32);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = *(v1 + 24);
  v4 = sub_272B7DAF0(*(v1 + 32), 0);
  memcpy(v4 + 4, v3, v2);
  return v4;
}

void FlatBufferBuilder.finish(offset:fileId:addPrefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_76_0();
  a27 = v29;
  a28 = v30;
  v32 = v31;
  a16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0();
  if (!(v38 ^ v39 | v37))
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v40 = v28;
  v41 = v36;
  v42 = *(v28 + 64);
  if (v36)
  {
    v43 = -12;
  }

  else
  {
    v43 = -8;
  }

  if ((v34 | v42) < 0)
  {
    goto LABEL_55;
  }

  if (v42 > 0xFFFFFFFFLL)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v44 = v42 != 0;
  v45 = v42 - 1;
  if (!v44)
  {
LABEL_57:
    __break(1u);
  }

  v46 = v35;
  v47 = *v33;
  v48 = v34 + ((v43 - v34) & v45);
  v49 = *(v28 + 8);
  OUTLINED_FUNCTION_5_1();
  if (v38 != v39)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v50, v51, *(v40 + 24));
  }

  *(v40 + 16) = v48;
  OUTLINED_FUNCTION_38_0();
  if (v38 != v39)
  {
    v52 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v52, v53, v54);
  }

  v55 = OUTLINED_FUNCTION_29_0();
  sub_272B46F44(v55, v56, v57, 4uLL);
  OUTLINED_FUNCTION_67_0();
  if (!v37)
  {
    goto LABEL_52;
  }

  v58 = (v46 & 0x2000000000000000) != 0 ? HIBYTE(v46) & 0xF : v32 & 0xFFFFFFFFFFFFLL;
  if (!v58)
  {
    goto LABEL_52;
  }

  v76 = v47;
  v59 = (v32 >> 59) & 1;
  if ((v46 & 0x1000000000000000) == 0)
  {
    LODWORD(v59) = 1;
  }

  v60 = 11;
  if (v59)
  {
    v60 = 7;
  }

  v61 = v60 | (v58 << 16);
  v62 = 4 << v59;
  OUTLINED_FUNCTION_54_0();
  while (1)
  {
    if ((v61 & 0xC) != v62)
    {
      if ((v46 & 0x1000000000000000) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_32;
    }

    v63 = OUTLINED_FUNCTION_4_2();
    v66 = sub_272B73308(v63, v64, v65);
    if (v66 < 0x4000)
    {
      break;
    }

    v61 = v66;
    if ((v46 & 0x1000000000000000) == 0)
    {
LABEL_29:
      OUTLINED_FUNCTION_44_0();
      goto LABEL_34;
    }

LABEL_32:
    if (v58 < v61 >> 16)
    {
      __break(1u);
      goto LABEL_54;
    }

    OUTLINED_FUNCTION_4_2();
    v61 = sub_272B87770();
LABEL_34:
    v67 = v61;
    if ((v61 & 0xC) == v62)
    {
      v73 = OUTLINED_FUNCTION_4_2();
      v67 = sub_272B73308(v73, v74, v75);
    }

    v68 = v67 >> 16;
    if (v67 >> 16 >= v58)
    {
      goto LABEL_50;
    }

    if ((v46 & 0x1000000000000000) != 0)
    {
      OUTLINED_FUNCTION_12_1();
      v70 = sub_272B87790();
    }

    else if ((v46 & 0x2000000000000000) != 0)
    {
      a13 = v32;
      a14 = a12;
      v70 = *(&a13 + v68);
    }

    else
    {
      v69 = a11;
      if ((v32 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        v69 = sub_272B878E0();
      }

      v70 = *(v69 + v68);
    }

    v71 = *(v40 + 16);
    OUTLINED_FUNCTION_15_0();
    if (v38 != v39)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v71, *(v40 + 24));
      v72 = *(v49 + 32);
    }

    *(*(v49 + 24) + v72 + ~v71) = v70;
    *(v40 + 16) = v71 + 1;
    if (!(v61 >> 14))
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:

  v47 = v76;
LABEL_52:

  LODWORD(a13) = v47;
  FlatBufferBuilder.finish(offset:addPrefix:)(&a13, v41 & 1);
  OUTLINED_FUNCTION_75_0();
}

Swift::Void __swiftcall FlatBufferBuilder.preAlign(len:alignment:)(Swift::Int len, Swift::Int alignment)
{
  if (v2[8] < alignment)
  {
    v2[8] = alignment;
    v2[3] = alignment;
  }

  OUTLINED_FUNCTION_52_0();
  if (!(v7 ^ v8 | v6))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v3 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v5 | v3 | v4) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v7 ^ v8 | v6))
  {
    goto LABEL_17;
  }

  v10 = v9 != 0;
  v11 = v9 - 1;
  if (!v10)
  {
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_24_0(v11);
  v14 = v13 + v12;
  OUTLINED_FUNCTION_5_1();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v16, v2[3]);
  }

  v2[2] = v14;
}

Swift::UInt32 __swiftcall FlatBufferBuilder.refer(to:)(Swift::UInt32 to)
{
  OUTLINED_FUNCTION_27_0();
  if (v5 ^ v6 | v4)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v7 = *(v1 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(v7))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    return v3;
  }

  v8 = OUTLINED_FUNCTION_10_0(v3, v7);
  v10 = v8 + v9;
  OUTLINED_FUNCTION_15_0();
  if (v5 != v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v3, v11, *(v1 + 24));
  }

  *(v1 + 16) = v10;
  if (HIDWORD(v10))
  {
    goto LABEL_13;
  }

  LODWORD(v3) = v10 - to + 4;
  return v3;
}

void FlatBufferBuilder.push<A>(element:)()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v22[1] = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  if (v0[8] < v8)
  {
    v0[8] = v8;
    v0[3] = v8;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v12 ^ v13 | v11))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v10 | v8) < 0)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v12 ^ v13 | v11))
  {
    goto LABEL_19;
  }

  if (!v8)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  v15 = v14 + ((v8 - 1) & (-v14 - v8));
  OUTLINED_FUNCTION_25_0();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v17, v0[3]);
  }

  v0[2] = v15;
  v18 = v15 + v8;
  OUTLINED_FUNCTION_37_0();
  if (v12 != v13)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v15, v0[3]);
  }

  (*(v6 + 16))(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, v2);
  OUTLINED_FUNCTION_12_1();
  memcpy(v19, v20, v21);
  v0[2] = v18;
  (*(v6 + 8))(v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  if ((v18 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  if (HIDWORD(v18))
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_32_2();
}

Swift::Void __swiftcall FlatBufferBuilder.minAlignment(size:)(Swift::Int size)
{
  if (*(v1 + 64) < size)
  {
    *(v1 + 64) = size;
    *(v1 + 24) = size;
  }
}

Swift::UInt32 __swiftcall FlatBufferBuilder.padding(bufSize:elementSize:)(Swift::UInt32 bufSize, Swift::UInt32 elementSize)
{
  if (elementSize)
  {
    return (elementSize - 1) & -bufSize;
  }

  __break(1u);
  return bufSize;
}

void FlatBufferBuilder.preAlign<A>(len:type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 64);
  if (v3[8] < v4)
  {
    v3[8] = v4;
    v3[3] = v4;
  }

  OUTLINED_FUNCTION_52_0();
  if (!(v9 ^ v10 | v8))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v5 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v7 | v5 | v6) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_17;
  }

  v12 = v11 != 0;
  v13 = v11 - 1;
  if (!v12)
  {
    goto LABEL_18;
  }

  v14 = OUTLINED_FUNCTION_24_0(v13);
  v16 = v15 + v14;
  OUTLINED_FUNCTION_5_1();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v18, v3[3]);
  }

  v3[2] = v16;
}

Swift::Void __swiftcall FlatBufferBuilder.track(offset:at:)(Swift::UInt32 offset, Swift::UInt16 at)
{
  v3 = *v2;
  if (*(*v2 + 48))
  {
    __break(1u);
  }

  else
  {
    v4 = *(v3 + 32);
    if (v4)
    {
      v5 = v4 + *(v3 + 80);
      *v5 = offset;
      *(v5 + 4) = at;
    }

    *(v3 + 72) = vaddq_s64(*(v3 + 72), xmmword_272B87CB0);
    v6 = *(v3 + 64);
    if (v6 <= at)
    {
      LOWORD(v6) = at;
    }

    *(v3 + 64) = v6;
  }
}

Swift::Void __swiftcall FlatBufferBuilder.startVector(_:elementSize:)(Swift::Int _, Swift::Int elementSize)
{
  OUTLINED_FUNCTION_40_0();
  v4 = v2[8];
  if (v4 <= 3)
  {
    v4 = 4;
    v2[8] = 4;
    v2[3] = 4;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v8 ^ v9 | v7))
  {
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = elementSize * v5;
  if ((v6 | (elementSize * v5)) < 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v8 ^ v9 | v7))
  {
    goto LABEL_23;
  }

  v12 = ((-v11 - v10) & 3) + v11;
  OUTLINED_FUNCTION_15_0();
  if (v8 != v9)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v14, v2[3]);
  }

  v2[2] = v12;
  if (v4 < elementSize)
  {
    v2[8] = elementSize;
    v2[3] = elementSize;
  }

  if (v12 > 0xFFFFFFFFLL)
  {
    goto LABEL_24;
  }

  if ((v12 | elementSize) < 0)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v8 ^ v9 | v7))
  {
    goto LABEL_26;
  }

  if (!elementSize)
  {
LABEL_27:
    __break(1u);
    return;
  }

  v15 = v12 + OUTLINED_FUNCTION_24_0(elementSize - 1);
  OUTLINED_FUNCTION_5_1();
  if (v8 != v9)
  {
    OUTLINED_FUNCTION_79_0(v16);
  }

  v2[2] = v15;
}

void FlatBufferBuilder.endVector(len:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  *(v2 + 40) = 0;
  if (a1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = a1;
  if (a1 > 0x7FFFFFFF)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_27_0();
  if (v7 ^ v8 | v6)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v9 = *(v2 + 16);
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_18;
  }

  if (HIDWORD(v9))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v10 = OUTLINED_FUNCTION_10_0(v5, v9);
  v12 = v10 + v11;
  OUTLINED_FUNCTION_105();
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v14, *(v2 + 24));
  }

  *(v2 + 16) = v12;
  v15 = v12 + 4;
  OUTLINED_FUNCTION_17_0();
  if (v7 != v8)
  {
    v16 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v16, v12, v17);
  }

  OUTLINED_FUNCTION_3_2();
  *(v18 - 4) = v4;
  *(v2 + 16) = v15;
  OUTLINED_FUNCTION_58_0();
  if (!v6 & v19)
  {
LABEL_20:
    __break(1u);
  }

  *a2 = v15;
}

void FlatBufferBuilder.createVector<A>(_:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  sub_272B87810();
  v6 = *(*(v3 - 8) + 64);
  OUTLINED_FUNCTION_40_0();
  v7 = v0[8];
  if (v7 <= 3)
  {
    v7 = 4;
    v0[8] = 4;
    v0[3] = 4;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v11 ^ v12 | v10))
  {
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = v6 * v8;
  if ((v9 | (v6 * v8)) < 0)
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(v11 ^ v12 | v10))
  {
    goto LABEL_35;
  }

  v15 = v0 + 8;
  v16 = ((-v14 - v13) & 3) + v14;
  v17 = v0[1];
  OUTLINED_FUNCTION_36_1();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v1[3]);
  }

  v1[2] = v16;
  if (v7 < v6)
  {
    v1[8] = v6;
    v1[3] = v6;
  }

  if (v16 > 0xFFFFFFFFLL)
  {
    goto LABEL_36;
  }

  if ((v16 | v6) < 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v6 > 0xFFFFFFFFLL)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (!v6)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v20 = OUTLINED_FUNCTION_24_0(v6 - 1);
  v21 = v16 + v20;
  if (*(v17 + 32) < v16 + v20)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v20, v16, v1[3]);
  }

  v1[2] = v21;
  OUTLINED_FUNCTION_38_0();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v13, v21, v1[3]);
  }

  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x28223BE20](v22);
  v23 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1(v23);
  OUTLINED_FUNCTION_77_0();

  OUTLINED_FUNCTION_50_0();
  if (v11 != v12)
  {
    goto LABEL_40;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v25 = v1[2];
  if ((v25 & 0x8000000000000000) != 0)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (HIDWORD(v25))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = OUTLINED_FUNCTION_10_0(v24, v25);
  v28 = v26 + v27;
  OUTLINED_FUNCTION_5_1();
  if (v11 != v12)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v30, v1[3]);
  }

  OUTLINED_FUNCTION_19();
  if (v11 != v12)
  {
    v31 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v28, v32);
  }

  OUTLINED_FUNCTION_7_1();
  *(v33 - 4) = v3;
  OUTLINED_FUNCTION_42_0();
  if (!v10 & v34)
  {
LABEL_44:
    __break(1u);
  }

  *v5 = v15;
  OUTLINED_FUNCTION_32_2();
}

{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_2();
  v53 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_62_0();
  v62 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_72_0();
  v64 = v12;
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_2_2();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_61_0();
  v61 = v16;
  v17 = sub_272B87810();
  v18 = OUTLINED_FUNCTION_59_0();
  v60 = v19;
  v20 = v19(v18, v3);
  *(v0 + 40) = 1;
  v21 = *(v0 + 64);
  if (v21 <= 3)
  {
    v21 = 4;
    *(v0 + 64) = 4;
    *(v0 + 24) = 4;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v24 ^ v25 | v23))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v22 | (v20 * v17)) < 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v24 ^ v25 | v23))
  {
    goto LABEL_37;
  }

  v55 = v14;
  v28 = OUTLINED_FUNCTION_41_0(v26, v27);
  v30 = v28 + v29;
  v65 = *(v0 + 8);
  if (*(v65 + 32) < v28 + v29)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v28, v29, *(v0 + 24));
  }

  *(v0 + 16) = v30;
  if (v21 < v20)
  {
    *(v0 + 64) = v20;
    *(v0 + 24) = v20;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v24 ^ v25 | v23))
  {
    goto LABEL_38;
  }

  if ((v30 | v20) < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v24 ^ v25 | v23))
  {
    goto LABEL_40;
  }

  if (!v20)
  {
LABEL_41:
    __break(1u);
LABEL_42:

    goto LABEL_26;
  }

  v31 = OUTLINED_FUNCTION_24_0(v20 - 1);
  v20 = v30 + v31;
  if (*(v32 + 32) < v30 + v31)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v30, *(v0 + 24));
  }

  *(v0 + 16) = v20;
  v33 = OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_47_0();
  v59 = v33;
  MEMORY[0x2743D4A10](v33);

  v34 = sub_272B87810();

  v66 = v34;
  if (v34 == sub_272B877D0())
  {
    goto LABEL_42;
  }

  v54 = v1;
  v52 = v7;
  v35 = v65;
  v58 = *(v3 + 40);
  v57 = (v55 + 16);
  v56 = (v55 + 8);
  do
  {
    sub_272B87830();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v36 = OUTLINED_FUNCTION_16_0();
    v38 = sub_272B7DF34(v36, v37, v59);
    (*v57)(v61);
    v39 = OUTLINED_FUNCTION_43_0();
    (v38)(v39);
    v58(v5, v3);
    (*v56)(v61, v5);
    v40 = v60(v5, v3);
    v41 = v40 + v20;
    if (*(v35 + 32) < (v40 + v20))
    {
      v42 = OUTLINED_FUNCTION_68_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v42, v43, v44);
      v35 = v65;
    }

    (*(v53 + 16))(v62, v64, AssociatedTypeWitness);
    memcpy((*(v35 + 24) + *(v35 + 32) - v41), v62, v40);
    v45 = *(v53 + 8);
    v46 = OUTLINED_FUNCTION_68_0();
    v45(v46);
    (v45)(v62, AssociatedTypeWitness);
    v20 += v40;
  }

  while (v66 != sub_272B877D0());

  v1 = v54;
  *(v54 + 16) = v41;
  v20 = v41;
  v7 = v52;
LABEL_26:
  *(v1 + 40) = 0;
  v47 = v65;
  if (v17 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v17 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v20 < 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v20))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v48 = -v20 & 3;
  v49 = v48 + v20;
  if (*(v65 + 32) < v48 + v20)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v48, v20, *(v1 + 24));
    v47 = v65;
  }

  *(v1 + 16) = v49;
  v50 = v49 + 4;
  v51 = *(v47 + 32);
  if (v51 < (v49 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v49, *(v1 + 24));
    v47 = v65;
    v51 = *(v65 + 32);
  }

  *(*(v47 + 24) + v51 - v49 - 4) = v17;
  *(v1 + 16) = v50;
  if (v49 > 0xFFFFFFFB)
  {
LABEL_47:
    __break(1u);
  }

  *v7 = v50;
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createVector<A>(_:size:)()
{
  OUTLINED_FUNCTION_31_0();
  v2 = v1;
  v4 = v3;
  v5 = *(*(v1 - 8) + 64);
  OUTLINED_FUNCTION_40_0();
  v6 = v0[8];
  if (v6 <= 3)
  {
    v6 = 4;
    v0[8] = 4;
    v0[3] = 4;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v10 ^ v11 | v9))
  {
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v12 = v5 * v8;
  if ((v7 | (v5 * v8)) < 0)
  {
    goto LABEL_35;
  }

  if (v12 > 0xFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v13 = ((-v7 - v12) & 3) + v7;
  OUTLINED_FUNCTION_25_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v14, v15, v0[3]);
  }

  v0[2] = v13;
  if (v6 < v5)
  {
    v0[8] = v5;
    v0[3] = v5;
  }

  OUTLINED_FUNCTION_65_0();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_37;
  }

  if ((v13 | v5) < 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v5 > 0xFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!v5)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v13 + OUTLINED_FUNCTION_24_0(v5 - 1);
  OUTLINED_FUNCTION_36_1();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v13, v0[3]);
  }

  v0[2] = v16;
  OUTLINED_FUNCTION_69_0();
  sub_272B87810();
  OUTLINED_FUNCTION_38_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v16, v0[3]);
  }

  OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_63_0();
  MEMORY[0x28223BE20](v19);
  v20 = OUTLINED_FUNCTION_20_1();
  OUTLINED_FUNCTION_13_1(v20);
  OUTLINED_FUNCTION_77_0();

  OUTLINED_FUNCTION_50_0();
  if (v10 != v11)
  {
    goto LABEL_41;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v22 = v0[2];
  if ((v22 & 0x8000000000000000) != 0)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (HIDWORD(v22))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v23 = OUTLINED_FUNCTION_10_0(v21, v22);
  v25 = v23 + v24;
  OUTLINED_FUNCTION_5_1();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v27, v0[3]);
  }

  OUTLINED_FUNCTION_19();
  if (v10 != v11)
  {
    v28 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v28, v25, v29);
  }

  OUTLINED_FUNCTION_7_1();
  *(v30 - 4) = v2;
  OUTLINED_FUNCTION_42_0();
  if (!v9 & v31)
  {
LABEL_45:
    __break(1u);
  }

  *v4 = v0 + 8;
  OUTLINED_FUNCTION_32_2();
}

{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_62_0();
  v62 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_72_0();
  v65 = v15;
  OUTLINED_FUNCTION_56_0();
  OUTLINED_FUNCTION_2_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_61_0();
  v61 = v19;
  v20 = OUTLINED_FUNCTION_59_0();
  v64 = v3;
  v60 = v21;
  v22 = v21(v20, v3);
  *(v0 + 40) = 1;
  v23 = *(v0 + 64);
  if (v23 <= 3)
  {
    v23 = 4;
    *(v0 + 64) = 4;
    *(v0 + 24) = 4;
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v26 ^ v27 | v25))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if ((v24 | (v22 * v7)) < 0)
  {
    goto LABEL_36;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v26 ^ v27 | v25))
  {
    goto LABEL_37;
  }

  v57 = v17;
  v30 = OUTLINED_FUNCTION_41_0(v28, v29);
  v32 = v30 + v31;
  v66 = *(v0 + 8);
  if (*(v66 + 32) < v30 + v31)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v31, *(v0 + 24));
  }

  *(v0 + 16) = v32;
  if (v23 < v22)
  {
    *(v0 + 64) = v22;
    *(v0 + 24) = v22;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v26 ^ v27 | v25))
  {
    goto LABEL_38;
  }

  if ((v32 | v22) < 0)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v26 ^ v27 | v25))
  {
    goto LABEL_40;
  }

  v33 = v22 - 1;
  if (!v22)
  {
LABEL_41:
    __break(1u);
LABEL_42:

    goto LABEL_26;
  }

  v34 = v11;
  v56 = v9;
  v35 = OUTLINED_FUNCTION_24_0(v33);
  v11 = v32 + v35;
  if (*(v36 + 32) < v32 + v35)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v35, v32, *(v0 + 24));
  }

  *(v0 + 16) = v11;
  v37 = OUTLINED_FUNCTION_78_0();

  OUTLINED_FUNCTION_0_4();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_47_0();
  v59 = v37;
  MEMORY[0x2743D4A10](v37);

  v38 = sub_272B87810();

  v67 = v38;
  if (v38 == sub_272B877D0())
  {
    goto LABEL_42;
  }

  v58 = *(v3 + 40);
  v39 = (v34 + 16);
  v40 = (v34 + 8);
  v41 = v66;
  do
  {
    sub_272B87830();
    OUTLINED_FUNCTION_1_2();
    swift_getWitnessTable();
    v42 = OUTLINED_FUNCTION_16_0();
    v44 = sub_272B7DF34(v42, v43, v59);
    (*(v57 + 16))(v61);
    v45 = OUTLINED_FUNCTION_43_0();
    (v44)(v45);
    v58(v5, v64);
    (*(v57 + 8))(v61, v5);
    v46 = v60(v5, v64);
    v47 = v46;
    v48 = v46 + v11;
    if (*(v41 + 32) < (v46 + v11))
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v46, v11, *(v1 + 24));
      v41 = v66;
    }

    (*v39)(v62, v65, AssociatedTypeWitness);
    memcpy((*(v41 + 24) + *(v41 + 32) - v48), v62, v47);
    v49 = *v40;
    (*v40)(v65, AssociatedTypeWitness);
    v50 = OUTLINED_FUNCTION_39_0();
    v49(v50);
    v11 = v48;
  }

  while (v67 != sub_272B877D0());

  *(v1 + 16) = v48;
  v11 = v48;
LABEL_26:
  *(v1 + 40) = 0;
  v51 = v66;
  if (v7 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if ((v11 & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (HIDWORD(v11))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v52 = -v11 & 3;
  v53 = v52 + v11;
  if (*(v66 + 32) < (v52 + v11))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v52, v11, *(v1 + 24));
    v51 = v66;
  }

  *(v1 + 16) = v53;
  v54 = v53 + 4;
  v55 = *(v51 + 32);
  if (v55 < (v53 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v53, *(v1 + 24));
    v51 = v66;
    v55 = *(v66 + 32);
  }

  *(*(v51 + 24) + v55 - v53 - 4) = v7;
  *(v1 + 16) = v54;
  if (v53 > 0xFFFFFFFB)
  {
LABEL_47:
    __break(1u);
  }

  *v56 = v54;
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createVector(ofOffsets:)()
{
  OUTLINED_FUNCTION_73_0();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *(v4 + 16);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_0();
  if (v10 ^ v11 | v9)
  {
    OUTLINED_FUNCTION_9_1();
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v10 ^ v11 | v9))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (((v12 | (4 * v8)) & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v10 ^ v11 | v9))
  {
    goto LABEL_45;
  }

  v15 = OUTLINED_FUNCTION_10_0(v13, v14);
  v17 = v15 + v16;
  v18 = *(v0 + 8);
  OUTLINED_FUNCTION_17_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v20, *(v3 + 24));
  }

  *(v3 + 16) = v17;
  if (v17 < 0)
  {
    goto LABEL_46;
  }

  if (HIDWORD(v17))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v1 = OUTLINED_FUNCTION_49_0() + v17;
  OUTLINED_FUNCTION_15_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v17, *(v3 + 24));
  }

  v2 = 4294967291;
  *(v3 + 16) = v1;
  if (v8)
  {
    v34 = v8;
    v35 = v7;
    v7 = v8;
    while (v1 <= 0xFFFFFFFFLL)
    {
      v22 = *(v5 + 28 + 4 * v7);
      v23 = OUTLINED_FUNCTION_8_0();
      if (v10 != v11)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v23, v1, *(v3 + 24));
      }

      if (v5 > 0xFFFFFFFFLL)
      {
        goto LABEL_41;
      }

      v24 = OUTLINED_FUNCTION_6_0();
      if (v10 != v11)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v24, v5, *(v3 + 24));
        v25 = *(v18 + 32);
      }

      v1 = v17 + 4;
      if (v25 < v17 + 4)
      {
        v26 = OUTLINED_FUNCTION_35_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v17, v27);
        v25 = *(v18 + 32);
      }

      *(*(v18 + 24) + v25 - v17 - 4) = v5 - v22 + 4;
      if (v17 > 4294967291)
      {
        goto LABEL_42;
      }

      if (!--v7)
      {
        *(v3 + 16) = v1;
        *(v3 + 40) = 0;
        v28 = v34;
        v7 = v35;
        if (!(v34 >> 31))
        {
          goto LABEL_32;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_48:
  v28 = 0;
  *(v3 + 40) = 0;
  if (HIDWORD(v1))
  {
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  v29 = OUTLINED_FUNCTION_8_0();
  if (v10 != v11)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v1, *(v3 + 24));
  }

  *(v3 + 16) = v5;
  v30 = v5 + 4;
  OUTLINED_FUNCTION_26_0();
  if (v10 != v11)
  {
    v31 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v31, v5, v32);
  }

  OUTLINED_FUNCTION_3_2();
  *(v33 - 4) = v28;
  *(v3 + 16) = v30;
  if (v5 > v2)
  {
LABEL_51:
    __break(1u);
  }

  *v7 = v30;
  OUTLINED_FUNCTION_74_0();
}

void FlatBufferBuilder.createVector(ofOffsets:len:)()
{
  OUTLINED_FUNCTION_73_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_27_0();
  if (v9 ^ v10 | v8)
  {
    OUTLINED_FUNCTION_9_1();
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v9 ^ v10 | v8))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((v11 | (4 * v3)) < 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_48;
  }

  v14 = OUTLINED_FUNCTION_10_0(v12, v13);
  v16 = v14 + v15;
  v17 = *(v0 + 8);
  OUTLINED_FUNCTION_37_0();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, *(v1 + 24));
  }

  *(v1 + 16) = v16;
  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_49;
  }

  if (HIDWORD(v16))
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = (-v16 & 3) + v16;
  OUTLINED_FUNCTION_105();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v21, v16, *(v1 + 24));
  }

  *(v1 + 16) = v20;
  v22 = *(v5 + 16);
  if (v22)
  {
    while (v20 <= 0xFFFFFFFFLL)
    {
      v23 = OUTLINED_FUNCTION_6_0();
      if (v9 != v10)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v23, v20, *(v1 + 24));
      }

      if (v5 > 0xFFFFFFFFLL)
      {
        goto LABEL_44;
      }

      v24 = OUTLINED_FUNCTION_49_0() + v5;
      OUTLINED_FUNCTION_37_0();
      if (v9 != v10)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v25, v5, *(v1 + 24));
        v26 = *(v17 + 32);
      }

      v20 = v24 + 4;
      if (v26 < v24 + 4)
      {
        v27 = OUTLINED_FUNCTION_35_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v27, v24, v28);
        v26 = *(v17 + 32);
      }

      OUTLINED_FUNCTION_48_0(v26);
      if (v24 > 4294967291)
      {
        goto LABEL_45;
      }

      if (!--v22)
      {
        *(v1 + 16) = v20;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_31:
  *(v1 + 40) = 0;
  if (v3 < 0xFFFFFFFF80000000)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (v3 > 0x7FFFFFFF)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  OUTLINED_FUNCTION_51_0();
  if (!(v9 ^ v10 | v8))
  {
    goto LABEL_53;
  }

  v29 = OUTLINED_FUNCTION_6_0();
  if (v9 != v10)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v29, v20, *(v1 + 24));
  }

  *(v1 + 16) = v5;
  v30 = v5 + 4;
  OUTLINED_FUNCTION_26_0();
  if (v9 != v10)
  {
    v32 = OUTLINED_FUNCTION_35_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v32, v5, v33);
    v31 = *(v17 + 32);
  }

  *(*(v17 + 24) + v31 - v5 - 4) = v3;
  *(v1 + 16) = v30;
  if (v5 > 4294967291)
  {
LABEL_54:
    __break(1u);
  }

  *v7 = v30;
  OUTLINED_FUNCTION_74_0();
}

unint64_t FlatBufferBuilder.push(element:)()
{
  OUTLINED_FUNCTION_27_0();
  if (v3 ^ v4 | v2)
  {
    OUTLINED_FUNCTION_38();
  }

  v5 = *(v0 + 16);
  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (HIDWORD(v5))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v6 = *v1;
  v7 = OUTLINED_FUNCTION_10_0(v1, v5);
  v9 = v7 + v8;
  OUTLINED_FUNCTION_15_0();
  if (v3 != v4)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v10, v11, *(v0 + 24));
  }

  *(v0 + 16) = v9;
  if (HIDWORD(v9))
  {
    goto LABEL_20;
  }

  v12 = v9 - v6 + 4;
  v13 = (-v9 & 3) + v9;
  OUTLINED_FUNCTION_5_1();
  if (v3 != v4)
  {
    OUTLINED_FUNCTION_79_0(v14);
  }

  *(v0 + 16) = v13;
  OUTLINED_FUNCTION_15_0();
  if (v3 != v4)
  {
    v15 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v15, v16, v17);
  }

  OUTLINED_FUNCTION_7_1();
  *(v18 - 4) = v12;
  *(v0 + 16) = v13 + 4;
  if (v13 > 0xFFFFFFFB)
  {
LABEL_21:
    __break(1u);
  }

  return v13 + 4;
}

void FlatBufferBuilder.createVector(ofStrings:)(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v4 = v2;
  v5 = 0;
  v81[3] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v77 = a1 + 32;
  v7 = MEMORY[0x277D84F90];
  for (i = v6; ; v6 = i)
  {
    if (v5 == v6)
    {
      goto LABEL_72;
    }

    v78 = v5;
    v79 = v7;
    v8 = (v77 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    if ((v9 & 0x1000000000000000) != 0)
    {
      sub_272B87760();
    }

    OUTLINED_FUNCTION_57_0();
    if (v13 ^ v14 | v12)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v15 = *(v4 + 16);
    if (v15 > 0xFFFFFFFFLL)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (((v15 | (v11 + 1)) & 0x8000000000000000) != 0)
    {
      goto LABEL_120;
    }

    if ((v11 + 1) > 0xFFFFFFFFLL)
    {
      goto LABEL_121;
    }

    v80 = v11;
    v6 = ~(v15 + v11) & 3;
    v16 = v6 + v15;
    v17 = *(v4 + 8);
    OUTLINED_FUNCTION_36_1();
    if (v13 != v14)
    {
      v18 = *(v4 + 24);
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRetain_n();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v6, v15, v18);
    }

    else
    {
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRetain_n();
    }

    *(v4 + 16) = v16;
    OUTLINED_FUNCTION_36_1();
    if (v13 ^ v14 | v12)
    {
      v19 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v19, v16, v20);
    }

    *(v4 + 16) = v16 + 1;
    v21 = v80;
    OUTLINED_FUNCTION_38_0();
    if (v13 != v14)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v80, v22, *(v4 + 24));
    }

    v3 = 0;
    sub_272B46F44(v10, v9, (v4 + 8), v80);
    OUTLINED_FUNCTION_67_0();
    if (v12)
    {
      v3 = (v9 & 0x2000000000000000) != 0 ? HIBYTE(v9) & 0xF : v10 & 0xFFFFFFFFFFFFLL;
      if (v3)
      {
        break;
      }
    }

LABEL_53:

    if ((v21 & 0x8000000000000000) != 0)
    {
      goto LABEL_122;
    }

    if (HIDWORD(v21))
    {
      goto LABEL_123;
    }

    v39 = *(v4 + 16);
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_124;
    }

    if (HIDWORD(v39))
    {
      goto LABEL_125;
    }

    v40 = OUTLINED_FUNCTION_10_0(v38, v39);
    v42 = v40 + v41;
    OUTLINED_FUNCTION_25_0();
    if (v13 != v14)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v43, v44, *(v4 + 24));
    }

    *(v4 + 16) = v42;
    v6 = v42 + 4;
    OUTLINED_FUNCTION_26_0();
    if (v13 != v14)
    {
      v46 = OUTLINED_FUNCTION_21_0();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v46, v42, v47);
      v45 = *(v17 + 32);
    }

    *(*(v17 + 24) + v45 - v42 - 4) = v21;

    *(v4 + 16) = v6;
    if (v42 > 0xFFFFFFFB)
    {
      goto LABEL_126;
    }

    v7 = v79;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_272B7D880(0, *(v79 + 2) + 1, 1, v79);
    }

    v3 = *(v7 + 2);
    v48 = *(v7 + 3);
    if (v3 >= v48 >> 1)
    {
      v7 = sub_272B7D880((v48 > 1), v3 + 1, 1, v7);
    }

    v5 = v78 + 1;
    *(v7 + 2) = v3 + 1;
    *&v7[4 * v3 + 32] = v6;
  }

  v23 = (v10 >> 59) & 1;
  if ((v9 & 0x1000000000000000) == 0)
  {
    LODWORD(v23) = 1;
  }

  v24 = 11;
  if (v23)
  {
    v24 = 7;
  }

  v25 = v24 | (v3 << 16);
  v7 = (4 << v23);
  OUTLINED_FUNCTION_70_0();
  swift_bridgeObjectRetain_n();
  while (1)
  {
    if ((v25 & 0xC) != v7)
    {
      if ((v9 & 0x1000000000000000) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_36;
    }

    v26 = OUTLINED_FUNCTION_39_0();
    v28 = sub_272B73308(v26, v27, v9);
    if (v28 < 0x4000)
    {
      break;
    }

    v25 = v28;
    if ((v9 & 0x1000000000000000) == 0)
    {
LABEL_33:
      v25 = (v25 & 0xFFFFFFFFFFFF0000) - 65532;
      goto LABEL_38;
    }

LABEL_36:
    if (v3 < v25 >> 16)
    {
      goto LABEL_71;
    }

    OUTLINED_FUNCTION_39_0();
    v25 = sub_272B87770();
LABEL_38:
    v29 = v25;
    if ((v25 & 0xC) == v7)
    {
      v36 = OUTLINED_FUNCTION_39_0();
      v29 = sub_272B73308(v36, v37, v9);
    }

    v30 = v29 >> 16;
    if (v29 >> 16 >= v3)
    {
      goto LABEL_70;
    }

    if ((v9 & 0x1000000000000000) != 0)
    {
      v32 = sub_272B87790();
    }

    else if ((v9 & 0x2000000000000000) != 0)
    {
      v81[0] = v10;
      v81[1] = v9 & 0xFFFFFFFFFFFFFFLL;
      v32 = *(v81 + v30);
    }

    else
    {
      v31 = (v9 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v10 & 0x1000000000000000) == 0)
      {
        v31 = sub_272B878E0();
      }

      v32 = *(v31 + v30);
    }

    v6 = *(v4 + 16);
    OUTLINED_FUNCTION_37_0();
    if (v13 != v14)
    {
      v34 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v34, v6, v35);
      v33 = *(v17 + 32);
    }

    *(*(v17 + 24) + v33 + ~v6) = v32;
    *(v4 + 16) = v6 + 1;
    if (!(v25 >> 14))
    {
      OUTLINED_FUNCTION_70_0();
      swift_bridgeObjectRelease_n();
      v21 = v80;
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  v6 = *(v7 + 2);
  *(v4 + 40) = 1;
  OUTLINED_FUNCTION_57_0();
  if (v13 ^ v14 | v12)
  {
    OUTLINED_FUNCTION_18_0();
  }

  OUTLINED_FUNCTION_11_0();
  if (!(v13 ^ v14 | v12))
  {
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (((v49 | (4 * v6)) & 0x8000000000000000) != 0)
  {
    goto LABEL_128;
  }

  OUTLINED_FUNCTION_30_0();
  if (!(v13 ^ v14 | v12))
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v52 = v7;
  v53 = OUTLINED_FUNCTION_10_0(v50, v51);
  v55 = v53 + v54;
  v56 = *(v4 + 8);
  OUTLINED_FUNCTION_17_0();
  if (v13 != v14)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v57, v58, *(v4 + 24));
  }

  *(v4 + 16) = v55;
  if ((v55 & 0x8000000000000000) != 0)
  {
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (HIDWORD(v55))
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v3 = OUTLINED_FUNCTION_49_0() + v55;
  OUTLINED_FUNCTION_5_1();
  if (v13 != v14)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v59, v55, *(v4 + 24));
  }

  *(v4 + 16) = v3;
  v60 = v7;
  v61 = *(v7 + 2);
  if (v61)
  {
    while (v61 <= *(v60 + 2))
    {
      if (v3 > 0xFFFFFFFFLL)
      {
        goto LABEL_116;
      }

      v62 = (-v3 & 3) + v3;
      OUTLINED_FUNCTION_17_0();
      if (v13 != v14)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v63, v3, *(v4 + 24));
      }

      if (v62 > 0xFFFFFFFFLL)
      {
        goto LABEL_117;
      }

      v64 = OUTLINED_FUNCTION_49_0() + v62;
      OUTLINED_FUNCTION_37_0();
      if (v13 != v14)
      {
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v65, v62, *(v4 + 24));
        v66 = *(v56 + 32);
      }

      v3 = v64 + 4;
      if (v66 < v64 + 4)
      {
        v67 = OUTLINED_FUNCTION_21_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v67, v64, v68);
        v66 = *(v56 + 32);
      }

      OUTLINED_FUNCTION_48_0(v66);
      if (v64 > 4294967291)
      {
        goto LABEL_118;
      }

      --v61;
      v60 = v52;
      if (!v61)
      {

        *(v4 + 16) = v3;
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

LABEL_132:

LABEL_103:
  *(v4 + 40) = 0;
  if (v6 >> 31)
  {
    __break(1u);
    goto LABEL_134;
  }

  OUTLINED_FUNCTION_66_0();
  if (!(v13 ^ v14 | v12))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v69 = (-v3 & 3) + v3;
  OUTLINED_FUNCTION_105();
  if (v13 != v14)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v70, v3, *(v4 + 24));
  }

  *(v4 + 16) = v69;
  v71 = v69 + 4;
  OUTLINED_FUNCTION_5_1();
  if (v13 != v14)
  {
    v72 = OUTLINED_FUNCTION_21_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v72, v69, v73);
  }

  OUTLINED_FUNCTION_3_2();
  *(v74 - 4) = v6;
  *(v4 + 16) = v71;
  OUTLINED_FUNCTION_58_0();
  if (!(v13 ^ v14 | v12))
  {
LABEL_135:
    __break(1u);
  }

  *a2 = v71;
}

void FlatBufferBuilder.createVector<A>(ofStructs:)()
{
  OUTLINED_FUNCTION_31_0();
  v3 = v1;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v74 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2_2();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_72_0();
  v70 = v16;
  OUTLINED_FUNCTION_56_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_72_0();
  v65 = v18;
  v60 = sub_272B87810();
  if ((v60 * v13) >> 64 != (v60 * v13) >> 63)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v66 = *(v11 + 80);
  *(v1 + 40) = 1;
  v69 = *(v1 + 64);
  if (v69 <= 3)
  {
    *(v1 + 64) = 4;
    v69 = 4;
    *(v1 + 24) = 4;
  }

  OUTLINED_FUNCTION_52_0();
  if (!(v22 ^ v23 | v21))
  {
    goto LABEL_46;
  }

  v68 = v66 + 1;
  v0 = v20 * (v66 + 1);
  if (((v19 | v0) & 0x8000000000000000) != 0)
  {
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  OUTLINED_FUNCTION_64_0();
  if (!(v22 ^ v23 | v21))
  {
    goto LABEL_48;
  }

  v26 = OUTLINED_FUNCTION_41_0(v24, v25);
  v28 = v26 + v27;
  v2 = *(v1 + 8);
  if (*(v2 + 32) < v26 + v27)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v27, *(v1 + 24));
  }

  *(v1 + 16) = v28;
  if (v69 < v68)
  {
    v29 = v68;
    *(v1 + 64) = v68;
    *(v1 + 24) = v29;
    v69 = v29;
  }

  if (v28 > 0xFFFFFFFFLL)
  {
    goto LABEL_49;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = v66 & (-v0 - v28);
    v0 = v28 + v30;
    if (*(v2 + 32) < v28 + v30)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v30, v28, *(v1 + 24));
    }

    *(v1 + 16) = v0;
    v72 = v7;
    v31 = sub_272B87840();

    OUTLINED_FUNCTION_0_4();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_47_0();
    v64 = v31;
    MEMORY[0x2743D4A10](v31);
    v32 = v73;
    v72 = v73;

    v33 = sub_272B87810();

    v71 = v33;
    if (v33 == sub_272B877D0())
    {
      goto LABEL_51;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v13))
    {
      v67 = v3;
      v59 = v9;
      v9 = (v11 + 16);
      v62 = v11 + 32;
      v63 = v13;
      v34 = (v11 + 8);
      while (1)
      {
        v3 = v32;
        sub_272B87830();
        OUTLINED_FUNCTION_1_2();
        v35 = v64;
        swift_getWitnessTable();
        v36 = OUTLINED_FUNCTION_16_0();
        v38 = sub_272B7DF34(v36, v37, v35);
        v39 = *v9;
        (*v9)(v65);
        v40 = OUTLINED_FUNCTION_43_0();
        (v38)(v40);
        OUTLINED_FUNCTION_12_1();
        v41();
        if (v69 < v68)
        {
          v42 = v67;
          v43 = v68;
          v67[8] = v68;
          v42[3] = v43;
          v69 = v43;
        }

        v44 = v63;
        if ((v0 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (HIDWORD(v0))
        {
          goto LABEL_43;
        }

        v45 = v66 & -(v63 + v0);
        v46 = v0 + v45;
        v47 = *(v2 + 32);
        if (v47 < (v0 + v45))
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v45, v0, v67[3]);
          v47 = *(v2 + 32);
        }

        v0 = v46 + v44;
        if (v47 < (v46 + v44))
        {
          ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v44, v46, v67[3]);
        }

        v48 = v61;
        OUTLINED_FUNCTION_12_1();
        v39();
        memcpy((*(v2 + 24) + *(v2 + 32) - v0), v48, v44);
        v49 = *v34;
        v50 = OUTLINED_FUNCTION_29_0();
        v49(v50);
        (v49)(v48, v5);
        OUTLINED_FUNCTION_64_0();
        if (!(v22 ^ v23 | v21))
        {
          goto LABEL_44;
        }

        v32 = v3;
        if (v71 == sub_272B877D0())
        {

          v3 = v67;
          v67[2] = v0;
          v9 = v59;
          goto LABEL_33;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    __break(1u);
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

LABEL_50:
  __break(1u);
LABEL_51:

LABEL_33:
  *(v3 + 40) = 0;
  v51 = v60;
  if (v60 < 0xFFFFFFFF80000000)
  {
    goto LABEL_54;
  }

  if (v60 > 0x7FFFFFFF)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (HIDWORD(v0))
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v52 = -v0 & 3;
  v53 = v52 + v0;
  if (*(v2 + 32) < (v52 + v0))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v52, v0, v3[3]);
  }

  v3[2] = v53;
  v54 = v53 + 4;
  v55 = *(v2 + 32);
  if (v55 < (v53 + 4))
  {
    v56 = OUTLINED_FUNCTION_23_0();
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v56, v57, v58);
    v55 = *(v2 + 32);
  }

  *(*(v2 + 24) + v55 - v53 - 4) = v51;
  v3[2] = v54;
  if (v53 > 0xFFFFFFFB)
  {
LABEL_57:
    __break(1u);
  }

  *v9 = v54;
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.create<A>(struct:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_2_2();
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_53_1();
  v9 = *(v5 + 80) + 1;
  if (v0[8] < v9)
  {
    v0[8] = v9;
    v0[3] = v9;
  }

  OUTLINED_FUNCTION_52_0();
  if (!(v13 ^ v14 | v12))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if ((v10 | v7) < 0)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v15 = v10 + (v11 & (-v10 - v7));
  v16 = v0[1];
  OUTLINED_FUNCTION_25_0();
  if (v13 != v14)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v17, v18, v1[3]);
  }

  v1[2] = v15;
  v19 = v15 + v7;
  if (*(v16 + 32) < v15 + v7)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v15, v1[3]);
  }

  v20 = OUTLINED_FUNCTION_46_0();
  v21(v20);
  OUTLINED_FUNCTION_28_0();
  memcpy(v22, v23, v24);
  v1[2] = v19;
  v25 = OUTLINED_FUNCTION_68_0();
  v26(v25);
  if ((v19 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  if (HIDWORD(v19))
  {
    goto LABEL_18;
  }

  *v3 = v19;
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.create<A>(struct:position:)()
{
  OUTLINED_FUNCTION_31_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v27[1] = *MEMORY[0x277D85DE8];
  v6 = *(v2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v9 = *(v6 + 80) + 1;
  if (v0[8] < v9)
  {
    v0[8] = v9;
    v0[3] = v9;
  }

  OUTLINED_FUNCTION_52_0();
  if (!(v14 ^ v15 | v13))
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v7 > 0xFFFFFFFFLL)
  {
    goto LABEL_21;
  }

  if ((v10 | v7) < 0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v27[0] = v11;
  v16 = v10 + (v12 & (-v10 - v7));
  v17 = v0[1];
  OUTLINED_FUNCTION_36_1();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v18, v19, v1[3]);
  }

  v1[2] = v16;
  v20 = v16 + v7;
  OUTLINED_FUNCTION_26_0();
  if (v14 != v15)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v7, v16, v1[3]);
  }

  OUTLINED_FUNCTION_12_1();
  v21();
  memcpy((*(v17 + 24) + *(v17 + 32) - v20), v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v1[2] = v20;
  (*(v6 + 8))(v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_23;
  }

  if (HIDWORD(v20))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  v22 = *v1;
  if (*(*v1 + 48))
  {
    goto LABEL_25;
  }

  v23 = *(v22 + 32);
  v24 = v27[0];
  if (v23)
  {
    v25 = v23 + *(v22 + 80);
    *v25 = v20;
    *(v25 + 4) = v5;
  }

  *(v22 + 72) = vaddq_s64(*(v22 + 72), xmmword_272B87CB0);
  v26 = *(v22 + 64);
  if (v26 <= v5)
  {
    LOWORD(v26) = v5;
  }

  *(v22 + 64) = v26;
  *v24 = v20;
  OUTLINED_FUNCTION_32_2();
}

void FlatBufferBuilder.createShared(string:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  OUTLINED_FUNCTION_76_0();
  v15 = v14;
  if (!v13)
  {
    LODWORD(v24) = 0;
    goto LABEL_74;
  }

  v16 = v11;
  v17 = v13;
  v18 = v12;
  v19 = v11[6];
  if (!*(v19 + 16) || (v20 = OUTLINED_FUNCTION_29_0(), v22 = sub_272B7DC98(v20, v21), (v23 & 1) == 0))
  {
    v25 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x1000000000000000) != 0)
    {
      goto LABEL_76;
    }

    if ((v17 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v26 = v18 & 0xFFFFFFFFFFFFLL;
    }

LABEL_9:
    OUTLINED_FUNCTION_57_0();
    if (v28 ^ v29 | v27)
    {
      OUTLINED_FUNCTION_18_0();
    }

    v30 = v16[2];
    OUTLINED_FUNCTION_65_0();
    if (!(v28 ^ v29 | v27))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    if ((v30 | (v26 + 1)) < 0)
    {
      goto LABEL_77;
    }

    OUTLINED_FUNCTION_30_0();
    if (!(v28 ^ v29 | v27))
    {
      goto LABEL_78;
    }

    v31 = (~(v30 + v26) & 3) + v30;
    v32 = v16[1];
    OUTLINED_FUNCTION_5_1();
    v72 = v15;
    if (v28 != v29)
    {
      v15 = v26;
      v33 = v16[3];

      v34 = OUTLINED_FUNCTION_39_0();
      v35 = v33;
      v26 = v15;
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v34, v36, v35);
    }

    else
    {
    }

    v16[2] = v31;
    OUTLINED_FUNCTION_5_1();
    if (v28 ^ v29 | v27)
    {
      v37 = OUTLINED_FUNCTION_34_1();
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v37, v31, v38);
    }

    v16[2] = v31 + 1;
    OUTLINED_FUNCTION_38_0();
    if (v28 != v29)
    {
      ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v26, v31 + 1, v16[3]);
    }

    v39 = OUTLINED_FUNCTION_29_0();
    v73 = v26;
    sub_272B46F44(v39, v40, v41, v26);
    OUTLINED_FUNCTION_67_0();
    if (!v27)
    {
      goto LABEL_62;
    }

    v42 = (v17 & 0x2000000000000000) != 0 ? v25 : v18 & 0xFFFFFFFFFFFFLL;
    if (!v42)
    {
      goto LABEL_62;
    }

    v43 = (v18 >> 59) & 1;
    if ((v17 & 0x1000000000000000) == 0)
    {
      LODWORD(v43) = 1;
    }

    v44 = 11;
    if (v43)
    {
      v44 = 7;
    }

    v45 = v44 | (v42 << 16);
    v25 = 4 << v43;
    OUTLINED_FUNCTION_54_0();
    while (1)
    {
      if ((v45 & 0xC) == v25)
      {
        v46 = OUTLINED_FUNCTION_4_2();
        v49 = sub_272B73308(v46, v47, v48);
        if (v49 < 0x4000)
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:

LABEL_62:

          if ((v73 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v73))
            {
              v59 = v16[2];
              if ((v59 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v59))
                {
                  v60 = OUTLINED_FUNCTION_10_0(v58, v59);
                  v62 = v60 + v61;
                  OUTLINED_FUNCTION_25_0();
                  if (v28 != v29)
                  {
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v63, v64, v16[3]);
                  }

                  v16[2] = v62;
                  v24 = v62 + 4;
                  OUTLINED_FUNCTION_5_1();
                  v15 = v72;
                  if (v28 != v29)
                  {
                    v66 = OUTLINED_FUNCTION_21_0();
                    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v66, v62, v67);
                    v65 = *(v32 + 32);
                  }

                  *(*(v32 + 24) + v65 - v62 - 4) = v73;
                  v16[2] = v24;
                  if (v62 <= 0xFFFFFFFB)
                  {
                    swift_isUniquelyReferenced_nonNull_native();
                    v74 = v16[6];
                    OUTLINED_FUNCTION_12_1();
                    sub_272B7DDC4(v68, v69, v70, v71);
                    v16[6] = v74;
                    goto LABEL_74;
                  }

LABEL_83:
                  __break(1u);
                }

LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

LABEL_81:
              __break(1u);
              goto LABEL_82;
            }

LABEL_80:
            __break(1u);
            goto LABEL_81;
          }

LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        v45 = v49;
        if ((v17 & 0x1000000000000000) == 0)
        {
LABEL_40:
          OUTLINED_FUNCTION_44_0();
          goto LABEL_45;
        }
      }

      else if ((v17 & 0x1000000000000000) == 0)
      {
        goto LABEL_40;
      }

      if (v42 < v45 >> 16)
      {
        __break(1u);
LABEL_76:
        OUTLINED_FUNCTION_29_0();
        v26 = sub_272B87760();
        goto LABEL_9;
      }

      OUTLINED_FUNCTION_4_2();
      v45 = sub_272B87770();
LABEL_45:
      v50 = v45;
      if ((v45 & 0xC) == v25)
      {
        v55 = OUTLINED_FUNCTION_4_2();
        v50 = sub_272B73308(v55, v56, v57);
      }

      if (v50 >> 16 >= v42)
      {
        goto LABEL_60;
      }

      if ((v17 & 0x1000000000000000) != 0)
      {
        OUTLINED_FUNCTION_12_1();
        sub_272B87790();
      }

      else if ((v17 & 0x2000000000000000) == 0 && (v18 & 0x1000000000000000) == 0)
      {
        OUTLINED_FUNCTION_29_0();
        sub_272B878E0();
      }

      v51 = v16[2];
      v15 = (v51 + 1);
      OUTLINED_FUNCTION_37_0();
      if (v28 != v29)
      {
        v53 = OUTLINED_FUNCTION_34_1();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v53, v51, v54);
        v52 = *(v32 + 32);
      }

      OUTLINED_FUNCTION_60_0(v52);
      v16[2] = v15;
      if (!(v45 >> 14))
      {
        goto LABEL_61;
      }
    }
  }

  LODWORD(v24) = *(*(v19 + 56) + 4 * v22);
LABEL_74:
  *v15 = v24;
  OUTLINED_FUNCTION_75_0();
}

uint64_t FlatBufferBuilder.debugDescription.getter()
{
  sub_272B878C0();
  MEMORY[0x2743D4AA0](0x6420726566667562, 0xEE000A3A67756265);
  sub_272B87930();
  MEMORY[0x2743D4AA0](0xD00000000000001CLL, 0x8000000272B8BA90);
  if (v0[56])
  {
    v1 = 1702195828;
  }

  else
  {
    v1 = 0x65736C6166;
  }

  if (v0[56])
  {
    v2 = 0xE400000000000000;
  }

  else
  {
    v2 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v1, v2);

  MEMORY[0x2743D4AA0](0xD000000000000015, 0x8000000272B8BAB0);
  if (v0[57])
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v0[57])
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v3, v4);

  MEMORY[0x2743D4AA0](0x7473654E7369202CLL, 0xEC000000203A6465);
  if (v0[40])
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v0[40])
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x2743D4AA0](v5, v6);

  MEMORY[0x2743D4AA0](32032, 0xE200000000000000);
  return 0;
}

uint64_t FlatBufferBuilder.VTableStorage.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 24) = 8;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v1 = swift_slowAlloc();
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0;
  return v0;
}

void FlatBufferBuilder.VTableStorage.deinit()
{
  if (*(v0 + 48))
  {
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 32);
    if (v1)
    {
      MEMORY[0x2743D4FD0](v1, -1, -1);
    }
  }
}

char *sub_272B7D880(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3400, &qword_272B8A990);
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

char *sub_272B7D980(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_272B7DA74(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3408, &qword_272B8A998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 4);
  return v4;
}

void *sub_272B7DAF0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unint64_t sub_272B7DB60(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  result = sub_272B7DC30(result, 1);
  v8 = *v2;
  if (!v7)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v9 = *(v8 + 16);
  v10 = v9 - a2;
  if (__OFSUB__(v9, a2))
  {
    goto LABEL_21;
  }

  v11 = (v8 + 32 + 4 * a2);
  result = v8 + 32 + 4 * v5;
  if (v5 != a2 || v11 + 4 * v10 <= result)
  {
    result = memmove(result, v11, 4 * v10);
    v9 = *(v8 + 16);
  }

  v13 = __OFADD__(v9, v7);
  v14 = v9 + v7;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_272B7DC30(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_272B48058(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

unint64_t sub_272B7DC98(uint64_t a1, uint64_t a2)
{
  sub_272B879F0();
  sub_272B87740();
  v4 = sub_272B87A10();

  return sub_272B7DD10(a1, a2, v4);
}

unint64_t sub_272B7DD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_272B87980() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_272B7DDC4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v8 = a1;
  v9 = *v4;
  v10 = sub_272B7DC98(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F8, &qword_272B8A988);
  result = sub_272B87940();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_272B7DC98(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_272B87990();
    __break(1u);
    return result;
  }

  v12 = result;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 4 * v12) = v8;
  }

  else
  {
    sub_272B7DEEC(v12, a2, a3, v8, v16);
  }

  return result;
}

unint64_t sub_272B7DEEC(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t (*sub_272B7DF34(uint64_t (***a1)(), uint64_t *a2, uint64_t a3))()
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[4] = sub_272B7DFF4(v7, *a2, *v3, *(a3 + 16));
  return sub_272B7DFAC;
}

void sub_272B7DFAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t (*sub_272B7DFF4(uint64_t (**a1)(), uint64_t a2, uint64_t a3, uint64_t (*a4)()))()
{
  v8 = *(a4 - 1);
  v9 = v8;
  a1[1] = a4;
  a1[2] = v8;
  v10 = *(v8 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  a1[3] = v11;
  v12 = sub_272B87800();
  sub_272B877E0();
  if (v12)
  {
    (*(v9 + 16))(v11, a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * a2, a4);
    return sub_272B7E154;
  }

  result = sub_272B878D0();
  if (v10 == 8)
  {
    *a1 = result;
    (*(v9 + 16))(v11, a1, a4);
    swift_unknownObjectRelease();
    return sub_272B7E154;
  }

  __break(1u);
  return result;
}

void sub_272B7E154(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_272B7E1FC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_272B7E23C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_55_0()
{

  JUMPOUT(0x2743D4A10);
}

uint64_t OUTLINED_FUNCTION_77_0()
{

  return sub_272B877C0();
}

uint64_t OUTLINED_FUNCTION_78_0()
{

  return sub_272B87840();
}

void OUTLINED_FUNCTION_79_0(Swift::Int a1)
{
  v4 = *(v1 + 24);

  ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(a1, v2, v4);
}

uint64_t WK2_Metadata.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

uint64_t WK2_UUID.hasBytes.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return OUTLINED_FUNCTION_32_0();
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

void WK2_UUID.bytesCount.getter()
{
  OUTLINED_FUNCTION_103();
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v0 + v2) < 5u)
  {
LABEL_8:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v3 = __OFADD__(v2, 4);
  v4 = v2 + 4;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + v4);
  if (!v5)
  {
    goto LABEL_8;
  }

  v3 = __OFADD__(v5, v1);
  v6 = v5 + v1;
  if (!v3)
  {
    if (!__OFADD__(v6, *(v0 + v6)))
    {
      OUTLINED_FUNCTION_112(v0);
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
}

Swift::UInt8 __swiftcall WK2_UUID.bytes(at:)(Swift::Int32 at)
{
  OUTLINED_FUNCTION_103();
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (*(v2 + v4) < 5u)
  {
LABEL_10:
    LOBYTE(v1) = OUTLINED_FUNCTION_32_0();
    return v1;
  }

  v5 = __OFADD__(v4, 4);
  v6 = v4 + 4;
  if (v5)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    goto LABEL_10;
  }

  v5 = __OFADD__(v7, v3);
  v8 = v7 + v3;
  if (v5)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = *(v2 + v8);
  v5 = __OFADD__(v8, v9);
  v10 = v8 + v9;
  if (v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v5 = __OFADD__(v10, 4);
  v11 = v10 + 4;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = __OFADD__(v11, v1);
  v12 = v11 + v1;
  if (v5)
  {
LABEL_16:
    __break(1u);
    return v1;
  }

  LOBYTE(v1) = *(v2 + v12);
  return v1;
}

void *WK2_UUID.bytes.getter()
{
  result = sub_272B5DE20(4, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!result)
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

unint64_t static WK2_UUID.startUUID(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 8)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 8;
    *(v2 + 48) = 0;
    *(v2 + 56) = 8;
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

uint64_t static WK2_UUID.createUUID(_:bytesVectorOffset:)@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = static WK2_UUID.startUUID(_:)(a1);
  static WK2_Metadata.add(attributionUrl:_:)();
  result = FlatBufferBuilder.endTable(at:)(v3);
  *a2 = result;
  return result;
}

void static WK2_UUID.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D54C(4, 0x7365747962, 0xE500000000000000, 1);
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

unint64_t static WK2_Metadata.startMetadata(_:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_25(a1);
  if (*(v2 + 56) < v4 + 88)
  {
    if (*(v2 + 48))
    {
LABEL_11:
      __break(1u);
      return result;
    }

    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x2743D4FD0](v5, -1, -1);
    }

    v6 = swift_slowAlloc();
    *(v2 + 32) = v6;
    *(v2 + 40) = v6 + 88;
    *(v2 + 48) = 0;
    *(v2 + 56) = 88;
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

void sub_272B7E91C()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = OUTLINED_FUNCTION_3(v4, v7);
  if (v5 != v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v10)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v11)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_186(v12);
  }

  OUTLINED_FUNCTION_27();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v2;
      *(v17 + 4) = 4;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 4)
    {
      LOWORD(v19) = 4;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Metadata.add(language:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = OUTLINED_FUNCTION_3(v4, v7);
  if (v5 != v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v10)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v11)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_186(v12);
  }

  OUTLINED_FUNCTION_27();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v2;
      *(v17 + 4) = 8;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 8)
    {
      LOWORD(v19) = 8;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Metadata.add(providerLogo:_:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_120();
  if (!v3)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_58();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_38();
  }

  v7 = *(v0 + 16);
  if ((v7 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (HIDWORD(v7))
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v8 = OUTLINED_FUNCTION_3(v4, v7);
  if (v5 != v6)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v8, v9, *(v0 + 24));
  }

  OUTLINED_FUNCTION_119();
  if (v10)
  {
    goto LABEL_31;
  }

  OUTLINED_FUNCTION_118();
  if (v11)
  {
    OUTLINED_FUNCTION_79();
    if (!v11)
    {
LABEL_28:
      OUTLINED_FUNCTION_218();
      return;
    }
  }

  v12 = OUTLINED_FUNCTION_15();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_186(v12);
  }

  OUTLINED_FUNCTION_27();
  if (v5 != v6)
  {
    OUTLINED_FUNCTION_9();
    v13 = *(v1 + 32);
  }

  OUTLINED_FUNCTION_4(v13);
  if (!v11 & v14)
  {
LABEL_32:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v16 & 1) == 0)
  {
    if (*(v15 + 32))
    {
      OUTLINED_FUNCTION_12_0();
      *v17 = v2;
      *(v17 + 4) = 14;
    }

    OUTLINED_FUNCTION_33(v15, *(v15 + 72), xmmword_272B87CB0);
    if (v19 <= 0xE)
    {
      LOWORD(v19) = 14;
    }

    *(v18 + 64) = v19;
    goto LABEL_28;
  }

  __break(1u);
}

void static WK2_Metadata.add(reportedTime:_:)()
{
  OUTLINED_FUNCTION_219();
  if ((v0 & 0x100000000) != 0)
  {
LABEL_19:
    OUTLINED_FUNCTION_218();
    return;
  }

  v2 = v1;
  v3 = v0;
  if (*(v1 + 64) <= 3)
  {
    OUTLINED_FUNCTION_38();
  }

  v4 = *(v2 + 16);
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v4))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = OUTLINED_FUNCTION_6(v0, v4);
  if (v7 != v8)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v6, *(v2 + 24));
  }

  OUTLINED_FUNCTION_26();
  if (v7 != v8)
  {
    OUTLINED_FUNCTION_9();
  }

  OUTLINED_FUNCTION_43();
  *(v9 - 4) = v3;
  OUTLINED_FUNCTION_55();
  if (!v11 & v10)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v13 & 1) == 0)
  {
    if (*(v12 + 32))
    {
      OUTLINED_FUNCTION_41(v12);
      *(v14 + 4) = 20;
    }

    OUTLINED_FUNCTION_33(v12, *(v12 + 72), xmmword_272B87CB0);
    if (v16 <= 0x14)
    {
      LOWORD(v16) = 20;
    }

    *(v15 + 64) = v16;
    goto LABEL_19;
  }

  __break(1u);
}

void static WK2_Metadata.add(sourceType:_:)()
{
  OUTLINED_FUNCTION_219();
  v1 = v0;
  v3 = *v2;
  if (!*v2)
  {
    OUTLINED_FUNCTION_79();
    if (!v4)
    {
LABEL_19:
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
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (HIDWORD(v5))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v6 = v1[1];
  if (*(v6 + 32) < v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(0, v1[2], v1[3]);
  }

  v1[2] = v5;
  v7 = *(v6 + 32);
  if (v7 <= v5)
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(1, v5, v1[3]);
    v7 = *(v6 + 32);
  }

  *(*(v6 + 24) + v7 + ~v5) = v3;
  v1[2] = v5 + 1;
  if (v5 == 0xFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
  }

  OUTLINED_FUNCTION_77();
  if ((v9 & 1) == 0)
  {
    if (*(v8 + 32))
    {
      OUTLINED_FUNCTION_41(v8);
      *(v10 + 4) = 24;
    }

    OUTLINED_FUNCTION_33(v8, *(v8 + 72), xmmword_272B87CB0);
    if (v12 <= 0x18)
    {
      LOWORD(v12) = 24;
    }

    *(v11 + 64) = v12;
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t static WK2_Metadata.createMetadata(_:attributionUrlOffset:expireTime:languageOffset:latitude:longitude:providerLogoOffset:providerNameOffset:readTime:reportedTime:temporarilyUnavailable:sourceType:)@<X0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, int *a5@<X4>, int *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>, uint64_t a11, char *a12)
{
  v17 = *a2;
  v18 = *a4;
  v19 = *a5;
  v20 = *a6;
  v21 = *a12;
  v22 = static WK2_Metadata.startMetadata(_:)(a1);
  HIDWORD(v70) = v22;
  OUTLINED_FUNCTION_26_1(v22, v23, v24, v25, v26, v27, v28, v29, v65, v70, a8, v82, v17);
  static WK2_Metadata.add(attributionUrl:_:)();
  static WK2_Metadata.add(expireTime:_:)(a3, a1);
  OUTLINED_FUNCTION_26_1(v30, v31, v32, v33, v34, v35, v36, v37, v66, v71, v77, v83, v18);
  static WK2_Metadata.add(language:_:)();
  static WK2_Metadata.add(latitude:_:)(a1, a9);
  static WK2_Metadata.add(longitude:_:)(a1, a10);
  OUTLINED_FUNCTION_26_1(v38, v39, v40, v41, v42, v43, v44, v45, v67, v72, v78, v84, v19);
  static WK2_Metadata.add(providerLogo:_:)();
  v54 = OUTLINED_FUNCTION_26_1(v46, v47, v48, v49, v50, v51, v52, v53, v68, v73, v79, v85, v20);
  static WK2_Metadata.add(providerName:_:)(v54, v55);
  static WK2_Metadata.add(readTime:_:)(a7, a1);
  static WK2_Metadata.add(reportedTime:_:)();
  static WK2_Metadata.add(temporarilyUnavailable:_:)();
  OUTLINED_FUNCTION_26_1(v56, v57, v58, v59, v60, v61, v62, v63, v69, v74, v80, v86, v21);
  static WK2_Metadata.add(sourceType:_:)();
  result = FlatBufferBuilder.endTable(at:)(at);
  *v81 = result;
  return result;
}

void static WK2_Metadata.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    OUTLINED_FUNCTION_41_1(4, 0x7475626972747461, 0xEE006C72556E6F69);
    v4 = __src[2];
    if (__src[2] >= 7)
    {
      v5 = __src[1] + 6;
      v6 = LOBYTE(__src[3]);
      if (LOBYTE(__src[3]) == 1)
      {
        OUTLINED_FUNCTION_42();
        if (v7)
        {
          goto LABEL_69;
        }
      }

      v3 = __src;
      Verifier.rangeInBuffer(position:size:)(v5, 2);
      if (v8)
      {
LABEL_3:
        memcpy(v38, __src, 0x65uLL);
        sub_272B522C4(v38);
        return;
      }

      OUTLINED_FUNCTION_53();
      if (v9)
      {
        OUTLINED_FUNCTION_23();
        if (v10)
        {
          v11 = 0;
        }

        else
        {
          v11 = v6;
        }

        if (v11 == 1)
        {
          goto LABEL_14;
        }

        OUTLINED_FUNCTION_32(v5);
      }
    }

    OUTLINED_FUNCTION_41_1(8, 0x65676175676E616CLL, 0xE800000000000000);
    if (v4 >= 11)
    {
      v5 = __src[1] + 10;
      OUTLINED_FUNCTION_18();
      if (v10)
      {
        OUTLINED_FUNCTION_42();
        if (v14)
        {
          goto LABEL_69;
        }
      }

      OUTLINED_FUNCTION_76();
      OUTLINED_FUNCTION_53();
      if (v15)
      {
        OUTLINED_FUNCTION_23();
        if (v10)
        {
          v16 = 0;
        }

        else
        {
          v16 = v3;
        }

        if (v16 == 1)
        {
          goto LABEL_25;
        }

        v17 = OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_32(v17);
      }

      if (v4 > 0xC)
      {
        v5 = __src[1] + 12;
        OUTLINED_FUNCTION_18();
        if (v10)
        {
          OUTLINED_FUNCTION_42();
          if (v18)
          {
            goto LABEL_69;
          }
        }

        OUTLINED_FUNCTION_76();
        OUTLINED_FUNCTION_53();
        if (v19)
        {
          OUTLINED_FUNCTION_23();
          if (v10)
          {
            v20 = 0;
          }

          else
          {
            v20 = v3;
          }

          if (v20 == 1)
          {
LABEL_25:
            *v38 = MEMORY[0x277D83A90];
            v12 = &unk_2808A3178;
            v13 = &unk_272B87CD0;
            goto LABEL_70;
          }

          v21 = OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_32(v21);
        }
      }
    }

    OUTLINED_FUNCTION_41_1(14, 0x72656469766F7270, 0xEC0000006F676F4CLL);
    OUTLINED_FUNCTION_41_1(16, 0x72656469766F7270, 0xEC000000656D614ELL);
    if (v4 < 19)
    {
      goto LABEL_67;
    }

    v5 = __src[1] + 18;
    OUTLINED_FUNCTION_18();
    if (v10)
    {
      OUTLINED_FUNCTION_42();
      if (v22)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
    if (v23)
    {
      OUTLINED_FUNCTION_23();
      if (v10)
      {
        v24 = 0;
      }

      else
      {
        v24 = v3;
      }

      if (v24 == 1)
      {
        goto LABEL_14;
      }

      v25 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32(v25);
    }

    if (v4 <= 0x14)
    {
      goto LABEL_67;
    }

    v5 = __src[1] + 20;
    OUTLINED_FUNCTION_18();
    if (v10)
    {
      OUTLINED_FUNCTION_42();
      if (v26)
      {
        goto LABEL_69;
      }
    }

    OUTLINED_FUNCTION_76();
    OUTLINED_FUNCTION_53();
    if (!v27)
    {
      goto LABEL_57;
    }

    OUTLINED_FUNCTION_23();
    if (v10)
    {
      v28 = 0;
    }

    else
    {
      v28 = v3;
    }

    if (v28 != 1)
    {
      v29 = OUTLINED_FUNCTION_18_2();
      OUTLINED_FUNCTION_32(v29);
LABEL_57:
      if (v4 > 0x16)
      {
        v5 = __src[1] + 22;
        if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(), (v30 & 1) == 0))
        {
          OUTLINED_FUNCTION_76();
          if (*(*(__src[8] + 24) + v5))
          {
            OUTLINED_FUNCTION_30_1(*(*(__src[8] + 24) + v5), *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], *&v38[64], *&v38[72], *&v38[80], *&v38[88], *&v38[96], __src[0]);
          }

          if (v4 <= 0x18)
          {
            goto LABEL_67;
          }

          v5 = __src[1] + 24;
          if (LOBYTE(__src[3]) != 1 || (OUTLINED_FUNCTION_42(), (v31 & 1) == 0))
          {
            OUTLINED_FUNCTION_76();
            if (*(*(__src[8] + 24) + v5))
            {
              OUTLINED_FUNCTION_30_1(*(*(__src[8] + 24) + v5), *v38, *&v38[8], *&v38[16], *&v38[24], *&v38[32], *&v38[40], *&v38[48], *&v38[56], *&v38[64], *&v38[72], *&v38[80], *&v38[88], *&v38[96], __src[0]);
            }

            goto LABEL_67;
          }
        }

LABEL_69:
        *v38 = MEMORY[0x277D84C58];
        v12 = &qword_2808A3160;
        v13 = &unk_272B87CC0;
        goto LABEL_70;
      }

LABEL_67:
      if (__OFSUB__(__src[7], 1))
      {
        __break(1u);
        return;
      }

      --__src[7];
      goto LABEL_3;
    }

LABEL_14:
    *v38 = MEMORY[0x277D84CC0];
    v12 = &qword_2808A3170;
    v13 = &unk_272B89910;
LABEL_70:
    __swift_instantiateConcreteTypeFromMangledNameV2(v12, v13);
    v32 = sub_272B87730();
    v34 = v33;
    sub_272B5C86C();
    swift_allocError();
    *v35 = v5;
    *(v35 + 8) = v32;
    *(v35 + 16) = v34;
    v36 = *&v38[32];
    v37 = *&v38[16];
    *(v35 + 24) = *v38;
    *(v35 + 40) = v37;
    *(v35 + 56) = v36;
    *(v35 + 64) = 0;
    swift_willThrow();
    goto LABEL_3;
  }
}

unint64_t sub_272B7F450()
{
  result = qword_2808A3410;
  if (!qword_2808A3410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808A3410);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WK2_SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for WK2_SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

void static WK2_UUID.addVectorOf(bytes:_:)()
{

  static WK2_Metadata.add(attributionUrl:_:)();
}

void OUTLINED_FUNCTION_30_1(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  Verifier.rangeInBuffer(position:size:)(a15 + a1, 1);
}

uint64_t static FlatBuffersUtils.removeSizePrefix(bb:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(a1 + 32);
  type metadata accessor for ByteBuffer.Storage();
  swift_allocObject();
  v3 = ByteBuffer.Storage.init(count:alignment:)(v2, 1);
  ByteBuffer.Storage.copy(from:count:)(v1, v2);
  return v3;
}

_BYTE *storeEnumTagSinglePayload for FlatBuffersUtils(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void Dictionary.encode(using:_:)(uint64_t a1@<X0>, uint64_t a5@<X5>, _DWORD *a7@<X8>)
{
  sub_272B876B0();
  swift_getWitnessTable();
  sub_272B877B0();
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
    v30 = a7;
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

    LODWORD(a7) = -1;
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
        v23 = a5;
      }

      v7 = v9 + 4;
      if (v23 < v9 + 4)
      {
        v24 = OUTLINED_FUNCTION_21_0();
        ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v24, v9, v25);
        v23 = a5;
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
    v27 = a5;
  }

  OUTLINED_FUNCTION_5_2(v27);
  if (!(v14 ^ v15 | v13))
  {
LABEL_55:
    __break(1u);
  }

  *v30 = a7;
}

void Verifier.isAligned<A>(position:type:)(uint64_t a1)
{
  if (*v1 == 1)
  {
    OUTLINED_FUNCTION_3_4();
    if ((*(*(v3 - 8) + 80) & (v4 + a1)) != 0)
    {
      *&v16 = v3;
      swift_getMetatypeMetadata();
      v5 = sub_272B87730();
      v6 = sub_272B5C86C();
      v7 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v6);
      *v8 = a1;
      v8[1] = v5;
      OUTLINED_FUNCTION_1_4(v7, v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
    }
  }
}

void Verifier.inBuffer<A>(position:of:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Verifier.isAligned<A>(position:type:)(a1);
  if (!v3)
  {
    Verifier.rangeInBuffer(position:size:)(a1, *(*(a3 - 8) + 64));
  }
}

uint64_t Verifier.init(buffer:options:checkAlignment:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(v5 + 32);
  if (v6 > 3221225471)
  {
    v10 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v10);
    OUTLINED_FUNCTION_0_5(v11, 2);
    *(v12 + 64) = v13;
    return swift_willThrow();
  }

  else
  {
    v7 = *(a2 + 12);
    v8 = *(a2 + 8);
    *a4 = a3 & 1;
    *(a4 + 8) = v6;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    *(a4 + 40) = v5;
    *(a4 + 48) = *(a1 + 1);
    *(a4 + 64) = *a2;
    *(a4 + 72) = v8;
    *(a4 + 76) = v7;
  }
}

uint64_t sub_272B7FD2C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 77))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_272B7FD6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 76) = 0;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 77) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 77) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_272B7FDD4(uint64_t a1, uint64_t a2)
{
  v5 = sub_272B87720();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v24 - v10;
  v12 = *(v2 + 40);
  sub_272B87710();
  v13 = *(v12 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A33F0, &qword_272B8A980);
  v14 = swift_allocObject();
  v15 = _swift_stdlib_malloc_size(v14);
  *(v14 + 16) = 4;
  *(v14 + 24) = 2 * v15 - 64;
  *(v14 + 32) = *(v13 + 4);
  v24[1] = v14;
  (*(v6 + 16))(v9, v11, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3210, &qword_272B89868);
  sub_272B549E8();
  v16 = sub_272B87700();
  v18 = v17;

  (*(v6 + 8))(v11, v5);
  if (!v18)
  {
LABEL_7:
    v22 = sub_272B5C86C();
    OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v22);
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0u;
    *(v23 + 64) = 7;
    return swift_willThrow();
  }

  if (v16 != a1 || v18 != a2)
  {
    v20 = sub_272B87980();

    if (v20)
    {
      return result;
    }

    goto LABEL_7;
  }
}

void sub_272B80000(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (!v2)
  {
    sub_272B5D974(4);
    sub_272B5D990(6);
    sub_272B5D9AC();
    sub_272B5D9C8();
    sub_272B5DA08();
    sub_272B5DA24();
    sub_272B5DA60(16);
    sub_272B5DA7C(18);
    sub_272B5DA98();
    sub_272B5DCD0(22);
    sub_272B5DCEC(24);
    sub_272B5DD08(26);
    sub_272B5DD24();
    if (__OFSUB__(__src[7], 1))
    {
      __break(1u);
    }

    else
    {
      --__src[7];
      memcpy(v3, __src, 0x65uLL);
      sub_272B522C4(v3);
    }
  }
}

uint64_t WK2_WeatherCollection.init(_:o:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

BOOL WK2_WeatherCollection.hasElements.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    if (*(v2 + v5) < 5u)
    {
      return 0;
    }

    v4 = __OFADD__(v5, 4);
    v6 = v5 + 4;
    if (!v4)
    {
      return *(v2 + v6) != 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t WK2_WeatherCollection.elementsCount.getter()
{
  v1 = v0[6];
  v2 = *(*v0 + 24);
  v3 = *(v2 + v1);
  v4 = __OFSUB__(v1, v3);
  v5 = v1 - v3;
  if (v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*(v2 + v5) < 5u)
  {
    return 0;
  }

  v4 = __OFADD__(v5, 4);
  v6 = v5 + 4;
  if (v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = *(v2 + v6);
  if (!v7)
  {
    return 0;
  }

  v4 = __OFADD__(v7, v1);
  v8 = v7 + v1;
  if (!v4)
  {
    v9 = *(v2 + v8);
    v4 = __OFADD__(v8, v9);
    v10 = v8 + v9;
    if (!v4)
    {
      return *(v2 + v10);
    }

    goto LABEL_12;
  }

LABEL_11:
  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t WK2_WeatherCollection.elements(at:)@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  result = *v2;
  v6 = *(v2 + 24);
  v7 = *(*v2 + 24);
  v8 = *(v7 + v6);
  v9 = __OFSUB__(v6, v8);
  v10 = v6 - v8;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = 0uLL;
  if (*(v7 + v10) < 5u)
  {
LABEL_12:
    result = 0;
    v20 = 0;
    goto LABEL_13;
  }

  v9 = __OFADD__(v10, 4);
  v12 = v10 + 4;
  if (v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(v7 + v12);
  if (!v13)
  {
    goto LABEL_12;
  }

  v9 = __OFADD__(v13, v6);
  v14 = v13 + v6;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = *(v7 + v14);
  v9 = __OFADD__(v14, v15);
  v16 = v14 + v15;
  if (v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v9 = __OFADD__(v16, 4);
  v17 = v16 + 4;
  if (v9)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if ((a1 - 0x20000000) >> 30 != 3)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v9 = __OFADD__(v17, 4 * a1);
  v18 = v17 + 4 * a1;
  if (v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v19 = *(v7 + v18);
  v20 = v18 + v19;
  if (!__OFADD__(v18, v19))
  {
    v21 = *(v2 + 8);

    v11 = v21;
LABEL_13:
    *a2 = result;
    *(a2 + 8) = v11;
    *(a2 + 24) = v20;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

unint64_t static WK2_WeatherCollection.startWeatherCollection(_:)(unint64_t result)
{
  v1 = result;
  *(result + 40) = 1;
  v2 = *result;
  if (*(*result + 56) < *(*result + 80) + 8)
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
    *(v2 + 40) = v4 + 8;
    *(v2 + 48) = 0;
    *(v2 + 56) = 8;
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

void static WK2_WeatherCollection.addVectorOf(elements:_:)(int *a1, uint64_t *a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return;
  }

  if (a2[8] < 4)
  {
    a2[8] = 4;
    a2[3] = 4;
  }

  v4 = a2[2];
  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if (HIDWORD(v4))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v5 = -*(a2 + 16) & 3;
  v6 = v5 + v4;
  v7 = a2[1];
  if (*(v7 + 32) < (v5 + v4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v5, v4, a2[3]);
  }

  a2[2] = v6;
  if (HIDWORD(v6))
  {
    goto LABEL_25;
  }

  v8 = v6 - v2 + 4;
  if (v6 - v2 == -4 && *(a2 + 57) != 1)
  {
    return;
  }

  v9 = -v6 & 3;
  v10 = v9 + v6;
  if (*(v7 + 32) < (v9 + v6))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(v9, v6, a2[3]);
  }

  a2[2] = v10;
  v11 = v10 + 4;
  v12 = *(v7 + 32);
  if (v12 < (v10 + 4))
  {
    ByteBuffer.Storage.reallocate(_:writerSize:alignment:)(4, v10, a2[3]);
    v12 = *(v7 + 32);
  }

  *(*(v7 + 24) + v12 - v10 - 4) = v8;
  a2[2] = v11;
  if (v10 > 0xFFFFFFFB)
  {
LABEL_26:
    __break(1u);
  }

  v13 = *a2;
  if (*(*a2 + 48))
  {
    __break(1u);
  }

  else
  {
    v14 = *(v13 + 32);
    if (v14)
    {
      v15 = v14 + *(v13 + 80);
      *v15 = v11;
      *(v15 + 4) = 4;
    }

    *(v13 + 72) = vaddq_s64(*(v13 + 72), xmmword_272B87CB0);
    v16 = *(v13 + 64);
    if (v16 <= 4)
    {
      LOWORD(v16) = 4;
    }

    *(v13 + 64) = v16;
  }
}

uint64_t static WK2_WeatherCollection.endWeatherCollection(_:start:)@<X0>(Swift::UInt32 at@<W1>, _DWORD *a2@<X8>)
{
  result = FlatBufferBuilder.endTable(at:)(at);
  *a2 = result;
  return result;
}

uint64_t static WK2_WeatherCollection.createWeatherCollection(_:elementsVectorOffset:)@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = *a2;
  v6 = static WK2_WeatherCollection.startWeatherCollection(_:)(a1);
  v8 = v5;
  static WK2_WeatherCollection.addVectorOf(elements:_:)(&v8, a1);
  result = FlatBufferBuilder.endTable(at:)(v6);
  *a3 = result;
  return result;
}

void static WK2_WeatherCollection.verify<A>(_:at:of:)(int a1, unint64_t position)
{
  Verifier.visitTable(at:)(position, __src);
  if (v2)
  {
    return;
  }

  if (__src[2] < 5)
  {
    goto LABEL_12;
  }

  v3 = __src[1] + 4;
  v4 = LOBYTE(__src[3]);
  if (LOBYTE(__src[3]) == 1 && ((*(__src[8] + 24) + v3) & 1) != 0)
  {
    *v63 = MEMORY[0x277D84C58];
    v10 = &qword_2808A3160;
    v11 = &unk_272B87CC0;
    goto LABEL_14;
  }

  Verifier.rangeInBuffer(position:size:)(__src[1] + 4, 2);
  if (v5)
  {
    goto LABEL_17;
  }

  v6 = __src[8];
  v7 = *(__src[8] + 24);
  v8 = *(v7 + v3);
  if (!*(v7 + v3))
  {
LABEL_12:
    v12 = sub_272B5C86C();
    v13 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v12);
    *v14 = 4;
    v15 = v65;
    *(v14 + 6) = v66;
    *(v14 + 2) = v15;
    *(v14 + 8) = 0x73746E656D656C65;
    *(v14 + 16) = 0xE800000000000000;
    OUTLINED_FUNCTION_17(v13, v14, v16, v17, v18, v19, v20, v21, v22, *v63, v23, *&v63[16]);
    *(v24 + 64) = 3;
    goto LABEL_16;
  }

  v3 = __src[0] + v8;
  if (((v7 + LOBYTE(__src[0]) + v8) & 3) != 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0;
  }

  if (v9 == 1)
  {
    *v63 = MEMORY[0x277D84CC0];
    v10 = &qword_2808A3170;
    v11 = &unk_272B89910;
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v25 = sub_272B87730();
    v27 = v26;
    v28 = sub_272B5C86C();
    v29 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v28);
    *v30 = v3;
    v30[1] = v25;
    v30[2] = v27;
    goto LABEL_15;
  }

  Verifier.rangeInBuffer(position:size:)(__src[0] + v8, 4);
  if (v40)
  {
    goto LABEL_17;
  }

  v41 = v3 + *(*(v6 + 24) + v3);
  if (v41 < 0)
  {
    v41 = -v41;
  }

  if (v41 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    v42 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v42 = v41;
  }

  v43 = sub_272B6EC90(&__src[3], v42);
  v45 = v43 + v44;
  if (v43 < v43 + v44)
  {
    do
    {
      v46 = v43 + 4;
      if (__OFADD__(v43, 4))
      {
        v47 = 0x7FFFFFFFFFFFFFFFLL;
        if ((__src[3] & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v47 = v43 + 4;
        if (!LOBYTE(__src[3]))
        {
          goto LABEL_32;
        }
      }

      if (((*(__src[8] + 24) + v43) & 3) != 0)
      {
        *v63 = MEMORY[0x277D84CC0];
        v58 = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808A3170, &unk_272B89910);
        v59 = sub_272B87730();
        v61 = v60;
        v62 = sub_272B5C86C();
        v29 = OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v62);
        *v30 = v58;
        v30[1] = v59;
        v30[2] = v61;
LABEL_15:
        OUTLINED_FUNCTION_17(v29, v30, v31, v32, v33, v34, v35, v36, v37, *v63, v38, *&v63[16]);
        *(v39 + 64) = 0;
LABEL_16:
        swift_willThrow();
LABEL_17:
        memcpy(v63, __src, sizeof(v63));
        sub_272B522C4(v63);
        return;
      }

LABEL_32:
      if ((v46 & 0x8000000000000000) != 0)
      {
        v46 = -v46;
      }

      v48 = *(__src[8] + 32);
      if ((v48 & 0x8000000000000000) != 0 || v48 < v46)
      {
        v51 = __src[4];
        v52 = sub_272B5C86C();
        OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v52);
        *v53 = v46;
        *(v53 + 8) = v51;
        v55 = *&v63[16];
        v54 = *&v63[32];
        *(v53 + 16) = *v63;
        *(v53 + 32) = v55;
        *(v53 + 48) = v54;
        v56 = 1;
LABEL_47:
        *(v53 + 64) = v56;
        goto LABEL_16;
      }

      LODWORD(__src[5]) += 4;
      if (LODWORD(__src[11]) < LODWORD(__src[5]))
      {
        v57 = sub_272B5C86C();
        OUTLINED_FUNCTION_177(&type metadata for FlatbuffersErrors, v57);
        *v53 = 6;
        *(v53 + 8) = 0u;
        *(v53 + 24) = 0u;
        *(v53 + 40) = 0u;
        *(v53 + 56) = 0;
        v56 = 7;
        goto LABEL_47;
      }

      v49 = v43 + *(*(__src[8] + 24) + v43);
      if (v49 < 0)
      {
        v49 = -v49;
      }

      if (v49 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v50 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v50 = v49;
      }

      sub_272B80000(&__src[3], v50);
      v43 = v47;
    }

    while (v47 < v45);
  }

  if (!__OFSUB__(__src[7], 1))
  {
    --__src[7];
    goto LABEL_17;
  }

  __break(1u);
}