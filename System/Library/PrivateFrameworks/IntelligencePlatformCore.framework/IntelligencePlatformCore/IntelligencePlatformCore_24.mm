void sub_1C461A71C()
{
  sub_1C44158A0();
  v1 = v0 + 64;
  sub_1C440F35C();
  v9 = v8 & v7;
  if (!v3)
  {
    sub_1C4414154();
LABEL_18:
    *v2 = v5;
    v2[1] = v1;
    v2[2] = ~v6;
    v2[3] = v12;
    v2[4] = v9;
    sub_1C4410198();
    return;
  }

  v10 = v4;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_18;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v11 = v3;
    v26 = v6;
    v27 = v2;
    sub_1C443315C();
    v16 = (v14 - v15) >> 6;
    while (1)
    {
      if (v13 >= v10)
      {
        goto LABEL_21;
      }

      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_22;
      }

      if (!v9)
      {
        while (1)
        {
          v18 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v18 >= v16)
          {
            v9 = 0;
            goto LABEL_16;
          }

          v9 = *(v1 + 8 * v18);
          ++v12;
          if (v9)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v18 = v12;
LABEL_12:
      v19 = v5;
      v20 = (*(v5 + 56) + 48 * (__clz(__rbit64(v9)) | (v18 << 6)));
      v21 = v20[1];
      v9 &= v9 - 1;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v20[4];
      v25 = v20[5];
      *v11 = *v20;
      v11[1] = v21;
      v11[2] = v22;
      v11[3] = v23;
      v11[4] = v24;
      v11[5] = v25;
      if (v17 == v10)
      {
        break;
      }

      v11 += 6;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v13 = v17;
      v12 = v18;
      v5 = v19;
    }

    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v12 = v18;
    v5 = v19;
LABEL_16:
    v6 = v26;
    v2 = v27;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C461A8C4()
{
  sub_1C44BBDA4();
  v2 = v1 + 56;
  v3 = -1 << *(v2 - 24);
  sub_1C440D0F0();
  v8 = v7 & v6;
  if (!v4)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v25);
    return;
  }

  v9 = v5;
  if (!v5)
  {
    v25 = 0;
    goto LABEL_17;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v10 = v4;
    sub_1C443315C();
    v14 = (v13 - v3) >> 6;
    while (v12 < v9)
    {
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_21;
      }

      if (!v8)
      {
        while (1)
        {
          v16 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v8 = *(v2 + 8 * v16);
          ++v11;
          if (v8)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v16 = v11;
LABEL_12:
      sub_1C43FEA58();
      v18 = *(v0 + 48) + 56 * (v17 | (v16 << 6));
      v20 = *(v18 + 16);
      v19 = *(v18 + 32);
      v21 = *v18;
      v28 = *(v18 + 48);
      v27[1] = v20;
      v27[2] = v19;
      v27[0] = v21;
      v22 = *v18;
      v23 = *(v18 + 16);
      v24 = *(v18 + 32);
      *(v10 + 48) = *(v18 + 48);
      *(v10 + 16) = v23;
      *(v10 + 32) = v24;
      *v10 = v22;
      if (v15 == v9)
      {
        sub_1C461B90C(v27, v26);
        v25 = v16;
        goto LABEL_17;
      }

      v10 += 56;
      sub_1C461B90C(v27, v26);
      v12 = v15;
      v11 = v16;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t *sub_1C461AA24(uint64_t *result, uint64_t **a2, uint64_t a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v8 = a4;
  v10 = result;
  if ((a4 & 0xC000000000000001) != 0)
  {
    sub_1C4F02118();
    sub_1C44158BC();
    sub_1C442A36C();
    sub_1C4461BB8(v11, v12, v13);
    sub_1C442A36C();
    sub_1C461B968(v14, v15, v16);
    result = sub_1C4F01B08();
    v8 = v35;
    v17 = v36;
    v18 = v37;
    v19 = v38;
    v20 = v39;
  }

  else
  {
    v19 = 0;
    v21 = -1 << *(a4 + 32);
    v17 = a4 + 56;
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = v23 & *(a4 + 56);
  }

  v24 = a3;
  if (!a2)
  {
    v25 = 0;
LABEL_28:
    *v10 = v8;
    v10[1] = v17;
    v10[2] = v18;
    v10[3] = v19;
    v10[4] = v20;
    return v25;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_28;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a5;
    v32 = a6;
    v25 = 0;
    v30 = v18;
    v26 = (v18 + 64) >> 6;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v8 < 0)
      {
        if (!sub_1C4F02148())
        {
          goto LABEL_26;
        }

        sub_1C4461BB8(0, v31, v32);
        swift_dynamicCast();
        result = v34;
        v24 = a3;
        if (!v34)
        {
          goto LABEL_26;
        }
      }

      else
      {
        if (!v20)
        {
          while (1)
          {
            v28 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v28 >= v26)
            {
              v20 = 0;
              goto LABEL_26;
            }

            v20 = *(v17 + 8 * v28);
            ++v19;
            if (v20)
            {
              v19 = v28;
              goto LABEL_18;
            }
          }

          __break(1u);
          break;
        }

LABEL_18:
        sub_1C43FE644();
        result = *(*(v8 + 48) + ((v19 << 9) | (8 * v29)));
        if (!result)
        {
          goto LABEL_26;
        }
      }

      *a2++ = result;
      ++v25;
      if (v27 == v24)
      {
        v25 = v24;
LABEL_26:
        v18 = v30;
        goto LABEL_28;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C461AD14()
{
  sub_1C43FBD3C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C4403FC0();
  v10 = v9(v8);
  v11 = sub_1C43FCF7C(v10);
  v35 = v12;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBFDC();
  v34 = v13;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C441D15C();
  v36 = v3;
  v15 = v3 + 56;
  sub_1C440F35C();
  v19 = v18 & v17;
  if (!v7)
  {
    sub_1C4414154();
LABEL_18:
    *v0 = v36;
    v0[1] = v15;
    v0[2] = ~v16;
    v0[3] = v31;
    v0[4] = v19;
    sub_1C43FE9F0();
    return;
  }

  if (!v5)
  {
    v31 = 0;
    goto LABEL_18;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v32 = v16;
    v33 = v0;
    sub_1C443315C();
    v24 = (v22 - v23) >> 6;
    while (1)
    {
      if (v21 >= v5)
      {
        goto LABEL_21;
      }

      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_22;
      }

      if (!v19)
      {
        while (1)
        {
          v26 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v26 >= v24)
          {
            sub_1C446BC0C();
            goto LABEL_16;
          }

          v19 = *(v15 + 8 * v26);
          ++v20;
          if (v19)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v26 = v20;
LABEL_12:
      sub_1C43FEA58();
      v28 = *(v35 + 72);
      sub_1C461B8B4(*(v36 + 48) + v28 * (v27 | (v26 << 6)), v34);
      v29 = sub_1C43FD258();
      sub_1C461B9D8(v29, v30);
      sub_1C461B9D8(v1, v7);
      if (v25 == v5)
      {
        break;
      }

      v7 += v28;
      v21 = v25;
      v20 = v26;
    }

    v31 = v26;
LABEL_16:
    v16 = v32;
    v0 = v33;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_1C461AEE0()
{
  sub_1C43FBD3C();
  sub_1C44BBDA4();
  v1 = v0 + 64;
  v2 = -1 << *(v1 - 32);
  sub_1C440D0F0();
  v7 = v6 & v5;
  if (!v3)
  {
    sub_1C4414154();
LABEL_17:
    sub_1C441EA9C(v17);
    sub_1C43FE9F0();
    return;
  }

  v8 = v4;
  if (!v4)
  {
    v17 = 0;
    goto LABEL_17;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    v9 = v3;
    sub_1C443315C();
    v13 = (v12 - v2) >> 6;
    while (v11 < v8)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        goto LABEL_21;
      }

      if (!v7)
      {
        while (1)
        {
          v15 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v15 >= v13)
          {
            sub_1C446BC0C();
            goto LABEL_17;
          }

          v7 = *(v1 + 8 * v15);
          ++v10;
          if (v7)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v15 = v10;
LABEL_12:
      sub_1C4415870();
      if (v16)
      {
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v17 = v15;
        goto LABEL_17;
      }

      v9 += 16;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v11 = v14;
      v10 = v15;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C461B168(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = type metadata accessor for DecayingHistogramState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v23[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v23[4] = &off_1F43E2510;
  v23[0] = a3;
  sub_1C461B8B4(a1, v16);
  v17 = sub_1C4F00F28();
  (*(v11 + 16))(v13, a2, v10);
  sub_1C442E860(v23, v22);
  sub_1C442E860(a4, v21);
  v18 = (*(a5 + 200))(v16, v17, v13, v22, v21, sub_1C461C054, 0);
  sub_1C440962C(a4);
  (*(v11 + 8))(a2, v10);
  sub_1C461B820();
  sub_1C440962C(v23);
  return v18;
}

uint64_t sub_1C461B3A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v14 = type metadata accessor for DecayingHistogramState(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v22[3] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v22[4] = &off_1F43E2510;
  v22[0] = a3;
  sub_1C461B8B4(a1, v16);
  (*(v11 + 16))(v13, a2, v10);
  sub_1C442E860(v22, v21);
  sub_1C442E860(a4, v20);
  v17 = (*(a5 + 168))(v16, v13, v21, v20, sub_1C461C054, 0);
  sub_1C440962C(a4);
  (*(v11 + 8))(a2, v10);
  sub_1C461B820();
  sub_1C440962C(v22);
  return v17;
}

void sub_1C461B5AC()
{
  sub_1C43FBD3C();
  v1 = v0;
  v33 = v2;
  v34 = v3;
  v32 = v4;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v36[3] = v11;
  v36[4] = &off_1F43E2510;
  v36[0] = v6;
  v1(0);
  sub_1C43FD23C();
  v12 = swift_allocObject();
  sub_1C4418280(v36, v11);
  sub_1C43FCE64();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v19 = (&v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v14 + 16);
  v20(v19, v18);
  v21 = *v19;
  v35[3] = v11;
  v35[4] = &off_1F43E2510;
  v35[0] = v21;
  v22 = sub_1C4418280(v35, v11);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v20(v19, v23);
  v24 = *v19;
  v25 = (v12 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_behaviorKeySource);
  v25[3] = v11;
  v25[4] = &off_1F43E2510;
  *v25 = v24;
  sub_1C44191A0();
  sub_1C461B9D8(v10, v12 + v26);
  v27 = OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_trackedBehaviorType;
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v28 + 32))(v12 + v27, v8);
  sub_1C443FA18(v32, v12 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_eventSource);
  v29 = (v12 + OBJC_IVAR____TtC24IntelligencePlatformCore21BehaviorHistogramBase_timeSource);
  v30 = v34;
  *v29 = v33;
  v29[1] = v30;
  sub_1C440962C(v35);
  sub_1C440962C(v36);
  sub_1C4495188();
  sub_1C43FE9F0();
}

unint64_t sub_1C461B7AC()
{
  result = qword_1EC0B9E08;
  if (!qword_1EC0B9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E08);
  }

  return result;
}

uint64_t sub_1C461B820()
{
  v1 = sub_1C4403FC0();
  v2(v1);
  sub_1C43FBCE0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C461B8B4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

uint64_t sub_1C461B968(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4461BB8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C461B9D8(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C43FBE94();
  v4(v3);
  sub_1C43FBCE0();
  v5 = sub_1C43FBC98();
  v6(v5);
  return a2;
}

void sub_1C461BA58(uint64_t a1)
{
  type metadata accessor for DecayingHistogramState(319);
  if (v1 <= 0x3F)
  {
    sub_1C461BADC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C461BADC()
{
  if (!qword_1EDDDBD78)
  {
    v0 = sub_1C4F00FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDDBD78);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for BehaviorHistogramKeyProvidingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C461BBFC()
{
  result = qword_1EC0B9E28;
  if (!qword_1EC0B9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E28);
  }

  return result;
}

unint64_t sub_1C461BC54()
{
  result = qword_1EC0B9E30;
  if (!qword_1EC0B9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E30);
  }

  return result;
}

unint64_t sub_1C461BCA8()
{
  result = qword_1EDDF1968;
  if (!qword_1EDDF1968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1968);
  }

  return result;
}

uint64_t sub_1C461BCFC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C44263B0();
    sub_1C4572308(&qword_1EC0B9E40, &qword_1C4F12F90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_1C461BD68(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C461BE48()
{
  result = qword_1EC0B9E50;
  if (!qword_1EC0B9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9E50);
  }

  return result;
}

unint64_t sub_1C461BEA0()
{
  result = qword_1EDDF1958;
  if (!qword_1EDDF1958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1958);
  }

  return result;
}

unint64_t sub_1C461BEF8()
{
  result = qword_1EDDF1960;
  if (!qword_1EDDF1960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF1960);
  }

  return result;
}

uint64_t sub_1C461C1C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7235938 && a2 == 0xE300000000000000;
  if (v3 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xE900000000000079)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C461C290(char a1)
{
  if (a1)
  {
    return 0x636E657571657266;
  }

  else
  {
    return 7235938;
  }
}

uint64_t sub_1C461C2F4()
{
  sub_1C4F02AF8();
  sub_1C455B550(v2, *v0);
  return sub_1C4F02B68();
}

uint64_t sub_1C461C34C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C461C1C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C461C3A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C4593680();
  *a1 = result;
  return result;
}

uint64_t sub_1C461C3CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C461C420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t HistogramBinFrequencyPair<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[2] = a4;
  v13[0] = a2;
  type metadata accessor for HistogramBinFrequencyPair.CodingKeys(255, *(a2 + 16), a3, a4);
  sub_1C442C4FC();
  swift_getWitnessTable();
  v5 = sub_1C4F02808();
  sub_1C43FCDF8();
  v7 = v6;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - v9;
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BF8();
  v15 = 0;
  v11 = v13[3];
  sub_1C4F027E8();
  if (!v11)
  {
    v14 = 1;
    sub_1C4F027B8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HistogramBinFrequencyPair<A>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v31 = a4;
  v33 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v36 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for HistogramBinFrequencyPair.CodingKeys(255, v7, v8, v9);
  sub_1C442C4FC();
  swift_getWitnessTable();
  v34 = sub_1C4F02708();
  sub_1C43FCDF8();
  v32 = v10;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for HistogramBinFrequencyPair(0, a2, v12, v13);
  sub_1C43FCDF8();
  v30 = v15;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - v17;
  sub_1C4409678(a1, a1[3]);
  v19 = v37;
  sub_1C4F02BC8();
  if (v19)
  {
    return sub_1C440962C(a1);
  }

  v37 = v14;
  v20 = v33;
  v39 = 0;
  sub_1C4F026C8();
  v21 = *(v20 + 32);
  v35 = v18;
  v21(v18, v36, a2);
  v38 = 1;
  v22 = sub_1C4F02698();
  v23 = sub_1C4416DCC();
  v24(v23);
  v25 = v37;
  v26 = v35;
  *&v35[*(v37 + 28)] = v22;
  v27 = v30;
  (*(v30 + 16))(v31, v26, v25);
  sub_1C440962C(a1);
  return (*(v27 + 8))(v26, v25);
}

BOOL static HistogramBinFrequencyPair<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1C4F010B8() & 1) == 0)
  {
    return 0;
  }

  v9 = type metadata accessor for HistogramBinFrequencyPair(0, a3, v7, v8);
  return *(a1 + *(v9 + 28)) == *(a2 + *(v9 + 28));
}

uint64_t sub_1C461CA14(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_1C461CA8C(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 < a2)
  {
    v6 = ((*(*(v4 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v7 = a2 - v5;
    v8 = v6 & 0xFFFFFFF8;
    if ((v6 & 0xFFFFFFF8) != 0)
    {
      v9 = 2;
    }

    else
    {
      v9 = v7 + 1;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    switch(v11)
    {
      case 1:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v12 = *(result + v6);
        if (v12)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v12 = *(result + v6);
        if (!v12)
        {
          goto LABEL_22;
        }

LABEL_18:
        v13 = v12 - 1;
        if (v8)
        {
          v13 = 0;
          LODWORD(v8) = *result;
        }

        return (v5 + (v8 | v13) + 1);
      default:
LABEL_22:
        if (v5)
        {
          return sub_1C44157D4(result, v5, v4);
        }

        return 0;
    }
  }

  return sub_1C44157D4(result, v5, v4);
}

void sub_1C461CB90(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  v8 = ((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v12 = 0;
  }

  else
  {
    v9 = a3 - v7;
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }
  }

  if (a2 <= v7)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:

          sub_1C440BAA8(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = a2 - v7;
    }

    else
    {
      v13 = 1;
    }

    if (((*(*(v6 - 8) + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v14 = ~v7 + a2;
      bzero(a1, v8);
      *a1 = v14;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v13;
        break;
      case 2:
        *&a1[v8] = v13;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v8] = v13;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C461CD30(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1C461CD70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1C461CDDC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void *sub_1C461CEFC(char a1, void *a2)
{
  v4 = v2;
  switch(a1)
  {
    case 1:
      v6 = type metadata accessor for DayOfWeekBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_13;
      }

      return v4;
    case 2:
    case 3:
    case 4:
      v9 = sub_1C44191C4();
      sub_1C461D580(v9, v10, v11, v12);
      if (!v3)
      {
        goto LABEL_22;
      }

      return v4;
    case 5:
      v20 = sub_1C44191C4();
      sub_1C461D724(v20);
      if (!v3)
      {
        goto LABEL_26;
      }

      return v4;
    case 6:
    case 11:
    case 12:
      sub_1C44191C4();
      sub_1C461DBA0();
      if (!v3)
      {
        goto LABEL_26;
      }

      return v4;
    case 7:
      v13 = sub_1C44191C4();
      sub_1C461D808(v13);
      goto LABEL_24;
    case 8:
      v34 = sub_1C44191C4();
      sub_1C461D900(v34);
      goto LABEL_24;
    case 9:
      v7 = sub_1C44191C4();
      sub_1C461D9F8(v7);
LABEL_24:
      if (v3)
      {
        return v4;
      }

LABEL_26:
      v35 = sub_1C4402120();
      sub_1C461E144(v35, v36, v37, v38);
      goto LABEL_27;
    case 10:
      sub_1C44191C4();
      sub_1C461DAF0();
      if (v3)
      {
        return v4;
      }

LABEL_22:
      v28 = sub_1C4402120();
      sub_1C461DED8(v28, v29, v30, v31, v32, v33);
      goto LABEL_27;
    case 13:
      v8 = type metadata accessor for MotionStateBehaviorHistogram(0);
      v21 = v2[3];
      v22 = v2[4];
      sub_1C4409678(v2, v21);
      v23 = (*(v22 + 8))(v8, a2, v8, &off_1F43E3748, v21, v22);
      if (v3)
      {
        return v4;
      }

      sub_1C461E924(a2, v23, &unk_1F43D2BA0);

LABEL_18:
      v24 = sub_1C4402120();
      sub_1C461E3C4(v24, v25, v8, v26, v27);
      goto LABEL_27;
    case 14:
      v6 = type metadata accessor for PartOfDayBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_13;
      }

      return v4;
    case 15:
      v8 = type metadata accessor for PartOfWeekBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (!v3)
      {
        goto LABEL_18;
      }

      return v4;
    default:
      v6 = type metadata accessor for TimeOfDayBehaviorHistogram(0);
      sub_1C44191C4();
      sub_1C461DAF0();
      if (v3)
      {
        return v4;
      }

LABEL_13:
      v14 = sub_1C4402120();
      sub_1C461DC74(v14, v15, v6, v16, v17, v18);
LABEL_27:
      v4 = v19;

      return v4;
  }
}

void (*sub_1C461D580(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(uint64_t *, __int128 *, uint64_t, uint64_t)))(uint64_t *, __int128 *, uint64_t, uint64_t)
{
  v8 = v4;
  v10 = a2(0);
  v11 = v8[3];
  v12 = v8[4];
  sub_1C4409678(v8, v11);
  v13 = (*(v12 + 8))(v10, a1, v10, a3, v11, v12);
  if (!v5)
  {
    v14 = v13;
    sub_1C456902C(&qword_1EC0B8F08, &unk_1C4F0E9B0);
    sub_1C4EF9CD8();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1C4F0D130;
    sub_1C4EF9CC8();
    a4 = sub_1C461F690(a1, v14, v15, a4);

    swift_setDeallocating();
    sub_1C49E1584();
  }

  return a4;
}

void *sub_1C461D724(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for PreviousBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3808, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C4616A94();
    v11 = sub_1C461F25C(a1, v13, v14);
  }

  return v11;
}

void *sub_1C461D808(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for SpecificGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3548, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C460632C);
  }

  return v11;
}

void *sub_1C461D900(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CoarseGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3448, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C46061D8);
  }

  return v11;
}

void *sub_1C461D9F8(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for LargeGeoHashBehaviorHistogram(0);
  v6 = v3[3];
  v7 = v3[4];
  v8 = sub_1C4409678(v3, v6);
  v9 = v5;
  v10 = v5;
  v11 = v8;
  v12 = (*(v7 + 8))(v9, a1, v10, &off_1F43E3348, v6, v7);
  if (!v2)
  {
    v13 = v12;
    v14 = sub_1C47F78F4();
    v11 = sub_1C461EF80(a1, v13, v14, sub_1C46061D8);
  }

  return v11;
}

uint64_t sub_1C461DAF0()
{
  v4 = sub_1C440A6D0();
  v5(v4);
  sub_1C4409678(v2, v2[3]);
  v6 = sub_1C441F530();
  v7(v6);
  if (!v1)
  {
    v3();
    v8 = sub_1C44118B8();
    v0 = sub_1C461F690(v8, v9, v10, v11);
  }

  return v0;
}

void *sub_1C461DBA0()
{
  v4 = sub_1C440A6D0();
  v5(v4);
  sub_1C4409678(v2, v2[3]);
  v6 = sub_1C441F530();
  v7(v6);
  if (!v1)
  {
    v3();
    v8 = sub_1C44118B8();
    v0 = sub_1C461EC68(v8, v9, v10, v11);
  }

  return v0;
}

void sub_1C461DC74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5, uint64_t a6)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = a1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8(0, v6, 0);
    v8 = v46;
    v10 = sub_1C4703354();
    v11 = v7 + 64;
    v37 = v9;
    v38 = v6;
    v39 = v7 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v12 = v10 >> 6;
      if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v9)
      {
        goto LABEL_23;
      }

      v44 = v9;
      v13 = sub_1C442FBE8(*(v7 + 48) + 48 * v10);
      v47 = v15;
      v48[0] = v14;
      *(v48 + 9) = v13;
      v16 = v7;
      v18 = *(v17 + 8 * v10);
      sub_1C45A2358(&v47, v45);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C46226AC(&v47, v18, a3, a4, a5, a6);
      v21 = v20;
      v23 = v22;
      sub_1C45EC75C(&v47);

      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1C459D4A8(v24 > 1, v25 + 1, 1);
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      v26 = (v8 + 24 * v25);
      v26[4] = v19;
      v26[5] = v21;
      v26[6] = v23;
      v27 = 1 << *(v16 + 32);
      if (v10 >= v27)
      {
        goto LABEL_24;
      }

      v7 = v16;
      v11 = v39;
      if ((*(v39 + 8 * v12) & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v7 + 36) != v44)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v28)
      {
        sub_1C441C80C();
        v31 = v12 + 1;
        while (v31 < v30)
        {
          sub_1C4402CDC();
          if (v23)
          {
            sub_1C4434E8C();
            sub_1C440951C(v10, v32, v33);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C4434E8C();
        sub_1C440951C(v10, v34, v35);
      }

      else
      {
        sub_1C442AB14();
        v27 = v29 | v10 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v10 = v27;
      v9 = v37;
      if (v36 == v38)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4();
  }
}

void sub_1C461DED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t a5, void (*a6)(void))
{
  v6 = *(a1 + 16);
  if (v6)
  {
    v8 = a1;
    v47 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8(0, v6, 0);
    v9 = v47;
    v11 = a3(v8);
    v12 = v8 + 64;
    v39 = v10;
    v40 = v6;
    v41 = v8 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v8 + 32))
    {
      v13 = v11 >> 6;
      if ((*(v12 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v8 + 36) != v10)
      {
        goto LABEL_23;
      }

      v45 = v10;
      v14 = sub_1C442FBE8(*(v8 + 48) + 48 * v11);
      v48 = v16;
      v49[0] = v15;
      *(v49 + 9) = v14;
      v18 = *(v17 + 8 * v11);
      sub_1C45A2358(&v48, v46);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = sub_1C4622318(&v48, v18, a4, a5, a6);
      v21 = v20;
      v23 = v22;
      sub_1C45EC75C(&v48);

      v47 = v9;
      v24 = v8;
      v26 = *(v9 + 16);
      v25 = *(v9 + 24);
      v27 = v26 + 1;
      if (v26 >= v25 >> 1)
      {
        sub_1C459D4A8(v25 > 1, v26 + 1, 1);
        v9 = v47;
      }

      *(v9 + 16) = v27;
      v28 = (v9 + 24 * v26);
      v28[4] = v19;
      v28[5] = v21;
      v28[6] = v23;
      v29 = 1 << *(v24 + 32);
      if (v11 >= v29)
      {
        goto LABEL_24;
      }

      v8 = v24;
      v12 = v41;
      if ((*(v41 + 8 * v13) & (1 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(v8 + 36) != v45)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v30)
      {
        sub_1C441C80C();
        v33 = v13 + 1;
        while (v33 < v32)
        {
          sub_1C4402CDC();
          if (v27)
          {
            sub_1C4434E8C();
            sub_1C440951C(v11, v34, v35);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C4434E8C();
        sub_1C440951C(v11, v36, v37);
      }

      else
      {
        sub_1C442AB14();
        v29 = v31 | v11 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v11 = v29;
      v10 = v39;
      if (v38 == v40)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4();
  }
}

void sub_1C461E144(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(__int128 *, uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8(0, v4, 0);
    v7 = v48;
    v9 = a3(v6);
    v10 = v6 + 64;
    v42 = v8;
    v43 = v4;
    v41 = v6 + 72;
    v44 = v6 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v6 + 32))
    {
      v11 = v9 >> 6;
      if ((*(v10 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v6 + 36) != v8)
      {
        goto LABEL_23;
      }

      v46 = v8;
      v12 = sub_1C442FBE8(*(v6 + 48) + 48 * v9);
      v49 = v14;
      v50[0] = v13;
      *(v50 + 9) = v12;
      v16 = *(v15 + 8 * v9);
      sub_1C45A2358(&v49, v47);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v17 = a4(&v49, v16);
      v19 = v18;
      v21 = v20;
      sub_1C45EC75C(&v49);

      v48 = v7;
      v22 = v6;
      v24 = *(v7 + 16);
      v23 = *(v7 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C459D4A8(v23 > 1, v24 + 1, 1);
        v7 = v48;
      }

      *(v7 + 16) = v24 + 1;
      v25 = (v7 + 24 * v24);
      v25[4] = v17;
      v25[5] = v19;
      v25[6] = v21;
      v26 = 1 << *(v22 + 32);
      if (v9 >= v26)
      {
        goto LABEL_24;
      }

      v10 = v44;
      if ((*(v44 + 8 * v11) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      v6 = v22;
      if (*(v22 + 36) != v46)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v27)
      {
        sub_1C441C80C();
        v31 = v11 << 6;
        v32 = v11 + 1;
        v33 = (v41 + 8 * v11);
        v29 = v43;
        while (v32 < v30)
        {
          v35 = *v33++;
          v34 = v35;
          v31 += 64;
          ++v32;
          if (v35)
          {
            sub_1C443316C();
            sub_1C440951C(v9, v36, v37);
            v26 = __clz(__rbit64(v34)) + v31;
            goto LABEL_19;
          }
        }

        sub_1C443316C();
        sub_1C440951C(v9, v38, v39);
      }

      else
      {
        sub_1C442AB14();
        v26 = v28 | v9 & 0x7FFFFFFFFFFFFFC0;
        v29 = v43;
      }

LABEL_19:
      sub_1C442DD8C();
      v9 = v26;
      v8 = v42;
      if (v40 == v29)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4();
  }
}

void sub_1C461E3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(__int128 *, uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v7 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C459D4A8(0, v5, 0);
    v8 = v45;
    v10 = a4(v7);
    v11 = v7 + 64;
    v38 = v9;
    v39 = v5;
    v40 = v7 + 64;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(v7 + 32))
    {
      v12 = v10 >> 6;
      v13 = 1 << v10;
      if ((*(v11 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      if (*(v7 + 36) != v9)
      {
        goto LABEL_23;
      }

      v43 = v9;
      v14 = sub_1C442FBE8(*(v7 + 48) + 48 * v10);
      v46 = v16;
      v47[0] = v15;
      *(v47 + 9) = v14;
      v18 = *(v17 + 8 * v10);
      sub_1C45A2358(&v46, v44);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v19 = a5(&v46, v18, a3);
      v21 = v20;
      v23 = v22;
      sub_1C45EC75C(&v46);

      v45 = v8;
      v24 = v7;
      v26 = *(v8 + 16);
      v25 = *(v8 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1C459D4A8(v25 > 1, v26 + 1, 1);
        v8 = v45;
      }

      *(v8 + 16) = v26 + 1;
      v27 = (v8 + 24 * v26);
      v27[4] = v19;
      v27[5] = v21;
      v27[6] = v23;
      v28 = 1 << *(v24 + 32);
      if (v10 >= v28)
      {
        goto LABEL_24;
      }

      v7 = v24;
      v11 = v40;
      if ((*(v40 + 8 * v12) & v13) == 0)
      {
        goto LABEL_25;
      }

      if (*(v7 + 36) != v43)
      {
        goto LABEL_26;
      }

      sub_1C43FFE48();
      if (v29)
      {
        sub_1C441C80C();
        v32 = v12 + 1;
        while (v32 < v31)
        {
          sub_1C4402CDC();
          if (v13)
          {
            sub_1C443316C();
            sub_1C440951C(v10, v33, v34);
            sub_1C43FD264();
            goto LABEL_19;
          }
        }

        sub_1C443316C();
        sub_1C440951C(v10, v35, v36);
      }

      else
      {
        sub_1C442AB14();
        v28 = v30 | v10 & 0x7FFFFFFFFFFFFFC0;
      }

LABEL_19:
      sub_1C442DD8C();
      v10 = v28;
      v9 = v38;
      if (v37 == v39)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_20:
    sub_1C4BA01F4();
  }
}

uint64_t sub_1C461E674(uint64_t a1, void *a2, id *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v5 = *a3;
  v6 = sub_1C4EF9BF8();
  v7 = [v5 stringFromDate_];

  v8 = sub_1C4F01138();
  return v8;
}

uint64_t sub_1C461E714(uint64_t a1)
{
  v2 = sub_1C4EF9F88();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = objc_autoreleasePoolPush();
  sub_1C4EF9F58();
  LOWORD(a1) = sub_1C4615E88(a1);
  (*(v4 + 8))(v7, v2);
  if (a1)
  {
    v9 = 0x7961646B656577;
  }

  else
  {
    v9 = 0x646E656B656577;
  }

  objc_autoreleasePoolPop(v8);
  return v9;
}

uint64_t sub_1C461E824(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1 - 1;
  result = 0x6E776F6E6B6E55;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x616E6F6974617453;
    case 2:
    case 4:
    case 5:
    case 6:
      return 0xD000000000000016;
    case 3:
      v4 = 1802264919;
      return v4 | 0x676E6900000000;
    case 7:
      v4 = 1852732754;
      return v4 | 0x676E6900000000;
    default:
      switch(v1)
      {
        case 16:
          v4 = 1818458435;
          return v4 | 0x676E6900000000;
        case 32:
          return 0x69746F6D6F747541;
        case 34:
          return 0xD000000000000014;
        default:
          return 0xD000000000000016;
      }
  }
}

void *sub_1C461E924(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C4409678((v3 + 40), *(v3 + 64));
  v7 = sub_1C45EA9C0(a1);
  if (v4)
  {
    return a1;
  }

  v8 = 0;
  v9 = *(v7 + 16);
  v51 = v7 + 32;
  v44 = a3 + 32;
  a1 = MEMORY[0x1E69E7CC8];
  v43 = a3;
  v50 = v7;
  for (i = v9; ; v9 = i)
  {
    if (v8 == v9)
    {

      return a1;
    }

    if (v8 >= *(v7 + 16))
    {
      break;
    }

    v52 = v8;
    v10 = v51 + 48 * v8;
    v11 = *v10;
    v12 = *(v10 + 16);
    *&v56[9] = *(v10 + 25);
    v55 = v11;
    *v56 = v12;
    v13 = *(a3 + 16);
    if (v13)
    {
      v49 = a1;
      v14 = *(v10 + 40);
      v15 = *(v10 + 32);
      v46 = *(v10 + 16);
      v47 = *v10;
      sub_1C45A2358(&v55, v53);
      v54 = MEMORY[0x1E69E7CC0];
      sub_1C459D528(0, v13, 0);
      v20 = v54;
      v57[1] = v46;
      v57[0] = v47;
      v58 = v15;
      v21 = v44;
      v59 = v14;
      do
      {
        v23 = *v21++;
        v22 = v23;
        LOBYTE(v53[0]) = 1;
        sub_1C4605BC4(v57, v23, 0, 0x100000000, v16, v17, v18, v19, v42, v43, v44, i, v46, *(&v46 + 1), v47, *(&v47 + 1), v48, v49, v50, v51, v52, v53[0], v53[1], v53[2], v53[3], v53[4]);
        v25 = v24;
        v54 = v20;
        v27 = *(v20 + 16);
        v26 = *(v20 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1C459D528((v26 > 1), v27 + 1, 1);
          v20 = v54;
        }

        *(v20 + 16) = v27 + 1;
        v28 = v20 + 16 * v27;
        *(v28 + 32) = v22;
        *(v28 + 40) = v25;
        --v13;
      }

      while (v13);
      a3 = v43;
      a1 = v49;
    }

    else
    {
      sub_1C45A2358(&v55, v53);
      v20 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v53[0] = a1;
    v29 = sub_1C457AF68(&v55);
    if (__OFADD__(a1[2], (v30 & 1) == 0))
    {
      goto LABEL_24;
    }

    v31 = v29;
    v32 = v30;
    sub_1C456902C(&qword_1EC0B9F88, &unk_1C4F13350);
    if (sub_1C4F02458())
    {
      v33 = sub_1C457AF68(&v55);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_26;
      }

      v31 = v33;
    }

    a1 = v53[0];
    if (v32)
    {
      *(*(v53[0] + 56) + 8 * v31) = v20;

      sub_1C45EC75C(&v55);
    }

    else
    {
      *(v53[0] + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v35 = (a1[6] + 48 * v31);
      v36 = v55;
      v37 = *v56;
      *(v35 + 25) = *&v56[9];
      *v35 = v36;
      v35[1] = v37;
      *(a1[7] + 8 * v31) = v20;
      v38 = a1[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_25;
      }

      a1[2] = v40;
    }

    v8 = v52 + 1;
    v7 = v50;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C461EC68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = sub_1C44040FC(a1);
  if (v4)
  {
    return v5;
  }

  v10 = 0;
  v11 = *(v9 + 16);
  v58 = v9 + 32;
  v52 = a3 + 40;
  v5 = MEMORY[0x1E69E7CC8];
  v53 = v11;
  v54 = a3;
  v61 = a2;
  v57 = v9;
  while (1)
  {
    if (v10 == v11)
    {

      return v5;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v59 = v10;
    v60 = v5;
    *&v21 = sub_1C44058C8(v58 + 48 * v10).n128_u64[0];
    v22 = *(a3 + 16);
    if (v22)
    {
      v23 = *(v20 + 40);
      v24 = *(v20 + 32);
      sub_1C4404C68(v12, v13, v14, v15, v16, v17, v18, v19, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v21);
      v25 = sub_1C44086FC();
      sub_1C459D4E8(v25, v26, v27);
      v28 = v68;
      v72 = v55;
      v71 = v56;
      v73 = v24;
      v29 = v52;
      v74 = v23;
      do
      {
        v31 = *(v29 - 1);
        v30 = *v29;
        swift_bridgeObjectRetain_n();
        v32 = sub_1C440F378();
        a4(v32, v31, v30);
        v34 = v33;
        v35 = a4;

        v68 = v28;
        v37 = *(v28 + 16);
        v36 = *(v28 + 24);
        v38 = v28;
        if (v37 >= v36 >> 1)
        {
          sub_1C459D4E8(v36 > 1, v37 + 1, 1);
          v38 = v68;
        }

        *(v38 + 16) = v37 + 1;
        v39 = (v38 + 24 * v37);
        v39[4] = v31;
        v39[5] = v30;
        v39[6] = v34;
        v29 += 2;
        --v22;
        a4 = v35;
        v28 = v38;
      }

      while (v22);
      v40 = v38;
    }

    else
    {
      sub_1C45A2358(&v69, &v62);
      v40 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v62 = v60;
    sub_1C457AF68(&v69);
    sub_1C441EAB4();
    if (v43)
    {
      goto LABEL_24;
    }

    v44 = v41;
    v45 = v42;
    sub_1C456902C(&qword_1EC0B9F80, &qword_1C4F13348);
    if (sub_1C4F02458())
    {
      v46 = sub_1C457AF68(&v69);
      if ((v45 & 1) != (v47 & 1))
      {
        goto LABEL_26;
      }

      v44 = v46;
    }

    v5 = v62;
    if (v45)
    {
      *(v62[7] + 8 * v44) = v40;

      sub_1C45EC75C(&v69);
    }

    else
    {
      v62[(v44 >> 6) + 8] |= 1 << v44;
      sub_1C43FC040((v5[6] + 48 * v44), v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
      *(v5[7] + 8 * v44) = v40;
      v48 = v5[2];
      v43 = __OFADD__(v48, 1);
      v49 = v48 + 1;
      if (v43)
      {
        goto LABEL_25;
      }

      v5[2] = v49;
    }

    v10 = v59 + 1;
    v9 = v57;
    v11 = v53;
    a3 = v54;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C461EF80(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void))
{
  v9 = sub_1C44040FC(a1);
  if (v5)
  {
    return v4;
  }

  v61 = a2;
  v10 = a4;
  v11 = 0;
  v12 = *(v9 + 16);
  v60 = v9 + 32;
  v52 = a3 + 32;
  v4 = MEMORY[0x1E69E7CC8];
  v13 = 48;
  v53 = v12;
  v54 = a3;
  for (i = v9; ; v9 = i)
  {
    if (v11 == v12)
    {

      return v4;
    }

    if (v11 >= *(v9 + 16))
    {
      break;
    }

    *&v23 = sub_1C44058C8(v60 + v11 * v13).n128_u64[0];
    v24 = *(a3 + 16);
    if (v24)
    {
      v51 = v11;
      v25 = *(v22 + 40);
      v26 = *(v22 + 32);
      sub_1C4404C68(v14, v15, v16, v17, v18, v19, v20, v21, v51, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v4, i, v60, v61, v62, v63, v64, v65, v66, v67, v68, v23);
      v27 = sub_1C44086FC();
      sub_1C459D588(v27, v28, v29);
      v30 = v68;
      v72 = v55;
      v71 = v56;
      v73 = v26;
      v31 = v52;
      v74 = v25;
      do
      {
        v33 = *v31++;
        v32 = v33;
        v34 = sub_1C440F378();
        v10(v34, v33, 0);
        v36 = v35;
        v68 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1C459D588((v37 > 1), v38 + 1, 1);
          v30 = v68;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v32;
        *(v39 + 40) = v36;
        --v24;
      }

      while (v24);
      v11 = v50;
      v4 = v58;
    }

    else
    {
      sub_1C45A2358(&v69, &v62);
      v30 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v62 = v4;
    sub_1C457AF68(&v69);
    sub_1C441EAB4();
    if (v42)
    {
      goto LABEL_24;
    }

    v43 = v40;
    v44 = v41;
    sub_1C456902C(&qword_1EC0B9F78, &qword_1C4F13340);
    if (sub_1C4F02458())
    {
      v45 = sub_1C457AF68(&v69);
      if ((v44 & 1) != (v46 & 1))
      {
        goto LABEL_26;
      }

      v43 = v45;
    }

    v4 = v62;
    if (v44)
    {
      *(v62[7] + 8 * v43) = v30;

      sub_1C45EC75C(&v69);
      v13 = 48;
    }

    else
    {
      v62[(v43 >> 6) + 8] |= 1 << v43;
      sub_1C43FC040((v4[6] + 48 * v43), v50, v52, v53, v54, v55, *(&v55 + 1), v56, *(&v56 + 1), v57, v58, i, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70);
      *(v4[7] + 8 * v43) = v30;
      v47 = v4[2];
      v42 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v4[2] = v48;
    }

    ++v11;
    v12 = v53;
    a3 = v54;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

void *sub_1C461F25C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *sub_1C4409678((v3 + 40), *(v3 + 64));
  v8 = sub_1C45EA9C0(a1);
  if (v4)
  {
    return v7;
  }

  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 16);
  v49 = v8 + 32;
  v46 = (a3 + 72);
  v7 = MEMORY[0x1E69E7CC8];
  v47 = v8;
  v48 = v11;
  v45 = a3;
  while (1)
  {
    if (v10 == v11)
    {

      return v7;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    v50 = v10;
    v12 = v49 + 48 * v10;
    v13 = *v12;
    v14 = *(v12 + 16);
    *&v58[9] = *(v12 + 25);
    v57 = v13;
    *v58 = v14;
    v15 = *(a3 + 16);
    if (v15)
    {
      v16 = *(v12 + 40);
      v17 = *(v12 + 32);
      v51 = *(v12 + 16);
      v52 = *v12;
      sub_1C45A2358(&v57, v55);
      v56 = MEMORY[0x1E69E7CC0];
      sub_1C459D5A8(0, v15, 0);
      v54 = v56;
      v59[1] = v51;
      v59[0] = v52;
      v60 = v17;
      v18 = v46;
      v61 = v16;
      do
      {
        v53 = v15;
        v20 = *(v18 - 5);
        v19 = *(v18 - 4);
        v21 = *(v18 - 3);
        v22 = *(v18 - 2);
        v23 = *(v18 - 1);
        v24 = *v18;
        v62[0] = v20;
        v62[1] = v19;
        v62[2] = v21;
        v62[3] = v22;
        v62[4] = v23;
        v63 = v24;
        sub_1C45D7F78(v20, v19, v21, v22, v23, v24);
        sub_1C45D7F78(v20, v19, v21, v22, v23, v24);
        LOBYTE(v55[0]) = 1;
        sub_1C4605810(v59, v62, 0x100000000);
        v26 = v25;
        sub_1C45A23B4(v20, v19, v21, v22, v23, v24);
        v27 = v54;
        v56 = v54;
        v29 = *(v54 + 16);
        v28 = *(v54 + 24);
        v30 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_1C459D5A8((v28 > 1), v29 + 1, 1);
          v30 = v29 + 1;
          v27 = v56;
        }

        v18 += 48;
        *(v27 + 16) = v30;
        v54 = v27;
        v31 = v27 + 56 * v29;
        *(v31 + 32) = v20;
        *(v31 + 40) = v19;
        *(v31 + 48) = v21;
        *(v31 + 56) = v22;
        *(v31 + 64) = v23;
        *(v31 + 72) = v24;
        *(v31 + 80) = v26;
        v15 = v53 - 1;
      }

      while (v53 != 1);
      v9 = v47;
      a3 = v45;
    }

    else
    {
      sub_1C45A2358(&v57, v55);
      v54 = MEMORY[0x1E69E7CC0];
    }

    swift_isUniquelyReferenced_nonNull_native();
    v55[0] = v7;
    v32 = sub_1C457AF68(&v57);
    if (__OFADD__(v7[2], (v33 & 1) == 0))
    {
      goto LABEL_24;
    }

    v34 = v32;
    v35 = v33;
    sub_1C456902C(&qword_1EC0B9F70, &qword_1C4F13338);
    if (sub_1C4F02458())
    {
      v36 = sub_1C457AF68(&v57);
      if ((v35 & 1) != (v37 & 1))
      {
        goto LABEL_26;
      }

      v34 = v36;
    }

    v7 = v55[0];
    if (v35)
    {
      *(*(v55[0] + 56) + 8 * v34) = v54;

      sub_1C45EC75C(&v57);
    }

    else
    {
      *(v55[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v38 = (v7[6] + 48 * v34);
      v39 = v57;
      v40 = *v58;
      *(v38 + 25) = *&v58[9];
      *v38 = v39;
      v38[1] = v40;
      *(v7[7] + 8 * v34) = v54;
      v41 = v7[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_25;
      }

      v7[2] = v43;
    }

    v10 = v50 + 1;
    v11 = v48;
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C461F690(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, __int128 *, uint64_t, uint64_t))
{
  sub_1C4409678((v4 + 40), *(v4 + 64));
  result = sub_1C45EA9C0(a1);
  if (!v5)
  {
    v11 = result;
    v12 = 0;
    v18 = MEMORY[0x1E69E7CC8];
    v13 = *(result + 16);
    for (i = 32; ; i += 48)
    {
      if (v13 == v12)
      {

        return v18;
      }

      if (v12 >= *(v11 + 16))
      {
        break;
      }

      v15 = *(v11 + i);
      v16 = *(v11 + i + 16);
      *&v20[9] = *(v11 + i + 25);
      v19 = v15;
      *v20 = v16;
      sub_1C45A2358(&v19, v17);
      a4(&v18, &v19, a3, a2);
      ++v12;
      result = sub_1C45EC75C(&v19);
    }

    __break(1u);
  }

  return result;
}

void sub_1C461F7BC(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v8 = *a2;
  v56 = a2[1];
  v57 = v8;
  v9 = *(a2 + 4);
  v44 = a2;
  LODWORD(v50) = *(a2 + 40);
  v10 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v42 - v11;
  v12 = sub_1C4EF9D38();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93D0, &qword_1C4F0EF18);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v48 = &v42 - v20;
    v42 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    v43 = v15;
    sub_1C459D548();
    v22 = v43;
    v58 = v60;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v51 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v62 = v56;
    v61 = v57;
    v63 = v9;
    v64 = v50;
    v47 = (v23 + 16);
    v50 = (v23 - 8);
    v46 = *(v23 + 56);
    v49 = v12;
    v45 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v51;
      v51(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v54;
      v27(v54, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v59 = 1;
      sub_1C4605F5C();
      if (v5)
      {
        break;
      }

      v30 = v29;
      *&v56 = v21;
      *&v57 = 0;
      sub_1C4420C3C(v28, &qword_1EC0B9DC8, &unk_1C4F124A0);
      v31 = v48;
      (*v47)(v48, v26, v12);
      *(v31 + *(v53 + 28)) = v30;
      (*v50)(v18, v12);
      v32 = v58;
      v60 = v58;
      v33 = *(v58 + 16);
      v22 = v26;
      if (v33 >= *(v58 + 24) >> 1)
      {
        sub_1C459D548();
        v22 = v43;
        v32 = v60;
      }

      *(v32 + 16) = v33 + 1;
      v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v58 = v32;
      sub_1C4622960(v31, v32 + v34 + *(v52 + 72) * v33, &qword_1EC0B93D0);
      v25 += v46;
      v21 = v56 - 1;
      v5 = v57;
      v12 = v49;
      if (v56 == 1)
      {
        a1 = v42;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &qword_1EC0B9DC8, &unk_1C4F124A0);
    v35 = *v50;
    (*v50)(v26, v12);
    v35(v18, v12);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *a1;
    sub_1C4660D4C(v58, v44, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1));
    *a1 = v60;
  }
}

void sub_1C461FC90(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v8 = *a2;
  v56 = a2[1];
  v57 = v8;
  v9 = *(a2 + 4);
  v44 = a2;
  LODWORD(v50) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v42 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v48 = &v42 - v20;
    v42 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    v43 = v15;
    sub_1C459D5C8();
    v22 = v43;
    v58 = v60;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v51 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v62 = v56;
    v61 = v57;
    v63 = v9;
    v64 = v50;
    v47 = (v23 + 16);
    v50 = (v23 - 8);
    v46 = *(v23 + 56);
    v49 = v12;
    v45 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v51;
      v51(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v54;
      v27(v54, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v59 = 1;
      sub_1C4605974();
      if (v5)
      {
        break;
      }

      v30 = v29;
      *&v56 = v21;
      *&v57 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = v48;
      (*v47)(v48, v26, v12);
      *(v31 + *(v53 + 28)) = v30;
      (*v50)(v18, v12);
      v32 = v58;
      v60 = v58;
      v33 = *(v58 + 16);
      v22 = v26;
      if (v33 >= *(v58 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v43;
        v32 = v60;
      }

      *(v32 + 16) = v33 + 1;
      v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v58 = v32;
      sub_1C4622960(v31, v32 + v34 + *(v52 + 72) * v33, &qword_1EC0B93A8);
      v25 += v46;
      v21 = v56 - 1;
      v5 = v57;
      v12 = v49;
      if (v56 == 1)
      {
        a1 = v42;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v35 = *v50;
    (*v50)(v26, v12);
    v35(v18, v12);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *a1;
    sub_1C4660D74(v58, v44, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1));
    *a1 = v60;
  }
}

void sub_1C4620164(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v8 = *a2;
  v56 = a2[1];
  v57 = v8;
  v9 = *(a2 + 4);
  v44 = a2;
  LODWORD(v50) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v42 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v48 = &v42 - v20;
    v42 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    v43 = v15;
    sub_1C459D5C8();
    v22 = v43;
    v58 = v60;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v51 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v62 = v56;
    v61 = v57;
    v63 = v9;
    v64 = v50;
    v47 = (v23 + 16);
    v50 = (v23 - 8);
    v46 = *(v23 + 56);
    v49 = v12;
    v45 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v51;
      v51(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v54;
      v27(v54, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v59 = 1;
      sub_1C46059A4();
      if (v5)
      {
        break;
      }

      v30 = v29;
      *&v56 = v21;
      *&v57 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = v48;
      (*v47)(v48, v26, v12);
      *(v31 + *(v53 + 28)) = v30;
      (*v50)(v18, v12);
      v32 = v58;
      v60 = v58;
      v33 = *(v58 + 16);
      v22 = v26;
      if (v33 >= *(v58 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v43;
        v32 = v60;
      }

      *(v32 + 16) = v33 + 1;
      v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v58 = v32;
      sub_1C4622960(v31, v32 + v34 + *(v52 + 72) * v33, &qword_1EC0B93A8);
      v25 += v46;
      v21 = v56 - 1;
      v5 = v57;
      v12 = v49;
      if (v56 == 1)
      {
        a1 = v42;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v35 = *v50;
    (*v50)(v26, v12);
    v35(v18, v12);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *a1;
    sub_1C4660D74(v58, v44, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1));
    *a1 = v60;
  }
}

void sub_1C4620638(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a4;
  v8 = *a2;
  v56 = a2[1];
  v57 = v8;
  v9 = *(a2 + 4);
  v44 = a2;
  LODWORD(v50) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v54 = &v42 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v48 = &v42 - v20;
    v42 = a1;
    v60 = MEMORY[0x1E69E7CC0];
    v43 = v15;
    sub_1C459D5C8();
    v22 = v43;
    v58 = v60;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v51 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v62 = v56;
    v61 = v57;
    v63 = v9;
    v64 = v50;
    v47 = (v23 + 16);
    v50 = (v23 - 8);
    v46 = *(v23 + 56);
    v49 = v12;
    v45 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v51;
      v51(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v54;
      v27(v54, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v59 = 1;
      sub_1C4605B94();
      if (v5)
      {
        break;
      }

      v30 = v29;
      *&v56 = v21;
      *&v57 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v31 = v48;
      (*v47)(v48, v26, v12);
      *(v31 + *(v53 + 28)) = v30;
      (*v50)(v18, v12);
      v32 = v58;
      v60 = v58;
      v33 = *(v58 + 16);
      v22 = v26;
      if (v33 >= *(v58 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v43;
        v32 = v60;
      }

      *(v32 + 16) = v33 + 1;
      v34 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v58 = v32;
      sub_1C4622960(v31, v32 + v34 + *(v52 + 72) * v33, &qword_1EC0B93A8);
      v25 += v46;
      v21 = v56 - 1;
      v5 = v57;
      v12 = v49;
      if (v56 == 1)
      {
        a1 = v42;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v35 = *v50;
    (*v50)(v26, v12);
    v35(v18, v12);
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *a1;
    sub_1C4660D74(v58, v44, isUniquelyReferenced_nonNull_native, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, *(&v56 + 1), v57, *(&v57 + 1));
    *a1 = v60;
  }
}

void sub_1C4620B0C(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v8 = *a2;
  v61 = a2[1];
  v62 = v8;
  v9 = *(a2 + 4);
  v49 = a2;
  LODWORD(v55) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v47 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v53 = &v47 - v20;
    v47 = a1;
    v65 = MEMORY[0x1E69E7CC0];
    v48 = v15;
    sub_1C459D5C8();
    v22 = v48;
    v63 = v65;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v56 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v66[1] = v61;
    v66[0] = v62;
    v67 = v9;
    v68 = v55;
    v52 = (v23 + 16);
    v55 = (v23 - 8);
    v51 = *(v23 + 56);
    v54 = v12;
    v50 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v56;
      v56(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v59;
      v27(v59, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v64 = 1;
      sub_1C4606414(v66, v28, 0x100000000, v29, v30, v31, v32, v33);
      if (v5)
      {
        break;
      }

      v35 = v34;
      *&v61 = v21;
      *&v62 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = v53;
      (*v52)(v53, v26, v12);
      *(v36 + *(v58 + 28)) = v35;
      (*v55)(v18, v12);
      v37 = v63;
      v65 = v63;
      v38 = *(v63 + 16);
      v22 = v26;
      if (v38 >= *(v63 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v48;
        v37 = v65;
      }

      *(v37 + 16) = v38 + 1;
      v39 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v63 = v37;
      sub_1C4622960(v36, v37 + v39 + *(v57 + 72) * v38, &qword_1EC0B93A8);
      v25 += v51;
      v21 = v61 - 1;
      v5 = v62;
      v12 = v54;
      if (v61 == 1)
      {
        a1 = v47;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v40 = *v55;
    (*v55)(v26, v12);
    v40(v18, v12);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    sub_1C4660D74(v63, v49, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1));
    *a1 = v65;
  }
}

void sub_1C4620FE0(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v8 = *a2;
  v61 = a2[1];
  v62 = v8;
  v9 = *(a2 + 4);
  v49 = a2;
  LODWORD(v55) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v47 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v53 = &v47 - v20;
    v47 = a1;
    v65 = MEMORY[0x1E69E7CC0];
    v48 = v15;
    sub_1C459D5C8();
    v22 = v48;
    v63 = v65;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v56 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v66[1] = v61;
    v66[0] = v62;
    v67 = v9;
    v68 = v55;
    v52 = (v23 + 16);
    v55 = (v23 - 8);
    v51 = *(v23 + 56);
    v54 = v12;
    v50 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v56;
      v56(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v59;
      v27(v59, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v64 = 1;
      sub_1C4606458(v66, v28, 0x100000000, v29, v30, v31, v32, v33);
      if (v5)
      {
        break;
      }

      v35 = v34;
      *&v61 = v21;
      *&v62 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = v53;
      (*v52)(v53, v26, v12);
      *(v36 + *(v58 + 28)) = v35;
      (*v55)(v18, v12);
      v37 = v63;
      v65 = v63;
      v38 = *(v63 + 16);
      v22 = v26;
      if (v38 >= *(v63 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v48;
        v37 = v65;
      }

      *(v37 + 16) = v38 + 1;
      v39 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v63 = v37;
      sub_1C4622960(v36, v37 + v39 + *(v57 + 72) * v38, &qword_1EC0B93A8);
      v25 += v51;
      v21 = v61 - 1;
      v5 = v62;
      v12 = v54;
      if (v61 == 1)
      {
        a1 = v47;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v40 = *v55;
    (*v55)(v26, v12);
    v40(v18, v12);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    sub_1C4660D74(v63, v49, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1));
    *a1 = v65;
  }
}

void sub_1C46214B4(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v8 = *a2;
  v61 = a2[1];
  v62 = v8;
  v9 = *(a2 + 4);
  v49 = a2;
  LODWORD(v55) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v47 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v53 = &v47 - v20;
    v47 = a1;
    v65 = MEMORY[0x1E69E7CC0];
    v48 = v15;
    sub_1C459D5C8();
    v22 = v48;
    v63 = v65;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v56 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v66[1] = v61;
    v66[0] = v62;
    v67 = v9;
    v68 = v55;
    v52 = (v23 + 16);
    v55 = (v23 - 8);
    v51 = *(v23 + 56);
    v54 = v12;
    v50 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v56;
      v56(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v59;
      v27(v59, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v64 = 1;
      sub_1C4606690(v66, v28, 0x100000000, v29, v30, v31, v32, v33);
      if (v5)
      {
        break;
      }

      v35 = v34;
      *&v61 = v21;
      *&v62 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = v53;
      (*v52)(v53, v26, v12);
      *(v36 + *(v58 + 28)) = v35;
      (*v55)(v18, v12);
      v37 = v63;
      v65 = v63;
      v38 = *(v63 + 16);
      v22 = v26;
      if (v38 >= *(v63 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v48;
        v37 = v65;
      }

      *(v37 + 16) = v38 + 1;
      v39 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v63 = v37;
      sub_1C4622960(v36, v37 + v39 + *(v57 + 72) * v38, &qword_1EC0B93A8);
      v25 += v51;
      v21 = v61 - 1;
      v5 = v62;
      v12 = v54;
      if (v61 == 1)
      {
        a1 = v47;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v40 = *v55;
    (*v55)(v26, v12);
    v40(v18, v12);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    sub_1C4660D74(v63, v49, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1));
    *a1 = v65;
  }
}

void sub_1C4621988(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v60 = a4;
  v8 = *a2;
  v61 = a2[1];
  v62 = v8;
  v9 = *(a2 + 4);
  v49 = a2;
  LODWORD(v55) = *(a2 + 40);
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v59 = &v47 - v11;
  v12 = sub_1C4EF9CD8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - v17;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v57 = *(v19 - 8);
  v58 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = *(a3 + 16);
  if (v21)
  {
    v53 = &v47 - v20;
    v47 = a1;
    v65 = MEMORY[0x1E69E7CC0];
    v48 = v15;
    sub_1C459D5C8();
    v22 = v48;
    v63 = v65;
    v24 = *(v13 + 16);
    v23 = v13 + 16;
    v56 = v24;
    v25 = (a3 + ((*(v23 + 64) + 32) & ~*(v23 + 64)));
    v66[1] = v61;
    v66[0] = v62;
    v67 = v9;
    v68 = v55;
    v52 = (v23 + 16);
    v55 = (v23 - 8);
    v51 = *(v23 + 56);
    v54 = v12;
    v50 = v23;
    while (1)
    {
      v26 = v22;
      v27 = v56;
      v56(v18, v25, v12);
      v27(v26, v18, v12);
      v28 = v59;
      v27(v59, v18, v12);
      sub_1C440BAA8(v28, 0, 1, v12);
      v64 = 1;
      sub_1C46066D4(v66, v28, 0x100000000, v29, v30, v31, v32, v33);
      if (v5)
      {
        break;
      }

      v35 = v34;
      *&v61 = v21;
      *&v62 = 0;
      sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = v53;
      (*v52)(v53, v26, v12);
      *(v36 + *(v58 + 28)) = v35;
      (*v55)(v18, v12);
      v37 = v63;
      v65 = v63;
      v38 = *(v63 + 16);
      v22 = v26;
      if (v38 >= *(v63 + 24) >> 1)
      {
        sub_1C459D5C8();
        v22 = v48;
        v37 = v65;
      }

      *(v37 + 16) = v38 + 1;
      v39 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v63 = v37;
      sub_1C4622960(v36, v37 + v39 + *(v57 + 72) * v38, &qword_1EC0B93A8);
      v25 += v51;
      v21 = v61 - 1;
      v5 = v62;
      v12 = v54;
      if (v61 == 1)
      {
        a1 = v47;
        goto LABEL_10;
      }
    }

    sub_1C4420C3C(v28, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v40 = *v55;
    (*v55)(v26, v12);
    v40(v18, v12);
  }

  else
  {
    v63 = MEMORY[0x1E69E7CC0];
LABEL_10:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = *a1;
    sub_1C4660D74(v63, v49, isUniquelyReferenced_nonNull_native, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, *(&v61 + 1), v62, *(&v62 + 1));
    *a1 = v65;
  }
}

uint64_t sub_1C4621E5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8(0, v2, 0);
    v4 = v15;
    v5 = (a2 + 40);
    do
    {
      v6 = *v5;
      v14 = *(v5 - 1);
      v7 = sub_1C461E824(&v14);
      v9 = v8;
      v15 = v4;
      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C459D4E8(v10 > 1, v11 + 1, 1);
        v4 = v15;
      }

      *(v4 + 16) = v11 + 1;
      v12 = (v4 + 24 * v11);
      v12[4] = v7;
      v12[5] = v9;
      v12[6] = v6;
      v5 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4621F60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8(0, v2, 0);
    v4 = (a2 + 48);
    do
    {
      v5 = *v4;
      sub_1C4F02438();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C459D4E8(v6 > 1, v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = (v10 + 24 * v7);
      v8[4] = 0;
      v8[5] = 0xE000000000000000;
      v8[6] = v5;
      v4 += 3;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4622098(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8(0, v2, 0);
    v4 = (a2 + 40);
    do
    {
      v5 = *v4;
      sub_1C4F02438();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C459D4E8(v6 > 1, v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = (v10 + 24 * v7);
      v8[4] = 0;
      v8[5] = 0xE000000000000000;
      v8[6] = v5;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46221D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8(0, v2, 0);
    v4 = (a2 + 80);
    do
    {
      v5 = *v4;
      sub_1C4F02438();
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1C459D4E8(v6 > 1, v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = (v10 + 24 * v7);
      v8[4] = 0;
      v8[5] = 0xE000000000000000;
      v8[6] = v5;
      v4 += 7;
      --v2;
    }

    while (v2);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C4622318(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  v9 = sub_1C4412D38(a1, a2, a3);
  v23 = v10;
  v22 = sub_1C456902C(v9, v10);
  sub_1C43FCDF8();
  v12 = v11;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  sub_1C440D110();
  if (v6)
  {
    sub_1C43FEC6C();
    sub_1C4425968();
    v21 = *(v12 + 72);
    v14 = a5;
    do
    {
      sub_1C4622908(v7, v5, a3);
      v14(0);
      sub_1C4F02438();
      v15 = *(v5 + *(v22 + 28));
      sub_1C4420C3C(v5, a3, v23);
      v17 = *(v24 + 16);
      v16 = *(v24 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1C459D4E8(v16 > 1, v17 + 1, 1);
        v14 = a5;
      }

      *(v24 + 16) = v17 + 1;
      v18 = (v24 + 24 * v17);
      v18[4] = 0;
      v18[5] = 0xE000000000000000;
      v18[6] = v15;
      v7 += v21;
      --v6;
    }

    while (v6);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46224D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v19 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  v5 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v7 = v17 - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    v17[1] = a1;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C459D4E8(0, v8, 0);
    v9 = v21;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v18 = *(v5 + 72);
    do
    {
      sub_1C4622908(v10, v7, &qword_1EC0B93A8);
      v11 = sub_1C461E714(v7);
      v12 = *&v7[*(v19 + 28)];
      sub_1C4420C3C(v7, &qword_1EC0B93A8, &qword_1C4F0EEF0);
      v21 = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1C459D4E8(v13 > 1, v14 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v14 + 1;
      v15 = (v9 + 24 * v14);
      v15[4] = v11;
      v15[5] = 0xE700000000000000;
      v15[6] = v12;
      v10 += v18;
      --v8;
    }

    while (v8);
  }

  return sub_1C45D2400();
}

uint64_t sub_1C46226AC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, id *a5, uint64_t a6)
{
  v23 = sub_1C456902C(&qword_1EC0B93A8, &qword_1C4F0EEF0);
  sub_1C43FCDF8();
  v10 = v9;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440D110();
  if (v7)
  {
    sub_1C43FEC6C();
    sub_1C4425968();
    v22 = *(v10 + 72);
    v12 = a6;
    do
    {
      sub_1C4622908(v8, v6, &qword_1EC0B93A8);
      v13 = sub_1C461E674(v6, a4, a5, v12);
      v15 = v14;
      v16 = *(v6 + *(v23 + 28));
      sub_1C4420C3C(v6, &qword_1EC0B93A8, &qword_1C4F0EEF0);
      v18 = *(v26 + 16);
      v17 = *(v26 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1C459D4E8(v17 > 1, v18 + 1, 1);
        v12 = a6;
      }

      *(v26 + 16) = v18 + 1;
      v19 = (v26 + 24 * v18);
      v19[4] = v13;
      v19[5] = v15;
      v19[6] = v16;
      v8 += v22;
      --v7;
    }

    while (v7);
  }

  return sub_1C45D2400();
}

void sub_1C46228A8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1C496C3A0(a2, a3, v7);
  *a4 = v7;
}

uint64_t sub_1C4622908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4412D38(a1, a2, a3);
  sub_1C456902C(v5, v6);
  sub_1C43FBCE0();
  (*(v7 + 16))(v3, v4);
  return v3;
}

uint64_t sub_1C4622960(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4412D38(a1, a2, a3);
  sub_1C456902C(v5, v6);
  sub_1C43FBCE0();
  (*(v7 + 32))(v3, v4);
  return v3;
}

uint64_t sub_1C46229B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
  v8 = sub_1C4EF9CD8();
  v9 = *(*(v8 - 8) + 32);
  v9(v3 + v7, a1, v8);
  v9(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_endDate, a2, v8);
  *(v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState) = v6;
  return v3;
}

uint64_t sub_1C4622A70()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_startDate;
  v2 = sub_1C4EF9CD8();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_endDate, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionStateEvent(uint64_t a1)
{
  result = qword_1EDDE6CB8;
  if (!qword_1EDDE6CB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C4622B90(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_1C4622C30(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v96 = a4;
  v7 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v91 = v8;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBD08();
  v90 = (v10 - v11);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v80 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v80 - v16;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v17);
  v97 = &v80 - v18;
  v19 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  sub_1C43FBD08();
  v81 = v20 - v21;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v22);
  v85 = &v80 - v23;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v80 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v80 - v28;
  v30 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v32 = v31;
  MEMORY[0x1EEE9AC00](v33);
  sub_1C43FBD08();
  v84 = (v34 - v35);
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v80 - v37;
  sub_1C4467FE0(a1, v29);
  sub_1C440A6F0(v29);
  if (v39)
  {
    sub_1C4EF9B28();
    sub_1C440A6F0(v29);
    if (!v39)
    {
      sub_1C44686E4(v29);
    }
  }

  else
  {
    v32[4](v38, v29, v30);
  }

  sub_1C4467FE0(a2, v26);
  sub_1C440A6F0(v26);
  if (v39)
  {
    sub_1C4EF9C88();
    sub_1C440A6F0(v26);
    if (!v39)
    {
      sub_1C44686E4(v26);
    }
  }

  else
  {
    v32[4](v84, v26, v30);
  }

  v100 = MEMORY[0x1E69E7CC0];
  v83 = v30;
  v80 = v32;
  v82 = v38;
  if (a3)
  {
    v40 = sub_1C4EFDA88();
  }

  else
  {
    v40 = sub_1C4EFDA58();
  }

  v41 = 0;
  v88 = *(v40 + 16);
  v95 = v91 + 16;
  v42 = v96 + 7;
  v43 = (v91 + 8);
  v92 = MEMORY[0x1E69E7CC0];
  v89 = (v91 + 32);
  v87 = v40;
  while (v41 != v88)
  {
    if (v41 >= *(v40 + 16))
    {
      __break(1u);
      goto LABEL_41;
    }

    sub_1C440A710();
    v93 = v44;
    v47 = *(v46 + 72);
    v32 = *(v46 + 16);
    (v32)(v97, v45 + v44 + v47 * v41, v7);
    v94 = (v41 + 1);
    if (v96[2])
    {
      v48 = v96;
      sub_1C4403D50(&qword_1EDDEFFD0, MEMORY[0x1E69A9488]);
      v49 = sub_1C4F00FD8();
      v50 = ~(-1 << *(v48 + 32));
      while (1)
      {
        v51 = v49 & v50;
        if (((*(v42 + (((v49 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v49 & v50)) & 1) == 0)
        {
          break;
        }

        (v32)(v14, v96[6] + v51 * v47, v7);
        sub_1C4403D50(&unk_1EDDEFFC0, MEMORY[0x1E69A9490]);
        v52 = sub_1C4F010B8();
        v53 = *v43;
        (*v43)(v14, v7);
        v49 = v51 + 1;
        if (v52)
        {
          v53(v97, v7);
          goto LABEL_25;
        }
      }
    }

    v32 = *v89;
    (*v89)(v90, v97, v7);
    v54 = v92;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = v54;
    aBlock[0] = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C459D1E0();
      v56 = aBlock[0];
    }

    v57 = *(v56 + 16);
    if (v57 >= *(v56 + 24) >> 1)
    {
      sub_1C459D1E0();
      v56 = aBlock[0];
    }

    *(v56 + 16) = v57 + 1;
    v92 = v56;
    (v32)(v56 + v93 + v57 * v47, v90, v7);
LABEL_25:
    v40 = v87;
    v41 = v94;
  }

  v58 = *(v92 + 16);
  if (v58)
  {
    sub_1C440A710();
    v61 = v59 + v60;
    v96 = *(v62 + 72);
    v94 = *(v62 + 16);
    LODWORD(v93) = *MEMORY[0x1E69A9450];
    v97 = (v62 + 104);
    LODWORD(v91) = *MEMORY[0x1E69A9418];
    v89 = (v80 + 2);
    v90 = MEMORY[0x1E69E7CC0];
    v63 = v86;
    do
    {
      v94(v63, v61, v7);
      v64 = *v97;
      (*v97)(v14, v93, v7);
      sub_1C4403D50(&qword_1EDDEFFB8, MEMORY[0x1E69A9498]);
      sub_1C44118D8();
      sub_1C4431FBC();
      v65 = *v43;
      (*v43)(v14, v7);
      if (aBlock[0] == v99 || (v64(v14, v91, v7), sub_1C44118D8(), sub_1C4431FBC(), v65(v14, v7), aBlock[0] == v99))
      {
        v65(v63, v7);
      }

      else
      {
        v90 = v65;
        v66 = *v89;
        v67 = v83;
        (*v89)(v85, v82, v83);
        sub_1C4412D48();
        v68 = v81;
        (v66)(v81, v84, v67);
        sub_1C4412D48();
        v69 = v85;
        v70 = sub_1C4626020(v85, v68, v63);
        sub_1C44686E4(v68);
        sub_1C44686E4(v69);
        v71 = v70;
        MEMORY[0x1C6940330]();
        if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C4F016D8();
        }

        sub_1C4F01748();

        v90(v63, v7);
        v90 = v100;
      }

      v61 += v96;
      --v58;
      v63 = v86;
    }

    while (v58);

    v32 = v83;
    v72 = v90;
  }

  else
  {

    v72 = MEMORY[0x1E69E7CC0];
    v32 = v83;
  }

  v73 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v74 = sub_1C4F01658();
  v41 = [v73 initWithSequence_];

  if (!(v72 >> 62))
  {
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4F02988();
    goto LABEL_39;
  }

LABEL_41:
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  sub_1C4F024B8();

LABEL_39:
  sub_1C456902C(&unk_1EC0B9FF0, &unk_1C4F133B0);
  v75 = sub_1C4F01658();

  aBlock[4] = sub_1C4623614;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C46237BC;
  aBlock[3] = &unk_1F43E41B0;
  v76 = _Block_copy(aBlock);
  v77 = [v41 orderedMergeWithOthers:v75 comparator:v76];

  _Block_release(v76);

  v78 = v80[1];
  (v78)(v84, v32);
  (v78)(v82, v32);
  return v77;
}

uint64_t sub_1C4623614(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = (v8 - v9);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1C442B870(a1, v22);
  type metadata accessor for BehaviorEvent();
  sub_1C43FFE58();
  v14 = v21;
  sub_1C442B870(a2, v22);
  sub_1C43FFE58();
  v15 = v21;
  v16 = *(v6 + 16);
  v16(v13, *(v14 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v16(v10, *(v15 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v4);
  v17 = sub_1C4EF9C98();

  v18 = *(v6 + 8);
  v18(v10, v4);
  v18(v13, v4);
  return v17;
}

uint64_t sub_1C46237BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;
  v8[3] = swift_getObjectType();
  v8[0] = a3;

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v6 = v5(v9, v8);

  sub_1C440962C(v8);
  sub_1C440962C(v9);
  return v6;
}

uint64_t sub_1C4623884(uint64_t a1)
{
  sub_1C4409AB0(a1);

  v3 = v1(v2);

  return v3 & 1;
}

id sub_1C46238D4()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary);
  }

  else
  {
    v2 = BiomeLibrary();
    *(v0 + v1) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

SEL *sub_1C4623940(uint64_t *a1, SEL *a2, SEL *a3, SEL *a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    v8 = sub_1C4623A00(v4, a2, a3, a4);
    v9 = *(v4 + v5);
    *(v4 + v5) = v8;
    v7 = v8;

    v6 = 0;
  }

  v10 = v6;
  return v7;
}

id sub_1C46239A0(uint64_t *a1, SEL *a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v7 = sub_1C4623AB0(v3, a2, a3);
    v8 = *(v3 + v4);
    *(v3 + v4) = v7;
    v6 = v7;

    v5 = 0;
  }

  v9 = v5;
  return v6;
}

SEL *sub_1C4623A00(uint64_t a1, SEL *a2, SEL *a3, SEL *a4)
{
  v7 = objc_autoreleasePoolPush();
  v8 = [sub_1C46238D4() *a2];
  swift_unknownObjectRelease();
  v9 = [v8 *a3];
  swift_unknownObjectRelease();
  v10 = [v9 *a4];
  sub_1C441C818();
  swift_unknownObjectRelease();
  objc_autoreleasePoolPop(v7);
  return a4;
}

id sub_1C4623AB0(uint64_t a1, SEL *a2, SEL *a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = [sub_1C46238D4() *a2];
  swift_unknownObjectRelease();
  v7 = [v6 *a3];
  swift_unknownObjectRelease();
  objc_autoreleasePoolPop(v5);
  return v7;
}

uint64_t sub_1C4623B38@<X0>(uint64_t a1@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4410A24();
  v10 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar;
  sub_1C440F1BC();
  swift_beginAccess();
  sub_1C445FFF0(v1 + v10, v2, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  v11 = sub_1C4EF9F88();
  sub_1C44101EC();
  if (sub_1C44157D4(v12, v13, v14) == 1)
  {
    sub_1C4420C3C(v2, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    v15 = objc_autoreleasePoolPush();
    sub_1C4EF9F58();
    objc_autoreleasePoolPop(v15);
    sub_1C440A6B8();
    (*(v16 + 16))(v8, a1, v11);
    sub_1C43FBD94();
    sub_1C440BAA8(v17, v18, v19, v11);
    swift_beginAccess();
    sub_1C4630E08(v8, v1 + v10);
    return swift_endAccess();
  }

  else
  {
    sub_1C440A6B8();
    return (*(v21 + 32))(a1, v2, v11);
  }
}

uint64_t *sub_1C4623CF4(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = type metadata accessor for Configuration(0);
  v8 = sub_1C43FBD18(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v31 = v10 - v9;
  sub_1C43FBE44();
  sub_1C4EFFB28();
  sub_1C43FCDF8();
  v29 = v12;
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v32 = v14 - v13;
  sub_1C43FBE44();
  v15 = sub_1C4EFCE48();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBCC4();
  v21 = v20 - v19;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream) = 0;
  *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream) = 0;
  sub_1C4EF9F88();
  sub_1C43FCF64();
  sub_1C440BAA8(v22, v23, v24, v25);
  v26 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  sub_1C44098F0(a1, v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);
  sub_1C4EFDA08();
  if (v3)
  {

    sub_1C4467948(a1);
    sub_1C4467948(v2 + v26);
    swift_unknownObjectRelease();

    sub_1C4420C3C(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v17 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView, v21, v15);
    sub_1C4EFD9E8();
    (*(v29 + 32))(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView, v32, v30);
    sub_1C44098F0(a1, v31);
    type metadata accessor for GraphStore(0);
    swift_allocObject();
    v28 = GraphStore.init(config:)(v31);
    sub_1C4467948(0);

    *(v4 + 16) = v28;
  }

  return v4;
}

void *sub_1C4624330(uint64_t a1, void *a2)
{
  v4 = v2;
  sub_1C4EFFB28();
  sub_1C43FCDF8();
  v25 = v7;
  v26 = v8;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v27 = v10 - v9;
  sub_1C43FBE44();
  v11 = sub_1C4EFCE48();
  sub_1C43FCDF8();
  v28 = v12;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v16 = v15 - v14;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___biomeLibrary) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream) = 0;
  *(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream) = 0;
  sub_1C4EF9F88();
  sub_1C43FCF64();
  sub_1C440BAA8(v17, v18, v19, v20);
  *(v4 + 16) = a1;
  v21 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  sub_1C44098F0(a1 + OBJC_IVAR____TtC24IntelligencePlatformCore10GraphStore_config, v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);

  v22 = objc_autoreleasePoolPush();
  sub_1C4EFDA08();
  objc_autoreleasePoolPop(v22);
  if (v3)
  {

    sub_1C4467948(v4 + v21);
    swift_unknownObjectRelease();

    sub_1C4420C3C(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v28 + 32))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView, v16, v11);
    v23 = objc_autoreleasePoolPush();
    sub_1C4EFD9E8();
    objc_autoreleasePoolPop(v23);

    (*(v26 + 32))(v4 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView, v27, v25);
  }

  return v4;
}

uint64_t sub_1C46247D8(uint64_t a1)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_1C445E79C();
  sub_1C462482C(v4, v5, a1, v6);
  objc_autoreleasePoolPop(v1);
  return v8;
}

void sub_1C462482C(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v135 = a3;
  v134 = a2;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v126 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v123 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v128 = &v123 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v129 = &v123 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v130 = &v123 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v123 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v132 = &v123 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v123 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v123 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v123 - v26;
  v28 = sub_1C4EFDAB8();
  v29 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v125 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v123 - v33;
  v35 = *(v29 + 16);
  v124 = a1;
  v35(&v123 - v33, a1, v28, v32);
  v36 = (*(v29 + 88))(v34, v28);
  if (v36 == *MEMORY[0x1E69A9450])
  {
    goto LABEL_2;
  }

  if (v36 == *MEMORY[0x1E69A9468])
  {
    v37 = v134;
    v38 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appInFocusStream, &selRef_App, &selRef_InFocus);
    v39 = sub_1C4EF9CD8();
    (*(*(v39 - 8) + 16))(v27, v135, v39);
    sub_1C440BAA8(v27, 0, 1, v39);
    v40 = objc_autoreleasePoolPush();
    v41 = &unk_1F43E4AD0;
    v42 = &unk_1F43E4AF8;
    v43 = sub_1C4629758;
    goto LABEL_5;
  }

  if (v36 == *MEMORY[0x1E69A9460])
  {
    v48 = v134;
    v49 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___appIntentStream, &selRef_App, &selRef_Intent);
    v50 = sub_1C4EF9CD8();
    (*(*(v50 - 8) + 16))(v24, v135, v50);
    sub_1C440BAA8(v24, 0, 1, v50);
    v51 = objc_autoreleasePoolPush();
    v52 = v136;
    sub_1C4627DF0(v49, v24, v48, sub_1C46294C0, &unk_1F43E4B20, sub_1C46310A8, &unk_1F43E4B48);
    if (v52)
    {
      v122 = v51;
      goto LABEL_70;
    }

    v54 = v53;
    objc_autoreleasePoolPop(v51);

    v55 = v24;
LABEL_11:
    sub_1C4420C3C(v55, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v54;
    return;
  }

  if (v36 == *MEMORY[0x1E69A93D0])
  {
    v56 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v56 - 8) + 16))(v133, v135, v56);
    sub_1C440BAA8(v57, 0, 1, v56);
    v58 = sub_1C462BD44;
LABEL_14:
    v59 = sub_1C4625C70(v57, v58);
LABEL_15:
    v60 = v59;
    sub_1C4420C3C(v57, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v60;
    return;
  }

  if (v36 == *MEMORY[0x1E69A9410])
  {
LABEL_2:
    *a4 = 0;
    return;
  }

  if (v36 == *MEMORY[0x1E69A9438])
  {
    v61 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v61 - 8) + 16))(v133, v135, v61);
    sub_1C440BAA8(v57, 0, 1, v61);
    v58 = sub_1C462BFF4;
    goto LABEL_14;
  }

  if (v36 == *MEMORY[0x1E69A9448])
  {
    v62 = v134;
    v63 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___carPlayStream, &selRef_CarPlay, &selRef_Connected);
    v64 = sub_1C4EF9CD8();
    v65 = v132;
    (*(*(v64 - 8) + 16))(v132, v135, v64);
    sub_1C440BAA8(v65, 0, 1, v64);
    v40 = objc_autoreleasePoolPush();
    v66 = v136;
    sub_1C4627DF0(v63, v65, v62, sub_1C4629228, &unk_1F43E4C10, sub_1C46310A8, &unk_1F43E4C38);
    if (!v66)
    {
      v54 = v67;
      objc_autoreleasePoolPop(v40);

      v55 = v65;
      goto LABEL_11;
    }

LABEL_68:
    v122 = v40;
LABEL_70:
    objc_autoreleasePoolPop(v122);
    __break(1u);
    return;
  }

  if (v36 == *MEMORY[0x1E69A93E0])
  {
    v37 = v134;
    v38 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___deviceLockedStream, &selRef_Device, &selRef_ScreenLocked);
    v68 = sub_1C4EF9CD8();
    v27 = v131;
    (*(*(v68 - 8) + 16))(v131, v135, v68);
    sub_1C440BAA8(v27, 0, 1, v68);
    v40 = objc_autoreleasePoolPush();
    v41 = &unk_1F43E4C60;
    v42 = &unk_1F43E4C88;
    v43 = sub_1C4628F90;
LABEL_5:
    v44 = v136;
    sub_1C4627DF0(v38, v27, v37, v43, v41, sub_1C46310A8, v42);
    if (!v44)
    {
      v46 = v45;
      objc_autoreleasePoolPop(v40);

      v47 = v27;
LABEL_7:
      sub_1C4420C3C(v47, &unk_1EC0B84E0, qword_1C4F0D2D0);
      *a4 = v46;
      return;
    }

    goto LABEL_68;
  }

  if (v36 == *MEMORY[0x1E69A9428])
  {
    v69 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v69 - 8) + 16))(v133, v135, v69);
    sub_1C440BAA8(v57, 0, 1, v69);
    v58 = sub_1C462C694;
    goto LABEL_14;
  }

  if (v36 == *MEMORY[0x1E69A93D8])
  {
    v70 = v134;
    v71 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream, &selRef_Device, &selRef_Wireless, &selRef_AirplaneMode);
    v72 = sub_1C4EF9CD8();
    v73 = v130;
    (*(*(v72 - 8) + 16))(v130, v135, v72);
    sub_1C440BAA8(v73, 0, 1, v72);
    v40 = objc_autoreleasePoolPush();
    v74 = &unk_1F43E4CB0;
    v75 = &unk_1F43E4CD8;
    v76 = sub_1C4628CF8;
    goto LABEL_30;
  }

  if (v36 == *MEMORY[0x1E69A9470])
  {
    v70 = v134;
    v71 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream, &selRef_Device, &selRef_Wireless, &selRef_WiFi);
    v77 = sub_1C4EF9CD8();
    v73 = v129;
    (*(*(v77 - 8) + 16))(v129, v135, v77);
    sub_1C440BAA8(v73, 0, 1, v77);
    v40 = objc_autoreleasePoolPush();
    v74 = &unk_1F43E4D00;
    v75 = &unk_1F43E4D28;
    v76 = sub_1C4628A60;
    goto LABEL_30;
  }

  if (v36 == *MEMORY[0x1E69A9400])
  {
    v81 = sub_1C4EF9CD8();
    v82 = v133;
    (*(*(v81 - 8) + 16))(v133, v135, v81);
    sub_1C440BAA8(v82, 0, 1, v81);
    v83 = sub_1C4625C70(v82, sub_1C462C340);
    v84 = v82;
LABEL_34:
    sub_1C4420C3C(v84, &unk_1EC0B84E0, qword_1C4F0D2D0);
    *a4 = v83;
    return;
  }

  if (v36 == *MEMORY[0x1E69A93F0])
  {
    v70 = v134;
    v71 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream, &selRef_Device, &selRef_Power, &selRef_PluggedIn);
    v85 = sub_1C4EF9CD8();
    v73 = v128;
    (*(*(v85 - 8) + 16))(v128, v135, v85);
    sub_1C440BAA8(v73, 0, 1, v85);
    v40 = objc_autoreleasePoolPush();
    v74 = &unk_1F43E4DC8;
    v75 = &unk_1F43E4DF0;
    v76 = sub_1C46287C8;
LABEL_30:
    v78 = v136;
    sub_1C4627DF0(v71, v73, v70, v76, v74, sub_1C46310A8, v75);
    if (!v78)
    {
      v80 = v79;
      objc_autoreleasePoolPop(v40);

      sub_1C4420C3C(v73, &unk_1EC0B84E0, qword_1C4F0D2D0);
      *a4 = v80;
      return;
    }

    goto LABEL_68;
  }

  if (v36 == *MEMORY[0x1E69A93C8])
  {
    v86 = sub_1C4EF9CD8();
    v87 = v133;
    (*(*(v86 - 8) + 16))(v133, v135, v86);
    sub_1C440BAA8(v87, 0, 1, v86);
    v83 = sub_1C4625CC8(v87);
    v84 = v87;
    goto LABEL_34;
  }

  if (v36 == *MEMORY[0x1E69A9430])
  {
    v88 = v134;
    v89 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream, &selRef_HomeKit, &selRef_Client, &selRef_AccessoryControl);
    v90 = sub_1C4EF9CD8();
    v91 = v127;
    (*(*(v90 - 8) + 16))(v127, v135, v90);
    sub_1C440BAA8(v91, 0, 1, v90);
    v40 = objc_autoreleasePoolPush();
    v92 = v136;
    sub_1C4627DF0(v89, v91, v88, sub_1C4628530, &unk_1F43E4EE0, sub_1C46310A8, &unk_1F43E4F08);
    if (!v92)
    {
      v46 = v93;
      objc_autoreleasePoolPop(v40);

      v47 = v127;
      goto LABEL_7;
    }

    goto LABEL_68;
  }

  if (v36 == *MEMORY[0x1E69A9458])
  {
    v94 = v134;
    v95 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___semanticLocationStream, &selRef_Location, &selRef_Semantic);
    v96 = sub_1C4EF9CD8();
    v97 = v126;
    (*(*(v96 - 8) + 16))(v126, v135, v96);
    sub_1C440BAA8(v97, 0, 1, v96);
    v40 = objc_autoreleasePoolPush();
    v98 = v136;
    sub_1C4627DF0(v95, v97, v94, sub_1C4628298, &unk_1F43E4F30, sub_1C46310A8, &unk_1F43E4F58);
    if (!v98)
    {
      v46 = v99;
      objc_autoreleasePoolPop(v40);

      v47 = v126;
      goto LABEL_7;
    }

    goto LABEL_68;
  }

  if (v36 == *MEMORY[0x1E69A9420])
  {
    v100 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v100 - 8) + 16))(v133, v135, v100);
    sub_1C440BAA8(v57, 0, 1, v100);
    v59 = sub_1C4625D1C(v57);
    goto LABEL_15;
  }

  if (v36 == *MEMORY[0x1E69A9440])
  {
    v101 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v101 - 8) + 16))(v133, v135, v101);
    sub_1C440BAA8(v57, 0, 1, v101);
    v59 = sub_1C4625F7C();
    goto LABEL_15;
  }

  if (v36 == *MEMORY[0x1E69A9418])
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v102 = sub_1C4F00978();
    sub_1C442B738(v102, qword_1EDE2DDE0);
    v103 = sub_1C4F00968();
    v104 = sub_1C4F01CF8();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_1C43F8000, v103, v104, "BehaviorHistoryUtility: lastBehaviorEvent called with entityInteraction - this should only occur if EntityInteractionHistogramViews are updating", v105, 2u);
      MEMORY[0x1C6942830](v105, -1, -1);
    }

    goto LABEL_2;
  }

  if (v36 == *MEMORY[0x1E69A9408])
  {
    v106 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v106 - 8) + 16))(v133, v135, v106);
    sub_1C440BAA8(v57, 0, 1, v106);
    v107 = v57;
    v108 = 0;
LABEL_61:
    v59 = sub_1C4625FC8(v107, v108);
    goto LABEL_15;
  }

  if (v36 == *MEMORY[0x1E69A93F8])
  {
    v109 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v109 - 8) + 16))(v133, v135, v109);
    sub_1C440BAA8(v57, 0, 1, v109);
    v107 = v57;
    v108 = 1;
    goto LABEL_61;
  }

  if (v36 == *MEMORY[0x1E69A93E8])
  {
    v110 = sub_1C4EF9CD8();
    v57 = v133;
    (*(*(v110 - 8) + 16))(v133, v135, v110);
    sub_1C440BAA8(v57, 0, 1, v110);
    v107 = v57;
    v108 = 2;
    goto LABEL_61;
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v111 = sub_1C4F00978();
  sub_1C442B738(v111, qword_1EDE2DDE0);
  (v35)(v125, v124, v28);
  v112 = sub_1C4F00968();
  LODWORD(v135) = sub_1C4F01CE8();
  if (os_log_type_enabled(v112, v135))
  {
    v113 = swift_slowAlloc();
    v133 = v113;
    v134 = swift_slowAlloc();
    v137 = v134;
    *v113 = 136315138;
    sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
    v114 = v125;
    v132 = sub_1C4F02858();
    v116 = v115;
    v117 = *(v29 + 8);
    v117(v114, v28);
    v118 = sub_1C441D828(v132, v116, &v137);

    v119 = v133;
    *(v133 + 4) = v118;
    v120 = v119;
    _os_log_impl(&dword_1C43F8000, v112, v135, "BehaviorHistoryUtility: lastBehaviorEvent called with unexpected type: %s", v119, 0xCu);
    v121 = v134;
    sub_1C440962C(v134);
    MEMORY[0x1C6942830](v121, -1, -1);
    MEMORY[0x1C6942830](v120, -1, -1);
  }

  else
  {

    v117 = *(v29 + 8);
    v117(v125, v28);
  }

  *a4 = 0;
  v117(v34, v28);
}

uint64_t sub_1C4625C70(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C4426A20();
  a2(v6, a1);
  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_1C4625CC8(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  sub_1C462D2C0(a1, &v4);
  objc_autoreleasePoolPop(v2);
  return v4;
}

uint64_t sub_1C4625D1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v5 = sub_1C43FBD18(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27[-v6];
  v8 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27[-v13];
  v15 = objc_autoreleasePoolPush();
  sub_1C445FFF0(a1, v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44101EC();
  if (sub_1C44157D4(v16, v17, v18) == 1)
  {
    sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9CC8();
  }

  else
  {
    sub_1C4EF9AD8();
    (*(v10 + 8))(v7, v8);
    sub_1C4EF9AC8();
  }

  sub_1C4EF9AC8();
  sub_1C462DC9C();
  v20 = v19;
  v21 = objc_autoreleasePoolPush();
  sub_1C462802C(v2, v20, sub_1C462A1B8, &unk_1F43E4F80, sub_1C46310A8, &unk_1F43E4FA8);
  v23 = v22;
  objc_autoreleasePoolPop(v21);

  v24 = *(v10 + 8);
  v25 = sub_1C43FE99C();
  v24(v25);
  (v24)(v14, v8);
  objc_autoreleasePoolPop(v15);
  return v23;
}

uint64_t sub_1C4625F7C()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C445E79C();
  sub_1C462F670(v2, v3, v4);
  objc_autoreleasePoolPop(v0);
  return v6;
}

uint64_t sub_1C4625FC8(uint64_t a1, uint64_t a2)
{
  v5 = objc_autoreleasePoolPush();
  sub_1C4426A20();
  sub_1C462FC6C(a1, a2, v6);
  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_1C4626020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1C4405814();
  sub_1C462608C(v6, v7, a3, v3, v8);
  objc_autoreleasePoolPop(v5);
  return v10;
}

uint64_t sub_1C462608C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v71 = a3;
  v68 = a4;
  v70 = a5;
  v73 = sub_1C4EFDAB8();
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v67 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v66 - v9;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  sub_1C445FFF0(a1, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v15, 1, v16) == 1)
  {
    sub_1C4EF9B28();
    if (sub_1C44157D4(v15, 1, v16) != 1)
    {
      sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v17 + 32))(v21, v15, v16);
  }

  sub_1C445FFF0(a2, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v22 = sub_1C44157D4(v12, 1, v16);
  v23 = v74;
  if (v22 == 1)
  {
    sub_1C4EF9C88();
    if (sub_1C44157D4(v12, 1, v16) != 1)
    {
      sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }
  }

  else
  {
    (*(v17 + 32))(v74, v12, v16);
  }

  v24 = v69;
  v25 = *(v69 + 16);
  v26 = v72;
  v27 = v73;
  v25(v72, v71, v73);
  v28 = (*(v24 + 88))(v26, v27);
  if (v28 == *MEMORY[0x1E69A9450])
  {
    goto LABEL_10;
  }

  if (v28 == *MEMORY[0x1E69A9468] || v28 == *MEMORY[0x1E69A9460])
  {
    goto LABEL_13;
  }

  if (v28 == *MEMORY[0x1E69A93D0])
  {
    sub_1C4626C08();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A9410])
  {
LABEL_10:
    v29 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v30 = sub_1C4F01658();
    v31 = [v29 initWithSequence_];

LABEL_15:
    v33 = *(v17 + 8);
    v33(v23, v16);
    v34 = v21;
LABEL_16:
    result = (v33)(v34, v16);
    *v70 = v31;
    return result;
  }

  if (v28 == *MEMORY[0x1E69A9438] || v28 == *MEMORY[0x1E69A9448] || v28 == *MEMORY[0x1E69A93E0])
  {
LABEL_13:
    sub_1C4627818();
LABEL_14:
    v31 = v32;
    goto LABEL_15;
  }

  if (v28 == *MEMORY[0x1E69A9428])
  {
    v32 = sub_1C4626DC4();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A93D8])
  {
    sub_1C4626F18();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A9470])
  {
    sub_1C46270D4();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A9400])
  {
    sub_1C4627290();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A93F0])
  {
    sub_1C462744C();
    goto LABEL_14;
  }

  if (v28 == *MEMORY[0x1E69A93C8])
  {
    v32 = sub_1C4627608(v21, v23);
    goto LABEL_14;
  }

  v36 = v21;
  if (v28 == *MEMORY[0x1E69A9430])
  {
    v37 = v74;
    sub_1C462765C();
LABEL_56:
    v31 = v38;
    v33 = *(v17 + 8);
    v33(v37, v16);
LABEL_57:
    v34 = v21;
    goto LABEL_16;
  }

  if (v28 == *MEMORY[0x1E69A9458])
  {
    v37 = v74;
    sub_1C4627818();
    goto LABEL_56;
  }

  if (v28 == *MEMORY[0x1E69A9420])
  {
    v37 = v74;
    sub_1C4627A5C();
    goto LABEL_56;
  }

  if (v28 == *MEMORY[0x1E69A9440])
  {
    v37 = v74;
    v38 = sub_1C4627BC0();
    goto LABEL_56;
  }

  if (v28 == *MEMORY[0x1E69A9418])
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v39 = sub_1C4F00978();
    sub_1C442B738(v39, qword_1EDE2DDE0);
    v40 = sub_1C4F00968();
    v41 = sub_1C4F01CF8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_1C43F8000, v40, v41, "BehaviorHistoryUtility: lastBehaviorEvent unexpectedly called with entityInteraction - this should only occur if EntityInteractionHistogramViews are updating", v42, 2u);
      MEMORY[0x1C6942830](v42, -1, -1);
    }

    v43 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v44 = sub_1C4F01658();
    v31 = [v43 initWithSequence_];

    v33 = *(v17 + 8);
    v33(v74, v16);
    goto LABEL_57;
  }

  if (v28 == *MEMORY[0x1E69A9408])
  {
    v45 = v21;
    v37 = v74;
    v46 = v74;
    v47 = 0;
LABEL_55:
    v38 = sub_1C4627C74(v45, v46, v47);
    goto LABEL_56;
  }

  if (v28 == *MEMORY[0x1E69A93F8])
  {
    v45 = v21;
    v37 = v74;
    v46 = v74;
    v47 = 1;
    goto LABEL_55;
  }

  if (v28 == *MEMORY[0x1E69A93E8])
  {
    v45 = v21;
    v37 = v74;
    v46 = v74;
    v47 = 2;
    goto LABEL_55;
  }

  if (qword_1EDDFA668 != -1)
  {
    swift_once();
  }

  v48 = sub_1C4F00978();
  sub_1C442B738(v48, qword_1EDE2DDE0);
  v25(v67, v71, v73);
  v49 = sub_1C4F00968();
  LODWORD(v71) = sub_1C4F01CE8();
  if (os_log_type_enabled(v49, v71))
  {
    v50 = swift_slowAlloc();
    v66 = v50;
    v68 = swift_slowAlloc();
    v75 = v68;
    *v50 = 136315138;
    sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
    v51 = v67;
    v52 = v73;
    v53 = sub_1C4F02858();
    v55 = v54;
    v56 = v52;
    v57 = *(v69 + 8);
    v57(v51, v56);
    v58 = sub_1C441D828(v53, v55, &v75);

    v59 = v66;
    *(v66 + 1) = v58;
    v60 = v59;
    _os_log_impl(&dword_1C43F8000, v49, v71, "BehaviorHistoryUtility: behaviorEventPublisher called with unexpected type: %s", v59, 0xCu);
    v61 = v68;
    sub_1C440962C(v68);
    MEMORY[0x1C6942830](v61, -1, -1);
    MEMORY[0x1C6942830](v60, -1, -1);
  }

  else
  {

    v57 = *(v69 + 8);
    v57(v67, v73);
  }

  v62 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
  type metadata accessor for BehaviorEvent();
  v63 = sub_1C4F01658();
  v64 = [v62 initWithSequence_];

  v65 = *(v17 + 8);
  v65(v74, v16);
  v65(v36, v16);
  *v70 = v64;
  return (v57)(v72, v73);
}

void sub_1C4626C08()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream, &selRef_Location, &selRef_PointOfInterest, &selRef_Category);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C46299F0(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

id sub_1C4626DC4()
{
  v0 = objc_autoreleasePoolPush();
  v1 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream, &selRef_Location, &selRef_MicroLocationVisit);
  v2 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];

  v3 = sub_1C4EF9BF8();
  v4 = sub_1C4EF9BF8();
  v5 = [v2 microLocationVisitEventPublisherFrom:v3 to:v4];

  v9[4] = sub_1C462C92C;
  v9[5] = 0;
  sub_1C442597C();
  v9[1] = 1107296256;
  v9[2] = sub_1C463109C;
  v9[3] = &unk_1F43E45A8;
  v6 = _Block_copy(v9);
  v7 = [v5 mapWithTransform_];

  _Block_release(v6);
  objc_autoreleasePoolPop(v0);
  return v7;
}

void sub_1C4626F18()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___airplaneModeStream, &selRef_Device, &selRef_Wireless, &selRef_AirplaneMode);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C4628CF8(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C46270D4()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___wifiEventStream, &selRef_Device, &selRef_Wireless, &selRef_WiFi);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C4628A60(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627290()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream, &selRef_Device, &selRef_Wireless, &selRef_Bluetooth);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C4629F20(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C462744C()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___chargingEventStream, &selRef_Device, &selRef_Power, &selRef_PluggedIn);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C46287C8(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

uint64_t sub_1C4627608(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  sub_1C4426A20();
  sub_1C462CA54(a2, v5);
  objc_autoreleasePoolPop(v2);
  return v7;
}

void sub_1C462765C()
{
  sub_1C43FBD3C();
  sub_1C4414924(v3, v4);
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440D124();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FD274();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C4402CA8();
  v25 = objc_autoreleasePoolPush();
  sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___homeKitAccessoryStream, &selRef_HomeKit, &selRef_Client, &selRef_AccessoryControl);
  sub_1C4403FC0();
  sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v11 = *(v10 + 16);
  v12 = sub_1C4410A14();
  v11(v12);
  v13 = sub_1C44067C0();
  v11(v13);
  sub_1C440F390(v2);
  v14 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v15 = sub_1C4412D68();
  v16 = sub_1C441C120(v15, sel_publisherWithOptions_);

  v17 = sub_1C440DF34();
  v11(v17);
  v18 = sub_1C442C514();
  v11(v18);
  v19 = sub_1C4416DDC();
  sub_1C444B028(v19, v20, v21);
  v22 = sub_1C43FFE7C();
  sub_1C4628530(v22, v23, v24);
  sub_1C444FC74();

  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C44058DC();
  objc_autoreleasePoolPop(v25);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627818()
{
  sub_1C43FBD3C();
  v43 = v3;
  v44 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C443FADC();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C4410A24();
  v42 = objc_autoreleasePoolPush();
  sub_1C46239A0(v9, v7, v5);
  sub_1C4403FC0();
  v18 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v20 = *(v19 + 16);
  sub_1C443F118();
  v20();
  v21 = sub_1C4416DDC();
  sub_1C440BAA8(v21, v22, v23, v18);
  (v20)(v0, v44, v18);
  sub_1C43FBD94();
  sub_1C440BAA8(v24, v25, v26, v18);
  v27 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C43FE99C();
  sub_1C440F1BC();
  v32 = sub_1C457A86C(v28, v29, v30, v31, 0);
  v33 = sub_1C441C120(v32, sel_publisherWithOptions_);

  sub_1C443F118();
  v20();
  sub_1C43FBD94();
  sub_1C440BAA8(v34, v35, v36, v18);
  (v20)(v14, v44, v18);
  sub_1C43FBD94();
  sub_1C440BAA8(v37, v38, v39, v18);
  v40 = objc_autoreleasePoolPush();
  v41 = sub_1C441C818();
  v43(v41, v1, v14);
  sub_1C444FC74();

  sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  objc_autoreleasePoolPop(v42);
  sub_1C442B974();
  sub_1C43FE9F0();
}

void sub_1C4627A5C()
{
  sub_1C43FBD3C();
  v2 = v1;
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = objc_autoreleasePoolPush();
  sub_1C462DC9C();
  v10 = v9;
  v11 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v13 = *(v12 + 16);
  v14 = sub_1C440DF34();
  v13(v14);
  sub_1C440F390(v7);
  (v13)(v0, v2, v11);
  v15 = sub_1C4416DDC();
  v18 = sub_1C444B028(v15, v16, v17);
  sub_1C462A1B8(v10, v7, v0);
  objc_autoreleasePoolPop(v18);

  sub_1C4420C3C(v0, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4420C3C(v7, &unk_1EC0B84E0, qword_1C4F0D2D0);
  objc_autoreleasePoolPop(v8);
  sub_1C442B974();
  sub_1C43FE9F0();
}

id sub_1C4627BC0()
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_1C4405814();
  v4 = sub_1C4AB18E0(v2, v3, 0, 0);
  if (v4)
  {
    v5 = v4;
    v6 = sub_1C462EBA8(v4, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v5 = sub_1C4F01658();
    v6 = [v7 initWithSequence_];
  }

  v8 = v6;

  objc_autoreleasePoolPop(v1);
  return v8;
}

id sub_1C4627C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_autoreleasePoolPush();
  v5 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream, &selRef_Location, &selRef_HashedCoordinates);
  v6 = [objc_allocWithZone(GDGeoHashVisitUtility) initWithGeoHashStream_];

  v7 = sub_1C4EF9BF8();
  v8 = sub_1C4EF9BF8();
  v9 = [v6 geoHashVisitEventPublisherFrom:v7 to:v8 level:a3];

  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v14[4] = sub_1C4630CDC;
  v14[5] = v10;
  sub_1C442597C();
  v14[1] = 1107296256;
  v14[2] = sub_1C463109C;
  v14[3] = &unk_1F43E4A80;
  v11 = _Block_copy(v14);

  v12 = [v9 mapWithTransform_];

  _Block_release(v11);
  objc_autoreleasePoolPop(v4);
  return v12;
}

void sub_1C4627DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, _BYTE *, uint64_t), uint64_t a5, void (*a6)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9), uint64_t a7)
{
  v40 = a7;
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = sub_1C43FBD18(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1C445FFF0(a2, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v19 = sub_1C4EF9CD8();
  sub_1C44101EC();
  if (sub_1C44157D4(v20, v21, v22) == 1)
  {
    sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v23 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    sub_1C440A6B8();
    (*(v24 + 8))(v15, v19);
    v23 = 0;
  }

  sub_1C440BAA8(v18, v23, 1, v19);
  sub_1C43FCF64();
  sub_1C440BAA8(v25, v26, v27, v19);
  v28 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  sub_1C440F1BC();
  v33 = sub_1C457A86C(v29, v30, v31, v32, 1);
  v34 = [a1 publisherWithOptions_];

  v35 = objc_autoreleasePoolPush();
  sub_1C462802C(a3, v34, v37, v38, v39, v40);
  objc_autoreleasePoolPop(v35);
  if (v7)
  {
    __break(1u);
  }

  else
  {
  }
}

void sub_1C462802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, _BYTE *, uint64_t), uint64_t a4, void (*a5)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9), uint64_t a6)
{
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = sub_1C43FBD18(v13);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  sub_1C443FADC();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &aBlock[-v16];
  v18 = sub_1C4EF9CD8();
  sub_1C43FCF64();
  sub_1C440BAA8(v19, v20, v21, v18);
  sub_1C43FCF64();
  sub_1C440BAA8(v22, v23, v24, v18);
  v25 = objc_autoreleasePoolPush();
  v26 = a3(a2, v17, v7);
  if (v6)
  {
    objc_autoreleasePoolPop(v25);
    __break(1u);
  }

  else
  {
    v27 = v26;
    objc_autoreleasePoolPop(v25);
    sub_1C443F118();
    sub_1C4420C3C(v28, v29, v30);
    sub_1C443F118();
    sub_1C4420C3C(v31, v32, v33);
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    v42 = sub_1C462828C;
    v43 = 0;
    sub_1C43FC054();
    v39 = 1107296256;
    v40 = sub_1C44405F8;
    v41 = a4;
    v35 = _Block_copy(aBlock);
    v42 = a5;
    v43 = v34;
    sub_1C43FC054();
    v39 = 1107296256;
    v40 = sub_1C4623884;
    v41 = a6;
    v36 = _Block_copy(aBlock);

    v37 = [v27 sinkWithCompletion:v35 shouldContinue:v36];

    _Block_release(v36);
    _Block_release(v35);

    sub_1C440F1BC();
    swift_beginAccess();
  }
}

id sub_1C4628298(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A450;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E48F0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4940;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628530(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A468;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4878;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E48C8;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46287C8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A480;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4738;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4788;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628A60(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A64C;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4648;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4698;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628CF8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A664;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E45D0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4620;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4628F90(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A830;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4530;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4580;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629228(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462A9FC;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E44B8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4508;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46294C0(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462AA14;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4350;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E43A0;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629758(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462AA40;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E42D8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C4630874;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4328;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C46299F0(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462ACFC;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E43C8;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4418;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629C88(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462AD28;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4440;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4490;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C4629F20(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462AD40;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E46C0;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E4710;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

id sub_1C462A1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v26 = sub_1C462AF08;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C463109C;
  v25 = &unk_1F43E4968;
  v12 = _Block_copy(&aBlock);

  v13 = [a1 mapWithTransform_];
  _Block_release(v12);
  sub_1C445FFF0(a2, v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v21, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v14 = *(v6 + 80);
  v15 = (v14 + 16) & ~v14;
  v16 = (v7 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  sub_1C45B69E4(v11, v17 + v15);
  sub_1C45B69E4(v8, v17 + v16);
  v26 = sub_1C46310A4;
  v27 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C462BCF4;
  v25 = &unk_1F43E49B8;
  v18 = _Block_copy(&aBlock);

  v19 = [v13 filterWithIsIncluded_];
  _Block_release(v18);

  return v19;
}

uint64_t sub_1C462A480@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 11;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v7, v11, v4);
  v18 = sub_1C45D644C(&v21, v7);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

uint64_t sub_1C462A664@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 8;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v7, v11, v4);
  v18 = sub_1C45D644C(&v21, v7);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

uint64_t sub_1C462A830@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v21 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 starting];

    v15 = v14;
    v16 = 6;
  }

  else
  {
    v15 = 0;
    v16 = 21;
  }

  LOBYTE(v22) = v16;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v17 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v7, v11, v4);
  v18 = sub_1C45D644C(&v21, v7);
  a2[3] = v17;
  *a2 = v19;
  return (*(v5 + 8))(v11, v4, v18);
}

void sub_1C462AA6C()
{
  sub_1C43FBD3C();
  v37 = v2;
  v38 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v9 = sub_1C43FBD18(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C4402CA8();
  v17 = [v7 eventBody];
  v18 = 0uLL;
  if (v17)
  {
    v19 = v17;
    v5(v39, 0);
    v35 = v39[0];
    v36 = v39[1];
    v20 = v40;
    v21 = v41;

    if (v21 == 255)
    {
      v20 = 0;
      LOBYTE(v21) = 21;
      v22 = 0uLL;
      v18 = 0uLL;
    }

    else
    {
      v18 = v35;
      v22 = v36;
    }
  }

  else
  {
    v20 = 0;
    LOBYTE(v21) = 21;
    v22 = 0uLL;
  }

  v42[0] = v18;
  v42[1] = v22;
  v43 = v20;
  v44 = v21;
  v23 = [v7 eventBody];
  if (v23)
  {
    v24 = v23;
    v37();

    if (sub_1C44157D4(v11, 1, v12) != 1)
    {
      (*(v14 + 32))(v0, v11, v12);
      goto LABEL_12;
    }
  }

  else
  {
    sub_1C43FCF64();
    sub_1C440BAA8(v25, v26, v27, v12);
  }

  [v7 timestamp];
  sub_1C4EF9AC8();
  if (sub_1C44157D4(v11, 1, v12) != 1)
  {
    sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

LABEL_12:
  v28 = type metadata accessor for BehaviorEvent();
  v29 = sub_1C43FE99C();
  v30(v29);
  sub_1C45D644C(v42, v1);
  v31 = v38;
  v38[3] = v28;
  *v31 = v32;
  v33 = sub_1C4405814();
  v34(v33);
  sub_1C43FE9F0();
}

void sub_1C462AD58()
{
  sub_1C43FBD3C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  sub_1C4EF9CD8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C4402CA8();
  v9 = [v4 eventBody];
  v10 = 0uLL;
  if (v9)
  {
    v11 = v9;
    v2(v23, 0);
    v21 = v23[0];
    v22 = v23[1];
    v12 = v24;
    v13 = v25;

    if (v13 == 255)
    {
      v12 = 0;
      LOBYTE(v13) = 21;
      v14 = 0uLL;
      v10 = 0uLL;
    }

    else
    {
      v10 = v21;
      v14 = v22;
    }
  }

  else
  {
    v12 = 0;
    LOBYTE(v13) = 21;
    v14 = 0uLL;
  }

  v26[0] = v10;
  v26[1] = v14;
  v27 = v12;
  v28 = v13;

  [v4 timestamp];
  sub_1C4EF9AC8();
  v15 = type metadata accessor for BehaviorEvent();
  v16 = sub_1C43FE99C();
  v17(v16);
  sub_1C45D644C(v26, v0);
  v6[3] = v15;
  *v6 = v18;
  v19 = sub_1C4405814();
  v20(v19);
  sub_1C43FE9F0();
}

uint64_t sub_1C462AF08@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v20 - v10;
  v12 = [a1 eventBody];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1C4D331F8();

    v15 = 15;
  }

  else
  {
    v14 = 0;
    v15 = 21;
  }

  LOBYTE(v21) = v15;

  [a1 timestamp];
  sub_1C4EF9AC8();
  v16 = type metadata accessor for BehaviorEvent();
  (*(v5 + 16))(v7, v11, v4);
  v17 = sub_1C45D644C(&v20, v7);
  a2[3] = v16;
  *a2 = v18;
  return (*(v5 + 8))(v11, v4, v17);
}

uint64_t sub_1C462B0D4(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v112 = a3;
  v5 = sub_1C4EFDAB8();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v103 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v103 - v9;
  v10 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v103 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - v14;
  v16 = sub_1C4EF9CD8();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v109 = (&v103 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v111 = &v103 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v110 = &v103 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v103 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v103 - v27;
  type metadata accessor for BehaviorEvent();
  swift_unknownObjectRetain();
  v29 = swift_dynamicCastClass();
  if (v29)
  {
    v30 = v29;
    sub_1C445FFF0(a2, v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v15, 1, v16) == 1)
    {
      sub_1C4420C3C(v15, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      v108 = a1;
      (*(v17 + 32))(v28, v15, v16);
      v32 = *(v30 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
      v106 = *(v17 + 16);
      v107 = (v17 + 16);
      v106(v25, v32, v16);
      v33 = sub_1C4EF9C18();
      v34 = (v17 + 8);
      v35 = *(v17 + 8);
      v35(v25, v16);
      if (v33)
      {
        v112 = v35;
        if (qword_1EDDFA668 != -1)
        {
          swift_once();
        }

        v36 = sub_1C4F00978();
        sub_1C442B738(v36, qword_1EDE2DDE0);
        v37 = v110;
        v106(v110, v28, v16);
        swift_unknownObjectRetain();
        v38 = sub_1C4F00968();
        v39 = sub_1C4F01CD8();
        swift_unknownObjectRelease();
        LODWORD(v111) = v39;
        if (os_log_type_enabled(v38, v39))
        {
          v40 = swift_slowAlloc();
          v109 = swift_slowAlloc();
          v116 = v109;
          *v40 = 136315650;
          v41 = *(v30 + 32);
          v117 = *(v30 + 16);
          v118[0] = v41;
          *(v118 + 9) = *(v30 + 41);
          v105 = v38;
          v42 = v113;
          sub_1C45D5A24(v113);
          sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
          v43 = v115;
          v44 = sub_1C4F02858();
          v104 = v34;
          v46 = v45;
          (*(v114 + 8))(v42, v43);
          v47 = sub_1C441D828(v44, v46, &v116);

          *(v40 + 4) = v47;
          *(v40 + 12) = 2080;
          v106(v25, *(v30 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v16);
          sub_1C4630878(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v48 = sub_1C4F02858();
          v50 = v49;
          v51 = v25;
          v52 = v112;
          v112(v51, v16);
          v53 = sub_1C441D828(v48, v50, &v116);

          v54 = v40;
          *(v40 + 14) = v53;
          *(v40 + 22) = 2080;
          v55 = v110;
          v56 = sub_1C4F02858();
          v58 = v57;
          v52(v55, v16);
          v59 = sub_1C441D828(v56, v58, &v116);

          *(v54 + 24) = v59;
          v60 = v105;
          _os_log_impl(&dword_1C43F8000, v105, v111, "BehaviorHistoryUtility [behaviorPublisher]: Biome unexpectedly emitted %s event on %s, which is earlier than publisher start date %s.", v54, 0x20u);
          v61 = v109;
          swift_arrayDestroy();
          MEMORY[0x1C6942830](v61, -1, -1);
          MEMORY[0x1C6942830](v54, -1, -1);
          swift_unknownObjectRelease();

          v52(v28, v16);
        }

        else
        {
          swift_unknownObjectRelease();

          v100 = v37;
          v101 = v112;
          v112(v100, v16);
          v101(v28, v16);
        }

        goto LABEL_5;
      }

      v35(v28, v16);
      a1 = v108;
    }

    sub_1C445FFF0(v112, v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v12, 1, v16) == 1)
    {
      sub_1C4420C3C(v12, &unk_1EC0B84E0, qword_1C4F0D2D0);
LABEL_20:
      v93 = *(v30 + 32);
      v117 = *(v30 + 16);
      v118[0] = v93;
      *(v118 + 9) = *(v30 + 41);
      v94 = v113;
      sub_1C45D5A24(v113);
      v96 = v114;
      v95 = v115;
      (*(v114 + 104))(v7, *MEMORY[0x1E69A9450], v115);
      sub_1C4630878(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
      v97 = sub_1C4F010B8();
      swift_unknownObjectRelease();
      v98 = *(v96 + 8);
      v98(v7, v95);
      v98(v94, v95);
      v31 = v97 ^ 1;
      return v31 & 1;
    }

    v62 = v17;
    v63 = v111;
    (*(v17 + 32))(v111, v12, v16);
    v64 = *(v30 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v112 = *(v17 + 16);
    (v112)(v25, v64, v16);
    v65 = sub_1C4EF9C08();
    v68 = *(v62 + 8);
    v66 = (v62 + 8);
    v67 = v68;
    v68(v25, v16);
    if ((v65 & 1) == 0)
    {
      v67(v63, v16);
      goto LABEL_20;
    }

    v107 = v67;
    v110 = v66;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v69 = sub_1C4F00978();
    sub_1C442B738(v69, qword_1EDE2DDE0);
    v70 = v109;
    v71 = v111;
    (v112)(v109, v111, v16);
    swift_unknownObjectRetain();
    v72 = sub_1C4F00968();
    v73 = sub_1C4F01CD8();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v116 = v106;
      *v74 = 136315650;
      v75 = *(v30 + 32);
      v117 = *(v30 + 16);
      v118[0] = v75;
      *(v118 + 9) = *(v30 + 41);
      LODWORD(v105) = v73;
      v76 = v113;
      sub_1C45D5A24(v113);
      sub_1C4630878(&qword_1EDDEFFB0, MEMORY[0x1E69A9478], MEMORY[0x1E69A94A8]);
      v104 = v72;
      v77 = v115;
      v78 = sub_1C4F02858();
      v108 = a1;
      v80 = v79;
      (*(v114 + 8))(v76, v77);
      v81 = sub_1C441D828(v78, v80, &v116);

      *(v74 + 4) = v81;
      *(v74 + 12) = 2080;
      (v112)(v25, *(v30 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v16);
      sub_1C4630878(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
      v82 = sub_1C4F02858();
      v84 = v83;
      v85 = v107;
      v107(v25, v16);
      v86 = sub_1C441D828(v82, v84, &v116);

      *(v74 + 14) = v86;
      *(v74 + 22) = 2080;
      v87 = sub_1C4F02858();
      v89 = v88;
      v85(v70, v16);
      v90 = sub_1C441D828(v87, v89, &v116);

      *(v74 + 24) = v90;
      v91 = v104;
      _os_log_impl(&dword_1C43F8000, v104, v105, "BehaviorHistoryUtility [behaviorPublisher]: Biome unexpectedly emitted %s event on %s, which is later than publisher end date %s.", v74, 0x20u);
      v92 = v106;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v92, -1, -1);
      MEMORY[0x1C6942830](v74, -1, -1);
      swift_unknownObjectRelease();

      v85(v111, v16);
    }

    else
    {
      swift_unknownObjectRelease();

      v102 = v107;
      v107(v70, v16);
      v102(v71, v16);
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

LABEL_5:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1C462BCF4(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v2 = swift_unknownObjectRetain();
  v3 = v1(v2);

  swift_unknownObjectRelease();
  return v3 & 1;
}

void sub_1C462BD44(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___poiCategoryStream, &selRef_Location, &selRef_PointOfInterest, &selRef_Category);
  sub_1C445FFF0(a2, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v10, 1, v15) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v16 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v15 - 8) + 8))(v10, v15);
    v16 = 0;
  }

  sub_1C440BAA8(v13, v16, 1, v15);
  sub_1C440BAA8(v7, 1, 1, v15);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v7, 0, 0, 1);
  v19 = [(SEL *)v14 publisherWithOptions:v18];

  v20 = objc_autoreleasePoolPush();
  v21 = v24[1];
  sub_1C462802C(a1, v19, sub_1C46299F0, &unk_1F43E4B70, sub_1C46310A8, &unk_1F43E4B98);
  if (v21)
  {
    objc_autoreleasePoolPop(v20);
    __break(1u);
  }

  else
  {
    v23 = v22;
    objc_autoreleasePoolPop(v20);

    *v25 = v23;
  }
}

void sub_1C462BFF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v25 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v24 - v12;
  v14 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___focusModeStream, &selRef_UserFocus, &selRef_ComputedMode);
  sub_1C445FFF0(a2, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v10, 1, v15) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v16 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v15 - 8) + 8))(v10, v15);
    v16 = 0;
  }

  sub_1C440BAA8(v13, v16, 1, v15);
  sub_1C440BAA8(v7, 1, 1, v15);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v7, 0, 0, 1);
  v19 = [v14 publisherWithOptions_];

  v20 = objc_autoreleasePoolPush();
  v21 = v24[1];
  sub_1C462802C(a1, v19, sub_1C4629C88, &unk_1F43E4BC0, sub_1C46310A8, &unk_1F43E4BE8);
  if (v21)
  {
    objc_autoreleasePoolPop(v20);
    __break(1u);
  }

  else
  {
    v23 = v22;
    objc_autoreleasePoolPop(v20);

    *v25 = v23;
  }
}

uint64_t sub_1C462C29C(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 deviceType];

    if (v4 == 21)
    {
      return 1;
    }
  }

  result = [a1 eventBody];
  if (result)
  {
    v6 = result;
    v7 = [result deviceType];

    return v7 == 23;
  }

  return result;
}

void sub_1C462C340(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v28 = a3;
  v5 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v26 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v26 - v12;
  v14 = sub_1C4623940(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___bluetoothEventStream, &selRef_Device, &selRef_Wireless, &selRef_Bluetooth);
  sub_1C445FFF0(a2, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v15 = sub_1C4EF9CD8();
  if (sub_1C44157D4(v10, 1, v15) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v16 = 1;
  }

  else
  {
    sub_1C4EF9BE8();
    (*(*(v15 - 8) + 8))(v10, v15);
    v16 = 0;
  }

  sub_1C440BAA8(v13, v16, 1, v15);
  sub_1C440BAA8(v7, 1, 1, v15);
  v17 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v18 = sub_1C457A86C(v13, v7, 0, 0, 1);
  v19 = [(SEL *)v14 publisherWithOptions:v18];

  aBlock[4] = sub_1C4630CE4;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C46310A0;
  aBlock[3] = &unk_1F43E4D50;
  v20 = _Block_copy(aBlock);

  v21 = [v19 filterWithIsIncluded_];
  _Block_release(v20);

  v22 = objc_autoreleasePoolPush();
  v23 = v26[1];
  sub_1C462802C(a1, v21, sub_1C4629F20, &unk_1F43E4D78, sub_1C46310A8, &unk_1F43E4DA0);
  if (v23)
  {
    objc_autoreleasePoolPop(v22);
    __break(1u);
  }

  else
  {
    v25 = v24;
    objc_autoreleasePoolPop(v22);

    *v28 = v25;
  }
}

void sub_1C462C694(uint64_t a1@<X1>, void *a2@<X8>)
{
  v23 = a2;
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___microlocationVisitStream, &selRef_Location, &selRef_MicroLocationVisit);
  v11 = [objc_allocWithZone(GDMicroLocationVisitUtility) initWithMicroLocationVisitStream_];

  sub_1C445FFF0(a1, v9, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v12 = 0;
  if (sub_1C44157D4(v9, 1, v3) != 1)
  {
    v12 = sub_1C4EF9BF8();
    (*(v4 + 8))(v9, v3);
  }

  v13 = [v11 lastMicroLocationVisitEventPriorTo_];

  if (v13)
  {
    type metadata accessor for BehaviorEvent();
    v14 = [v13 microLocationIdentifier];
    v15 = sub_1C4F01138();
    v17 = v16;

    v18 = [v13 isEnter];
    v24[0] = v15;
    v24[1] = v17;
    v24[3] = 0;
    v24[4] = 0;
    v24[2] = v18;
    v25 = 7;
    v19 = [v13 date];
    sub_1C4EF9C78();

    sub_1C45D644C(v24, v6);
    v21 = v20;
  }

  else
  {

    v21 = 0;
  }

  *v23 = v21;
}

void sub_1C462C92C(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BehaviorEvent();
  v8 = [a1 microLocationIdentifier];
  v9 = sub_1C4F01138();
  v11 = v10;

  v12 = [a1 isEnter];
  LOBYTE(v16) = 7;
  v13 = [a1 date];
  sub_1C4EF9C78();

  sub_1C45D644C(&v15, v6);
  a2[3] = v7;
  *a2 = v14;
}

void sub_1C462CA54(uint64_t a1@<X1>, void *a2@<X8>)
{
  v37 = a2;
  v45 = *MEMORY[0x1E69E9840];
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v7 = [objc_allocWithZone(MEMORY[0x1E69AD068]) init];
  v8 = sub_1C4EF9BF8();
  aBlock = 0;
  v9 = sub_1C46308C0(0x6D6574737953, 0xE600000000000000, v8, &aBlock, v7);

  v10 = aBlock;
  if (v9)
  {
    (*(v4 + 16))(&v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = swift_allocObject();
    (*(v4 + 32))(v12 + v11, &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    v43 = sub_1C463093C;
    v44 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C46310A0;
    v42 = &unk_1F43E47D8;
    v13 = _Block_copy(&aBlock);
    v14 = v10;

    v15 = [v9 filterWithIsIncluded_];
    _Block_release(v13);

    v16 = swift_allocObject();
    *(v16 + 16) = v6;
    v43 = sub_1C463099C;
    v44 = v16;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C463109C;
    v42 = &unk_1F43E4828;
    v17 = _Block_copy(&aBlock);
    v18 = v6;

    v19 = [v15 mapWithTransform_];
    _Block_release(v17);

    v43 = sub_1C4630F88;
    v44 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C462BCF4;
    v42 = &unk_1F43E4850;
    v20 = _Block_copy(&aBlock);
    v21 = [v19 filterWithIsIncluded_];

    _Block_release(v20);
  }

  else
  {
    v22 = aBlock;
    v23 = sub_1C4EF97A8();

    swift_willThrow();
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DDE0);
    v25 = v23;
    v26 = sub_1C4F00968();
    v27 = sub_1C4F01CD8();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38 = v23;
      aBlock = v29;
      *v28 = 136315138;
      v30 = v23;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v31 = sub_1C4F01198();
      v33 = sub_1C441D828(v31, v32, &aBlock);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_1C43F8000, v26, v27, "BehaviorHistoryUtility [linkActionEventPublisher]: Unable to access Link action transcript: %s", v28, 0xCu);
      sub_1C440962C(v29);
      MEMORY[0x1C6942830](v29, -1, -1);
      MEMORY[0x1C6942830](v28, -1, -1);
    }

    v34 = objc_allocWithZone(MEMORY[0x1E698F0E8]);
    type metadata accessor for BehaviorEvent();
    v35 = sub_1C4F01658();
    v21 = [v34 initWithSequence_];
  }

  *v37 = v21;
}

uint64_t sub_1C462CFB4(void *a1, uint64_t a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 timestamp];
  sub_1C4EF9AC8();
  v8 = sub_1C4EF9C18();
  (*(v4 + 8))(v7, v3);
  return v8 & 1;
}

uint64_t sub_1C462D0A8(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v3 = v1;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_1C462D0F4@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v24 - v12;
  v14 = [a1 eventBody];
  v15 = 0uLL;
  if (v14)
  {
    v16 = v14;
    sub_1C46310AC(v14, a2, v24);

    v17 = v26;
    if (v26 == 255)
    {
      v18 = 0;
      v17 = 21;
      v19 = 0uLL;
      v15 = 0uLL;
    }

    else
    {
      v18 = v25;
      v15 = v24[0];
      v19 = v24[1];
    }
  }

  else
  {
    v18 = 0;
    v17 = 21;
    v19 = 0uLL;
  }

  v27[0] = v15;
  v27[1] = v19;
  v28 = v18;
  v29 = v17;
  [a1 timestamp];
  sub_1C4EF9AC8();
  v20 = type metadata accessor for BehaviorEvent();
  (*(v7 + 16))(v9, v13, v6);
  v21 = sub_1C45D644C(v27, v9);
  a3[3] = v20;
  *a3 = v22;
  return (*(v7 + 8))(v13, v6, v21);
}

void sub_1C462D2C0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v36 - v5;
  v37 = [objc_allocWithZone(MEMORY[0x1E69ACF60]) init];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = [objc_allocWithZone(MEMORY[0x1E69AD068]) init];
  v9 = sub_1C4F01108();
  aBlock = 0;
  v10 = [v8 transcriptPublisherWithStreamName:v9 fromDate:0 error:&aBlock];

  v11 = aBlock;
  if (v10)
  {
    sub_1C445FFF0(a1, v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v12 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v13 = swift_allocObject();
    sub_1C45B69E4(v6, v13 + v12);
    v44 = sub_1C4630D00;
    v45 = v13;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C46310A0;
    v43 = &unk_1F43E4E40;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    v16 = [v10 filterWithIsIncluded_];
    _Block_release(v14);

    v44 = sub_1C462DA9C;
    v45 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C44405F8;
    v43 = &unk_1F43E4E68;
    v17 = _Block_copy(&aBlock);
    v18 = swift_allocObject();
    v19 = v37;
    *(v18 + 16) = v37;
    *(v18 + 24) = v7;
    v44 = sub_1C4630D70;
    v45 = v18;
    aBlock = MEMORY[0x1E69E9820];
    v41 = 1107296256;
    v42 = sub_1C4440590;
    v43 = &unk_1F43E4EB8;
    v20 = _Block_copy(&aBlock);
    v21 = v19;

    v22 = [v16 sinkWithCompletion:v17 receiveInput:v20];

    _Block_release(v20);
    _Block_release(v17);

    swift_beginAccess();
    *v38 = *(v7 + 16);
  }

  else
  {
    v23 = v38;
    v24 = aBlock;
    v25 = sub_1C4EF97A8();

    swift_willThrow();

    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDE0);
    v27 = v25;
    v28 = sub_1C4F00968();
    v29 = sub_1C4F01CD8();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39 = v25;
      aBlock = v31;
      *v30 = 136315138;
      v32 = v25;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v33 = sub_1C4F01198();
      v35 = sub_1C441D828(v33, v34, &aBlock);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1C43F8000, v28, v29, "BehaviorHistoryUtility [lastLinkActionEvent]: Unable to access Link action transcript: %s", v30, 0xCu);
      sub_1C440962C(v31);
      MEMORY[0x1C6942830](v31, -1, -1);
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    else
    {
    }

    *v23 = 0;
  }
}

uint64_t sub_1C462D838(void *a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1C445FFF0(a2, v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v6, 1, v7) == 1)
  {
    sub_1C4420C3C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
    result = [a1 eventBody];
    if (!result)
    {
      return result;
    }

    sub_1C4630D78(result);
    if (v15)
    {

      return 1;
    }
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    [a1 timestamp];
    sub_1C4EF9AC8();
    v16 = sub_1C4EF9C18();
    v17 = *(v8 + 8);
    v17(v10, v7);
    if (v16)
    {
      v18 = [a1 eventBody];
      v17(v13, v7);
      if (v18)
      {

        return 1;
      }
    }

    else
    {
      v17(v13, v7);
    }
  }

  return 0;
}

void sub_1C462DAA8(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_1C4EF9CD8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v13 = v19 - v12 + 16;
  v14 = [a1 eventBody];
  if (v14)
  {
    v18 = v14;
    sub_1C46310AC(v14, a2, v19);
    if (v21 == 255)
    {
      v17 = v18;
    }

    else
    {
      v22[0] = v19[0];
      v22[1] = v19[1];
      v23 = v20;
      v24 = v21;
      [a1 timestamp];
      sub_1C4EF9AC8();
      type metadata accessor for BehaviorEvent();
      (*(v7 + 16))(v9, v13, v6);
      sub_1C45D644C(v22, v9);
      v16 = v15;

      (*(v7 + 8))(v13, v6);
      swift_beginAccess();
      *(a3 + 16) = v16;
    }
  }
}

void sub_1C462DC9C()
{
  sub_1C43FBD3C();
  v42 = v2;
  v41 = v3;
  v39 = v4;
  v5 = type metadata accessor for Configuration(0);
  v6 = sub_1C43FBD18(v5);
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v38 = v8 - v7;
  sub_1C43FBE44();
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBD08();
  v15 = v13 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  v19 = sub_1C456902C(&qword_1EC0BA0C8, &unk_1C4F6E090);
  v20 = sub_1C43FBD18(v19);
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v36 - v22;
  v40 = objc_autoreleasePoolPush();
  v37 = v0;
  v24 = *(v0 + 16);
  v25 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView;
  v26 = sub_1C4EFCE48();
  sub_1C43FBCE0();
  (*(v27 + 16))(v23, v0 + v25, v26);
  sub_1C43FBD94();
  sub_1C440BAA8(v28, v29, v30, v26);
  v31 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config;
  type metadata accessor for VirtualInteractionEnumerator(0);
  v32 = *(v11 + 16);
  v32(v18, v39, v9);
  v32(v15, v41, v9);
  sub_1C445FFF0(v23, v1, &qword_1EC0BA0C8, &unk_1C4F6E090);
  v33 = v38;
  sub_1C44098F0(v37 + v31, v38);

  v34 = sub_1C4D28B94(v18, v15, (v42 & 1) == 0, v24, v1, 0, 1, v33);
  v35 = objc_autoreleasePoolPush();
  v43 = v34;
  v44 = sub_1C4D339F4;
  v45 = 0;
  sub_1C456902C(&unk_1EC0BA0D0, qword_1C4F13420);
  sub_1C4630B7C();
  sub_1C4F014B8();
  objc_autoreleasePoolPop(v35);

  sub_1C4420C3C(v23, &qword_1EC0BA0C8, &unk_1C4F6E090);
  objc_autoreleasePoolPop(v40);
  sub_1C43FE9F0();
}

void sub_1C462DF88()
{
  sub_1C43FBD3C();
  v32 = v0;
  v33 = v3;
  v31 = v4;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v10 = sub_1C43FBD18(v9);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C440A724();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C443FADC();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v30 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v30 = objc_autoreleasePoolPush();
  sub_1C445FFF0(v8, v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C4EF9CD8();
  sub_1C44101EC();
  v21 = sub_1C44157D4(v18, v19, v20);
  sub_1C4420C3C(v17, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (v21 != 1)
  {
    sub_1C445FFF0(v6, v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C44101EC();
    sub_1C44157D4(v22, v23, v24);
    sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  v25 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___motionStateEventStream, &selRef_Motion, &selRef_Activity);
  sub_1C445FFF0(v8, v2, &unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C445FFF0(v6, v1, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v26 = v33;
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v27 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
    v28 = sub_1C457A86C(v2, v1, v26, 0, (v31 & 1) == 0);
    v29 = [v25 publisherWithOptions_];

    sub_1C462E1D8(v29);
    objc_autoreleasePoolPop(v30);
    sub_1C43FE9F0();
  }
}

id sub_1C462E1D8(void *a1)
{
  v12 = sub_1C462E458;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C463109C;
  v11 = &unk_1F43E4288;
  v2 = _Block_copy(&v8);
  v3 = sub_1C43FD04C(v2, sel_mapWithTransform_);
  v4 = sub_1C441C818();
  _Block_release(v4);
  v12 = sub_1C462E820;
  v13 = 0;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1C462BCF4;
  v11 = &unk_1F43E42B0;
  v5 = _Block_copy(&v8);
  v6 = sub_1C43FD04C(v5, sel_filterWithIsIncluded_);
  _Block_release(v5);

  return v6;
}

id sub_1C462E30C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  if ([a1 hasUnknown])
  {
    v4 = [a1 unknown];
  }

  else
  {
    v4 = 0;
  }

  if ([a1 hasStationary] && objc_msgSend(a1, sel_stationary))
  {
    v4 |= 2uLL;
  }

  if ([a1 hasWalking] && objc_msgSend(a1, sel_walking))
  {
    v4 |= 4uLL;
  }

  if ([a1 hasRunning] && objc_msgSend(a1, sel_running))
  {
    v4 |= 8uLL;
  }

  if ([a1 hasCycling] && objc_msgSend(a1, sel_cycling))
  {
    v4 |= 0x10uLL;
  }

  result = [a1 hasAutomotive];
  if (result)
  {
    result = [a1 automotive];
    if (result)
    {
      v4 |= 0x20uLL;
    }
  }

  *a2 = v4;
  return result;
}

void sub_1C462E458(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = sub_1C4EF9CD8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  *&v15 = MEMORY[0x1EEE9AC00](v14).n128_u64[0];
  v17 = &v30 - v16;
  v18 = [a1 eventBody];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 startDate];
    if (v20)
    {
      v21 = v20;
      sub_1C4EF9C78();

      v22 = *(v8 + 32);
      v22(v6, v13, v7);
      sub_1C440BAA8(v6, 0, 1, v7);
      v22(v17, v6, v7);
    }

    else
    {
      sub_1C440BAA8(v6, 1, 1, v7);
      [a1 timestamp];
      sub_1C4EF9AC8();
      if (sub_1C44157D4(v6, 1, v7) != 1)
      {
        sub_1C4420C3C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }
    }

    [a1 timestamp];
    sub_1C4EF9AC8();
    type metadata accessor for BehaviorHistoryUtility(0);
    sub_1C462E30C(v19, &v31);
    v29 = type metadata accessor for MotionStateEvent(0);
    swift_allocObject();
    v28 = sub_1C46229B8(v17, v13, &v31);
    a2[3] = v29;
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v23 = sub_1C4F00978();
    sub_1C442B738(v23, qword_1EDE2DDE0);
    v24 = sub_1C4F00968();
    v25 = sub_1C4F01CC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1C43F8000, v24, v25, "Unexpected empty event body from MotionActivity publisher. Skipping event.", v26, 2u);
      MEMORY[0x1C6942830](v26, -1, -1);
    }

    [a1 timestamp];
    sub_1C4EF9AC8();
    [a1 timestamp];
    sub_1C4EF9AC8();
    v31 = 1;
    v27 = type metadata accessor for MotionStateEvent(0);
    swift_allocObject();
    v28 = sub_1C46229B8(v13, v10, &v31);
    a2[3] = v27;
  }

  *a2 = v28;
}

BOOL sub_1C462E820()
{
  type metadata accessor for MotionStateEvent(0);
  swift_unknownObjectRetain();
  v0 = swift_dynamicCastClass();
  if (v0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16MotionStateEvent_motionState);
    swift_unknownObjectRelease();
    return (v1 & 1) == 0;
  }

  else
  {
    swift_unknownObjectRelease();
    return 0;
  }
}

uint64_t sub_1C462E890(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v4 = sub_1C43FBD18(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - v5;
  v21 = objc_autoreleasePoolPush();
  v7 = swift_allocObject();
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  (*(v9 + 16))(v6, a2, v8);
  sub_1C43FBD94();
  sub_1C440BAA8(v10, v11, v12, v8);
  sub_1C462DF88();
  v14 = v13;
  sub_1C4420C3C(v6, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v26 = sub_1C462EB14;
  v27 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C44405F8;
  v25 = &unk_1F43E4238;
  v15 = _Block_copy(&aBlock);
  v26 = sub_1C463086C;
  v27 = v7;
  aBlock = MEMORY[0x1E69E9820];
  v23 = 1107296256;
  v24 = sub_1C45DFE08;
  v25 = &unk_1F43E4260;
  v16 = _Block_copy(&aBlock);

  v17 = [v14 sinkWithCompletion:v15 receiveInput:v16];

  _Block_release(v16);
  _Block_release(v15);

  sub_1C440F1BC();
  swift_beginAccess();
  v18 = *(v7 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  objc_autoreleasePoolPop(v21);
  return v18;
}

uint64_t sub_1C462EB20(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  MEMORY[0x1C6940330](v2);
  sub_1C4427EF0();
  sub_1C4F01748();
  return swift_endAccess();
}

uint64_t sub_1C462EBA8(uint64_t a1, uint64_t a2)
{
  sub_1C4403FC0();
  v4 = sub_1C4EFFB28();
  sub_1C43FCDF8();
  v6 = v5;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v6 + 16))(&aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4, v10);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v23 = sub_1C4630C68;
  v24 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C463109C;
  v22 = &unk_1F43E4A08;
  _Block_copy(&aBlock);

  v14 = sub_1C43FD04C(v13, sel_mapWithTransform_);
  v15 = sub_1C441C818();
  _Block_release(v15);
  v23 = sub_1C4630F88;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1C462BCF4;
  v22 = &unk_1F43E4A30;
  v16 = _Block_copy(&aBlock);
  v17 = sub_1C43FD04C(v16, sel_filterWithIsIncluded_);
  _Block_release(v16);

  return sub_1C442B974();
}

void sub_1C462EDBC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_1C4EFF0C8();
  v11 = *(v10 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 eventBody];
  if (v15)
  {
    v16 = v15;
    v46 = a1;
    v47 = a2;
    v17 = OBJC_IVAR____TtC24IntelligencePlatformCore17PhotosPersonEvent_photosPerson;
    v18 = &v15[*(type metadata accessor for PhotosPersonObservation(0) + 20) + v17];
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C4EFFB18();

    v25 = sub_1C44157D4(v9, 1, v10);
    if (v25 == 1)
    {
      sub_1C4420C3C(v9, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v26 = sub_1C4F00978();
      sub_1C442B738(v26, qword_1EDE2DDE0);
      v27 = v16;
      v28 = sub_1C4F00968();
      v29 = sub_1C4F01CD8();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *&v48 = v31;
        *v30 = 136315138;
        v32 = *v18;
        v33 = v18[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        v34 = sub_1C441D828(v32, v33, &v48);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_1C43F8000, v28, v29, "Unable to find mdid for PHPerson ID: %s", v30, 0xCu);
        sub_1C440962C(v31);
        MEMORY[0x1C6942830](v31, -1, -1);
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      v35 = v46;
      v36 = type metadata accessor for BehaviorEvent();
      v48 = 0u;
      v49 = 0u;
      v50 = 0;
      v51 = 21;
      [v35 timestamp];
      sub_1C4EF9AC8();
      sub_1C45D644C(&v48, v6);
      v38 = v37;
      v39 = v47;
      v47[3] = v36;

      *v39 = v38;
    }

    else
    {
      (*(v11 + 32))(v14, v9, v10);
      v40 = type metadata accessor for BehaviorEvent();
      *&v48 = sub_1C4EFF048();
      *(&v48 + 1) = v41;
      v50 = 0;
      v49 = 0uLL;
      v51 = 16;
      [v46 timestamp];
      sub_1C4EF9AC8();
      sub_1C45D644C(&v48, v6);
      v43 = v42;
      v44 = v47;
      v47[3] = v40;

      *v44 = v43;
      (*(v11 + 8))(v14, v10);
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v19 = sub_1C4F00978();
    sub_1C442B738(v19, qword_1EDE2DDE0);
    v20 = sub_1C4F00968();
    v21 = sub_1C4F01CC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1C43F8000, v20, v21, "Unexpected empty event body from PhotosPersonEvent publisher. Skipping event.", v22, 2u);
      MEMORY[0x1C6942830](v22, -1, -1);
    }

    v23 = type metadata accessor for BehaviorEvent();
    v48 = 0u;
    v49 = 0u;
    v50 = 0;
    v51 = 21;
    [a1 timestamp];
    sub_1C4EF9AC8();
    sub_1C45D644C(&v48, v6);
    a2[3] = v23;
    *a2 = v24;
  }
}

uint64_t sub_1C462F4C8()
{
  v2 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  sub_1C43FBD08();
  sub_1C4414500();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C4410A24();
  type metadata accessor for BehaviorEvent();
  swift_unknownObjectRetain();
  if (swift_dynamicCastClass())
  {
    sub_1C45D5A24(v1);
    (*(v4 + 104))(v0, *MEMORY[0x1E69A9450], v2);
    sub_1C4630878(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
    sub_1C43FE99C();
    v7 = sub_1C4F010B8();
    swift_unknownObjectRelease();
    v8 = *(v4 + 8);
    v8(v0, v2);
    v8(v1, v2);
    v9 = v7 ^ 1;
  }

  else
  {
    swift_unknownObjectRelease();
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1C462F670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v6 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v31 - v7;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v31 - v14;
  v17 = v16;
  sub_1C445FFF0(a1, v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v8, 1, v17) == 1)
  {
    sub_1C4420C3C(v8, &unk_1EC0B84E0, qword_1C4F0D2D0);
    sub_1C4EF9CC8();
  }

  else
  {
    sub_1C4EF9AD8();
    (*(v10 + 8))(v8, v17);
    sub_1C4EF9AC8();
  }

  sub_1C4EF9AC8();
  v18 = sub_1C4AB18E0(v12, v15, 1, 0);
  if (v18)
  {
    v19 = v18;
    v32 = sub_1C462EBA8(v18, a2 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    v21 = (v20 + 16);
    v40 = sub_1C462FA58;
    v41 = 0;
    v34 = v3;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v33 = v17;
    v38 = sub_1C44405F8;
    v39 = &unk_1F43E4FD0;
    v22 = _Block_copy(&aBlock);
    v40 = sub_1C4630DE8;
    v41 = v20;
    v31[1] = v20;
    aBlock = MEMORY[0x1E69E9820];
    v37 = 1107296256;
    v38 = sub_1C4623884;
    v39 = &unk_1F43E4FF8;
    v23 = _Block_copy(&aBlock);

    v24 = v32;
    v25 = [v32 sinkWithCompletion:v22 shouldContinue:v23];
    _Block_release(v23);
    _Block_release(v22);

    v26 = *(v10 + 8);
    v27 = v33;
    v26(v12, v33);
    v26(v15, v27);
    swift_beginAccess();
    v28 = *v21;
  }

  else
  {
    v30 = *(v10 + 8);
    v30(v12, v17);
    result = (v30)(v15, v17);
    v28 = 0;
  }

  *v35 = v28;
  return result;
}

void sub_1C462FA64(void *a1, const char *a2, ...)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = v4;
    oslog = sub_1C4F00968();
    v7 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v14 = v9;
      *v8 = 136315138;
      swift_getErrorValue();
      v10 = sub_1C4F02A38();
      v12 = sub_1C441D828(v10, v11, &v14);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1C43F8000, oslog, v7, a2, v8, 0xCu);
      sub_1C440962C(v9);
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
      sub_1C43FBCFC();
      MEMORY[0x1C6942830]();
    }

    else
    {
    }
  }
}

uint64_t sub_1C462FC14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a2 + 16) = a1;

  return 0;
}

void sub_1C462FC6C(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v31 = a3;
  v5 = sub_1C4EF9CD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1C46239A0(&OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___geoHashStream, &selRef_Location, &selRef_HashedCoordinates);
  v12 = [objc_allocWithZone(GDGeoHashVisitUtility) initWithGeoHashStream_];

  sub_1C445FFF0(a1, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  v13 = 0;
  if (sub_1C44157D4(v10, 1, v5) != 1)
  {
    v13 = sub_1C4EF9BF8();
    (*(v6 + 8))(v10, v5);
  }

  v14 = [v12 lastGeoHashVisitEventAt:v13 level:a2];

  if (!v14)
  {
    goto LABEL_16;
  }

  if (!a2)
  {
    type metadata accessor for BehaviorEvent();
    v20 = [v14 geoHash];
    v21 = [v14 isEnter];
    v32 = v20;
    v33 = v21;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v37 = 18;
    v17 = [v14 date];
    goto LABEL_10;
  }

  if (a2 == 1)
  {
    type metadata accessor for BehaviorEvent();
    v18 = [v14 geoHash];
    v19 = [v14 isEnter];
    v32 = v18;
    v33 = v19;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    v37 = 19;
    v17 = [v14 date];
    goto LABEL_10;
  }

  if (a2 != 2)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v26 = sub_1C4F00978();
    sub_1C442B738(v26, qword_1EDE2DDE0);
    v27 = sub_1C4F00968();
    v28 = sub_1C4F01CE8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = a2;
      _os_log_impl(&dword_1C43F8000, v27, v28, "BehaviorHistoryUtility: lastGeoHashChangeEvent - Unexpected geohash level: %ld", v29, 0xCu);
      MEMORY[0x1C6942830](v29, -1, -1);
    }

LABEL_16:
    v25 = 0;
    goto LABEL_17;
  }

  type metadata accessor for BehaviorEvent();
  v15 = [v14 geoHash];
  v16 = [v14 isEnter];
  v32 = v15;
  v33 = v16;
  v35 = 0;
  v36 = 0;
  v34 = 0;
  v37 = 20;
  v17 = [v14 date];
LABEL_10:
  v22 = v17;
  v23 = v30;
  sub_1C4EF9C78();

  sub_1C45D644C(&v32, v23);
  v25 = v24;

LABEL_17:
  *v31 = v25;
}

void sub_1C4630094(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C4EF9CD8();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2)
  {
    case 2:
      v9 = type metadata accessor for BehaviorEvent();
      v13 = [a1 geoHash];
      v14 = [a1 isEnter];
      v21 = v13;
      v22 = v14;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v26 = 20;
      v12 = [a1 date];
      goto LABEL_7;
    case 1:
      v9 = type metadata accessor for BehaviorEvent();
      v10 = [a1 geoHash];
      v11 = [a1 isEnter];
      v21 = v10;
      v22 = v11;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v26 = 19;
      v12 = [a1 date];
LABEL_7:
      v17 = v12;
      sub_1C4EF9C78();

      sub_1C45D644C(&v21, v8);
      a3[3] = v9;
      *a3 = v18;
      return;
    case 0:
      v9 = type metadata accessor for BehaviorEvent();
      v15 = [a1 geoHash];
      v16 = [a1 isEnter];
      v21 = v15;
      v22 = v16;
      v24 = 0;
      v25 = 0;
      v23 = 0;
      v26 = 18;
      v12 = [a1 date];
      goto LABEL_7;
  }

  v21 = 0;
  v22 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000004ALL, 0x80000001C4F8E4D0);
  v20[1] = a2;
  v19 = sub_1C4F02858();
  MEMORY[0x1C6940010](v19);

  sub_1C4F024A8();
  __break(1u);
}

id sub_1C463031C(uint64_t a1)
{
  sub_1C4409AB0(a1);
  v3 = v1;
  v2(v6);

  sub_1C4409678(v6, v6[3]);
  v4 = sub_1C4F02918();
  sub_1C440962C(v6);

  return v4;
}

uint64_t sub_1C46303A4()
{

  sub_1C4467948(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_config);
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_handleView;
  sub_1C4EFCE48();
  sub_1C43FBCE0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility_phPersonIdentifierMapView;
  sub_1C4EFFB28();
  sub_1C43FBCE0();
  (*(v4 + 8))(v0 + v3);
  swift_unknownObjectRelease();

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore22BehaviorHistoryUtility____lazy_storage___calendar, &unk_1EC0BA0F0, &unk_1C4F1D8A0);
  return v0;
}

uint64_t sub_1C463056C()
{
  sub_1C46303A4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BehaviorHistoryUtility(uint64_t a1)
{
  result = qword_1EDDFB008;
  if (!qword_1EDDFB008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C4630618(uint64_t a1)
{
  type metadata accessor for Configuration(319);
  if (v1 <= 0x3F)
  {
    sub_1C4EFCE48();
    if (v2 <= 0x3F)
    {
      sub_1C4EFFB28();
      if (v3 <= 0x3F)
      {
        sub_1C4630784(319);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C4630784(uint64_t a1)
{
  if (!qword_1EDDFCD48)
  {
    sub_1C4EF9F88();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFCD48);
    }
  }
}

uint64_t sub_1C4630878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C46308C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1C4F01108();

  v9 = [a5 transcriptPublisherWithStreamName:v8 fromDate:a3 error:a4];

  return v9;
}

uint64_t sub_1C463093C()
{
  sub_1C4403FC0();
  v1 = sub_1C4EF9CD8();
  sub_1C43FBD18(v1);
  sub_1C441B788();

  return sub_1C462CFB4(v0, v2);
}

uint64_t sub_1C46309A4()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF7C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);
  v7 = (v6 + v3 + v4) & ~v3;
  v8 = sub_1C4EF9CD8();
  if (!sub_1C44157D4(v0 + v4, 1, v8))
  {
    sub_1C440A6B8();
    (*(v9 + 8))(v0 + v4, v8);
  }

  if (!sub_1C44157D4(v0 + v7, 1, v8))
  {
    sub_1C440A6B8();
    (*(v10 + 8))(v0 + v7, v8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v7 + v6, v3 | 7);
}

uint64_t sub_1C4630ADC(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FCF7C(v3);
  v5 = v4;
  v7 = v6;
  v8 = *(v5 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = (v1 + ((*(v7 + 64) + v8 + v9) & ~v8));

  return sub_1C462B0D4(a1, v1 + v9, v10);
}

unint64_t sub_1C4630B7C()
{
  result = qword_1EDDF0348;
  if (!qword_1EDDF0348)
  {
    sub_1C4572308(&unk_1EC0BA0D0, qword_1C4F13420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDF0348);
  }

  return result;
}

uint64_t sub_1C4630BE0(void (*a1)(void))
{
  a1(0);
  sub_1C43FBCE0();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + v5, v3 | 7);
}

void sub_1C4630C68(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1C4EFFB28();
  sub_1C43FBD18(v4);
  sub_1C441B788();

  sub_1C462EDBC(a1, a2);
}

uint64_t sub_1C4630D00(void *a1)
{
  v2 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v2);
  sub_1C441B788();

  return sub_1C462D838(a1, v3);
}

uint64_t sub_1C4630D78(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C4F01138();

  return v3;
}

uint64_t sub_1C4630E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&unk_1EC0BA0F0, &unk_1C4F1D8A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1C46310AC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v59[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1C45B4BF8(a1, &selRef_bundleIdentifier);
  v8 = v7;
  if (!v7)
  {
    v9 = 0;
    v31 = 0;
    v32 = 0;
    v21 = 0;
    v33 = -1;
    goto LABEL_22;
  }

  v9 = v6;
  v10 = sub_1C4F01108();
  v11 = &off_1E81F1000;
  v12 = [v4 action];
  v13 = [v12 identifier];

  if (!v13)
  {
    sub_1C4F01138();
    v13 = sub_1C4F01108();
  }

  v59[0] = 0;
  v14 = [a2 actionForBundleIdentifier:v10 andActionIdentifier:v13 error:v59];

  if (v14)
  {
    v15 = v59[0];
    v16 = [v14 systemProtocols];
    sub_1C4631F48();
    v17 = sub_1C4F01678();

    v18 = sub_1C4428DA0(v17);
    v58 = v14;
    if (!v18)
    {

      v21 = MEMORY[0x1E69E7CC0];
LABEL_21:
      v51 = [v4 v11[203]];
      v52 = [v51 identifier];

      v31 = sub_1C4F01138();
      v32 = v53;

      v33 = 12;
      goto LABEL_22;
    }

    v19 = v18;
    v56 = a3;
    v57 = v4;
    v54 = v9;
    v55 = v8;
    v59[0] = MEMORY[0x1E69E7CC0];
    sub_1C44CD9C0(0, v18 & ~(v18 >> 63), 0);
    if ((v19 & 0x8000000000000000) == 0)
    {
      v20 = 0;
      v21 = v59[0];
      do
      {
        if ((v17 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x1C6940F90](v20, v17);
        }

        else
        {
          v22 = *(v17 + 8 * v20 + 32);
        }

        v23 = v22;
        v24 = [v22 identifier];
        v25 = sub_1C4F01138();
        v27 = v26;

        v59[0] = v21;
        v29 = v21[2];
        v28 = v21[3];
        if (v29 >= v28 >> 1)
        {
          sub_1C44CD9C0(v28 > 1, v29 + 1, 1);
          v21 = v59[0];
        }

        ++v20;
        v21[2] = v29 + 1;
        v30 = &v21[2 * v29];
        v30[4] = v25;
        v30[5] = v27;
      }

      while (v19 != v20);

      v8 = v55;
      a3 = v56;
      v9 = v54;
      v4 = v57;
      v11 = &off_1E81F1000;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_24;
  }

  v34 = v59[0];
  v17 = sub_1C4EF97A8();

  swift_willThrow();
  if (qword_1EDDFA668 != -1)
  {
LABEL_24:
    swift_once();
  }

  v35 = sub_1C4F00978();
  sub_1C442B738(v35, qword_1EDE2DDE0);
  v36 = v17;
  v37 = sub_1C4F00968();
  v38 = sub_1C4F01CD8();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = v8;
    v41 = v9;
    v42 = swift_slowAlloc();
    v59[0] = v42;
    *v39 = 136315138;
    v43 = v17;
    sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
    v44 = sub_1C4F01198();
    v46 = sub_1C441D828(v44, v45, v59);

    *(v39 + 4) = v46;
    _os_log_impl(&dword_1C43F8000, v37, v38, "BehaviorRepresentable: Unable to access Link action metadata: %s", v39, 0xCu);
    sub_1C440962C(v42);
    v47 = v42;
    v9 = v41;
    v8 = v40;
    MEMORY[0x1C6942830](v47, -1, -1);
    MEMORY[0x1C6942830](v39, -1, -1);
  }

  v48 = [v4 action];
  v49 = [v48 identifier];

  v31 = sub_1C4F01138();
  v32 = v50;

  v33 = 12;
  v21 = MEMORY[0x1E69E7CC0];
LABEL_22:
  *a3 = v9;
  *(a3 + 8) = v8;
  *(a3 + 16) = v31;
  *(a3 + 24) = v32;
  *(a3 + 32) = v21;
  *(a3 + 40) = v33;
}

void sub_1C4631590(uint64_t *a1@<X8>)
{
  if (sub_1C46315F4())
  {
    v3 = sub_1C45B4BF8(v1, &selRef_bundleID);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
  }

  *a1 = v5;
  a1[1] = v6;
  sub_1C441F560(v7);
}

uint64_t sub_1C46315F4()
{
  sub_1C45B4BF8(v0, &selRef_bundleID);
  if (!v1)
  {
    goto LABEL_13;
  }

  sub_1C45B4BF8(v0, &selRef_launchReason);
  if (!v2)
  {
LABEL_12:

LABEL_13:
    v26 = 0;
    return v26 & 1;
  }

  if (([v0 starting] & 1) == 0)
  {
    goto LABEL_11;
  }

  sub_1C45B4BF8(v0, &selRef_extensionHostID);
  if (v3)
  {

    goto LABEL_12;
  }

  if ((sub_1C4F013E8() & 1) == 0)
  {
LABEL_11:

    goto LABEL_12;
  }

  v4 = sub_1C4415EA8();
  v11 = sub_1C44191D4(v4, MEMORY[0x1E69E6158], v5, v6, v7, v8, v9, v10, 0x65726373656D6F68);
  if (v11 & 1) != 0 || (v18 = sub_1C44191D4(v11, MEMORY[0x1E69E6158], v12, v13, v14, v15, v16, v17, 0x65676D6574737973), (v18))
  {
  }

  else
  {
    v28 = sub_1C44191D4(v18, MEMORY[0x1E69E6158], v19, v20, v21, v22, v23, v24, 0x6867696C746F7073);

    if ((v28 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v25 = sub_1C4F013E8();

  v26 = v25 ^ 1;
  return v26 & 1;
}

uint64_t sub_1C46317D8@<X0>(uint64_t a1@<X8>)
{
  if (!sub_1C463186C())
  {
    v5 = 0;
    v6 = 0;
    result = 0;
    v7 = 0;
    v8 = -1;
    goto LABEL_6;
  }

  result = sub_1C45B4BF8(v1, &selRef_bundleID);
  if (v4)
  {
    v5 = result;
    v6 = v4;
    result = sub_1C45B4BF8(v1, &selRef_intentClass);
    if (v7)
    {
      v8 = 1;
LABEL_6:
      *a1 = v5;
      *(a1 + 8) = v6;
      *(a1 + 16) = result;
      *(a1 + 24) = v7;
      *(a1 + 32) = 0;
      *(a1 + 40) = v8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL sub_1C463186C()
{
  v1 = sub_1C45B4BF8(v0, &selRef_intentClass);
  if (!v2)
  {
    return 0;
  }

  v3 = v1;
  v4 = v2;
  v5 = sub_1C45B4BF8(v0, &selRef_bundleID);
  if (!v6)
  {

    return 0;
  }

  if (v5 == 0xD000000000000013 && v6 == 0x80000001C4F84800)
  {
  }

  else
  {
    v8 = sub_1C4F02938();

    if ((v8 & 1) == 0)
    {

      return 1;
    }
  }

  if (v3 == 0xD000000000000013 && v4 == 0x80000001C4F8E570)
  {
  }

  else
  {
    v11 = sub_1C4F02938();

    if ((v11 & 1) == 0)
    {
      return 1;
    }
  }

  return [v0 interactionDirection] == 2;
}

void sub_1C46319B0()
{
  sub_1C43FFE94();
  v3 = sub_1C45B4BF8(v1, &selRef_poiCategory);
  v5 = v4;
  if (v4)
  {
    v6 = v3;
    if (![v2 rank])
    {
      v7 = 2;
      goto LABEL_7;
    }

    v6 = 0;
    v5 = 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = -1;
LABEL_7:
  *v0 = v6;
  v0[1] = v5;
  sub_1C441F560(v7);
}

uint64_t sub_1C4631A40@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_1C4EF9C78();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1C4EF9CD8();

  return sub_1C440BAA8(a2, v6, 1, v7);
}

id sub_1C4631ABC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v21 - v9;
  v11 = [v2 loiIdentifier];
  if (v11)
  {
    v12 = v11;
    sub_1C4EF9D18();

    v13 = sub_1C4EF9D38();
    v14 = 0;
  }

  else
  {
    v13 = sub_1C4EF9D38();
    v14 = 1;
  }

  sub_1C440BAA8(v6, v14, 1, v13);
  sub_1C4631F8C(v6, v10);
  sub_1C4EF9D38();
  if (sub_1C44157D4(v10, 1, v13) == 1)
  {
    sub_1C4631FFC(v10);
    v15 = 0;
    v16 = 0;
  }

  else
  {
    v15 = sub_1C4EF9CF8();
    v16 = v17;
    (*(*(v13 - 8) + 8))(v10, v13);
  }

  v18 = [v2 userSpecificPlaceType];
  result = [v2 starting];
  v20 = 0x100000000;
  *a1 = v15;
  *(a1 + 8) = v16;
  if (!result)
  {
    v20 = 0;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = v20 | v18;
  *(a1 + 40) = 14;
  return result;
}

void sub_1C4631C88()
{
  sub_1C43FFE94();
  v4 = sub_1C45B4BF8(v1, &selRef_mode);
  v6 = v5;
  if (v5)
  {
    v2 = v4;
    v7 = [v3 semanticType];
    v8 = [v3 starting];
    v9 = 0x100000000;
    if (!v8)
    {
      v9 = 0;
    }

    v10 = v9 | v7;
  }

  else
  {
    sub_1C4406800();
  }

  *v0 = v2;
  v0[1] = v6;
  sub_1C442C544(v10);
}

double sub_1C4631D20@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 reason];
  v4 = [v1 starting];
  v5 = 0x100000000;
  if (!v4)
  {
    v5 = 0;
  }

  *a1 = v5 | v3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 5;
  return result;
}

void sub_1C4631D98()
{
  sub_1C43FFE94();
  sub_1C45B4BF8(v1, &selRef_SSID);
  if (!v4)
  {
    v7 = 0;
    sub_1C4406800();
    goto LABEL_5;
  }

  v5 = sub_1C45B4BF8(v3, &selRef_SSID);
  if (v6)
  {
    v7 = v5;
    v2 = v6;
    v8 = [v3 starting];
LABEL_5:
    *v0 = v7;
    v0[1] = v2;
    sub_1C442C544(v8);
    return;
  }

  __break(1u);
}

void sub_1C4631E28()
{
  sub_1C43FFE94();
  sub_1C45B4BF8(v1, &selRef_address);
  if (!v4)
  {
    v7 = 0;
    sub_1C4406800();
    goto LABEL_5;
  }

  v5 = sub_1C45B4BF8(v3, &selRef_address);
  if (v6)
  {
    v7 = v5;
    v2 = v6;
    v8 = [v3 starting];
LABEL_5:
    *v0 = v7;
    v0[1] = v2;
    sub_1C442C544(v8);
    return;
  }

  __break(1u);
}

void sub_1C4631EB8(uint64_t *a1@<X8>)
{
  sub_1C45B4BF8(v1, &selRef_accessoryUniqueIdentifier);
  if (!v3)
  {
    v4 = 0;
    v5 = -1;
    goto LABEL_5;
  }

  v4 = sub_1C45B4BF8(v1, &selRef_accessoryUniqueIdentifier);
  if (v3)
  {
    v5 = 13;
LABEL_5:
    *a1 = v4;
    a1[1] = v3;
    sub_1C441F560(v5);
    return;
  }

  __break(1u);
}

unint64_t sub_1C4631F48()
{
  result = qword_1EC0BA100;
  if (!qword_1EC0BA100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0BA100);
  }

  return result;
}

uint64_t sub_1C4631F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C4631FFC(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0B9DC8, &unk_1C4F124A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C463206C()
{
  sub_1C4409678((v0 + 32), *(v0 + 56));
  sub_1C45F52A4();
  if (!v1)
  {
    KeyValueStore.delete(key:)(*(v0 + 16));
  }
}

void sub_1C46320C0(uint64_t a1)
{
  v55 = a1;
  v2 = v1;
  v52 = type metadata accessor for BehaviorSampleGeneratorError(0);
  MEMORY[0x1EEE9AC00](v52);
  sub_1C43FBD08();
  v50 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v51 = v49 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v54 = v49 - v8;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v49 - v10;
  v12 = sub_1C4EF9CD8();
  sub_1C43FCE64();
  v53 = v13;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  v17 = v15 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v49 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v49 - v22;
  v24 = *(v1 + 120);
  v26 = *(v2 + 16);
  v25 = *(v2 + 24);
  v27 = v56;
  sub_1C446FB00();
  if (v27)
  {
    return;
  }

  v49[1] = v2;
  v49[2] = v24;
  v49[3] = v25;
  v49[4] = v26;
  v29 = v53;
  v28 = v54;
  v49[0] = v17;
  v56 = 0;
  if (sub_1C44157D4(v11, 1, v12) == 1)
  {
    sub_1C4EF9CC8();
    sub_1C4EF9BE8();
    v30 = v29;
    (*(v29 + 8))(v20, v12);
    v31 = sub_1C44157D4(v11, 1, v12);
    v32 = v28;
    v33 = v55;
    if (v31 != 1)
    {
      sub_1C44686E4(v11);
    }
  }

  else
  {
    v30 = v29;
    (*(v29 + 32))(v23, v11, v12);
    v32 = v28;
    v33 = v55;
  }

  if ((sub_1C4EF9C18() & 1) == 0)
  {
LABEL_17:
    v46 = sub_1C43FFEA0();
    v47(v46);
    return;
  }

  v34 = v56;
  sub_1C46325B8(v23, v33, 0);
  if (!v34)
  {
    sub_1C448EE10();
    v56 = 0;
    goto LABEL_17;
  }

  v35 = v51;
  v57 = v34;
  v36 = v34;
  sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
  v37 = swift_dynamicCast();
  v38 = v50;
  if (v37)
  {

    sub_1C4633218(v32, v35);
    sub_1C463327C(v35, v38);
    v39 = sub_1C456902C(&qword_1EC0BA108, &qword_1C4F13818);
    if (sub_1C44157D4(v38, 1, v39) == 1)
    {
      sub_1C46332E0();
      swift_allocError();
      sub_1C463327C(v35, v40);
      swift_willThrow();
      sub_1C4633338(v35);
      v41 = sub_1C43FFEA0();
      v42(v41);
      sub_1C4633338(v38);

      return;
    }

    v45 = v49[0];
    (*(v30 + 32))(v49[0], v38 + *(v39 + 48), v12);
    sub_1C448EE10();
    swift_willThrow();
    v48 = *(v30 + 8);
    v48(v45, v12);
    sub_1C4633338(v35);
    v48(v23, v12);
  }

  else
  {
    v43 = sub_1C43FFEA0();
    v44(v43);
  }
}